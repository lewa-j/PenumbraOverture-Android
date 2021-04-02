LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := penumbra
LOCAL_CPP_EXTENSION := .cpp
LOCAL_SRC_FILES := AttackHandler.cpp \
ButtonHandler.cpp \
CharacterMove.cpp \
Credits.cpp \
DeathMenu.cpp \
DemoEndText.cpp \
EffectHandler.cpp \
FadeHandler.cpp \
GameArea.cpp \
GameDamageArea.cpp \
GameEnemy.cpp \
GameEnemy_Dog.cpp \
GameEnemy_Spider.cpp \
GameEnemy_Worm.cpp \
GameEntity.cpp \
GameForceArea.cpp \
GameItem.cpp \
GameItemType.cpp \
GameLadder.cpp \
GameLamp.cpp \
GameLink.cpp \
GameLiquidArea.cpp \
GameMessageHandler.cpp \
GameMusicHandler.cpp \
GameObject.cpp \
GameSaveArea.cpp \
GameScripts.cpp \
GameStickArea.cpp \
GameSwingDoor.cpp \
GameTypes.cpp \
GraphicsHelper.cpp \
HapticGameCamera.cpp \
HudModel_Throw.cpp \
HudModel_Weapon.cpp \
Init.cpp \
IntroStory.cpp \
Inventory.cpp \
Main.cpp \
MainMenu.cpp \
MapHandler.cpp \
MapLoadText.cpp \
Notebook.cpp \
NumericalPanel.cpp \
Player.cpp \
PlayerHands.cpp \
PlayerHelper.cpp \
PlayerState_Interact.cpp \
PlayerState_InteractHaptX.cpp \
PlayerState_Misc.cpp \
PlayerState_MiscHaptX.cpp \
PlayerState_Weapon.cpp \
PlayerState_WeaponHaptX.cpp \
PreMenu.cpp \
RadioHandler.cpp \
SaveHandler.cpp \
SaveTypes.cpp \
TriggerHandler.cpp \
Triggers.cpp

LOCAL_ARM_MODE := arm
LOCAL_STATIC_LIBRARIES := hpl1engine
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../OALWrapper/include
LOCAL_CPPFLAGS := -std=c++11
LOCAL_CPPFLAGS += -Wno-switch
LOCAL_LDFLAGS :=
ifeq ($(APP_OPTIM),debug)
	LOCAL_CPPFLAGS += -D_DEBUG
endif

include $(BUILD_SHARED_LIBRARY)

include $(LOCAL_PATH)/../HPL1Engine/engine.mk
