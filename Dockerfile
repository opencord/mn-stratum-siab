# Copyright 2019-present Open Networking Foundation
#
# SPDX-License-Identifier: Apache-2.0

FROM opennetworking/mn-stratum:latest@sha256:b790783a1622b0ce713259cde8c96b12d1a17a2516fd0b8db481d33d28dee1a5

RUN install_packages pppoe iproute2 bridge-utils dnsmasq
RUN touch /var/log/pppoe-server-log


COPY ./chap-secrets /etc/ppp/chap-secrets
COPY ./1remove_route /etc/ppp/ip-up.d/1remove_route
COPY ./iptoassign ./pppoe-options /
