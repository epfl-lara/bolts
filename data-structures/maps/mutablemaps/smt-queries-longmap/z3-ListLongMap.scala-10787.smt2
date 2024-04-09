; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126264 () Bool)

(assert start!126264)

(declare-fun b!1478888 () Bool)

(declare-fun res!1004961 () Bool)

(declare-fun e!829601 () Bool)

(assert (=> b!1478888 (=> (not res!1004961) (not e!829601))))

(declare-datatypes ((array!99287 0))(
  ( (array!99288 (arr!47918 (Array (_ BitVec 32) (_ BitVec 64))) (size!48469 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99287)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99287 (_ BitVec 32)) Bool)

(assert (=> b!1478888 (= res!1004961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!645798 () (_ BitVec 64))

(declare-fun lt!645802 () array!99287)

(declare-fun b!1478889 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!829597 () Bool)

(declare-datatypes ((SeekEntryResult!12181 0))(
  ( (MissingZero!12181 (index!51115 (_ BitVec 32))) (Found!12181 (index!51116 (_ BitVec 32))) (Intermediate!12181 (undefined!12993 Bool) (index!51117 (_ BitVec 32)) (x!132703 (_ BitVec 32))) (Undefined!12181) (MissingVacant!12181 (index!51118 (_ BitVec 32))) )
))
(declare-fun lt!645799 () SeekEntryResult!12181)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99287 (_ BitVec 32)) SeekEntryResult!12181)

(assert (=> b!1478889 (= e!829597 (= lt!645799 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645798 lt!645802 mask!2687)))))

(declare-fun b!1478890 () Bool)

(declare-fun res!1004960 () Bool)

(assert (=> b!1478890 (=> (not res!1004960) (not e!829601))))

(declare-datatypes ((List!34599 0))(
  ( (Nil!34596) (Cons!34595 (h!35963 (_ BitVec 64)) (t!49300 List!34599)) )
))
(declare-fun arrayNoDuplicates!0 (array!99287 (_ BitVec 32) List!34599) Bool)

(assert (=> b!1478890 (= res!1004960 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34596))))

(declare-fun b!1478891 () Bool)

(declare-fun e!829596 () Bool)

(declare-fun e!829595 () Bool)

(assert (=> b!1478891 (= e!829596 e!829595)))

(declare-fun res!1004966 () Bool)

