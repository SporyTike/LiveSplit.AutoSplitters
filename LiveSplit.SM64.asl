// Memory of Japanese version
state("Project64", "Japanese") {
    uint gameRunTime : "Project64.exe", 0xD6A1C, 0x32C640;
    byte fileSelected : "Project64.exe", 0xD6A1C, 0x32CE96;
    byte mapID : "Project64.exe", 0xD6A1C, 0x32CE9A;
    ushort animation : "Project64.exe", 0xD6A1C, 0x339E0C;
    short starNumber : "Project64.exe", 0xD6A1C, 0x339EA8;
    byte mainMenu : "Project64.exe", 0xD6A1C, 0x1A7BD3;
    uint music : "Project64.exe", 0xD6A1C, 0x222A1C;
    byte fileAkey : "Project64.exe", 0xD6A1C, 0x207B08;
    byte fileBkey : "Project64.exe", 0xD6A1C, 0x207B78;
    byte fileCkey : "Project64.exe", 0xD6A1C, 0x207BE8;
    byte fileDkey : "Project64.exe", 0xD6A1C, 0x207F58;
}


// Memory of Shindou version
 state("Project64", "Shindou") {
   uint gameRunTime : "Project64.exe", 0xD6A1C, 0x30CCB0;
   byte fileSelected : "Project64.exe", 0xD6A1C, 0x30D526;
   byte mapID : "Project64.exe", 0xD6A1C, 0x30D52A;
   ushort animation : "Project64.exe", 0xD6A1C, 0x31D9CC;
   short starNumber : "Project64.exe", 0xD6A1C, 0x31DA68;
   byte mainMenu : "Project64.exe", 0xD6A1C, 0x1A7203;
   uint music : "Project64.exe", 0xD6A1C, 0x349DAC;
   byte fileAkey : "Project64.exe", 0xD6A1C, 0x203F08;
   byte fileBkey : "Project64.exe", 0xD6A1C, 0x203F78;
   byte fileCkey : "Project64.exe", 0xD6A1C, 0x203FE8;
   byte fileDkey : "Project64.exe", 0xD6A1C, 0x204058;
}

// Memory of US version
 state("Project64", "USA") {
   uint gameRunTime : "Project64.exe", 0xD6A1C, 0x32D580;
   byte fileSelected : "Project64.exe", 0xD6A1C, 0x32DDF6;
   byte mapID : "Project64.exe", 0xD6A1C, 0x32DDFA;
   ushort animation : "Project64.exe", 0xD6A1C, 0x33B17C;
   short starNumber : "Project64.exe", 0xD6A1C, 0x33B218;
   byte mainMenu : "Project64.exe", 0xD6A1C, 0x1A7D13;
   uint music : "Project64.exe", 0xD6A1C, 0x22261C;
   byte fileAkey : "Project64.exe", 0xD6A1C, 0x207708;
   byte fileBkey : "Project64.exe", 0xD6A1C, 0x207778;
   byte fileCkey : "Project64.exe", 0xD6A1C, 0x2077E8;
   byte fileDkey : "Project64.exe", 0xD6A1C, 0x207858;
}

// Memory of Europe version
 state("Project64", "Europe") {
   uint gameRunTime : "Project64.exe", 0xD6A1C, 0x2F9730;
   byte fileSelected : "Project64.exe", 0xD6A1C, 0x2F9FC6;
   byte mapID : "Project64.exe", 0xD6A1C, 0x2F9FCA;
   ushort animation : "Project64.exe", 0xD6A1C, 0x30943C;
   short starNumber : "Project64.exe", 0xD6A1C, 0x3094D8;
   byte mainMenu : "Project64.exe", 0xD6A1C, 0x1A6D53;
   uint music : "Project64.exe", 0xD6A1C, 0x223DD8;
   byte fileAkey : "Project64.exe", 0xD6A1C, 0x202F08;
   byte fileBkey : "Project64.exe", 0xD6A1C, 0x202F78;
   byte fileCkey : "Project64.exe", 0xD6A1C, 0x202FE8;
   byte fileDkey : "Project64.exe", 0xD6A1C, 0x203058;
}
 

init {
    // Version identifier
    if (settings["gameVerJP"])
	{
		version = "Japanese";
	}
	else if (settings["gameVerShindou"])
	{
		version = "Shindou";
	}
        else if (settings["gameVerUS"])
	{
		version = "USA";
	}
        else if (settings["gameVerEU"])
	{
		version = "Europe";
	}
    print(version);
    
    // Variables
    vars.currentFile = 0;
    vars.currentStars = 0;
    vars.launchMapID = 1;
    vars.valueReset = 0;
    vars.courseReset = 0;
    vars.enterCastle = 0;
    vars.enterBitDW = 0;
    vars.enterBitFS = 0;
    vars.enterBitS = 0;


    vars.course1 = 0;
    vars.course2 = 0;
    vars.course3 = 0;
    vars.course4 = 0;
    vars.course5 = 0;
    vars.course6 = 0;
    vars.course7 = 0;
    vars.course8 = 0;
    vars.course9 = 0;
    vars.course10 = 0;
    vars.course11 = 0;
    vars.course12 = 0;
    vars.course13 = 0;
    vars.course14 = 0;
    vars.course15 = 0;
}

