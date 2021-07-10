EPT = EPT or {}
local EPT = EPT

---------------------
-- LOCAL FUNCTIONS --
---------------------

local function GetSetName(itemLink)
    local _, setName, _, _, _, _ = GetItemLinkSetInfo(itemLink)
    --resize setName on multiple lines if necessary "\n"
    return zo_strformat( SI_ABILITY_NAME, setName )
end

local courageMajor = {
  [110020] = "perfectOlo",
  [66902] = "spc",
  [109994] = "normalOlo"
}

-----------
-- Arena --
-----------

local forceOverflow = { --562
    ["setName"] = GetSetName("|H0:item:169891:364:50:0:0:0:0:0:0:0:0:0:0:0:1:10:0:1:0:500:0|h|h"),
    ["abilityId"] = 147875,
    ["cooldown"] = 10000,
    ["origin"] = EPT_ORIGIN_ARENA,
}

local forceOverflowPerfect = { --568
    ["setName"] = GetSetName("|H0:item:170010:364:50:0:0:0:0:0:0:0:0:0:0:0:1:10:0:1:0:500:0|h|h"),
    ["abilityId"] = 147875,
    ["cooldown"] = 10000,
    ["origin"] = EPT_ORIGIN_ARENA,
}

local elementWrath = { --561
    ["setName"] = GetSetName("|H0:item:169889:364:50:0:0:0:0:0:0:0:0:0:0:0:1:10:0:1:0:500:0|h|h"),
    ["abilityId"] = 147843,
    ["cooldown"] = 10000,
    ["origin"] = EPT_ORIGIN_ARENA,
}

local elementWrathPerfect = { --567
    ["setName"] = GetSetName("|H0:item:170076:364:50:0:0:0:0:0:0:0:0:0:0:0:1:10:0:1:0:500:0|h|h"),
    ["abilityId"] = 147843,
    ["cooldown"] = 10000,
    ["origin"] = EPT_ORIGIN_ARENA,
}

local voidBash = { --558
    ["setName"] = GetSetName("|H0:item:169878:364:50:0:0:0:0:0:0:0:0:0:0:0:1:10:0:1:0:500:0|h|h"),
    ["abilityId"] = 147747,
    ["cooldown"] = 13000,
    ["origin"] = EPT_ORIGIN_ARENA,
}

local voidBashPerfect = { --564
    ["setName"] = GetSetName("|H0:item:170047:364:50:0:0:0:0:0:0:0:0:0:0:0:1:10:0:1:0:500:0|h|h"),
    ["abilityId"] = 147747,
    ["cooldown"] = 13000,
    ["origin"] = EPT_ORIGIN_ARENA,
}

local destructiveImpact = { --317
  ["setName"] = GetSetName("|H0:item:133807:364:50:0:0:0:0:0:0:0:0:0:0:0:1:4:0:1:0:495:0|h|h"),
  ["abilityId"] = 140334,
  ["origin"] = EPT_ORIGIN_ARENA,
}

local destructiveImpactPerfect = { --532
  ["setName"] = GetSetName("|H0:item:166062:364:50:0:0:0:0:0:0:0:0:0:0:0:1:5:0:1:0:499:0|h|h"),
  ["abilityId"] = 140334,
  ["origin"] = EPT_ORIGIN_ARENA,
}

local winterborn = { --217
  ["setName"] = GetSetName("|H0:item:68574:364:50:0:0:0:0:0:0:0:0:0:0:0:1:37:0:1:0:10000:0|h|h"),
  ["abilityId"] = 71647,
  ["cooldown"] = 6000,
  ["origin"] = EPT_ORIGIN_ARENA,
}
---------------
-- Undaunted --
---------------

local grothdarr = { --280
  ["setName"] = GetSetName("|H0:item:94853:364:50:0:0:0:0:0:0:0:0:0:0:0:1:67:0:1:0:10000:0|h|h"),
  ["abilityId"] = 84504,
  ["cooldown"] = 10000,
  ["origin"] = EPT_ORIGIN_UNDAUNTED,
}