(assert (=> b!1478891 (=> (not res!1004966) (not e!829595))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478891 (= res!1004966 (= lt!645799 (Intermediate!12181 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478891 (= lt!645799 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645798 mask!2687) lt!645798 lt!645802 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1478891 (= lt!645798 (select (store (arr!47918 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478892 () Bool)

(declare-fun res!1004952 () Bool)

(assert (=> b!1478892 (=> (not res!1004952) (not e!829596))))

(declare-fun lt!645801 () SeekEntryResult!12181)

(assert (=> b!1478892 (= res!1004952 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47918 a!2862) j!93) a!2862 mask!2687) lt!645801))))

(declare-fun b!1478893 () Bool)

(declare-fun res!1004957 () Bool)

(assert (=> b!1478893 (=> (not res!1004957) (not e!829601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478893 (= res!1004957 (validKeyInArray!0 (select (arr!47918 a!2862) i!1006)))))

(declare-fun b!1478894 () Bool)

(declare-fun res!1004954 () Bool)

(assert (=> b!1478894 (=> (not res!1004954) (not e!829601))))

(assert (=> b!1478894 (= res!1004954 (and (= (size!48469 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48469 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48469 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478895 () Bool)

(declare-fun e!829599 () Bool)

(declare-fun e!829598 () Bool)

(assert (=> b!1478895 (= e!829599 e!829598)))

(declare-fun res!1004962 () Bool)

(assert (=> b!1478895 (=> res!1004962 e!829598)))

(assert (=> b!1478895 (= res!1004962 (or (and (= (select (arr!47918 a!2862) index!646) (select (store (arr!47918 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47918 a!2862) index!646) (select (arr!47918 a!2862) j!93))) (not (= (select (arr!47918 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478896 () Bool)

(assert (=> b!1478896 (= e!829595 (not true))))

(assert (=> b!1478896 e!829599))

(declare-fun res!1004958 () Bool)

(assert (=> b!1478896 (=> (not res!1004958) (not e!829599))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!645797 () SeekEntryResult!12181)

(assert (=> b!1478896 (= res!1004958 (and (= lt!645797 (Found!12181 j!93)) (or (= (select (arr!47918 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47918 a!2862) intermediateBeforeIndex!19) (select (arr!47918 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99287 (_ BitVec 32)) SeekEntryResult!12181)

(assert (=> b!1478896 (= lt!645797 (seekEntryOrOpen!0 (select (arr!47918 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1478896 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49650 0))(
  ( (Unit!49651) )
))
(declare-fun lt!645800 () Unit!49650)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99287 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49650)

(assert (=> b!1478896 (= lt!645800 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478897 () Bool)

(declare-fun e!829600 () Bool)

(assert (=> b!1478897 (= e!829601 e!829600)))

(declare-fun res!1004956 () Bool)

(assert (=> b!1478897 (=> (not res!1004956) (not e!829600))))

(assert (=> b!1478897 (= res!1004956 (= (select (store (arr!47918 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478897 (= lt!645802 (array!99288 (store (arr!47918 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48469 a!2862)))))

(declare-fun b!1478898 () Bool)

(declare-fun e!829593 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1478898 (= e!829593 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1478899 () Bool)

(declare-fun res!1004963 () Bool)

(assert (=> b!1478899 (=> (not res!1004963) (not e!829601))))

(assert (=> b!1478899 (= res!1004963 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48469 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48469 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48469 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478900 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99287 (_ BitVec 32)) SeekEntryResult!12181)

(assert (=> b!1478900 (= e!829597 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645798 lt!645802 mask!2687) (seekEntryOrOpen!0 lt!645798 lt!645802 mask!2687)))))

(declare-fun res!1004964 () Bool)

(assert (=> start!126264 (=> (not res!1004964) (not e!829601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126264 (= res!1004964 (validMask!0 mask!2687))))

(assert (=> start!126264 e!829601))

(assert (=> start!126264 true))

(declare-fun array_inv!36863 (array!99287) Bool)

(assert (=> start!126264 (array_inv!36863 a!2862)))

(declare-fun b!1478901 () Bool)

(assert (=> b!1478901 (= e!829598 e!829593)))

(declare-fun res!1004953 () Bool)

(assert (=> b!1478901 (=> (not res!1004953) (not e!829593))))

(assert (=> b!1478901 (= res!1004953 (= lt!645797 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47918 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1478902 () Bool)

(declare-fun res!1004959 () Bool)

(assert (=> b!1478902 (=> (not res!1004959) (not e!829601))))

(assert (=> b!1478902 (= res!1004959 (validKeyInArray!0 (select (arr!47918 a!2862) j!93)))))

(declare-fun b!1478903 () Bool)

(declare-fun res!1004955 () Bool)

(assert (=> b!1478903 (=> (not res!1004955) (not e!829595))))

(assert (=> b!1478903 (= res!1004955 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478904 () Bool)

(assert (=> b!1478904 (= e!829600 e!829596)))

(declare-fun res!1004965 () Bool)

(assert (=> b!1478904 (=> (not res!1004965) (not e!829596))))

(assert (=> b!1478904 (= res!1004965 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47918 a!2862) j!93) mask!2687) (select (arr!47918 a!2862) j!93) a!2862 mask!2687) lt!645801))))

(assert (=> b!1478904 (= lt!645801 (Intermediate!12181 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478905 () Bool)

(declare-fun res!1004967 () Bool)

(assert (=> b!1478905 (=> (not res!1004967) (not e!829595))))

(assert (=> b!1478905 (= res!1004967 e!829597)))

(declare-fun c!136490 () Bool)

(assert (=> b!1478905 (= c!136490 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!126264 res!1004964) b!1478894))

(assert (= (and b!1478894 res!1004954) b!1478893))

(assert (= (and b!1478893 res!1004957) b!1478902))

(assert (= (and b!1478902 res!1004959) b!1478888))

(assert (= (and b!1478888 res!1004961) b!1478890))

(assert (= (and b!1478890 res!1004960) b!1478899))

(assert (= (and b!1478899 res!1004963) b!1478897))

(assert (= (and b!1478897 res!1004956) b!1478904))

(assert (= (and b!1478904 res!1004965) b!1478892))

(assert (= (and b!1478892 res!1004952) b!1478891))

(assert (= (and b!1478891 res!1004966) b!1478905))

(assert (= (and b!1478905 c!136490) b!1478889))

(assert (= (and b!1478905 (not c!136490)) b!1478900))

(assert (= (and b!1478905 res!1004967) b!1478903))

(assert (= (and b!1478903 res!1004955) b!1478896))

(assert (= (and b!1478896 res!1004958) b!1478895))

(assert (= (and b!1478895 (not res!1004962)) b!1478901))

(assert (= (and b!1478901 res!1004953) b!1478898))

(declare-fun m!1364839 () Bool)

(assert (=> start!126264 m!1364839))

(declare-fun m!1364841 () Bool)

(assert (=> start!126264 m!1364841))

(declare-fun m!1364843 () Bool)

(assert (=> b!1478892 m!1364843))

(assert (=> b!1478892 m!1364843))

(declare-fun m!1364845 () Bool)

(assert (=> b!1478892 m!1364845))

(assert (=> b!1478901 m!1364843))

(assert (=> b!1478901 m!1364843))

(declare-fun m!1364847 () Bool)

(assert (=> b!1478901 m!1364847))

(declare-fun m!1364849 () Bool)

(assert (=> b!1478890 m!1364849))

(declare-fun m!1364851 () Bool)

(assert (=> b!1478893 m!1364851))

(assert (=> b!1478893 m!1364851))

(declare-fun m!1364853 () Bool)

(assert (=> b!1478893 m!1364853))

(declare-fun m!1364855 () Bool)

(assert (=> b!1478896 m!1364855))

(declare-fun m!1364857 () Bool)

(assert (=> b!1478896 m!1364857))

(assert (=> b!1478896 m!1364843))

(declare-fun m!1364859 () Bool)

(assert (=> b!1478896 m!1364859))

(declare-fun m!1364861 () Bool)

(assert (=> b!1478896 m!1364861))

(assert (=> b!1478896 m!1364843))

(declare-fun m!1364863 () Bool)

(assert (=> b!1478888 m!1364863))

(declare-fun m!1364865 () Bool)

(assert (=> b!1478900 m!1364865))

(declare-fun m!1364867 () Bool)

(assert (=> b!1478900 m!1364867))

(declare-fun m!1364869 () Bool)

(assert (=> b!1478889 m!1364869))

(declare-fun m!1364871 () Bool)

(assert (=> b!1478895 m!1364871))

(declare-fun m!1364873 () Bool)

(assert (=> b!1478895 m!1364873))

(declare-fun m!1364875 () Bool)

(assert (=> b!1478895 m!1364875))

(assert (=> b!1478895 m!1364843))

(assert (=> b!1478897 m!1364873))

(declare-fun m!1364877 () Bool)

(assert (=> b!1478897 m!1364877))

(assert (=> b!1478904 m!1364843))

(assert (=> b!1478904 m!1364843))

(declare-fun m!1364879 () Bool)

(assert (=> b!1478904 m!1364879))

(assert (=> b!1478904 m!1364879))

(assert (=> b!1478904 m!1364843))

(declare-fun m!1364881 () Bool)

(assert (=> b!1478904 m!1364881))

(assert (=> b!1478902 m!1364843))

(assert (=> b!1478902 m!1364843))

(declare-fun m!1364883 () Bool)

(assert (=> b!1478902 m!1364883))

(declare-fun m!1364885 () Bool)

(assert (=> b!1478891 m!1364885))

(assert (=> b!1478891 m!1364885))

(declare-fun m!1364887 () Bool)

(assert (=> b!1478891 m!1364887))

(assert (=> b!1478891 m!1364873))

(declare-fun m!1364889 () Bool)

(assert (=> b!1478891 m!1364889))

(check-sat (not b!1478888) (not b!1478896) (not b!1478889) (not b!1478893) (not b!1478900) (not b!1478904) (not start!126264) (not b!1478891) (not b!1478901) (not b!1478892) (not b!1478902) (not b!1478890))
(check-sat)
