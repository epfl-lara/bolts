; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124820 () Bool)

(assert start!124820)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1447315 () Bool)

(declare-fun lt!635087 () (_ BitVec 64))

(declare-datatypes ((array!98185 0))(
  ( (array!98186 (arr!47376 (Array (_ BitVec 32) (_ BitVec 64))) (size!47927 (_ BitVec 32))) )
))
(declare-fun lt!635091 () array!98185)

(declare-fun e!815148 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11651 0))(
  ( (MissingZero!11651 (index!48995 (_ BitVec 32))) (Found!11651 (index!48996 (_ BitVec 32))) (Intermediate!11651 (undefined!12463 Bool) (index!48997 (_ BitVec 32)) (x!130671 (_ BitVec 32))) (Undefined!11651) (MissingVacant!11651 (index!48998 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98185 (_ BitVec 32)) SeekEntryResult!11651)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98185 (_ BitVec 32)) SeekEntryResult!11651)

(assert (=> b!1447315 (= e!815148 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635087 lt!635091 mask!2687) (seekEntryOrOpen!0 lt!635087 lt!635091 mask!2687)))))

(declare-fun b!1447316 () Bool)

(declare-fun e!815150 () Bool)

(declare-fun e!815149 () Bool)

(assert (=> b!1447316 (= e!815150 e!815149)))

(declare-fun res!979082 () Bool)

