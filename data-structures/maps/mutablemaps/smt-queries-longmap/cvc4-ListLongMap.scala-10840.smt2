; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126932 () Bool)

(assert start!126932)

(declare-fun b!1490756 () Bool)

(declare-fun res!1014104 () Bool)

(declare-fun e!835347 () Bool)

(assert (=> b!1490756 (=> (not res!1014104) (not e!835347))))

(declare-datatypes ((array!99622 0))(
  ( (array!99623 (arr!48078 (Array (_ BitVec 32) (_ BitVec 64))) (size!48629 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99622)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490756 (= res!1014104 (validKeyInArray!0 (select (arr!48078 a!2862) i!1006)))))

(declare-fun b!1490757 () Bool)

(declare-fun res!1014109 () Bool)

(assert (=> b!1490757 (=> (not res!1014109) (not e!835347))))

(declare-datatypes ((List!34759 0))(
  ( (Nil!34756) (Cons!34755 (h!36138 (_ BitVec 64)) (t!49460 List!34759)) )
))
(declare-fun arrayNoDuplicates!0 (array!99622 (_ BitVec 32) List!34759) Bool)

(assert (=> b!1490757 (= res!1014109 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34756))))

(declare-fun res!1014113 () Bool)

(assert (=> start!126932 (=> (not res!1014113) (not e!835347))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126932 (= res!1014113 (validMask!0 mask!2687))))

(assert (=> start!126932 e!835347))

(assert (=> start!126932 true))

(declare-fun array_inv!37023 (array!99622) Bool)

(assert (=> start!126932 (array_inv!37023 a!2862)))

(declare-fun b!1490758 () Bool)

(declare-fun e!835349 () Bool)

(assert (=> b!1490758 (= e!835347 e!835349)))

(declare-fun res!1014106 () Bool)

(assert (=> b!1490758 (=> (not res!1014106) (not e!835349))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1490758 (= res!1014106 (= (select (store (arr!48078 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!650020 () array!99622)

(assert (=> b!1490758 (= lt!650020 (array!99623 (store (arr!48078 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48629 a!2862)))))

(declare-fun b!1490759 () Bool)

(declare-fun res!1014108 () Bool)

(declare-fun e!835345 () Bool)

(assert (=> b!1490759 (=> (not res!1014108) (not e!835345))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12341 0))(
  ( (MissingZero!12341 (index!51755 (_ BitVec 32))) (Found!12341 (index!51756 (_ BitVec 32))) (Intermediate!12341 (undefined!13153 Bool) (index!51757 (_ BitVec 32)) (x!133344 (_ BitVec 32))) (Undefined!12341) (MissingVacant!12341 (index!51758 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99622 (_ BitVec 32)) SeekEntryResult!12341)

(assert (=> b!1490759 (= res!1014108 (= (seekEntryOrOpen!0 (select (arr!48078 a!2862) j!93) a!2862 mask!2687) (Found!12341 j!93)))))

(declare-fun b!1490760 () Bool)

(declare-fun e!835346 () Bool)

(declare-fun e!835348 () Bool)

(assert (=> b!1490760 (= e!835346 (not e!835348))))

(declare-fun res!1014114 () Bool)

(assert (=> b!1490760 (=> res!1014114 e!835348)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1490760 (= res!1014114 (or (and (= (select (arr!48078 a!2862) index!646) (select (store (arr!48078 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48078 a!2862) index!646) (select (arr!48078 a!2862) j!93))) (= (select (arr!48078 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1490760 e!835345))

(declare-fun res!1014105 () Bool)

(assert (=> b!1490760 (=> (not res!1014105) (not e!835345))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99622 (_ BitVec 32)) Bool)

(assert (=> b!1490760 (= res!1014105 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49970 0))(
  ( (Unit!49971) )
))
(declare-fun lt!650016 () Unit!49970)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49970)

(assert (=> b!1490760 (= lt!650016 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490761 () Bool)

(declare-fun res!1014101 () Bool)

(assert (=> b!1490761 (=> (not res!1014101) (not e!835347))))

(assert (=> b!1490761 (= res!1014101 (and (= (size!48629 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48629 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48629 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490762 () Bool)

(declare-fun e!835344 () Bool)

(assert (=> b!1490762 (= e!835349 e!835344)))

(declare-fun res!1014103 () Bool)

(assert (=> b!1490762 (=> (not res!1014103) (not e!835344))))

(declare-fun lt!650019 () SeekEntryResult!12341)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99622 (_ BitVec 32)) SeekEntryResult!12341)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490762 (= res!1014103 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48078 a!2862) j!93) mask!2687) (select (arr!48078 a!2862) j!93) a!2862 mask!2687) lt!650019))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1490762 (= lt!650019 (Intermediate!12341 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490763 () Bool)

(declare-fun lt!650017 () (_ BitVec 64))

(declare-fun lt!650018 () SeekEntryResult!12341)

(declare-fun e!835342 () Bool)

(assert (=> b!1490763 (= e!835342 (= lt!650018 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650017 lt!650020 mask!2687)))))

(declare-fun b!1490764 () Bool)

(assert (=> b!1490764 (= e!835348 true)))

(declare-fun lt!650015 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490764 (= lt!650015 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1490765 () Bool)

(assert (=> b!1490765 (= e!835344 e!835346)))

(declare-fun res!1014099 () Bool)

(assert (=> b!1490765 (=> (not res!1014099) (not e!835346))))

(assert (=> b!1490765 (= res!1014099 (= lt!650018 (Intermediate!12341 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1490765 (= lt!650018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650017 mask!2687) lt!650017 lt!650020 mask!2687))))

(assert (=> b!1490765 (= lt!650017 (select (store (arr!48078 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490766 () Bool)

(declare-fun res!1014107 () Bool)

(assert (=> b!1490766 (=> (not res!1014107) (not e!835346))))

(assert (=> b!1490766 (= res!1014107 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1490767 () Bool)

(declare-fun res!1014100 () Bool)

(assert (=> b!1490767 (=> (not res!1014100) (not e!835346))))

(assert (=> b!1490767 (= res!1014100 e!835342)))

(declare-fun c!137858 () Bool)

(assert (=> b!1490767 (= c!137858 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490768 () Bool)

(assert (=> b!1490768 (= e!835345 (or (= (select (arr!48078 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48078 a!2862) intermediateBeforeIndex!19) (select (arr!48078 a!2862) j!93))))))

(declare-fun b!1490769 () Bool)

(declare-fun res!1014102 () Bool)

(assert (=> b!1490769 (=> (not res!1014102) (not e!835347))))

(assert (=> b!1490769 (= res!1014102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490770 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99622 (_ BitVec 32)) SeekEntryResult!12341)

(assert (=> b!1490770 (= e!835342 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650017 lt!650020 mask!2687) (seekEntryOrOpen!0 lt!650017 lt!650020 mask!2687)))))

(declare-fun b!1490771 () Bool)

(declare-fun res!1014112 () Bool)

(assert (=> b!1490771 (=> (not res!1014112) (not e!835344))))

(assert (=> b!1490771 (= res!1014112 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48078 a!2862) j!93) a!2862 mask!2687) lt!650019))))

(declare-fun b!1490772 () Bool)

(declare-fun res!1014110 () Bool)

(assert (=> b!1490772 (=> (not res!1014110) (not e!835347))))

(assert (=> b!1490772 (= res!1014110 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48629 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48629 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48629 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490773 () Bool)

(declare-fun res!1014111 () Bool)

(assert (=> b!1490773 (=> (not res!1014111) (not e!835347))))

(assert (=> b!1490773 (= res!1014111 (validKeyInArray!0 (select (arr!48078 a!2862) j!93)))))

(assert (= (and start!126932 res!1014113) b!1490761))

(assert (= (and b!1490761 res!1014101) b!1490756))

(assert (= (and b!1490756 res!1014104) b!1490773))

(assert (= (and b!1490773 res!1014111) b!1490769))

(assert (= (and b!1490769 res!1014102) b!1490757))

(assert (= (and b!1490757 res!1014109) b!1490772))

(assert (= (and b!1490772 res!1014110) b!1490758))

(assert (= (and b!1490758 res!1014106) b!1490762))

(assert (= (and b!1490762 res!1014103) b!1490771))

(assert (= (and b!1490771 res!1014112) b!1490765))

(assert (= (and b!1490765 res!1014099) b!1490767))

(assert (= (and b!1490767 c!137858) b!1490763))

(assert (= (and b!1490767 (not c!137858)) b!1490770))

(assert (= (and b!1490767 res!1014100) b!1490766))

(assert (= (and b!1490766 res!1014107) b!1490760))

(assert (= (and b!1490760 res!1014105) b!1490759))

(assert (= (and b!1490759 res!1014108) b!1490768))

(assert (= (and b!1490760 (not res!1014114)) b!1490764))

(declare-fun m!1374959 () Bool)

(assert (=> b!1490764 m!1374959))

(declare-fun m!1374961 () Bool)

(assert (=> b!1490770 m!1374961))

(declare-fun m!1374963 () Bool)

(assert (=> b!1490770 m!1374963))

(declare-fun m!1374965 () Bool)

(assert (=> b!1490765 m!1374965))

(assert (=> b!1490765 m!1374965))

(declare-fun m!1374967 () Bool)

(assert (=> b!1490765 m!1374967))

(declare-fun m!1374969 () Bool)

(assert (=> b!1490765 m!1374969))

(declare-fun m!1374971 () Bool)

(assert (=> b!1490765 m!1374971))

(declare-fun m!1374973 () Bool)

(assert (=> b!1490760 m!1374973))

(assert (=> b!1490760 m!1374969))

(declare-fun m!1374975 () Bool)

(assert (=> b!1490760 m!1374975))

(declare-fun m!1374977 () Bool)

(assert (=> b!1490760 m!1374977))

(declare-fun m!1374979 () Bool)

(assert (=> b!1490760 m!1374979))

(declare-fun m!1374981 () Bool)

(assert (=> b!1490760 m!1374981))

(assert (=> b!1490762 m!1374981))

(assert (=> b!1490762 m!1374981))

(declare-fun m!1374983 () Bool)

(assert (=> b!1490762 m!1374983))

(assert (=> b!1490762 m!1374983))

(assert (=> b!1490762 m!1374981))

(declare-fun m!1374985 () Bool)

(assert (=> b!1490762 m!1374985))

(assert (=> b!1490758 m!1374969))

(declare-fun m!1374987 () Bool)

(assert (=> b!1490758 m!1374987))

(declare-fun m!1374989 () Bool)

(assert (=> b!1490757 m!1374989))

(assert (=> b!1490771 m!1374981))

(assert (=> b!1490771 m!1374981))

(declare-fun m!1374991 () Bool)

(assert (=> b!1490771 m!1374991))

(declare-fun m!1374993 () Bool)

(assert (=> b!1490756 m!1374993))

(assert (=> b!1490756 m!1374993))

(declare-fun m!1374995 () Bool)

(assert (=> b!1490756 m!1374995))

(declare-fun m!1374997 () Bool)

(assert (=> start!126932 m!1374997))

(declare-fun m!1374999 () Bool)

(assert (=> start!126932 m!1374999))

(declare-fun m!1375001 () Bool)

(assert (=> b!1490769 m!1375001))

(declare-fun m!1375003 () Bool)

(assert (=> b!1490763 m!1375003))

(assert (=> b!1490759 m!1374981))

(assert (=> b!1490759 m!1374981))

(declare-fun m!1375005 () Bool)

(assert (=> b!1490759 m!1375005))

(declare-fun m!1375007 () Bool)

(assert (=> b!1490768 m!1375007))

(assert (=> b!1490768 m!1374981))

(assert (=> b!1490773 m!1374981))

(assert (=> b!1490773 m!1374981))

(declare-fun m!1375009 () Bool)

(assert (=> b!1490773 m!1375009))

(push 1)

(assert (not b!1490759))

(assert (not b!1490771))

(assert (not b!1490757))

(assert (not b!1490765))

(assert (not b!1490773))

(assert (not b!1490762))

(assert (not b!1490769))

(assert (not b!1490764))

(assert (not b!1490760))

(assert (not start!126932))

(assert (not b!1490763))

(assert (not b!1490756))

(assert (not b!1490770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

