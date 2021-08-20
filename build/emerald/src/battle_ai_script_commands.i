# 0 "src/battle_ai_script_commands.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/battle_ai_script_commands.c"
# 1 "include/global.h" 1



# 1 "tools/agbcc/include/string.h" 1
# 14 "tools/agbcc/include/string.h"
# 1 "tools/agbcc/include/_ansi.h" 1
# 15 "tools/agbcc/include/_ansi.h"
# 1 "tools/agbcc/include/sys/config.h" 1
# 103 "tools/agbcc/include/sys/config.h"
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 16 "tools/agbcc/include/_ansi.h" 2
# 15 "tools/agbcc/include/string.h" 2


# 1 "tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 18 "tools/agbcc/include/string.h" 2





void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const char *, const char *, size_t);
void bcopy (const char *, char *, size_t);
void bzero (char *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
char *rindex (const char *, int);
int strcasecmp (const char *, const char *);
char *strdup (const char *);
int strncasecmp (const char *, const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 5 "include/global.h" 2
# 1 "tools/agbcc/include/limits.h" 1
# 6 "include/global.h" 2
# 1 "include/config.h" 1
# 7 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1
# 5 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 6 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1



# 1 "tools/agbcc/include/stdint.h" 1
# 31 "tools/agbcc/include/stdint.h"
# 1 "tools/agbcc/include/limits.h" 1
# 32 "tools/agbcc/include/stdint.h" 2



typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;



typedef signed char int_least8_t;
typedef short int_least16_t;
typedef int int_least32_t;
typedef long long int_least64_t;
typedef unsigned char uint_least8_t;
typedef unsigned short uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long uint_fast64_t;



typedef int intptr_t;
typedef unsigned int uintptr_t;



typedef long long intmax_t;
typedef unsigned long long uintmax_t;
# 5 "include/gba/types.h" 2

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef u8 bool8;
typedef u16 bool16;
typedef u32 bool32;
typedef vu8 vbool8;
typedef vu16 vbool16;
typedef vu32 vbool32;

struct BgCnt
{
    u16 priority:2;
    u16 charBaseBlock:2;
    u16 dummy:2;
    u16 mosaic:1;
    u16 palettes:1;
    u16 screenBaseBlock:5;
    u16 areaOverflowMode:1;
    u16 screenSize:2;
};
typedef volatile struct BgCnt vBgCnt;

struct PlttData
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
    u16 unused_15:1;
};

struct OamData
{
             u32 y:8;
             u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

             u32 x:9;
             u32 matrixNum:5;
             u32 size:2;

             u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;
             u16 affineParam;
};
# 120 "include/gba/types.h"
struct BgAffineSrcData
{
    s32 texX;
    s32 texY;
    s16 scrX;
    s16 scrY;
    s16 sx;
    s16 sy;
    u16 alpha;
};

struct BgAffineDstData
{
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
    s32 dx;
    s32 dy;
};

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};


struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 intrEnable:1;
    u16 unused_15:1;
    u16 data;
};
# 7 "include/gba/gba.h" 2
# 1 "include/gba/multiboot.h" 1
# 9 "include/gba/multiboot.h"
struct MultiBootParam
{
    u32 system_work[5];
    u8 handshake_data;
    u8 padding;
    u16 handshake_timeout;
    u8 probe_count;
    u8 client_data[3];
    u8 palette_data;
    u8 response_bit;
    u8 client_bit;
    u8 reserved1;
    const u8 *boot_srcp;
    const u8 *boot_endp;
    const u8 *masterp;
    u8 *reserved2[3];
    u32 system_work2[4];
    u8 sendflag;
    u8 probe_target_bit;
    u8 check_wait;
    u8 server_type;
};
# 8 "include/gba/gba.h" 2
# 1 "include/gba/syscall.h" 1
# 14 "include/gba/syscall.h"
void SoftReset(u32 resetFlags);

void RegisterRamReset(u32 resetFlags);

void VBlankIntrWait(void);

u16 Sqrt(u32 num);

u16 ArcTan2(s16 x, s16 y);





void CpuSet(const void *src, void *dest, u32 control);



void CpuFastSet(const void *src, void *dest, u32 control);

void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

void LZ77UnCompWram(const u32 *src, void *dest);

void LZ77UnCompVram(const u32 *src, void *dest);

void RLUnCompWram(const void *src, void *dest);

void RLUnCompVram(const void *src, void *dest);

int MultiBoot(struct MultiBootParam *mp);

s32 Div(s32 num, s32 denom);
# 9 "include/gba/gba.h" 2
# 1 "include/gba/macro.h" 1
# 10 "include/gba/gba.h" 2
# 1 "include/gba/isagbprint.h" 1
# 11 "include/gba/gba.h" 2
# 8 "include/global.h" 2
# 1 "include/constants/global.h" 1
# 9 "include/global.h" 2
# 1 "include/constants/flags.h" 1



# 1 "include/constants/opponents.h" 1
# 5 "include/constants/flags.h" 2
# 10 "include/global.h" 2
# 1 "include/constants/vars.h" 1
# 11 "include/global.h" 2
# 1 "include/constants/species.h" 1
# 12 "include/global.h" 2
# 134 "include/global.h"
struct Coords8
{
    s8 x;
    s8 y;
};

struct UCoords8
{
    u8 x;
    u8 y;
};

struct Coords16
{
    s16 x;
    s16 y;
};

struct UCoords16
{
    u16 x;
    u16 y;
};

struct Coords32
{
    s32 x;
    s32 y;
};

struct UCoords32
{
    u32 x;
    u32 y;
};

struct Time
{
             s16 days;
             s8 hours;
             s8 minutes;
             s8 seconds;
             s8 dayOfWeek;
};

struct Pokedex
{
             u8 order;
             u8 mode;
             u8 nationalMagic;
             u8 unknown2;
             u32 unownPersonality;
             u32 spindaPersonality;
             u32 unknown3;
};

struct PokemonJumpResults
{
    u16 jumpsInRow;
    u16 field2;
    u16 excellentsInRow;
    u16 field6;
    u32 field8;
    u32 bestJumpScore;
};

struct BerryPickingResults
{
    u32 bestScore;
    u16 berriesPicked;
    u16 berriesPickedInRow;
    u8 field_8;
    u8 field_9;
    u8 field_A;
    u8 field_B;
    u8 field_C;
    u8 field_D;
    u8 field_E;
    u8 field_F;
};


struct PyramidBag
{
    u16 itemId[2][10];
    u8 quantity[2][10];
};

struct BerryCrush
{
    u16 berryCrushResults[4];
    u32 berryPowderAmount;
    u32 unk;
};

struct ApprenticeMon
{
    u16 species;
    u16 moves[4];
    u16 item;
};



struct Apprentice
{
    u8 id:5;
    u8 lvlMode:2;
    u8 numQuestions;
    u8 number;
    struct ApprenticeMon party[6 / 2];
    u16 speechWon[6];
    u8 playerId[4];
    u8 playerName[7];
    u8 language;
    u32 checksum;
};

struct BattleTowerPokemon
{
    u16 species;
    u16 heldItem;
    u16 moves[4];
    u8 level;
    u8 ppBonuses;
    u8 hpEV;
    u8 attackEV;
    u8 defenseEV;
    u8 speedEV;
    u8 spAttackEV;
    u8 spDefenseEV;
    u32 otId;
    u32 hpIV:5;
    u32 attackIV:5;
    u32 defenseIV:5;
    u32 speedIV:5;
    u32 spAttackIV:5;
    u32 spDefenseIV:5;
    u32 gap:1;
    u32 abilityNum:1;
    u32 personality;
    u8 nickname[10 + 1];
    u8 friendship;
};



struct EmeraldBattleTowerRecord
{
             u8 lvlMode;
             u8 facilityClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             u16 speechWon[6];
             u16 speechLost[6];
             struct BattleTowerPokemon party[4];
             u8 language;
             u32 checksum;
};

struct BattleTowerInterview
{
    u16 playerSpecies;
    u16 opponentSpecies;
    u8 opponentName[7 + 1];
    u8 opponentMonNickname[10 + 1];
    u8 opponentLanguage;
};

struct BattleTowerEReaderTrainer
{
             u8 unk0;
             u8 facilityClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             u16 farewellPlayerLost[6];
             u16 farewellPlayerWon[6];
             struct BattleTowerPokemon party[3];
             u32 checksum;
};


struct DomeMonData
{
    u16 moves[4];
    u8 evs[6];
    u8 nature;
};

struct RentalMon
{
    u16 monId;
    u32 personality;
    u8 ivs;
    u8 abilityNum;
};

struct BattleDomeTrainer
{
    u16 trainerId:10;
    u16 isEliminated:1;
    u16 eliminatedAt:2;
    u16 forfeited:3;
};



struct BattleFrontier
{
              struct EmeraldBattleTowerRecord towerPlayer;
              struct EmeraldBattleTowerRecord towerRecords[5];
              struct BattleTowerInterview towerInterview;
              struct BattleTowerEReaderTrainer ereaderTrainer;
              u8 challengeStatus;
              u8 lvlMode:2;
              u8 challengePaused:1;
              u8 disableRecordBattle:1;
              u16 selectedPartyMons[4];
              u16 curChallengeBattleNum;
              u16 trainerIds[20];
              u32 winStreakActiveFlags;
              u16 towerWinStreaks[4][2];
              u16 towerRecordWinStreaks[4][2];
              u16 battledBrainFlags;
              u16 towerSinglesStreak;
              u16 towerNumWins;
              u8 towerBattleOutcome;
              u8 towerLvlMode;
              u8 domeAttemptedSingles50:1;
              u8 domeAttemptedSinglesOpen:1;
              u8 domeHasWonSingles50:1;
              u8 domeHasWonSinglesOpen:1;
              u8 domeAttemptedDoubles50:1;
              u8 domeAttemptedDoublesOpen:1;
              u8 domeHasWonDoubles50:1;
              u8 domeHasWonDoublesOpen:1;
              u8 domeUnused;
              u8 domeLvlMode;
              u8 domeBattleMode;
              u16 domeWinStreaks[2][2];
              u16 domeRecordWinStreaks[2][2];
              u16 domeTotalChampionships[2][2];
              struct BattleDomeTrainer domeTrainers[16];
              u16 domeMonIds[16][3];
              u16 unused_DC4;
              u16 palacePrize;
              u16 palaceWinStreaks[2][2];
              u16 palaceRecordWinStreaks[2][2];
              u16 arenaPrize;
              u16 arenaWinStreaks[2];
              u16 arenaRecordStreaks[2];
              u16 factoryWinStreaks[2][2];
              u16 factoryRecordWinStreaks[2][2];
              u16 factoryRentsCount[2][2];
              u16 factoryRecordRentsCount[2][2];
              u16 pikePrize;
              u16 pikeWinStreaks[2];
              u16 pikeRecordStreaks[2];
              u16 pikeTotalStreaks[2];
              u8 pikeHintedRoomIndex:3;
              u8 pikeHintedRoomType:4;
              u8 pikeHealingRoomsDisabled:1;
              u16 pikeHeldItemsBackup[3];
              u16 pyramidPrize;
              u16 pyramidWinStreaks[2];
              u16 pyramidRecordStreaks[2];
              u16 pyramidRandoms[4];
              u8 pyramidTrainerFlags;
              struct PyramidBag pyramidBag;
              u8 pyramidLightRadius;
              u16 verdanturfTentPrize;
              u16 fallarborTentPrize;
              u16 slateportTentPrize;
              struct RentalMon rentalMons[3 * 2];
              u16 battlePoints;
              u16 cardBattlePoints;
              u32 battlesCount;
              u16 domeWinningMoves[16];
              u8 trainerFlags;
              u8 opponentNames[2][7 + 1];
              u8 opponentTrainerIds[2][4];
              u8 unk_EF9:7;
              u8 savedGame:1;
              u8 unused_EFA;
              u8 unused_EFB;
              struct DomeMonData domePlayerPartyData[3];
};

struct ApprenticeQuestion
{
    u8 questionId:2;
    u8 monId:2;
    u8 moveSlot:2;
    u8 suggestedChange:2;
    u16 data;
};

struct PlayersApprentice
{
             u8 id;
             u8 lvlMode:2;
             u8 questionsAnswered:4;
             u8 leadMonId:2;
             u8 party:3;
             u8 saveId:2;
             u8 unused;
             u8 speciesIds[6 / 2];
             struct ApprenticeQuestion questions[9];
};

struct RankingHall1P
{
    u8 id[4];
    u16 winStreak;
    u8 name[7 + 1];
    u8 language;
};

struct RankingHall2P
{
    u8 id1[4];
    u8 id2[4];
    u16 winStreak;
    u8 name1[7 + 1];
    u8 name2[7 + 1];
    u8 language;
};

# 1 "include/constants/items.h" 1
# 467 "include/global.h" 2


struct SaveBlock2
{
             u8 playerName[7 + 1];
             u8 playerGender;
             u8 specialSaveWarpFlags;
             u8 playerTrainerId[4];
             u16 playTimeHours;
             u8 playTimeMinutes;
             u8 playTimeSeconds;
             u8 playTimeVBlanks;
             u8 optionsButtonMode;
             u16 optionsTextSpeed:3;
             u16 optionsWindowFrameType:5;
             u16 optionsSound:2;
             u16 optionsBattleStyle:1;
             u16 optionsBattleSceneOff:1;
             u16 regionMapZoom:1;
             u16 expShare:1;
             u16 tmItemSort:2;
             u16 optionsHpBarSpeed:4;
             u16 optionsExpBarSpeed:4;
             u16 optionsDifficulty:2;
             u16 optionsTransitionSpeed:2;
             u16 optionsUnitSystem:1;
             struct Pokedex pokedex;
             u16 lastUsedBall;
             u8 filler_90[0x6];
             struct Time localTimeOffset;
             struct Time lastBerryTreeUpdate;
             u32 gcnLinkFlags;
             u32 encryptionKey;
             struct PlayersApprentice playerApprentice;
             struct Apprentice apprentices[4];
              struct BerryCrush berryCrush;

              struct BerryPickingResults berryPick;
              struct RankingHall1P hallRecords1P[9][2][3];
              struct RankingHall2P hallRecords2P[2][3];
              u16 contestLinkResults[5][4];
              struct BattleFrontier frontier;
              u8 itemFlags[((773 / 8) + ((773 % 8) ? 1 : 0))];
};

extern struct SaveBlock2 *gSaveBlock2Ptr;

struct SecretBaseParty
{
    u32 personality[6];
    u16 moves[6 * 4];
    u16 species[6];
    u16 heldItems[6];
    u8 levels[6];
    u8 EVs[6];
};

struct SecretBase
{
               u8 secretBaseId;
               u8 sbr_field_1_0:4;
               u8 gender:1;
               u8 battledOwnerToday:1;
               u8 registryStatus:2;
               u8 trainerName[7];
               u8 trainerId[4];
               u8 language;
               u16 numSecretBasesReceived;
               u8 numTimesEntered;
               u8 sbr_field_11;
               u8 decorations[16];
               u8 decorationPositions[16];
               struct SecretBaseParty party;
};

# 1 "include/constants/game_stat.h" 1
# 543 "include/global.h" 2
# 1 "include/global.fieldmap.h" 1
# 13 "include/global.fieldmap.h"
enum
{
    CONNECTION_SOUTH = 1,
    CONNECTION_NORTH,
    CONNECTION_WEST,
    CONNECTION_EAST,
    CONNECTION_DIVE,
    CONNECTION_EMERGE
};

typedef void (*TilesetCB)(void);

struct Tileset
{
             bool8 isCompressed;
             bool8 isSecondary;
             void *tiles;
             void *palettes;
             u16 *metatiles;
             u16 *metatileAttributes;
             TilesetCB callback;
             struct PaletteOverride *paletteOverrides;
};

struct MapLayout
{
             s32 width;
             s32 height;
             u16 *border;
             u16 *map;
             struct Tileset *primaryTileset;
             struct Tileset *secondaryTileset;
};

struct BackupMapLayout
{
    s32 width;
    s32 height;
    u16 *map;
};

struct ObjectEventTemplate
{
             u8 localId;
             u8 graphicsId;
             u8 inConnection;
             s16 x;
             s16 y;
             u8 elevation;
             u8 movementType;
             u16 movementRangeX:4;
             u16 movementRangeY:4;
             u16 trainerType;
             u16 trainerRange_berryTreeId;
             const u8 *script;
             u16 flagId;
};

struct WarpEvent
{
    s16 x, y;
    u8 elevation;
    u8 warpId;
    u8 mapNum;
    u8 mapGroup;
};

struct CoordEvent
{
    s16 x, y;
    u8 elevation;
    u16 trigger;
    u16 index;
    u8 *script;
};

struct BgEvent
{
    u16 x, y;
    u8 elevation;
    u8 kind;
    union {
        u8 *script;
        struct {
            u16 item;
            u16 hiddenItemId;
        } hiddenItem;
        u32 secretBaseId;
    } bgUnion;
};

struct MapEvents
{
    u8 objectEventCount;
    u8 warpCount;
    u8 coordEventCount;
    u8 bgEventCount;
    struct ObjectEventTemplate *objectEvents;
    struct WarpEvent *warps;
    struct CoordEvent *coordEvents;
    struct BgEvent *bgEvents;
};

struct MapConnection
{
    u8 direction;
    u32 offset;
    u8 mapGroup;
    u8 mapNum;
};

struct MapConnections
{
    s32 count;
    struct MapConnection *connections;
};

struct MapHeader
{
               const struct MapLayout *mapLayout;
               const struct MapEvents *events;
               const u8 *mapScripts;
               const struct MapConnections *connections;
               u16 music;
               u16 mapLayoutId;
               u8 regionMapSectionId;
               u8 cave;
               u8 weather;
               u8 mapType;
               u8 filler_18[2];
               u8 flags;
               u8 battleType;
};
# 157 "include/global.fieldmap.h"
struct ObjectEvent
{
             u32 active:1;
             u32 singleMovementActive:1;
             u32 triggerGroundEffectsOnMove:1;
             u32 triggerGroundEffectsOnStop:1;
             u32 disableCoveringGroundEffects:1;
             u32 landingJump:1;
             u32 heldMovementActive:1;
             u32 heldMovementFinished:1;
             u32 frozen:1;
             u32 facingDirectionLocked:1;
             u32 disableAnim:1;
             u32 enableAnim:1;
             u32 inanimate:1;
             u32 invisible:1;
             u32 offScreen:1;
             u32 trackedByCamera:1;
             u32 isPlayer:1;
             u32 hasReflection:1;
             u32 inShortGrass:1;
             u32 inShallowFlowingWater:1;
             u32 inSandPile:1;
             u32 inHotSprings:1;
             u32 hasShadow:1;
             u32 spriteAnimPausedBackup:1;
             u32 spriteAffineAnimPausedBackup:1;
             u32 disableJumpLandingGroundEffect:1;
             u32 fixedPriority:1;
             u32 hideReflection:1;
             u8 spriteId;
             u8 graphicsId;
             u8 movementType;
             u8 trainerType;
             u8 localId;
             u8 mapNum;
             u8 mapGroup;
             u8 currentElevation:4;
             u8 previousElevation:4;
             struct Coords16 initialCoords;
             struct Coords16 currentCoords;
             struct Coords16 previousCoords;
             u8 facingDirection:4;
             u8 movementDirection:4;
             union __attribute__((packed)) {
        u8 as_byte;
        struct __attribute__((packed)) {
            u8 x:4;
            u8 y:4;
        } __attribute__((aligned(1))) as_nybbles;
    } __attribute__((aligned(1))) range;
             u8 fieldEffectSpriteId;
             u8 warpArrowSpriteId;
             u8 movementActionId;
             u8 trainerRange_berryTreeId;
             u8 currentMetatileBehavior;
             u8 previousMetatileBehavior;
             u8 previousMovementDirection;
             u8 directionSequenceIndex;
             u8 playerCopyableMovement;

};

struct ObjectEventGraphicsInfo
{
             u16 tileTag;
             u16 paletteTag1;
             u16 paletteTag2;
             u16 size;
             s16 width;
             s16 height;
             u8 paletteSlot:4;
             u8 shadowSize:2;
             u8 inanimate:1;
             u8 disableReflectionPaletteLoad:1;
             u8 tracks;
             const struct OamData *oam;
             const struct SubspriteTable *subspriteTables;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
};

enum {
    PLAYER_AVATAR_STATE_NORMAL,
    PLAYER_AVATAR_STATE_MACH_BIKE,
    PLAYER_AVATAR_STATE_ACRO_BIKE,
    PLAYER_AVATAR_STATE_SURFING,
    PLAYER_AVATAR_STATE_UNDERWATER,
    PLAYER_AVATAR_STATE_FIELD_MOVE,
    PLAYER_AVATAR_STATE_FISHING,
    PLAYER_AVATAR_STATE_WATERING,
};
# 262 "include/global.fieldmap.h"
enum
{
    ACRO_BIKE_NORMAL,
    ACRO_BIKE_TURNING,
    ACRO_BIKE_WHEELIE_STANDING,
    ACRO_BIKE_BUNNY_HOP,
    ACRO_BIKE_WHEELIE_MOVING,
    ACRO_BIKE_STATE5,
    ACRO_BIKE_STATE6,
};

enum
{
    COLLISION_NONE,
    COLLISION_OUTSIDE_RANGE,
    COLLISION_IMPASSABLE,
    COLLISION_ELEVATION_MISMATCH,
    COLLISION_OBJECT_EVENT,
 COLLISION_START_SURFING,
    COLLISION_STOP_SURFING,
    COLLISION_LEDGE_JUMP,
    COLLISION_PUSHED_BOULDER,
    COLLISION_ROTATING_GATE,
    COLLISION_WHEELIE_HOP,
    COLLISION_ISOLATED_VERTICAL_RAIL,
    COLLISION_ISOLATED_HORIZONTAL_RAIL,
    COLLISION_VERTICAL_RAIL,
    COLLISION_HORIZONTAL_RAIL,
};


enum
{
    NOT_MOVING,
    TURN_DIRECTION,
    MOVING,
};


enum
{
    T_NOT_MOVING,
    T_TILE_TRANSITION,
    T_TILE_CENTER,
};

struct PlayerAvatar
{
             u8 flags;
             u8 transitionFlags;
             u8 runningState;
             u8 tileTransitionState;
             u8 spriteId;
             u8 objectEventId:7;
             u8 creeping:1;
             bool8 preventStep;
             u8 gender;
             u8 acroBikeState;
             u8 newDirBackup;
             u8 bikeFrameCounter;
             u8 bikeSpeed;

             u32 directionHistory;
             u32 abStartSelectHistory;

             u8 dirTimerHistory[8];
             u8 abStartSelectTimerHistory[8];
};

struct Camera
{
    bool8 active:1;
    s32 x;
    s32 y;
};

extern struct ObjectEvent gObjectEvents[16];
extern u8 gSelectedObjectEvent;
extern struct MapHeader gMapHeader;
extern struct PlayerAvatar gPlayerAvatar;
extern struct Camera gCamera;
# 544 "include/global.h" 2
# 1 "include/global.berry.h" 1






struct Berry
{
    const u8 name[6 + 1];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    const u8 *description1;
    const u8 *description2;
    u8 stageDuration;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 smoothness;
};



struct Berry2
{
    u8 name[6 + 1];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    u8 *description1;
    u8 *description2;
    u8 stageDuration;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 smoothness;
};

struct EnigmaBerry
{
    struct Berry2 berry;
    u8 itemEffect[18];
    u8 holdEffect;
    u8 holdEffectParam;
    u32 checksum;
};

struct BattleEnigmaBerry
{
             u8 name[6 + 1];
             u8 holdEffect;
             u8 itemEffect[18];
             u8 holdEffectParam;
};

struct BerryTree
{
    u8 berry;
    u8 stage:7;
    u8 growthSparkle:1;
    u16 minutesUntilNextStage;
    u8 berryYield;
    u8 regrowthCount:4;
    u8 watered1:1;
    u8 watered2:1;
    u8 watered3:1;
    u8 watered4:1;
};
# 545 "include/global.h" 2
# 1 "include/global.tv.h" 1



typedef union
{

    struct {
                 u8 kind;
                 bool8 active;
                 u8 pad02[26];
                 u8 srcTrainerId3Lo;
                 u8 srcTrainerId3Hi;
                 u8 srcTrainerId2Lo;
                 u8 srcTrainerId2Hi;
                 u8 srcTrainerIdLo;
                 u8 srcTrainerIdHi;
                 u8 trainerIdLo;
                 u8 trainerIdHi;
    } common;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 pad02[34];
    } commonInit;



    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u16 words[6];
                 u8 playerName[7 + 1];
                 u8 language;
    } fanclubLetter;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 var02;
                 u16 words[6];
                 u8 playerName[7 + 1];
                 u8 language;
    } recentHappenings;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u8 friendshipHighNybble:4;
                 u8 questionAsked:4;
                 u8 playerName[7 + 1];
                 u8 language;
                 u8 pokemonNameLanguage;
                 u8 filler_0F[1];
                 u8 nickname[7 + 1];
                 u16 words18[2];
                 u16 words[4];
    } fanclubOpinions;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 words[2];
                 u16 var06;
                 u8 pad_08[3];
                 u8 string_0b[12];
                 u8 language;
    } unkShow04;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u8 pokemonName[10 + 1];
                 u8 trainerName[11];
                 u8 random;
                 u8 random2;
                 u16 randomSpecies;
                 u8 language;
                 u8 pokemonNameLanguage;
    } nameRaterShow;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u16 words[2];
                 u8 pokemonNickname[10 + 1];
                 u8 contestCategory:3;
                 u8 contestRank:2;
                 u8 contestResult:2;
                 u16 move;
                 u8 playerName[7 + 1];
                 u8 language;
                 u8 pokemonNameLanguage;
    } bravoTrainer;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 trainerName[7 + 1];
                 u16 species;
                 u8 pokemonName[8];
                 u16 defeatedSpecies;
                 u16 numFights;
                 u16 words[1];
                 u8 btLevel;
                 u8 interviewResponse;
                 bool8 wonTheChallenge;
                 u8 language;
                 u8 pokemonNameLanguage;
    } bravoTrainerTower;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 losingSpecies;
                 u8 losingTrainerName[7 + 1];
                 u8 loserAppealFlag;
                 u8 round1Placing;
                 u8 round2Placing;
                 u8 winnerAppealFlag;
                 u16 move;
                 u16 winningSpecies;
                 u8 winningTrainerName[7 + 1];
                 u8 category;
                 u8 winningTrainerLanguage;
                 u8 losingTrainerLanguage;
    } contestLiveUpdates;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 sheen;
                 u8 flavor:3;
                 u8 color:2;
                 u8 worstBlenderName[7 + 1];
                 u8 playerName[7 + 1];
                 u8 language;
                 u8 worstBlenderLanguage;
    } threeCheers;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 speciesOpponent;
                 u8 playerName[7 + 1];
                 u8 linkOpponentName[7 + 1];
                 u16 move;
                 u16 speciesPlayer;
                 u8 battleType;
                 u8 language;
                 u8 linkOpponentLanguage;
    } battleUpdate;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 playerName[7 + 1];
                 u8 idLo;
                 u8 idHi;
                 u8 idolName[7 + 1];
                 u16 words[1];
                 u8 score;
                 u8 language;
                 u8 idolNameLanguage;
    } fanClubSpecial;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 playerName[7 + 1];
                 u8 contestCategory;
                 u8 nickname[10 + 1];
                 u8 pokeblockState;
                 u8 language;
                 u8 pokemonNameLanguage;
    } contestLiveUpdates2;



    struct {
                 u8 kind;
                 bool8 active;
                 u8 language;
                 u8 language2;
                 u8 nickname[10 + 1];
                 u8 ball;
                 u16 species;
                 u8 nBallsUsed;
                 u8 playerName[7 + 1];
    } pokemonToday;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 priceReduced;
                 u8 language;
                 u8 pad04[2];
                 u16 itemIds[3];
                 u16 itemAmounts[3];
                 u8 shopLocation;
                 u8 playerName[7 + 1];
    } smartshopperShow;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 language;
                 u8 pad03[9];
                 u16 species;
                 u16 species2;
                 u8 nBallsUsed;
                 u8 outcome;
                 u8 location;
                 u8 playerName[7 + 1];
    } pokemonTodayFailed;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nBites;
                 u8 nFails;
                 u16 species;
                 u8 language;
                 u8 pad07[12];
                 u8 playerName[7 + 1];
    } pokemonAngler;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 numPokeCaught;
                 u16 caughtPoke;
                 u16 steps;
                 u16 species;
                 u8 location;
                 u8 language;
                 u8 pad0c[7];
                 u8 playerName[7 + 1];
    } worldOfMasters;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 dexCount;
                 u8 badgeCount;
                 u8 nSilverSymbols;
                 u8 nGoldSymbols;
                 u8 location;
                 u16 battlePoints;
                 u16 mapLayoutId;
                 u8 language;
                 u8 filler_0d[6];
                 u8 playerName[7 + 1];
    } rivalTrainer;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 filler_02[2];
                 u16 words[2];
                 u8 gender;
                 u8 language;
                 u8 filler_0a[9];
                 u8 playerName[7 + 1];
    } trendWatcher;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 item;
                 u8 location;
                 u8 language;
                 u16 mapLayoutId;
                 u8 filler_08[11];
                 u8 playerName[7 + 1];
    } treasureInvestigators;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 won;
                 u8 whichGame;
                 u16 nCoins;
                 u8 filler_06[2];
                 u8 language;
                 u8 filler_09[10];
                 u8 playerName[7 + 1];
    } findThatGamer;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 lastOpponentSpecies;
                 u8 location;
                 u8 outcome;
                 u16 caughtMonBall;
                 u16 balls;
                 u16 poke1Species;
                 u16 lastUsedMove;
                 u8 language;
                 u8 filler_0f[4];
                 u8 playerName[7 + 1];
    } breakingNews;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 avgLevel;
                 u8 nDecorations;
                 u8 decorations[4];
                 u16 species;
                 u16 move;
                 u8 language;
                 u8 filler_0d[6];
                 u8 playerName[7 + 1];
    } secretBaseVisit;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 item;
                 u8 whichPrize;
                 u8 language;
                 u8 filler_06[13];
                 u8 playerName[7 + 1];
    } lottoWinner;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 move;
                 u16 foeSpecies;
                 u16 species;
                 u16 otherMoves[3];
                 u16 betterMove;
                 u8 nOtherMoves;
                 u8 language;
                 u8 filler_12[1];
                 u8 playerName[7 + 1];
    } battleSeminar;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 filler_02[2];
                 u16 words[2];
                 u8 language;
                 u8 filler_09[10];
                 u8 playerName[7 + 1];
    } trainerFanClub;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nRibbons;
                 u8 selectedRibbon;
                 u8 nickname[10 + 1];
                 u8 language;
                 u8 pokemonNameLanguage;
                 u8 filler_12[2];
                 u8 playerName[7 + 1];
    } cuties;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 winStreak;
                 u16 species1;
                 u16 species2;
                 u16 species3;
                 u16 species4;
                 u8 language;
                 u8 facility;
                 u8 filler_0e[5];
                 u8 playerName[7 + 1];
    } frontier;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 count;
                 u8 actionIdx;
                 u8 language;
                 u8 filler_06[13];
                 u8 playerName[7 + 1];
    } numberOne;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 stepsInBase;
                 u8 baseOwnersName[7 + 1];
                 u32 flags;
                 u16 item;
                 u8 savedState;
                 u8 playerName[7 + 1];
                 u8 language;
                 u8 baseOwnersNameLanguage;
    } secretBaseSecrets;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nMonsCaught;
                 u8 nPkblkUsed;
                 u8 language;
                 u8 filler_05[14];
                 u8 playerName[7 + 1];
    } safariFanClub;



    struct {
                 u8 kind;
                 bool8 active;
                 u8 var02;
                 u8 var03;
                 u16 moves[4];
                 u16 species;
                 u16 var0E;
                 u8 locationMapNum;
                 u8 locationMapGroup;
                 u8 var12;
                 u8 probability;
                 u8 level;
                 u8 var15;
                 u16 daysLeft;
                 u8 language;
    } massOutbreak;
} TVShow;

