; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122488 () Bool)

(assert start!122488)

(declare-fun b!1418754 () Bool)

(declare-fun res!954474 () Bool)

(declare-fun e!802828 () Bool)

(assert (=> b!1418754 (=> (not res!954474) (not e!802828))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!96849 0))(
  ( (array!96850 (arr!46741 (Array (_ BitVec 32) (_ BitVec 64))) (size!47292 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96849)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1418754 (= res!954474 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47292 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47292 a!2831))))))

(declare-fun b!1418755 () Bool)

(declare-fun res!954473 () Bool)

(assert (=> b!1418755 (=> (not res!954473) (not e!802828))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96849 (_ BitVec 32)) Bool)

(assert (=> b!1418755 (= res!954473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418756 () Bool)

(declare-fun res!954472 () Bool)

(assert (=> b!1418756 (=> (not res!954472) (not e!802828))))

(declare-datatypes ((List!33431 0))(
  ( (Nil!33428) (Cons!33427 (h!34723 (_ BitVec 64)) (t!48132 List!33431)) )
))
(declare-fun arrayNoDuplicates!0 (array!96849 (_ BitVec 32) List!33431) Bool)

(assert (=> b!1418756 (= res!954472 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33428))))

(declare-fun b!1418757 () Bool)

(declare-fun res!954476 () Bool)

(assert (=> b!1418757 (=> (not res!954476) (not e!802828))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418757 (= res!954476 (validKeyInArray!0 (select (arr!46741 a!2831) i!982)))))

(declare-fun b!1418758 () Bool)

(assert (=> b!1418758 (= e!802828 (and (bvsge mask!2608 #b00000000000000000000000000000000) (bvsgt mask!2608 #b00111111111111111111111111111111)))))

(declare-fun b!1418759 () Bool)

(declare-fun res!954470 () Bool)

(assert (=> b!1418759 (=> (not res!954470) (not e!802828))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11048 0))(
  ( (MissingZero!11048 (index!46583 (_ BitVec 32))) (Found!11048 (index!46584 (_ BitVec 32))) (Intermediate!11048 (undefined!11860 Bool) (index!46585 (_ BitVec 32)) (x!128257 (_ BitVec 32))) (Undefined!11048) (MissingVacant!11048 (index!46586 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96849 (_ BitVec 32)) SeekEntryResult!11048)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418759 (= res!954470 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46741 a!2831) j!81) mask!2608) (select (arr!46741 a!2831) j!81) a!2831 mask!2608) (Intermediate!11048 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun res!954477 () Bool)

(assert (=> start!122488 (=> (not res!954477) (not e!802828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122488 (= res!954477 (validMask!0 mask!2608))))

(assert (=> start!122488 e!802828))

(assert (=> start!122488 true))

(declare-fun array_inv!35686 (array!96849) Bool)

(assert (=> start!122488 (array_inv!35686 a!2831)))

(declare-fun b!1418760 () Bool)

(declare-fun res!954471 () Bool)

(assert (=> b!1418760 (=> (not res!954471) (not e!802828))))

(assert (=> b!1418760 (= res!954471 (validKeyInArray!0 (select (arr!46741 a!2831) j!81)))))

(declare-fun b!1418761 () Bool)

(declare-fun res!954475 () Bool)

(assert (=> b!1418761 (=> (not res!954475) (not e!802828))))

(assert (=> b!1418761 (= res!954475 (and (= (size!47292 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47292 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47292 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122488 res!954477) b!1418761))

(assert (= (and b!1418761 res!954475) b!1418757))

(assert (= (and b!1418757 res!954476) b!1418760))

(assert (= (and b!1418760 res!954471) b!1418755))

(assert (= (and b!1418755 res!954473) b!1418756))

(assert (= (and b!1418756 res!954472) b!1418754))

(assert (= (and b!1418754 res!954474) b!1418759))

(assert (= (and b!1418759 res!954470) b!1418758))

(declare-fun m!1309415 () Bool)

(assert (=> b!1418757 m!1309415))

(assert (=> b!1418757 m!1309415))

(declare-fun m!1309417 () Bool)

(assert (=> b!1418757 m!1309417))

(declare-fun m!1309419 () Bool)

(assert (=> b!1418759 m!1309419))

(assert (=> b!1418759 m!1309419))

(declare-fun m!1309421 () Bool)

(assert (=> b!1418759 m!1309421))

(assert (=> b!1418759 m!1309421))

(assert (=> b!1418759 m!1309419))

(declare-fun m!1309423 () Bool)

(assert (=> b!1418759 m!1309423))

(declare-fun m!1309425 () Bool)

(assert (=> b!1418755 m!1309425))

(declare-fun m!1309427 () Bool)

(assert (=> start!122488 m!1309427))

(declare-fun m!1309429 () Bool)

(assert (=> start!122488 m!1309429))

(assert (=> b!1418760 m!1309419))

(assert (=> b!1418760 m!1309419))

(declare-fun m!1309431 () Bool)

(assert (=> b!1418760 m!1309431))

(declare-fun m!1309433 () Bool)

(assert (=> b!1418756 m!1309433))

(push 1)

(assert (not b!1418760))

(assert (not b!1418759))

(assert (not b!1418755))

(assert (not b!1418756))

(assert (not b!1418757))

(assert (not start!122488))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!152865 () Bool)

(assert (=> d!152865 (= (validKeyInArray!0 (select (arr!46741 a!2831) i!982)) (and (not (= (select (arr!46741 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46741 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1418757 d!152865))

(declare-fun d!152867 () Bool)

(assert (=> d!152867 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122488 d!152867))

(declare-fun d!152875 () Bool)

(assert (=> d!152875 (= (array_inv!35686 a!2831) (bvsge (size!47292 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122488 d!152875))

(declare-fun bm!67287 () Bool)

(declare-fun call!67290 () Bool)

(assert (=> bm!67287 (= call!67290 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun d!152877 () Bool)

(declare-fun res!954543 () Bool)

(declare-fun e!802868 () Bool)

(assert (=> d!152877 (=> res!954543 e!802868)))

(assert (=> d!152877 (= res!954543 (bvsge #b00000000000000000000000000000000 (size!47292 a!2831)))))

(assert (=> d!152877 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!802868)))

(declare-fun b!1418848 () Bool)

(declare-fun e!802869 () Bool)

(assert (=> b!1418848 (= e!802868 e!802869)))

(declare-fun c!131639 () Bool)

(assert (=> b!1418848 (= c!131639 (validKeyInArray!0 (select (arr!46741 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1418849 () Bool)

(assert (=> b!1418849 (= e!802869 call!67290)))

(declare-fun b!1418850 () Bool)

(declare-fun e!802867 () Bool)

(assert (=> b!1418850 (= e!802869 e!802867)))

(declare-fun lt!625617 () (_ BitVec 64))

(assert (=> b!1418850 (= lt!625617 (select (arr!46741 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48016 0))(
  ( (Unit!48017) )
))
(declare-fun lt!625618 () Unit!48016)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96849 (_ BitVec 64) (_ BitVec 32)) Unit!48016)

(assert (=> b!1418850 (= lt!625618 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625617 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96849 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1418850 (arrayContainsKey!0 a!2831 lt!625617 #b00000000000000000000000000000000)))

(declare-fun lt!625619 () Unit!48016)

(assert (=> b!1418850 (= lt!625619 lt!625618)))

(declare-fun res!954542 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96849 (_ BitVec 32)) SeekEntryResult!11048)

(assert (=> b!1418850 (= res!954542 (= (seekEntryOrOpen!0 (select (arr!46741 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11048 #b00000000000000000000000000000000)))))

(assert (=> b!1418850 (=> (not res!954542) (not e!802867))))

(declare-fun b!1418851 () Bool)

(assert (=> b!1418851 (= e!802867 call!67290)))

(assert (= (and d!152877 (not res!954543)) b!1418848))

(assert (= (and b!1418848 c!131639) b!1418850))

(assert (= (and b!1418848 (not c!131639)) b!1418849))

(assert (= (and b!1418850 res!954542) b!1418851))

(assert (= (or b!1418851 b!1418849) bm!67287))

(declare-fun m!1309487 () Bool)

(assert (=> bm!67287 m!1309487))

(declare-fun m!1309489 () Bool)

(assert (=> b!1418848 m!1309489))

(assert (=> b!1418848 m!1309489))

(declare-fun m!1309491 () Bool)

(assert (=> b!1418848 m!1309491))

(assert (=> b!1418850 m!1309489))

(declare-fun m!1309493 () Bool)

(assert (=> b!1418850 m!1309493))

(declare-fun m!1309495 () Bool)

(assert (=> b!1418850 m!1309495))

(assert (=> b!1418850 m!1309489))

(declare-fun m!1309497 () Bool)

(assert (=> b!1418850 m!1309497))

(assert (=> b!1418755 d!152877))

(declare-fun b!1418889 () Bool)

(declare-fun e!802893 () Bool)

(declare-fun e!802895 () Bool)

(assert (=> b!1418889 (= e!802893 e!802895)))

(declare-fun c!131651 () Bool)

(assert (=> b!1418889 (= c!131651 (validKeyInArray!0 (select (arr!46741 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1418890 () Bool)

(declare-fun call!67293 () Bool)

(assert (=> b!1418890 (= e!802895 call!67293)))

(declare-fun b!1418891 () Bool)

(assert (=> b!1418891 (= e!802895 call!67293)))

(declare-fun bm!67290 () Bool)

(assert (=> bm!67290 (= call!67293 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131651 (Cons!33427 (select (arr!46741 a!2831) #b00000000000000000000000000000000) Nil!33428) Nil!33428)))))

(declare-fun b!1418892 () Bool)

(declare-fun e!802894 () Bool)

(declare-fun contains!9852 (List!33431 (_ BitVec 64)) Bool)

(assert (=> b!1418892 (= e!802894 (contains!9852 Nil!33428 (select (arr!46741 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!152879 () Bool)

(declare-fun res!954562 () Bool)

(declare-fun e!802896 () Bool)

(assert (=> d!152879 (=> res!954562 e!802896)))

(assert (=> d!152879 (= res!954562 (bvsge #b00000000000000000000000000000000 (size!47292 a!2831)))))

(assert (=> d!152879 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33428) e!802896)))

(declare-fun b!1418893 () Bool)

(assert (=> b!1418893 (= e!802896 e!802893)))

(declare-fun res!954561 () Bool)

(assert (=> b!1418893 (=> (not res!954561) (not e!802893))))

(assert (=> b!1418893 (= res!954561 (not e!802894))))

(declare-fun res!954560 () Bool)

(assert (=> b!1418893 (=> (not res!954560) (not e!802894))))

(assert (=> b!1418893 (= res!954560 (validKeyInArray!0 (select (arr!46741 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!152879 (not res!954562)) b!1418893))

(assert (= (and b!1418893 res!954560) b!1418892))

(assert (= (and b!1418893 res!954561) b!1418889))

(assert (= (and b!1418889 c!131651) b!1418890))

(assert (= (and b!1418889 (not c!131651)) b!1418891))

(assert (= (or b!1418890 b!1418891) bm!67290))

(assert (=> b!1418889 m!1309489))

(assert (=> b!1418889 m!1309489))

(assert (=> b!1418889 m!1309491))

(assert (=> bm!67290 m!1309489))

(declare-fun m!1309507 () Bool)

(assert (=> bm!67290 m!1309507))

(assert (=> b!1418892 m!1309489))

(assert (=> b!1418892 m!1309489))

(declare-fun m!1309509 () Bool)

(assert (=> b!1418892 m!1309509))

(assert (=> b!1418893 m!1309489))

(assert (=> b!1418893 m!1309489))

(assert (=> b!1418893 m!1309491))

(assert (=> b!1418756 d!152879))

(declare-fun d!152883 () Bool)

(declare-fun e!802938 () Bool)

(assert (=> d!152883 e!802938))

(declare-fun c!131667 () Bool)

(declare-fun lt!625644 () SeekEntryResult!11048)

(assert (=> d!152883 (= c!131667 (and (is-Intermediate!11048 lt!625644) (undefined!11860 lt!625644)))))

(declare-fun e!802940 () SeekEntryResult!11048)

(assert (=> d!152883 (= lt!625644 e!802940)))

(declare-fun c!131668 () Bool)

(assert (=> d!152883 (= c!131668 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!625645 () (_ BitVec 64))

(assert (=> d!152883 (= lt!625645 (select (arr!46741 a!2831) (toIndex!0 (select (arr!46741 a!2831) j!81) mask!2608)))))

(assert (=> d!152883 (validMask!0 mask!2608)))

(assert (=> d!152883 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46741 a!2831) j!81) mask!2608) (select (arr!46741 a!2831) j!81) a!2831 mask!2608) lt!625644)))

(declare-fun b!1418951 () Bool)

(declare-fun e!802939 () SeekEntryResult!11048)

(assert (=> b!1418951 (= e!802939 (Intermediate!11048 false (toIndex!0 (select (arr!46741 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1418952 () Bool)

(assert (=> b!1418952 (= e!802940 e!802939)))

(declare-fun c!131669 () Bool)

(assert (=> b!1418952 (= c!131669 (or (= lt!625645 (select (arr!46741 a!2831) j!81)) (= (bvadd lt!625645 lt!625645) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1418953 () Bool)

(assert (=> b!1418953 (= e!802940 (Intermediate!11048 true (toIndex!0 (select (arr!46741 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1418954 () Bool)

(assert (=> b!1418954 (and (bvsge (index!46585 lt!625644) #b00000000000000000000000000000000) (bvslt (index!46585 lt!625644) (size!47292 a!2831)))))

(declare-fun res!954591 () Bool)

(assert (=> b!1418954 (= res!954591 (= (select (arr!46741 a!2831) (index!46585 lt!625644)) (select (arr!46741 a!2831) j!81)))))

(declare-fun e!802936 () Bool)

(assert (=> b!1418954 (=> res!954591 e!802936)))

(declare-fun e!802937 () Bool)

(assert (=> b!1418954 (= e!802937 e!802936)))

(declare-fun b!1418955 () Bool)

(assert (=> b!1418955 (and (bvsge (index!46585 lt!625644) #b00000000000000000000000000000000) (bvslt (index!46585 lt!625644) (size!47292 a!2831)))))

(declare-fun res!954592 () Bool)

(assert (=> b!1418955 (= res!954592 (= (select (arr!46741 a!2831) (index!46585 lt!625644)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1418955 (=> res!954592 e!802936)))

(declare-fun b!1418956 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418956 (= e!802939 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46741 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46741 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1418957 () Bool)

(assert (=> b!1418957 (= e!802938 (bvsge (x!128257 lt!625644) #b01111111111111111111111111111110))))

(declare-fun b!1418958 () Bool)

(assert (=> b!1418958 (= e!802938 e!802937)))

(declare-fun res!954593 () Bool)

(assert (=> b!1418958 (= res!954593 (and (is-Intermediate!11048 lt!625644) (not (undefined!11860 lt!625644)) (bvslt (x!128257 lt!625644) #b01111111111111111111111111111110) (bvsge (x!128257 lt!625644) #b00000000000000000000000000000000) (bvsge (x!128257 lt!625644) #b00000000000000000000000000000000)))))

(assert (=> b!1418958 (=> (not res!954593) (not e!802937))))

(declare-fun b!1418959 () Bool)

(assert (=> b!1418959 (and (bvsge (index!46585 lt!625644) #b00000000000000000000000000000000) (bvslt (index!46585 lt!625644) (size!47292 a!2831)))))

(assert (=> b!1418959 (= e!802936 (= (select (arr!46741 a!2831) (index!46585 lt!625644)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!152883 c!131668) b!1418953))

(assert (= (and d!152883 (not c!131668)) b!1418952))

(assert (= (and b!1418952 c!131669) b!1418951))

(assert (= (and b!1418952 (not c!131669)) b!1418956))

(assert (= (and d!152883 c!131667) b!1418957))

