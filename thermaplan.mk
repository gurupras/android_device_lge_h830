#THERMAPLAN_DISABLE_CPR_REGULATOR := true

ifeq ($(BOARD_HAS_THERMAPLAN),true)
PRODUCT_COPY_FILES += \
    device/lge/h830/init.thermaplan_cgroup_fix.rc:root/init.thermaplan_cgroup_fix.rc
ifeq ($(THERMAPLAN_DISABLE_CPR_REGULATOR),true)
PRODUCT_COPY_FILES += \
    device/lge/h830/init.thermaplan_cpr.rc:root/init.thermaplan_cpr.rc

endif
endif

