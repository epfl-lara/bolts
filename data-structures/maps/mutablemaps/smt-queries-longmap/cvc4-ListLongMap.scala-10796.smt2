; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126410 () Bool)

(assert start!126410)

(declare-fun b!1481124 () Bool)

(declare-fun res!1006597 () Bool)

(declare-fun e!830763 () Bool)

(assert (=> b!1481124 (=> (not res!1006597) (not e!830763))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1481124 (= res!1006597 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481125 () Bool)

(declare-fun res!1006586 () Bool)

(declare-fun e!830764 () Bool)

(assert (=> b!1481125 (=> (not res!1006586) (not e!830764))))

(declare-datatypes ((array!99346 0))(
  ( (array!99347 (arr!47946 (Array (_ BitVec 32) (_ BitVec 64))) (size!48497 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99346)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99346 (_ BitVec 32)) Bool)

(assert (=> b!1481125 (= res!1006586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481126 () Bool)

(declare-fun res!1006587 () Bool)

(assert (=> b!1481126 (=> (not res!1006587) (not e!830764))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1481126 (= res!1006587 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48497 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48497 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48497 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481127 () Bool)

(declare-fun res!1006588 () Bool)

(assert (=> b!1481127 (=> (not res!1006588) (not e!830764))))

(declare-datatypes ((List!34627 0))(
  ( (Nil!34624) (Cons!34623 (h!35994 (_ BitVec 64)) (t!49328 List!34627)) )
))
(declare-fun arrayNoDuplicates!0 (array!99346 (_ BitVec 32) List!34627) Bool)

(assert (=> b!1481127 (= res!1006588 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34624))))

(declare-fun b!1481128 () Bool)

(declare-fun e!830767 () Bool)

(assert (=> b!1481128 (= e!830767 e!830763)))

(declare-fun res!1006590 () Bool)

(assert (=> b!1481128 (=> (not res!1006590) (not e!830763))))

(declare-datatypes ((SeekEntryResult!12209 0))(
  ( (MissingZero!12209 (index!51227 (_ BitVec 32))) (Found!12209 (index!51228 (_ BitVec 32))) (Intermediate!12209 (undefined!13021 Bool) (index!51229 (_ BitVec 32)) (x!132815 (_ BitVec 32))) (Undefined!12209) (MissingVacant!12209 (index!51230 (_ BitVec 32))) )
))
(declare-fun lt!646650 () SeekEntryResult!12209)

(assert (=> b!1481128 (= res!1006590 (= lt!646650 (Intermediate!12209 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!646651 () array!99346)

(declare-fun lt!646649 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99346 (_ BitVec 32)) SeekEntryResult!12209)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481128 (= lt!646650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646649 mask!2687) lt!646649 lt!646651 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1481128 (= lt!646649 (select (store (arr!47946 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481129 () Bool)

(declare-fun res!1006591 () Bool)

(assert (=> b!1481129 (=> (not res!1006591) (not e!830763))))

(declare-fun e!830768 () Bool)

(assert (=> b!1481129 (= res!1006591 e!830768)))

(declare-fun c!136793 () Bool)

(assert (=> b!1481129 (= c!136793 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1006593 () Bool)

(assert (=> start!126410 (=> (not res!1006593) (not e!830764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126410 (= res!1006593 (validMask!0 mask!2687))))

(assert (=> start!126410 e!830764))

(assert (=> start!126410 true))

(declare-fun array_inv!36891 (array!99346) Bool)

(assert (=> start!126410 (array_inv!36891 a!2862)))

(declare-fun b!1481130 () Bool)

(declare-fun e!830762 () Bool)

(assert (=> b!1481130 (= e!830762 e!830767)))

(declare-fun res!1006594 () Bool)

(assert (=> b!1481130 (=> (not res!1006594) (not e!830767))))

(declare-fun lt!646648 () SeekEntryResult!12209)

(assert (=> b!1481130 (= res!1006594 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47946 a!2862) j!93) mask!2687) (select (arr!47946 a!2862) j!93) a!2862 mask!2687) lt!646648))))

(assert (=> b!1481130 (= lt!646648 (Intermediate!12209 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481131 () Bool)

(declare-fun res!1006595 () Bool)

(assert (=> b!1481131 (=> (not res!1006595) (not e!830767))))

(assert (=> b!1481131 (= res!1006595 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47946 a!2862) j!93) a!2862 mask!2687) lt!646648))))

(declare-fun b!1481132 () Bool)

(declare-fun res!1006585 () Bool)

(assert (=> b!1481132 (=> (not res!1006585) (not e!830764))))

(assert (=> b!1481132 (= res!1006585 (and (= (size!48497 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48497 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48497 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481133 () Bool)

(assert (=> b!1481133 (= e!830764 e!830762)))

(declare-fun res!1006592 () Bool)

(assert (=> b!1481133 (=> (not res!1006592) (not e!830762))))

(assert (=> b!1481133 (= res!1006592 (= (select (store (arr!47946 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481133 (= lt!646651 (array!99347 (store (arr!47946 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48497 a!2862)))))

(declare-fun b!1481134 () Bool)

(declare-fun res!1006598 () Bool)

(assert (=> b!1481134 (=> (not res!1006598) (not e!830764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481134 (= res!1006598 (validKeyInArray!0 (select (arr!47946 a!2862) j!93)))))

(declare-fun b!1481135 () Bool)

(assert (=> b!1481135 (= e!830763 (not true))))

(declare-fun e!830766 () Bool)

(assert (=> b!1481135 e!830766))

(declare-fun res!1006599 () Bool)

(assert (=> b!1481135 (=> (not res!1006599) (not e!830766))))

(assert (=> b!1481135 (= res!1006599 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49706 0))(
  ( (Unit!49707) )
))
(declare-fun lt!646647 () Unit!49706)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99346 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49706)

(assert (=> b!1481135 (= lt!646647 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481136 () Bool)

(declare-fun res!1006589 () Bool)

(assert (=> b!1481136 (=> (not res!1006589) (not e!830764))))

(assert (=> b!1481136 (= res!1006589 (validKeyInArray!0 (select (arr!47946 a!2862) i!1006)))))

(declare-fun b!1481137 () Bool)

(assert (=> b!1481137 (= e!830766 (and (or (= (select (arr!47946 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47946 a!2862) intermediateBeforeIndex!19) (select (arr!47946 a!2862) j!93))) (or (and (= (select (arr!47946 a!2862) index!646) (select (store (arr!47946 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47946 a!2862) index!646) (select (arr!47946 a!2862) j!93))) (= (select (arr!47946 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= index!646 intermediateAfterIndex!19))))))

(declare-fun b!1481138 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99346 (_ BitVec 32)) SeekEntryResult!12209)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99346 (_ BitVec 32)) SeekEntryResult!12209)

(assert (=> b!1481138 (= e!830768 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646649 lt!646651 mask!2687) (seekEntryOrOpen!0 lt!646649 lt!646651 mask!2687)))))

(declare-fun b!1481139 () Bool)

(declare-fun res!1006596 () Bool)

(assert (=> b!1481139 (=> (not res!1006596) (not e!830766))))

(assert (=> b!1481139 (= res!1006596 (= (seekEntryOrOpen!0 (select (arr!47946 a!2862) j!93) a!2862 mask!2687) (Found!12209 j!93)))))

(declare-fun b!1481140 () Bool)

(assert (=> b!1481140 (= e!830768 (= lt!646650 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646649 lt!646651 mask!2687)))))

(assert (= (and start!126410 res!1006593) b!1481132))

(assert (= (and b!1481132 res!1006585) b!1481136))

(assert (= (and b!1481136 res!1006589) b!1481134))

(assert (= (and b!1481134 res!1006598) b!1481125))

(assert (= (and b!1481125 res!1006586) b!1481127))

(assert (= (and b!1481127 res!1006588) b!1481126))

(assert (= (and b!1481126 res!1006587) b!1481133))

(assert (= (and b!1481133 res!1006592) b!1481130))

(assert (= (and b!1481130 res!1006594) b!1481131))

(assert (= (and b!1481131 res!1006595) b!1481128))

(assert (= (and b!1481128 res!1006590) b!1481129))

(assert (= (and b!1481129 c!136793) b!1481140))

(assert (= (and b!1481129 (not c!136793)) b!1481138))

(assert (= (and b!1481129 res!1006591) b!1481124))

(assert (= (and b!1481124 res!1006597) b!1481135))

(assert (= (and b!1481135 res!1006599) b!1481139))

(assert (= (and b!1481139 res!1006596) b!1481137))

(declare-fun m!1366927 () Bool)

(assert (=> start!126410 m!1366927))

(declare-fun m!1366929 () Bool)

(assert (=> start!126410 m!1366929))

(declare-fun m!1366931 () Bool)

(assert (=> b!1481138 m!1366931))

(declare-fun m!1366933 () Bool)

(assert (=> b!1481138 m!1366933))

(declare-fun m!1366935 () Bool)

(assert (=> b!1481125 m!1366935))

(declare-fun m!1366937 () Bool)

(assert (=> b!1481139 m!1366937))

(assert (=> b!1481139 m!1366937))

(declare-fun m!1366939 () Bool)

(assert (=> b!1481139 m!1366939))

(declare-fun m!1366941 () Bool)

(assert (=> b!1481137 m!1366941))

(declare-fun m!1366943 () Bool)

(assert (=> b!1481137 m!1366943))

(declare-fun m!1366945 () Bool)

(assert (=> b!1481137 m!1366945))

(declare-fun m!1366947 () Bool)

(assert (=> b!1481137 m!1366947))

(assert (=> b!1481137 m!1366937))

(assert (=> b!1481130 m!1366937))

(assert (=> b!1481130 m!1366937))

(declare-fun m!1366949 () Bool)

(assert (=> b!1481130 m!1366949))

(assert (=> b!1481130 m!1366949))

(assert (=> b!1481130 m!1366937))

(declare-fun m!1366951 () Bool)

(assert (=> b!1481130 m!1366951))

(assert (=> b!1481131 m!1366937))

(assert (=> b!1481131 m!1366937))

(declare-fun m!1366953 () Bool)

(assert (=> b!1481131 m!1366953))

(declare-fun m!1366955 () Bool)

(assert (=> b!1481135 m!1366955))

(declare-fun m!1366957 () Bool)

(assert (=> b!1481135 m!1366957))

(assert (=> b!1481133 m!1366941))

(declare-fun m!1366959 () Bool)

(assert (=> b!1481133 m!1366959))

(declare-fun m!1366961 () Bool)

(assert (=> b!1481136 m!1366961))

(assert (=> b!1481136 m!1366961))

(declare-fun m!1366963 () Bool)

(assert (=> b!1481136 m!1366963))

(assert (=> b!1481134 m!1366937))

(assert (=> b!1481134 m!1366937))

(declare-fun m!1366965 () Bool)

(assert (=> b!1481134 m!1366965))

(declare-fun m!1366967 () Bool)

(assert (=> b!1481127 m!1366967))

(declare-fun m!1366969 () Bool)

(assert (=> b!1481128 m!1366969))

(assert (=> b!1481128 m!1366969))

(declare-fun m!1366971 () Bool)

(assert (=> b!1481128 m!1366971))

(assert (=> b!1481128 m!1366941))

(declare-fun m!1366973 () Bool)

(assert (=> b!1481128 m!1366973))

(declare-fun m!1366975 () Bool)

(assert (=> b!1481140 m!1366975))

(push 1)

