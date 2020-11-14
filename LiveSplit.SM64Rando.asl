//Memory of v0.1
state("Project64", "v0.1") {
    uint gameRunTime : "Project64.exe", 0xD6A1C, 0x32E410;
    byte fileSelected : "Project64.exe", 0xD6A1C, 0x32EC86;
    byte mapID : "Project64.exe", 0xD6A1C, 0x32EC8A;
    ushort animation : "Project64.exe", 0xD6A1C, 0x33C0BC;
    short starNumber : "Project64.exe", 0xD6A1C, 0x33C158;
    byte mainMenu : "Project64.exe", 0xD6A1C, 0x1A7D43;
    uint music : "Project64.exe", 0xD6A1C, 0x22261C;
}

//Memory of v0.2
state("Project64", "v0.2") {
    uint gameRunTime : "Project64.exe", 0xD6A1C, 0x3024F0;
    byte fileSelected : "Project64.exe", 0xD6A1C, 0x302D66;
    byte mapID : "Project64.exe", 0xD6A1C, 0x302D6A;
    ushort animation : "Project64.exe", 0xD6A1C, 0x31004C;
    short starNumber : "Project64.exe", 0xD6A1C, 0x3100E8;
    byte mainMenu : "Project64.exe", 0xD6A1C, 0x1986BF;
    uint music : "Project64.exe", 0xD6A1C, 0x22261C;
}

//Memory of v0.3
state("Project64", "v0.3") {
    uint gameRunTime : "Project64.exe", 0xD6A1C, 0x302670;
    byte fileSelected : "Project64.exe", 0xD6A1C, 0x302EE6;
    byte mapID : "Project64.exe", 0xD6A1C, 0x302EEA;
    ushort animation : "Project64.exe", 0xD6A1C, 0x31016C;
    short starNumber : "Project64.exe", 0xD6A1C, 0x310208;
    byte mainMenu : "Project64.exe", 0xD6A1C, 0x1986BF;
    uint music : "Project64.exe", 0xD6A1C, 0x22261C;
}

//Memory of v0.4
state("Project64", "v0.4") {
    uint gameRunTime : "Project64.exe", 0xD6A1C, 0x302650;
    byte fileSelected : "Project64.exe", 0xD6A1C, 0x302EC6;
    byte mapID : "Project64.exe", 0xD6A1C, 0x302ECA;
    ushort animation : "Project64.exe", 0xD6A1C, 0x31070C;
    short starNumber : "Project64.exe", 0xD6A1C, 0x3107A8;
    byte mainMenu : "Project64.exe", 0xD6A1C, 0x1987FF;
    uint music : "Project64.exe", 0xD6A1C, 0x22261C;
}

//Memory of v0.5
state("Project64", "v0.5") {
    uint gameRunTime : "Project64.exe", 0xD6A1C, 0x302CA0;
    byte fileSelected : "Project64.exe", 0xD6A1C, 0x303516;
    byte mapID : "Project64.exe", 0xD6A1C, 0x30351A;
    ushort animation : "Project64.exe", 0xD6A1C, 0x310C7C;
    short starNumber : "Project64.exe", 0xD6A1C, 0x310D18;
    byte mainMenu : "Project64.exe", 0xD6A1C, 0x198F6B;
    uint music : "Project64.exe", 0xD6A1C, 0x22261C;
}

//Memory of v0.5.1
state("Project64", "v0.5.1") {
    uint gameRunTime : "Project64.exe", 0xD6A1C, 0x303D40;
    byte fileSelected : "Project64.exe", 0xD6A1C, 0x304686;
    byte mapID : "Project64.exe", 0xD6A1C, 0x30468A;
    ushort animation : "Project64.exe", 0xD6A1C, 0x311C7C;
    short starNumber : "Project64.exe", 0xD6A1C, 0x311D18;
    byte mainMenu : "Project64.exe", 0xD6A1C, 0x1A70AB;
    uint music : "Project64.exe", 0xD6A1C, 0x22261C;
}

//Memory of v0.5.1 (Non-Stop)
state("Project64", "v0.5.1N") {
    uint gameRunTime : "Project64.exe", 0xD6A1C, 0x303C70;
    byte fileSelected : "Project64.exe", 0xD6A1C, 0x3045B6;
    byte mapID : "Project64.exe", 0xD6A1C, 0x3045BA;
    ushort animation : "Project64.exe", 0xD6A1C, 0x311BAC;
    short starNumber : "Project64.exe", 0xD6A1C, 0x311C48;
    byte mainMenu : "Project64.exe", 0xD6A1C, 0x1A70AB;
    uint music : "Project64.exe", 0xD6A1C, 0x22261C;
}