startup {
    settings.Add("settingsStart", true, "Start Settings");
    settings.Add("launchStart", false, "Start on Game Launch", "settingsStart");
    settings.Add("menuStart", false, "Start on File Select", "settingsStart");
    settings.Add("settingsSplit", true, "Split Settings");
    settings.Add("starSplitOption", true, "Stars", "settingsSplit");
    settings.Add("courseSplit", false, "Course completion", "starSplitOption");
    settings.Add("starSplit", false, "each Powerstar", "starSplitOption");
    settings.Add("tenthSplit", false, "every 10th Powerstar", "starSplitOption");
    settings.Add("toadMipsSplit", false, "Toad/MIPS Stars", "starSplitOption");
    settings.Add("secretSplit", false, "Castle Secret Stars", "starSplitOption");
    settings.Add("miscSplitOption", true, "Misc.", "settingsSplit");
    settings.Add("keySplit", false, "Key collection", "miscSplitOption");
    settings.Add("switchSplit", false, "Switch activation", "miscSplitOption");
    settings.Add("enterCastleSplit", false, "entering Castle", "miscSplitOption");
    settings.Add("enterBitdwSplit", false, "entering BitDW", "miscSplitOption");
    settings.Add("enterBitfsSplit", false, "entering DDD/BitFS", "miscSplitOption");
    settings.Add("enterBitsSplit", false, "entering BitS", "miscSplitOption");
    settings.Add("settingsReset", true, "Reset Settings");
    settings.Add("gameResetReset", false, "Reset on Game Reset", "settingsReset");
    settings.Add("fileChangeReset", false, "Reset on File Change", "settingsReset");
    settings.Add("gameVersion", true, "Game Version (requires LiveSplit restart)");
    settings.Add("gameVerJP", true, "Japanese", "gameVersion");
    settings.Add("gameVerShindou", false, "Shindou", "gameVersion");
    settings.Add("gameVerUS", false, "USA", "gameVersion");
    settings.Add("gameVerEU", false, "Europe", "gameVersion");
}

start {
    if (settings["launchStart"] && current.mapID == vars.launchMapID && current.gameRunTime == 0) {
        vars.valueReset = 1;
        return true;
    }
    if (settings["menuStart"] && !settings["launchStart"] && current.mainMenu <= 3 && old.mainMenu == 255) {
        vars.valueReset = 1;
        return true;
    }
}

reset {
    if (settings["fileChangeReset"] && vars.currentFile != 0 && current.mainMenu <= 3 && vars.currentFile - 1 != current.mainMenu) {
        vars.valueReset = 1;
        return true;
    }
    if (settings["gameResetReset"] && (current.mapID == vars.launchMapID && old.mapID != vars.launchMapID || (current.mapID == vars.launchMapID && old.mapID == vars.launchMapID && current.gameRunTime < old.gameRunTime))) {
        vars.valueReset = 1;
        return true;
    }
    // Resets all vars when the timer resets
    if (vars.valueReset == 1) {
        vars.valueReset = 0;
        vars.currentFile = 0;
        vars.courseReset = 1;
        vars.enterCastle = 0;
        vars.enterBitDW = 0;
        vars.enterBitFS = 0;
        vars.enterBitS = 0;
    }
    // Current file check for fileChangeReset
    if (current.mainMenu <= 3 && old.mainMenu == 255 && (current.music == 2149655552 || current.music == 2149529099 || current.music == 2149529115)) {
        vars.currentFile = current.mainMenu + 1;
    }
}