local bogdan = { --167
  ["setName"] = GetSetName("|H0:item:59577:364:50:0:0:0:0:0:0:0:0:0:0:0:1:67:0:1:0:10000:0|h|h"),
  ["abilityId"] = 59590,
  ["cooldown"] = 10000,
  ["origin"] = EPT_ORIGIN_UNDAUNTED,
}

local sentinel = { --268
  ["setName"] = GetSetName("|H0:item:94757:364:50:0:0:0:0:0:0:0:0:0:0:0:1:67:0:1:0:10000:0|h|h"),
  ["abilityId"] = 81036,
  ["cooldown"] = 15000,
  ["origin"] = EPT_ORIGIN_UNDAUNTED,
}

local earthgore = { --341
  ["setName"] = GetSetName("|H0:item:127705:364:50:0:0:0:0:0:0:0:0:0:0:0:1:67:0:1:0:10000:0|h|h"),
  ["abilityId"] = 97855,
  ["cooldown"] = 20000,
  ["origin"] = EPT_ORIGIN_UNDAUNTED,
}

local tremorscale = { --276
  ["setName"] = GetSetName("|H0:item:94821:364:50:0:0:0:0:0:0:0:0:0:0:0:1:67:0:1:0:10000:0|h|h"),
  ["abilityId"] = 80865,
  ["cooldown"] = 7000,
  ["origin"] = EPT_ORIGIN_UNDAUNTED,
}
--local symphony = {
--  ["setName"] = GetSetName("|H0:item:147243:364:50:0:0:0:0:0:0:0:0:0:0:0:1:67:0:1:0:10000:0|h|h"),
--  ["setId"] = 436,
--  ["abilities"] = {
--    [1] = {
--      ["abilityId"] = 117111,
--      ["unitTag"] = xxx,
--      ["cd"] = InMilliSec(18),
--          },
--  },
--}

local iceheart = { --274
  ["setName"] = GetSetName("|H0:item:94532:364:50:0:0:0:0:0:0:0:0:0:0:0:1:67:0:1:0:10000:0|h|h"),
  ["abilityId"] = 80562,
  ["origin"] = EPT_ORIGIN_UNDAUNTED,
  ["cooldown"] = 6000,
}

local ladyThorn = { --535
  ["setName"] = GetSetName("|H0:item:167128:364:50:0:0:0:0:0:0:0:0:0:0:0:1:67:0:1:0:10000:0|h|h"),
  ["abilityId"] = 141905,--proc
  --["abilityId"] = 141971, --synergyActivate
  --["abilityId"] = 141927, --Maim
  --["cooldown"] = 20000,
  --["type"] = "special",
}

local sellistrix = { --271
  ["setName"] = GetSetName("|H0:item:94781:364:50:0:0:0:0:0:0:0:0:0:0:0:1:67:0:1:0:10000:0|h|h"),
  ["abilityId"] = 80545,
  ["cooldown"] = 6000,
  ["origin"] = EPT_ORIGIN_UNDAUNTED,
  --80544 (result1)
  --80549 (result 2000)
}

local encratisBehemoth = { --577
  ["setName"] = GetSetName("|H0:item:171602:364:50:0:0:0:0:0:0:0:0:0:0:0:1:67:0:1:0:10000:0|h|h"),
  ["abilityId"] = 151033,
  ["origin"] = EPT_ORIGIN_UNDAUNTED,
  ["cooldown"] = 15000,
}

local zaan = { -- 350
  ["setName"] = GetSetName("|H0:item:129563:364:50:0:0:0:0:0:0:0:0:0:0:0:1:67:0:1:0:10000:0|h|h"),
  ["abilityId"] = 102136, --102142
  ["origin"] = EPT_ORIGIN_UNDAUNTED,
  ["cooldown"] = 18000,
}

local vykosa = { --398
  ["setName"] = GetSetName("|H0:item:141674:364:50:0:0:0:0:0:0:0:0:0:0:0:1:67:0:1:0:10000:0|h|h"),
  ["abilityId"] = 111354, --102142
  ["origin"] = EPT_ORIGIN_UNDAUNTED,
  ["cooldown"] = 15000,
}

-----------
-- Raids --
-----------

