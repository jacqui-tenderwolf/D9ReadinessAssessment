#!/bin/bash

# Turn on crude error handling
set -e -o pipefail

# Executes the test scans and other tests

# Flag
echo "flag"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en flag -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/flag" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall flag -y"

# Flood Unblock
echo "flood_unblock"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en flood_unblock -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/flood_unblock"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall flood_unblock -y"

# Focal Point - unable to install
echo "focal_point"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en crop focal_point -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/focal_point"
## docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall focal_point crop -y"

# FontAwesome
echo "fontawesome"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en fontawesome -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/fontawesome" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall fontawesome -y"

# FontAwesome Menu Icons
echo "fontawesome_menu_icons"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en libraries fontawesome fontawesome_menu_icons -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/fontawesome_menu_icons" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall fontawesome_menu_icons fontawesome libraries -y"

# Full Calendar View
echo "fullcalendar_view"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en fullcalendar_view calendar_recurring_event -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/fullcalendar_view" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall calendar_recurring_event fullcalendar_view -y"

# Geofield
echo "geofield"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en geofield -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/geofield"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall geofield -y"

# Google Analytics
echo "google_analytics"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en google_analytics -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/google_analytics" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall google_analytics -y"

# Google Tag Manager
echo "google_tag"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en google_tag -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/google_tag"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall google_tag -y"

# Google Translate
echo "gtranslate"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en gtranslate -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/gtranslate"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall gtranslate -y"

# HTI - Hierarchical Taxonomy Importer
echo "hti"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en hti -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/hti"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall hti -y"

# Honeypot
echo "honeypot"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en honeypot -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/honeypot"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall honeypot -y"

# HTML Formatter
echo "html_formatter"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en html_formatter -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/html_formatter" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall html_formatter -y"

# Image Style Quality -- note commenting out disabling modules as this caused a drush error
echo "image_style_quality"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en image image_style_quality -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/image_style_quality"
## docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall image_style_quality image -y"

# Inline Entity Form
echo "inline_entity_form"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en inline_entity_form -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/inline_entity_form" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall inline_entity_form -y"

# Insert
echo "insert"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en insert -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/insert"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall insert -y"

# Key Value Field
echo "key_value_field"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en key_value_field -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/key_value_field"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall key_value_field -y"

# Layout Builder Modal
echo "layout_builder_modal"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en layout_builder_modal -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/layout_builder_modal"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall layout_builder_modal -y"

# Layout Builder Restrictions
echo "layout_builder_restrictions"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en layout_builder_restrictions -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/layout_builder_restrictions"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall layout_builder_restrictions -y"

# Layout Builder Styles
echo "layout_builder_styles"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en layout_builder_styles -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/layout_builder_styles"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall layout_builder_styles -y"

# Leaflet
echo "leaflet"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en leaflet -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/leaflet"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall leaflet -y"

# Linkit
echo "linkit"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en linkit -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/linkit" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall linkit -y"

# Mail System
echo "mailsystem"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en mailsystem -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/mailsystem" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall mailsystem -y"

# Masquerade
echo "masquerade"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en masquerade -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/masquerade" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall masquerade -y"

# Max Length
echo "maxlength"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en maxlength -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/maxlength"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall maxlength -y"

# Media Bulk Upload
echo "media_bulk_upload"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en media_bulk_upload -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/media_bulk_upload"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall media_bulk_upload -y"

# Media Entity Audio
echo "media_entity_audio"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en media_entity_audio -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/media_entity_audio"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall media_entity_audio -y"

# Media Entity Browser
echo "media_entity_browser"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en media_entity_browser -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/media_entity_browser"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall media_entity_browser -y"

# Menu Admin Per Menu
echo "menu_admin_per_menu"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en menu_admin_per_menu -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/menu_admin_per_menu"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall menu_admin_per_menu -y"

# Menu Block
echo "menu_block"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en menu_block -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/menu_block"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall menu_block -y"
