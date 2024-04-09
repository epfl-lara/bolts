; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51124 () Bool)

(assert start!51124)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!558424 () Bool)

(declare-datatypes ((array!35132 0))(
  ( (array!35133 (arr!16867 (Array (_ BitVec 32) (_ BitVec 64))) (size!17231 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35132)

(declare-datatypes ((SeekEntryResult!5323 0))(
  ( (MissingZero!5323 (index!23519 (_ BitVec 32))) (Found!5323 (index!23520 (_ BitVec 32))) (Intermediate!5323 (undefined!6135 Bool) (index!23521 (_ BitVec 32)) (x!52442 (_ BitVec 32))) (Undefined!5323) (MissingVacant!5323 (index!23522 (_ BitVec 32))) )
))
(declare-fun lt!253836 () SeekEntryResult!5323)

(declare-fun e!321692 () Bool)

(get-info :version)

(assert (=> b!558424 (= e!321692 (not (or (undefined!6135 lt!253836) (not ((_ is Intermediate!5323) lt!253836)) (= (select (arr!16867 a!3118) (index!23521 lt!253836)) (select (arr!16867 a!3118) j!142)) (= (select (arr!16867 a!3118) (index!23521 lt!253836)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (and (bvsge (index!23521 lt!253836) #b00000000000000000000000000000000) (bvslt (index!23521 lt!253836) (bvadd #b00000000000000000000000000000001 mask!3119))))))))

(declare-fun e!321694 () Bool)

(assert (=> b!558424 e!321694))

(declare-fun res!350446 () Bool)

(assert (=> b!558424 (=> (not res!350446) (not e!321694))))

(declare-fun lt!253841 () SeekEntryResult!5323)

(assert (=> b!558424 (= res!350446 (= lt!253841 (Found!5323 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35132 (_ BitVec 32)) SeekEntryResult!5323)

(assert (=> b!558424 (= lt!253841 (seekEntryOrOpen!0 (select (arr!16867 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35132 (_ BitVec 32)) Bool)

(assert (=> b!558424 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17420 0))(
  ( (Unit!17421) )
))
(declare-fun lt!253840 () Unit!17420)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35132 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17420)

(assert (=> b!558424 (= lt!253840 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558425 () Bool)

(declare-fun res!350442 () Bool)

(declare-fun e!321691 () Bool)

(assert (=> b!558425 (=> (not res!350442) (not e!321691))))

(assert (=> b!558425 (= res!350442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!558426 () Bool)

(declare-fun res!350441 () Bool)

(declare-fun e!321690 () Bool)

(assert (=> b!558426 (=> (not res!350441) (not e!321690))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558426 (= res!350441 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!558427 () Bool)

(declare-fun e!321689 () Bool)

(assert (=> b!558427 (= e!321694 e!321689)))

(declare-fun res!350440 () Bool)

(assert (=> b!558427 (=> res!350440 e!321689)))

(assert (=> b!558427 (= res!350440 (or (undefined!6135 lt!253836) (not ((_ is Intermediate!5323) lt!253836)) (= (select (arr!16867 a!3118) (index!23521 lt!253836)) (select (arr!16867 a!3118) j!142)) (= (select (arr!16867 a!3118) (index!23521 lt!253836)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558428 () Bool)

(declare-fun res!350437 () Bool)

(assert (=> b!558428 (=> (not res!350437) (not e!321691))))

(declare-datatypes ((List!11000 0))(
  ( (Nil!10997) (Cons!10996 (h!11990 (_ BitVec 64)) (t!17236 List!11000)) )
))
(declare-fun arrayNoDuplicates!0 (array!35132 (_ BitVec 32) List!11000) Bool)

(assert (=> b!558428 (= res!350437 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10997))))

(declare-fun b!558429 () Bool)

(assert (=> b!558429 (= e!321691 e!321692)))

(declare-fun res!350445 () Bool)

(assert (=> b!558429 (=> (not res!350445) (not e!321692))))

(declare-fun lt!253838 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35132 (_ BitVec 32)) SeekEntryResult!5323)

(assert (=> b!558429 (= res!350445 (= lt!253836 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253838 (select (store (arr!16867 a!3118) i!1132 k0!1914) j!142) (array!35133 (store (arr!16867 a!3118) i!1132 k0!1914) (size!17231 a!3118)) mask!3119)))))

(declare-fun lt!253839 () (_ BitVec 32))

(assert (=> b!558429 (= lt!253836 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253839 (select (arr!16867 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558429 (= lt!253838 (toIndex!0 (select (store (arr!16867 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!558429 (= lt!253839 (toIndex!0 (select (arr!16867 a!3118) j!142) mask!3119))))

(declare-fun b!558430 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35132 (_ BitVec 32)) SeekEntryResult!5323)

(assert (=> b!558430 (= e!321689 (= lt!253841 (seekKeyOrZeroReturnVacant!0 (x!52442 lt!253836) (index!23521 lt!253836) (index!23521 lt!253836) (select (arr!16867 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!558431 () Bool)

(declare-fun res!350438 () Bool)

(assert (=> b!558431 (=> (not res!350438) (not e!321690))))

(assert (=> b!558431 (= res!350438 (and (= (size!17231 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17231 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17231 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!558432 () Bool)

(declare-fun res!350439 () Bool)

(assert (=> b!558432 (=> (not res!350439) (not e!321690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558432 (= res!350439 (validKeyInArray!0 (select (arr!16867 a!3118) j!142)))))

(declare-fun res!350447 () Bool)

(assert (=> start!51124 (=> (not res!350447) (not e!321690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51124 (= res!350447 (validMask!0 mask!3119))))

(assert (=> start!51124 e!321690))

(assert (=> start!51124 true))

(declare-fun array_inv!12641 (array!35132) Bool)

(assert (=> start!51124 (array_inv!12641 a!3118)))

(declare-fun b!558433 () Bool)

(assert (=> b!558433 (= e!321690 e!321691)))

(declare-fun res!350444 () Bool)

(assert (=> b!558433 (=> (not res!350444) (not e!321691))))

(declare-fun lt!253837 () SeekEntryResult!5323)

(assert (=> b!558433 (= res!350444 (or (= lt!253837 (MissingZero!5323 i!1132)) (= lt!253837 (MissingVacant!5323 i!1132))))))

(assert (=> b!558433 (= lt!253837 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!558434 () Bool)

(declare-fun res!350443 () Bool)

(assert (=> b!558434 (=> (not res!350443) (not e!321690))))

(assert (=> b!558434 (= res!350443 (validKeyInArray!0 k0!1914))))

(assert (= (and start!51124 res!350447) b!558431))

(assert (= (and b!558431 res!350438) b!558432))

(assert (= (and b!558432 res!350439) b!558434))

(assert (= (and b!558434 res!350443) b!558426))

(assert (= (and b!558426 res!350441) b!558433))

(assert (= (and b!558433 res!350444) b!558425))

(assert (= (and b!558425 res!350442) b!558428))

(assert (= (and b!558428 res!350437) b!558429))

(assert (= (and b!558429 res!350445) b!558424))

(assert (= (and b!558424 res!350446) b!558427))

(assert (= (and b!558427 (not res!350440)) b!558430))

(declare-fun m!536477 () Bool)

(assert (=> b!558426 m!536477))

(declare-fun m!536479 () Bool)

(assert (=> b!558433 m!536479))

(declare-fun m!536481 () Bool)

(assert (=> b!558427 m!536481))

(declare-fun m!536483 () Bool)

(assert (=> b!558427 m!536483))

(declare-fun m!536485 () Bool)

(assert (=> start!51124 m!536485))

(declare-fun m!536487 () Bool)

(assert (=> start!51124 m!536487))

(assert (=> b!558432 m!536483))

(assert (=> b!558432 m!536483))

(declare-fun m!536489 () Bool)

(assert (=> b!558432 m!536489))

(assert (=> b!558429 m!536483))

(declare-fun m!536491 () Bool)

(assert (=> b!558429 m!536491))

(assert (=> b!558429 m!536483))

(declare-fun m!536493 () Bool)

(assert (=> b!558429 m!536493))

(declare-fun m!536495 () Bool)

(assert (=> b!558429 m!536495))

(assert (=> b!558429 m!536483))

(declare-fun m!536497 () Bool)

(assert (=> b!558429 m!536497))

(assert (=> b!558429 m!536493))

(declare-fun m!536499 () Bool)

(assert (=> b!558429 m!536499))

(assert (=> b!558429 m!536493))

(declare-fun m!536501 () Bool)

(assert (=> b!558429 m!536501))

(declare-fun m!536503 () Bool)

(assert (=> b!558434 m!536503))

(declare-fun m!536505 () Bool)

(assert (=> b!558425 m!536505))

(assert (=> b!558424 m!536481))

(assert (=> b!558424 m!536483))

(declare-fun m!536507 () Bool)

(assert (=> b!558424 m!536507))

(declare-fun m!536509 () Bool)

(assert (=> b!558424 m!536509))

(assert (=> b!558424 m!536483))

(declare-fun m!536511 () Bool)

(assert (=> b!558424 m!536511))

(declare-fun m!536513 () Bool)

(assert (=> b!558428 m!536513))

(assert (=> b!558430 m!536483))

(assert (=> b!558430 m!536483))

(declare-fun m!536515 () Bool)

(assert (=> b!558430 m!536515))

(check-sat (not b!558428) (not b!558426) (not b!558433) (not start!51124) (not b!558425) (not b!558430) (not b!558424) (not b!558434) (not b!558432) (not b!558429))
(check-sat)
(get-model)

(declare-fun b!558476 () Bool)

(declare-fun e!321720 () Bool)

(declare-fun e!321719 () Bool)

(assert (=> b!558476 (= e!321720 e!321719)))

(declare-fun lt!253868 () (_ BitVec 64))

(assert (=> b!558476 (= lt!253868 (select (arr!16867 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!253867 () Unit!17420)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35132 (_ BitVec 64) (_ BitVec 32)) Unit!17420)

(assert (=> b!558476 (= lt!253867 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253868 #b00000000000000000000000000000000))))

(assert (=> b!558476 (arrayContainsKey!0 a!3118 lt!253868 #b00000000000000000000000000000000)))

(declare-fun lt!253866 () Unit!17420)

(assert (=> b!558476 (= lt!253866 lt!253867)))

(declare-fun res!350486 () Bool)

(assert (=> b!558476 (= res!350486 (= (seekEntryOrOpen!0 (select (arr!16867 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5323 #b00000000000000000000000000000000)))))

(assert (=> b!558476 (=> (not res!350486) (not e!321719))))

(declare-fun b!558477 () Bool)

(declare-fun call!32393 () Bool)

(assert (=> b!558477 (= e!321720 call!32393)))

(declare-fun bm!32390 () Bool)

(assert (=> bm!32390 (= call!32393 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!558479 () Bool)

(declare-fun e!321721 () Bool)

(assert (=> b!558479 (= e!321721 e!321720)))

(declare-fun c!64337 () Bool)

(assert (=> b!558479 (= c!64337 (validKeyInArray!0 (select (arr!16867 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!558478 () Bool)

(assert (=> b!558478 (= e!321719 call!32393)))

(declare-fun d!83469 () Bool)

(declare-fun res!350485 () Bool)

(assert (=> d!83469 (=> res!350485 e!321721)))

(assert (=> d!83469 (= res!350485 (bvsge #b00000000000000000000000000000000 (size!17231 a!3118)))))

(assert (=> d!83469 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!321721)))

(assert (= (and d!83469 (not res!350485)) b!558479))

(assert (= (and b!558479 c!64337) b!558476))

(assert (= (and b!558479 (not c!64337)) b!558477))

(assert (= (and b!558476 res!350486) b!558478))

(assert (= (or b!558478 b!558477) bm!32390))

(declare-fun m!536557 () Bool)

(assert (=> b!558476 m!536557))

(declare-fun m!536559 () Bool)

(assert (=> b!558476 m!536559))

(declare-fun m!536561 () Bool)

(assert (=> b!558476 m!536561))

(assert (=> b!558476 m!536557))

(declare-fun m!536563 () Bool)

(assert (=> b!558476 m!536563))

(declare-fun m!536565 () Bool)

(assert (=> bm!32390 m!536565))

(assert (=> b!558479 m!536557))

(assert (=> b!558479 m!536557))

(declare-fun m!536567 () Bool)

(assert (=> b!558479 m!536567))

(assert (=> b!558425 d!83469))

(declare-fun b!558492 () Bool)

(declare-fun e!321729 () SeekEntryResult!5323)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558492 (= e!321729 (seekKeyOrZeroReturnVacant!0 (bvadd (x!52442 lt!253836) #b00000000000000000000000000000001) (nextIndex!0 (index!23521 lt!253836) (x!52442 lt!253836) mask!3119) (index!23521 lt!253836) (select (arr!16867 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!83471 () Bool)

(declare-fun lt!253874 () SeekEntryResult!5323)

(assert (=> d!83471 (and (or ((_ is Undefined!5323) lt!253874) (not ((_ is Found!5323) lt!253874)) (and (bvsge (index!23520 lt!253874) #b00000000000000000000000000000000) (bvslt (index!23520 lt!253874) (size!17231 a!3118)))) (or ((_ is Undefined!5323) lt!253874) ((_ is Found!5323) lt!253874) (not ((_ is MissingVacant!5323) lt!253874)) (not (= (index!23522 lt!253874) (index!23521 lt!253836))) (and (bvsge (index!23522 lt!253874) #b00000000000000000000000000000000) (bvslt (index!23522 lt!253874) (size!17231 a!3118)))) (or ((_ is Undefined!5323) lt!253874) (ite ((_ is Found!5323) lt!253874) (= (select (arr!16867 a!3118) (index!23520 lt!253874)) (select (arr!16867 a!3118) j!142)) (and ((_ is MissingVacant!5323) lt!253874) (= (index!23522 lt!253874) (index!23521 lt!253836)) (= (select (arr!16867 a!3118) (index!23522 lt!253874)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!321730 () SeekEntryResult!5323)

(assert (=> d!83471 (= lt!253874 e!321730)))

(declare-fun c!64346 () Bool)

(assert (=> d!83471 (= c!64346 (bvsge (x!52442 lt!253836) #b01111111111111111111111111111110))))

(declare-fun lt!253873 () (_ BitVec 64))

(assert (=> d!83471 (= lt!253873 (select (arr!16867 a!3118) (index!23521 lt!253836)))))

(assert (=> d!83471 (validMask!0 mask!3119)))

(assert (=> d!83471 (= (seekKeyOrZeroReturnVacant!0 (x!52442 lt!253836) (index!23521 lt!253836) (index!23521 lt!253836) (select (arr!16867 a!3118) j!142) a!3118 mask!3119) lt!253874)))

(declare-fun b!558493 () Bool)

(declare-fun c!64345 () Bool)

(assert (=> b!558493 (= c!64345 (= lt!253873 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!321728 () SeekEntryResult!5323)

(assert (=> b!558493 (= e!321728 e!321729)))

(declare-fun b!558494 () Bool)

(assert (=> b!558494 (= e!321728 (Found!5323 (index!23521 lt!253836)))))

(declare-fun b!558495 () Bool)

(assert (=> b!558495 (= e!321730 e!321728)))

(declare-fun c!64344 () Bool)

(assert (=> b!558495 (= c!64344 (= lt!253873 (select (arr!16867 a!3118) j!142)))))

(declare-fun b!558496 () Bool)

(assert (=> b!558496 (= e!321729 (MissingVacant!5323 (index!23521 lt!253836)))))

(declare-fun b!558497 () Bool)

(assert (=> b!558497 (= e!321730 Undefined!5323)))

(assert (= (and d!83471 c!64346) b!558497))

(assert (= (and d!83471 (not c!64346)) b!558495))

(assert (= (and b!558495 c!64344) b!558494))

(assert (= (and b!558495 (not c!64344)) b!558493))

(assert (= (and b!558493 c!64345) b!558496))

(assert (= (and b!558493 (not c!64345)) b!558492))

(declare-fun m!536569 () Bool)

(assert (=> b!558492 m!536569))

(assert (=> b!558492 m!536569))

(assert (=> b!558492 m!536483))

(declare-fun m!536571 () Bool)

(assert (=> b!558492 m!536571))

(declare-fun m!536573 () Bool)

(assert (=> d!83471 m!536573))

(declare-fun m!536575 () Bool)

(assert (=> d!83471 m!536575))

(assert (=> d!83471 m!536481))

(assert (=> d!83471 m!536485))

(assert (=> b!558430 d!83471))

(declare-fun e!321757 () SeekEntryResult!5323)

(declare-fun lt!253895 () SeekEntryResult!5323)

(declare-fun b!558546 () Bool)

(assert (=> b!558546 (= e!321757 (seekKeyOrZeroReturnVacant!0 (x!52442 lt!253895) (index!23521 lt!253895) (index!23521 lt!253895) (select (arr!16867 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!558547 () Bool)

(declare-fun e!321755 () SeekEntryResult!5323)

(declare-fun e!321756 () SeekEntryResult!5323)

(assert (=> b!558547 (= e!321755 e!321756)))

(declare-fun lt!253893 () (_ BitVec 64))

(assert (=> b!558547 (= lt!253893 (select (arr!16867 a!3118) (index!23521 lt!253895)))))

(declare-fun c!64371 () Bool)

(assert (=> b!558547 (= c!64371 (= lt!253893 (select (arr!16867 a!3118) j!142)))))

(declare-fun b!558548 () Bool)

(assert (=> b!558548 (= e!321756 (Found!5323 (index!23521 lt!253895)))))

(declare-fun b!558549 () Bool)

(assert (=> b!558549 (= e!321757 (MissingZero!5323 (index!23521 lt!253895)))))

(declare-fun d!83477 () Bool)

(declare-fun lt!253894 () SeekEntryResult!5323)

(assert (=> d!83477 (and (or ((_ is Undefined!5323) lt!253894) (not ((_ is Found!5323) lt!253894)) (and (bvsge (index!23520 lt!253894) #b00000000000000000000000000000000) (bvslt (index!23520 lt!253894) (size!17231 a!3118)))) (or ((_ is Undefined!5323) lt!253894) ((_ is Found!5323) lt!253894) (not ((_ is MissingZero!5323) lt!253894)) (and (bvsge (index!23519 lt!253894) #b00000000000000000000000000000000) (bvslt (index!23519 lt!253894) (size!17231 a!3118)))) (or ((_ is Undefined!5323) lt!253894) ((_ is Found!5323) lt!253894) ((_ is MissingZero!5323) lt!253894) (not ((_ is MissingVacant!5323) lt!253894)) (and (bvsge (index!23522 lt!253894) #b00000000000000000000000000000000) (bvslt (index!23522 lt!253894) (size!17231 a!3118)))) (or ((_ is Undefined!5323) lt!253894) (ite ((_ is Found!5323) lt!253894) (= (select (arr!16867 a!3118) (index!23520 lt!253894)) (select (arr!16867 a!3118) j!142)) (ite ((_ is MissingZero!5323) lt!253894) (= (select (arr!16867 a!3118) (index!23519 lt!253894)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5323) lt!253894) (= (select (arr!16867 a!3118) (index!23522 lt!253894)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83477 (= lt!253894 e!321755)))

(declare-fun c!64372 () Bool)

(assert (=> d!83477 (= c!64372 (and ((_ is Intermediate!5323) lt!253895) (undefined!6135 lt!253895)))))

(assert (=> d!83477 (= lt!253895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16867 a!3118) j!142) mask!3119) (select (arr!16867 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83477 (validMask!0 mask!3119)))

(assert (=> d!83477 (= (seekEntryOrOpen!0 (select (arr!16867 a!3118) j!142) a!3118 mask!3119) lt!253894)))

(declare-fun b!558550 () Bool)

(declare-fun c!64373 () Bool)

(assert (=> b!558550 (= c!64373 (= lt!253893 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558550 (= e!321756 e!321757)))

(declare-fun b!558551 () Bool)

(assert (=> b!558551 (= e!321755 Undefined!5323)))

(assert (= (and d!83477 c!64372) b!558551))

(assert (= (and d!83477 (not c!64372)) b!558547))

(assert (= (and b!558547 c!64371) b!558548))

(assert (= (and b!558547 (not c!64371)) b!558550))

(assert (= (and b!558550 c!64373) b!558549))

(assert (= (and b!558550 (not c!64373)) b!558546))

(assert (=> b!558546 m!536483))

(declare-fun m!536593 () Bool)

(assert (=> b!558546 m!536593))

(declare-fun m!536595 () Bool)

(assert (=> b!558547 m!536595))

(declare-fun m!536597 () Bool)

(assert (=> d!83477 m!536597))

(assert (=> d!83477 m!536485))

(assert (=> d!83477 m!536483))

(assert (=> d!83477 m!536491))

(declare-fun m!536599 () Bool)

(assert (=> d!83477 m!536599))

(assert (=> d!83477 m!536491))

(assert (=> d!83477 m!536483))

(declare-fun m!536601 () Bool)

(assert (=> d!83477 m!536601))

(declare-fun m!536603 () Bool)

(assert (=> d!83477 m!536603))

(assert (=> b!558424 d!83477))

(declare-fun b!558552 () Bool)

(declare-fun e!321759 () Bool)

(declare-fun e!321758 () Bool)

(assert (=> b!558552 (= e!321759 e!321758)))

(declare-fun lt!253898 () (_ BitVec 64))

(assert (=> b!558552 (= lt!253898 (select (arr!16867 a!3118) j!142))))

(declare-fun lt!253897 () Unit!17420)

(assert (=> b!558552 (= lt!253897 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253898 j!142))))

(assert (=> b!558552 (arrayContainsKey!0 a!3118 lt!253898 #b00000000000000000000000000000000)))

(declare-fun lt!253896 () Unit!17420)

(assert (=> b!558552 (= lt!253896 lt!253897)))

(declare-fun res!350488 () Bool)

(assert (=> b!558552 (= res!350488 (= (seekEntryOrOpen!0 (select (arr!16867 a!3118) j!142) a!3118 mask!3119) (Found!5323 j!142)))))

(assert (=> b!558552 (=> (not res!350488) (not e!321758))))

(declare-fun b!558553 () Bool)

(declare-fun call!32394 () Bool)

(assert (=> b!558553 (= e!321759 call!32394)))

(declare-fun bm!32391 () Bool)

(assert (=> bm!32391 (= call!32394 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!558555 () Bool)

(declare-fun e!321760 () Bool)

(assert (=> b!558555 (= e!321760 e!321759)))

(declare-fun c!64374 () Bool)

(assert (=> b!558555 (= c!64374 (validKeyInArray!0 (select (arr!16867 a!3118) j!142)))))

(declare-fun b!558554 () Bool)

(assert (=> b!558554 (= e!321758 call!32394)))

(declare-fun d!83485 () Bool)

(declare-fun res!350487 () Bool)

(assert (=> d!83485 (=> res!350487 e!321760)))

(assert (=> d!83485 (= res!350487 (bvsge j!142 (size!17231 a!3118)))))

(assert (=> d!83485 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!321760)))

(assert (= (and d!83485 (not res!350487)) b!558555))

(assert (= (and b!558555 c!64374) b!558552))

(assert (= (and b!558555 (not c!64374)) b!558553))

(assert (= (and b!558552 res!350488) b!558554))

(assert (= (or b!558554 b!558553) bm!32391))

(assert (=> b!558552 m!536483))

(declare-fun m!536605 () Bool)

(assert (=> b!558552 m!536605))

(declare-fun m!536607 () Bool)

(assert (=> b!558552 m!536607))

(assert (=> b!558552 m!536483))

(assert (=> b!558552 m!536511))

(declare-fun m!536609 () Bool)

(assert (=> bm!32391 m!536609))

(assert (=> b!558555 m!536483))

(assert (=> b!558555 m!536483))

(assert (=> b!558555 m!536489))

(assert (=> b!558424 d!83485))

(declare-fun d!83487 () Bool)

(assert (=> d!83487 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!253907 () Unit!17420)

(declare-fun choose!38 (array!35132 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17420)

(assert (=> d!83487 (= lt!253907 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83487 (validMask!0 mask!3119)))

(assert (=> d!83487 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!253907)))

(declare-fun bs!17382 () Bool)

(assert (= bs!17382 d!83487))

(assert (=> bs!17382 m!536507))

(declare-fun m!536611 () Bool)

(assert (=> bs!17382 m!536611))

(assert (=> bs!17382 m!536485))

(assert (=> b!558424 d!83487))

(declare-fun b!558638 () Bool)

(declare-fun lt!253942 () SeekEntryResult!5323)

(assert (=> b!558638 (and (bvsge (index!23521 lt!253942) #b00000000000000000000000000000000) (bvslt (index!23521 lt!253942) (size!17231 (array!35133 (store (arr!16867 a!3118) i!1132 k0!1914) (size!17231 a!3118)))))))

(declare-fun res!350510 () Bool)

(assert (=> b!558638 (= res!350510 (= (select (arr!16867 (array!35133 (store (arr!16867 a!3118) i!1132 k0!1914) (size!17231 a!3118))) (index!23521 lt!253942)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!321811 () Bool)

(assert (=> b!558638 (=> res!350510 e!321811)))

(declare-fun b!558639 () Bool)

(assert (=> b!558639 (and (bvsge (index!23521 lt!253942) #b00000000000000000000000000000000) (bvslt (index!23521 lt!253942) (size!17231 (array!35133 (store (arr!16867 a!3118) i!1132 k0!1914) (size!17231 a!3118)))))))

(declare-fun res!350509 () Bool)

(assert (=> b!558639 (= res!350509 (= (select (arr!16867 (array!35133 (store (arr!16867 a!3118) i!1132 k0!1914) (size!17231 a!3118))) (index!23521 lt!253942)) (select (store (arr!16867 a!3118) i!1132 k0!1914) j!142)))))

(assert (=> b!558639 (=> res!350509 e!321811)))

(declare-fun e!321814 () Bool)

(assert (=> b!558639 (= e!321814 e!321811)))

(declare-fun b!558640 () Bool)

(declare-fun e!321813 () Bool)

(assert (=> b!558640 (= e!321813 (bvsge (x!52442 lt!253942) #b01111111111111111111111111111110))))

(declare-fun b!558641 () Bool)

(declare-fun e!321810 () SeekEntryResult!5323)

(declare-fun e!321812 () SeekEntryResult!5323)

(assert (=> b!558641 (= e!321810 e!321812)))

(declare-fun lt!253941 () (_ BitVec 64))

(declare-fun c!64407 () Bool)

(assert (=> b!558641 (= c!64407 (or (= lt!253941 (select (store (arr!16867 a!3118) i!1132 k0!1914) j!142)) (= (bvadd lt!253941 lt!253941) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!83489 () Bool)

(assert (=> d!83489 e!321813))

(declare-fun c!64406 () Bool)

(assert (=> d!83489 (= c!64406 (and ((_ is Intermediate!5323) lt!253942) (undefined!6135 lt!253942)))))

(assert (=> d!83489 (= lt!253942 e!321810)))

(declare-fun c!64408 () Bool)

(assert (=> d!83489 (= c!64408 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83489 (= lt!253941 (select (arr!16867 (array!35133 (store (arr!16867 a!3118) i!1132 k0!1914) (size!17231 a!3118))) lt!253838))))

(assert (=> d!83489 (validMask!0 mask!3119)))

(assert (=> d!83489 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253838 (select (store (arr!16867 a!3118) i!1132 k0!1914) j!142) (array!35133 (store (arr!16867 a!3118) i!1132 k0!1914) (size!17231 a!3118)) mask!3119) lt!253942)))

(declare-fun b!558642 () Bool)

(assert (=> b!558642 (= e!321812 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253838 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16867 a!3118) i!1132 k0!1914) j!142) (array!35133 (store (arr!16867 a!3118) i!1132 k0!1914) (size!17231 a!3118)) mask!3119))))

(declare-fun b!558643 () Bool)

(assert (=> b!558643 (and (bvsge (index!23521 lt!253942) #b00000000000000000000000000000000) (bvslt (index!23521 lt!253942) (size!17231 (array!35133 (store (arr!16867 a!3118) i!1132 k0!1914) (size!17231 a!3118)))))))

(assert (=> b!558643 (= e!321811 (= (select (arr!16867 (array!35133 (store (arr!16867 a!3118) i!1132 k0!1914) (size!17231 a!3118))) (index!23521 lt!253942)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!558644 () Bool)

(assert (=> b!558644 (= e!321810 (Intermediate!5323 true lt!253838 #b00000000000000000000000000000000))))

(declare-fun b!558645 () Bool)

(assert (=> b!558645 (= e!321812 (Intermediate!5323 false lt!253838 #b00000000000000000000000000000000))))

(declare-fun b!558646 () Bool)

(assert (=> b!558646 (= e!321813 e!321814)))

(declare-fun res!350511 () Bool)

(assert (=> b!558646 (= res!350511 (and ((_ is Intermediate!5323) lt!253942) (not (undefined!6135 lt!253942)) (bvslt (x!52442 lt!253942) #b01111111111111111111111111111110) (bvsge (x!52442 lt!253942) #b00000000000000000000000000000000) (bvsge (x!52442 lt!253942) #b00000000000000000000000000000000)))))

(assert (=> b!558646 (=> (not res!350511) (not e!321814))))

(assert (= (and d!83489 c!64408) b!558644))

(assert (= (and d!83489 (not c!64408)) b!558641))

(assert (= (and b!558641 c!64407) b!558645))

(assert (= (and b!558641 (not c!64407)) b!558642))

(assert (= (and d!83489 c!64406) b!558640))

(assert (= (and d!83489 (not c!64406)) b!558646))

(assert (= (and b!558646 res!350511) b!558639))

(assert (= (and b!558639 (not res!350509)) b!558638))

(assert (= (and b!558638 (not res!350510)) b!558643))

(declare-fun m!536675 () Bool)

(assert (=> b!558643 m!536675))

(assert (=> b!558639 m!536675))

(declare-fun m!536677 () Bool)

(assert (=> b!558642 m!536677))

(assert (=> b!558642 m!536677))

(assert (=> b!558642 m!536493))

(declare-fun m!536679 () Bool)

(assert (=> b!558642 m!536679))

(assert (=> b!558638 m!536675))

(declare-fun m!536681 () Bool)

(assert (=> d!83489 m!536681))

(assert (=> d!83489 m!536485))

(assert (=> b!558429 d!83489))

(declare-fun b!558647 () Bool)

(declare-fun lt!253945 () SeekEntryResult!5323)

(assert (=> b!558647 (and (bvsge (index!23521 lt!253945) #b00000000000000000000000000000000) (bvslt (index!23521 lt!253945) (size!17231 a!3118)))))

(declare-fun res!350513 () Bool)

(assert (=> b!558647 (= res!350513 (= (select (arr!16867 a!3118) (index!23521 lt!253945)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!321816 () Bool)

(assert (=> b!558647 (=> res!350513 e!321816)))

(declare-fun b!558648 () Bool)

(assert (=> b!558648 (and (bvsge (index!23521 lt!253945) #b00000000000000000000000000000000) (bvslt (index!23521 lt!253945) (size!17231 a!3118)))))

(declare-fun res!350512 () Bool)

(assert (=> b!558648 (= res!350512 (= (select (arr!16867 a!3118) (index!23521 lt!253945)) (select (arr!16867 a!3118) j!142)))))

(assert (=> b!558648 (=> res!350512 e!321816)))

(declare-fun e!321819 () Bool)

(assert (=> b!558648 (= e!321819 e!321816)))

(declare-fun b!558649 () Bool)

(declare-fun e!321818 () Bool)

(assert (=> b!558649 (= e!321818 (bvsge (x!52442 lt!253945) #b01111111111111111111111111111110))))

(declare-fun b!558650 () Bool)

(declare-fun e!321815 () SeekEntryResult!5323)

(declare-fun e!321817 () SeekEntryResult!5323)

(assert (=> b!558650 (= e!321815 e!321817)))

(declare-fun c!64410 () Bool)

(declare-fun lt!253944 () (_ BitVec 64))

(assert (=> b!558650 (= c!64410 (or (= lt!253944 (select (arr!16867 a!3118) j!142)) (= (bvadd lt!253944 lt!253944) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!83507 () Bool)

(assert (=> d!83507 e!321818))

(declare-fun c!64409 () Bool)

(assert (=> d!83507 (= c!64409 (and ((_ is Intermediate!5323) lt!253945) (undefined!6135 lt!253945)))))

(assert (=> d!83507 (= lt!253945 e!321815)))

(declare-fun c!64411 () Bool)

(assert (=> d!83507 (= c!64411 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83507 (= lt!253944 (select (arr!16867 a!3118) lt!253839))))

(assert (=> d!83507 (validMask!0 mask!3119)))

(assert (=> d!83507 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253839 (select (arr!16867 a!3118) j!142) a!3118 mask!3119) lt!253945)))

(declare-fun b!558651 () Bool)

(assert (=> b!558651 (= e!321817 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253839 #b00000000000000000000000000000000 mask!3119) (select (arr!16867 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!558652 () Bool)

(assert (=> b!558652 (and (bvsge (index!23521 lt!253945) #b00000000000000000000000000000000) (bvslt (index!23521 lt!253945) (size!17231 a!3118)))))

(assert (=> b!558652 (= e!321816 (= (select (arr!16867 a!3118) (index!23521 lt!253945)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!558653 () Bool)

(assert (=> b!558653 (= e!321815 (Intermediate!5323 true lt!253839 #b00000000000000000000000000000000))))

(declare-fun b!558654 () Bool)

(assert (=> b!558654 (= e!321817 (Intermediate!5323 false lt!253839 #b00000000000000000000000000000000))))

(declare-fun b!558655 () Bool)

(assert (=> b!558655 (= e!321818 e!321819)))

(declare-fun res!350514 () Bool)

(assert (=> b!558655 (= res!350514 (and ((_ is Intermediate!5323) lt!253945) (not (undefined!6135 lt!253945)) (bvslt (x!52442 lt!253945) #b01111111111111111111111111111110) (bvsge (x!52442 lt!253945) #b00000000000000000000000000000000) (bvsge (x!52442 lt!253945) #b00000000000000000000000000000000)))))

(assert (=> b!558655 (=> (not res!350514) (not e!321819))))

(assert (= (and d!83507 c!64411) b!558653))

(assert (= (and d!83507 (not c!64411)) b!558650))

(assert (= (and b!558650 c!64410) b!558654))

(assert (= (and b!558650 (not c!64410)) b!558651))

(assert (= (and d!83507 c!64409) b!558649))

(assert (= (and d!83507 (not c!64409)) b!558655))

(assert (= (and b!558655 res!350514) b!558648))

(assert (= (and b!558648 (not res!350512)) b!558647))

(assert (= (and b!558647 (not res!350513)) b!558652))

(declare-fun m!536683 () Bool)

(assert (=> b!558652 m!536683))

(assert (=> b!558648 m!536683))

(declare-fun m!536685 () Bool)

(assert (=> b!558651 m!536685))

(assert (=> b!558651 m!536685))

(assert (=> b!558651 m!536483))

(declare-fun m!536687 () Bool)

(assert (=> b!558651 m!536687))

(assert (=> b!558647 m!536683))

(declare-fun m!536689 () Bool)

(assert (=> d!83507 m!536689))

(assert (=> d!83507 m!536485))

(assert (=> b!558429 d!83507))

(declare-fun d!83509 () Bool)

(declare-fun lt!253951 () (_ BitVec 32))

(declare-fun lt!253950 () (_ BitVec 32))

(assert (=> d!83509 (= lt!253951 (bvmul (bvxor lt!253950 (bvlshr lt!253950 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83509 (= lt!253950 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16867 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16867 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83509 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!350515 (let ((h!11992 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16867 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16867 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52448 (bvmul (bvxor h!11992 (bvlshr h!11992 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52448 (bvlshr x!52448 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!350515 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!350515 #b00000000000000000000000000000000))))))

(assert (=> d!83509 (= (toIndex!0 (select (store (arr!16867 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!253951 (bvlshr lt!253951 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!558429 d!83509))

(declare-fun d!83511 () Bool)

(declare-fun lt!253953 () (_ BitVec 32))

(declare-fun lt!253952 () (_ BitVec 32))

(assert (=> d!83511 (= lt!253953 (bvmul (bvxor lt!253952 (bvlshr lt!253952 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83511 (= lt!253952 ((_ extract 31 0) (bvand (bvxor (select (arr!16867 a!3118) j!142) (bvlshr (select (arr!16867 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83511 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!350515 (let ((h!11992 ((_ extract 31 0) (bvand (bvxor (select (arr!16867 a!3118) j!142) (bvlshr (select (arr!16867 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52448 (bvmul (bvxor h!11992 (bvlshr h!11992 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52448 (bvlshr x!52448 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!350515 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!350515 #b00000000000000000000000000000000))))))

(assert (=> d!83511 (= (toIndex!0 (select (arr!16867 a!3118) j!142) mask!3119) (bvand (bvxor lt!253953 (bvlshr lt!253953 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!558429 d!83511))

(declare-fun d!83513 () Bool)

(assert (=> d!83513 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!558434 d!83513))

(declare-fun b!558692 () Bool)

(declare-fun e!321842 () Bool)

(declare-fun e!321844 () Bool)

(assert (=> b!558692 (= e!321842 e!321844)))

(declare-fun c!64424 () Bool)

(assert (=> b!558692 (= c!64424 (validKeyInArray!0 (select (arr!16867 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83515 () Bool)

(declare-fun res!350528 () Bool)

(declare-fun e!321845 () Bool)

(assert (=> d!83515 (=> res!350528 e!321845)))

(assert (=> d!83515 (= res!350528 (bvsge #b00000000000000000000000000000000 (size!17231 a!3118)))))

(assert (=> d!83515 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10997) e!321845)))

(declare-fun b!558693 () Bool)

(declare-fun e!321843 () Bool)

(declare-fun contains!2857 (List!11000 (_ BitVec 64)) Bool)

(assert (=> b!558693 (= e!321843 (contains!2857 Nil!10997 (select (arr!16867 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!558694 () Bool)

(declare-fun call!32401 () Bool)

(assert (=> b!558694 (= e!321844 call!32401)))

(declare-fun bm!32398 () Bool)

(assert (=> bm!32398 (= call!32401 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64424 (Cons!10996 (select (arr!16867 a!3118) #b00000000000000000000000000000000) Nil!10997) Nil!10997)))))

(declare-fun b!558695 () Bool)

(assert (=> b!558695 (= e!321845 e!321842)))

(declare-fun res!350529 () Bool)

(assert (=> b!558695 (=> (not res!350529) (not e!321842))))

(assert (=> b!558695 (= res!350529 (not e!321843))))

(declare-fun res!350530 () Bool)

(assert (=> b!558695 (=> (not res!350530) (not e!321843))))

(assert (=> b!558695 (= res!350530 (validKeyInArray!0 (select (arr!16867 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!558696 () Bool)

(assert (=> b!558696 (= e!321844 call!32401)))

(assert (= (and d!83515 (not res!350528)) b!558695))

(assert (= (and b!558695 res!350530) b!558693))

(assert (= (and b!558695 res!350529) b!558692))

(assert (= (and b!558692 c!64424) b!558696))

(assert (= (and b!558692 (not c!64424)) b!558694))

(assert (= (or b!558696 b!558694) bm!32398))

(assert (=> b!558692 m!536557))

(assert (=> b!558692 m!536557))

(assert (=> b!558692 m!536567))

(assert (=> b!558693 m!536557))

(assert (=> b!558693 m!536557))

(declare-fun m!536691 () Bool)

(assert (=> b!558693 m!536691))

(assert (=> bm!32398 m!536557))

(declare-fun m!536693 () Bool)

(assert (=> bm!32398 m!536693))

(assert (=> b!558695 m!536557))

(assert (=> b!558695 m!536557))

(assert (=> b!558695 m!536567))

(assert (=> b!558428 d!83515))

(declare-fun d!83517 () Bool)

(assert (=> d!83517 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51124 d!83517))

(declare-fun d!83533 () Bool)

(assert (=> d!83533 (= (array_inv!12641 a!3118) (bvsge (size!17231 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51124 d!83533))

(declare-fun b!558749 () Bool)

(declare-fun e!321877 () SeekEntryResult!5323)

(declare-fun lt!253987 () SeekEntryResult!5323)

(assert (=> b!558749 (= e!321877 (seekKeyOrZeroReturnVacant!0 (x!52442 lt!253987) (index!23521 lt!253987) (index!23521 lt!253987) k0!1914 a!3118 mask!3119))))

(declare-fun b!558750 () Bool)

(declare-fun e!321875 () SeekEntryResult!5323)

(declare-fun e!321876 () SeekEntryResult!5323)

(assert (=> b!558750 (= e!321875 e!321876)))

(declare-fun lt!253985 () (_ BitVec 64))

(assert (=> b!558750 (= lt!253985 (select (arr!16867 a!3118) (index!23521 lt!253987)))))

(declare-fun c!64442 () Bool)

(assert (=> b!558750 (= c!64442 (= lt!253985 k0!1914))))

(declare-fun b!558751 () Bool)

(assert (=> b!558751 (= e!321876 (Found!5323 (index!23521 lt!253987)))))

(declare-fun b!558752 () Bool)

(assert (=> b!558752 (= e!321877 (MissingZero!5323 (index!23521 lt!253987)))))

(declare-fun d!83535 () Bool)

(declare-fun lt!253986 () SeekEntryResult!5323)

(assert (=> d!83535 (and (or ((_ is Undefined!5323) lt!253986) (not ((_ is Found!5323) lt!253986)) (and (bvsge (index!23520 lt!253986) #b00000000000000000000000000000000) (bvslt (index!23520 lt!253986) (size!17231 a!3118)))) (or ((_ is Undefined!5323) lt!253986) ((_ is Found!5323) lt!253986) (not ((_ is MissingZero!5323) lt!253986)) (and (bvsge (index!23519 lt!253986) #b00000000000000000000000000000000) (bvslt (index!23519 lt!253986) (size!17231 a!3118)))) (or ((_ is Undefined!5323) lt!253986) ((_ is Found!5323) lt!253986) ((_ is MissingZero!5323) lt!253986) (not ((_ is MissingVacant!5323) lt!253986)) (and (bvsge (index!23522 lt!253986) #b00000000000000000000000000000000) (bvslt (index!23522 lt!253986) (size!17231 a!3118)))) (or ((_ is Undefined!5323) lt!253986) (ite ((_ is Found!5323) lt!253986) (= (select (arr!16867 a!3118) (index!23520 lt!253986)) k0!1914) (ite ((_ is MissingZero!5323) lt!253986) (= (select (arr!16867 a!3118) (index!23519 lt!253986)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5323) lt!253986) (= (select (arr!16867 a!3118) (index!23522 lt!253986)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83535 (= lt!253986 e!321875)))

(declare-fun c!64443 () Bool)

(assert (=> d!83535 (= c!64443 (and ((_ is Intermediate!5323) lt!253987) (undefined!6135 lt!253987)))))

(assert (=> d!83535 (= lt!253987 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!83535 (validMask!0 mask!3119)))

(assert (=> d!83535 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!253986)))

(declare-fun b!558753 () Bool)

(declare-fun c!64444 () Bool)

(assert (=> b!558753 (= c!64444 (= lt!253985 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558753 (= e!321876 e!321877)))

(declare-fun b!558754 () Bool)

(assert (=> b!558754 (= e!321875 Undefined!5323)))

(assert (= (and d!83535 c!64443) b!558754))

(assert (= (and d!83535 (not c!64443)) b!558750))

(assert (= (and b!558750 c!64442) b!558751))

(assert (= (and b!558750 (not c!64442)) b!558753))

(assert (= (and b!558753 c!64444) b!558752))

(assert (= (and b!558753 (not c!64444)) b!558749))

(declare-fun m!536739 () Bool)

(assert (=> b!558749 m!536739))

(declare-fun m!536741 () Bool)

(assert (=> b!558750 m!536741))

(declare-fun m!536743 () Bool)

(assert (=> d!83535 m!536743))

(assert (=> d!83535 m!536485))

(declare-fun m!536745 () Bool)

(assert (=> d!83535 m!536745))

(declare-fun m!536747 () Bool)

(assert (=> d!83535 m!536747))

(assert (=> d!83535 m!536745))

(declare-fun m!536749 () Bool)

(assert (=> d!83535 m!536749))

(declare-fun m!536751 () Bool)

(assert (=> d!83535 m!536751))

(assert (=> b!558433 d!83535))

(declare-fun d!83539 () Bool)

(assert (=> d!83539 (= (validKeyInArray!0 (select (arr!16867 a!3118) j!142)) (and (not (= (select (arr!16867 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16867 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!558432 d!83539))

(declare-fun d!83541 () Bool)

(declare-fun res!350555 () Bool)

(declare-fun e!321882 () Bool)

(assert (=> d!83541 (=> res!350555 e!321882)))

(assert (=> d!83541 (= res!350555 (= (select (arr!16867 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!83541 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!321882)))

(declare-fun b!558759 () Bool)

(declare-fun e!321883 () Bool)

(assert (=> b!558759 (= e!321882 e!321883)))

(declare-fun res!350556 () Bool)

(assert (=> b!558759 (=> (not res!350556) (not e!321883))))

(assert (=> b!558759 (= res!350556 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17231 a!3118)))))

(declare-fun b!558760 () Bool)

(assert (=> b!558760 (= e!321883 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83541 (not res!350555)) b!558759))

(assert (= (and b!558759 res!350556) b!558760))

(assert (=> d!83541 m!536557))

(declare-fun m!536753 () Bool)

(assert (=> b!558760 m!536753))

(assert (=> b!558426 d!83541))

(check-sat (not b!558760) (not b!558692) (not b!558695) (not bm!32398) (not b!558651) (not d!83471) (not d!83535) (not b!558492) (not b!558479) (not b!558642) (not d!83477) (not bm!32391) (not b!558552) (not b!558693) (not bm!32390) (not b!558546) (not b!558749) (not b!558476) (not d!83507) (not d!83487) (not b!558555) (not d!83489))
(check-sat)
