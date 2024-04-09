; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124634 () Bool)

(assert start!124634)

(declare-fun b!1442403 () Bool)

(declare-fun res!974732 () Bool)

(declare-fun e!812981 () Bool)

(assert (=> b!1442403 (=> (not res!974732) (not e!812981))))

(declare-datatypes ((array!97999 0))(
  ( (array!98000 (arr!47283 (Array (_ BitVec 32) (_ BitVec 64))) (size!47834 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97999)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442403 (= res!974732 (validKeyInArray!0 (select (arr!47283 a!2862) i!1006)))))

(declare-fun b!1442404 () Bool)

(declare-fun res!974727 () Bool)

(declare-fun e!812986 () Bool)

(assert (=> b!1442404 (=> (not res!974727) (not e!812986))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1442404 (= res!974727 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!974733 () Bool)

(assert (=> start!124634 (=> (not res!974733) (not e!812981))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124634 (= res!974733 (validMask!0 mask!2687))))

(assert (=> start!124634 e!812981))

(assert (=> start!124634 true))

(declare-fun array_inv!36228 (array!97999) Bool)

(assert (=> start!124634 (array_inv!36228 a!2862)))

(declare-fun b!1442405 () Bool)

(declare-fun res!974730 () Bool)

(assert (=> b!1442405 (=> (not res!974730) (not e!812981))))

(declare-datatypes ((List!33964 0))(
  ( (Nil!33961) (Cons!33960 (h!35310 (_ BitVec 64)) (t!48665 List!33964)) )
))
(declare-fun arrayNoDuplicates!0 (array!97999 (_ BitVec 32) List!33964) Bool)

(assert (=> b!1442405 (= res!974730 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33961))))

(declare-fun b!1442406 () Bool)

(declare-fun e!812987 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!633515 () (_ BitVec 64))

(declare-fun lt!633514 () array!97999)

(declare-datatypes ((SeekEntryResult!11558 0))(
  ( (MissingZero!11558 (index!48623 (_ BitVec 32))) (Found!11558 (index!48624 (_ BitVec 32))) (Intermediate!11558 (undefined!12370 Bool) (index!48625 (_ BitVec 32)) (x!130330 (_ BitVec 32))) (Undefined!11558) (MissingVacant!11558 (index!48626 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97999 (_ BitVec 32)) SeekEntryResult!11558)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97999 (_ BitVec 32)) SeekEntryResult!11558)

(assert (=> b!1442406 (= e!812987 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633515 lt!633514 mask!2687) (seekEntryOrOpen!0 lt!633515 lt!633514 mask!2687)))))

(declare-fun b!1442407 () Bool)

(declare-fun e!812984 () Bool)

(assert (=> b!1442407 (= e!812981 e!812984)))

(declare-fun res!974734 () Bool)

(assert (=> b!1442407 (=> (not res!974734) (not e!812984))))

(assert (=> b!1442407 (= res!974734 (= (select (store (arr!47283 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1442407 (= lt!633514 (array!98000 (store (arr!47283 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47834 a!2862)))))

(declare-fun b!1442408 () Bool)

(declare-fun res!974738 () Bool)

(declare-fun e!812983 () Bool)

(assert (=> b!1442408 (=> (not res!974738) (not e!812983))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1442408 (= res!974738 (= (seekEntryOrOpen!0 (select (arr!47283 a!2862) j!93) a!2862 mask!2687) (Found!11558 j!93)))))

(declare-fun b!1442409 () Bool)

(declare-fun e!812982 () Bool)

(assert (=> b!1442409 (= e!812982 e!812986)))

(declare-fun res!974737 () Bool)

(assert (=> b!1442409 (=> (not res!974737) (not e!812986))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!633516 () SeekEntryResult!11558)

(assert (=> b!1442409 (= res!974737 (= lt!633516 (Intermediate!11558 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97999 (_ BitVec 32)) SeekEntryResult!11558)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442409 (= lt!633516 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633515 mask!2687) lt!633515 lt!633514 mask!2687))))

(assert (=> b!1442409 (= lt!633515 (select (store (arr!47283 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442410 () Bool)

(declare-fun res!974728 () Bool)

(assert (=> b!1442410 (=> (not res!974728) (not e!812981))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97999 (_ BitVec 32)) Bool)

(assert (=> b!1442410 (= res!974728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442411 () Bool)

(declare-fun res!974735 () Bool)

(assert (=> b!1442411 (=> (not res!974735) (not e!812981))))

(assert (=> b!1442411 (= res!974735 (and (= (size!47834 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47834 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47834 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442412 () Bool)

(assert (=> b!1442412 (= e!812984 e!812982)))

(declare-fun res!974739 () Bool)

(assert (=> b!1442412 (=> (not res!974739) (not e!812982))))

(declare-fun lt!633517 () SeekEntryResult!11558)

(assert (=> b!1442412 (= res!974739 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47283 a!2862) j!93) mask!2687) (select (arr!47283 a!2862) j!93) a!2862 mask!2687) lt!633517))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1442412 (= lt!633517 (Intermediate!11558 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442413 () Bool)

(assert (=> b!1442413 (= e!812987 (= lt!633516 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633515 lt!633514 mask!2687)))))

(declare-fun b!1442414 () Bool)

(declare-fun res!974726 () Bool)

(assert (=> b!1442414 (=> (not res!974726) (not e!812981))))

(assert (=> b!1442414 (= res!974726 (validKeyInArray!0 (select (arr!47283 a!2862) j!93)))))

(declare-fun b!1442415 () Bool)

(declare-fun res!974729 () Bool)

(assert (=> b!1442415 (=> (not res!974729) (not e!812986))))

(assert (=> b!1442415 (= res!974729 e!812987)))

(declare-fun c!133352 () Bool)

(assert (=> b!1442415 (= c!133352 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442416 () Bool)

(assert (=> b!1442416 (= e!812986 (not true))))

(assert (=> b!1442416 e!812983))

(declare-fun res!974736 () Bool)

(assert (=> b!1442416 (=> (not res!974736) (not e!812983))))

(assert (=> b!1442416 (= res!974736 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48560 0))(
  ( (Unit!48561) )
))
(declare-fun lt!633513 () Unit!48560)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97999 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48560)

(assert (=> b!1442416 (= lt!633513 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442417 () Bool)

(declare-fun res!974725 () Bool)

(assert (=> b!1442417 (=> (not res!974725) (not e!812982))))

(assert (=> b!1442417 (= res!974725 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47283 a!2862) j!93) a!2862 mask!2687) lt!633517))))

(declare-fun b!1442418 () Bool)

(assert (=> b!1442418 (= e!812983 (or (= (select (arr!47283 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47283 a!2862) intermediateBeforeIndex!19) (select (arr!47283 a!2862) j!93))))))

(declare-fun b!1442419 () Bool)

(declare-fun res!974731 () Bool)

(assert (=> b!1442419 (=> (not res!974731) (not e!812981))))

(assert (=> b!1442419 (= res!974731 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47834 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47834 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47834 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!124634 res!974733) b!1442411))

(assert (= (and b!1442411 res!974735) b!1442403))

(assert (= (and b!1442403 res!974732) b!1442414))

(assert (= (and b!1442414 res!974726) b!1442410))

(assert (= (and b!1442410 res!974728) b!1442405))

(assert (= (and b!1442405 res!974730) b!1442419))

(assert (= (and b!1442419 res!974731) b!1442407))

(assert (= (and b!1442407 res!974734) b!1442412))

(assert (= (and b!1442412 res!974739) b!1442417))

(assert (= (and b!1442417 res!974725) b!1442409))

(assert (= (and b!1442409 res!974737) b!1442415))

(assert (= (and b!1442415 c!133352) b!1442413))

(assert (= (and b!1442415 (not c!133352)) b!1442406))

(assert (= (and b!1442415 res!974729) b!1442404))

(assert (= (and b!1442404 res!974727) b!1442416))

(assert (= (and b!1442416 res!974736) b!1442408))

(assert (= (and b!1442408 res!974738) b!1442418))

(declare-fun m!1331609 () Bool)

(assert (=> b!1442403 m!1331609))

(assert (=> b!1442403 m!1331609))

(declare-fun m!1331611 () Bool)

(assert (=> b!1442403 m!1331611))

(declare-fun m!1331613 () Bool)

(assert (=> b!1442409 m!1331613))

(assert (=> b!1442409 m!1331613))

(declare-fun m!1331615 () Bool)

(assert (=> b!1442409 m!1331615))

(declare-fun m!1331617 () Bool)

(assert (=> b!1442409 m!1331617))

(declare-fun m!1331619 () Bool)

(assert (=> b!1442409 m!1331619))

(declare-fun m!1331621 () Bool)

(assert (=> b!1442408 m!1331621))

(assert (=> b!1442408 m!1331621))

(declare-fun m!1331623 () Bool)

(assert (=> b!1442408 m!1331623))

(declare-fun m!1331625 () Bool)

(assert (=> b!1442413 m!1331625))

(assert (=> b!1442407 m!1331617))

(declare-fun m!1331627 () Bool)

(assert (=> b!1442407 m!1331627))

(declare-fun m!1331629 () Bool)

(assert (=> b!1442416 m!1331629))

(declare-fun m!1331631 () Bool)

(assert (=> b!1442416 m!1331631))

(declare-fun m!1331633 () Bool)

(assert (=> b!1442418 m!1331633))

(assert (=> b!1442418 m!1331621))

(assert (=> b!1442412 m!1331621))

(assert (=> b!1442412 m!1331621))

(declare-fun m!1331635 () Bool)

(assert (=> b!1442412 m!1331635))

(assert (=> b!1442412 m!1331635))

(assert (=> b!1442412 m!1331621))

(declare-fun m!1331637 () Bool)

(assert (=> b!1442412 m!1331637))

(assert (=> b!1442414 m!1331621))

(assert (=> b!1442414 m!1331621))

(declare-fun m!1331639 () Bool)

(assert (=> b!1442414 m!1331639))

(declare-fun m!1331641 () Bool)

(assert (=> b!1442406 m!1331641))

(declare-fun m!1331643 () Bool)

(assert (=> b!1442406 m!1331643))

(declare-fun m!1331645 () Bool)

(assert (=> start!124634 m!1331645))

(declare-fun m!1331647 () Bool)

(assert (=> start!124634 m!1331647))

(declare-fun m!1331649 () Bool)

(assert (=> b!1442410 m!1331649))

(assert (=> b!1442417 m!1331621))

(assert (=> b!1442417 m!1331621))

(declare-fun m!1331651 () Bool)

(assert (=> b!1442417 m!1331651))

(declare-fun m!1331653 () Bool)

(assert (=> b!1442405 m!1331653))

(push 1)

(assert (not b!1442409))

(assert (not b!1442410))

(assert (not b!1442414))

(assert (not b!1442406))

(assert (not b!1442417))

(assert (not b!1442405))

(assert (not start!124634))

(assert (not b!1442413))

(assert (not b!1442412))

(assert (not b!1442408))

(assert (not b!1442416))

(assert (not b!1442403))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

