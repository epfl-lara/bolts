; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124630 () Bool)

(assert start!124630)

(declare-fun b!1442301 () Bool)

(declare-fun e!812943 () Bool)

(declare-fun e!812944 () Bool)

(assert (=> b!1442301 (= e!812943 e!812944)))

(declare-fun res!974646 () Bool)

(assert (=> b!1442301 (=> (not res!974646) (not e!812944))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97995 0))(
  ( (array!97996 (arr!47281 (Array (_ BitVec 32) (_ BitVec 64))) (size!47832 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97995)

(assert (=> b!1442301 (= res!974646 (= (select (store (arr!47281 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633485 () array!97995)

(assert (=> b!1442301 (= lt!633485 (array!97996 (store (arr!47281 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47832 a!2862)))))

(declare-fun b!1442302 () Bool)

(declare-fun res!974643 () Bool)

(declare-fun e!812940 () Bool)

(assert (=> b!1442302 (=> (not res!974643) (not e!812940))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11556 0))(
  ( (MissingZero!11556 (index!48615 (_ BitVec 32))) (Found!11556 (index!48616 (_ BitVec 32))) (Intermediate!11556 (undefined!12368 Bool) (index!48617 (_ BitVec 32)) (x!130328 (_ BitVec 32))) (Undefined!11556) (MissingVacant!11556 (index!48618 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97995 (_ BitVec 32)) SeekEntryResult!11556)

(assert (=> b!1442302 (= res!974643 (= (seekEntryOrOpen!0 (select (arr!47281 a!2862) j!93) a!2862 mask!2687) (Found!11556 j!93)))))

(declare-fun res!974647 () Bool)

(assert (=> start!124630 (=> (not res!974647) (not e!812943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124630 (= res!974647 (validMask!0 mask!2687))))

(assert (=> start!124630 e!812943))

(assert (=> start!124630 true))

(declare-fun array_inv!36226 (array!97995) Bool)

(assert (=> start!124630 (array_inv!36226 a!2862)))

(declare-fun b!1442303 () Bool)

(declare-fun res!974648 () Bool)

(declare-fun e!812939 () Bool)

(assert (=> b!1442303 (=> (not res!974648) (not e!812939))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1442303 (= res!974648 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442304 () Bool)

(declare-fun res!974645 () Bool)

(declare-fun e!812942 () Bool)

(assert (=> b!1442304 (=> (not res!974645) (not e!812942))))

(declare-fun lt!633483 () SeekEntryResult!11556)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97995 (_ BitVec 32)) SeekEntryResult!11556)

(assert (=> b!1442304 (= res!974645 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47281 a!2862) j!93) a!2862 mask!2687) lt!633483))))

(declare-fun lt!633484 () (_ BitVec 64))

(declare-fun e!812945 () Bool)

(declare-fun b!1442305 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97995 (_ BitVec 32)) SeekEntryResult!11556)

(assert (=> b!1442305 (= e!812945 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633484 lt!633485 mask!2687) (seekEntryOrOpen!0 lt!633484 lt!633485 mask!2687)))))

(declare-fun b!1442306 () Bool)

(declare-fun res!974635 () Bool)

(assert (=> b!1442306 (=> (not res!974635) (not e!812943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442306 (= res!974635 (validKeyInArray!0 (select (arr!47281 a!2862) j!93)))))

(declare-fun b!1442307 () Bool)

(declare-fun res!974638 () Bool)

(assert (=> b!1442307 (=> (not res!974638) (not e!812943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97995 (_ BitVec 32)) Bool)

(assert (=> b!1442307 (= res!974638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442308 () Bool)

(assert (=> b!1442308 (= e!812939 (not true))))

(assert (=> b!1442308 e!812940))

(declare-fun res!974642 () Bool)

(assert (=> b!1442308 (=> (not res!974642) (not e!812940))))

(assert (=> b!1442308 (= res!974642 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48556 0))(
  ( (Unit!48557) )
))
(declare-fun lt!633486 () Unit!48556)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97995 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48556)

(assert (=> b!1442308 (= lt!633486 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442309 () Bool)

(declare-fun res!974637 () Bool)

(assert (=> b!1442309 (=> (not res!974637) (not e!812943))))

(declare-datatypes ((List!33962 0))(
  ( (Nil!33959) (Cons!33958 (h!35308 (_ BitVec 64)) (t!48663 List!33962)) )
))
(declare-fun arrayNoDuplicates!0 (array!97995 (_ BitVec 32) List!33962) Bool)

(assert (=> b!1442309 (= res!974637 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33959))))

(declare-fun b!1442310 () Bool)

(declare-fun res!974636 () Bool)

(assert (=> b!1442310 (=> (not res!974636) (not e!812943))))

(assert (=> b!1442310 (= res!974636 (and (= (size!47832 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47832 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47832 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442311 () Bool)

(assert (=> b!1442311 (= e!812942 e!812939)))

(declare-fun res!974649 () Bool)

(assert (=> b!1442311 (=> (not res!974649) (not e!812939))))

(declare-fun lt!633487 () SeekEntryResult!11556)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1442311 (= res!974649 (= lt!633487 (Intermediate!11556 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442311 (= lt!633487 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633484 mask!2687) lt!633484 lt!633485 mask!2687))))

(assert (=> b!1442311 (= lt!633484 (select (store (arr!47281 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442312 () Bool)

(assert (=> b!1442312 (= e!812944 e!812942)))

(declare-fun res!974644 () Bool)

(assert (=> b!1442312 (=> (not res!974644) (not e!812942))))

(assert (=> b!1442312 (= res!974644 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47281 a!2862) j!93) mask!2687) (select (arr!47281 a!2862) j!93) a!2862 mask!2687) lt!633483))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1442312 (= lt!633483 (Intermediate!11556 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442313 () Bool)

(assert (=> b!1442313 (= e!812940 (or (= (select (arr!47281 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47281 a!2862) intermediateBeforeIndex!19) (select (arr!47281 a!2862) j!93))))))

(declare-fun b!1442314 () Bool)

(declare-fun res!974641 () Bool)

(assert (=> b!1442314 (=> (not res!974641) (not e!812943))))

(assert (=> b!1442314 (= res!974641 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47832 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47832 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47832 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442315 () Bool)

(assert (=> b!1442315 (= e!812945 (= lt!633487 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633484 lt!633485 mask!2687)))))

(declare-fun b!1442316 () Bool)

(declare-fun res!974640 () Bool)

(assert (=> b!1442316 (=> (not res!974640) (not e!812939))))

(assert (=> b!1442316 (= res!974640 e!812945)))

(declare-fun c!133346 () Bool)

(assert (=> b!1442316 (= c!133346 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442317 () Bool)

(declare-fun res!974639 () Bool)

(assert (=> b!1442317 (=> (not res!974639) (not e!812943))))

(assert (=> b!1442317 (= res!974639 (validKeyInArray!0 (select (arr!47281 a!2862) i!1006)))))

(assert (= (and start!124630 res!974647) b!1442310))

(assert (= (and b!1442310 res!974636) b!1442317))

(assert (= (and b!1442317 res!974639) b!1442306))

(assert (= (and b!1442306 res!974635) b!1442307))

(assert (= (and b!1442307 res!974638) b!1442309))

(assert (= (and b!1442309 res!974637) b!1442314))

(assert (= (and b!1442314 res!974641) b!1442301))

(assert (= (and b!1442301 res!974646) b!1442312))

(assert (= (and b!1442312 res!974644) b!1442304))

(assert (= (and b!1442304 res!974645) b!1442311))

(assert (= (and b!1442311 res!974649) b!1442316))

(assert (= (and b!1442316 c!133346) b!1442315))

(assert (= (and b!1442316 (not c!133346)) b!1442305))

(assert (= (and b!1442316 res!974640) b!1442303))

(assert (= (and b!1442303 res!974648) b!1442308))

(assert (= (and b!1442308 res!974642) b!1442302))

(assert (= (and b!1442302 res!974643) b!1442313))

(declare-fun m!1331517 () Bool)

(assert (=> b!1442306 m!1331517))

(assert (=> b!1442306 m!1331517))

(declare-fun m!1331519 () Bool)

(assert (=> b!1442306 m!1331519))

(declare-fun m!1331521 () Bool)

(assert (=> b!1442317 m!1331521))

(assert (=> b!1442317 m!1331521))

(declare-fun m!1331523 () Bool)

(assert (=> b!1442317 m!1331523))

(declare-fun m!1331525 () Bool)

(assert (=> b!1442315 m!1331525))

(declare-fun m!1331527 () Bool)

(assert (=> b!1442309 m!1331527))

(declare-fun m!1331529 () Bool)

(assert (=> b!1442305 m!1331529))

(declare-fun m!1331531 () Bool)

(assert (=> b!1442305 m!1331531))

(declare-fun m!1331533 () Bool)

(assert (=> b!1442308 m!1331533))

(declare-fun m!1331535 () Bool)

(assert (=> b!1442308 m!1331535))

(declare-fun m!1331537 () Bool)

(assert (=> b!1442311 m!1331537))

(assert (=> b!1442311 m!1331537))

(declare-fun m!1331539 () Bool)

(assert (=> b!1442311 m!1331539))

(declare-fun m!1331541 () Bool)

(assert (=> b!1442311 m!1331541))

(declare-fun m!1331543 () Bool)

(assert (=> b!1442311 m!1331543))

(declare-fun m!1331545 () Bool)

(assert (=> start!124630 m!1331545))

(declare-fun m!1331547 () Bool)

(assert (=> start!124630 m!1331547))

(declare-fun m!1331549 () Bool)

(assert (=> b!1442307 m!1331549))

(assert (=> b!1442302 m!1331517))

(assert (=> b!1442302 m!1331517))

(declare-fun m!1331551 () Bool)

(assert (=> b!1442302 m!1331551))

(assert (=> b!1442312 m!1331517))

(assert (=> b!1442312 m!1331517))

(declare-fun m!1331553 () Bool)

(assert (=> b!1442312 m!1331553))

(assert (=> b!1442312 m!1331553))

(assert (=> b!1442312 m!1331517))

(declare-fun m!1331555 () Bool)

(assert (=> b!1442312 m!1331555))

(assert (=> b!1442304 m!1331517))

(assert (=> b!1442304 m!1331517))

(declare-fun m!1331557 () Bool)

(assert (=> b!1442304 m!1331557))

(assert (=> b!1442301 m!1331541))

(declare-fun m!1331559 () Bool)

(assert (=> b!1442301 m!1331559))

(declare-fun m!1331561 () Bool)

(assert (=> b!1442313 m!1331561))

(assert (=> b!1442313 m!1331517))

(push 1)

