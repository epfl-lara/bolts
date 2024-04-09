; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125210 () Bool)

(assert start!125210)

(declare-fun b!1459102 () Bool)

(declare-fun res!989210 () Bool)

(declare-fun e!820642 () Bool)

(assert (=> b!1459102 (=> (not res!989210) (not e!820642))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((array!98575 0))(
  ( (array!98576 (arr!47571 (Array (_ BitVec 32) (_ BitVec 64))) (size!48122 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98575)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1459102 (= res!989210 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48122 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48122 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48122 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459103 () Bool)

(declare-fun e!820639 () Bool)

(declare-fun e!820641 () Bool)

(assert (=> b!1459103 (= e!820639 e!820641)))

(declare-fun res!989194 () Bool)

(assert (=> b!1459103 (=> res!989194 e!820641)))

(declare-fun lt!639284 () (_ BitVec 32))

(assert (=> b!1459103 (= res!989194 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639284 #b00000000000000000000000000000000) (bvsge lt!639284 (size!48122 a!2862))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459103 (= lt!639284 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!639283 () array!98575)

(declare-fun lt!639279 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11846 0))(
  ( (MissingZero!11846 (index!49775 (_ BitVec 32))) (Found!11846 (index!49776 (_ BitVec 32))) (Intermediate!11846 (undefined!12658 Bool) (index!49777 (_ BitVec 32)) (x!131386 (_ BitVec 32))) (Undefined!11846) (MissingVacant!11846 (index!49778 (_ BitVec 32))) )
))
(declare-fun lt!639281 () SeekEntryResult!11846)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98575 (_ BitVec 32)) SeekEntryResult!11846)

(assert (=> b!1459103 (= lt!639281 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639279 lt!639283 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98575 (_ BitVec 32)) SeekEntryResult!11846)

(assert (=> b!1459103 (= lt!639281 (seekEntryOrOpen!0 lt!639279 lt!639283 mask!2687))))

(declare-fun b!1459104 () Bool)

(declare-fun e!820643 () Bool)

(declare-fun lt!639286 () SeekEntryResult!11846)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98575 (_ BitVec 32)) SeekEntryResult!11846)

(assert (=> b!1459104 (= e!820643 (= lt!639286 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639279 lt!639283 mask!2687)))))

(declare-fun res!989198 () Bool)

(assert (=> start!125210 (=> (not res!989198) (not e!820642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125210 (= res!989198 (validMask!0 mask!2687))))

(assert (=> start!125210 e!820642))

(assert (=> start!125210 true))

(declare-fun array_inv!36516 (array!98575) Bool)

(assert (=> start!125210 (array_inv!36516 a!2862)))

(declare-fun b!1459105 () Bool)

(declare-fun res!989201 () Bool)

(assert (=> b!1459105 (=> (not res!989201) (not e!820642))))

(declare-datatypes ((List!34252 0))(
  ( (Nil!34249) (Cons!34248 (h!35598 (_ BitVec 64)) (t!48953 List!34252)) )
))
(declare-fun arrayNoDuplicates!0 (array!98575 (_ BitVec 32) List!34252) Bool)

(assert (=> b!1459105 (= res!989201 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34249))))

(declare-fun b!1459106 () Bool)

(declare-fun res!989205 () Bool)

(declare-fun e!820640 () Bool)

(assert (=> b!1459106 (=> (not res!989205) (not e!820640))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!639282 () SeekEntryResult!11846)

(assert (=> b!1459106 (= res!989205 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47571 a!2862) j!93) a!2862 mask!2687) lt!639282))))

(declare-fun b!1459107 () Bool)

(declare-fun res!989196 () Bool)

(assert (=> b!1459107 (=> res!989196 e!820641)))

(declare-fun e!820646 () Bool)

(assert (=> b!1459107 (= res!989196 e!820646)))

(declare-fun c!134467 () Bool)

(assert (=> b!1459107 (= c!134467 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459108 () Bool)

(declare-fun res!989203 () Bool)

(assert (=> b!1459108 (=> res!989203 e!820641)))

(assert (=> b!1459108 (= res!989203 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639284 (select (arr!47571 a!2862) j!93) a!2862 mask!2687) lt!639282)))))

(declare-fun b!1459109 () Bool)

(declare-fun res!989202 () Bool)