typedef struct
{
    u8 kind;
    u8 state;
    u16 days;
} PokeNews;

struct GabbyAndTyData
{
             u16 mon1;
             u16 mon2;
             u16 lastMove;
             u16 quote[1];
             u8 mapnum;
             u8 battleNum;
             u8 battleTookMoreThanOneTurn:1;
             u8 playerLostAMon:1;
             u8 playerUsedHealingItem:1;
             u8 playerThrewABall:1;
             u8 onAir:1;
             u8 valA_5:3;
             u8 battleTookMoreThanOneTurn2:1;
             u8 playerLostAMon2:1;
             u8 playerUsedHealingItem2:1;
             u8 playerThrewABall2:1;
             u8 valB_4:4;
};
# 546 "include/global.h" 2
# 1 "include/pokemon.h" 1



# 1 "include/constants/pokemon.h" 1
# 5 "include/pokemon.h" 2

# 1 "gflib/sprite.h" 1






struct SpriteSheet
{
    const void *data;
    u16 size;
    u16 tag;
};

struct CompressedSpriteSheet
{
    const u32 *data;
    u16 size;
    u16 tag;
};

struct SpriteFrameImage
{
    const void *data;
    u16 size;
};





struct SpritePalette
{
    const u16 *data;
    u16 tag;
};

struct CompressedSpritePalette
{
    const u32 *data;
    u16 tag;
};

struct AnimFrameCmd
{


    u32 imageValue:16;

    u32 duration:6;
    u32 hFlip:1;
    u32 vFlip:1;
};

struct AnimLoopCmd
{
    u32 type:16;
    u32 count:6;
};

struct AnimJumpCmd
{
    u32 type:16;
    u32 target:6;
};




union AnimCmd
{
    s16 type;
    struct AnimFrameCmd frame;
    struct AnimLoopCmd loop;
    struct AnimJumpCmd jump;
};
# 86 "gflib/sprite.h"
struct AffineAnimFrameCmd
{
    s16 xScale;
    s16 yScale;
    u8 rotation;
    u8 duration;
};

struct AffineAnimLoopCmd
{
    s16 type;
    s16 count;
};

struct AffineAnimJumpCmd
{
    s16 type;
    u16 target;
};

struct AffineAnimEndCmdAlt
{
    s16 type;
    u16 val;
};

union AffineAnimCmd
{
    s16 type;
    struct AffineAnimFrameCmd frame;
    struct AffineAnimLoopCmd loop;
    struct AffineAnimJumpCmd jump;
    struct AffineAnimEndCmdAlt end;
};
# 136 "gflib/sprite.h"
struct AffineAnimState
{
    u8 animNum;
    u8 animCmdIndex;
    u8 delayCounter;
    u8 loopCounter;
    s16 xScale;
    s16 yScale;
    u16 rotation;
};

enum
{
    SUBSPRITES_OFF,
    SUBSPRITES_ON,
    SUBSPRITES_IGNORE_PRIORITY,
};

struct Subsprite
{
    s8 x;
    s8 y;
    u16 shape:2;
    u16 size:2;
    u16 tileOffset:10;
    u16 priority:2;
};

struct SubspriteTable
{
    u8 subspriteCount;
    const struct Subsprite *subsprites;
};

struct Sprite;

typedef void (*SpriteCallback)(struct Sprite *);

struct SpriteTemplate
{
    u16 tileTag;
    u16 paletteTag;
    const struct OamData *oam;
    const union AnimCmd *const *anims;
    const struct SpriteFrameImage *images;
    const union AffineAnimCmd *const *affineAnims;
    SpriteCallback callback;
};





struct Sprite
{
             struct OamData oam;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
             const struct SpriteTemplate *template;
             const struct SubspriteTable *subspriteTables;
             SpriteCallback callback;

             struct Coords16 pos1;
             struct Coords16 pos2;
             s8 centerToCornerVecX;
             s8 centerToCornerVecY;

             u8 animNum;
             u8 animCmdIndex;
             u8 animDelayCounter:6;
             bool8 animPaused:1;
             bool8 affineAnimPaused:1;
             u8 animLoopCounter;


             s16 data[8];

             bool16 inUse:1;
             bool16 coordOffsetEnabled:1;
             bool16 invisible:1;
             bool16 flags_3:1;
             bool16 flags_4:1;
             bool16 flags_5:1;
             bool16 flags_6:1;
             bool16 flags_7:1;
             bool16 hFlip:1;
             bool16 vFlip:1;
             bool16 animBeginning:1;
             bool16 affineAnimBeginning:1;
             bool16 animEnded:1;
             bool16 affineAnimEnded:1;
             bool16 usingSheet:1;
             bool16 flags_f:1;

             u16 sheetTileStart;

             u8 subspriteTableNum:6;
             u8 subspriteMode:2;

             u8 subpriority;
};

struct OamMatrix
{
    s16 a;
    s16 b;
    s16 c;
    s16 d;
};

extern const struct OamData gDummyOamData;
extern const union AnimCmd *const gDummySpriteAnimTable[];
extern const union AffineAnimCmd *const gDummySpriteAffineAnimTable[];
extern const struct SpriteTemplate gDummySpriteTemplate;

extern u8 gReservedSpritePaletteCount;
extern struct Sprite gSprites[];
extern u8 gOamLimit;
extern u16 gReservedSpriteTileCount;
extern s16 gSpriteCoordOffsetX;
extern s16 gSpriteCoordOffsetY;
extern struct OamMatrix gOamMatrices[];
extern bool8 gAffineAnimsDisabled;

