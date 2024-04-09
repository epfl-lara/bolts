; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32608 () Bool)

(assert start!32608)

(declare-fun b!325664 () Bool)

(declare-fun res!179015 () Bool)

(declare-fun e!200671 () Bool)

(assert (=> b!325664 (=> (not res!179015) (not e!200671))))

(declare-datatypes ((array!16692 0))(
  ( (array!16693 (arr!7899 (Array (_ BitVec 32) (_ BitVec 64))) (size!8251 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16692)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!325664 (= res!179015 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7899 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325665 () Bool)

(declare-fun res!179019 () Bool)

(declare-fun e!200668 () Bool)

(assert (=> b!325665 (=> (not res!179019) (not e!200668))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16692 (_ BitVec 32)) Bool)

(assert (=> b!325665 (= res!179019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!325666 () Bool)

(declare-datatypes ((SeekEntryResult!3041 0))(
  ( (MissingZero!3041 (index!14340 (_ BitVec 32))) (Found!3041 (index!14341 (_ BitVec 32))) (Intermediate!3041 (undefined!3853 Bool) (index!14342 (_ BitVec 32)) (x!32545 (_ BitVec 32))) (Undefined!3041) (MissingVacant!3041 (index!14343 (_ BitVec 32))) )
))
(declare-fun lt!157108 () SeekEntryResult!3041)

(declare-fun lt!157109 () (_ BitVec 32))

(declare-fun e!200669 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16692 (_ BitVec 32)) SeekEntryResult!3041)

(assert (=> b!325666 (= e!200669 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) lt!157109 k!2497 a!3305 mask!3777) lt!157108)))))

(declare-fun b!325667 () Bool)

(declare-fun res!179014 () Bool)

(assert (=> b!325667 (=> (not res!179014) (not e!200668))))

(declare-fun arrayContainsKey!0 (array!16692 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325667 (= res!179014 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325668 () Bool)

(declare-fun res!179016 () Bool)

(assert (=> b!325668 (=> (not res!179016) (not e!200668))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16692 (_ BitVec 32)) SeekEntryResult!3041)

(assert (=> b!325668 (= res!179016 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3041 i!1250)))))

(declare-fun b!325669 () Bool)

(declare-fun res!179021 () Bool)

(assert (=> b!325669 (=> (not res!179021) (not e!200668))))

(assert (=> b!325669 (= res!179021 (and (= (size!8251 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8251 a!3305))))))

(declare-fun b!325670 () Bool)

(assert (=> b!325670 (= e!200668 e!200671)))

(declare-fun res!179017 () Bool)

(assert (=> b!325670 (=> (not res!179017) (not e!200671))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325670 (= res!179017 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157108))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!325670 (= lt!157108 (Intermediate!3041 false resIndex!58 resX!58))))

(declare-fun b!325671 () Bool)

(declare-fun res!179013 () Bool)

(assert (=> b!325671 (=> (not res!179013) (not e!200668))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325671 (= res!179013 (validKeyInArray!0 k!2497))))

(declare-fun b!325672 () Bool)

(assert (=> b!325672 (= e!200671 e!200669)))

(declare-fun res!179012 () Bool)

(assert (=> b!325672 (=> (not res!179012) (not e!200669))))

