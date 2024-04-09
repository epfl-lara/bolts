; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125630 () Bool)

(assert start!125630)

(declare-fun b!1469514 () Bool)

(declare-fun res!998101 () Bool)

(declare-fun e!825010 () Bool)

(assert (=> b!1469514 (=> (not res!998101) (not e!825010))))

(declare-fun e!825008 () Bool)

(assert (=> b!1469514 (= res!998101 e!825008)))

(declare-fun c!135224 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469514 (= c!135224 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469515 () Bool)

(declare-fun res!998102 () Bool)

(declare-fun e!825006 () Bool)

(assert (=> b!1469515 (=> (not res!998102) (not e!825006))))

(declare-datatypes ((SeekEntryResult!12044 0))(
  ( (MissingZero!12044 (index!50567 (_ BitVec 32))) (Found!12044 (index!50568 (_ BitVec 32))) (Intermediate!12044 (undefined!12856 Bool) (index!50569 (_ BitVec 32)) (x!132144 (_ BitVec 32))) (Undefined!12044) (MissingVacant!12044 (index!50570 (_ BitVec 32))) )
))
(declare-fun lt!642553 () SeekEntryResult!12044)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98995 0))(
  ( (array!98996 (arr!47781 (Array (_ BitVec 32) (_ BitVec 64))) (size!48332 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98995)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98995 (_ BitVec 32)) SeekEntryResult!12044)

(assert (=> b!1469515 (= res!998102 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47781 a!2862) j!93) a!2862 mask!2687) lt!642553))))

(declare-fun lt!642550 () array!98995)

(declare-fun lt!642552 () (_ BitVec 64))

(declare-fun b!1469516 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98995 (_ BitVec 32)) SeekEntryResult!12044)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98995 (_ BitVec 32)) SeekEntryResult!12044)

(assert (=> b!1469516 (= e!825008 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642552 lt!642550 mask!2687) (seekEntryOrOpen!0 lt!642552 lt!642550 mask!2687)))))

(declare-fun b!1469517 () Bool)

(declare-fun res!998096 () Bool)

(declare-fun e!825009 () Bool)

(assert (=> b!1469517 (=> (not res!998096) (not e!825009))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469517 (= res!998096 (validKeyInArray!0 (select (arr!47781 a!2862) j!93)))))

(declare-fun b!1469518 () Bool)

(declare-fun res!998094 () Bool)

