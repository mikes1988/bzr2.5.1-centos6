#!/bin/bash

# Execute rpmbuild for the 
rpmbuild -ba /rpmbuild/SPECS/bzr.spec

cp rpmbuild/RPMS/x86_64/*.rpm /output/
