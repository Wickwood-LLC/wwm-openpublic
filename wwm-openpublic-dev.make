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

; Reviewed 2014-11-04
; Use OpenPublic instead of Drupal core:
; These commands were taken from the drush make files 
; in profile directory in the download from: http://drupal.org/project/openpublic
projects[drupal][version] = 7.32
projects[drupal][type] = core
projects[drupal][patch][992540] = https://www.drupal.org/files/issues/992540-3-reset_flood_limit_on_password_reset-drush.patch
projects[drupal][patch][1355984] = https://www.drupal.org/files/1355984-timeout_on_install_with_drush_si-make.patch
projects[drupal][patch][1369024] = https://www.drupal.org/files/1369024-theme-inc-add-messages-id-make-D7.patch
projects[drupal][patch][1369584] = https://www.drupal.org/files/1369584-form-error-link-from-message-to-element-D7.patch
projects[drupal][patch][1697570] = https://www.drupal.org/files/drupal7.menu-system.1697570-29.patch
; Fixes disabling of node types when feature/app disabled.
projects[drupal][patch][1441950] = https://www.drupal.org/files/issues/1441950-drupal_node_types_custom-8.patch
projects[drupal][patch][2124397] = https://www.drupal.org/files/issues/2124397-drupal-file-upload-19-do-not-test.patch

projects[openpublic][type] = profile
projects[openpublic][download][type] = git
projects[openpublic][download][url] = http://git.drupal.org/project/openpublic.git
projects[openpublic][download][revision] = appify_services

; Modules
; --------
projects[] = advanced_help
projects[] = apps
projects[] = backup_migrate
projects[] = captcha
projects[] = checklistapi

; Reviewed 2014-11-04
; Had to use dev version and apply patch to upgrade from platform that did not have libaries module installed
projects[] = colorbox
; projects[colorbox][type] = "module"
; projects[colorbox][version] = 2.x-dev
; projects[colorbox][patch][] = "https://www.drupal.org/files/issues/undefined_function_libraries_load-1851590-6.patch"

projects[] = conditional_styles
projects[] = comment_notify
projects[] = context
projects[] = context_bool_field
projects[] = context_breadcrumb_current_page
projects[] = ctools

; Reviewed 2014-08-16
; Pulling Dev version because previous stable was labled 7.x-2.9-alpha1
; but current stable is labled 7.x-2.8 and produces a warning in Aegir
; projects[] = date
projects[date][type] = "module"
projects[date][version] = 2.x-dev

projects[] = entitycache
projects[] = entity
projects[] = expire
projects[] = facebook_pull
projects[] = fblikebutton
projects[] = features
projects[] = field_group
projects[] = filefield_nginx_progress

; Reviewed 2014-08-11
; Fileviewer module has been moved into pdf module
; and can be removed once that is properly implemented
; projects[] = fileviewer

projects[] = follow
projects[] = google_analytics
projects[] = google_analytics_reports
projects[] = googleanalytics_perpage
projects[] = globalredirect
projects[] = imce
projects[] = link
projects[] = libraries
projects[] = mailchimp

