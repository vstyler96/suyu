// Copyright 2021 yuzu Emulator Project
// Licensed under GPLv2 or any later version
// Refer to the license.txt file included.

#include "common/assert.h"
#include "core/hid/hid_core.h"

namespace Core::HID {

HIDCore::HIDCore()
    : player_1{std::make_unique<EmulatedController>(NpadIdType::Player1)},
      player_2{std::make_unique<EmulatedController>(NpadIdType::Player2)},
      player_3{std::make_unique<EmulatedController>(NpadIdType::Player3)},
      player_4{std::make_unique<EmulatedController>(NpadIdType::Player4)},
      player_5{std::make_unique<EmulatedController>(NpadIdType::Player5)},
      player_6{std::make_unique<EmulatedController>(NpadIdType::Player6)},
      player_7{std::make_unique<EmulatedController>(NpadIdType::Player7)},
      player_8{std::make_unique<EmulatedController>(NpadIdType::Player8)},
      other{std::make_unique<EmulatedController>(NpadIdType::Other)},
      handheld{std::make_unique<EmulatedController>(NpadIdType::Handheld)},
      console{std::make_unique<EmulatedConsole>()}, devices{std::make_unique<EmulatedDevices>()} {}

HIDCore::~HIDCore() = default;

EmulatedController* HIDCore::GetEmulatedController(NpadIdType npad_id_type) {
    switch (npad_id_type) {
    case NpadIdType::Player1:
        return player_1.get();
    case NpadIdType::Player2:
        return player_2.get();
    case NpadIdType::Player3:
        return player_3.get();
    case NpadIdType::Player4:
        return player_4.get();
    case NpadIdType::Player5:
        return player_5.get();
    case NpadIdType::Player6:
        return player_6.get();
    case NpadIdType::Player7:
        return player_7.get();
    case NpadIdType::Player8:
        return player_8.get();
    case NpadIdType::Other:
        return other.get();
    case NpadIdType::Handheld:
        return handheld.get();
    case NpadIdType::Invalid:
    default:
        UNREACHABLE_MSG("Invalid NpadIdType={}", npad_id_type);
        return nullptr;
    }
}

const EmulatedController* HIDCore::GetEmulatedController(NpadIdType npad_id_type) const {
    switch (npad_id_type) {
    case NpadIdType::Player1:
        return player_1.get();
    case NpadIdType::Player2:
        return player_2.get();
    case NpadIdType::Player3:
        return player_3.get();
    case NpadIdType::Player4:
        return player_4.get();
    case NpadIdType::Player5:
        return player_5.get();
    case NpadIdType::Player6:
        return player_6.get();
    case NpadIdType::Player7:
        return player_7.get();
    case NpadIdType::Player8:
        return player_8.get();
    case NpadIdType::Other:
        return other.get();
    case NpadIdType::Handheld:
        return handheld.get();
    case NpadIdType::Invalid:
    default:
        UNREACHABLE_MSG("Invalid NpadIdType={}", npad_id_type);
        return nullptr;
    }
}
EmulatedConsole* HIDCore::GetEmulatedConsole() {
    return console.get();
}

const EmulatedConsole* HIDCore::GetEmulatedConsole() const {
    return console.get();
}

EmulatedDevices* HIDCore::GetEmulatedDevices() {
    return devices.get();
}

const EmulatedDevices* HIDCore::GetEmulatedDevices() const {
    return devices.get();
}

EmulatedController* HIDCore::GetEmulatedControllerByIndex(std::size_t index) {
    return GetEmulatedController(IndexToNpadIdType(index));
}

const EmulatedController* HIDCore::GetEmulatedControllerByIndex(std::size_t index) const {
    return GetEmulatedController(IndexToNpadIdType(index));
}

void HIDCore::SetSupportedStyleTag(NpadStyleTag style_tag) {
    supported_style_tag.raw = style_tag.raw;
}

NpadStyleTag HIDCore::GetSupportedStyleTag() const {
    return supported_style_tag;
}

void HIDCore::ReloadInputDevices() {
    player_1->ReloadFromSettings();
    player_2->ReloadFromSettings();
    player_3->ReloadFromSettings();
    player_4->ReloadFromSettings();
    player_5->ReloadFromSettings();
    player_6->ReloadFromSettings();
    player_7->ReloadFromSettings();
    player_8->ReloadFromSettings();
    other->ReloadFromSettings();
    handheld->ReloadFromSettings();
    console->ReloadFromSettings();
    devices->ReloadFromSettings();
}

void HIDCore::UnloadInputDevices() {
    player_1->UnloadInput();
    player_2->UnloadInput();
    player_3->UnloadInput();
    player_4->UnloadInput();
    player_5->UnloadInput();
    player_6->UnloadInput();
    player_7->UnloadInput();
    player_8->UnloadInput();
    other->UnloadInput();
    handheld->UnloadInput();
    console->UnloadInput();
    devices->UnloadInput();
}

} // namespace Core::HID