(assert (=> b!1459109 (=> (not res!989202) (not e!820642))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1459109 (= res!989202 (and (= (size!48122 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48122 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48122 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1459110 () Bool)

(assert (=> b!1459110 (= e!820646 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639284 intermediateAfterIndex!19 lt!639279 lt!639283 mask!2687) lt!639281)))))

(declare-fun b!1459111 () Bool)

(declare-fun e!820645 () Bool)

(assert (=> b!1459111 (= e!820642 e!820645)))

(declare-fun res!989207 () Bool)

(assert (=> b!1459111 (=> (not res!989207) (not e!820645))))

(assert (=> b!1459111 (= res!989207 (= (select (store (arr!47571 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1459111 (= lt!639283 (array!98576 (store (arr!47571 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48122 a!2862)))))

(declare-fun b!1459112 () Bool)

(declare-fun e!820638 () Bool)

(assert (=> b!1459112 (= e!820640 e!820638)))

(declare-fun res!989199 () Bool)

(assert (=> b!1459112 (=> (not res!989199) (not e!820638))))

(assert (=> b!1459112 (= res!989199 (= lt!639286 (Intermediate!11846 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459112 (= lt!639286 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639279 mask!2687) lt!639279 lt!639283 mask!2687))))

(assert (=> b!1459112 (= lt!639279 (select (store (arr!47571 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1459113 () Bool)

(assert (=> b!1459113 (= e!820641 true)))

(declare-fun lt!639285 () SeekEntryResult!11846)

(assert (=> b!1459113 (= lt!639285 lt!639281)))

(declare-datatypes ((Unit!49136 0))(
  ( (Unit!49137) )
))
(declare-fun lt!639278 () Unit!49136)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98575 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49136)

(assert (=> b!1459113 (= lt!639278 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639284 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1459114 () Bool)

(declare-fun res!989211 () Bool)

(assert (=> b!1459114 (=> (not res!989211) (not e!820642))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459114 (= res!989211 (validKeyInArray!0 (select (arr!47571 a!2862) i!1006)))))

(declare-fun b!1459115 () Bool)

(assert (=> b!1459115 (= e!820643 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639279 lt!639283 mask!2687) (seekEntryOrOpen!0 lt!639279 lt!639283 mask!2687)))))

(declare-fun b!1459116 () Bool)

(declare-fun res!989200 () Bool)

(assert (=> b!1459116 (=> (not res!989200) (not e!820642))))

(assert (=> b!1459116 (= res!989200 (validKeyInArray!0 (select (arr!47571 a!2862) j!93)))))

(declare-fun b!1459117 () Bool)

(declare-fun res!989197 () Bool)

(assert (=> b!1459117 (=> res!989197 e!820641)))

(assert (=> b!1459117 (= res!989197 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1459118 () Bool)

(declare-fun res!989209 () Bool)

(assert (=> b!1459118 (=> (not res!989209) (not e!820638))))

(assert (=> b!1459118 (= res!989209 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1459119 () Bool)

(assert (=> b!1459119 (= e!820646 (not (= lt!639286 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639284 lt!639279 lt!639283 mask!2687))))))

(declare-fun b!1459120 () Bool)

(assert (=> b!1459120 (= e!820645 e!820640)))

(declare-fun res!989206 () Bool)

(assert (=> b!1459120 (=> (not res!989206) (not e!820640))))

(assert (=> b!1459120 (= res!989206 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47571 a!2862) j!93) mask!2687) (select (arr!47571 a!2862) j!93) a!2862 mask!2687) lt!639282))))

(assert (=> b!1459120 (= lt!639282 (Intermediate!11846 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1459121 () Bool)

(assert (=> b!1459121 (= e!820638 (not e!820639))))

(declare-fun res!989208 () Bool)

(assert (=> b!1459121 (=> res!989208 e!820639)))

(assert (=> b!1459121 (= res!989208 (or (and (= (select (arr!47571 a!2862) index!646) (select (store (arr!47571 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47571 a!2862) index!646) (select (arr!47571 a!2862) j!93))) (= (select (arr!47571 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1459121 (and (= lt!639285 (Found!11846 j!93)) (or (= (select (arr!47571 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47571 a!2862) intermediateBeforeIndex!19) (select (arr!47571 a!2862) j!93))) (let ((bdg!53485 (select (store (arr!47571 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47571 a!2862) index!646) bdg!53485) (= (select (arr!47571 a!2862) index!646) (select (arr!47571 a!2862) j!93))) (= (select (arr!47571 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53485 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1459121 (= lt!639285 (seekEntryOrOpen!0 (select (arr!47571 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98575 (_ BitVec 32)) Bool)

(assert (=> b!1459121 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!639280 () Unit!49136)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98575 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49136)

(assert (=> b!1459121 (= lt!639280 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459122 () Bool)

(declare-fun res!989195 () Bool)

(assert (=> b!1459122 (=> (not res!989195) (not e!820642))))

(assert (=> b!1459122 (= res!989195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1459123 () Bool)

(declare-fun res!989204 () Bool)

(assert (=> b!1459123 (=> (not res!989204) (not e!820638))))

(assert (=> b!1459123 (= res!989204 e!820643)))

(declare-fun c!134468 () Bool)

(assert (=> b!1459123 (= c!134468 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!125210 res!989198) b!1459109))

(assert (= (and b!1459109 res!989202) b!1459114))

(assert (= (and b!1459114 res!989211) b!1459116))

(assert (= (and b!1459116 res!989200) b!1459122))

(assert (= (and b!1459122 res!989195) b!1459105))

(assert (= (and b!1459105 res!989201) b!1459102))

(assert (= (and b!1459102 res!989210) b!1459111))

(assert (= (and b!1459111 res!989207) b!1459120))

(assert (= (and b!1459120 res!989206) b!1459106))

(assert (= (and b!1459106 res!989205) b!1459112))

(assert (= (and b!1459112 res!989199) b!1459123))

(assert (= (and b!1459123 c!134468) b!1459104))

(assert (= (and b!1459123 (not c!134468)) b!1459115))

(assert (= (and b!1459123 res!989204) b!1459118))

(assert (= (and b!1459118 res!989209) b!1459121))

(assert (= (and b!1459121 (not res!989208)) b!1459103))

(assert (= (and b!1459103 (not res!989194)) b!1459108))

(assert (= (and b!1459108 (not res!989203)) b!1459107))

(assert (= (and b!1459107 c!134467) b!1459119))

(assert (= (and b!1459107 (not c!134467)) b!1459110))

(assert (= (and b!1459107 (not res!989196)) b!1459117))

(assert (= (and b!1459117 (not res!989197)) b!1459113))

(declare-fun m!1346943 () Bool)

(assert (=> b!1459106 m!1346943))

(assert (=> b!1459106 m!1346943))

(declare-fun m!1346945 () Bool)

(assert (=> b!1459106 m!1346945))

(declare-fun m!1346947 () Bool)

(assert (=> b!1459105 m!1346947))

(declare-fun m!1346949 () Bool)

(assert (=> b!1459115 m!1346949))

(declare-fun m!1346951 () Bool)

(assert (=> b!1459115 m!1346951))

(declare-fun m!1346953 () Bool)

(assert (=> b!1459111 m!1346953))

(declare-fun m!1346955 () Bool)

(assert (=> b!1459111 m!1346955))

(declare-fun m!1346957 () Bool)

(assert (=> b!1459121 m!1346957))

(assert (=> b!1459121 m!1346953))

(declare-fun m!1346959 () Bool)

(assert (=> b!1459121 m!1346959))

(declare-fun m!1346961 () Bool)

(assert (=> b!1459121 m!1346961))

(declare-fun m!1346963 () Bool)

(assert (=> b!1459121 m!1346963))

(assert (=> b!1459121 m!1346943))

(declare-fun m!1346965 () Bool)

(assert (=> b!1459121 m!1346965))

(declare-fun m!1346967 () Bool)

(assert (=> b!1459121 m!1346967))

(assert (=> b!1459121 m!1346943))

(declare-fun m!1346969 () Bool)

(assert (=> b!1459110 m!1346969))

(declare-fun m!1346971 () Bool)

(assert (=> b!1459113 m!1346971))

(declare-fun m!1346973 () Bool)

(assert (=> b!1459103 m!1346973))

(assert (=> b!1459103 m!1346949))

(assert (=> b!1459103 m!1346951))

(declare-fun m!1346975 () Bool)

(assert (=> b!1459114 m!1346975))

(assert (=> b!1459114 m!1346975))

(declare-fun m!1346977 () Bool)

(assert (=> b!1459114 m!1346977))

(assert (=> b!1459116 m!1346943))

(assert (=> b!1459116 m!1346943))

(declare-fun m!1346979 () Bool)

(assert (=> b!1459116 m!1346979))

(assert (=> b!1459120 m!1346943))

(assert (=> b!1459120 m!1346943))

(declare-fun m!1346981 () Bool)

(assert (=> b!1459120 m!1346981))

(assert (=> b!1459120 m!1346981))

(assert (=> b!1459120 m!1346943))

(declare-fun m!1346983 () Bool)

(assert (=> b!1459120 m!1346983))

(assert (=> b!1459108 m!1346943))

(assert (=> b!1459108 m!1346943))

(declare-fun m!1346985 () Bool)

(assert (=> b!1459108 m!1346985))

(declare-fun m!1346987 () Bool)

(assert (=> b!1459122 m!1346987))

(declare-fun m!1346989 () Bool)

(assert (=> start!125210 m!1346989))

(declare-fun m!1346991 () Bool)

(assert (=> start!125210 m!1346991))

(declare-fun m!1346993 () Bool)

(assert (=> b!1459119 m!1346993))

(declare-fun m!1346995 () Bool)

(assert (=> b!1459112 m!1346995))

(assert (=> b!1459112 m!1346995))

(declare-fun m!1346997 () Bool)

(assert (=> b!1459112 m!1346997))

(assert (=> b!1459112 m!1346953))

(declare-fun m!1346999 () Bool)

(assert (=> b!1459112 m!1346999))

(declare-fun m!1347001 () Bool)

(assert (=> b!1459104 m!1347001))

(push 1)

