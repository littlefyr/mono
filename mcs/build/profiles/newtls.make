# -*- makefile -*-

BOOTSTRAP_PROFILE = build

BOOTSTRAP_MCS = MONO_PATH="$(topdir)/class/lib/$(BOOTSTRAP_PROFILE)$(PLATFORM_PATH_SEPARATOR)$$MONO_PATH" $(INTERNAL_GMCS)
MCS = MONO_PATH="$(topdir)/class/lib/$(BOOTSTRAP_PROFILE)$(PLATFORM_PATH_SEPARATOR)$$MONO_PATH" $(INTERNAL_GMCS)

# nuttzing!

profile-check:
	@:

DEFAULT_REFERENCES = -r:mscorlib.dll
PROFILE_MCS_FLAGS = -d:NET_1_1 -d:NET_2_0 -d:NET_3_0 -d:NET_3_5 -d:NET_4_0 -d:NET_4_5 -d:MONO -d:DISABLE_CAS_USE  -nowarn:1699 -nostdlib -lib:$(topdir)/class/lib/$(PROFILE) -lib:$(topdir)/class/lib/net_4_5 $(DEFAULT_REFERENCES) $(PLATFORM_DEBUG_FLAGS) -d:MONO_FEATURE_NEW_TLS

FRAMEWORK_VERSION = 4.5
XBUILD_VERSION = 4.0
