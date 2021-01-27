# SPDX-FileCopyrightText: 2019 TQ Tezos <https://tqtezos.com/>
#
# SPDX-License-Identifier: MPL-2.0
FROM ubuntu
RUN apt-get update && apt-get install -y wget netbase curl
RUN curl -fsSL https://raw.githubusercontent.com/zcash/zcash/master/zcutil/fetch-params.sh | bash
COPY ./scripts/ /scripts
COPY ./patches/ /patches
RUN mkdir /base-dir
VOLUME /base-dir
ENTRYPOINT ["/scripts/docker.sh"]
EXPOSE 8732
CMD []
