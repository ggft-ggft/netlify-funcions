import { fabric } from "fabric";
import canvasDimensions from "../mbres/constants/dimensions";
import generatoreService from "../mbres/utils/utils";
import cloudinary from "cloudinary";

cloudinary.config({ 
  cloud_name: process.env.CLOUDINARY_API_NAME, 
  api_key: process.env.CLOUDINARY_API_KEY, 
  api_secret: process.env.CLOUDINARY_API_SECRET 
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
  fabric.nodeCanvas.registerFont(
    "mbres/assets/fonts/LibreBaskerville-Regular.ttf",
    {
      family: "LibreBaskerville",
      weight: "regular",
      style: "normal",
    }
  );
  fabric.nodeCanvas.registerFont(
    "mbres/assets/fonts/LibreBaskerville-Bold.ttf",
    {
      family: "LibreBaskerville",
      weight: "bold",
      style: "normal",
    }
  );
  fabric.nodeCanvas.registerFont(
    "mbres/assets/fonts/LibreBaskerville-Italic.ttf",
    {
      family: "LibreBaskerville",
      weight: "regular",
      style: "italic",
    }
  );

  var canvas = new fabric.StaticCanvas(null, {
    width: canvasDimensions.canvasWidth,
    height: canvasDimensions.canvasHeight,
  });

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

  canvas.renderAll();
  const base64ImageOutput = canvas.toDataURL();

  cloudinary.v2.uploader.upload(
    base64ImageOutput,
    {
      callback : function (error, result) {
        console.log(result, error);
      },
      public_id : `MBRES/${filename}`
    }
  );

  /* cloudinary.v2.uploader.upload("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==", 
    function(error, result) {console.log(result, error); }); */

  return {
    statusCode: 200,
    body: `Hello, ${name} \r\n ${filename} \r\n ${base64ImageOutput}`,
  };
};
