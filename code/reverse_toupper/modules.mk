mod_reverse_toupper.la: mod_reverse_toupper.slo
	$(SH_LINK) -rpath $(libexecdir) -module -avoid-version  mod_reverse_toupper.lo
DISTCLEAN_TARGETS = modules.mk
shared =  mod_reverse_toupper.la
