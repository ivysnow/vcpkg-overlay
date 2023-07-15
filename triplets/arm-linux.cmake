set(VCPKG_TARGET_ARCHITECTURE arm)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)

set(VCPKG_CMAKE_SYSTEM_NAME Linux)

set(VCPKG_C_FLAGS "-g -fvisibility=hidden -fvisibility-inlines-hidden -ffunction-sections -fdata-sections")
set(VCPKG_CXX_FLAGS "${VCPKG_C_FLAGS} -stdlib=libc++")
set(VCPKG_C_FLAGS_RELEASE "-O3 -fomit-frame-pointer -flto")
set(VCPKG_CXX_FLAGS_RELEASE "${VCPKG_C_FLAGS_RELEASE}")
set(VCPKG_LINKER_FLAGS "-rtlib=compiler-rt -unwindlib=libunwind -Wl,--gc-sections -Wl,--as-needed")
set(VCPKG_LINKER_FLAGS_DEBUG "-fuse-ld=mold")
set(VCPKG_LINKER_FLAGS_RELEASE "-fuse-ld=lld")

set(CMAKE_AR llvm-ar)
set(CMAKE_RANLIB llvm-ranlib)