(assert (=> b!1447316 (=> (not res!979082) (not e!815149))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98185)

(assert (=> b!1447316 (= res!979082 (= (select (store (arr!47376 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447316 (= lt!635091 (array!98186 (store (arr!47376 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47927 a!2862)))))

(declare-fun b!1447317 () Bool)

(declare-fun res!979079 () Bool)

(declare-fun e!815153 () Bool)

(assert (=> b!1447317 (=> (not res!979079) (not e!815153))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1447317 (= res!979079 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447319 () Bool)

(declare-fun res!979083 () Bool)

(assert (=> b!1447319 (=> (not res!979083) (not e!815150))))

(declare-datatypes ((List!34057 0))(
  ( (Nil!34054) (Cons!34053 (h!35403 (_ BitVec 64)) (t!48758 List!34057)) )
))
(declare-fun arrayNoDuplicates!0 (array!98185 (_ BitVec 32) List!34057) Bool)

(assert (=> b!1447319 (= res!979083 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34054))))

(declare-fun b!1447320 () Bool)

(declare-fun lt!635086 () SeekEntryResult!11651)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98185 (_ BitVec 32)) SeekEntryResult!11651)

(assert (=> b!1447320 (= e!815148 (= lt!635086 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635087 lt!635091 mask!2687)))))

(declare-fun b!1447321 () Bool)

(declare-fun res!979092 () Bool)

(assert (=> b!1447321 (=> (not res!979092) (not e!815153))))

(assert (=> b!1447321 (= res!979092 e!815148)))

(declare-fun c!133631 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1447321 (= c!133631 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1447322 () Bool)

(declare-fun res!979080 () Bool)

(assert (=> b!1447322 (=> (not res!979080) (not e!815150))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98185 (_ BitVec 32)) Bool)

(assert (=> b!1447322 (= res!979080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1447323 () Bool)

(declare-fun e!815155 () Bool)

(assert (=> b!1447323 (= e!815155 e!815153)))

(declare-fun res!979081 () Bool)

(assert (=> b!1447323 (=> (not res!979081) (not e!815153))))

(assert (=> b!1447323 (= res!979081 (= lt!635086 (Intermediate!11651 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447323 (= lt!635086 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635087 mask!2687) lt!635087 lt!635091 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1447323 (= lt!635087 (select (store (arr!47376 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1447324 () Bool)

(declare-fun res!979088 () Bool)

(assert (=> b!1447324 (=> (not res!979088) (not e!815150))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447324 (= res!979088 (validKeyInArray!0 (select (arr!47376 a!2862) i!1006)))))

(declare-fun b!1447325 () Bool)

(assert (=> b!1447325 (= e!815149 e!815155)))

(declare-fun res!979087 () Bool)

(assert (=> b!1447325 (=> (not res!979087) (not e!815155))))

(declare-fun lt!635089 () SeekEntryResult!11651)

(assert (=> b!1447325 (= res!979087 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47376 a!2862) j!93) mask!2687) (select (arr!47376 a!2862) j!93) a!2862 mask!2687) lt!635089))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1447325 (= lt!635089 (Intermediate!11651 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1447326 () Bool)

(declare-fun res!979090 () Bool)

(assert (=> b!1447326 (=> (not res!979090) (not e!815150))))

(assert (=> b!1447326 (= res!979090 (validKeyInArray!0 (select (arr!47376 a!2862) j!93)))))

(declare-fun e!815154 () Bool)

(declare-fun b!1447327 () Bool)

(assert (=> b!1447327 (= e!815154 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447328 () Bool)

(declare-fun e!815151 () Bool)

(assert (=> b!1447328 (= e!815151 e!815154)))

(declare-fun res!979093 () Bool)

(assert (=> b!1447328 (=> (not res!979093) (not e!815154))))

(declare-fun lt!635090 () SeekEntryResult!11651)

(assert (=> b!1447328 (= res!979093 (= lt!635090 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47376 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun res!979086 () Bool)

(assert (=> start!124820 (=> (not res!979086) (not e!815150))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124820 (= res!979086 (validMask!0 mask!2687))))

(assert (=> start!124820 e!815150))

(assert (=> start!124820 true))

(declare-fun array_inv!36321 (array!98185) Bool)

(assert (=> start!124820 (array_inv!36321 a!2862)))

(declare-fun b!1447318 () Bool)

(declare-fun e!815156 () Bool)

(assert (=> b!1447318 (= e!815153 (not e!815156))))

(declare-fun res!979091 () Bool)

(assert (=> b!1447318 (=> res!979091 e!815156)))

(assert (=> b!1447318 (= res!979091 (or (and (= (select (arr!47376 a!2862) index!646) (select (store (arr!47376 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47376 a!2862) index!646) (select (arr!47376 a!2862) j!93))) (not (= (select (arr!47376 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47376 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815147 () Bool)

(assert (=> b!1447318 e!815147))

(declare-fun res!979085 () Bool)

(assert (=> b!1447318 (=> (not res!979085) (not e!815147))))

(assert (=> b!1447318 (= res!979085 (and (= lt!635090 (Found!11651 j!93)) (or (= (select (arr!47376 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47376 a!2862) intermediateBeforeIndex!19) (select (arr!47376 a!2862) j!93)))))))

(assert (=> b!1447318 (= lt!635090 (seekEntryOrOpen!0 (select (arr!47376 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1447318 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48746 0))(
  ( (Unit!48747) )
))
(declare-fun lt!635092 () Unit!48746)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98185 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48746)

(assert (=> b!1447318 (= lt!635092 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447329 () Bool)

(assert (=> b!1447329 (= e!815147 e!815151)))

(declare-fun res!979095 () Bool)

(assert (=> b!1447329 (=> res!979095 e!815151)))

(assert (=> b!1447329 (= res!979095 (or (and (= (select (arr!47376 a!2862) index!646) (select (store (arr!47376 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47376 a!2862) index!646) (select (arr!47376 a!2862) j!93))) (not (= (select (arr!47376 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447330 () Bool)

(declare-fun res!979084 () Bool)

(assert (=> b!1447330 (=> (not res!979084) (not e!815150))))

(assert (=> b!1447330 (= res!979084 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47927 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47927 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47927 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447331 () Bool)

(assert (=> b!1447331 (= e!815156 true)))

(declare-fun lt!635088 () SeekEntryResult!11651)

(assert (=> b!1447331 (= lt!635088 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47376 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1447332 () Bool)

(declare-fun res!979094 () Bool)

(assert (=> b!1447332 (=> (not res!979094) (not e!815155))))

(assert (=> b!1447332 (= res!979094 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47376 a!2862) j!93) a!2862 mask!2687) lt!635089))))

(declare-fun b!1447333 () Bool)

(declare-fun res!979089 () Bool)

(assert (=> b!1447333 (=> (not res!979089) (not e!815150))))

(assert (=> b!1447333 (= res!979089 (and (= (size!47927 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47927 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47927 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124820 res!979086) b!1447333))

(assert (= (and b!1447333 res!979089) b!1447324))

(assert (= (and b!1447324 res!979088) b!1447326))

(assert (= (and b!1447326 res!979090) b!1447322))

(assert (= (and b!1447322 res!979080) b!1447319))

(assert (= (and b!1447319 res!979083) b!1447330))

(assert (= (and b!1447330 res!979084) b!1447316))

(assert (= (and b!1447316 res!979082) b!1447325))

(assert (= (and b!1447325 res!979087) b!1447332))

(assert (= (and b!1447332 res!979094) b!1447323))

(assert (= (and b!1447323 res!979081) b!1447321))

(assert (= (and b!1447321 c!133631) b!1447320))

(assert (= (and b!1447321 (not c!133631)) b!1447315))

(assert (= (and b!1447321 res!979092) b!1447317))

(assert (= (and b!1447317 res!979079) b!1447318))

(assert (= (and b!1447318 res!979085) b!1447329))

(assert (= (and b!1447329 (not res!979095)) b!1447328))

(assert (= (and b!1447328 res!979093) b!1447327))

(assert (= (and b!1447318 (not res!979091)) b!1447331))

(declare-fun m!1336191 () Bool)

(assert (=> b!1447332 m!1336191))

(assert (=> b!1447332 m!1336191))

(declare-fun m!1336193 () Bool)

(assert (=> b!1447332 m!1336193))

(assert (=> b!1447331 m!1336191))

(assert (=> b!1447331 m!1336191))

(declare-fun m!1336195 () Bool)

(assert (=> b!1447331 m!1336195))

(declare-fun m!1336197 () Bool)

(assert (=> b!1447319 m!1336197))

(assert (=> b!1447326 m!1336191))

(assert (=> b!1447326 m!1336191))

(declare-fun m!1336199 () Bool)

(assert (=> b!1447326 m!1336199))

(assert (=> b!1447325 m!1336191))

(assert (=> b!1447325 m!1336191))

(declare-fun m!1336201 () Bool)

(assert (=> b!1447325 m!1336201))

(assert (=> b!1447325 m!1336201))

(assert (=> b!1447325 m!1336191))

(declare-fun m!1336203 () Bool)

(assert (=> b!1447325 m!1336203))

(declare-fun m!1336205 () Bool)

(assert (=> b!1447320 m!1336205))

(declare-fun m!1336207 () Bool)

(assert (=> start!124820 m!1336207))

(declare-fun m!1336209 () Bool)

(assert (=> start!124820 m!1336209))

(declare-fun m!1336211 () Bool)

(assert (=> b!1447316 m!1336211))

(declare-fun m!1336213 () Bool)

(assert (=> b!1447316 m!1336213))

(declare-fun m!1336215 () Bool)

(assert (=> b!1447315 m!1336215))

(declare-fun m!1336217 () Bool)

(assert (=> b!1447315 m!1336217))

(declare-fun m!1336219 () Bool)

(assert (=> b!1447324 m!1336219))

(assert (=> b!1447324 m!1336219))

(declare-fun m!1336221 () Bool)

(assert (=> b!1447324 m!1336221))

(declare-fun m!1336223 () Bool)

(assert (=> b!1447318 m!1336223))

(assert (=> b!1447318 m!1336211))

(declare-fun m!1336225 () Bool)

(assert (=> b!1447318 m!1336225))

(declare-fun m!1336227 () Bool)

(assert (=> b!1447318 m!1336227))

(declare-fun m!1336229 () Bool)

(assert (=> b!1447318 m!1336229))

(assert (=> b!1447318 m!1336191))

(declare-fun m!1336231 () Bool)

(assert (=> b!1447318 m!1336231))

(declare-fun m!1336233 () Bool)

(assert (=> b!1447318 m!1336233))

(assert (=> b!1447318 m!1336191))

(assert (=> b!1447329 m!1336229))

(assert (=> b!1447329 m!1336211))

(assert (=> b!1447329 m!1336227))

(assert (=> b!1447329 m!1336191))

(declare-fun m!1336235 () Bool)

(assert (=> b!1447322 m!1336235))

(assert (=> b!1447328 m!1336191))

(assert (=> b!1447328 m!1336191))

(declare-fun m!1336237 () Bool)

(assert (=> b!1447328 m!1336237))

(declare-fun m!1336239 () Bool)

(assert (=> b!1447323 m!1336239))

(assert (=> b!1447323 m!1336239))

(declare-fun m!1336241 () Bool)

(assert (=> b!1447323 m!1336241))

(assert (=> b!1447323 m!1336211))

(declare-fun m!1336243 () Bool)

(assert (=> b!1447323 m!1336243))

(push 1)