void ResetSpriteData(void);
void AnimateSprites(void);
void BuildOamBuffer(void);
u8 CreateSprite(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateSpriteAtEnd(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateInvisibleSprite(void (*callback)(struct Sprite *));
u8 CreateSpriteAndAnimate(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
void DestroySprite(struct Sprite *sprite);
void ResetOamRange(u8 a, u8 b);
void LoadOam(void);
void SetOamMatrix(u8 matrixNum, u16 a, u16 b, u16 c, u16 d);
void CalcCenterToCornerVec(struct Sprite *sprite, u8 shape, u8 size, u8 affineMode);
void SpriteCallbackDummy(struct Sprite *sprite);
void ProcessSpriteCopyRequests(void);
void RequestSpriteCopy(const u8 *src, u8 *dest, u16 size);
void FreeSpriteTiles(struct Sprite *sprite);
void FreeSpritePalette(struct Sprite *sprite);
void FreeSpriteOamMatrix(struct Sprite *sprite);
void DestroySpriteAndFreeResources(struct Sprite *sprite);
void sub_800142C(u32 a1, u32 a2, u16 *a3, u16 a4, u32 a5);
void AnimateSprite(struct Sprite *sprite);
void sub_8007E18(struct Sprite* sprite, s16 a2, s16 a3);
void StartSpriteAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SeekSpriteAnim(struct Sprite *sprite, u8 animCmdIndex);
void StartSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SetSpriteSheetFrameTileNum(struct Sprite *sprite);
u8 AllocOamMatrix(void);
void FreeOamMatrix(u8 matrixNum);
void InitSpriteAffineAnim(struct Sprite *sprite);
void SetOamMatrixRotationScaling(u8 matrixNum, s16 xScale, s16 yScale, u16 rotation);
u16 LoadSpriteSheet(const struct SpriteSheet *sheet);
void LoadSpriteSheets(const struct SpriteSheet *sheets);
u16 AllocTilesForSpriteSheet(struct SpriteSheet *sheet);
void AllocTilesForSpriteSheets(struct SpriteSheet *sheets);
void LoadTilesForSpriteSheet(const struct SpriteSheet *sheet);
void LoadTilesForSpriteSheets(struct SpriteSheet *sheets);
void FreeSpriteTilesByTag(u16 tag);
void FreeSpriteTileRanges(void);
u16 GetSpriteTileStartByTag(u16 tag);
u16 GetSpriteTileTagByTileStart(u16 start);
void RequestSpriteSheetCopy(const struct SpriteSheet *sheet);
u16 LoadSpriteSheetDeferred(const struct SpriteSheet *sheet);
void FreeAllSpritePalettes(void);
u8 LoadSpritePalette(const struct SpritePalette *palette);
void LoadSpritePalettes(const struct SpritePalette *palettes);
u8 AllocSpritePalette(u16 tag);
u8 IndexOfSpritePaletteTag(u16 tag);
u16 GetSpritePaletteTagByPaletteNum(u8 paletteNum);
void FreeSpritePaletteByTag(u16 tag);
void SetSubspriteTables(struct Sprite *sprite, const struct SubspriteTable *subspriteTables);
bool8 AddSpriteToOamBuffer(struct Sprite *object, u8 *oamIndex);
bool8 AddSubspritesToOamBuffer(struct Sprite *sprite, struct OamData *destOam, u8 *oamIndex);
void CopyToSprites(u8 *src);
void CopyFromSprites(u8 *dest);
u8 SpriteTileAllocBitmapOp(u16 bit, u8 op);
void ClearSpriteCopyRequests(void);
void ResetAffineAnimData(void);
u8 LoadSpritePaletteDayNight(const struct SpritePalette *palette);
# 7 "include/pokemon.h" 2
# 1 "include/constants/region_map_sections.h" 1
# 8 "include/pokemon.h" 2
# 1 "include/constants/pokemon_config.h" 1
# 9 "include/pokemon.h" 2
# 1 "include/constants/map_groups.h" 1
# 10 "include/pokemon.h" 2

struct PokemonSubstruct0
{
             u16 species:11;
          u16 formId:5;
             u16 heldItem;
             u32 experience;
             u8 ppBonuses;
             u8 friendship;
             u8 pokeball:5;
             u8 unused0_A:3;
             u8 unused0_B;
};

struct PokemonSubstruct1
{
             u16 moves[4];
             u8 pp[4];
};

struct PokemonSubstruct2
{
             u8 hpEV;
             u8 attackEV;
             u8 defenseEV;
             u8 speedEV;
             u8 spAttackEV;
             u8 spDefenseEV;
             u8 cool;
             u8 beauty;
             u8 cute;
             u8 smart;
             u8 tough;
             u8 sheen;
};

struct PokemonSubstruct3
{
            u8 pokerus;
            u8 metLocation;

            u16 metLevel:7;
            u16 metGame:4;
            u16 unused3_3:4;
            u16 otGender:1;

            u32 hpIV:5;
            u32 attackIV:5;
            u32 defenseIV:5;
            u32 speedIV:5;
            u32 spAttackIV:5;
            u32 spDefenseIV:5;
            u32 isEgg:1;

            u32 coolRibbon:3;
            u32 beautyRibbon:3;
            u32 cuteRibbon:3;
            u32 smartRibbon:3;
            u32 toughRibbon:3;
            u32 championRibbon:1;
            u32 winningRibbon:1;
            u32 victoryRibbon:1;
            u32 artistRibbon:1;
            u32 effortRibbon:1;
            u32 giftRibbon1:1;
            u32 giftRibbon2:1;
            u32 giftRibbon3:1;
            u32 giftRibbon4:1;
            u32 giftRibbon5:1;
            u32 giftRibbon6:1;
            u32 giftRibbon7:1;
            u32 fatefulEncounter:2;
            u32 abilityNum:2;
            u32 obedient:1;
};

union PokemonSubstruct
{
    struct PokemonSubstruct0 type0;
    struct PokemonSubstruct1 type1;
    struct PokemonSubstruct2 type2;
    struct PokemonSubstruct3 type3;
    u16 raw[6];
};

struct BoxPokemon
{
    u32 personality;
    u32 otId;
    u8 nickname[10];
    u8 language;
    u8 isBadEgg:1;
    u8 hasSpecies:1;
    u8 isEgg:1;
    u8 unused:5;
    u8 otName[7];
    u8 markings;
    u16 checksum;
    u16 unknown;

    union
    {
        u32 raw[12];
        union PokemonSubstruct substructs[4];
    } secure;
};

struct Pokemon
{
    struct BoxPokemon box;
    u32 status;
    u8 level;
    u8 mail;
    u16 hp;
    u16 maxHP;
    u16 attack;
    u16 defense;
    u16 speed;
    u16 spAttack;
    u16 spDefense;
};

struct Unknown_806F160_Struct
{
    u32 field_0_0:4;
    u32 field_0_1:4;
    u32 field_1:8;
    u16 magic:8;
    u32 field_3_0:4;
    u32 field_3_1:4;
    void *bytes;
    u8 **byteArrays;
    struct SpriteTemplate *templates;
    struct SpriteFrameImage *frameImages;
};

struct BattlePokemon
{
             u16 species:11;
          u16 formId:5;
             u16 attack;
             u16 defense;
             u16 speed;
             u16 spAttack;
             u16 spDefense;
             u16 moves[4];
             u32 hpIV:5;
             u32 attackIV:5;
             u32 defenseIV:5;
             u32 speedIV:5;
             u32 spAttackIV:5;
             u32 spDefenseIV:5;
             u32 abilityNum:2;
             s8 statStages[6 + 2];
             u16 ability;
             u8 type1;
             u8 type2;
             u8 type3;
             u8 pp[4];
             u16 hp;
             u8 level;
             u8 friendship;
             u16 maxHP;
             u16 item;
             u8 nickname[10 + 1];
             u8 ppBonuses;
             u8 otName[7 + 1];
             u32 experience;
             u32 personality;
             u32 status1;
             u32 status2;
             u32 otId;
};

struct BaseStats
{
            u8 baseHP;
            u8 baseAttack;
            u8 baseDefense;
            u8 baseSpeed;
            u8 baseSpAttack;
            u8 baseSpDefense;
            u8 type1;
            u8 type2;
            u8 catchRate;
            u16 expYield;
            u16 evYield_HP:2;
            u16 evYield_Attack:2;
            u16 evYield_Defense:2;
            u16 evYield_Speed:2;
            u16 evYield_SpAttack:2;
            u16 evYield_SpDefense:2;
            u16 item1;
            u16 item2;
            u8 genderRatio;
            u8 eggCycles;
            u8 friendship;
            u8 growthRate;
            u8 eggGroup1;
            u8 eggGroup2;
            u16 abilities[2];

            u16 abilityHidden;

            u8 safariZoneFleeRate;
            u8 bodyColor : 7;
            u8 noFlip : 1;
            u8 flags;
};

# 1 "include/constants/battle_config.h" 1
# 221 "include/pokemon.h" 2
struct BattleMove
{
    u16 effect;
    u8 power;
    u8 type;
    u8 accuracy;
    u8 pp;
    u8 secondaryEffectChance;
    u8 target;
    s8 priority;
    u32 flags;
    u8 split;
    u8 argument;
};

struct SpindaSpot
{
    u8 x, y;
    u16 image[16];
};

struct LevelUpMove
{
    u16 move;
    u16 level;
};

struct Evolution
{
    u16 method;
    u16 param;
    u16 targetSpecies;
};

extern u8 gPlayerPartyCount;
extern struct Pokemon gPlayerParty[6];
extern u8 gEnemyPartyCount;
extern struct Pokemon gEnemyParty[6];
extern struct SpriteTemplate gMultiuseSpriteTemplate;

extern const struct BattleMove gBattleMoves[];
extern const u8 gFacilityClassToPicIndex[];
extern const u8 gFacilityClassToTrainerClass[];
extern const struct BaseStats gBaseStats[];
extern const u8 *const gItemEffectTable[];
extern const struct Evolution gEvolutionTable[][10];
extern const u32 gExperienceTables[][100 + 1];
extern const struct LevelUpMove *const gLevelUpLearnsets[];
extern const u8 gPPUpGetMask[];
extern const u8 gPPUpSetMask[];
extern const u8 gPPUpAddMask[];
extern const u8 gStatStageRatios[12 + 1][2];
extern const u16 gLinkPlayerFacilityClasses[];
extern const struct SpriteTemplate gUnknown_08329D98[];
extern const s8 gNatureStatTable[][5];
extern const u16 gSpeciesToNationalPokedexNum[898 + 308 + 1];

void ZeroBoxMonData(struct BoxPokemon *boxMon);
void ZeroMonData(struct Pokemon *mon);
void ZeroPlayerPartyMons(void);
void ZeroEnemyPartyMons(void);
void CreateMon(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId, u8 formId);
void CreateBoxMon(struct BoxPokemon *boxMon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId, u8 formId);
void CreateMonWithNature(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 nature, u8 formId);
void CreateMonWithGenderNatureLetter(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 gender, u8 nature, u8 unownLetter, u8 formId);
void CreateMaleMon(struct Pokemon *mon, u16 species, u8 level, u8 formId);
void CreateMonWithIVsPersonality(struct Pokemon *mon, u16 species, u8 level, u32 ivs, u32 personality, u8 formId);
void CreateMonWithIVsOTID(struct Pokemon *mon, u16 species, u8 level, u8 *ivs, u32 otId, u8 formId);
void CreateMonWithEVSpread(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 evSpread, u8 formId);
void CreateBattleTowerMon(struct Pokemon *mon, struct BattleTowerPokemon *src);
void CreateBattleTowerMon2(struct Pokemon *mon, struct BattleTowerPokemon *src, bool8 lvl50);
void CreateApprenticeMon(struct Pokemon *mon, const struct Apprentice *src, u8 monId);
void CreateMonWithEVSpreadNatureOTID(struct Pokemon *mon, u16 species, u8 level, u8 nature, u8 fixedIV, u8 evSpread, u32 otId, u8 formId);
void sub_80686FC(struct Pokemon *mon, struct BattleTowerPokemon *dest);
void CreateObedientMon(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId, u8 formId);
bool8 sub_80688F8(u8 caseId, u8 battlerId);
void SetDeoxysStats(void);
u16 GetUnionRoomTrainerPic(void);
u16 GetUnionRoomTrainerClass(void);
void CreateObedientEnemyMon(void);
void CalculateMonStats(struct Pokemon *mon);
void BoxMonToMon(const struct BoxPokemon *src, struct Pokemon *dest);
u8 GetLevelFromMonExp(struct Pokemon *mon);
u8 GetLevelFromBoxMonExp(struct BoxPokemon *boxMon);
u16 GiveMoveToMon(struct Pokemon *mon, u16 move);
u16 GiveMoveToBattleMon(struct BattlePokemon *mon, u16 move);
void SetMonMoveSlot(struct Pokemon *mon, u16 move, u8 slot);
void SetBattleMonMoveSlot(struct BattlePokemon *mon, u16 move, u8 slot);
void GiveMonInitialMoveset(struct Pokemon *mon);
void GiveBoxMonInitialMoveset(struct BoxPokemon *boxMon);
u16 MonTryLearningNewMove(struct Pokemon *mon, bool8 firstMove);
void DeleteFirstMoveAndGiveMoveToMon(struct Pokemon *mon, u16 move);
void DeleteFirstMoveAndGiveMoveToBoxMon(struct BoxPokemon *boxMon, u16 move);

u8 CountAliveMonsInBattle(u8 caseId);




u8 GetDefaultMoveTarget(u8 battlerId);
u8 GetMonGender(struct Pokemon *mon);
u8 GetBoxMonGender(struct BoxPokemon *boxMon);
u8 GetGenderFromSpeciesAndPersonality(u16 species, u32 personality);
u32 GetUnownSpeciesId(u32 personality);
void SetMultiuseSpriteTemplateToPokemon(u16 speciesTag, u8 battlerPosition, u8 formId);
void SetMultiuseSpriteTemplateToTrainerBack(u16 trainerSpriteId, u8 battlerPosition);
void SetMultiuseSpriteTemplateToTrainerFront(u16 arg0, u8 battlerPosition);





u32 GetMonData();
u32 GetBoxMonData();

void SetMonData(struct Pokemon *mon, s32 field, const void *dataArg);
void SetBoxMonData(struct BoxPokemon *boxMon, s32 field, const void *dataArg);
void CopyMon(void *dest, void *src, size_t size);
u8 GiveMonToPlayer(struct Pokemon *mon);
u8 SendMonToPC(struct Pokemon* mon);
u8 CalculatePlayerPartyCount(void);
u8 CalculateEnemyPartyCount(void);
u8 GetMonsStateToDoubles(void);
u8 GetMonsStateToDoubles_2(void);
u16 GetAbilityBySpecies(u16 species, u8 abilityNum, u8 formId);
u16 GetMonAbility(struct Pokemon *mon);
void CreateSecretBaseEnemyParty(struct SecretBase *secretBaseRecord);
u8 GetSecretBaseTrainerPicIndex(void);
u8 GetSecretBaseTrainerClass(void);
bool8 IsPlayerPartyAndPokemonStorageFull(void);
bool8 IsPokemonStorageFull(void);
void GetSpeciesName(u8 *name, u16 species);
u8 CalculatePPWithBonus(u16 move, u8 ppBonuses, u8 moveIndex);
void RemoveMonPPBonus(struct Pokemon *mon, u8 moveIndex);
void RemoveBattleMonPPBonus(struct BattlePokemon *mon, u8 moveIndex);
void PokemonToBattleMon(struct Pokemon *src, struct BattlePokemon *dst);
void CopyPlayerPartyMonToBattleData(u8 battlerId, u8 partyIndex);
bool8 ExecuteTableBasedItemEffect(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex);
bool8 PokemonUseItemEffects(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex, u8 e);
bool8 HealStatusConditions(struct Pokemon *mon, u32 battlePartyId, u32 healMask, u8 battlerId);
u8 GetItemEffectParamOffset(u16 itemId, u8 effectByte, u8 effectBit);
u8 *UseStatIncreaseItem(u16 itemId);

u8 GetNature(struct Pokemon *mon, bool32 checkHidden);
u8 GetNatureFromPersonality(u32 personality);
u16 GetEvolutionTargetSpecies(struct Pokemon *mon, u8 type, u16 evolutionItem, u16 tradePartnerSpecies, u8 *targetFormId);
u16 HoennPokedexNumToSpecies(u16 hoennNum);
u16 NationalPokedexNumToSpecies(u16 nationalNum);
u16 NationalToHoennOrder(u16 nationalNum);
u16 SpeciesToNationalPokedexNum(u16 species);
u16 SpeciesToHoennPokedexNum(u16 species);
u16 HoennToNationalOrder(u16 hoennNum);
void sub_806D544(u16 species, u32 personality, u8 *dest);
void DrawSpindaSpots(u16 species, u32 personality, u8 *dest, u8 a4);
void EvolutionRenameMon(struct Pokemon *mon, u16 oldSpecies, u16 newSpecies);
u8 GetPlayerFlankId(void);
u16 GetLinkTrainerFlankId(u8 id);
s32 GetBattlerMultiplayerId(u16 a1);
u8 GetTrainerEncounterMusicId(u16 trainerOpponentId);
u16 ModifyStatByNature(u8 nature, u16 n, u8 statIndex);
void AdjustFriendship(struct Pokemon *mon, u8 event);
void MonGainEVs(struct Pokemon *mon, u16 defeatedSpecies, u8 defeatedFormId);
u16 GetMonEVCount(struct Pokemon *mon);
void RandomlyGivePartyPokerus(struct Pokemon *party);
u8 CheckPartyPokerus(struct Pokemon *party, u8 selection);
u8 CheckPartyHasHadPokerus(struct Pokemon *party, u8 selection);
void UpdatePartyPokerusTime(u16 days);
void PartySpreadPokerus(struct Pokemon *party);
bool8 TryIncrementMonLevel(struct Pokemon *mon);
u32 CanMonLearnTMHM(struct Pokemon *mon, u8 tm);
u32 CanSpeciesLearnTMHM(u16 species, u8 tm);
u8 GetMoveRelearnerMoves(struct Pokemon *mon, u16 *moves);
u8 GetLevelUpMovesBySpecies(u16 species, u16 *moves, u8 formId);
u8 GetNumberOfRelearnableMoves(struct Pokemon *mon);
u16 SpeciesToPokedexNum(u16 species);
bool32 IsSpeciesInHoennDex(u16 species);
void ClearBattleMonForms(void);
u16 GetBattleBGM(void);
void PlayBattleBGM(void);
void PlayMapChosenOrBattleBGM(u16 songId);
void sub_806E694(u16 songId);
const u32 *GetMonFrontSpritePal(struct Pokemon *mon);
const u32 *GetMonSpritePalFromSpeciesAndPersonality(u16 species, u32 otId, u32 personality);
const struct CompressedSpritePalette *GetMonSpritePalStruct(struct Pokemon *mon);
const struct CompressedSpritePalette *GetMonSpritePalStructFromOtIdPersonality(u16 species, u32 otId , u32 personality);
bool32 IsHMMove2(u16 move);
bool8 IsMonSpriteNotFlipped(u16 species);
s8 GetMonFlavorRelation(struct Pokemon *mon, u8 flavor);
s8 GetFlavorRelationByPersonality(u32 personality, u8 flavor);
bool8 IsTradedMon(struct Pokemon *mon);
bool8 IsOtherTrainer(u32 otId, u8 *otName);
void MonRestorePP(struct Pokemon *mon);
void BoxMonRestorePP(struct BoxPokemon *boxMon);
void SetMonPreventsSwitchingString(void);
void SetWildMonHeldItem(void);
bool8 IsMonShiny(struct Pokemon *mon);
bool8 IsShinyOtIdPersonality(u32 otId, u32 personality);
const u8 *GetTrainerPartnerName(void);
void BattleAnimateFrontSprite(struct Sprite* sprite, u16 species, bool8 noCry, u8 arg3);
void DoMonFrontSpriteAnimation(struct Sprite* sprite, u16 species, bool8 noCry, u8 arg3);
void PokemonSummaryDoMonAnimation(struct Sprite* sprite, u16 species, bool8 oneFrame);
void StopPokemonAnimationDelayTask(void);
void BattleAnimateBackSprite(struct Sprite* sprite, u16 species);
u8 sub_806EF08(u8 arg0);
u8 sub_806EF84(u8 arg0, u8 arg1);
u16 sub_806EFF0(u16 arg0);
u16 FacilityClassToPicIndex(u16 facilityClass);
u16 PlayerGenderToFrontTrainerPicId(u8 playerGender);
void HandleSetPokedexFlag(u16 nationalNum, u8 caseId, u32 personality);
const u8 *GetTrainerClassNameFromId(u16 trainerId);
const u8 *GetTrainerNameFromId(u16 trainerId);
bool8 HasTwoFramesAnimation(u16 species);
struct Unknown_806F160_Struct *sub_806F2AC(u8 id, u8 arg1);
void sub_806F47C(u8 id);
u8 *sub_806F4F8(u8 id, u8 arg1);
u16 GetFormSpeciesId(u16 baseSpeciesId, u8 formId);
u8 GetFormIdFromFormSpeciesId(u16 formSpeciesId);
u16 GetBaseFormSpeciesId(u16 formSpeciesId);
void CreateShinyMonWithNature(struct Pokemon *mon, u16 species, u8 level, u8 nature);
u16 MonTryLearningNewMoveEvolution(struct Pokemon *mon, bool8 firstMove);
# 547 "include/global.h" 2

struct WarpData
{
    s8 mapGroup;
    s8 mapNum;
    s8 warpId;
    s16 x, y;
};

struct ItemSlot
{
    u16 itemId;
    u16 quantity;
};

struct Pokeblock
{
    u8 color;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 feel;
};

struct Roamer
{
             u32 ivs;
             u32 personality;
             u16 species;
             u16 hp;
             u8 level;
             u8 status;
             u8 cool;
             u8 beauty;
             u8 cute;
             u8 smart;
             u8 tough;
             bool8 active;
             u8 filler[0x8];
};

struct RamScriptData
{
    u8 magic;
    u8 mapGroup;
    u8 mapNum;
    u8 objectId;
    u8 script[995];
};

struct RamScript
{
    u32 checksum;
    struct RamScriptData data;
};

struct EasyChatPair
{
    u16 unk0_0:7;
    u16 unk0_7:7;
    u16 unk1_6:1;
    u16 unk2;
    u16 words[2];
};

struct MailStruct
{
             u16 words[9];
             u8 playerName[7 + 1];
             u8 trainerId[4];
             u16 species;
             u16 itemId;
};

struct MauvilleManCommon
{
    u8 id;
};

struct MauvilleManBard
{
             u8 id;
             u16 songLyrics[6];
             u16 temporaryLyrics[6];
             u8 playerName[7 + 1];
             u8 filler_2DB6[0x3];
             u8 playerTrainerId[4];
             bool8 hasChangedSong;
             u8 language;
};

struct MauvilleManStoryteller
{
    u8 id;
    bool8 alreadyRecorded;
    u8 filler2[2];
    u8 gameStatIDs[4];
    u8 trainerNames[4][7];
    u8 statValues[4][4];
    u8 language[4];
};

struct MauvilleManGiddy
{
             u8 id;
             u8 taleCounter;
             u8 questionNum;
             u16 randomWords[10];
             u8 questionList[8];
             u8 language;
};

struct MauvilleManHipster
{
    u8 id;
    bool8 alreadySpoken;
    u8 language;
};

struct MauvilleOldManTrader
{
    u8 id;
    u8 decorations[4];
    u8 playerNames[4][11];
    u8 alreadyTraded;
    u8 language[4];
};

typedef union OldMan
{
    struct MauvilleManCommon common;
    struct MauvilleManBard bard;
    struct MauvilleManGiddy giddy;
    struct MauvilleManHipster hipster;
    struct MauvilleOldManTrader trader;
    struct MauvilleManStoryteller storyteller;
    u8 filler[0x40];
} OldMan;

struct RecordMixing_UnknownStructSub
{
    u32 unk0;
    u8 data[0x34];

};

struct RecordMixing_UnknownStruct
{
    struct RecordMixing_UnknownStructSub data[2];
    u32 unk70;
    u16 unk74[0x2];
};



struct LinkBattleRecord
{
    u8 name[7 + 1];
    u16 trainerId;
    u16 wins;
    u16 losses;
    u16 draws;
};

struct LinkBattleRecords
{
    struct LinkBattleRecord entries[5];
    u8 languages[5];
};

struct RecordMixingGiftData
{
    u8 unk0;
    u8 quantity;
    u16 itemId;
    u8 filler4[8];
};

struct RecordMixingGift
{
    int checksum;
    struct RecordMixingGiftData data;
};

struct ContestWinner
{
    u32 personality;
    u32 trainerId;
    u16 species;
    u8 contestCategory;
    u8 monName[10 + 1];
    u8 trainerName[7 + 1];
    u8 contestRank;
};

struct DayCareMail
{
    struct MailStruct message;
    u8 OT_name[7 + 1];
    u8 monName[10 + 1];
    u8 gameLanguage:4;
    u8 monLanguage:4;
};

struct DaycareMon
{
    struct BoxPokemon mon;
    struct DayCareMail mail;
    u32 steps;
};

struct DayCare
{
    struct DaycareMon mons[2];
    u32 offspringPersonality;
    u8 stepCounter;
};

struct RecordMixingDayCareMail
{
    struct DayCareMail mail[2];
    u32 numDaycareMons;
    bool16 holdsItem[2];
};

struct LilycoveLadyQuiz
{
              u8 id;
              u8 state;
              u16 question[9];
              u16 correctAnswer;
              u16 playerAnswer;
              u8 playerName[7 + 1];
              u16 playerTrainerId[4];
              u16 prize;
              bool8 waitingForChallenger;
              u8 questionId;
              u8 prevQuestionId;
              u8 language;
};

struct LilycoveLadyFavor
{
              u8 id;
              u8 state;
              bool8 likedItem;
              u8 numItemsGiven;
              u8 playerName[7 + 1];
              u8 favorId;
              u16 itemId;
              u16 bestItem;
              u8 language;
};

struct LilycoveLadyContest
{
              u8 id;
              bool8 givenPokeblock;
              u8 numGoodPokeblocksGiven;
              u8 numOtherPokeblocksGiven;
              u8 playerName[7 + 1];
              u8 maxSheen;
              u8 category;
              u8 language;
};

typedef union
{
    struct LilycoveLadyQuiz quiz;
    struct LilycoveLadyFavor favor;
    struct LilycoveLadyContest contest;
    u8 id;
    u8 pad[0x40];
} LilycoveLady;

struct WaldaPhrase
{
    u16 colors[2];
    u8 text[16];
    u8 iconId;
    u8 patternId;
    bool8 patternUnlocked;
};

struct TrainerNameRecord
{
    u32 trainerId;
    u8 trainerName[7 + 1];
};

struct SaveTrainerHill
{
               u32 timer;
               u32 bestTime;
               u8 unk_3D6C;
               u8 unused;
               u16 receivedPrize:1;
               u16 checkedFinalTime:1;
               u16 spokeToOwner:1;
               u16 hasLost:1;
               u16 maybeECardScanDuringChallenge:1;
               u16 field_3D6E_0f:1;
               u16 tag:2;
};

struct MysteryEventStruct
{
    u8 unk_0_0:2;
    u8 unk_0_2:3;
    u8 unk_0_5:3;
    u8 unk_1;
};

 struct WonderNews
{
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04[40];
    u8 unk_2C[10][40];
};

 struct WonderNewsSaveStruct
{
    u32 crc;
    struct WonderNews data;
};

 struct WonderCard
{
    u16 unk_00;
    u16 unk_02;
    u32 unk_04;
    u8 unk_08_0:2;
    u8 unk_08_2:4;
    u8 unk_08_6:2;
    u8 unk_09;
    u8 unk_0A[40];
    u8 unk_32[40];
    u8 unk_5A[4][40];
    u8 unk_FA[40];
    u8 unk_122[40];
};

 struct WonderCardSaveStruct
{
    u32 crc;
    struct WonderCard data;
};

 struct MEventBuffer_3430_Sub
{
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08[2][7];
};

 struct MEventBuffer_3430
{
    u32 crc;
    struct MEventBuffer_3430_Sub data;
};

 struct MEventBuffers
{
                     struct WonderNewsSaveStruct wonderNews;
                     struct WonderCardSaveStruct wonderCard;
                     struct MEventBuffer_3430 buffer_310;
                     u16 unk_338[4];
                     struct MysteryEventStruct unk_340;
                     u32 unk_344[2][5];
};

struct SaveBlock1
{
             struct Coords16 pos;
             struct WarpData location;
             struct WarpData continueGameWarp;
             struct WarpData dynamicWarp;
             struct WarpData lastHealLocation;
             struct WarpData escapeWarp;
             u16 savedMusic;
             u8 weather;
             u8 weatherCycleStage;
             u8 flashLevel;
             u16 mapLayoutId;
             u16 mapView[0x100];
              u8 playerPartyCount;
              struct Pokemon playerParty[6];
              u32 money;
              u16 coins;
              u16 registeredItemSelect;
              struct ItemSlot pcItems[50];
              struct ItemSlot bagPocket_Items[80];
              struct ItemSlot bagPocket_KeyItems[50];
              struct ItemSlot bagPocket_PokeBalls[31];

              u8 bagPocket_TMHMOwnedFlags[26];

              struct ItemSlot bagPocket_Berries[70];
              struct ItemSlot bagPocket_Medicine[40];
              struct ItemSlot bagPocket_BattleItems[100];
              struct ItemSlot bagPocket_PowerUp[70];
              struct ItemSlot bagPocket_TypeItems[80];
              struct ItemSlot bagPocket_MegaStones[47];
              struct Pokeblock pokeblocks[40];

              u16 berryBlenderRecords[3];
              u8 field_9C2[6];
              u16 trainerRematchStepCounter;
              u8 trainerRematches[100];
              struct ObjectEvent objectEvents[16];
              struct ObjectEventTemplate objectEventTemplates[64];
               u8 flags[(((((((((((0x500 + 864 - 1) + 1) + 0xBF) + (8 - (((0x500 + 864 - 1) + 1) + 0xBF) % 8)) + 0x3F) + (7 - (((((0x500 + 864 - 1) + 1) + 0xBF) + (8 - (((0x500 + 864 - 1) + 1) + 0xBF) % 8)) + 0x3F) % 8)) + 1)) / 8) + ((((((((((0x500 + 864 - 1) + 1) + 0xBF) + (8 - (((0x500 + 864 - 1) + 1) + 0xBF) % 8)) + 0x3F) + (7 - (((((0x500 + 864 - 1) + 1) + 0xBF) + (8 - (((0x500 + 864 - 1) + 1) + 0xBF) % 8)) + 0x3F) % 8)) + 1)) % 8) ? 1 : 0)))];
               u16 vars[(0x40FF - 0x4000 + 1)];
               u32 gameStats[64];
               struct BerryTree berryTrees[128];
               struct SecretBase secretBases[5];
               u8 playerRoomDecorations[12];
               u8 playerRoomDecorationPositions[12];
               u8 decorationDesks[10];
               u8 decorationChairs[10];
               u8 decorationPlants[10];
               u8 decorationOrnaments[30];
               u8 decorationMats[30];
               u8 decorationPosters[10];
               u8 decorationDolls[40];
               u8 decorationCushions[10];
               u8 padding_27CA[2];
               TVShow tvShows[25];
               PokeNews pokeNews[16];
               u16 outbreakPokemonSpecies;
               u8 outbreakLocationMapNum;
               u8 outbreakLocationMapGroup;
               u8 outbreakPokemonLevel;
               u8 outbreakUnk1;
               u16 outbreakUnk2;
               u16 outbreakPokemonMoves[4];
               u8 outbreakUnk4;
               u8 outbreakPokemonProbability;
               u16 outbreakDaysLeft;
               struct GabbyAndTyData gabbyAndTyData;
               u16 easyChatProfile[6];
               u16 easyChatBattleStart[6];
               u16 easyChatBattleWon[6];
               u16 easyChatBattleLost[6];
               struct MailStruct mail[16];
               u8 additionalPhrases[8];
               OldMan oldMan;
               struct EasyChatPair easyChatPairs[5];
               struct ContestWinner contestWinners[13];
               struct DayCare daycare;
               struct LinkBattleRecords linkBattleRecords;
               u8 giftRibbons[52];
               struct Roamer roamer;


               u8 dexSeen[((((1500) / 8) + (((1500) % 8) ? 1 : 0)))];
               u8 dexCaught[((((1500) / 8) + (((1500) % 8) ? 1 : 0)))];
               u32 trainerHillTimes[4];

               struct RecordMixingGift recordMixingGift;
               LilycoveLady lilycoveLady;
               struct TrainerNameRecord trainerNameRecords[20];

               struct SaveTrainerHill trainerHill;
               struct WaldaPhrase waldaPhrase;
               u8 dexNavSearchLevels[898 + 308 + 1];
               u8 dexNavChain;
               u16 registeredItemL;
               u16 registeredItemR;

};

extern struct SaveBlock1* gSaveBlock1Ptr;

struct MapPosition
{
    s16 x;
    s16 y;
    s8 height;
};

struct TradeRoomPlayer
{
    u8 playerId;
    u8 isLocalPlayer;
    u8 c;
    u8 facing;
    struct MapPosition pos;
    u16 field_C;
};
# 2 "src/battle_ai_script_commands.c" 2
# 1 "gflib/malloc.h" 1
# 15 "gflib/malloc.h"
extern u8 gHeap[];

void *Alloc(u32 size);
void *AllocZeroed(u32 size);
void Free(void *pointer);
void InitHeap(void *pointer, u32 size);
# 3 "src/battle_ai_script_commands.c" 2
# 1 "include/battle.h" 1




# 1 "include/constants/battle.h" 1
# 6 "include/battle.h" 2
# 1 "include/battle_main.h" 1



struct TrainerMoney
{
    u8 classId;
    u8 value;
};

struct UnknownPokemonStruct4
{
             u16 species:11;
             u16 formId:5;
             u16 heldItem;
             u8 nickname[10 + 1];
             u8 level;
             u16 hp;
             u16 maxhp;
             u32 status;
             u32 personality;
             u8 gender;
             u8 language;
};
# 32 "include/battle_main.h"
void CB2_InitBattle(void);
void BattleMainCB2(void);
void CB2_QuitRecordedBattle(void);
void sub_8038528(struct Sprite* sprite);
void sub_8038A04(void);
void VBlankCB_Battle(void);
void nullsub_17(struct Sprite *sprite);
void sub_8038B74(struct Sprite *sprite);
void sub_8038D64(void);
u32 sub_80391E0(u8 arrayId, u8 caseId);
u32 sub_80397C4(u32 setId, u32 tableId);
void SpriteCb_WildMon(struct Sprite *sprite);
void SpriteCallbackDummy_2(struct Sprite *sprite);
void SpriteCB_FaintOpponentMon(struct Sprite *sprite);
void SpriteCb_ShowAsMoveTarget(struct Sprite *sprite);
void SpriteCb_HideAsMoveTarget(struct Sprite *sprite);
void SpriteCb_OpponentMonFromBall(struct Sprite *sprite);
void sub_8039BB4(struct Sprite *sprite);
void sub_80105DC(struct Sprite *sprite);
void sub_8039C00(struct Sprite *sprite);
void DoBounceEffect(u8 battlerId, u8 b, s8 c, s8 d);
void EndBounceEffect(u8 battlerId, bool8 b);
void SpriteCb_PlayerMonFromBall(struct Sprite *sprite);
void sub_8039E60(struct Sprite *sprite);
void SpriteCB_TrainerThrowObject(struct Sprite *sprite);
void sub_8039E9C(struct Sprite *sprite);
void nullsub_20(void);
void BeginBattleIntro(void);
void SwitchInClearSetData(void);
void FaintClearSetData(void);
void BattleTurnPassed(void);
u8 IsRunningFromBattleImpossible(void);
void SwitchPartyOrder(u8 battlerId);
void SwapTurnOrder(u8 id1, u8 id2);
u32 GetBattlerTotalSpeedStat(u8 battlerId);
s8 GetChosenMovePriority(u32 battlerId);
s8 GetMovePriority(u32 battlerId, u16 move);
u8 GetWhoStrikesFirst(u8 battlerId1, u8 battlerId2, bool8 ignoreChosenMoves);
void RunBattleScriptCommands_PopCallbacksStack(void);
void RunBattleScriptCommands(void);
bool8 TryRunFromBattle(u8 battlerId);
void SpecialStatusesClear(void);
void SetTypeBeforeUsingMove(u16 move, u8 battlerAtk);

extern struct UnknownPokemonStruct4 gMultiPartnerParty[6 / 2];

extern const struct SpriteTemplate gUnknown_0831AC88;
extern const struct OamData gOamData_831ACA8;
extern const struct OamData gOamData_831ACB0;
extern const u8 gTypeNames[19][6 + 1];
extern const struct TrainerMoney gTrainerMoneyTable[];
extern const u8 gAbilityNames[][12 + 1];
extern const u8 *const gAbilityDescriptionPointers[];

extern const u8 gStatusConditionString_PoisonJpn[8];
extern const u8 gStatusConditionString_SleepJpn[8];
extern const u8 gStatusConditionString_ParalysisJpn[8];
extern const u8 gStatusConditionString_BurnJpn[8];
extern const u8 gStatusConditionString_IceJpn[8];
extern const u8 gStatusConditionString_ConfusionJpn[8];
extern const u8 gStatusConditionString_LoveJpn[8];

extern const u8 *const gStatusConditionStringsTable[7][2];
# 7 "include/battle.h" 2
# 1 "include/battle_message.h" 1
# 208 "include/battle_message.h"
struct BattleMsgData
{
    u16 currentMove;
    u16 originallyUsedMove;
    u16 lastItem;
    u16 lastAbility;
    u8 scrActive;
    u8 unk1605E;
    u8 hpScale;
    u8 itemEffectBattler;
    u8 moveType;
    u16 abilities[4];
    u8 textBuffs[3][18];
};

enum
{
    TRAINER_SLIDE_LAST_SWITCHIN,
    TRAINER_SLIDE_LAST_LOW_HP,
    TRAINER_SLIDE_FIRST_DOWN,
};

void BufferStringBattle(u16 stringID);
u32 BattleStringExpandPlaceholdersToDisplayedString(const u8* src);
u32 BattleStringExpandPlaceholders(const u8* src, u8* dst);
void BattlePutTextOnWindow(const u8* text, u8 windowId);
void SetPpNumbersPaletteInMoveSelection(void);
u8 GetCurrentPpToMaxPpState(u8 currentPp, u8 maxPp);
bool32 ShouldDoTrainerSlide(u32 battlerId, u32 trainerId, u32 which);

extern struct BattleMsgData *gBattleMsgDataPtr;

extern const u8* const gBattleStringsTable[];
extern const u8* const gStatNamesTable[];
extern const u8* const gPokeblockWasTooXStringTable[];
extern const u8* const gRefereeStringsTable[];
extern const u8* const gStatNamesTable2[];
extern const u8 *const gRoundsStringTable[];

extern const u8 gText_PkmnIsEvolving[];
extern const u8 gText_CongratsPkmnEvolved[];
extern const u8 gText_PkmnStoppedEvolving[];
extern const u8 gText_EllipsisQuestionMark[];
extern const u8 gText_WhatWillPkmnDo[];
extern const u8 gText_WhatWillPkmnDo2[];
extern const u8 gText_WhatWillWallyDo[];
extern const u8 gText_LinkStandby[];
extern const u8 gText_BattleMenu[];
extern const u8 gText_SafariZoneMenu[];
extern const u8 gText_MoveInterfacePP[];
extern const u8 gText_MoveInterfaceType[];
extern const u8 gText_MoveInterfacePpType[];
extern const u8 gText_MoveInterfaceDynamicColors[];
extern const u8 gText_WhichMoveToForget4[];
extern const u8 gText_BattleYesNoChoice[];
extern const u8 gText_BattleSwitchWhich[];
extern const u8 gText_BattleSwitchWhich2[];
extern const u8 gText_BattleSwitchWhich3[];
extern const u8 gText_BattleSwitchWhich4[];
extern const u8 gText_BattleSwitchWhich5[];
extern const u8 gText_SafariBalls[];
extern const u8 gText_SafariBallLeft[];
extern const u8 gText_Sleep[];
extern const u8 gText_Poison[];
extern const u8 gText_Burn[];
extern const u8 gText_Paralysis[];
extern const u8 gText_Ice[];
extern const u8 gText_Confusion[];
extern const u8 gText_Love[];
extern const u8 gText_SpaceAndSpace[];
extern const u8 gText_CommaSpace[];
extern const u8 gText_Space2[];
extern const u8 gText_LineBreak[];
extern const u8 gText_NewLine[];
extern const u8 gText_Are[];
extern const u8 gText_Are2[];
extern const u8 gText_BadEgg[];
extern const u8 gText_BattleWallyName[];
extern const u8 gText_Win[];
extern const u8 gText_Loss[];
extern const u8 gText_Draw[];
extern const u8 gText_StatRose[];
extern const u8 sText_StatSharply[];
extern const u8 gText_PkmnsStatChanged2[];
extern const u8 gText_PkmnGettingPumped[];
extern const u8 gText_PkmnShroudedInMist[];
extern const u8 gText_PkmnsXPreventsSwitching[];
extern const u8 gText_TheGreatNewHope[];
extern const u8 gText_WillChampionshipDreamComeTrue[];
extern const u8 gText_AFormerChampion[];
extern const u8 gText_ThePreviousChampion[];
extern const u8 gText_TheUnbeatenChampion[];
extern const u8 gText_PlayerMon1Name[];
extern const u8 gText_Vs[];
extern const u8 gText_OpponentMon1Name[];
extern const u8 gText_Mind[];
extern const u8 gText_Skill[];
extern const u8 gText_Body[];
extern const u8 gText_Judgement[];
extern const u8 gText_EmptyString3[];
extern const u8 gText_RecordBattleToPass[];
extern const u8 gText_BattleRecordedOnPass[];
extern const u8 gText_BattleTourney[];

extern const u16 gMissStringIds[];
extern const u16 gStatUpStringIds[];
extern const u16 gTrappingMoves[];
# 8 "include/battle.h" 2
# 1 "include/battle_util.h" 1
# 39 "include/battle_util.h"
struct TypePower
{
    u8 type;
    u8 power;
    u16 effect;
};

extern const struct TypePower gNaturalGiftTable[];

void HandleAction_ThrowBall(void);
void HandleAction_UseMove(void);
void HandleAction_Switch(void);
void HandleAction_UseItem(void);
void HandleAction_Run(void);
void HandleAction_WatchesCarefully(void);
void HandleAction_SafariZoneBallThrow(void);
void HandleAction_ThrowPokeblock(void);
void HandleAction_GoNear(void);
void HandleAction_SafariZoneRun(void);
void HandleAction_WallyBallThrow(void);
void HandleAction_TryFinish(void);
void HandleAction_NothingIsFainted(void);
void HandleAction_ActionFinished(void);
u8 GetBattlerForBattleScript(u8 caseId);
void PressurePPLose(u8 target, u8 attacker, u16 move);
void PressurePPLoseOnUsingPerishSong(u8 attacker);
void PressurePPLoseOnUsingImprison(u8 attacker);
void MarkAllBattlersForControllerExec(void);
bool32 IsBattlerMarkedForControllerExec(u8 battlerId);
void MarkBattlerForControllerExec(u8 battlerId);
void sub_803F850(u8 arg0);
void CancelMultiTurnMoves(u8 battlerId);
bool8 WasUnableToUseMove(u8 battlerId);
void PrepareStringBattle(u16 stringId, u8 battlerId);
void ResetSentPokesToOpponentValue(void);
void OpponentSwitchInResetSentPokesToOpponentValue(u8 battlerId);
void UpdateSentPokesToOpponentValue(u8 battlerId);
void BattleScriptPush(const u8* bsPtr);
void BattleScriptPushCursor(void);
void BattleScriptPop(void);
u8 TrySetCantSelectMoveBattleScript(void);
u8 CheckMoveLimitations(u8 battlerId, u8 unusableMoves, u8 check);
bool8 AreAllMovesUnusable(void);
u8 GetImprisonedMovesCount(u8 battlerId, u16 move);
u8 DoFieldEndTurnEffects(void);
s32 GetDrainedBigRootHp(u32 battler, s32 hp);
u8 DoBattlerEndTurnEffects(void);
bool8 HandleWishPerishSongOnTurnEnd(void);
bool8 HandleFaintedMonActions(void);
void TryClearRageAndFuryCutter(void);
u8 AtkCanceller_UnableToUseMove(void);
u8 AtkCanceller_UnableToUseMove2(void);
bool8 HasNoMonsToSwitch(u8 battlerId, u8 r1, u8 r2);
u8 TryWeatherFormChange(u8 battlerId);
bool32 TryChangeBattleWeather(u8 battler, u32 weatherEnumId, bool32 viaAbility);
u8 AbilityBattleEffects(u8 caseID, u8 battlerId, u16 ability, u8 special, u16 moveArg);
u32 GetBattlerAbility(u8 battlerId);
u32 IsAbilityOnSide(u32 battlerId, u32 ability);
u32 IsAbilityOnOpposingSide(u32 battlerId, u32 ability);
u32 IsAbilityOnField(u32 ability);
u32 IsAbilityOnFieldExcept(u32 battlerId, u32 ability);
u32 IsAbilityPreventingEscape(u32 battlerId);
bool32 CanBattlerEscape(u32 battlerId);
void BattleScriptExecute(const u8* BS_ptr);
void BattleScriptPushCursorAndCallback(const u8* BS_ptr);
u8 ItemBattleEffects(u8 caseID, u8 battlerId, bool8 moveTurn);
void ClearFuryCutterDestinyBondGrudge(u8 battlerId);
void HandleAction_RunBattleScript(void);
u32 SetRandomTarget(u32 battlerId);
u8 GetMoveTarget(u16 move, u8 setTarget);
u8 IsMonDisobedient(void);
u32 GetBattlerHoldEffect(u8 battlerId, bool32 checkNegating);
u32 GetBattlerHoldEffectParam(u8 battlerId);
bool32 IsMoveMakingContact(u16 move, u8 battlerAtk);
bool32 IsBattlerGrounded(u8 battlerId);
bool32 IsBattlerAlive(u8 battlerId);
u8 GetBattleMonMoveSlot(struct BattlePokemon *battleMon, u16 move);
u32 GetBattlerWeight(u8 battlerId);
s32 CalculateMoveDamage(u16 move, u8 battlerAtk, u8 battlerDef, u8 moveType, s32 fixedBasePower, bool32 isCrit, bool32 randomFactor, bool32 updateFlags);
u16 CalcTypeEffectivenessMultiplier(u16 move, u8 moveType, u8 battlerAtk, u8 battlerDef, bool32 recordAbilities);
u16 CalcPartyMonTypeEffectivenessMultiplier(u16 move, u16 speciesDef, u16 abilityDef);
u16 GetTypeModifier(u8 atkType, u8 defType);
s32 GetStealthHazardDamage(u8 hazardType, u8 battlerId);
u16 GetMegaEvolutionSpecies(u16 preEvoSpecies, u16 heldItemId);
u16 GetWishMegaEvolutionSpecies(u16 preEvoSpecies, u16 moveId1, u16 moveId2, u16 moveId3, u16 moveId4);
bool32 CanMegaEvolve(u8 battlerId);
void UndoMegaEvolution(u32 monId);
void UndoFormChange(u32 monId, u32 side);
bool32 DoBattlersShareType(u32 battler1, u32 battler2);
bool32 CanBattlerGetOrLoseItem(u8 battlerId, u16 itemId);
struct Pokemon *GetIllusionMonPtr(u32 battlerId);
void ClearIllusionMon(u32 battlerId);
bool32 SetIllusionMon(struct Pokemon *mon, u32 battlerId);
bool8 ShouldGetStatBadgeBoost(u16 flagId, u8 battlerId);
u8 GetBattleMoveSplit(u32 moveId);
# 9 "include/battle.h" 2
# 1 "include/battle_script_commands.h" 1
# 9 "include/battle_script_commands.h"
s32 CalcCritChanceStage(u8 battlerAtk, u8 battlerDef, u32 move, bool32 recordAbility);
u32 GetTotalAccuracy(u32 battlerAtk, u32 battlerDef, u32 move);
u8 GetBattlerTurnOrderNum(u8 battlerId);
bool32 NoAliveMonsForEitherParty(void);
void SetMoveEffect(bool32 primary, u32 certain);
bool32 CanBattlerSwitch(u32 battlerId);
void BattleDestroyYesNoCursorAt(u8 cursorPosition);
void BattleCreateYesNoCursorAt(u8 cursorPosition);
void BufferMoveToLearnIntoBattleTextBuff2(void);
void HandleBattleWindow(u8 xStart, u8 yStart, u8 xEnd, u8 yEnd, u8 flags);
bool8 UproarWakeUpCheck(u8 battlerId);
bool32 DoesSubstituteBlockMove(u8 battlerAtk, u8 battlerDef, u32 move);
bool32 DoesDisguiseBlockMove(u8 battlerAtk, u8 battlerDef, u32 move);
bool32 CanPoisonType(u8 battlerAttacker, u8 battlerTarget);
bool32 CanParalyzeType(u8 battlerAttacker, u8 battlerTarget);
bool32 CanUseLastResort(u8 battlerId);
u32 IsFlowerVeilProtected(u32 battler);
u32 IsLeafGuardProtected(u32 battler);
bool32 IsShieldsDownProtected(u32 battler);
u32 IsAbilityStatusProtected(u32 battler);

extern void (* const gBattleScriptingCommandsTable[])(void);
extern const u8 gBattlePalaceNatureToMoveGroupLikelihood[25][4];
# 10 "include/battle.h" 2
# 1 "include/battle_ai_switch_items.h" 1



enum
{
    AI_ITEM_FULL_RESTORE = 1,
    AI_ITEM_HEAL_HP,
    AI_ITEM_CURE_CONDITION,
    AI_ITEM_X_STAT,
    AI_ITEM_GUARD_SPECS,
    AI_ITEM_NOT_RECOGNIZABLE
};

void GetAIPartyIndexes(u32 battlerId, s32 *firstId, s32 *lastId);
void AI_TrySwitchOrUseItem(void);
u8 GetMostSuitableMonToSwitchInto(void);
# 11 "include/battle.h" 2
# 1 "include/battle_gfx_sfx_util.h" 1



void AllocateBattleSpritesData(void);
void FreeBattleSpritesData(void);
u16 ChooseMoveAndTargetInBattlePalace(void);
void sub_805D714(struct Sprite *sprite);
void sub_805D770(struct Sprite *sprite, bool8 arg1);
void sub_805D7AC(struct Sprite *sprite);
void InitAndLaunchChosenStatusAnimation(bool8 isStatus2, u32 status);
bool8 TryHandleLaunchBattleTableAnimation(u8 activeBattlerId, u8 attacker, u8 target, u8 tableId, u16 argument);
void InitAndLaunchSpecialAnimation(u8 activeBattlerId, u8 attacker, u8 target, u8 tableId);
bool8 IsMoveWithoutAnimation(u16 moveId, u8 animationTurn);
bool8 mplay_80342A4(u8 battlerId);
void BattleLoadOpponentMonSpriteGfx(struct Pokemon *mon, u8 battlerId);
void BattleLoadPlayerMonSpriteGfx(struct Pokemon *mon, u8 battlerId);
void nullsub_23(void);
void nullsub_24(u16 species);
void DecompressTrainerFrontPic(u16 frontPicId, u8 battlerId);
void DecompressTrainerBackPic(u16 backPicId, u8 battlerId);
void nullsub_25(u8 arg0);
void FreeTrainerFrontPicPalette(u16 frontPicId);
void sub_805DFFC(void);
bool8 BattleLoadAllHealthBoxesGfx(u8 state);
void LoadBattleBarGfx(u8 arg0);
bool8 BattleInitAllSprites(u8 *state1, u8 *battlerId);
void ClearSpritesHealthboxAnimData(void);
void CopyAllBattleSpritesInvisibilities(void);
void CopyBattleSpriteInvisibility(u8 battlerId);
void HandleSpeciesGfxDataChange(u8 attacker, u8 target, bool8 notTransform, bool32 megaEvo);
void BattleLoadSubstituteOrMonSpriteGfx(u8 battlerId, bool8 loadMonSprite);
void LoadBattleMonGfxAndAnimate(u8 battlerId, bool8 loadMonSprite, u8 spriteId);
void TrySetBehindSubstituteSpriteBit(u8 battlerId, u16 move);
void ClearBehindSubstituteBit(u8 battlerId);
void HandleLowHpMusicChange(struct Pokemon *mon, u8 battlerId);
void BattleStopLowHpSound(void);
u8 GetMonHPBarLevel(struct Pokemon *mon);
void HandleBattleLowHpMusicChange(void);
void sub_805EB9C(u8 affineMode);
void LoadAndCreateEnemyShadowSprites(void);
void SpriteCB_SetInvisible(struct Sprite *sprite);
void SetBattlerShadowSpriteCallback(u8 battlerId, u16 species);
void HideBattlerShadowSprite(u8 battlerId);
void sub_805EF14(void);
void ClearTemporarySpeciesSpriteData(u8 battlerId, bool8 dontClearSubstitute);
void AllocateMonSpritesGfx(void);
void FreeMonSpritesGfx(void);
bool32 ShouldPlayNormalMonCry(struct Pokemon *mon);
# 12 "include/battle.h" 2
# 1 "include/battle_util2.h" 1



void AllocateBattleResources(void);
void FreeBattleResources(void);
void AdjustFriendshipOnBattleFaint(u8 battler);
void SwitchPartyOrderInGameMulti(u8 battler, u8 arg1);
u32 sub_805725C(u8 battler);
# 13 "include/battle.h" 2
# 1 "include/battle_bg.h" 1



void BattleInitBgsAndWindows(void);
void InitBattleBgsVideo(void);
void LoadBattleMenuWindowGfx(void);
void DrawMainBattleBackground(void);
void LoadBattleTextboxAndBackground(void);
void InitLinkBattleVsScreen(u8 taskId);
void DrawBattleEntryBackground(void);
bool8 LoadChosenBattleElement(u8 caseId);
void DrawTerrainTypeBattleBackground(void);
# 14 "include/battle.h" 2
# 1 "include/pokeball.h" 1



enum
{
    BALL_POKE,
    BALL_GREAT,
    BALL_SAFARI,
    BALL_ULTRA,
    BALL_MASTER,
    BALL_NET,
    BALL_DIVE,
    BALL_NEST,
    BALL_REPEAT,
    BALL_TIMER,
    BALL_LUXURY,
    BALL_PREMIER,
    BALL_LEVEL,
    BALL_LURE,
    BALL_MOON,
    BALL_FRIEND,
    BALL_LOVE,
    BALL_HEAVY,
    BALL_FAST,
    BALL_SPORT,
    BALL_DUSK,
    BALL_QUICK,
    BALL_HEAL,
    BALL_CHERISH,
    BALL_PARK,
    BALL_DREAM,
    BALL_BEAST,
    POKEBALL_COUNT
};

enum {
    BALL_AFFINE_ANIM_0,
    BALL_ROTATE_RIGHT,
    BALL_ROTATE_LEFT,
    BALL_AFFINE_ANIM_3,
    BALL_AFFINE_ANIM_4
};

extern const struct SpriteTemplate gBallSpriteTemplates[];




u8 DoPokeballSendOutAnimation(s16 pan, u8 kindOfThrow);
void CreatePokeballSpriteToReleaseMon(u8 monSpriteId, u8 battler, u8 x, u8 y, u8 oamPriority, u8 subpriortiy, u8 g, u32 h, u16 species);
u8 CreateTradePokeballSprite(u8 a, u8 b, u8 x, u8 y, u8 oamPriority, u8 subPriority, u8 g, u32 h);
void sub_8076918(u8 battler);
void DoHitAnimHealthboxEffect(u8 battler);
void LoadBallGfx(u8 ballId);
void FreeBallGfx(u8 ballId);
# 15 "include/battle.h" 2
# 1 "include/battle_debug.h" 1





void CB2_BattleDebugMenu(void);
# 16 "include/battle.h" 2
# 58 "include/battle.h"
struct ResourceFlags
{
    u32 flags[4];
};
# 70 "include/battle.h"
struct DisableStruct
{
    u32 transformedMonPersonality;
    u16 disabledMove;
    u16 encoredMove;
    u8 protectUses;
    u8 stockpileCounter;
    s8 stockpileDef;
    s8 stockpileSpDef;
    s8 stockpileBeforeDef;
    s8 stockpileBeforeSpDef;
    u8 substituteHP;
    u8 disableTimer:4;
    u8 disableTimerStartValue:4;
    u8 encoredMovePos;
    u8 encoreTimer:4;
    u8 encoreTimerStartValue:4;
    u8 perishSongTimer:4;
    u8 perishSongTimerStartValue:4;
    u8 furyCutterCounter;
    u8 rolloutTimer:4;
    u8 rolloutTimerStartValue:4;
    u8 chargeTimer:4;
    u8 chargeTimerStartValue:4;
    u8 tauntTimer:4;
    u8 tauntTimer2:4;
    u8 battlerPreventingEscape;
    u8 battlerWithSureHit;
    u8 isFirstTurn;
    u8 truantCounter:1;
    u8 truantSwitchInHack:1;
    u8 mimickedMoves:4;
    u8 rechargeTimer;
    u8 autotomizeCount;
    u8 slowStartTimer;
    u8 embargoTimer;
    u8 magnetRiseTimer;
    u8 telekinesisTimer;
    u8 healBlockTimer;
    u8 laserFocusTimer;
    u8 throatChopTimer;
    u8 usedMoves:4;
    u8 wrapTurns;
};

struct ProtectStruct
{
    u32 protected:1;
    u32 spikyShielded:1;
    u32 kingsShielded:1;
    u32 banefulBunkered:1;
    u32 endured:1;
    u32 noValidMoves:1;
    u32 helpingHand:1;
    u32 bounceMove:1;
    u32 stealMove:1;
    u32 prlzImmobility:1;
    u32 confusionSelfDmg:1;
    u32 targetNotAffected:1;
    u32 chargingTurn:1;
    u32 fleeFlag:2;
    u32 usedImprisonedMove:1;
    u32 loveImmobility:1;
    u32 usedDisabledMove:1;
    u32 usedTauntedMove:1;
    u32 flag2Unknown:1;
    u32 flinchImmobility:1;
    u32 notFirstStrike:1;
    u32 palaceUnableToUseMove:1;
    u32 usesBouncedMove:1;
    u32 usedHealBlockedMove:1;
    u32 usedGravityPreventedMove:1;
    u32 powderSelfDmg:1;
    u32 usedThroatChopPreventedMove:1;
    u32 physicalDmg;
    u32 specialDmg;
    u8 physicalBattlerId;
    u8 specialBattlerId;
};

struct SpecialStatus
{
    u8 statLowered:1;
    u8 lightningRodRedirected:1;
    u8 restoredBattlerSprite: 1;
    u8 intimidatedMon:1;
    u8 traced:1;
    u8 ppNotAffectedByPressure:1;
    u8 flag40:1;
    u8 focusBanded:1;
    u8 focusSashed:1;
    u8 sturdied:1;
    u8 stormDrainRedirected:1;
    u8 switchInAbilityDone:1;
    u8 switchInItemDone:1;
    u8 instructedChosenTarget:3;
    u8 berryReduced:1;
    u8 gemBoost:1;
    u8 gemParam;
    u8 damagedMons:4;
    u8 dancerUsedMove:1;
    u8 dancerOriginalTarget:3;
    s32 dmg;
    s32 physicalDmg;
    s32 specialDmg;
    u8 physicalBattlerId;
    u8 specialBattlerId;
    u8 changedStatsBattlerId;
};

struct SideTimer
{
    u8 reflectTimer;
    u8 reflectBattlerId;
    u8 lightscreenTimer;
    u8 lightscreenBattlerId;
    u8 mistTimer;
    u8 mistBattlerId;
    u8 safeguardTimer;
    u8 safeguardBattlerId;
    u8 followmeTimer;
    u8 followmeTarget;
    u8 spikesAmount;
    u8 toxicSpikesAmount;
    u8 stealthRockAmount;
    u8 stickyWebAmount;
    u8 auroraVeilTimer;
    u8 auroraVeilBattlerId;
    u8 tailwindTimer;
    u8 tailwindBattlerId;
    u8 luckyChantTimer;
    u8 luckyChantBattlerId;
};

struct FieldTimer
{
    u8 mudSportTimer;
    u8 waterSportTimer;
    u8 wonderRoomTimer;
    u8 magicRoomTimer;
    u8 trickRoomTimer;
    u8 grassyTerrainTimer;
    u8 mistyTerrainTimer;
    u8 electricTerrainTimer;
    u8 psychicTerrainTimer;
    u8 echoVoiceCounter;
    u8 gravityTimer;
    u8 fairyLockTimer;
};

struct WishFutureKnock
{
    u8 futureSightCounter[4];
    u8 futureSightAttacker[4];
    u16 futureSightMove[4];
    u8 wishCounter[4];
    u8 wishMonId[4];
    u8 weatherDuration;
    u8 knockedOffMons[2];
};

struct AI_SavedBattleMon
{
    u16 ability;
    u16 moves[4];
    u16 heldItem;
    u16 species;
};

struct AI_ThinkingStruct
{
    u8 aiState;
    u8 movesetIndex;
    u16 moveConsidered;
    s8 score[4];
    u32 funcResult;
    u32 aiFlags;
    u8 aiAction;
    u8 aiLogicId;
    s32 simulatedDmg[4][4][4];
    struct AI_SavedBattleMon saved[4];
    bool8 switchMon;
};



struct UsedMoves
{
    u16 moves[4];
    u16 history[3];
    u8 index;
};

struct BattleHistory
{
    struct UsedMoves usedMoves[4];
    u16 abilities[4];
    u8 itemEffects[4];
    u16 trainerItems[4];
    u8 itemsNo;
};

struct BattleScriptsStack
{
    const u8 *ptr[8];
    u8 size;
};

struct BattleCallbacksStack
{
    void (*function[8])(void);
    u8 size;
};

struct StatsArray
{
    u16 stats[6];
};

struct BattleResources
{
    struct SecretBase* secretBase;
    struct ResourceFlags *flags;
    struct BattleScriptsStack* battleScriptsStack;
    struct BattleCallbacksStack* battleCallbackStack;
    struct StatsArray* beforeLvlUp;
    struct AI_ThinkingStruct *ai;
    struct BattleHistory *battleHistory;
    struct BattleScriptsStack *AI_ScriptsStack;
    u8 bufferA[4][0x200];
    u8 bufferB[4][0x200];
};

struct BattleResults
{
    u8 playerFaintCounter;
    u8 opponentFaintCounter;
    u8 playerSwitchesCounter;
    u8 numHealingItemsUsed;
    u8 numRevivesUsed;
    u8 playerMonWasDamaged:1;
    u8 usedMasterBall:1;
    u8 caughtMonBall:4;
    u8 shinyWildMon:1;
    u16 playerMon1Species;
    u8 playerMon1Name[10 + 1];
    u8 battleTurnCounter;
    u8 playerMon2Name[10 + 1];
    u8 pokeblockThrows;
    u16 lastOpponentSpecies;
    u16 lastUsedMovePlayer;
    u16 lastUsedMoveOpponent;
    u16 playerMon2Species;
    u16 caughtMonSpecies;
    u8 caughtMonNick[10 + 1];
    u8 filler35;
    u8 catchAttempts[POKEBALL_COUNT - 1];
};

struct BattleTv_Side
{
    u32 spikesMonId:3;
    u32 reflectMonId:3;
    u32 lightScreenMonId:3;
    u32 safeguardMonId:3;
    u32 mistMonId:3;
    u32 futureSightMonId:3;
    u32 doomDesireMonId:3;
    u32 perishSongMonId:3;
    u32 wishMonId:3;
    u32 grudgeMonId:3;
    u32 usedMoveSlot:2;
    u32 spikesMoveSlot:2;
    u32 reflectMoveSlot:2;
    u32 lightScreenMoveSlot:2;
    u32 safeguardMoveSlot:2;
    u32 mistMoveSlot:2;
    u32 futureSightMoveSlot:2;
    u32 doomDesireMoveSlot:2;
    u32 perishSongMoveSlot:2;
    u32 wishMoveSlot:2;
    u32 grudgeMoveSlot:2;
    u32 destinyBondMonId:3;
    u32 destinyBondMoveSlot:2;
    u32 faintCause:4;
    u32 faintCauseMonId:3;
    u32 explosion:1;
    u32 explosionMoveSlot:2;
    u32 explosionMonId:3;
    u32 perishSong:1;
};

struct BattleTv_Position
{
    u32 curseMonId:3;
    u32 leechSeedMonId:3;
    u32 nightmareMonId:3;
    u32 wrapMonId:3;
    u32 attractMonId:3;
    u32 confusionMonId:3;
    u32 curseMoveSlot:2;
    u32 leechSeedMoveSlot:2;
    u32 nightmareMoveSlot:2;
    u32 wrapMoveSlot:2;
    u32 attractMoveSlot:2;
    u32 confusionMoveSlot:2;
    u32 waterSportMoveSlot:2;
    u32 waterSportMonId:3;
    u32 mudSportMonId:3;
    u32 mudSportMoveSlot:2;
    u32 ingrainMonId:3;
    u32 ingrainMoveSlot:2;
    u32 attackedByMonId:3;
    u32 attackedByMoveSlot:2;
};

struct BattleTv_Mon
{
    u32 psnMonId:3;
    u32 badPsnMonId:3;
    u32 brnMonId:3;
    u32 prlzMonId:3;
    u32 slpMonId:3;
    u32 frzMonId:3;
    u32 psnMoveSlot:2;
    u32 badPsnMoveSlot:2;
    u32 brnMoveSlot:2;
    u32 prlzMoveSlot:2;
    u32 slpMoveSlot:2;
    u32 frzMoveSlot:2;
};

struct BattleTv
{
    struct BattleTv_Mon mon[2][6];
    struct BattleTv_Position pos[2][2];
    struct BattleTv_Side side[2];
};

struct BattleTvMovePoints
{
    s16 points[2][6 * 4];
};

struct MegaEvolutionData
{
    u8 toEvolve;
    u8 evolvedPartyIds[2];
    bool8 alreadyEvolved[4];
    u16 evolvedSpecies[4];
    u16 playerEvolvedSpecies;
    u8 battlerId;
    bool8 playerSelect;
    u8 triggerSpriteId;
    bool8 isWishMegaEvo;
};

struct Illusion
{
    u8 on;
    u8 set;
    u8 broken;
    u8 partyId;
    struct Pokemon *mon;
};

struct BattleStruct
{
    u8 turnEffectsTracker;
    u8 turnEffectsBattlerId;
    u8 turnCountersTracker;
    u16 wrappedMove[4];
    u8 moveTarget[4];
    u8 expGetterMonId;
    u8 wildVictorySong;
    u8 dynamicMoveType;
    u8 wrappedBy[4];
    u16 assistPossibleMoves[6 * 4];
    u8 focusPunchBattlerId;
    u8 battlerPreventingSwitchout;
    u8 moneyMultiplier;
    u8 savedTurnActionNumber;
    u8 switchInAbilitiesCounter;
    u8 faintedActionsState;
    u8 faintedActionsBattlerId;
    u16 expValue;
    u8 field_52;
    u8 sentInPokes;
    bool8 selectionScriptFinished[4];
    u8 field_58[4];
    u8 monToSwitchIntoId[4];
    u8 field_60[4][3];
    u8 runTries;
    u8 caughtMonNick[10 + 1];
    u8 safariGoNearCounter;
    u8 safariPkblThrowCounter;
    u8 safariEscapeFactor;
    u8 safariCatchFactor;
    u8 linkBattleVsSpriteId_V;
    u8 linkBattleVsSpriteId_S;
    u8 formToChangeInto;
    u8 chosenMovePositions[4];
    u8 stateIdAfterSelScript[4];
    u8 field_8B;
    u8 stringMoveType;
    u8 expGetterBattlerId;
    u8 field_91;
    u8 palaceFlags;
    u8 field_93;
    u8 wallyBattleState;
    u8 wallyMovesState;
    u8 wallyWaitFrames;
    u8 wallyMoveFrames;
    u16 lastTakenMove[4];
    u16 hpOnSwitchout[2];
    u32 savedBattleTypeFlags;
    u16 abilityPreventingSwitchout;
    u8 hpScale;
    u16 synchronizeMoveEffect;
    bool8 anyMonHasTransformed;
    void (*savedCallback)(void);
    u16 usedHeldItems[4];
    u16 chosenItem[4];
    u8 AI_itemType[2];
    u8 AI_itemFlags[2];
    u16 choicedMove[4];
    u16 changedItems[4];
    u8 intimidateBattler;
    u8 switchInItemsCounter;
    u8 arenaTurnCounter;
    u8 turnSideTracker;
    u8 givenExpMons;
    u16 lastTakenMoveFrom[4][4];
    u16 castformPalette[4][16];
    u8 field_180;
    u8 field_181;
    u8 field_182;
    u8 field_183;
    struct BattleEnigmaBerry battleEnigmaBerry;
    u8 wishPerishSongState;
    u8 wishPerishSongBattlerId;
    bool8 overworldWeatherDone;
    u8 atkCancellerTracker;
    struct BattleTvMovePoints tvMovePoints;
    struct BattleTv tv;
    u8 AI_monToSwitchIntoId[4];
    s8 arenaMindPoints[2];
    s8 arenaSkillPoints[2];
    u16 arenaStartHp[2];
    u8 arenaLostPlayerMons;
    u8 arenaLostOpponentMons;
    u8 alreadyStatusedMoveAttempt;
    u8 debugBattler;
    u8 magnitudeBasePower;
    u8 presentBasePower;
    u8 roostTypes[4][3];
    u8 savedBattlerTarget;
    bool8 ateBoost[4];
    u8 activeAbilityPopUps;
    u8 abilityPopUpSpriteIds[4][2];
    bool8 throwingPokeBall;
    struct MegaEvolutionData mega;
    const u8 *trainerSlideMsg;
    bool8 trainerSlideLowHpMsgDone;
    u8 introState;
    u8 ateBerry[2];
    u8 stolenStats[6 + 2];
    u8 lastMoveFailed;
    u8 lastMoveTarget[4];
    u8 debugHoldEffects[4];
    u16 tracedAbility[4];
    u16 hpBefore[4];
    bool8 spriteIgnore0Hp;
    struct Illusion illusion[4];
    s8 aiFinalScore[4][4][4];
    u8 soulheartBattlerId;
    u8 friskedBattler;
    bool8 friskedAbility;
    u8 sameMoveTurns[4];
    u16 moveEffect2;
    u16 changedSpecies[6];
 u8 ballSpriteIds[2];
};
# 587 "include/battle.h"
struct BattleScripting
{
    s32 painSplitHp;
    s32 bideDmg;
    u8 multihitString[6];
    bool8 expOnCatch;
    u8 twoTurnsMoveStringId;
    u8 animArg1;
    u8 animArg2;
    u16 tripleKickPower;
    u8 moveendState;
    u8 savedStatChanger;
    u8 shiftSwitched;
    u8 battler;
    u8 animTurn;
    u8 animTargetsHit;
    u8 statChanger;
    bool8 statAnimPlayed;
    u8 getexpState;
    u8 battleStyle;
    u8 drawlvlupboxState;
    u8 learnMoveState;
    u8 savedBattler;
    u8 reshowMainState;
    u8 reshowHelperState;
    u8 levelUpHP;
    u8 windowsType;
    u8 multiplayerId;
    u8 specialTrainerBattleType;
    bool8 monCaught;
    s32 savedDmg;
    u16 savedMoveEffect;
    u16 moveEffect;
    u16 multihitMoveEffect;
    u8 illusionNickHack;
    bool8 fixedPopup;
};




struct BattleSpriteInfo
{
    u16 invisible:1;
    u16 lowHpSong:1;
    u16 behindSubstitute:1;
    u16 flag_x8:1;
    u16 hpNumbersNoBars:1;
    u16 transformSpecies;
};

struct BattleAnimationInfo
{
    u16 animArg;
    u8 field_2;
    u8 field_3;
    u8 field_4;
    u8 field_5;
    u8 field_6;
    u8 field_7;
    u8 ballThrowCaseId:6;
    u8 isCriticalCapture:1;
    u8 criticalCaptureSuccess:1;
    u8 field_9_x1:1;
    u8 wildMonInvisible:1;
    u8 field_9_x1C:3;
    u8 field_9_x20:1;
    u8 field_9_x40:1;
    u8 field_9_x80:1;
    u8 numBallParticles;
    u8 field_B;
    s16 ballSubpx;
    u8 field_E;
    u8 field_F;
};

struct BattleHealthboxInfo
{
    u8 partyStatusSummaryShown:1;
    u8 healthboxIsBouncing:1;
    u8 battlerIsBouncing:1;
    u8 ballAnimActive:1;
    u8 statusAnimActive:1;
    u8 animFromTableActive:1;
    u8 specialAnimActive:1;
    u8 triedShinyMonAnim:1;
    u8 finishedShinyMonAnim:1;
    u8 field_1_x1E:4;
    u8 field_1_x20:1;
    u8 field_1_x40:1;
    u8 field_1_x80:1;
    u8 healthboxBounceSpriteId;
    u8 battlerBounceSpriteId;
    u8 animationState;
    u8 field_5;
    u8 matrixNum;
    u8 shadowSpriteId;
    u8 field_8;
    u8 field_9;
    u8 field_A;
    u8 field_B;
};

struct BattleBarInfo
{
    u8 healthboxSpriteId;
    u8 oddFrame;
    s32 maxValue;
    s32 oldValue;
    s32 receivedValue;
    s32 currValue;
};

struct BattleSpriteData
{
    struct BattleSpriteInfo *battlerData;
    struct BattleHealthboxInfo *healthBoxesData;
    struct BattleAnimationInfo *animationData;
    struct BattleBarInfo *battleBars;
};



struct MonSpritesGfx
{
    void* firstDecompressed;
    void* sprites[4];
    struct SpriteTemplate templates[4];
    struct SpriteFrameImage field_74[4][4];
    u8 field_F4[0x80];
    u8 *barFontGfx;
    void *field_178;
    u16 *buffer;
};


extern u16 gBattle_BG0_X;
extern u16 gBattle_BG0_Y;
extern u16 gBattle_BG1_X;
extern u16 gBattle_BG1_Y;
extern u16 gBattle_BG2_X;
extern u16 gBattle_BG2_Y;
extern u16 gBattle_BG3_X;
extern u16 gBattle_BG3_Y;
extern u16 gBattle_WIN0H;
extern u16 gBattle_WIN0V;
extern u16 gBattle_WIN1H;
extern u16 gBattle_WIN1V;
extern u8 gDisplayedStringBattle[400];
extern u8 gBattleTextBuff1[18];
extern u8 gBattleTextBuff2[18];
extern u8 gBattleTextBuff3[18];
extern u32 gBattleTypeFlags;
extern u8 gBattleTerrain;
extern u32 gUnknown_02022FF4;
extern u8 *gUnknown_0202305C;
extern u8 *gUnknown_02023060;
extern u8 gActiveBattler;
extern u32 gBattleControllerExecFlags;
extern u8 gBattlersCount;
extern u16 gBattlerPartyIndexes[4];
extern u8 gBattlerPositions[4];
extern u8 gActionsByTurnOrder[4];
extern u8 gBattlerByTurnOrder[4];
extern u8 gCurrentTurnActionNumber;
extern u8 gCurrentActionFuncId;
extern struct BattlePokemon gBattleMons[4];
extern u8 gBattlerSpriteIds[4];
extern u8 gCurrMovePos;
extern u8 gChosenMovePos;
extern u16 gCurrentMove;
extern u16 gChosenMove;
extern u16 gCalledMove;
extern s32 gBattleMoveDamage;
extern s32 gHpDealt;
extern s32 gTakenDmg[4];
extern u16 gLastUsedItem;
extern u16 gLastUsedAbility;
extern u8 gBattlerAttacker;
extern u8 gBattlerTarget;
extern u8 gBattlerFainted;
extern u8 gEffectBattler;
extern u8 gPotentialItemEffectBattler;
extern u8 gAbsentBattlerFlags;
extern u8 gIsCriticalHit;
extern u8 gMultiHitCounter;
extern const u8 *gBattlescriptCurrInstr;
extern u8 gChosenActionByBattler[4];
extern const u8 *gSelectionBattleScripts[4];
extern const u8 *gPalaceSelectionBattleScripts[4];
extern u16 gLastPrintedMoves[4];
extern u16 gLastMoves[4];
extern u16 gLastLandedMoves[4];
extern u16 gLastHitByType[4];
extern u16 gLastResultingMoves[4];
extern u16 gLockedMoves[4];
extern u16 gLastUsedMove;
extern u8 gLastHitBy[4];
extern u16 gChosenMoveByBattler[4];
extern u16 gMoveResultFlags;
extern u32 gHitMarker;
extern u8 gTakenDmgByBattler[4];
extern u8 gUnknown_0202428C;
extern u32 gSideStatuses[2];
extern struct SideTimer gSideTimers[2];
extern u32 gStatuses3[4];
extern struct DisableStruct gDisableStructs[4];
extern u16 gPauseCounterBattle;
extern u16 gPaydayMoney;
extern u16 gRandomTurnNumber;
extern u8 gBattleCommunication[0x8];
extern u8 gBattleOutcome;
extern struct ProtectStruct gProtectStructs[4];
extern struct SpecialStatus gSpecialStatuses[4];
extern u16 gBattleWeather;
extern struct WishFutureKnock gWishFutureKnock;
extern u16 gIntroSlideFlags;
extern u8 gSentPokesToOpponent[2];
extern u16 gExpShareExp;
extern struct BattleEnigmaBerry gEnigmaBerries[4];
extern struct BattleScripting gBattleScripting;
extern struct BattleStruct *gBattleStruct;
extern u8 *gLinkBattleSendBuffer;
extern u8 *gLinkBattleRecvBuffer;
extern struct BattleResources *gBattleResources;
extern u8 gActionSelectionCursor[4];
extern u8 gMoveSelectionCursor[4];
extern u8 gBattlerStatusSummaryTaskId[4];
extern u8 gBattlerInMenuId;
extern bool8 gDoingBattleAnim;
extern u32 gTransformedPersonalities[4];
extern u8 gPlayerDpadHoldFrames;
extern struct BattleSpriteData *gBattleSpritesDataPtr;
extern struct MonSpritesGfx *gMonSpritesGfxPtr;
extern struct BattleHealthboxInfo *gUnknown_020244D8;
extern struct BattleHealthboxInfo *gUnknown_020244DC;
extern u16 gBattleMovePower;
extern u16 gMoveToLearn;
extern u8 gBattleMonForms[4];
extern u32 gFieldStatuses;
extern struct FieldTimer gFieldTimers;
extern u8 gBattlerAbility;
extern u16 gPartnerSpriteId;

extern void (*gPreBattleCallback1)(void);
extern void (*gBattleMainFunc)(void);
extern struct BattleResults gBattleResults;
extern u8 gLeveledUpInBattle;
extern void (*gBattlerControllerFuncs[4])(void);
extern u8 gHealthboxSpriteIds[4];
extern u8 gMultiUsePlayerCursor;
extern u8 gNumberOfMovesToChoose;
extern u8 gUnknown_03005D7C[4];
# 4 "src/battle_ai_script_commands.c" 2
# 1 "include/battle_anim.h" 1



# 1 "include/battle.h" 1
# 5 "include/battle_anim.h" 2
# 1 "include/constants/battle_anim.h" 1
# 6 "include/battle_anim.h" 2
# 1 "include/task.h" 1
# 10 "include/task.h"
typedef void (*TaskFunc)(u8 taskId);

struct Task
{
    TaskFunc func;
    bool8 isActive;
    u8 prev;
    u8 next;
    u8 priority;
    s16 data[16];
};

extern struct Task gTasks[];

void ResetTasks(void);
u8 CreateTask(TaskFunc func, u8 priority);
void DestroyTask(u8 taskId);
void RunTasks(void);
void TaskDummy(u8 taskId);
void SetTaskFuncWithFollowupFunc(u8 taskId, TaskFunc func, TaskFunc followupFunc);
void SwitchTaskToFollowupFunc(u8 taskId);
bool8 FuncIsActiveTask(TaskFunc func);
u8 FindTaskIdByFunc(TaskFunc func);
u8 GetTaskCount(void);
void SetWordTaskArg(u8 taskId, u8 dataElem, u32 value);
u32 GetWordTaskArg(u8 taskId, u8 dataElem);
# 7 "include/battle_anim.h" 2

enum
{
    BG_ANIM_SCREEN_SIZE,
    BG_ANIM_AREA_OVERFLOW_MODE,
    BG_ANIM_MOSAIC,
    BG_ANIM_CHAR_BASE_BLOCK,
    BG_ANIM_PRIORITY,
    BG_ANIM_PALETTES_MODE,
    BG_ANIM_SCREEN_BASE_BLOCK,
};

struct BattleAnimBgData
{
    u8 *bgTiles;
    u16 *bgTilemap;
    u8 paletteId;
    u8 bgId;
    u16 tilesOffset;
    u16 unused;
};

struct BattleAnimBackground
{
    const u32 *image;
    const u32 *palette;
    const u32 *tilemap;
};



extern void (*gAnimScriptCallback)(void);
extern bool8 gAnimScriptActive;
extern u8 gAnimVisualTaskCount;
extern u8 gAnimSoundTaskCount;
extern struct DisableStruct *gAnimDisableStructPtr;
extern s32 gAnimMoveDmg;
extern u16 gAnimMovePower;
extern u8 gAnimFriendship;
extern u16 gWeatherMoveAnim;
extern s16 gBattleAnimArgs[8];
extern u8 gAnimMoveTurn;
extern u8 gBattleAnimAttacker;
extern u8 gBattleAnimTarget;
extern u16 gAnimBattlerSpecies[4];
extern u8 gAnimCustomPanning;
extern u16 gAnimMoveIndex;

void ClearBattleAnimationVars(void);
void DoMoveAnim(u16 move);
void LaunchBattleAnimation(const u8 *const animsTable[], u16 tableId, bool8 isMoveAnim);
void DestroyAnimSprite(struct Sprite *sprite);
void DestroyAnimVisualTask(u8 taskId);
void DestroyAnimSoundTask(u8 taskId);
u8 GetAnimBattlerId(u8 wantedBattler);
bool8 IsBattlerSpriteVisible(u8 battlerId);
void MoveBattlerSpriteToBG(u8 battlerId, bool8 toBG_2, bool8 setSpriteInvisible);
bool8 IsContest(void);
s8 BattleAnimAdjustPanning(s8 pan);
s8 BattleAnimAdjustPanning2(s8 pan);
s16 KeepPanInRange(s16 a, int oldPan);
s16 CalculatePanIncrement(s16 sourcePan, s16 targetPan, s16 incrementPan);
void sub_80A4720(u16 a, u16 *b, u32 c, u8 d);
void sub_80A477C(bool8);
void LoadMoveBg(u16 bgId);


void SetAnimBgAttribute(u8 bgId, u8 attributeId, u8 value);
void sub_8118FBC(int bgId, u8 arg1, u8 arg2, u8 battlerPosition, u8 arg4, u8 *arg5, u16 *arg6, u16 arg7);
void HandleIntroSlide(u8 terrainId);
int GetAnimBgAttribute(u8 bgId, u8 attributeId);


void TranslateSpriteInEllipseOverDuration(struct Sprite *sprite);
void sub_80A8AEC(struct Sprite *sprite);
void sub_80A8A6C(struct Sprite *sprite);
void AnimWeatherBallUp(struct Sprite *sprite);
void AnimWeatherBallDown(struct Sprite *sprite);
void AnimSpinningSparkle(struct Sprite *sprite);
void SetAverageBattlerPositions(u8 battlerId, bool8 respectMonPicOffsets, s16 *x, s16 *y);
void DestroySpriteAndMatrix(struct Sprite *sprite);
void TranslateSpriteLinearFixedPoint(struct Sprite *sprite);
void InitSpritePosToAnimAttacker(struct Sprite *sprite, bool8 respectMonPicOffsets);
void InitSpritePosToAnimTarget(struct Sprite *sprite, bool8 respectMonPicOffsets);
bool32 InitSpritePosToAnimBattler(u32 animBattlerId, struct Sprite *sprite, bool8 respectMonPicOffsets);
void StartAnimLinearTranslation(struct Sprite *sprite);
void InitAnimArcTranslation(struct Sprite *sprite);
bool8 AnimTranslateLinear(struct Sprite *sprite);
void TranslateAnimSpriteToTargetMonLocation(struct Sprite *sprite);
u8 GetBattlerSpriteCoord2(u8 battlerId, u8 attributeId);
void sub_80A6FD4(struct Sprite *sprite);
u16 ArcTan2Neg(s16 a, s16 b);
void TrySetSpriteRotScale(struct Sprite *sprite, bool8 a2, s16 xScale, s16 yScale, u16 rotation);
void RunStoredCallbackWhenAffineAnimEnds(struct Sprite *sprite);
void TranslateSpriteLinearAndFlicker(struct Sprite *sprite);
void SetSpriteCoordsToAnimAttackerCoords(struct Sprite *sprite);
void RunStoredCallbackWhenAnimEnds(struct Sprite *sprite);
void SetAnimSpriteInitialXOffset(struct Sprite *sprite, s16 a2);
s16 GetBattlerSpriteCoordAttr(u8 battlerId, u8 a2);
u8 GetBattlerYCoordWithElevation(u8 battlerId);
void WaitAnimForDuration(struct Sprite *sprite);
void AnimTravelDiagonally(struct Sprite *sprite);
void InitAnimLinearTranslation(struct Sprite *sprite);
void sub_80A6F98(struct Sprite *sprite);
u8 GetBattlerSpriteBGPriority(u8 battlerId);
void *LoadPointerFromVars(s16 bottom, s16 top);
void StorePointerInVars(s16 *bottom, s16 *top, const void *ptr);
void sub_80A8278(void);
void sub_80A6B30(struct BattleAnimBgData*);
void sub_80A6B90(struct BattleAnimBgData*, u32 arg1);
u8 GetBattlerSpriteSubpriority(u8 battlerId);
bool8 TranslateAnimHorizontalArc(struct Sprite *sprite);
void sub_80A6630(struct Sprite *sprite);
void TranslateMonSpriteLinearFixedPoint(struct Sprite *sprite);
void ResetSpriteRotScale(u8 spriteId);
void SetSpriteRotScale(u8 spriteId, s16 xScale, s16 yScale, u16 rotation);
void InitSpriteDataForLinearTranslation(struct Sprite *sprite);
void PrepareBattlerSpriteForRotScale(u8 spriteId, u8 objMode);
void SetBattlerSpriteYOffsetFromRotation(u8 spriteId);
u32 sub_80A75AC(u8 a1, u8 a2, u8 a3, u8 a4, u8 a5, u8 a6, u8 a7);
u32 sub_80A76C4(u8 a1, u8 a2, u8 a3, u8 a4);
u8 sub_80A77AC(u8 a1);
s16 CloneBattlerSpriteWithBlend(u8);
void obj_delete_but_dont_free_vram(struct Sprite*);
u8 sub_80A89C8(int, u8, int);
void AnimLoadCompressedBgTilemapHandleContest(struct BattleAnimBgData*, const void*, u32);
void AnimLoadCompressedBgGfx(u32, const u32*, u32);
void sub_80A6DAC(bool8);
void TranslateSpriteInGrowingCircleOverDuration(struct Sprite *);
void sub_80A653C(struct Sprite *);
void SetBattlerSpriteYOffsetFromYScale(u8 spriteId);
void sub_80A805C(struct Task *task, u8 a2, s16 a3, s16 a4, s16 a5, s16 a6, u16 a7);
u8 sub_80A80C8(struct Task *task);
void DestroyAnimSpriteAndDisableBlend(struct Sprite *);
void AnimLoadCompressedBgTilemap(u32 bgId, const void *src);
void InitAnimFastLinearTranslationWithSpeed(struct Sprite *sprite);
bool8 AnimFastTranslateLinear(struct Sprite *sprite);
void InitAndRunAnimFastLinearTranslation(struct Sprite *sprite);
void TranslateMonSpriteLinear(struct Sprite *sprite);
void TranslateSpriteLinear(struct Sprite *sprite);
void AnimSpriteOnMonPos(struct Sprite *sprite);
void sub_80A7000(struct Sprite *sprite);
void TranslateSpriteInCircleOverDuration(struct Sprite *sprite);
void SetGreyscaleOrOriginalPalette(u16 palNum, bool8 restoreOriginal);
void PrepareAffineAnimInTaskData(struct Task *task, u8 spriteId, const union AffineAnimCmd *affineAnimCmds);
bool8 RunAffineAnimFromTaskData(struct Task *task);
void AnimThrowProjectile(struct Sprite *sprite);
void sub_80A6BFC(struct BattleAnimBgData *unk, u8 unused);
u8 sub_80A8394(u16 species, bool8 isBackpic, u8 a3, s16 x, s16 y, u8 subpriority, u32 personality, u32 trainerId, u32 battlerId, u32 a10, u8 formId);
void sub_80A749C(struct Sprite *sprite);
void TradeMenuBouncePartySprites(struct Sprite *sprite);
void DestroyAnimVisualTaskAndDisableBlend(u8 taskId);
void DestroySpriteAndFreeResources_(struct Sprite *sprite);
void SetBattlerSpriteYOffsetFromOtherYScale(u8 spriteId, u8 otherSpriteId);
u8 GetBattlerSide(u8 battler);
u8 GetBattlerPosition(u8 battler);
u8 GetBattlerAtPosition(u8 position);
void sub_80A64EC(struct Sprite *sprite);
void sub_80A718C(struct Sprite *sprite);

enum
{
    BATTLER_COORD_X,
    BATTLER_COORD_Y,
    BATTLER_COORD_X_2,
    BATTLER_COORD_Y_PIC_OFFSET,
    BATTLER_COORD_Y_PIC_OFFSET_DEFAULT,
};

enum
{
    BATTLER_COORD_ATTR_HEIGHT,
    BATTLER_COORD_ATTR_WIDTH,
    BATTLER_COORD_ATTR_TOP,
    BATTLER_COORD_ATTR_BOTTOM,
    BATTLER_COORD_ATTR_LEFT,
    BATTLER_COORD_ATTR_RIGHT,
    BATTLER_COORD_ATTR_RAW_BOTTOM,
};

u8 GetBattlerSpriteCoord(u8 battlerId, u8 attributeId);

bool8 IsBattlerSpritePresent(u8 battlerId);
void sub_80A6C68(u32 arg0);
u8 GetAnimBattlerSpriteId(u8 wantedBattler);
bool8 IsDoubleBattle(void);
u8 GetBattleBgPaletteNum(void);
u8 GetBattlerSpriteBGPriorityRank(u8 battlerId);
void StoreSpriteCallbackInData6(struct Sprite *sprite, void (*spriteCallback)(struct Sprite*));
void SetSpritePrimaryCoordsFromSecondaryCoords(struct Sprite *sprite);
u8 GetBattlerSpriteDefault_Y(u8 battlerId);
u8 GetSubstituteSpriteDefault_Y(u8 battlerId);
# 209 "include/battle_anim.h"
void LaunchStatusAnimation(u8 battlerId, u8 statusAnimId);


void AnimTask_HorizontalShake(u8 taskId);
void AnimMudSportDirt(struct Sprite *sprite);
void AnimDirtScatter(struct Sprite *sprite);
void AnimMudSportDirtRising(struct Sprite *sprite);
extern const union AffineAnimCmd *const gAffineAnims_SpinningBone[];


void TryShinyAnimation(u8 battler, struct Pokemon *mon);
u8 ItemIdToBallId(u16 itemId);
u8 AnimateBallOpenParticles(u8 x, u8 y, u8 priority, u8 subpriority, u8 ballId);
u8 LaunchBallFadeMonTask(bool8 unFadeLater, u8 battlerId, u32 selectedPalettes, u8 ballId);
bool32 IsCriticalCapture(void);


void sub_8116EB4(u8);
void sub_8117854(u8 taskId, int unused, u16 arg2, u8 battler1, u8 arg4, u8 arg5, u8 arg6, u8 arg7, const u32 *arg8, const u32 *arg9, const u32 *palette);


void SetSpriteNextToMonHead(u8 battler, struct Sprite* sprite);
void AnimMoveTwisterParticle(struct Sprite* sprite);
void AnimParticleBurst(struct Sprite *);
void AnimPowerAbsorptionOrb(struct Sprite* sprite);
void AnimNeedleArmSpike(struct Sprite *);
void AnimTask_CompressTargetHorizontally(u8 taskId);
void AnimSporeParticle(struct Sprite* sprite);
void AnimAbsorptionOrb(struct Sprite* sprite);
void AnimPetalDanceSmallFlower(struct Sprite* sprite);
void AnimPetalDanceBigFlower(struct Sprite* sprite);
void AnimEndureEnergy(struct Sprite* sprite);
void AnimMimicOrb(struct Sprite* sprite);
void AnimSolarbeamBigOrb(struct Sprite* sprite);
void AnimHyperBeamOrb(struct Sprite* sprite);
void AnimNeedleArmSpike_Step(struct Sprite* sprite);
void AnimMovePowderParticle(struct Sprite* sprite);
void AnimMetronomeFinger(struct Sprite* sprite);
void AnimConversion(struct Sprite* sprite);
void AnimCuttingSlice(struct Sprite* sprite);
void AnimThoughtBubble(struct Sprite* sprite);
void AnimTranslateLinearSingleSineWave(struct Sprite* sprite);
void AnimGrantingStars(struct Sprite* sprite);
void AnimFollowMeFinger(struct Sprite* sprite);
extern const union AnimCmd *const gRazorLeafParticleAnimTable[];
extern const union AnimCmd *const gPowerAbsorptionOrbAnimTable[];
extern const union AffineAnimCmd *const gPowerAbsorptionOrbAffineAnimTable[];
extern const union AnimCmd *const gMusicNotesAnimTable[];
extern const union AffineAnimCmd *const gMimicOrbAffineAnimTable[];
extern const union AnimCmd *const gSolarbeamBigOrbAnimTable[];
extern const union AnimCmd *const gPowderParticlesAnimTable[];
extern const union AffineAnimCmd *const gMetronomeFingerAffineAnimTable[];
extern const union AnimCmd *const gPetalDanceBigFlowerAnimTable[];
extern const union AnimCmd *const gOctazookaAnimTable[];
extern const union AffineAnimCmd *const gAbsorptionOrbAffineAnimTable[];
extern const union AnimCmd *const gGrantingStarsAnimTable[];
extern const union AnimCmd *const gSporeParticleAnimTable[];
extern const union AnimCmd *const gHealingBlueStarAnimTable[];
extern const union AnimCmd *const gMoonlightSparkleAnimTable[];
extern const union AnimCmd *const gEndureEnergyAnimTable[];
extern const union AnimCmd *const gPetalDanceSmallFlowerAnimTable[];
extern const union AnimCmd *const gConversionAnimTable[];
extern const union AffineAnimCmd *const gConversionAffineAnimTable[];
extern const union AnimCmd *const gCuttingSliceAnimTable[];
extern const union AnimCmd *const gScratchAnimTable[];
extern const union AnimCmd *const gIngrainRootAnimTable[];
extern const union AffineAnimCmd *const gSwiftStarAffineAnimTable[];
extern const union AnimCmd *const gMetronomeThroughtBubbleAnimTable[];


void AnimUproarRing(struct Sprite *sprite);
void AnimSonicBoomProjectile(struct Sprite *sprite);
void AnimOrbitFast(struct Sprite *sprite);
void AnimOrbitScatter(struct Sprite *sprite);
void AnimAngerMark(struct Sprite *sprite);
void AnimHyperVoiceRing(struct Sprite *sprite);
extern const union AffineAnimCmd *const gThinRingShrinkingAffineAnimTable[];
extern const union AffineAnimCmd *const gThinRingExpandingAffineAnimTable[];
extern const union AnimCmd *const gExplosionAnimTable[];
extern const union AffineAnimCmd *const gGuardRingAffineAnimTable[];
extern const union AffineAnimCmd *const gAngerMarkAffineAnimTable[];
extern const union AffineAnimCmd *const gWaterPulseRingAffineAnimTable[];
extern const union AffineAnimCmd *const gHyperVoiceRingAffineAnimTable[];
extern const union AnimCmd *const gCoinAnimTable[];
extern const union AffineAnimCmd *const gHiddenPowerOrbAffineAnimTable[];


void AnimBlackSmoke(struct Sprite *sprite);
void AnimSweetScentPetal(struct Sprite *sprite);
void AnimTealAlert(struct Sprite *sprite);
void AnimBlockX(struct Sprite *sprite);
extern const union AnimCmd *const gOpeningEyeAnimTable[];
extern const union AnimCmd *const gEclipsingOrbAnimTable[];


void AnimWaterPulseRing(struct Sprite *sprite);
void AnimSmallBubblePair(struct Sprite *sprite);
void AnimWaterPulseBubble(struct Sprite *sprite);
extern const union AnimCmd *const gAnims_WaterBubbleProjectile[];
extern const union AnimCmd *const gAnims_FlamethrowerFlame[];
extern const union AnimCmd *const gAnims_WaterPulseBubble[];


void DestroyAnimSpriteAfterTimer(struct Sprite *sprite);
void sub_810E2C8(struct Sprite *sprite);
void AnimAirWaveCrescent(struct Sprite *sprite);
void AnimFlyBallUp(struct Sprite *sprite);
void AnimFlyBallAttack(struct Sprite *sprite);
void AnimFlyBallAttack_Step(struct Sprite *sprite);
void AnimFlyBallUp_Step(struct Sprite *sprite);
extern const union AnimCmd *const gAffineAnims_AirWaveCrescent[];
extern const union AffineAnimCmd *const gAffineAnims_FlyBallUp[];
extern const union AffineAnimCmd *const gAffineAnims_FlyBallAttack[];


void AnimSludgeBombHitParticle(struct Sprite *);
void AnimAcidPoisonBubble_Step(struct Sprite *sprite);
extern const union AffineAnimCmd *const gAffineAnims_PoisonProjectile[];
extern const union AnimCmd *const gAnims_PoisonProjectile[];
extern const union AnimCmd *const gAnims_AcidPoisonDroplet[];


void AnimGhostStatusSprite(struct Sprite *sprite);
void AnimShadowBall(struct Sprite *sprite);
void AnimTask_GrudgeFlames_Step(u8 taskId);
extern const union AffineAnimCmd *const gAffineAnims_ShadowBall[];


extern const union AffineAnimCmd *const gAffineAnims_PsychoBoostOrb[];
extern const union AffineAnimCmd *const gAffineAnims_LusterPurgeCircle[];
void AnimPsychoBoost(struct Sprite *sprite);


u8 SmokescreenImpact(s16 x, s16 y, u8 a3);

u32 UnpackSelectedBattleAnimPalettes(s16);

u8 GetBattlerSpriteFinal_Y(u8, u16, u8);

extern const struct OamData gOamData_AffineOff_ObjNormal_8x16;
extern const struct OamData gOamData_AffineNormal_ObjBlend_16x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_8x8;
extern const struct OamData gOamData_AffineDouble_ObjNormal_8x8;
extern const struct OamData gOamData_AffineOff_ObjNormal_16x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x16;
extern const struct OamData gOamData_AffineNormal_ObjNormal_32x32;
extern const struct OamData gOamData_AffineNormal_ObjNormal_64x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_16x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x32;
extern const struct OamData gOamData_AffineNormal_ObjNormal_16x16;
extern const struct OamData gOamData_AffineOff_ObjBlend_32x32;
extern const struct OamData gOamData_AffineOff_ObjBlend_64x64;
extern const struct OamData gOamData_AffineNormal_ObjBlend_32x32;
extern const struct OamData gOamData_AffineOff_ObjNormal_16x32;
extern const struct OamData gOamData_AffineDouble_ObjBlend_8x8;
extern const struct OamData gOamData_AffineDouble_ObjNormal_32x32;
extern const struct OamData gOamData_AffineNormal_ObjBlend_64x64;
extern const struct OamData gOamData_AffineNormal_ObjBlend_32x64;
extern const struct OamData gOamData_AffineDouble_ObjBlend_32x16;
extern const struct OamData gOamData_AffineOff_ObjBlend_32x16;
extern const struct OamData gOamData_AffineDouble_ObjNormal_16x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_32x64;
extern const struct OamData gOamData_AffineNormal_ObjNormal_32x64;
extern const struct OamData gOamData_AffineDouble_ObjBlend_32x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_64x64;
extern const struct OamData gOamData_AffineDouble_ObjBlend_64x64;
extern const struct OamData gOamData_AffineDouble_ObjBlend_64x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_8x16;
extern const struct OamData gOamData_AffineOff_ObjBlend_16x16;
extern const struct OamData gOamData_AffineDouble_ObjBlend_16x16;
extern const struct OamData gOamData_AffineNormal_ObjNormal_8x8;
extern const struct OamData gOamData_AffineDouble_ObjBlend_8x16;
extern const struct OamData gOamData_AffineOff_ObjBlend_8x8;
extern const struct OamData gOamData_AffineNormal_ObjBlend_8x16;
extern const struct OamData gOamData_AffineNormal_ObjBlend_8x8;
extern const struct OamData gOamData_AffineOff_ObjBlend_8x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_64x64;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x64;
extern const struct OamData gOamData_AffineNormal_ObjNormal_64x64;
extern const struct OamData gOamData_AffineDouble_ObjNormal_32x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_64x32;
extern const struct OamData gOamData_AffineOff_ObjBlend_64x32;
extern const struct OamData gOamData_AffineOff_ObjBlend_16x32;
extern const struct OamData gOamData_AffineDouble_ObjBlend_32x8;

extern const struct CompressedSpriteSheet gBattleAnimPicTable[];
extern const struct CompressedSpritePalette gBattleAnimPaletteTable[];

extern const struct SpriteTemplate gWaterHitSplatSpriteTemplate;

extern const union AnimCmd *const gAnims_WaterMudOrb[];
extern const union AnimCmd *const gAnims_BasicFire[];
extern const union AffineAnimCmd *const gGrowingRingAffineAnimTable[];
extern const union AffineAnimCmd *const gAffineAnims_Droplet[];
extern const union AnimCmd *const gAnims_SmallBubblePair[];
extern const union AnimCmd *const gAnims_WaterBubble[];
extern const union AffineAnimCmd *const gAffineAnims_Bite[];


extern const union AffineAnimCmd *const gAffineAnims_HitSplat[];
void AnimHitSplatBasic(struct Sprite *sprite);
void AnimFlashingHitSplat(struct Sprite *sprite);
void AnimFlashingHitSplat_Step(struct Sprite *sprite);
void AnimHitSplatRandom(struct Sprite *sprite);
void AnimCrossImpact(struct Sprite *sprite);
void AnimHitSplatOnMonEdge(struct Sprite *sprite);


void AnimThunderWave(struct Sprite *sprite);
void AnimGrowingChargeOrb(struct Sprite *sprite);
void AnimZapCannonSpark(struct Sprite *sprite);
void AnimSparkElectricity(struct Sprite *sprite);
void AnimElectricPuff(struct Sprite *sprite);
void AnimSparkElectricityFlashing(struct Sprite *sprite);
void AnimGrowingShockWaveOrb(struct Sprite *sprite);
extern const union AffineAnimCmd *const gAffineAnims_GrowingElectricOrb[];
extern const union AffineAnimCmd *const gAffineAnims_FlashingSpark[];
extern const union AnimCmd *const gAnims_ThunderboltOrb[];
extern const union AnimCmd *const gAnims_ElectricPuff[];
extern const union AnimCmd *const gAnims_ElectricChargingParticles[];


void AnimStompFoot(struct Sprite *sprite);
void AnimSpinningKickOrPunch(struct Sprite *sprite);
void AnimBrickBreakWall_Step(struct Sprite *sprite);
void AnimJumpKick(struct Sprite *sprite);
void AnimBasicFistOrFoot(struct Sprite *sprite);
void AnimSpinningKickOrPunchFinish(struct Sprite *sprite);
void AnimRevengeScratch(struct Sprite *sprite);
void AnimDizzyPunchDuck(struct Sprite *sprite);
extern const union AnimCmd *const gAnims_HandOrFoot[];
extern const union AffineAnimCmd *const gAffineAnims_MegaPunchKick[];
extern const union AffineAnimCmd *const gAffineAnims_SpinningHandOrFoot[];
extern const union AnimCmd *const gAnims_RevengeBigScratch[];


extern const union AffineAnimCmd *const gAffineAnims_Whirlpool[];
extern const union AffineAnimCmd *const gAffineAnims_BasicRock[];
void AnimParticleInVortex(struct Sprite *sprite);
void AnimFallingRock(struct Sprite *sprite);
void AnimRaiseSprite(struct Sprite *sprite);
void AnimFallingRock_Step(struct Sprite *sprite);
void AnimFlyingSandCrescent(struct Sprite *sprite);


void AnimClawSlash(struct Sprite *sprite);
void AnimTearDrop(struct Sprite *sprite);
void AnimBite(struct Sprite *sprite);
extern const union AnimCmd *const gAnims_ClawSlash[];
extern const union AffineAnimCmd *const gAffineAnims_TearDrop[];


void AnimStringWrap_Step(struct Sprite *sprite);
void AnimMissileArc(struct Sprite *sprite);
void AnimSpiderWeb(struct Sprite *sprite);
void AnimMissileArc_Step(struct Sprite *sprite);


void AnimThrowMistBall(struct Sprite *sprite);
void AnimMoveParticleBeyondTarget(struct Sprite *sprite);
void AnimIceEffectParticle(struct Sprite *sprite);
void AnimSwirlingSnowball_Step1(struct Sprite *sprite);
extern const union AnimCmd *const gAnims_Snowball[];
extern const union AffineAnimCmd *const gAffineAnims_IceCrystalHit[];
extern const union AnimCmd *const gAnims_IceCrystalLarge[];
extern const union AnimCmd *const gAnims_IceBallChunk[];
extern const union AnimCmd *const gAnims_BlizzardIceCrystal[];


void AnimFireSpread(struct Sprite *sprite);
void AnimFireSpiralOutward(struct Sprite *sprite);
extern const union AnimCmd *const gAnims_FireBlastCross[];


extern const union AnimCmd *const gAnims_DragonBreathFire[];
extern const union AnimCmd *const gAnims_DragonRageFirePlume[];
extern const union AffineAnimCmd *const gAffineAnims_DragonRageFire[];
extern const union AnimCmd *const gAnims_DragonRageFire[];
extern const union AffineAnimCmd *const gAffineAnims_DragonBreathFire[];
void AnimDragonRageFirePlume(struct Sprite *sprite);
void AnimDragonFireToTarget(struct Sprite *sprite);
void AnimDragonDanceOrb(struct Sprite *sprite);
void AnimOverheatFlame(struct Sprite *sprite);


void CoreEnforcerLoadBeamTarget(struct Sprite* sprite);
# 5 "src/battle_ai_script_commands.c" 2
# 1 "include/battle_ai_script_commands.h" 1
# 10 "include/battle_ai_script_commands.h"
s32 AI_CalcDamage(u16 move, u8 battlerAtk, u8 battlerDef);
s32 AI_CalcPartyMonDamage(u16 move, u8 battlerAtk, u8 battlerDef, struct Pokemon *mon);
u16 AI_GetTypeEffectiveness(u16 move, u8 battlerAtk, u8 battlerDef);
void BattleAI_SetupItems(void);
void BattleAI_SetupFlags(void);
void BattleAI_SetupAIData(u8 defaultScoreMoves);
u8 BattleAI_ChooseMoveOrAction(void);
bool32 IsTruantMonVulnerable(u32 battlerAI, u32 opposingBattler);
bool32 IsBattlerAIControlled(u32 battlerId);
void ClearBattlerMoveHistory(u8 battlerId);
void RecordLastUsedMoveBy(u32 battlerId, u32 move);
void RecordKnownMove(u8 battlerId, u32 move);
void RecordAbilityBattle(u8 battlerId, u16 abilityId);
void ClearBattlerAbilityHistory(u8 battlerId);
void RecordItemEffectBattle(u8 battlerId, u8 itemEffect);
void ClearBattlerItemEffectHistory(u8 battlerId);
# 6 "src/battle_ai_script_commands.c" 2
# 1 "include/battle_factory.h" 1



void CallBattleFactoryFunction(void);
bool8 InBattleFactory(void);
u8 GetFactoryMonFixedIV(u8 arg0, u8 arg1);
void FillFactoryBrainParty(void);
u8 GetNumPastRentalsRank(u8 battleMode, u8 lvlMode);
u32 GetAiScriptsInBattleFactory(void);
void SetMonMoveAvoidReturn(struct Pokemon *mon, u16 moveArg, u8 moveSlot);
# 7 "src/battle_ai_script_commands.c" 2
# 1 "include/battle_setup.h" 1



# 1 "include/gym_leader_rematch.h" 1



enum {
    REMATCH_ROSE,
    REMATCH_ANDRES,
    REMATCH_DUSTY,
    REMATCH_LOLA,
    REMATCH_RICKY,
    REMATCH_LILA_AND_ROY,
    REMATCH_CRISTIN,
    REMATCH_BROOKE,
    REMATCH_WILTON,
    REMATCH_VALERIE,
    REMATCH_CINDY,
    REMATCH_THALIA,
    REMATCH_JESSICA,
    REMATCH_WINSTON,
    REMATCH_STEVE,
    REMATCH_TONY,
    REMATCH_NOB,
    REMATCH_KOJI,
    REMATCH_FERNANDO,
    REMATCH_DALTON,
    REMATCH_BERNIE,
    REMATCH_ETHAN,
    REMATCH_JOHN_AND_JAY,
    REMATCH_JEFFREY,
    REMATCH_CAMERON,
    REMATCH_JACKI,
    REMATCH_WALTER,
    REMATCH_KAREN,
    REMATCH_JERRY,
    REMATCH_ANNA_AND_MEG,
    REMATCH_ISABEL,
    REMATCH_MIGUEL,
    REMATCH_TIMOTHY,
    REMATCH_SHELBY,
    REMATCH_CALVIN,
    REMATCH_ELLIOT,
    REMATCH_ISAIAH,
    REMATCH_MARIA,
    REMATCH_ABIGAIL,
    REMATCH_DYLAN,
    REMATCH_KATELYN,
    REMATCH_BENJAMIN,
    REMATCH_PABLO,
    REMATCH_NICOLAS,
    REMATCH_ROBERT,
    REMATCH_LAO,
    REMATCH_CYNDY,
    REMATCH_MADELINE,
    REMATCH_JENNY,
    REMATCH_DIANA,
    REMATCH_AMY_AND_LIV,
    REMATCH_ERNEST,
    REMATCH_CORY,
    REMATCH_EDWIN,
    REMATCH_LYDIA,
    REMATCH_ISAAC,
    REMATCH_GABRIELLE,
    REMATCH_CATHERINE,
    REMATCH_JACKSON,
    REMATCH_HALEY,
    REMATCH_JAMES,
    REMATCH_TRENT,
    REMATCH_SAWYER,
    REMATCH_KIRA_AND_DAN,
    REMATCH_WALLY_3,
    REMATCH_ROXANNE,
    REMATCH_BRAWLY,
    REMATCH_WATTSON,
    REMATCH_FLANNERY,
    REMATCH_NORMAN,
    REMATCH_WINONA,
    REMATCH_TATE_AND_LIZA,
    REMATCH_JUAN,
    REMATCH_SIDNEY,
    REMATCH_PHOEBE,
    REMATCH_GLACIA,
    REMATCH_DRAKE,
    REMATCH_WALLACE,
    REMATCH_TABLE_ENTRIES
};




void UpdateGymLeaderRematch(void);
# 5 "include/battle_setup.h" 2



struct RematchTrainer
{
    u16 trainerIds[5];
    u16 mapGroup;
    u16 mapNum;
};

extern const struct RematchTrainer gRematchTable[REMATCH_TABLE_ENTRIES];

extern u16 gTrainerBattleOpponent_A;
extern u16 gTrainerBattleOpponent_B;
extern u16 gPartnerTrainerId;

void BattleSetup_StartWildBattle(void);
void BattleSetup_StartDoubleWildBattle(void);
void BattleSetup_StartBattlePikeWildBattle(void);
void BattleSetup_StartRoamerBattle(void);
void StartWallyTutorialBattle(void);
void BattleSetup_StartScriptedWildBattle(void);
void BattleSetup_StartScriptedDoubleWildBattle(void);
void BattleSetup_StartLatiBattle(void);
void BattleSetup_StartLegendaryBattle(void);
void StartGroudonKyogreBattle(void);
void StartRegiBattle(void);
u8 BattleSetup_GetTerrainId(void);
u8 GetWildBattleTransition(void);
u8 GetTrainerBattleTransition(void);
u8 GetSpecialBattleTransition(s32 arg0);
void ChooseStarter(void);
void ResetTrainerOpponentIds(void);
void SetMapVarsToTrainer(void);
const u8 *BattleSetup_ConfigureTrainerBattle(const u8 *data);
void ConfigureAndSetUpOneTrainerBattle(u8 trainerObjEventId, const u8 *trainerScript);
void ConfigureTwoTrainersBattle(u8 trainerObjEventId, const u8 *trainerScript);
void SetUpTwoTrainersBattle(void);
bool32 GetTrainerFlagFromScriptPointer(const u8 *data);
void SetUpTrainerMovement(void);
u8 GetTrainerBattleMode(void);
bool8 GetTrainerFlag(void);
bool8 HasTrainerBeenFought(u16 trainerId);
void SetTrainerFlag(u16 trainerId);
void ClearTrainerFlag(u16 trainerId);
void BattleSetup_StartTrainerBattle(void);
void BattleSetup_StartRematchBattle(void);
void ShowTrainerIntroSpeech(void);
const u8 *BattleSetup_GetScriptAddrAfterBattle(void);
const u8 *BattleSetup_GetTrainerPostBattleScript(void);
void ShowTrainerCantBattleSpeech(void);
void SetUpTrainerEncounterMusic(void);
const u8 *GetTrainerALoseText(void);
const u8 *GetTrainerBLoseText(void);
const u8 *GetTrainerWonSpeech(void);
void UpdateRematchIfDefeated(s32 rematchTableId);
void IncrementRematchStepCounter(void);
void TryUpdateRandomTrainerRematches(u16 mapGroup, u16 mapNum);
bool32 DoesSomeoneWantRematchIn(u16 mapGroup, u16 mapNum);
bool32 IsRematchTrainerIn(u16 mapGroup, u16 mapNum);
u16 GetLastBeatenRematchTrainerId(u16 trainerId);
bool8 ShouldTryRematchBattle(void);
bool8 IsTrainerReadyForRematch(void);
void ShouldTryGetTrainerScript(void);
u16 CountBattledRematchTeams(u16 trainerId);
# 8 "src/battle_ai_script_commands.c" 2
# 1 "include/data.h" 1



# 1 "include/constants/moves.h" 1
# 5 "include/data.h" 2



struct MonCoords
{


    u8 size;
    u8 y_offset;
};

struct TrainerMonNoItemDefaultMoves
{
    u16 iv;
    u8 lvl;
 u8 evs[6];
 u8 abilityNum;
 u16 happiness;
    u16 species;
    u8 formId;
};

struct TrainerMonItemDefaultMoves
{
    u16 iv;
    u8 lvl;
 u8 evs[6];
 u8 abilityNum;
 u16 happiness;
    u16 species;
    u8 formId;
    u16 postgameheldItem;
    u16 heldItem;
};

struct TrainerMonNoItemCustomMoves
{
    u16 iv;
    u8 lvl;
 u8 evs[6];
 u8 abilityNum;
 u16 happiness;
    u16 species;
    u8 formId;
 u16 postgamemoves[4];
    u16 moves[4];
};

struct TrainerMonItemCustomMoves
{
    u16 iv;
    u8 lvl;
 u8 evs[6];
 u8 abilityNum;
 u16 happiness;
    u16 species;
    u8 formId;
    u16 postgameheldItem;
    u16 heldItem;
 u16 postgamemoves[4];
    u16 moves[4];
};

union TrainerMonPtr
{
    const struct TrainerMonNoItemDefaultMoves *NoItemDefaultMoves;
    const struct TrainerMonNoItemCustomMoves *NoItemCustomMoves;
    const struct TrainerMonItemDefaultMoves *ItemDefaultMoves;
    const struct TrainerMonItemCustomMoves *ItemCustomMoves;
};

struct Trainer
{
             u8 partyFlags;
             u8 trainerClass;
             u8 encounterMusic_gender;
             u8 trainerPic;
             u8 trainerName[12];
             u16 items[4];
             bool8 doubleBattle;
             u32 aiFlags;
             u8 partySize;
             union TrainerMonPtr party;
};



extern const u16 gUnknown_082FF1D8[];
extern const u32 gUnknown_082FF1F8[];

extern const struct SpriteFrameImage gUnknown_082FF3A8[];
extern const struct SpriteFrameImage gUnknown_082FF3C8[];
extern const struct SpriteFrameImage gUnknown_082FF3E8[];
extern const struct SpriteFrameImage gUnknown_082FF408[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Brendan[];
extern const struct SpriteFrameImage gTrainerBackPicTable_May[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Red[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Leaf[];
extern const struct SpriteFrameImage gTrainerBackPicTable_RubySapphireBrendan[];
extern const struct SpriteFrameImage gTrainerBackPicTable_RubySapphireMay[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Wally[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Steven[];

extern const union AffineAnimCmd *const gUnknown_082FF618[];
extern const union AffineAnimCmd *const gUnknown_082FF694[];
extern const union AffineAnimCmd *const gUnknown_082FF6C0[];

extern const union AnimCmd *const gUnknown_082FF70C[];
extern const struct MonCoords gMonFrontPicCoords[];
extern const struct MonCoords gMonBackPicCoords[];
extern const struct CompressedSpriteSheet gMonBackPicTable[];
extern const struct CompressedSpriteSheet gMonBackPicTableFemale[];
extern const struct CompressedSpritePalette gMonPaletteTable[];
extern const struct CompressedSpritePalette gMonPaletteTableFemale[];
extern const struct CompressedSpritePalette gMonShinyPaletteTable[];
extern const struct CompressedSpritePalette gMonShinyPaletteTableFemale[];
extern const union AnimCmd *const *const gTrainerFrontAnimsPtrTable[];
extern const struct MonCoords gTrainerFrontPicCoords[];
extern const struct CompressedSpriteSheet gTrainerFrontPicTable[];
extern const struct CompressedSpritePalette gTrainerFrontPicPaletteTable[];
extern const union AnimCmd *const *const gTrainerBackAnimsPtrTable[];
extern const struct MonCoords gTrainerBackPicCoords[];
extern const struct CompressedSpriteSheet gTrainerBackPicTable[];
extern const struct CompressedSpritePalette gTrainerBackPicPaletteTable[];

extern const u8 gEnemyMonElevation[898 + 308 + 1];

extern const union AnimCmd *const *const gMonFrontAnimsPtrTable[];
extern const struct CompressedSpriteSheet gMonFrontPicTable[];
extern const struct CompressedSpriteSheet gMonFrontPicTableFemale[];
extern const bool8 SpeciesHasGenderDifference[898 + 308 + 1];

extern const struct Trainer gTrainers[];
extern const u8 gTrainerClassNames[][13];
extern const u8 gSpeciesNames[][10 + 1];
extern const u8 gMoveNames[755][16 + 1];
# 9 "src/battle_ai_script_commands.c" 2
# 1 "include/event_data.h" 1




void InitEventData(void);
void ClearTempFieldEventData(void);
void ClearDailyFlags(void);
void DisableNationalPokedex(void);
void EnableNationalPokedex(void);
bool32 IsNationalPokedexEnabled(void);
void DisableMysteryEvent(void);
void EnableMysteryEvent(void);
bool32 IsMysteryEventEnabled(void);
void DisableMysteryGift(void);
void EnableMysteryGift(void);
bool32 IsMysteryGiftEnabled(void);
void ClearMysteryEventFlags(void);
void ClearMysteryEventVars(void);
void DisableResetRTC(void);
void EnableResetRTC(void);
bool32 CanResetRTC(void);
u16 *GetVarPointer(u16 id);
u16 VarGet(u16 id);
u16 VarGetIfExist(u16 id);
bool8 VarSet(u16 id, u16 value);
u8 VarGetObjectEventGraphicsId(u8 id);
u8 *GetFlagPointer(u16 id);
u8 FlagSet(u16 id);
u8 FlagToggle(u16 id);
u8 FlagClear(u16 id);
bool8 FlagGet(u16 id);

extern u16 gSpecialVar_0x8000;
extern u16 gSpecialVar_0x8001;
extern u16 gSpecialVar_0x8002;
extern u16 gSpecialVar_0x8003;
extern u16 gSpecialVar_0x8004;
extern u16 gSpecialVar_0x8005;
extern u16 gSpecialVar_0x8006;
extern u16 gSpecialVar_0x8007;
extern u16 gSpecialVar_0x8008;
extern u16 gSpecialVar_0x8009;
extern u16 gSpecialVar_0x800A;
extern u16 gSpecialVar_0x800B;
extern u16 gSpecialVar_Result;
extern u16 gSpecialVar_LastTalked;
extern u16 gSpecialVar_Facing;
extern u16 gSpecialVar_MonBoxId;
extern u16 gSpecialVar_MonBoxPos;
extern u16 gSpecialVar_Unused_0x8014;

extern const u16 sLevelCapFlags[9];
extern const u16 sLevelCaps[9];
# 10 "src/battle_ai_script_commands.c" 2
# 1 "include/item.h" 1



# 1 "include/constants/item.h" 1
# 5 "include/item.h" 2
# 1 "include/constants/item_config.h" 1
# 6 "include/item.h" 2

typedef void (*ItemUseFunc)(u8);

struct Item
{
    u8 name[18];
    u16 itemId;
    u16 price;
    u8 holdEffect;
    u8 holdEffectParam;
    const u8 *description;
    u8 importance;
    u8 unk19;
    u8 pocket;
    u8 type;
    ItemUseFunc fieldUseFunc;
    u8 battleUsage;
    ItemUseFunc battleUseFunc;
    u8 secondaryId;
};

struct BagPocket
{
    struct ItemSlot *itemSlots;
    u8 capacity;
};

extern struct BagPocket gBagPockets[];
extern struct ItemSlot gTmHmItemSlots[208];

u16 GetBagItemQuantity(u16 *quantity);
void ApplyNewEncryptionKeyToBagItems(u32 newKey);
void ApplyNewEncryptionKeyToBagItems_(u32 newKey);
void SetBagItemsPointers(void);
void CopyItemName(u16 itemId, u8 *dst);
void CopyItemNameHandlePlural(u16 itemId, u8 *dst, u32 quantity);
void GetBerryCountString(u8 *dst, const u8 *berryName, u32 quantity);
bool8 IsBagPocketNonEmpty(u8 pocket);
bool8 CheckBagHasItem(u16 itemId, u16 count);
bool8 HasAtLeastOneBerry(void);
bool8 CheckBagHasSpace(u16 itemId, u16 count);
bool8 AddBagItem(u16 itemId, u16 count);
bool8 RemoveBagItem(u16 itemId, u16 count);
u8 GetPocketByItemId(u16 itemId);
void ClearItemSlots(struct ItemSlot *itemSlots, u8 itemCount);
u8 CountUsedPCItemSlots(void);
bool8 CheckPCHasItem(u16 itemId, u16 count);
bool8 AddPCItem(u16 itemId, u16 count);
void RemovePCItem(u8 index, u16 count);
void CompactPCItems(void);
void SwapRegisteredBike(void);
u16 BagGetItemIdByPocketPosition(u8 pocketId, u16 pocketPos);
u16 BagGetQuantityByPocketPosition(u8 pocketId, u16 pocketPos);
void CompactItemsInBagPocket(struct BagPocket *bagPocket);
void SortBerriesOrTMHMs(struct BagPocket *bagPocket);
void MoveItemSlotInList(struct ItemSlot* itemSlots_, u32 from, u32 to_);
void ClearBag(void);
u16 CountTotalItemQuantityInBag(u16 itemId);
bool8 AddPyramidBagItem(u16 itemId, u16 count);
bool8 RemovePyramidBagItem(u16 itemId, u16 count);
const u8 *ItemId_GetName(u16 itemId);
u16 ItemId_GetId(u16 itemId);
u16 ItemId_GetPrice(u16 itemId);
u8 ItemId_GetHoldEffect(u16 itemId);
u8 ItemId_GetHoldEffectParam(u16 itemId);
const u8 *ItemId_GetDescription(u16 itemId);
u8 ItemId_GetImportance(u16 itemId);
u8 ItemId_GetUnknownValue(u16 itemId);
u8 ItemId_GetPocket(u16 itemId);
u8 ItemId_GetType(u16 itemId);
ItemUseFunc ItemId_GetFieldFunc(u16 itemId);
u8 ItemId_GetBattleUsage(u16 itemId);
ItemUseFunc ItemId_GetBattleFunc(u16 itemId);
u8 ItemId_GetSecondaryId(u16 itemId);
void DeserializeTmHmItemSlots(void);
void DrawHeaderBox(void);
void HideHeaderBox(void);
bool8 GetSetItemObtained(u16 item, u8 caseId);

enum ItemObtainFlags
{
    FLAG_GET_OBTAINED,
    FLAG_SET_OBTAINED,
};
# 11 "src/battle_ai_script_commands.c" 2
# 1 "include/pokemon.h" 1
# 12 "src/battle_ai_script_commands.c" 2
# 1 "include/level_scaling.h" 1



u8 IsHardMode(void);
u8 GetNumBadges(void);
u8 getLevelBoost(void);
u8 GetPlayerUsableMons(void);
u8 getTrainerLevel(u8 Level);
u8 getWildLevel(u8 Ability);
u8 getTrainerPokemonNum(void);
u8 getLeaderPokemonNum(void);
u8 getDoubleTrainerPokemonNum(void);
u16 GetWildPokemon(u16 basespecies, u8 level, u16 heldItem);
u16 GetTrainerPokemon(u16 basespecies, u8 level);
u16 GetBaseSpecie(u16 basespecies);
u16 GetHeldItem(u16 baseitem);
u16 GetFirstEvolution(u16 species);
u8 GetEvsfromPokemon(u8 evs);
bool8 IsMoveUsable(u8 movepower);
u16 GetMapRandomPokemon(u16 TrainerClass, u16 species);
# 13 "src/battle_ai_script_commands.c" 2
# 1 "include/random.h" 1



extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
u16 RandRange(u16 min, u16 max);
# 21 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 14 "src/battle_ai_script_commands.c" 2
# 1 "include/recorded_battle.h" 1



extern u32 gRecordedBattleRngSeed;
extern u32 gBattlePalaceMoveSelectionRngValue;
extern u8 gUnknown_0203C7B4;

void sub_8184DA4(u8 arg0);
void sub_8184E58(void);
void RecordedBattle_SetBattlerAction(u8 battlerId, u8 action);
void RecordedBattle_ClearBattlerAction(u8 battlerId, u8 bytesToClear);
u8 RecordedBattle_GetBattlerAction(u8 battlerId);
u8 sub_81850D0(void);
u8 sub_81850DC(u8 *arg0);
void sub_81851A8(u8 *arg0);
bool32 CanCopyRecordedBattleSaveData(void);
bool32 MoveRecordedBattleToSaveData(void);
void PlayRecordedBattle(void (*CB2_After)(void));
u8 GetRecordedBattleFrontierFacility(void);
u8 GetRecordedBattleFronterBrainSymbol(void);
void RecordedBattle_SaveParties(void);
u8 GetActiveBattlerLinkPlayerGender(void);
void sub_8185F84(void);
void sub_8185F90(u16 arg0);
u8 sub_8185FAC(void);
u8 GetBattleSceneInRecordedBattle(void);
u8 GetTextSpeedInRecordedBattle(void);
void RecordedBattle_CopyBattlerMoves(void);
void sub_818603C(u8 arg0);
u32 GetAiScriptsInRecordedBattle(void);
void sub_8186444(void);
bool8 sub_8186450(void);
void sub_8186468(u8 *dst);
u8 GetRecordedBattleRecordMixFriendClass(void);
u8 GetRecordedBattleApprenticeId(void);
u8 GetRecordedBattleRecordMixFriendLanguage(void);
u8 GetRecordedBattleApprenticeLanguage(void);
void RecordedBattle_SaveBattleOutcome(void);
u16 *GetRecordedBattleEasyChatSpeech(void);
# 15 "src/battle_ai_script_commands.c" 2
# 1 "include/util.h" 1





extern const u8 gMiscBlank_Gfx[];
extern const u32 gBitTable[];

u8 CreateInvisibleSpriteWithCallback(void (*)(struct Sprite *));
void StoreWordInTwoHalfwords(u16 *, u32);
void LoadWordFromTwoHalfwords(u16 *, u32 *);
int CountTrailingZeroBits(u32 value);
u16 CalcCRC16(const u8 *data, s32 length);
u16 CalcCRC16WithTable(const u8 *data, u32 length);
u32 CalcByteArraySum(const u8* data, u32 length);
void BlendPalette(u16 palOffset, u16 numEntries, u8 coeff, u16 blendColor);
void DoBgAffineSet(struct BgAffineDstData *dest, u32 texX, u32 texY, s16 scrX, s16 scrY, s16 sx, s16 sy, u16 alpha);
void CopySpriteTiles(u8 shape, u8 size, u8 *tiles, u16 *tilemap, u8 *output);
# 16 "src/battle_ai_script_commands.c" 2
# 1 "include/constants/abilities.h" 1
# 17 "src/battle_ai_script_commands.c" 2
# 1 "include/constants/battle_ai.h" 1
# 18 "src/battle_ai_script_commands.c" 2
# 1 "include/constants/battle_move_effects.h" 1
# 19 "src/battle_ai_script_commands.c" 2
# 1 "include/constants/hold_effects.h" 1
# 20 "src/battle_ai_script_commands.c" 2
# 1 "include/constants/moves.h" 1
# 21 "src/battle_ai_script_commands.c" 2
# 35 "src/battle_ai_script_commands.c"
enum
{
    AIState_SettingUp,
    AIState_Processing,
    AIState_FinishedProcessing,
    AIState_DoNotProcess
};
# 51 "src/battle_ai_script_commands.c"
extern const u8 *const gBattleAI_ScriptsTable[];

static u8 ChooseMoveOrAction_Singles(void);
static u8 ChooseMoveOrAction_Doubles(void);
static void RecordLastUsedMoveByTarget(void);
static void BattleAI_DoAIProcessing(void);
static void AIStackPushVar(const u8 *);
static bool8 AIStackPop(void);
static s32 CountUsablePartyMons(u8 battlerId);
static s32 AI_GetAbility(u32 battlerId, bool32 guess);

static void Cmd_if_random_less_than(void);
static void Cmd_if_random_greater_than(void);
static void Cmd_if_random_equal(void);
static void Cmd_if_random_not_equal(void);
static void Cmd_score(void);
static void Cmd_if_hp_less_than(void);
static void Cmd_if_hp_more_than(void);
static void Cmd_if_hp_equal(void);
static void Cmd_if_hp_not_equal(void);
static void Cmd_if_status(void);
static void Cmd_if_not_status(void);
static void Cmd_if_status2(void);
static void Cmd_if_not_status2(void);
static void Cmd_if_status3(void);
static void Cmd_if_not_status3(void);
static void Cmd_if_side_affecting(void);
static void Cmd_if_not_side_affecting(void);
static void Cmd_if_less_than(void);
static void Cmd_if_more_than(void);
static void Cmd_if_equal(void);
static void Cmd_if_not_equal(void);
static void Cmd_if_less_than_ptr(void);
static void Cmd_if_more_than_ptr(void);
static void Cmd_if_equal_ptr(void);
static void Cmd_if_not_equal_ptr(void);
static void Cmd_if_move(void);
static void Cmd_if_not_move(void);
static void Cmd_if_in_bytes(void);
static void Cmd_if_not_in_bytes(void);
static void Cmd_if_in_hwords(void);
static void Cmd_if_not_in_hwords(void);
static void Cmd_if_user_has_attacking_move(void);
static void Cmd_if_user_has_no_attacking_moves(void);
static void Cmd_get_turn_count(void);
static void Cmd_get_type(void);
static void Cmd_get_considered_move_power(void);
static void Cmd_get_how_powerful_move_is(void);
static void Cmd_get_last_used_battler_move(void);
static void Cmd_if_equal_u32(void);
static void Cmd_if_not_equal_u32(void);
static void Cmd_if_user_goes(void);
static void Cmd_if_cant_use_belch(void);
static void Cmd_nullsub_2A(void);
static void Cmd_nullsub_2B(void);
static void Cmd_count_usable_party_mons(void);
static void Cmd_get_considered_move(void);
static void Cmd_get_considered_move_effect(void);
static void Cmd_get_ability(void);
static void Cmd_get_highest_type_effectiveness(void);
static void Cmd_if_type_effectiveness(void);
static void Cmd_nullsub_32(void);
static void Cmd_nullsub_33(void);
static void Cmd_if_status_in_party(void);
static void Cmd_if_status_not_in_party(void);
static void Cmd_get_weather(void);
static void Cmd_if_effect(void);
static void Cmd_if_not_effect(void);
static void Cmd_if_stat_level_less_than(void);
static void Cmd_if_stat_level_more_than(void);
static void Cmd_if_stat_level_equal(void);
static void Cmd_if_stat_level_not_equal(void);
static void Cmd_if_can_faint(void);
static void Cmd_if_cant_faint(void);
static void Cmd_if_has_move(void);
static void Cmd_if_doesnt_have_move(void);
static void Cmd_if_has_move_with_effect(void);
static void Cmd_if_doesnt_have_move_with_effect(void);
static void Cmd_if_any_move_disabled_or_encored(void);
static void Cmd_if_curr_move_disabled_or_encored(void);
static void Cmd_flee(void);
static void Cmd_if_random_safari_flee(void);
static void Cmd_watch(void);
static void Cmd_get_hold_effect(void);
static void Cmd_get_gender(void);
static void Cmd_is_first_turn_for(void);
static void Cmd_get_stockpile_count(void);
static void Cmd_is_double_battle(void);
static void Cmd_get_used_held_item(void);
static void Cmd_get_move_type_from_result(void);
static void Cmd_get_move_power_from_result(void);
static void Cmd_get_move_effect_from_result(void);
static void Cmd_get_protect_count(void);
static void Cmd_if_move_flag(void);
static void Cmd_if_field_status(void);
static void Cmd_get_move_accuracy(void);
static void Cmd_call_if_eq(void);
static void Cmd_call_if_move_flag(void);
static void Cmd_nullsub_57(void);
static void Cmd_call(void);
static void Cmd_goto(void);
static void Cmd_end(void);
static void Cmd_if_level_cond(void);
static void Cmd_if_target_taunted(void);
static void Cmd_if_target_not_taunted(void);
static void Cmd_check_ability(void);
static void Cmd_is_of_type(void);
static void Cmd_if_target_is_ally(void);
static void Cmd_if_flash_fired(void);
static void Cmd_if_holds_item(void);
static void Cmd_get_ally_chosen_move(void);
static void Cmd_if_has_no_attacking_moves(void);
static void Cmd_get_hazards_count(void);
static void Cmd_if_doesnt_hold_berry(void);
static void Cmd_if_share_type(void);
static void Cmd_if_cant_use_last_resort(void);
static void Cmd_if_has_move_with_split(void);
static void Cmd_if_has_no_move_with_split(void);
static void Cmd_if_physical_moves_unusable(void);
static void Cmd_if_ai_can_go_down(void);
static void Cmd_if_has_move_with_type(void);
static void Cmd_if_no_move_used(void);
static void Cmd_if_has_move_with_flag(void);
static void Cmd_if_battler_absent(void);
static void Cmd_is_grounded(void);
static void Cmd_get_best_dmg_hp_percent(void);
static void Cmd_get_curr_dmg_hp_percent(void);
static void Cmd_get_move_split_from_result(void);
static void Cmd_get_considered_move_split(void);
static void Cmd_get_considered_move_target(void);
static void Cmd_compare_speeds(void);
static void Cmd_is_wakeup_turn(void);
static void Cmd_if_has_move_with_accuracy_lt(void);


__attribute__((section("ewram_data"))) const u8 *gAIScriptPtr = ((void *)0);
__attribute__((section("ewram_data"))) static u8 sBattler_AI = 0;


typedef void (*BattleAICmdFunc)(void);

static const BattleAICmdFunc sBattleAICmdTable[] =
{
    Cmd_if_random_less_than,
    Cmd_if_random_greater_than,
    Cmd_if_random_equal,
    Cmd_if_random_not_equal,
    Cmd_score,
    Cmd_if_hp_less_than,
    Cmd_if_hp_more_than,
    Cmd_if_hp_equal,
    Cmd_if_hp_not_equal,
    Cmd_if_status,
    Cmd_if_not_status,
    Cmd_if_status2,
    Cmd_if_not_status2,
    Cmd_if_status3,
    Cmd_if_not_status3,
    Cmd_if_side_affecting,
    Cmd_if_not_side_affecting,
    Cmd_if_less_than,
    Cmd_if_more_than,
    Cmd_if_equal,
    Cmd_if_not_equal,
    Cmd_if_less_than_ptr,
    Cmd_if_more_than_ptr,
    Cmd_if_equal_ptr,
    Cmd_if_not_equal_ptr,
    Cmd_if_move,
    Cmd_if_not_move,
    Cmd_if_in_bytes,
    Cmd_if_not_in_bytes,
    Cmd_if_in_hwords,
    Cmd_if_not_in_hwords,
    Cmd_if_user_has_attacking_move,
    Cmd_if_user_has_no_attacking_moves,
    Cmd_get_turn_count,
    Cmd_get_type,
    Cmd_get_considered_move_power,
    Cmd_get_how_powerful_move_is,
    Cmd_get_last_used_battler_move,
    Cmd_if_equal_u32,
    Cmd_if_not_equal_u32,
    Cmd_if_user_goes,
    Cmd_if_cant_use_belch,
    Cmd_nullsub_2A,
    Cmd_nullsub_2B,
    Cmd_count_usable_party_mons,
    Cmd_get_considered_move,
    Cmd_get_considered_move_effect,
    Cmd_get_ability,
    Cmd_get_highest_type_effectiveness,
    Cmd_if_type_effectiveness,
    Cmd_nullsub_32,
    Cmd_nullsub_33,
    Cmd_if_status_in_party,
    Cmd_if_status_not_in_party,
    Cmd_get_weather,
    Cmd_if_effect,
    Cmd_if_not_effect,
    Cmd_if_stat_level_less_than,
    Cmd_if_stat_level_more_than,
    Cmd_if_stat_level_equal,
    Cmd_if_stat_level_not_equal,
    Cmd_if_can_faint,
    Cmd_if_cant_faint,
    Cmd_if_has_move,
    Cmd_if_doesnt_have_move,
    Cmd_if_has_move_with_effect,
    Cmd_if_doesnt_have_move_with_effect,
    Cmd_if_any_move_disabled_or_encored,
    Cmd_if_curr_move_disabled_or_encored,
    Cmd_flee,
    Cmd_if_random_safari_flee,
    Cmd_watch,
    Cmd_get_hold_effect,
    Cmd_get_gender,
    Cmd_is_first_turn_for,
    Cmd_get_stockpile_count,
    Cmd_is_double_battle,
    Cmd_get_used_held_item,
    Cmd_get_move_type_from_result,
    Cmd_get_move_power_from_result,
    Cmd_get_move_effect_from_result,
    Cmd_get_protect_count,
    Cmd_if_move_flag,
    Cmd_if_field_status,
    Cmd_get_move_accuracy,
    Cmd_call_if_eq,
    Cmd_call_if_move_flag,
    Cmd_nullsub_57,
    Cmd_call,
    Cmd_goto,
    Cmd_end,
    Cmd_if_level_cond,
    Cmd_if_target_taunted,
    Cmd_if_target_not_taunted,
    Cmd_if_target_is_ally,
    Cmd_is_of_type,
    Cmd_check_ability,
    Cmd_if_flash_fired,
    Cmd_if_holds_item,
    Cmd_get_ally_chosen_move,
    Cmd_if_has_no_attacking_moves,
    Cmd_get_hazards_count,
    Cmd_if_doesnt_hold_berry,
    Cmd_if_share_type,
    Cmd_if_cant_use_last_resort,
    Cmd_if_has_move_with_split,
    Cmd_if_has_no_move_with_split,
    Cmd_if_physical_moves_unusable,
    Cmd_if_ai_can_go_down,
    Cmd_if_has_move_with_type,
    Cmd_if_no_move_used,
    Cmd_if_has_move_with_flag,
    Cmd_if_battler_absent,
    Cmd_is_grounded,
    Cmd_get_best_dmg_hp_percent,
    Cmd_get_curr_dmg_hp_percent,
    Cmd_get_move_split_from_result,
    Cmd_get_considered_move_split,
    Cmd_get_considered_move_target,
    Cmd_compare_speeds,
    Cmd_is_wakeup_turn,
    Cmd_if_has_move_with_accuracy_lt,
};

static const u16 sDiscouragedPowerfulMoveEffects[] =
{
    7,
    8,
    80,
    145,
    151,
    161,
    170,
    182,
    190,
    204,
    340,
    0xFFFF
};


void BattleAI_SetupItems(void)
{
    s32 i;
    u8 *data = (u8 *)((struct BattleHistory *)(gBattleResources->battleHistory));

    for (i = 0; i < sizeof(struct BattleHistory); i++)
        data[i] = 0;
# 360 "src/battle_ai_script_commands.c"
}

void BattleAI_SetupFlags(void)
{
 u8 PartySize = GetPlayerUsableMons();


    if (gBattleTypeFlags & (1 << 24))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags = GetAiScriptsInRecordedBattle();
    else if (gBattleTypeFlags & (1 << 7))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags = (1 << 30);
    else if (gBattleTypeFlags & (1 << 10))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags = (1 << 29);
    else if (gBattleTypeFlags & (1 << 4))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags = (1 << 31);
    else if (gBattleTypeFlags & (1 << 19))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags = GetAiScriptsInBattleFactory();
    else if (gBattleTypeFlags & (((1 << 8) | (1 << 16) | (1 << 17) | (1 << 18) | (1 << 19) | (1 << 20) | (1 << 21)) | (1 << 11) | (1 << 26) | (1 << 27)))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags = (1 << 0) | (1 << 2) | (1 << 1);
    else if (gBattleTypeFlags & (1 << 15))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags = gTrainers[gTrainerBattleOpponent_A].aiFlags | gTrainers[gTrainerBattleOpponent_B].aiFlags;
    else
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags = gTrainers[gTrainerBattleOpponent_A].aiFlags;

    if (gBattleTypeFlags & ((1 << 0) | (1 << 15)) || gTrainers[gTrainerBattleOpponent_A].doubleBattle ||(FlagGet(0x2A2) && PartySize >= 2))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags |= (1 << 7);
}

void BattleAI_SetupAIData(u8 defaultScoreMoves)
{
    s32 i, move, dmg;
    u8 moveLimitations;


    u32 flags = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags;
    memset(((struct AI_ThinkingStruct *)(gBattleResources->ai)), 0, sizeof(struct AI_ThinkingStruct));
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags = flags;


    for (i = 0; i < 4; i++)
    {
        if (defaultScoreMoves & 1)
            ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[i] = 100;
        else
            ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[i] = 0;

        defaultScoreMoves >>= 1;
    }

    moveLimitations = CheckMoveLimitations(gActiveBattler, 0, 0xFF);


    for (i = 0; i < 4; i++)
    {
        if (gBitTable[i] & moveLimitations)
            ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[i] = 0;
    }

    gBattleResources->AI_ScriptsStack->size = 0;
    sBattler_AI = gActiveBattler;


    for (gBattlerTarget = 0; gBattlerTarget < gBattlersCount; gBattlerTarget++)
    {
        if (((gBattlerPositions[sBattler_AI]) & 1) == ((gBattlerPositions[gBattlerTarget]) & 1))
            continue;
        for (i = 0; i < 4; i++)
        {
            dmg = 0;
            move = gBattleMons[sBattler_AI].moves[i];
            if (gBattleMoves[move].power != 0 && !(moveLimitations & gBitTable[i]))
            {
                dmg = AI_CalcDamage(move, sBattler_AI, gBattlerTarget) * (100 - (Random() % 10)) / 100;
                if (dmg == 0)
                    dmg = 1;
            }

            ((struct AI_ThinkingStruct *)(gBattleResources->ai))->simulatedDmg[sBattler_AI][gBattlerTarget][i] = dmg;
        }
    }

    gBattlerTarget = SetRandomTarget(sBattler_AI);
}

u8 BattleAI_ChooseMoveOrAction(void)
{
    u32 savedCurrentMove = gCurrentMove;
    u8 ret;

    if (!(gBattleTypeFlags & (1 << 0)))
        ret = ChooseMoveOrAction_Singles();
    else
        ret = ChooseMoveOrAction_Doubles();

    gCurrentMove = savedCurrentMove;
    return ret;
}

static u32 GetTotalBaseStat(u32 species)
{
    return gBaseStats[species].baseHP
        + gBaseStats[species].baseAttack
        + gBaseStats[species].baseDefense
        + gBaseStats[species].baseSpeed
        + gBaseStats[species].baseSpAttack
        + gBaseStats[species].baseSpDefense;
}

bool32 IsTruantMonVulnerable(u32 battlerAI, u32 opposingBattler)
{
    int i;

    for (i = 0; i < 4; i++)
    {
        u32 move = gBattleResources->battleHistory->usedMoves[opposingBattler].moves[i];
        if (gBattleMoves[move].effect == 111 && move != 203)
            return 1;
        if (gBattleMoves[move].effect == 155 && GetWhoStrikesFirst(battlerAI, opposingBattler, 1) == 1)
            return 1;
    }
    return 0;
}

static u8 ChooseMoveOrAction_Singles(void)
{
    u8 currentMoveArray[4];
    u8 consideredMoveArray[4];
    u32 numOfBestMoves;
    s32 i, id;
    u32 flags = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags;

    RecordLastUsedMoveByTarget();

    while (flags != 0)
    {
        if (flags & 1)
        {
            ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiState = AIState_SettingUp;
            BattleAI_DoAIProcessing();
        }
        flags >>= 1;
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiLogicId++;
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex = 0;
    }

    for (i = 0; i < 4; i++)
        gBattleStruct->aiFinalScore[sBattler_AI][gBattlerTarget][i] = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[i];


    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiAction & 0x0002)
        return 4;
    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiAction & 0x0004)
        return 5;

    gActiveBattler = sBattler_AI;

    if (CountUsablePartyMons(sBattler_AI) >= 1
        && !IsAbilityPreventingEscape(sBattler_AI)
        && !(gBattleMons[gActiveBattler].status2 & ((1 << 13) | (1 << 26)))
        && !(gStatuses3[gActiveBattler] & (1 << 10))
        && !(gBattleTypeFlags & ((1 << 18) | (1 << 17)))
        && ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags & ((1 << 2) | (1 << 0) | (1 << 1) | (1 << 6)))
    {

        if (GetTotalBaseStat(gBattleMons[sBattler_AI].species) >= 310
            && gBattleMons[sBattler_AI].hp >= gBattleMons[sBattler_AI].maxHP / 2)
        {
            s32 cap = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags & ((1 << 2)) ? 95 : 93;
            for (i = 0; i < 4; i++)
            {
                if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[i] > cap)
                    break;
            }

            if (i == 4 && GetMostSuitableMonToSwitchInto() != 6)
            {
                ((struct AI_ThinkingStruct *)(gBattleResources->ai))->switchMon = 1;
                return 7;
            }
        }



        if (GetBattlerAbility(sBattler_AI) == 54
            && IsTruantMonVulnerable(sBattler_AI, gBattlerTarget)
            && gDisableStructs[sBattler_AI].truantCounter
            && gBattleMons[sBattler_AI].hp >= gBattleMons[sBattler_AI].maxHP / 2)
        {
            if (GetMostSuitableMonToSwitchInto() != 6)
            {
                ((struct AI_ThinkingStruct *)(gBattleResources->ai))->switchMon = 1;
                return 7;
            }
        }
    }

    numOfBestMoves = 1;
    currentMoveArray[0] = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[0];
    consideredMoveArray[0] = 0;

    for (i = 1; i < 4; i++)
    {
        if (gBattleMons[sBattler_AI].moves[i] != 0)
        {

            if (currentMoveArray[0] == ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[i])
            {
                currentMoveArray[numOfBestMoves] = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[i];
                consideredMoveArray[numOfBestMoves++] = i;
            }
            if (currentMoveArray[0] < ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[i])
            {
                numOfBestMoves = 1;
                currentMoveArray[0] = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[i];
                consideredMoveArray[0] = i;
            }
        }
    }
    return consideredMoveArray[Random() % numOfBestMoves];
}

static u8 ChooseMoveOrAction_Doubles(void)
{
    s32 i;
    s32 j;
    u32 flags;

    s32 scriptsToRun;
# 596 "src/battle_ai_script_commands.c"
    s16 bestMovePointsForTarget[4];
    s8 mostViableTargetsArray[4];
    u8 actionOrMoveIndex[4];
    u8 mostViableMovesScores[4];
    u8 mostViableMovesIndices[4];
    s32 mostViableTargetsNo;
    s32 mostViableMovesNo;
    s16 mostMovePoints;

    for (i = 0; i < 4; i++)
    {
        if (i == sBattler_AI || gBattleMons[i].hp == 0)
        {
            actionOrMoveIndex[i] = 0xFF;
            bestMovePointsForTarget[i] = -1;
        }
        else
        {
            if (gBattleTypeFlags & (1 << 17))
                BattleAI_SetupAIData(gBattleStruct->palaceFlags >> 4);
            else
                BattleAI_SetupAIData((1 << 4) - 1);

            gBattlerTarget = i;

            if ((i & 1) != (sBattler_AI & 1))
                RecordLastUsedMoveByTarget();

            ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiLogicId = 0;
            ((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex = 0;
            flags = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiFlags;
            while (flags != 0)
            {
                if (flags & 1)
                {
                    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiState = AIState_SettingUp;
                    BattleAI_DoAIProcessing();
                }
                flags >>= 1;
                ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiLogicId++;
                ((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex = 0;
            }

            if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiAction & 0x0002)
            {
                actionOrMoveIndex[i] = 4;
            }
            else if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiAction & 0x0004)
            {
                actionOrMoveIndex[i] = 5;
            }
            else
            {
                mostViableMovesScores[0] = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[0];
                mostViableMovesIndices[0] = 0;
                mostViableMovesNo = 1;
                for (j = 1; j < 4; j++)
                {
                    if (gBattleMons[sBattler_AI].moves[j] != 0)
                    {
                        if (mostViableMovesScores[0] == ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[j])
                        {
                            mostViableMovesScores[mostViableMovesNo] = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[j];
                            mostViableMovesIndices[mostViableMovesNo] = j;
                            mostViableMovesNo++;
                        }
                        if (mostViableMovesScores[0] < ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[j])
                        {
                            mostViableMovesScores[0] = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[j];
                            mostViableMovesIndices[0] = j;
                            mostViableMovesNo = 1;
                        }
                    }
                }
                actionOrMoveIndex[i] = mostViableMovesIndices[Random() % mostViableMovesNo];
                bestMovePointsForTarget[i] = mostViableMovesScores[0];


                if (i == (sBattler_AI ^ 2) && bestMovePointsForTarget[i] < 100)
                {
                    bestMovePointsForTarget[i] = -1;
                    mostViableMovesScores[0] = mostViableMovesScores[0];
                }
            }

            for (j = 0; j < 4; j++)
                gBattleStruct->aiFinalScore[sBattler_AI][gBattlerTarget][j] = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[j];
        }
    }

    mostMovePoints = bestMovePointsForTarget[0];
    mostViableTargetsArray[0] = 0;
    mostViableTargetsNo = 1;

    for (i = 1; i < 4; i++)
    {
        if (mostMovePoints == bestMovePointsForTarget[i])
        {
            mostViableTargetsArray[mostViableTargetsNo] = i;
            mostViableTargetsNo++;
        }
        if (mostMovePoints < bestMovePointsForTarget[i])
        {
            mostMovePoints = bestMovePointsForTarget[i];
            mostViableTargetsArray[0] = i;
            mostViableTargetsNo = 1;
        }
    }

    gBattlerTarget = mostViableTargetsArray[Random() % mostViableTargetsNo];
    return actionOrMoveIndex[gBattlerTarget];
}

static void BattleAI_DoAIProcessing(void)
{
    while (((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiState != AIState_FinishedProcessing)
    {
        switch (((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiState)
        {
            case AIState_DoNotProcess:
                break;
            case AIState_SettingUp:
                gAIScriptPtr = gBattleAI_ScriptsTable[((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiLogicId];
                if (gBattleMons[sBattler_AI].pp[((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex] == 0)
                {
                    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered = 0;
                }
                else
                {
                    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered = gBattleMons[sBattler_AI].moves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex];
                }
                ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiState++;
                break;
            case AIState_Processing:
                if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered != 0)
                {
                    sBattleAICmdTable[*gAIScriptPtr]();
                }
                else
                {
                    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex] = 0;
                    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiAction |= 0x0001;
                }
                if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiAction & 0x0001)
                {
                   ((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex++;

                    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex < 4 && !(((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiAction & 0x0008))
                        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiState = AIState_SettingUp;
                    else
                        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiState++;

                    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiAction &= ~(0x0001);
                }
                break;
        }
    }
}

static void RecordLastUsedMoveByTarget(void)
{
    RecordKnownMove(gBattlerTarget, gLastMoves[gBattlerTarget]);
}

bool32 IsBattlerAIControlled(u32 battlerId)
{
    switch (GetBattlerPosition(battlerId))
    {
    case 0:
    default:
        return 0;
    case 1:
        return 1;
    case 2:
        return ((gBattleTypeFlags & (1 << 22)) != 0);
    case 3:
        return 1;
    }
}

void ClearBattlerMoveHistory(u8 battlerId)
{
    memset(((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].moves, 0, sizeof(((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].moves));
    memset(((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].history, 0, sizeof(((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].history));
    ((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].index = 0;
}

void RecordLastUsedMoveBy(u32 battlerId, u32 move)
{
    u8 *index = &((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].index;

    if (++(*index) >= 3)
        *index = 0;
    ((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].history[*index] = move;
}

void RecordKnownMove(u8 battlerId, u32 move)
{
    s32 i;
    for (i = 0; i < 4; i++)
    {
        if (((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].moves[i] == move)
            break;
        if (((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].moves[i] == 0)
        {
            ((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].moves[i] = move;
            break;
        }
    }
}

void RecordAbilityBattle(u8 battlerId, u16 abilityId)
{
    ((struct BattleHistory *)(gBattleResources->battleHistory))->abilities[battlerId] = abilityId;
}

void ClearBattlerAbilityHistory(u8 battlerId)
{
    ((struct BattleHistory *)(gBattleResources->battleHistory))->abilities[battlerId] = 0;
}

void RecordItemEffectBattle(u8 battlerId, u8 itemEffect)
{
    ((struct BattleHistory *)(gBattleResources->battleHistory))->itemEffects[battlerId] = itemEffect;
}

void ClearBattlerItemEffectHistory(u8 battlerId)
{
    ((struct BattleHistory *)(gBattleResources->battleHistory))->itemEffects[battlerId] = 0;
}

static void SaveBattlerData(u8 battlerId)
{
    if (!IsBattlerAIControlled(battlerId))
    {
        u32 i;

        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->saved[battlerId].ability = gBattleMons[battlerId].ability;
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->saved[battlerId].heldItem = gBattleMons[battlerId].item;
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->saved[battlerId].species = gBattleMons[battlerId].species;
        for (i = 0; i < 4; i++)
            ((struct AI_ThinkingStruct *)(gBattleResources->ai))->saved[battlerId].moves[i] = gBattleMons[battlerId].moves[i];
    }
}

static void SetBattlerData(u8 battlerId)
{
    if (!IsBattlerAIControlled(battlerId))
    {
        struct Pokemon *illusionMon;
        u32 i;


        if (((struct BattleHistory *)(gBattleResources->battleHistory))->abilities[battlerId] != 0)
            gBattleMons[battlerId].ability = ((struct BattleHistory *)(gBattleResources->battleHistory))->abilities[battlerId];

        else if (gBaseStats[gBattleMons[battlerId].species].abilities[1] == 0
                 || gBaseStats[gBattleMons[battlerId].species].abilities[1] == gBaseStats[gBattleMons[battlerId].species].abilities[0])
            gBattleMons[battlerId].ability = gBaseStats[gBattleMons[battlerId].species].abilities[0];

        else
            gBattleMons[battlerId].ability = 0;

        if (((struct BattleHistory *)(gBattleResources->battleHistory))->itemEffects[battlerId] == 0)
            gBattleMons[battlerId].item = 0;

        for (i = 0; i < 4; i++)
        {
            if (((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].moves[i] == 0)
                gBattleMons[battlerId].moves[i] = 0;
        }


        if ((illusionMon = GetIllusionMonPtr(battlerId)) != ((void *)0))
            gBattleMons[battlerId].species = GetMonData(illusionMon, 65);
    }
}

static void RestoreBattlerData(u8 battlerId)
{
    if (!IsBattlerAIControlled(battlerId))
    {
        u32 i;

        gBattleMons[battlerId].ability = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->saved[battlerId].ability;
        gBattleMons[battlerId].item = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->saved[battlerId].heldItem;
        gBattleMons[battlerId].species = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->saved[battlerId].species;
        for (i = 0; i < 4; i++)
            gBattleMons[battlerId].moves[i] = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->saved[battlerId].moves[i];
    }
}

static bool32 AI_GetIfCrit(u32 move, u8 battlerAtk, u8 battlerDef)
{
    bool32 isCrit;

    switch (CalcCritChanceStage(battlerAtk, battlerDef, move, 0))
    {
    case -1:
    case 0:
    default:
        isCrit = 0;
        break;
    case 1:
        if (gBattleMoves[move].flags & (1 << 6) && (Random() % 5 == 0))
            isCrit = 1;
        else
            isCrit = 0;
        break;
    case 2:
        if (gBattleMoves[move].flags & (1 << 6) && (Random() % 2 == 0))
            isCrit = 1;
        else if (!(gBattleMoves[move].flags & (1 << 6)) && (Random() % 4) == 0)
            isCrit = 1;
        else
            isCrit = 0;
        break;
    case -2:
    case 3:
    case 4:
        isCrit = 1;
        break;
    }

    return isCrit;
}

s32 AI_CalcDamage(u16 move, u8 battlerAtk, u8 battlerDef)
{
    s32 dmg, moveType;

    SaveBattlerData(battlerAtk);
    SaveBattlerData(battlerDef);

    SetBattlerData(battlerAtk);
    SetBattlerData(battlerDef);

    gBattleStruct->dynamicMoveType = 0;
    SetTypeBeforeUsingMove(move, battlerAtk);
    { if (gBattleStruct->dynamicMoveType) moveType = gBattleStruct->dynamicMoveType & 0x3F; else moveType = gBattleMoves[move].type; };
    dmg = CalculateMoveDamage(move, battlerAtk, battlerDef, moveType, 0, AI_GetIfCrit(move, battlerAtk, battlerDef), 0, 0);

    RestoreBattlerData(battlerAtk);
    RestoreBattlerData(battlerDef);

    return dmg;
}

s32 AI_CalcPartyMonDamage(u16 move, u8 battlerAtk, u8 battlerDef, struct Pokemon *mon)
{
    s32 dmg;
    u32 i;
    struct BattlePokemon *battleMons = Alloc(sizeof(struct BattlePokemon) * 4);

    for (i = 0; i < 4; i++)
        battleMons[i] = gBattleMons[i];

    PokemonToBattleMon(mon, &gBattleMons[battlerAtk]);
    dmg = AI_CalcDamage(move, battlerAtk, battlerDef);

    for (i = 0; i < 4; i++)
        gBattleMons[i] = battleMons[i];

    Free(battleMons);

    return dmg;
}

u16 AI_GetTypeEffectiveness(u16 move, u8 battlerAtk, u8 battlerDef)
{
    u16 typeEffectiveness, moveType;

    SaveBattlerData(battlerAtk);
    SaveBattlerData(battlerDef);

    SetBattlerData(battlerAtk);
    SetBattlerData(battlerDef);

    gBattleStruct->dynamicMoveType = 0;
    SetTypeBeforeUsingMove(move, battlerAtk);
    { if (gBattleStruct->dynamicMoveType) moveType = gBattleStruct->dynamicMoveType & 0x3F; else moveType = gBattleMoves[move].type; };
    typeEffectiveness = CalcTypeEffectivenessMultiplier(move, moveType, battlerAtk, battlerDef, 0);

    RestoreBattlerData(battlerAtk);
    RestoreBattlerData(battlerDef);

    return typeEffectiveness;
}

static void Cmd_if_random_less_than(void)
{
    u16 random = Random();

    if (random % 256 < gAIScriptPtr[1])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void Cmd_if_random_greater_than(void)
{
    u16 random = Random();

    if (random % 256 > gAIScriptPtr[1])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void Cmd_if_random_equal(void)
{
    u16 random = Random();

    if (random % 256 == gAIScriptPtr[1])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void Cmd_if_random_not_equal(void)
{
    u16 random = Random();

    if (random % 256 != gAIScriptPtr[1])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void Cmd_score(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex] += gAIScriptPtr[1];

    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex] < 0)
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->score[((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex] = 0;

    gAIScriptPtr += 2;
}

static u8 BattleAI_GetWantedBattler(u8 wantedBattler)
{
    switch (wantedBattler)
    {
    case 1:
        return sBattler_AI;
    case 0:
    default:
        return gBattlerTarget;
    case 3:
        return sBattler_AI ^ 2;
    case 2:
        return gBattlerTarget ^ 2;
    }
}

static void Cmd_if_hp_less_than(void)
{
    u16 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    if ((u32)(100 * gBattleMons[battlerId].hp / gBattleMons[battlerId].maxHP) < gAIScriptPtr[2])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}

static void Cmd_if_hp_more_than(void)
{
    u16 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    if ((u32)(100 * gBattleMons[battlerId].hp / gBattleMons[battlerId].maxHP) > gAIScriptPtr[2])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}

static void Cmd_if_hp_equal(void)
{
    u16 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    if ((u32)(100 * gBattleMons[battlerId].hp / gBattleMons[battlerId].maxHP) == gAIScriptPtr[2])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}

static void Cmd_if_hp_not_equal(void)
{
    u16 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    if ((u32)(100 * gBattleMons[battlerId].hp / gBattleMons[battlerId].maxHP) != gAIScriptPtr[2])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}

static void Cmd_if_status(void)
{
    u16 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u32 status = ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));

    if (gBattleMons[battlerId].status1 & status)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 6)[0] | ((gAIScriptPtr + 6)[1] << 8) | ((gAIScriptPtr + 6)[2] << 16) | ((gAIScriptPtr + 6)[3] << 24));
    else
        gAIScriptPtr += 10;
}

static void Cmd_if_not_status(void)
{
    u16 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u32 status = ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));

    if (!(gBattleMons[battlerId].status1 & status))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 6)[0] | ((gAIScriptPtr + 6)[1] << 8) | ((gAIScriptPtr + 6)[2] << 16) | ((gAIScriptPtr + 6)[3] << 24));
    else
        gAIScriptPtr += 10;
}

static void Cmd_if_status2(void)
{
    u16 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u32 status = ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));

    if ((gBattleMons[battlerId].status2 & status))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 6)[0] | ((gAIScriptPtr + 6)[1] << 8) | ((gAIScriptPtr + 6)[2] << 16) | ((gAIScriptPtr + 6)[3] << 24));
    else
        gAIScriptPtr += 10;
}

static void Cmd_if_not_status2(void)
{
    u16 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u32 status = ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));

    if (!(gBattleMons[battlerId].status2 & status))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 6)[0] | ((gAIScriptPtr + 6)[1] << 8) | ((gAIScriptPtr + 6)[2] << 16) | ((gAIScriptPtr + 6)[3] << 24));
    else
        gAIScriptPtr += 10;
}

static void Cmd_if_status3(void)
{
    u16 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u32 status = ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));

    if (gStatuses3[battlerId] & status)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 6)[0] | ((gAIScriptPtr + 6)[1] << 8) | ((gAIScriptPtr + 6)[2] << 16) | ((gAIScriptPtr + 6)[3] << 24));
    else
        gAIScriptPtr += 10;
}

static void Cmd_if_not_status3(void)
{
    u16 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u32 status = ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));

    if (!(gStatuses3[battlerId] & status))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 6)[0] | ((gAIScriptPtr + 6)[1] << 8) | ((gAIScriptPtr + 6)[2] << 16) | ((gAIScriptPtr + 6)[3] << 24));
    else
        gAIScriptPtr += 10;
}

static void Cmd_if_side_affecting(void)
{
    u16 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u32 status = ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    u32 side = (GetBattlerPosition(battlerId) & 1);

    if (gSideStatuses[side] & status)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 6)[0] | ((gAIScriptPtr + 6)[1] << 8) | ((gAIScriptPtr + 6)[2] << 16) | ((gAIScriptPtr + 6)[3] << 24));
    else
        gAIScriptPtr += 10;
}

static void Cmd_if_not_side_affecting(void)
{
    u16 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u32 status = ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    u32 side = (GetBattlerPosition(battlerId) & 1);

    if (!(gSideStatuses[side] & status))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 6)[0] | ((gAIScriptPtr + 6)[1] << 8) | ((gAIScriptPtr + 6)[2] << 16) | ((gAIScriptPtr + 6)[3] << 24));
    else
        gAIScriptPtr += 10;
}

