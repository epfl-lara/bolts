; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125248 () Bool)

(assert start!125248)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!639750 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!821138 () Bool)

(declare-fun b!1460310 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!98613 0))(
  ( (array!98614 (arr!47590 (Array (_ BitVec 32) (_ BitVec 64))) (size!48141 (_ BitVec 32))) )
))
(declare-fun lt!639751 () array!98613)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11865 0))(
  ( (MissingZero!11865 (index!49851 (_ BitVec 32))) (Found!11865 (index!49852 (_ BitVec 32))) (Intermediate!11865 (undefined!12677 Bool) (index!49853 (_ BitVec 32)) (x!131461 (_ BitVec 32))) (Undefined!11865) (MissingVacant!11865 (index!49854 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98613 (_ BitVec 32)) SeekEntryResult!11865)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98613 (_ BitVec 32)) SeekEntryResult!11865)

(assert (=> b!1460310 (= e!821138 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639750 lt!639751 mask!2687) (seekEntryOrOpen!0 lt!639750 lt!639751 mask!2687)))))

(declare-fun res!990199 () Bool)

(declare-fun e!821142 () Bool)

(assert (=> start!125248 (=> (not res!990199) (not e!821142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125248 (= res!990199 (validMask!0 mask!2687))))

(assert (=> start!125248 e!821142))

(assert (=> start!125248 true))

(declare-fun a!2862 () array!98613)

(declare-fun array_inv!36535 (array!98613) Bool)

(assert (=> start!125248 (array_inv!36535 a!2862)))

(declare-fun b!1460311 () Bool)

(declare-fun res!990202 () Bool)

(assert (=> b!1460311 (=> (not res!990202) (not e!821142))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1460311 (= res!990202 (and (= (size!48141 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48141 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48141 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1460312 () Bool)

(declare-fun e!821140 () Bool)

(declare-fun e!821139 () Bool)

(assert (=> b!1460312 (= e!821140 e!821139)))

(declare-fun res!990204 () Bool)

(assert (=> b!1460312 (=> (not res!990204) (not e!821139))))

(declare-fun lt!639747 () SeekEntryResult!11865)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1460312 (= res!990204 (= lt!639747 (Intermediate!11865 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98613 (_ BitVec 32)) SeekEntryResult!11865)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460312 (= lt!639747 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639750 mask!2687) lt!639750 lt!639751 mask!2687))))

(assert (=> b!1460312 (= lt!639750 (select (store (arr!47590 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1460313 () Bool)

(declare-fun res!990197 () Bool)

(assert (=> b!1460313 (=> (not res!990197) (not e!821140))))

(declare-fun lt!639748 () SeekEntryResult!11865)

(assert (=> b!1460313 (= res!990197 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47590 a!2862) j!93) a!2862 mask!2687) lt!639748))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1460314 () Bool)

(declare-fun e!821144 () Bool)

(assert (=> b!1460314 (= e!821144 (or (= (select (arr!47590 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47590 a!2862) intermediateBeforeIndex!19) (select (arr!47590 a!2862) j!93))))))

(declare-fun b!1460315 () Bool)

(declare-fun res!990196 () Bool)

(assert (=> b!1460315 (=> (not res!990196) (not e!821142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460315 (= res!990196 (validKeyInArray!0 (select (arr!47590 a!2862) i!1006)))))

(declare-fun b!1460316 () Bool)

(declare-fun e!821141 () Bool)

(assert (=> b!1460316 (= e!821141 e!821140)))

(declare-fun res!990206 () Bool)

(assert (=> b!1460316 (=> (not res!990206) (not e!821140))))

(assert (=> b!1460316 (= res!990206 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47590 a!2862) j!93) mask!2687) (select (arr!47590 a!2862) j!93) a!2862 mask!2687) lt!639748))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1460316 (= lt!639748 (Intermediate!11865 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460317 () Bool)

(declare-fun res!990207 () Bool)

(assert (=> b!1460317 (=> (not res!990207) (not e!821139))))

(assert (=> b!1460317 (= res!990207 e!821138)))

(declare-fun c!134570 () Bool)

(assert (=> b!1460317 (= c!134570 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460318 () Bool)

(declare-fun res!990203 () Bool)

(assert (=> b!1460318 (=> (not res!990203) (not e!821142))))

(assert (=> b!1460318 (= res!990203 (validKeyInArray!0 (select (arr!47590 a!2862) j!93)))))

(declare-fun b!1460319 () Bool)

(declare-fun res!990200 () Bool)

(assert (=> b!1460319 (=> (not res!990200) (not e!821139))))

(assert (=> b!1460319 (= res!990200 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460320 () Bool)

(assert (=> b!1460320 (= e!821139 (not (or (and (= (select (arr!47590 a!2862) index!646) (select (store (arr!47590 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47590 a!2862) index!646) (select (arr!47590 a!2862) j!93))) (= (select (arr!47590 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1460320 e!821144))

(declare-fun res!990209 () Bool)

(assert (=> b!1460320 (=> (not res!990209) (not e!821144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98613 (_ BitVec 32)) Bool)

(assert (=> b!1460320 (= res!990209 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49174 0))(
  ( (Unit!49175) )
))
(declare-fun lt!639749 () Unit!49174)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98613 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49174)

(assert (=> b!1460320 (= lt!639749 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1460321 () Bool)

(declare-fun res!990205 () Bool)

(assert (=> b!1460321 (=> (not res!990205) (not e!821142))))

(declare-datatypes ((List!34271 0))(
  ( (Nil!34268) (Cons!34267 (h!35617 (_ BitVec 64)) (t!48972 List!34271)) )
))
(declare-fun arrayNoDuplicates!0 (array!98613 (_ BitVec 32) List!34271) Bool)

(assert (=> b!1460321 (= res!990205 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34268))))

(declare-fun b!1460322 () Bool)

(assert (=> b!1460322 (= e!821138 (= lt!639747 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639750 lt!639751 mask!2687)))))

(declare-fun b!1460323 () Bool)

(declare-fun res!990201 () Bool)

(assert (=> b!1460323 (=> (not res!990201) (not e!821142))))

(assert (=> b!1460323 (= res!990201 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48141 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48141 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48141 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460324 () Bool)

(declare-fun res!990198 () Bool)

(assert (=> b!1460324 (=> (not res!990198) (not e!821144))))

(assert (=> b!1460324 (= res!990198 (= (seekEntryOrOpen!0 (select (arr!47590 a!2862) j!93) a!2862 mask!2687) (Found!11865 j!93)))))

(declare-fun b!1460325 () Bool)

(declare-fun res!990210 () Bool)

(assert (=> b!1460325 (=> (not res!990210) (not e!821142))))

(assert (=> b!1460325 (= res!990210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460326 () Bool)

(assert (=> b!1460326 (= e!821142 e!821141)))

(declare-fun res!990208 () Bool)

(assert (=> b!1460326 (=> (not res!990208) (not e!821141))))

(assert (=> b!1460326 (= res!990208 (= (select (store (arr!47590 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460326 (= lt!639751 (array!98614 (store (arr!47590 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48141 a!2862)))))

(assert (= (and start!125248 res!990199) b!1460311))

(assert (= (and b!1460311 res!990202) b!1460315))

(assert (= (and b!1460315 res!990196) b!1460318))

(assert (= (and b!1460318 res!990203) b!1460325))

(assert (= (and b!1460325 res!990210) b!1460321))

(assert (= (and b!1460321 res!990205) b!1460323))

(assert (= (and b!1460323 res!990201) b!1460326))

(assert (= (and b!1460326 res!990208) b!1460316))

(assert (= (and b!1460316 res!990206) b!1460313))

(assert (= (and b!1460313 res!990197) b!1460312))

(assert (= (and b!1460312 res!990204) b!1460317))

(assert (= (and b!1460317 c!134570) b!1460322))

(assert (= (and b!1460317 (not c!134570)) b!1460310))

(assert (= (and b!1460317 res!990207) b!1460319))

(assert (= (and b!1460319 res!990200) b!1460320))

(assert (= (and b!1460320 res!990209) b!1460324))

(assert (= (and b!1460324 res!990198) b!1460314))

(declare-fun m!1348047 () Bool)

(assert (=> b!1460324 m!1348047))

(assert (=> b!1460324 m!1348047))

(declare-fun m!1348049 () Bool)

(assert (=> b!1460324 m!1348049))

(declare-fun m!1348051 () Bool)

(assert (=> b!1460315 m!1348051))

(assert (=> b!1460315 m!1348051))

(declare-fun m!1348053 () Bool)

(assert (=> b!1460315 m!1348053))

(declare-fun m!1348055 () Bool)

(assert (=> b!1460325 m!1348055))

(declare-fun m!1348057 () Bool)

(assert (=> b!1460310 m!1348057))

(declare-fun m!1348059 () Bool)

(assert (=> b!1460310 m!1348059))

(assert (=> b!1460316 m!1348047))

(assert (=> b!1460316 m!1348047))

(declare-fun m!1348061 () Bool)

(assert (=> b!1460316 m!1348061))

(assert (=> b!1460316 m!1348061))

(assert (=> b!1460316 m!1348047))

(declare-fun m!1348063 () Bool)

(assert (=> b!1460316 m!1348063))

(declare-fun m!1348065 () Bool)

(assert (=> b!1460321 m!1348065))

(declare-fun m!1348067 () Bool)

(assert (=> b!1460314 m!1348067))

(assert (=> b!1460314 m!1348047))

(declare-fun m!1348069 () Bool)

(assert (=> b!1460322 m!1348069))

(assert (=> b!1460313 m!1348047))

(assert (=> b!1460313 m!1348047))

(declare-fun m!1348071 () Bool)

(assert (=> b!1460313 m!1348071))

(declare-fun m!1348073 () Bool)

(assert (=> b!1460320 m!1348073))

(declare-fun m!1348075 () Bool)

(assert (=> b!1460320 m!1348075))

(declare-fun m!1348077 () Bool)

(assert (=> b!1460320 m!1348077))

(declare-fun m!1348079 () Bool)

(assert (=> b!1460320 m!1348079))

(declare-fun m!1348081 () Bool)

(assert (=> b!1460320 m!1348081))

(assert (=> b!1460320 m!1348047))

(assert (=> b!1460318 m!1348047))

(assert (=> b!1460318 m!1348047))

(declare-fun m!1348083 () Bool)

(assert (=> b!1460318 m!1348083))

(declare-fun m!1348085 () Bool)

(assert (=> b!1460312 m!1348085))

(assert (=> b!1460312 m!1348085))

(declare-fun m!1348087 () Bool)

(assert (=> b!1460312 m!1348087))

(assert (=> b!1460312 m!1348075))

(declare-fun m!1348089 () Bool)

(assert (=> b!1460312 m!1348089))

(declare-fun m!1348091 () Bool)

(assert (=> start!125248 m!1348091))

(declare-fun m!1348093 () Bool)

(assert (=> start!125248 m!1348093))

(assert (=> b!1460326 m!1348075))

(declare-fun m!1348095 () Bool)

(assert (=> b!1460326 m!1348095))

(push 1)

(assert (not b!1460324))

(assert (not b!1460316))

(assert (not b!1460325))

(assert (not b!1460320))

(assert (not b!1460321))

(assert (not b!1460318))

(assert (not b!1460313))

(assert (not b!1460322))

(assert (not b!1460312))

(assert (not b!1460315))

(assert (not b!1460310))

(assert (not start!125248))

(check-sat)

