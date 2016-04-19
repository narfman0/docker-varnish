#!/bin/bash
set -e

exec bash -c \
	"exec varnishd -j unix,user=varnish -F \
	-a :6081 \
	-f ${VCL_CONFIG} \
	-s malloc,${VARNISH_MEMORY} \
	${VARNISHD_PARAMS}"