static void Cmd_if_less_than(void)
{
    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult < gAIScriptPtr[1])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void Cmd_if_more_than(void)
{
    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult > gAIScriptPtr[1])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void Cmd_if_equal(void)
{
    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult == gAIScriptPtr[1])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void Cmd_if_not_equal(void)
{
    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult != gAIScriptPtr[1])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void Cmd_if_less_than_ptr(void)
{
    const u8 *value = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));

    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult < *value)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 5)[0] | ((gAIScriptPtr + 5)[1] << 8) | ((gAIScriptPtr + 5)[2] << 16) | ((gAIScriptPtr + 5)[3] << 24));
    else
        gAIScriptPtr += 9;
}

static void Cmd_if_more_than_ptr(void)
{
    const u8 *value = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));

    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult > *value)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 5)[0] | ((gAIScriptPtr + 5)[1] << 8) | ((gAIScriptPtr + 5)[2] << 16) | ((gAIScriptPtr + 5)[3] << 24));
    else
        gAIScriptPtr += 9;
}

static void Cmd_if_equal_ptr(void)
{
    const u8 *value = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));

    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult == *value)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 5)[0] | ((gAIScriptPtr + 5)[1] << 8) | ((gAIScriptPtr + 5)[2] << 16) | ((gAIScriptPtr + 5)[3] << 24));
    else
        gAIScriptPtr += 9;
}