(assert (=> b!325672 (= res!179012 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1490) resX!58) (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b00000000000000000000000000000000) (bvsge lt!157109 #b00000000000000000000000000000000) (bvslt lt!157109 (size!8251 a!3305))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325672 (= lt!157109 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun res!179022 () Bool)

(assert (=> start!32608 (=> (not res!179022) (not e!200668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32608 (= res!179022 (validMask!0 mask!3777))))

(assert (=> start!32608 e!200668))

(declare-fun array_inv!5853 (array!16692) Bool)

(assert (=> start!32608 (array_inv!5853 a!3305)))

(assert (=> start!32608 true))

(declare-fun b!325673 () Bool)

(declare-fun res!179018 () Bool)

(assert (=> b!325673 (=> (not res!179018) (not e!200671))))

(assert (=> b!325673 (= res!179018 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157108))))

(declare-fun b!325674 () Bool)

(declare-fun res!179020 () Bool)

(assert (=> b!325674 (=> (not res!179020) (not e!200671))))

(assert (=> b!325674 (= res!179020 (and (= (select (arr!7899 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8251 a!3305))))))

(assert (= (and start!32608 res!179022) b!325669))

(assert (= (and b!325669 res!179021) b!325671))

(assert (= (and b!325671 res!179013) b!325667))

(assert (= (and b!325667 res!179014) b!325668))

(assert (= (and b!325668 res!179016) b!325665))

(assert (= (and b!325665 res!179019) b!325670))

(assert (= (and b!325670 res!179017) b!325674))

(assert (= (and b!325674 res!179020) b!325673))

(assert (= (and b!325673 res!179018) b!325664))

(assert (= (and b!325664 res!179015) b!325672))

(assert (= (and b!325672 res!179012) b!325666))

(declare-fun m!332405 () Bool)

(assert (=> b!325668 m!332405))

(declare-fun m!332407 () Bool)

(assert (=> b!325674 m!332407))

(declare-fun m!332409 () Bool)

(assert (=> b!325666 m!332409))

(declare-fun m!332411 () Bool)

(assert (=> b!325673 m!332411))

(declare-fun m!332413 () Bool)

(assert (=> b!325665 m!332413))

(declare-fun m!332415 () Bool)

(assert (=> b!325672 m!332415))

(declare-fun m!332417 () Bool)

(assert (=> b!325671 m!332417))

(declare-fun m!332419 () Bool)

(assert (=> b!325670 m!332419))

(assert (=> b!325670 m!332419))

(declare-fun m!332421 () Bool)

(assert (=> b!325670 m!332421))

(declare-fun m!332423 () Bool)

(assert (=> b!325664 m!332423))

(declare-fun m!332425 () Bool)

(assert (=> start!32608 m!332425))

(declare-fun m!332427 () Bool)

(assert (=> start!32608 m!332427))

(declare-fun m!332429 () Bool)

(assert (=> b!325667 m!332429))

(push 1)

(assert (not b!325668))

(assert (not b!325665))

(assert (not b!325666))

(assert (not b!325671))

(assert (not start!32608))

(assert (not b!325667))

(assert (not b!325670))

(assert (not b!325673))

(assert (not b!325672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69583 () Bool)

(declare-fun lt!157144 () SeekEntryResult!3041)

(assert (=> d!69583 (and (or (is-Undefined!3041 lt!157144) (not (is-Found!3041 lt!157144)) (and (bvsge (index!14341 lt!157144) #b00000000000000000000000000000000) (bvslt (index!14341 lt!157144) (size!8251 a!3305)))) (or (is-Undefined!3041 lt!157144) (is-Found!3041 lt!157144) (not (is-MissingZero!3041 lt!157144)) (and (bvsge (index!14340 lt!157144) #b00000000000000000000000000000000) (bvslt (index!14340 lt!157144) (size!8251 a!3305)))) (or (is-Undefined!3041 lt!157144) (is-Found!3041 lt!157144) (is-MissingZero!3041 lt!157144) (not (is-MissingVacant!3041 lt!157144)) (and (bvsge (index!14343 lt!157144) #b00000000000000000000000000000000) (bvslt (index!14343 lt!157144) (size!8251 a!3305)))) (or (is-Undefined!3041 lt!157144) (ite (is-Found!3041 lt!157144) (= (select (arr!7899 a!3305) (index!14341 lt!157144)) k!2497) (ite (is-MissingZero!3041 lt!157144) (= (select (arr!7899 a!3305) (index!14340 lt!157144)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3041 lt!157144) (= (select (arr!7899 a!3305) (index!14343 lt!157144)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!200730 () SeekEntryResult!3041)

(assert (=> d!69583 (= lt!157144 e!200730)))

(declare-fun c!50985 () Bool)

(declare-fun lt!157142 () SeekEntryResult!3041)

(assert (=> d!69583 (= c!50985 (and (is-Intermediate!3041 lt!157142) (undefined!3853 lt!157142)))))

(assert (=> d!69583 (= lt!157142 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69583 (validMask!0 mask!3777)))

(assert (=> d!69583 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!157144)))

(declare-fun b!325768 () Bool)

(declare-fun e!200729 () SeekEntryResult!3041)

(assert (=> b!325768 (= e!200729 (Found!3041 (index!14342 lt!157142)))))

(declare-fun b!325769 () Bool)

(declare-fun c!50986 () Bool)

(declare-fun lt!157143 () (_ BitVec 64))

(assert (=> b!325769 (= c!50986 (= lt!157143 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!200728 () SeekEntryResult!3041)

(assert (=> b!325769 (= e!200729 e!200728)))

(declare-fun b!325770 () Bool)

(assert (=> b!325770 (= e!200730 e!200729)))

(assert (=> b!325770 (= lt!157143 (select (arr!7899 a!3305) (index!14342 lt!157142)))))

(declare-fun c!50987 () Bool)

(assert (=> b!325770 (= c!50987 (= lt!157143 k!2497))))

(declare-fun b!325771 () Bool)

(assert (=> b!325771 (= e!200728 (MissingZero!3041 (index!14342 lt!157142)))))

(declare-fun b!325772 () Bool)

(assert (=> b!325772 (= e!200730 Undefined!3041)))

(declare-fun b!325773 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16692 (_ BitVec 32)) SeekEntryResult!3041)

(assert (=> b!325773 (= e!200728 (seekKeyOrZeroReturnVacant!0 (x!32545 lt!157142) (index!14342 lt!157142) (index!14342 lt!157142) k!2497 a!3305 mask!3777))))

(assert (= (and d!69583 c!50985) b!325772))

(assert (= (and d!69583 (not c!50985)) b!325770))

(assert (= (and b!325770 c!50987) b!325768))

(assert (= (and b!325770 (not c!50987)) b!325769))

(assert (= (and b!325769 c!50986) b!325771))

(assert (= (and b!325769 (not c!50986)) b!325773))

(declare-fun m!332467 () Bool)

(assert (=> d!69583 m!332467))

(assert (=> d!69583 m!332425))

(declare-fun m!332469 () Bool)

(assert (=> d!69583 m!332469))

(assert (=> d!69583 m!332419))

(assert (=> d!69583 m!332419))

(assert (=> d!69583 m!332421))

(declare-fun m!332471 () Bool)

(assert (=> d!69583 m!332471))

(declare-fun m!332473 () Bool)

(assert (=> b!325770 m!332473))

(declare-fun m!332475 () Bool)

(assert (=> b!325773 m!332475))

(assert (=> b!325668 d!69583))

(declare-fun b!325813 () Bool)

(declare-fun e!200756 () SeekEntryResult!3041)

(assert (=> b!325813 (= e!200756 (Intermediate!3041 true index!1840 x!1490))))

(declare-fun b!325814 () Bool)

(declare-fun e!200759 () Bool)

(declare-fun lt!157167 () SeekEntryResult!3041)

(assert (=> b!325814 (= e!200759 (bvsge (x!32545 lt!157167) #b01111111111111111111111111111110))))

(declare-fun b!325815 () Bool)

(declare-fun e!200757 () SeekEntryResult!3041)

(assert (=> b!325815 (= e!200757 (Intermediate!3041 false index!1840 x!1490))))

(declare-fun d!69601 () Bool)

(assert (=> d!69601 e!200759))

(declare-fun c!51001 () Bool)

(assert (=> d!69601 (= c!51001 (and (is-Intermediate!3041 lt!157167) (undefined!3853 lt!157167)))))

(assert (=> d!69601 (= lt!157167 e!200756)))

(declare-fun c!51000 () Bool)

(assert (=> d!69601 (= c!51000 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!157166 () (_ BitVec 64))

(assert (=> d!69601 (= lt!157166 (select (arr!7899 a!3305) index!1840))))

(assert (=> d!69601 (validMask!0 mask!3777)))

(assert (=> d!69601 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157167)))

(declare-fun b!325816 () Bool)

(assert (=> b!325816 (and (bvsge (index!14342 lt!157167) #b00000000000000000000000000000000) (bvslt (index!14342 lt!157167) (size!8251 a!3305)))))

(declare-fun res!179074 () Bool)

(assert (=> b!325816 (= res!179074 (= (select (arr!7899 a!3305) (index!14342 lt!157167)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!200758 () Bool)

(assert (=> b!325816 (=> res!179074 e!200758)))

(declare-fun b!325817 () Bool)

(assert (=> b!325817 (and (bvsge (index!14342 lt!157167) #b00000000000000000000000000000000) (bvslt (index!14342 lt!157167) (size!8251 a!3305)))))

(declare-fun res!179072 () Bool)

(assert (=> b!325817 (= res!179072 (= (select (arr!7899 a!3305) (index!14342 lt!157167)) k!2497))))

(assert (=> b!325817 (=> res!179072 e!200758)))

(declare-fun e!200755 () Bool)

(assert (=> b!325817 (= e!200755 e!200758)))

(declare-fun b!325818 () Bool)

(assert (=> b!325818 (= e!200757 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!325819 () Bool)

(assert (=> b!325819 (and (bvsge (index!14342 lt!157167) #b00000000000000000000000000000000) (bvslt (index!14342 lt!157167) (size!8251 a!3305)))))

(assert (=> b!325819 (= e!200758 (= (select (arr!7899 a!3305) (index!14342 lt!157167)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!325820 () Bool)

(assert (=> b!325820 (= e!200756 e!200757)))

(declare-fun c!51002 () Bool)

(assert (=> b!325820 (= c!51002 (or (= lt!157166 k!2497) (= (bvadd lt!157166 lt!157166) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!325821 () Bool)

(assert (=> b!325821 (= e!200759 e!200755)))

(declare-fun res!179073 () Bool)

(assert (=> b!325821 (= res!179073 (and (is-Intermediate!3041 lt!157167) (not (undefined!3853 lt!157167)) (bvslt (x!32545 lt!157167) #b01111111111111111111111111111110) (bvsge (x!32545 lt!157167) #b00000000000000000000000000000000) (bvsge (x!32545 lt!157167) x!1490)))))

(assert (=> b!325821 (=> (not res!179073) (not e!200755))))

(assert (= (and d!69601 c!51000) b!325813))

(assert (= (and d!69601 (not c!51000)) b!325820))

(assert (= (and b!325820 c!51002) b!325815))

(assert (= (and b!325820 (not c!51002)) b!325818))

(assert (= (and d!69601 c!51001) b!325814))

(assert (= (and d!69601 (not c!51001)) b!325821))

(assert (= (and b!325821 res!179073) b!325817))

(assert (= (and b!325817 (not res!179072)) b!325816))

(assert (= (and b!325816 (not res!179074)) b!325819))

(declare-fun m!332493 () Bool)

(assert (=> b!325817 m!332493))

(assert (=> d!69601 m!332423))

(assert (=> d!69601 m!332425))

(assert (=> b!325819 m!332493))

(assert (=> b!325818 m!332415))

(assert (=> b!325818 m!332415))

(declare-fun m!332495 () Bool)

(assert (=> b!325818 m!332495))

(assert (=> b!325816 m!332493))

(assert (=> b!325673 d!69601))

(declare-fun d!69613 () Bool)

(declare-fun lt!157170 () (_ BitVec 32))

(assert (=> d!69613 (and (bvsge lt!157170 #b00000000000000000000000000000000) (bvslt lt!157170 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69613 (= lt!157170 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!69613 (validMask!0 mask!3777)))

(assert (=> d!69613 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!157170)))

(declare-fun bs!11330 () Bool)

(assert (= bs!11330 d!69613))

(declare-fun m!332497 () Bool)

(assert (=> bs!11330 m!332497))

(assert (=> bs!11330 m!332425))

(assert (=> b!325672 d!69613))

(declare-fun d!69615 () Bool)

(declare-fun res!179079 () Bool)

(declare-fun e!200764 () Bool)

(assert (=> d!69615 (=> res!179079 e!200764)))

(assert (=> d!69615 (= res!179079 (= (select (arr!7899 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69615 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!200764)))

(declare-fun b!325826 () Bool)

(declare-fun e!200765 () Bool)

(assert (=> b!325826 (= e!200764 e!200765)))

(declare-fun res!179080 () Bool)

(assert (=> b!325826 (=> (not res!179080) (not e!200765))))

(assert (=> b!325826 (= res!179080 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8251 a!3305)))))

(declare-fun b!325827 () Bool)

(assert (=> b!325827 (= e!200765 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69615 (not res!179079)) b!325826))

(assert (= (and b!325826 res!179080) b!325827))

(declare-fun m!332499 () Bool)

(assert (=> d!69615 m!332499))

(declare-fun m!332501 () Bool)

(assert (=> b!325827 m!332501))

(assert (=> b!325667 d!69615))

(declare-fun b!325881 () Bool)

(declare-fun e!200797 () Bool)

(declare-fun call!26084 () Bool)

(assert (=> b!325881 (= e!200797 call!26084)))

(declare-fun bm!26081 () Bool)

(assert (=> bm!26081 (= call!26084 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!325883 () Bool)

(declare-fun e!200795 () Bool)

(assert (=> b!325883 (= e!200795 e!200797)))

(declare-fun c!51026 () Bool)

(assert (=> b!325883 (= c!51026 (validKeyInArray!0 (select (arr!7899 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!325884 () Bool)

(declare-fun e!200796 () Bool)

(assert (=> b!325884 (= e!200796 call!26084)))

(declare-fun b!325882 () Bool)

(assert (=> b!325882 (= e!200797 e!200796)))

(declare-fun lt!157199 () (_ BitVec 64))

(assert (=> b!325882 (= lt!157199 (select (arr!7899 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10091 0))(
  ( (Unit!10092) )
))
(declare-fun lt!157198 () Unit!10091)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16692 (_ BitVec 64) (_ BitVec 32)) Unit!10091)

(assert (=> b!325882 (= lt!157198 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157199 #b00000000000000000000000000000000))))

(assert (=> b!325882 (arrayContainsKey!0 a!3305 lt!157199 #b00000000000000000000000000000000)))

(declare-fun lt!157197 () Unit!10091)

(assert (=> b!325882 (= lt!157197 lt!157198)))

(declare-fun res!179089 () Bool)

(assert (=> b!325882 (= res!179089 (= (seekEntryOrOpen!0 (select (arr!7899 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3041 #b00000000000000000000000000000000)))))

(assert (=> b!325882 (=> (not res!179089) (not e!200796))))

(declare-fun d!69617 () Bool)

(declare-fun res!179088 () Bool)

(assert (=> d!69617 (=> res!179088 e!200795)))

(assert (=> d!69617 (= res!179088 (bvsge #b00000000000000000000000000000000 (size!8251 a!3305)))))

(assert (=> d!69617 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!200795)))

(assert (= (and d!69617 (not res!179088)) b!325883))

(assert (= (and b!325883 c!51026) b!325882))

(assert (= (and b!325883 (not c!51026)) b!325881))

(assert (= (and b!325882 res!179089) b!325884))

(assert (= (or b!325884 b!325881) bm!26081))

(declare-fun m!332531 () Bool)

(assert (=> bm!26081 m!332531))

(assert (=> b!325883 m!332499))

(assert (=> b!325883 m!332499))

(declare-fun m!332533 () Bool)

(assert (=> b!325883 m!332533))

(assert (=> b!325882 m!332499))

(declare-fun m!332535 () Bool)

(assert (=> b!325882 m!332535))

(declare-fun m!332537 () Bool)

(assert (=> b!325882 m!332537))

(assert (=> b!325882 m!332499))

(declare-fun m!332539 () Bool)

(assert (=> b!325882 m!332539))

(assert (=> b!325665 d!69617))

(declare-fun b!325885 () Bool)

(declare-fun e!200799 () SeekEntryResult!3041)

(assert (=> b!325885 (= e!200799 (Intermediate!3041 true lt!157109 (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!325886 () Bool)

(declare-fun e!200802 () Bool)

(declare-fun lt!157201 () SeekEntryResult!3041)

(assert (=> b!325886 (= e!200802 (bvsge (x!32545 lt!157201) #b01111111111111111111111111111110))))

(declare-fun b!325887 () Bool)

(declare-fun e!200800 () SeekEntryResult!3041)

(assert (=> b!325887 (= e!200800 (Intermediate!3041 false lt!157109 (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun d!69623 () Bool)

(assert (=> d!69623 e!200802))

(declare-fun c!51028 () Bool)

(assert (=> d!69623 (= c!51028 (and (is-Intermediate!3041 lt!157201) (undefined!3853 lt!157201)))))

(assert (=> d!69623 (= lt!157201 e!200799)))

(declare-fun c!51027 () Bool)

(assert (=> d!69623 (= c!51027 (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110))))

(declare-fun lt!157200 () (_ BitVec 64))

(assert (=> d!69623 (= lt!157200 (select (arr!7899 a!3305) lt!157109))))

(assert (=> d!69623 (validMask!0 mask!3777)))

(assert (=> d!69623 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) lt!157109 k!2497 a!3305 mask!3777) lt!157201)))

(declare-fun b!325888 () Bool)

(assert (=> b!325888 (and (bvsge (index!14342 lt!157201) #b00000000000000000000000000000000) (bvslt (index!14342 lt!157201) (size!8251 a!3305)))))

(declare-fun res!179092 () Bool)

(assert (=> b!325888 (= res!179092 (= (select (arr!7899 a!3305) (index!14342 lt!157201)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!200801 () Bool)

(assert (=> b!325888 (=> res!179092 e!200801)))

(declare-fun b!325889 () Bool)

(assert (=> b!325889 (and (bvsge (index!14342 lt!157201) #b00000000000000000000000000000000) (bvslt (index!14342 lt!157201) (size!8251 a!3305)))))

(declare-fun res!179090 () Bool)

(assert (=> b!325889 (= res!179090 (= (select (arr!7899 a!3305) (index!14342 lt!157201)) k!2497))))

(assert (=> b!325889 (=> res!179090 e!200801)))

(declare-fun e!200798 () Bool)

(assert (=> b!325889 (= e!200798 e!200801)))

(declare-fun b!325890 () Bool)

(assert (=> b!325890 (= e!200800 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) (nextIndex!0 lt!157109 (bvadd #b00000000000000000000000000000001 x!1490) mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!325891 () Bool)

(assert (=> b!325891 (and (bvsge (index!14342 lt!157201) #b00000000000000000000000000000000) (bvslt (index!14342 lt!157201) (size!8251 a!3305)))))

(assert (=> b!325891 (= e!200801 (= (select (arr!7899 a!3305) (index!14342 lt!157201)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!325892 () Bool)

(assert (=> b!325892 (= e!200799 e!200800)))

(declare-fun c!51029 () Bool)

(assert (=> b!325892 (= c!51029 (or (= lt!157200 k!2497) (= (bvadd lt!157200 lt!157200) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!325893 () Bool)

(assert (=> b!325893 (= e!200802 e!200798)))

(declare-fun res!179091 () Bool)

(assert (=> b!325893 (= res!179091 (and (is-Intermediate!3041 lt!157201) (not (undefined!3853 lt!157201)) (bvslt (x!32545 lt!157201) #b01111111111111111111111111111110) (bvsge (x!32545 lt!157201) #b00000000000000000000000000000000) (bvsge (x!32545 lt!157201) (bvadd #b00000000000000000000000000000001 x!1490))))))

(assert (=> b!325893 (=> (not res!179091) (not e!200798))))

(assert (= (and d!69623 c!51027) b!325885))

(assert (= (and d!69623 (not c!51027)) b!325892))

(assert (= (and b!325892 c!51029) b!325887))

(assert (= (and b!325892 (not c!51029)) b!325890))

(assert (= (and d!69623 c!51028) b!325886))

(assert (= (and d!69623 (not c!51028)) b!325893))

(assert (= (and b!325893 res!179091) b!325889))

(assert (= (and b!325889 (not res!179090)) b!325888))

(assert (= (and b!325888 (not res!179092)) b!325891))

(declare-fun m!332541 () Bool)

(assert (=> b!325889 m!332541))

(declare-fun m!332543 () Bool)

(assert (=> d!69623 m!332543))

(assert (=> d!69623 m!332425))

(assert (=> b!325891 m!332541))

(declare-fun m!332545 () Bool)

(assert (=> b!325890 m!332545))

(assert (=> b!325890 m!332545))

(declare-fun m!332547 () Bool)

(assert (=> b!325890 m!332547))

(assert (=> b!325888 m!332541))

(assert (=> b!325666 d!69623))

(declare-fun d!69625 () Bool)

(assert (=> d!69625 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

