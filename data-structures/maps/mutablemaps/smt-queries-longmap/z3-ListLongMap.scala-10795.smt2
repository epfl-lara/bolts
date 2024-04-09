; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126312 () Bool)

(assert start!126312)

(declare-fun b!1480278 () Bool)

(declare-fun res!1006206 () Bool)

(declare-fun e!830287 () Bool)

(assert (=> b!1480278 (=> (not res!1006206) (not e!830287))))

(declare-datatypes ((array!99335 0))(
  ( (array!99336 (arr!47942 (Array (_ BitVec 32) (_ BitVec 64))) (size!48493 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99335)

(declare-datatypes ((List!34623 0))(
  ( (Nil!34620) (Cons!34619 (h!35987 (_ BitVec 64)) (t!49324 List!34623)) )
))
(declare-fun arrayNoDuplicates!0 (array!99335 (_ BitVec 32) List!34623) Bool)

(assert (=> b!1480278 (= res!1006206 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34620))))

(declare-fun b!1480279 () Bool)

(declare-fun res!1006201 () Bool)

(assert (=> b!1480279 (=> (not res!1006201) (not e!830287))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1480279 (= res!1006201 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48493 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48493 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48493 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1480280 () Bool)

(declare-fun res!1006207 () Bool)

(declare-fun e!830289 () Bool)

(assert (=> b!1480280 (=> (not res!1006207) (not e!830289))))

(declare-fun e!830286 () Bool)

(assert (=> b!1480280 (= res!1006207 e!830286)))

(declare-fun c!136562 () Bool)

(assert (=> b!1480280 (= c!136562 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1480281 () Bool)

(declare-fun res!1006211 () Bool)

(assert (=> b!1480281 (=> (not res!1006211) (not e!830287))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1480281 (= res!1006211 (validKeyInArray!0 (select (arr!47942 a!2862) i!1006)))))

(declare-fun b!1480282 () Bool)

(declare-fun res!1006209 () Bool)

(assert (=> b!1480282 (=> (not res!1006209) (not e!830287))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1480282 (= res!1006209 (and (= (size!48493 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48493 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48493 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1006208 () Bool)

(assert (=> start!126312 (=> (not res!1006208) (not e!830287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126312 (= res!1006208 (validMask!0 mask!2687))))

(assert (=> start!126312 e!830287))

(assert (=> start!126312 true))

(declare-fun array_inv!36887 (array!99335) Bool)

(assert (=> start!126312 (array_inv!36887 a!2862)))

(declare-fun b!1480283 () Bool)

(declare-fun res!1006205 () Bool)

(declare-fun e!830291 () Bool)

(assert (=> b!1480283 (=> (not res!1006205) (not e!830291))))

(declare-datatypes ((SeekEntryResult!12205 0))(
  ( (MissingZero!12205 (index!51211 (_ BitVec 32))) (Found!12205 (index!51212 (_ BitVec 32))) (Intermediate!12205 (undefined!13017 Bool) (index!51213 (_ BitVec 32)) (x!132791 (_ BitVec 32))) (Undefined!12205) (MissingVacant!12205 (index!51214 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99335 (_ BitVec 32)) SeekEntryResult!12205)

(assert (=> b!1480283 (= res!1006205 (= (seekEntryOrOpen!0 (select (arr!47942 a!2862) j!93) a!2862 mask!2687) (Found!12205 j!93)))))

(declare-fun b!1480284 () Bool)

(declare-fun e!830290 () Bool)

(assert (=> b!1480284 (= e!830287 e!830290)))

(declare-fun res!1006212 () Bool)

(assert (=> b!1480284 (=> (not res!1006212) (not e!830290))))

(assert (=> b!1480284 (= res!1006212 (= (select (store (arr!47942 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!646325 () array!99335)

(assert (=> b!1480284 (= lt!646325 (array!99336 (store (arr!47942 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48493 a!2862)))))

(declare-fun b!1480285 () Bool)

(declare-fun res!1006198 () Bool)

(declare-fun e!830285 () Bool)

(assert (=> b!1480285 (=> (not res!1006198) (not e!830285))))

(declare-fun lt!646323 () SeekEntryResult!12205)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99335 (_ BitVec 32)) SeekEntryResult!12205)

(assert (=> b!1480285 (= res!1006198 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47942 a!2862) j!93) a!2862 mask!2687) lt!646323))))

(declare-fun lt!646327 () (_ BitVec 64))

(declare-fun lt!646326 () SeekEntryResult!12205)

(declare-fun b!1480286 () Bool)

(assert (=> b!1480286 (= e!830286 (= lt!646326 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646327 lt!646325 mask!2687)))))

(declare-fun b!1480287 () Bool)

(declare-fun res!1006202 () Bool)

(assert (=> b!1480287 (=> (not res!1006202) (not e!830287))))

(assert (=> b!1480287 (= res!1006202 (validKeyInArray!0 (select (arr!47942 a!2862) j!93)))))

(declare-fun b!1480288 () Bool)

(declare-fun res!1006203 () Bool)

(assert (=> b!1480288 (=> (not res!1006203) (not e!830287))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99335 (_ BitVec 32)) Bool)

(assert (=> b!1480288 (= res!1006203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1480289 () Bool)

(declare-fun res!1006210 () Bool)

(assert (=> b!1480289 (=> (not res!1006210) (not e!830289))))

(assert (=> b!1480289 (= res!1006210 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1480290 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99335 (_ BitVec 32)) SeekEntryResult!12205)

(assert (=> b!1480290 (= e!830286 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646327 lt!646325 mask!2687) (seekEntryOrOpen!0 lt!646327 lt!646325 mask!2687)))))

(declare-fun b!1480291 () Bool)

(assert (=> b!1480291 (= e!830289 (not (or (and (= (select (arr!47942 a!2862) index!646) (select (store (arr!47942 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47942 a!2862) index!646) (select (arr!47942 a!2862) j!93))) (= (select (arr!47942 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= index!646 intermediateAfterIndex!19))))))

(assert (=> b!1480291 e!830291))

(declare-fun res!1006204 () Bool)

(assert (=> b!1480291 (=> (not res!1006204) (not e!830291))))

(assert (=> b!1480291 (= res!1006204 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49698 0))(
  ( (Unit!49699) )
))
(declare-fun lt!646324 () Unit!49698)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99335 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49698)

(assert (=> b!1480291 (= lt!646324 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1480292 () Bool)

(assert (=> b!1480292 (= e!830285 e!830289)))

(declare-fun res!1006199 () Bool)

(assert (=> b!1480292 (=> (not res!1006199) (not e!830289))))

(assert (=> b!1480292 (= res!1006199 (= lt!646326 (Intermediate!12205 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1480292 (= lt!646326 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646327 mask!2687) lt!646327 lt!646325 mask!2687))))

(assert (=> b!1480292 (= lt!646327 (select (store (arr!47942 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1480293 () Bool)

(assert (=> b!1480293 (= e!830291 (or (= (select (arr!47942 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47942 a!2862) intermediateBeforeIndex!19) (select (arr!47942 a!2862) j!93))))))

(declare-fun b!1480294 () Bool)

(assert (=> b!1480294 (= e!830290 e!830285)))

(declare-fun res!1006200 () Bool)

(assert (=> b!1480294 (=> (not res!1006200) (not e!830285))))

(assert (=> b!1480294 (= res!1006200 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687) (select (arr!47942 a!2862) j!93) a!2862 mask!2687) lt!646323))))

(assert (=> b!1480294 (= lt!646323 (Intermediate!12205 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!126312 res!1006208) b!1480282))

(assert (= (and b!1480282 res!1006209) b!1480281))

(assert (= (and b!1480281 res!1006211) b!1480287))

(assert (= (and b!1480287 res!1006202) b!1480288))

(assert (= (and b!1480288 res!1006203) b!1480278))

(assert (= (and b!1480278 res!1006206) b!1480279))

(assert (= (and b!1480279 res!1006201) b!1480284))

(assert (= (and b!1480284 res!1006212) b!1480294))

(assert (= (and b!1480294 res!1006200) b!1480285))

(assert (= (and b!1480285 res!1006198) b!1480292))

(assert (= (and b!1480292 res!1006199) b!1480280))

(assert (= (and b!1480280 c!136562) b!1480286))

(assert (= (and b!1480280 (not c!136562)) b!1480290))

(assert (= (and b!1480280 res!1006207) b!1480289))

(assert (= (and b!1480289 res!1006210) b!1480291))

(assert (= (and b!1480291 res!1006204) b!1480283))

(assert (= (and b!1480283 res!1006205) b!1480293))

(declare-fun m!1366151 () Bool)

(assert (=> b!1480285 m!1366151))

(assert (=> b!1480285 m!1366151))

(declare-fun m!1366153 () Bool)

(assert (=> b!1480285 m!1366153))

(declare-fun m!1366155 () Bool)

(assert (=> b!1480290 m!1366155))

(declare-fun m!1366157 () Bool)

(assert (=> b!1480290 m!1366157))

(assert (=> b!1480287 m!1366151))

(assert (=> b!1480287 m!1366151))

(declare-fun m!1366159 () Bool)

(assert (=> b!1480287 m!1366159))

(declare-fun m!1366161 () Bool)

(assert (=> b!1480288 m!1366161))

(declare-fun m!1366163 () Bool)

(assert (=> b!1480281 m!1366163))

(assert (=> b!1480281 m!1366163))

(declare-fun m!1366165 () Bool)

(assert (=> b!1480281 m!1366165))

(declare-fun m!1366167 () Bool)

(assert (=> start!126312 m!1366167))

(declare-fun m!1366169 () Bool)

(assert (=> start!126312 m!1366169))

(assert (=> b!1480294 m!1366151))

(assert (=> b!1480294 m!1366151))

(declare-fun m!1366171 () Bool)

(assert (=> b!1480294 m!1366171))

(assert (=> b!1480294 m!1366171))

(assert (=> b!1480294 m!1366151))

(declare-fun m!1366173 () Bool)

(assert (=> b!1480294 m!1366173))

(declare-fun m!1366175 () Bool)

(assert (=> b!1480293 m!1366175))

(assert (=> b!1480293 m!1366151))

(declare-fun m!1366177 () Bool)

(assert (=> b!1480278 m!1366177))

(declare-fun m!1366179 () Bool)

(assert (=> b!1480291 m!1366179))

(declare-fun m!1366181 () Bool)

(assert (=> b!1480291 m!1366181))

(declare-fun m!1366183 () Bool)

(assert (=> b!1480291 m!1366183))

(declare-fun m!1366185 () Bool)

(assert (=> b!1480291 m!1366185))

(declare-fun m!1366187 () Bool)

(assert (=> b!1480291 m!1366187))

(assert (=> b!1480291 m!1366151))

(assert (=> b!1480283 m!1366151))

(assert (=> b!1480283 m!1366151))

(declare-fun m!1366189 () Bool)

(assert (=> b!1480283 m!1366189))

(assert (=> b!1480284 m!1366181))

(declare-fun m!1366191 () Bool)

(assert (=> b!1480284 m!1366191))

(declare-fun m!1366193 () Bool)

(assert (=> b!1480286 m!1366193))

(declare-fun m!1366195 () Bool)

(assert (=> b!1480292 m!1366195))

(assert (=> b!1480292 m!1366195))

(declare-fun m!1366197 () Bool)

(assert (=> b!1480292 m!1366197))

(assert (=> b!1480292 m!1366181))

(declare-fun m!1366199 () Bool)

(assert (=> b!1480292 m!1366199))

(check-sat (not b!1480288) (not b!1480285) (not start!126312) (not b!1480286) (not b!1480278) (not b!1480290) (not b!1480281) (not b!1480294) (not b!1480287) (not b!1480292) (not b!1480283) (not b!1480291))
(check-sat)
(get-model)

(declare-fun b!1480364 () Bool)

(declare-fun e!830324 () SeekEntryResult!12205)

(declare-fun e!830327 () SeekEntryResult!12205)

(assert (=> b!1480364 (= e!830324 e!830327)))

(declare-fun c!136573 () Bool)

(declare-fun lt!646347 () (_ BitVec 64))

(assert (=> b!1480364 (= c!136573 (or (= lt!646347 (select (arr!47942 a!2862) j!93)) (= (bvadd lt!646347 lt!646347) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!155975 () Bool)

(declare-fun e!830325 () Bool)

(assert (=> d!155975 e!830325))

(declare-fun c!136574 () Bool)

(declare-fun lt!646348 () SeekEntryResult!12205)

(get-info :version)

(assert (=> d!155975 (= c!136574 (and ((_ is Intermediate!12205) lt!646348) (undefined!13017 lt!646348)))))

(assert (=> d!155975 (= lt!646348 e!830324)))

(declare-fun c!136572 () Bool)

(assert (=> d!155975 (= c!136572 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155975 (= lt!646347 (select (arr!47942 a!2862) (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687)))))

(assert (=> d!155975 (validMask!0 mask!2687)))

(assert (=> d!155975 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687) (select (arr!47942 a!2862) j!93) a!2862 mask!2687) lt!646348)))

(declare-fun b!1480365 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1480365 (= e!830327 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47942 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480366 () Bool)

(assert (=> b!1480366 (and (bvsge (index!51213 lt!646348) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646348) (size!48493 a!2862)))))

(declare-fun res!1006265 () Bool)

(assert (=> b!1480366 (= res!1006265 (= (select (arr!47942 a!2862) (index!51213 lt!646348)) (select (arr!47942 a!2862) j!93)))))

(declare-fun e!830326 () Bool)

(assert (=> b!1480366 (=> res!1006265 e!830326)))

(declare-fun e!830323 () Bool)

(assert (=> b!1480366 (= e!830323 e!830326)))

(declare-fun b!1480367 () Bool)

(assert (=> b!1480367 (= e!830325 (bvsge (x!132791 lt!646348) #b01111111111111111111111111111110))))

(declare-fun b!1480368 () Bool)

(assert (=> b!1480368 (and (bvsge (index!51213 lt!646348) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646348) (size!48493 a!2862)))))

(declare-fun res!1006264 () Bool)

(assert (=> b!1480368 (= res!1006264 (= (select (arr!47942 a!2862) (index!51213 lt!646348)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480368 (=> res!1006264 e!830326)))

(declare-fun b!1480369 () Bool)

(assert (=> b!1480369 (= e!830324 (Intermediate!12205 true (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1480370 () Bool)

(assert (=> b!1480370 (= e!830327 (Intermediate!12205 false (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1480371 () Bool)

(assert (=> b!1480371 (= e!830325 e!830323)))

(declare-fun res!1006266 () Bool)

(assert (=> b!1480371 (= res!1006266 (and ((_ is Intermediate!12205) lt!646348) (not (undefined!13017 lt!646348)) (bvslt (x!132791 lt!646348) #b01111111111111111111111111111110) (bvsge (x!132791 lt!646348) #b00000000000000000000000000000000) (bvsge (x!132791 lt!646348) #b00000000000000000000000000000000)))))

(assert (=> b!1480371 (=> (not res!1006266) (not e!830323))))

(declare-fun b!1480372 () Bool)

(assert (=> b!1480372 (and (bvsge (index!51213 lt!646348) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646348) (size!48493 a!2862)))))

(assert (=> b!1480372 (= e!830326 (= (select (arr!47942 a!2862) (index!51213 lt!646348)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!155975 c!136572) b!1480369))

(assert (= (and d!155975 (not c!136572)) b!1480364))

(assert (= (and b!1480364 c!136573) b!1480370))

(assert (= (and b!1480364 (not c!136573)) b!1480365))

(assert (= (and d!155975 c!136574) b!1480367))

(assert (= (and d!155975 (not c!136574)) b!1480371))

(assert (= (and b!1480371 res!1006266) b!1480366))

(assert (= (and b!1480366 (not res!1006265)) b!1480368))

(assert (= (and b!1480368 (not res!1006264)) b!1480372))

(assert (=> b!1480365 m!1366171))

(declare-fun m!1366251 () Bool)

(assert (=> b!1480365 m!1366251))

(assert (=> b!1480365 m!1366251))

(assert (=> b!1480365 m!1366151))

(declare-fun m!1366253 () Bool)

(assert (=> b!1480365 m!1366253))

(assert (=> d!155975 m!1366171))

(declare-fun m!1366255 () Bool)

(assert (=> d!155975 m!1366255))

(assert (=> d!155975 m!1366167))

(declare-fun m!1366257 () Bool)

(assert (=> b!1480366 m!1366257))

(assert (=> b!1480368 m!1366257))

(assert (=> b!1480372 m!1366257))

(assert (=> b!1480294 d!155975))

(declare-fun d!155977 () Bool)

(declare-fun lt!646354 () (_ BitVec 32))

(declare-fun lt!646353 () (_ BitVec 32))

(assert (=> d!155977 (= lt!646354 (bvmul (bvxor lt!646353 (bvlshr lt!646353 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155977 (= lt!646353 ((_ extract 31 0) (bvand (bvxor (select (arr!47942 a!2862) j!93) (bvlshr (select (arr!47942 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155977 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1006267 (let ((h!35989 ((_ extract 31 0) (bvand (bvxor (select (arr!47942 a!2862) j!93) (bvlshr (select (arr!47942 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132794 (bvmul (bvxor h!35989 (bvlshr h!35989 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132794 (bvlshr x!132794 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1006267 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1006267 #b00000000000000000000000000000000))))))

(assert (=> d!155977 (= (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687) (bvand (bvxor lt!646354 (bvlshr lt!646354 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1480294 d!155977))

(declare-fun d!155979 () Bool)

(declare-fun lt!646363 () SeekEntryResult!12205)

(assert (=> d!155979 (and (or ((_ is Undefined!12205) lt!646363) (not ((_ is Found!12205) lt!646363)) (and (bvsge (index!51212 lt!646363) #b00000000000000000000000000000000) (bvslt (index!51212 lt!646363) (size!48493 a!2862)))) (or ((_ is Undefined!12205) lt!646363) ((_ is Found!12205) lt!646363) (not ((_ is MissingZero!12205) lt!646363)) (and (bvsge (index!51211 lt!646363) #b00000000000000000000000000000000) (bvslt (index!51211 lt!646363) (size!48493 a!2862)))) (or ((_ is Undefined!12205) lt!646363) ((_ is Found!12205) lt!646363) ((_ is MissingZero!12205) lt!646363) (not ((_ is MissingVacant!12205) lt!646363)) (and (bvsge (index!51214 lt!646363) #b00000000000000000000000000000000) (bvslt (index!51214 lt!646363) (size!48493 a!2862)))) (or ((_ is Undefined!12205) lt!646363) (ite ((_ is Found!12205) lt!646363) (= (select (arr!47942 a!2862) (index!51212 lt!646363)) (select (arr!47942 a!2862) j!93)) (ite ((_ is MissingZero!12205) lt!646363) (= (select (arr!47942 a!2862) (index!51211 lt!646363)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12205) lt!646363) (= (select (arr!47942 a!2862) (index!51214 lt!646363)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!830334 () SeekEntryResult!12205)

(assert (=> d!155979 (= lt!646363 e!830334)))

(declare-fun c!136583 () Bool)

(declare-fun lt!646361 () SeekEntryResult!12205)

(assert (=> d!155979 (= c!136583 (and ((_ is Intermediate!12205) lt!646361) (undefined!13017 lt!646361)))))

(assert (=> d!155979 (= lt!646361 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687) (select (arr!47942 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155979 (validMask!0 mask!2687)))

(assert (=> d!155979 (= (seekEntryOrOpen!0 (select (arr!47942 a!2862) j!93) a!2862 mask!2687) lt!646363)))

(declare-fun b!1480385 () Bool)

(declare-fun c!136582 () Bool)

(declare-fun lt!646362 () (_ BitVec 64))

(assert (=> b!1480385 (= c!136582 (= lt!646362 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!830335 () SeekEntryResult!12205)

(declare-fun e!830336 () SeekEntryResult!12205)

(assert (=> b!1480385 (= e!830335 e!830336)))

(declare-fun b!1480386 () Bool)

(assert (=> b!1480386 (= e!830334 e!830335)))

(assert (=> b!1480386 (= lt!646362 (select (arr!47942 a!2862) (index!51213 lt!646361)))))

(declare-fun c!136581 () Bool)

(assert (=> b!1480386 (= c!136581 (= lt!646362 (select (arr!47942 a!2862) j!93)))))

(declare-fun b!1480387 () Bool)

(assert (=> b!1480387 (= e!830336 (seekKeyOrZeroReturnVacant!0 (x!132791 lt!646361) (index!51213 lt!646361) (index!51213 lt!646361) (select (arr!47942 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480388 () Bool)

(assert (=> b!1480388 (= e!830336 (MissingZero!12205 (index!51213 lt!646361)))))

(declare-fun b!1480389 () Bool)

(assert (=> b!1480389 (= e!830334 Undefined!12205)))

(declare-fun b!1480390 () Bool)

(assert (=> b!1480390 (= e!830335 (Found!12205 (index!51213 lt!646361)))))

(assert (= (and d!155979 c!136583) b!1480389))

(assert (= (and d!155979 (not c!136583)) b!1480386))

(assert (= (and b!1480386 c!136581) b!1480390))

(assert (= (and b!1480386 (not c!136581)) b!1480385))

(assert (= (and b!1480385 c!136582) b!1480388))

(assert (= (and b!1480385 (not c!136582)) b!1480387))

(declare-fun m!1366259 () Bool)

(assert (=> d!155979 m!1366259))

(declare-fun m!1366261 () Bool)

(assert (=> d!155979 m!1366261))

(declare-fun m!1366263 () Bool)

(assert (=> d!155979 m!1366263))

(assert (=> d!155979 m!1366171))

(assert (=> d!155979 m!1366151))

(assert (=> d!155979 m!1366173))

(assert (=> d!155979 m!1366151))

(assert (=> d!155979 m!1366171))

(assert (=> d!155979 m!1366167))

(declare-fun m!1366265 () Bool)

(assert (=> b!1480386 m!1366265))

(assert (=> b!1480387 m!1366151))

(declare-fun m!1366267 () Bool)

(assert (=> b!1480387 m!1366267))

(assert (=> b!1480283 d!155979))

(declare-fun b!1480399 () Bool)

(declare-fun e!830344 () SeekEntryResult!12205)

(declare-fun e!830347 () SeekEntryResult!12205)

(assert (=> b!1480399 (= e!830344 e!830347)))

(declare-fun c!136587 () Bool)

(declare-fun lt!646370 () (_ BitVec 64))

(assert (=> b!1480399 (= c!136587 (or (= lt!646370 lt!646327) (= (bvadd lt!646370 lt!646370) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!155985 () Bool)

(declare-fun e!830345 () Bool)

(assert (=> d!155985 e!830345))

(declare-fun c!136588 () Bool)

(declare-fun lt!646371 () SeekEntryResult!12205)

(assert (=> d!155985 (= c!136588 (and ((_ is Intermediate!12205) lt!646371) (undefined!13017 lt!646371)))))

(assert (=> d!155985 (= lt!646371 e!830344)))

(declare-fun c!136586 () Bool)

(assert (=> d!155985 (= c!136586 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155985 (= lt!646370 (select (arr!47942 lt!646325) (toIndex!0 lt!646327 mask!2687)))))

(assert (=> d!155985 (validMask!0 mask!2687)))

(assert (=> d!155985 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646327 mask!2687) lt!646327 lt!646325 mask!2687) lt!646371)))

(declare-fun b!1480400 () Bool)

(assert (=> b!1480400 (= e!830347 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!646327 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!646327 lt!646325 mask!2687))))

(declare-fun b!1480401 () Bool)

(assert (=> b!1480401 (and (bvsge (index!51213 lt!646371) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646371) (size!48493 lt!646325)))))

(declare-fun res!1006273 () Bool)

(assert (=> b!1480401 (= res!1006273 (= (select (arr!47942 lt!646325) (index!51213 lt!646371)) lt!646327))))

(declare-fun e!830346 () Bool)

(assert (=> b!1480401 (=> res!1006273 e!830346)))

(declare-fun e!830343 () Bool)

(assert (=> b!1480401 (= e!830343 e!830346)))

(declare-fun b!1480402 () Bool)

(assert (=> b!1480402 (= e!830345 (bvsge (x!132791 lt!646371) #b01111111111111111111111111111110))))

(declare-fun b!1480403 () Bool)

(assert (=> b!1480403 (and (bvsge (index!51213 lt!646371) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646371) (size!48493 lt!646325)))))

(declare-fun res!1006272 () Bool)

(assert (=> b!1480403 (= res!1006272 (= (select (arr!47942 lt!646325) (index!51213 lt!646371)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480403 (=> res!1006272 e!830346)))

(declare-fun b!1480404 () Bool)

(assert (=> b!1480404 (= e!830344 (Intermediate!12205 true (toIndex!0 lt!646327 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1480405 () Bool)

(assert (=> b!1480405 (= e!830347 (Intermediate!12205 false (toIndex!0 lt!646327 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1480406 () Bool)

(assert (=> b!1480406 (= e!830345 e!830343)))

(declare-fun res!1006274 () Bool)

(assert (=> b!1480406 (= res!1006274 (and ((_ is Intermediate!12205) lt!646371) (not (undefined!13017 lt!646371)) (bvslt (x!132791 lt!646371) #b01111111111111111111111111111110) (bvsge (x!132791 lt!646371) #b00000000000000000000000000000000) (bvsge (x!132791 lt!646371) #b00000000000000000000000000000000)))))

(assert (=> b!1480406 (=> (not res!1006274) (not e!830343))))

(declare-fun b!1480407 () Bool)

(assert (=> b!1480407 (and (bvsge (index!51213 lt!646371) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646371) (size!48493 lt!646325)))))

(assert (=> b!1480407 (= e!830346 (= (select (arr!47942 lt!646325) (index!51213 lt!646371)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!155985 c!136586) b!1480404))

(assert (= (and d!155985 (not c!136586)) b!1480399))

(assert (= (and b!1480399 c!136587) b!1480405))

(assert (= (and b!1480399 (not c!136587)) b!1480400))

(assert (= (and d!155985 c!136588) b!1480402))

(assert (= (and d!155985 (not c!136588)) b!1480406))

(assert (= (and b!1480406 res!1006274) b!1480401))

(assert (= (and b!1480401 (not res!1006273)) b!1480403))

(assert (= (and b!1480403 (not res!1006272)) b!1480407))

(assert (=> b!1480400 m!1366195))

(declare-fun m!1366269 () Bool)

(assert (=> b!1480400 m!1366269))

(assert (=> b!1480400 m!1366269))

(declare-fun m!1366271 () Bool)

(assert (=> b!1480400 m!1366271))

(assert (=> d!155985 m!1366195))

(declare-fun m!1366273 () Bool)

(assert (=> d!155985 m!1366273))

(assert (=> d!155985 m!1366167))

(declare-fun m!1366275 () Bool)

(assert (=> b!1480401 m!1366275))

(assert (=> b!1480403 m!1366275))

(assert (=> b!1480407 m!1366275))

(assert (=> b!1480292 d!155985))

(declare-fun d!155987 () Bool)

(declare-fun lt!646373 () (_ BitVec 32))

(declare-fun lt!646372 () (_ BitVec 32))

(assert (=> d!155987 (= lt!646373 (bvmul (bvxor lt!646372 (bvlshr lt!646372 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155987 (= lt!646372 ((_ extract 31 0) (bvand (bvxor lt!646327 (bvlshr lt!646327 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155987 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1006267 (let ((h!35989 ((_ extract 31 0) (bvand (bvxor lt!646327 (bvlshr lt!646327 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132794 (bvmul (bvxor h!35989 (bvlshr h!35989 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132794 (bvlshr x!132794 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1006267 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1006267 #b00000000000000000000000000000000))))))

(assert (=> d!155987 (= (toIndex!0 lt!646327 mask!2687) (bvand (bvxor lt!646373 (bvlshr lt!646373 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1480292 d!155987))

(declare-fun d!155989 () Bool)

(assert (=> d!155989 (= (validKeyInArray!0 (select (arr!47942 a!2862) i!1006)) (and (not (= (select (arr!47942 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47942 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1480281 d!155989))

(declare-fun b!1480412 () Bool)

(declare-fun e!830352 () SeekEntryResult!12205)

(declare-fun e!830355 () SeekEntryResult!12205)

(assert (=> b!1480412 (= e!830352 e!830355)))

(declare-fun c!136591 () Bool)

(declare-fun lt!646377 () (_ BitVec 64))

(assert (=> b!1480412 (= c!136591 (or (= lt!646377 (select (arr!47942 a!2862) j!93)) (= (bvadd lt!646377 lt!646377) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!155993 () Bool)

(declare-fun e!830353 () Bool)

(assert (=> d!155993 e!830353))

(declare-fun c!136592 () Bool)

(declare-fun lt!646378 () SeekEntryResult!12205)

(assert (=> d!155993 (= c!136592 (and ((_ is Intermediate!12205) lt!646378) (undefined!13017 lt!646378)))))

(assert (=> d!155993 (= lt!646378 e!830352)))

(declare-fun c!136590 () Bool)

(assert (=> d!155993 (= c!136590 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155993 (= lt!646377 (select (arr!47942 a!2862) index!646))))

(assert (=> d!155993 (validMask!0 mask!2687)))

(assert (=> d!155993 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47942 a!2862) j!93) a!2862 mask!2687) lt!646378)))

(declare-fun b!1480413 () Bool)

(assert (=> b!1480413 (= e!830355 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47942 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480414 () Bool)

(assert (=> b!1480414 (and (bvsge (index!51213 lt!646378) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646378) (size!48493 a!2862)))))

(declare-fun res!1006278 () Bool)

(assert (=> b!1480414 (= res!1006278 (= (select (arr!47942 a!2862) (index!51213 lt!646378)) (select (arr!47942 a!2862) j!93)))))

(declare-fun e!830354 () Bool)

(assert (=> b!1480414 (=> res!1006278 e!830354)))

(declare-fun e!830351 () Bool)

(assert (=> b!1480414 (= e!830351 e!830354)))

(declare-fun b!1480415 () Bool)

(assert (=> b!1480415 (= e!830353 (bvsge (x!132791 lt!646378) #b01111111111111111111111111111110))))

(declare-fun b!1480416 () Bool)

(assert (=> b!1480416 (and (bvsge (index!51213 lt!646378) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646378) (size!48493 a!2862)))))

(declare-fun res!1006277 () Bool)

(assert (=> b!1480416 (= res!1006277 (= (select (arr!47942 a!2862) (index!51213 lt!646378)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480416 (=> res!1006277 e!830354)))

(declare-fun b!1480417 () Bool)

(assert (=> b!1480417 (= e!830352 (Intermediate!12205 true index!646 x!665))))

(declare-fun b!1480418 () Bool)

(assert (=> b!1480418 (= e!830355 (Intermediate!12205 false index!646 x!665))))

(declare-fun b!1480419 () Bool)

(assert (=> b!1480419 (= e!830353 e!830351)))

(declare-fun res!1006279 () Bool)

(assert (=> b!1480419 (= res!1006279 (and ((_ is Intermediate!12205) lt!646378) (not (undefined!13017 lt!646378)) (bvslt (x!132791 lt!646378) #b01111111111111111111111111111110) (bvsge (x!132791 lt!646378) #b00000000000000000000000000000000) (bvsge (x!132791 lt!646378) x!665)))))

(assert (=> b!1480419 (=> (not res!1006279) (not e!830351))))

(declare-fun b!1480420 () Bool)

(assert (=> b!1480420 (and (bvsge (index!51213 lt!646378) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646378) (size!48493 a!2862)))))

(assert (=> b!1480420 (= e!830354 (= (select (arr!47942 a!2862) (index!51213 lt!646378)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!155993 c!136590) b!1480417))

(assert (= (and d!155993 (not c!136590)) b!1480412))

(assert (= (and b!1480412 c!136591) b!1480418))

(assert (= (and b!1480412 (not c!136591)) b!1480413))

(assert (= (and d!155993 c!136592) b!1480415))

(assert (= (and d!155993 (not c!136592)) b!1480419))

(assert (= (and b!1480419 res!1006279) b!1480414))

(assert (= (and b!1480414 (not res!1006278)) b!1480416))

(assert (= (and b!1480416 (not res!1006277)) b!1480420))

(declare-fun m!1366289 () Bool)

(assert (=> b!1480413 m!1366289))

(assert (=> b!1480413 m!1366289))

(assert (=> b!1480413 m!1366151))

(declare-fun m!1366291 () Bool)

(assert (=> b!1480413 m!1366291))

(assert (=> d!155993 m!1366185))

(assert (=> d!155993 m!1366167))

(declare-fun m!1366293 () Bool)

(assert (=> b!1480414 m!1366293))

(assert (=> b!1480416 m!1366293))

(assert (=> b!1480420 m!1366293))

(assert (=> b!1480285 d!155993))

(declare-fun b!1480433 () Bool)

(declare-fun e!830363 () SeekEntryResult!12205)

(declare-fun e!830366 () SeekEntryResult!12205)

(assert (=> b!1480433 (= e!830363 e!830366)))

(declare-fun c!136600 () Bool)

(declare-fun lt!646383 () (_ BitVec 64))

(assert (=> b!1480433 (= c!136600 (or (= lt!646383 lt!646327) (= (bvadd lt!646383 lt!646383) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!155995 () Bool)

(declare-fun e!830364 () Bool)

(assert (=> d!155995 e!830364))

(declare-fun c!136601 () Bool)

(declare-fun lt!646384 () SeekEntryResult!12205)

(assert (=> d!155995 (= c!136601 (and ((_ is Intermediate!12205) lt!646384) (undefined!13017 lt!646384)))))

(assert (=> d!155995 (= lt!646384 e!830363)))

(declare-fun c!136599 () Bool)

(assert (=> d!155995 (= c!136599 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155995 (= lt!646383 (select (arr!47942 lt!646325) index!646))))

(assert (=> d!155995 (validMask!0 mask!2687)))

(assert (=> d!155995 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646327 lt!646325 mask!2687) lt!646384)))

(declare-fun b!1480434 () Bool)

(assert (=> b!1480434 (= e!830366 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!646327 lt!646325 mask!2687))))

(declare-fun b!1480435 () Bool)

(assert (=> b!1480435 (and (bvsge (index!51213 lt!646384) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646384) (size!48493 lt!646325)))))

(declare-fun res!1006281 () Bool)

(assert (=> b!1480435 (= res!1006281 (= (select (arr!47942 lt!646325) (index!51213 lt!646384)) lt!646327))))

(declare-fun e!830365 () Bool)

(assert (=> b!1480435 (=> res!1006281 e!830365)))

(declare-fun e!830362 () Bool)

(assert (=> b!1480435 (= e!830362 e!830365)))

(declare-fun b!1480436 () Bool)

(assert (=> b!1480436 (= e!830364 (bvsge (x!132791 lt!646384) #b01111111111111111111111111111110))))

(declare-fun b!1480437 () Bool)

(assert (=> b!1480437 (and (bvsge (index!51213 lt!646384) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646384) (size!48493 lt!646325)))))

(declare-fun res!1006280 () Bool)

(assert (=> b!1480437 (= res!1006280 (= (select (arr!47942 lt!646325) (index!51213 lt!646384)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480437 (=> res!1006280 e!830365)))

(declare-fun b!1480438 () Bool)

(assert (=> b!1480438 (= e!830363 (Intermediate!12205 true index!646 x!665))))

(declare-fun b!1480439 () Bool)

(assert (=> b!1480439 (= e!830366 (Intermediate!12205 false index!646 x!665))))

(declare-fun b!1480440 () Bool)

(assert (=> b!1480440 (= e!830364 e!830362)))

(declare-fun res!1006282 () Bool)

(assert (=> b!1480440 (= res!1006282 (and ((_ is Intermediate!12205) lt!646384) (not (undefined!13017 lt!646384)) (bvslt (x!132791 lt!646384) #b01111111111111111111111111111110) (bvsge (x!132791 lt!646384) #b00000000000000000000000000000000) (bvsge (x!132791 lt!646384) x!665)))))

(assert (=> b!1480440 (=> (not res!1006282) (not e!830362))))

(declare-fun b!1480441 () Bool)

(assert (=> b!1480441 (and (bvsge (index!51213 lt!646384) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646384) (size!48493 lt!646325)))))

(assert (=> b!1480441 (= e!830365 (= (select (arr!47942 lt!646325) (index!51213 lt!646384)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!155995 c!136599) b!1480438))

(assert (= (and d!155995 (not c!136599)) b!1480433))

(assert (= (and b!1480433 c!136600) b!1480439))

(assert (= (and b!1480433 (not c!136600)) b!1480434))

(assert (= (and d!155995 c!136601) b!1480436))

(assert (= (and d!155995 (not c!136601)) b!1480440))

(assert (= (and b!1480440 res!1006282) b!1480435))

(assert (= (and b!1480435 (not res!1006281)) b!1480437))

(assert (= (and b!1480437 (not res!1006280)) b!1480441))

(assert (=> b!1480434 m!1366289))

(assert (=> b!1480434 m!1366289))

(declare-fun m!1366295 () Bool)

(assert (=> b!1480434 m!1366295))

(declare-fun m!1366297 () Bool)

(assert (=> d!155995 m!1366297))

(assert (=> d!155995 m!1366167))

(declare-fun m!1366299 () Bool)

(assert (=> b!1480435 m!1366299))

(assert (=> b!1480437 m!1366299))

(assert (=> b!1480441 m!1366299))

(assert (=> b!1480286 d!155995))

(declare-fun b!1480474 () Bool)

(declare-fun e!830387 () Bool)

(declare-fun e!830386 () Bool)

(assert (=> b!1480474 (= e!830387 e!830386)))

(declare-fun c!136613 () Bool)

(assert (=> b!1480474 (= c!136613 (validKeyInArray!0 (select (arr!47942 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67824 () Bool)

(declare-fun call!67827 () Bool)

(assert (=> bm!67824 (= call!67827 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1480475 () Bool)

(declare-fun e!830388 () Bool)

(assert (=> b!1480475 (= e!830388 call!67827)))

(declare-fun b!1480476 () Bool)

(assert (=> b!1480476 (= e!830386 call!67827)))

(declare-fun d!155997 () Bool)

(declare-fun res!1006294 () Bool)

(assert (=> d!155997 (=> res!1006294 e!830387)))

(assert (=> d!155997 (= res!1006294 (bvsge #b00000000000000000000000000000000 (size!48493 a!2862)))))

(assert (=> d!155997 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!830387)))

(declare-fun b!1480477 () Bool)

(assert (=> b!1480477 (= e!830386 e!830388)))

(declare-fun lt!646399 () (_ BitVec 64))

(assert (=> b!1480477 (= lt!646399 (select (arr!47942 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!646398 () Unit!49698)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99335 (_ BitVec 64) (_ BitVec 32)) Unit!49698)

(assert (=> b!1480477 (= lt!646398 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646399 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1480477 (arrayContainsKey!0 a!2862 lt!646399 #b00000000000000000000000000000000)))

(declare-fun lt!646397 () Unit!49698)

(assert (=> b!1480477 (= lt!646397 lt!646398)))

(declare-fun res!1006293 () Bool)

(assert (=> b!1480477 (= res!1006293 (= (seekEntryOrOpen!0 (select (arr!47942 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12205 #b00000000000000000000000000000000)))))

(assert (=> b!1480477 (=> (not res!1006293) (not e!830388))))

(assert (= (and d!155997 (not res!1006294)) b!1480474))

(assert (= (and b!1480474 c!136613) b!1480477))

(assert (= (and b!1480474 (not c!136613)) b!1480476))

(assert (= (and b!1480477 res!1006293) b!1480475))

(assert (= (or b!1480475 b!1480476) bm!67824))

(declare-fun m!1366311 () Bool)

(assert (=> b!1480474 m!1366311))

(assert (=> b!1480474 m!1366311))

(declare-fun m!1366313 () Bool)

(assert (=> b!1480474 m!1366313))

(declare-fun m!1366315 () Bool)

(assert (=> bm!67824 m!1366315))

(assert (=> b!1480477 m!1366311))

(declare-fun m!1366317 () Bool)

(assert (=> b!1480477 m!1366317))

(declare-fun m!1366319 () Bool)

(assert (=> b!1480477 m!1366319))

(assert (=> b!1480477 m!1366311))

(declare-fun m!1366321 () Bool)

(assert (=> b!1480477 m!1366321))

(assert (=> b!1480288 d!155997))

(declare-fun b!1480497 () Bool)

(declare-fun e!830404 () Bool)

(declare-fun call!67830 () Bool)

(assert (=> b!1480497 (= e!830404 call!67830)))

(declare-fun b!1480498 () Bool)

(declare-fun e!830403 () Bool)

(declare-fun e!830405 () Bool)

(assert (=> b!1480498 (= e!830403 e!830405)))

(declare-fun res!1006304 () Bool)

(assert (=> b!1480498 (=> (not res!1006304) (not e!830405))))

(declare-fun e!830402 () Bool)

(assert (=> b!1480498 (= res!1006304 (not e!830402))))

(declare-fun res!1006305 () Bool)

(assert (=> b!1480498 (=> (not res!1006305) (not e!830402))))

(assert (=> b!1480498 (= res!1006305 (validKeyInArray!0 (select (arr!47942 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1480499 () Bool)

(assert (=> b!1480499 (= e!830404 call!67830)))

(declare-fun b!1480500 () Bool)

(declare-fun contains!9923 (List!34623 (_ BitVec 64)) Bool)

(assert (=> b!1480500 (= e!830402 (contains!9923 Nil!34620 (select (arr!47942 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1480501 () Bool)

(assert (=> b!1480501 (= e!830405 e!830404)))

(declare-fun c!136619 () Bool)

(assert (=> b!1480501 (= c!136619 (validKeyInArray!0 (select (arr!47942 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67827 () Bool)

(assert (=> bm!67827 (= call!67830 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!136619 (Cons!34619 (select (arr!47942 a!2862) #b00000000000000000000000000000000) Nil!34620) Nil!34620)))))

(declare-fun d!156001 () Bool)

(declare-fun res!1006306 () Bool)

(assert (=> d!156001 (=> res!1006306 e!830403)))

(assert (=> d!156001 (= res!1006306 (bvsge #b00000000000000000000000000000000 (size!48493 a!2862)))))

(assert (=> d!156001 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34620) e!830403)))

(assert (= (and d!156001 (not res!1006306)) b!1480498))

(assert (= (and b!1480498 res!1006305) b!1480500))

(assert (= (and b!1480498 res!1006304) b!1480501))

(assert (= (and b!1480501 c!136619) b!1480497))

(assert (= (and b!1480501 (not c!136619)) b!1480499))

(assert (= (or b!1480497 b!1480499) bm!67827))

(assert (=> b!1480498 m!1366311))

(assert (=> b!1480498 m!1366311))

(assert (=> b!1480498 m!1366313))

(assert (=> b!1480500 m!1366311))

(assert (=> b!1480500 m!1366311))

(declare-fun m!1366329 () Bool)

(assert (=> b!1480500 m!1366329))

(assert (=> b!1480501 m!1366311))

(assert (=> b!1480501 m!1366311))

(assert (=> b!1480501 m!1366313))

(assert (=> bm!67827 m!1366311))

(declare-fun m!1366331 () Bool)

(assert (=> bm!67827 m!1366331))

(assert (=> b!1480278 d!156001))

(declare-fun d!156007 () Bool)

(assert (=> d!156007 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126312 d!156007))

(declare-fun d!156015 () Bool)

(assert (=> d!156015 (= (array_inv!36887 a!2862) (bvsge (size!48493 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126312 d!156015))

(declare-fun d!156017 () Bool)

(assert (=> d!156017 (= (validKeyInArray!0 (select (arr!47942 a!2862) j!93)) (and (not (= (select (arr!47942 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47942 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1480287 d!156017))

(declare-fun b!1480538 () Bool)

(declare-fun e!830425 () Bool)

(declare-fun e!830424 () Bool)

(assert (=> b!1480538 (= e!830425 e!830424)))

(declare-fun c!136638 () Bool)

(assert (=> b!1480538 (= c!136638 (validKeyInArray!0 (select (arr!47942 a!2862) j!93)))))

(declare-fun bm!67828 () Bool)

(declare-fun call!67831 () Bool)

(assert (=> bm!67828 (= call!67831 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1480539 () Bool)

(declare-fun e!830426 () Bool)

(assert (=> b!1480539 (= e!830426 call!67831)))

(declare-fun b!1480540 () Bool)

(assert (=> b!1480540 (= e!830424 call!67831)))

(declare-fun d!156019 () Bool)

(declare-fun res!1006308 () Bool)

(assert (=> d!156019 (=> res!1006308 e!830425)))

(assert (=> d!156019 (= res!1006308 (bvsge j!93 (size!48493 a!2862)))))

(assert (=> d!156019 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!830425)))

(declare-fun b!1480541 () Bool)

(assert (=> b!1480541 (= e!830424 e!830426)))

(declare-fun lt!646422 () (_ BitVec 64))

(assert (=> b!1480541 (= lt!646422 (select (arr!47942 a!2862) j!93))))

(declare-fun lt!646421 () Unit!49698)

(assert (=> b!1480541 (= lt!646421 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646422 j!93))))

(assert (=> b!1480541 (arrayContainsKey!0 a!2862 lt!646422 #b00000000000000000000000000000000)))

(declare-fun lt!646420 () Unit!49698)

(assert (=> b!1480541 (= lt!646420 lt!646421)))

(declare-fun res!1006307 () Bool)

(assert (=> b!1480541 (= res!1006307 (= (seekEntryOrOpen!0 (select (arr!47942 a!2862) j!93) a!2862 mask!2687) (Found!12205 j!93)))))

(assert (=> b!1480541 (=> (not res!1006307) (not e!830426))))

(assert (= (and d!156019 (not res!1006308)) b!1480538))

(assert (= (and b!1480538 c!136638) b!1480541))

(assert (= (and b!1480538 (not c!136638)) b!1480540))

(assert (= (and b!1480541 res!1006307) b!1480539))

(assert (= (or b!1480539 b!1480540) bm!67828))

(assert (=> b!1480538 m!1366151))

(assert (=> b!1480538 m!1366151))

(assert (=> b!1480538 m!1366159))

(declare-fun m!1366353 () Bool)

(assert (=> bm!67828 m!1366353))

(assert (=> b!1480541 m!1366151))

(declare-fun m!1366355 () Bool)

(assert (=> b!1480541 m!1366355))

(declare-fun m!1366357 () Bool)

(assert (=> b!1480541 m!1366357))

(assert (=> b!1480541 m!1366151))

(assert (=> b!1480541 m!1366189))

(assert (=> b!1480291 d!156019))

(declare-fun d!156021 () Bool)

(assert (=> d!156021 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!646428 () Unit!49698)

(declare-fun choose!38 (array!99335 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49698)

(assert (=> d!156021 (= lt!646428 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156021 (validMask!0 mask!2687)))

(assert (=> d!156021 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!646428)))

(declare-fun bs!42653 () Bool)

(assert (= bs!42653 d!156021))

(assert (=> bs!42653 m!1366187))

(declare-fun m!1366365 () Bool)

(assert (=> bs!42653 m!1366365))

(assert (=> bs!42653 m!1366167))

(assert (=> b!1480291 d!156021))

(declare-fun b!1480610 () Bool)

(declare-fun e!830470 () SeekEntryResult!12205)

(assert (=> b!1480610 (= e!830470 Undefined!12205)))

(declare-fun b!1480611 () Bool)

(declare-fun e!830469 () SeekEntryResult!12205)

(assert (=> b!1480611 (= e!830469 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!646327 lt!646325 mask!2687))))

(declare-fun b!1480612 () Bool)

(declare-fun e!830468 () SeekEntryResult!12205)

(assert (=> b!1480612 (= e!830470 e!830468)))

(declare-fun c!136663 () Bool)

(declare-fun lt!646450 () (_ BitVec 64))

(assert (=> b!1480612 (= c!136663 (= lt!646450 lt!646327))))

(declare-fun b!1480613 () Bool)

(declare-fun c!136661 () Bool)

(assert (=> b!1480613 (= c!136661 (= lt!646450 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480613 (= e!830468 e!830469)))

(declare-fun b!1480614 () Bool)

(assert (=> b!1480614 (= e!830468 (Found!12205 index!646))))

(declare-fun b!1480609 () Bool)

(assert (=> b!1480609 (= e!830469 (MissingVacant!12205 intermediateAfterIndex!19))))

(declare-fun d!156029 () Bool)

(declare-fun lt!646451 () SeekEntryResult!12205)

(assert (=> d!156029 (and (or ((_ is Undefined!12205) lt!646451) (not ((_ is Found!12205) lt!646451)) (and (bvsge (index!51212 lt!646451) #b00000000000000000000000000000000) (bvslt (index!51212 lt!646451) (size!48493 lt!646325)))) (or ((_ is Undefined!12205) lt!646451) ((_ is Found!12205) lt!646451) (not ((_ is MissingVacant!12205) lt!646451)) (not (= (index!51214 lt!646451) intermediateAfterIndex!19)) (and (bvsge (index!51214 lt!646451) #b00000000000000000000000000000000) (bvslt (index!51214 lt!646451) (size!48493 lt!646325)))) (or ((_ is Undefined!12205) lt!646451) (ite ((_ is Found!12205) lt!646451) (= (select (arr!47942 lt!646325) (index!51212 lt!646451)) lt!646327) (and ((_ is MissingVacant!12205) lt!646451) (= (index!51214 lt!646451) intermediateAfterIndex!19) (= (select (arr!47942 lt!646325) (index!51214 lt!646451)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156029 (= lt!646451 e!830470)))

(declare-fun c!136662 () Bool)

(assert (=> d!156029 (= c!136662 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156029 (= lt!646450 (select (arr!47942 lt!646325) index!646))))

(assert (=> d!156029 (validMask!0 mask!2687)))

(assert (=> d!156029 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646327 lt!646325 mask!2687) lt!646451)))

(assert (= (and d!156029 c!136662) b!1480610))

(assert (= (and d!156029 (not c!136662)) b!1480612))

(assert (= (and b!1480612 c!136663) b!1480614))

(assert (= (and b!1480612 (not c!136663)) b!1480613))

(assert (= (and b!1480613 c!136661) b!1480609))

(assert (= (and b!1480613 (not c!136661)) b!1480611))

(assert (=> b!1480611 m!1366289))

(assert (=> b!1480611 m!1366289))

(declare-fun m!1366389 () Bool)

(assert (=> b!1480611 m!1366389))

(declare-fun m!1366391 () Bool)

(assert (=> d!156029 m!1366391))

(declare-fun m!1366393 () Bool)

(assert (=> d!156029 m!1366393))

(assert (=> d!156029 m!1366297))

(assert (=> d!156029 m!1366167))

(assert (=> b!1480290 d!156029))

(declare-fun d!156041 () Bool)

(declare-fun lt!646454 () SeekEntryResult!12205)

(assert (=> d!156041 (and (or ((_ is Undefined!12205) lt!646454) (not ((_ is Found!12205) lt!646454)) (and (bvsge (index!51212 lt!646454) #b00000000000000000000000000000000) (bvslt (index!51212 lt!646454) (size!48493 lt!646325)))) (or ((_ is Undefined!12205) lt!646454) ((_ is Found!12205) lt!646454) (not ((_ is MissingZero!12205) lt!646454)) (and (bvsge (index!51211 lt!646454) #b00000000000000000000000000000000) (bvslt (index!51211 lt!646454) (size!48493 lt!646325)))) (or ((_ is Undefined!12205) lt!646454) ((_ is Found!12205) lt!646454) ((_ is MissingZero!12205) lt!646454) (not ((_ is MissingVacant!12205) lt!646454)) (and (bvsge (index!51214 lt!646454) #b00000000000000000000000000000000) (bvslt (index!51214 lt!646454) (size!48493 lt!646325)))) (or ((_ is Undefined!12205) lt!646454) (ite ((_ is Found!12205) lt!646454) (= (select (arr!47942 lt!646325) (index!51212 lt!646454)) lt!646327) (ite ((_ is MissingZero!12205) lt!646454) (= (select (arr!47942 lt!646325) (index!51211 lt!646454)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12205) lt!646454) (= (select (arr!47942 lt!646325) (index!51214 lt!646454)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!830471 () SeekEntryResult!12205)

(assert (=> d!156041 (= lt!646454 e!830471)))

(declare-fun c!136666 () Bool)

(declare-fun lt!646452 () SeekEntryResult!12205)

(assert (=> d!156041 (= c!136666 (and ((_ is Intermediate!12205) lt!646452) (undefined!13017 lt!646452)))))

(assert (=> d!156041 (= lt!646452 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646327 mask!2687) lt!646327 lt!646325 mask!2687))))

(assert (=> d!156041 (validMask!0 mask!2687)))

(assert (=> d!156041 (= (seekEntryOrOpen!0 lt!646327 lt!646325 mask!2687) lt!646454)))

(declare-fun b!1480615 () Bool)

(declare-fun c!136665 () Bool)

(declare-fun lt!646453 () (_ BitVec 64))

(assert (=> b!1480615 (= c!136665 (= lt!646453 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!830472 () SeekEntryResult!12205)

(declare-fun e!830473 () SeekEntryResult!12205)

(assert (=> b!1480615 (= e!830472 e!830473)))

(declare-fun b!1480616 () Bool)

(assert (=> b!1480616 (= e!830471 e!830472)))

(assert (=> b!1480616 (= lt!646453 (select (arr!47942 lt!646325) (index!51213 lt!646452)))))

(declare-fun c!136664 () Bool)

(assert (=> b!1480616 (= c!136664 (= lt!646453 lt!646327))))

(declare-fun b!1480617 () Bool)

(assert (=> b!1480617 (= e!830473 (seekKeyOrZeroReturnVacant!0 (x!132791 lt!646452) (index!51213 lt!646452) (index!51213 lt!646452) lt!646327 lt!646325 mask!2687))))

(declare-fun b!1480618 () Bool)

(assert (=> b!1480618 (= e!830473 (MissingZero!12205 (index!51213 lt!646452)))))

(declare-fun b!1480619 () Bool)

(assert (=> b!1480619 (= e!830471 Undefined!12205)))

(declare-fun b!1480620 () Bool)

(assert (=> b!1480620 (= e!830472 (Found!12205 (index!51213 lt!646452)))))

(assert (= (and d!156041 c!136666) b!1480619))

(assert (= (and d!156041 (not c!136666)) b!1480616))

(assert (= (and b!1480616 c!136664) b!1480620))

(assert (= (and b!1480616 (not c!136664)) b!1480615))

(assert (= (and b!1480615 c!136665) b!1480618))

(assert (= (and b!1480615 (not c!136665)) b!1480617))

(declare-fun m!1366395 () Bool)

(assert (=> d!156041 m!1366395))

(declare-fun m!1366397 () Bool)

(assert (=> d!156041 m!1366397))

(declare-fun m!1366399 () Bool)

(assert (=> d!156041 m!1366399))

(assert (=> d!156041 m!1366195))

(assert (=> d!156041 m!1366197))

(assert (=> d!156041 m!1366195))

(assert (=> d!156041 m!1366167))

(declare-fun m!1366401 () Bool)

(assert (=> b!1480616 m!1366401))

(declare-fun m!1366403 () Bool)

(assert (=> b!1480617 m!1366403))

(assert (=> b!1480290 d!156041))

(check-sat (not b!1480474) (not d!155995) (not b!1480434) (not b!1480498) (not b!1480538) (not d!156041) (not b!1480501) (not b!1480500) (not b!1480477) (not d!155993) (not b!1480541) (not b!1480400) (not d!155985) (not d!155975) (not b!1480413) (not b!1480617) (not d!155979) (not bm!67824) (not d!156029) (not d!156021) (not bm!67827) (not b!1480365) (not bm!67828) (not b!1480611) (not b!1480387))
(check-sat)
(get-model)

(assert (=> d!155975 d!156007))

(declare-fun d!156077 () Bool)

(assert (=> d!156077 (= (validKeyInArray!0 (select (arr!47942 a!2862) #b00000000000000000000000000000000)) (and (not (= (select (arr!47942 a!2862) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47942 a!2862) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1480498 d!156077))

(assert (=> d!155995 d!156007))

(declare-fun d!156079 () Bool)

(declare-fun lt!646504 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!781 (List!34623) (InoxSet (_ BitVec 64)))

(assert (=> d!156079 (= lt!646504 (select (content!781 Nil!34620) (select (arr!47942 a!2862) #b00000000000000000000000000000000)))))

(declare-fun e!830542 () Bool)

(assert (=> d!156079 (= lt!646504 e!830542)))

(declare-fun res!1006371 () Bool)

(assert (=> d!156079 (=> (not res!1006371) (not e!830542))))

(assert (=> d!156079 (= res!1006371 ((_ is Cons!34619) Nil!34620))))

(assert (=> d!156079 (= (contains!9923 Nil!34620 (select (arr!47942 a!2862) #b00000000000000000000000000000000)) lt!646504)))

(declare-fun b!1480731 () Bool)

(declare-fun e!830543 () Bool)

(assert (=> b!1480731 (= e!830542 e!830543)))

(declare-fun res!1006370 () Bool)

(assert (=> b!1480731 (=> res!1006370 e!830543)))

(assert (=> b!1480731 (= res!1006370 (= (h!35987 Nil!34620) (select (arr!47942 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1480732 () Bool)

(assert (=> b!1480732 (= e!830543 (contains!9923 (t!49324 Nil!34620) (select (arr!47942 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156079 res!1006371) b!1480731))

(assert (= (and b!1480731 (not res!1006370)) b!1480732))

(declare-fun m!1366485 () Bool)

(assert (=> d!156079 m!1366485))

(assert (=> d!156079 m!1366311))

(declare-fun m!1366487 () Bool)

(assert (=> d!156079 m!1366487))

(assert (=> b!1480732 m!1366311))

(declare-fun m!1366489 () Bool)

(assert (=> b!1480732 m!1366489))

(assert (=> b!1480500 d!156079))

(assert (=> b!1480501 d!156077))

(declare-fun b!1480733 () Bool)

(declare-fun e!830545 () SeekEntryResult!12205)

(declare-fun e!830548 () SeekEntryResult!12205)

(assert (=> b!1480733 (= e!830545 e!830548)))

(declare-fun c!136705 () Bool)

(declare-fun lt!646505 () (_ BitVec 64))

(assert (=> b!1480733 (= c!136705 (or (= lt!646505 (select (arr!47942 a!2862) j!93)) (= (bvadd lt!646505 lt!646505) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!156081 () Bool)

(declare-fun e!830546 () Bool)

(assert (=> d!156081 e!830546))

(declare-fun c!136706 () Bool)

(declare-fun lt!646506 () SeekEntryResult!12205)

(assert (=> d!156081 (= c!136706 (and ((_ is Intermediate!12205) lt!646506) (undefined!13017 lt!646506)))))

(assert (=> d!156081 (= lt!646506 e!830545)))

(declare-fun c!136704 () Bool)

(assert (=> d!156081 (= c!136704 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!156081 (= lt!646505 (select (arr!47942 a!2862) (nextIndex!0 (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687)))))

(assert (=> d!156081 (validMask!0 mask!2687)))

(assert (=> d!156081 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47942 a!2862) j!93) a!2862 mask!2687) lt!646506)))

(declare-fun b!1480734 () Bool)

(assert (=> b!1480734 (= e!830548 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2687) (select (arr!47942 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480735 () Bool)

(assert (=> b!1480735 (and (bvsge (index!51213 lt!646506) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646506) (size!48493 a!2862)))))

(declare-fun res!1006373 () Bool)

(assert (=> b!1480735 (= res!1006373 (= (select (arr!47942 a!2862) (index!51213 lt!646506)) (select (arr!47942 a!2862) j!93)))))

(declare-fun e!830547 () Bool)

(assert (=> b!1480735 (=> res!1006373 e!830547)))

(declare-fun e!830544 () Bool)

(assert (=> b!1480735 (= e!830544 e!830547)))

(declare-fun b!1480736 () Bool)

(assert (=> b!1480736 (= e!830546 (bvsge (x!132791 lt!646506) #b01111111111111111111111111111110))))

(declare-fun b!1480737 () Bool)

(assert (=> b!1480737 (and (bvsge (index!51213 lt!646506) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646506) (size!48493 a!2862)))))

(declare-fun res!1006372 () Bool)

(assert (=> b!1480737 (= res!1006372 (= (select (arr!47942 a!2862) (index!51213 lt!646506)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480737 (=> res!1006372 e!830547)))

(declare-fun b!1480738 () Bool)

(assert (=> b!1480738 (= e!830545 (Intermediate!12205 true (nextIndex!0 (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1480739 () Bool)

(assert (=> b!1480739 (= e!830548 (Intermediate!12205 false (nextIndex!0 (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1480740 () Bool)

(assert (=> b!1480740 (= e!830546 e!830544)))

(declare-fun res!1006374 () Bool)

(assert (=> b!1480740 (= res!1006374 (and ((_ is Intermediate!12205) lt!646506) (not (undefined!13017 lt!646506)) (bvslt (x!132791 lt!646506) #b01111111111111111111111111111110) (bvsge (x!132791 lt!646506) #b00000000000000000000000000000000) (bvsge (x!132791 lt!646506) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1480740 (=> (not res!1006374) (not e!830544))))

(declare-fun b!1480741 () Bool)

(assert (=> b!1480741 (and (bvsge (index!51213 lt!646506) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646506) (size!48493 a!2862)))))

(assert (=> b!1480741 (= e!830547 (= (select (arr!47942 a!2862) (index!51213 lt!646506)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!156081 c!136704) b!1480738))

(assert (= (and d!156081 (not c!136704)) b!1480733))

(assert (= (and b!1480733 c!136705) b!1480739))

(assert (= (and b!1480733 (not c!136705)) b!1480734))

(assert (= (and d!156081 c!136706) b!1480736))

(assert (= (and d!156081 (not c!136706)) b!1480740))

(assert (= (and b!1480740 res!1006374) b!1480735))

(assert (= (and b!1480735 (not res!1006373)) b!1480737))

(assert (= (and b!1480737 (not res!1006372)) b!1480741))

(assert (=> b!1480734 m!1366251))

(declare-fun m!1366491 () Bool)

(assert (=> b!1480734 m!1366491))

(assert (=> b!1480734 m!1366491))

(assert (=> b!1480734 m!1366151))

(declare-fun m!1366493 () Bool)

(assert (=> b!1480734 m!1366493))

(assert (=> d!156081 m!1366251))

(declare-fun m!1366495 () Bool)

(assert (=> d!156081 m!1366495))

(assert (=> d!156081 m!1366167))

(declare-fun m!1366497 () Bool)

(assert (=> b!1480735 m!1366497))

(assert (=> b!1480737 m!1366497))

(assert (=> b!1480741 m!1366497))

(assert (=> b!1480365 d!156081))

(declare-fun d!156083 () Bool)

(declare-fun lt!646509 () (_ BitVec 32))

(assert (=> d!156083 (and (bvsge lt!646509 #b00000000000000000000000000000000) (bvslt lt!646509 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156083 (= lt!646509 (choose!52 (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687))))

(assert (=> d!156083 (validMask!0 mask!2687)))

(assert (=> d!156083 (= (nextIndex!0 (toIndex!0 (select (arr!47942 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) lt!646509)))

(declare-fun bs!42656 () Bool)

(assert (= bs!42656 d!156083))

(assert (=> bs!42656 m!1366171))

(declare-fun m!1366499 () Bool)

(assert (=> bs!42656 m!1366499))

(assert (=> bs!42656 m!1366167))

(assert (=> b!1480365 d!156083))

(declare-fun b!1480742 () Bool)

(declare-fun e!830550 () SeekEntryResult!12205)

(declare-fun e!830553 () SeekEntryResult!12205)

(assert (=> b!1480742 (= e!830550 e!830553)))

(declare-fun c!136708 () Bool)

(declare-fun lt!646510 () (_ BitVec 64))

(assert (=> b!1480742 (= c!136708 (or (= lt!646510 lt!646327) (= (bvadd lt!646510 lt!646510) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!156085 () Bool)

(declare-fun e!830551 () Bool)

(assert (=> d!156085 e!830551))

(declare-fun c!136709 () Bool)

(declare-fun lt!646511 () SeekEntryResult!12205)

(assert (=> d!156085 (= c!136709 (and ((_ is Intermediate!12205) lt!646511) (undefined!13017 lt!646511)))))

(assert (=> d!156085 (= lt!646511 e!830550)))

(declare-fun c!136707 () Bool)

(assert (=> d!156085 (= c!136707 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!156085 (= lt!646510 (select (arr!47942 lt!646325) (nextIndex!0 (toIndex!0 lt!646327 mask!2687) #b00000000000000000000000000000000 mask!2687)))))

(assert (=> d!156085 (validMask!0 mask!2687)))

(assert (=> d!156085 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!646327 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!646327 lt!646325 mask!2687) lt!646511)))

(declare-fun b!1480743 () Bool)

(assert (=> b!1480743 (= e!830553 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 lt!646327 mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2687) lt!646327 lt!646325 mask!2687))))

(declare-fun b!1480744 () Bool)

(assert (=> b!1480744 (and (bvsge (index!51213 lt!646511) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646511) (size!48493 lt!646325)))))

(declare-fun res!1006376 () Bool)

(assert (=> b!1480744 (= res!1006376 (= (select (arr!47942 lt!646325) (index!51213 lt!646511)) lt!646327))))

(declare-fun e!830552 () Bool)

(assert (=> b!1480744 (=> res!1006376 e!830552)))

(declare-fun e!830549 () Bool)

(assert (=> b!1480744 (= e!830549 e!830552)))

(declare-fun b!1480745 () Bool)

(assert (=> b!1480745 (= e!830551 (bvsge (x!132791 lt!646511) #b01111111111111111111111111111110))))

(declare-fun b!1480746 () Bool)

(assert (=> b!1480746 (and (bvsge (index!51213 lt!646511) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646511) (size!48493 lt!646325)))))

(declare-fun res!1006375 () Bool)

(assert (=> b!1480746 (= res!1006375 (= (select (arr!47942 lt!646325) (index!51213 lt!646511)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480746 (=> res!1006375 e!830552)))

(declare-fun b!1480747 () Bool)

(assert (=> b!1480747 (= e!830550 (Intermediate!12205 true (nextIndex!0 (toIndex!0 lt!646327 mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1480748 () Bool)

(assert (=> b!1480748 (= e!830553 (Intermediate!12205 false (nextIndex!0 (toIndex!0 lt!646327 mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1480749 () Bool)

(assert (=> b!1480749 (= e!830551 e!830549)))

(declare-fun res!1006377 () Bool)

(assert (=> b!1480749 (= res!1006377 (and ((_ is Intermediate!12205) lt!646511) (not (undefined!13017 lt!646511)) (bvslt (x!132791 lt!646511) #b01111111111111111111111111111110) (bvsge (x!132791 lt!646511) #b00000000000000000000000000000000) (bvsge (x!132791 lt!646511) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1480749 (=> (not res!1006377) (not e!830549))))

(declare-fun b!1480750 () Bool)

(assert (=> b!1480750 (and (bvsge (index!51213 lt!646511) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646511) (size!48493 lt!646325)))))

(assert (=> b!1480750 (= e!830552 (= (select (arr!47942 lt!646325) (index!51213 lt!646511)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!156085 c!136707) b!1480747))

(assert (= (and d!156085 (not c!136707)) b!1480742))

(assert (= (and b!1480742 c!136708) b!1480748))

(assert (= (and b!1480742 (not c!136708)) b!1480743))

(assert (= (and d!156085 c!136709) b!1480745))

(assert (= (and d!156085 (not c!136709)) b!1480749))

(assert (= (and b!1480749 res!1006377) b!1480744))

(assert (= (and b!1480744 (not res!1006376)) b!1480746))

(assert (= (and b!1480746 (not res!1006375)) b!1480750))

(assert (=> b!1480743 m!1366269))

(declare-fun m!1366501 () Bool)

(assert (=> b!1480743 m!1366501))

(assert (=> b!1480743 m!1366501))

(declare-fun m!1366503 () Bool)

(assert (=> b!1480743 m!1366503))

(assert (=> d!156085 m!1366269))

(declare-fun m!1366505 () Bool)

(assert (=> d!156085 m!1366505))

(assert (=> d!156085 m!1366167))

(declare-fun m!1366507 () Bool)

(assert (=> b!1480744 m!1366507))

(assert (=> b!1480746 m!1366507))

(assert (=> b!1480750 m!1366507))

(assert (=> b!1480400 d!156085))

(declare-fun d!156087 () Bool)

(declare-fun lt!646512 () (_ BitVec 32))

(assert (=> d!156087 (and (bvsge lt!646512 #b00000000000000000000000000000000) (bvslt lt!646512 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(assert (=> d!156087 (= lt!646512 (choose!52 (toIndex!0 lt!646327 mask!2687) #b00000000000000000000000000000000 mask!2687))))

(assert (=> d!156087 (validMask!0 mask!2687)))

(assert (=> d!156087 (= (nextIndex!0 (toIndex!0 lt!646327 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!646512)))

(declare-fun bs!42657 () Bool)

(assert (= bs!42657 d!156087))

(assert (=> bs!42657 m!1366195))

(declare-fun m!1366509 () Bool)

(assert (=> bs!42657 m!1366509))

(assert (=> bs!42657 m!1366167))

(assert (=> b!1480400 d!156087))

(assert (=> b!1480474 d!156077))

(declare-fun b!1480751 () Bool)

(declare-fun e!830555 () Bool)

(declare-fun e!830554 () Bool)

(assert (=> b!1480751 (= e!830555 e!830554)))

(declare-fun c!136710 () Bool)

(assert (=> b!1480751 (= c!136710 (validKeyInArray!0 (select (arr!47942 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!67840 () Bool)

(declare-fun call!67843 () Bool)

(assert (=> bm!67840 (= call!67843 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1480752 () Bool)

(declare-fun e!830556 () Bool)

(assert (=> b!1480752 (= e!830556 call!67843)))

(declare-fun b!1480753 () Bool)

(assert (=> b!1480753 (= e!830554 call!67843)))

(declare-fun d!156089 () Bool)

(declare-fun res!1006379 () Bool)

(assert (=> d!156089 (=> res!1006379 e!830555)))

(assert (=> d!156089 (= res!1006379 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!48493 a!2862)))))

(assert (=> d!156089 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687) e!830555)))

(declare-fun b!1480754 () Bool)

(assert (=> b!1480754 (= e!830554 e!830556)))

(declare-fun lt!646515 () (_ BitVec 64))

(assert (=> b!1480754 (= lt!646515 (select (arr!47942 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!646514 () Unit!49698)

(assert (=> b!1480754 (= lt!646514 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646515 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1480754 (arrayContainsKey!0 a!2862 lt!646515 #b00000000000000000000000000000000)))

(declare-fun lt!646513 () Unit!49698)

(assert (=> b!1480754 (= lt!646513 lt!646514)))

(declare-fun res!1006378 () Bool)

(assert (=> b!1480754 (= res!1006378 (= (seekEntryOrOpen!0 (select (arr!47942 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!2862 mask!2687) (Found!12205 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1480754 (=> (not res!1006378) (not e!830556))))

(assert (= (and d!156089 (not res!1006379)) b!1480751))

(assert (= (and b!1480751 c!136710) b!1480754))

(assert (= (and b!1480751 (not c!136710)) b!1480753))

(assert (= (and b!1480754 res!1006378) b!1480752))

(assert (= (or b!1480752 b!1480753) bm!67840))

(declare-fun m!1366511 () Bool)

(assert (=> b!1480751 m!1366511))

(assert (=> b!1480751 m!1366511))

(declare-fun m!1366513 () Bool)

(assert (=> b!1480751 m!1366513))

(declare-fun m!1366515 () Bool)

(assert (=> bm!67840 m!1366515))

(assert (=> b!1480754 m!1366511))

(declare-fun m!1366517 () Bool)

(assert (=> b!1480754 m!1366517))

(declare-fun m!1366519 () Bool)

(assert (=> b!1480754 m!1366519))

(assert (=> b!1480754 m!1366511))

(declare-fun m!1366521 () Bool)

(assert (=> b!1480754 m!1366521))

(assert (=> bm!67824 d!156089))

(declare-fun b!1480756 () Bool)

(declare-fun e!830559 () SeekEntryResult!12205)

(assert (=> b!1480756 (= e!830559 Undefined!12205)))

(declare-fun e!830558 () SeekEntryResult!12205)

(declare-fun b!1480757 () Bool)

(assert (=> b!1480757 (= e!830558 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001) mask!2687) intermediateAfterIndex!19 lt!646327 lt!646325 mask!2687))))

(declare-fun b!1480758 () Bool)

(declare-fun e!830557 () SeekEntryResult!12205)

(assert (=> b!1480758 (= e!830559 e!830557)))

(declare-fun c!136713 () Bool)

(declare-fun lt!646516 () (_ BitVec 64))

(assert (=> b!1480758 (= c!136713 (= lt!646516 lt!646327))))

(declare-fun b!1480759 () Bool)

(declare-fun c!136711 () Bool)

(assert (=> b!1480759 (= c!136711 (= lt!646516 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480759 (= e!830557 e!830558)))

(declare-fun b!1480760 () Bool)

(assert (=> b!1480760 (= e!830557 (Found!12205 (nextIndex!0 index!646 x!665 mask!2687)))))

(declare-fun b!1480755 () Bool)

(assert (=> b!1480755 (= e!830558 (MissingVacant!12205 intermediateAfterIndex!19))))

(declare-fun d!156091 () Bool)

(declare-fun lt!646517 () SeekEntryResult!12205)

(assert (=> d!156091 (and (or ((_ is Undefined!12205) lt!646517) (not ((_ is Found!12205) lt!646517)) (and (bvsge (index!51212 lt!646517) #b00000000000000000000000000000000) (bvslt (index!51212 lt!646517) (size!48493 lt!646325)))) (or ((_ is Undefined!12205) lt!646517) ((_ is Found!12205) lt!646517) (not ((_ is MissingVacant!12205) lt!646517)) (not (= (index!51214 lt!646517) intermediateAfterIndex!19)) (and (bvsge (index!51214 lt!646517) #b00000000000000000000000000000000) (bvslt (index!51214 lt!646517) (size!48493 lt!646325)))) (or ((_ is Undefined!12205) lt!646517) (ite ((_ is Found!12205) lt!646517) (= (select (arr!47942 lt!646325) (index!51212 lt!646517)) lt!646327) (and ((_ is MissingVacant!12205) lt!646517) (= (index!51214 lt!646517) intermediateAfterIndex!19) (= (select (arr!47942 lt!646325) (index!51214 lt!646517)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156091 (= lt!646517 e!830559)))

(declare-fun c!136712 () Bool)

(assert (=> d!156091 (= c!136712 (bvsge (bvadd x!665 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!156091 (= lt!646516 (select (arr!47942 lt!646325) (nextIndex!0 index!646 x!665 mask!2687)))))

(assert (=> d!156091 (validMask!0 mask!2687)))

(assert (=> d!156091 (= (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!646327 lt!646325 mask!2687) lt!646517)))

(assert (= (and d!156091 c!136712) b!1480756))

(assert (= (and d!156091 (not c!136712)) b!1480758))

(assert (= (and b!1480758 c!136713) b!1480760))

(assert (= (and b!1480758 (not c!136713)) b!1480759))

(assert (= (and b!1480759 c!136711) b!1480755))

(assert (= (and b!1480759 (not c!136711)) b!1480757))

(assert (=> b!1480757 m!1366289))

(declare-fun m!1366523 () Bool)

(assert (=> b!1480757 m!1366523))

(assert (=> b!1480757 m!1366523))

(declare-fun m!1366525 () Bool)

(assert (=> b!1480757 m!1366525))

(declare-fun m!1366527 () Bool)

(assert (=> d!156091 m!1366527))

(declare-fun m!1366529 () Bool)

(assert (=> d!156091 m!1366529))

(assert (=> d!156091 m!1366289))

(declare-fun m!1366531 () Bool)

(assert (=> d!156091 m!1366531))

(assert (=> d!156091 m!1366167))

(assert (=> b!1480611 d!156091))

(declare-fun d!156093 () Bool)

(declare-fun lt!646518 () (_ BitVec 32))

(assert (=> d!156093 (and (bvsge lt!646518 #b00000000000000000000000000000000) (bvslt lt!646518 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(assert (=> d!156093 (= lt!646518 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156093 (validMask!0 mask!2687)))

(assert (=> d!156093 (= (nextIndex!0 index!646 x!665 mask!2687) lt!646518)))

(declare-fun bs!42658 () Bool)

(assert (= bs!42658 d!156093))

(declare-fun m!1366533 () Bool)

(assert (=> bs!42658 m!1366533))

(assert (=> bs!42658 m!1366167))

(assert (=> b!1480611 d!156093))

(assert (=> d!156021 d!156019))

(declare-fun d!156095 () Bool)

(assert (=> d!156095 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(assert (=> d!156095 true))

(declare-fun _$72!152 () Unit!49698)

(assert (=> d!156095 (= (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) _$72!152)))

(declare-fun bs!42659 () Bool)

(assert (= bs!42659 d!156095))

(assert (=> bs!42659 m!1366187))

(assert (=> d!156021 d!156095))

(assert (=> d!156021 d!156007))

(declare-fun b!1480762 () Bool)

(declare-fun e!830562 () SeekEntryResult!12205)

(assert (=> b!1480762 (= e!830562 Undefined!12205)))

(declare-fun e!830561 () SeekEntryResult!12205)

(declare-fun b!1480763 () Bool)

(assert (=> b!1480763 (= e!830561 (seekKeyOrZeroReturnVacant!0 (bvadd (x!132791 lt!646361) #b00000000000000000000000000000001) (nextIndex!0 (index!51213 lt!646361) (x!132791 lt!646361) mask!2687) (index!51213 lt!646361) (select (arr!47942 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480764 () Bool)

(declare-fun e!830560 () SeekEntryResult!12205)

(assert (=> b!1480764 (= e!830562 e!830560)))

(declare-fun c!136716 () Bool)

(declare-fun lt!646519 () (_ BitVec 64))

(assert (=> b!1480764 (= c!136716 (= lt!646519 (select (arr!47942 a!2862) j!93)))))

(declare-fun b!1480765 () Bool)

(declare-fun c!136714 () Bool)

(assert (=> b!1480765 (= c!136714 (= lt!646519 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480765 (= e!830560 e!830561)))

(declare-fun b!1480766 () Bool)

(assert (=> b!1480766 (= e!830560 (Found!12205 (index!51213 lt!646361)))))

(declare-fun b!1480761 () Bool)

(assert (=> b!1480761 (= e!830561 (MissingVacant!12205 (index!51213 lt!646361)))))

(declare-fun d!156097 () Bool)

(declare-fun lt!646520 () SeekEntryResult!12205)

(assert (=> d!156097 (and (or ((_ is Undefined!12205) lt!646520) (not ((_ is Found!12205) lt!646520)) (and (bvsge (index!51212 lt!646520) #b00000000000000000000000000000000) (bvslt (index!51212 lt!646520) (size!48493 a!2862)))) (or ((_ is Undefined!12205) lt!646520) ((_ is Found!12205) lt!646520) (not ((_ is MissingVacant!12205) lt!646520)) (not (= (index!51214 lt!646520) (index!51213 lt!646361))) (and (bvsge (index!51214 lt!646520) #b00000000000000000000000000000000) (bvslt (index!51214 lt!646520) (size!48493 a!2862)))) (or ((_ is Undefined!12205) lt!646520) (ite ((_ is Found!12205) lt!646520) (= (select (arr!47942 a!2862) (index!51212 lt!646520)) (select (arr!47942 a!2862) j!93)) (and ((_ is MissingVacant!12205) lt!646520) (= (index!51214 lt!646520) (index!51213 lt!646361)) (= (select (arr!47942 a!2862) (index!51214 lt!646520)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156097 (= lt!646520 e!830562)))

(declare-fun c!136715 () Bool)

(assert (=> d!156097 (= c!136715 (bvsge (x!132791 lt!646361) #b01111111111111111111111111111110))))

(assert (=> d!156097 (= lt!646519 (select (arr!47942 a!2862) (index!51213 lt!646361)))))

(assert (=> d!156097 (validMask!0 mask!2687)))

(assert (=> d!156097 (= (seekKeyOrZeroReturnVacant!0 (x!132791 lt!646361) (index!51213 lt!646361) (index!51213 lt!646361) (select (arr!47942 a!2862) j!93) a!2862 mask!2687) lt!646520)))

(assert (= (and d!156097 c!136715) b!1480762))

(assert (= (and d!156097 (not c!136715)) b!1480764))

(assert (= (and b!1480764 c!136716) b!1480766))

(assert (= (and b!1480764 (not c!136716)) b!1480765))

(assert (= (and b!1480765 c!136714) b!1480761))

(assert (= (and b!1480765 (not c!136714)) b!1480763))

(declare-fun m!1366535 () Bool)

(assert (=> b!1480763 m!1366535))

(assert (=> b!1480763 m!1366535))

(assert (=> b!1480763 m!1366151))

(declare-fun m!1366537 () Bool)

(assert (=> b!1480763 m!1366537))

(declare-fun m!1366539 () Bool)

(assert (=> d!156097 m!1366539))

(declare-fun m!1366541 () Bool)

(assert (=> d!156097 m!1366541))

(assert (=> d!156097 m!1366265))

(assert (=> d!156097 m!1366167))

(assert (=> b!1480387 d!156097))

(declare-fun b!1480767 () Bool)

(declare-fun e!830565 () Bool)

(declare-fun call!67844 () Bool)

(assert (=> b!1480767 (= e!830565 call!67844)))

(declare-fun b!1480768 () Bool)

(declare-fun e!830564 () Bool)

(declare-fun e!830566 () Bool)

(assert (=> b!1480768 (= e!830564 e!830566)))

(declare-fun res!1006380 () Bool)

(assert (=> b!1480768 (=> (not res!1006380) (not e!830566))))

(declare-fun e!830563 () Bool)

(assert (=> b!1480768 (= res!1006380 (not e!830563))))

(declare-fun res!1006381 () Bool)

(assert (=> b!1480768 (=> (not res!1006381) (not e!830563))))

(assert (=> b!1480768 (= res!1006381 (validKeyInArray!0 (select (arr!47942 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1480769 () Bool)

(assert (=> b!1480769 (= e!830565 call!67844)))

(declare-fun b!1480770 () Bool)

(assert (=> b!1480770 (= e!830563 (contains!9923 (ite c!136619 (Cons!34619 (select (arr!47942 a!2862) #b00000000000000000000000000000000) Nil!34620) Nil!34620) (select (arr!47942 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1480771 () Bool)

(assert (=> b!1480771 (= e!830566 e!830565)))

(declare-fun c!136717 () Bool)

(assert (=> b!1480771 (= c!136717 (validKeyInArray!0 (select (arr!47942 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!67841 () Bool)

(assert (=> bm!67841 (= call!67844 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!136717 (Cons!34619 (select (arr!47942 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!136619 (Cons!34619 (select (arr!47942 a!2862) #b00000000000000000000000000000000) Nil!34620) Nil!34620)) (ite c!136619 (Cons!34619 (select (arr!47942 a!2862) #b00000000000000000000000000000000) Nil!34620) Nil!34620))))))

(declare-fun d!156099 () Bool)

(declare-fun res!1006382 () Bool)

(assert (=> d!156099 (=> res!1006382 e!830564)))

(assert (=> d!156099 (= res!1006382 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!48493 a!2862)))))

(assert (=> d!156099 (= (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!136619 (Cons!34619 (select (arr!47942 a!2862) #b00000000000000000000000000000000) Nil!34620) Nil!34620)) e!830564)))

(assert (= (and d!156099 (not res!1006382)) b!1480768))

(assert (= (and b!1480768 res!1006381) b!1480770))

(assert (= (and b!1480768 res!1006380) b!1480771))

(assert (= (and b!1480771 c!136717) b!1480767))

(assert (= (and b!1480771 (not c!136717)) b!1480769))

(assert (= (or b!1480767 b!1480769) bm!67841))

(assert (=> b!1480768 m!1366511))

(assert (=> b!1480768 m!1366511))

(assert (=> b!1480768 m!1366513))

(assert (=> b!1480770 m!1366511))

(assert (=> b!1480770 m!1366511))

(declare-fun m!1366543 () Bool)

(assert (=> b!1480770 m!1366543))

(assert (=> b!1480771 m!1366511))

(assert (=> b!1480771 m!1366511))

(assert (=> b!1480771 m!1366513))

(assert (=> bm!67841 m!1366511))

(declare-fun m!1366545 () Bool)

(assert (=> bm!67841 m!1366545))

(assert (=> bm!67827 d!156099))

(declare-fun b!1480773 () Bool)

(declare-fun e!830569 () SeekEntryResult!12205)

(assert (=> b!1480773 (= e!830569 Undefined!12205)))

(declare-fun e!830568 () SeekEntryResult!12205)

(declare-fun b!1480774 () Bool)

(assert (=> b!1480774 (= e!830568 (seekKeyOrZeroReturnVacant!0 (bvadd (x!132791 lt!646452) #b00000000000000000000000000000001) (nextIndex!0 (index!51213 lt!646452) (x!132791 lt!646452) mask!2687) (index!51213 lt!646452) lt!646327 lt!646325 mask!2687))))

(declare-fun b!1480775 () Bool)

(declare-fun e!830567 () SeekEntryResult!12205)

(assert (=> b!1480775 (= e!830569 e!830567)))

(declare-fun c!136720 () Bool)

(declare-fun lt!646521 () (_ BitVec 64))

(assert (=> b!1480775 (= c!136720 (= lt!646521 lt!646327))))

(declare-fun b!1480776 () Bool)

(declare-fun c!136718 () Bool)

(assert (=> b!1480776 (= c!136718 (= lt!646521 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480776 (= e!830567 e!830568)))

(declare-fun b!1480777 () Bool)

(assert (=> b!1480777 (= e!830567 (Found!12205 (index!51213 lt!646452)))))

(declare-fun b!1480772 () Bool)

(assert (=> b!1480772 (= e!830568 (MissingVacant!12205 (index!51213 lt!646452)))))

(declare-fun d!156101 () Bool)

(declare-fun lt!646522 () SeekEntryResult!12205)

(assert (=> d!156101 (and (or ((_ is Undefined!12205) lt!646522) (not ((_ is Found!12205) lt!646522)) (and (bvsge (index!51212 lt!646522) #b00000000000000000000000000000000) (bvslt (index!51212 lt!646522) (size!48493 lt!646325)))) (or ((_ is Undefined!12205) lt!646522) ((_ is Found!12205) lt!646522) (not ((_ is MissingVacant!12205) lt!646522)) (not (= (index!51214 lt!646522) (index!51213 lt!646452))) (and (bvsge (index!51214 lt!646522) #b00000000000000000000000000000000) (bvslt (index!51214 lt!646522) (size!48493 lt!646325)))) (or ((_ is Undefined!12205) lt!646522) (ite ((_ is Found!12205) lt!646522) (= (select (arr!47942 lt!646325) (index!51212 lt!646522)) lt!646327) (and ((_ is MissingVacant!12205) lt!646522) (= (index!51214 lt!646522) (index!51213 lt!646452)) (= (select (arr!47942 lt!646325) (index!51214 lt!646522)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156101 (= lt!646522 e!830569)))

(declare-fun c!136719 () Bool)

(assert (=> d!156101 (= c!136719 (bvsge (x!132791 lt!646452) #b01111111111111111111111111111110))))

(assert (=> d!156101 (= lt!646521 (select (arr!47942 lt!646325) (index!51213 lt!646452)))))

(assert (=> d!156101 (validMask!0 mask!2687)))

(assert (=> d!156101 (= (seekKeyOrZeroReturnVacant!0 (x!132791 lt!646452) (index!51213 lt!646452) (index!51213 lt!646452) lt!646327 lt!646325 mask!2687) lt!646522)))

(assert (= (and d!156101 c!136719) b!1480773))

(assert (= (and d!156101 (not c!136719)) b!1480775))

(assert (= (and b!1480775 c!136720) b!1480777))

(assert (= (and b!1480775 (not c!136720)) b!1480776))

(assert (= (and b!1480776 c!136718) b!1480772))

(assert (= (and b!1480776 (not c!136718)) b!1480774))

(declare-fun m!1366547 () Bool)

(assert (=> b!1480774 m!1366547))

(assert (=> b!1480774 m!1366547))

(declare-fun m!1366549 () Bool)

(assert (=> b!1480774 m!1366549))

(declare-fun m!1366551 () Bool)

(assert (=> d!156101 m!1366551))

(declare-fun m!1366553 () Bool)

(assert (=> d!156101 m!1366553))

(assert (=> d!156101 m!1366401))

(assert (=> d!156101 m!1366167))

(assert (=> b!1480617 d!156101))

(assert (=> d!156029 d!156007))

(declare-fun b!1480778 () Bool)

(declare-fun e!830571 () SeekEntryResult!12205)

(declare-fun e!830574 () SeekEntryResult!12205)

(assert (=> b!1480778 (= e!830571 e!830574)))

(declare-fun c!136722 () Bool)

(declare-fun lt!646523 () (_ BitVec 64))

(assert (=> b!1480778 (= c!136722 (or (= lt!646523 (select (arr!47942 a!2862) j!93)) (= (bvadd lt!646523 lt!646523) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!156103 () Bool)

(declare-fun e!830572 () Bool)

(assert (=> d!156103 e!830572))

(declare-fun c!136723 () Bool)

(declare-fun lt!646524 () SeekEntryResult!12205)

(assert (=> d!156103 (= c!136723 (and ((_ is Intermediate!12205) lt!646524) (undefined!13017 lt!646524)))))

(assert (=> d!156103 (= lt!646524 e!830571)))

(declare-fun c!136721 () Bool)

(assert (=> d!156103 (= c!136721 (bvsge (bvadd x!665 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!156103 (= lt!646523 (select (arr!47942 a!2862) (nextIndex!0 index!646 x!665 mask!2687)))))

(assert (=> d!156103 (validMask!0 mask!2687)))

(assert (=> d!156103 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47942 a!2862) j!93) a!2862 mask!2687) lt!646524)))

(declare-fun b!1480779 () Bool)

(assert (=> b!1480779 (= e!830574 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001) mask!2687) (select (arr!47942 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480780 () Bool)

(assert (=> b!1480780 (and (bvsge (index!51213 lt!646524) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646524) (size!48493 a!2862)))))

(declare-fun res!1006384 () Bool)

(assert (=> b!1480780 (= res!1006384 (= (select (arr!47942 a!2862) (index!51213 lt!646524)) (select (arr!47942 a!2862) j!93)))))

(declare-fun e!830573 () Bool)

(assert (=> b!1480780 (=> res!1006384 e!830573)))

(declare-fun e!830570 () Bool)

(assert (=> b!1480780 (= e!830570 e!830573)))

(declare-fun b!1480781 () Bool)

(assert (=> b!1480781 (= e!830572 (bvsge (x!132791 lt!646524) #b01111111111111111111111111111110))))

(declare-fun b!1480782 () Bool)

(assert (=> b!1480782 (and (bvsge (index!51213 lt!646524) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646524) (size!48493 a!2862)))))

(declare-fun res!1006383 () Bool)

(assert (=> b!1480782 (= res!1006383 (= (select (arr!47942 a!2862) (index!51213 lt!646524)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480782 (=> res!1006383 e!830573)))

(declare-fun b!1480783 () Bool)

(assert (=> b!1480783 (= e!830571 (Intermediate!12205 true (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001)))))

(declare-fun b!1480784 () Bool)

(assert (=> b!1480784 (= e!830574 (Intermediate!12205 false (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001)))))

(declare-fun b!1480785 () Bool)

(assert (=> b!1480785 (= e!830572 e!830570)))

(declare-fun res!1006385 () Bool)

(assert (=> b!1480785 (= res!1006385 (and ((_ is Intermediate!12205) lt!646524) (not (undefined!13017 lt!646524)) (bvslt (x!132791 lt!646524) #b01111111111111111111111111111110) (bvsge (x!132791 lt!646524) #b00000000000000000000000000000000) (bvsge (x!132791 lt!646524) (bvadd x!665 #b00000000000000000000000000000001))))))

(assert (=> b!1480785 (=> (not res!1006385) (not e!830570))))

(declare-fun b!1480786 () Bool)

(assert (=> b!1480786 (and (bvsge (index!51213 lt!646524) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646524) (size!48493 a!2862)))))

(assert (=> b!1480786 (= e!830573 (= (select (arr!47942 a!2862) (index!51213 lt!646524)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!156103 c!136721) b!1480783))

(assert (= (and d!156103 (not c!136721)) b!1480778))

(assert (= (and b!1480778 c!136722) b!1480784))

(assert (= (and b!1480778 (not c!136722)) b!1480779))

(assert (= (and d!156103 c!136723) b!1480781))

(assert (= (and d!156103 (not c!136723)) b!1480785))

(assert (= (and b!1480785 res!1006385) b!1480780))

(assert (= (and b!1480780 (not res!1006384)) b!1480782))

(assert (= (and b!1480782 (not res!1006383)) b!1480786))

(assert (=> b!1480779 m!1366289))

(assert (=> b!1480779 m!1366523))

(assert (=> b!1480779 m!1366523))

(assert (=> b!1480779 m!1366151))

(declare-fun m!1366555 () Bool)

(assert (=> b!1480779 m!1366555))

(assert (=> d!156103 m!1366289))

(declare-fun m!1366557 () Bool)

(assert (=> d!156103 m!1366557))

(assert (=> d!156103 m!1366167))

(declare-fun m!1366559 () Bool)

(assert (=> b!1480780 m!1366559))

(assert (=> b!1480782 m!1366559))

(assert (=> b!1480786 m!1366559))

(assert (=> b!1480413 d!156103))

(assert (=> b!1480413 d!156093))

(declare-fun d!156105 () Bool)

(assert (=> d!156105 (arrayContainsKey!0 a!2862 lt!646399 #b00000000000000000000000000000000)))

(declare-fun lt!646527 () Unit!49698)

(declare-fun choose!13 (array!99335 (_ BitVec 64) (_ BitVec 32)) Unit!49698)

(assert (=> d!156105 (= lt!646527 (choose!13 a!2862 lt!646399 #b00000000000000000000000000000000))))

(assert (=> d!156105 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!156105 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646399 #b00000000000000000000000000000000) lt!646527)))

(declare-fun bs!42660 () Bool)

(assert (= bs!42660 d!156105))

(assert (=> bs!42660 m!1366319))

(declare-fun m!1366561 () Bool)

(assert (=> bs!42660 m!1366561))

(assert (=> b!1480477 d!156105))

(declare-fun d!156107 () Bool)

(declare-fun res!1006390 () Bool)

(declare-fun e!830579 () Bool)

(assert (=> d!156107 (=> res!1006390 e!830579)))

(assert (=> d!156107 (= res!1006390 (= (select (arr!47942 a!2862) #b00000000000000000000000000000000) lt!646399))))

(assert (=> d!156107 (= (arrayContainsKey!0 a!2862 lt!646399 #b00000000000000000000000000000000) e!830579)))

(declare-fun b!1480791 () Bool)

(declare-fun e!830580 () Bool)

(assert (=> b!1480791 (= e!830579 e!830580)))

(declare-fun res!1006391 () Bool)

(assert (=> b!1480791 (=> (not res!1006391) (not e!830580))))

(assert (=> b!1480791 (= res!1006391 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!48493 a!2862)))))

(declare-fun b!1480792 () Bool)

(assert (=> b!1480792 (= e!830580 (arrayContainsKey!0 a!2862 lt!646399 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!156107 (not res!1006390)) b!1480791))

(assert (= (and b!1480791 res!1006391) b!1480792))

(assert (=> d!156107 m!1366311))

(declare-fun m!1366563 () Bool)

(assert (=> b!1480792 m!1366563))

(assert (=> b!1480477 d!156107))

(declare-fun d!156109 () Bool)

(declare-fun lt!646530 () SeekEntryResult!12205)

(assert (=> d!156109 (and (or ((_ is Undefined!12205) lt!646530) (not ((_ is Found!12205) lt!646530)) (and (bvsge (index!51212 lt!646530) #b00000000000000000000000000000000) (bvslt (index!51212 lt!646530) (size!48493 a!2862)))) (or ((_ is Undefined!12205) lt!646530) ((_ is Found!12205) lt!646530) (not ((_ is MissingZero!12205) lt!646530)) (and (bvsge (index!51211 lt!646530) #b00000000000000000000000000000000) (bvslt (index!51211 lt!646530) (size!48493 a!2862)))) (or ((_ is Undefined!12205) lt!646530) ((_ is Found!12205) lt!646530) ((_ is MissingZero!12205) lt!646530) (not ((_ is MissingVacant!12205) lt!646530)) (and (bvsge (index!51214 lt!646530) #b00000000000000000000000000000000) (bvslt (index!51214 lt!646530) (size!48493 a!2862)))) (or ((_ is Undefined!12205) lt!646530) (ite ((_ is Found!12205) lt!646530) (= (select (arr!47942 a!2862) (index!51212 lt!646530)) (select (arr!47942 a!2862) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!12205) lt!646530) (= (select (arr!47942 a!2862) (index!51211 lt!646530)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12205) lt!646530) (= (select (arr!47942 a!2862) (index!51214 lt!646530)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!830581 () SeekEntryResult!12205)

(assert (=> d!156109 (= lt!646530 e!830581)))

(declare-fun c!136726 () Bool)

(declare-fun lt!646528 () SeekEntryResult!12205)

(assert (=> d!156109 (= c!136726 (and ((_ is Intermediate!12205) lt!646528) (undefined!13017 lt!646528)))))

(assert (=> d!156109 (= lt!646528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47942 a!2862) #b00000000000000000000000000000000) mask!2687) (select (arr!47942 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687))))

(assert (=> d!156109 (validMask!0 mask!2687)))

(assert (=> d!156109 (= (seekEntryOrOpen!0 (select (arr!47942 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) lt!646530)))

(declare-fun b!1480793 () Bool)

(declare-fun c!136725 () Bool)

(declare-fun lt!646529 () (_ BitVec 64))

(assert (=> b!1480793 (= c!136725 (= lt!646529 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!830582 () SeekEntryResult!12205)

(declare-fun e!830583 () SeekEntryResult!12205)

(assert (=> b!1480793 (= e!830582 e!830583)))

(declare-fun b!1480794 () Bool)

(assert (=> b!1480794 (= e!830581 e!830582)))

(assert (=> b!1480794 (= lt!646529 (select (arr!47942 a!2862) (index!51213 lt!646528)))))

(declare-fun c!136724 () Bool)

(assert (=> b!1480794 (= c!136724 (= lt!646529 (select (arr!47942 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1480795 () Bool)

(assert (=> b!1480795 (= e!830583 (seekKeyOrZeroReturnVacant!0 (x!132791 lt!646528) (index!51213 lt!646528) (index!51213 lt!646528) (select (arr!47942 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687))))

(declare-fun b!1480796 () Bool)

(assert (=> b!1480796 (= e!830583 (MissingZero!12205 (index!51213 lt!646528)))))

(declare-fun b!1480797 () Bool)

(assert (=> b!1480797 (= e!830581 Undefined!12205)))

(declare-fun b!1480798 () Bool)

(assert (=> b!1480798 (= e!830582 (Found!12205 (index!51213 lt!646528)))))

(assert (= (and d!156109 c!136726) b!1480797))

(assert (= (and d!156109 (not c!136726)) b!1480794))

(assert (= (and b!1480794 c!136724) b!1480798))

(assert (= (and b!1480794 (not c!136724)) b!1480793))

(assert (= (and b!1480793 c!136725) b!1480796))

(assert (= (and b!1480793 (not c!136725)) b!1480795))

(declare-fun m!1366565 () Bool)

(assert (=> d!156109 m!1366565))

(declare-fun m!1366567 () Bool)

(assert (=> d!156109 m!1366567))

(declare-fun m!1366569 () Bool)

(assert (=> d!156109 m!1366569))

(declare-fun m!1366571 () Bool)

(assert (=> d!156109 m!1366571))

(assert (=> d!156109 m!1366311))

(declare-fun m!1366573 () Bool)

(assert (=> d!156109 m!1366573))

(assert (=> d!156109 m!1366311))

(assert (=> d!156109 m!1366571))

(assert (=> d!156109 m!1366167))

(declare-fun m!1366575 () Bool)

(assert (=> b!1480794 m!1366575))

(assert (=> b!1480795 m!1366311))

(declare-fun m!1366577 () Bool)

(assert (=> b!1480795 m!1366577))

(assert (=> b!1480477 d!156109))

(assert (=> d!155985 d!156007))

(declare-fun b!1480799 () Bool)

(declare-fun e!830585 () SeekEntryResult!12205)

(declare-fun e!830588 () SeekEntryResult!12205)

(assert (=> b!1480799 (= e!830585 e!830588)))

(declare-fun c!136728 () Bool)

(declare-fun lt!646531 () (_ BitVec 64))

(assert (=> b!1480799 (= c!136728 (or (= lt!646531 lt!646327) (= (bvadd lt!646531 lt!646531) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!156111 () Bool)

(declare-fun e!830586 () Bool)

(assert (=> d!156111 e!830586))

(declare-fun c!136729 () Bool)

(declare-fun lt!646532 () SeekEntryResult!12205)

(assert (=> d!156111 (= c!136729 (and ((_ is Intermediate!12205) lt!646532) (undefined!13017 lt!646532)))))

(assert (=> d!156111 (= lt!646532 e!830585)))

(declare-fun c!136727 () Bool)

(assert (=> d!156111 (= c!136727 (bvsge (bvadd x!665 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!156111 (= lt!646531 (select (arr!47942 lt!646325) (nextIndex!0 index!646 x!665 mask!2687)))))

(assert (=> d!156111 (validMask!0 mask!2687)))

(assert (=> d!156111 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!646327 lt!646325 mask!2687) lt!646532)))

(declare-fun b!1480800 () Bool)

(assert (=> b!1480800 (= e!830588 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001) mask!2687) lt!646327 lt!646325 mask!2687))))

(declare-fun b!1480801 () Bool)

(assert (=> b!1480801 (and (bvsge (index!51213 lt!646532) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646532) (size!48493 lt!646325)))))

(declare-fun res!1006393 () Bool)

(assert (=> b!1480801 (= res!1006393 (= (select (arr!47942 lt!646325) (index!51213 lt!646532)) lt!646327))))

(declare-fun e!830587 () Bool)

(assert (=> b!1480801 (=> res!1006393 e!830587)))

(declare-fun e!830584 () Bool)

(assert (=> b!1480801 (= e!830584 e!830587)))

(declare-fun b!1480802 () Bool)

(assert (=> b!1480802 (= e!830586 (bvsge (x!132791 lt!646532) #b01111111111111111111111111111110))))

(declare-fun b!1480803 () Bool)

(assert (=> b!1480803 (and (bvsge (index!51213 lt!646532) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646532) (size!48493 lt!646325)))))

(declare-fun res!1006392 () Bool)

(assert (=> b!1480803 (= res!1006392 (= (select (arr!47942 lt!646325) (index!51213 lt!646532)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480803 (=> res!1006392 e!830587)))

(declare-fun b!1480804 () Bool)

(assert (=> b!1480804 (= e!830585 (Intermediate!12205 true (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001)))))

(declare-fun b!1480805 () Bool)

(assert (=> b!1480805 (= e!830588 (Intermediate!12205 false (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001)))))

(declare-fun b!1480806 () Bool)

(assert (=> b!1480806 (= e!830586 e!830584)))

(declare-fun res!1006394 () Bool)

(assert (=> b!1480806 (= res!1006394 (and ((_ is Intermediate!12205) lt!646532) (not (undefined!13017 lt!646532)) (bvslt (x!132791 lt!646532) #b01111111111111111111111111111110) (bvsge (x!132791 lt!646532) #b00000000000000000000000000000000) (bvsge (x!132791 lt!646532) (bvadd x!665 #b00000000000000000000000000000001))))))

(assert (=> b!1480806 (=> (not res!1006394) (not e!830584))))

(declare-fun b!1480807 () Bool)

(assert (=> b!1480807 (and (bvsge (index!51213 lt!646532) #b00000000000000000000000000000000) (bvslt (index!51213 lt!646532) (size!48493 lt!646325)))))

(assert (=> b!1480807 (= e!830587 (= (select (arr!47942 lt!646325) (index!51213 lt!646532)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!156111 c!136727) b!1480804))

(assert (= (and d!156111 (not c!136727)) b!1480799))

(assert (= (and b!1480799 c!136728) b!1480805))

(assert (= (and b!1480799 (not c!136728)) b!1480800))

(assert (= (and d!156111 c!136729) b!1480802))

(assert (= (and d!156111 (not c!136729)) b!1480806))

(assert (= (and b!1480806 res!1006394) b!1480801))

(assert (= (and b!1480801 (not res!1006393)) b!1480803))

(assert (= (and b!1480803 (not res!1006392)) b!1480807))

(assert (=> b!1480800 m!1366289))

(assert (=> b!1480800 m!1366523))

(assert (=> b!1480800 m!1366523))

(declare-fun m!1366579 () Bool)

(assert (=> b!1480800 m!1366579))

(assert (=> d!156111 m!1366289))

(assert (=> d!156111 m!1366531))

(assert (=> d!156111 m!1366167))

(declare-fun m!1366581 () Bool)

(assert (=> b!1480801 m!1366581))

(assert (=> b!1480803 m!1366581))

(assert (=> b!1480807 m!1366581))

(assert (=> b!1480434 d!156111))

(assert (=> b!1480434 d!156093))

(assert (=> b!1480538 d!156017))

(declare-fun b!1480808 () Bool)

(declare-fun e!830590 () Bool)

(declare-fun e!830589 () Bool)

(assert (=> b!1480808 (= e!830590 e!830589)))

(declare-fun c!136730 () Bool)

(assert (=> b!1480808 (= c!136730 (validKeyInArray!0 (select (arr!47942 a!2862) (bvadd j!93 #b00000000000000000000000000000001))))))

(declare-fun call!67845 () Bool)

(declare-fun bm!67842 () Bool)

(assert (=> bm!67842 (= call!67845 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1480809 () Bool)

(declare-fun e!830591 () Bool)

(assert (=> b!1480809 (= e!830591 call!67845)))

(declare-fun b!1480810 () Bool)

(assert (=> b!1480810 (= e!830589 call!67845)))

(declare-fun d!156113 () Bool)

(declare-fun res!1006396 () Bool)

(assert (=> d!156113 (=> res!1006396 e!830590)))

(assert (=> d!156113 (= res!1006396 (bvsge (bvadd j!93 #b00000000000000000000000000000001) (size!48493 a!2862)))))

(assert (=> d!156113 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687) e!830590)))

(declare-fun b!1480811 () Bool)

(assert (=> b!1480811 (= e!830589 e!830591)))

(declare-fun lt!646535 () (_ BitVec 64))

(assert (=> b!1480811 (= lt!646535 (select (arr!47942 a!2862) (bvadd j!93 #b00000000000000000000000000000001)))))

(declare-fun lt!646534 () Unit!49698)

(assert (=> b!1480811 (= lt!646534 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646535 (bvadd j!93 #b00000000000000000000000000000001)))))

(assert (=> b!1480811 (arrayContainsKey!0 a!2862 lt!646535 #b00000000000000000000000000000000)))

(declare-fun lt!646533 () Unit!49698)

(assert (=> b!1480811 (= lt!646533 lt!646534)))

(declare-fun res!1006395 () Bool)

(assert (=> b!1480811 (= res!1006395 (= (seekEntryOrOpen!0 (select (arr!47942 a!2862) (bvadd j!93 #b00000000000000000000000000000001)) a!2862 mask!2687) (Found!12205 (bvadd j!93 #b00000000000000000000000000000001))))))

(assert (=> b!1480811 (=> (not res!1006395) (not e!830591))))

(assert (= (and d!156113 (not res!1006396)) b!1480808))

(assert (= (and b!1480808 c!136730) b!1480811))

(assert (= (and b!1480808 (not c!136730)) b!1480810))

(assert (= (and b!1480811 res!1006395) b!1480809))

(assert (= (or b!1480809 b!1480810) bm!67842))

(declare-fun m!1366583 () Bool)

(assert (=> b!1480808 m!1366583))

(assert (=> b!1480808 m!1366583))

(declare-fun m!1366585 () Bool)

(assert (=> b!1480808 m!1366585))

(declare-fun m!1366587 () Bool)

(assert (=> bm!67842 m!1366587))

(assert (=> b!1480811 m!1366583))

(declare-fun m!1366589 () Bool)

(assert (=> b!1480811 m!1366589))

(declare-fun m!1366591 () Bool)

(assert (=> b!1480811 m!1366591))

(assert (=> b!1480811 m!1366583))

(declare-fun m!1366593 () Bool)

(assert (=> b!1480811 m!1366593))

(assert (=> bm!67828 d!156113))

(assert (=> d!155979 d!155975))

(assert (=> d!155979 d!155977))

(assert (=> d!155979 d!156007))

(declare-fun d!156115 () Bool)

(assert (=> d!156115 (arrayContainsKey!0 a!2862 lt!646422 #b00000000000000000000000000000000)))

(declare-fun lt!646536 () Unit!49698)

(assert (=> d!156115 (= lt!646536 (choose!13 a!2862 lt!646422 j!93))))

(assert (=> d!156115 (bvsge j!93 #b00000000000000000000000000000000)))

(assert (=> d!156115 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646422 j!93) lt!646536)))

(declare-fun bs!42661 () Bool)

(assert (= bs!42661 d!156115))

(assert (=> bs!42661 m!1366357))

(declare-fun m!1366595 () Bool)

(assert (=> bs!42661 m!1366595))

(assert (=> b!1480541 d!156115))

(declare-fun d!156117 () Bool)

(declare-fun res!1006397 () Bool)

(declare-fun e!830592 () Bool)

(assert (=> d!156117 (=> res!1006397 e!830592)))

(assert (=> d!156117 (= res!1006397 (= (select (arr!47942 a!2862) #b00000000000000000000000000000000) lt!646422))))

(assert (=> d!156117 (= (arrayContainsKey!0 a!2862 lt!646422 #b00000000000000000000000000000000) e!830592)))

(declare-fun b!1480812 () Bool)

(declare-fun e!830593 () Bool)

(assert (=> b!1480812 (= e!830592 e!830593)))

(declare-fun res!1006398 () Bool)

(assert (=> b!1480812 (=> (not res!1006398) (not e!830593))))

(assert (=> b!1480812 (= res!1006398 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!48493 a!2862)))))

(declare-fun b!1480813 () Bool)

(assert (=> b!1480813 (= e!830593 (arrayContainsKey!0 a!2862 lt!646422 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!156117 (not res!1006397)) b!1480812))

(assert (= (and b!1480812 res!1006398) b!1480813))

(assert (=> d!156117 m!1366311))

(declare-fun m!1366597 () Bool)

(assert (=> b!1480813 m!1366597))

(assert (=> b!1480541 d!156117))

(assert (=> b!1480541 d!155979))

(assert (=> d!156041 d!155985))

(assert (=> d!156041 d!155987))

(assert (=> d!156041 d!156007))

(assert (=> d!155993 d!156007))

(check-sat (not b!1480811) (not b!1480774) (not d!156101) (not d!156085) (not d!156093) (not b!1480763) (not b!1480800) (not d!156083) (not b!1480779) (not d!156091) (not b!1480768) (not bm!67840) (not b!1480771) (not d!156115) (not d!156111) (not d!156105) (not b!1480757) (not d!156103) (not b!1480743) (not b!1480795) (not b!1480751) (not d!156087) (not b!1480732) (not d!156097) (not bm!67841) (not d!156081) (not b!1480734) (not b!1480808) (not b!1480813) (not b!1480792) (not d!156109) (not d!156095) (not bm!67842) (not b!1480754) (not b!1480770) (not d!156079))
(check-sat)