static void Cmd_if_not_equal_ptr(void)
{
    const u8 *value = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));

    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult != *value)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 5)[0] | ((gAIScriptPtr + 5)[1] << 8) | ((gAIScriptPtr + 5)[2] << 16) | ((gAIScriptPtr + 5)[3] << 24));
    else
        gAIScriptPtr += 9;
}

static void Cmd_if_move(void)
{
    u16 move = ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8));

    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered == move)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}

static void Cmd_if_not_move(void)
{
    u16 move = ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8));

    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered != move)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}

static void Cmd_if_in_bytes(void)
{
    const u8 *ptr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));

    while (*ptr != 0xFF)
    {
        if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult == *ptr)
        {
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 5)[0] | ((gAIScriptPtr + 5)[1] << 8) | ((gAIScriptPtr + 5)[2] << 16) | ((gAIScriptPtr + 5)[3] << 24));
            return;
        }
        ptr++;
    }
    gAIScriptPtr += 9;
}

static void Cmd_if_not_in_bytes(void)
{
    const u8 *ptr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));

    while (*ptr != 0xFF)
    {
        if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult == *ptr)
        {
            gAIScriptPtr += 9;
            return;
        }
        ptr++;
    }
    gAIScriptPtr = (u8*) ((gAIScriptPtr + 5)[0] | ((gAIScriptPtr + 5)[1] << 8) | ((gAIScriptPtr + 5)[2] << 16) | ((gAIScriptPtr + 5)[3] << 24));
}

