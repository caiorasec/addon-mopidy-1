#!/usr/bin/with-contenv bashio
# ==============================================================================
# Community Hass.io Add-ons: AppDaemon
# Install user configured/requested Python packages
# ==============================================================================

readonly MEDIA_DIR="/share/mopidy/media"

if ! bashio::fs.directory_exist "${MEDIA_DIR}"; then
  mkdir -p "${MEDIA_DIR}" || bashio::exit.nok "Could not create media folder: ${MEDIA_DIR}"
fi