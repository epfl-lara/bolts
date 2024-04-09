; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126238 () Bool)

(assert start!126238)

(declare-fun b!1478186 () Bool)

(declare-fun res!1004330 () Bool)

(declare-fun e!829249 () Bool)

(assert (=> b!1478186 (=> (not res!1004330) (not e!829249))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478186 (= res!1004330 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478187 () Bool)

(declare-fun e!829244 () Bool)

(declare-fun e!829246 () Bool)

(assert (=> b!1478187 (= e!829244 e!829246)))

(declare-fun res!1004335 () Bool)

(assert (=> b!1478187 (=> (not res!1004335) (not e!829246))))

(declare-datatypes ((array!99261 0))(
  ( (array!99262 (arr!47905 (Array (_ BitVec 32) (_ BitVec 64))) (size!48456 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99261)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12168 0))(
  ( (MissingZero!12168 (index!51063 (_ BitVec 32))) (Found!12168 (index!51064 (_ BitVec 32))) (Intermediate!12168 (undefined!12980 Bool) (index!51065 (_ BitVec 32)) (x!132658 (_ BitVec 32))) (Undefined!12168) (MissingVacant!12168 (index!51066 (_ BitVec 32))) )
))
(declare-fun lt!645565 () SeekEntryResult!12168)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99261 (_ BitVec 32)) SeekEntryResult!12168)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478187 (= res!1004335 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47905 a!2862) j!93) mask!2687) (select (arr!47905 a!2862) j!93) a!2862 mask!2687) lt!645565))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1478187 (= lt!645565 (Intermediate!12168 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478188 () Bool)

(declare-fun res!1004338 () Bool)

(declare-fun e!829250 () Bool)

(assert (=> b!1478188 (=> (not res!1004338) (not e!829250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478188 (= res!1004338 (validKeyInArray!0 (select (arr!47905 a!2862) j!93)))))

(declare-fun e!829245 () Bool)

(declare-fun b!1478189 () Bool)

(declare-fun lt!645568 () array!99261)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!645566 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99261 (_ BitVec 32)) SeekEntryResult!12168)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99261 (_ BitVec 32)) SeekEntryResult!12168)

(assert (=> b!1478189 (= e!829245 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645566 lt!645568 mask!2687) (seekEntryOrOpen!0 lt!645566 lt!645568 mask!2687)))))

(declare-fun b!1478190 () Bool)

(assert (=> b!1478190 (= e!829249 (not true))))

(declare-fun e!829242 () Bool)

(assert (=> b!1478190 e!829242))

(declare-fun res!1004333 () Bool)

(assert (=> b!1478190 (=> (not res!1004333) (not e!829242))))

(declare-fun lt!645564 () SeekEntryResult!12168)

(assert (=> b!1478190 (= res!1004333 (and (= lt!645564 (Found!12168 j!93)) (or (= (select (arr!47905 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47905 a!2862) intermediateBeforeIndex!19) (select (arr!47905 a!2862) j!93)))))))