static void Cmd_if_in_hwords(void)
{
    const u16 *ptr = (const u16 *)(u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));

    while (*ptr != 0xFFFF)
    {
        if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult == *ptr)
        {
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 5)[0] | ((gAIScriptPtr + 5)[1] << 8) | ((gAIScriptPtr + 5)[2] << 16) | ((gAIScriptPtr + 5)[3] << 24));
            return;
        }
        ptr++;
    }
    gAIScriptPtr += 9;
}

static void Cmd_if_not_in_hwords(void)
{
    const u16 *ptr = (const u16 *)(u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));

    while (*ptr != 0xFFFF)
    {
        if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult == *ptr)
        {
            gAIScriptPtr += 9;
            return;
        }
        ptr++;
    }
    gAIScriptPtr = (u8*) ((gAIScriptPtr + 5)[0] | ((gAIScriptPtr + 5)[1] << 8) | ((gAIScriptPtr + 5)[2] << 16) | ((gAIScriptPtr + 5)[3] << 24));
}

static void Cmd_if_user_has_attacking_move(void)
{
    s32 i;

    for (i = 0; i < 4; i++)
    {
        if (gBattleMons[sBattler_AI].moves[i] != 0
            && gBattleMoves[gBattleMons[sBattler_AI].moves[i]].power != 0)
            break;
    }

    if (i == 4)
        gAIScriptPtr += 5;
    else
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
}

