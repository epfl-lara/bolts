; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124652 () Bool)

(assert start!124652)

(declare-fun b!1442862 () Bool)

(declare-fun res!975143 () Bool)

(declare-fun e!813172 () Bool)

(assert (=> b!1442862 (=> (not res!975143) (not e!813172))))

(declare-datatypes ((array!98017 0))(
  ( (array!98018 (arr!47292 (Array (_ BitVec 32) (_ BitVec 64))) (size!47843 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98017)

(declare-datatypes ((List!33973 0))(
  ( (Nil!33970) (Cons!33969 (h!35319 (_ BitVec 64)) (t!48674 List!33973)) )
))
(declare-fun arrayNoDuplicates!0 (array!98017 (_ BitVec 32) List!33973) Bool)

(assert (=> b!1442862 (= res!975143 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33970))))

(declare-fun b!1442863 () Bool)

(declare-fun res!975134 () Bool)

(assert (=> b!1442863 (=> (not res!975134) (not e!813172))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1442863 (= res!975134 (and (= (size!47843 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47843 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47843 a!2862)) (not (= i!1006 j!93))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1442864 () Bool)

(declare-fun e!813175 () Bool)

(assert (=> b!1442864 (= e!813175 (or (= (select (arr!47292 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47292 a!2862) intermediateBeforeIndex!19) (select (arr!47292 a!2862) j!93))))))

(declare-fun b!1442865 () Bool)

(declare-fun res!975133 () Bool)

(assert (=> b!1442865 (=> (not res!975133) (not e!813172))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1442865 (= res!975133 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47843 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47843 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47843 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442867 () Bool)

(declare-fun e!813174 () Bool)

(assert (=> b!1442867 (= e!813174 (not (or (not (= (select (arr!47292 a!2862) index!646) (select (store (arr!47292 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47292 a!2862) index!646) (select (arr!47292 a!2862) j!93))) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1442867 e!813175))

(declare-fun res!975144 () Bool)

(assert (=> b!1442867 (=> (not res!975144) (not e!813175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98017 (_ BitVec 32)) Bool)

(assert (=> b!1442867 (= res!975144 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48578 0))(
  ( (Unit!48579) )
))
(declare-fun lt!633648 () Unit!48578)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98017 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48578)

(assert (=> b!1442867 (= lt!633648 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442868 () Bool)

(declare-fun e!813171 () Bool)

(declare-fun e!813170 () Bool)

(assert (=> b!1442868 (= e!813171 e!813170)))

(declare-fun res!975136 () Bool)

(assert (=> b!1442868 (=> (not res!975136) (not e!813170))))

(declare-datatypes ((SeekEntryResult!11567 0))(
  ( (MissingZero!11567 (index!48659 (_ BitVec 32))) (Found!11567 (index!48660 (_ BitVec 32))) (Intermediate!11567 (undefined!12379 Bool) (index!48661 (_ BitVec 32)) (x!130363 (_ BitVec 32))) (Undefined!11567) (MissingVacant!11567 (index!48662 (_ BitVec 32))) )
))
(declare-fun lt!633650 () SeekEntryResult!11567)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98017 (_ BitVec 32)) SeekEntryResult!11567)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442868 (= res!975136 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47292 a!2862) j!93) mask!2687) (select (arr!47292 a!2862) j!93) a!2862 mask!2687) lt!633650))))

(assert (=> b!1442868 (= lt!633650 (Intermediate!11567 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442869 () Bool)

(declare-fun res!975140 () Bool)

(assert (=> b!1442869 (=> (not res!975140) (not e!813174))))

(declare-fun e!813176 () Bool)

(assert (=> b!1442869 (= res!975140 e!813176)))

(declare-fun c!133379 () Bool)

(assert (=> b!1442869 (= c!133379 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442870 () Bool)

(declare-fun res!975130 () Bool)

(assert (=> b!1442870 (=> (not res!975130) (not e!813174))))

(assert (=> b!1442870 (= res!975130 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442871 () Bool)

(declare-fun res!975135 () Bool)

(assert (=> b!1442871 (=> (not res!975135) (not e!813172))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442871 (= res!975135 (validKeyInArray!0 (select (arr!47292 a!2862) j!93)))))

(declare-fun b!1442872 () Bool)

(declare-fun res!975131 () Bool)

(assert (=> b!1442872 (=> (not res!975131) (not e!813175))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98017 (_ BitVec 32)) SeekEntryResult!11567)

(assert (=> b!1442872 (= res!975131 (= (seekEntryOrOpen!0 (select (arr!47292 a!2862) j!93) a!2862 mask!2687) (Found!11567 j!93)))))

(declare-fun b!1442873 () Bool)

(declare-fun lt!633651 () array!98017)

(declare-fun lt!633652 () (_ BitVec 64))

(declare-fun lt!633649 () SeekEntryResult!11567)

(assert (=> b!1442873 (= e!813176 (= lt!633649 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633652 lt!633651 mask!2687)))))

(declare-fun b!1442874 () Bool)

(declare-fun res!975142 () Bool)

(assert (=> b!1442874 (=> (not res!975142) (not e!813172))))

(assert (=> b!1442874 (= res!975142 (validKeyInArray!0 (select (arr!47292 a!2862) i!1006)))))

(declare-fun b!1442875 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98017 (_ BitVec 32)) SeekEntryResult!11567)

(assert (=> b!1442875 (= e!813176 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633652 lt!633651 mask!2687) (seekEntryOrOpen!0 lt!633652 lt!633651 mask!2687)))))

(declare-fun b!1442876 () Bool)

(declare-fun res!975137 () Bool)

(assert (=> b!1442876 (=> (not res!975137) (not e!813172))))

(assert (=> b!1442876 (= res!975137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442866 () Bool)

(assert (=> b!1442866 (= e!813172 e!813171)))

(declare-fun res!975141 () Bool)

(assert (=> b!1442866 (=> (not res!975141) (not e!813171))))

(assert (=> b!1442866 (= res!975141 (= (select (store (arr!47292 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1442866 (= lt!633651 (array!98018 (store (arr!47292 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47843 a!2862)))))

(declare-fun res!975138 () Bool)

(assert (=> start!124652 (=> (not res!975138) (not e!813172))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124652 (= res!975138 (validMask!0 mask!2687))))

(assert (=> start!124652 e!813172))

(assert (=> start!124652 true))

(declare-fun array_inv!36237 (array!98017) Bool)

(assert (=> start!124652 (array_inv!36237 a!2862)))

(declare-fun b!1442877 () Bool)

(assert (=> b!1442877 (= e!813170 e!813174)))

(declare-fun res!975139 () Bool)

(assert (=> b!1442877 (=> (not res!975139) (not e!813174))))

(assert (=> b!1442877 (= res!975139 (= lt!633649 (Intermediate!11567 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1442877 (= lt!633649 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633652 mask!2687) lt!633652 lt!633651 mask!2687))))

(assert (=> b!1442877 (= lt!633652 (select (store (arr!47292 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442878 () Bool)

(declare-fun res!975132 () Bool)

(assert (=> b!1442878 (=> (not res!975132) (not e!813170))))

(assert (=> b!1442878 (= res!975132 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47292 a!2862) j!93) a!2862 mask!2687) lt!633650))))

(assert (= (and start!124652 res!975138) b!1442863))

(assert (= (and b!1442863 res!975134) b!1442874))

(assert (= (and b!1442874 res!975142) b!1442871))

(assert (= (and b!1442871 res!975135) b!1442876))

(assert (= (and b!1442876 res!975137) b!1442862))

(assert (= (and b!1442862 res!975143) b!1442865))

(assert (= (and b!1442865 res!975133) b!1442866))

(assert (= (and b!1442866 res!975141) b!1442868))

(assert (= (and b!1442868 res!975136) b!1442878))

(assert (= (and b!1442878 res!975132) b!1442877))

(assert (= (and b!1442877 res!975139) b!1442869))

(assert (= (and b!1442869 c!133379) b!1442873))

(assert (= (and b!1442869 (not c!133379)) b!1442875))

(assert (= (and b!1442869 res!975140) b!1442870))

(assert (= (and b!1442870 res!975130) b!1442867))

(assert (= (and b!1442867 res!975144) b!1442872))

(assert (= (and b!1442872 res!975131) b!1442864))

(declare-fun m!1332031 () Bool)

(assert (=> b!1442868 m!1332031))

(assert (=> b!1442868 m!1332031))

(declare-fun m!1332033 () Bool)

(assert (=> b!1442868 m!1332033))

(assert (=> b!1442868 m!1332033))

(assert (=> b!1442868 m!1332031))

(declare-fun m!1332035 () Bool)

(assert (=> b!1442868 m!1332035))

(declare-fun m!1332037 () Bool)

(assert (=> b!1442867 m!1332037))

(declare-fun m!1332039 () Bool)

(assert (=> b!1442867 m!1332039))

(declare-fun m!1332041 () Bool)

(assert (=> b!1442867 m!1332041))

(declare-fun m!1332043 () Bool)

(assert (=> b!1442867 m!1332043))

(declare-fun m!1332045 () Bool)

(assert (=> b!1442867 m!1332045))

(assert (=> b!1442867 m!1332031))

(declare-fun m!1332047 () Bool)

(assert (=> b!1442875 m!1332047))

(declare-fun m!1332049 () Bool)

(assert (=> b!1442875 m!1332049))

(declare-fun m!1332051 () Bool)

(assert (=> b!1442877 m!1332051))

(assert (=> b!1442877 m!1332051))

(declare-fun m!1332053 () Bool)

(assert (=> b!1442877 m!1332053))

(assert (=> b!1442877 m!1332039))

(declare-fun m!1332055 () Bool)

(assert (=> b!1442877 m!1332055))

(assert (=> b!1442866 m!1332039))

(declare-fun m!1332057 () Bool)

(assert (=> b!1442866 m!1332057))

(declare-fun m!1332059 () Bool)

(assert (=> b!1442874 m!1332059))

(assert (=> b!1442874 m!1332059))

(declare-fun m!1332061 () Bool)

(assert (=> b!1442874 m!1332061))

(assert (=> b!1442878 m!1332031))

(assert (=> b!1442878 m!1332031))

(declare-fun m!1332063 () Bool)

(assert (=> b!1442878 m!1332063))

(declare-fun m!1332065 () Bool)

(assert (=> b!1442873 m!1332065))

(assert (=> b!1442872 m!1332031))

(assert (=> b!1442872 m!1332031))

(declare-fun m!1332067 () Bool)

(assert (=> b!1442872 m!1332067))

(declare-fun m!1332069 () Bool)

(assert (=> start!124652 m!1332069))

(declare-fun m!1332071 () Bool)

(assert (=> start!124652 m!1332071))

(declare-fun m!1332073 () Bool)

(assert (=> b!1442876 m!1332073))

(assert (=> b!1442871 m!1332031))

(assert (=> b!1442871 m!1332031))

(declare-fun m!1332075 () Bool)

(assert (=> b!1442871 m!1332075))

(declare-fun m!1332077 () Bool)

(assert (=> b!1442864 m!1332077))

(assert (=> b!1442864 m!1332031))

(declare-fun m!1332079 () Bool)

(assert (=> b!1442862 m!1332079))

(push 1)

(assert (not b!1442876))

(assert (not b!1442871))

(assert (not b!1442868))

(assert (not start!124652))

(assert (not b!1442862))

(assert (not b!1442874))

