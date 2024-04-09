; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126542 () Bool)

(assert start!126542)

(declare-fun b!1483454 () Bool)

(declare-fun e!831837 () Bool)

(declare-fun e!831834 () Bool)

(assert (=> b!1483454 (= e!831837 e!831834)))

(declare-fun res!1008437 () Bool)

(assert (=> b!1483454 (=> res!1008437 e!831834)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!647399 () (_ BitVec 64))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99421 0))(
  ( (array!99422 (arr!47982 (Array (_ BitVec 32) (_ BitVec 64))) (size!48533 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99421)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1483454 (= res!1008437 (or (and (= (select (arr!47982 a!2862) index!646) lt!647399) (= (select (arr!47982 a!2862) index!646) (select (arr!47982 a!2862) j!93))) (= (select (arr!47982 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1483454 (= lt!647399 (select (store (arr!47982 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483455 () Bool)

(declare-fun e!831830 () Bool)

(assert (=> b!1483455 (= e!831834 e!831830)))

(declare-fun res!1008440 () Bool)

(assert (=> b!1483455 (=> (not res!1008440) (not e!831830))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1483455 (= res!1008440 (and (= index!646 intermediateAfterIndex!19) (= lt!647399 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483456 () Bool)

(declare-fun res!1008442 () Bool)

(declare-fun e!831839 () Bool)

(assert (=> b!1483456 (=> (not res!1008442) (not e!831839))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1483456 (= res!1008442 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1483457 () Bool)

(declare-fun e!831833 () Bool)

(declare-fun e!831832 () Bool)

(assert (=> b!1483457 (= e!831833 e!831832)))

(declare-fun res!1008441 () Bool)

(assert (=> b!1483457 (=> (not res!1008441) (not e!831832))))

(assert (=> b!1483457 (= res!1008441 (= (select (store (arr!47982 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647398 () array!99421)

(assert (=> b!1483457 (= lt!647398 (array!99422 (store (arr!47982 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48533 a!2862)))))

(declare-fun b!1483458 () Bool)

(declare-fun e!831831 () Bool)

(assert (=> b!1483458 (= e!831831 true)))

(declare-fun lt!647403 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483458 (= lt!647403 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1483459 () Bool)

(declare-fun e!831836 () Bool)

(declare-fun lt!647404 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12245 0))(
  ( (MissingZero!12245 (index!51371 (_ BitVec 32))) (Found!12245 (index!51372 (_ BitVec 32))) (Intermediate!12245 (undefined!13057 Bool) (index!51373 (_ BitVec 32)) (x!132956 (_ BitVec 32))) (Undefined!12245) (MissingVacant!12245 (index!51374 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99421 (_ BitVec 32)) SeekEntryResult!12245)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99421 (_ BitVec 32)) SeekEntryResult!12245)

(assert (=> b!1483459 (= e!831836 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647404 lt!647398 mask!2687) (seekEntryOrOpen!0 lt!647404 lt!647398 mask!2687)))))

(declare-fun b!1483460 () Bool)

(declare-fun res!1008427 () Bool)

(assert (=> b!1483460 (=> (not res!1008427) (not e!831837))))

(assert (=> b!1483460 (= res!1008427 (= (seekEntryOrOpen!0 (select (arr!47982 a!2862) j!93) a!2862 mask!2687) (Found!12245 j!93)))))

(declare-fun lt!647402 () SeekEntryResult!12245)

(declare-fun b!1483461 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99421 (_ BitVec 32)) SeekEntryResult!12245)

(assert (=> b!1483461 (= e!831836 (= lt!647402 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647404 lt!647398 mask!2687)))))

(declare-fun b!1483462 () Bool)

(declare-fun res!1008434 () Bool)

(declare-fun e!831838 () Bool)

(assert (=> b!1483462 (=> (not res!1008434) (not e!831838))))

(declare-fun lt!647401 () SeekEntryResult!12245)

(assert (=> b!1483462 (= res!1008434 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47982 a!2862) j!93) a!2862 mask!2687) lt!647401))))

(declare-fun b!1483464 () Bool)

(assert (=> b!1483464 (= e!831830 (= (seekEntryOrOpen!0 lt!647404 lt!647398 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647404 lt!647398 mask!2687)))))

(declare-fun b!1483465 () Bool)

(declare-fun res!1008435 () Bool)

(assert (=> b!1483465 (=> (not res!1008435) (not e!831833))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483465 (= res!1008435 (validKeyInArray!0 (select (arr!47982 a!2862) i!1006)))))

(declare-fun b!1483466 () Bool)

(declare-fun res!1008438 () Bool)

(assert (=> b!1483466 (=> (not res!1008438) (not e!831833))))

(assert (=> b!1483466 (= res!1008438 (validKeyInArray!0 (select (arr!47982 a!2862) j!93)))))

(declare-fun b!1483467 () Bool)

(declare-fun res!1008431 () Bool)

(assert (=> b!1483467 (=> (not res!1008431) (not e!831833))))

(assert (=> b!1483467 (= res!1008431 (and (= (size!48533 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48533 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48533 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483468 () Bool)

(declare-fun res!1008436 () Bool)

(assert (=> b!1483468 (=> (not res!1008436) (not e!831833))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1483468 (= res!1008436 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48533 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48533 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48533 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1483469 () Bool)

(declare-fun res!1008439 () Bool)

(assert (=> b!1483469 (=> (not res!1008439) (not e!831833))))

(declare-datatypes ((List!34663 0))(
  ( (Nil!34660) (Cons!34659 (h!36033 (_ BitVec 64)) (t!49364 List!34663)) )
))
(declare-fun arrayNoDuplicates!0 (array!99421 (_ BitVec 32) List!34663) Bool)

(assert (=> b!1483469 (= res!1008439 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34660))))

(declare-fun b!1483470 () Bool)

(declare-fun res!1008428 () Bool)

(assert (=> b!1483470 (=> (not res!1008428) (not e!831839))))

(assert (=> b!1483470 (= res!1008428 e!831836)))

(declare-fun c!137039 () Bool)

(assert (=> b!1483470 (= c!137039 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1483471 () Bool)

(declare-fun res!1008426 () Bool)

(assert (=> b!1483471 (=> (not res!1008426) (not e!831837))))

(assert (=> b!1483471 (= res!1008426 (or (= (select (arr!47982 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47982 a!2862) intermediateBeforeIndex!19) (select (arr!47982 a!2862) j!93))))))

(declare-fun b!1483472 () Bool)

(assert (=> b!1483472 (= e!831832 e!831838)))

(declare-fun res!1008433 () Bool)

(assert (=> b!1483472 (=> (not res!1008433) (not e!831838))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483472 (= res!1008433 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47982 a!2862) j!93) mask!2687) (select (arr!47982 a!2862) j!93) a!2862 mask!2687) lt!647401))))

(assert (=> b!1483472 (= lt!647401 (Intermediate!12245 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1483473 () Bool)

(declare-fun res!1008429 () Bool)

(assert (=> b!1483473 (=> (not res!1008429) (not e!831833))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99421 (_ BitVec 32)) Bool)

(assert (=> b!1483473 (= res!1008429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1483474 () Bool)

(assert (=> b!1483474 (= e!831839 (not e!831831))))

(declare-fun res!1008443 () Bool)

(assert (=> b!1483474 (=> res!1008443 e!831831)))

(assert (=> b!1483474 (= res!1008443 (or (and (= (select (arr!47982 a!2862) index!646) (select (store (arr!47982 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47982 a!2862) index!646) (select (arr!47982 a!2862) j!93))) (= (select (arr!47982 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483474 e!831837))

(declare-fun res!1008432 () Bool)

(assert (=> b!1483474 (=> (not res!1008432) (not e!831837))))

(assert (=> b!1483474 (= res!1008432 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49778 0))(
  ( (Unit!49779) )
))
(declare-fun lt!647400 () Unit!49778)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99421 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49778)

(assert (=> b!1483474 (= lt!647400 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483463 () Bool)

(assert (=> b!1483463 (= e!831838 e!831839)))

(declare-fun res!1008430 () Bool)

(assert (=> b!1483463 (=> (not res!1008430) (not e!831839))))

(assert (=> b!1483463 (= res!1008430 (= lt!647402 (Intermediate!12245 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1483463 (= lt!647402 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647404 mask!2687) lt!647404 lt!647398 mask!2687))))

(assert (=> b!1483463 (= lt!647404 (select (store (arr!47982 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!1008444 () Bool)

(assert (=> start!126542 (=> (not res!1008444) (not e!831833))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126542 (= res!1008444 (validMask!0 mask!2687))))

(assert (=> start!126542 e!831833))

(assert (=> start!126542 true))

(declare-fun array_inv!36927 (array!99421) Bool)

(assert (=> start!126542 (array_inv!36927 a!2862)))

(assert (= (and start!126542 res!1008444) b!1483467))

(assert (= (and b!1483467 res!1008431) b!1483465))

(assert (= (and b!1483465 res!1008435) b!1483466))

(assert (= (and b!1483466 res!1008438) b!1483473))

(assert (= (and b!1483473 res!1008429) b!1483469))

(assert (= (and b!1483469 res!1008439) b!1483468))

(assert (= (and b!1483468 res!1008436) b!1483457))

(assert (= (and b!1483457 res!1008441) b!1483472))

(assert (= (and b!1483472 res!1008433) b!1483462))

(assert (= (and b!1483462 res!1008434) b!1483463))

(assert (= (and b!1483463 res!1008430) b!1483470))

(assert (= (and b!1483470 c!137039) b!1483461))

(assert (= (and b!1483470 (not c!137039)) b!1483459))

(assert (= (and b!1483470 res!1008428) b!1483456))

(assert (= (and b!1483456 res!1008442) b!1483474))

(assert (= (and b!1483474 res!1008432) b!1483460))

(assert (= (and b!1483460 res!1008427) b!1483471))

(assert (= (and b!1483471 res!1008426) b!1483454))

(assert (= (and b!1483454 (not res!1008437)) b!1483455))

(assert (= (and b!1483455 res!1008440) b!1483464))

(assert (= (and b!1483474 (not res!1008443)) b!1483458))

(declare-fun m!1368977 () Bool)

(assert (=> b!1483469 m!1368977))

(declare-fun m!1368979 () Bool)

(assert (=> b!1483461 m!1368979))

(declare-fun m!1368981 () Bool)

(assert (=> b!1483472 m!1368981))

(assert (=> b!1483472 m!1368981))

(declare-fun m!1368983 () Bool)

(assert (=> b!1483472 m!1368983))

(assert (=> b!1483472 m!1368983))

(assert (=> b!1483472 m!1368981))

(declare-fun m!1368985 () Bool)

(assert (=> b!1483472 m!1368985))

(declare-fun m!1368987 () Bool)

(assert (=> b!1483471 m!1368987))

(assert (=> b!1483471 m!1368981))

(declare-fun m!1368989 () Bool)

(assert (=> b!1483465 m!1368989))

(assert (=> b!1483465 m!1368989))

(declare-fun m!1368991 () Bool)

(assert (=> b!1483465 m!1368991))

(assert (=> b!1483462 m!1368981))

(assert (=> b!1483462 m!1368981))

(declare-fun m!1368993 () Bool)

(assert (=> b!1483462 m!1368993))

(declare-fun m!1368995 () Bool)

(assert (=> b!1483458 m!1368995))

(declare-fun m!1368997 () Bool)

(assert (=> start!126542 m!1368997))

(declare-fun m!1368999 () Bool)

(assert (=> start!126542 m!1368999))

(declare-fun m!1369001 () Bool)

(assert (=> b!1483474 m!1369001))

(declare-fun m!1369003 () Bool)

(assert (=> b!1483474 m!1369003))

(declare-fun m!1369005 () Bool)

(assert (=> b!1483474 m!1369005))

(declare-fun m!1369007 () Bool)

(assert (=> b!1483474 m!1369007))

(declare-fun m!1369009 () Bool)

(assert (=> b!1483474 m!1369009))

(assert (=> b!1483474 m!1368981))

(declare-fun m!1369011 () Bool)

(assert (=> b!1483473 m!1369011))

(declare-fun m!1369013 () Bool)

(assert (=> b!1483464 m!1369013))

(declare-fun m!1369015 () Bool)

(assert (=> b!1483464 m!1369015))

(declare-fun m!1369017 () Bool)

(assert (=> b!1483463 m!1369017))

(assert (=> b!1483463 m!1369017))

(declare-fun m!1369019 () Bool)

(assert (=> b!1483463 m!1369019))

(assert (=> b!1483463 m!1369003))

(declare-fun m!1369021 () Bool)

(assert (=> b!1483463 m!1369021))

(assert (=> b!1483466 m!1368981))

(assert (=> b!1483466 m!1368981))

(declare-fun m!1369023 () Bool)

(assert (=> b!1483466 m!1369023))

(assert (=> b!1483459 m!1369015))

(assert (=> b!1483459 m!1369013))

(assert (=> b!1483457 m!1369003))

(declare-fun m!1369025 () Bool)

(assert (=> b!1483457 m!1369025))

(assert (=> b!1483454 m!1369007))

(assert (=> b!1483454 m!1368981))

(assert (=> b!1483454 m!1369003))

(assert (=> b!1483454 m!1369005))

(assert (=> b!1483460 m!1368981))

(assert (=> b!1483460 m!1368981))

(declare-fun m!1369027 () Bool)

(assert (=> b!1483460 m!1369027))

(push 1)

