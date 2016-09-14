################################################################################
#
# batman-adv
#
################################################################################

RT2860V2_VERSION = ddcca8c9ffc1fa60e3ab1b1727449b4e8f6aca0c
RT2860V2_SITE = $(call github,FloTechnologies,icd-rt2860v2,$(RT2860V2_VERSION))
RT2860V2_MODULE_SUBDIRS = rt2860v2_ap

RT2860V2_MODULE_MAKE_OPTS = \
	CONFIG_SOC_MT7620=y \
	CONFIG_RT2860V2_AP=m \
	CONFIG_RT2860V2_AP_V24_DATA_STRUCTURE=y \
	CONFIG_RT2860V2_AP_APCLI=y \
	CONFIG_RT2860V2_AP_COC=y \
	modules

# define RT2860V2_BUILD_CMDS
	# $(TARGET_MAKE_ENV) $(MAKE) $(RT2860V2_MODULE_MAKE_OPTS)
# endef

$(eval $(kernel-module))
$(eval $(generic-package))
