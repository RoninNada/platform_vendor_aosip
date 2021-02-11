ZERO_TARGET_PACKAGE := $(PRODUCT_OUT)/ZeroROM-$(ZERO_VERSION).zip

.PHONY: otapackage kronic bacon
otapackage: $(INTERNAL_OTA_PACKAGE_TARGET)
kronic: otapackage
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(ZERO_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(ZERO_TARGET_PACKAGE) | cut -d ' ' -f1 > $(ZERO_TARGET_PACKAGE).md5sum
	@echo -e ""
	@echo -e "${cya}Building ${bldcya}AOSiP ${txtrst}";
	@echo -e ""
	@echo -e ${CL_GRN}"            ▄▄▄·       .▄▄ · ▪   ▄▄▄·          "
	@echo -e ${CL_GRN}"           ▐█ ▀█ ▪     ▐█ ▀. ██ ▐█ ▄█          "
	@echo -e ${CL_GRN}"           ▄█▀▀█  ▄█▀▄ ▄▀▀▀█▄▐█· ██▀·          "
	@echo -e ${CL_GRN}"           ▐█ ▪▐▌▐█▌.▐▌▐█▄▪▐█▐█▌▐█▪·•          "
	@echo -e ${CL_GRN}"            ▀  ▀  ▀█▄▀▪ ▀▀▀▀ ▀▀▀.▀             "
	@echo -e ""
	@echo -e ${CL_MAG}"zip: "${CL_CYN} $(ZERO_TARGET_PACKAGE)${CL_RST}
	@echo -e ${CL_MAG}"md5: "${CL_CYN}" `cat $(ZERO_TARGET_PACKAGE).md5sum | cut -d ' ' -f 1`"${CL_RST}
	@echo -e ${CL_MAG}"size:"${CL_CYN}" `ls -lah $(ZERO_TARGET_PACKAGE) | cut -d ' ' -f 5`"${CL_RST}
	@echo -e ""

bacon: kronic
