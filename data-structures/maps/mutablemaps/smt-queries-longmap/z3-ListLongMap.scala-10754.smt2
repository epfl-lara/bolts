; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125826 () Bool)

(assert start!125826)

(declare-fun b!1472076 () Bool)

(declare-fun res!999886 () Bool)

(declare-fun e!826219 () Bool)

(assert (=> b!1472076 (=> (not res!999886) (not e!826219))))

(declare-datatypes ((array!99077 0))(
  ( (array!99078 (arr!47819 (Array (_ BitVec 32) (_ BitVec 64))) (size!48370 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99077)

(declare-datatypes ((List!34500 0))(
  ( (Nil!34497) (Cons!34496 (h!35852 (_ BitVec 64)) (t!49201 List!34500)) )
))
(declare-fun arrayNoDuplicates!0 (array!99077 (_ BitVec 32) List!34500) Bool)

(assert (=> b!1472076 (= res!999886 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34497))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1472077 () Bool)

(declare-fun e!826220 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1472077 (= e!826220 (or (= (select (arr!47819 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47819 a!2862) intermediateBeforeIndex!19) (select (arr!47819 a!2862) j!93))))))

(declare-fun b!1472078 () Bool)

(declare-fun res!999892 () Bool)

(assert (=> b!1472078 (=> (not res!999892) (not e!826219))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1472078 (= res!999892 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48370 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48370 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48370 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1472079 () Bool)

(declare-fun res!999891 () Bool)

(declare-fun e!826221 () Bool)

(assert (=> b!1472079 (=> (not res!999891) (not e!826221))))

(declare-fun e!826217 () Bool)

(assert (=> b!1472079 (= res!999891 e!826217)))

(declare-fun c!135614 () Bool)

(assert (=> b!1472079 (= c!135614 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472080 () Bool)

(declare-fun res!999890 () Bool)

(assert (=> b!1472080 (=> (not res!999890) (not e!826219))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472080 (= res!999890 (validKeyInArray!0 (select (arr!47819 a!2862) i!1006)))))

(declare-fun b!1472081 () Bool)

(declare-fun res!999885 () Bool)

(assert (=> b!1472081 (=> (not res!999885) (not e!826219))))

(assert (=> b!1472081 (= res!999885 (validKeyInArray!0 (select (arr!47819 a!2862) j!93)))))

(declare-fun res!999884 () Bool)

(assert (=> start!125826 (=> (not res!999884) (not e!826219))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125826 (= res!999884 (validMask!0 mask!2687))))

(assert (=> start!125826 e!826219))

(assert (=> start!125826 true))

(declare-fun array_inv!36764 (array!99077) Bool)

(assert (=> start!125826 (array_inv!36764 a!2862)))

(declare-fun b!1472082 () Bool)

(declare-fun res!999893 () Bool)

(assert (=> b!1472082 (=> (not res!999893) (not e!826220))))

(declare-datatypes ((SeekEntryResult!12082 0))(
  ( (MissingZero!12082 (index!50719 (_ BitVec 32))) (Found!12082 (index!50720 (_ BitVec 32))) (Intermediate!12082 (undefined!12894 Bool) (index!50721 (_ BitVec 32)) (x!132304 (_ BitVec 32))) (Undefined!12082) (MissingVacant!12082 (index!50722 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99077 (_ BitVec 32)) SeekEntryResult!12082)

(assert (=> b!1472082 (= res!999893 (= (seekEntryOrOpen!0 (select (arr!47819 a!2862) j!93) a!2862 mask!2687) (Found!12082 j!93)))))

(declare-fun b!1472083 () Bool)

(declare-fun e!826218 () Bool)

(assert (=> b!1472083 (= e!826219 e!826218)))

(declare-fun res!999881 () Bool)

(assert (=> b!1472083 (=> (not res!999881) (not e!826218))))

(assert (=> b!1472083 (= res!999881 (= (select (store (arr!47819 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!643429 () array!99077)

(assert (=> b!1472083 (= lt!643429 (array!99078 (store (arr!47819 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48370 a!2862)))))

(declare-fun b!1472084 () Bool)

(assert (=> b!1472084 (= e!826221 (not true))))

(assert (=> b!1472084 e!826220))

(declare-fun res!999882 () Bool)

(assert (=> b!1472084 (=> (not res!999882) (not e!826220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99077 (_ BitVec 32)) Bool)

(assert (=> b!1472084 (= res!999882 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49452 0))(
  ( (Unit!49453) )
))
(declare-fun lt!643431 () Unit!49452)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99077 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49452)

(assert (=> b!1472084 (= lt!643431 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1472085 () Bool)

(declare-fun res!999887 () Bool)

(declare-fun e!826223 () Bool)

(assert (=> b!1472085 (=> (not res!999887) (not e!826223))))

(declare-fun lt!643430 () SeekEntryResult!12082)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99077 (_ BitVec 32)) SeekEntryResult!12082)

(assert (=> b!1472085 (= res!999887 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47819 a!2862) j!93) a!2862 mask!2687) lt!643430))))

(declare-fun b!1472086 () Bool)

(declare-fun res!999880 () Bool)

(assert (=> b!1472086 (=> (not res!999880) (not e!826219))))

(assert (=> b!1472086 (= res!999880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472087 () Bool)

(declare-fun res!999894 () Bool)

(assert (=> b!1472087 (=> (not res!999894) (not e!826219))))

(assert (=> b!1472087 (= res!999894 (and (= (size!48370 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48370 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48370 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472088 () Bool)

(declare-fun lt!643428 () SeekEntryResult!12082)

(declare-fun lt!643432 () (_ BitVec 64))

(assert (=> b!1472088 (= e!826217 (= lt!643428 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643432 lt!643429 mask!2687)))))

(declare-fun b!1472089 () Bool)

(declare-fun res!999888 () Bool)

(assert (=> b!1472089 (=> (not res!999888) (not e!826221))))

(assert (=> b!1472089 (= res!999888 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1472090 () Bool)

(assert (=> b!1472090 (= e!826218 e!826223)))

(declare-fun res!999883 () Bool)

(assert (=> b!1472090 (=> (not res!999883) (not e!826223))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472090 (= res!999883 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47819 a!2862) j!93) mask!2687) (select (arr!47819 a!2862) j!93) a!2862 mask!2687) lt!643430))))

(assert (=> b!1472090 (= lt!643430 (Intermediate!12082 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472091 () Bool)

(assert (=> b!1472091 (= e!826223 e!826221)))

(declare-fun res!999889 () Bool)

(assert (=> b!1472091 (=> (not res!999889) (not e!826221))))

(assert (=> b!1472091 (= res!999889 (= lt!643428 (Intermediate!12082 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1472091 (= lt!643428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643432 mask!2687) lt!643432 lt!643429 mask!2687))))

(assert (=> b!1472091 (= lt!643432 (select (store (arr!47819 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1472092 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99077 (_ BitVec 32)) SeekEntryResult!12082)

(assert (=> b!1472092 (= e!826217 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643432 lt!643429 mask!2687) (seekEntryOrOpen!0 lt!643432 lt!643429 mask!2687)))))

(assert (= (and start!125826 res!999884) b!1472087))

(assert (= (and b!1472087 res!999894) b!1472080))

(assert (= (and b!1472080 res!999890) b!1472081))

(assert (= (and b!1472081 res!999885) b!1472086))

(assert (= (and b!1472086 res!999880) b!1472076))

(assert (= (and b!1472076 res!999886) b!1472078))

(assert (= (and b!1472078 res!999892) b!1472083))

(assert (= (and b!1472083 res!999881) b!1472090))

(assert (= (and b!1472090 res!999883) b!1472085))

(assert (= (and b!1472085 res!999887) b!1472091))

(assert (= (and b!1472091 res!999889) b!1472079))

(assert (= (and b!1472079 c!135614) b!1472088))

(assert (= (and b!1472079 (not c!135614)) b!1472092))

(assert (= (and b!1472079 res!999891) b!1472089))

(assert (= (and b!1472089 res!999888) b!1472084))

(assert (= (and b!1472084 res!999882) b!1472082))

(assert (= (and b!1472082 res!999893) b!1472077))

(declare-fun m!1358875 () Bool)

(assert (=> b!1472080 m!1358875))

(assert (=> b!1472080 m!1358875))

(declare-fun m!1358877 () Bool)

(assert (=> b!1472080 m!1358877))

(declare-fun m!1358879 () Bool)

(assert (=> b!1472085 m!1358879))

(assert (=> b!1472085 m!1358879))

(declare-fun m!1358881 () Bool)

(assert (=> b!1472085 m!1358881))

(declare-fun m!1358883 () Bool)

(assert (=> b!1472088 m!1358883))

(declare-fun m!1358885 () Bool)

(assert (=> start!125826 m!1358885))

(declare-fun m!1358887 () Bool)

(assert (=> start!125826 m!1358887))

(assert (=> b!1472090 m!1358879))

(assert (=> b!1472090 m!1358879))

(declare-fun m!1358889 () Bool)

(assert (=> b!1472090 m!1358889))

(assert (=> b!1472090 m!1358889))

(assert (=> b!1472090 m!1358879))

(declare-fun m!1358891 () Bool)

(assert (=> b!1472090 m!1358891))

(declare-fun m!1358893 () Bool)

(assert (=> b!1472091 m!1358893))

(assert (=> b!1472091 m!1358893))

(declare-fun m!1358895 () Bool)

(assert (=> b!1472091 m!1358895))

(declare-fun m!1358897 () Bool)

(assert (=> b!1472091 m!1358897))

(declare-fun m!1358899 () Bool)

(assert (=> b!1472091 m!1358899))

(declare-fun m!1358901 () Bool)

(assert (=> b!1472086 m!1358901))

(assert (=> b!1472083 m!1358897))

(declare-fun m!1358903 () Bool)

(assert (=> b!1472083 m!1358903))

(declare-fun m!1358905 () Bool)

(assert (=> b!1472077 m!1358905))

(assert (=> b!1472077 m!1358879))

(declare-fun m!1358907 () Bool)

(assert (=> b!1472084 m!1358907))

(declare-fun m!1358909 () Bool)

(assert (=> b!1472084 m!1358909))

(declare-fun m!1358911 () Bool)

(assert (=> b!1472092 m!1358911))

(declare-fun m!1358913 () Bool)

(assert (=> b!1472092 m!1358913))

(assert (=> b!1472082 m!1358879))

(assert (=> b!1472082 m!1358879))

(declare-fun m!1358915 () Bool)

(assert (=> b!1472082 m!1358915))

(assert (=> b!1472081 m!1358879))

(assert (=> b!1472081 m!1358879))

(declare-fun m!1358917 () Bool)

(assert (=> b!1472081 m!1358917))

(declare-fun m!1358919 () Bool)

(assert (=> b!1472076 m!1358919))

(check-sat (not b!1472082) (not b!1472084) (not b!1472081) (not b!1472092) (not start!125826) (not b!1472080) (not b!1472085) (not b!1472090) (not b!1472086) (not b!1472091) (not b!1472088) (not b!1472076))
(check-sat)
