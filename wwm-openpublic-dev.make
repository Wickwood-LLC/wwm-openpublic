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
projects[drupal][version] = "7.7"
projects[drupal][patch][] = http://drupal.org/files/issues/object_conversion_menu_router_build-972536-1.patch
projects[drupal][patch][] = http://drupal.org/files/issues/992540-3-reset_flood_limit_on_password_reset-drush.patch
projects[openpublic][version] = 1.0-beta2



; Modules
; --------
projects[securesite][version] = 7.x-2.x-dev
projects[securesite][type] = "module"

  

; Themes
; --------

  
  
; Libraries
; ---------
; No libraries were included

