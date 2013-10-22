VERSION=6.1.1

ORIG_TAR=jboss-eap_$(VERSION).orig.tar.gz
SOURCE_TAR=thirdparty/eap-build/work/jboss-eap-6.1-src/dist/target/jboss-eap-6.1.tar.gz
DEST=jboss-eap

all: unpack
	(cd $(DEST); debuild -us -uc)

clean:
	(cd $(DEST); debuild clean)
	rm -f jboss-eap_$(VERSION)*.build
	rm -f jboss-eap_$(VERSION)*.changes
	rm -f jboss-eap_$(VERSION)*.deb
	rm -f jboss-eap_$(VERSION)*.debian.tar.gz
	rm -f jboss-eap_$(VERSION)*.dsc

dist-clean: clean
	rm -f $(ORIG_TAR)
	find $(DEST) -mindepth 1 -maxdepth 1 -not -name debian -exec rm -irf {} \;

unpack: $(ORIG_TAR)
	tar --strip-component 1 -xzvf $(ORIG_TAR) -C $(DEST)

$(ORIG_TAR): 
	cp ${SOURCE_TAR} ${ORIG_TAR}
