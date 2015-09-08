#!/bin/bash

# Execute rpmbuild for the 
rpmbuild /rpmbuild/SPECS/bzr.spec

cp /rpmbuild/RPMS/* /output
