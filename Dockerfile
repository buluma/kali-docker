FROM scratch

# Metadata params
ARG BUILD_DATE
ARG VERSION
ARG PROJECT_URL
ARG VCS_REF
ARG TARBALL
ARG RELEASE_DESCRIPTION

# https://github.com/opencontainers/image-spec/blob/master/annotations.md
LABEL org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.source="$PROJECT_URL" \
      org.opencontainers.image.revision="$VCS_REF" \
      org.opencontainers.image.vendor="ShadowNet" \
      org.opencontainers.image.version="$VERSION" \
      org.opencontainers.image.title="Kali Linux ($RELEASE_DESCRIPTION branch)" \
      org.opencontainers.image.description="Unofficial Kali Linux container image for $RELEASE_DESCRIPTION" \
      org.opencontainers.image.url="https://buluma.github.io/" \
      org.opencontainers.image.authors="Shadow Walker <me@buluma.me.ke>"

ADD $TARBALL /

CMD ["bash"]
