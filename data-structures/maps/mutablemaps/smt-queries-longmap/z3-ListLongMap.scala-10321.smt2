; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121398 () Bool)

(assert start!121398)

(declare-fun b!1410270 () Bool)

(declare-fun res!947771 () Bool)

(declare-fun e!798099 () Bool)

(assert (=> b!1410270 (=> (not res!947771) (not e!798099))))

(declare-datatypes ((array!96368 0))(
  ( (array!96369 (arr!46520 (Array (_ BitVec 32) (_ BitVec 64))) (size!47071 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96368)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410270 (= res!947771 (validKeyInArray!0 (select (arr!46520 a!2901) j!112)))))

(declare-fun b!1410271 () Bool)

(declare-fun res!947774 () Bool)

(assert (=> b!1410271 (=> (not res!947774) (not e!798099))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1410271 (= res!947774 (and (= (size!47071 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47071 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47071 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!947772 () Bool)

(assert (=> start!121398 (=> (not res!947772) (not e!798099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121398 (= res!947772 (validMask!0 mask!2840))))

(assert (=> start!121398 e!798099))

(assert (=> start!121398 true))

(declare-fun array_inv!35465 (array!96368) Bool)

(assert (=> start!121398 (array_inv!35465 a!2901)))

(declare-fun b!1410272 () Bool)

(declare-fun res!947775 () Bool)

(assert (=> b!1410272 (=> (not res!947775) (not e!798099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96368 (_ BitVec 32)) Bool)

(assert (=> b!1410272 (= res!947775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1410273 () Bool)

(declare-fun e!798101 () Bool)

(declare-fun lt!621067 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10853 0))(
  ( (MissingZero!10853 (index!45788 (_ BitVec 32))) (Found!10853 (index!45789 (_ BitVec 32))) (Intermediate!10853 (undefined!11665 Bool) (index!45790 (_ BitVec 32)) (x!127389 (_ BitVec 32))) (Undefined!10853) (MissingVacant!10853 (index!45791 (_ BitVec 32))) )
))
(declare-fun lt!621069 () SeekEntryResult!10853)

(declare-fun lt!621068 () SeekEntryResult!10853)

(get-info :version)

(assert (=> b!1410273 (= e!798101 (or (= lt!621068 lt!621069) (not ((_ is Intermediate!10853) lt!621069)) (bvslt (x!127389 lt!621068) #b00000000000000000000000000000000) (bvsgt (x!127389 lt!621068) #b01111111111111111111111111111110) (bvslt lt!621067 #b00000000000000000000000000000000) (bvsge lt!621067 (size!47071 a!2901)) (and (bvsge (index!45790 lt!621068) #b00000000000000000000000000000000) (bvslt (index!45790 lt!621068) (size!47071 a!2901)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96368 (_ BitVec 32)) SeekEntryResult!10853)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410273 (= lt!621069 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96369 (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47071 a!2901)) mask!2840))))

(declare-fun b!1410274 () Bool)

(declare-fun e!798098 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96368 (_ BitVec 32)) SeekEntryResult!10853)

(assert (=> b!1410274 (= e!798098 (= (seekEntryOrOpen!0 (select (arr!46520 a!2901) j!112) a!2901 mask!2840) (Found!10853 j!112)))))

(declare-fun b!1410275 () Bool)

(assert (=> b!1410275 (= e!798099 (not e!798101))))

(declare-fun res!947777 () Bool)

(assert (=> b!1410275 (=> res!947777 e!798101)))

(assert (=> b!1410275 (= res!947777 (or (not ((_ is Intermediate!10853) lt!621068)) (undefined!11665 lt!621068)))))

(assert (=> b!1410275 e!798098))

(declare-fun res!947778 () Bool)

(assert (=> b!1410275 (=> (not res!947778) (not e!798098))))

(assert (=> b!1410275 (= res!947778 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47630 0))(
  ( (Unit!47631) )
))
(declare-fun lt!621070 () Unit!47630)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96368 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47630)

(assert (=> b!1410275 (= lt!621070 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1410275 (= lt!621068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621067 (select (arr!46520 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1410275 (= lt!621067 (toIndex!0 (select (arr!46520 a!2901) j!112) mask!2840))))

(declare-fun b!1410276 () Bool)

(declare-fun res!947776 () Bool)

(assert (=> b!1410276 (=> (not res!947776) (not e!798099))))

(declare-datatypes ((List!33219 0))(
  ( (Nil!33216) (Cons!33215 (h!34484 (_ BitVec 64)) (t!47920 List!33219)) )
))
(declare-fun arrayNoDuplicates!0 (array!96368 (_ BitVec 32) List!33219) Bool)

(assert (=> b!1410276 (= res!947776 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33216))))

(declare-fun b!1410277 () Bool)

(declare-fun res!947773 () Bool)

(assert (=> b!1410277 (=> (not res!947773) (not e!798099))))

(assert (=> b!1410277 (= res!947773 (validKeyInArray!0 (select (arr!46520 a!2901) i!1037)))))

(assert (= (and start!121398 res!947772) b!1410271))

(assert (= (and b!1410271 res!947774) b!1410277))

(assert (= (and b!1410277 res!947773) b!1410270))

(assert (= (and b!1410270 res!947771) b!1410272))

(assert (= (and b!1410272 res!947775) b!1410276))

(assert (= (and b!1410276 res!947776) b!1410275))

(assert (= (and b!1410275 res!947778) b!1410274))

(assert (= (and b!1410275 (not res!947777)) b!1410273))

(declare-fun m!1300011 () Bool)

(assert (=> b!1410275 m!1300011))

(declare-fun m!1300013 () Bool)

(assert (=> b!1410275 m!1300013))

(assert (=> b!1410275 m!1300011))

(assert (=> b!1410275 m!1300011))

(declare-fun m!1300015 () Bool)

(assert (=> b!1410275 m!1300015))

(declare-fun m!1300017 () Bool)

(assert (=> b!1410275 m!1300017))

(declare-fun m!1300019 () Bool)

(assert (=> b!1410275 m!1300019))

(assert (=> b!1410270 m!1300011))

(assert (=> b!1410270 m!1300011))

(declare-fun m!1300021 () Bool)

(assert (=> b!1410270 m!1300021))

(declare-fun m!1300023 () Bool)

(assert (=> start!121398 m!1300023))

(declare-fun m!1300025 () Bool)

(assert (=> start!121398 m!1300025))

(assert (=> b!1410274 m!1300011))

(assert (=> b!1410274 m!1300011))

(declare-fun m!1300027 () Bool)

(assert (=> b!1410274 m!1300027))

(declare-fun m!1300029 () Bool)

(assert (=> b!1410273 m!1300029))

(declare-fun m!1300031 () Bool)

(assert (=> b!1410273 m!1300031))

(assert (=> b!1410273 m!1300031))

(declare-fun m!1300033 () Bool)

(assert (=> b!1410273 m!1300033))

(assert (=> b!1410273 m!1300033))

(assert (=> b!1410273 m!1300031))

(declare-fun m!1300035 () Bool)

(assert (=> b!1410273 m!1300035))

(declare-fun m!1300037 () Bool)

(assert (=> b!1410276 m!1300037))

(declare-fun m!1300039 () Bool)

(assert (=> b!1410277 m!1300039))

(assert (=> b!1410277 m!1300039))

(declare-fun m!1300041 () Bool)

(assert (=> b!1410277 m!1300041))

(declare-fun m!1300043 () Bool)

(assert (=> b!1410272 m!1300043))

(check-sat (not b!1410274) (not b!1410272) (not b!1410276) (not b!1410273) (not b!1410277) (not b!1410275) (not b!1410270) (not start!121398))
(check-sat)
(get-model)

(declare-fun d!151817 () Bool)

(declare-fun res!947810 () Bool)

(declare-fun e!798123 () Bool)

(assert (=> d!151817 (=> res!947810 e!798123)))

(assert (=> d!151817 (= res!947810 (bvsge #b00000000000000000000000000000000 (size!47071 a!2901)))))

(assert (=> d!151817 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33216) e!798123)))

(declare-fun bm!67053 () Bool)

(declare-fun call!67056 () Bool)

(declare-fun c!130724 () Bool)

(assert (=> bm!67053 (= call!67056 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130724 (Cons!33215 (select (arr!46520 a!2901) #b00000000000000000000000000000000) Nil!33216) Nil!33216)))))

(declare-fun b!1410312 () Bool)

(declare-fun e!798125 () Bool)

(assert (=> b!1410312 (= e!798123 e!798125)))

(declare-fun res!947809 () Bool)

(assert (=> b!1410312 (=> (not res!947809) (not e!798125))))

(declare-fun e!798122 () Bool)

(assert (=> b!1410312 (= res!947809 (not e!798122))))

(declare-fun res!947811 () Bool)

(assert (=> b!1410312 (=> (not res!947811) (not e!798122))))

(assert (=> b!1410312 (= res!947811 (validKeyInArray!0 (select (arr!46520 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410313 () Bool)

(declare-fun contains!9823 (List!33219 (_ BitVec 64)) Bool)

(assert (=> b!1410313 (= e!798122 (contains!9823 Nil!33216 (select (arr!46520 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410314 () Bool)

(declare-fun e!798124 () Bool)

(assert (=> b!1410314 (= e!798124 call!67056)))

(declare-fun b!1410315 () Bool)

(assert (=> b!1410315 (= e!798124 call!67056)))

(declare-fun b!1410316 () Bool)

(assert (=> b!1410316 (= e!798125 e!798124)))

(assert (=> b!1410316 (= c!130724 (validKeyInArray!0 (select (arr!46520 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!151817 (not res!947810)) b!1410312))

(assert (= (and b!1410312 res!947811) b!1410313))

(assert (= (and b!1410312 res!947809) b!1410316))

(assert (= (and b!1410316 c!130724) b!1410314))

(assert (= (and b!1410316 (not c!130724)) b!1410315))

(assert (= (or b!1410314 b!1410315) bm!67053))

(declare-fun m!1300079 () Bool)

(assert (=> bm!67053 m!1300079))

(declare-fun m!1300081 () Bool)

(assert (=> bm!67053 m!1300081))

(assert (=> b!1410312 m!1300079))

(assert (=> b!1410312 m!1300079))

(declare-fun m!1300083 () Bool)

(assert (=> b!1410312 m!1300083))

(assert (=> b!1410313 m!1300079))

(assert (=> b!1410313 m!1300079))

(declare-fun m!1300085 () Bool)

(assert (=> b!1410313 m!1300085))

(assert (=> b!1410316 m!1300079))

(assert (=> b!1410316 m!1300079))

(assert (=> b!1410316 m!1300083))

(assert (=> b!1410276 d!151817))

(declare-fun d!151819 () Bool)

(assert (=> d!151819 (= (validKeyInArray!0 (select (arr!46520 a!2901) j!112)) (and (not (= (select (arr!46520 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46520 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1410270 d!151819))

(declare-fun b!1410340 () Bool)

(declare-fun e!798145 () Bool)

(declare-fun call!67062 () Bool)

(assert (=> b!1410340 (= e!798145 call!67062)))

(declare-fun d!151821 () Bool)

(declare-fun res!947825 () Bool)

(declare-fun e!798144 () Bool)

(assert (=> d!151821 (=> res!947825 e!798144)))

(assert (=> d!151821 (= res!947825 (bvsge j!112 (size!47071 a!2901)))))

(assert (=> d!151821 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!798144)))

(declare-fun b!1410341 () Bool)

(declare-fun e!798146 () Bool)

(assert (=> b!1410341 (= e!798146 call!67062)))

(declare-fun b!1410342 () Bool)

(assert (=> b!1410342 (= e!798145 e!798146)))

(declare-fun lt!621089 () (_ BitVec 64))

(assert (=> b!1410342 (= lt!621089 (select (arr!46520 a!2901) j!112))))

(declare-fun lt!621090 () Unit!47630)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96368 (_ BitVec 64) (_ BitVec 32)) Unit!47630)

(assert (=> b!1410342 (= lt!621090 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!621089 j!112))))

(declare-fun arrayContainsKey!0 (array!96368 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1410342 (arrayContainsKey!0 a!2901 lt!621089 #b00000000000000000000000000000000)))

(declare-fun lt!621091 () Unit!47630)

(assert (=> b!1410342 (= lt!621091 lt!621090)))

(declare-fun res!947826 () Bool)

(assert (=> b!1410342 (= res!947826 (= (seekEntryOrOpen!0 (select (arr!46520 a!2901) j!112) a!2901 mask!2840) (Found!10853 j!112)))))

(assert (=> b!1410342 (=> (not res!947826) (not e!798146))))

(declare-fun b!1410343 () Bool)

(assert (=> b!1410343 (= e!798144 e!798145)))

(declare-fun c!130730 () Bool)

(assert (=> b!1410343 (= c!130730 (validKeyInArray!0 (select (arr!46520 a!2901) j!112)))))

(declare-fun bm!67059 () Bool)

(assert (=> bm!67059 (= call!67062 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!151821 (not res!947825)) b!1410343))

(assert (= (and b!1410343 c!130730) b!1410342))

(assert (= (and b!1410343 (not c!130730)) b!1410340))

(assert (= (and b!1410342 res!947826) b!1410341))

(assert (= (or b!1410341 b!1410340) bm!67059))

(assert (=> b!1410342 m!1300011))

(declare-fun m!1300095 () Bool)

(assert (=> b!1410342 m!1300095))

(declare-fun m!1300097 () Bool)

(assert (=> b!1410342 m!1300097))

(assert (=> b!1410342 m!1300011))

(assert (=> b!1410342 m!1300027))

(assert (=> b!1410343 m!1300011))

(assert (=> b!1410343 m!1300011))

(assert (=> b!1410343 m!1300021))

(declare-fun m!1300099 () Bool)

(assert (=> bm!67059 m!1300099))

(assert (=> b!1410275 d!151821))

(declare-fun d!151827 () Bool)

(assert (=> d!151827 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!621094 () Unit!47630)

(declare-fun choose!38 (array!96368 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47630)

(assert (=> d!151827 (= lt!621094 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151827 (validMask!0 mask!2840)))

(assert (=> d!151827 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!621094)))

(declare-fun bs!41111 () Bool)

(assert (= bs!41111 d!151827))

(assert (=> bs!41111 m!1300019))

(declare-fun m!1300101 () Bool)

(assert (=> bs!41111 m!1300101))

(assert (=> bs!41111 m!1300023))

(assert (=> b!1410275 d!151827))

(declare-fun b!1410398 () Bool)

(declare-fun lt!621125 () SeekEntryResult!10853)

(assert (=> b!1410398 (and (bvsge (index!45790 lt!621125) #b00000000000000000000000000000000) (bvslt (index!45790 lt!621125) (size!47071 a!2901)))))

(declare-fun res!947843 () Bool)

(assert (=> b!1410398 (= res!947843 (= (select (arr!46520 a!2901) (index!45790 lt!621125)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!798181 () Bool)

(assert (=> b!1410398 (=> res!947843 e!798181)))

(declare-fun b!1410399 () Bool)

(declare-fun e!798183 () SeekEntryResult!10853)

(assert (=> b!1410399 (= e!798183 (Intermediate!10853 false lt!621067 #b00000000000000000000000000000000))))

(declare-fun b!1410400 () Bool)

(declare-fun e!798182 () Bool)

(assert (=> b!1410400 (= e!798182 (bvsge (x!127389 lt!621125) #b01111111111111111111111111111110))))

(declare-fun b!1410401 () Bool)

(declare-fun e!798179 () Bool)

(assert (=> b!1410401 (= e!798182 e!798179)))

(declare-fun res!947841 () Bool)

(assert (=> b!1410401 (= res!947841 (and ((_ is Intermediate!10853) lt!621125) (not (undefined!11665 lt!621125)) (bvslt (x!127389 lt!621125) #b01111111111111111111111111111110) (bvsge (x!127389 lt!621125) #b00000000000000000000000000000000) (bvsge (x!127389 lt!621125) #b00000000000000000000000000000000)))))

(assert (=> b!1410401 (=> (not res!947841) (not e!798179))))

(declare-fun d!151829 () Bool)

(assert (=> d!151829 e!798182))

(declare-fun c!130752 () Bool)

(assert (=> d!151829 (= c!130752 (and ((_ is Intermediate!10853) lt!621125) (undefined!11665 lt!621125)))))

(declare-fun e!798180 () SeekEntryResult!10853)

(assert (=> d!151829 (= lt!621125 e!798180)))

(declare-fun c!130753 () Bool)

(assert (=> d!151829 (= c!130753 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!621124 () (_ BitVec 64))

(assert (=> d!151829 (= lt!621124 (select (arr!46520 a!2901) lt!621067))))

(assert (=> d!151829 (validMask!0 mask!2840)))

(assert (=> d!151829 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621067 (select (arr!46520 a!2901) j!112) a!2901 mask!2840) lt!621125)))

(declare-fun b!1410402 () Bool)

(assert (=> b!1410402 (= e!798180 e!798183)))

(declare-fun c!130751 () Bool)

(assert (=> b!1410402 (= c!130751 (or (= lt!621124 (select (arr!46520 a!2901) j!112)) (= (bvadd lt!621124 lt!621124) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1410403 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410403 (= e!798183 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!621067 #b00000000000000000000000000000000 mask!2840) (select (arr!46520 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1410404 () Bool)

(assert (=> b!1410404 (and (bvsge (index!45790 lt!621125) #b00000000000000000000000000000000) (bvslt (index!45790 lt!621125) (size!47071 a!2901)))))

(assert (=> b!1410404 (= e!798181 (= (select (arr!46520 a!2901) (index!45790 lt!621125)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1410405 () Bool)

(assert (=> b!1410405 (and (bvsge (index!45790 lt!621125) #b00000000000000000000000000000000) (bvslt (index!45790 lt!621125) (size!47071 a!2901)))))

(declare-fun res!947842 () Bool)

(assert (=> b!1410405 (= res!947842 (= (select (arr!46520 a!2901) (index!45790 lt!621125)) (select (arr!46520 a!2901) j!112)))))

(assert (=> b!1410405 (=> res!947842 e!798181)))

(assert (=> b!1410405 (= e!798179 e!798181)))

(declare-fun b!1410406 () Bool)

(assert (=> b!1410406 (= e!798180 (Intermediate!10853 true lt!621067 #b00000000000000000000000000000000))))

(assert (= (and d!151829 c!130753) b!1410406))

(assert (= (and d!151829 (not c!130753)) b!1410402))

(assert (= (and b!1410402 c!130751) b!1410399))

(assert (= (and b!1410402 (not c!130751)) b!1410403))

(assert (= (and d!151829 c!130752) b!1410400))

(assert (= (and d!151829 (not c!130752)) b!1410401))

(assert (= (and b!1410401 res!947841) b!1410405))

(assert (= (and b!1410405 (not res!947842)) b!1410398))

(assert (= (and b!1410398 (not res!947843)) b!1410404))

(declare-fun m!1300123 () Bool)

(assert (=> b!1410403 m!1300123))

(assert (=> b!1410403 m!1300123))

(assert (=> b!1410403 m!1300011))

(declare-fun m!1300125 () Bool)

(assert (=> b!1410403 m!1300125))

(declare-fun m!1300127 () Bool)

(assert (=> b!1410405 m!1300127))

(declare-fun m!1300129 () Bool)

(assert (=> d!151829 m!1300129))

(assert (=> d!151829 m!1300023))

(assert (=> b!1410398 m!1300127))

(assert (=> b!1410404 m!1300127))

(assert (=> b!1410275 d!151829))

(declare-fun d!151843 () Bool)

(declare-fun lt!621136 () (_ BitVec 32))

(declare-fun lt!621135 () (_ BitVec 32))

(assert (=> d!151843 (= lt!621136 (bvmul (bvxor lt!621135 (bvlshr lt!621135 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151843 (= lt!621135 ((_ extract 31 0) (bvand (bvxor (select (arr!46520 a!2901) j!112) (bvlshr (select (arr!46520 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151843 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947846 (let ((h!34486 ((_ extract 31 0) (bvand (bvxor (select (arr!46520 a!2901) j!112) (bvlshr (select (arr!46520 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127392 (bvmul (bvxor h!34486 (bvlshr h!34486 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127392 (bvlshr x!127392 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947846 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947846 #b00000000000000000000000000000000))))))

(assert (=> d!151843 (= (toIndex!0 (select (arr!46520 a!2901) j!112) mask!2840) (bvand (bvxor lt!621136 (bvlshr lt!621136 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1410275 d!151843))

(declare-fun d!151847 () Bool)

(assert (=> d!151847 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121398 d!151847))

(declare-fun d!151851 () Bool)

(assert (=> d!151851 (= (array_inv!35465 a!2901) (bvsge (size!47071 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121398 d!151851))

(declare-fun b!1410501 () Bool)

(declare-fun c!130788 () Bool)

(declare-fun lt!621182 () (_ BitVec 64))

(assert (=> b!1410501 (= c!130788 (= lt!621182 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!798240 () SeekEntryResult!10853)

(declare-fun e!798238 () SeekEntryResult!10853)

(assert (=> b!1410501 (= e!798240 e!798238)))

(declare-fun lt!621181 () SeekEntryResult!10853)

(declare-fun b!1410502 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96368 (_ BitVec 32)) SeekEntryResult!10853)

(assert (=> b!1410502 (= e!798238 (seekKeyOrZeroReturnVacant!0 (x!127389 lt!621181) (index!45790 lt!621181) (index!45790 lt!621181) (select (arr!46520 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1410503 () Bool)

(assert (=> b!1410503 (= e!798240 (Found!10853 (index!45790 lt!621181)))))

(declare-fun b!1410504 () Bool)

(declare-fun e!798239 () SeekEntryResult!10853)

(assert (=> b!1410504 (= e!798239 e!798240)))

(assert (=> b!1410504 (= lt!621182 (select (arr!46520 a!2901) (index!45790 lt!621181)))))

(declare-fun c!130787 () Bool)

(assert (=> b!1410504 (= c!130787 (= lt!621182 (select (arr!46520 a!2901) j!112)))))

(declare-fun b!1410505 () Bool)

(assert (=> b!1410505 (= e!798238 (MissingZero!10853 (index!45790 lt!621181)))))

(declare-fun d!151853 () Bool)

(declare-fun lt!621183 () SeekEntryResult!10853)

(assert (=> d!151853 (and (or ((_ is Undefined!10853) lt!621183) (not ((_ is Found!10853) lt!621183)) (and (bvsge (index!45789 lt!621183) #b00000000000000000000000000000000) (bvslt (index!45789 lt!621183) (size!47071 a!2901)))) (or ((_ is Undefined!10853) lt!621183) ((_ is Found!10853) lt!621183) (not ((_ is MissingZero!10853) lt!621183)) (and (bvsge (index!45788 lt!621183) #b00000000000000000000000000000000) (bvslt (index!45788 lt!621183) (size!47071 a!2901)))) (or ((_ is Undefined!10853) lt!621183) ((_ is Found!10853) lt!621183) ((_ is MissingZero!10853) lt!621183) (not ((_ is MissingVacant!10853) lt!621183)) (and (bvsge (index!45791 lt!621183) #b00000000000000000000000000000000) (bvslt (index!45791 lt!621183) (size!47071 a!2901)))) (or ((_ is Undefined!10853) lt!621183) (ite ((_ is Found!10853) lt!621183) (= (select (arr!46520 a!2901) (index!45789 lt!621183)) (select (arr!46520 a!2901) j!112)) (ite ((_ is MissingZero!10853) lt!621183) (= (select (arr!46520 a!2901) (index!45788 lt!621183)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10853) lt!621183) (= (select (arr!46520 a!2901) (index!45791 lt!621183)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151853 (= lt!621183 e!798239)))

(declare-fun c!130786 () Bool)

(assert (=> d!151853 (= c!130786 (and ((_ is Intermediate!10853) lt!621181) (undefined!11665 lt!621181)))))

(assert (=> d!151853 (= lt!621181 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46520 a!2901) j!112) mask!2840) (select (arr!46520 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151853 (validMask!0 mask!2840)))

(assert (=> d!151853 (= (seekEntryOrOpen!0 (select (arr!46520 a!2901) j!112) a!2901 mask!2840) lt!621183)))

(declare-fun b!1410506 () Bool)

(assert (=> b!1410506 (= e!798239 Undefined!10853)))

(assert (= (and d!151853 c!130786) b!1410506))

(assert (= (and d!151853 (not c!130786)) b!1410504))

(assert (= (and b!1410504 c!130787) b!1410503))

(assert (= (and b!1410504 (not c!130787)) b!1410501))

(assert (= (and b!1410501 c!130788) b!1410505))

(assert (= (and b!1410501 (not c!130788)) b!1410502))

(assert (=> b!1410502 m!1300011))

(declare-fun m!1300183 () Bool)

(assert (=> b!1410502 m!1300183))

(declare-fun m!1300185 () Bool)

(assert (=> b!1410504 m!1300185))

(assert (=> d!151853 m!1300013))

(assert (=> d!151853 m!1300011))

(declare-fun m!1300187 () Bool)

(assert (=> d!151853 m!1300187))

(declare-fun m!1300189 () Bool)

(assert (=> d!151853 m!1300189))

(declare-fun m!1300191 () Bool)

(assert (=> d!151853 m!1300191))

(declare-fun m!1300193 () Bool)

(assert (=> d!151853 m!1300193))

(assert (=> d!151853 m!1300011))

(assert (=> d!151853 m!1300013))

(assert (=> d!151853 m!1300023))

(assert (=> b!1410274 d!151853))

(declare-fun b!1410507 () Bool)

(declare-fun lt!621185 () SeekEntryResult!10853)

(assert (=> b!1410507 (and (bvsge (index!45790 lt!621185) #b00000000000000000000000000000000) (bvslt (index!45790 lt!621185) (size!47071 (array!96369 (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47071 a!2901)))))))

(declare-fun res!947879 () Bool)

(assert (=> b!1410507 (= res!947879 (= (select (arr!46520 (array!96369 (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47071 a!2901))) (index!45790 lt!621185)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!798243 () Bool)

(assert (=> b!1410507 (=> res!947879 e!798243)))

(declare-fun e!798245 () SeekEntryResult!10853)

(declare-fun b!1410508 () Bool)

(assert (=> b!1410508 (= e!798245 (Intermediate!10853 false (toIndex!0 (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1410509 () Bool)

(declare-fun e!798244 () Bool)

(assert (=> b!1410509 (= e!798244 (bvsge (x!127389 lt!621185) #b01111111111111111111111111111110))))

(declare-fun b!1410510 () Bool)

(declare-fun e!798241 () Bool)

(assert (=> b!1410510 (= e!798244 e!798241)))

(declare-fun res!947877 () Bool)

(assert (=> b!1410510 (= res!947877 (and ((_ is Intermediate!10853) lt!621185) (not (undefined!11665 lt!621185)) (bvslt (x!127389 lt!621185) #b01111111111111111111111111111110) (bvsge (x!127389 lt!621185) #b00000000000000000000000000000000) (bvsge (x!127389 lt!621185) #b00000000000000000000000000000000)))))

(assert (=> b!1410510 (=> (not res!947877) (not e!798241))))

(declare-fun d!151881 () Bool)

(assert (=> d!151881 e!798244))

(declare-fun c!130790 () Bool)

(assert (=> d!151881 (= c!130790 (and ((_ is Intermediate!10853) lt!621185) (undefined!11665 lt!621185)))))

(declare-fun e!798242 () SeekEntryResult!10853)

(assert (=> d!151881 (= lt!621185 e!798242)))

(declare-fun c!130791 () Bool)

(assert (=> d!151881 (= c!130791 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!621184 () (_ BitVec 64))

(assert (=> d!151881 (= lt!621184 (select (arr!46520 (array!96369 (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47071 a!2901))) (toIndex!0 (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151881 (validMask!0 mask!2840)))

(assert (=> d!151881 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96369 (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47071 a!2901)) mask!2840) lt!621185)))

(declare-fun b!1410511 () Bool)

(assert (=> b!1410511 (= e!798242 e!798245)))

(declare-fun c!130789 () Bool)

(assert (=> b!1410511 (= c!130789 (or (= lt!621184 (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!621184 lt!621184) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1410512 () Bool)

(assert (=> b!1410512 (= e!798245 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96369 (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47071 a!2901)) mask!2840))))

(declare-fun b!1410513 () Bool)

(assert (=> b!1410513 (and (bvsge (index!45790 lt!621185) #b00000000000000000000000000000000) (bvslt (index!45790 lt!621185) (size!47071 (array!96369 (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47071 a!2901)))))))

(assert (=> b!1410513 (= e!798243 (= (select (arr!46520 (array!96369 (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47071 a!2901))) (index!45790 lt!621185)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1410514 () Bool)

(assert (=> b!1410514 (and (bvsge (index!45790 lt!621185) #b00000000000000000000000000000000) (bvslt (index!45790 lt!621185) (size!47071 (array!96369 (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47071 a!2901)))))))

(declare-fun res!947878 () Bool)

(assert (=> b!1410514 (= res!947878 (= (select (arr!46520 (array!96369 (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47071 a!2901))) (index!45790 lt!621185)) (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1410514 (=> res!947878 e!798243)))

(assert (=> b!1410514 (= e!798241 e!798243)))

(declare-fun b!1410515 () Bool)

(assert (=> b!1410515 (= e!798242 (Intermediate!10853 true (toIndex!0 (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!151881 c!130791) b!1410515))

(assert (= (and d!151881 (not c!130791)) b!1410511))

(assert (= (and b!1410511 c!130789) b!1410508))

(assert (= (and b!1410511 (not c!130789)) b!1410512))

(assert (= (and d!151881 c!130790) b!1410509))

(assert (= (and d!151881 (not c!130790)) b!1410510))

(assert (= (and b!1410510 res!947877) b!1410514))

(assert (= (and b!1410514 (not res!947878)) b!1410507))

(assert (= (and b!1410507 (not res!947879)) b!1410513))

(assert (=> b!1410512 m!1300033))

(declare-fun m!1300195 () Bool)

(assert (=> b!1410512 m!1300195))

(assert (=> b!1410512 m!1300195))

(assert (=> b!1410512 m!1300031))

(declare-fun m!1300197 () Bool)

(assert (=> b!1410512 m!1300197))

(declare-fun m!1300199 () Bool)

(assert (=> b!1410514 m!1300199))

(assert (=> d!151881 m!1300033))

(declare-fun m!1300201 () Bool)

(assert (=> d!151881 m!1300201))

(assert (=> d!151881 m!1300023))

(assert (=> b!1410507 m!1300199))

(assert (=> b!1410513 m!1300199))

(assert (=> b!1410273 d!151881))

(declare-fun d!151883 () Bool)

(declare-fun lt!621187 () (_ BitVec 32))

(declare-fun lt!621186 () (_ BitVec 32))

(assert (=> d!151883 (= lt!621187 (bvmul (bvxor lt!621186 (bvlshr lt!621186 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151883 (= lt!621186 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151883 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947846 (let ((h!34486 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127392 (bvmul (bvxor h!34486 (bvlshr h!34486 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127392 (bvlshr x!127392 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947846 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947846 #b00000000000000000000000000000000))))))

(assert (=> d!151883 (= (toIndex!0 (select (store (arr!46520 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!621187 (bvlshr lt!621187 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1410273 d!151883))

(declare-fun b!1410516 () Bool)

(declare-fun e!798247 () Bool)

(declare-fun call!67070 () Bool)

(assert (=> b!1410516 (= e!798247 call!67070)))

(declare-fun d!151885 () Bool)

(declare-fun res!947880 () Bool)

(declare-fun e!798246 () Bool)

(assert (=> d!151885 (=> res!947880 e!798246)))

(assert (=> d!151885 (= res!947880 (bvsge #b00000000000000000000000000000000 (size!47071 a!2901)))))

(assert (=> d!151885 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!798246)))

(declare-fun b!1410517 () Bool)

(declare-fun e!798248 () Bool)

(assert (=> b!1410517 (= e!798248 call!67070)))

(declare-fun b!1410518 () Bool)

(assert (=> b!1410518 (= e!798247 e!798248)))

(declare-fun lt!621188 () (_ BitVec 64))

(assert (=> b!1410518 (= lt!621188 (select (arr!46520 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!621189 () Unit!47630)

(assert (=> b!1410518 (= lt!621189 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!621188 #b00000000000000000000000000000000))))

(assert (=> b!1410518 (arrayContainsKey!0 a!2901 lt!621188 #b00000000000000000000000000000000)))

(declare-fun lt!621190 () Unit!47630)

(assert (=> b!1410518 (= lt!621190 lt!621189)))

(declare-fun res!947881 () Bool)

(assert (=> b!1410518 (= res!947881 (= (seekEntryOrOpen!0 (select (arr!46520 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10853 #b00000000000000000000000000000000)))))

(assert (=> b!1410518 (=> (not res!947881) (not e!798248))))

(declare-fun b!1410519 () Bool)

(assert (=> b!1410519 (= e!798246 e!798247)))

(declare-fun c!130792 () Bool)

(assert (=> b!1410519 (= c!130792 (validKeyInArray!0 (select (arr!46520 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67067 () Bool)

(assert (=> bm!67067 (= call!67070 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!151885 (not res!947880)) b!1410519))

(assert (= (and b!1410519 c!130792) b!1410518))

(assert (= (and b!1410519 (not c!130792)) b!1410516))

(assert (= (and b!1410518 res!947881) b!1410517))

(assert (= (or b!1410517 b!1410516) bm!67067))

(assert (=> b!1410518 m!1300079))

(declare-fun m!1300203 () Bool)

(assert (=> b!1410518 m!1300203))

(declare-fun m!1300205 () Bool)

(assert (=> b!1410518 m!1300205))

(assert (=> b!1410518 m!1300079))

(declare-fun m!1300207 () Bool)

(assert (=> b!1410518 m!1300207))

(assert (=> b!1410519 m!1300079))

(assert (=> b!1410519 m!1300079))

(assert (=> b!1410519 m!1300083))

(declare-fun m!1300209 () Bool)

(assert (=> bm!67067 m!1300209))

(assert (=> b!1410272 d!151885))

(declare-fun d!151887 () Bool)

(assert (=> d!151887 (= (validKeyInArray!0 (select (arr!46520 a!2901) i!1037)) (and (not (= (select (arr!46520 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46520 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1410277 d!151887))

(check-sat (not d!151829) (not b!1410313) (not bm!67053) (not b!1410512) (not b!1410343) (not b!1410502) (not b!1410342) (not d!151853) (not bm!67067) (not b!1410312) (not d!151881) (not b!1410403) (not d!151827) (not b!1410316) (not b!1410519) (not b!1410518) (not bm!67059))
(check-sat)