local olo = { --391
  ["setName"] = GetSetName("|H0:item:137362:364:50:0:0:0:0:0:0:0:0:0:0:0:1:73:0:1:0:10000:0|h|h"),
  ["abilityId"] = 107141,
  ["cooldown"] = 10000,
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local oloPerf = { --395
  ["setName"] = GetSetName("|H0:item:138558:364:50:0:0:0:0:0:0:0:0:0:0:0:1:73:0:1:0:10000:0|h|h"),
  ["abilityId"] = 109084,
  ["cooldown"] = 10000,
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local yolnah = { --446
  ["setName"] = GetSetName("|H0:item:149651:364:50:0:0:0:0:0:0:0:0:0:0:0:1:86:0:1:0:10000:0|h|h"),
  ["abilityId"] = 121878,
  ["cooldown"] = 8000,
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local yolnahPerf = { --451
  ["setName"] = GetSetName("|H0:item:150852:364:50:0:0:0:0:0:0:0:0:0:0:0:1:86:0:1:0:10000:0|h|h"),
  ["abilityId"] = 121878,
  ["cooldown"] = 8000,
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local wind = { --492
  ["setName"] = GetSetName("|H0:item:162413:364:50:0:0:0:0:0:0:0:0:0:0:0:1:102:0:1:0:10000:0|h|h"),
  ["abilityId"] = 136098,
  ["cooldown"] = 10000,
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local windPerf = { --493
  ["setName"] = GetSetName("|H0:item:162956:364:50:0:0:0:0:0:0:0:0:0:0:0:1:102:0:1:0:10000:0|h|h"),
  ["abilityId"] = 136098,
  ["cooldown"] = 10000,
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local opportunist = { --496
  ["setName"] = GetSetName("|H1:item:161965:364:50:0:0:0:0:0:0:0:0:0:0:0:1:0:0:1:0:0:0|h|h"),
  ["abilityId"] = 135923,
  ["debuff"] = 135924,
  ["cooldown"] = 22000,
  ["type"] = "special",
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local opportunistPerf = { --497
  ["setName"] = GetSetName("|H1:item:162508:364:50:0:0:0:0:0:0:0:0:0:0:0:1:0:0:1:0:0:0|h|h"),
  ["abilityId"] = 137986,
  ["debuff"] = 137985,
  ["cooldown"] = 22000,
  ["type"] = "special",
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local moondancer = { --230
  ["setName"] = GetSetName("|H0:item:73006:363:50:0:0:0:0:0:0:0:0:0:0:0:1:45:0:1:0:10000:0|h|h"),
  ["setId"] = 230,
  ["abilityId"] = {75801, 75804},
  ["cooldown"] = {0,0},
  ["type"] = "special",
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local vrolNorm= { --494
  ["setName"] = GetSetName("|H0:item:162264:363:50:0:0:0:0:0:0:0:0:0:0:0:1:45:0:1:0:10000:0|h|h"),
  ["abilityId"] = 135926,
  ["cooldown"] = 21000,
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local vrolPerf = { --495
  ["setName"] = GetSetName("|H0:item:162807:363:50:0:0:0:0:0:0:0:0:0:0:0:1:45:0:1:0:10000:0|h|h"),
  ["abilityId"] = 137989, --93123
  ["cooldown"] = 21000,
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local bahseiMania = { --587
  ["setName"] = GetSetName("|H0:item:173630:364:50:0:0:0:0:0:0:0:0:0:0:0:1:122:0:1:0:10000:0|h|h"),
  ["abilityId"] = 154691,
  ["origin"] = EPT_ORIGIN_TRIAL,
  ["type"] = "special"
}

local bahseiManiaPerf = { --591
  ["setName"] = GetSetName("|H0:item:174441:364:50:0:0:0:0:0:0:0:0:0:0:0:1:122:0:1:0:10000:0|h|h"),
  ["abilityId"] = 154691,
  ["origin"] = EPT_ORIGIN_TRIAL,
  ["type"] = "special"
}

local stoneTalkerOath = { --588
  ["setName"] = GetSetName("|H0:item:174039:364:50:0:0:0:0:0:0:0:0:0:0:0:1:122:0:1:0:10000:0|h|h"),
  ["abilityId"] = 154783,
  ["cooldown"] = 10000,
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local stoneTalkerOathPerfect = { --592
  ["setName"] = GetSetName("|H0:item:174258:364:50:0:0:0:0:0:0:0:0:0:0:0:1:122:0:1:0:10000:0|h|h"),
  ["abilityId"] = 154783,
  ["cooldown"] = 10000,
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local sulXanTorment = { --586
  ["setName"] = GetSetName("|H0:item:173766:364:50:0:0:0:0:0:0:0:0:0:0:0:1:122:0:1:0:10000:0|h|h"),
  ["abilityId"] = 154737,--157058,
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local sulXanTormentPerfect = { --590
  ["setName"] = GetSetName("|H0:item:174624:364:50:0:0:0:0:0:0:0:0:0:0:0:1:122:0:1:0:10000:0|h|h"),
  ["abilityId"] = 154737,--157058,
  ["origin"] = EPT_ORIGIN_TRIAL,
}

local lunarBastion = { --231
  ["setName"] = GetSetName("|H0:item:73077:364:50:0:0:0:0:0:0:0:0:0:0:0:1:45:0:1:0:10000:0|h|h"),
  ["abilityId"] = 75814,--157058,
  ["origin"] = EPT_ORIGIN_TRIAL,
  ["cooldown"] = 20000,
}

-------------
-- Dungeon --
-------------

local caluurion = { --343
  ["setName"] = GetSetName("|H0:item:128593:364:50:0:0:0:0:0:0:0:0:0:0:0:1:69:0:1:0:10000:0|h|h"),
  ["abilityId"] = 102032,
  ["cooldown"] = 10000,
  ["origin"] = EPT_ORIGIN_DUNGEON,
}

local hitis = { --471
  ["setName"] = GetSetName("|H0:item:156888:364:50:0:0:0:0:0:0:0:0:0:0:0:1:97:0:1:0:10000:0|h|h"),
  ["abilityId"] = 133210,
  ["cooldown"] = 12000,
  ["origin"] = EPT_ORIGIN_DUNGEON,
}

local hollowfang = { --452
  ["setName"] = GetSetName("|H0:item:152577:364:50:0:0:0:0:0:0:0:0:0:0:0:1:93:0:1:0:10000:0|h|h"),
  ["abilityId"] = 126924,
  ["cooldown"] = 9000,
  ["origin"] = EPT_ORIGIN_DUNGEON,
}

local burningSpellweave = { --160
  ["setName"] = GetSetName("|H0:item:104521:364:50:0:0:0:0:0:0:0:0:0:0:0:1:20:0:1:0:10000:0|h|h"),
  ["abilityId"] = 61459,
  ["cooldown"] = 12000,
  ["origin"] = EPT_ORIGIN_DUNGEON,
}

local martialKnowledge = { --147
  ["setName"] = GetSetName("|H1:item:95453:363:50:0:0:0:0:0:0:0:0:0:0:0:1:35:0:1:0:0:0|h|h"),
  ["abilityId"] = 127070,
  ["cooldown"] = 8000,
  ["type"] = "special",
  ["origin"] = EPT_ORIGIN_DUNGEON,
}

local zen = { --455
  ["setName"] = GetSetName("|H1:item:153094:363:50:0:0:0:0:0:0:0:0:0:0:0:1:89:0:1:0:0:0|h|h"),
  ["abilityId"] = 126597,
  ["cooldown"] = 22000,
  ["type"] = "special",
  ["origin"] = EPT_ORIGIN_DUNGEON,
}

local spellPowerCure = { --185
  ["setName"] = GetSetName("|H0:item:111909:364:50:0:0:0:0:0:0:0:0:0:0:0:1:29:0:1:0:10000:0|h|h"),
  ["abilityId"] = 66902,
  ["cooldown"] = 5000,
  ["type"] = "value",
  ["origin"] = EPT_ORIGIN_DUNGEON,
}

local icyConjuror = { --431
  ["setName"] = GetSetName("|H0:item:146480:364:50:0:0:0:0:0:0:0:0:0:0:0:1:82:0:1:0:10000:0|h|h"),
  ["abilityId"] = 117666,
  ["cooldown"] = 10000,
  ["origin"] = EPT_ORIGIN_DUNGEON,
}

local drakesRush = { --571
  ["setName"] = GetSetName("|H0:item:170607:364:50:0:0:0:0:0:0:0:0:0:0:0:1:116:0:1:0:10000:0|h|h"),
  ["abilityId"] = 150974,
  ["cooldown"] = 18000,
  ["origin"] = EPT_ORIGIN_DUNGEON,
}

local crimsonTwilight = { --515
  ["setName"] = GetSetName("|H0:item:164710:364:50:0:0:0:0:0:0:0:0:0:0:0:1:106:0:1:0:10000:0|h|h"),
  ["abilityId"] = 141638,
  ["cooldown"] = 8000,
  ["origin"] = EPT_ORIGIN_DUNGEON,
}

local plagueSlinger = { --347
  ["setName"] = GetSetName("|H0:item:129338:364:50:0:0:0:0:0:0:0:0:0:0:0:1:70:0:1:0:10000:0|h|h"),
  ["abilityId"] = 102106,
  ["cooldown"] = 8000,
  ["origin"] = EPT_ORIGIN_DUNGEON,
}

local scathingMage = { --190
  ["setName"] = GetSetName("|H0:item:111325:364:50:0:0:0:0:0:0:0:0:0:0:0:1:70:0:1:0:10000:0|h|h"),
  ["abilityId"] = 67288,
  ["cooldown"] = 5000,
  ["origin"] = EPT_ORIGIN_DUNGEON,
}
--------------
-- Overland --
--------------

local briarheart = { --212
  ["setName"] = GetSetName("|H0:item:68494:364:50:0:0:0:0:0:0:0:0:0:0:0:1:37:0:1:0:10000:0|h|h"),
  ["abilityId"] = 71107,
  ["cooldown"] = 15000,
  ["origin"] = EPT_ORIGIN_OVERLAND,
}

local winter = { --487
  ["setName"] = GetSetName("|H0:item:160666:364:50:0:0:0:0:0:0:0:0:0:0:0:1:100:0:1:0:10000:0|h|h"),
  ["abilityId"] = 135659,
  ["cooldown"] = 10000,
  ["origin"] = EPT_ORIGIN_OVERLAND,
}

local venomousSmite = { --488
  ["setName"] = GetSetName("|H0:item:160859:364:50:0:0:0:0:0:0:0:0:0:0:0:1:101:0:1:0:10000:0|h|h"),
  ["abilityId"] = 135690,
  ["cooldown"] = 15000,
  ["origin"] = EPT_ORIGIN_OVERLAND,
}

local redMountain = { --49
  ["setName"] = GetSetName("|H0:item:84934:364:50:0:0:0:0:0:0:0:0:0:0:0:1:54:0:1:0:10000:0|h|h"),
  ["abilityId"] = 97806,
  ["cooldown"] = 8000,
  ["origin"] = EPT_ORIGIN_OVERLAND,
}

local madTinkerer = { --354
  ["setName"] = GetSetName("|H0:item:132887:364:50:0:0:0:0:0:0:0:0:0:0:0:1:65:0:1:0:10000:0|h|h"),
  ["abilityId"] = 92982,
  ["cooldown"] = 8000,
  ["origin"] = EPT_ORIGIN_OVERLAND,
}
--------------
-- Crafting --
--------------

local mechAcuity = { --353
  ["setName"] = GetSetName("|H0:item:131086:25:4:0:0:0:0:0:0:0:0:0:0:0:1:4:1:1:0:10000:0|h|h"),
  ["abilityId"] = 99204,
  ["cooldown"] = 21000,
  ["origin"] = EPT_ORIGIN_CRAFTING,
}

local cleverAlchemist = { --225
  ["setName"] = GetSetName("|H0:item:72141:30:1:0:0:0:0:0:0:0:0:0:0:0:1:1:1:1:0:10000:0|h|h"),
  ["abilityId"] = 75746,
  ["origin"] = EPT_ORIGIN_CRAFTING,
}

local spectresEye = { --74
  ["setName"] = GetSetName("|H0:item:50085:369:50:0:0:0:0:0:0:0:0:0:0:0:1:20:1:1:0:10000:0|h|h"),
  ["abilityId"] = 69685,
  ["origin"] = EPT_ORIGIN_CRAFTING,
}

-----------------
-- Cyrodiil/IC --
-----------------

local powerfulAssault = { --180
  ["setName"] = GetSetName("|H0:item:117125:364:50:0:0:0:0:0:0:0:0:0:0:0:1:23:0:1:0:10000:0|h|h"),
  ["abilityId"] = 61771,
}

local meritoriousService = { --181
  ["setName"] = GetSetName("|H0:item:116744:364:50:0:0:0:0:0:0:0:0:0:0:0:1:23:0:1:0:10000:0|h|h"),
  ["abilityId"] = 65706,
}

-----------------
-- Mythic	   --
-----------------
-- Thrassian Stranglers
local ThrassianStranglers = { --501
  ["setName"] = GetSetName("|H0:item:164291:364:50:0:0:0:0:0:0:0:0:0:0:0:1:23:0:1:0:10000:0|h|h"),
  ["abilityId"] = 136123,
  ["origin"] = EPT_ORIGIN_MYTHIC,
  ["type"] = "stackself",
  ["maxstack"] = 50,
}
-- Harpooner's Wading Kilt
local HarpoonerWadingKilt = { -- 594
  ["setName"] = GetSetName("|H0:item:175524:364:50:0:0:0:0:0:0:0:0:0:0:0:1:23:0:1:0:10000:0|h|h"),
  ["abilityId"] = 155150,
  ["origin"] = EPT_ORIGIN_MYTHIC,
  ["type"] = "stackself",
  ["maxstack"] = 10,
}
-- Death Dealer's Fete
local DeathDealerFete = { -- 596
  ["setName"] = GetSetName("|H0:item:175527:364:50:0:0:0:0:0:0:0:0:0:0:0:1:23:0:1:0:10000:0|h|h"),
  ["abilityId"] = 155176,
  ["origin"] = EPT_ORIGIN_MYTHIC,
  ["type"] = "stackself",
  ["maxstack"] = 30,
}

---------------------
-- RETURN FUNCTION --
---------------------

function EPT.GetSetList()
  return {
    --Arena
    [562] = forceOverflow,
    [568] = forceOverflowPerfect,
    [561] = elementWrath,
    [567] = elementWrathPerfect,
    [558] = voidBash,
    [564] = voidBashPerfect,
    [317] = destructiveImpact,
    [532] = destructiveImpactPerfect,
    [217] = winterborn,

    --Undaunted
    [280] = grothdarr,
    [268] = sentinel,
    [167] = bogdan,
    [341] = earthgore,
    [274] = iceheart,
    [535] = ladyThorn,
    [271] = sellistrix,
    [276] = tremorscale,
    [577] = encratisBehemoth,
    [350] = zaan,
    [398] = vykosa,

    --Raids
    [391] = olo,
    [395] = oloPerf,
    [492] = wind,
    [493] = windPerf,
    [446] = yolnah,
    [451] = yolnahPerf,
    --[230] = moondancer,
    [496] = opportunist,
    [497] = opportunistPerf,
	  [494] = vrolNorm,
	  [495] = vrolPerf,
    [587] = bahseiMania,
    [591] = bahseiManiaPerf,
    [588] = stoneTalkerOath,
    [592] = stoneTalkerOathPerfect,
    [586] = sulXanTorment,
    [590] = sulXanTormentPerfect,
    [231] = lunarBastion,


    ----Dungeon
    [343] = caluurion,
    [471] = hitis,
    [452] = hollowfang,
    [160] = burningSpellweave,
    [147] = martialKnowledge,
    [455] = zen,
    [431] = icyConjuror,
    [571] = drakesRush,
    [515] = crimsonTwilight,
    [347] = plagueSlinger,
    --[185] = spellPowerCure,
    [190] = scathingMage,

    ----Overland
    [49]  = redMountain,
    [212] = briarheart,
    [354] = madTinkerer,
    [487] = winter,
    [488] = venomousSmite,

    ----Crafting
    [353] = mechAcuity,
    [225] = cleverAlchemist,
    [74] = spectresEye,

    ----Cyrodiil/IC
    [180] = powerfulAssault,
    [181] = meritoriousService,

	-- Mythic
	[501] = ThrassianStranglers,
	[594] = HarpoonerWadingKilt,
	[596] = DeathDealerFete,
  }
end