static void Cmd_if_user_has_no_attacking_moves(void)
{
    s32 i;

    for (i = 0; i < 4; i++)
    {
        if (gBattleMons[sBattler_AI].moves[i] != 0
         && gBattleMoves[gBattleMons[sBattler_AI].moves[i]].power != 0)
            break;
    }

    if (i != 4)
        gAIScriptPtr += 5;
    else
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
}

static void Cmd_get_turn_count(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleResults.battleTurnCounter;
    gAIScriptPtr += 1;
}

static void Cmd_get_type(void)
{
    u8 typeVar = gAIScriptPtr[1];

    switch (typeVar)
    {
    case 1:
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleMons[sBattler_AI].type1;
        break;
    case 0:
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleMons[gBattlerTarget].type1;
        break;
    case 3:
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleMons[sBattler_AI].type2;
        break;
    case 2:
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleMons[gBattlerTarget].type2;
        break;
    case 4:
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered].type;
        break;
    }
    gAIScriptPtr += 2;
}

static void Cmd_is_of_type(void)
{
    u8 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    if (((gBattleMons[battlerId].type1 == gAIScriptPtr[2] || gBattleMons[battlerId].type2 == gAIScriptPtr[2] || gBattleMons[battlerId].type3 == gAIScriptPtr[2])))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 1;
    else
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 0;

    gAIScriptPtr += 3;
}

static void Cmd_get_considered_move_power(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered].power;
    gAIScriptPtr += 1;
}


static u32 WhichMoveBetter(u32 move1, u32 move2)
{
    s32 defAbility = AI_GetAbility(gBattlerTarget, 0);


    if (GetBattlerHoldEffect(sBattler_AI, 1) != 149
        && (((struct BattleHistory *)(gBattleResources->battleHistory))->itemEffects[gBattlerTarget] == 120
        || defAbility == 160 || defAbility == 24))
    {
        if ((GetBattleMoveSplit(move1) == 0x0) && !(GetBattleMoveSplit(move2) == 0x0))
            return 1;
        if ((GetBattleMoveSplit(move2) == 0x0) && !(GetBattleMoveSplit(move1) == 0x0))
            return 0;
    }

    if (GetBattlerAbility(sBattler_AI) != 69)
    {
        if (((gBattleMoves[move1].effect == 48
                || gBattleMoves[move1].effect == 45
                || gBattleMoves[move1].effect == 289
                || gBattleMoves[move1].effect == 198
                || gBattleMoves[move1].effect == 287)
            && (gBattleMoves[move2].effect != 48
                 && gBattleMoves[move2].effect != 45
                 && gBattleMoves[move2].effect != 289
                 && gBattleMoves[move2].effect != 198
                 && gBattleMoves[move2].effect != 287
                 && gBattleMoves[move2].effect != 80)))
            return 1;

        if (((gBattleMoves[move2].effect == 48
                || gBattleMoves[move2].effect == 45
                || gBattleMoves[move2].effect == 289
                || gBattleMoves[move2].effect == 198
                || gBattleMoves[move2].effect == 287)
            && (gBattleMoves[move1].effect != 48
                 && gBattleMoves[move1].effect != 45
                 && gBattleMoves[move1].effect != 289
                 && gBattleMoves[move1].effect != 198
                 && gBattleMoves[move1].effect != 287
                 && gBattleMoves[move1].effect != 80)))
            return 0;
    }

    if (gBattleMoves[move1].effect == 80 && gBattleMoves[move2].effect != 80)
        return 1;
    if (gBattleMoves[move2].effect == 80 && gBattleMoves[move1].effect != 80)
        return 0;

    if (gBattleMoves[move1].effect == 0 && gBattleMoves[move2].effect != 0)
        return 1;
    if (gBattleMoves[move2].effect == 0 && gBattleMoves[move1].effect != 0)
        return 0;

    return 2;
}

static void Cmd_get_how_powerful_move_is(void)
{
    s32 i, checkedMove, bestId, currId, hp;
    s32 moveDmgs[4];

    for (i = 0; sDiscouragedPowerfulMoveEffects[i] != 0xFFFF; i++)
    {
        if (gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered].effect == sDiscouragedPowerfulMoveEffects[i])
            break;
    }

    if (gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered].power != 0
        && sDiscouragedPowerfulMoveEffects[i] == 0xFFFF)
    {
        for (checkedMove = 0; checkedMove < 4; checkedMove++)
        {
            for (i = 0; sDiscouragedPowerfulMoveEffects[i] != 0xFFFF; i++)
            {
                if (gBattleMoves[gBattleMons[sBattler_AI].moves[checkedMove]].effect == sDiscouragedPowerfulMoveEffects[i])
                    break;
            }

            if (gBattleMons[sBattler_AI].moves[checkedMove] != 0
                && sDiscouragedPowerfulMoveEffects[i] == 0xFFFF
                && gBattleMoves[gBattleMons[sBattler_AI].moves[checkedMove]].power != 0)
            {
                moveDmgs[checkedMove] = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->simulatedDmg[sBattler_AI][gBattlerTarget][checkedMove];
            }
            else
            {
                moveDmgs[checkedMove] = 0;
            }
        }

        hp = gBattleMons[gBattlerTarget].hp + (20 * gBattleMons[gBattlerTarget].hp / 100);

        for (i = 0; i < 4; i++)
        {
            if (moveDmgs[i] > hp)
                moveDmgs[i] = hp;
        }

        for (bestId = 0, i = 1; i < 4; i++)
        {
            if (moveDmgs[i] > moveDmgs[bestId])
                bestId = i;
            if (moveDmgs[i] == moveDmgs[bestId])
            {
                switch (WhichMoveBetter(gBattleMons[sBattler_AI].moves[bestId], gBattleMons[sBattler_AI].moves[i]))
                {
                case 2:
                    if (Random() & 1)
                        break;
                case 1:
                    bestId = i;
                    break;
                }
            }
        }

        currId = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex;
        if (currId == bestId)
            ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 1;

        else if ((moveDmgs[currId] >= hp || moveDmgs[bestId] < hp)
                 && (moveDmgs[bestId] * 100 / hp) - (moveDmgs[currId] * 100 / hp) <= 30
                 && WhichMoveBetter(gBattleMons[sBattler_AI].moves[bestId], gBattleMons[sBattler_AI].moves[currId]) != 0)
            ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 2;
        else
            ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 3;
    }
    else
    {
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 0;
    }

    gAIScriptPtr++;
}

static void Cmd_get_last_used_battler_move(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gLastMoves[BattleAI_GetWantedBattler(gAIScriptPtr[1])];
    gAIScriptPtr += 2;
}

static void Cmd_if_equal_u32(void)
{
    if (((&gAIScriptPtr[1])[0] | ((&gAIScriptPtr[1])[1] << 8) | ((&gAIScriptPtr[1])[2] << 16) | ((&gAIScriptPtr[1])[3] << 24)) == ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 5)[0] | ((gAIScriptPtr + 5)[1] << 8) | ((gAIScriptPtr + 5)[2] << 16) | ((gAIScriptPtr + 5)[3] << 24));
    else
        gAIScriptPtr += 9;
}

static void Cmd_if_not_equal_u32(void)
{
    if (((&gAIScriptPtr[1])[0] | ((&gAIScriptPtr[1])[1] << 8) | ((&gAIScriptPtr[1])[2] << 16) | ((&gAIScriptPtr[1])[3] << 24)) != ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 5)[0] | ((gAIScriptPtr + 5)[1] << 8) | ((gAIScriptPtr + 5)[2] << 16) | ((gAIScriptPtr + 5)[3] << 24));
    else
        gAIScriptPtr += 9;
}

static void Cmd_if_user_goes(void)
{
    u32 fasterAI = 0, fasterPlayer = 0, i;
    s8 prioAI, prioPlayer;


    prioAI = GetMovePriority(sBattler_AI, ((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered);
    SaveBattlerData(gBattlerTarget);
    SetBattlerData(gBattlerTarget);
    for (i = 0; i < 4; i++)
    {
        if (gBattleMons[gBattlerTarget].moves[i] == 0 || gBattleMons[gBattlerTarget].moves[i] == 0xFFFF)
            continue;

        prioPlayer = GetMovePriority(gBattlerTarget, gBattleMons[gBattlerTarget].moves[i]);
        if (prioAI > prioPlayer)
            fasterAI++;
        else if (prioPlayer > prioAI)
            fasterPlayer++;
    }
    RestoreBattlerData(gBattlerTarget);

    if (fasterAI > fasterPlayer)
    {
        if (gAIScriptPtr[1] == 0)
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
        else
            gAIScriptPtr += 6;
    }
    else if (fasterAI < fasterPlayer)
    {
        if (gAIScriptPtr[1] == 1)
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
        else
            gAIScriptPtr += 6;
    }
    else
    {

        if (GetWhoStrikesFirst(sBattler_AI, gBattlerTarget, 1) == gAIScriptPtr[1])
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
        else
            gAIScriptPtr += 6;
    }
}

static void Cmd_nullsub_2A(void)
{
}

static void Cmd_nullsub_2B(void)
{
}

static s32 CountUsablePartyMons(u8 battlerId)
{
    s32 battlerOnField1, battlerOnField2, i, ret;
    struct Pokemon *party;

    if (GetBattlerSide(battlerId) == 0)
        party = gPlayerParty;
    else
        party = gEnemyParty;

    if (gBattleTypeFlags & (1 << 0))
    {
        battlerOnField1 = gBattlerPartyIndexes[battlerId];
        battlerOnField2 = gBattlerPartyIndexes[GetBattlerAtPosition(GetBattlerPosition(battlerId) ^ 2)];
    }
    else
    {
        battlerOnField1 = gBattlerPartyIndexes[battlerId];
        battlerOnField2 = gBattlerPartyIndexes[battlerId];
    }

    ret = 0;
    for (i = 0; i < 6; i++)
    {
        if (i != battlerOnField1 && i != battlerOnField2
         && GetMonData(&party[i], 57) != 0
         && GetMonData(&party[i], 65) != 0
         && GetMonData(&party[i], 65) != 898 + 308 + 1)
        {
            ret++;
        }
    }

    return ret;
}

static void Cmd_count_usable_party_mons(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = CountUsablePartyMons(BattleAI_GetWantedBattler(gAIScriptPtr[1]));
    gAIScriptPtr += 2;
}

static void Cmd_get_considered_move(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered;
    gAIScriptPtr += 1;
}

static void Cmd_get_considered_move_effect(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered].effect;
    gAIScriptPtr += 1;
}

static s32 AI_GetAbility(u32 battlerId, bool32 guess)
{

    if (IsBattlerAIControlled(battlerId))
        return gBattleMons[battlerId].ability;

    if (((struct BattleHistory *)(gBattleResources->battleHistory))->abilities[battlerId] != 0)
        return ((struct BattleHistory *)(gBattleResources->battleHistory))->abilities[battlerId];


    if (gBattleMons[battlerId].ability == 23
    || gBattleMons[battlerId].ability == 42
    || gBattleMons[battlerId].ability == 71)
        return gBattleMons[battlerId].ability;

    if (gBaseStats[gBattleMons[battlerId].species].abilities[0] != 0)
    {
        if (gBaseStats[gBattleMons[battlerId].species].abilities[1] != 0)
        {

            if (guess)
                return gBaseStats[gBattleMons[battlerId].species].abilities[Random() & 1];
        }
        else
        {
            return gBaseStats[gBattleMons[battlerId].species].abilities[0];
        }
    }
    return -1;
}

static void Cmd_get_ability(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = AI_GetAbility(BattleAI_GetWantedBattler(gAIScriptPtr[1]), 1);
    gAIScriptPtr += 2;
}

static void Cmd_check_ability(void)
{
    u32 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u32 ability = AI_GetAbility(battlerId, 0);

    if (ability == -1)
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 2;
    else if (ability == gAIScriptPtr[2])
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 1;
    else
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 0;

    gAIScriptPtr += 3;
}

static void Cmd_get_highest_type_effectiveness(void)
{
    s32 i;

    gMoveResultFlags = 0;
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 0;
    for (i = 0; i < 4; i++)
    {
        gCurrentMove = gBattleMons[sBattler_AI].moves[i];
        if (gCurrentMove != 0)
        {
            u32 effectivenessMultiplier = AI_GetTypeEffectiveness(gCurrentMove, sBattler_AI, gBattlerTarget);

            switch (effectivenessMultiplier)
            {
            case ((u16)((0.0) * 4096)):
            default:
                gBattleMoveDamage = 0;
                break;
            case ((u16)((0.25) * 4096)):
                gBattleMoveDamage = 10;
                break;
            case ((u16)((0.5) * 4096)):
                gBattleMoveDamage = 20;
                break;
            case ((u16)((1.0) * 4096)):
                gBattleMoveDamage = 40;
                break;
            case ((u16)((2.0) * 4096)):
                gBattleMoveDamage = 80;
                break;
            case ((u16)((4.0) * 4096)):
                gBattleMoveDamage = 160;
                break;
            }

            if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult < gBattleMoveDamage)
                ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleMoveDamage;
        }
    }

    gAIScriptPtr += 1;
}

