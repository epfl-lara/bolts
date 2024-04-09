; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119862 () Bool)

(assert start!119862)

(declare-fun b!1395437 () Bool)

(declare-fun e!790034 () Bool)

(declare-fun e!790032 () Bool)

(assert (=> b!1395437 (= e!790034 (not e!790032))))

(declare-fun res!934793 () Bool)

(assert (=> b!1395437 (=> res!934793 e!790032)))

(declare-datatypes ((SeekEntryResult!10397 0))(
  ( (MissingZero!10397 (index!43958 (_ BitVec 32))) (Found!10397 (index!43959 (_ BitVec 32))) (Intermediate!10397 (undefined!11209 Bool) (index!43960 (_ BitVec 32)) (x!125626 (_ BitVec 32))) (Undefined!10397) (MissingVacant!10397 (index!43961 (_ BitVec 32))) )
))
(declare-fun lt!612955 () SeekEntryResult!10397)

(get-info :version)

(assert (=> b!1395437 (= res!934793 (or (not ((_ is Intermediate!10397) lt!612955)) (undefined!11209 lt!612955)))))

(declare-fun e!790033 () Bool)

(assert (=> b!1395437 e!790033))

(declare-fun res!934789 () Bool)

(assert (=> b!1395437 (=> (not res!934789) (not e!790033))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95411 0))(
  ( (array!95412 (arr!46058 (Array (_ BitVec 32) (_ BitVec 64))) (size!46609 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95411)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95411 (_ BitVec 32)) Bool)

(assert (=> b!1395437 (= res!934789 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46748 0))(
  ( (Unit!46749) )
))
(declare-fun lt!612954 () Unit!46748)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95411 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46748)

