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
; These commands were taken from the drush make files 
; in profile directory in the download from: http://drupal.org/project/openpublic
projects[drupal][version] = 7.31
projects[drupal][type] = core
projects[drupal][patch][972536] = http://drupal.org/files/issues/object_conversion_menu_router_build-972536-1.patch
projects[drupal][patch][992540] = http://drupal.org/files/issues/992540-3-reset_flood_limit_on_password_reset-drush.patch
projects[drupal][patch][1355984] = http://drupal.org/files/1355984-timeout_on_install_with_drush_si-make.patch
projects[drupal][patch][1369024] = http://drupal.org/files/1369024-theme-inc-add-messages-id-make-D7.patch
projects[drupal][patch][1369584] = http://drupal.org/files/1369584-form-error-link-from-message-to-element-D7.patch
projects[drupal][patch][1697570] = http://drupal.org/files/drupal7.menu-system.1697570-29.patch
projects[openpublic][type] = profile
projects[openpublic][download][type] = git
projects[openpublic][download][url] = http://git.drupal.org/project/openpublic.git
projects[openpublic][download][revision] = appify_services

; Modules
; --------
projects[] = backup_migrate
; projects[] = colorbox
projects[colorbox][type] = "module"
projects[colorbox][version] = 1.6
projects[] = comment_notify
projects[] = context_bool_field
projects[] = date
projects[] = entitycache
projects[] = entity
projects[] = facebook_pull
projects[] = fblikebutton
projects[] = features
projects[] = field_group
; projects[] = fileviewer
projects[] = globalredirect
projects[] = imce
projects[] = link
projects[] = libraries
projects[] = mailchimp
projects[] = node_clone
projects[] = nodequeue
projects[] = page_title
projects[] = paypal_donate
projects[] = password_policy 
projects[] = redirect
projects[] = rules
projects[securesite][version] = 2.x-dev
projects[securesite][type] = "module"
projects[] = service_links
projects[] = seo_checklist
projects[] = site_verify
projects[] = stringoverrides
projects[] = strongarm
projects[] = token
projects[] = webform
projects[] = webform_rules


; Themes
; --------
projects[ninesixty][version] = 1.0
projects[ninesixty][type] = "theme"


; Libraries
; ---------
; libraries[colorbox][download][type] = "git"
; libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox.git"
; libraries[colorbox][download][branch] = master
libraries[html5bp][download][type] = "file"
libraries[html5bp][download][url] = "http://github.com/paulirish/html5-boilerplate/zipball/v1.0stripped"
libraries[jquery][download][type] = "file"
libraries[jquery][download][url] = "https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"
libraries[jqueryui][download][type] = "file"
libraries[jqueryui][download][url] = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.min.js"
; libraries[jqueryui][download][type] = "git"
; libraries[jqueryui][download][url] = https://github.com/shenzhuxi/bookreader