init {
    // Version identifier
    version = "Unknown";
    if (settings["gameVer01"]) {
	 version = "v0.1";
    } else if (settings["gameVer02"]) {
	 version = "v0.2";
    } else if (settings["gameVer03"]) {
	 version = "v0.3";
    } else if (settings["gameVer04"]) {
         version = "v0.4";
    } else if (settings["gameVer05"]) {
         version = "v0.5";
    } else if (settings["gameVer051"]) {
         version = "v0.5.1";
    } else if (settings["gameVer051N"]) {
         version = "v0.5.1N";
    }
    print(version);

    // Variables
    vars.currentFile = 0;
    vars.launchMapID = 0;
    vars.courseReset = 0;
    vars.currentStars = 0;

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
    settings.Add("settingsSplit", true, "Split Settings");
    settings.Add("starSplitMenu", true, "Stars", "settingsSplit");
    settings.Add("courseSplit", false, "every Course completion", "starSplitMenu");
    settings.Add("starSplit", false, "every Powerstar", "starSplitMenu");
    settings.Add("fifthSplit", false, "every 5th Powerstar", "starSplitMenu");
    settings.Add("tenthSplit", false, "every 10th Powerstar", "starSplitMenu");
    settings.Add("twentiethSplit", false, "every 20th Powerstar", "starSplitMenu");
    settings.Add("miscSplitMenu", true, "Misc.", "settingsSplit");
    settings.Add("keySplit", false, "includes Keys", "miscSplitMenu");
    settings.Add("switchSplit", false, "includes Switches", "miscSplitMenu");
    settings.Add("settingsReset", true, "Reset Settings");
    settings.Add("gameResetReset", false, "on Game Reset", "settingsReset");
    settings.Add("fileChangeReset", false, "on File Change", "settingsReset");
    settings.Add("gameVersion", true, "Randomizer Version (requires LiveSplit restart)");
    settings.Add("gameVer01", false, "v0.1", "gameVersion");
    settings.Add("gameVer02", false, "v0.2", "gameVersion");
    settings.Add("gameVer03", false, "v0.3", "gameVersion");
    settings.Add("gameVer04", false, "v0.4", "gameVersion");
    settings.Add("gameVer05", false, "v0.5", "gameVersion");
    settings.Add("gameVer051", false, "v0.5.1", "gameVersion");
    settings.Add("gameVer051N", false, "v0.5.1N", "gameVersion");
}

start {
    if (current.mainMenu <= 3 && old.mainMenu == 255 && current.music == 2149655552) {
        vars.currentFile = 0;
        return true;
    }
}

reset {
    if (settings["fileChangeReset"] && vars.currentFile != 0 && current.music == 2149655552 && current.mainMenu <= 3 && vars.currentFile - 1 != current.mainMenu) {
        vars.currentFile = 0;
        return true;
    }
    if (settings["gameResetReset"] && (current.mapID == vars.launchMapID && old.mapID != vars.launchMapID || (current.mapID == vars.launchMapID && old.mapID == vars.launchMapID && current.gameRunTime < old.gameRunTime))) {
        vars.currentFile = 0;
        return true;
    }

    // Current file check for fileChangeReset
    if (current.mainMenu <= 3 && old.mainMenu == 255 && current.music == 2149655552) {
        vars.currentFile = current.mainMenu + 1;
    }
}

split {
    if (settings["courseSplit"]) {
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
            vars.currentStars = 0;
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

    } else if (settings["starSplit"] && current.mapID != vars.launchMapID && old.mapID != vars.launchMapID && current.starNumber > old.starNumber) {
            return true;
    } else if (settings["fifthSplit"] && current.mapID != vars.launchMapID && old.mapID != vars.launchMapID && current.starNumber > old.starNumber && current.starNumber % 10 == 0 && old.starNumber % 10 == 4) {
            return true;
    } else if (settings["tenthSplit"] && current.mapID != vars.launchMapID && old.mapID != vars.launchMapID && current.starNumber > old.starNumber && current.starNumber % 10 == 0 && old.starNumber % 10 == 9) {
            return true;
    } else if (settings["twentiethSplit"] && current.mapID != vars.launchMapID && old.mapID != vars.launchMapID && current.starNumber > old.starNumber && current.starNumber % 10 == 0 && old.starNumber % 10 == 19) {
            return true;
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
}