// webpack.functions.js
const CopyPlugin = require("copy-webpack-plugin");

module.exports = {
    externals :  [ 'canvas', 'bufferutil', 'utf-8-validate', 'fonts'],
    plugins: [
      new CopyPlugin({
        patterns: [
          "LibreBaskerville-Regular.ttf",
          {
            from: "./fonts/*",
            to: "/opt/build/repo",
          },
          {
            from: "./fonts/*",
            to: "node_modules",
          },
        ],
      }),
    ]
  };
  /* const canvas = require('canvas');

module.exports = {
    canvas: [nodeExternals()],
}; */