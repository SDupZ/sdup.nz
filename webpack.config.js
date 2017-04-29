/* jshint esversion: 6 */

import Webpack from 'Webpack';
import ProgressBar from 'progress-bar-webpack-plugin';
module.exports = {
    entry: "./static/js/src/main.babel.js",
    output: {
        filename: "bundle.js"
    },
    module: {
        loaders: [{
            test: /\.babel.js/,
            loader: "babel-loader",
            exclude: /node_modules/
        }]
    },
    resolve: {
        modulesDirectories: ['node_modules', 'bower_components'],
    },
    plugins: [
        new Webpack.ProvidePlugin({
            $: 'jquery',
            jQuery: 'jquery',
            'window.jQuery': 'jquery'
        }),
        new ProgressBar()
    ],
    watch: true
};