; Reviewed on 2014-08-06 (No change)
; The following module needs to use the 1.x-dev version 
; because version 2 is not ready for production and 
; only bug fixes are being applied to 1.x-dev
; Also need to apply patch from 
: https://drupal.org/node/1995030 to add support for media in WYSIWYG summary
; (Taylor's Comment - Looks like the most recent URL/the one at the bottom of module is the most recent. So no change?)
; (Steve's Reply - This one is a bit complicated because code below allows for either the 7.x-1.x version or the 7.x-2.x version)
; (of the media module depending on which version is to be used. But according to the issue page at https://drupal.org/node/1995030,
; (you are correct, nothing has changed for either version of the module.)
; (08/06/14 Taylor - This one is strange as you said so I'm not totally sure but I believe it is fine as is)
; (08/08/14 Steve - Correct, no change, but we need to discuss it so you understand what to do here.)
; projects[] = media
projects[media][type] = "module"
projects[media][version] = 1.4
projects[media][patch][] = "https://drupal.org/files/wysiwyg_summary-1995030-3.patch"
; projects[media][version] = 2.x-dev
; projects[media][patch][] = "https://drupal.org/files/issues/media-7.x-2.x-wysiwyg-summary-support-1995030-6.patch"

; The following item needs to a patch applied from
; https://drupal.org/comment/7421208#comment-7421208 to support WYSIWYG editors to exposed summary fields, 
; which is created by patching WYSIWYG module with patch from https://drupal.org/comment/7404872#comment-7404872
; We pull patched module from WWM GitHub
; projects[media][type] = "module"
; projects[media][download][type] = "git"
; projects[media][download][url] = "https://github.com/wickwood/media.git"
; projects[media][download][branch] = 7.x-1.x-wwm

projects[] = media_archive
projects[] = media_bliptv

; Reviewed on 2014-08-06 (no change)
; Use the following guidelines depending on which version of Media module is being used:
; MBP 7.x-1.x is for Media 7.x-1.x - requires explicitly stating which version to pull
; MBP 7.x-3.x is for Media 7.x-2.x
; (Taylor's Comment - I'm not sure if there's a change here)
; (Steve's reply - Need to go to https://www.drupal.org/project/media_browser_plus to see.)
; (Also depends on which version of module is to be used, but you are correct, there was nothing to change here.)
; (08/06/14 Taylor - Default version has changed to 7.x-3.x so possible upgrade?)
; (08/08/14 Steve - nothing has changed - but this is another complicated one that we can discuss so you know what to look for.)
; projects[] = media_browser_plus
; projects[media_browser_plus][type] = "module"
; projects[media_browser_plus][version] = 1.x-dev
projects[media_browser_plus][download][type] = "get"
projects[media_browser_plus][download][url] = "http://ftp.drupal.org/files/projects/media_browser_plus-7.x-1.x-dev.tar.gz"


; Reviewed on 2014-08-06 (No change)
; (08/06/14 Taylor - master version is default)
; (08/08/14 Steve - we need to discuss what you mean by default.)
; The media_derivatives modules are not ready for production environments
; (Taylor's Comment - Doesn't seem to have URL. http://ftp.drupal.org/files/projects/media_derivatives leasds to 404 error.)
; (Steve's Reply - Need to go to https://www.drupal.org/project/media_derivatives)
; (Upon going that page you will see this module is still not ready for production.)
; projects[] = media_derivatives
; projects[] = media_derivatives_html5

projects[] = media_feeds

; Reviewed on 2014-08-06 (No change)
; (08/06/14 Taylor - master version is default)
; (08/08/14 Steve - we need to discuss what you mean by default.)
; The following module is commented out because
; it depends on the media_derivatives module
; projects[] = media_ffmpeg_simple

projects[] = media_flickr

; Reviewed on 2014-08-06 (No change)
; (08/06/14 Taylor - Version 7.x-2.x released, possible upgrade?)
; (08/08/14 Steve - Media Gallery 2.x-dev requires Media 2.x-dev.  Currently our sites are using Media 1.x, so no change yet.)
; The following module uses the beta8 release because
; that is the most stable version 
; 7.x-1.x - requires explicitly stating which version to pull
; projects[] = media_gallery
projects[media_gallery][version] = 1.0-beta8

projects[] = media_node
projects[] = media_update

; Reviewed on 2014-08-06 (No change)
; The following module needs to use the sandbox version
; from https://drupal.org/sandbox/DevinCarlson/1823634
; because nothing else exists yet but it may soon be added to Media 7x-2.x module 
; according to https://drupal.org/node/2062659 and https://drupal.org/node/1792738
projects[media_wysiwyg_view_mode][type] = "module"
projects[media_wysiwyg_view_mode][download][type] = "git"
projects[media_wysiwyg_view_mode][download][url] = "http://git.drupal.org/sandbox/DevinCarlson/1823634.git"

projects[] = media_vimeo
projects[] = media_youtube
projects[] = mediafront
projects[] = multiform
projects[] = node_clone
projects[] = node_reference_view_formatter
projects[] = nodeblock
projects[] = nodeconnect
projects[] = nodequeue
projects[] = oauth
projects[] = page_title
projects[] = panels
projects[] = paypal_donate
projects[] = password_policy 
projects[] = pdf
projects[] = plupload
projects[] = purge
projects[] = recaptcha
projects[] = redirect
projects[] = robotstxt
projects[] = rules
projects[securesite][version] = 2.x-dev
projects[securesite][type] = "module"
projects[] = service_links
projects[] = seo_checklist
projects[] = site_verify
projects[] = stringoverrides
projects[] = strongarm
projects[] = token
projects[] = transliteration
projects[] = twitter
projects[] = twitter_pull

; Reviewed on 2014-08-11 (No change)
; The following item needs to have a patch applied
; from https://drupal.org/node/1249684#comment-6355236 to prevent exposed filter on Roles to stop dissappearing when  
; "Only has 'authenticated user' role" or "Has roles in addition to 'authenticated user' ".
; projects[] = views
; projects[views][version] = 3.x-dev
; projects[views][patch][] = "https://drupal.org/files/views-1249684-dependency-exposed-filter.patch"
; Patch did not apply so pulling from WWM Github Repo
projects[views][type] = "module"
projects[views][download][type] = "git"
projects[views][download][url] = "https://github.com/wickwood/views.git"
projects[views][download][branch] = 7.x-3.x-wwm

projects[] = video_filter
projects[] = webform
projects[] = webform_rules
projects[] = xmlsitemap




; Themes
; --------
projects[] = rubik
projects[ninesixty][version] = 1.0
projects[ninesixty][type] = "theme"


; Libraries
; ---------
libraries[colorbox][download][type] = "file"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/1.x.zip"
libraries[html5bp][download][type] = "file"
libraries[html5bp][download][url] = "http://github.com/paulirish/html5-boilerplate/zipball/v1.0stripped"
libraries[jquery][download][type] = "file"
libraries[jquery][download][url] = "https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"
libraries[jqueryui][download][type] = "file"
libraries[jqueryui][download][url] = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.min.js"
; libraries[jqueryui][download][type] = "git"
; libraries[jqueryui][download][url] = https://github.com/shenzhuxi/bookreader
libraries[mailchimp][download][type] = "get"
libraries[mailchimp][download][url] = "https://bitbucket.org/mailchimp/mailchimp-api-php/get/2.0.4.zip"
libraries[mailchimp][directory_name] = "mailchimp"
libraries[mailchimp][destination] = "libraries"
libraries[pdf][download][type] = "file"
libraries[pdf][download][url] = "https://github.com/mozilla/pdf.js/releases/download/v1.0.277/pdfjs-1.0.277-dist.zip"

