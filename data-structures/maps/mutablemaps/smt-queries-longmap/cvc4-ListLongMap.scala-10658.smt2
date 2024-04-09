; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125132 () Bool)

(assert start!125132)

(declare-fun b!1456528 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!819501 () Bool)

(declare-datatypes ((array!98497 0))(
  ( (array!98498 (arr!47532 (Array (_ BitVec 32) (_ BitVec 64))) (size!48083 (_ BitVec 32))) )
))
(declare-fun lt!638323 () array!98497)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!638318 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11807 0))(
  ( (MissingZero!11807 (index!49619 (_ BitVec 32))) (Found!11807 (index!49620 (_ BitVec 32))) (Intermediate!11807 (undefined!12619 Bool) (index!49621 (_ BitVec 32)) (x!131243 (_ BitVec 32))) (Undefined!11807) (MissingVacant!11807 (index!49622 (_ BitVec 32))) )
))
(declare-fun lt!638317 () SeekEntryResult!11807)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98497 (_ BitVec 32)) SeekEntryResult!11807)

(assert (=> b!1456528 (= e!819501 (= lt!638317 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638318 lt!638323 mask!2687)))))

(declare-fun b!1456529 () Bool)

(declare-fun e!819502 () Bool)

(declare-fun e!819499 () Bool)

(assert (=> b!1456529 (= e!819502 e!819499)))

(declare-fun res!987101 () Bool)

