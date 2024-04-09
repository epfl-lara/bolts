; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126890 () Bool)

(assert start!126890)

(declare-fun b!1489510 () Bool)

(declare-fun res!1013051 () Bool)

(declare-fun e!834812 () Bool)

(assert (=> b!1489510 (=> (not res!1013051) (not e!834812))))

(declare-datatypes ((array!99580 0))(
  ( (array!99581 (arr!48057 (Array (_ BitVec 32) (_ BitVec 64))) (size!48608 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99580)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489510 (= res!1013051 (validKeyInArray!0 (select (arr!48057 a!2862) j!93)))))

(declare-fun b!1489511 () Bool)

(declare-fun res!1013042 () Bool)

(assert (=> b!1489511 (=> (not res!1013042) (not e!834812))))

(declare-datatypes ((List!34738 0))(
  ( (Nil!34735) (Cons!34734 (h!36117 (_ BitVec 64)) (t!49439 List!34738)) )
))
(declare-fun arrayNoDuplicates!0 (array!99580 (_ BitVec 32) List!34738) Bool)

(assert (=> b!1489511 (= res!1013042 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34735))))

(declare-fun b!1489512 () Bool)

(declare-fun res!1013048 () Bool)

(assert (=> b!1489512 (=> (not res!1013048) (not e!834812))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99580 (_ BitVec 32)) Bool)

(assert (=> b!1489512 (= res!1013048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1489513 () Bool)

(declare-fun e!834813 () Bool)

(declare-fun e!834816 () Bool)

(assert (=> b!1489513 (= e!834813 e!834816)))

(declare-fun res!1013041 () Bool)

(assert (=> b!1489513 (=> (not res!1013041) (not e!834816))))

(declare-datatypes ((SeekEntryResult!12320 0))(
  ( (MissingZero!12320 (index!51671 (_ BitVec 32))) (Found!12320 (index!51672 (_ BitVec 32))) (Intermediate!12320 (undefined!13132 Bool) (index!51673 (_ BitVec 32)) (x!133267 (_ BitVec 32))) (Undefined!12320) (MissingVacant!12320 (index!51674 (_ BitVec 32))) )
))
(declare-fun lt!649553 () SeekEntryResult!12320)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1489513 (= res!1013041 (= lt!649553 (Intermediate!12320 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!649555 () (_ BitVec 64))

(declare-fun lt!649560 () array!99580)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99580 (_ BitVec 32)) SeekEntryResult!12320)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489513 (= lt!649553 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649555 mask!2687) lt!649555 lt!649560 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1489513 (= lt!649555 (select (store (arr!48057 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489514 () Bool)

(declare-fun res!1013035 () Bool)

(declare-fun e!834814 () Bool)

(assert (=> b!1489514 (=> res!1013035 e!834814)))

(declare-fun e!834815 () Bool)

(assert (=> b!1489514 (= res!1013035 e!834815)))

(declare-fun c!137767 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1489514 (= c!137767 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1489515 () Bool)

(declare-fun lt!649554 () (_ BitVec 32))

(assert (=> b!1489515 (= e!834815 (not (= lt!649553 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649554 lt!649555 lt!649560 mask!2687))))))

(declare-fun b!1489516 () Bool)

(declare-fun e!834817 () Bool)

(assert (=> b!1489516 (= e!834817 e!834813)))

(declare-fun res!1013050 () Bool)

(assert (=> b!1489516 (=> (not res!1013050) (not e!834813))))

(declare-fun lt!649561 () SeekEntryResult!12320)

(assert (=> b!1489516 (= res!1013050 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48057 a!2862) j!93) mask!2687) (select (arr!48057 a!2862) j!93) a!2862 mask!2687) lt!649561))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1489516 (= lt!649561 (Intermediate!12320 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489517 () Bool)

(declare-fun res!1013040 () Bool)

(assert (=> b!1489517 (=> (not res!1013040) (not e!834812))))

(assert (=> b!1489517 (= res!1013040 (validKeyInArray!0 (select (arr!48057 a!2862) i!1006)))))

(declare-fun b!1489518 () Bool)

(declare-fun e!834818 () Bool)

(assert (=> b!1489518 (= e!834818 e!834814)))

(declare-fun res!1013047 () Bool)

(assert (=> b!1489518 (=> res!1013047 e!834814)))

(assert (=> b!1489518 (= res!1013047 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649554 #b00000000000000000000000000000000) (bvsge lt!649554 (size!48608 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489518 (= lt!649554 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!649559 () SeekEntryResult!12320)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99580 (_ BitVec 32)) SeekEntryResult!12320)

(assert (=> b!1489518 (= lt!649559 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649555 lt!649560 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99580 (_ BitVec 32)) SeekEntryResult!12320)

(assert (=> b!1489518 (= lt!649559 (seekEntryOrOpen!0 lt!649555 lt!649560 mask!2687))))

(declare-fun b!1489519 () Bool)

(declare-fun res!1013038 () Bool)

(assert (=> b!1489519 (=> res!1013038 e!834814)))

(assert (=> b!1489519 (= res!1013038 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun res!1013037 () Bool)

(assert (=> start!126890 (=> (not res!1013037) (not e!834812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126890 (= res!1013037 (validMask!0 mask!2687))))

(assert (=> start!126890 e!834812))

(assert (=> start!126890 true))

(declare-fun array_inv!37002 (array!99580) Bool)

(assert (=> start!126890 (array_inv!37002 a!2862)))

(declare-fun b!1489520 () Bool)

(declare-fun res!1013036 () Bool)

(assert (=> b!1489520 (=> (not res!1013036) (not e!834812))))

(assert (=> b!1489520 (= res!1013036 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48608 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48608 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48608 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1489521 () Bool)

(declare-fun res!1013046 () Bool)

(assert (=> b!1489521 (=> (not res!1013046) (not e!834816))))

(assert (=> b!1489521 (= res!1013046 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!834810 () Bool)

(declare-fun b!1489522 () Bool)

(assert (=> b!1489522 (= e!834810 (= lt!649553 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649555 lt!649560 mask!2687)))))

(declare-fun b!1489523 () Bool)

(assert (=> b!1489523 (= e!834810 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649555 lt!649560 mask!2687) (seekEntryOrOpen!0 lt!649555 lt!649560 mask!2687)))))

(declare-fun b!1489524 () Bool)

(assert (=> b!1489524 (= e!834815 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649554 intermediateAfterIndex!19 lt!649555 lt!649560 mask!2687) lt!649559)))))

(declare-fun b!1489525 () Bool)

(assert (=> b!1489525 (= e!834812 e!834817)))

(declare-fun res!1013043 () Bool)

(assert (=> b!1489525 (=> (not res!1013043) (not e!834817))))

(assert (=> b!1489525 (= res!1013043 (= (select (store (arr!48057 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1489525 (= lt!649560 (array!99581 (store (arr!48057 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48608 a!2862)))))

(declare-fun b!1489526 () Bool)

(declare-fun res!1013045 () Bool)

(assert (=> b!1489526 (=> res!1013045 e!834814)))

(assert (=> b!1489526 (= res!1013045 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649554 (select (arr!48057 a!2862) j!93) a!2862 mask!2687) lt!649561)))))

(declare-fun b!1489527 () Bool)

(declare-fun res!1013044 () Bool)

(assert (=> b!1489527 (=> (not res!1013044) (not e!834816))))

(assert (=> b!1489527 (= res!1013044 e!834810)))

(declare-fun c!137768 () Bool)

(assert (=> b!1489527 (= c!137768 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1489528 () Bool)

(declare-fun res!1013039 () Bool)

(assert (=> b!1489528 (=> (not res!1013039) (not e!834813))))

(assert (=> b!1489528 (= res!1013039 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48057 a!2862) j!93) a!2862 mask!2687) lt!649561))))

(declare-fun b!1489529 () Bool)

(declare-fun res!1013049 () Bool)

(assert (=> b!1489529 (=> (not res!1013049) (not e!834812))))

(assert (=> b!1489529 (= res!1013049 (and (= (size!48608 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48608 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48608 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1489530 () Bool)

(assert (=> b!1489530 (= e!834816 (not e!834818))))

(declare-fun res!1013052 () Bool)

(assert (=> b!1489530 (=> res!1013052 e!834818)))

(assert (=> b!1489530 (= res!1013052 (or (and (= (select (arr!48057 a!2862) index!646) (select (store (arr!48057 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48057 a!2862) index!646) (select (arr!48057 a!2862) j!93))) (= (select (arr!48057 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun lt!649558 () SeekEntryResult!12320)

(assert (=> b!1489530 (and (= lt!649558 (Found!12320 j!93)) (or (= (select (arr!48057 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48057 a!2862) intermediateBeforeIndex!19) (select (arr!48057 a!2862) j!93))) (let ((bdg!54726 (select (store (arr!48057 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48057 a!2862) index!646) bdg!54726) (= (select (arr!48057 a!2862) index!646) (select (arr!48057 a!2862) j!93))) (= (select (arr!48057 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54726 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1489530 (= lt!649558 (seekEntryOrOpen!0 (select (arr!48057 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1489530 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49928 0))(
  ( (Unit!49929) )
))
(declare-fun lt!649557 () Unit!49928)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99580 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49928)

(assert (=> b!1489530 (= lt!649557 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1489531 () Bool)

(assert (=> b!1489531 (= e!834814 true)))

(assert (=> b!1489531 (= lt!649558 lt!649559)))

(declare-fun lt!649556 () Unit!49928)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99580 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49928)

(assert (=> b!1489531 (= lt!649556 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649554 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(assert (= (and start!126890 res!1013037) b!1489529))

(assert (= (and b!1489529 res!1013049) b!1489517))

(assert (= (and b!1489517 res!1013040) b!1489510))

(assert (= (and b!1489510 res!1013051) b!1489512))

(assert (= (and b!1489512 res!1013048) b!1489511))

(assert (= (and b!1489511 res!1013042) b!1489520))

(assert (= (and b!1489520 res!1013036) b!1489525))

(assert (= (and b!1489525 res!1013043) b!1489516))

(assert (= (and b!1489516 res!1013050) b!1489528))

(assert (= (and b!1489528 res!1013039) b!1489513))

(assert (= (and b!1489513 res!1013041) b!1489527))

(assert (= (and b!1489527 c!137768) b!1489522))

(assert (= (and b!1489527 (not c!137768)) b!1489523))

(assert (= (and b!1489527 res!1013044) b!1489521))

(assert (= (and b!1489521 res!1013046) b!1489530))

(assert (= (and b!1489530 (not res!1013052)) b!1489518))

(assert (= (and b!1489518 (not res!1013047)) b!1489526))

(assert (= (and b!1489526 (not res!1013045)) b!1489514))

(assert (= (and b!1489514 c!137767) b!1489515))

(assert (= (and b!1489514 (not c!137767)) b!1489524))

(assert (= (and b!1489514 (not res!1013035)) b!1489519))

(assert (= (and b!1489519 (not res!1013038)) b!1489531))

(declare-fun m!1373787 () Bool)

(assert (=> b!1489510 m!1373787))

(assert (=> b!1489510 m!1373787))

(declare-fun m!1373789 () Bool)

(assert (=> b!1489510 m!1373789))

(assert (=> b!1489516 m!1373787))

(assert (=> b!1489516 m!1373787))

(declare-fun m!1373791 () Bool)

(assert (=> b!1489516 m!1373791))

(assert (=> b!1489516 m!1373791))

(assert (=> b!1489516 m!1373787))

(declare-fun m!1373793 () Bool)

(assert (=> b!1489516 m!1373793))

(declare-fun m!1373795 () Bool)

(assert (=> b!1489524 m!1373795))

(declare-fun m!1373797 () Bool)

(assert (=> b!1489523 m!1373797))

(declare-fun m!1373799 () Bool)

(assert (=> b!1489523 m!1373799))

(declare-fun m!1373801 () Bool)

(assert (=> b!1489513 m!1373801))

(assert (=> b!1489513 m!1373801))

(declare-fun m!1373803 () Bool)

(assert (=> b!1489513 m!1373803))

(declare-fun m!1373805 () Bool)

(assert (=> b!1489513 m!1373805))

(declare-fun m!1373807 () Bool)

(assert (=> b!1489513 m!1373807))

(declare-fun m!1373809 () Bool)

(assert (=> b!1489531 m!1373809))

(declare-fun m!1373811 () Bool)

(assert (=> b!1489517 m!1373811))

(assert (=> b!1489517 m!1373811))

(declare-fun m!1373813 () Bool)

(assert (=> b!1489517 m!1373813))

(assert (=> b!1489528 m!1373787))

(assert (=> b!1489528 m!1373787))

(declare-fun m!1373815 () Bool)

(assert (=> b!1489528 m!1373815))

(declare-fun m!1373817 () Bool)

(assert (=> b!1489530 m!1373817))

(assert (=> b!1489530 m!1373805))

(declare-fun m!1373819 () Bool)

(assert (=> b!1489530 m!1373819))

(declare-fun m!1373821 () Bool)

(assert (=> b!1489530 m!1373821))

(declare-fun m!1373823 () Bool)

(assert (=> b!1489530 m!1373823))

(assert (=> b!1489530 m!1373787))

(declare-fun m!1373825 () Bool)

(assert (=> b!1489530 m!1373825))

(declare-fun m!1373827 () Bool)

(assert (=> b!1489530 m!1373827))

(assert (=> b!1489530 m!1373787))

(declare-fun m!1373829 () Bool)

(assert (=> b!1489522 m!1373829))

(assert (=> b!1489525 m!1373805))

(declare-fun m!1373831 () Bool)

(assert (=> b!1489525 m!1373831))

(declare-fun m!1373833 () Bool)

(assert (=> b!1489512 m!1373833))

(declare-fun m!1373835 () Bool)

(assert (=> b!1489515 m!1373835))

(declare-fun m!1373837 () Bool)

(assert (=> b!1489518 m!1373837))

(assert (=> b!1489518 m!1373797))

(assert (=> b!1489518 m!1373799))

(declare-fun m!1373839 () Bool)

(assert (=> start!126890 m!1373839))

(declare-fun m!1373841 () Bool)

(assert (=> start!126890 m!1373841))

(assert (=> b!1489526 m!1373787))

(assert (=> b!1489526 m!1373787))

(declare-fun m!1373843 () Bool)

(assert (=> b!1489526 m!1373843))

(declare-fun m!1373845 () Bool)

(assert (=> b!1489511 m!1373845))

(push 1)

