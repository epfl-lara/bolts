; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119860 () Bool)

(assert start!119860)

(declare-fun res!934770 () Bool)

(declare-fun e!790019 () Bool)

(assert (=> start!119860 (=> (not res!934770) (not e!790019))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119860 (= res!934770 (validMask!0 mask!2840))))

(assert (=> start!119860 e!790019))

(assert (=> start!119860 true))

(declare-datatypes ((array!95409 0))(
  ( (array!95410 (arr!46057 (Array (_ BitVec 32) (_ BitVec 64))) (size!46608 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95409)

(declare-fun array_inv!35002 (array!95409) Bool)

(assert (=> start!119860 (array_inv!35002 a!2901)))

(declare-fun b!1395410 () Bool)

(declare-fun res!934763 () Bool)

(assert (=> b!1395410 (=> (not res!934763) (not e!790019))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395410 (= res!934763 (validKeyInArray!0 (select (arr!46057 a!2901) i!1037)))))

(declare-fun b!1395411 () Bool)

(declare-fun e!790017 () Bool)

(declare-fun lt!612944 () (_ BitVec 32))

(assert (=> b!1395411 (= e!790017 (or (bvslt mask!2840 #b00000000000000000000000000000000) (and (bvsge lt!612944 #b00000000000000000000000000000000) (bvslt lt!612944 (bvadd #b00000000000000000000000000000001 mask!2840)))))))

(declare-fun b!1395412 () Bool)

(declare-fun res!934769 () Bool)

(assert (=> b!1395412 (=> (not res!934769) (not e!790019))))

(declare-datatypes ((List!32756 0))(
  ( (Nil!32753) (Cons!32752 (h!33988 (_ BitVec 64)) (t!47457 List!32756)) )
))
(declare-fun arrayNoDuplicates!0 (array!95409 (_ BitVec 32) List!32756) Bool)

(assert (=> b!1395412 (= res!934769 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32753))))

(declare-fun b!1395413 () Bool)

(declare-fun e!790018 () Bool)

(assert (=> b!1395413 (= e!790018 e!790017)))

(declare-fun res!934764 () Bool)

(assert (=> b!1395413 (=> res!934764 e!790017)))

(declare-datatypes ((SeekEntryResult!10396 0))(
  ( (MissingZero!10396 (index!43954 (_ BitVec 32))) (Found!10396 (index!43955 (_ BitVec 32))) (Intermediate!10396 (undefined!11208 Bool) (index!43956 (_ BitVec 32)) (x!125625 (_ BitVec 32))) (Undefined!10396) (MissingVacant!10396 (index!43957 (_ BitVec 32))) )
))
(declare-fun lt!612946 () SeekEntryResult!10396)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95409 (_ BitVec 32)) SeekEntryResult!10396)

(assert (=> b!1395413 (= res!934764 (= lt!612946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612944 (select (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95410 (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46608 a!2901)) mask!2840)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395413 (= lt!612944 (toIndex!0 (select (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1395414 () Bool)

(declare-fun res!934766 () Bool)

(assert (=> b!1395414 (=> (not res!934766) (not e!790019))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95409 (_ BitVec 32)) Bool)

(assert (=> b!1395414 (= res!934766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395415 () Bool)

(declare-fun res!934762 () Bool)

(assert (=> b!1395415 (=> (not res!934762) (not e!790019))))

(assert (=> b!1395415 (= res!934762 (validKeyInArray!0 (select (arr!46057 a!2901) j!112)))))

(declare-fun b!1395416 () Bool)

(assert (=> b!1395416 (= e!790019 (not e!790018))))

(declare-fun res!934765 () Bool)

(assert (=> b!1395416 (=> res!934765 e!790018)))

(assert (=> b!1395416 (= res!934765 (or (not (is-Intermediate!10396 lt!612946)) (undefined!11208 lt!612946)))))

(declare-fun e!790015 () Bool)

(assert (=> b!1395416 e!790015))

(declare-fun res!934768 () Bool)

(assert (=> b!1395416 (=> (not res!934768) (not e!790015))))

(assert (=> b!1395416 (= res!934768 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46746 0))(
  ( (Unit!46747) )
))
(declare-fun lt!612945 () Unit!46746)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95409 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46746)

(assert (=> b!1395416 (= lt!612945 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395416 (= lt!612946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46057 a!2901) j!112) mask!2840) (select (arr!46057 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395417 () Bool)

(declare-fun res!934767 () Bool)

(assert (=> b!1395417 (=> (not res!934767) (not e!790019))))

(assert (=> b!1395417 (= res!934767 (and (= (size!46608 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46608 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46608 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1395418 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95409 (_ BitVec 32)) SeekEntryResult!10396)

(assert (=> b!1395418 (= e!790015 (= (seekEntryOrOpen!0 (select (arr!46057 a!2901) j!112) a!2901 mask!2840) (Found!10396 j!112)))))

(assert (= (and start!119860 res!934770) b!1395417))

(assert (= (and b!1395417 res!934767) b!1395410))

(assert (= (and b!1395410 res!934763) b!1395415))

(assert (= (and b!1395415 res!934762) b!1395414))

(assert (= (and b!1395414 res!934766) b!1395412))

(assert (= (and b!1395412 res!934769) b!1395416))

(assert (= (and b!1395416 res!934768) b!1395418))

(assert (= (and b!1395416 (not res!934765)) b!1395413))

(assert (= (and b!1395413 (not res!934764)) b!1395411))

(declare-fun m!1281971 () Bool)

(assert (=> b!1395418 m!1281971))

(assert (=> b!1395418 m!1281971))

(declare-fun m!1281973 () Bool)

(assert (=> b!1395418 m!1281973))

(declare-fun m!1281975 () Bool)

(assert (=> b!1395412 m!1281975))

(assert (=> b!1395415 m!1281971))

(assert (=> b!1395415 m!1281971))

(declare-fun m!1281977 () Bool)

(assert (=> b!1395415 m!1281977))

(declare-fun m!1281979 () Bool)

(assert (=> b!1395414 m!1281979))

(assert (=> b!1395416 m!1281971))

(declare-fun m!1281981 () Bool)

(assert (=> b!1395416 m!1281981))

(assert (=> b!1395416 m!1281971))

(declare-fun m!1281983 () Bool)

(assert (=> b!1395416 m!1281983))

(assert (=> b!1395416 m!1281981))

(assert (=> b!1395416 m!1281971))

(declare-fun m!1281985 () Bool)

(assert (=> b!1395416 m!1281985))

(declare-fun m!1281987 () Bool)

(assert (=> b!1395416 m!1281987))

(declare-fun m!1281989 () Bool)

(assert (=> b!1395410 m!1281989))

(assert (=> b!1395410 m!1281989))

(declare-fun m!1281991 () Bool)

(assert (=> b!1395410 m!1281991))

(declare-fun m!1281993 () Bool)

(assert (=> start!119860 m!1281993))

(declare-fun m!1281995 () Bool)

(assert (=> start!119860 m!1281995))

(declare-fun m!1281997 () Bool)

(assert (=> b!1395413 m!1281997))

(declare-fun m!1281999 () Bool)

(assert (=> b!1395413 m!1281999))

(assert (=> b!1395413 m!1281999))

(declare-fun m!1282001 () Bool)

(assert (=> b!1395413 m!1282001))

(assert (=> b!1395413 m!1281999))

(declare-fun m!1282003 () Bool)

(assert (=> b!1395413 m!1282003))

(push 1)

(assert (not b!1395412))

(assert (not b!1395416))

(assert (not b!1395410))

(assert (not b!1395418))

(assert (not b!1395414))

(assert (not b!1395415))

(assert (not start!119860))

(assert (not b!1395413))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!150667 () Bool)

(declare-fun res!934846 () Bool)

(declare-fun e!790081 () Bool)

(assert (=> d!150667 (=> res!934846 e!790081)))

(assert (=> d!150667 (= res!934846 (bvsge j!112 (size!46608 a!2901)))))

(assert (=> d!150667 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!790081)))

(declare-fun bm!66830 () Bool)

(declare-fun call!66833 () Bool)

(assert (=> bm!66830 (= call!66833 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1395513 () Bool)

(declare-fun e!790082 () Bool)

(assert (=> b!1395513 (= e!790081 e!790082)))

(declare-fun c!129790 () Bool)

(assert (=> b!1395513 (= c!129790 (validKeyInArray!0 (select (arr!46057 a!2901) j!112)))))

(declare-fun b!1395514 () Bool)

(declare-fun e!790080 () Bool)

(assert (=> b!1395514 (= e!790082 e!790080)))

(declare-fun lt!613001 () (_ BitVec 64))

(assert (=> b!1395514 (= lt!613001 (select (arr!46057 a!2901) j!112))))

(declare-fun lt!613003 () Unit!46746)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95409 (_ BitVec 64) (_ BitVec 32)) Unit!46746)

(assert (=> b!1395514 (= lt!613003 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!613001 j!112))))

(declare-fun arrayContainsKey!0 (array!95409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1395514 (arrayContainsKey!0 a!2901 lt!613001 #b00000000000000000000000000000000)))

(declare-fun lt!613002 () Unit!46746)

(assert (=> b!1395514 (= lt!613002 lt!613003)))

(declare-fun res!934845 () Bool)

(assert (=> b!1395514 (= res!934845 (= (seekEntryOrOpen!0 (select (arr!46057 a!2901) j!112) a!2901 mask!2840) (Found!10396 j!112)))))

(assert (=> b!1395514 (=> (not res!934845) (not e!790080))))

(declare-fun b!1395515 () Bool)

(assert (=> b!1395515 (= e!790082 call!66833)))

(declare-fun b!1395516 () Bool)

(assert (=> b!1395516 (= e!790080 call!66833)))

(assert (= (and d!150667 (not res!934846)) b!1395513))

(assert (= (and b!1395513 c!129790) b!1395514))

(assert (= (and b!1395513 (not c!129790)) b!1395515))

(assert (= (and b!1395514 res!934845) b!1395516))

(assert (= (or b!1395516 b!1395515) bm!66830))

(declare-fun m!1282113 () Bool)

(assert (=> bm!66830 m!1282113))

(assert (=> b!1395513 m!1281971))

(assert (=> b!1395513 m!1281971))

(assert (=> b!1395513 m!1281977))

(assert (=> b!1395514 m!1281971))

(declare-fun m!1282115 () Bool)

(assert (=> b!1395514 m!1282115))

(declare-fun m!1282117 () Bool)

(assert (=> b!1395514 m!1282117))

(assert (=> b!1395514 m!1281971))

(assert (=> b!1395514 m!1281973))

(assert (=> b!1395416 d!150667))

(declare-fun d!150671 () Bool)

(assert (=> d!150671 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!613010 () Unit!46746)

(declare-fun choose!38 (array!95409 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46746)

(assert (=> d!150671 (= lt!613010 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150671 (validMask!0 mask!2840)))

(assert (=> d!150671 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!613010)))

(declare-fun bs!40612 () Bool)

(assert (= bs!40612 d!150671))

(assert (=> bs!40612 m!1281987))

(declare-fun m!1282119 () Bool)

(assert (=> bs!40612 m!1282119))

(assert (=> bs!40612 m!1281993))

(assert (=> b!1395416 d!150671))

(declare-fun b!1395598 () Bool)

(declare-fun e!790131 () Bool)

(declare-fun lt!613039 () SeekEntryResult!10396)

(assert (=> b!1395598 (= e!790131 (bvsge (x!125625 lt!613039) #b01111111111111111111111111111110))))

(declare-fun b!1395599 () Bool)

(declare-fun e!790128 () Bool)

(assert (=> b!1395599 (= e!790131 e!790128)))

(declare-fun res!934877 () Bool)

(assert (=> b!1395599 (= res!934877 (and (is-Intermediate!10396 lt!613039) (not (undefined!11208 lt!613039)) (bvslt (x!125625 lt!613039) #b01111111111111111111111111111110) (bvsge (x!125625 lt!613039) #b00000000000000000000000000000000) (bvsge (x!125625 lt!613039) #b00000000000000000000000000000000)))))

(assert (=> b!1395599 (=> (not res!934877) (not e!790128))))

(declare-fun d!150673 () Bool)

(assert (=> d!150673 e!790131))

(declare-fun c!129819 () Bool)

(assert (=> d!150673 (= c!129819 (and (is-Intermediate!10396 lt!613039) (undefined!11208 lt!613039)))))

(declare-fun e!790132 () SeekEntryResult!10396)

(assert (=> d!150673 (= lt!613039 e!790132)))

(declare-fun c!129818 () Bool)

(assert (=> d!150673 (= c!129818 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!613040 () (_ BitVec 64))

(assert (=> d!150673 (= lt!613040 (select (arr!46057 a!2901) (toIndex!0 (select (arr!46057 a!2901) j!112) mask!2840)))))

(assert (=> d!150673 (validMask!0 mask!2840)))

(assert (=> d!150673 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46057 a!2901) j!112) mask!2840) (select (arr!46057 a!2901) j!112) a!2901 mask!2840) lt!613039)))

(declare-fun b!1395600 () Bool)

(assert (=> b!1395600 (and (bvsge (index!43956 lt!613039) #b00000000000000000000000000000000) (bvslt (index!43956 lt!613039) (size!46608 a!2901)))))

(declare-fun res!934878 () Bool)

(assert (=> b!1395600 (= res!934878 (= (select (arr!46057 a!2901) (index!43956 lt!613039)) (select (arr!46057 a!2901) j!112)))))

(declare-fun e!790130 () Bool)

(assert (=> b!1395600 (=> res!934878 e!790130)))

(assert (=> b!1395600 (= e!790128 e!790130)))

(declare-fun b!1395601 () Bool)

(assert (=> b!1395601 (and (bvsge (index!43956 lt!613039) #b00000000000000000000000000000000) (bvslt (index!43956 lt!613039) (size!46608 a!2901)))))

(declare-fun res!934876 () Bool)

(assert (=> b!1395601 (= res!934876 (= (select (arr!46057 a!2901) (index!43956 lt!613039)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1395601 (=> res!934876 e!790130)))

(declare-fun b!1395602 () Bool)

(assert (=> b!1395602 (= e!790132 (Intermediate!10396 true (toIndex!0 (select (arr!46057 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395603 () Bool)

(declare-fun e!790129 () SeekEntryResult!10396)

(assert (=> b!1395603 (= e!790129 (Intermediate!10396 false (toIndex!0 (select (arr!46057 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395604 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395604 (= e!790129 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46057 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46057 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395605 () Bool)

(assert (=> b!1395605 (and (bvsge (index!43956 lt!613039) #b00000000000000000000000000000000) (bvslt (index!43956 lt!613039) (size!46608 a!2901)))))

(assert (=> b!1395605 (= e!790130 (= (select (arr!46057 a!2901) (index!43956 lt!613039)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1395606 () Bool)

(assert (=> b!1395606 (= e!790132 e!790129)))

(declare-fun c!129820 () Bool)

(assert (=> b!1395606 (= c!129820 (or (= lt!613040 (select (arr!46057 a!2901) j!112)) (= (bvadd lt!613040 lt!613040) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!150673 c!129818) b!1395602))

(assert (= (and d!150673 (not c!129818)) b!1395606))

(assert (= (and b!1395606 c!129820) b!1395603))

(assert (= (and b!1395606 (not c!129820)) b!1395604))

(assert (= (and d!150673 c!129819) b!1395598))

(assert (= (and d!150673 (not c!129819)) b!1395599))

(assert (= (and b!1395599 res!934877) b!1395600))

(assert (= (and b!1395600 (not res!934878)) b!1395601))

(assert (= (and b!1395601 (not res!934876)) b!1395605))

(declare-fun m!1282145 () Bool)

(assert (=> b!1395601 m!1282145))

(assert (=> b!1395605 m!1282145))

(assert (=> b!1395600 m!1282145))

(assert (=> d!150673 m!1281981))

(declare-fun m!1282147 () Bool)

(assert (=> d!150673 m!1282147))

(assert (=> d!150673 m!1281993))

(assert (=> b!1395604 m!1281981))

(declare-fun m!1282149 () Bool)

(assert (=> b!1395604 m!1282149))

(assert (=> b!1395604 m!1282149))

(assert (=> b!1395604 m!1281971))

(declare-fun m!1282151 () Bool)

(assert (=> b!1395604 m!1282151))

(assert (=> b!1395416 d!150673))

(declare-fun d!150687 () Bool)

(declare-fun lt!613052 () (_ BitVec 32))

(declare-fun lt!613051 () (_ BitVec 32))

(assert (=> d!150687 (= lt!613052 (bvmul (bvxor lt!613051 (bvlshr lt!613051 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150687 (= lt!613051 ((_ extract 31 0) (bvand (bvxor (select (arr!46057 a!2901) j!112) (bvlshr (select (arr!46057 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150687 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!934879 (let ((h!33993 ((_ extract 31 0) (bvand (bvxor (select (arr!46057 a!2901) j!112) (bvlshr (select (arr!46057 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125633 (bvmul (bvxor h!33993 (bvlshr h!33993 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125633 (bvlshr x!125633 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!934879 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!934879 #b00000000000000000000000000000000))))))

(assert (=> d!150687 (= (toIndex!0 (select (arr!46057 a!2901) j!112) mask!2840) (bvand (bvxor lt!613052 (bvlshr lt!613052 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1395416 d!150687))

(declare-fun d!150693 () Bool)

(assert (=> d!150693 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119860 d!150693))

(declare-fun d!150701 () Bool)

(assert (=> d!150701 (= (array_inv!35002 a!2901) (bvsge (size!46608 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119860 d!150701))

(declare-fun d!150705 () Bool)

(assert (=> d!150705 (= (validKeyInArray!0 (select (arr!46057 a!2901) i!1037)) (and (not (= (select (arr!46057 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46057 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1395410 d!150705))

(declare-fun d!150707 () Bool)

(assert (=> d!150707 (= (validKeyInArray!0 (select (arr!46057 a!2901) j!112)) (and (not (= (select (arr!46057 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46057 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1395415 d!150707))

(declare-fun b!1395640 () Bool)

(declare-fun e!790157 () Bool)

(declare-fun lt!613056 () SeekEntryResult!10396)

(assert (=> b!1395640 (= e!790157 (bvsge (x!125625 lt!613056) #b01111111111111111111111111111110))))

(declare-fun b!1395641 () Bool)

(declare-fun e!790154 () Bool)

(assert (=> b!1395641 (= e!790157 e!790154)))

(declare-fun res!934890 () Bool)

(assert (=> b!1395641 (= res!934890 (and (is-Intermediate!10396 lt!613056) (not (undefined!11208 lt!613056)) (bvslt (x!125625 lt!613056) #b01111111111111111111111111111110) (bvsge (x!125625 lt!613056) #b00000000000000000000000000000000) (bvsge (x!125625 lt!613056) #b00000000000000000000000000000000)))))

(assert (=> b!1395641 (=> (not res!934890) (not e!790154))))

(declare-fun d!150709 () Bool)

(assert (=> d!150709 e!790157))

(declare-fun c!129834 () Bool)

(assert (=> d!150709 (= c!129834 (and (is-Intermediate!10396 lt!613056) (undefined!11208 lt!613056)))))

(declare-fun e!790158 () SeekEntryResult!10396)

(assert (=> d!150709 (= lt!613056 e!790158)))

(declare-fun c!129833 () Bool)

(assert (=> d!150709 (= c!129833 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!613057 () (_ BitVec 64))

(assert (=> d!150709 (= lt!613057 (select (arr!46057 (array!95410 (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46608 a!2901))) lt!612944))))

(assert (=> d!150709 (validMask!0 mask!2840)))

(assert (=> d!150709 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612944 (select (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95410 (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46608 a!2901)) mask!2840) lt!613056)))

(declare-fun b!1395642 () Bool)

(assert (=> b!1395642 (and (bvsge (index!43956 lt!613056) #b00000000000000000000000000000000) (bvslt (index!43956 lt!613056) (size!46608 (array!95410 (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46608 a!2901)))))))

(declare-fun res!934891 () Bool)

(assert (=> b!1395642 (= res!934891 (= (select (arr!46057 (array!95410 (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46608 a!2901))) (index!43956 lt!613056)) (select (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun e!790156 () Bool)

(assert (=> b!1395642 (=> res!934891 e!790156)))

(assert (=> b!1395642 (= e!790154 e!790156)))

(declare-fun b!1395643 () Bool)

(assert (=> b!1395643 (and (bvsge (index!43956 lt!613056) #b00000000000000000000000000000000) (bvslt (index!43956 lt!613056) (size!46608 (array!95410 (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46608 a!2901)))))))

(declare-fun res!934889 () Bool)

(assert (=> b!1395643 (= res!934889 (= (select (arr!46057 (array!95410 (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46608 a!2901))) (index!43956 lt!613056)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1395643 (=> res!934889 e!790156)))

(declare-fun b!1395644 () Bool)

(assert (=> b!1395644 (= e!790158 (Intermediate!10396 true lt!612944 #b00000000000000000000000000000000))))

(declare-fun b!1395645 () Bool)

(declare-fun e!790155 () SeekEntryResult!10396)

(assert (=> b!1395645 (= e!790155 (Intermediate!10396 false lt!612944 #b00000000000000000000000000000000))))

(declare-fun b!1395646 () Bool)

(assert (=> b!1395646 (= e!790155 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!612944 #b00000000000000000000000000000000 mask!2840) (select (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95410 (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46608 a!2901)) mask!2840))))

(declare-fun b!1395647 () Bool)

(assert (=> b!1395647 (and (bvsge (index!43956 lt!613056) #b00000000000000000000000000000000) (bvslt (index!43956 lt!613056) (size!46608 (array!95410 (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46608 a!2901)))))))

(assert (=> b!1395647 (= e!790156 (= (select (arr!46057 (array!95410 (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46608 a!2901))) (index!43956 lt!613056)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1395648 () Bool)

(assert (=> b!1395648 (= e!790158 e!790155)))

(declare-fun c!129835 () Bool)

(assert (=> b!1395648 (= c!129835 (or (= lt!613057 (select (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!613057 lt!613057) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!150709 c!129833) b!1395644))

(assert (= (and d!150709 (not c!129833)) b!1395648))

(assert (= (and b!1395648 c!129835) b!1395645))

(assert (= (and b!1395648 (not c!129835)) b!1395646))

(assert (= (and d!150709 c!129834) b!1395640))

(assert (= (and d!150709 (not c!129834)) b!1395641))

(assert (= (and b!1395641 res!934890) b!1395642))

(assert (= (and b!1395642 (not res!934891)) b!1395643))

(assert (= (and b!1395643 (not res!934889)) b!1395647))

(declare-fun m!1282167 () Bool)

(assert (=> b!1395643 m!1282167))

(assert (=> b!1395647 m!1282167))

(assert (=> b!1395642 m!1282167))

(declare-fun m!1282169 () Bool)

(assert (=> d!150709 m!1282169))

(assert (=> d!150709 m!1281993))

(declare-fun m!1282171 () Bool)

(assert (=> b!1395646 m!1282171))

(assert (=> b!1395646 m!1282171))

(assert (=> b!1395646 m!1281999))

(declare-fun m!1282173 () Bool)

(assert (=> b!1395646 m!1282173))

(assert (=> b!1395413 d!150709))

(declare-fun d!150711 () Bool)

(declare-fun lt!613059 () (_ BitVec 32))

(declare-fun lt!613058 () (_ BitVec 32))

(assert (=> d!150711 (= lt!613059 (bvmul (bvxor lt!613058 (bvlshr lt!613058 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150711 (= lt!613058 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150711 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!934879 (let ((h!33993 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125633 (bvmul (bvxor h!33993 (bvlshr h!33993 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125633 (bvlshr x!125633 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!934879 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!934879 #b00000000000000000000000000000000))))))

(assert (=> d!150711 (= (toIndex!0 (select (store (arr!46057 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!613059 (bvlshr lt!613059 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1395413 d!150711))

(declare-fun d!150713 () Bool)

(declare-fun res!934893 () Bool)

(declare-fun e!790160 () Bool)

(assert (=> d!150713 (=> res!934893 e!790160)))

(assert (=> d!150713 (= res!934893 (bvsge #b00000000000000000000000000000000 (size!46608 a!2901)))))

(assert (=> d!150713 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!790160)))

(declare-fun bm!66834 () Bool)

(declare-fun call!66837 () Bool)

(assert (=> bm!66834 (= call!66837 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1395649 () Bool)

(declare-fun e!790161 () Bool)

(assert (=> b!1395649 (= e!790160 e!790161)))

(declare-fun c!129836 () Bool)

(assert (=> b!1395649 (= c!129836 (validKeyInArray!0 (select (arr!46057 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1395650 () Bool)

(declare-fun e!790159 () Bool)

(assert (=> b!1395650 (= e!790161 e!790159)))

(declare-fun lt!613060 () (_ BitVec 64))

(assert (=> b!1395650 (= lt!613060 (select (arr!46057 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!613062 () Unit!46746)

(assert (=> b!1395650 (= lt!613062 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!613060 #b00000000000000000000000000000000))))

(assert (=> b!1395650 (arrayContainsKey!0 a!2901 lt!613060 #b00000000000000000000000000000000)))

(declare-fun lt!613061 () Unit!46746)

(assert (=> b!1395650 (= lt!613061 lt!613062)))

(declare-fun res!934892 () Bool)

(assert (=> b!1395650 (= res!934892 (= (seekEntryOrOpen!0 (select (arr!46057 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10396 #b00000000000000000000000000000000)))))

(assert (=> b!1395650 (=> (not res!934892) (not e!790159))))

(declare-fun b!1395651 () Bool)

(assert (=> b!1395651 (= e!790161 call!66837)))

(declare-fun b!1395652 () Bool)

(assert (=> b!1395652 (= e!790159 call!66837)))

(assert (= (and d!150713 (not res!934893)) b!1395649))

(assert (= (and b!1395649 c!129836) b!1395650))

(assert (= (and b!1395649 (not c!129836)) b!1395651))

(assert (= (and b!1395650 res!934892) b!1395652))

(assert (= (or b!1395652 b!1395651) bm!66834))

(declare-fun m!1282175 () Bool)

(assert (=> bm!66834 m!1282175))

(declare-fun m!1282177 () Bool)

(assert (=> b!1395649 m!1282177))

(assert (=> b!1395649 m!1282177))

(declare-fun m!1282179 () Bool)

(assert (=> b!1395649 m!1282179))

(assert (=> b!1395650 m!1282177))

(declare-fun m!1282181 () Bool)

(assert (=> b!1395650 m!1282181))

(declare-fun m!1282183 () Bool)

(assert (=> b!1395650 m!1282183))

(assert (=> b!1395650 m!1282177))

(declare-fun m!1282185 () Bool)

(assert (=> b!1395650 m!1282185))

(assert (=> b!1395414 d!150713))

(declare-fun b!1395681 () Bool)

(declare-fun e!790182 () Bool)

(declare-fun e!790179 () Bool)

(assert (=> b!1395681 (= e!790182 e!790179)))

(declare-fun c!129848 () Bool)

(assert (=> b!1395681 (= c!129848 (validKeyInArray!0 (select (arr!46057 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1395682 () Bool)

(declare-fun call!66840 () Bool)

(assert (=> b!1395682 (= e!790179 call!66840)))

(declare-fun d!150715 () Bool)

(declare-fun res!934902 () Bool)

(declare-fun e!790181 () Bool)

(assert (=> d!150715 (=> res!934902 e!790181)))

(assert (=> d!150715 (= res!934902 (bvsge #b00000000000000000000000000000000 (size!46608 a!2901)))))

(assert (=> d!150715 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32753) e!790181)))

(declare-fun b!1395683 () Bool)

(declare-fun e!790180 () Bool)

(declare-fun contains!9791 (List!32756 (_ BitVec 64)) Bool)

(assert (=> b!1395683 (= e!790180 (contains!9791 Nil!32753 (select (arr!46057 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66837 () Bool)

(assert (=> bm!66837 (= call!66840 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129848 (Cons!32752 (select (arr!46057 a!2901) #b00000000000000000000000000000000) Nil!32753) Nil!32753)))))

(declare-fun b!1395684 () Bool)

(assert (=> b!1395684 (= e!790179 call!66840)))

(declare-fun b!1395685 () Bool)

(assert (=> b!1395685 (= e!790181 e!790182)))

(declare-fun res!934901 () Bool)

(assert (=> b!1395685 (=> (not res!934901) (not e!790182))))

(assert (=> b!1395685 (= res!934901 (not e!790180))))

(declare-fun res!934900 () Bool)

(assert (=> b!1395685 (=> (not res!934900) (not e!790180))))

(assert (=> b!1395685 (= res!934900 (validKeyInArray!0 (select (arr!46057 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150715 (not res!934902)) b!1395685))

(assert (= (and b!1395685 res!934900) b!1395683))

(assert (= (and b!1395685 res!934901) b!1395681))

(assert (= (and b!1395681 c!129848) b!1395682))

(assert (= (and b!1395681 (not c!129848)) b!1395684))

(assert (= (or b!1395682 b!1395684) bm!66837))

(assert (=> b!1395681 m!1282177))

(assert (=> b!1395681 m!1282177))

(assert (=> b!1395681 m!1282179))

(assert (=> b!1395683 m!1282177))

(assert (=> b!1395683 m!1282177))

(declare-fun m!1282195 () Bool)

(assert (=> b!1395683 m!1282195))

(assert (=> bm!66837 m!1282177))

(declare-fun m!1282199 () Bool)

(assert (=> bm!66837 m!1282199))

(assert (=> b!1395685 m!1282177))

(assert (=> b!1395685 m!1282177))

(assert (=> b!1395685 m!1282179))

(assert (=> b!1395412 d!150715))

(declare-fun d!150723 () Bool)

(declare-fun lt!613083 () SeekEntryResult!10396)

(assert (=> d!150723 (and (or (is-Undefined!10396 lt!613083) (not (is-Found!10396 lt!613083)) (and (bvsge (index!43955 lt!613083) #b00000000000000000000000000000000) (bvslt (index!43955 lt!613083) (size!46608 a!2901)))) (or (is-Undefined!10396 lt!613083) (is-Found!10396 lt!613083) (not (is-MissingZero!10396 lt!613083)) (and (bvsge (index!43954 lt!613083) #b00000000000000000000000000000000) (bvslt (index!43954 lt!613083) (size!46608 a!2901)))) (or (is-Undefined!10396 lt!613083) (is-Found!10396 lt!613083) (is-MissingZero!10396 lt!613083) (not (is-MissingVacant!10396 lt!613083)) (and (bvsge (index!43957 lt!613083) #b00000000000000000000000000000000) (bvslt (index!43957 lt!613083) (size!46608 a!2901)))) (or (is-Undefined!10396 lt!613083) (ite (is-Found!10396 lt!613083) (= (select (arr!46057 a!2901) (index!43955 lt!613083)) (select (arr!46057 a!2901) j!112)) (ite (is-MissingZero!10396 lt!613083) (= (select (arr!46057 a!2901) (index!43954 lt!613083)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10396 lt!613083) (= (select (arr!46057 a!2901) (index!43957 lt!613083)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!790208 () SeekEntryResult!10396)

(assert (=> d!150723 (= lt!613083 e!790208)))

(declare-fun c!129862 () Bool)

(declare-fun lt!613082 () SeekEntryResult!10396)

(assert (=> d!150723 (= c!129862 (and (is-Intermediate!10396 lt!613082) (undefined!11208 lt!613082)))))

(assert (=> d!150723 (= lt!613082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46057 a!2901) j!112) mask!2840) (select (arr!46057 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150723 (validMask!0 mask!2840)))

(assert (=> d!150723 (= (seekEntryOrOpen!0 (select (arr!46057 a!2901) j!112) a!2901 mask!2840) lt!613083)))

(declare-fun b!1395722 () Bool)

(declare-fun e!790207 () SeekEntryResult!10396)

(assert (=> b!1395722 (= e!790208 e!790207)))

(declare-fun lt!613084 () (_ BitVec 64))

(assert (=> b!1395722 (= lt!613084 (select (arr!46057 a!2901) (index!43956 lt!613082)))))

(declare-fun c!129863 () Bool)

(assert (=> b!1395722 (= c!129863 (= lt!613084 (select (arr!46057 a!2901) j!112)))))

(declare-fun b!1395723 () Bool)

(declare-fun c!129861 () Bool)

(assert (=> b!1395723 (= c!129861 (= lt!613084 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!790206 () SeekEntryResult!10396)

(assert (=> b!1395723 (= e!790207 e!790206)))

(declare-fun b!1395724 () Bool)

(assert (=> b!1395724 (= e!790208 Undefined!10396)))

(declare-fun b!1395725 () Bool)

(assert (=> b!1395725 (= e!790206 (MissingZero!10396 (index!43956 lt!613082)))))

(declare-fun b!1395726 () Bool)

(assert (=> b!1395726 (= e!790207 (Found!10396 (index!43956 lt!613082)))))

(declare-fun b!1395727 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95409 (_ BitVec 32)) SeekEntryResult!10396)

(assert (=> b!1395727 (= e!790206 (seekKeyOrZeroReturnVacant!0 (x!125625 lt!613082) (index!43956 lt!613082) (index!43956 lt!613082) (select (arr!46057 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!150723 c!129862) b!1395724))

(assert (= (and d!150723 (not c!129862)) b!1395722))

(assert (= (and b!1395722 c!129863) b!1395726))

(assert (= (and b!1395722 (not c!129863)) b!1395723))

(assert (= (and b!1395723 c!129861) b!1395725))

(assert (= (and b!1395723 (not c!129861)) b!1395727))

(assert (=> d!150723 m!1281971))

(assert (=> d!150723 m!1281981))

(declare-fun m!1282213 () Bool)

(assert (=> d!150723 m!1282213))

(declare-fun m!1282215 () Bool)

(assert (=> d!150723 m!1282215))

(assert (=> d!150723 m!1281993))

(declare-fun m!1282217 () Bool)

(assert (=> d!150723 m!1282217))

(assert (=> d!150723 m!1281981))

(assert (=> d!150723 m!1281971))

(assert (=> d!150723 m!1281985))

(declare-fun m!1282219 () Bool)

(assert (=> b!1395722 m!1282219))

(assert (=> b!1395727 m!1281971))

(declare-fun m!1282221 () Bool)

(assert (=> b!1395727 m!1282221))

(assert (=> b!1395418 d!150723))

(push 1)

(assert (not b!1395646))

(assert (not bm!66834))

(assert (not b!1395727))

(assert (not b!1395604))

(assert (not b!1395650))

(assert (not b!1395681))

(assert (not d!150723))

(assert (not b!1395683))

(assert (not b!1395649))

(assert (not bm!66830))

(assert (not b!1395685))

(assert (not b!1395513))

(assert (not d!150709))

(assert (not bm!66837))

(assert (not d!150671))

(assert (not b!1395514))

(assert (not d!150673))

(check-sat)

(pop 1)

(push 1)

(check-sat)

