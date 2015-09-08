#!/bin/bash

# Execute rpmbuild for the 
rpmbuild /rpmbuild/SOURCES/bzr-2.5.1.tar.gz

cp /rpmbuild/RPMS/* /output