(assert (=> b!1395437 (= lt!612954 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95411 (_ BitVec 32)) SeekEntryResult!10397)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395437 (= lt!612955 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46058 a!2901) j!112) mask!2840) (select (arr!46058 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395438 () Bool)

(declare-fun res!934790 () Bool)

(assert (=> b!1395438 (=> (not res!934790) (not e!790034))))

(assert (=> b!1395438 (= res!934790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395439 () Bool)

(declare-fun res!934797 () Bool)

(assert (=> b!1395439 (=> (not res!934797) (not e!790034))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1395439 (= res!934797 (and (= (size!46609 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46609 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46609 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!934794 () Bool)

(assert (=> start!119862 (=> (not res!934794) (not e!790034))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119862 (= res!934794 (validMask!0 mask!2840))))

(assert (=> start!119862 e!790034))

(assert (=> start!119862 true))

(declare-fun array_inv!35003 (array!95411) Bool)

(assert (=> start!119862 (array_inv!35003 a!2901)))

(declare-fun b!1395440 () Bool)

(declare-fun res!934796 () Bool)

(assert (=> b!1395440 (=> (not res!934796) (not e!790034))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395440 (= res!934796 (validKeyInArray!0 (select (arr!46058 a!2901) j!112)))))

(declare-fun b!1395441 () Bool)

(declare-fun res!934792 () Bool)

(assert (=> b!1395441 (=> (not res!934792) (not e!790034))))

(declare-datatypes ((List!32757 0))(
  ( (Nil!32754) (Cons!32753 (h!33989 (_ BitVec 64)) (t!47458 List!32757)) )
))
(declare-fun arrayNoDuplicates!0 (array!95411 (_ BitVec 32) List!32757) Bool)

(assert (=> b!1395441 (= res!934792 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32754))))

(declare-fun b!1395442 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95411 (_ BitVec 32)) SeekEntryResult!10397)

(assert (=> b!1395442 (= e!790033 (= (seekEntryOrOpen!0 (select (arr!46058 a!2901) j!112) a!2901 mask!2840) (Found!10397 j!112)))))

(declare-fun b!1395443 () Bool)

(declare-fun e!790031 () Bool)

(declare-fun lt!612953 () (_ BitVec 32))

(assert (=> b!1395443 (= e!790031 (or (bvslt mask!2840 #b00000000000000000000000000000000) (and (bvsge lt!612953 #b00000000000000000000000000000000) (bvslt lt!612953 (bvadd #b00000000000000000000000000000001 mask!2840)))))))

(declare-fun b!1395444 () Bool)

(declare-fun res!934791 () Bool)

(assert (=> b!1395444 (=> (not res!934791) (not e!790034))))

(assert (=> b!1395444 (= res!934791 (validKeyInArray!0 (select (arr!46058 a!2901) i!1037)))))

(declare-fun b!1395445 () Bool)

(assert (=> b!1395445 (= e!790032 e!790031)))

(declare-fun res!934795 () Bool)

(assert (=> b!1395445 (=> res!934795 e!790031)))

(assert (=> b!1395445 (= res!934795 (= lt!612955 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612953 (select (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95412 (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46609 a!2901)) mask!2840)))))

(assert (=> b!1395445 (= lt!612953 (toIndex!0 (select (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(assert (= (and start!119862 res!934794) b!1395439))

(assert (= (and b!1395439 res!934797) b!1395444))

(assert (= (and b!1395444 res!934791) b!1395440))

(assert (= (and b!1395440 res!934796) b!1395438))

(assert (= (and b!1395438 res!934790) b!1395441))

(assert (= (and b!1395441 res!934792) b!1395437))

(assert (= (and b!1395437 res!934789) b!1395442))

(assert (= (and b!1395437 (not res!934793)) b!1395445))

(assert (= (and b!1395445 (not res!934795)) b!1395443))

(declare-fun m!1282005 () Bool)

(assert (=> b!1395441 m!1282005))

(declare-fun m!1282007 () Bool)

(assert (=> b!1395442 m!1282007))

(assert (=> b!1395442 m!1282007))

(declare-fun m!1282009 () Bool)

(assert (=> b!1395442 m!1282009))

(declare-fun m!1282011 () Bool)

(assert (=> b!1395438 m!1282011))

(declare-fun m!1282013 () Bool)

(assert (=> b!1395444 m!1282013))

(assert (=> b!1395444 m!1282013))

(declare-fun m!1282015 () Bool)

(assert (=> b!1395444 m!1282015))

(assert (=> b!1395440 m!1282007))

(assert (=> b!1395440 m!1282007))

(declare-fun m!1282017 () Bool)

(assert (=> b!1395440 m!1282017))

(assert (=> b!1395437 m!1282007))

(declare-fun m!1282019 () Bool)

(assert (=> b!1395437 m!1282019))

(assert (=> b!1395437 m!1282007))

(declare-fun m!1282021 () Bool)

(assert (=> b!1395437 m!1282021))

(assert (=> b!1395437 m!1282019))

(assert (=> b!1395437 m!1282007))

(declare-fun m!1282023 () Bool)

(assert (=> b!1395437 m!1282023))

(declare-fun m!1282025 () Bool)

(assert (=> b!1395437 m!1282025))

(declare-fun m!1282027 () Bool)

(assert (=> start!119862 m!1282027))

(declare-fun m!1282029 () Bool)

(assert (=> start!119862 m!1282029))

(declare-fun m!1282031 () Bool)

(assert (=> b!1395445 m!1282031))

(declare-fun m!1282033 () Bool)

(assert (=> b!1395445 m!1282033))

(assert (=> b!1395445 m!1282033))

(declare-fun m!1282035 () Bool)

(assert (=> b!1395445 m!1282035))

(assert (=> b!1395445 m!1282033))

(declare-fun m!1282037 () Bool)

(assert (=> b!1395445 m!1282037))

(check-sat (not start!119862) (not b!1395441) (not b!1395445) (not b!1395437) (not b!1395438) (not b!1395444) (not b!1395440) (not b!1395442))
(check-sat)
(get-model)

(declare-fun b!1395481 () Bool)

(declare-fun e!790058 () Bool)

(declare-fun e!790056 () Bool)

(assert (=> b!1395481 (= e!790058 e!790056)))

(declare-fun c!129782 () Bool)

(assert (=> b!1395481 (= c!129782 (validKeyInArray!0 (select (arr!46058 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150651 () Bool)

(declare-fun res!934829 () Bool)

(assert (=> d!150651 (=> res!934829 e!790058)))

(assert (=> d!150651 (= res!934829 (bvsge #b00000000000000000000000000000000 (size!46609 a!2901)))))

(assert (=> d!150651 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!790058)))

(declare-fun b!1395482 () Bool)

(declare-fun e!790057 () Bool)

(declare-fun call!66825 () Bool)

(assert (=> b!1395482 (= e!790057 call!66825)))

(declare-fun b!1395483 () Bool)

(assert (=> b!1395483 (= e!790056 e!790057)))

(declare-fun lt!612973 () (_ BitVec 64))

(assert (=> b!1395483 (= lt!612973 (select (arr!46058 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!612971 () Unit!46748)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95411 (_ BitVec 64) (_ BitVec 32)) Unit!46748)

(assert (=> b!1395483 (= lt!612971 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!612973 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95411 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1395483 (arrayContainsKey!0 a!2901 lt!612973 #b00000000000000000000000000000000)))

(declare-fun lt!612972 () Unit!46748)

(assert (=> b!1395483 (= lt!612972 lt!612971)))

(declare-fun res!934830 () Bool)

(assert (=> b!1395483 (= res!934830 (= (seekEntryOrOpen!0 (select (arr!46058 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10397 #b00000000000000000000000000000000)))))

(assert (=> b!1395483 (=> (not res!934830) (not e!790057))))

(declare-fun bm!66822 () Bool)

(assert (=> bm!66822 (= call!66825 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1395484 () Bool)

(assert (=> b!1395484 (= e!790056 call!66825)))

(assert (= (and d!150651 (not res!934829)) b!1395481))

(assert (= (and b!1395481 c!129782) b!1395483))

(assert (= (and b!1395481 (not c!129782)) b!1395484))

(assert (= (and b!1395483 res!934830) b!1395482))

(assert (= (or b!1395482 b!1395484) bm!66822))

(declare-fun m!1282073 () Bool)

(assert (=> b!1395481 m!1282073))

(assert (=> b!1395481 m!1282073))

(declare-fun m!1282075 () Bool)

(assert (=> b!1395481 m!1282075))

(assert (=> b!1395483 m!1282073))

(declare-fun m!1282077 () Bool)

(assert (=> b!1395483 m!1282077))

(declare-fun m!1282079 () Bool)

(assert (=> b!1395483 m!1282079))

(assert (=> b!1395483 m!1282073))

(declare-fun m!1282081 () Bool)

(assert (=> b!1395483 m!1282081))

(declare-fun m!1282083 () Bool)

(assert (=> bm!66822 m!1282083))

(assert (=> b!1395438 d!150651))

(declare-fun d!150655 () Bool)

(assert (=> d!150655 (= (validKeyInArray!0 (select (arr!46058 a!2901) i!1037)) (and (not (= (select (arr!46058 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46058 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1395444 d!150655))

(declare-fun b!1395485 () Bool)

(declare-fun e!790061 () Bool)

(declare-fun e!790059 () Bool)

(assert (=> b!1395485 (= e!790061 e!790059)))

(declare-fun c!129783 () Bool)

(assert (=> b!1395485 (= c!129783 (validKeyInArray!0 (select (arr!46058 a!2901) j!112)))))

(declare-fun d!150657 () Bool)

(declare-fun res!934831 () Bool)

(assert (=> d!150657 (=> res!934831 e!790061)))

(assert (=> d!150657 (= res!934831 (bvsge j!112 (size!46609 a!2901)))))

(assert (=> d!150657 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!790061)))

(declare-fun b!1395486 () Bool)

(declare-fun e!790060 () Bool)

(declare-fun call!66826 () Bool)

(assert (=> b!1395486 (= e!790060 call!66826)))

(declare-fun b!1395487 () Bool)

(assert (=> b!1395487 (= e!790059 e!790060)))

(declare-fun lt!612976 () (_ BitVec 64))

(assert (=> b!1395487 (= lt!612976 (select (arr!46058 a!2901) j!112))))

(declare-fun lt!612974 () Unit!46748)

(assert (=> b!1395487 (= lt!612974 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!612976 j!112))))

(assert (=> b!1395487 (arrayContainsKey!0 a!2901 lt!612976 #b00000000000000000000000000000000)))

(declare-fun lt!612975 () Unit!46748)

(assert (=> b!1395487 (= lt!612975 lt!612974)))

(declare-fun res!934832 () Bool)

(assert (=> b!1395487 (= res!934832 (= (seekEntryOrOpen!0 (select (arr!46058 a!2901) j!112) a!2901 mask!2840) (Found!10397 j!112)))))

(assert (=> b!1395487 (=> (not res!934832) (not e!790060))))

(declare-fun bm!66823 () Bool)

(assert (=> bm!66823 (= call!66826 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1395488 () Bool)

(assert (=> b!1395488 (= e!790059 call!66826)))

(assert (= (and d!150657 (not res!934831)) b!1395485))

(assert (= (and b!1395485 c!129783) b!1395487))

(assert (= (and b!1395485 (not c!129783)) b!1395488))

(assert (= (and b!1395487 res!934832) b!1395486))

(assert (= (or b!1395486 b!1395488) bm!66823))

(assert (=> b!1395485 m!1282007))

(assert (=> b!1395485 m!1282007))

(assert (=> b!1395485 m!1282017))

(assert (=> b!1395487 m!1282007))

(declare-fun m!1282085 () Bool)

(assert (=> b!1395487 m!1282085))

(declare-fun m!1282087 () Bool)

(assert (=> b!1395487 m!1282087))

(assert (=> b!1395487 m!1282007))

(assert (=> b!1395487 m!1282009))

(declare-fun m!1282089 () Bool)

(assert (=> bm!66823 m!1282089))

(assert (=> b!1395437 d!150657))

(declare-fun d!150659 () Bool)

(assert (=> d!150659 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612988 () Unit!46748)

(declare-fun choose!38 (array!95411 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46748)

(assert (=> d!150659 (= lt!612988 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150659 (validMask!0 mask!2840)))

(assert (=> d!150659 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!612988)))

(declare-fun bs!40610 () Bool)

(assert (= bs!40610 d!150659))

(assert (=> bs!40610 m!1282025))

(declare-fun m!1282099 () Bool)

(assert (=> bs!40610 m!1282099))

(assert (=> bs!40610 m!1282027))

(assert (=> b!1395437 d!150659))

(declare-fun b!1395543 () Bool)

(declare-fun e!790100 () SeekEntryResult!10397)

(declare-fun e!790097 () SeekEntryResult!10397)

(assert (=> b!1395543 (= e!790100 e!790097)))

(declare-fun lt!613016 () (_ BitVec 64))

(declare-fun c!129803 () Bool)

(assert (=> b!1395543 (= c!129803 (or (= lt!613016 (select (arr!46058 a!2901) j!112)) (= (bvadd lt!613016 lt!613016) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1395544 () Bool)

(declare-fun e!790101 () Bool)

(declare-fun e!790099 () Bool)

(assert (=> b!1395544 (= e!790101 e!790099)))

(declare-fun res!934855 () Bool)

(declare-fun lt!613015 () SeekEntryResult!10397)

(assert (=> b!1395544 (= res!934855 (and ((_ is Intermediate!10397) lt!613015) (not (undefined!11209 lt!613015)) (bvslt (x!125626 lt!613015) #b01111111111111111111111111111110) (bvsge (x!125626 lt!613015) #b00000000000000000000000000000000) (bvsge (x!125626 lt!613015) #b00000000000000000000000000000000)))))

(assert (=> b!1395544 (=> (not res!934855) (not e!790099))))

(declare-fun b!1395545 () Bool)

(assert (=> b!1395545 (= e!790097 (Intermediate!10397 false (toIndex!0 (select (arr!46058 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395546 () Bool)

(assert (=> b!1395546 (and (bvsge (index!43960 lt!613015) #b00000000000000000000000000000000) (bvslt (index!43960 lt!613015) (size!46609 a!2901)))))

(declare-fun e!790098 () Bool)

(assert (=> b!1395546 (= e!790098 (= (select (arr!46058 a!2901) (index!43960 lt!613015)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!150661 () Bool)

(assert (=> d!150661 e!790101))

(declare-fun c!129802 () Bool)

(assert (=> d!150661 (= c!129802 (and ((_ is Intermediate!10397) lt!613015) (undefined!11209 lt!613015)))))

(assert (=> d!150661 (= lt!613015 e!790100)))

(declare-fun c!129801 () Bool)

(assert (=> d!150661 (= c!129801 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150661 (= lt!613016 (select (arr!46058 a!2901) (toIndex!0 (select (arr!46058 a!2901) j!112) mask!2840)))))

(assert (=> d!150661 (validMask!0 mask!2840)))

(assert (=> d!150661 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46058 a!2901) j!112) mask!2840) (select (arr!46058 a!2901) j!112) a!2901 mask!2840) lt!613015)))

(declare-fun b!1395547 () Bool)

(assert (=> b!1395547 (and (bvsge (index!43960 lt!613015) #b00000000000000000000000000000000) (bvslt (index!43960 lt!613015) (size!46609 a!2901)))))

(declare-fun res!934854 () Bool)

(assert (=> b!1395547 (= res!934854 (= (select (arr!46058 a!2901) (index!43960 lt!613015)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1395547 (=> res!934854 e!790098)))

(declare-fun b!1395548 () Bool)

(assert (=> b!1395548 (= e!790100 (Intermediate!10397 true (toIndex!0 (select (arr!46058 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395549 () Bool)

(assert (=> b!1395549 (= e!790101 (bvsge (x!125626 lt!613015) #b01111111111111111111111111111110))))

(declare-fun b!1395550 () Bool)

(assert (=> b!1395550 (and (bvsge (index!43960 lt!613015) #b00000000000000000000000000000000) (bvslt (index!43960 lt!613015) (size!46609 a!2901)))))

(declare-fun res!934853 () Bool)

(assert (=> b!1395550 (= res!934853 (= (select (arr!46058 a!2901) (index!43960 lt!613015)) (select (arr!46058 a!2901) j!112)))))

(assert (=> b!1395550 (=> res!934853 e!790098)))

(assert (=> b!1395550 (= e!790099 e!790098)))

(declare-fun b!1395551 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395551 (= e!790097 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46058 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46058 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!150661 c!129801) b!1395548))

(assert (= (and d!150661 (not c!129801)) b!1395543))

(assert (= (and b!1395543 c!129803) b!1395545))

(assert (= (and b!1395543 (not c!129803)) b!1395551))

(assert (= (and d!150661 c!129802) b!1395549))

(assert (= (and d!150661 (not c!129802)) b!1395544))

(assert (= (and b!1395544 res!934855) b!1395550))

(assert (= (and b!1395550 (not res!934853)) b!1395547))

(assert (= (and b!1395547 (not res!934854)) b!1395546))

(declare-fun m!1282121 () Bool)

(assert (=> b!1395546 m!1282121))

(assert (=> b!1395547 m!1282121))

(assert (=> d!150661 m!1282019))

(declare-fun m!1282123 () Bool)

(assert (=> d!150661 m!1282123))

(assert (=> d!150661 m!1282027))

(assert (=> b!1395550 m!1282121))

(assert (=> b!1395551 m!1282019))

(declare-fun m!1282125 () Bool)

(assert (=> b!1395551 m!1282125))

(assert (=> b!1395551 m!1282125))

(assert (=> b!1395551 m!1282007))

(declare-fun m!1282127 () Bool)

(assert (=> b!1395551 m!1282127))

(assert (=> b!1395437 d!150661))

(declare-fun d!150675 () Bool)

(declare-fun lt!613024 () (_ BitVec 32))

(declare-fun lt!613023 () (_ BitVec 32))

(assert (=> d!150675 (= lt!613024 (bvmul (bvxor lt!613023 (bvlshr lt!613023 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150675 (= lt!613023 ((_ extract 31 0) (bvand (bvxor (select (arr!46058 a!2901) j!112) (bvlshr (select (arr!46058 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150675 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!934862 (let ((h!33991 ((_ extract 31 0) (bvand (bvxor (select (arr!46058 a!2901) j!112) (bvlshr (select (arr!46058 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125630 (bvmul (bvxor h!33991 (bvlshr h!33991 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125630 (bvlshr x!125630 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!934862 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!934862 #b00000000000000000000000000000000))))))

(assert (=> d!150675 (= (toIndex!0 (select (arr!46058 a!2901) j!112) mask!2840) (bvand (bvxor lt!613024 (bvlshr lt!613024 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1395437 d!150675))

(declare-fun b!1395619 () Bool)

(declare-fun lt!613055 () SeekEntryResult!10397)

(declare-fun e!790140 () SeekEntryResult!10397)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95411 (_ BitVec 32)) SeekEntryResult!10397)

(assert (=> b!1395619 (= e!790140 (seekKeyOrZeroReturnVacant!0 (x!125626 lt!613055) (index!43960 lt!613055) (index!43960 lt!613055) (select (arr!46058 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395620 () Bool)

(assert (=> b!1395620 (= e!790140 (MissingZero!10397 (index!43960 lt!613055)))))

(declare-fun d!150677 () Bool)

(declare-fun lt!613053 () SeekEntryResult!10397)

(assert (=> d!150677 (and (or ((_ is Undefined!10397) lt!613053) (not ((_ is Found!10397) lt!613053)) (and (bvsge (index!43959 lt!613053) #b00000000000000000000000000000000) (bvslt (index!43959 lt!613053) (size!46609 a!2901)))) (or ((_ is Undefined!10397) lt!613053) ((_ is Found!10397) lt!613053) (not ((_ is MissingZero!10397) lt!613053)) (and (bvsge (index!43958 lt!613053) #b00000000000000000000000000000000) (bvslt (index!43958 lt!613053) (size!46609 a!2901)))) (or ((_ is Undefined!10397) lt!613053) ((_ is Found!10397) lt!613053) ((_ is MissingZero!10397) lt!613053) (not ((_ is MissingVacant!10397) lt!613053)) (and (bvsge (index!43961 lt!613053) #b00000000000000000000000000000000) (bvslt (index!43961 lt!613053) (size!46609 a!2901)))) (or ((_ is Undefined!10397) lt!613053) (ite ((_ is Found!10397) lt!613053) (= (select (arr!46058 a!2901) (index!43959 lt!613053)) (select (arr!46058 a!2901) j!112)) (ite ((_ is MissingZero!10397) lt!613053) (= (select (arr!46058 a!2901) (index!43958 lt!613053)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10397) lt!613053) (= (select (arr!46058 a!2901) (index!43961 lt!613053)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!790139 () SeekEntryResult!10397)

(assert (=> d!150677 (= lt!613053 e!790139)))

(declare-fun c!129827 () Bool)

(assert (=> d!150677 (= c!129827 (and ((_ is Intermediate!10397) lt!613055) (undefined!11209 lt!613055)))))

(assert (=> d!150677 (= lt!613055 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46058 a!2901) j!112) mask!2840) (select (arr!46058 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150677 (validMask!0 mask!2840)))

(assert (=> d!150677 (= (seekEntryOrOpen!0 (select (arr!46058 a!2901) j!112) a!2901 mask!2840) lt!613053)))

(declare-fun b!1395621 () Bool)

(declare-fun e!790141 () SeekEntryResult!10397)

(assert (=> b!1395621 (= e!790139 e!790141)))

(declare-fun lt!613054 () (_ BitVec 64))

(assert (=> b!1395621 (= lt!613054 (select (arr!46058 a!2901) (index!43960 lt!613055)))))

(declare-fun c!129829 () Bool)

(assert (=> b!1395621 (= c!129829 (= lt!613054 (select (arr!46058 a!2901) j!112)))))

(declare-fun b!1395622 () Bool)

(assert (=> b!1395622 (= e!790139 Undefined!10397)))

(declare-fun b!1395623 () Bool)

(declare-fun c!129828 () Bool)

(assert (=> b!1395623 (= c!129828 (= lt!613054 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1395623 (= e!790141 e!790140)))

(declare-fun b!1395624 () Bool)

(assert (=> b!1395624 (= e!790141 (Found!10397 (index!43960 lt!613055)))))

(assert (= (and d!150677 c!129827) b!1395622))

(assert (= (and d!150677 (not c!129827)) b!1395621))

(assert (= (and b!1395621 c!129829) b!1395624))

(assert (= (and b!1395621 (not c!129829)) b!1395623))

(assert (= (and b!1395623 c!129828) b!1395620))

(assert (= (and b!1395623 (not c!129828)) b!1395619))

(assert (=> b!1395619 m!1282007))

(declare-fun m!1282153 () Bool)

(assert (=> b!1395619 m!1282153))

(assert (=> d!150677 m!1282027))

(declare-fun m!1282155 () Bool)

(assert (=> d!150677 m!1282155))

(assert (=> d!150677 m!1282019))

(assert (=> d!150677 m!1282007))

(assert (=> d!150677 m!1282023))

(declare-fun m!1282157 () Bool)

(assert (=> d!150677 m!1282157))

(declare-fun m!1282159 () Bool)

(assert (=> d!150677 m!1282159))

(assert (=> d!150677 m!1282007))

(assert (=> d!150677 m!1282019))

(declare-fun m!1282161 () Bool)

(assert (=> b!1395621 m!1282161))

(assert (=> b!1395442 d!150677))

(declare-fun b!1395635 () Bool)

(declare-fun e!790151 () Bool)

(declare-fun contains!9790 (List!32757 (_ BitVec 64)) Bool)

(assert (=> b!1395635 (= e!790151 (contains!9790 Nil!32754 (select (arr!46058 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1395636 () Bool)

(declare-fun e!790152 () Bool)

(declare-fun e!790150 () Bool)

(assert (=> b!1395636 (= e!790152 e!790150)))

(declare-fun res!934886 () Bool)

(assert (=> b!1395636 (=> (not res!934886) (not e!790150))))

(assert (=> b!1395636 (= res!934886 (not e!790151))))

(declare-fun res!934887 () Bool)

(assert (=> b!1395636 (=> (not res!934887) (not e!790151))))

(assert (=> b!1395636 (= res!934887 (validKeyInArray!0 (select (arr!46058 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1395637 () Bool)

(declare-fun e!790153 () Bool)

(declare-fun call!66836 () Bool)

(assert (=> b!1395637 (= e!790153 call!66836)))

(declare-fun d!150699 () Bool)

(declare-fun res!934888 () Bool)

(assert (=> d!150699 (=> res!934888 e!790152)))

(assert (=> d!150699 (= res!934888 (bvsge #b00000000000000000000000000000000 (size!46609 a!2901)))))

(assert (=> d!150699 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32754) e!790152)))

(declare-fun bm!66833 () Bool)

(declare-fun c!129832 () Bool)

(assert (=> bm!66833 (= call!66836 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129832 (Cons!32753 (select (arr!46058 a!2901) #b00000000000000000000000000000000) Nil!32754) Nil!32754)))))

(declare-fun b!1395638 () Bool)

(assert (=> b!1395638 (= e!790150 e!790153)))

(assert (=> b!1395638 (= c!129832 (validKeyInArray!0 (select (arr!46058 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1395639 () Bool)

(assert (=> b!1395639 (= e!790153 call!66836)))

(assert (= (and d!150699 (not res!934888)) b!1395636))

(assert (= (and b!1395636 res!934887) b!1395635))

(assert (= (and b!1395636 res!934886) b!1395638))

(assert (= (and b!1395638 c!129832) b!1395637))

(assert (= (and b!1395638 (not c!129832)) b!1395639))

(assert (= (or b!1395637 b!1395639) bm!66833))

(assert (=> b!1395635 m!1282073))

(assert (=> b!1395635 m!1282073))

(declare-fun m!1282163 () Bool)

(assert (=> b!1395635 m!1282163))

(assert (=> b!1395636 m!1282073))

(assert (=> b!1395636 m!1282073))

(assert (=> b!1395636 m!1282075))

(assert (=> bm!66833 m!1282073))

(declare-fun m!1282165 () Bool)

(assert (=> bm!66833 m!1282165))

(assert (=> b!1395638 m!1282073))

(assert (=> b!1395638 m!1282073))

(assert (=> b!1395638 m!1282075))

(assert (=> b!1395441 d!150699))

(declare-fun d!150703 () Bool)

(assert (=> d!150703 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119862 d!150703))

(declare-fun d!150717 () Bool)

(assert (=> d!150717 (= (array_inv!35003 a!2901) (bvsge (size!46609 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119862 d!150717))

(declare-fun b!1395686 () Bool)

(declare-fun e!790186 () SeekEntryResult!10397)

(declare-fun e!790183 () SeekEntryResult!10397)

(assert (=> b!1395686 (= e!790186 e!790183)))

(declare-fun c!129851 () Bool)

(declare-fun lt!613073 () (_ BitVec 64))

(assert (=> b!1395686 (= c!129851 (or (= lt!613073 (select (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!613073 lt!613073) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1395687 () Bool)

(declare-fun e!790187 () Bool)

(declare-fun e!790185 () Bool)

(assert (=> b!1395687 (= e!790187 e!790185)))

(declare-fun res!934905 () Bool)

(declare-fun lt!613072 () SeekEntryResult!10397)

(assert (=> b!1395687 (= res!934905 (and ((_ is Intermediate!10397) lt!613072) (not (undefined!11209 lt!613072)) (bvslt (x!125626 lt!613072) #b01111111111111111111111111111110) (bvsge (x!125626 lt!613072) #b00000000000000000000000000000000) (bvsge (x!125626 lt!613072) #b00000000000000000000000000000000)))))

(assert (=> b!1395687 (=> (not res!934905) (not e!790185))))

(declare-fun b!1395688 () Bool)

(assert (=> b!1395688 (= e!790183 (Intermediate!10397 false lt!612953 #b00000000000000000000000000000000))))

(declare-fun b!1395689 () Bool)

(assert (=> b!1395689 (and (bvsge (index!43960 lt!613072) #b00000000000000000000000000000000) (bvslt (index!43960 lt!613072) (size!46609 (array!95412 (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46609 a!2901)))))))

(declare-fun e!790184 () Bool)

(assert (=> b!1395689 (= e!790184 (= (select (arr!46058 (array!95412 (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46609 a!2901))) (index!43960 lt!613072)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!150719 () Bool)

(assert (=> d!150719 e!790187))

(declare-fun c!129850 () Bool)

(assert (=> d!150719 (= c!129850 (and ((_ is Intermediate!10397) lt!613072) (undefined!11209 lt!613072)))))

(assert (=> d!150719 (= lt!613072 e!790186)))

(declare-fun c!129849 () Bool)

(assert (=> d!150719 (= c!129849 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150719 (= lt!613073 (select (arr!46058 (array!95412 (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46609 a!2901))) lt!612953))))

(assert (=> d!150719 (validMask!0 mask!2840)))

(assert (=> d!150719 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612953 (select (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95412 (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46609 a!2901)) mask!2840) lt!613072)))

(declare-fun b!1395690 () Bool)

(assert (=> b!1395690 (and (bvsge (index!43960 lt!613072) #b00000000000000000000000000000000) (bvslt (index!43960 lt!613072) (size!46609 (array!95412 (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46609 a!2901)))))))

(declare-fun res!934904 () Bool)

(assert (=> b!1395690 (= res!934904 (= (select (arr!46058 (array!95412 (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46609 a!2901))) (index!43960 lt!613072)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1395690 (=> res!934904 e!790184)))

(declare-fun b!1395691 () Bool)

(assert (=> b!1395691 (= e!790186 (Intermediate!10397 true lt!612953 #b00000000000000000000000000000000))))

(declare-fun b!1395692 () Bool)

(assert (=> b!1395692 (= e!790187 (bvsge (x!125626 lt!613072) #b01111111111111111111111111111110))))

(declare-fun b!1395693 () Bool)

(assert (=> b!1395693 (and (bvsge (index!43960 lt!613072) #b00000000000000000000000000000000) (bvslt (index!43960 lt!613072) (size!46609 (array!95412 (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46609 a!2901)))))))

(declare-fun res!934903 () Bool)

(assert (=> b!1395693 (= res!934903 (= (select (arr!46058 (array!95412 (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46609 a!2901))) (index!43960 lt!613072)) (select (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1395693 (=> res!934903 e!790184)))

(assert (=> b!1395693 (= e!790185 e!790184)))

(declare-fun b!1395694 () Bool)

(assert (=> b!1395694 (= e!790183 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!612953 #b00000000000000000000000000000000 mask!2840) (select (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95412 (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46609 a!2901)) mask!2840))))

(assert (= (and d!150719 c!129849) b!1395691))

(assert (= (and d!150719 (not c!129849)) b!1395686))

(assert (= (and b!1395686 c!129851) b!1395688))

(assert (= (and b!1395686 (not c!129851)) b!1395694))

(assert (= (and d!150719 c!129850) b!1395692))

(assert (= (and d!150719 (not c!129850)) b!1395687))

(assert (= (and b!1395687 res!934905) b!1395693))

(assert (= (and b!1395693 (not res!934903)) b!1395690))

(assert (= (and b!1395690 (not res!934904)) b!1395689))

(declare-fun m!1282201 () Bool)

(assert (=> b!1395689 m!1282201))

(assert (=> b!1395690 m!1282201))

(declare-fun m!1282203 () Bool)

(assert (=> d!150719 m!1282203))

(assert (=> d!150719 m!1282027))

(assert (=> b!1395693 m!1282201))

(declare-fun m!1282205 () Bool)

(assert (=> b!1395694 m!1282205))

(assert (=> b!1395694 m!1282205))

(assert (=> b!1395694 m!1282033))

(declare-fun m!1282207 () Bool)

(assert (=> b!1395694 m!1282207))

(assert (=> b!1395445 d!150719))

(declare-fun d!150725 () Bool)

(declare-fun lt!613075 () (_ BitVec 32))

(declare-fun lt!613074 () (_ BitVec 32))

(assert (=> d!150725 (= lt!613075 (bvmul (bvxor lt!613074 (bvlshr lt!613074 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150725 (= lt!613074 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150725 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!934862 (let ((h!33991 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125630 (bvmul (bvxor h!33991 (bvlshr h!33991 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125630 (bvlshr x!125630 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!934862 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!934862 #b00000000000000000000000000000000))))))

(assert (=> d!150725 (= (toIndex!0 (select (store (arr!46058 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!613075 (bvlshr lt!613075 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1395445 d!150725))

(declare-fun d!150727 () Bool)

(assert (=> d!150727 (= (validKeyInArray!0 (select (arr!46058 a!2901) j!112)) (and (not (= (select (arr!46058 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46058 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1395440 d!150727))

(check-sat (not bm!66822) (not b!1395481) (not bm!66833) (not d!150661) (not b!1395636) (not bm!66823) (not b!1395694) (not b!1395619) (not b!1395638) (not d!150659) (not b!1395485) (not d!150719) (not b!1395551) (not b!1395635) (not b!1395483) (not b!1395487) (not d!150677))
(check-sat)
