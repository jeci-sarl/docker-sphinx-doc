# Docker Image for Sphinx-doc

* [Sphinx](http://www.sphinx-doc.org/)
* [Alpine pyhon3](https://pkgs.alpinelinux.org/package/v3.9/main/x86_64/python3)
* [Pypi Sphinx](https://pypi.org/project/Sphinx/)


## Usage

Standard usage. Current directory must have `conf.py`. See sphinx documentation.

``` bash
sudo mkdir /var/www/html/sphinx
sudo chown --reference=$HOME /var/www/html/sphinx

docker run --rm -it \
  -v "${PWD}:/source" \
  -v "/var/www/html/sphinx:/build" \
  -e SPHINXOPTS="-a" \
  jeci/sphinx-doc
```

## Env

* `SOURCEDIR=/source`
* `BUILDDIR=/build`
* `SPHINXOPTS="-a"`


## Default Cms

``` Dockerfile
CMD sphinx-build ${SPHINXOPTS} ${SOURCEDIR} ${BUILDDIR}
```

## Volume

* `/source`
* `/build`
  
