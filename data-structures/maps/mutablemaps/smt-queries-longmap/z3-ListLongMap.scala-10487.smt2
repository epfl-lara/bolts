; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123396 () Bool)

(assert start!123396)

(declare-fun b!1430388 () Bool)

(declare-fun e!807584 () Bool)

(declare-fun e!807585 () Bool)

(assert (=> b!1430388 (= e!807584 e!807585)))

(declare-fun res!964937 () Bool)

(assert (=> b!1430388 (=> (not res!964937) (not e!807585))))

(declare-datatypes ((array!97424 0))(
  ( (array!97425 (arr!47018 (Array (_ BitVec 32) (_ BitVec 64))) (size!47569 (_ BitVec 32))) )
))
(declare-fun lt!629713 () array!97424)

(declare-datatypes ((SeekEntryResult!11319 0))(
  ( (MissingZero!11319 (index!47667 (_ BitVec 32))) (Found!11319 (index!47668 (_ BitVec 32))) (Intermediate!11319 (undefined!12131 Bool) (index!47669 (_ BitVec 32)) (x!129306 (_ BitVec 32))) (Undefined!11319) (MissingVacant!11319 (index!47670 (_ BitVec 32))) )
))
(declare-fun lt!629710 () SeekEntryResult!11319)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!629712 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97424 (_ BitVec 32)) SeekEntryResult!11319)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1430388 (= res!964937 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629712 mask!2608) lt!629712 lt!629713 mask!2608) lt!629710))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1430388 (= lt!629710 (Intermediate!11319 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97424)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1430388 (= lt!629712 (select (store (arr!47018 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1430388 (= lt!629713 (array!97425 (store (arr!47018 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47569 a!2831)))))

(declare-fun b!1430389 () Bool)

(declare-fun res!964930 () Bool)

(declare-fun e!807586 () Bool)

(assert (=> b!1430389 (=> (not res!964930) (not e!807586))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1430389 (= res!964930 (validKeyInArray!0 (select (arr!47018 a!2831) j!81)))))

(declare-fun b!1430390 () Bool)

(declare-fun res!964931 () Bool)

(assert (=> b!1430390 (=> (not res!964931) (not e!807585))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1430390 (= res!964931 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629712 lt!629713 mask!2608) lt!629710))))

(declare-fun b!1430392 () Bool)

(declare-fun res!964934 () Bool)

(assert (=> b!1430392 (=> (not res!964934) (not e!807585))))

(declare-fun lt!629709 () SeekEntryResult!11319)

(assert (=> b!1430392 (= res!964934 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47018 a!2831) j!81) a!2831 mask!2608) lt!629709))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun b!1430393 () Bool)

