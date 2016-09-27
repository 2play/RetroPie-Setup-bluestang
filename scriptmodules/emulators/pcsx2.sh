#!/usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="pcsx2"
rp_module_desc="PS2 emulator PCSX2"
rp_module_help="ROM Extensions: .bin .iso .img .mdf .z .z2 .bz2 .cso .ima .gz\n\nCopy your PS2 roms to $romdir/ps2"
rp_module_section="exp"
rp_module_flags="!arm"

function install_bin_pcsx2() {
    aptInstall pcsx2
}

function configure_pcsx2() {
    mkRomDir "ps2"

    addSystem 0 "$md_id-nogui" "ps2" "PCSX2 %ROM% --fullscreen --nogui"
    addSystem 1 "$md_id" "ps2" "PCSX2 %ROM% --windowed"
}