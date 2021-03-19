import { fabric } from "fabric";
import canvasDimensions from "./mbres/constants/dimensions";
import generatoreService from "./mbres/utils/utils";
import cloudinary from "cloudinary";
import dotenv from "dotenv";
import path from "path"

dotenv.config();

/* eslint-disable no-undef */
console.log(
  "ENV",
  process.env.CLOUDINARY_API_NAME,
  process.env.CLOUDINARY_API_KEY,
  process.env.CLOUDINARY_API_SECRET
);

cloudinary.config({
  cloud_name: process.env.CLOUDINARY_API_NAME,
  api_key: process.env.CLOUDINARY_API_KEY,
  api_secret: process.env.CLOUDINARY_API_SECRET,
});
/* eslint-enable no-undef */

// UPLOAD TO CLOUDINARY PROMISE
function uploadToCloudinary(base64ImageOutput, filename) {
  return new Promise((resolve, reject) => {
    cloudinary.v2.uploader.upload(
      base64ImageOutput,
      { folder: "MBRES/", public_id: filename },
      function (error, result) {
        if (error) return reject(err);
        return resolve(result);        
      }
    );
  });
}

exports.handler = async (event) => {
  // eslint-disable-line no-undef
  // Only allow POST
  if (event.httpMethod !== "POST") {
    return { statusCode: 405, body: "Method Not Allowed" };
  }

  // When the method is POST, the name will no longer be in the event’s
  // queryStringParameters – it’ll be in the event body encoded as a query string
  const payload = JSON.parse(event.body);
  const name = payload.name || "World";

  const filename =
    (payload?.id || generatoreService.makeid(10)) +
    generatoreService.getDateHash();

  console.log("DIRNAME:: ", __dirname); // eslint-disable-line no-undef
  console.log("TASK ROOT:: ", process.env.LAMBDA_TASK_ROOT); // eslint-disable-line no-undef
  //importazione font custom
  
  console.log("resolve::::", path.resolve("./fonts/LibreBaskerville-Regular.ttf"));

  /* fabric.nodeCanvas.registerFont(process.env.FONTCONFIG_PATH + "/LibreBaskerville-Regular.ttf", {
    family: "LibreBaskerville",
    weight: "regular",
    style: "normal",
  }); */

  /* fabric.nodeCanvas.registerFont(process.env.FONTCONFIG_PATH + "LibreBaskerville-Bold.ttf", {
    family: "LibreBaskerville",
    weight: "bold",
    style: "normal",
  });
  fabric.nodeCanvas.registerFont("/tmp/LibreBaskerville-Italic.ttf", {
    family: "LibreBaskerville",
    weight: "regular",
    style: "italic",
  }); */
  
  var canvas;

  try {
    canvas = new fabric.StaticCanvas(null, {
      width: canvasDimensions.canvasWidth,
      height: canvasDimensions.canvasHeight,
    });
  } catch (error) {
    return { statusCode: 501, body: "Errore creazione canvas" };
  }
  console.log("STEP1");
  try {
    generatoreService.generateBackground(
      payload.tipologie,
      canvas,
      payload.tipologie
    );
  } catch (error) {
    return { statusCode: 501, body: "Errore background" };
  }

  console.log("STEP2");
  try {
    generatoreService.generateBottom(payload.anno, canvas, payload.tipologie);
  } catch (error) {
    return { statusCode: 501, body: "Errore bottom" };
  }

  console.log("STEP3");
  try {
    generatoreService.generateLogo(canvas, payload.tipologie);
  } catch (error) {
    return { statusCode: 501, body: "Errore logo" };
  }

  console.log("STEP4");
  try {
    generatoreService.generateTitle(payload.titolo, canvas, payload.tipologie);
  } catch (error) {
    return { statusCode: 501, body: "Errore title" };
  }

  console.log("STEP5");
  try {
    canvas.renderAll();
  } catch (error) {
    return { statusCode: 501, body: "Errore render" };
  }

  const base64ImageOutput = canvas.toDataURL();
  console.log("STEP6");
  var res = "";
  try {
    res = await uploadToCloudinary(base64ImageOutput, filename);
  } catch (error) {
    return { statusCode: 501, body: "Errore Cloudinary output" };
  }
  console.log("STEP7");
  if (payload?.id === "immagine") {
    return {
      statusCode: 200,
      headers: {
        "Content-type": "image/png",
      },
      body: base64ImageOutput,
      isBase64Encoded: true,
    };
  } else {
    return {
      statusCode: 200,
      body: `Hello, ${name} \r\n ${filename} \r\n ${base64ImageOutput}`,
    };
  }
};
