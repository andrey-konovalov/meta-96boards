#WAYLAND_EXTRA_OECONF ="WAYLAND_SCANNER='${STAGING_DIR_NATIVE}/usr/bin/wayland-scanner' "

#EXTRA_OECONF += " ${@base_contains("DISTRO_FEATURES", "wayland", "${WAYLAND_EXTRA_OECONF}", "", d)} "

do_install_append() {
    #remove EGL
    rm -f ${D}/${libdir}/libEGL*
    #remove GLESv1
    rm -f ${D}/${libdir}/libGLESv1_CM.*
    #remove GLESv2
    rm -f ${D}/${libdir}/libGLESv2.*
    #remove GBM
    rm -f ${D}/${libdir}/libgbm.*
    #remove OpenVG
    #rm -f ${D}/${libdir}/libOpenVG.*
    #remove Wayland-egl
    rm -f ${D}/${libdir}/libwayland-egl.*

    #remove pkgconfig
    #rm -f ${D}/${libdir}/pkgconfig/egl.pc
    #rm -f ${D}/${libdir}/pkgconfig/glesv1_cm.pc
    #rm -f ${D}/${libdir}/pkgconfig/glesv2.pc
    #rm -f ${D}/${libdir}/pkgconfig/wayland-egl.pc
    #rm -f ${D}/${libdir}/pkgconfig/gbm.pc
    #rm -f ${D}/${libdir}/pkgconfig/vg.pc

    #remove include for EGL
    #rm -rf ${D}/${includedir}/EGL/
    #remove include for GLES
    #rm -rf ${D}/${includedir}/GLES/
    #remove include for GLES2
    #rm -rf ${D}/${includedir}/GLES2/
    #remove include for GLES3
    #rm -rf ${D}/${includedir}/GLES3/
    #remove include for KHR
    #rm -rf ${D}/${includedir}/KHR/
    #remove include for GL
    #rm -rf ${D}/${includedir}/GL/
    #remove include for VG
    #rm -rf ${D}/${includedir}/VG/
    #remove include for GBM
    #rm -rf ${D}/${includedir}/gbm.h
}

PROVIDES_remove = "virtual/libgles1 virtual/libgles2 virtual/egl"

