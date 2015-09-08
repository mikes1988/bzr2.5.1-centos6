FROM centos:centos6

MAINTAINER "Michael Edwards <mikes1988@gmail.com>"

ADD https://launchpad.net/bzr/2.5/2.5.1/+download/bzr-2.5.1.tar.gz /rpmbuild/SOURCES/bzr-2.5.1.tar.gz
ADD bzr.spec /rpmbuild/SPECS/bzr.spec
ADD builder /rpmbuild/builder

RUN yum install rpm-build \
                tar \
                epel-release \
                python2-devel \
                zlib-devel \
                python-sphinx \
                gettext \
                Cython

RUN tar --extract \
        --file /rpmbuild/SOURCES/bzr-2.5.1.tar.gz \
        bzr-2.5.1/doc/en/_static/bzr icon 16.png >/rpmbuild/SOURCES/bzr-icon-64.png
        
ENTRYPOINT /rpmbuild/builder