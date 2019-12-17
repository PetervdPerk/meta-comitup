FILESEXTRAPATHS_append := ":${THISDIR}/files"


FILES_avahi-daemon += " \
    ${datadir}/dbus-1/interfaces \
"
do_install_append() {
    # Move example services as we don't want to advertise example services
    install -d ${D}/usr/share/doc/${PN}
    mv ${D}/etc/avahi/services/ssh.service ${D}/usr/share/doc/${PN}/
    mv ${D}/etc/avahi/services/sftp-ssh.service ${D}/usr/share/doc/${PN}/

    # Bring back the dbus introspection files poky removes
    if [ ! -d ${D}${datadir}/dbus-1/interfaces ]; then
        mkdir -p ${D}${datadir}/dbus-1/interfaces
        for data in $(ls ${S}/avahi-daemon/*.xml); do
            install -m 644 $data ${D}${datadir}/dbus-1/interfaces
        done
   fi
}

 
