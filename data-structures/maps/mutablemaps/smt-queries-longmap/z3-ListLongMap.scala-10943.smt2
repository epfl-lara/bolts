; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128040 () Bool)

(assert start!128040)

(declare-fun res!1024611 () Bool)

(declare-fun e!840679 () Bool)

(assert (=> start!128040 (=> (not res!1024611) (not e!840679))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128040 (= res!1024611 (validMask!0 mask!2661))))

(assert (=> start!128040 e!840679))

(assert (=> start!128040 true))

(declare-datatypes ((array!100268 0))(
  ( (array!100269 (arr!48386 (Array (_ BitVec 32) (_ BitVec 64))) (size!48937 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100268)

(declare-fun array_inv!37331 (array!100268) Bool)

(assert (=> start!128040 (array_inv!37331 a!2850)))

(declare-fun b!1503656 () Bool)

(declare-fun res!1024607 () Bool)

(assert (=> b!1503656 (=> (not res!1024607) (not e!840679))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12603 0))(
  ( (MissingZero!12603 (index!52803 (_ BitVec 32))) (Found!12603 (index!52804 (_ BitVec 32))) (Intermediate!12603 (undefined!13415 Bool) (index!52805 (_ BitVec 32)) (x!134496 (_ BitVec 32))) (Undefined!12603) (MissingVacant!12603 (index!52806 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100268 (_ BitVec 32)) SeekEntryResult!12603)

(assert (=> b!1503656 (= res!1024607 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48386 a!2850) j!87) a!2850 mask!2661) (Found!12603 j!87)))))

(declare-fun b!1503657 () Bool)

(declare-fun res!1024612 () Bool)

(assert (=> b!1503657 (=> (not res!1024612) (not e!840679))))

(declare-datatypes ((List!35058 0))(
  ( (Nil!35055) (Cons!35054 (h!36452 (_ BitVec 64)) (t!49759 List!35058)) )
))
(declare-fun arrayNoDuplicates!0 (array!100268 (_ BitVec 32) List!35058) Bool)

(assert (=> b!1503657 (= res!1024612 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35055))))

(declare-fun b!1503658 () Bool)

(declare-fun res!1024608 () Bool)

(assert (=> b!1503658 (=> (not res!1024608) (not e!840679))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1503658 (= res!1024608 (and (= (size!48937 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48937 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48937 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503659 () Bool)

(declare-fun res!1024610 () Bool)

(assert (=> b!1503659 (=> (not res!1024610) (not e!840679))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503659 (= res!1024610 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48937 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48937 a!2850)) (= (select (arr!48386 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48386 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48937 a!2850))))))

(declare-fun b!1503660 () Bool)

(declare-fun res!1024614 () Bool)

(assert (=> b!1503660 (=> (not res!1024614) (not e!840679))))

(assert (=> b!1503660 (= res!1024614 (not (= (select (arr!48386 a!2850) index!625) (select (arr!48386 a!2850) j!87))))))

(declare-fun b!1503661 () Bool)

(declare-fun res!1024613 () Bool)

(assert (=> b!1503661 (=> (not res!1024613) (not e!840679))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503661 (= res!1024613 (validKeyInArray!0 (select (arr!48386 a!2850) i!996)))))

(declare-fun b!1503662 () Bool)

(declare-fun res!1024606 () Bool)

(assert (=> b!1503662 (=> (not res!1024606) (not e!840679))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100268 (_ BitVec 32)) Bool)

(assert (=> b!1503662 (= res!1024606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503663 () Bool)

(assert (=> b!1503663 (= e!840679 (or (bvslt (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110)))))

(declare-fun lt!653518 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503663 (= lt!653518 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503664 () Bool)

(declare-fun res!1024609 () Bool)

(assert (=> b!1503664 (=> (not res!1024609) (not e!840679))))

(assert (=> b!1503664 (= res!1024609 (validKeyInArray!0 (select (arr!48386 a!2850) j!87)))))

(assert (= (and start!128040 res!1024611) b!1503658))

(assert (= (and b!1503658 res!1024608) b!1503661))

(assert (= (and b!1503661 res!1024613) b!1503664))

(assert (= (and b!1503664 res!1024609) b!1503662))

(assert (= (and b!1503662 res!1024606) b!1503657))

(assert (= (and b!1503657 res!1024612) b!1503659))

(assert (= (and b!1503659 res!1024610) b!1503656))

(assert (= (and b!1503656 res!1024607) b!1503660))

(assert (= (and b!1503660 res!1024614) b!1503663))

(declare-fun m!1386973 () Bool)

(assert (=> b!1503656 m!1386973))

(assert (=> b!1503656 m!1386973))

(declare-fun m!1386975 () Bool)

(assert (=> b!1503656 m!1386975))

(declare-fun m!1386977 () Bool)

(assert (=> b!1503657 m!1386977))

(declare-fun m!1386979 () Bool)

(assert (=> b!1503659 m!1386979))

(declare-fun m!1386981 () Bool)

(assert (=> b!1503659 m!1386981))

(declare-fun m!1386983 () Bool)

(assert (=> b!1503659 m!1386983))

(assert (=> b!1503664 m!1386973))

(assert (=> b!1503664 m!1386973))

(declare-fun m!1386985 () Bool)

(assert (=> b!1503664 m!1386985))

(declare-fun m!1386987 () Bool)

(assert (=> b!1503662 m!1386987))

(declare-fun m!1386989 () Bool)

(assert (=> b!1503663 m!1386989))

(declare-fun m!1386991 () Bool)

(assert (=> b!1503660 m!1386991))

(assert (=> b!1503660 m!1386973))

(declare-fun m!1386993 () Bool)

(assert (=> b!1503661 m!1386993))

(assert (=> b!1503661 m!1386993))

(declare-fun m!1386995 () Bool)

(assert (=> b!1503661 m!1386995))

(declare-fun m!1386997 () Bool)

(assert (=> start!128040 m!1386997))

(declare-fun m!1386999 () Bool)

(assert (=> start!128040 m!1386999))

(check-sat (not b!1503664) (not b!1503657) (not b!1503663) (not b!1503656) (not b!1503661) (not b!1503662) (not start!128040))
(check-sat)
(get-model)

(declare-fun d!157735 () Bool)

(assert (=> d!157735 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!128040 d!157735))

(declare-fun d!157739 () Bool)

(assert (=> d!157739 (= (array_inv!37331 a!2850) (bvsge (size!48937 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!128040 d!157739))

(declare-fun d!157745 () Bool)

(assert (=> d!157745 (= (validKeyInArray!0 (select (arr!48386 a!2850) j!87)) (and (not (= (select (arr!48386 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48386 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1503664 d!157745))

(declare-fun d!157747 () Bool)

(declare-fun lt!653524 () (_ BitVec 32))

(assert (=> d!157747 (and (bvsge lt!653524 #b00000000000000000000000000000000) (bvslt lt!653524 (bvadd mask!2661 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157747 (= lt!653524 (choose!52 index!625 x!647 mask!2661))))

(assert (=> d!157747 (validMask!0 mask!2661)))

(assert (=> d!157747 (= (nextIndex!0 index!625 x!647 mask!2661) lt!653524)))

(declare-fun bs!43169 () Bool)

(assert (= bs!43169 d!157747))

(declare-fun m!1387029 () Bool)

(assert (=> bs!43169 m!1387029))

(assert (=> bs!43169 m!1386997))

(assert (=> b!1503663 d!157747))

(declare-fun b!1503717 () Bool)

(declare-fun e!840707 () Bool)

(declare-fun e!840709 () Bool)

(assert (=> b!1503717 (= e!840707 e!840709)))

(declare-fun c!139067 () Bool)

(assert (=> b!1503717 (= c!139067 (validKeyInArray!0 (select (arr!48386 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1503718 () Bool)

(declare-fun e!840710 () Bool)

(declare-fun contains!9957 (List!35058 (_ BitVec 64)) Bool)

(assert (=> b!1503718 (= e!840710 (contains!9957 Nil!35055 (select (arr!48386 a!2850) #b00000000000000000000000000000000)))))

(declare-fun bm!68106 () Bool)

(declare-fun call!68109 () Bool)

(assert (=> bm!68106 (= call!68109 (arrayNoDuplicates!0 a!2850 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139067 (Cons!35054 (select (arr!48386 a!2850) #b00000000000000000000000000000000) Nil!35055) Nil!35055)))))

(declare-fun b!1503719 () Bool)

(assert (=> b!1503719 (= e!840709 call!68109)))

(declare-fun b!1503720 () Bool)

(declare-fun e!840708 () Bool)

(assert (=> b!1503720 (= e!840708 e!840707)))

(declare-fun res!1024659 () Bool)

(assert (=> b!1503720 (=> (not res!1024659) (not e!840707))))

(assert (=> b!1503720 (= res!1024659 (not e!840710))))

(declare-fun res!1024658 () Bool)

(assert (=> b!1503720 (=> (not res!1024658) (not e!840710))))

(assert (=> b!1503720 (= res!1024658 (validKeyInArray!0 (select (arr!48386 a!2850) #b00000000000000000000000000000000)))))

(declare-fun d!157749 () Bool)

(declare-fun res!1024657 () Bool)

(assert (=> d!157749 (=> res!1024657 e!840708)))

(assert (=> d!157749 (= res!1024657 (bvsge #b00000000000000000000000000000000 (size!48937 a!2850)))))

(assert (=> d!157749 (= (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35055) e!840708)))

(declare-fun b!1503721 () Bool)

(assert (=> b!1503721 (= e!840709 call!68109)))

(assert (= (and d!157749 (not res!1024657)) b!1503720))

(assert (= (and b!1503720 res!1024658) b!1503718))

(assert (= (and b!1503720 res!1024659) b!1503717))

(assert (= (and b!1503717 c!139067) b!1503719))

(assert (= (and b!1503717 (not c!139067)) b!1503721))

(assert (= (or b!1503719 b!1503721) bm!68106))

(declare-fun m!1387041 () Bool)

(assert (=> b!1503717 m!1387041))

(assert (=> b!1503717 m!1387041))

(declare-fun m!1387043 () Bool)

(assert (=> b!1503717 m!1387043))

(assert (=> b!1503718 m!1387041))

(assert (=> b!1503718 m!1387041))

(declare-fun m!1387045 () Bool)

(assert (=> b!1503718 m!1387045))

(assert (=> bm!68106 m!1387041))

(declare-fun m!1387047 () Bool)

(assert (=> bm!68106 m!1387047))

(assert (=> b!1503720 m!1387041))

(assert (=> b!1503720 m!1387041))

(assert (=> b!1503720 m!1387043))

(assert (=> b!1503657 d!157749))

(declare-fun b!1503757 () Bool)

(declare-fun e!840738 () Bool)

(declare-fun e!840740 () Bool)

(assert (=> b!1503757 (= e!840738 e!840740)))

(declare-fun c!139076 () Bool)

(assert (=> b!1503757 (= c!139076 (validKeyInArray!0 (select (arr!48386 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1503758 () Bool)

(declare-fun e!840739 () Bool)

(declare-fun call!68118 () Bool)

(assert (=> b!1503758 (= e!840739 call!68118)))

(declare-fun d!157757 () Bool)

(declare-fun res!1024680 () Bool)

(assert (=> d!157757 (=> res!1024680 e!840738)))

(assert (=> d!157757 (= res!1024680 (bvsge #b00000000000000000000000000000000 (size!48937 a!2850)))))

(assert (=> d!157757 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!840738)))

(declare-fun b!1503759 () Bool)

(assert (=> b!1503759 (= e!840740 call!68118)))

(declare-fun bm!68115 () Bool)

(assert (=> bm!68115 (= call!68118 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1503760 () Bool)

(assert (=> b!1503760 (= e!840740 e!840739)))

(declare-fun lt!653545 () (_ BitVec 64))

(assert (=> b!1503760 (= lt!653545 (select (arr!48386 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50208 0))(
  ( (Unit!50209) )
))
(declare-fun lt!653544 () Unit!50208)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100268 (_ BitVec 64) (_ BitVec 32)) Unit!50208)

(assert (=> b!1503760 (= lt!653544 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!653545 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1503760 (arrayContainsKey!0 a!2850 lt!653545 #b00000000000000000000000000000000)))

(declare-fun lt!653543 () Unit!50208)

(assert (=> b!1503760 (= lt!653543 lt!653544)))

(declare-fun res!1024679 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100268 (_ BitVec 32)) SeekEntryResult!12603)

(assert (=> b!1503760 (= res!1024679 (= (seekEntryOrOpen!0 (select (arr!48386 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12603 #b00000000000000000000000000000000)))))

(assert (=> b!1503760 (=> (not res!1024679) (not e!840739))))

(assert (= (and d!157757 (not res!1024680)) b!1503757))

(assert (= (and b!1503757 c!139076) b!1503760))

(assert (= (and b!1503757 (not c!139076)) b!1503759))

(assert (= (and b!1503760 res!1024679) b!1503758))

(assert (= (or b!1503758 b!1503759) bm!68115))

(assert (=> b!1503757 m!1387041))

(assert (=> b!1503757 m!1387041))

(assert (=> b!1503757 m!1387043))

(declare-fun m!1387065 () Bool)

(assert (=> bm!68115 m!1387065))

(assert (=> b!1503760 m!1387041))

(declare-fun m!1387067 () Bool)

(assert (=> b!1503760 m!1387067))

(declare-fun m!1387069 () Bool)

(assert (=> b!1503760 m!1387069))

(assert (=> b!1503760 m!1387041))

(declare-fun m!1387071 () Bool)

(assert (=> b!1503760 m!1387071))

(assert (=> b!1503662 d!157757))

(declare-fun b!1503804 () Bool)

(declare-fun e!840767 () SeekEntryResult!12603)

(assert (=> b!1503804 (= e!840767 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantBefore!10 (select (arr!48386 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1503805 () Bool)

(assert (=> b!1503805 (= e!840767 (MissingVacant!12603 vacantBefore!10))))

(declare-fun b!1503806 () Bool)

(declare-fun e!840766 () SeekEntryResult!12603)

(assert (=> b!1503806 (= e!840766 (Found!12603 index!625))))

(declare-fun b!1503807 () Bool)

(declare-fun c!139095 () Bool)

(declare-fun lt!653569 () (_ BitVec 64))

(assert (=> b!1503807 (= c!139095 (= lt!653569 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1503807 (= e!840766 e!840767)))

(declare-fun b!1503808 () Bool)

(declare-fun e!840765 () SeekEntryResult!12603)

(assert (=> b!1503808 (= e!840765 Undefined!12603)))

(declare-fun b!1503803 () Bool)

(assert (=> b!1503803 (= e!840765 e!840766)))

(declare-fun c!139097 () Bool)

(assert (=> b!1503803 (= c!139097 (= lt!653569 (select (arr!48386 a!2850) j!87)))))

(declare-fun lt!653568 () SeekEntryResult!12603)

(declare-fun d!157767 () Bool)

(get-info :version)

(assert (=> d!157767 (and (or ((_ is Undefined!12603) lt!653568) (not ((_ is Found!12603) lt!653568)) (and (bvsge (index!52804 lt!653568) #b00000000000000000000000000000000) (bvslt (index!52804 lt!653568) (size!48937 a!2850)))) (or ((_ is Undefined!12603) lt!653568) ((_ is Found!12603) lt!653568) (not ((_ is MissingVacant!12603) lt!653568)) (not (= (index!52806 lt!653568) vacantBefore!10)) (and (bvsge (index!52806 lt!653568) #b00000000000000000000000000000000) (bvslt (index!52806 lt!653568) (size!48937 a!2850)))) (or ((_ is Undefined!12603) lt!653568) (ite ((_ is Found!12603) lt!653568) (= (select (arr!48386 a!2850) (index!52804 lt!653568)) (select (arr!48386 a!2850) j!87)) (and ((_ is MissingVacant!12603) lt!653568) (= (index!52806 lt!653568) vacantBefore!10) (= (select (arr!48386 a!2850) (index!52806 lt!653568)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157767 (= lt!653568 e!840765)))

(declare-fun c!139096 () Bool)

(assert (=> d!157767 (= c!139096 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157767 (= lt!653569 (select (arr!48386 a!2850) index!625))))

(assert (=> d!157767 (validMask!0 mask!2661)))

(assert (=> d!157767 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48386 a!2850) j!87) a!2850 mask!2661) lt!653568)))

(assert (= (and d!157767 c!139096) b!1503808))

(assert (= (and d!157767 (not c!139096)) b!1503803))

(assert (= (and b!1503803 c!139097) b!1503806))

(assert (= (and b!1503803 (not c!139097)) b!1503807))

(assert (= (and b!1503807 c!139095) b!1503805))

(assert (= (and b!1503807 (not c!139095)) b!1503804))

(assert (=> b!1503804 m!1386989))

(assert (=> b!1503804 m!1386989))

(assert (=> b!1503804 m!1386973))

(declare-fun m!1387089 () Bool)

(assert (=> b!1503804 m!1387089))

(declare-fun m!1387091 () Bool)

(assert (=> d!157767 m!1387091))

(declare-fun m!1387093 () Bool)

(assert (=> d!157767 m!1387093))

(assert (=> d!157767 m!1386991))

(assert (=> d!157767 m!1386997))

(assert (=> b!1503656 d!157767))

(declare-fun d!157775 () Bool)

(assert (=> d!157775 (= (validKeyInArray!0 (select (arr!48386 a!2850) i!996)) (and (not (= (select (arr!48386 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48386 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1503661 d!157775))

(check-sat (not b!1503720) (not b!1503717) (not d!157767) (not b!1503804) (not b!1503760) (not bm!68106) (not b!1503757) (not bm!68115) (not b!1503718) (not d!157747))
(check-sat)
