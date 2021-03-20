// webpack.functions.js
const CopyPlugin = require("copy-webpack-plugin");

module.exports = {
    externals :  [ 'canvas', 'bufferutil', 'utf-8-validate'],
    plugins: [
      new CopyPlugin({
        patterns: [
          "./fonts/*",
          {
            from: "./fonts/*",
            to: "/var/task/src/node_modules",
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