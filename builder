#!/bin/bash

# Execute rpmbuild for the 
rpmbuild -ba /rpmbuild/SPECS/bzr.spec

cp /rpmbuild/RPMS/bzr-2.5.1-14.el6.x86_64.rpm /output/
