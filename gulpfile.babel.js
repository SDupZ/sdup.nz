/* jshint esversion: 6 */

/*
 *  COMMANDS:
 *  gulp [default]
 *  gulp sass
 */

import gulp from 'gulp';
import sass from "gulp-sass";
import postcss from 'gulp-postcss';
import sourcemaps from 'gulp-sourcemaps';
import autoprefixer from 'autoprefixer';
import notify from 'gulp-notify';
import browserSync from 'browser-sync';
import plumber from 'gulp-plumber';
import parker from 'gulp-parker';
import scsslint from 'gulp-scss-lint';
import colorHexAlpha from 'postcss-color-hex-alpha';
import webpackConfig from './webpack.config.js';
import webpackStream from 'webpack-stream';
import minify from 'gulp-minifier'


//  ****************************************************************************
//  CONFIGURATION
//  ****************************************************************************
const RELOAD = browserSync.reload;
const CONFIG = {
    SASS_WATCH: [
        'static/sass/*.scss',
        'static/sass/**/*.scss'
    ],
    JS_WATCH: [
        'static/js/dist/bundle.js'
    ],
    SASS_FILE: 'static/sass/main.scss',
    CSS_DEST: 'static/css',
    PROXY_ADDRESS: 'good.dev'
};


//  ****************************************************************************
//  TASK: sass
//  Pre-process the SASS files and notify the OS
//  ****************************************************************************
gulp.task("sass", () => {

    var postcssProcessors = [
        autoprefixer({ browsers: ['last 2 versions', '> 5% in NZ', 'last 3 iOS versions'] }),
        colorHexAlpha()
    ];

    return gulp.src(CONFIG.SASS_FILE)
        .pipe( sourcemaps.init() )
        .pipe(plumber())
        .pipe( sass.sync().on("error", (err) => {

            notify.onError({
                title:    "Error running Gulp",
                subtitle: "Failure!",
                message:  "Error: <%= error.message %>",
                sound:    "Beep"
            })(err);

        }) )
        .pipe( postcss(postcssProcessors) )
        .pipe( sourcemaps.write('.') )
        .pipe(minify({
            minify: true,
            collapseWhitespace: true,
            conservativeCollapse: true,
            minifyJS: true,
            minifyCSS: true,
            getKeptComment: function (content, filePath) {
                var m = content.match(/\/\*![\s\S]*?\*\//img);
                return m && m.join('\n') + '\n' || '';
            }
          })).pipe( gulp.dest(CONFIG.CSS_DEST) )
        .pipe(notify({ message: 'Styles task complete' }));
});


//  ****************************************************************************
//  TASK: sass-watch
//  Watch for changes and pre-process the SASS files
//  ****************************************************************************
gulp.task("sass:watch", () => {
    gulp.watch(CONFIG.SASS_WATCH, ["sass"]) ;
});


//  ****************************************************************************
//  TASK: scss:lint
//  note: need to install the gem: gem install scss_lint
//  ****************************************************************************
gulp.task('sass:lint', () => {
    return gulp.src(CONFIG.SASS_WATCH)
    .pipe(scsslint());
});


//  ****************************************************************************
//  TASK: js:watch
//  Watch compiled file for changes and reload browser
//  ****************************************************************************
gulp.task("js:watch", () => {
    gulp.watch(CONFIG.JS_WATCH, RELOAD) ;
});


//  ****************************************************************************
//  TASK: parker
//  ****************************************************************************
gulp.task('parker', () => {
	return gulp.src(CONFIG.CSS_DEST + "/*.css")
        .pipe(parker());

        // git grep --break -C 2 "\!important" #to list all important in CSS
});




//  ****************************************************************************
//  TASK: webpack:build
//  Will build JS with Webpack
//  ****************************************************************************
gulp.task('webpack:build', function() {
    return gulp.src('src/entry.js')
    .pipe(webpackStream(webpackConfig)
    .on("error", (err) => {

        notify.onError({
            title:    "Error running Gulp",
            subtitle: "Failure!",
            message:  "Error: <%= error.message %>",
            sound:    "Beep"
        })(err);

    }))
    .pipe(minify({
        minify: true,
        collapseWhitespace: true,
        conservativeCollapse: true,
        minifyJS: true,
        minifyCSS: true,
        getKeptComment: function (content, filePath) {
            var m = content.match(/\/\*![\s\S]*?\*\//img);
            return m && m.join('\n') + '\n' || '';
        }
      }))
    .pipe(gulp.dest('./static/js/dist/'))
    .pipe(notify("Webpack task complete"));
});


//  ****************************************************************************
//  TASK: browser-sync
//  Will run the other tasks and reload on css or js change
//  ****************************************************************************
gulp.task("browser-sync", () => {
    browserSync
        .init({
            proxy: CONFIG.PROXY_ADDRESS
        });
    gulp
        .start("webpack:build")
        .start("js:watch")
        .watch(CONFIG.SASS_WATCH, ["sass"])
        .on('change', RELOAD);
});


//  ****************************************************************************
//  TASK: default
//  Will run the other tasks
//  ****************************************************************************
gulp.task("default", () => {
    gulp
        .start("webpack:build")
        .watch(CONFIG.SASS_WATCH, ["sass"]);
});
