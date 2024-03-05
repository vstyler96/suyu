#!/bin/bash

# Define each submodule, its path, repository URL, and the specific revision to checkout
declare -A submodules=(
    ["externals/enet"]="https://github.com/lsalzman/enet.git cc016b0046d563287f0aa9f09b958b5e70d43696"
    ["externals/cubeb"]="https://github.com/mozilla/cubeb.git 48689ae7a73caeb747953f9ed664dc71d2f918d8"
    ["externals/dynarmic"]="https://gitlab.com/curlyhacks/dynarmic.git ba8192d89078af51ae6f97c9352e3683612cdff1"
    ["externals/libusb/libusb"]="https://github.com/libusb/libusb.git c060e9ce30ac2e3ffb49d94209c4dae77b6642f7"
    ["externals/discord-rpc"]="https://gitlab.com/curlyhacks/discord-rpc.git 20cc99aeffa08a4834f156b6ab49ed68618cf94a"
    ["externals/Vulkan-Headers"]="https://github.com/KhronosGroup/Vulkan-Headers.git 80207f9da86423ce33aff8328a792fd715f3c08f"
    ["externals/sirit"]="https://gitlab.com/curlyhacks/sirit.git ab75463999f4f3291976b079d42d52ee91eebf3f"
    ["externals/mbedtls"]="https://gitlab.com/curlyhacks/mbedtls.git 8c88150ca139e06aa2aae8349df8292a88148ea1"
    ["externals/xbyak"]="https://github.com/herumi/xbyak.git a1ac3750f9a639b5a6c6d6c7da4259b8d6790989"
    ["externals/opus"]="https://github.com/xiph/opus.git 101a71e03bbf860aaafb7090a0e440675cb27660"
    ["externals/SDL"]="https://github.com/libsdl-org/SDL.git cc016b0046d563287f0aa9f09b958b5e70d43696"
    ["externals/cpp-httplib"]="https://github.com/yhirose/cpp-httplib.git a609330e4c6374f741d3b369269f7848255e1954"
    ["externals/ffmpeg/ffmpeg"]="https://github.com/FFmpeg/FFmpeg.git 9c1294eaddb88cb0e044c675ccae059a85fc9c6c"
    ["externals/vcpkg"]="https://github.com/microsoft/vcpkg.git a42af01b72c28a8e1d7b48107b33e4f286a55ef6"
    ["externals/cpp-jwt"]="https://github.com/arun11299/cpp-jwt.git 10ef5735d842b31025f1257ae78899f50a40fb14"
    ["externals/libadrenotools"]="https://github.com/bylaws/libadrenotools.git 5cd3f5c5ceea6d9e9d435ccdd922d9b99e55d10b"
    ["externals/nx_tzdb/tzdb_to_nx"]="https://github.com/lat9nq/tzdb_to_nx.git 97929690234f2b4add36b33657fe3fe09bd57dfd"
    ["externals/VulkanMemoryAllocator"]="https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator.git 2f382df218d7e8516dee3b3caccb819a62b571a2"
    ["externals/breakpad"]="https://gitlab.com/curlyhacks/breakpad.git c89f9dddc793f19910ef06c13e4fd240da4e7a59"
    ["externals/simpleini"]="https://github.com/brofield/simpleini.git 382ddbb4b92c0b26aa1b32cefba2002119a5b1f2"
    ["externals/oaknut"]="https://github.com/merryhime/oaknut.git 9d091109deb445bc6e9289c6195a282b7c993d49"
    ["externals/Vulkan-Utility-Libraries"]="https://github.com/KhronosGroup/Vulkan-Utility-Libraries.git 524f8910d0e4a5f2ec5961996b23e5b74b95cb1d"
)

# Loop through each submodule to process it
for name in "${!submodules[@]}"; do
    read -r url revision <<<"${submodules[$name]}"

    echo "Processing $name..."

    path=$name
    # echo "Path: $path"
    # echo "URL: $url"
    # echo "Revision: $revision"
    # 1. Delete the submodule path if it exists
    if [ -d "$path" ]; then
        git rm -rf $path
        rm -rf $path
    fi

    # # 2. Remove it from the git index (this step is integrated with git rm above)

    # # 3. Add the submodule
    git submodule add --force $url $path

    # # 4. Checkout the specific revision
    pushd $path
    git checkout $revision
    popd

    # # Add changes to the index
    git add -A $path
done

# Commit the changes
git commit -m "Updated submodules to specified revisions."

