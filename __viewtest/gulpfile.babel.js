import gulp from "gulp"
import del from "del"
import concat from "gulp-concat"
import sass from "gulp-sass"

gulp.task("clean", (callback)=>{
    return del([
        "./css/sass-css-temp/**/*",
    ], callback)
})

gulp.task("sass", ["clean"], ()=>{
    // return gulp.src("./css/src/**/*.sass")
    return gulp.src("./css/sass/**/*.sass")
        .pipe(sass({outputStyle: "expanded"}).on('error', sass.logError))
        .pipe(gulp.dest("./css/sass-css-temp/"))
})

gulp.task("css", ["sass"],()=>{
    return gulp.src([
        // "./css/src/*.css",
        // "./css/sass-css-temp/*.css",
        // "./css/src/**/*.css",
        "./css/sass-css-temp/**/common.css",
        "./css/sass-css-temp/**/*.css",
    ])
        .pipe(concat("bundle.css"))
        .pipe(gulp.dest("./css/"))
})

gulp.task("default", ["css"])

gulp.task("watch", ["default"], ()=>{
    gulp.watch([
        // "./css/src/**/*.css",
        // "./css/src/**/*.sass",
        "./css/sass/**/*.sass",
    ], [
        "default"
    ])
})