split {
    print(version);
    if (!settings["courseSplit"]) {
        if (settings["starSplit"] && current.mapID != vars.launchMapID && old.mapID != vars.launchMapID && current.starNumber > old.starNumber) {
            return true;
        }
        if (settings["tenthSplit"] && !settings["starSplit"] && current.mapID != vars.launchMapID && old.mapID != vars.launchMapID && current.starNumber > old.starNumber && current.starNumber % 10 == 0 && old.starNumber % 10 == 9) {
            return true;
        }
    }
    if (current.animation == 6409 && old.animation != 6409 && current.mapID == 34) {
        return true;
    }
    if (settings["keySplit"] && ((current.fileSelected == 1 && current.fileAkey > old.fileAkey) || (current.fileSelected == 2 && current.fileBkey > old.fileBkey) || (current.fileSelected == 3 && current.fileCkey > old.fileCkey) || (current.fileSelected == 4 && current.fileDkey > old.fileDkey)) && (current.mapID == 30 || current.mapID == 33)) {
        return true;
    }
    if (settings["switchSplit"] && ((current.fileSelected == 1 && current.fileAkey > old.fileAkey) || (current.fileSelected == 2 && current.fileBkey > old.fileBkey) || (current.fileSelected == 3 && current.fileCkey > old.fileCkey) || (current.fileSelected == 4 && current.fileDkey > old.fileDkey)) && (current.mapID == 18 || current.mapID == 28 || current.mapID == 29)) {
        return true;
    }
    if (settings["toadMipsSplit"] && current.mapID == 6 && current.starNumber > old.starNumber && !settings["secretSplit"]) {
        return true;
    }
    if (settings["secretSplit"] && current.starNumber > old.starNumber && (current.mapID == 6 || (current.mapID >= 17 && current.mapID <= 21) || (current.mapID >= 27 && current.mapID <= 29) || current.mapID == 31)) {
        return true;
    }
    if (settings["enterCastleSplit"] && vars.enterCastle == 0 && current.mapID == 6) {
        vars.enterCastle = 1;
        return true;
    }
    if (settings["enterBitdwSplit"] && vars.enterBitDW == 0 && current.mapID == 17) {
        vars.enterBitDW = 1;
        return true;
    }
    if (settings["enterBitfsSplit"] && vars.enterBitFS == 0 && (current.mapID == 19 || current.mapID == 23)) {
        vars.enterBitFS = 1;
        return true;
    }
    if (settings["enterBitsSplit"] && vars.enterBitS == 0 && current.mapID == 21) {
        vars.enterBitS = 1;
        return true;
    }

    // Course split checks
    if (settings["courseSplit"] && current.starNumber > old.starNumber) {
        vars.currentStars = current.starNumber;
        if (current.mapID == 9) {
            vars.course1++;
            if (vars.course1 == 7) {
                vars.course1++;
                return true;
            }
        }
        if (current.mapID == 24) {
            vars.course2++;
            if (vars.course2 == 7) {
                vars.course2++;
                return true;
            }
        }
        if (current.mapID == 12) {
            vars.course3++;
            if (vars.course3 == 7) {
                vars.course3++;
                return true;
            }
        }
        if (current.mapID == 5) {
            vars.course4++;
            if (vars.course4 == 7) {
                vars.course4++;
                return true;
            }
        }
        if (current.mapID == 4) {
            vars.course5++;
            if (vars.course5 == 7) {
                vars.course5++;
                return true;
            }
        }
        if (current.mapID == 7) {
            vars.course6++;
            if (vars.course6 == 7) {
                vars.course6++;
                return true;
            }
        }
        if (current.mapID == 22) {
            vars.course7++;
            if (vars.course7 == 7) {
                vars.course7++;
                return true;
            }
        }
        if (current.mapID == 8) {
            vars.course8++;
            if (vars.course8 == 7) {
                vars.course8++;
                return true;
            }
        }
        if (current.mapID == 23) {
            vars.course9++;
            if (vars.course9 == 7) {
                vars.course9++;
                return true;
            }
        }
        if (current.mapID == 10) {
            vars.course10++;
            if (vars.course10 == 7) {
                vars.course10++;
                return true;
            }
        }
        if (current.mapID == 11) {
            vars.course11++;
            if (vars.course11 == 7) {
                vars.course11++;
                return true;
            }
        }
        if (current.mapID == 36) {
            vars.course12++;
            if (vars.course12 == 7) {
                vars.course12++;
                return true;
            }
        }
        if (current.mapID == 13) {
            vars.course13++;
            if (vars.course13 == 7) {
                vars.course13++;
                return true;
            }
        }
        if (current.mapID == 14) {
            vars.course14++;
            if (vars.course14 == 7) {
                vars.course14++;
                return true;
            }
        }
        if (current.mapID == 15) {
            vars.course15++;
            if (vars.course15 == 7) {
                vars.course15++;
                return true;
            }
        }
    }
    // Current star check for course star reset
    if (current.mapID >= 4 && current.mapID != 16 && current.starNumber < vars.currentStars) {
        vars.courseReset = 1;
    }

    if (vars.courseReset == 1) {
        vars.courseReset = 0;
        vars.course1 = 0;
        vars.course2 = 0;
        vars.course3 = 0;
        vars.course4 = 0;
        vars.course5 = 0;
        vars.course6 = 0;
        vars.course7 = 0;
        vars.course8 = 0;
        vars.course9 = 0;
        vars.course10 = 0;
        vars.course11 = 0;
        vars.course12 = 0;
        vars.course13 = 0;
        vars.course14 = 0;
        vars.course15 = 0;
    }
}

update {
    if (version == "") {
	return false;
    }
}
