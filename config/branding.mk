# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

CUSTOM_PLATFORM_VERSION := 10.0
CUSTOM_FEATURE_PACK := Explorer

TARGET_PRODUCT_SHORT := $(subst simplix_,,$(CUSTOM_BUILD))

CUSTOM_VERSION := Simplix10_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_FEATURE_PACK)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
CUSTOM_VERSION_PROP := 10

CUSTOM_PROPERTIES := \
    com.simplix.version=$(CUSTOM_VERSION_PROP) \
    com.simplix.version.display=$(CUSTOM_VERSION) \
    com.simplix.build_date=$(CUSTOM_BUILD_DATE) \
    com.simplix.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    com.simplix.build_type=$(CUSTOM_BUILD_TYPE) \
    com.simplix.feature_pack=$(CUSTOM_FEATURE_PACK)

ifeq ($(CUSTOM_BUILD_TYPE), OFFICIAL)
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/secure/releasekey
endif