static void Cmd_if_type_effectiveness(void)
{
    u8 damageVar;
    u32 effectivenessMultiplier;

    gMoveResultFlags = 0;
    gCurrentMove = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered;
    effectivenessMultiplier = AI_GetTypeEffectiveness(gCurrentMove, sBattler_AI, gBattlerTarget);
    switch (effectivenessMultiplier)
    {
    case ((u16)((0.0) * 4096)):
    default:
        damageVar = 0;
        break;
    case ((u16)((0.25) * 4096)):
        damageVar = 10;
        break;
    case ((u16)((0.5) * 4096)):
        damageVar = 20;
        break;
    case ((u16)((1.0) * 4096)):
        damageVar = 40;
        break;
    case ((u16)((2.0) * 4096)):
        damageVar = 80;
        break;
    case ((u16)((4.0) * 4096)):
        damageVar = 160;
        break;
    }

    if (damageVar == gAIScriptPtr[1])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void Cmd_nullsub_32(void)
{
}

static void Cmd_nullsub_33(void)
{
}

static void Cmd_if_status_in_party(void)
{
    struct Pokemon *party;
    s32 i;
    u32 statusToCompareTo;
    u8 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    party = (GetBattlerSide(battlerId) == 0) ? gPlayerParty : gEnemyParty;

    statusToCompareTo = ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));

    for (i = 0; i < 6; i++)
    {
        u16 species = GetMonData(&party[i], 11);
        u16 hp = GetMonData(&party[i], 57);
        u32 status = GetMonData(&party[i], 55);

        if (species != 0 && species != 898 + 308 + 1 && hp != 0 && status == statusToCompareTo)
        {
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 6)[0] | ((gAIScriptPtr + 6)[1] << 8) | ((gAIScriptPtr + 6)[2] << 16) | ((gAIScriptPtr + 6)[3] << 24));
            return;
        }
    }

    gAIScriptPtr += 10;
}

static void Cmd_if_status_not_in_party(void)
{
    struct Pokemon *party;
    s32 i;
    u32 statusToCompareTo;
    u8 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    party = (GetBattlerSide(battlerId) == 0) ? gPlayerParty : gEnemyParty;

    statusToCompareTo = ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));

    for (i = 0; i < 6; i++)
    {
        u16 species = GetMonData(&party[i], 11);
        u16 hp = GetMonData(&party[i], 57);
        u32 status = GetMonData(&party[i], 55);

        if (species != 0 && species != 898 + 308 + 1 && hp != 0 && status == statusToCompareTo)
        {
            gAIScriptPtr += 10;
            return;
        }
    }

    gAIScriptPtr = (u8*) ((gAIScriptPtr + 6)[0] | ((gAIScriptPtr + 6)[1] << 8) | ((gAIScriptPtr + 6)[2] << 16) | ((gAIScriptPtr + 6)[3] << 24));
}

static void Cmd_get_weather(void)
{
    if (gBattleWeather & ((1 << 0) | (1 << 1) | (1 << 2)))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 2;
    else if (gBattleWeather & ((1 << 3) | (1 << 4)))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 3;
    else if (gBattleWeather & ((1 << 5) | (1 << 6)))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 1;
    else if (gBattleWeather & ((1 << 7) | (1 << 8)))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 4;
    else
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 0;

    gAIScriptPtr += 1;
}

static void Cmd_if_effect(void)
{
    if (gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered].effect == ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8)))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}

static void Cmd_if_not_effect(void)
{
    if (gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered].effect != ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8)))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}

static void Cmd_if_stat_level_less_than(void)
{
    u32 battlerId;

    if (gAIScriptPtr[1] == 1)
        battlerId = sBattler_AI;
    else
        battlerId = gBattlerTarget;

    if (gBattleMons[battlerId].statStages[gAIScriptPtr[2]] < gAIScriptPtr[3])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 4)[0] | ((gAIScriptPtr + 4)[1] << 8) | ((gAIScriptPtr + 4)[2] << 16) | ((gAIScriptPtr + 4)[3] << 24));
    else
        gAIScriptPtr += 8;
}

static void Cmd_if_stat_level_more_than(void)
{
    u32 battlerId;

    if (gAIScriptPtr[1] == 1)
        battlerId = sBattler_AI;
    else
        battlerId = gBattlerTarget;

    if (gBattleMons[battlerId].statStages[gAIScriptPtr[2]] > gAIScriptPtr[3])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 4)[0] | ((gAIScriptPtr + 4)[1] << 8) | ((gAIScriptPtr + 4)[2] << 16) | ((gAIScriptPtr + 4)[3] << 24));
    else
        gAIScriptPtr += 8;
}

static void Cmd_if_stat_level_equal(void)
{
    u32 battlerId;

    if (gAIScriptPtr[1] == 1)
        battlerId = sBattler_AI;
    else
        battlerId = gBattlerTarget;

    if (gBattleMons[battlerId].statStages[gAIScriptPtr[2]] == gAIScriptPtr[3])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 4)[0] | ((gAIScriptPtr + 4)[1] << 8) | ((gAIScriptPtr + 4)[2] << 16) | ((gAIScriptPtr + 4)[3] << 24));
    else
        gAIScriptPtr += 8;
}

static void Cmd_if_stat_level_not_equal(void)
{
    u32 battlerId;

    if (gAIScriptPtr[1] == 1)
        battlerId = sBattler_AI;
    else
        battlerId = gBattlerTarget;

    if (gBattleMons[battlerId].statStages[gAIScriptPtr[2]] != gAIScriptPtr[3])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 4)[0] | ((gAIScriptPtr + 4)[1] << 8) | ((gAIScriptPtr + 4)[2] << 16) | ((gAIScriptPtr + 4)[3] << 24));
    else
        gAIScriptPtr += 8;
}

static void Cmd_if_can_faint(void)
{
    s32 dmg;

    if (gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered].power == 0)
    {
        gAIScriptPtr += 5;
        return;
    }

    dmg = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->simulatedDmg[sBattler_AI][gBattlerTarget][((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex];
    if (gBattleMons[gBattlerTarget].hp <= dmg)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void Cmd_if_cant_faint(void)
{
    s32 dmg;

    if (gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered].power < 2)
    {
        gAIScriptPtr += 5;
        return;
    }

    dmg = ((struct AI_ThinkingStruct *)(gBattleResources->ai))->simulatedDmg[sBattler_AI][gBattlerTarget][((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex];
    if (gBattleMons[gBattlerTarget].hp > dmg)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void Cmd_if_has_move(void)
{
    s32 i;
    const u16 *movePtr = (u16 *)(gAIScriptPtr + 2);

    switch (gAIScriptPtr[1])
    {
    case 1:
        for (i = 0; i < 4; i++)
        {
            if (gBattleMons[sBattler_AI].moves[i] == *movePtr)
                break;
        }
        if (i == 4)
            gAIScriptPtr += 8;
        else
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 4)[0] | ((gAIScriptPtr + 4)[1] << 8) | ((gAIScriptPtr + 4)[2] << 16) | ((gAIScriptPtr + 4)[3] << 24));
        break;
    case 3:
        if (gBattleMons[sBattler_AI ^ 2].hp == 0)
        {
            gAIScriptPtr += 8;
            break;
        }
        else
        {
            for (i = 0; i < 4; i++)
            {
                if (gBattleMons[sBattler_AI ^ 2].moves[i] == *movePtr)
                    break;
            }
        }
        if (i == 4)
            gAIScriptPtr += 8;
        else
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 4)[0] | ((gAIScriptPtr + 4)[1] << 8) | ((gAIScriptPtr + 4)[2] << 16) | ((gAIScriptPtr + 4)[3] << 24));
        break;
    case 0:
    case 2:
        for (i = 0; i < 4; i++)
        {
            if (((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[gBattlerTarget].moves[i] == *movePtr)
                break;
        }
        if (i == 4)
            gAIScriptPtr += 8;
        else
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 4)[0] | ((gAIScriptPtr + 4)[1] << 8) | ((gAIScriptPtr + 4)[2] << 16) | ((gAIScriptPtr + 4)[3] << 24));
        break;
    }
}

static void Cmd_if_doesnt_have_move(void)
{
    s32 i;
    const u16 *movePtr = (u16 *)(gAIScriptPtr + 2);

    switch(gAIScriptPtr[1])
    {
    case 1:
    case 3:
        for (i = 0; i < 4; i++)
        {
            if (gBattleMons[sBattler_AI].moves[i] == *movePtr)
                break;
        }
        if (i != 4)
            gAIScriptPtr += 8;
        else
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 4)[0] | ((gAIScriptPtr + 4)[1] << 8) | ((gAIScriptPtr + 4)[2] << 16) | ((gAIScriptPtr + 4)[3] << 24));
        break;
    case 0:
    case 2:
        for (i = 0; i < 4; i++)
        {
            if (((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[gBattlerTarget].moves[i] == *movePtr)
                break;
        }
        if (i != 4)
            gAIScriptPtr += 8;
        else
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 4)[0] | ((gAIScriptPtr + 4)[1] << 8) | ((gAIScriptPtr + 4)[2] << 16) | ((gAIScriptPtr + 4)[3] << 24));
        break;
    }
}

static void Cmd_if_has_move_with_effect(void)
{
    s32 i;

    switch (gAIScriptPtr[1])
    {
    case 1:
    case 3:
        for (i = 0; i < 4; i++)
        {
            if (gBattleMons[sBattler_AI].moves[i] != 0 && gBattleMoves[gBattleMons[sBattler_AI].moves[i]].effect == gAIScriptPtr[2])
                break;
        }
        if (i == 4)
            gAIScriptPtr += 7;
        else
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
        break;
    case 0:
    case 2:
        for (i = 0; i < 4; i++)
        {
            if (gBattleMons[gBattlerTarget].moves[i] != 0 && gBattleMoves[((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[gBattlerTarget].moves[i]].effect == gAIScriptPtr[2])
                break;
        }
        if (i == 4)
            gAIScriptPtr += 7;
        else
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
        break;
    }
}

static void Cmd_if_doesnt_have_move_with_effect(void)
{
    s32 i;

    switch (gAIScriptPtr[1])
    {
    case 1:
    case 3:
        for (i = 0; i < 4; i++)
        {
            if(gBattleMons[sBattler_AI].moves[i] != 0 && gBattleMoves[gBattleMons[sBattler_AI].moves[i]].effect == gAIScriptPtr[2])
                break;
        }
        if (i != 4)
            gAIScriptPtr += 7;
        else
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
        break;
    case 0:
    case 2:
        for (i = 0; i < 4; i++)
        {
            if (((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[gBattlerTarget].moves[i] && gBattleMoves[((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[gBattlerTarget].moves[i]].effect == gAIScriptPtr[2])
                break;
        }
        if (i != 4)
            gAIScriptPtr += 7;
        else
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
        break;
    }
}

static void Cmd_if_any_move_disabled_or_encored(void)
{
    u8 battlerId;

    if (gAIScriptPtr[1] == 1)
        battlerId = sBattler_AI;
    else
        battlerId = gBattlerTarget;

    if (gAIScriptPtr[2] == 0)
    {
        if (gDisableStructs[battlerId].disabledMove == 0)
            gAIScriptPtr += 7;
        else
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    }
    else if (gAIScriptPtr[2] != 1)
    {
        gAIScriptPtr += 7;
    }
    else
    {
        if (gDisableStructs[battlerId].encoredMove != 0)
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
        else
            gAIScriptPtr += 7;
    }
}

static void Cmd_if_curr_move_disabled_or_encored(void)
{
    switch (gAIScriptPtr[1])
    {
    case 0:
        if (gDisableStructs[gActiveBattler].disabledMove == ((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered)
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
        else
            gAIScriptPtr += 6;
        break;
    case 1:
        if (gDisableStructs[gActiveBattler].encoredMove == ((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered)
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
        else
            gAIScriptPtr += 6;
        break;
    default:
        gAIScriptPtr += 6;
        break;
    }
}

static void Cmd_flee(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiAction |= (0x0001 | 0x0002 | 0x0008);
}

static void Cmd_if_random_safari_flee(void)
{
    u8 safariFleeRate = gBattleStruct->safariEscapeFactor * 5;

    if ((u8)(Random() % 100) < safariFleeRate)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void Cmd_watch(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiAction |= (0x0001 | 0x0004 | 0x0008);
}

static void Cmd_get_hold_effect(void)
{
    u32 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    if (!IsBattlerAIControlled(battlerId))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = ((struct BattleHistory *)(gBattleResources->battleHistory))->itemEffects[battlerId];
    else
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = GetBattlerHoldEffect(battlerId, 0);

    gAIScriptPtr += 2;
}

static void Cmd_if_holds_item(void)
{
    u8 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u16 item;

    if ((battlerId & 1) == (sBattler_AI & 1))
        item = gBattleMons[battlerId].item;
    else
        item = ((struct BattleHistory *)(gBattleResources->battleHistory))->itemEffects[battlerId];

    if (((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8)) == item)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 4)[0] | ((gAIScriptPtr + 4)[1] << 8) | ((gAIScriptPtr + 4)[2] << 16) | ((gAIScriptPtr + 4)[3] << 24));
    else
        gAIScriptPtr += 8;
}

static void Cmd_get_gender(void)
{
    u8 battlerId;

    if (gAIScriptPtr[1] == 1)
        battlerId = sBattler_AI;
    else
        battlerId = gBattlerTarget;

    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = GetGenderFromSpeciesAndPersonality(gBattleMons[battlerId].species, gBattleMons[battlerId].personality);

    gAIScriptPtr += 2;
}

static void Cmd_is_first_turn_for(void)
{
    u8 battlerId;

    if (gAIScriptPtr[1] == 1)
        battlerId = sBattler_AI;
    else
        battlerId = gBattlerTarget;

    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gDisableStructs[battlerId].isFirstTurn;

    gAIScriptPtr += 2;
}

static void Cmd_get_stockpile_count(void)
{
    u8 battlerId;

    if (gAIScriptPtr[1] == 1)
        battlerId = sBattler_AI;
    else
        battlerId = gBattlerTarget;

    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gDisableStructs[battlerId].stockpileCounter;

    gAIScriptPtr += 2;
}

static void Cmd_is_double_battle(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleTypeFlags & (1 << 0);

    gAIScriptPtr += 1;
}

static void Cmd_get_used_held_item(void)
{
    u8 battlerId;

    if (gAIScriptPtr[1] == 1)
        battlerId = sBattler_AI;
    else
        battlerId = gBattlerTarget;

    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleStruct->usedHeldItems[battlerId];

    gAIScriptPtr += 2;
}

static void Cmd_get_move_type_from_result(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult].type;

    gAIScriptPtr += 1;
}

static void Cmd_get_move_power_from_result(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult].power;

    gAIScriptPtr += 1;
}

static void Cmd_get_move_effect_from_result(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult].effect;

    gAIScriptPtr += 1;
}

static void Cmd_get_protect_count(void)
{
    u8 battlerId;

    if (gAIScriptPtr[1] == 1)
        battlerId = sBattler_AI;
    else
        battlerId = gBattlerTarget;

    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gDisableStructs[battlerId].protectUses;

    gAIScriptPtr += 2;
}

static void Cmd_if_move_flag(void)
{
    u32 flag = ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));

    if (gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered].flags & flag)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 5)[0] | ((gAIScriptPtr + 5)[1] << 8) | ((gAIScriptPtr + 5)[2] << 16) | ((gAIScriptPtr + 5)[3] << 24));
    else
        gAIScriptPtr += 9;
}

static void Cmd_if_field_status(void)
{
    u32 fieldFlags = ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));

    if (gFieldStatuses & fieldFlags)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 5)[0] | ((gAIScriptPtr + 5)[1] << 8) | ((gAIScriptPtr + 5)[2] << 16) | ((gAIScriptPtr + 5)[3] << 24));
    else
        gAIScriptPtr += 9;
}

static void Cmd_get_move_accuracy(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered].accuracy;

    gAIScriptPtr++;
}

static void Cmd_call_if_eq(void)
{
    if (((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult == ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8)))
    {
        AIStackPushVar(gAIScriptPtr + 7);
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    }
    else
    {
        gAIScriptPtr += 7;
    }
}

static void Cmd_call_if_move_flag(void)
{
    u32 flag = ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));

    if (gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered].flags & flag)
    {
        AIStackPushVar(gAIScriptPtr + 9);
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 5)[0] | ((gAIScriptPtr + 5)[1] << 8) | ((gAIScriptPtr + 5)[2] << 16) | ((gAIScriptPtr + 5)[3] << 24));
    }
    else
    {
        gAIScriptPtr += 9;
    }
}

static void Cmd_nullsub_57(void)
{
}

static void Cmd_call(void)
{
    AIStackPushVar(gAIScriptPtr + 5);
    gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
}

static void Cmd_goto(void)
{
    gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
}

static void Cmd_end(void)
{
    if (AIStackPop() == 0)
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->aiAction |= 0x0001;
}

static void Cmd_if_level_cond(void)
{
    switch (gAIScriptPtr[1])
    {
    case 0:
        if (gBattleMons[sBattler_AI].level > gBattleMons[gBattlerTarget].level)
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
        else
            gAIScriptPtr += 6;
        break;
    case 1:
        if (gBattleMons[sBattler_AI].level < gBattleMons[gBattlerTarget].level)
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
        else
            gAIScriptPtr += 6;
        break;
    case 2:
        if (gBattleMons[sBattler_AI].level == gBattleMons[gBattlerTarget].level)
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
        else
            gAIScriptPtr += 6;
        break;
    }
}

static void Cmd_if_target_taunted(void)
{
    if (gDisableStructs[gBattlerTarget].tauntTimer != 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void Cmd_if_target_not_taunted(void)
{
    if (gDisableStructs[gBattlerTarget].tauntTimer == 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void Cmd_if_target_is_ally(void)
{
    if ((sBattler_AI & 1) == (gBattlerTarget & 1))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void Cmd_if_flash_fired(void)
{
    u8 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    if (gBattleResources->flags->flags[battlerId] & 0x1)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void AIStackPushVar(const u8 *var)
{
    gBattleResources->AI_ScriptsStack->ptr[gBattleResources->AI_ScriptsStack->size++] = var;
}

static void AIStackPushVar_cursor(void)
{
    gBattleResources->AI_ScriptsStack->ptr[gBattleResources->AI_ScriptsStack->size++] = gAIScriptPtr;
}

static bool8 AIStackPop(void)
{
    if (gBattleResources->AI_ScriptsStack->size != 0)
    {
        --gBattleResources->AI_ScriptsStack->size;
        gAIScriptPtr = gBattleResources->AI_ScriptsStack->ptr[gBattleResources->AI_ScriptsStack->size];
        return 1;
    }
    else
    {
        return 0;
    }
}

static void Cmd_get_ally_chosen_move(void)
{
    u8 partnerBattler = ((sBattler_AI) ^ 2);
    if (!IsBattlerAlive(partnerBattler) || !IsBattlerAIControlled(partnerBattler))
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 0;
    else if (partnerBattler > sBattler_AI)
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 0;
    else
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleMons[partnerBattler].moves[gBattleStruct->chosenMovePositions[partnerBattler]];

    gAIScriptPtr++;
}

static void Cmd_if_has_no_attacking_moves(void)
{
    s32 i;
    u8 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    if (IsBattlerAIControlled(battlerId))
    {
        for (i = 0; i < 4; i++)
        {
            if (gBattleMons[battlerId].moves[i] != 0 && gBattleMoves[gBattleMons[battlerId].moves[i]].power != 0)
                break;
        }
    }
    else
    {
        for (i = 0; i < 4; i++)
        {
            if (((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].moves[i] != 0 && gBattleMoves[((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].moves[i]].power != 0)
                break;
        }
    }

    if (i == 4)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void Cmd_get_hazards_count(void)
{
    u8 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u8 side = GetBattlerSide(battlerId);

    switch (((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8)))
    {
    case 112:
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gSideTimers[side].spikesAmount;
        break;
    case 247:
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gSideTimers[side].toxicSpikesAmount;
        break;
    }

    gAIScriptPtr += 4;
}

static void Cmd_if_doesnt_hold_berry(void)
{
    u8 battlerId = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u16 item;

    if (IsBattlerAIControlled(battlerId))
        item = gBattleMons[battlerId].item;
    else
        item = ((struct BattleHistory *)(gBattleResources->battleHistory))->itemEffects[battlerId];

    if (ItemId_GetPocket(item) == 7)
        gAIScriptPtr += 6;
    else
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
}

static void Cmd_if_share_type(void)
{
    u8 battler1 = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u8 battler2 = BattleAI_GetWantedBattler(gAIScriptPtr[2]);

    if (DoBattlersShareType(battler1, battler2))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}

static void Cmd_if_cant_use_last_resort(void)
{
    u8 battler = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    if (CanUseLastResort(battler))
        gAIScriptPtr += 6;
    else
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
}

static u16 *GetMovesArray(u32 battler)
{
    if (IsBattlerAIControlled(battler) || IsBattlerAIControlled(((battler) ^ 2)))
        return gBattleMons[battler].moves;
    else
        return gBattleResources->battleHistory->usedMoves[battler].moves;
}

static bool32 HasMoveWithSplit(u32 battler, u32 split)
{
    s32 i;
    u16 *moves = GetMovesArray(battler);

    for (i = 0; i < 4; i++)
    {
        if (moves[i] != 0 && moves[i] != 0xFFFF && GetBattleMoveSplit(moves[i]) == split)
            return 1;
    }

    return 0;
}

static void Cmd_if_has_move_with_split(void)
{
    if (HasMoveWithSplit(BattleAI_GetWantedBattler(gAIScriptPtr[1]), gAIScriptPtr[2]))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}

static void Cmd_if_has_no_move_with_split(void)
{
    if (!HasMoveWithSplit(BattleAI_GetWantedBattler(gAIScriptPtr[1]), gAIScriptPtr[2]))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}



static bool32 MovesWithSplitUnusable(u32 attacker, u32 target, u32 split)
{
    s32 i, moveType;
    u32 usable = 0;
    u32 unusable = CheckMoveLimitations(attacker, 0, 0xFF);
    u16 *moves = GetMovesArray(attacker);

    for (i = 0; i < 4; i++)
    {
        if (moves[i] != 0
             && moves[i] != 0xFFFF
             && GetBattleMoveSplit(moves[i]) == split
             && !(unusable & gBitTable[i]))
        {
            SetTypeBeforeUsingMove(moves[i], attacker);
            { if (gBattleStruct->dynamicMoveType) moveType = gBattleStruct->dynamicMoveType & 0x3F; else moveType = gBattleMoves[moves[i]].type; };
            if (CalcTypeEffectivenessMultiplier(moves[i], moveType, attacker, target, 0) != 0)
                usable |= gBitTable[i];
        }
    }

    return (usable == 0);
}

static void Cmd_if_physical_moves_unusable(void)
{
    if (MovesWithSplitUnusable(BattleAI_GetWantedBattler(gAIScriptPtr[1]), BattleAI_GetWantedBattler(gAIScriptPtr[2]), 0x0))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}


static void Cmd_if_ai_can_go_down(void)
{
    s32 i, dmg;
    u32 unusable = CheckMoveLimitations(gBattlerTarget, 0, 0xFF & ~(1 << 1));
    u16 *moves = gBattleResources->battleHistory->usedMoves[gBattlerTarget].moves;

    for (i = 0; i < 4; i++)
    {
        if (moves[i] != 0 && moves[i] != 0xFFFF && !(unusable & gBitTable[i])
            && AI_CalcDamage(moves[i], gBattlerTarget, sBattler_AI) >= gBattleMons[sBattler_AI].hp)
        {
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
            return;
        }
    }

    gAIScriptPtr += 5;
}

static void Cmd_if_cant_use_belch(void)
{
    u32 battler = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    if (gBattleStruct->ateBerry[battler & 1] & gBitTable[gBattlerPartyIndexes[battler]])
        gAIScriptPtr += 6;
    else
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
}

static void Cmd_if_has_move_with_type(void)
{
    u32 i, moveType, battler = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u16 *moves = GetMovesArray(battler);

    for (i = 0; i < 4; i++)
    {
        if (moves[i] == 0)
            continue;

        SetTypeBeforeUsingMove(moves[i], battler);
        { if (gBattleStruct->dynamicMoveType) moveType = gBattleStruct->dynamicMoveType & 0x3F; else moveType = gBattleMoves[moves[i]].type; };
        if (moveType == gAIScriptPtr[2])
            break;
    }

    if (i == 4)
        gAIScriptPtr += 7;
    else
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
}

static void Cmd_if_has_move_with_flag(void)
{
    u32 i, flag, battler = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u16 *moves = GetMovesArray(battler);

    flag = ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    for (i = 0; i < 4; i++)
    {
        if (moves[i] != 0 && gBattleMoves[moves[i]].flags & flag)
        {
            gAIScriptPtr = (u8*) ((gAIScriptPtr + 6)[0] | ((gAIScriptPtr + 6)[1] << 8) | ((gAIScriptPtr + 6)[2] << 16) | ((gAIScriptPtr + 6)[3] << 24));
            return;
        }
    }

    gAIScriptPtr += 10;
}

static void Cmd_if_no_move_used(void)
{
    u32 i, battler = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    if (!IsBattlerAIControlled(battler))
    {
        for (i = 0; i < 4; i++)
        {
            if (((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battler].moves[i] != 0 && ((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battler].moves[i] != 0xFFFF)
            {
                gAIScriptPtr += 6;
                return;
            }
        }
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    }
    else
    {
        gAIScriptPtr += 6;
    }
}

static void Cmd_if_battler_absent(void)
{
    u32 battler = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    if (!IsBattlerAlive(battler))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void Cmd_is_grounded(void)
{
    u32 battler = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    if (IsBattlerGrounded(battler))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void Cmd_get_best_dmg_hp_percent(void)
{
    int i, bestDmg;

    bestDmg = 0;
    for (i = 0; i < 4; i++)
    {
        if (gBattleResources->ai->simulatedDmg[sBattler_AI][gBattlerTarget][i] > bestDmg)
            bestDmg = gBattleResources->ai->simulatedDmg[sBattler_AI][gBattlerTarget][i];
    }

    gBattleResources->ai->funcResult = (bestDmg * 100) / gBattleMons[gBattlerTarget].maxHP;
    gAIScriptPtr++;
}

static void Cmd_get_curr_dmg_hp_percent(void)
{
    int bestDmg = gBattleResources->ai->simulatedDmg[sBattler_AI][gBattlerTarget][((struct AI_ThinkingStruct *)(gBattleResources->ai))->movesetIndex];

    gBattleResources->ai->funcResult = (bestDmg * 100) / gBattleMons[gBattlerTarget].maxHP;
    gAIScriptPtr++;
}

static void Cmd_get_move_split_from_result(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = GetBattleMoveSplit(((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult);
    gAIScriptPtr += 1;
}

static void Cmd_get_considered_move_split(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = GetBattleMoveSplit(((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered);
    gAIScriptPtr += 1;
}

static void Cmd_get_considered_move_target(void)
{
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = gBattleMoves[((struct AI_ThinkingStruct *)(gBattleResources->ai))->moveConsidered].target;
    gAIScriptPtr += 1;
}

static void Cmd_compare_speeds(void)
{
    u8 battler1 = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u8 battler2 = BattleAI_GetWantedBattler(gAIScriptPtr[2]);
    ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = GetWhoStrikesFirst(battler1, battler2, 1);
    gAIScriptPtr += 3;
}

static u32 FindMoveUsedXTurnsAgo(u32 battlerId, u32 x)
{
    s32 i, index = ((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].index;
    for (i = 0; i < x; i++)
    {
        if (--index < 0)
            index = 3 - 1;
    }
    return ((struct BattleHistory *)(gBattleResources->battleHistory))->usedMoves[battlerId].history[index];
}

static void Cmd_is_wakeup_turn(void)
{
    u32 battler = BattleAI_GetWantedBattler(gAIScriptPtr[1]);

    if ((gBattleMons[battler].status1 & (1 << 0 | 1 << 1 | 1 << 2)) == 1 && FindMoveUsedXTurnsAgo(battler, 2) == 156)
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 1;
    else
        ((struct AI_ThinkingStruct *)(gBattleResources->ai))->funcResult = 0;

    gAIScriptPtr += 2;
}

static void Cmd_if_has_move_with_accuracy_lt(void)
{
    u32 i;
    u32 battler = BattleAI_GetWantedBattler(gAIScriptPtr[1]);
    u32 toCmp = gAIScriptPtr[2];
    u16 *moves = GetMovesArray(battler);

    for (i = 0; i < 4; i++)
    {
        if (moves[i] != 0
            && gBattleMoves[moves[i]].effect != 38
            && gBattleMoves[moves[i]].accuracy > 1
            && gBattleMoves[moves[i]].accuracy < toCmp)
            break;
    }

    if (i == 4)
        gAIScriptPtr += 7;
    else
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
}