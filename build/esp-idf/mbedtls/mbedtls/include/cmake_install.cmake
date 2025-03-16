# Install script for directory: /media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/wish/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32s3-elf-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aes.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aria.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/base64.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/block_cipher.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/build_info.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/compat-2.x.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_crypto.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_from_psa.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_from_legacy.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_superset_legacy.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_ssl.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_x509.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_psa.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/constant_time.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/debug.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/des.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/error.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/lms.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/mbedtls_config.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md5.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/oid.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pem.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs7.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/private_access.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/psa_util.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha3.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/threading.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/timing.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/version.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/build_info.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_auto_enabled.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_key_pair_types.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_synonyms.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_composites.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_key_derivation.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_primitives.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_compat.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_config.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_common.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_key_derivation.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_extra.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_legacy.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_platform.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_se_driver.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_sizes.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_struct.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_types.h"
    "/media/wish/Disk/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_values.h"
    )
endif()