(assert (=> b!1430393 (= e!807585 (not (or (= (select (arr!47018 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47018 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47018 a!2831) index!585) (select (arr!47018 a!2831) j!81)) (not (= (select (store (arr!47018 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt intermediateAfterX!13 intermediateBeforeX!13))))))

(declare-fun e!807583 () Bool)

(assert (=> b!1430393 e!807583))

(declare-fun res!964933 () Bool)

(assert (=> b!1430393 (=> (not res!964933) (not e!807583))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97424 (_ BitVec 32)) Bool)

(assert (=> b!1430393 (= res!964933 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48332 0))(
  ( (Unit!48333) )
))
(declare-fun lt!629711 () Unit!48332)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97424 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48332)

(assert (=> b!1430393 (= lt!629711 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1430394 () Bool)

(declare-fun res!964927 () Bool)

(assert (=> b!1430394 (=> (not res!964927) (not e!807586))))

(assert (=> b!1430394 (= res!964927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1430395 () Bool)

(assert (=> b!1430395 (= e!807583 (or (= (select (arr!47018 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47018 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47018 a!2831) index!585) (select (arr!47018 a!2831) j!81)) (not (= (select (store (arr!47018 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (= index!585 intermediateAfterIndex!13) (= intermediateAfterIndex!13 i!982))))))

(declare-fun b!1430396 () Bool)

(assert (=> b!1430396 (= e!807586 e!807584)))

(declare-fun res!964932 () Bool)

(assert (=> b!1430396 (=> (not res!964932) (not e!807584))))

(assert (=> b!1430396 (= res!964932 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608) (select (arr!47018 a!2831) j!81) a!2831 mask!2608) lt!629709))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1430396 (= lt!629709 (Intermediate!11319 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1430397 () Bool)

(declare-fun res!964928 () Bool)

(assert (=> b!1430397 (=> (not res!964928) (not e!807586))))

(assert (=> b!1430397 (= res!964928 (validKeyInArray!0 (select (arr!47018 a!2831) i!982)))))

(declare-fun b!1430398 () Bool)

(declare-fun res!964935 () Bool)

(assert (=> b!1430398 (=> (not res!964935) (not e!807586))))

(assert (=> b!1430398 (= res!964935 (and (= (size!47569 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47569 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47569 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1430399 () Bool)

(declare-fun res!964938 () Bool)

(assert (=> b!1430399 (=> (not res!964938) (not e!807583))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97424 (_ BitVec 32)) SeekEntryResult!11319)

(assert (=> b!1430399 (= res!964938 (= (seekEntryOrOpen!0 (select (arr!47018 a!2831) j!81) a!2831 mask!2608) (Found!11319 j!81)))))

(declare-fun b!1430400 () Bool)

(declare-fun res!964925 () Bool)

(assert (=> b!1430400 (=> (not res!964925) (not e!807586))))

(declare-datatypes ((List!33708 0))(
  ( (Nil!33705) (Cons!33704 (h!35021 (_ BitVec 64)) (t!48409 List!33708)) )
))
(declare-fun arrayNoDuplicates!0 (array!97424 (_ BitVec 32) List!33708) Bool)

(assert (=> b!1430400 (= res!964925 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33705))))

(declare-fun b!1430401 () Bool)

(declare-fun res!964936 () Bool)

(assert (=> b!1430401 (=> (not res!964936) (not e!807585))))

(assert (=> b!1430401 (= res!964936 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun res!964926 () Bool)

(assert (=> start!123396 (=> (not res!964926) (not e!807586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123396 (= res!964926 (validMask!0 mask!2608))))

(assert (=> start!123396 e!807586))

(assert (=> start!123396 true))

(declare-fun array_inv!35963 (array!97424) Bool)

(assert (=> start!123396 (array_inv!35963 a!2831)))

(declare-fun b!1430391 () Bool)

(declare-fun res!964929 () Bool)

(assert (=> b!1430391 (=> (not res!964929) (not e!807586))))

(assert (=> b!1430391 (= res!964929 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47569 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47569 a!2831))))))

(assert (= (and start!123396 res!964926) b!1430398))

(assert (= (and b!1430398 res!964935) b!1430397))

(assert (= (and b!1430397 res!964928) b!1430389))

(assert (= (and b!1430389 res!964930) b!1430394))

(assert (= (and b!1430394 res!964927) b!1430400))

(assert (= (and b!1430400 res!964925) b!1430391))

(assert (= (and b!1430391 res!964929) b!1430396))

(assert (= (and b!1430396 res!964932) b!1430388))

(assert (= (and b!1430388 res!964937) b!1430392))

(assert (= (and b!1430392 res!964934) b!1430390))

(assert (= (and b!1430390 res!964931) b!1430401))

(assert (= (and b!1430401 res!964936) b!1430393))

(assert (= (and b!1430393 res!964933) b!1430399))

(assert (= (and b!1430399 res!964938) b!1430395))

(declare-fun m!1320419 () Bool)

(assert (=> b!1430392 m!1320419))

(assert (=> b!1430392 m!1320419))

(declare-fun m!1320421 () Bool)

(assert (=> b!1430392 m!1320421))

(declare-fun m!1320423 () Bool)

(assert (=> b!1430395 m!1320423))

(assert (=> b!1430395 m!1320419))

(declare-fun m!1320425 () Bool)

(assert (=> b!1430395 m!1320425))

(declare-fun m!1320427 () Bool)

(assert (=> b!1430395 m!1320427))

(assert (=> b!1430389 m!1320419))

(assert (=> b!1430389 m!1320419))

(declare-fun m!1320429 () Bool)

(assert (=> b!1430389 m!1320429))

(declare-fun m!1320431 () Bool)

(assert (=> b!1430397 m!1320431))

(assert (=> b!1430397 m!1320431))

(declare-fun m!1320433 () Bool)

(assert (=> b!1430397 m!1320433))

(assert (=> b!1430399 m!1320419))

(assert (=> b!1430399 m!1320419))

(declare-fun m!1320435 () Bool)

(assert (=> b!1430399 m!1320435))

(declare-fun m!1320437 () Bool)

(assert (=> b!1430400 m!1320437))

(declare-fun m!1320439 () Bool)

(assert (=> b!1430394 m!1320439))

(declare-fun m!1320441 () Bool)

(assert (=> start!123396 m!1320441))

(declare-fun m!1320443 () Bool)

(assert (=> start!123396 m!1320443))

(declare-fun m!1320445 () Bool)

(assert (=> b!1430388 m!1320445))

(assert (=> b!1430388 m!1320445))

(declare-fun m!1320447 () Bool)

(assert (=> b!1430388 m!1320447))

(assert (=> b!1430388 m!1320425))

(declare-fun m!1320449 () Bool)

(assert (=> b!1430388 m!1320449))

(assert (=> b!1430393 m!1320425))

(assert (=> b!1430393 m!1320427))

(assert (=> b!1430393 m!1320423))

(declare-fun m!1320451 () Bool)

(assert (=> b!1430393 m!1320451))

(assert (=> b!1430393 m!1320419))

(declare-fun m!1320453 () Bool)

(assert (=> b!1430393 m!1320453))

(assert (=> b!1430396 m!1320419))

(assert (=> b!1430396 m!1320419))

(declare-fun m!1320455 () Bool)

(assert (=> b!1430396 m!1320455))

(assert (=> b!1430396 m!1320455))

(assert (=> b!1430396 m!1320419))

(declare-fun m!1320457 () Bool)

(assert (=> b!1430396 m!1320457))

(declare-fun m!1320459 () Bool)

(assert (=> b!1430390 m!1320459))

(check-sat (not b!1430390) (not b!1430392) (not b!1430396) (not b!1430388) (not b!1430393) (not start!123396) (not b!1430394) (not b!1430400) (not b!1430397) (not b!1430399) (not b!1430389))
(check-sat)
(get-model)

(declare-fun d!153595 () Bool)

(declare-fun res!964986 () Bool)

(declare-fun e!807610 () Bool)

(assert (=> d!153595 (=> res!964986 e!807610)))

(assert (=> d!153595 (= res!964986 (bvsge #b00000000000000000000000000000000 (size!47569 a!2831)))))

(assert (=> d!153595 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!807610)))

(declare-fun b!1430452 () Bool)

(declare-fun e!807611 () Bool)

(declare-fun call!67428 () Bool)

(assert (=> b!1430452 (= e!807611 call!67428)))

(declare-fun b!1430453 () Bool)

(declare-fun e!807609 () Bool)

(assert (=> b!1430453 (= e!807609 call!67428)))

(declare-fun b!1430454 () Bool)

(assert (=> b!1430454 (= e!807610 e!807609)))

(declare-fun c!132230 () Bool)

(assert (=> b!1430454 (= c!132230 (validKeyInArray!0 (select (arr!47018 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430455 () Bool)

(assert (=> b!1430455 (= e!807609 e!807611)))

(declare-fun lt!629736 () (_ BitVec 64))

(assert (=> b!1430455 (= lt!629736 (select (arr!47018 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!629737 () Unit!48332)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97424 (_ BitVec 64) (_ BitVec 32)) Unit!48332)

(assert (=> b!1430455 (= lt!629737 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629736 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1430455 (arrayContainsKey!0 a!2831 lt!629736 #b00000000000000000000000000000000)))

(declare-fun lt!629735 () Unit!48332)

(assert (=> b!1430455 (= lt!629735 lt!629737)))

(declare-fun res!964985 () Bool)

(assert (=> b!1430455 (= res!964985 (= (seekEntryOrOpen!0 (select (arr!47018 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11319 #b00000000000000000000000000000000)))))

(assert (=> b!1430455 (=> (not res!964985) (not e!807611))))

(declare-fun bm!67425 () Bool)

(assert (=> bm!67425 (= call!67428 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(assert (= (and d!153595 (not res!964986)) b!1430454))

(assert (= (and b!1430454 c!132230) b!1430455))

(assert (= (and b!1430454 (not c!132230)) b!1430453))

(assert (= (and b!1430455 res!964985) b!1430452))

(assert (= (or b!1430452 b!1430453) bm!67425))

(declare-fun m!1320503 () Bool)

(assert (=> b!1430454 m!1320503))

(assert (=> b!1430454 m!1320503))

(declare-fun m!1320505 () Bool)

(assert (=> b!1430454 m!1320505))

(assert (=> b!1430455 m!1320503))

(declare-fun m!1320507 () Bool)

(assert (=> b!1430455 m!1320507))

(declare-fun m!1320509 () Bool)

(assert (=> b!1430455 m!1320509))

(assert (=> b!1430455 m!1320503))

(declare-fun m!1320511 () Bool)

(assert (=> b!1430455 m!1320511))

(declare-fun m!1320513 () Bool)

(assert (=> bm!67425 m!1320513))

(assert (=> b!1430394 d!153595))

(declare-fun d!153597 () Bool)

(assert (=> d!153597 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123396 d!153597))

(declare-fun d!153599 () Bool)

(assert (=> d!153599 (= (array_inv!35963 a!2831) (bvsge (size!47569 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123396 d!153599))

(declare-fun b!1430468 () Bool)

(declare-fun e!807620 () SeekEntryResult!11319)

(declare-fun lt!629745 () SeekEntryResult!11319)

(assert (=> b!1430468 (= e!807620 (MissingZero!11319 (index!47669 lt!629745)))))

(declare-fun b!1430469 () Bool)

(declare-fun e!807618 () SeekEntryResult!11319)

(declare-fun e!807619 () SeekEntryResult!11319)

(assert (=> b!1430469 (= e!807618 e!807619)))

(declare-fun lt!629746 () (_ BitVec 64))

(assert (=> b!1430469 (= lt!629746 (select (arr!47018 a!2831) (index!47669 lt!629745)))))

(declare-fun c!132237 () Bool)

(assert (=> b!1430469 (= c!132237 (= lt!629746 (select (arr!47018 a!2831) j!81)))))

(declare-fun b!1430470 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97424 (_ BitVec 32)) SeekEntryResult!11319)

(assert (=> b!1430470 (= e!807620 (seekKeyOrZeroReturnVacant!0 (x!129306 lt!629745) (index!47669 lt!629745) (index!47669 lt!629745) (select (arr!47018 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430471 () Bool)

(declare-fun c!132238 () Bool)

(assert (=> b!1430471 (= c!132238 (= lt!629746 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430471 (= e!807619 e!807620)))

(declare-fun b!1430472 () Bool)

(assert (=> b!1430472 (= e!807619 (Found!11319 (index!47669 lt!629745)))))

(declare-fun b!1430473 () Bool)

(assert (=> b!1430473 (= e!807618 Undefined!11319)))

(declare-fun d!153601 () Bool)

(declare-fun lt!629744 () SeekEntryResult!11319)

(get-info :version)

(assert (=> d!153601 (and (or ((_ is Undefined!11319) lt!629744) (not ((_ is Found!11319) lt!629744)) (and (bvsge (index!47668 lt!629744) #b00000000000000000000000000000000) (bvslt (index!47668 lt!629744) (size!47569 a!2831)))) (or ((_ is Undefined!11319) lt!629744) ((_ is Found!11319) lt!629744) (not ((_ is MissingZero!11319) lt!629744)) (and (bvsge (index!47667 lt!629744) #b00000000000000000000000000000000) (bvslt (index!47667 lt!629744) (size!47569 a!2831)))) (or ((_ is Undefined!11319) lt!629744) ((_ is Found!11319) lt!629744) ((_ is MissingZero!11319) lt!629744) (not ((_ is MissingVacant!11319) lt!629744)) (and (bvsge (index!47670 lt!629744) #b00000000000000000000000000000000) (bvslt (index!47670 lt!629744) (size!47569 a!2831)))) (or ((_ is Undefined!11319) lt!629744) (ite ((_ is Found!11319) lt!629744) (= (select (arr!47018 a!2831) (index!47668 lt!629744)) (select (arr!47018 a!2831) j!81)) (ite ((_ is MissingZero!11319) lt!629744) (= (select (arr!47018 a!2831) (index!47667 lt!629744)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!11319) lt!629744) (= (select (arr!47018 a!2831) (index!47670 lt!629744)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153601 (= lt!629744 e!807618)))

(declare-fun c!132239 () Bool)

(assert (=> d!153601 (= c!132239 (and ((_ is Intermediate!11319) lt!629745) (undefined!12131 lt!629745)))))

(assert (=> d!153601 (= lt!629745 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608) (select (arr!47018 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153601 (validMask!0 mask!2608)))

(assert (=> d!153601 (= (seekEntryOrOpen!0 (select (arr!47018 a!2831) j!81) a!2831 mask!2608) lt!629744)))

(assert (= (and d!153601 c!132239) b!1430473))

(assert (= (and d!153601 (not c!132239)) b!1430469))

(assert (= (and b!1430469 c!132237) b!1430472))

(assert (= (and b!1430469 (not c!132237)) b!1430471))

(assert (= (and b!1430471 c!132238) b!1430468))

(assert (= (and b!1430471 (not c!132238)) b!1430470))

(declare-fun m!1320515 () Bool)

(assert (=> b!1430469 m!1320515))

(assert (=> b!1430470 m!1320419))

(declare-fun m!1320517 () Bool)

(assert (=> b!1430470 m!1320517))

(assert (=> d!153601 m!1320441))

(declare-fun m!1320519 () Bool)

(assert (=> d!153601 m!1320519))

(assert (=> d!153601 m!1320455))

(assert (=> d!153601 m!1320419))

(assert (=> d!153601 m!1320457))

(declare-fun m!1320521 () Bool)

(assert (=> d!153601 m!1320521))

(assert (=> d!153601 m!1320419))

(assert (=> d!153601 m!1320455))

(declare-fun m!1320523 () Bool)

(assert (=> d!153601 m!1320523))

(assert (=> b!1430399 d!153601))

(declare-fun d!153611 () Bool)

(declare-fun res!965003 () Bool)

(declare-fun e!807641 () Bool)

(assert (=> d!153611 (=> res!965003 e!807641)))

(assert (=> d!153611 (= res!965003 (bvsge #b00000000000000000000000000000000 (size!47569 a!2831)))))

(assert (=> d!153611 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33705) e!807641)))

(declare-fun b!1430499 () Bool)

(declare-fun e!807644 () Bool)

(declare-fun contains!9871 (List!33708 (_ BitVec 64)) Bool)

(assert (=> b!1430499 (= e!807644 (contains!9871 Nil!33705 (select (arr!47018 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430500 () Bool)

(declare-fun e!807643 () Bool)

(assert (=> b!1430500 (= e!807641 e!807643)))

(declare-fun res!965004 () Bool)

(assert (=> b!1430500 (=> (not res!965004) (not e!807643))))

(assert (=> b!1430500 (= res!965004 (not e!807644))))

(declare-fun res!965002 () Bool)

(assert (=> b!1430500 (=> (not res!965002) (not e!807644))))

(assert (=> b!1430500 (= res!965002 (validKeyInArray!0 (select (arr!47018 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430501 () Bool)

(declare-fun e!807642 () Bool)

(declare-fun call!67434 () Bool)

(assert (=> b!1430501 (= e!807642 call!67434)))

(declare-fun b!1430502 () Bool)

(assert (=> b!1430502 (= e!807642 call!67434)))

(declare-fun bm!67431 () Bool)

(declare-fun c!132245 () Bool)

(assert (=> bm!67431 (= call!67434 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132245 (Cons!33704 (select (arr!47018 a!2831) #b00000000000000000000000000000000) Nil!33705) Nil!33705)))))

(declare-fun b!1430503 () Bool)

(assert (=> b!1430503 (= e!807643 e!807642)))

(assert (=> b!1430503 (= c!132245 (validKeyInArray!0 (select (arr!47018 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153611 (not res!965003)) b!1430500))

(assert (= (and b!1430500 res!965002) b!1430499))

(assert (= (and b!1430500 res!965004) b!1430503))

(assert (= (and b!1430503 c!132245) b!1430502))

(assert (= (and b!1430503 (not c!132245)) b!1430501))

(assert (= (or b!1430502 b!1430501) bm!67431))

(assert (=> b!1430499 m!1320503))

(assert (=> b!1430499 m!1320503))

(declare-fun m!1320533 () Bool)

(assert (=> b!1430499 m!1320533))

(assert (=> b!1430500 m!1320503))

(assert (=> b!1430500 m!1320503))

(assert (=> b!1430500 m!1320505))

(assert (=> bm!67431 m!1320503))

(declare-fun m!1320535 () Bool)

(assert (=> bm!67431 m!1320535))

(assert (=> b!1430503 m!1320503))

(assert (=> b!1430503 m!1320503))

(assert (=> b!1430503 m!1320505))

(assert (=> b!1430400 d!153611))

(declare-fun d!153617 () Bool)

(assert (=> d!153617 (= (validKeyInArray!0 (select (arr!47018 a!2831) j!81)) (and (not (= (select (arr!47018 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47018 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1430389 d!153617))

(declare-fun d!153619 () Bool)

(declare-fun e!807683 () Bool)

(assert (=> d!153619 e!807683))

(declare-fun c!132265 () Bool)

(declare-fun lt!629775 () SeekEntryResult!11319)

(assert (=> d!153619 (= c!132265 (and ((_ is Intermediate!11319) lt!629775) (undefined!12131 lt!629775)))))

(declare-fun e!807681 () SeekEntryResult!11319)

(assert (=> d!153619 (= lt!629775 e!807681)))

(declare-fun c!132264 () Bool)

(assert (=> d!153619 (= c!132264 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!629776 () (_ BitVec 64))

(assert (=> d!153619 (= lt!629776 (select (arr!47018 lt!629713) index!585))))

(assert (=> d!153619 (validMask!0 mask!2608)))

(assert (=> d!153619 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629712 lt!629713 mask!2608) lt!629775)))

(declare-fun b!1430561 () Bool)

(assert (=> b!1430561 (= e!807681 (Intermediate!11319 true index!585 x!605))))

(declare-fun b!1430562 () Bool)

(assert (=> b!1430562 (and (bvsge (index!47669 lt!629775) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629775) (size!47569 lt!629713)))))

(declare-fun res!965028 () Bool)

(assert (=> b!1430562 (= res!965028 (= (select (arr!47018 lt!629713) (index!47669 lt!629775)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807679 () Bool)

(assert (=> b!1430562 (=> res!965028 e!807679)))

(declare-fun b!1430563 () Bool)

(declare-fun e!807680 () SeekEntryResult!11319)

(assert (=> b!1430563 (= e!807681 e!807680)))

(declare-fun c!132266 () Bool)

(assert (=> b!1430563 (= c!132266 (or (= lt!629776 lt!629712) (= (bvadd lt!629776 lt!629776) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430564 () Bool)

(assert (=> b!1430564 (= e!807683 (bvsge (x!129306 lt!629775) #b01111111111111111111111111111110))))

(declare-fun b!1430565 () Bool)

(assert (=> b!1430565 (and (bvsge (index!47669 lt!629775) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629775) (size!47569 lt!629713)))))

(declare-fun res!965029 () Bool)

(assert (=> b!1430565 (= res!965029 (= (select (arr!47018 lt!629713) (index!47669 lt!629775)) lt!629712))))

(assert (=> b!1430565 (=> res!965029 e!807679)))

(declare-fun e!807682 () Bool)

(assert (=> b!1430565 (= e!807682 e!807679)))

(declare-fun b!1430566 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1430566 (= e!807680 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!629712 lt!629713 mask!2608))))

(declare-fun b!1430567 () Bool)

(assert (=> b!1430567 (= e!807683 e!807682)))

(declare-fun res!965027 () Bool)

(assert (=> b!1430567 (= res!965027 (and ((_ is Intermediate!11319) lt!629775) (not (undefined!12131 lt!629775)) (bvslt (x!129306 lt!629775) #b01111111111111111111111111111110) (bvsge (x!129306 lt!629775) #b00000000000000000000000000000000) (bvsge (x!129306 lt!629775) x!605)))))

(assert (=> b!1430567 (=> (not res!965027) (not e!807682))))

(declare-fun b!1430568 () Bool)

(assert (=> b!1430568 (and (bvsge (index!47669 lt!629775) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629775) (size!47569 lt!629713)))))

(assert (=> b!1430568 (= e!807679 (= (select (arr!47018 lt!629713) (index!47669 lt!629775)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430569 () Bool)

(assert (=> b!1430569 (= e!807680 (Intermediate!11319 false index!585 x!605))))

(assert (= (and d!153619 c!132264) b!1430561))

(assert (= (and d!153619 (not c!132264)) b!1430563))

(assert (= (and b!1430563 c!132266) b!1430569))

(assert (= (and b!1430563 (not c!132266)) b!1430566))

(assert (= (and d!153619 c!132265) b!1430564))

(assert (= (and d!153619 (not c!132265)) b!1430567))

(assert (= (and b!1430567 res!965027) b!1430565))

(assert (= (and b!1430565 (not res!965029)) b!1430562))

(assert (= (and b!1430562 (not res!965028)) b!1430568))

(declare-fun m!1320553 () Bool)

(assert (=> d!153619 m!1320553))

(assert (=> d!153619 m!1320441))

(declare-fun m!1320555 () Bool)

(assert (=> b!1430565 m!1320555))

(assert (=> b!1430568 m!1320555))

(declare-fun m!1320557 () Bool)

(assert (=> b!1430566 m!1320557))

(assert (=> b!1430566 m!1320557))

(declare-fun m!1320559 () Bool)

(assert (=> b!1430566 m!1320559))

(assert (=> b!1430562 m!1320555))

(assert (=> b!1430390 d!153619))

(declare-fun d!153629 () Bool)

(declare-fun e!807688 () Bool)

(assert (=> d!153629 e!807688))

(declare-fun c!132268 () Bool)

(declare-fun lt!629777 () SeekEntryResult!11319)

(assert (=> d!153629 (= c!132268 (and ((_ is Intermediate!11319) lt!629777) (undefined!12131 lt!629777)))))

(declare-fun e!807686 () SeekEntryResult!11319)

(assert (=> d!153629 (= lt!629777 e!807686)))

(declare-fun c!132267 () Bool)

(assert (=> d!153629 (= c!132267 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!629778 () (_ BitVec 64))

(assert (=> d!153629 (= lt!629778 (select (arr!47018 a!2831) (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608)))))

(assert (=> d!153629 (validMask!0 mask!2608)))

(assert (=> d!153629 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608) (select (arr!47018 a!2831) j!81) a!2831 mask!2608) lt!629777)))

(declare-fun b!1430570 () Bool)

(assert (=> b!1430570 (= e!807686 (Intermediate!11319 true (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430571 () Bool)

(assert (=> b!1430571 (and (bvsge (index!47669 lt!629777) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629777) (size!47569 a!2831)))))

(declare-fun res!965031 () Bool)

(assert (=> b!1430571 (= res!965031 (= (select (arr!47018 a!2831) (index!47669 lt!629777)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807684 () Bool)

(assert (=> b!1430571 (=> res!965031 e!807684)))

(declare-fun b!1430572 () Bool)

(declare-fun e!807685 () SeekEntryResult!11319)

(assert (=> b!1430572 (= e!807686 e!807685)))

(declare-fun c!132269 () Bool)

(assert (=> b!1430572 (= c!132269 (or (= lt!629778 (select (arr!47018 a!2831) j!81)) (= (bvadd lt!629778 lt!629778) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430573 () Bool)

(assert (=> b!1430573 (= e!807688 (bvsge (x!129306 lt!629777) #b01111111111111111111111111111110))))

(declare-fun b!1430574 () Bool)

(assert (=> b!1430574 (and (bvsge (index!47669 lt!629777) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629777) (size!47569 a!2831)))))

(declare-fun res!965032 () Bool)

(assert (=> b!1430574 (= res!965032 (= (select (arr!47018 a!2831) (index!47669 lt!629777)) (select (arr!47018 a!2831) j!81)))))

(assert (=> b!1430574 (=> res!965032 e!807684)))

(declare-fun e!807687 () Bool)

(assert (=> b!1430574 (= e!807687 e!807684)))

(declare-fun b!1430575 () Bool)

(assert (=> b!1430575 (= e!807685 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47018 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430576 () Bool)

(assert (=> b!1430576 (= e!807688 e!807687)))

(declare-fun res!965030 () Bool)

(assert (=> b!1430576 (= res!965030 (and ((_ is Intermediate!11319) lt!629777) (not (undefined!12131 lt!629777)) (bvslt (x!129306 lt!629777) #b01111111111111111111111111111110) (bvsge (x!129306 lt!629777) #b00000000000000000000000000000000) (bvsge (x!129306 lt!629777) #b00000000000000000000000000000000)))))

(assert (=> b!1430576 (=> (not res!965030) (not e!807687))))

(declare-fun b!1430577 () Bool)

(assert (=> b!1430577 (and (bvsge (index!47669 lt!629777) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629777) (size!47569 a!2831)))))

(assert (=> b!1430577 (= e!807684 (= (select (arr!47018 a!2831) (index!47669 lt!629777)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430578 () Bool)

(assert (=> b!1430578 (= e!807685 (Intermediate!11319 false (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153629 c!132267) b!1430570))

(assert (= (and d!153629 (not c!132267)) b!1430572))

(assert (= (and b!1430572 c!132269) b!1430578))

(assert (= (and b!1430572 (not c!132269)) b!1430575))

(assert (= (and d!153629 c!132268) b!1430573))

(assert (= (and d!153629 (not c!132268)) b!1430576))

(assert (= (and b!1430576 res!965030) b!1430574))

(assert (= (and b!1430574 (not res!965032)) b!1430571))

(assert (= (and b!1430571 (not res!965031)) b!1430577))

(assert (=> d!153629 m!1320455))

(declare-fun m!1320561 () Bool)

(assert (=> d!153629 m!1320561))

(assert (=> d!153629 m!1320441))

(declare-fun m!1320563 () Bool)

(assert (=> b!1430574 m!1320563))

(assert (=> b!1430577 m!1320563))

(assert (=> b!1430575 m!1320455))

(declare-fun m!1320565 () Bool)

(assert (=> b!1430575 m!1320565))

(assert (=> b!1430575 m!1320565))

(assert (=> b!1430575 m!1320419))

(declare-fun m!1320567 () Bool)

(assert (=> b!1430575 m!1320567))

(assert (=> b!1430571 m!1320563))

(assert (=> b!1430396 d!153629))

(declare-fun d!153631 () Bool)

(declare-fun lt!629788 () (_ BitVec 32))

(declare-fun lt!629787 () (_ BitVec 32))

(assert (=> d!153631 (= lt!629788 (bvmul (bvxor lt!629787 (bvlshr lt!629787 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153631 (= lt!629787 ((_ extract 31 0) (bvand (bvxor (select (arr!47018 a!2831) j!81) (bvlshr (select (arr!47018 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153631 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!965033 (let ((h!35024 ((_ extract 31 0) (bvand (bvxor (select (arr!47018 a!2831) j!81) (bvlshr (select (arr!47018 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129311 (bvmul (bvxor h!35024 (bvlshr h!35024 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129311 (bvlshr x!129311 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!965033 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!965033 #b00000000000000000000000000000000))))))

(assert (=> d!153631 (= (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608) (bvand (bvxor lt!629788 (bvlshr lt!629788 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1430396 d!153631))

(declare-fun d!153633 () Bool)

(declare-fun e!807703 () Bool)

(assert (=> d!153633 e!807703))

(declare-fun c!132277 () Bool)

(declare-fun lt!629789 () SeekEntryResult!11319)

(assert (=> d!153633 (= c!132277 (and ((_ is Intermediate!11319) lt!629789) (undefined!12131 lt!629789)))))

(declare-fun e!807701 () SeekEntryResult!11319)

(assert (=> d!153633 (= lt!629789 e!807701)))

(declare-fun c!132276 () Bool)

(assert (=> d!153633 (= c!132276 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!629790 () (_ BitVec 64))

(assert (=> d!153633 (= lt!629790 (select (arr!47018 a!2831) index!585))))

(assert (=> d!153633 (validMask!0 mask!2608)))

(assert (=> d!153633 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47018 a!2831) j!81) a!2831 mask!2608) lt!629789)))

(declare-fun b!1430597 () Bool)

(assert (=> b!1430597 (= e!807701 (Intermediate!11319 true index!585 x!605))))

(declare-fun b!1430598 () Bool)

(assert (=> b!1430598 (and (bvsge (index!47669 lt!629789) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629789) (size!47569 a!2831)))))

(declare-fun res!965041 () Bool)

(assert (=> b!1430598 (= res!965041 (= (select (arr!47018 a!2831) (index!47669 lt!629789)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807699 () Bool)

(assert (=> b!1430598 (=> res!965041 e!807699)))

(declare-fun b!1430599 () Bool)

(declare-fun e!807700 () SeekEntryResult!11319)

(assert (=> b!1430599 (= e!807701 e!807700)))

(declare-fun c!132278 () Bool)

(assert (=> b!1430599 (= c!132278 (or (= lt!629790 (select (arr!47018 a!2831) j!81)) (= (bvadd lt!629790 lt!629790) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430600 () Bool)

(assert (=> b!1430600 (= e!807703 (bvsge (x!129306 lt!629789) #b01111111111111111111111111111110))))

(declare-fun b!1430601 () Bool)

(assert (=> b!1430601 (and (bvsge (index!47669 lt!629789) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629789) (size!47569 a!2831)))))

(declare-fun res!965042 () Bool)

(assert (=> b!1430601 (= res!965042 (= (select (arr!47018 a!2831) (index!47669 lt!629789)) (select (arr!47018 a!2831) j!81)))))

(assert (=> b!1430601 (=> res!965042 e!807699)))

(declare-fun e!807702 () Bool)

(assert (=> b!1430601 (= e!807702 e!807699)))

(declare-fun b!1430602 () Bool)

(assert (=> b!1430602 (= e!807700 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47018 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430603 () Bool)

(assert (=> b!1430603 (= e!807703 e!807702)))

(declare-fun res!965040 () Bool)

(assert (=> b!1430603 (= res!965040 (and ((_ is Intermediate!11319) lt!629789) (not (undefined!12131 lt!629789)) (bvslt (x!129306 lt!629789) #b01111111111111111111111111111110) (bvsge (x!129306 lt!629789) #b00000000000000000000000000000000) (bvsge (x!129306 lt!629789) x!605)))))

(assert (=> b!1430603 (=> (not res!965040) (not e!807702))))

(declare-fun b!1430604 () Bool)

(assert (=> b!1430604 (and (bvsge (index!47669 lt!629789) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629789) (size!47569 a!2831)))))

(assert (=> b!1430604 (= e!807699 (= (select (arr!47018 a!2831) (index!47669 lt!629789)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430605 () Bool)

(assert (=> b!1430605 (= e!807700 (Intermediate!11319 false index!585 x!605))))

(assert (= (and d!153633 c!132276) b!1430597))

(assert (= (and d!153633 (not c!132276)) b!1430599))

(assert (= (and b!1430599 c!132278) b!1430605))

(assert (= (and b!1430599 (not c!132278)) b!1430602))

(assert (= (and d!153633 c!132277) b!1430600))

(assert (= (and d!153633 (not c!132277)) b!1430603))

(assert (= (and b!1430603 res!965040) b!1430601))

(assert (= (and b!1430601 (not res!965042)) b!1430598))

(assert (= (and b!1430598 (not res!965041)) b!1430604))

(assert (=> d!153633 m!1320423))

(assert (=> d!153633 m!1320441))

(declare-fun m!1320569 () Bool)

(assert (=> b!1430601 m!1320569))

(assert (=> b!1430604 m!1320569))

(assert (=> b!1430602 m!1320557))

(assert (=> b!1430602 m!1320557))

(assert (=> b!1430602 m!1320419))

(declare-fun m!1320571 () Bool)

(assert (=> b!1430602 m!1320571))

(assert (=> b!1430598 m!1320569))

(assert (=> b!1430392 d!153633))

(declare-fun d!153635 () Bool)

(assert (=> d!153635 (= (validKeyInArray!0 (select (arr!47018 a!2831) i!982)) (and (not (= (select (arr!47018 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47018 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1430397 d!153635))

(declare-fun d!153637 () Bool)

(declare-fun e!807714 () Bool)

(assert (=> d!153637 e!807714))

(declare-fun c!132286 () Bool)

(declare-fun lt!629797 () SeekEntryResult!11319)

(assert (=> d!153637 (= c!132286 (and ((_ is Intermediate!11319) lt!629797) (undefined!12131 lt!629797)))))

(declare-fun e!807712 () SeekEntryResult!11319)

(assert (=> d!153637 (= lt!629797 e!807712)))

(declare-fun c!132285 () Bool)

(assert (=> d!153637 (= c!132285 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!629798 () (_ BitVec 64))

(assert (=> d!153637 (= lt!629798 (select (arr!47018 lt!629713) (toIndex!0 lt!629712 mask!2608)))))

(assert (=> d!153637 (validMask!0 mask!2608)))

(assert (=> d!153637 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629712 mask!2608) lt!629712 lt!629713 mask!2608) lt!629797)))

(declare-fun b!1430618 () Bool)

(assert (=> b!1430618 (= e!807712 (Intermediate!11319 true (toIndex!0 lt!629712 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430619 () Bool)

(assert (=> b!1430619 (and (bvsge (index!47669 lt!629797) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629797) (size!47569 lt!629713)))))

(declare-fun res!965044 () Bool)

(assert (=> b!1430619 (= res!965044 (= (select (arr!47018 lt!629713) (index!47669 lt!629797)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807710 () Bool)

(assert (=> b!1430619 (=> res!965044 e!807710)))

(declare-fun b!1430620 () Bool)

(declare-fun e!807711 () SeekEntryResult!11319)

(assert (=> b!1430620 (= e!807712 e!807711)))

(declare-fun c!132287 () Bool)

(assert (=> b!1430620 (= c!132287 (or (= lt!629798 lt!629712) (= (bvadd lt!629798 lt!629798) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430621 () Bool)

(assert (=> b!1430621 (= e!807714 (bvsge (x!129306 lt!629797) #b01111111111111111111111111111110))))

(declare-fun b!1430622 () Bool)

(assert (=> b!1430622 (and (bvsge (index!47669 lt!629797) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629797) (size!47569 lt!629713)))))

(declare-fun res!965045 () Bool)

(assert (=> b!1430622 (= res!965045 (= (select (arr!47018 lt!629713) (index!47669 lt!629797)) lt!629712))))

(assert (=> b!1430622 (=> res!965045 e!807710)))

(declare-fun e!807713 () Bool)

(assert (=> b!1430622 (= e!807713 e!807710)))

(declare-fun b!1430623 () Bool)

(assert (=> b!1430623 (= e!807711 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!629712 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629712 lt!629713 mask!2608))))

(declare-fun b!1430624 () Bool)

(assert (=> b!1430624 (= e!807714 e!807713)))

(declare-fun res!965043 () Bool)

(assert (=> b!1430624 (= res!965043 (and ((_ is Intermediate!11319) lt!629797) (not (undefined!12131 lt!629797)) (bvslt (x!129306 lt!629797) #b01111111111111111111111111111110) (bvsge (x!129306 lt!629797) #b00000000000000000000000000000000) (bvsge (x!129306 lt!629797) #b00000000000000000000000000000000)))))

(assert (=> b!1430624 (=> (not res!965043) (not e!807713))))

(declare-fun b!1430625 () Bool)

(assert (=> b!1430625 (and (bvsge (index!47669 lt!629797) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629797) (size!47569 lt!629713)))))

(assert (=> b!1430625 (= e!807710 (= (select (arr!47018 lt!629713) (index!47669 lt!629797)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430626 () Bool)

(assert (=> b!1430626 (= e!807711 (Intermediate!11319 false (toIndex!0 lt!629712 mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153637 c!132285) b!1430618))

(assert (= (and d!153637 (not c!132285)) b!1430620))

(assert (= (and b!1430620 c!132287) b!1430626))

(assert (= (and b!1430620 (not c!132287)) b!1430623))

(assert (= (and d!153637 c!132286) b!1430621))

(assert (= (and d!153637 (not c!132286)) b!1430624))

(assert (= (and b!1430624 res!965043) b!1430622))

(assert (= (and b!1430622 (not res!965045)) b!1430619))

(assert (= (and b!1430619 (not res!965044)) b!1430625))

(assert (=> d!153637 m!1320445))

(declare-fun m!1320573 () Bool)

(assert (=> d!153637 m!1320573))

(assert (=> d!153637 m!1320441))

(declare-fun m!1320575 () Bool)

(assert (=> b!1430622 m!1320575))

(assert (=> b!1430625 m!1320575))

(assert (=> b!1430623 m!1320445))

(declare-fun m!1320577 () Bool)

(assert (=> b!1430623 m!1320577))

(assert (=> b!1430623 m!1320577))

(declare-fun m!1320579 () Bool)

(assert (=> b!1430623 m!1320579))

(assert (=> b!1430619 m!1320575))

(assert (=> b!1430388 d!153637))

(declare-fun d!153639 () Bool)

(declare-fun lt!629800 () (_ BitVec 32))

(declare-fun lt!629799 () (_ BitVec 32))

(assert (=> d!153639 (= lt!629800 (bvmul (bvxor lt!629799 (bvlshr lt!629799 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153639 (= lt!629799 ((_ extract 31 0) (bvand (bvxor lt!629712 (bvlshr lt!629712 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153639 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!965033 (let ((h!35024 ((_ extract 31 0) (bvand (bvxor lt!629712 (bvlshr lt!629712 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129311 (bvmul (bvxor h!35024 (bvlshr h!35024 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129311 (bvlshr x!129311 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!965033 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!965033 #b00000000000000000000000000000000))))))

(assert (=> d!153639 (= (toIndex!0 lt!629712 mask!2608) (bvand (bvxor lt!629800 (bvlshr lt!629800 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1430388 d!153639))

(declare-fun d!153641 () Bool)

(declare-fun res!965047 () Bool)

(declare-fun e!807716 () Bool)

(assert (=> d!153641 (=> res!965047 e!807716)))

(assert (=> d!153641 (= res!965047 (bvsge j!81 (size!47569 a!2831)))))

(assert (=> d!153641 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!807716)))

(declare-fun b!1430627 () Bool)

(declare-fun e!807717 () Bool)

(declare-fun call!67438 () Bool)

(assert (=> b!1430627 (= e!807717 call!67438)))

(declare-fun b!1430628 () Bool)

(declare-fun e!807715 () Bool)

(assert (=> b!1430628 (= e!807715 call!67438)))

(declare-fun b!1430629 () Bool)

(assert (=> b!1430629 (= e!807716 e!807715)))

(declare-fun c!132288 () Bool)

(assert (=> b!1430629 (= c!132288 (validKeyInArray!0 (select (arr!47018 a!2831) j!81)))))

(declare-fun b!1430630 () Bool)

(assert (=> b!1430630 (= e!807715 e!807717)))

(declare-fun lt!629802 () (_ BitVec 64))

(assert (=> b!1430630 (= lt!629802 (select (arr!47018 a!2831) j!81))))

(declare-fun lt!629803 () Unit!48332)

(assert (=> b!1430630 (= lt!629803 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629802 j!81))))

(assert (=> b!1430630 (arrayContainsKey!0 a!2831 lt!629802 #b00000000000000000000000000000000)))

(declare-fun lt!629801 () Unit!48332)

(assert (=> b!1430630 (= lt!629801 lt!629803)))

(declare-fun res!965046 () Bool)

(assert (=> b!1430630 (= res!965046 (= (seekEntryOrOpen!0 (select (arr!47018 a!2831) j!81) a!2831 mask!2608) (Found!11319 j!81)))))

(assert (=> b!1430630 (=> (not res!965046) (not e!807717))))

(declare-fun bm!67435 () Bool)

(assert (=> bm!67435 (= call!67438 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(assert (= (and d!153641 (not res!965047)) b!1430629))

(assert (= (and b!1430629 c!132288) b!1430630))

(assert (= (and b!1430629 (not c!132288)) b!1430628))

(assert (= (and b!1430630 res!965046) b!1430627))

(assert (= (or b!1430627 b!1430628) bm!67435))

(assert (=> b!1430629 m!1320419))

(assert (=> b!1430629 m!1320419))

(assert (=> b!1430629 m!1320429))

(assert (=> b!1430630 m!1320419))

(declare-fun m!1320581 () Bool)

(assert (=> b!1430630 m!1320581))

(declare-fun m!1320583 () Bool)

(assert (=> b!1430630 m!1320583))

(assert (=> b!1430630 m!1320419))

(assert (=> b!1430630 m!1320435))

(declare-fun m!1320585 () Bool)

(assert (=> bm!67435 m!1320585))

(assert (=> b!1430393 d!153641))

(declare-fun d!153643 () Bool)

(assert (=> d!153643 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!629811 () Unit!48332)

(declare-fun choose!38 (array!97424 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48332)

(assert (=> d!153643 (= lt!629811 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153643 (validMask!0 mask!2608)))

(assert (=> d!153643 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!629811)))

(declare-fun bs!41664 () Bool)

(assert (= bs!41664 d!153643))

(assert (=> bs!41664 m!1320451))

(declare-fun m!1320605 () Bool)

(assert (=> bs!41664 m!1320605))

(assert (=> bs!41664 m!1320441))

(assert (=> b!1430393 d!153643))

(check-sat (not b!1430470) (not d!153643) (not b!1430623) (not b!1430630) (not bm!67431) (not b!1430629) (not b!1430499) (not bm!67425) (not d!153629) (not b!1430566) (not d!153637) (not d!153601) (not b!1430575) (not d!153633) (not b!1430455) (not b!1430602) (not b!1430454) (not bm!67435) (not b!1430503) (not b!1430500) (not d!153619))
(check-sat)
(get-model)

(declare-fun d!153761 () Bool)

(declare-fun lt!629933 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!777 (List!33708) (InoxSet (_ BitVec 64)))

(assert (=> d!153761 (= lt!629933 (select (content!777 Nil!33705) (select (arr!47018 a!2831) #b00000000000000000000000000000000)))))

(declare-fun e!807908 () Bool)

(assert (=> d!153761 (= lt!629933 e!807908)))

(declare-fun res!965160 () Bool)

(assert (=> d!153761 (=> (not res!965160) (not e!807908))))

(assert (=> d!153761 (= res!965160 ((_ is Cons!33704) Nil!33705))))

(assert (=> d!153761 (= (contains!9871 Nil!33705 (select (arr!47018 a!2831) #b00000000000000000000000000000000)) lt!629933)))

(declare-fun b!1430931 () Bool)

(declare-fun e!807909 () Bool)

(assert (=> b!1430931 (= e!807908 e!807909)))

(declare-fun res!965159 () Bool)

(assert (=> b!1430931 (=> res!965159 e!807909)))

(assert (=> b!1430931 (= res!965159 (= (h!35021 Nil!33705) (select (arr!47018 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430932 () Bool)

(assert (=> b!1430932 (= e!807909 (contains!9871 (t!48409 Nil!33705) (select (arr!47018 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153761 res!965160) b!1430931))

(assert (= (and b!1430931 (not res!965159)) b!1430932))

(declare-fun m!1320889 () Bool)

(assert (=> d!153761 m!1320889))

(assert (=> d!153761 m!1320503))

(declare-fun m!1320891 () Bool)

(assert (=> d!153761 m!1320891))

(assert (=> b!1430932 m!1320503))

(declare-fun m!1320893 () Bool)

(assert (=> b!1430932 m!1320893))

(assert (=> b!1430499 d!153761))

(declare-fun d!153763 () Bool)

(assert (=> d!153763 (= (validKeyInArray!0 (select (arr!47018 a!2831) #b00000000000000000000000000000000)) (and (not (= (select (arr!47018 a!2831) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47018 a!2831) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1430500 d!153763))

(assert (=> b!1430454 d!153763))

(declare-fun d!153765 () Bool)

(assert (=> d!153765 (arrayContainsKey!0 a!2831 lt!629736 #b00000000000000000000000000000000)))

(declare-fun lt!629936 () Unit!48332)

(declare-fun choose!13 (array!97424 (_ BitVec 64) (_ BitVec 32)) Unit!48332)

(assert (=> d!153765 (= lt!629936 (choose!13 a!2831 lt!629736 #b00000000000000000000000000000000))))

(assert (=> d!153765 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!153765 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629736 #b00000000000000000000000000000000) lt!629936)))

(declare-fun bs!41678 () Bool)

(assert (= bs!41678 d!153765))

(assert (=> bs!41678 m!1320509))

(declare-fun m!1320895 () Bool)

(assert (=> bs!41678 m!1320895))

(assert (=> b!1430455 d!153765))

(declare-fun d!153767 () Bool)

(declare-fun res!965165 () Bool)

(declare-fun e!807914 () Bool)

(assert (=> d!153767 (=> res!965165 e!807914)))

(assert (=> d!153767 (= res!965165 (= (select (arr!47018 a!2831) #b00000000000000000000000000000000) lt!629736))))

(assert (=> d!153767 (= (arrayContainsKey!0 a!2831 lt!629736 #b00000000000000000000000000000000) e!807914)))

(declare-fun b!1430937 () Bool)

(declare-fun e!807915 () Bool)

(assert (=> b!1430937 (= e!807914 e!807915)))

(declare-fun res!965166 () Bool)

(assert (=> b!1430937 (=> (not res!965166) (not e!807915))))

(assert (=> b!1430937 (= res!965166 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!47569 a!2831)))))

(declare-fun b!1430938 () Bool)

(assert (=> b!1430938 (= e!807915 (arrayContainsKey!0 a!2831 lt!629736 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!153767 (not res!965165)) b!1430937))

(assert (= (and b!1430937 res!965166) b!1430938))

(assert (=> d!153767 m!1320503))

(declare-fun m!1320897 () Bool)

(assert (=> b!1430938 m!1320897))

(assert (=> b!1430455 d!153767))

(declare-fun b!1430939 () Bool)

(declare-fun e!807918 () SeekEntryResult!11319)

(declare-fun lt!629938 () SeekEntryResult!11319)

(assert (=> b!1430939 (= e!807918 (MissingZero!11319 (index!47669 lt!629938)))))

(declare-fun b!1430940 () Bool)

(declare-fun e!807916 () SeekEntryResult!11319)

(declare-fun e!807917 () SeekEntryResult!11319)

(assert (=> b!1430940 (= e!807916 e!807917)))

(declare-fun lt!629939 () (_ BitVec 64))

(assert (=> b!1430940 (= lt!629939 (select (arr!47018 a!2831) (index!47669 lt!629938)))))

(declare-fun c!132384 () Bool)

(assert (=> b!1430940 (= c!132384 (= lt!629939 (select (arr!47018 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430941 () Bool)

(assert (=> b!1430941 (= e!807918 (seekKeyOrZeroReturnVacant!0 (x!129306 lt!629938) (index!47669 lt!629938) (index!47669 lt!629938) (select (arr!47018 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608))))

(declare-fun b!1430942 () Bool)

(declare-fun c!132385 () Bool)

(assert (=> b!1430942 (= c!132385 (= lt!629939 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430942 (= e!807917 e!807918)))

(declare-fun b!1430943 () Bool)

(assert (=> b!1430943 (= e!807917 (Found!11319 (index!47669 lt!629938)))))

(declare-fun b!1430944 () Bool)

(assert (=> b!1430944 (= e!807916 Undefined!11319)))

(declare-fun d!153769 () Bool)

(declare-fun lt!629937 () SeekEntryResult!11319)

(assert (=> d!153769 (and (or ((_ is Undefined!11319) lt!629937) (not ((_ is Found!11319) lt!629937)) (and (bvsge (index!47668 lt!629937) #b00000000000000000000000000000000) (bvslt (index!47668 lt!629937) (size!47569 a!2831)))) (or ((_ is Undefined!11319) lt!629937) ((_ is Found!11319) lt!629937) (not ((_ is MissingZero!11319) lt!629937)) (and (bvsge (index!47667 lt!629937) #b00000000000000000000000000000000) (bvslt (index!47667 lt!629937) (size!47569 a!2831)))) (or ((_ is Undefined!11319) lt!629937) ((_ is Found!11319) lt!629937) ((_ is MissingZero!11319) lt!629937) (not ((_ is MissingVacant!11319) lt!629937)) (and (bvsge (index!47670 lt!629937) #b00000000000000000000000000000000) (bvslt (index!47670 lt!629937) (size!47569 a!2831)))) (or ((_ is Undefined!11319) lt!629937) (ite ((_ is Found!11319) lt!629937) (= (select (arr!47018 a!2831) (index!47668 lt!629937)) (select (arr!47018 a!2831) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!11319) lt!629937) (= (select (arr!47018 a!2831) (index!47667 lt!629937)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!11319) lt!629937) (= (select (arr!47018 a!2831) (index!47670 lt!629937)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153769 (= lt!629937 e!807916)))

(declare-fun c!132386 () Bool)

(assert (=> d!153769 (= c!132386 (and ((_ is Intermediate!11319) lt!629938) (undefined!12131 lt!629938)))))

(assert (=> d!153769 (= lt!629938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47018 a!2831) #b00000000000000000000000000000000) mask!2608) (select (arr!47018 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608))))

(assert (=> d!153769 (validMask!0 mask!2608)))

(assert (=> d!153769 (= (seekEntryOrOpen!0 (select (arr!47018 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) lt!629937)))

(assert (= (and d!153769 c!132386) b!1430944))

(assert (= (and d!153769 (not c!132386)) b!1430940))

(assert (= (and b!1430940 c!132384) b!1430943))

(assert (= (and b!1430940 (not c!132384)) b!1430942))

(assert (= (and b!1430942 c!132385) b!1430939))

(assert (= (and b!1430942 (not c!132385)) b!1430941))

(declare-fun m!1320899 () Bool)

(assert (=> b!1430940 m!1320899))

(assert (=> b!1430941 m!1320503))

(declare-fun m!1320901 () Bool)

(assert (=> b!1430941 m!1320901))

(assert (=> d!153769 m!1320441))

(declare-fun m!1320903 () Bool)

(assert (=> d!153769 m!1320903))

(declare-fun m!1320905 () Bool)

(assert (=> d!153769 m!1320905))

(assert (=> d!153769 m!1320503))

(declare-fun m!1320907 () Bool)

(assert (=> d!153769 m!1320907))

(declare-fun m!1320909 () Bool)

(assert (=> d!153769 m!1320909))

(assert (=> d!153769 m!1320503))

(assert (=> d!153769 m!1320905))

(declare-fun m!1320911 () Bool)

(assert (=> d!153769 m!1320911))

(assert (=> b!1430455 d!153769))

(declare-fun b!1430957 () Bool)

(declare-fun e!807927 () SeekEntryResult!11319)

(assert (=> b!1430957 (= e!807927 Undefined!11319)))

(declare-fun b!1430958 () Bool)

(declare-fun e!807925 () SeekEntryResult!11319)

(assert (=> b!1430958 (= e!807925 (MissingVacant!11319 (index!47669 lt!629745)))))

(declare-fun lt!629944 () SeekEntryResult!11319)

(declare-fun d!153771 () Bool)

(assert (=> d!153771 (and (or ((_ is Undefined!11319) lt!629944) (not ((_ is Found!11319) lt!629944)) (and (bvsge (index!47668 lt!629944) #b00000000000000000000000000000000) (bvslt (index!47668 lt!629944) (size!47569 a!2831)))) (or ((_ is Undefined!11319) lt!629944) ((_ is Found!11319) lt!629944) (not ((_ is MissingVacant!11319) lt!629944)) (not (= (index!47670 lt!629944) (index!47669 lt!629745))) (and (bvsge (index!47670 lt!629944) #b00000000000000000000000000000000) (bvslt (index!47670 lt!629944) (size!47569 a!2831)))) (or ((_ is Undefined!11319) lt!629944) (ite ((_ is Found!11319) lt!629944) (= (select (arr!47018 a!2831) (index!47668 lt!629944)) (select (arr!47018 a!2831) j!81)) (and ((_ is MissingVacant!11319) lt!629944) (= (index!47670 lt!629944) (index!47669 lt!629745)) (= (select (arr!47018 a!2831) (index!47670 lt!629944)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!153771 (= lt!629944 e!807927)))

(declare-fun c!132394 () Bool)

(assert (=> d!153771 (= c!132394 (bvsge (x!129306 lt!629745) #b01111111111111111111111111111110))))

(declare-fun lt!629945 () (_ BitVec 64))

(assert (=> d!153771 (= lt!629945 (select (arr!47018 a!2831) (index!47669 lt!629745)))))

(assert (=> d!153771 (validMask!0 mask!2608)))

(assert (=> d!153771 (= (seekKeyOrZeroReturnVacant!0 (x!129306 lt!629745) (index!47669 lt!629745) (index!47669 lt!629745) (select (arr!47018 a!2831) j!81) a!2831 mask!2608) lt!629944)))

(declare-fun b!1430959 () Bool)

(declare-fun e!807926 () SeekEntryResult!11319)

(assert (=> b!1430959 (= e!807926 (Found!11319 (index!47669 lt!629745)))))

(declare-fun b!1430960 () Bool)

(assert (=> b!1430960 (= e!807927 e!807926)))

(declare-fun c!132395 () Bool)

(assert (=> b!1430960 (= c!132395 (= lt!629945 (select (arr!47018 a!2831) j!81)))))

(declare-fun b!1430961 () Bool)

(assert (=> b!1430961 (= e!807925 (seekKeyOrZeroReturnVacant!0 (bvadd (x!129306 lt!629745) #b00000000000000000000000000000001) (nextIndex!0 (index!47669 lt!629745) (x!129306 lt!629745) mask!2608) (index!47669 lt!629745) (select (arr!47018 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430962 () Bool)

(declare-fun c!132393 () Bool)

(assert (=> b!1430962 (= c!132393 (= lt!629945 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430962 (= e!807926 e!807925)))

(assert (= (and d!153771 c!132394) b!1430957))

(assert (= (and d!153771 (not c!132394)) b!1430960))

(assert (= (and b!1430960 c!132395) b!1430959))

(assert (= (and b!1430960 (not c!132395)) b!1430962))

(assert (= (and b!1430962 c!132393) b!1430958))

(assert (= (and b!1430962 (not c!132393)) b!1430961))

(declare-fun m!1320913 () Bool)

(assert (=> d!153771 m!1320913))

(declare-fun m!1320915 () Bool)

(assert (=> d!153771 m!1320915))

(assert (=> d!153771 m!1320515))

(assert (=> d!153771 m!1320441))

(declare-fun m!1320917 () Bool)

(assert (=> b!1430961 m!1320917))

(assert (=> b!1430961 m!1320917))

(assert (=> b!1430961 m!1320419))

(declare-fun m!1320919 () Bool)

(assert (=> b!1430961 m!1320919))

(assert (=> b!1430470 d!153771))

(declare-fun d!153773 () Bool)

(declare-fun e!807932 () Bool)

(assert (=> d!153773 e!807932))

(declare-fun c!132397 () Bool)

(declare-fun lt!629946 () SeekEntryResult!11319)

(assert (=> d!153773 (= c!132397 (and ((_ is Intermediate!11319) lt!629946) (undefined!12131 lt!629946)))))

(declare-fun e!807930 () SeekEntryResult!11319)

(assert (=> d!153773 (= lt!629946 e!807930)))

(declare-fun c!132396 () Bool)

(assert (=> d!153773 (= c!132396 (bvsge (bvadd x!605 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!629947 () (_ BitVec 64))

(assert (=> d!153773 (= lt!629947 (select (arr!47018 lt!629713) (nextIndex!0 index!585 x!605 mask!2608)))))

(assert (=> d!153773 (validMask!0 mask!2608)))

(assert (=> d!153773 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!629712 lt!629713 mask!2608) lt!629946)))

(declare-fun b!1430963 () Bool)

(assert (=> b!1430963 (= e!807930 (Intermediate!11319 true (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001)))))

(declare-fun b!1430964 () Bool)

(assert (=> b!1430964 (and (bvsge (index!47669 lt!629946) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629946) (size!47569 lt!629713)))))

(declare-fun res!965168 () Bool)

(assert (=> b!1430964 (= res!965168 (= (select (arr!47018 lt!629713) (index!47669 lt!629946)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807928 () Bool)

(assert (=> b!1430964 (=> res!965168 e!807928)))

(declare-fun b!1430965 () Bool)

(declare-fun e!807929 () SeekEntryResult!11319)

(assert (=> b!1430965 (= e!807930 e!807929)))

(declare-fun c!132398 () Bool)

(assert (=> b!1430965 (= c!132398 (or (= lt!629947 lt!629712) (= (bvadd lt!629947 lt!629947) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430966 () Bool)

(assert (=> b!1430966 (= e!807932 (bvsge (x!129306 lt!629946) #b01111111111111111111111111111110))))

(declare-fun b!1430967 () Bool)

(assert (=> b!1430967 (and (bvsge (index!47669 lt!629946) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629946) (size!47569 lt!629713)))))

(declare-fun res!965169 () Bool)

(assert (=> b!1430967 (= res!965169 (= (select (arr!47018 lt!629713) (index!47669 lt!629946)) lt!629712))))

(assert (=> b!1430967 (=> res!965169 e!807928)))

(declare-fun e!807931 () Bool)

(assert (=> b!1430967 (= e!807931 e!807928)))

(declare-fun b!1430968 () Bool)

(assert (=> b!1430968 (= e!807929 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001) mask!2608) lt!629712 lt!629713 mask!2608))))

(declare-fun b!1430969 () Bool)

(assert (=> b!1430969 (= e!807932 e!807931)))

(declare-fun res!965167 () Bool)

(assert (=> b!1430969 (= res!965167 (and ((_ is Intermediate!11319) lt!629946) (not (undefined!12131 lt!629946)) (bvslt (x!129306 lt!629946) #b01111111111111111111111111111110) (bvsge (x!129306 lt!629946) #b00000000000000000000000000000000) (bvsge (x!129306 lt!629946) (bvadd x!605 #b00000000000000000000000000000001))))))

(assert (=> b!1430969 (=> (not res!965167) (not e!807931))))

(declare-fun b!1430970 () Bool)

(assert (=> b!1430970 (and (bvsge (index!47669 lt!629946) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629946) (size!47569 lt!629713)))))

(assert (=> b!1430970 (= e!807928 (= (select (arr!47018 lt!629713) (index!47669 lt!629946)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430971 () Bool)

(assert (=> b!1430971 (= e!807929 (Intermediate!11319 false (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001)))))

(assert (= (and d!153773 c!132396) b!1430963))

(assert (= (and d!153773 (not c!132396)) b!1430965))

(assert (= (and b!1430965 c!132398) b!1430971))

(assert (= (and b!1430965 (not c!132398)) b!1430968))

(assert (= (and d!153773 c!132397) b!1430966))

(assert (= (and d!153773 (not c!132397)) b!1430969))

(assert (= (and b!1430969 res!965167) b!1430967))

(assert (= (and b!1430967 (not res!965169)) b!1430964))

(assert (= (and b!1430964 (not res!965168)) b!1430970))

(assert (=> d!153773 m!1320557))

(declare-fun m!1320921 () Bool)

(assert (=> d!153773 m!1320921))

(assert (=> d!153773 m!1320441))

(declare-fun m!1320923 () Bool)

(assert (=> b!1430967 m!1320923))

(assert (=> b!1430970 m!1320923))

(assert (=> b!1430968 m!1320557))

(declare-fun m!1320925 () Bool)

(assert (=> b!1430968 m!1320925))

(assert (=> b!1430968 m!1320925))

(declare-fun m!1320927 () Bool)

(assert (=> b!1430968 m!1320927))

(assert (=> b!1430964 m!1320923))

(assert (=> b!1430566 d!153773))

(declare-fun d!153775 () Bool)

(declare-fun lt!629950 () (_ BitVec 32))

(assert (=> d!153775 (and (bvsge lt!629950 #b00000000000000000000000000000000) (bvslt lt!629950 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!153775 (= lt!629950 (choose!52 index!585 x!605 mask!2608))))

(assert (=> d!153775 (validMask!0 mask!2608)))

(assert (=> d!153775 (= (nextIndex!0 index!585 x!605 mask!2608) lt!629950)))

(declare-fun bs!41679 () Bool)

(assert (= bs!41679 d!153775))

(declare-fun m!1320929 () Bool)

(assert (=> bs!41679 m!1320929))

(assert (=> bs!41679 m!1320441))

(assert (=> b!1430566 d!153775))

(declare-fun d!153777 () Bool)

(declare-fun e!807937 () Bool)

(assert (=> d!153777 e!807937))

(declare-fun c!132400 () Bool)

(declare-fun lt!629951 () SeekEntryResult!11319)

(assert (=> d!153777 (= c!132400 (and ((_ is Intermediate!11319) lt!629951) (undefined!12131 lt!629951)))))

(declare-fun e!807935 () SeekEntryResult!11319)

(assert (=> d!153777 (= lt!629951 e!807935)))

(declare-fun c!132399 () Bool)

(assert (=> d!153777 (= c!132399 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!629952 () (_ BitVec 64))

(assert (=> d!153777 (= lt!629952 (select (arr!47018 a!2831) (nextIndex!0 (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608)))))

(assert (=> d!153777 (validMask!0 mask!2608)))

(assert (=> d!153777 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47018 a!2831) j!81) a!2831 mask!2608) lt!629951)))

(declare-fun b!1430972 () Bool)

(assert (=> b!1430972 (= e!807935 (Intermediate!11319 true (nextIndex!0 (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1430973 () Bool)

(assert (=> b!1430973 (and (bvsge (index!47669 lt!629951) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629951) (size!47569 a!2831)))))

(declare-fun res!965171 () Bool)

(assert (=> b!1430973 (= res!965171 (= (select (arr!47018 a!2831) (index!47669 lt!629951)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807933 () Bool)

(assert (=> b!1430973 (=> res!965171 e!807933)))

(declare-fun b!1430974 () Bool)

(declare-fun e!807934 () SeekEntryResult!11319)

(assert (=> b!1430974 (= e!807935 e!807934)))

(declare-fun c!132401 () Bool)

(assert (=> b!1430974 (= c!132401 (or (= lt!629952 (select (arr!47018 a!2831) j!81)) (= (bvadd lt!629952 lt!629952) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430975 () Bool)

(assert (=> b!1430975 (= e!807937 (bvsge (x!129306 lt!629951) #b01111111111111111111111111111110))))

(declare-fun b!1430976 () Bool)

(assert (=> b!1430976 (and (bvsge (index!47669 lt!629951) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629951) (size!47569 a!2831)))))

(declare-fun res!965172 () Bool)

(assert (=> b!1430976 (= res!965172 (= (select (arr!47018 a!2831) (index!47669 lt!629951)) (select (arr!47018 a!2831) j!81)))))

(assert (=> b!1430976 (=> res!965172 e!807933)))

(declare-fun e!807936 () Bool)

(assert (=> b!1430976 (= e!807936 e!807933)))

(declare-fun b!1430977 () Bool)

(assert (=> b!1430977 (= e!807934 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2608) (select (arr!47018 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430978 () Bool)

(assert (=> b!1430978 (= e!807937 e!807936)))

(declare-fun res!965170 () Bool)

(assert (=> b!1430978 (= res!965170 (and ((_ is Intermediate!11319) lt!629951) (not (undefined!12131 lt!629951)) (bvslt (x!129306 lt!629951) #b01111111111111111111111111111110) (bvsge (x!129306 lt!629951) #b00000000000000000000000000000000) (bvsge (x!129306 lt!629951) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1430978 (=> (not res!965170) (not e!807936))))

(declare-fun b!1430979 () Bool)

(assert (=> b!1430979 (and (bvsge (index!47669 lt!629951) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629951) (size!47569 a!2831)))))

(assert (=> b!1430979 (= e!807933 (= (select (arr!47018 a!2831) (index!47669 lt!629951)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430980 () Bool)

(assert (=> b!1430980 (= e!807934 (Intermediate!11319 false (nextIndex!0 (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!153777 c!132399) b!1430972))

(assert (= (and d!153777 (not c!132399)) b!1430974))

(assert (= (and b!1430974 c!132401) b!1430980))

(assert (= (and b!1430974 (not c!132401)) b!1430977))

(assert (= (and d!153777 c!132400) b!1430975))

(assert (= (and d!153777 (not c!132400)) b!1430978))

(assert (= (and b!1430978 res!965170) b!1430976))

(assert (= (and b!1430976 (not res!965172)) b!1430973))

(assert (= (and b!1430973 (not res!965171)) b!1430979))

(assert (=> d!153777 m!1320565))

(declare-fun m!1320931 () Bool)

(assert (=> d!153777 m!1320931))

(assert (=> d!153777 m!1320441))

(declare-fun m!1320933 () Bool)

(assert (=> b!1430976 m!1320933))

(assert (=> b!1430979 m!1320933))

(assert (=> b!1430977 m!1320565))

(declare-fun m!1320935 () Bool)

(assert (=> b!1430977 m!1320935))

(assert (=> b!1430977 m!1320935))

(assert (=> b!1430977 m!1320419))

(declare-fun m!1320937 () Bool)

(assert (=> b!1430977 m!1320937))

(assert (=> b!1430973 m!1320933))

(assert (=> b!1430575 d!153777))

(declare-fun d!153779 () Bool)

(declare-fun lt!629953 () (_ BitVec 32))

(assert (=> d!153779 (and (bvsge lt!629953 #b00000000000000000000000000000000) (bvslt lt!629953 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(assert (=> d!153779 (= lt!629953 (choose!52 (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608))))

(assert (=> d!153779 (validMask!0 mask!2608)))

(assert (=> d!153779 (= (nextIndex!0 (toIndex!0 (select (arr!47018 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629953)))

(declare-fun bs!41680 () Bool)

(assert (= bs!41680 d!153779))

(assert (=> bs!41680 m!1320455))

(declare-fun m!1320939 () Bool)

(assert (=> bs!41680 m!1320939))

(assert (=> bs!41680 m!1320441))

(assert (=> b!1430575 d!153779))

(declare-fun d!153781 () Bool)

(declare-fun res!965174 () Bool)

(declare-fun e!807939 () Bool)

(assert (=> d!153781 (=> res!965174 e!807939)))

(assert (=> d!153781 (= res!965174 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!47569 a!2831)))))

(assert (=> d!153781 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608) e!807939)))

(declare-fun b!1430981 () Bool)

(declare-fun e!807940 () Bool)

(declare-fun call!67453 () Bool)

(assert (=> b!1430981 (= e!807940 call!67453)))

(declare-fun b!1430982 () Bool)

(declare-fun e!807938 () Bool)

(assert (=> b!1430982 (= e!807938 call!67453)))

(declare-fun b!1430983 () Bool)

(assert (=> b!1430983 (= e!807939 e!807938)))

(declare-fun c!132402 () Bool)

(assert (=> b!1430983 (= c!132402 (validKeyInArray!0 (select (arr!47018 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1430984 () Bool)

(assert (=> b!1430984 (= e!807938 e!807940)))

(declare-fun lt!629955 () (_ BitVec 64))

(assert (=> b!1430984 (= lt!629955 (select (arr!47018 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!629956 () Unit!48332)

(assert (=> b!1430984 (= lt!629956 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629955 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1430984 (arrayContainsKey!0 a!2831 lt!629955 #b00000000000000000000000000000000)))

(declare-fun lt!629954 () Unit!48332)

(assert (=> b!1430984 (= lt!629954 lt!629956)))

(declare-fun res!965173 () Bool)

(assert (=> b!1430984 (= res!965173 (= (seekEntryOrOpen!0 (select (arr!47018 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!2831 mask!2608) (Found!11319 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1430984 (=> (not res!965173) (not e!807940))))

(declare-fun bm!67450 () Bool)

(assert (=> bm!67450 (= call!67453 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2831 mask!2608))))

(assert (= (and d!153781 (not res!965174)) b!1430983))

(assert (= (and b!1430983 c!132402) b!1430984))

(assert (= (and b!1430983 (not c!132402)) b!1430982))

(assert (= (and b!1430984 res!965173) b!1430981))

(assert (= (or b!1430981 b!1430982) bm!67450))

(declare-fun m!1320941 () Bool)

(assert (=> b!1430983 m!1320941))

(assert (=> b!1430983 m!1320941))

(declare-fun m!1320943 () Bool)

(assert (=> b!1430983 m!1320943))

(assert (=> b!1430984 m!1320941))

(declare-fun m!1320945 () Bool)

(assert (=> b!1430984 m!1320945))

(declare-fun m!1320947 () Bool)

(assert (=> b!1430984 m!1320947))

(assert (=> b!1430984 m!1320941))

(declare-fun m!1320949 () Bool)

(assert (=> b!1430984 m!1320949))

(declare-fun m!1320951 () Bool)

(assert (=> bm!67450 m!1320951))

(assert (=> bm!67425 d!153781))

(assert (=> b!1430629 d!153617))

(assert (=> d!153643 d!153641))

(declare-fun d!153783 () Bool)

(assert (=> d!153783 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(assert (=> d!153783 true))

(declare-fun _$72!149 () Unit!48332)

(assert (=> d!153783 (= (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) _$72!149)))

(declare-fun bs!41681 () Bool)

(assert (= bs!41681 d!153783))

(assert (=> bs!41681 m!1320451))

(assert (=> d!153643 d!153783))

(assert (=> d!153643 d!153597))

(declare-fun d!153785 () Bool)

(declare-fun res!965176 () Bool)

(declare-fun e!807941 () Bool)

(assert (=> d!153785 (=> res!965176 e!807941)))

(assert (=> d!153785 (= res!965176 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!47569 a!2831)))))

(assert (=> d!153785 (= (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132245 (Cons!33704 (select (arr!47018 a!2831) #b00000000000000000000000000000000) Nil!33705) Nil!33705)) e!807941)))

(declare-fun b!1430985 () Bool)

(declare-fun e!807944 () Bool)

(assert (=> b!1430985 (= e!807944 (contains!9871 (ite c!132245 (Cons!33704 (select (arr!47018 a!2831) #b00000000000000000000000000000000) Nil!33705) Nil!33705) (select (arr!47018 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1430986 () Bool)

(declare-fun e!807943 () Bool)

(assert (=> b!1430986 (= e!807941 e!807943)))

(declare-fun res!965177 () Bool)

(assert (=> b!1430986 (=> (not res!965177) (not e!807943))))

(assert (=> b!1430986 (= res!965177 (not e!807944))))

(declare-fun res!965175 () Bool)

(assert (=> b!1430986 (=> (not res!965175) (not e!807944))))

(assert (=> b!1430986 (= res!965175 (validKeyInArray!0 (select (arr!47018 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1430987 () Bool)

(declare-fun e!807942 () Bool)

(declare-fun call!67454 () Bool)

(assert (=> b!1430987 (= e!807942 call!67454)))

(declare-fun b!1430988 () Bool)

(assert (=> b!1430988 (= e!807942 call!67454)))

(declare-fun c!132403 () Bool)

(declare-fun bm!67451 () Bool)

(assert (=> bm!67451 (= call!67454 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!132403 (Cons!33704 (select (arr!47018 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!132245 (Cons!33704 (select (arr!47018 a!2831) #b00000000000000000000000000000000) Nil!33705) Nil!33705)) (ite c!132245 (Cons!33704 (select (arr!47018 a!2831) #b00000000000000000000000000000000) Nil!33705) Nil!33705))))))

(declare-fun b!1430989 () Bool)

(assert (=> b!1430989 (= e!807943 e!807942)))

(assert (=> b!1430989 (= c!132403 (validKeyInArray!0 (select (arr!47018 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!153785 (not res!965176)) b!1430986))

(assert (= (and b!1430986 res!965175) b!1430985))

(assert (= (and b!1430986 res!965177) b!1430989))

(assert (= (and b!1430989 c!132403) b!1430988))

(assert (= (and b!1430989 (not c!132403)) b!1430987))

(assert (= (or b!1430988 b!1430987) bm!67451))

(assert (=> b!1430985 m!1320941))

(assert (=> b!1430985 m!1320941))

(declare-fun m!1320953 () Bool)

(assert (=> b!1430985 m!1320953))

(assert (=> b!1430986 m!1320941))

(assert (=> b!1430986 m!1320941))

(assert (=> b!1430986 m!1320943))

(assert (=> bm!67451 m!1320941))

(declare-fun m!1320955 () Bool)

(assert (=> bm!67451 m!1320955))

(assert (=> b!1430989 m!1320941))

(assert (=> b!1430989 m!1320941))

(assert (=> b!1430989 m!1320943))

(assert (=> bm!67431 d!153785))

(assert (=> b!1430503 d!153763))

(declare-fun d!153787 () Bool)

(declare-fun e!807949 () Bool)

(assert (=> d!153787 e!807949))

(declare-fun c!132405 () Bool)

(declare-fun lt!629957 () SeekEntryResult!11319)

(assert (=> d!153787 (= c!132405 (and ((_ is Intermediate!11319) lt!629957) (undefined!12131 lt!629957)))))

(declare-fun e!807947 () SeekEntryResult!11319)

(assert (=> d!153787 (= lt!629957 e!807947)))

(declare-fun c!132404 () Bool)

(assert (=> d!153787 (= c!132404 (bvsge (bvadd x!605 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!629958 () (_ BitVec 64))

(assert (=> d!153787 (= lt!629958 (select (arr!47018 a!2831) (nextIndex!0 index!585 x!605 mask!2608)))))

(assert (=> d!153787 (validMask!0 mask!2608)))

(assert (=> d!153787 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47018 a!2831) j!81) a!2831 mask!2608) lt!629957)))

(declare-fun b!1430990 () Bool)

(assert (=> b!1430990 (= e!807947 (Intermediate!11319 true (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001)))))

(declare-fun b!1430991 () Bool)

(assert (=> b!1430991 (and (bvsge (index!47669 lt!629957) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629957) (size!47569 a!2831)))))

(declare-fun res!965179 () Bool)

(assert (=> b!1430991 (= res!965179 (= (select (arr!47018 a!2831) (index!47669 lt!629957)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807945 () Bool)

(assert (=> b!1430991 (=> res!965179 e!807945)))

(declare-fun b!1430992 () Bool)

(declare-fun e!807946 () SeekEntryResult!11319)

(assert (=> b!1430992 (= e!807947 e!807946)))

(declare-fun c!132406 () Bool)

(assert (=> b!1430992 (= c!132406 (or (= lt!629958 (select (arr!47018 a!2831) j!81)) (= (bvadd lt!629958 lt!629958) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430993 () Bool)

(assert (=> b!1430993 (= e!807949 (bvsge (x!129306 lt!629957) #b01111111111111111111111111111110))))

(declare-fun b!1430994 () Bool)

(assert (=> b!1430994 (and (bvsge (index!47669 lt!629957) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629957) (size!47569 a!2831)))))

(declare-fun res!965180 () Bool)

(assert (=> b!1430994 (= res!965180 (= (select (arr!47018 a!2831) (index!47669 lt!629957)) (select (arr!47018 a!2831) j!81)))))

(assert (=> b!1430994 (=> res!965180 e!807945)))

(declare-fun e!807948 () Bool)

(assert (=> b!1430994 (= e!807948 e!807945)))

(declare-fun b!1430995 () Bool)

(assert (=> b!1430995 (= e!807946 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001) mask!2608) (select (arr!47018 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430996 () Bool)

(assert (=> b!1430996 (= e!807949 e!807948)))

(declare-fun res!965178 () Bool)

(assert (=> b!1430996 (= res!965178 (and ((_ is Intermediate!11319) lt!629957) (not (undefined!12131 lt!629957)) (bvslt (x!129306 lt!629957) #b01111111111111111111111111111110) (bvsge (x!129306 lt!629957) #b00000000000000000000000000000000) (bvsge (x!129306 lt!629957) (bvadd x!605 #b00000000000000000000000000000001))))))

(assert (=> b!1430996 (=> (not res!965178) (not e!807948))))

(declare-fun b!1430997 () Bool)

(assert (=> b!1430997 (and (bvsge (index!47669 lt!629957) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629957) (size!47569 a!2831)))))

(assert (=> b!1430997 (= e!807945 (= (select (arr!47018 a!2831) (index!47669 lt!629957)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430998 () Bool)

(assert (=> b!1430998 (= e!807946 (Intermediate!11319 false (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001)))))

(assert (= (and d!153787 c!132404) b!1430990))

(assert (= (and d!153787 (not c!132404)) b!1430992))

(assert (= (and b!1430992 c!132406) b!1430998))

(assert (= (and b!1430992 (not c!132406)) b!1430995))

(assert (= (and d!153787 c!132405) b!1430993))

(assert (= (and d!153787 (not c!132405)) b!1430996))

(assert (= (and b!1430996 res!965178) b!1430994))

(assert (= (and b!1430994 (not res!965180)) b!1430991))

(assert (= (and b!1430991 (not res!965179)) b!1430997))

(assert (=> d!153787 m!1320557))

(declare-fun m!1320957 () Bool)

(assert (=> d!153787 m!1320957))

(assert (=> d!153787 m!1320441))

(declare-fun m!1320959 () Bool)

(assert (=> b!1430994 m!1320959))

(assert (=> b!1430997 m!1320959))

(assert (=> b!1430995 m!1320557))

(assert (=> b!1430995 m!1320925))

(assert (=> b!1430995 m!1320925))

(assert (=> b!1430995 m!1320419))

(declare-fun m!1320961 () Bool)

(assert (=> b!1430995 m!1320961))

(assert (=> b!1430991 m!1320959))

(assert (=> b!1430602 d!153787))

(assert (=> b!1430602 d!153775))

(declare-fun d!153789 () Bool)

(assert (=> d!153789 (arrayContainsKey!0 a!2831 lt!629802 #b00000000000000000000000000000000)))

(declare-fun lt!629959 () Unit!48332)

(assert (=> d!153789 (= lt!629959 (choose!13 a!2831 lt!629802 j!81))))

(assert (=> d!153789 (bvsge j!81 #b00000000000000000000000000000000)))

(assert (=> d!153789 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629802 j!81) lt!629959)))

(declare-fun bs!41682 () Bool)

(assert (= bs!41682 d!153789))

(assert (=> bs!41682 m!1320583))

(declare-fun m!1320963 () Bool)

(assert (=> bs!41682 m!1320963))

(assert (=> b!1430630 d!153789))

(declare-fun d!153791 () Bool)

(declare-fun res!965181 () Bool)

(declare-fun e!807950 () Bool)

(assert (=> d!153791 (=> res!965181 e!807950)))

(assert (=> d!153791 (= res!965181 (= (select (arr!47018 a!2831) #b00000000000000000000000000000000) lt!629802))))

(assert (=> d!153791 (= (arrayContainsKey!0 a!2831 lt!629802 #b00000000000000000000000000000000) e!807950)))

(declare-fun b!1430999 () Bool)

(declare-fun e!807951 () Bool)

(assert (=> b!1430999 (= e!807950 e!807951)))

(declare-fun res!965182 () Bool)

(assert (=> b!1430999 (=> (not res!965182) (not e!807951))))

(assert (=> b!1430999 (= res!965182 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!47569 a!2831)))))

(declare-fun b!1431000 () Bool)

(assert (=> b!1431000 (= e!807951 (arrayContainsKey!0 a!2831 lt!629802 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!153791 (not res!965181)) b!1430999))

(assert (= (and b!1430999 res!965182) b!1431000))

(assert (=> d!153791 m!1320503))

(declare-fun m!1320965 () Bool)

(assert (=> b!1431000 m!1320965))

(assert (=> b!1430630 d!153791))

(assert (=> b!1430630 d!153601))

(assert (=> d!153619 d!153597))

(assert (=> d!153629 d!153597))

(declare-fun d!153793 () Bool)

(declare-fun res!965184 () Bool)

(declare-fun e!807953 () Bool)

(assert (=> d!153793 (=> res!965184 e!807953)))

(assert (=> d!153793 (= res!965184 (bvsge (bvadd j!81 #b00000000000000000000000000000001) (size!47569 a!2831)))))

(assert (=> d!153793 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608) e!807953)))

(declare-fun b!1431001 () Bool)

(declare-fun e!807954 () Bool)

(declare-fun call!67455 () Bool)

(assert (=> b!1431001 (= e!807954 call!67455)))

(declare-fun b!1431002 () Bool)

(declare-fun e!807952 () Bool)

(assert (=> b!1431002 (= e!807952 call!67455)))

(declare-fun b!1431003 () Bool)

(assert (=> b!1431003 (= e!807953 e!807952)))

(declare-fun c!132407 () Bool)

(assert (=> b!1431003 (= c!132407 (validKeyInArray!0 (select (arr!47018 a!2831) (bvadd j!81 #b00000000000000000000000000000001))))))

(declare-fun b!1431004 () Bool)

(assert (=> b!1431004 (= e!807952 e!807954)))

(declare-fun lt!629961 () (_ BitVec 64))

(assert (=> b!1431004 (= lt!629961 (select (arr!47018 a!2831) (bvadd j!81 #b00000000000000000000000000000001)))))

(declare-fun lt!629962 () Unit!48332)

(assert (=> b!1431004 (= lt!629962 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629961 (bvadd j!81 #b00000000000000000000000000000001)))))

(assert (=> b!1431004 (arrayContainsKey!0 a!2831 lt!629961 #b00000000000000000000000000000000)))

(declare-fun lt!629960 () Unit!48332)

(assert (=> b!1431004 (= lt!629960 lt!629962)))

(declare-fun res!965183 () Bool)

(assert (=> b!1431004 (= res!965183 (= (seekEntryOrOpen!0 (select (arr!47018 a!2831) (bvadd j!81 #b00000000000000000000000000000001)) a!2831 mask!2608) (Found!11319 (bvadd j!81 #b00000000000000000000000000000001))))))

(assert (=> b!1431004 (=> (not res!965183) (not e!807954))))

(declare-fun bm!67452 () Bool)

(assert (=> bm!67452 (= call!67455 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2831 mask!2608))))

(assert (= (and d!153793 (not res!965184)) b!1431003))

(assert (= (and b!1431003 c!132407) b!1431004))

(assert (= (and b!1431003 (not c!132407)) b!1431002))

(assert (= (and b!1431004 res!965183) b!1431001))

(assert (= (or b!1431001 b!1431002) bm!67452))

(declare-fun m!1320967 () Bool)

(assert (=> b!1431003 m!1320967))

(assert (=> b!1431003 m!1320967))

(declare-fun m!1320969 () Bool)

(assert (=> b!1431003 m!1320969))

(assert (=> b!1431004 m!1320967))

(declare-fun m!1320971 () Bool)

(assert (=> b!1431004 m!1320971))

(declare-fun m!1320973 () Bool)

(assert (=> b!1431004 m!1320973))

(assert (=> b!1431004 m!1320967))

(declare-fun m!1320975 () Bool)

(assert (=> b!1431004 m!1320975))

(declare-fun m!1320977 () Bool)

(assert (=> bm!67452 m!1320977))

(assert (=> bm!67435 d!153793))

(declare-fun d!153795 () Bool)

(declare-fun e!807959 () Bool)

(assert (=> d!153795 e!807959))

(declare-fun c!132409 () Bool)

(declare-fun lt!629963 () SeekEntryResult!11319)

(assert (=> d!153795 (= c!132409 (and ((_ is Intermediate!11319) lt!629963) (undefined!12131 lt!629963)))))

(declare-fun e!807957 () SeekEntryResult!11319)

(assert (=> d!153795 (= lt!629963 e!807957)))

(declare-fun c!132408 () Bool)

(assert (=> d!153795 (= c!132408 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!629964 () (_ BitVec 64))

(assert (=> d!153795 (= lt!629964 (select (arr!47018 lt!629713) (nextIndex!0 (toIndex!0 lt!629712 mask!2608) #b00000000000000000000000000000000 mask!2608)))))

(assert (=> d!153795 (validMask!0 mask!2608)))

(assert (=> d!153795 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!629712 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629712 lt!629713 mask!2608) lt!629963)))

(declare-fun b!1431005 () Bool)

(assert (=> b!1431005 (= e!807957 (Intermediate!11319 true (nextIndex!0 (toIndex!0 lt!629712 mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1431006 () Bool)

(assert (=> b!1431006 (and (bvsge (index!47669 lt!629963) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629963) (size!47569 lt!629713)))))

(declare-fun res!965186 () Bool)

(assert (=> b!1431006 (= res!965186 (= (select (arr!47018 lt!629713) (index!47669 lt!629963)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807955 () Bool)

(assert (=> b!1431006 (=> res!965186 e!807955)))

(declare-fun b!1431007 () Bool)

(declare-fun e!807956 () SeekEntryResult!11319)

(assert (=> b!1431007 (= e!807957 e!807956)))

(declare-fun c!132410 () Bool)

(assert (=> b!1431007 (= c!132410 (or (= lt!629964 lt!629712) (= (bvadd lt!629964 lt!629964) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1431008 () Bool)

(assert (=> b!1431008 (= e!807959 (bvsge (x!129306 lt!629963) #b01111111111111111111111111111110))))

(declare-fun b!1431009 () Bool)

(assert (=> b!1431009 (and (bvsge (index!47669 lt!629963) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629963) (size!47569 lt!629713)))))

(declare-fun res!965187 () Bool)

(assert (=> b!1431009 (= res!965187 (= (select (arr!47018 lt!629713) (index!47669 lt!629963)) lt!629712))))

(assert (=> b!1431009 (=> res!965187 e!807955)))

(declare-fun e!807958 () Bool)

(assert (=> b!1431009 (= e!807958 e!807955)))

(declare-fun b!1431010 () Bool)

(assert (=> b!1431010 (= e!807956 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 lt!629712 mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2608) lt!629712 lt!629713 mask!2608))))

(declare-fun b!1431011 () Bool)

(assert (=> b!1431011 (= e!807959 e!807958)))

(declare-fun res!965185 () Bool)

(assert (=> b!1431011 (= res!965185 (and ((_ is Intermediate!11319) lt!629963) (not (undefined!12131 lt!629963)) (bvslt (x!129306 lt!629963) #b01111111111111111111111111111110) (bvsge (x!129306 lt!629963) #b00000000000000000000000000000000) (bvsge (x!129306 lt!629963) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1431011 (=> (not res!965185) (not e!807958))))

(declare-fun b!1431012 () Bool)

(assert (=> b!1431012 (and (bvsge (index!47669 lt!629963) #b00000000000000000000000000000000) (bvslt (index!47669 lt!629963) (size!47569 lt!629713)))))

(assert (=> b!1431012 (= e!807955 (= (select (arr!47018 lt!629713) (index!47669 lt!629963)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1431013 () Bool)

(assert (=> b!1431013 (= e!807956 (Intermediate!11319 false (nextIndex!0 (toIndex!0 lt!629712 mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!153795 c!132408) b!1431005))

(assert (= (and d!153795 (not c!132408)) b!1431007))

(assert (= (and b!1431007 c!132410) b!1431013))

(assert (= (and b!1431007 (not c!132410)) b!1431010))

(assert (= (and d!153795 c!132409) b!1431008))

(assert (= (and d!153795 (not c!132409)) b!1431011))

(assert (= (and b!1431011 res!965185) b!1431009))

(assert (= (and b!1431009 (not res!965187)) b!1431006))

(assert (= (and b!1431006 (not res!965186)) b!1431012))

(assert (=> d!153795 m!1320577))

(declare-fun m!1320979 () Bool)

(assert (=> d!153795 m!1320979))

(assert (=> d!153795 m!1320441))

(declare-fun m!1320981 () Bool)

(assert (=> b!1431009 m!1320981))

(assert (=> b!1431012 m!1320981))

(assert (=> b!1431010 m!1320577))

(declare-fun m!1320983 () Bool)

(assert (=> b!1431010 m!1320983))

(assert (=> b!1431010 m!1320983))

(declare-fun m!1320985 () Bool)

(assert (=> b!1431010 m!1320985))

(assert (=> b!1431006 m!1320981))

(assert (=> b!1430623 d!153795))

(declare-fun d!153797 () Bool)

(declare-fun lt!629965 () (_ BitVec 32))

(assert (=> d!153797 (and (bvsge lt!629965 #b00000000000000000000000000000000) (bvslt lt!629965 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(assert (=> d!153797 (= lt!629965 (choose!52 (toIndex!0 lt!629712 mask!2608) #b00000000000000000000000000000000 mask!2608))))

(assert (=> d!153797 (validMask!0 mask!2608)))

(assert (=> d!153797 (= (nextIndex!0 (toIndex!0 lt!629712 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629965)))

(declare-fun bs!41683 () Bool)

(assert (= bs!41683 d!153797))

(assert (=> bs!41683 m!1320445))

(declare-fun m!1320987 () Bool)

(assert (=> bs!41683 m!1320987))

(assert (=> bs!41683 m!1320441))

(assert (=> b!1430623 d!153797))

(assert (=> d!153601 d!153629))

(assert (=> d!153601 d!153631))

(assert (=> d!153601 d!153597))

(assert (=> d!153633 d!153597))

(assert (=> d!153637 d!153597))

(check-sat (not b!1431010) (not d!153787) (not b!1430986) (not b!1431003) (not d!153797) (not d!153769) (not b!1430938) (not d!153771) (not b!1430989) (not b!1431004) (not b!1430932) (not b!1430977) (not d!153779) (not d!153761) (not b!1430985) (not d!153765) (not d!153783) (not d!153777) (not b!1431000) (not d!153795) (not b!1430941) (not d!153789) (not d!153773) (not b!1430995) (not bm!67450) (not b!1430961) (not d!153775) (not bm!67452) (not bm!67451) (not b!1430984) (not b!1430983) (not b!1430968))
(check-sat)
