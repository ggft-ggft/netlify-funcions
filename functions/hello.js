import { fabric } from "fabric";
import canvasDimensions from "../mbres/constants/dimensions";
import generatoreService from "../mbres/utils/utils";

exports.handler = async (event, context) => {

  // Only allow POST
  if (event.httpMethod !== "POST") {
    return { statusCode: 405, body: "Method Not Allowed" };
  }

  // When the method is POST, the name will no longer be in the event’s
  // queryStringParameters – it’ll be in the event body encoded as a query string
  const payload = JSON.parse(event.body);
  const name = payload.name || "World";


  const filename = (payload?.id || generatoreService.makeid(10)) + generatoreService.getDateHash();

    //importazione font custom
    fabric.nodeCanvas.registerFont("mbres/assets/fonts/LibreBaskerville-Regular.ttf", {
      family: "LibreBaskerville",
      weight: "regular",
      style: "normal",
    });
    fabric.nodeCanvas.registerFont("mbres/assets/fonts/LibreBaskerville-Bold.ttf", {
      family: "LibreBaskerville",
      weight: "bold",
      style: "normal",
    });
    fabric.nodeCanvas.registerFont("mbres/assets/fonts/LibreBaskerville-Italic.ttf", {
      family: "LibreBaskerville",
      weight: "regular",
      style: "italic",
    });

    var canvas = new fabric.StaticCanvas(null, { width: canvasDimensions.canvasWidth, height: canvasDimensions.canvasHeight });

    try {
      generatoreService.generateBackground(payload.tipologie, canvas, payload.tipologie);
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
    const result = canvas.toDataURL();

  return {
    statusCode: 200,
    body: `Hello, ${name} \r\n ${filename} \r\n ${result}`,
  };
}