FROM alpine:3.9

RUN apk add --no-cache --upgrade \
     python3 \
 && pip3 install \
		sphinx \
		sphinx_rtd_theme \
		recommonmark

ENV SOURCEDIR=/source \
    BUILDDIR=/build \
    SPHINXOPTS="-a"

VOLUME /source
VOLUME /build

CMD sphinx-build ${SPHINXOPTS} ${SOURCEDIR} ${BUILDDIR}
