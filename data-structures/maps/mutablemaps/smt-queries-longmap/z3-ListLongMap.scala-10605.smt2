; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124812 () Bool)

(assert start!124812)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1447087 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!815034 () Bool)

(assert (=> b!1447087 (= e!815034 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447088 () Bool)

(declare-fun res!978878 () Bool)

(declare-fun e!815030 () Bool)

(assert (=> b!1447088 (=> (not res!978878) (not e!815030))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1447088 (= res!978878 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447089 () Bool)

(declare-fun e!815033 () Bool)

(assert (=> b!1447089 (= e!815033 true)))

(declare-datatypes ((SeekEntryResult!11647 0))(
  ( (MissingZero!11647 (index!48979 (_ BitVec 32))) (Found!11647 (index!48980 (_ BitVec 32))) (Intermediate!11647 (undefined!12459 Bool) (index!48981 (_ BitVec 32)) (x!130659 (_ BitVec 32))) (Undefined!11647) (MissingVacant!11647 (index!48982 (_ BitVec 32))) )
))
(declare-fun lt!635002 () SeekEntryResult!11647)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!98177 0))(
  ( (array!98178 (arr!47372 (Array (_ BitVec 32) (_ BitVec 64))) (size!47923 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98177)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98177 (_ BitVec 32)) SeekEntryResult!11647)

(assert (=> b!1447089 (= lt!635002 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47372 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1447090 () Bool)

(declare-fun e!815031 () Bool)

(assert (=> b!1447090 (= e!815031 e!815034)))

(declare-fun res!978881 () Bool)

(assert (=> b!1447090 (=> (not res!978881) (not e!815034))))

(declare-fun lt!635008 () SeekEntryResult!11647)

(assert (=> b!1447090 (= res!978881 (= lt!635008 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47372 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun lt!635003 () array!98177)

(declare-fun b!1447091 () Bool)

(declare-fun lt!635004 () (_ BitVec 64))

(declare-fun e!815035 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98177 (_ BitVec 32)) SeekEntryResult!11647)

(assert (=> b!1447091 (= e!815035 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635004 lt!635003 mask!2687) (seekEntryOrOpen!0 lt!635004 lt!635003 mask!2687)))))

(declare-fun b!1447092 () Bool)

(declare-fun res!978875 () Bool)

(declare-fun e!815029 () Bool)

(assert (=> b!1447092 (=> (not res!978875) (not e!815029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98177 (_ BitVec 32)) Bool)

(assert (=> b!1447092 (= res!978875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1447093 () Bool)

(declare-fun e!815027 () Bool)

(declare-fun e!815028 () Bool)

(assert (=> b!1447093 (= e!815027 e!815028)))

(declare-fun res!978890 () Bool)

(assert (=> b!1447093 (=> (not res!978890) (not e!815028))))

(declare-fun lt!635005 () SeekEntryResult!11647)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98177 (_ BitVec 32)) SeekEntryResult!11647)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447093 (= res!978890 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47372 a!2862) j!93) mask!2687) (select (arr!47372 a!2862) j!93) a!2862 mask!2687) lt!635005))))

