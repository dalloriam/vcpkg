vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO coveooss/cachemere
    REF be5b4d97590a67675b82bde48f07c1e80229576c
    SHA512 a54bf12e155ee2e696be3be135972f8692e15d32a3919b00e44e5c6ba8ab4bd478e6fdd85d3ddd43fd20684a9a04c4098642164a4f28b05b7a51134e24cad79c
    HEAD_REF main
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
)
vcpkg_install_cmake()

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/cachemere RENAME copyright)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")
