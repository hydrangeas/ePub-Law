
# Commands

ZIP=zip
OPT1='-0 -X'
OPT2='-r'

# Files

DSTDIR=build
ePub=../${DSTDIR}/book.epub
SRCDIR=files
mimefile=mimetype
allfiles=*

# Make Commands

all: clean ${ePub}

${ePub}:
	mkdir -p ${DSTDIR}
	cd ${SRCDIR} && \
	  zip -0 -X ${ePub} ${mimefile} && \
	  zip -r    ${ePub} ${allfiles} -x ${mimefile}

clean: 
	rm -fr ${DSTDIR}

.PHONY: all clean
