; ----------------
; Generated makefile from http://drushmake.me
; Permanent URL: http://drushmake.me/file.php?token=ba5df383602c
; ----------------
;
; This is a working makefile - try it! Any line starting with a `;` is a comment.
  
; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.
  
core = 7.x
  
; API version
; ------------
; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.
  
api = 2
  
; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.

; Use OpenPublic instead of Drupal core:
; These commands were taken from:
; http://drupal.org/project/openpublic
; http://drupalcode.org/project/openpublic.git/blob_plain/refs/heads/7.x-1.x:/build-openpublic.make
projects[drupal][type] = core
projects[drupal][version] = "7.8"
projects[drupal][patch][] = http://drupal.org/files/issues/object_conversion_menu_router_build-972536-1.patch
projects[drupal][patch][] = http://drupal.org/files/issues/992540-3-reset_flood_limit_on_password_reset-drush.patch
projects[openpublic][version] = 1.0-beta2


; Modules
; --------
projects[] = entity
projects[] = facebook_pull
projects[] = globalredirect
projects[node_clone][version] = 1.0-beta1
projects[node_clone][type] = "module"
projects[] = mailchimp
projects[] = page_title
projects[] = paypal_donate
projects[] = redirect
projects[] = rules
projects[securesite][version] = 2.x-dev
projects[securesite][type] = "module"
projects[] = seo_checklist
projects[site_verify][version] = 1.0
projects[site_verify][type] = "module"
projects[] = stringoverrides
projects[] = webform_rules


; Themes
; --------
projects[ninesixty][version] = 1.0
projects[ninesixty][type] = "theme"


; Libraries
; ---------
libraries[colorbox][type] = "libraries"
libraries[colorbox][download][type] = "file"
libraries[colorbox][download][url] = "http://colorpowered.com/colorbox/latest"
libraries[html5bp][download][type] = "file"
libraries[html5bp][download][url] = "http://github.com/paulirish/html5-boilerplate/zipball/v1.0stripped"
libraries[jquery][download][type] = "file"
libraries[jquery][download][url] = "https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"
libraries[jqueryui][download][type] = "file"
libraries[jqueryui][download][url] = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.min.js"

