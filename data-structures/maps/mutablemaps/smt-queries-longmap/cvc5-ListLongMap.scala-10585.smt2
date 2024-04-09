; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124690 () Bool)

(assert start!124690)

(declare-fun e!813611 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!98055 0))(
  ( (array!98056 (arr!47311 (Array (_ BitVec 32) (_ BitVec 64))) (size!47862 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98055)

(declare-fun b!1443869 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1443869 (= e!813611 (or (= (select (arr!47311 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47311 a!2862) intermediateBeforeIndex!19) (select (arr!47311 a!2862) j!93))))))

(declare-fun b!1443870 () Bool)

(declare-fun res!976026 () Bool)

(declare-fun e!813607 () Bool)

(assert (=> b!1443870 (=> (not res!976026) (not e!813607))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1443870 (= res!976026 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47862 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47862 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47862 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443872 () Bool)

(declare-fun res!976030 () Bool)

(assert (=> b!1443872 (=> (not res!976030) (not e!813607))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443872 (= res!976030 (validKeyInArray!0 (select (arr!47311 a!2862) i!1006)))))

(declare-fun b!1443873 () Bool)

(declare-fun e!813610 () Bool)

(declare-fun e!813612 () Bool)

(assert (=> b!1443873 (= e!813610 (not e!813612))))

(declare-fun res!976028 () Bool)

(assert (=> b!1443873 (=> res!976028 e!813612)))

(assert (=> b!1443873 (= res!976028 (or (not (= (select (arr!47311 a!2862) index!646) (select (store (arr!47311 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47311 a!2862) index!646) (select (arr!47311 a!2862) j!93)))))))

(assert (=> b!1443873 e!813611))

(declare-fun res!976031 () Bool)

(assert (=> b!1443873 (=> (not res!976031) (not e!813611))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98055 (_ BitVec 32)) Bool)

(assert (=> b!1443873 (= res!976031 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48616 0))(
  ( (Unit!48617) )
))
(declare-fun lt!633972 () Unit!48616)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98055 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48616)

(assert (=> b!1443873 (= lt!633972 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443874 () Bool)

(declare-fun res!976025 () Bool)

(assert (=> b!1443874 (=> (not res!976025) (not e!813607))))

(assert (=> b!1443874 (= res!976025 (and (= (size!47862 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47862 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47862 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!813613 () Bool)

(declare-fun lt!633973 () array!98055)

(declare-fun lt!633975 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11586 0))(
  ( (MissingZero!11586 (index!48735 (_ BitVec 32))) (Found!11586 (index!48736 (_ BitVec 32))) (Intermediate!11586 (undefined!12398 Bool) (index!48737 (_ BitVec 32)) (x!130438 (_ BitVec 32))) (Undefined!11586) (MissingVacant!11586 (index!48738 (_ BitVec 32))) )
))
(declare-fun lt!633976 () SeekEntryResult!11586)

(declare-fun b!1443875 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98055 (_ BitVec 32)) SeekEntryResult!11586)

(assert (=> b!1443875 (= e!813613 (= lt!633976 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633975 lt!633973 mask!2687)))))

(declare-fun b!1443876 () Bool)

(declare-fun res!976032 () Bool)

(assert (=> b!1443876 (=> (not res!976032) (not e!813607))))

(declare-datatypes ((List!33992 0))(
  ( (Nil!33989) (Cons!33988 (h!35338 (_ BitVec 64)) (t!48693 List!33992)) )
))
(declare-fun arrayNoDuplicates!0 (array!98055 (_ BitVec 32) List!33992) Bool)

(assert (=> b!1443876 (= res!976032 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33989))))

(declare-fun b!1443877 () Bool)

(declare-fun res!976036 () Bool)

(declare-fun e!813614 () Bool)

(assert (=> b!1443877 (=> (not res!976036) (not e!813614))))

(declare-fun lt!633971 () SeekEntryResult!11586)

(assert (=> b!1443877 (= res!976036 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47311 a!2862) j!93) a!2862 mask!2687) lt!633971))))

(declare-fun b!1443878 () Bool)

(declare-fun res!976033 () Bool)

(assert (=> b!1443878 (=> (not res!976033) (not e!813610))))

(assert (=> b!1443878 (= res!976033 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1443879 () Bool)

(declare-fun res!976029 () Bool)

(assert (=> b!1443879 (=> (not res!976029) (not e!813611))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98055 (_ BitVec 32)) SeekEntryResult!11586)

(assert (=> b!1443879 (= res!976029 (= (seekEntryOrOpen!0 (select (arr!47311 a!2862) j!93) a!2862 mask!2687) (Found!11586 j!93)))))

(declare-fun b!1443880 () Bool)

(assert (=> b!1443880 (= e!813614 e!813610)))

(declare-fun res!976034 () Bool)

(assert (=> b!1443880 (=> (not res!976034) (not e!813610))))

(assert (=> b!1443880 (= res!976034 (= lt!633976 (Intermediate!11586 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443880 (= lt!633976 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633975 mask!2687) lt!633975 lt!633973 mask!2687))))

(assert (=> b!1443880 (= lt!633975 (select (store (arr!47311 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443881 () Bool)

(declare-fun res!976038 () Bool)

(assert (=> b!1443881 (=> (not res!976038) (not e!813607))))

(assert (=> b!1443881 (= res!976038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443882 () Bool)

(assert (=> b!1443882 (= e!813612 true)))

(declare-fun lt!633974 () SeekEntryResult!11586)

(assert (=> b!1443882 (= lt!633974 (seekEntryOrOpen!0 lt!633975 lt!633973 mask!2687))))

(declare-fun b!1443883 () Bool)

(declare-fun res!976023 () Bool)

(assert (=> b!1443883 (=> (not res!976023) (not e!813610))))

(assert (=> b!1443883 (= res!976023 e!813613)))

(declare-fun c!133436 () Bool)

(assert (=> b!1443883 (= c!133436 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443884 () Bool)

(declare-fun e!813608 () Bool)

(assert (=> b!1443884 (= e!813608 e!813614)))

(declare-fun res!976027 () Bool)

(assert (=> b!1443884 (=> (not res!976027) (not e!813614))))

(assert (=> b!1443884 (= res!976027 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47311 a!2862) j!93) mask!2687) (select (arr!47311 a!2862) j!93) a!2862 mask!2687) lt!633971))))

(assert (=> b!1443884 (= lt!633971 (Intermediate!11586 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1443885 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98055 (_ BitVec 32)) SeekEntryResult!11586)

(assert (=> b!1443885 (= e!813613 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633975 lt!633973 mask!2687) (seekEntryOrOpen!0 lt!633975 lt!633973 mask!2687)))))

(declare-fun b!1443886 () Bool)

(assert (=> b!1443886 (= e!813607 e!813608)))

(declare-fun res!976024 () Bool)

(assert (=> b!1443886 (=> (not res!976024) (not e!813608))))

(assert (=> b!1443886 (= res!976024 (= (select (store (arr!47311 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443886 (= lt!633973 (array!98056 (store (arr!47311 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47862 a!2862)))))

(declare-fun b!1443871 () Bool)

(declare-fun res!976037 () Bool)

(assert (=> b!1443871 (=> (not res!976037) (not e!813607))))

(assert (=> b!1443871 (= res!976037 (validKeyInArray!0 (select (arr!47311 a!2862) j!93)))))

(declare-fun res!976035 () Bool)

(assert (=> start!124690 (=> (not res!976035) (not e!813607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124690 (= res!976035 (validMask!0 mask!2687))))

(assert (=> start!124690 e!813607))

(assert (=> start!124690 true))

(declare-fun array_inv!36256 (array!98055) Bool)

(assert (=> start!124690 (array_inv!36256 a!2862)))

(assert (= (and start!124690 res!976035) b!1443874))

(assert (= (and b!1443874 res!976025) b!1443872))

(assert (= (and b!1443872 res!976030) b!1443871))

(assert (= (and b!1443871 res!976037) b!1443881))

(assert (= (and b!1443881 res!976038) b!1443876))

(assert (= (and b!1443876 res!976032) b!1443870))

(assert (= (and b!1443870 res!976026) b!1443886))

(assert (= (and b!1443886 res!976024) b!1443884))

(assert (= (and b!1443884 res!976027) b!1443877))

(assert (= (and b!1443877 res!976036) b!1443880))

(assert (= (and b!1443880 res!976034) b!1443883))

(assert (= (and b!1443883 c!133436) b!1443875))

(assert (= (and b!1443883 (not c!133436)) b!1443885))

(assert (= (and b!1443883 res!976023) b!1443878))

(assert (= (and b!1443878 res!976033) b!1443873))

(assert (= (and b!1443873 res!976031) b!1443879))

(assert (= (and b!1443879 res!976029) b!1443869))

(assert (= (and b!1443873 (not res!976028)) b!1443882))

(declare-fun m!1332975 () Bool)

(assert (=> b!1443875 m!1332975))

(declare-fun m!1332977 () Bool)

(assert (=> b!1443872 m!1332977))

(assert (=> b!1443872 m!1332977))

(declare-fun m!1332979 () Bool)

(assert (=> b!1443872 m!1332979))

(declare-fun m!1332981 () Bool)

(assert (=> b!1443882 m!1332981))

(declare-fun m!1332983 () Bool)

(assert (=> b!1443877 m!1332983))

(assert (=> b!1443877 m!1332983))

(declare-fun m!1332985 () Bool)

(assert (=> b!1443877 m!1332985))

(declare-fun m!1332987 () Bool)

(assert (=> b!1443885 m!1332987))

(assert (=> b!1443885 m!1332981))

(declare-fun m!1332989 () Bool)

(assert (=> b!1443880 m!1332989))

(assert (=> b!1443880 m!1332989))

(declare-fun m!1332991 () Bool)

(assert (=> b!1443880 m!1332991))

(declare-fun m!1332993 () Bool)

(assert (=> b!1443880 m!1332993))

(declare-fun m!1332995 () Bool)

(assert (=> b!1443880 m!1332995))

(declare-fun m!1332997 () Bool)

(assert (=> b!1443881 m!1332997))

(declare-fun m!1332999 () Bool)

(assert (=> start!124690 m!1332999))

(declare-fun m!1333001 () Bool)

(assert (=> start!124690 m!1333001))

(assert (=> b!1443871 m!1332983))

(assert (=> b!1443871 m!1332983))

(declare-fun m!1333003 () Bool)

(assert (=> b!1443871 m!1333003))

(declare-fun m!1333005 () Bool)

(assert (=> b!1443873 m!1333005))

(assert (=> b!1443873 m!1332993))

(declare-fun m!1333007 () Bool)

(assert (=> b!1443873 m!1333007))

(declare-fun m!1333009 () Bool)

(assert (=> b!1443873 m!1333009))

(declare-fun m!1333011 () Bool)

(assert (=> b!1443873 m!1333011))

(assert (=> b!1443873 m!1332983))

(declare-fun m!1333013 () Bool)

(assert (=> b!1443876 m!1333013))

(assert (=> b!1443886 m!1332993))

(declare-fun m!1333015 () Bool)

(assert (=> b!1443886 m!1333015))

(assert (=> b!1443879 m!1332983))

(assert (=> b!1443879 m!1332983))

(declare-fun m!1333017 () Bool)

(assert (=> b!1443879 m!1333017))

(declare-fun m!1333019 () Bool)

(assert (=> b!1443869 m!1333019))

(assert (=> b!1443869 m!1332983))

(assert (=> b!1443884 m!1332983))

(assert (=> b!1443884 m!1332983))

(declare-fun m!1333021 () Bool)

(assert (=> b!1443884 m!1333021))

(assert (=> b!1443884 m!1333021))

(assert (=> b!1443884 m!1332983))

(declare-fun m!1333023 () Bool)

(assert (=> b!1443884 m!1333023))

(push 1)

