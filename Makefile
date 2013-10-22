VERSION=6.1.1

ORIG_TAR=jboss-eap_$(VERSION).orig.tar.gz
SOURCE_TAR=thirdparty/eap-build/work/jboss-eap-6.1-src/dist/target/jboss-eap-6.1.tar.gz
DEST=jboss-eap

all: jboss/jar-versions.xml
	(cd $(DEST); debuild -us -uc)

clean:

	rm -rf $(DEST)/appclient
	rm -rf $(DEST)/bin
	rm -rf $(DEST)/bundles
	rm -rf $(DEST)/docs
	rm -rf $(DEST)/domain
	rm -f $(DEST)/JBossEULA.txt
	rm -f $(DEST)/jboss-modules.jar
	rm -f $(DEST)/LICENSE.txt
	rm -rf $(DEST)/modules
	rm -rf $(DEST)/standalone
	rm -f  $(DEST)/version.txt	
	rm -rf $(DEST)/welcome-content
	rm -f $(DEST)/Makefile   

	rm -f jboss-eap_$(VERSION)*.build
	rm -f jboss-eap_$(VERSION)*.changes
	rm -f jboss-eap_$(VERSION)*.deb
	rm -f jboss-eap_$(VERSION)*.debian.tar.gz
	rm -f jboss-eap_$(VERSION)*.dsc

	(cd $(DEST); debuild clean)
	true

dist-clean: clean
	rm -f $(ORIG_TAR)

jboss/jar-versions.xml: $(ORIG_TAR)
	tar --strip-component 1 -xzvf $(ORIG_TAR) -C $(DEST)

$(ORIG_TAR): 
	cp ${SOURCE_TAR} ${ORIG_TAR}