(assert (=> b!1469518 (=> (not res!998094) (not e!825009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98995 (_ BitVec 32)) Bool)

(assert (=> b!1469518 (= res!998094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469519 () Bool)

(assert (=> b!1469519 (= e!825006 e!825010)))

(declare-fun res!998092 () Bool)

(assert (=> b!1469519 (=> (not res!998092) (not e!825010))))

(declare-fun lt!642551 () SeekEntryResult!12044)

(assert (=> b!1469519 (= res!998092 (= lt!642551 (Intermediate!12044 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469519 (= lt!642551 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642552 mask!2687) lt!642552 lt!642550 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1469519 (= lt!642552 (select (store (arr!47781 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469520 () Bool)

(declare-fun e!825011 () Bool)

(assert (=> b!1469520 (= e!825009 e!825011)))

(declare-fun res!998097 () Bool)

(assert (=> b!1469520 (=> (not res!998097) (not e!825011))))

(assert (=> b!1469520 (= res!998097 (= (select (store (arr!47781 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469520 (= lt!642550 (array!98996 (store (arr!47781 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48332 a!2862)))))

(declare-fun res!998099 () Bool)

(assert (=> start!125630 (=> (not res!998099) (not e!825009))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125630 (= res!998099 (validMask!0 mask!2687))))

(assert (=> start!125630 e!825009))

(assert (=> start!125630 true))

(declare-fun array_inv!36726 (array!98995) Bool)

(assert (=> start!125630 (array_inv!36726 a!2862)))

(declare-fun b!1469521 () Bool)

(declare-fun res!998095 () Bool)

(assert (=> b!1469521 (=> (not res!998095) (not e!825009))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469521 (= res!998095 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48332 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48332 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48332 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469522 () Bool)

(declare-fun res!998103 () Bool)

(assert (=> b!1469522 (=> (not res!998103) (not e!825009))))

(assert (=> b!1469522 (= res!998103 (and (= (size!48332 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48332 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48332 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469523 () Bool)

(declare-fun res!998098 () Bool)

(assert (=> b!1469523 (=> (not res!998098) (not e!825009))))

(assert (=> b!1469523 (= res!998098 (validKeyInArray!0 (select (arr!47781 a!2862) i!1006)))))

(declare-fun b!1469524 () Bool)

(assert (=> b!1469524 (= e!825011 e!825006)))

(declare-fun res!998093 () Bool)

(assert (=> b!1469524 (=> (not res!998093) (not e!825006))))

(assert (=> b!1469524 (= res!998093 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47781 a!2862) j!93) mask!2687) (select (arr!47781 a!2862) j!93) a!2862 mask!2687) lt!642553))))

(assert (=> b!1469524 (= lt!642553 (Intermediate!12044 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469525 () Bool)

(assert (=> b!1469525 (= e!825008 (= lt!642551 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642552 lt!642550 mask!2687)))))

(declare-fun b!1469526 () Bool)

(assert (=> b!1469526 (= e!825010 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006) (bvsgt #b00000000000000000000000000000000 (size!48332 a!2862))))))

(declare-fun b!1469527 () Bool)

(declare-fun res!998100 () Bool)

(assert (=> b!1469527 (=> (not res!998100) (not e!825009))))

(declare-datatypes ((List!34462 0))(
  ( (Nil!34459) (Cons!34458 (h!35808 (_ BitVec 64)) (t!49163 List!34462)) )
))
(declare-fun arrayNoDuplicates!0 (array!98995 (_ BitVec 32) List!34462) Bool)

(assert (=> b!1469527 (= res!998100 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34459))))

(assert (= (and start!125630 res!998099) b!1469522))

(assert (= (and b!1469522 res!998103) b!1469523))

(assert (= (and b!1469523 res!998098) b!1469517))

(assert (= (and b!1469517 res!998096) b!1469518))

(assert (= (and b!1469518 res!998094) b!1469527))

(assert (= (and b!1469527 res!998100) b!1469521))

(assert (= (and b!1469521 res!998095) b!1469520))

(assert (= (and b!1469520 res!998097) b!1469524))

(assert (= (and b!1469524 res!998093) b!1469515))

(assert (= (and b!1469515 res!998102) b!1469519))

(assert (= (and b!1469519 res!998092) b!1469514))

(assert (= (and b!1469514 c!135224) b!1469525))

(assert (= (and b!1469514 (not c!135224)) b!1469516))

(assert (= (and b!1469514 res!998101) b!1469526))

(declare-fun m!1356739 () Bool)

(assert (=> b!1469525 m!1356739))

(declare-fun m!1356741 () Bool)

(assert (=> start!125630 m!1356741))

(declare-fun m!1356743 () Bool)

(assert (=> start!125630 m!1356743))

(declare-fun m!1356745 () Bool)

(assert (=> b!1469523 m!1356745))

(assert (=> b!1469523 m!1356745))

(declare-fun m!1356747 () Bool)

(assert (=> b!1469523 m!1356747))

(declare-fun m!1356749 () Bool)

(assert (=> b!1469524 m!1356749))

(assert (=> b!1469524 m!1356749))

(declare-fun m!1356751 () Bool)

(assert (=> b!1469524 m!1356751))

(assert (=> b!1469524 m!1356751))

(assert (=> b!1469524 m!1356749))

(declare-fun m!1356753 () Bool)

(assert (=> b!1469524 m!1356753))

(declare-fun m!1356755 () Bool)

(assert (=> b!1469520 m!1356755))

(declare-fun m!1356757 () Bool)

(assert (=> b!1469520 m!1356757))

(declare-fun m!1356759 () Bool)

(assert (=> b!1469516 m!1356759))

(declare-fun m!1356761 () Bool)

(assert (=> b!1469516 m!1356761))

(declare-fun m!1356763 () Bool)

(assert (=> b!1469519 m!1356763))

(assert (=> b!1469519 m!1356763))

(declare-fun m!1356765 () Bool)

(assert (=> b!1469519 m!1356765))

(assert (=> b!1469519 m!1356755))

(declare-fun m!1356767 () Bool)

(assert (=> b!1469519 m!1356767))

(assert (=> b!1469517 m!1356749))

(assert (=> b!1469517 m!1356749))

(declare-fun m!1356769 () Bool)

(assert (=> b!1469517 m!1356769))

(assert (=> b!1469515 m!1356749))

(assert (=> b!1469515 m!1356749))

(declare-fun m!1356771 () Bool)

(assert (=> b!1469515 m!1356771))

(declare-fun m!1356773 () Bool)

(assert (=> b!1469527 m!1356773))

(declare-fun m!1356775 () Bool)

(assert (=> b!1469518 m!1356775))

(push 1)

(assert (not b!1469525))

(assert (not b!1469524))

(assert (not b!1469523))

(assert (not b!1469517))

(assert (not b!1469527))

(assert (not start!125630))

(assert (not b!1469518))

(assert (not b!1469516))

(assert (not b!1469519))

(assert (not b!1469515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

