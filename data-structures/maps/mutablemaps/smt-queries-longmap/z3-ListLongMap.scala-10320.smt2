; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121338 () Bool)

(assert start!121338)

(declare-fun b!1409943 () Bool)

(declare-fun res!947612 () Bool)

(declare-fun e!797903 () Bool)

(assert (=> b!1409943 (=> (not res!947612) (not e!797903))))

(declare-datatypes ((array!96359 0))(
  ( (array!96360 (arr!46517 (Array (_ BitVec 32) (_ BitVec 64))) (size!47068 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96359)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96359 (_ BitVec 32)) Bool)

(assert (=> b!1409943 (= res!947612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409944 () Bool)

(declare-fun res!947611 () Bool)

(assert (=> b!1409944 (=> (not res!947611) (not e!797903))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409944 (= res!947611 (validKeyInArray!0 (select (arr!46517 a!2901) i!1037)))))

(declare-fun b!1409945 () Bool)

(declare-fun res!947613 () Bool)

(assert (=> b!1409945 (=> (not res!947613) (not e!797903))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1409945 (= res!947613 (validKeyInArray!0 (select (arr!46517 a!2901) j!112)))))

(declare-fun b!1409946 () Bool)

(declare-fun e!797904 () Bool)

(assert (=> b!1409946 (= e!797903 (not e!797904))))

(declare-fun res!947615 () Bool)

(assert (=> b!1409946 (=> res!947615 e!797904)))

(declare-datatypes ((SeekEntryResult!10850 0))(
  ( (MissingZero!10850 (index!45776 (_ BitVec 32))) (Found!10850 (index!45777 (_ BitVec 32))) (Intermediate!10850 (undefined!11662 Bool) (index!45778 (_ BitVec 32)) (x!127372 (_ BitVec 32))) (Undefined!10850) (MissingVacant!10850 (index!45779 (_ BitVec 32))) )
))
(declare-fun lt!620911 () SeekEntryResult!10850)

(get-info :version)

(assert (=> b!1409946 (= res!947615 (or (not ((_ is Intermediate!10850) lt!620911)) (undefined!11662 lt!620911)))))

(declare-fun e!797906 () Bool)

(assert (=> b!1409946 e!797906))

(declare-fun res!947616 () Bool)

(assert (=> b!1409946 (=> (not res!947616) (not e!797906))))

(assert (=> b!1409946 (= res!947616 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47624 0))(
  ( (Unit!47625) )
))
(declare-fun lt!620913 () Unit!47624)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96359 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47624)

(assert (=> b!1409946 (= lt!620913 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!620914 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96359 (_ BitVec 32)) SeekEntryResult!10850)

(assert (=> b!1409946 (= lt!620911 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620914 (select (arr!46517 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409946 (= lt!620914 (toIndex!0 (select (arr!46517 a!2901) j!112) mask!2840))))

(declare-fun b!1409947 () Bool)

(declare-fun res!947610 () Bool)

(assert (=> b!1409947 (=> (not res!947610) (not e!797903))))

(declare-datatypes ((List!33216 0))(
  ( (Nil!33213) (Cons!33212 (h!34478 (_ BitVec 64)) (t!47917 List!33216)) )
))
(declare-fun arrayNoDuplicates!0 (array!96359 (_ BitVec 32) List!33216) Bool)

(assert (=> b!1409947 (= res!947610 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33213))))

(declare-fun res!947609 () Bool)

(assert (=> start!121338 (=> (not res!947609) (not e!797903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121338 (= res!947609 (validMask!0 mask!2840))))

(assert (=> start!121338 e!797903))

(assert (=> start!121338 true))

(declare-fun array_inv!35462 (array!96359) Bool)

(assert (=> start!121338 (array_inv!35462 a!2901)))

(declare-fun b!1409948 () Bool)

(declare-fun lt!620912 () SeekEntryResult!10850)

(assert (=> b!1409948 (= e!797904 (or (= lt!620911 lt!620912) (not ((_ is Intermediate!10850) lt!620912)) (bvslt (x!127372 lt!620911) #b00000000000000000000000000000000) (bvsgt (x!127372 lt!620911) #b01111111111111111111111111111110) (and (bvsge lt!620914 #b00000000000000000000000000000000) (bvslt lt!620914 (size!47068 a!2901)))))))

(assert (=> b!1409948 (= lt!620912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96360 (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47068 a!2901)) mask!2840))))

(declare-fun b!1409949 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96359 (_ BitVec 32)) SeekEntryResult!10850)

(assert (=> b!1409949 (= e!797906 (= (seekEntryOrOpen!0 (select (arr!46517 a!2901) j!112) a!2901 mask!2840) (Found!10850 j!112)))))

(declare-fun b!1409950 () Bool)

(declare-fun res!947614 () Bool)

(assert (=> b!1409950 (=> (not res!947614) (not e!797903))))

(assert (=> b!1409950 (= res!947614 (and (= (size!47068 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47068 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47068 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121338 res!947609) b!1409950))

(assert (= (and b!1409950 res!947614) b!1409944))

(assert (= (and b!1409944 res!947611) b!1409945))

(assert (= (and b!1409945 res!947613) b!1409943))

(assert (= (and b!1409943 res!947612) b!1409947))

(assert (= (and b!1409947 res!947610) b!1409946))

(assert (= (and b!1409946 res!947616) b!1409949))

(assert (= (and b!1409946 (not res!947615)) b!1409948))

(declare-fun m!1299753 () Bool)

(assert (=> b!1409943 m!1299753))

(declare-fun m!1299755 () Bool)

(assert (=> b!1409944 m!1299755))

(assert (=> b!1409944 m!1299755))

(declare-fun m!1299757 () Bool)

(assert (=> b!1409944 m!1299757))

(declare-fun m!1299759 () Bool)

(assert (=> b!1409946 m!1299759))

(declare-fun m!1299761 () Bool)

(assert (=> b!1409946 m!1299761))

(assert (=> b!1409946 m!1299759))

(assert (=> b!1409946 m!1299759))

(declare-fun m!1299763 () Bool)

(assert (=> b!1409946 m!1299763))

(declare-fun m!1299765 () Bool)

(assert (=> b!1409946 m!1299765))

(declare-fun m!1299767 () Bool)

(assert (=> b!1409946 m!1299767))

(declare-fun m!1299769 () Bool)

(assert (=> b!1409948 m!1299769))

(declare-fun m!1299771 () Bool)

(assert (=> b!1409948 m!1299771))

(assert (=> b!1409948 m!1299771))

(declare-fun m!1299773 () Bool)

(assert (=> b!1409948 m!1299773))

(assert (=> b!1409948 m!1299773))

(assert (=> b!1409948 m!1299771))

(declare-fun m!1299775 () Bool)

(assert (=> b!1409948 m!1299775))

(declare-fun m!1299777 () Bool)

(assert (=> start!121338 m!1299777))

(declare-fun m!1299779 () Bool)

(assert (=> start!121338 m!1299779))

(declare-fun m!1299781 () Bool)

(assert (=> b!1409947 m!1299781))

(assert (=> b!1409945 m!1299759))

(assert (=> b!1409945 m!1299759))

(declare-fun m!1299783 () Bool)

(assert (=> b!1409945 m!1299783))

(assert (=> b!1409949 m!1299759))

(assert (=> b!1409949 m!1299759))

(declare-fun m!1299785 () Bool)

(assert (=> b!1409949 m!1299785))

(check-sat (not b!1409948) (not b!1409946) (not b!1409944) (not b!1409949) (not start!121338) (not b!1409947) (not b!1409943) (not b!1409945))
(check-sat)
(get-model)

(declare-fun d!151737 () Bool)

(declare-fun res!947646 () Bool)

(declare-fun e!797925 () Bool)

(assert (=> d!151737 (=> res!947646 e!797925)))

(assert (=> d!151737 (= res!947646 (bvsge #b00000000000000000000000000000000 (size!47068 a!2901)))))

(assert (=> d!151737 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!797925)))

(declare-fun b!1409983 () Bool)

(declare-fun e!797926 () Bool)

(declare-fun call!67035 () Bool)

(assert (=> b!1409983 (= e!797926 call!67035)))

(declare-fun b!1409984 () Bool)

(assert (=> b!1409984 (= e!797925 e!797926)))

(declare-fun c!130640 () Bool)

(assert (=> b!1409984 (= c!130640 (validKeyInArray!0 (select (arr!46517 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1409985 () Bool)

(declare-fun e!797927 () Bool)

(assert (=> b!1409985 (= e!797926 e!797927)))

(declare-fun lt!620935 () (_ BitVec 64))

(assert (=> b!1409985 (= lt!620935 (select (arr!46517 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!620933 () Unit!47624)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96359 (_ BitVec 64) (_ BitVec 32)) Unit!47624)

(assert (=> b!1409985 (= lt!620933 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!620935 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1409985 (arrayContainsKey!0 a!2901 lt!620935 #b00000000000000000000000000000000)))

(declare-fun lt!620934 () Unit!47624)

(assert (=> b!1409985 (= lt!620934 lt!620933)))

(declare-fun res!947645 () Bool)

(assert (=> b!1409985 (= res!947645 (= (seekEntryOrOpen!0 (select (arr!46517 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10850 #b00000000000000000000000000000000)))))

(assert (=> b!1409985 (=> (not res!947645) (not e!797927))))

(declare-fun bm!67032 () Bool)

(assert (=> bm!67032 (= call!67035 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1409986 () Bool)

(assert (=> b!1409986 (= e!797927 call!67035)))

(assert (= (and d!151737 (not res!947646)) b!1409984))

(assert (= (and b!1409984 c!130640) b!1409985))

(assert (= (and b!1409984 (not c!130640)) b!1409983))

(assert (= (and b!1409985 res!947645) b!1409986))

(assert (= (or b!1409986 b!1409983) bm!67032))

(declare-fun m!1299821 () Bool)

(assert (=> b!1409984 m!1299821))

(assert (=> b!1409984 m!1299821))

(declare-fun m!1299823 () Bool)

(assert (=> b!1409984 m!1299823))

(assert (=> b!1409985 m!1299821))

(declare-fun m!1299825 () Bool)

(assert (=> b!1409985 m!1299825))

(declare-fun m!1299827 () Bool)

(assert (=> b!1409985 m!1299827))

(assert (=> b!1409985 m!1299821))

(declare-fun m!1299829 () Bool)

(assert (=> b!1409985 m!1299829))

(declare-fun m!1299831 () Bool)

(assert (=> bm!67032 m!1299831))

(assert (=> b!1409943 d!151737))

(declare-fun b!1410017 () Bool)

(declare-fun lt!620949 () SeekEntryResult!10850)

(assert (=> b!1410017 (and (bvsge (index!45778 lt!620949) #b00000000000000000000000000000000) (bvslt (index!45778 lt!620949) (size!47068 (array!96360 (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47068 a!2901)))))))

(declare-fun res!947660 () Bool)

(assert (=> b!1410017 (= res!947660 (= (select (arr!46517 (array!96360 (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47068 a!2901))) (index!45778 lt!620949)) (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun e!797947 () Bool)

(assert (=> b!1410017 (=> res!947660 e!797947)))

(declare-fun e!797949 () Bool)

(assert (=> b!1410017 (= e!797949 e!797947)))

(declare-fun e!797948 () SeekEntryResult!10850)

(declare-fun b!1410018 () Bool)

(assert (=> b!1410018 (= e!797948 (Intermediate!10850 false (toIndex!0 (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1410019 () Bool)

(declare-fun e!797951 () Bool)

(assert (=> b!1410019 (= e!797951 e!797949)))

(declare-fun res!947659 () Bool)

(assert (=> b!1410019 (= res!947659 (and ((_ is Intermediate!10850) lt!620949) (not (undefined!11662 lt!620949)) (bvslt (x!127372 lt!620949) #b01111111111111111111111111111110) (bvsge (x!127372 lt!620949) #b00000000000000000000000000000000) (bvsge (x!127372 lt!620949) #b00000000000000000000000000000000)))))

(assert (=> b!1410019 (=> (not res!947659) (not e!797949))))

(declare-fun d!151739 () Bool)

(assert (=> d!151739 e!797951))

(declare-fun c!130650 () Bool)

(assert (=> d!151739 (= c!130650 (and ((_ is Intermediate!10850) lt!620949) (undefined!11662 lt!620949)))))

(declare-fun e!797950 () SeekEntryResult!10850)

(assert (=> d!151739 (= lt!620949 e!797950)))

(declare-fun c!130652 () Bool)

(assert (=> d!151739 (= c!130652 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!620950 () (_ BitVec 64))

(assert (=> d!151739 (= lt!620950 (select (arr!46517 (array!96360 (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47068 a!2901))) (toIndex!0 (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151739 (validMask!0 mask!2840)))

(assert (=> d!151739 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96360 (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47068 a!2901)) mask!2840) lt!620949)))

(declare-fun b!1410020 () Bool)

(assert (=> b!1410020 (and (bvsge (index!45778 lt!620949) #b00000000000000000000000000000000) (bvslt (index!45778 lt!620949) (size!47068 (array!96360 (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47068 a!2901)))))))

(declare-fun res!947661 () Bool)

(assert (=> b!1410020 (= res!947661 (= (select (arr!46517 (array!96360 (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47068 a!2901))) (index!45778 lt!620949)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1410020 (=> res!947661 e!797947)))

(declare-fun b!1410021 () Bool)

(assert (=> b!1410021 (and (bvsge (index!45778 lt!620949) #b00000000000000000000000000000000) (bvslt (index!45778 lt!620949) (size!47068 (array!96360 (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47068 a!2901)))))))

(assert (=> b!1410021 (= e!797947 (= (select (arr!46517 (array!96360 (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47068 a!2901))) (index!45778 lt!620949)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1410022 () Bool)

(assert (=> b!1410022 (= e!797950 (Intermediate!10850 true (toIndex!0 (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1410023 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410023 (= e!797948 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96360 (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47068 a!2901)) mask!2840))))

(declare-fun b!1410024 () Bool)

(assert (=> b!1410024 (= e!797951 (bvsge (x!127372 lt!620949) #b01111111111111111111111111111110))))

(declare-fun b!1410025 () Bool)

(assert (=> b!1410025 (= e!797950 e!797948)))

(declare-fun c!130651 () Bool)

(assert (=> b!1410025 (= c!130651 (or (= lt!620950 (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!620950 lt!620950) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!151739 c!130652) b!1410022))

(assert (= (and d!151739 (not c!130652)) b!1410025))

(assert (= (and b!1410025 c!130651) b!1410018))

(assert (= (and b!1410025 (not c!130651)) b!1410023))

(assert (= (and d!151739 c!130650) b!1410024))

(assert (= (and d!151739 (not c!130650)) b!1410019))

(assert (= (and b!1410019 res!947659) b!1410017))

(assert (= (and b!1410017 (not res!947660)) b!1410020))

(assert (= (and b!1410020 (not res!947661)) b!1410021))

(declare-fun m!1299839 () Bool)

(assert (=> b!1410020 m!1299839))

(assert (=> b!1410017 m!1299839))

(assert (=> b!1410021 m!1299839))

(assert (=> b!1410023 m!1299773))

(declare-fun m!1299841 () Bool)

(assert (=> b!1410023 m!1299841))

(assert (=> b!1410023 m!1299841))

(assert (=> b!1410023 m!1299771))

(declare-fun m!1299843 () Bool)

(assert (=> b!1410023 m!1299843))

(assert (=> d!151739 m!1299773))

(declare-fun m!1299845 () Bool)

(assert (=> d!151739 m!1299845))

(assert (=> d!151739 m!1299777))

(assert (=> b!1409948 d!151739))

(declare-fun d!151747 () Bool)

(declare-fun lt!620963 () (_ BitVec 32))

(declare-fun lt!620962 () (_ BitVec 32))

(assert (=> d!151747 (= lt!620963 (bvmul (bvxor lt!620962 (bvlshr lt!620962 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151747 (= lt!620962 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151747 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947662 (let ((h!34480 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127375 (bvmul (bvxor h!34480 (bvlshr h!34480 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127375 (bvlshr x!127375 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947662 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947662 #b00000000000000000000000000000000))))))

(assert (=> d!151747 (= (toIndex!0 (select (store (arr!46517 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!620963 (bvlshr lt!620963 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1409948 d!151747))

(declare-fun lt!620985 () SeekEntryResult!10850)

(declare-fun b!1410092 () Bool)

(declare-fun e!797989 () SeekEntryResult!10850)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96359 (_ BitVec 32)) SeekEntryResult!10850)

(assert (=> b!1410092 (= e!797989 (seekKeyOrZeroReturnVacant!0 (x!127372 lt!620985) (index!45778 lt!620985) (index!45778 lt!620985) (select (arr!46517 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1410093 () Bool)

(declare-fun c!130678 () Bool)

(declare-fun lt!620986 () (_ BitVec 64))

(assert (=> b!1410093 (= c!130678 (= lt!620986 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!797988 () SeekEntryResult!10850)

(assert (=> b!1410093 (= e!797988 e!797989)))

(declare-fun b!1410094 () Bool)

(declare-fun e!797990 () SeekEntryResult!10850)

(assert (=> b!1410094 (= e!797990 Undefined!10850)))

(declare-fun b!1410095 () Bool)

(assert (=> b!1410095 (= e!797990 e!797988)))

(assert (=> b!1410095 (= lt!620986 (select (arr!46517 a!2901) (index!45778 lt!620985)))))

(declare-fun c!130679 () Bool)

(assert (=> b!1410095 (= c!130679 (= lt!620986 (select (arr!46517 a!2901) j!112)))))

(declare-fun b!1410096 () Bool)

(assert (=> b!1410096 (= e!797988 (Found!10850 (index!45778 lt!620985)))))

(declare-fun b!1410097 () Bool)

(assert (=> b!1410097 (= e!797989 (MissingZero!10850 (index!45778 lt!620985)))))

(declare-fun d!151751 () Bool)

(declare-fun lt!620984 () SeekEntryResult!10850)

(assert (=> d!151751 (and (or ((_ is Undefined!10850) lt!620984) (not ((_ is Found!10850) lt!620984)) (and (bvsge (index!45777 lt!620984) #b00000000000000000000000000000000) (bvslt (index!45777 lt!620984) (size!47068 a!2901)))) (or ((_ is Undefined!10850) lt!620984) ((_ is Found!10850) lt!620984) (not ((_ is MissingZero!10850) lt!620984)) (and (bvsge (index!45776 lt!620984) #b00000000000000000000000000000000) (bvslt (index!45776 lt!620984) (size!47068 a!2901)))) (or ((_ is Undefined!10850) lt!620984) ((_ is Found!10850) lt!620984) ((_ is MissingZero!10850) lt!620984) (not ((_ is MissingVacant!10850) lt!620984)) (and (bvsge (index!45779 lt!620984) #b00000000000000000000000000000000) (bvslt (index!45779 lt!620984) (size!47068 a!2901)))) (or ((_ is Undefined!10850) lt!620984) (ite ((_ is Found!10850) lt!620984) (= (select (arr!46517 a!2901) (index!45777 lt!620984)) (select (arr!46517 a!2901) j!112)) (ite ((_ is MissingZero!10850) lt!620984) (= (select (arr!46517 a!2901) (index!45776 lt!620984)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10850) lt!620984) (= (select (arr!46517 a!2901) (index!45779 lt!620984)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151751 (= lt!620984 e!797990)))

(declare-fun c!130677 () Bool)

(assert (=> d!151751 (= c!130677 (and ((_ is Intermediate!10850) lt!620985) (undefined!11662 lt!620985)))))

(assert (=> d!151751 (= lt!620985 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46517 a!2901) j!112) mask!2840) (select (arr!46517 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151751 (validMask!0 mask!2840)))

(assert (=> d!151751 (= (seekEntryOrOpen!0 (select (arr!46517 a!2901) j!112) a!2901 mask!2840) lt!620984)))

(assert (= (and d!151751 c!130677) b!1410094))

(assert (= (and d!151751 (not c!130677)) b!1410095))

(assert (= (and b!1410095 c!130679) b!1410096))

(assert (= (and b!1410095 (not c!130679)) b!1410093))

(assert (= (and b!1410093 c!130678) b!1410097))

(assert (= (and b!1410093 (not c!130678)) b!1410092))

(assert (=> b!1410092 m!1299759))

(declare-fun m!1299865 () Bool)

(assert (=> b!1410092 m!1299865))

(declare-fun m!1299867 () Bool)

(assert (=> b!1410095 m!1299867))

(assert (=> d!151751 m!1299761))

(assert (=> d!151751 m!1299759))

(declare-fun m!1299869 () Bool)

(assert (=> d!151751 m!1299869))

(declare-fun m!1299871 () Bool)

(assert (=> d!151751 m!1299871))

(assert (=> d!151751 m!1299759))

(assert (=> d!151751 m!1299761))

(assert (=> d!151751 m!1299777))

(declare-fun m!1299873 () Bool)

(assert (=> d!151751 m!1299873))

(declare-fun m!1299875 () Bool)

(assert (=> d!151751 m!1299875))

(assert (=> b!1409949 d!151751))

(declare-fun d!151763 () Bool)

(assert (=> d!151763 (= (validKeyInArray!0 (select (arr!46517 a!2901) i!1037)) (and (not (= (select (arr!46517 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46517 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1409944 d!151763))

(declare-fun d!151765 () Bool)

(assert (=> d!151765 (= (validKeyInArray!0 (select (arr!46517 a!2901) j!112)) (and (not (= (select (arr!46517 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46517 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1409945 d!151765))

(declare-fun d!151767 () Bool)

(declare-fun res!947684 () Bool)

(declare-fun e!797991 () Bool)

(assert (=> d!151767 (=> res!947684 e!797991)))

(assert (=> d!151767 (= res!947684 (bvsge j!112 (size!47068 a!2901)))))

(assert (=> d!151767 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!797991)))

(declare-fun b!1410098 () Bool)

(declare-fun e!797992 () Bool)

(declare-fun call!67039 () Bool)

(assert (=> b!1410098 (= e!797992 call!67039)))

(declare-fun b!1410099 () Bool)

(assert (=> b!1410099 (= e!797991 e!797992)))

(declare-fun c!130680 () Bool)

(assert (=> b!1410099 (= c!130680 (validKeyInArray!0 (select (arr!46517 a!2901) j!112)))))

(declare-fun b!1410100 () Bool)

(declare-fun e!797993 () Bool)

(assert (=> b!1410100 (= e!797992 e!797993)))

(declare-fun lt!620989 () (_ BitVec 64))

(assert (=> b!1410100 (= lt!620989 (select (arr!46517 a!2901) j!112))))

(declare-fun lt!620987 () Unit!47624)

(assert (=> b!1410100 (= lt!620987 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!620989 j!112))))

(assert (=> b!1410100 (arrayContainsKey!0 a!2901 lt!620989 #b00000000000000000000000000000000)))

(declare-fun lt!620988 () Unit!47624)

(assert (=> b!1410100 (= lt!620988 lt!620987)))

(declare-fun res!947683 () Bool)

(assert (=> b!1410100 (= res!947683 (= (seekEntryOrOpen!0 (select (arr!46517 a!2901) j!112) a!2901 mask!2840) (Found!10850 j!112)))))

(assert (=> b!1410100 (=> (not res!947683) (not e!797993))))

(declare-fun bm!67036 () Bool)

(assert (=> bm!67036 (= call!67039 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1410101 () Bool)

(assert (=> b!1410101 (= e!797993 call!67039)))

(assert (= (and d!151767 (not res!947684)) b!1410099))

(assert (= (and b!1410099 c!130680) b!1410100))

(assert (= (and b!1410099 (not c!130680)) b!1410098))

(assert (= (and b!1410100 res!947683) b!1410101))

(assert (= (or b!1410101 b!1410098) bm!67036))

(assert (=> b!1410099 m!1299759))

(assert (=> b!1410099 m!1299759))

(assert (=> b!1410099 m!1299783))

(assert (=> b!1410100 m!1299759))

(declare-fun m!1299877 () Bool)

(assert (=> b!1410100 m!1299877))

(declare-fun m!1299879 () Bool)

(assert (=> b!1410100 m!1299879))

(assert (=> b!1410100 m!1299759))

(assert (=> b!1410100 m!1299785))

(declare-fun m!1299881 () Bool)

(assert (=> bm!67036 m!1299881))

(assert (=> b!1409946 d!151767))

(declare-fun d!151769 () Bool)

(assert (=> d!151769 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!621004 () Unit!47624)

(declare-fun choose!38 (array!96359 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47624)

(assert (=> d!151769 (= lt!621004 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151769 (validMask!0 mask!2840)))

(assert (=> d!151769 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!621004)))

(declare-fun bs!41106 () Bool)

(assert (= bs!41106 d!151769))

(assert (=> bs!41106 m!1299767))

(declare-fun m!1299883 () Bool)

(assert (=> bs!41106 m!1299883))

(assert (=> bs!41106 m!1299777))

(assert (=> b!1409946 d!151769))

(declare-fun b!1410110 () Bool)

(declare-fun lt!621005 () SeekEntryResult!10850)

(assert (=> b!1410110 (and (bvsge (index!45778 lt!621005) #b00000000000000000000000000000000) (bvslt (index!45778 lt!621005) (size!47068 a!2901)))))

(declare-fun res!947690 () Bool)

(assert (=> b!1410110 (= res!947690 (= (select (arr!46517 a!2901) (index!45778 lt!621005)) (select (arr!46517 a!2901) j!112)))))

(declare-fun e!798000 () Bool)

(assert (=> b!1410110 (=> res!947690 e!798000)))

(declare-fun e!798002 () Bool)

(assert (=> b!1410110 (= e!798002 e!798000)))

(declare-fun b!1410111 () Bool)

(declare-fun e!798001 () SeekEntryResult!10850)

(assert (=> b!1410111 (= e!798001 (Intermediate!10850 false lt!620914 #b00000000000000000000000000000000))))

(declare-fun b!1410112 () Bool)

(declare-fun e!798004 () Bool)

(assert (=> b!1410112 (= e!798004 e!798002)))

(declare-fun res!947689 () Bool)

(assert (=> b!1410112 (= res!947689 (and ((_ is Intermediate!10850) lt!621005) (not (undefined!11662 lt!621005)) (bvslt (x!127372 lt!621005) #b01111111111111111111111111111110) (bvsge (x!127372 lt!621005) #b00000000000000000000000000000000) (bvsge (x!127372 lt!621005) #b00000000000000000000000000000000)))))

(assert (=> b!1410112 (=> (not res!947689) (not e!798002))))

(declare-fun d!151773 () Bool)

(assert (=> d!151773 e!798004))

(declare-fun c!130683 () Bool)

(assert (=> d!151773 (= c!130683 (and ((_ is Intermediate!10850) lt!621005) (undefined!11662 lt!621005)))))

(declare-fun e!798003 () SeekEntryResult!10850)

(assert (=> d!151773 (= lt!621005 e!798003)))

(declare-fun c!130685 () Bool)

(assert (=> d!151773 (= c!130685 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!621006 () (_ BitVec 64))

(assert (=> d!151773 (= lt!621006 (select (arr!46517 a!2901) lt!620914))))

(assert (=> d!151773 (validMask!0 mask!2840)))

(assert (=> d!151773 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620914 (select (arr!46517 a!2901) j!112) a!2901 mask!2840) lt!621005)))

(declare-fun b!1410113 () Bool)

(assert (=> b!1410113 (and (bvsge (index!45778 lt!621005) #b00000000000000000000000000000000) (bvslt (index!45778 lt!621005) (size!47068 a!2901)))))

(declare-fun res!947691 () Bool)

(assert (=> b!1410113 (= res!947691 (= (select (arr!46517 a!2901) (index!45778 lt!621005)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1410113 (=> res!947691 e!798000)))

(declare-fun b!1410114 () Bool)

(assert (=> b!1410114 (and (bvsge (index!45778 lt!621005) #b00000000000000000000000000000000) (bvslt (index!45778 lt!621005) (size!47068 a!2901)))))

(assert (=> b!1410114 (= e!798000 (= (select (arr!46517 a!2901) (index!45778 lt!621005)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1410115 () Bool)

(assert (=> b!1410115 (= e!798003 (Intermediate!10850 true lt!620914 #b00000000000000000000000000000000))))

(declare-fun b!1410116 () Bool)

(assert (=> b!1410116 (= e!798001 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!620914 #b00000000000000000000000000000000 mask!2840) (select (arr!46517 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1410117 () Bool)

(assert (=> b!1410117 (= e!798004 (bvsge (x!127372 lt!621005) #b01111111111111111111111111111110))))

(declare-fun b!1410118 () Bool)

(assert (=> b!1410118 (= e!798003 e!798001)))

(declare-fun c!130684 () Bool)

(assert (=> b!1410118 (= c!130684 (or (= lt!621006 (select (arr!46517 a!2901) j!112)) (= (bvadd lt!621006 lt!621006) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!151773 c!130685) b!1410115))

(assert (= (and d!151773 (not c!130685)) b!1410118))

(assert (= (and b!1410118 c!130684) b!1410111))

(assert (= (and b!1410118 (not c!130684)) b!1410116))

(assert (= (and d!151773 c!130683) b!1410117))

(assert (= (and d!151773 (not c!130683)) b!1410112))

(assert (= (and b!1410112 res!947689) b!1410110))

(assert (= (and b!1410110 (not res!947690)) b!1410113))

(assert (= (and b!1410113 (not res!947691)) b!1410114))

(declare-fun m!1299885 () Bool)

(assert (=> b!1410113 m!1299885))

(assert (=> b!1410110 m!1299885))

(assert (=> b!1410114 m!1299885))

(declare-fun m!1299887 () Bool)

(assert (=> b!1410116 m!1299887))

(assert (=> b!1410116 m!1299887))

(assert (=> b!1410116 m!1299759))

(declare-fun m!1299889 () Bool)

(assert (=> b!1410116 m!1299889))

(declare-fun m!1299891 () Bool)

(assert (=> d!151773 m!1299891))

(assert (=> d!151773 m!1299777))

(assert (=> b!1409946 d!151773))

(declare-fun d!151775 () Bool)

(declare-fun lt!621008 () (_ BitVec 32))

(declare-fun lt!621007 () (_ BitVec 32))

(assert (=> d!151775 (= lt!621008 (bvmul (bvxor lt!621007 (bvlshr lt!621007 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151775 (= lt!621007 ((_ extract 31 0) (bvand (bvxor (select (arr!46517 a!2901) j!112) (bvlshr (select (arr!46517 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151775 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947662 (let ((h!34480 ((_ extract 31 0) (bvand (bvxor (select (arr!46517 a!2901) j!112) (bvlshr (select (arr!46517 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127375 (bvmul (bvxor h!34480 (bvlshr h!34480 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127375 (bvlshr x!127375 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947662 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947662 #b00000000000000000000000000000000))))))

(assert (=> d!151775 (= (toIndex!0 (select (arr!46517 a!2901) j!112) mask!2840) (bvand (bvxor lt!621008 (bvlshr lt!621008 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1409946 d!151775))

(declare-fun bm!67042 () Bool)

(declare-fun call!67045 () Bool)

(declare-fun c!130689 () Bool)

(assert (=> bm!67042 (= call!67045 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130689 (Cons!33212 (select (arr!46517 a!2901) #b00000000000000000000000000000000) Nil!33213) Nil!33213)))))

(declare-fun b!1410133 () Bool)

(declare-fun e!798017 () Bool)

(declare-fun contains!9820 (List!33216 (_ BitVec 64)) Bool)

(assert (=> b!1410133 (= e!798017 (contains!9820 Nil!33213 (select (arr!46517 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410134 () Bool)

(declare-fun e!798018 () Bool)

(assert (=> b!1410134 (= e!798018 call!67045)))

(declare-fun d!151777 () Bool)

(declare-fun res!947702 () Bool)

(declare-fun e!798019 () Bool)

(assert (=> d!151777 (=> res!947702 e!798019)))

(assert (=> d!151777 (= res!947702 (bvsge #b00000000000000000000000000000000 (size!47068 a!2901)))))

(assert (=> d!151777 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33213) e!798019)))

(declare-fun b!1410135 () Bool)

(declare-fun e!798016 () Bool)

(assert (=> b!1410135 (= e!798016 e!798018)))

(assert (=> b!1410135 (= c!130689 (validKeyInArray!0 (select (arr!46517 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410136 () Bool)

(assert (=> b!1410136 (= e!798019 e!798016)))

(declare-fun res!947700 () Bool)

(assert (=> b!1410136 (=> (not res!947700) (not e!798016))))

(assert (=> b!1410136 (= res!947700 (not e!798017))))

(declare-fun res!947701 () Bool)

(assert (=> b!1410136 (=> (not res!947701) (not e!798017))))

(assert (=> b!1410136 (= res!947701 (validKeyInArray!0 (select (arr!46517 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410137 () Bool)

(assert (=> b!1410137 (= e!798018 call!67045)))

(assert (= (and d!151777 (not res!947702)) b!1410136))

(assert (= (and b!1410136 res!947701) b!1410133))

(assert (= (and b!1410136 res!947700) b!1410135))

(assert (= (and b!1410135 c!130689) b!1410134))

(assert (= (and b!1410135 (not c!130689)) b!1410137))

(assert (= (or b!1410134 b!1410137) bm!67042))

(assert (=> bm!67042 m!1299821))

(declare-fun m!1299901 () Bool)

(assert (=> bm!67042 m!1299901))

(assert (=> b!1410133 m!1299821))

(assert (=> b!1410133 m!1299821))

(declare-fun m!1299903 () Bool)

(assert (=> b!1410133 m!1299903))

(assert (=> b!1410135 m!1299821))

(assert (=> b!1410135 m!1299821))

(assert (=> b!1410135 m!1299823))

(assert (=> b!1410136 m!1299821))

(assert (=> b!1410136 m!1299821))

(assert (=> b!1410136 m!1299823))

(assert (=> b!1409947 d!151777))

(declare-fun d!151783 () Bool)

(assert (=> d!151783 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121338 d!151783))

(declare-fun d!151799 () Bool)

(assert (=> d!151799 (= (array_inv!35462 a!2901) (bvsge (size!47068 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121338 d!151799))

(check-sat (not d!151751) (not d!151773) (not b!1410092) (not b!1410136) (not b!1410135) (not b!1410099) (not d!151769) (not bm!67036) (not b!1409985) (not b!1410116) (not bm!67042) (not bm!67032) (not b!1410023) (not b!1410100) (not b!1409984) (not d!151739) (not b!1410133))
(check-sat)
