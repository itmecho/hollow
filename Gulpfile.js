let gulp = require('gulp');
let sass = require('gulp-sass');
let concat = require('gulp-concat');

gulp.task('scss', () => {
	return gulp.src('assets/scss/**/*.scss')
			.pipe(sass())
			.pipe(concat('main.css'))
			.pipe(gulp.dest('assets/css'));
});

gulp.task('watch', () => {
	gulp.watch('assets/scss/**/*.scss', ['scss']);
});

gulp.task('default', ['scss']);
