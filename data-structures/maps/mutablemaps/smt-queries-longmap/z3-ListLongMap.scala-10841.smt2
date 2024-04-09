; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126936 () Bool)

(assert start!126936)

(declare-fun b!1490864 () Bool)

(declare-fun res!1014197 () Bool)

(declare-fun e!835397 () Bool)

(assert (=> b!1490864 (=> (not res!1014197) (not e!835397))))

(declare-datatypes ((array!99626 0))(
  ( (array!99627 (arr!48080 (Array (_ BitVec 32) (_ BitVec 64))) (size!48631 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99626)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12343 0))(
  ( (MissingZero!12343 (index!51763 (_ BitVec 32))) (Found!12343 (index!51764 (_ BitVec 32))) (Intermediate!12343 (undefined!13155 Bool) (index!51765 (_ BitVec 32)) (x!133354 (_ BitVec 32))) (Undefined!12343) (MissingVacant!12343 (index!51766 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99626 (_ BitVec 32)) SeekEntryResult!12343)

(assert (=> b!1490864 (= res!1014197 (= (seekEntryOrOpen!0 (select (arr!48080 a!2862) j!93) a!2862 mask!2687) (Found!12343 j!93)))))

(declare-fun b!1490865 () Bool)

(declare-fun e!835396 () Bool)

(declare-fun e!835391 () Bool)

(assert (=> b!1490865 (= e!835396 e!835391)))

(declare-fun res!1014207 () Bool)

(assert (=> b!1490865 (=> (not res!1014207) (not e!835391))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1490865 (= res!1014207 (= (select (store (arr!48080 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!650055 () array!99626)

(assert (=> b!1490865 (= lt!650055 (array!99627 (store (arr!48080 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48631 a!2862)))))

(declare-fun b!1490866 () Bool)

(declare-fun res!1014205 () Bool)

(assert (=> b!1490866 (=> (not res!1014205) (not e!835396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490866 (= res!1014205 (validKeyInArray!0 (select (arr!48080 a!2862) j!93)))))

(declare-fun b!1490867 () Bool)

(declare-fun res!1014208 () Bool)

(assert (=> b!1490867 (=> (not res!1014208) (not e!835396))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1490867 (= res!1014208 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48631 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48631 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48631 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!835395 () Bool)

(declare-fun b!1490868 () Bool)

(declare-fun lt!650056 () (_ BitVec 64))

(declare-fun lt!650054 () SeekEntryResult!12343)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99626 (_ BitVec 32)) SeekEntryResult!12343)

(assert (=> b!1490868 (= e!835395 (= lt!650054 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650056 lt!650055 mask!2687)))))

(declare-fun b!1490869 () Bool)

(declare-fun res!1014196 () Bool)

(assert (=> b!1490869 (=> (not res!1014196) (not e!835396))))

(declare-datatypes ((List!34761 0))(
  ( (Nil!34758) (Cons!34757 (h!36140 (_ BitVec 64)) (t!49462 List!34761)) )
))
(declare-fun arrayNoDuplicates!0 (array!99626 (_ BitVec 32) List!34761) Bool)

(assert (=> b!1490869 (= res!1014196 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34758))))

(declare-fun b!1490870 () Bool)

(declare-fun res!1014201 () Bool)

(assert (=> b!1490870 (=> (not res!1014201) (not e!835396))))

(assert (=> b!1490870 (= res!1014201 (and (= (size!48631 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48631 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48631 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490871 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99626 (_ BitVec 32)) SeekEntryResult!12343)

(assert (=> b!1490871 (= e!835395 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650056 lt!650055 mask!2687) (seekEntryOrOpen!0 lt!650056 lt!650055 mask!2687)))))

(declare-fun b!1490872 () Bool)

(declare-fun res!1014198 () Bool)

(assert (=> b!1490872 (=> (not res!1014198) (not e!835396))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99626 (_ BitVec 32)) Bool)

(assert (=> b!1490872 (= res!1014198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1014206 () Bool)

(assert (=> start!126936 (=> (not res!1014206) (not e!835396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126936 (= res!1014206 (validMask!0 mask!2687))))

(assert (=> start!126936 e!835396))

(assert (=> start!126936 true))

(declare-fun array_inv!37025 (array!99626) Bool)

(assert (=> start!126936 (array_inv!37025 a!2862)))

(declare-fun b!1490873 () Bool)

(declare-fun res!1014204 () Bool)

(declare-fun e!835392 () Bool)

(assert (=> b!1490873 (=> (not res!1014204) (not e!835392))))

(assert (=> b!1490873 (= res!1014204 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1490874 () Bool)

(declare-fun res!1014195 () Bool)

(assert (=> b!1490874 (=> (not res!1014195) (not e!835396))))

(assert (=> b!1490874 (= res!1014195 (validKeyInArray!0 (select (arr!48080 a!2862) i!1006)))))

(declare-fun b!1490875 () Bool)

(declare-fun res!1014200 () Bool)

(declare-fun e!835393 () Bool)

(assert (=> b!1490875 (=> (not res!1014200) (not e!835393))))

(declare-fun lt!650051 () SeekEntryResult!12343)

(assert (=> b!1490875 (= res!1014200 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48080 a!2862) j!93) a!2862 mask!2687) lt!650051))))

(declare-fun b!1490876 () Bool)

(assert (=> b!1490876 (= e!835393 e!835392)))

(declare-fun res!1014202 () Bool)

(assert (=> b!1490876 (=> (not res!1014202) (not e!835392))))

(assert (=> b!1490876 (= res!1014202 (= lt!650054 (Intermediate!12343 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490876 (= lt!650054 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650056 mask!2687) lt!650056 lt!650055 mask!2687))))

(assert (=> b!1490876 (= lt!650056 (select (store (arr!48080 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490877 () Bool)

(declare-fun e!835394 () Bool)

(assert (=> b!1490877 (= e!835392 (not e!835394))))

(declare-fun res!1014209 () Bool)

(assert (=> b!1490877 (=> res!1014209 e!835394)))

(assert (=> b!1490877 (= res!1014209 (or (and (= (select (arr!48080 a!2862) index!646) (select (store (arr!48080 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48080 a!2862) index!646) (select (arr!48080 a!2862) j!93))) (= (select (arr!48080 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1490877 e!835397))

(declare-fun res!1014203 () Bool)

(assert (=> b!1490877 (=> (not res!1014203) (not e!835397))))

(assert (=> b!1490877 (= res!1014203 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49974 0))(
  ( (Unit!49975) )
))
(declare-fun lt!650053 () Unit!49974)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99626 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49974)

(assert (=> b!1490877 (= lt!650053 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490878 () Bool)

(assert (=> b!1490878 (= e!835391 e!835393)))

(declare-fun res!1014210 () Bool)

(assert (=> b!1490878 (=> (not res!1014210) (not e!835393))))

(assert (=> b!1490878 (= res!1014210 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48080 a!2862) j!93) mask!2687) (select (arr!48080 a!2862) j!93) a!2862 mask!2687) lt!650051))))

(assert (=> b!1490878 (= lt!650051 (Intermediate!12343 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490879 () Bool)

(assert (=> b!1490879 (= e!835394 true)))

(declare-fun lt!650052 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490879 (= lt!650052 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1490880 () Bool)

(assert (=> b!1490880 (= e!835397 (or (= (select (arr!48080 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48080 a!2862) intermediateBeforeIndex!19) (select (arr!48080 a!2862) j!93))))))

(declare-fun b!1490881 () Bool)

(declare-fun res!1014199 () Bool)

(assert (=> b!1490881 (=> (not res!1014199) (not e!835392))))

(assert (=> b!1490881 (= res!1014199 e!835395)))

(declare-fun c!137864 () Bool)

(assert (=> b!1490881 (= c!137864 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!126936 res!1014206) b!1490870))

(assert (= (and b!1490870 res!1014201) b!1490874))

(assert (= (and b!1490874 res!1014195) b!1490866))

(assert (= (and b!1490866 res!1014205) b!1490872))

(assert (= (and b!1490872 res!1014198) b!1490869))

(assert (= (and b!1490869 res!1014196) b!1490867))

(assert (= (and b!1490867 res!1014208) b!1490865))

(assert (= (and b!1490865 res!1014207) b!1490878))

(assert (= (and b!1490878 res!1014210) b!1490875))

(assert (= (and b!1490875 res!1014200) b!1490876))

(assert (= (and b!1490876 res!1014202) b!1490881))

(assert (= (and b!1490881 c!137864) b!1490868))

(assert (= (and b!1490881 (not c!137864)) b!1490871))

(assert (= (and b!1490881 res!1014199) b!1490873))

(assert (= (and b!1490873 res!1014204) b!1490877))

(assert (= (and b!1490877 res!1014203) b!1490864))

(assert (= (and b!1490864 res!1014197) b!1490880))

(assert (= (and b!1490877 (not res!1014209)) b!1490879))

(declare-fun m!1375063 () Bool)

(assert (=> b!1490865 m!1375063))

(declare-fun m!1375065 () Bool)

(assert (=> b!1490865 m!1375065))

(declare-fun m!1375067 () Bool)

(assert (=> b!1490875 m!1375067))

(assert (=> b!1490875 m!1375067))

(declare-fun m!1375069 () Bool)

(assert (=> b!1490875 m!1375069))

(declare-fun m!1375071 () Bool)

(assert (=> b!1490874 m!1375071))

(assert (=> b!1490874 m!1375071))

(declare-fun m!1375073 () Bool)

(assert (=> b!1490874 m!1375073))

(declare-fun m!1375075 () Bool)

(assert (=> b!1490879 m!1375075))

(declare-fun m!1375077 () Bool)

(assert (=> b!1490880 m!1375077))

(assert (=> b!1490880 m!1375067))

(declare-fun m!1375079 () Bool)

(assert (=> start!126936 m!1375079))

(declare-fun m!1375081 () Bool)

(assert (=> start!126936 m!1375081))

(declare-fun m!1375083 () Bool)

(assert (=> b!1490876 m!1375083))

(assert (=> b!1490876 m!1375083))

(declare-fun m!1375085 () Bool)

(assert (=> b!1490876 m!1375085))

(assert (=> b!1490876 m!1375063))

(declare-fun m!1375087 () Bool)

(assert (=> b!1490876 m!1375087))

(declare-fun m!1375089 () Bool)

(assert (=> b!1490868 m!1375089))

(declare-fun m!1375091 () Bool)

(assert (=> b!1490877 m!1375091))

(assert (=> b!1490877 m!1375063))

(declare-fun m!1375093 () Bool)

(assert (=> b!1490877 m!1375093))

(declare-fun m!1375095 () Bool)

(assert (=> b!1490877 m!1375095))

(declare-fun m!1375097 () Bool)

(assert (=> b!1490877 m!1375097))

(assert (=> b!1490877 m!1375067))

(assert (=> b!1490866 m!1375067))

(assert (=> b!1490866 m!1375067))

(declare-fun m!1375099 () Bool)

(assert (=> b!1490866 m!1375099))

(assert (=> b!1490864 m!1375067))

(assert (=> b!1490864 m!1375067))

(declare-fun m!1375101 () Bool)

(assert (=> b!1490864 m!1375101))

(declare-fun m!1375103 () Bool)

(assert (=> b!1490871 m!1375103))

(declare-fun m!1375105 () Bool)

(assert (=> b!1490871 m!1375105))

(declare-fun m!1375107 () Bool)

(assert (=> b!1490869 m!1375107))

(declare-fun m!1375109 () Bool)

(assert (=> b!1490872 m!1375109))

(assert (=> b!1490878 m!1375067))

(assert (=> b!1490878 m!1375067))

(declare-fun m!1375111 () Bool)

(assert (=> b!1490878 m!1375111))

(assert (=> b!1490878 m!1375111))

(assert (=> b!1490878 m!1375067))

(declare-fun m!1375113 () Bool)

(assert (=> b!1490878 m!1375113))

(check-sat (not b!1490866) (not start!126936) (not b!1490877) (not b!1490878) (not b!1490875) (not b!1490868) (not b!1490869) (not b!1490871) (not b!1490879) (not b!1490864) (not b!1490874) (not b!1490872) (not b!1490876))
(check-sat)
