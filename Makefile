CV_TEX=cv
CV_DIR=cv
CV_PDF_NAME=example-cv
VIEWER=code
cv-pdf:
	rubber --into ${CV_DIR} -o xelatex -d ${CV_DIR}/${CV_TEX}
	mv ${CV_DIR}/${CV_TEX}.pdf ${CV_PDF_NAME}.pdf
	${VIEWER} ${CV_PDF_NAME}.pdf
	make clean
clean:
	rubber --into ${CV_DIR} --clean ${CV_DIR}/${CV_TEX}