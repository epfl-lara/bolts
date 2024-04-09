; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124906 () Bool)

(assert start!124906)

(declare-fun b!1449777 () Bool)

(declare-fun res!981283 () Bool)

(declare-fun e!816443 () Bool)

(assert (=> b!1449777 (=> (not res!981283) (not e!816443))))

(declare-datatypes ((array!98271 0))(
  ( (array!98272 (arr!47419 (Array (_ BitVec 32) (_ BitVec 64))) (size!47970 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98271)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449777 (= res!981283 (validKeyInArray!0 (select (arr!47419 a!2862) j!93)))))

(declare-fun res!981289 () Bool)

(assert (=> start!124906 (=> (not res!981289) (not e!816443))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124906 (= res!981289 (validMask!0 mask!2687))))

(assert (=> start!124906 e!816443))

(assert (=> start!124906 true))

(declare-fun array_inv!36364 (array!98271) Bool)

(assert (=> start!124906 (array_inv!36364 a!2862)))

(declare-fun b!1449778 () Bool)

(declare-fun e!816442 () Bool)

(declare-fun e!816445 () Bool)

(assert (=> b!1449778 (= e!816442 (not e!816445))))

(declare-fun res!981284 () Bool)

(assert (=> b!1449778 (=> res!981284 e!816445)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1449778 (= res!981284 (or (and (= (select (arr!47419 a!2862) index!646) (select (store (arr!47419 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47419 a!2862) index!646) (select (arr!47419 a!2862) j!93))) (not (= (select (arr!47419 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47419 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816446 () Bool)

(assert (=> b!1449778 e!816446))

(declare-fun res!981290 () Bool)

(assert (=> b!1449778 (=> (not res!981290) (not e!816446))))

(declare-datatypes ((SeekEntryResult!11694 0))(
  ( (MissingZero!11694 (index!49167 (_ BitVec 32))) (Found!11694 (index!49168 (_ BitVec 32))) (Intermediate!11694 (undefined!12506 Bool) (index!49169 (_ BitVec 32)) (x!130834 (_ BitVec 32))) (Undefined!11694) (MissingVacant!11694 (index!49170 (_ BitVec 32))) )
))
(declare-fun lt!636002 () SeekEntryResult!11694)

(declare-fun lt!636004 () SeekEntryResult!11694)

(assert (=> b!1449778 (= res!981290 (and (= lt!636004 lt!636002) (or (= (select (arr!47419 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47419 a!2862) intermediateBeforeIndex!19) (select (arr!47419 a!2862) j!93)))))))

(assert (=> b!1449778 (= lt!636002 (Found!11694 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98271 (_ BitVec 32)) SeekEntryResult!11694)

(assert (=> b!1449778 (= lt!636004 (seekEntryOrOpen!0 (select (arr!47419 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98271 (_ BitVec 32)) Bool)

(assert (=> b!1449778 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48832 0))(
  ( (Unit!48833) )
))
(declare-fun lt!636007 () Unit!48832)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98271 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48832)

(assert (=> b!1449778 (= lt!636007 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1449779 () Bool)

(declare-fun res!981285 () Bool)

(assert (=> b!1449779 (=> (not res!981285) (not e!816443))))

(declare-datatypes ((List!34100 0))(
  ( (Nil!34097) (Cons!34096 (h!35446 (_ BitVec 64)) (t!48801 List!34100)) )
))
(declare-fun arrayNoDuplicates!0 (array!98271 (_ BitVec 32) List!34100) Bool)

(assert (=> b!1449779 (= res!981285 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34097))))

(declare-fun b!1449780 () Bool)

(declare-fun res!981297 () Bool)

(declare-fun e!816438 () Bool)

(assert (=> b!1449780 (=> (not res!981297) (not e!816438))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!636005 () SeekEntryResult!11694)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98271 (_ BitVec 32)) SeekEntryResult!11694)

(assert (=> b!1449780 (= res!981297 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47419 a!2862) j!93) a!2862 mask!2687) lt!636005))))

(declare-fun b!1449781 () Bool)

(declare-fun res!981293 () Bool)

(assert (=> b!1449781 (=> (not res!981293) (not e!816442))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1449781 (= res!981293 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449782 () Bool)

(declare-fun e!816437 () Bool)

(assert (=> b!1449782 (= e!816437 e!816438)))

(declare-fun res!981292 () Bool)

(assert (=> b!1449782 (=> (not res!981292) (not e!816438))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449782 (= res!981292 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47419 a!2862) j!93) mask!2687) (select (arr!47419 a!2862) j!93) a!2862 mask!2687) lt!636005))))

(assert (=> b!1449782 (= lt!636005 (Intermediate!11694 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449783 () Bool)

(declare-fun res!981287 () Bool)

(assert (=> b!1449783 (=> (not res!981287) (not e!816443))))

(assert (=> b!1449783 (= res!981287 (validKeyInArray!0 (select (arr!47419 a!2862) i!1006)))))

(declare-fun b!1449784 () Bool)

(declare-fun res!981291 () Bool)

(assert (=> b!1449784 (=> (not res!981291) (not e!816442))))

(declare-fun e!816441 () Bool)

(assert (=> b!1449784 (= res!981291 e!816441)))

(declare-fun c!133760 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1449784 (= c!133760 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1449785 () Bool)

(declare-fun res!981299 () Bool)

(assert (=> b!1449785 (=> res!981299 e!816445)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98271 (_ BitVec 32)) SeekEntryResult!11694)

(assert (=> b!1449785 (= res!981299 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47419 a!2862) j!93) a!2862 mask!2687) lt!636002)))))

(declare-fun b!1449786 () Bool)

(assert (=> b!1449786 (= e!816438 e!816442)))

(declare-fun res!981295 () Bool)

(assert (=> b!1449786 (=> (not res!981295) (not e!816442))))

(declare-fun lt!636001 () SeekEntryResult!11694)

(assert (=> b!1449786 (= res!981295 (= lt!636001 (Intermediate!11694 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!636006 () array!98271)

(declare-fun lt!636003 () (_ BitVec 64))

(assert (=> b!1449786 (= lt!636001 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636003 mask!2687) lt!636003 lt!636006 mask!2687))))

(assert (=> b!1449786 (= lt!636003 (select (store (arr!47419 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449787 () Bool)

(declare-fun e!816440 () Bool)

(declare-fun e!816439 () Bool)

(assert (=> b!1449787 (= e!816440 e!816439)))

(declare-fun res!981296 () Bool)

(assert (=> b!1449787 (=> (not res!981296) (not e!816439))))

(assert (=> b!1449787 (= res!981296 (= lt!636004 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47419 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1449788 () Bool)

(assert (=> b!1449788 (= e!816439 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449789 () Bool)

(declare-fun res!981294 () Bool)

(assert (=> b!1449789 (=> (not res!981294) (not e!816443))))

(assert (=> b!1449789 (= res!981294 (and (= (size!47970 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47970 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47970 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1449790 () Bool)

(assert (=> b!1449790 (= e!816443 e!816437)))

(declare-fun res!981298 () Bool)

(assert (=> b!1449790 (=> (not res!981298) (not e!816437))))

(assert (=> b!1449790 (= res!981298 (= (select (store (arr!47419 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449790 (= lt!636006 (array!98272 (store (arr!47419 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47970 a!2862)))))

(declare-fun b!1449791 () Bool)

(declare-fun res!981288 () Bool)

(assert (=> b!1449791 (=> (not res!981288) (not e!816443))))

(assert (=> b!1449791 (= res!981288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449792 () Bool)

(assert (=> b!1449792 (= e!816446 e!816440)))

(declare-fun res!981300 () Bool)

(assert (=> b!1449792 (=> res!981300 e!816440)))

(assert (=> b!1449792 (= res!981300 (or (and (= (select (arr!47419 a!2862) index!646) (select (store (arr!47419 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47419 a!2862) index!646) (select (arr!47419 a!2862) j!93))) (not (= (select (arr!47419 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449793 () Bool)

(assert (=> b!1449793 (= e!816441 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636003 lt!636006 mask!2687) (seekEntryOrOpen!0 lt!636003 lt!636006 mask!2687)))))

(declare-fun b!1449794 () Bool)

(declare-fun res!981286 () Bool)

(assert (=> b!1449794 (=> (not res!981286) (not e!816443))))

(assert (=> b!1449794 (= res!981286 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47970 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47970 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47970 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449795 () Bool)

(assert (=> b!1449795 (= e!816441 (= lt!636001 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636003 lt!636006 mask!2687)))))

(declare-fun b!1449796 () Bool)

(assert (=> b!1449796 (= e!816445 (bvsge mask!2687 #b00000000000000000000000000000000))))

(assert (=> b!1449796 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636003 lt!636006 mask!2687) lt!636002)))

(declare-fun lt!636000 () Unit!48832)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98271 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48832)

(assert (=> b!1449796 (= lt!636000 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(assert (= (and start!124906 res!981289) b!1449789))

(assert (= (and b!1449789 res!981294) b!1449783))

(assert (= (and b!1449783 res!981287) b!1449777))

(assert (= (and b!1449777 res!981283) b!1449791))

(assert (= (and b!1449791 res!981288) b!1449779))

(assert (= (and b!1449779 res!981285) b!1449794))

(assert (= (and b!1449794 res!981286) b!1449790))

(assert (= (and b!1449790 res!981298) b!1449782))

(assert (= (and b!1449782 res!981292) b!1449780))

(assert (= (and b!1449780 res!981297) b!1449786))

(assert (= (and b!1449786 res!981295) b!1449784))

(assert (= (and b!1449784 c!133760) b!1449795))

(assert (= (and b!1449784 (not c!133760)) b!1449793))

(assert (= (and b!1449784 res!981291) b!1449781))

(assert (= (and b!1449781 res!981293) b!1449778))

(assert (= (and b!1449778 res!981290) b!1449792))

(assert (= (and b!1449792 (not res!981300)) b!1449787))

(assert (= (and b!1449787 res!981296) b!1449788))

(assert (= (and b!1449778 (not res!981284)) b!1449785))

(assert (= (and b!1449785 (not res!981299)) b!1449796))

(declare-fun m!1338519 () Bool)

(assert (=> b!1449778 m!1338519))

(declare-fun m!1338521 () Bool)

(assert (=> b!1449778 m!1338521))

(declare-fun m!1338523 () Bool)

(assert (=> b!1449778 m!1338523))

(declare-fun m!1338525 () Bool)

(assert (=> b!1449778 m!1338525))

(declare-fun m!1338527 () Bool)

(assert (=> b!1449778 m!1338527))

(declare-fun m!1338529 () Bool)

(assert (=> b!1449778 m!1338529))

(declare-fun m!1338531 () Bool)

(assert (=> b!1449778 m!1338531))

(declare-fun m!1338533 () Bool)

(assert (=> b!1449778 m!1338533))

(assert (=> b!1449778 m!1338529))

(declare-fun m!1338535 () Bool)

(assert (=> b!1449795 m!1338535))

(assert (=> b!1449782 m!1338529))

(assert (=> b!1449782 m!1338529))

(declare-fun m!1338537 () Bool)

(assert (=> b!1449782 m!1338537))

(assert (=> b!1449782 m!1338537))

(assert (=> b!1449782 m!1338529))

(declare-fun m!1338539 () Bool)

(assert (=> b!1449782 m!1338539))

(assert (=> b!1449777 m!1338529))

(assert (=> b!1449777 m!1338529))

(declare-fun m!1338541 () Bool)

(assert (=> b!1449777 m!1338541))

(declare-fun m!1338543 () Bool)

(assert (=> b!1449779 m!1338543))

(assert (=> b!1449780 m!1338529))

(assert (=> b!1449780 m!1338529))

(declare-fun m!1338545 () Bool)

(assert (=> b!1449780 m!1338545))

(declare-fun m!1338547 () Bool)

(assert (=> b!1449786 m!1338547))

(assert (=> b!1449786 m!1338547))

(declare-fun m!1338549 () Bool)

(assert (=> b!1449786 m!1338549))

(assert (=> b!1449786 m!1338521))

(declare-fun m!1338551 () Bool)

(assert (=> b!1449786 m!1338551))

(assert (=> b!1449785 m!1338529))

(assert (=> b!1449785 m!1338529))

(declare-fun m!1338553 () Bool)

(assert (=> b!1449785 m!1338553))

(declare-fun m!1338555 () Bool)

(assert (=> start!124906 m!1338555))

(declare-fun m!1338557 () Bool)

(assert (=> start!124906 m!1338557))

(declare-fun m!1338559 () Bool)

(assert (=> b!1449783 m!1338559))

(assert (=> b!1449783 m!1338559))

(declare-fun m!1338561 () Bool)

(assert (=> b!1449783 m!1338561))

(declare-fun m!1338563 () Bool)

(assert (=> b!1449796 m!1338563))

(declare-fun m!1338565 () Bool)

(assert (=> b!1449796 m!1338565))

(assert (=> b!1449793 m!1338563))

(declare-fun m!1338567 () Bool)

(assert (=> b!1449793 m!1338567))

(assert (=> b!1449790 m!1338521))

(declare-fun m!1338569 () Bool)

(assert (=> b!1449790 m!1338569))

(declare-fun m!1338571 () Bool)

(assert (=> b!1449791 m!1338571))

(assert (=> b!1449787 m!1338529))

(assert (=> b!1449787 m!1338529))

(declare-fun m!1338573 () Bool)

(assert (=> b!1449787 m!1338573))

(assert (=> b!1449792 m!1338527))

(assert (=> b!1449792 m!1338521))

(assert (=> b!1449792 m!1338525))

(assert (=> b!1449792 m!1338529))

(push 1)

