import { fabric } from "fabric";
import canvasDimensions from "./mbres/constants/dimensions";
import generatoreService from "./mbres/utils/utils";
import cloudinary from "cloudinary";
import dotenv from "dotenv";

dotenv.config();

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

exports.handler = async (event, context) => {
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

  //importazione font custom
  /*  fabric.nodeCanvas.registerFont(__dirname +
    "mbres/assets/fonts/LibreBaskerville-Regular.ttf",
    {
      family: "LibreBaskerville",
      weight: "regular",
      style: "normal",
    }
  );
  fabric.nodeCanvas.registerFont(__dirname +
    "mbres/assets/fonts/LibreBaskerville-Bold.ttf",
    {
      family: "LibreBaskerville",
      weight: "bold",
      style: "normal",
    }
  );
  fabric.nodeCanvas.registerFont(__dirname + 
    "mbres/assets/fonts/LibreBaskerville-Italic.ttf",
    {
      family: "LibreBaskerville",
      weight: "regular",
      style: "italic",
    }
  ); */
  var canvas;
  console.log("DIRNAME:: ", __dirname);
  try {
    canvas = new fabric.StaticCanvas(null, {
      width: canvasDimensions.canvasWidth,
      height: canvasDimensions.canvasHeight,
    });
  } catch (error) {
    return { statusCode: 501, body: "Errore creazione canvas" };
  }

  try {
    generatoreService.generateBackground(
      payload.tipologie,
      canvas,
      payload.tipologie
    );
  } catch (error) {
    return { statusCode: 501, body: "Errore background" };
  }
  try {
    generatoreService.generateBottom(payload.anno, canvas, payload.tipologie);
  } catch (error) {
    return { statusCode: 501, body: "Errore bottom" };
  }

  try {
    generatoreService.generateLogo(canvas, payload.tipologie);
  } catch (error) {
    return { statusCode: 501, body: "Errore logo" };
  }

  try {
    generatoreService.generateTitle(payload.titolo, canvas, payload.tipologie);
  } catch (error) {
    return { statusCode: 501, body: "Errore title" };
  }

  try {
    canvas.renderAll();
    const base64ImageOutput = canvas.toDataURL();
  } catch (error) {
    return { statusCode: 501, body: "Errore render" };
  }

  try {
    cloudinary.v2.uploader.upload(
      base64ImageOutput,
      { folder: "MBRES/", public_id: filename },
      function (error, result) {
        console.log(result, error);
      }
    );
  } catch (error) {
    return { statusCode: 501, body: "Errore Cloudinary output" };
  }

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
      body: `Hello, ${risultato} ${errore} ${name} \r\n ${filename} \r\n ${base64ImageOutput}`,
    };
  }
};
