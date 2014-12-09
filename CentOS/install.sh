#!/bin/bash
yum install -y make gcc gcc-gfortran
yum -y --nogpgcheck localinstall RRO-8.*-el6.x86_64.rpm