(assert (=> b!1456529 (=> (not res!987101) (not e!819499))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1456529 (= res!987101 (= lt!638317 (Intermediate!11807 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456529 (= lt!638317 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638318 mask!2687) lt!638318 lt!638323 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98497)

(assert (=> b!1456529 (= lt!638318 (select (store (arr!47532 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1456530 () Bool)

(declare-fun res!987097 () Bool)

(declare-fun e!819500 () Bool)

(assert (=> b!1456530 (=> (not res!987097) (not e!819500))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98497 (_ BitVec 32)) SeekEntryResult!11807)

(assert (=> b!1456530 (= res!987097 (= (seekEntryOrOpen!0 (select (arr!47532 a!2862) j!93) a!2862 mask!2687) (Found!11807 j!93)))))

(declare-fun b!1456531 () Bool)

(declare-fun e!819496 () Bool)

(assert (=> b!1456531 (= e!819496 e!819502)))

(declare-fun res!987088 () Bool)

(assert (=> b!1456531 (=> (not res!987088) (not e!819502))))

(declare-fun lt!638316 () SeekEntryResult!11807)

(assert (=> b!1456531 (= res!987088 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47532 a!2862) j!93) mask!2687) (select (arr!47532 a!2862) j!93) a!2862 mask!2687) lt!638316))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1456531 (= lt!638316 (Intermediate!11807 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1456532 () Bool)

(assert (=> b!1456532 (= e!819500 (and (or (= (select (arr!47532 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47532 a!2862) intermediateBeforeIndex!19) (select (arr!47532 a!2862) j!93))) (let ((bdg!53257 (select (store (arr!47532 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47532 a!2862) index!646) bdg!53257) (= (select (arr!47532 a!2862) index!646) (select (arr!47532 a!2862) j!93))) (= (select (arr!47532 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53257 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1456533 () Bool)

(declare-fun res!987105 () Bool)

(declare-fun e!819498 () Bool)

(assert (=> b!1456533 (=> (not res!987105) (not e!819498))))

(assert (=> b!1456533 (= res!987105 (and (= (size!48083 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48083 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48083 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1456534 () Bool)

(declare-fun lt!638320 () SeekEntryResult!11807)

(declare-fun e!819494 () Bool)

(declare-fun lt!638322 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98497 (_ BitVec 32)) SeekEntryResult!11807)

(assert (=> b!1456534 (= e!819494 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638322 intermediateAfterIndex!19 lt!638318 lt!638323 mask!2687) lt!638320)))))

(declare-fun b!1456535 () Bool)

(assert (=> b!1456535 (= e!819494 (not (= lt!638317 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638322 lt!638318 lt!638323 mask!2687))))))

(declare-fun res!987102 () Bool)

(assert (=> start!125132 (=> (not res!987102) (not e!819498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125132 (= res!987102 (validMask!0 mask!2687))))

(assert (=> start!125132 e!819498))

(assert (=> start!125132 true))

(declare-fun array_inv!36477 (array!98497) Bool)

(assert (=> start!125132 (array_inv!36477 a!2862)))

(declare-fun b!1456536 () Bool)

(declare-fun e!819497 () Bool)

(assert (=> b!1456536 (= e!819499 (not e!819497))))

(declare-fun res!987091 () Bool)

(assert (=> b!1456536 (=> res!987091 e!819497)))

(assert (=> b!1456536 (= res!987091 (or (and (= (select (arr!47532 a!2862) index!646) (select (store (arr!47532 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47532 a!2862) index!646) (select (arr!47532 a!2862) j!93))) (= (select (arr!47532 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1456536 e!819500))

(declare-fun res!987098 () Bool)

(assert (=> b!1456536 (=> (not res!987098) (not e!819500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98497 (_ BitVec 32)) Bool)

(assert (=> b!1456536 (= res!987098 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49058 0))(
  ( (Unit!49059) )
))
(declare-fun lt!638319 () Unit!49058)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98497 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49058)

(assert (=> b!1456536 (= lt!638319 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1456537 () Bool)

(declare-fun res!987094 () Bool)

(assert (=> b!1456537 (=> (not res!987094) (not e!819498))))

(assert (=> b!1456537 (= res!987094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1456538 () Bool)

(declare-fun res!987092 () Bool)

(assert (=> b!1456538 (=> (not res!987092) (not e!819499))))

(assert (=> b!1456538 (= res!987092 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456539 () Bool)

(declare-fun res!987095 () Bool)

(assert (=> b!1456539 (=> (not res!987095) (not e!819498))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456539 (= res!987095 (validKeyInArray!0 (select (arr!47532 a!2862) j!93)))))

(declare-fun b!1456540 () Bool)

(declare-fun res!987099 () Bool)

(assert (=> b!1456540 (=> (not res!987099) (not e!819498))))

(declare-datatypes ((List!34213 0))(
  ( (Nil!34210) (Cons!34209 (h!35559 (_ BitVec 64)) (t!48914 List!34213)) )
))
(declare-fun arrayNoDuplicates!0 (array!98497 (_ BitVec 32) List!34213) Bool)

(assert (=> b!1456540 (= res!987099 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34210))))

(declare-fun b!1456541 () Bool)

(declare-fun res!987096 () Bool)

(assert (=> b!1456541 (=> (not res!987096) (not e!819499))))

(assert (=> b!1456541 (= res!987096 e!819501)))

(declare-fun c!134234 () Bool)

(assert (=> b!1456541 (= c!134234 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1456542 () Bool)

(assert (=> b!1456542 (= e!819501 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638318 lt!638323 mask!2687) (seekEntryOrOpen!0 lt!638318 lt!638323 mask!2687)))))

(declare-fun b!1456543 () Bool)

(assert (=> b!1456543 (= e!819498 e!819496)))

(declare-fun res!987103 () Bool)

(assert (=> b!1456543 (=> (not res!987103) (not e!819496))))

(assert (=> b!1456543 (= res!987103 (= (select (store (arr!47532 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1456543 (= lt!638323 (array!98498 (store (arr!47532 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48083 a!2862)))))

(declare-fun b!1456544 () Bool)

(declare-fun e!819503 () Bool)

(assert (=> b!1456544 (= e!819503 true)))

(declare-fun lt!638321 () Bool)

(assert (=> b!1456544 (= lt!638321 e!819494)))

(declare-fun c!134233 () Bool)

(assert (=> b!1456544 (= c!134233 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1456545 () Bool)

(assert (=> b!1456545 (= e!819497 e!819503)))

(declare-fun res!987100 () Bool)

(assert (=> b!1456545 (=> res!987100 e!819503)))

(assert (=> b!1456545 (= res!987100 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638322 #b00000000000000000000000000000000) (bvsge lt!638322 (size!48083 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456545 (= lt!638322 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1456545 (= lt!638320 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638318 lt!638323 mask!2687))))

(assert (=> b!1456545 (= lt!638320 (seekEntryOrOpen!0 lt!638318 lt!638323 mask!2687))))

(declare-fun b!1456546 () Bool)

(declare-fun res!987104 () Bool)

(assert (=> b!1456546 (=> (not res!987104) (not e!819498))))

(assert (=> b!1456546 (= res!987104 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48083 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48083 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48083 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1456547 () Bool)

(declare-fun res!987090 () Bool)

(assert (=> b!1456547 (=> res!987090 e!819503)))

(assert (=> b!1456547 (= res!987090 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638322 (select (arr!47532 a!2862) j!93) a!2862 mask!2687) lt!638316)))))

(declare-fun b!1456548 () Bool)

(declare-fun res!987089 () Bool)

(assert (=> b!1456548 (=> (not res!987089) (not e!819502))))

(assert (=> b!1456548 (= res!987089 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47532 a!2862) j!93) a!2862 mask!2687) lt!638316))))

(declare-fun b!1456549 () Bool)

(declare-fun res!987093 () Bool)

(assert (=> b!1456549 (=> (not res!987093) (not e!819498))))

(assert (=> b!1456549 (= res!987093 (validKeyInArray!0 (select (arr!47532 a!2862) i!1006)))))

(assert (= (and start!125132 res!987102) b!1456533))

(assert (= (and b!1456533 res!987105) b!1456549))

(assert (= (and b!1456549 res!987093) b!1456539))

(assert (= (and b!1456539 res!987095) b!1456537))

(assert (= (and b!1456537 res!987094) b!1456540))

(assert (= (and b!1456540 res!987099) b!1456546))

(assert (= (and b!1456546 res!987104) b!1456543))

(assert (= (and b!1456543 res!987103) b!1456531))

(assert (= (and b!1456531 res!987088) b!1456548))

(assert (= (and b!1456548 res!987089) b!1456529))

(assert (= (and b!1456529 res!987101) b!1456541))

(assert (= (and b!1456541 c!134234) b!1456528))

(assert (= (and b!1456541 (not c!134234)) b!1456542))

(assert (= (and b!1456541 res!987096) b!1456538))

(assert (= (and b!1456538 res!987092) b!1456536))

(assert (= (and b!1456536 res!987098) b!1456530))

(assert (= (and b!1456530 res!987097) b!1456532))

(assert (= (and b!1456536 (not res!987091)) b!1456545))

(assert (= (and b!1456545 (not res!987100)) b!1456547))

(assert (= (and b!1456547 (not res!987090)) b!1456544))

(assert (= (and b!1456544 c!134233) b!1456535))

(assert (= (and b!1456544 (not c!134233)) b!1456534))

(declare-fun m!1344665 () Bool)

(assert (=> b!1456539 m!1344665))

(assert (=> b!1456539 m!1344665))

(declare-fun m!1344667 () Bool)

(assert (=> b!1456539 m!1344667))

(declare-fun m!1344669 () Bool)

(assert (=> start!125132 m!1344669))

(declare-fun m!1344671 () Bool)

(assert (=> start!125132 m!1344671))

(declare-fun m!1344673 () Bool)

(assert (=> b!1456545 m!1344673))

(declare-fun m!1344675 () Bool)

(assert (=> b!1456545 m!1344675))

(declare-fun m!1344677 () Bool)

(assert (=> b!1456545 m!1344677))

(declare-fun m!1344679 () Bool)

(assert (=> b!1456529 m!1344679))

(assert (=> b!1456529 m!1344679))

(declare-fun m!1344681 () Bool)

(assert (=> b!1456529 m!1344681))

(declare-fun m!1344683 () Bool)

(assert (=> b!1456529 m!1344683))

(declare-fun m!1344685 () Bool)

(assert (=> b!1456529 m!1344685))

(declare-fun m!1344687 () Bool)

(assert (=> b!1456549 m!1344687))

(assert (=> b!1456549 m!1344687))

(declare-fun m!1344689 () Bool)

(assert (=> b!1456549 m!1344689))

(declare-fun m!1344691 () Bool)

(assert (=> b!1456534 m!1344691))

(assert (=> b!1456547 m!1344665))

(assert (=> b!1456547 m!1344665))

(declare-fun m!1344693 () Bool)

(assert (=> b!1456547 m!1344693))

(declare-fun m!1344695 () Bool)

(assert (=> b!1456540 m!1344695))

(assert (=> b!1456542 m!1344675))

(assert (=> b!1456542 m!1344677))

(declare-fun m!1344697 () Bool)

(assert (=> b!1456536 m!1344697))

(assert (=> b!1456536 m!1344683))

(declare-fun m!1344699 () Bool)

(assert (=> b!1456536 m!1344699))

(declare-fun m!1344701 () Bool)

(assert (=> b!1456536 m!1344701))

(declare-fun m!1344703 () Bool)

(assert (=> b!1456536 m!1344703))

(assert (=> b!1456536 m!1344665))

(declare-fun m!1344705 () Bool)

(assert (=> b!1456537 m!1344705))

(assert (=> b!1456531 m!1344665))

(assert (=> b!1456531 m!1344665))

(declare-fun m!1344707 () Bool)

(assert (=> b!1456531 m!1344707))

(assert (=> b!1456531 m!1344707))

(assert (=> b!1456531 m!1344665))

(declare-fun m!1344709 () Bool)

(assert (=> b!1456531 m!1344709))

(assert (=> b!1456543 m!1344683))

(declare-fun m!1344711 () Bool)

(assert (=> b!1456543 m!1344711))

(assert (=> b!1456548 m!1344665))

(assert (=> b!1456548 m!1344665))

(declare-fun m!1344713 () Bool)

(assert (=> b!1456548 m!1344713))

(declare-fun m!1344715 () Bool)

(assert (=> b!1456528 m!1344715))

(declare-fun m!1344717 () Bool)

(assert (=> b!1456535 m!1344717))

(assert (=> b!1456532 m!1344683))

(declare-fun m!1344719 () Bool)

(assert (=> b!1456532 m!1344719))

(assert (=> b!1456532 m!1344699))

(assert (=> b!1456532 m!1344701))

(assert (=> b!1456532 m!1344665))

(assert (=> b!1456530 m!1344665))

(assert (=> b!1456530 m!1344665))

(declare-fun m!1344721 () Bool)

(assert (=> b!1456530 m!1344721))

(push 1)