(assert (=> b!1478190 (= lt!645564 (seekEntryOrOpen!0 (select (arr!47905 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99261 (_ BitVec 32)) Bool)

(assert (=> b!1478190 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49624 0))(
  ( (Unit!49625) )
))
(declare-fun lt!645567 () Unit!49624)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99261 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49624)

(assert (=> b!1478190 (= lt!645567 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!1004340 () Bool)

(assert (=> start!126238 (=> (not res!1004340) (not e!829250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126238 (= res!1004340 (validMask!0 mask!2687))))

(assert (=> start!126238 e!829250))

(assert (=> start!126238 true))

(declare-fun array_inv!36850 (array!99261) Bool)

(assert (=> start!126238 (array_inv!36850 a!2862)))

(declare-fun b!1478191 () Bool)

(assert (=> b!1478191 (= e!829246 e!829249)))

(declare-fun res!1004342 () Bool)

(assert (=> b!1478191 (=> (not res!1004342) (not e!829249))))

(declare-fun lt!645563 () SeekEntryResult!12168)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1478191 (= res!1004342 (= lt!645563 (Intermediate!12168 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1478191 (= lt!645563 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645566 mask!2687) lt!645566 lt!645568 mask!2687))))

(assert (=> b!1478191 (= lt!645566 (select (store (arr!47905 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478192 () Bool)

(declare-fun res!1004329 () Bool)

(assert (=> b!1478192 (=> (not res!1004329) (not e!829249))))

(assert (=> b!1478192 (= res!1004329 e!829245)))

(declare-fun c!136451 () Bool)

(assert (=> b!1478192 (= c!136451 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1478193 () Bool)

(declare-fun res!1004332 () Bool)

(assert (=> b!1478193 (=> (not res!1004332) (not e!829250))))

(assert (=> b!1478193 (= res!1004332 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48456 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48456 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48456 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478194 () Bool)

(assert (=> b!1478194 (= e!829250 e!829244)))

(declare-fun res!1004337 () Bool)

(assert (=> b!1478194 (=> (not res!1004337) (not e!829244))))

(assert (=> b!1478194 (= res!1004337 (= (select (store (arr!47905 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478194 (= lt!645568 (array!99262 (store (arr!47905 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48456 a!2862)))))

(declare-fun b!1478195 () Bool)

(declare-fun e!829248 () Bool)

(assert (=> b!1478195 (= e!829242 e!829248)))

(declare-fun res!1004343 () Bool)

(assert (=> b!1478195 (=> res!1004343 e!829248)))

(assert (=> b!1478195 (= res!1004343 (or (and (= (select (arr!47905 a!2862) index!646) (select (store (arr!47905 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47905 a!2862) index!646) (select (arr!47905 a!2862) j!93))) (not (= (select (arr!47905 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478196 () Bool)

(declare-fun e!829247 () Bool)

(assert (=> b!1478196 (= e!829248 e!829247)))

(declare-fun res!1004341 () Bool)

(assert (=> b!1478196 (=> (not res!1004341) (not e!829247))))

(assert (=> b!1478196 (= res!1004341 (= lt!645564 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47905 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1478197 () Bool)

(declare-fun res!1004339 () Bool)

(assert (=> b!1478197 (=> (not res!1004339) (not e!829250))))

(assert (=> b!1478197 (= res!1004339 (validKeyInArray!0 (select (arr!47905 a!2862) i!1006)))))

(declare-fun b!1478198 () Bool)

(declare-fun res!1004328 () Bool)

(assert (=> b!1478198 (=> (not res!1004328) (not e!829246))))

(assert (=> b!1478198 (= res!1004328 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47905 a!2862) j!93) a!2862 mask!2687) lt!645565))))

(declare-fun b!1478199 () Bool)

(assert (=> b!1478199 (= e!829247 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1478200 () Bool)

(declare-fun res!1004334 () Bool)

(assert (=> b!1478200 (=> (not res!1004334) (not e!829250))))

(assert (=> b!1478200 (= res!1004334 (and (= (size!48456 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48456 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48456 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478201 () Bool)

(declare-fun res!1004331 () Bool)

(assert (=> b!1478201 (=> (not res!1004331) (not e!829250))))

(assert (=> b!1478201 (= res!1004331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1478202 () Bool)

(declare-fun res!1004336 () Bool)

(assert (=> b!1478202 (=> (not res!1004336) (not e!829250))))

(declare-datatypes ((List!34586 0))(
  ( (Nil!34583) (Cons!34582 (h!35950 (_ BitVec 64)) (t!49287 List!34586)) )
))
(declare-fun arrayNoDuplicates!0 (array!99261 (_ BitVec 32) List!34586) Bool)

(assert (=> b!1478202 (= res!1004336 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34583))))

(declare-fun b!1478203 () Bool)

(assert (=> b!1478203 (= e!829245 (= lt!645563 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645566 lt!645568 mask!2687)))))

(assert (= (and start!126238 res!1004340) b!1478200))

(assert (= (and b!1478200 res!1004334) b!1478197))

(assert (= (and b!1478197 res!1004339) b!1478188))

(assert (= (and b!1478188 res!1004338) b!1478201))

(assert (= (and b!1478201 res!1004331) b!1478202))

(assert (= (and b!1478202 res!1004336) b!1478193))

(assert (= (and b!1478193 res!1004332) b!1478194))

(assert (= (and b!1478194 res!1004337) b!1478187))

(assert (= (and b!1478187 res!1004335) b!1478198))

(assert (= (and b!1478198 res!1004328) b!1478191))

(assert (= (and b!1478191 res!1004342) b!1478192))

(assert (= (and b!1478192 c!136451) b!1478203))

(assert (= (and b!1478192 (not c!136451)) b!1478189))

(assert (= (and b!1478192 res!1004329) b!1478186))

(assert (= (and b!1478186 res!1004330) b!1478190))

(assert (= (and b!1478190 res!1004333) b!1478195))

(assert (= (and b!1478195 (not res!1004343)) b!1478196))

(assert (= (and b!1478196 res!1004341) b!1478199))

(declare-fun m!1364163 () Bool)

(assert (=> b!1478191 m!1364163))

(assert (=> b!1478191 m!1364163))

(declare-fun m!1364165 () Bool)

(assert (=> b!1478191 m!1364165))

(declare-fun m!1364167 () Bool)

(assert (=> b!1478191 m!1364167))

(declare-fun m!1364169 () Bool)

(assert (=> b!1478191 m!1364169))

(declare-fun m!1364171 () Bool)

(assert (=> b!1478197 m!1364171))

(assert (=> b!1478197 m!1364171))

(declare-fun m!1364173 () Bool)

(assert (=> b!1478197 m!1364173))

(assert (=> b!1478194 m!1364167))

(declare-fun m!1364175 () Bool)

(assert (=> b!1478194 m!1364175))

(declare-fun m!1364177 () Bool)

(assert (=> b!1478187 m!1364177))

(assert (=> b!1478187 m!1364177))

(declare-fun m!1364179 () Bool)

(assert (=> b!1478187 m!1364179))

(assert (=> b!1478187 m!1364179))

(assert (=> b!1478187 m!1364177))

(declare-fun m!1364181 () Bool)

(assert (=> b!1478187 m!1364181))

(declare-fun m!1364183 () Bool)

(assert (=> b!1478195 m!1364183))

(assert (=> b!1478195 m!1364167))

(declare-fun m!1364185 () Bool)

(assert (=> b!1478195 m!1364185))

(assert (=> b!1478195 m!1364177))

(declare-fun m!1364187 () Bool)

(assert (=> b!1478203 m!1364187))

(declare-fun m!1364189 () Bool)

(assert (=> b!1478189 m!1364189))

(declare-fun m!1364191 () Bool)

(assert (=> b!1478189 m!1364191))

(declare-fun m!1364193 () Bool)

(assert (=> b!1478190 m!1364193))

(declare-fun m!1364195 () Bool)

(assert (=> b!1478190 m!1364195))

(assert (=> b!1478190 m!1364177))

(declare-fun m!1364197 () Bool)

(assert (=> b!1478190 m!1364197))

(declare-fun m!1364199 () Bool)

(assert (=> b!1478190 m!1364199))

(assert (=> b!1478190 m!1364177))

(assert (=> b!1478188 m!1364177))

(assert (=> b!1478188 m!1364177))

(declare-fun m!1364201 () Bool)

(assert (=> b!1478188 m!1364201))

(declare-fun m!1364203 () Bool)

(assert (=> b!1478202 m!1364203))

(assert (=> b!1478198 m!1364177))

(assert (=> b!1478198 m!1364177))

(declare-fun m!1364205 () Bool)

(assert (=> b!1478198 m!1364205))

(assert (=> b!1478196 m!1364177))

(assert (=> b!1478196 m!1364177))

(declare-fun m!1364207 () Bool)

(assert (=> b!1478196 m!1364207))

(declare-fun m!1364209 () Bool)

(assert (=> b!1478201 m!1364209))

(declare-fun m!1364211 () Bool)

(assert (=> start!126238 m!1364211))

(declare-fun m!1364213 () Bool)

(assert (=> start!126238 m!1364213))

(push 1)

