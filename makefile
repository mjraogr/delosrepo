#
# Makefile for delos3geur
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_delos3geur.zip

# the location for local-ota to save target-file
local-previous-target-dir := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := 

local-miui-modified-apps :=

# All vendor apks needed
local-phone-apps := Camera2 Bluetooth HTMLViewer KeyChain LatinIME NfcNci PacProcessor \
        UserDictionaryProvider WAPPushManager

local-phone-priv-apps := BackupRestoreConfirmation DefaultContainerService FusedLocation \
        ExternalStorageProvider InputDevices OneTimeInitializer ProxyHandler SharedStorageBackup \
        Shell Tag VpnDialogs

local-density := XHDPI

# The certificate for release version
local-certificate-dir := security

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := adjust_apps_location
local-after-zip:= 

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

adjust_apps_location:
	-mv $(ZIP_DIR)/system/app/QuickSearchBox.apk $(ZIP_DIR)/system/priv-app/QuickSearchBox.apk