(assert (=> b!1447093 (= lt!635005 (Intermediate!11647 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1447094 () Bool)

(declare-fun res!978891 () Bool)

(assert (=> b!1447094 (=> (not res!978891) (not e!815029))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447094 (= res!978891 (validKeyInArray!0 (select (arr!47372 a!2862) j!93)))))

(declare-fun b!1447095 () Bool)

(declare-fun res!978882 () Bool)

(assert (=> b!1447095 (=> (not res!978882) (not e!815029))))

(declare-datatypes ((List!34053 0))(
  ( (Nil!34050) (Cons!34049 (h!35399 (_ BitVec 64)) (t!48754 List!34053)) )
))
(declare-fun arrayNoDuplicates!0 (array!98177 (_ BitVec 32) List!34053) Bool)

(assert (=> b!1447095 (= res!978882 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34050))))

(declare-fun b!1447096 () Bool)

(assert (=> b!1447096 (= e!815030 (not e!815033))))

(declare-fun res!978885 () Bool)

(assert (=> b!1447096 (=> res!978885 e!815033)))

(assert (=> b!1447096 (= res!978885 (or (and (= (select (arr!47372 a!2862) index!646) (select (store (arr!47372 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47372 a!2862) index!646) (select (arr!47372 a!2862) j!93))) (not (= (select (arr!47372 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47372 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815032 () Bool)

(assert (=> b!1447096 e!815032))

(declare-fun res!978886 () Bool)

(assert (=> b!1447096 (=> (not res!978886) (not e!815032))))

(assert (=> b!1447096 (= res!978886 (and (= lt!635008 (Found!11647 j!93)) (or (= (select (arr!47372 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47372 a!2862) intermediateBeforeIndex!19) (select (arr!47372 a!2862) j!93)))))))

(assert (=> b!1447096 (= lt!635008 (seekEntryOrOpen!0 (select (arr!47372 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1447096 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48738 0))(
  ( (Unit!48739) )
))
(declare-fun lt!635007 () Unit!48738)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98177 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48738)

(assert (=> b!1447096 (= lt!635007 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447097 () Bool)

(declare-fun res!978876 () Bool)

(assert (=> b!1447097 (=> (not res!978876) (not e!815029))))

(assert (=> b!1447097 (= res!978876 (validKeyInArray!0 (select (arr!47372 a!2862) i!1006)))))

(declare-fun b!1447098 () Bool)

(assert (=> b!1447098 (= e!815029 e!815027)))

(declare-fun res!978887 () Bool)

(assert (=> b!1447098 (=> (not res!978887) (not e!815027))))

(assert (=> b!1447098 (= res!978887 (= (select (store (arr!47372 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447098 (= lt!635003 (array!98178 (store (arr!47372 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47923 a!2862)))))

(declare-fun b!1447099 () Bool)

(assert (=> b!1447099 (= e!815028 e!815030)))

(declare-fun res!978877 () Bool)

(assert (=> b!1447099 (=> (not res!978877) (not e!815030))))

(declare-fun lt!635006 () SeekEntryResult!11647)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1447099 (= res!978877 (= lt!635006 (Intermediate!11647 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1447099 (= lt!635006 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635004 mask!2687) lt!635004 lt!635003 mask!2687))))

(assert (=> b!1447099 (= lt!635004 (select (store (arr!47372 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1447100 () Bool)

(declare-fun res!978880 () Bool)

(assert (=> b!1447100 (=> (not res!978880) (not e!815029))))

(assert (=> b!1447100 (= res!978880 (and (= (size!47923 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47923 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47923 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1447101 () Bool)

(declare-fun res!978879 () Bool)

(assert (=> b!1447101 (=> (not res!978879) (not e!815028))))

(assert (=> b!1447101 (= res!978879 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47372 a!2862) j!93) a!2862 mask!2687) lt!635005))))

(declare-fun res!978889 () Bool)

(assert (=> start!124812 (=> (not res!978889) (not e!815029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124812 (= res!978889 (validMask!0 mask!2687))))

(assert (=> start!124812 e!815029))

(assert (=> start!124812 true))

(declare-fun array_inv!36317 (array!98177) Bool)

(assert (=> start!124812 (array_inv!36317 a!2862)))

(declare-fun b!1447102 () Bool)

(assert (=> b!1447102 (= e!815032 e!815031)))

(declare-fun res!978883 () Bool)

(assert (=> b!1447102 (=> res!978883 e!815031)))

(assert (=> b!1447102 (= res!978883 (or (and (= (select (arr!47372 a!2862) index!646) (select (store (arr!47372 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47372 a!2862) index!646) (select (arr!47372 a!2862) j!93))) (not (= (select (arr!47372 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447103 () Bool)

(declare-fun res!978884 () Bool)

(assert (=> b!1447103 (=> (not res!978884) (not e!815029))))

(assert (=> b!1447103 (= res!978884 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47923 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47923 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47923 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447104 () Bool)

(declare-fun res!978888 () Bool)

(assert (=> b!1447104 (=> (not res!978888) (not e!815030))))

(assert (=> b!1447104 (= res!978888 e!815035)))

(declare-fun c!133619 () Bool)

(assert (=> b!1447104 (= c!133619 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1447105 () Bool)

(assert (=> b!1447105 (= e!815035 (= lt!635006 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635004 lt!635003 mask!2687)))))

(assert (= (and start!124812 res!978889) b!1447100))

(assert (= (and b!1447100 res!978880) b!1447097))

(assert (= (and b!1447097 res!978876) b!1447094))

(assert (= (and b!1447094 res!978891) b!1447092))

(assert (= (and b!1447092 res!978875) b!1447095))

(assert (= (and b!1447095 res!978882) b!1447103))

(assert (= (and b!1447103 res!978884) b!1447098))

(assert (= (and b!1447098 res!978887) b!1447093))

(assert (= (and b!1447093 res!978890) b!1447101))

(assert (= (and b!1447101 res!978879) b!1447099))

(assert (= (and b!1447099 res!978877) b!1447104))

(assert (= (and b!1447104 c!133619) b!1447105))

(assert (= (and b!1447104 (not c!133619)) b!1447091))

(assert (= (and b!1447104 res!978888) b!1447088))

(assert (= (and b!1447088 res!978878) b!1447096))

(assert (= (and b!1447096 res!978886) b!1447102))

(assert (= (and b!1447102 (not res!978883)) b!1447090))

(assert (= (and b!1447090 res!978881) b!1447087))

(assert (= (and b!1447096 (not res!978885)) b!1447089))

(declare-fun m!1335975 () Bool)

(assert (=> b!1447102 m!1335975))

(declare-fun m!1335977 () Bool)

(assert (=> b!1447102 m!1335977))

(declare-fun m!1335979 () Bool)

(assert (=> b!1447102 m!1335979))

(declare-fun m!1335981 () Bool)

(assert (=> b!1447102 m!1335981))

(assert (=> b!1447089 m!1335981))

(assert (=> b!1447089 m!1335981))

(declare-fun m!1335983 () Bool)

(assert (=> b!1447089 m!1335983))

(declare-fun m!1335985 () Bool)

(assert (=> b!1447095 m!1335985))

(assert (=> b!1447101 m!1335981))

(assert (=> b!1447101 m!1335981))

(declare-fun m!1335987 () Bool)

(assert (=> b!1447101 m!1335987))

(assert (=> b!1447098 m!1335977))

(declare-fun m!1335989 () Bool)

(assert (=> b!1447098 m!1335989))

(declare-fun m!1335991 () Bool)

(assert (=> b!1447105 m!1335991))

(assert (=> b!1447090 m!1335981))

(assert (=> b!1447090 m!1335981))

(declare-fun m!1335993 () Bool)

(assert (=> b!1447090 m!1335993))

(assert (=> b!1447093 m!1335981))

(assert (=> b!1447093 m!1335981))

(declare-fun m!1335995 () Bool)

(assert (=> b!1447093 m!1335995))

(assert (=> b!1447093 m!1335995))

(assert (=> b!1447093 m!1335981))

(declare-fun m!1335997 () Bool)

(assert (=> b!1447093 m!1335997))

(declare-fun m!1335999 () Bool)

(assert (=> b!1447096 m!1335999))

(assert (=> b!1447096 m!1335977))

(declare-fun m!1336001 () Bool)

(assert (=> b!1447096 m!1336001))

(assert (=> b!1447096 m!1335979))

(assert (=> b!1447096 m!1335975))

(assert (=> b!1447096 m!1335981))

(declare-fun m!1336003 () Bool)

(assert (=> b!1447096 m!1336003))

(declare-fun m!1336005 () Bool)

(assert (=> b!1447096 m!1336005))

(assert (=> b!1447096 m!1335981))

(declare-fun m!1336007 () Bool)

(assert (=> start!124812 m!1336007))

(declare-fun m!1336009 () Bool)

(assert (=> start!124812 m!1336009))

(declare-fun m!1336011 () Bool)

(assert (=> b!1447092 m!1336011))

(declare-fun m!1336013 () Bool)

(assert (=> b!1447091 m!1336013))

(declare-fun m!1336015 () Bool)

(assert (=> b!1447091 m!1336015))

(declare-fun m!1336017 () Bool)

(assert (=> b!1447097 m!1336017))

(assert (=> b!1447097 m!1336017))

(declare-fun m!1336019 () Bool)

(assert (=> b!1447097 m!1336019))

(declare-fun m!1336021 () Bool)

(assert (=> b!1447099 m!1336021))

(assert (=> b!1447099 m!1336021))

(declare-fun m!1336023 () Bool)

(assert (=> b!1447099 m!1336023))

(assert (=> b!1447099 m!1335977))

(declare-fun m!1336025 () Bool)

(assert (=> b!1447099 m!1336025))

(assert (=> b!1447094 m!1335981))

(assert (=> b!1447094 m!1335981))

(declare-fun m!1336027 () Bool)

(assert (=> b!1447094 m!1336027))

(check-sat (not b!1447091) (not b!1447090) (not start!124812) (not b!1447105) (not b!1447094) (not b!1447092) (not b!1447096) (not b!1447099) (not b!1447089) (not b!1447093) (not b!1447097) (not b!1447101) (not b!1447095))
(check-sat)
