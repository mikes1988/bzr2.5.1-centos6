FROM centos:centos6

MAINTAINER "Michael Edwards <mikes1988@gmail.com>"

RUN mkdir /rpmbuild

ADD https://launchpad.net/bzr/2.5/2.5.1/+download/bzr-2.5.1.tar.gz /rpmbuild/

ADD bzr.spec /rpmbuild/SPECS/

ADD builder /rpmbuild/

ADD bzr-cve2013-2099.patch /rpmbuild/SOURCES/

ADD bzr-gpg-no-agent-error.patch /rpmbuild/SOURCES/

RUN yum install -y epel-release

RUN yum install -y rpm-build \
                tar \
                python2-devel \
                zlib-devel \
                python-sphinx \
                gettext \
                Cython \
                gcc

RUN tar --extract \
        --file /rpmbuild/SOURCES/bzr-2.5.1.tar.gz \
        bzr-2.5.1/doc/en/_static/bzr\ icon\ 16.png >/rpmbuild/SOURCES/bzr-icon-64.png
        
ENTRYPOINT /rpmbuild/builder
