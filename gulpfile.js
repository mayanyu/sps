var gulp = require('gulp'),
    path = require('path'),
    less = require("gulp-less"),
    plumber = require('gulp-plumber'),
    watch = require('gulp-watch'),
    del = require('del'),
    runSequence = require('run-sequence'),
    browserSync = require('browser-sync'),
    bs = browserSync.create('my server');

//删除之前生成的less
/*gulp.task('clean-app', function() {
    del.sync(['css/dst/'], {
        force: true
    });
});*/
var baseDir = __dirname+'/src/main/webapp/';
var config = {
    js:{
        path:path.resolve(baseDir,'js/*.js')
    },
    less:{
        input:path.resolve(baseDir,'css/*.less'),
        output:path.resolve(baseDir,'css/')
    },
    css:{
        path:path.resolve(baseDir,'css/*.css')
    },
    html:{
        path:path.resolve(baseDir,'*.jsp')
    }


};
//编译less
gulp.task('compile-less', function () {

    return gulp.src(config.less.input)
        .pipe(plumber())            //防止崩溃
        .pipe(less())
        .pipe(gulp.dest(config.less.output));
});

/*
gulp.task('less-watch',['compile-less'],function (done) {
    browserSync();
    done();
});
*/

//开启一个本地server
gulp.task('browser-server', function() {
    // 对象初始化
    bs.init({
        proxy:"http://localhost:8080",
        files:baseDir+'*'
    }, function(err,bs){
        if(err){
            console.log(err);
        }
    });
});

//监听文件变化，重新启动一些任务
gulp.task('watch-app',function () {
    watch(config.less.input,function () {
        gulp.start('compile-less');
    });
    /*var wathPath = [config.css.path,config.js.path,config.html.path];

    //watch(wathPath).on("change", bs.reload);
    watch(wathPath,function () {
        bs.reload();
    });*/

});


gulp.task('dev', function() {
    runSequence('compile-less','watch-app');
});