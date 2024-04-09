; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126314 () Bool)

(assert start!126314)

(declare-fun b!1480329 () Bool)

(declare-fun res!1006252 () Bool)

(declare-fun e!830310 () Bool)

(assert (=> b!1480329 (=> (not res!1006252) (not e!830310))))

(declare-datatypes ((array!99337 0))(
  ( (array!99338 (arr!47943 (Array (_ BitVec 32) (_ BitVec 64))) (size!48494 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99337)

(declare-datatypes ((List!34624 0))(
  ( (Nil!34621) (Cons!34620 (h!35988 (_ BitVec 64)) (t!49325 List!34624)) )
))
(declare-fun arrayNoDuplicates!0 (array!99337 (_ BitVec 32) List!34624) Bool)

(assert (=> b!1480329 (= res!1006252 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34621))))

(declare-fun b!1480330 () Bool)

(declare-fun e!830308 () Bool)

(declare-fun e!830309 () Bool)

(assert (=> b!1480330 (= e!830308 e!830309)))

(declare-fun res!1006248 () Bool)

(assert (=> b!1480330 (=> (not res!1006248) (not e!830309))))

(declare-datatypes ((SeekEntryResult!12206 0))(
  ( (MissingZero!12206 (index!51215 (_ BitVec 32))) (Found!12206 (index!51216 (_ BitVec 32))) (Intermediate!12206 (undefined!13018 Bool) (index!51217 (_ BitVec 32)) (x!132792 (_ BitVec 32))) (Undefined!12206) (MissingVacant!12206 (index!51218 (_ BitVec 32))) )
))
(declare-fun lt!646338 () SeekEntryResult!12206)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99337 (_ BitVec 32)) SeekEntryResult!12206)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1480330 (= res!1006248 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687) (select (arr!47943 a!2862) j!93) a!2862 mask!2687) lt!646338))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1480330 (= lt!646338 (Intermediate!12206 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!646339 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1480332 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!646340 () SeekEntryResult!12206)

(declare-fun lt!646342 () array!99337)

(declare-fun e!830306 () Bool)

(assert (=> b!1480332 (= e!830306 (= lt!646340 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646339 lt!646342 mask!2687)))))

(declare-fun b!1480333 () Bool)

(declare-fun res!1006257 () Bool)

(declare-fun e!830307 () Bool)

(assert (=> b!1480333 (=> (not res!1006257) (not e!830307))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1480333 (= res!1006257 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1480334 () Bool)

(assert (=> b!1480334 (= e!830309 e!830307)))

(declare-fun res!1006243 () Bool)

(assert (=> b!1480334 (=> (not res!1006243) (not e!830307))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1480334 (= res!1006243 (= lt!646340 (Intermediate!12206 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1480334 (= lt!646340 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646339 mask!2687) lt!646339 lt!646342 mask!2687))))

(assert (=> b!1480334 (= lt!646339 (select (store (arr!47943 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1480335 () Bool)

(declare-fun res!1006250 () Bool)

(assert (=> b!1480335 (=> (not res!1006250) (not e!830309))))

(assert (=> b!1480335 (= res!1006250 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47943 a!2862) j!93) a!2862 mask!2687) lt!646338))))

(declare-fun b!1480336 () Bool)

(declare-fun res!1006249 () Bool)

(assert (=> b!1480336 (=> (not res!1006249) (not e!830310))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99337 (_ BitVec 32)) Bool)

(assert (=> b!1480336 (= res!1006249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1480337 () Bool)

(declare-fun res!1006255 () Bool)

(declare-fun e!830312 () Bool)

(assert (=> b!1480337 (=> (not res!1006255) (not e!830312))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99337 (_ BitVec 32)) SeekEntryResult!12206)

(assert (=> b!1480337 (= res!1006255 (= (seekEntryOrOpen!0 (select (arr!47943 a!2862) j!93) a!2862 mask!2687) (Found!12206 j!93)))))

(declare-fun b!1480338 () Bool)

(assert (=> b!1480338 (= e!830312 (or (= (select (arr!47943 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47943 a!2862) intermediateBeforeIndex!19) (select (arr!47943 a!2862) j!93))))))

(declare-fun b!1480339 () Bool)

(declare-fun res!1006256 () Bool)

(assert (=> b!1480339 (=> (not res!1006256) (not e!830310))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1480339 (= res!1006256 (validKeyInArray!0 (select (arr!47943 a!2862) i!1006)))))

(declare-fun b!1480340 () Bool)

(declare-fun res!1006254 () Bool)

(assert (=> b!1480340 (=> (not res!1006254) (not e!830310))))

(assert (=> b!1480340 (= res!1006254 (and (= (size!48494 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48494 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48494 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1480341 () Bool)

(declare-fun res!1006246 () Bool)

(assert (=> b!1480341 (=> (not res!1006246) (not e!830310))))

(assert (=> b!1480341 (= res!1006246 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48494 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48494 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48494 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1006244 () Bool)

(assert (=> start!126314 (=> (not res!1006244) (not e!830310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126314 (= res!1006244 (validMask!0 mask!2687))))

(assert (=> start!126314 e!830310))

(assert (=> start!126314 true))

(declare-fun array_inv!36888 (array!99337) Bool)

(assert (=> start!126314 (array_inv!36888 a!2862)))

(declare-fun b!1480331 () Bool)

(declare-fun res!1006245 () Bool)

(assert (=> b!1480331 (=> (not res!1006245) (not e!830307))))

(assert (=> b!1480331 (= res!1006245 e!830306)))

(declare-fun c!136565 () Bool)

(assert (=> b!1480331 (= c!136565 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1480342 () Bool)

(assert (=> b!1480342 (= e!830307 (not (or (and (= (select (arr!47943 a!2862) index!646) (select (store (arr!47943 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47943 a!2862) index!646) (select (arr!47943 a!2862) j!93))) (= (select (arr!47943 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= index!646 intermediateAfterIndex!19))))))

(assert (=> b!1480342 e!830312))

(declare-fun res!1006247 () Bool)

(assert (=> b!1480342 (=> (not res!1006247) (not e!830312))))

(assert (=> b!1480342 (= res!1006247 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49700 0))(
  ( (Unit!49701) )
))
(declare-fun lt!646341 () Unit!49700)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99337 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49700)

(assert (=> b!1480342 (= lt!646341 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1480343 () Bool)

(declare-fun res!1006253 () Bool)

(assert (=> b!1480343 (=> (not res!1006253) (not e!830310))))

(assert (=> b!1480343 (= res!1006253 (validKeyInArray!0 (select (arr!47943 a!2862) j!93)))))

(declare-fun b!1480344 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99337 (_ BitVec 32)) SeekEntryResult!12206)

(assert (=> b!1480344 (= e!830306 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646339 lt!646342 mask!2687) (seekEntryOrOpen!0 lt!646339 lt!646342 mask!2687)))))

(declare-fun b!1480345 () Bool)

(assert (=> b!1480345 (= e!830310 e!830308)))

(declare-fun res!1006251 () Bool)

(assert (=> b!1480345 (=> (not res!1006251) (not e!830308))))

(assert (=> b!1480345 (= res!1006251 (= (select (store (arr!47943 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480345 (= lt!646342 (array!99338 (store (arr!47943 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48494 a!2862)))))

(assert (= (and start!126314 res!1006244) b!1480340))

(assert (= (and b!1480340 res!1006254) b!1480339))

(assert (= (and b!1480339 res!1006256) b!1480343))

(assert (= (and b!1480343 res!1006253) b!1480336))

(assert (= (and b!1480336 res!1006249) b!1480329))

(assert (= (and b!1480329 res!1006252) b!1480341))

(assert (= (and b!1480341 res!1006246) b!1480345))

(assert (= (and b!1480345 res!1006251) b!1480330))

(assert (= (and b!1480330 res!1006248) b!1480335))

(assert (= (and b!1480335 res!1006250) b!1480334))

(assert (= (and b!1480334 res!1006243) b!1480331))

(assert (= (and b!1480331 c!136565) b!1480332))

(assert (= (and b!1480331 (not c!136565)) b!1480344))

(assert (= (and b!1480331 res!1006245) b!1480333))

(assert (= (and b!1480333 res!1006257) b!1480342))

(assert (= (and b!1480342 res!1006247) b!1480337))

(assert (= (and b!1480337 res!1006255) b!1480338))

(declare-fun m!1366201 () Bool)

(assert (=> b!1480332 m!1366201))

(declare-fun m!1366203 () Bool)

(assert (=> b!1480338 m!1366203))

(declare-fun m!1366205 () Bool)

(assert (=> b!1480338 m!1366205))

(assert (=> b!1480330 m!1366205))

(assert (=> b!1480330 m!1366205))

(declare-fun m!1366207 () Bool)

(assert (=> b!1480330 m!1366207))

(assert (=> b!1480330 m!1366207))

(assert (=> b!1480330 m!1366205))

(declare-fun m!1366209 () Bool)

(assert (=> b!1480330 m!1366209))

(declare-fun m!1366211 () Bool)

(assert (=> b!1480336 m!1366211))

(declare-fun m!1366213 () Bool)

(assert (=> b!1480344 m!1366213))

(declare-fun m!1366215 () Bool)

(assert (=> b!1480344 m!1366215))

(declare-fun m!1366217 () Bool)

(assert (=> b!1480329 m!1366217))

(assert (=> b!1480337 m!1366205))

(assert (=> b!1480337 m!1366205))

(declare-fun m!1366219 () Bool)

(assert (=> b!1480337 m!1366219))

(declare-fun m!1366221 () Bool)

(assert (=> b!1480339 m!1366221))

(assert (=> b!1480339 m!1366221))

(declare-fun m!1366223 () Bool)

(assert (=> b!1480339 m!1366223))

(assert (=> b!1480343 m!1366205))

(assert (=> b!1480343 m!1366205))

(declare-fun m!1366225 () Bool)

(assert (=> b!1480343 m!1366225))

(declare-fun m!1366227 () Bool)

(assert (=> b!1480345 m!1366227))

(declare-fun m!1366229 () Bool)

(assert (=> b!1480345 m!1366229))

(declare-fun m!1366231 () Bool)

(assert (=> b!1480334 m!1366231))

(assert (=> b!1480334 m!1366231))

(declare-fun m!1366233 () Bool)

(assert (=> b!1480334 m!1366233))

(assert (=> b!1480334 m!1366227))

(declare-fun m!1366235 () Bool)

(assert (=> b!1480334 m!1366235))

(assert (=> b!1480335 m!1366205))

(assert (=> b!1480335 m!1366205))

(declare-fun m!1366237 () Bool)

(assert (=> b!1480335 m!1366237))

(declare-fun m!1366239 () Bool)

(assert (=> b!1480342 m!1366239))

(assert (=> b!1480342 m!1366227))

(declare-fun m!1366241 () Bool)

(assert (=> b!1480342 m!1366241))

(declare-fun m!1366243 () Bool)

(assert (=> b!1480342 m!1366243))

(declare-fun m!1366245 () Bool)

(assert (=> b!1480342 m!1366245))

(assert (=> b!1480342 m!1366205))

(declare-fun m!1366247 () Bool)

(assert (=> start!126314 m!1366247))

(declare-fun m!1366249 () Bool)

(assert (=> start!126314 m!1366249))

(push 1)

(assert (not b!1480336))

(assert (not b!1480337))

(assert (not b!1480330))

(assert (not b!1480335))

(assert (not b!1480344))

(assert (not b!1480343))

(assert (not b!1480342))

(assert (not b!1480332))

(assert (not b!1480334))

(assert (not b!1480329))

(assert (not start!126314))

(assert (not b!1480339))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1480408 () Bool)

(declare-fun e!830349 () Bool)

(declare-fun e!830348 () Bool)

(assert (=> b!1480408 (= e!830349 e!830348)))

(declare-fun lt!646374 () (_ BitVec 64))

(assert (=> b!1480408 (= lt!646374 (select (arr!47943 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!646376 () Unit!49700)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99337 (_ BitVec 64) (_ BitVec 32)) Unit!49700)

(assert (=> b!1480408 (= lt!646376 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646374 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99337 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1480408 (arrayContainsKey!0 a!2862 lt!646374 #b00000000000000000000000000000000)))

(declare-fun lt!646375 () Unit!49700)

(assert (=> b!1480408 (= lt!646375 lt!646376)))

(declare-fun res!1006276 () Bool)

(assert (=> b!1480408 (= res!1006276 (= (seekEntryOrOpen!0 (select (arr!47943 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12206 #b00000000000000000000000000000000)))))

(assert (=> b!1480408 (=> (not res!1006276) (not e!830348))))

(declare-fun b!1480409 () Bool)

(declare-fun call!67824 () Bool)

(assert (=> b!1480409 (= e!830348 call!67824)))

(declare-fun d!155983 () Bool)

(declare-fun res!1006275 () Bool)

(declare-fun e!830350 () Bool)

(assert (=> d!155983 (=> res!1006275 e!830350)))

(assert (=> d!155983 (= res!1006275 (bvsge #b00000000000000000000000000000000 (size!48494 a!2862)))))

(assert (=> d!155983 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!830350)))

(declare-fun bm!67821 () Bool)

(assert (=> bm!67821 (= call!67824 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1480410 () Bool)

(assert (=> b!1480410 (= e!830350 e!830349)))

(declare-fun c!136589 () Bool)

(assert (=> b!1480410 (= c!136589 (validKeyInArray!0 (select (arr!47943 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1480411 () Bool)

(assert (=> b!1480411 (= e!830349 call!67824)))

(assert (= (and d!155983 (not res!1006275)) b!1480410))

(assert (= (and b!1480410 c!136589) b!1480408))

(assert (= (and b!1480410 (not c!136589)) b!1480411))

(assert (= (and b!1480408 res!1006276) b!1480409))

(assert (= (or b!1480409 b!1480411) bm!67821))

(declare-fun m!1366277 () Bool)

(assert (=> b!1480408 m!1366277))

(declare-fun m!1366279 () Bool)

(assert (=> b!1480408 m!1366279))

(declare-fun m!1366281 () Bool)

(assert (=> b!1480408 m!1366281))

(assert (=> b!1480408 m!1366277))

(declare-fun m!1366283 () Bool)

(assert (=> b!1480408 m!1366283))

(declare-fun m!1366285 () Bool)

(assert (=> bm!67821 m!1366285))

(assert (=> b!1480410 m!1366277))

(assert (=> b!1480410 m!1366277))

(declare-fun m!1366287 () Bool)

(assert (=> b!1480410 m!1366287))

(assert (=> b!1480336 d!155983))

(declare-fun b!1480478 () Bool)

(declare-fun e!830390 () SeekEntryResult!12206)

(assert (=> b!1480478 (= e!830390 (Intermediate!12206 true index!646 x!665))))

(declare-fun b!1480479 () Bool)

(declare-fun lt!646401 () SeekEntryResult!12206)

(assert (=> b!1480479 (and (bvsge (index!51217 lt!646401) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646401) (size!48494 a!2862)))))

(declare-fun e!830389 () Bool)

(assert (=> b!1480479 (= e!830389 (= (select (arr!47943 a!2862) (index!51217 lt!646401)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480480 () Bool)

(declare-fun e!830391 () Bool)

(assert (=> b!1480480 (= e!830391 (bvsge (x!132792 lt!646401) #b01111111111111111111111111111110))))

(declare-fun b!1480481 () Bool)

(declare-fun e!830392 () Bool)

(assert (=> b!1480481 (= e!830391 e!830392)))

(declare-fun res!1006296 () Bool)

(assert (=> b!1480481 (= res!1006296 (and (is-Intermediate!12206 lt!646401) (not (undefined!13018 lt!646401)) (bvslt (x!132792 lt!646401) #b01111111111111111111111111111110) (bvsge (x!132792 lt!646401) #b00000000000000000000000000000000) (bvsge (x!132792 lt!646401) x!665)))))

(assert (=> b!1480481 (=> (not res!1006296) (not e!830392))))

(declare-fun b!1480482 () Bool)

(declare-fun e!830393 () SeekEntryResult!12206)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1480482 (= e!830393 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47943 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480483 () Bool)

(assert (=> b!1480483 (= e!830393 (Intermediate!12206 false index!646 x!665))))

(declare-fun b!1480484 () Bool)

(assert (=> b!1480484 (and (bvsge (index!51217 lt!646401) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646401) (size!48494 a!2862)))))

(declare-fun res!1006297 () Bool)

(assert (=> b!1480484 (= res!1006297 (= (select (arr!47943 a!2862) (index!51217 lt!646401)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480484 (=> res!1006297 e!830389)))

(declare-fun d!155991 () Bool)

(assert (=> d!155991 e!830391))

(declare-fun c!136614 () Bool)

(assert (=> d!155991 (= c!136614 (and (is-Intermediate!12206 lt!646401) (undefined!13018 lt!646401)))))

(assert (=> d!155991 (= lt!646401 e!830390)))

(declare-fun c!136616 () Bool)

(assert (=> d!155991 (= c!136616 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!646400 () (_ BitVec 64))

(assert (=> d!155991 (= lt!646400 (select (arr!47943 a!2862) index!646))))

(assert (=> d!155991 (validMask!0 mask!2687)))

(assert (=> d!155991 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47943 a!2862) j!93) a!2862 mask!2687) lt!646401)))

(declare-fun b!1480485 () Bool)

(assert (=> b!1480485 (= e!830390 e!830393)))

(declare-fun c!136615 () Bool)

(assert (=> b!1480485 (= c!136615 (or (= lt!646400 (select (arr!47943 a!2862) j!93)) (= (bvadd lt!646400 lt!646400) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480486 () Bool)

(assert (=> b!1480486 (and (bvsge (index!51217 lt!646401) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646401) (size!48494 a!2862)))))

(declare-fun res!1006295 () Bool)

(assert (=> b!1480486 (= res!1006295 (= (select (arr!47943 a!2862) (index!51217 lt!646401)) (select (arr!47943 a!2862) j!93)))))

(assert (=> b!1480486 (=> res!1006295 e!830389)))

(assert (=> b!1480486 (= e!830392 e!830389)))

(assert (= (and d!155991 c!136616) b!1480478))

(assert (= (and d!155991 (not c!136616)) b!1480485))

(assert (= (and b!1480485 c!136615) b!1480483))

(assert (= (and b!1480485 (not c!136615)) b!1480482))

(assert (= (and d!155991 c!136614) b!1480480))

(assert (= (and d!155991 (not c!136614)) b!1480481))

(assert (= (and b!1480481 res!1006296) b!1480486))

(assert (= (and b!1480486 (not res!1006295)) b!1480484))

(assert (= (and b!1480484 (not res!1006297)) b!1480479))

(assert (=> d!155991 m!1366243))

(assert (=> d!155991 m!1366247))

(declare-fun m!1366323 () Bool)

(assert (=> b!1480479 m!1366323))

(assert (=> b!1480484 m!1366323))

(assert (=> b!1480486 m!1366323))

(declare-fun m!1366325 () Bool)

(assert (=> b!1480482 m!1366325))

(assert (=> b!1480482 m!1366325))

(assert (=> b!1480482 m!1366205))

(declare-fun m!1366327 () Bool)

(assert (=> b!1480482 m!1366327))

(assert (=> b!1480335 d!155991))

(declare-fun d!156003 () Bool)

(assert (=> d!156003 (= (validKeyInArray!0 (select (arr!47943 a!2862) i!1006)) (and (not (= (select (arr!47943 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47943 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1480339 d!156003))

(declare-fun b!1480532 () Bool)

(declare-fun e!830422 () SeekEntryResult!12206)

(declare-fun lt!646419 () SeekEntryResult!12206)

(assert (=> b!1480532 (= e!830422 (MissingZero!12206 (index!51217 lt!646419)))))

(declare-fun b!1480534 () Bool)

(declare-fun e!830421 () SeekEntryResult!12206)

(assert (=> b!1480534 (= e!830421 Undefined!12206)))

(declare-fun b!1480535 () Bool)

(assert (=> b!1480535 (= e!830422 (seekKeyOrZeroReturnVacant!0 (x!132792 lt!646419) (index!51217 lt!646419) (index!51217 lt!646419) (select (arr!47943 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480536 () Bool)

(declare-fun e!830423 () SeekEntryResult!12206)

(assert (=> b!1480536 (= e!830421 e!830423)))

(declare-fun lt!646418 () (_ BitVec 64))

(assert (=> b!1480536 (= lt!646418 (select (arr!47943 a!2862) (index!51217 lt!646419)))))

(declare-fun c!136635 () Bool)

(assert (=> b!1480536 (= c!136635 (= lt!646418 (select (arr!47943 a!2862) j!93)))))

(declare-fun b!1480537 () Bool)

(declare-fun c!136636 () Bool)

(assert (=> b!1480537 (= c!136636 (= lt!646418 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480537 (= e!830423 e!830422)))

(declare-fun b!1480533 () Bool)

(assert (=> b!1480533 (= e!830423 (Found!12206 (index!51217 lt!646419)))))

(declare-fun d!156005 () Bool)

(declare-fun lt!646417 () SeekEntryResult!12206)

(assert (=> d!156005 (and (or (is-Undefined!12206 lt!646417) (not (is-Found!12206 lt!646417)) (and (bvsge (index!51216 lt!646417) #b00000000000000000000000000000000) (bvslt (index!51216 lt!646417) (size!48494 a!2862)))) (or (is-Undefined!12206 lt!646417) (is-Found!12206 lt!646417) (not (is-MissingZero!12206 lt!646417)) (and (bvsge (index!51215 lt!646417) #b00000000000000000000000000000000) (bvslt (index!51215 lt!646417) (size!48494 a!2862)))) (or (is-Undefined!12206 lt!646417) (is-Found!12206 lt!646417) (is-MissingZero!12206 lt!646417) (not (is-MissingVacant!12206 lt!646417)) (and (bvsge (index!51218 lt!646417) #b00000000000000000000000000000000) (bvslt (index!51218 lt!646417) (size!48494 a!2862)))) (or (is-Undefined!12206 lt!646417) (ite (is-Found!12206 lt!646417) (= (select (arr!47943 a!2862) (index!51216 lt!646417)) (select (arr!47943 a!2862) j!93)) (ite (is-MissingZero!12206 lt!646417) (= (select (arr!47943 a!2862) (index!51215 lt!646417)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12206 lt!646417) (= (select (arr!47943 a!2862) (index!51218 lt!646417)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156005 (= lt!646417 e!830421)))

(declare-fun c!136637 () Bool)

(assert (=> d!156005 (= c!136637 (and (is-Intermediate!12206 lt!646419) (undefined!13018 lt!646419)))))

(assert (=> d!156005 (= lt!646419 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687) (select (arr!47943 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!156005 (validMask!0 mask!2687)))

(assert (=> d!156005 (= (seekEntryOrOpen!0 (select (arr!47943 a!2862) j!93) a!2862 mask!2687) lt!646417)))

(assert (= (and d!156005 c!136637) b!1480534))

(assert (= (and d!156005 (not c!136637)) b!1480536))

(assert (= (and b!1480536 c!136635) b!1480533))

(assert (= (and b!1480536 (not c!136635)) b!1480537))

(assert (= (and b!1480537 c!136636) b!1480532))

(assert (= (and b!1480537 (not c!136636)) b!1480535))

(assert (=> b!1480535 m!1366205))

(declare-fun m!1366339 () Bool)

(assert (=> b!1480535 m!1366339))

(declare-fun m!1366341 () Bool)

(assert (=> b!1480536 m!1366341))

(assert (=> d!156005 m!1366207))

(assert (=> d!156005 m!1366205))

(assert (=> d!156005 m!1366209))

(declare-fun m!1366345 () Bool)

(assert (=> d!156005 m!1366345))

(declare-fun m!1366349 () Bool)

(assert (=> d!156005 m!1366349))

(assert (=> d!156005 m!1366205))

(assert (=> d!156005 m!1366207))

(assert (=> d!156005 m!1366247))

(declare-fun m!1366351 () Bool)

(assert (=> d!156005 m!1366351))

(assert (=> b!1480337 d!156005))

(declare-fun d!156011 () Bool)

(assert (=> d!156011 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126314 d!156011))

(declare-fun d!156023 () Bool)

(assert (=> d!156023 (= (array_inv!36888 a!2862) (bvsge (size!48494 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126314 d!156023))

(declare-fun b!1480542 () Bool)

(declare-fun e!830428 () Bool)

(declare-fun e!830427 () Bool)

(assert (=> b!1480542 (= e!830428 e!830427)))

(declare-fun lt!646423 () (_ BitVec 64))

(assert (=> b!1480542 (= lt!646423 (select (arr!47943 a!2862) j!93))))

(declare-fun lt!646425 () Unit!49700)

(assert (=> b!1480542 (= lt!646425 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646423 j!93))))

(assert (=> b!1480542 (arrayContainsKey!0 a!2862 lt!646423 #b00000000000000000000000000000000)))

(declare-fun lt!646424 () Unit!49700)

(assert (=> b!1480542 (= lt!646424 lt!646425)))

(declare-fun res!1006310 () Bool)

(assert (=> b!1480542 (= res!1006310 (= (seekEntryOrOpen!0 (select (arr!47943 a!2862) j!93) a!2862 mask!2687) (Found!12206 j!93)))))

(assert (=> b!1480542 (=> (not res!1006310) (not e!830427))))

(declare-fun b!1480543 () Bool)

(declare-fun call!67832 () Bool)

(assert (=> b!1480543 (= e!830427 call!67832)))

(declare-fun d!156025 () Bool)

(declare-fun res!1006309 () Bool)

(declare-fun e!830429 () Bool)

(assert (=> d!156025 (=> res!1006309 e!830429)))

(assert (=> d!156025 (= res!1006309 (bvsge j!93 (size!48494 a!2862)))))

(assert (=> d!156025 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!830429)))

(declare-fun bm!67829 () Bool)

(assert (=> bm!67829 (= call!67832 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1480544 () Bool)

(assert (=> b!1480544 (= e!830429 e!830428)))

(declare-fun c!136639 () Bool)

(assert (=> b!1480544 (= c!136639 (validKeyInArray!0 (select (arr!47943 a!2862) j!93)))))

(declare-fun b!1480545 () Bool)

(assert (=> b!1480545 (= e!830428 call!67832)))

(assert (= (and d!156025 (not res!1006309)) b!1480544))

(assert (= (and b!1480544 c!136639) b!1480542))

(assert (= (and b!1480544 (not c!136639)) b!1480545))

(assert (= (and b!1480542 res!1006310) b!1480543))

(assert (= (or b!1480543 b!1480545) bm!67829))

(assert (=> b!1480542 m!1366205))

(declare-fun m!1366359 () Bool)

(assert (=> b!1480542 m!1366359))

(declare-fun m!1366361 () Bool)

(assert (=> b!1480542 m!1366361))

(assert (=> b!1480542 m!1366205))

(assert (=> b!1480542 m!1366219))

(declare-fun m!1366363 () Bool)

(assert (=> bm!67829 m!1366363))

(assert (=> b!1480544 m!1366205))

(assert (=> b!1480544 m!1366205))

(assert (=> b!1480544 m!1366225))

(assert (=> b!1480342 d!156025))

(declare-fun d!156027 () Bool)

(assert (=> d!156027 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!646431 () Unit!49700)

(declare-fun choose!38 (array!99337 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49700)

(assert (=> d!156027 (= lt!646431 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156027 (validMask!0 mask!2687)))

(assert (=> d!156027 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!646431)))

(declare-fun bs!42654 () Bool)

(assert (= bs!42654 d!156027))

(assert (=> bs!42654 m!1366245))

(declare-fun m!1366367 () Bool)

(assert (=> bs!42654 m!1366367))

(assert (=> bs!42654 m!1366247))

(assert (=> b!1480342 d!156027))

(declare-fun b!1480556 () Bool)

(declare-fun e!830440 () Bool)

(declare-fun call!67835 () Bool)

(assert (=> b!1480556 (= e!830440 call!67835)))

(declare-fun b!1480557 () Bool)

(assert (=> b!1480557 (= e!830440 call!67835)))

(declare-fun bm!67832 () Bool)

(declare-fun c!136642 () Bool)

(assert (=> bm!67832 (= call!67835 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!136642 (Cons!34620 (select (arr!47943 a!2862) #b00000000000000000000000000000000) Nil!34621) Nil!34621)))))

(declare-fun b!1480558 () Bool)

(declare-fun e!830438 () Bool)

(declare-fun contains!9924 (List!34624 (_ BitVec 64)) Bool)

(assert (=> b!1480558 (= e!830438 (contains!9924 Nil!34621 (select (arr!47943 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!156031 () Bool)

(declare-fun res!1006317 () Bool)

(declare-fun e!830441 () Bool)

(assert (=> d!156031 (=> res!1006317 e!830441)))

(assert (=> d!156031 (= res!1006317 (bvsge #b00000000000000000000000000000000 (size!48494 a!2862)))))

(assert (=> d!156031 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34621) e!830441)))

(declare-fun b!1480559 () Bool)

(declare-fun e!830439 () Bool)

(assert (=> b!1480559 (= e!830439 e!830440)))

(assert (=> b!1480559 (= c!136642 (validKeyInArray!0 (select (arr!47943 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1480560 () Bool)

(assert (=> b!1480560 (= e!830441 e!830439)))

(declare-fun res!1006318 () Bool)

(assert (=> b!1480560 (=> (not res!1006318) (not e!830439))))

(assert (=> b!1480560 (= res!1006318 (not e!830438))))

(declare-fun res!1006319 () Bool)

(assert (=> b!1480560 (=> (not res!1006319) (not e!830438))))

(assert (=> b!1480560 (= res!1006319 (validKeyInArray!0 (select (arr!47943 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156031 (not res!1006317)) b!1480560))

(assert (= (and b!1480560 res!1006319) b!1480558))

(assert (= (and b!1480560 res!1006318) b!1480559))

(assert (= (and b!1480559 c!136642) b!1480557))

(assert (= (and b!1480559 (not c!136642)) b!1480556))

(assert (= (or b!1480557 b!1480556) bm!67832))

(assert (=> bm!67832 m!1366277))

(declare-fun m!1366369 () Bool)

(assert (=> bm!67832 m!1366369))

(assert (=> b!1480558 m!1366277))

(assert (=> b!1480558 m!1366277))

(declare-fun m!1366371 () Bool)

(assert (=> b!1480558 m!1366371))

(assert (=> b!1480559 m!1366277))

(assert (=> b!1480559 m!1366277))

(assert (=> b!1480559 m!1366287))

(assert (=> b!1480560 m!1366277))

(assert (=> b!1480560 m!1366277))

(assert (=> b!1480560 m!1366287))

(assert (=> b!1480329 d!156031))

(declare-fun b!1480561 () Bool)

(declare-fun e!830443 () SeekEntryResult!12206)

(assert (=> b!1480561 (= e!830443 (Intermediate!12206 true (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1480562 () Bool)

(declare-fun lt!646433 () SeekEntryResult!12206)

(assert (=> b!1480562 (and (bvsge (index!51217 lt!646433) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646433) (size!48494 a!2862)))))

(declare-fun e!830442 () Bool)

(assert (=> b!1480562 (= e!830442 (= (select (arr!47943 a!2862) (index!51217 lt!646433)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480563 () Bool)

(declare-fun e!830444 () Bool)

(assert (=> b!1480563 (= e!830444 (bvsge (x!132792 lt!646433) #b01111111111111111111111111111110))))

(declare-fun b!1480564 () Bool)

(declare-fun e!830445 () Bool)

(assert (=> b!1480564 (= e!830444 e!830445)))

(declare-fun res!1006321 () Bool)

(assert (=> b!1480564 (= res!1006321 (and (is-Intermediate!12206 lt!646433) (not (undefined!13018 lt!646433)) (bvslt (x!132792 lt!646433) #b01111111111111111111111111111110) (bvsge (x!132792 lt!646433) #b00000000000000000000000000000000) (bvsge (x!132792 lt!646433) #b00000000000000000000000000000000)))))

(assert (=> b!1480564 (=> (not res!1006321) (not e!830445))))

(declare-fun b!1480565 () Bool)

(declare-fun e!830446 () SeekEntryResult!12206)

(assert (=> b!1480565 (= e!830446 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47943 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480566 () Bool)

(assert (=> b!1480566 (= e!830446 (Intermediate!12206 false (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1480567 () Bool)

(assert (=> b!1480567 (and (bvsge (index!51217 lt!646433) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646433) (size!48494 a!2862)))))

(declare-fun res!1006322 () Bool)

(assert (=> b!1480567 (= res!1006322 (= (select (arr!47943 a!2862) (index!51217 lt!646433)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480567 (=> res!1006322 e!830442)))

(declare-fun d!156033 () Bool)

(assert (=> d!156033 e!830444))

(declare-fun c!136643 () Bool)

(assert (=> d!156033 (= c!136643 (and (is-Intermediate!12206 lt!646433) (undefined!13018 lt!646433)))))

(assert (=> d!156033 (= lt!646433 e!830443)))

(declare-fun c!136645 () Bool)

(assert (=> d!156033 (= c!136645 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!646432 () (_ BitVec 64))

(assert (=> d!156033 (= lt!646432 (select (arr!47943 a!2862) (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687)))))

(assert (=> d!156033 (validMask!0 mask!2687)))

(assert (=> d!156033 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687) (select (arr!47943 a!2862) j!93) a!2862 mask!2687) lt!646433)))

(declare-fun b!1480568 () Bool)

(assert (=> b!1480568 (= e!830443 e!830446)))

(declare-fun c!136644 () Bool)

(assert (=> b!1480568 (= c!136644 (or (= lt!646432 (select (arr!47943 a!2862) j!93)) (= (bvadd lt!646432 lt!646432) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480569 () Bool)

(assert (=> b!1480569 (and (bvsge (index!51217 lt!646433) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646433) (size!48494 a!2862)))))

(declare-fun res!1006320 () Bool)

(assert (=> b!1480569 (= res!1006320 (= (select (arr!47943 a!2862) (index!51217 lt!646433)) (select (arr!47943 a!2862) j!93)))))

(assert (=> b!1480569 (=> res!1006320 e!830442)))

(assert (=> b!1480569 (= e!830445 e!830442)))

(assert (= (and d!156033 c!136645) b!1480561))

(assert (= (and d!156033 (not c!136645)) b!1480568))

(assert (= (and b!1480568 c!136644) b!1480566))

(assert (= (and b!1480568 (not c!136644)) b!1480565))

(assert (= (and d!156033 c!136643) b!1480563))

(assert (= (and d!156033 (not c!136643)) b!1480564))

(assert (= (and b!1480564 res!1006321) b!1480569))

(assert (= (and b!1480569 (not res!1006320)) b!1480567))

(assert (= (and b!1480567 (not res!1006322)) b!1480562))

(assert (=> d!156033 m!1366207))

(declare-fun m!1366373 () Bool)

(assert (=> d!156033 m!1366373))

(assert (=> d!156033 m!1366247))

(declare-fun m!1366375 () Bool)

(assert (=> b!1480562 m!1366375))

(assert (=> b!1480567 m!1366375))

(assert (=> b!1480569 m!1366375))

(assert (=> b!1480565 m!1366207))

(declare-fun m!1366377 () Bool)

(assert (=> b!1480565 m!1366377))

(assert (=> b!1480565 m!1366377))

(assert (=> b!1480565 m!1366205))

(declare-fun m!1366379 () Bool)

(assert (=> b!1480565 m!1366379))

(assert (=> b!1480330 d!156033))

(declare-fun d!156035 () Bool)

(declare-fun lt!646443 () (_ BitVec 32))

(declare-fun lt!646442 () (_ BitVec 32))

(assert (=> d!156035 (= lt!646443 (bvmul (bvxor lt!646442 (bvlshr lt!646442 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156035 (= lt!646442 ((_ extract 31 0) (bvand (bvxor (select (arr!47943 a!2862) j!93) (bvlshr (select (arr!47943 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156035 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1006323 (let ((h!35990 ((_ extract 31 0) (bvand (bvxor (select (arr!47943 a!2862) j!93) (bvlshr (select (arr!47943 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132798 (bvmul (bvxor h!35990 (bvlshr h!35990 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132798 (bvlshr x!132798 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1006323 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1006323 #b00000000000000000000000000000000))))))

(assert (=> d!156035 (= (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687) (bvand (bvxor lt!646443 (bvlshr lt!646443 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1480330 d!156035))

(declare-fun b!1480639 () Bool)

(declare-fun e!830484 () SeekEntryResult!12206)

(assert (=> b!1480639 (= e!830484 Undefined!12206)))

(declare-fun b!1480640 () Bool)

(declare-fun e!830485 () SeekEntryResult!12206)

(assert (=> b!1480640 (= e!830485 (MissingVacant!12206 intermediateAfterIndex!19))))

(declare-fun d!156037 () Bool)

(declare-fun lt!646469 () SeekEntryResult!12206)

(assert (=> d!156037 (and (or (is-Undefined!12206 lt!646469) (not (is-Found!12206 lt!646469)) (and (bvsge (index!51216 lt!646469) #b00000000000000000000000000000000) (bvslt (index!51216 lt!646469) (size!48494 lt!646342)))) (or (is-Undefined!12206 lt!646469) (is-Found!12206 lt!646469) (not (is-MissingVacant!12206 lt!646469)) (not (= (index!51218 lt!646469) intermediateAfterIndex!19)) (and (bvsge (index!51218 lt!646469) #b00000000000000000000000000000000) (bvslt (index!51218 lt!646469) (size!48494 lt!646342)))) (or (is-Undefined!12206 lt!646469) (ite (is-Found!12206 lt!646469) (= (select (arr!47943 lt!646342) (index!51216 lt!646469)) lt!646339) (and (is-MissingVacant!12206 lt!646469) (= (index!51218 lt!646469) intermediateAfterIndex!19) (= (select (arr!47943 lt!646342) (index!51218 lt!646469)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156037 (= lt!646469 e!830484)))

(declare-fun c!136678 () Bool)

(assert (=> d!156037 (= c!136678 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!646468 () (_ BitVec 64))

(assert (=> d!156037 (= lt!646468 (select (arr!47943 lt!646342) index!646))))

(assert (=> d!156037 (validMask!0 mask!2687)))

(assert (=> d!156037 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646339 lt!646342 mask!2687) lt!646469)))

(declare-fun b!1480641 () Bool)

(assert (=> b!1480641 (= e!830485 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!646339 lt!646342 mask!2687))))

(declare-fun b!1480642 () Bool)

(declare-fun e!830483 () SeekEntryResult!12206)

(assert (=> b!1480642 (= e!830483 (Found!12206 index!646))))

(declare-fun b!1480643 () Bool)

(declare-fun c!136676 () Bool)

(assert (=> b!1480643 (= c!136676 (= lt!646468 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480643 (= e!830483 e!830485)))

(declare-fun b!1480644 () Bool)

(assert (=> b!1480644 (= e!830484 e!830483)))

(declare-fun c!136677 () Bool)

(assert (=> b!1480644 (= c!136677 (= lt!646468 lt!646339))))

(assert (= (and d!156037 c!136678) b!1480639))

(assert (= (and d!156037 (not c!136678)) b!1480644))

(assert (= (and b!1480644 c!136677) b!1480642))

(assert (= (and b!1480644 (not c!136677)) b!1480643))

(assert (= (and b!1480643 c!136676) b!1480640))

(assert (= (and b!1480643 (not c!136676)) b!1480641))

(declare-fun m!1366415 () Bool)

(assert (=> d!156037 m!1366415))

(declare-fun m!1366417 () Bool)

(assert (=> d!156037 m!1366417))

(declare-fun m!1366419 () Bool)

(assert (=> d!156037 m!1366419))

(assert (=> d!156037 m!1366247))

(assert (=> b!1480641 m!1366325))

(assert (=> b!1480641 m!1366325))

(declare-fun m!1366421 () Bool)

(assert (=> b!1480641 m!1366421))

(assert (=> b!1480344 d!156037))

(declare-fun b!1480645 () Bool)

(declare-fun e!830487 () SeekEntryResult!12206)

(declare-fun lt!646472 () SeekEntryResult!12206)

(assert (=> b!1480645 (= e!830487 (MissingZero!12206 (index!51217 lt!646472)))))

(declare-fun b!1480647 () Bool)

(declare-fun e!830486 () SeekEntryResult!12206)

(assert (=> b!1480647 (= e!830486 Undefined!12206)))

(declare-fun b!1480648 () Bool)

(assert (=> b!1480648 (= e!830487 (seekKeyOrZeroReturnVacant!0 (x!132792 lt!646472) (index!51217 lt!646472) (index!51217 lt!646472) lt!646339 lt!646342 mask!2687))))

(declare-fun b!1480649 () Bool)

(declare-fun e!830488 () SeekEntryResult!12206)

(assert (=> b!1480649 (= e!830486 e!830488)))

(declare-fun lt!646471 () (_ BitVec 64))

(assert (=> b!1480649 (= lt!646471 (select (arr!47943 lt!646342) (index!51217 lt!646472)))))

(declare-fun c!136679 () Bool)

(assert (=> b!1480649 (= c!136679 (= lt!646471 lt!646339))))

(declare-fun b!1480650 () Bool)

(declare-fun c!136680 () Bool)

(assert (=> b!1480650 (= c!136680 (= lt!646471 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480650 (= e!830488 e!830487)))

(declare-fun b!1480646 () Bool)

(assert (=> b!1480646 (= e!830488 (Found!12206 (index!51217 lt!646472)))))

(declare-fun d!156049 () Bool)

(declare-fun lt!646470 () SeekEntryResult!12206)

(assert (=> d!156049 (and (or (is-Undefined!12206 lt!646470) (not (is-Found!12206 lt!646470)) (and (bvsge (index!51216 lt!646470) #b00000000000000000000000000000000) (bvslt (index!51216 lt!646470) (size!48494 lt!646342)))) (or (is-Undefined!12206 lt!646470) (is-Found!12206 lt!646470) (not (is-MissingZero!12206 lt!646470)) (and (bvsge (index!51215 lt!646470) #b00000000000000000000000000000000) (bvslt (index!51215 lt!646470) (size!48494 lt!646342)))) (or (is-Undefined!12206 lt!646470) (is-Found!12206 lt!646470) (is-MissingZero!12206 lt!646470) (not (is-MissingVacant!12206 lt!646470)) (and (bvsge (index!51218 lt!646470) #b00000000000000000000000000000000) (bvslt (index!51218 lt!646470) (size!48494 lt!646342)))) (or (is-Undefined!12206 lt!646470) (ite (is-Found!12206 lt!646470) (= (select (arr!47943 lt!646342) (index!51216 lt!646470)) lt!646339) (ite (is-MissingZero!12206 lt!646470) (= (select (arr!47943 lt!646342) (index!51215 lt!646470)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12206 lt!646470) (= (select (arr!47943 lt!646342) (index!51218 lt!646470)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156049 (= lt!646470 e!830486)))

(declare-fun c!136681 () Bool)

(assert (=> d!156049 (= c!136681 (and (is-Intermediate!12206 lt!646472) (undefined!13018 lt!646472)))))

(assert (=> d!156049 (= lt!646472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646339 mask!2687) lt!646339 lt!646342 mask!2687))))

(assert (=> d!156049 (validMask!0 mask!2687)))

(assert (=> d!156049 (= (seekEntryOrOpen!0 lt!646339 lt!646342 mask!2687) lt!646470)))

(assert (= (and d!156049 c!136681) b!1480647))

(assert (= (and d!156049 (not c!136681)) b!1480649))

(assert (= (and b!1480649 c!136679) b!1480646))

(assert (= (and b!1480649 (not c!136679)) b!1480650))

(assert (= (and b!1480650 c!136680) b!1480645))

(assert (= (and b!1480650 (not c!136680)) b!1480648))

(declare-fun m!1366423 () Bool)

(assert (=> b!1480648 m!1366423))

(declare-fun m!1366425 () Bool)

(assert (=> b!1480649 m!1366425))

(assert (=> d!156049 m!1366231))

(assert (=> d!156049 m!1366233))

(declare-fun m!1366427 () Bool)

(assert (=> d!156049 m!1366427))

(declare-fun m!1366429 () Bool)

(assert (=> d!156049 m!1366429))

(assert (=> d!156049 m!1366231))

(assert (=> d!156049 m!1366247))

(declare-fun m!1366431 () Bool)

(assert (=> d!156049 m!1366431))

(assert (=> b!1480344 d!156049))

(declare-fun b!1480651 () Bool)

(declare-fun e!830490 () SeekEntryResult!12206)

(assert (=> b!1480651 (= e!830490 (Intermediate!12206 true (toIndex!0 lt!646339 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1480652 () Bool)

(declare-fun lt!646474 () SeekEntryResult!12206)

(assert (=> b!1480652 (and (bvsge (index!51217 lt!646474) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646474) (size!48494 lt!646342)))))

(declare-fun e!830489 () Bool)

(assert (=> b!1480652 (= e!830489 (= (select (arr!47943 lt!646342) (index!51217 lt!646474)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480653 () Bool)

(declare-fun e!830491 () Bool)

(assert (=> b!1480653 (= e!830491 (bvsge (x!132792 lt!646474) #b01111111111111111111111111111110))))

(declare-fun b!1480654 () Bool)

(declare-fun e!830492 () Bool)

(assert (=> b!1480654 (= e!830491 e!830492)))

(declare-fun res!1006335 () Bool)

(assert (=> b!1480654 (= res!1006335 (and (is-Intermediate!12206 lt!646474) (not (undefined!13018 lt!646474)) (bvslt (x!132792 lt!646474) #b01111111111111111111111111111110) (bvsge (x!132792 lt!646474) #b00000000000000000000000000000000) (bvsge (x!132792 lt!646474) #b00000000000000000000000000000000)))))

(assert (=> b!1480654 (=> (not res!1006335) (not e!830492))))

(declare-fun e!830493 () SeekEntryResult!12206)

(declare-fun b!1480655 () Bool)

(assert (=> b!1480655 (= e!830493 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!646339 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!646339 lt!646342 mask!2687))))

(declare-fun b!1480656 () Bool)

(assert (=> b!1480656 (= e!830493 (Intermediate!12206 false (toIndex!0 lt!646339 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1480657 () Bool)

(assert (=> b!1480657 (and (bvsge (index!51217 lt!646474) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646474) (size!48494 lt!646342)))))

(declare-fun res!1006336 () Bool)

(assert (=> b!1480657 (= res!1006336 (= (select (arr!47943 lt!646342) (index!51217 lt!646474)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480657 (=> res!1006336 e!830489)))

(declare-fun d!156051 () Bool)

(assert (=> d!156051 e!830491))

(declare-fun c!136682 () Bool)

(assert (=> d!156051 (= c!136682 (and (is-Intermediate!12206 lt!646474) (undefined!13018 lt!646474)))))

(assert (=> d!156051 (= lt!646474 e!830490)))

(declare-fun c!136684 () Bool)

(assert (=> d!156051 (= c!136684 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!646473 () (_ BitVec 64))

(assert (=> d!156051 (= lt!646473 (select (arr!47943 lt!646342) (toIndex!0 lt!646339 mask!2687)))))

(assert (=> d!156051 (validMask!0 mask!2687)))

(assert (=> d!156051 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646339 mask!2687) lt!646339 lt!646342 mask!2687) lt!646474)))

(declare-fun b!1480658 () Bool)

(assert (=> b!1480658 (= e!830490 e!830493)))

(declare-fun c!136683 () Bool)

(assert (=> b!1480658 (= c!136683 (or (= lt!646473 lt!646339) (= (bvadd lt!646473 lt!646473) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480659 () Bool)

(assert (=> b!1480659 (and (bvsge (index!51217 lt!646474) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646474) (size!48494 lt!646342)))))

(declare-fun res!1006334 () Bool)

(assert (=> b!1480659 (= res!1006334 (= (select (arr!47943 lt!646342) (index!51217 lt!646474)) lt!646339))))

(assert (=> b!1480659 (=> res!1006334 e!830489)))

(assert (=> b!1480659 (= e!830492 e!830489)))

(assert (= (and d!156051 c!136684) b!1480651))

(assert (= (and d!156051 (not c!136684)) b!1480658))

(assert (= (and b!1480658 c!136683) b!1480656))

(assert (= (and b!1480658 (not c!136683)) b!1480655))

(assert (= (and d!156051 c!136682) b!1480653))

(assert (= (and d!156051 (not c!136682)) b!1480654))

(assert (= (and b!1480654 res!1006335) b!1480659))

(assert (= (and b!1480659 (not res!1006334)) b!1480657))

(assert (= (and b!1480657 (not res!1006336)) b!1480652))

(assert (=> d!156051 m!1366231))

(declare-fun m!1366433 () Bool)

(assert (=> d!156051 m!1366433))

(assert (=> d!156051 m!1366247))

(declare-fun m!1366435 () Bool)

(assert (=> b!1480652 m!1366435))

(assert (=> b!1480657 m!1366435))

(assert (=> b!1480659 m!1366435))

(assert (=> b!1480655 m!1366231))

(declare-fun m!1366437 () Bool)

(assert (=> b!1480655 m!1366437))

(assert (=> b!1480655 m!1366437))

(declare-fun m!1366439 () Bool)

(assert (=> b!1480655 m!1366439))

(assert (=> b!1480334 d!156051))

(declare-fun d!156053 () Bool)

(declare-fun lt!646476 () (_ BitVec 32))

(declare-fun lt!646475 () (_ BitVec 32))

(assert (=> d!156053 (= lt!646476 (bvmul (bvxor lt!646475 (bvlshr lt!646475 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156053 (= lt!646475 ((_ extract 31 0) (bvand (bvxor lt!646339 (bvlshr lt!646339 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156053 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1006323 (let ((h!35990 ((_ extract 31 0) (bvand (bvxor lt!646339 (bvlshr lt!646339 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132798 (bvmul (bvxor h!35990 (bvlshr h!35990 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132798 (bvlshr x!132798 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1006323 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1006323 #b00000000000000000000000000000000))))))

(assert (=> d!156053 (= (toIndex!0 lt!646339 mask!2687) (bvand (bvxor lt!646476 (bvlshr lt!646476 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1480334 d!156053))

(declare-fun b!1480660 () Bool)

(declare-fun e!830495 () SeekEntryResult!12206)

(assert (=> b!1480660 (= e!830495 (Intermediate!12206 true index!646 x!665))))

(declare-fun b!1480661 () Bool)

(declare-fun lt!646478 () SeekEntryResult!12206)

(assert (=> b!1480661 (and (bvsge (index!51217 lt!646478) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646478) (size!48494 lt!646342)))))

(declare-fun e!830494 () Bool)

(assert (=> b!1480661 (= e!830494 (= (select (arr!47943 lt!646342) (index!51217 lt!646478)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480662 () Bool)

(declare-fun e!830496 () Bool)

(assert (=> b!1480662 (= e!830496 (bvsge (x!132792 lt!646478) #b01111111111111111111111111111110))))

(declare-fun b!1480663 () Bool)

(declare-fun e!830497 () Bool)

(assert (=> b!1480663 (= e!830496 e!830497)))

(declare-fun res!1006338 () Bool)

(assert (=> b!1480663 (= res!1006338 (and (is-Intermediate!12206 lt!646478) (not (undefined!13018 lt!646478)) (bvslt (x!132792 lt!646478) #b01111111111111111111111111111110) (bvsge (x!132792 lt!646478) #b00000000000000000000000000000000) (bvsge (x!132792 lt!646478) x!665)))))

(assert (=> b!1480663 (=> (not res!1006338) (not e!830497))))

(declare-fun e!830498 () SeekEntryResult!12206)

(declare-fun b!1480664 () Bool)

(assert (=> b!1480664 (= e!830498 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!646339 lt!646342 mask!2687))))

(declare-fun b!1480665 () Bool)

(assert (=> b!1480665 (= e!830498 (Intermediate!12206 false index!646 x!665))))

(declare-fun b!1480666 () Bool)

(assert (=> b!1480666 (and (bvsge (index!51217 lt!646478) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646478) (size!48494 lt!646342)))))

(declare-fun res!1006339 () Bool)

(assert (=> b!1480666 (= res!1006339 (= (select (arr!47943 lt!646342) (index!51217 lt!646478)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480666 (=> res!1006339 e!830494)))

(declare-fun d!156055 () Bool)

(assert (=> d!156055 e!830496))

(declare-fun c!136685 () Bool)

(assert (=> d!156055 (= c!136685 (and (is-Intermediate!12206 lt!646478) (undefined!13018 lt!646478)))))

(assert (=> d!156055 (= lt!646478 e!830495)))

(declare-fun c!136687 () Bool)

(assert (=> d!156055 (= c!136687 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!646477 () (_ BitVec 64))

(assert (=> d!156055 (= lt!646477 (select (arr!47943 lt!646342) index!646))))

(assert (=> d!156055 (validMask!0 mask!2687)))

(assert (=> d!156055 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646339 lt!646342 mask!2687) lt!646478)))

(declare-fun b!1480667 () Bool)

(assert (=> b!1480667 (= e!830495 e!830498)))

(declare-fun c!136686 () Bool)

(assert (=> b!1480667 (= c!136686 (or (= lt!646477 lt!646339) (= (bvadd lt!646477 lt!646477) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480668 () Bool)

(assert (=> b!1480668 (and (bvsge (index!51217 lt!646478) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646478) (size!48494 lt!646342)))))

(declare-fun res!1006337 () Bool)

(assert (=> b!1480668 (= res!1006337 (= (select (arr!47943 lt!646342) (index!51217 lt!646478)) lt!646339))))

(assert (=> b!1480668 (=> res!1006337 e!830494)))

(assert (=> b!1480668 (= e!830497 e!830494)))

(assert (= (and d!156055 c!136687) b!1480660))

(assert (= (and d!156055 (not c!136687)) b!1480667))

(assert (= (and b!1480667 c!136686) b!1480665))

(assert (= (and b!1480667 (not c!136686)) b!1480664))

(assert (= (and d!156055 c!136685) b!1480662))

(assert (= (and d!156055 (not c!136685)) b!1480663))

(assert (= (and b!1480663 res!1006338) b!1480668))

(assert (= (and b!1480668 (not res!1006337)) b!1480666))

(assert (= (and b!1480666 (not res!1006339)) b!1480661))

(assert (=> d!156055 m!1366419))

(assert (=> d!156055 m!1366247))

(declare-fun m!1366441 () Bool)

(assert (=> b!1480661 m!1366441))

(assert (=> b!1480666 m!1366441))

(assert (=> b!1480668 m!1366441))

(assert (=> b!1480664 m!1366325))

(assert (=> b!1480664 m!1366325))

(declare-fun m!1366443 () Bool)

(assert (=> b!1480664 m!1366443))

(assert (=> b!1480332 d!156055))

(declare-fun d!156057 () Bool)

(assert (=> d!156057 (= (validKeyInArray!0 (select (arr!47943 a!2862) j!93)) (and (not (= (select (arr!47943 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47943 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1480343 d!156057))

(push 1)

(assert (not b!1480558))

(assert (not b!1480544))

(assert (not b!1480664))

(assert (not d!156027))

(assert (not b!1480655))

(assert (not b!1480408))

(assert (not d!156051))

(assert (not b!1480542))

(assert (not d!156055))

(assert (not b!1480559))

(assert (not b!1480560))

(assert (not d!156037))

(assert (not bm!67832))

(assert (not d!156005))

(assert (not d!156049))

(assert (not d!155991))

(assert (not b!1480648))

(assert (not b!1480535))

(assert (not d!156033))

(assert (not b!1480641))

(assert (not bm!67821))

(assert (not bm!67829))

(assert (not b!1480482))

(assert (not b!1480410))

(assert (not b!1480565))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!830651 () SeekEntryResult!12206)

(declare-fun b!1480901 () Bool)

(assert (=> b!1480901 (= e!830651 (Intermediate!12206 true (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001)))))

(declare-fun b!1480902 () Bool)

(declare-fun lt!646573 () SeekEntryResult!12206)

(assert (=> b!1480902 (and (bvsge (index!51217 lt!646573) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646573) (size!48494 a!2862)))))

(declare-fun e!830650 () Bool)

(assert (=> b!1480902 (= e!830650 (= (select (arr!47943 a!2862) (index!51217 lt!646573)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480903 () Bool)

(declare-fun e!830652 () Bool)

(assert (=> b!1480903 (= e!830652 (bvsge (x!132792 lt!646573) #b01111111111111111111111111111110))))

(declare-fun b!1480904 () Bool)

(declare-fun e!830653 () Bool)

(assert (=> b!1480904 (= e!830652 e!830653)))

(declare-fun res!1006433 () Bool)

(assert (=> b!1480904 (= res!1006433 (and (is-Intermediate!12206 lt!646573) (not (undefined!13018 lt!646573)) (bvslt (x!132792 lt!646573) #b01111111111111111111111111111110) (bvsge (x!132792 lt!646573) #b00000000000000000000000000000000) (bvsge (x!132792 lt!646573) (bvadd x!665 #b00000000000000000000000000000001))))))

(assert (=> b!1480904 (=> (not res!1006433) (not e!830653))))

(declare-fun b!1480905 () Bool)

(declare-fun e!830654 () SeekEntryResult!12206)

(assert (=> b!1480905 (= e!830654 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001) mask!2687) (select (arr!47943 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480906 () Bool)

(assert (=> b!1480906 (= e!830654 (Intermediate!12206 false (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001)))))

(declare-fun b!1480907 () Bool)

(assert (=> b!1480907 (and (bvsge (index!51217 lt!646573) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646573) (size!48494 a!2862)))))

(declare-fun res!1006434 () Bool)

(assert (=> b!1480907 (= res!1006434 (= (select (arr!47943 a!2862) (index!51217 lt!646573)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480907 (=> res!1006434 e!830650)))

(declare-fun d!156161 () Bool)

(assert (=> d!156161 e!830652))

(declare-fun c!136758 () Bool)

(assert (=> d!156161 (= c!136758 (and (is-Intermediate!12206 lt!646573) (undefined!13018 lt!646573)))))

(assert (=> d!156161 (= lt!646573 e!830651)))

(declare-fun c!136760 () Bool)

(assert (=> d!156161 (= c!136760 (bvsge (bvadd x!665 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!646572 () (_ BitVec 64))

(assert (=> d!156161 (= lt!646572 (select (arr!47943 a!2862) (nextIndex!0 index!646 x!665 mask!2687)))))

(assert (=> d!156161 (validMask!0 mask!2687)))

(assert (=> d!156161 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47943 a!2862) j!93) a!2862 mask!2687) lt!646573)))

(declare-fun b!1480908 () Bool)

(assert (=> b!1480908 (= e!830651 e!830654)))

(declare-fun c!136759 () Bool)

(assert (=> b!1480908 (= c!136759 (or (= lt!646572 (select (arr!47943 a!2862) j!93)) (= (bvadd lt!646572 lt!646572) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480909 () Bool)

(assert (=> b!1480909 (and (bvsge (index!51217 lt!646573) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646573) (size!48494 a!2862)))))

(declare-fun res!1006432 () Bool)

(assert (=> b!1480909 (= res!1006432 (= (select (arr!47943 a!2862) (index!51217 lt!646573)) (select (arr!47943 a!2862) j!93)))))

(assert (=> b!1480909 (=> res!1006432 e!830650)))

(assert (=> b!1480909 (= e!830653 e!830650)))

(assert (= (and d!156161 c!136760) b!1480901))

(assert (= (and d!156161 (not c!136760)) b!1480908))

(assert (= (and b!1480908 c!136759) b!1480906))

(assert (= (and b!1480908 (not c!136759)) b!1480905))

(assert (= (and d!156161 c!136758) b!1480903))

(assert (= (and d!156161 (not c!136758)) b!1480904))

(assert (= (and b!1480904 res!1006433) b!1480909))

(assert (= (and b!1480909 (not res!1006432)) b!1480907))

(assert (= (and b!1480907 (not res!1006434)) b!1480902))

(assert (=> d!156161 m!1366325))

(declare-fun m!1366713 () Bool)

(assert (=> d!156161 m!1366713))

(assert (=> d!156161 m!1366247))

(declare-fun m!1366715 () Bool)

(assert (=> b!1480902 m!1366715))

(assert (=> b!1480907 m!1366715))

(assert (=> b!1480909 m!1366715))

(assert (=> b!1480905 m!1366325))

(declare-fun m!1366717 () Bool)

(assert (=> b!1480905 m!1366717))

(assert (=> b!1480905 m!1366717))

(assert (=> b!1480905 m!1366205))

(declare-fun m!1366719 () Bool)

(assert (=> b!1480905 m!1366719))

(assert (=> b!1480482 d!156161))

(declare-fun d!156163 () Bool)

(declare-fun lt!646576 () (_ BitVec 32))

(assert (=> d!156163 (and (bvsge lt!646576 #b00000000000000000000000000000000) (bvslt lt!646576 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156163 (= lt!646576 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156163 (validMask!0 mask!2687)))

(assert (=> d!156163 (= (nextIndex!0 index!646 x!665 mask!2687) lt!646576)))

(declare-fun bs!42668 () Bool)

(assert (= bs!42668 d!156163))

(declare-fun m!1366721 () Bool)

(assert (=> bs!42668 m!1366721))

(assert (=> bs!42668 m!1366247))

(assert (=> b!1480482 d!156163))

(assert (=> d!156051 d!156011))

(declare-fun d!156165 () Bool)

(assert (=> d!156165 (arrayContainsKey!0 a!2862 lt!646423 #b00000000000000000000000000000000)))

(declare-fun lt!646579 () Unit!49700)

(declare-fun choose!13 (array!99337 (_ BitVec 64) (_ BitVec 32)) Unit!49700)

(assert (=> d!156165 (= lt!646579 (choose!13 a!2862 lt!646423 j!93))))

(assert (=> d!156165 (bvsge j!93 #b00000000000000000000000000000000)))

(assert (=> d!156165 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646423 j!93) lt!646579)))

(declare-fun bs!42669 () Bool)

(assert (= bs!42669 d!156165))

(assert (=> bs!42669 m!1366361))

(declare-fun m!1366723 () Bool)

(assert (=> bs!42669 m!1366723))

(assert (=> b!1480542 d!156165))

(declare-fun d!156167 () Bool)

(declare-fun res!1006439 () Bool)

(declare-fun e!830659 () Bool)

(assert (=> d!156167 (=> res!1006439 e!830659)))

(assert (=> d!156167 (= res!1006439 (= (select (arr!47943 a!2862) #b00000000000000000000000000000000) lt!646423))))

(assert (=> d!156167 (= (arrayContainsKey!0 a!2862 lt!646423 #b00000000000000000000000000000000) e!830659)))

(declare-fun b!1480914 () Bool)

(declare-fun e!830660 () Bool)

(assert (=> b!1480914 (= e!830659 e!830660)))

(declare-fun res!1006440 () Bool)

(assert (=> b!1480914 (=> (not res!1006440) (not e!830660))))

(assert (=> b!1480914 (= res!1006440 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!48494 a!2862)))))

(declare-fun b!1480915 () Bool)

(assert (=> b!1480915 (= e!830660 (arrayContainsKey!0 a!2862 lt!646423 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!156167 (not res!1006439)) b!1480914))

(assert (= (and b!1480914 res!1006440) b!1480915))

(assert (=> d!156167 m!1366277))

(declare-fun m!1366725 () Bool)

(assert (=> b!1480915 m!1366725))

(assert (=> b!1480542 d!156167))

(assert (=> b!1480542 d!156005))

(declare-fun b!1480916 () Bool)

(declare-fun e!830662 () SeekEntryResult!12206)

(assert (=> b!1480916 (= e!830662 Undefined!12206)))

(declare-fun b!1480917 () Bool)

(declare-fun e!830663 () SeekEntryResult!12206)

(assert (=> b!1480917 (= e!830663 (MissingVacant!12206 (index!51217 lt!646419)))))

(declare-fun lt!646581 () SeekEntryResult!12206)

(declare-fun d!156169 () Bool)

(assert (=> d!156169 (and (or (is-Undefined!12206 lt!646581) (not (is-Found!12206 lt!646581)) (and (bvsge (index!51216 lt!646581) #b00000000000000000000000000000000) (bvslt (index!51216 lt!646581) (size!48494 a!2862)))) (or (is-Undefined!12206 lt!646581) (is-Found!12206 lt!646581) (not (is-MissingVacant!12206 lt!646581)) (not (= (index!51218 lt!646581) (index!51217 lt!646419))) (and (bvsge (index!51218 lt!646581) #b00000000000000000000000000000000) (bvslt (index!51218 lt!646581) (size!48494 a!2862)))) (or (is-Undefined!12206 lt!646581) (ite (is-Found!12206 lt!646581) (= (select (arr!47943 a!2862) (index!51216 lt!646581)) (select (arr!47943 a!2862) j!93)) (and (is-MissingVacant!12206 lt!646581) (= (index!51218 lt!646581) (index!51217 lt!646419)) (= (select (arr!47943 a!2862) (index!51218 lt!646581)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156169 (= lt!646581 e!830662)))

(declare-fun c!136763 () Bool)

(assert (=> d!156169 (= c!136763 (bvsge (x!132792 lt!646419) #b01111111111111111111111111111110))))

(declare-fun lt!646580 () (_ BitVec 64))

(assert (=> d!156169 (= lt!646580 (select (arr!47943 a!2862) (index!51217 lt!646419)))))

(assert (=> d!156169 (validMask!0 mask!2687)))

(assert (=> d!156169 (= (seekKeyOrZeroReturnVacant!0 (x!132792 lt!646419) (index!51217 lt!646419) (index!51217 lt!646419) (select (arr!47943 a!2862) j!93) a!2862 mask!2687) lt!646581)))

(declare-fun b!1480918 () Bool)

(assert (=> b!1480918 (= e!830663 (seekKeyOrZeroReturnVacant!0 (bvadd (x!132792 lt!646419) #b00000000000000000000000000000001) (nextIndex!0 (index!51217 lt!646419) (x!132792 lt!646419) mask!2687) (index!51217 lt!646419) (select (arr!47943 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480919 () Bool)

(declare-fun e!830661 () SeekEntryResult!12206)

(assert (=> b!1480919 (= e!830661 (Found!12206 (index!51217 lt!646419)))))

(declare-fun b!1480920 () Bool)

(declare-fun c!136761 () Bool)

(assert (=> b!1480920 (= c!136761 (= lt!646580 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480920 (= e!830661 e!830663)))

(declare-fun b!1480921 () Bool)

(assert (=> b!1480921 (= e!830662 e!830661)))

(declare-fun c!136762 () Bool)

(assert (=> b!1480921 (= c!136762 (= lt!646580 (select (arr!47943 a!2862) j!93)))))

(assert (= (and d!156169 c!136763) b!1480916))

(assert (= (and d!156169 (not c!136763)) b!1480921))

(assert (= (and b!1480921 c!136762) b!1480919))

(assert (= (and b!1480921 (not c!136762)) b!1480920))

(assert (= (and b!1480920 c!136761) b!1480917))

(assert (= (and b!1480920 (not c!136761)) b!1480918))

(declare-fun m!1366727 () Bool)

(assert (=> d!156169 m!1366727))

(declare-fun m!1366729 () Bool)

(assert (=> d!156169 m!1366729))

(assert (=> d!156169 m!1366341))

(assert (=> d!156169 m!1366247))

(declare-fun m!1366731 () Bool)

(assert (=> b!1480918 m!1366731))

(assert (=> b!1480918 m!1366731))

(assert (=> b!1480918 m!1366205))

(declare-fun m!1366733 () Bool)

(assert (=> b!1480918 m!1366733))

(assert (=> b!1480535 d!156169))

(declare-fun b!1480922 () Bool)

(declare-fun e!830665 () SeekEntryResult!12206)

(assert (=> b!1480922 (= e!830665 Undefined!12206)))

(declare-fun b!1480923 () Bool)

(declare-fun e!830666 () SeekEntryResult!12206)

(assert (=> b!1480923 (= e!830666 (MissingVacant!12206 intermediateAfterIndex!19))))

(declare-fun d!156171 () Bool)

(declare-fun lt!646583 () SeekEntryResult!12206)

(assert (=> d!156171 (and (or (is-Undefined!12206 lt!646583) (not (is-Found!12206 lt!646583)) (and (bvsge (index!51216 lt!646583) #b00000000000000000000000000000000) (bvslt (index!51216 lt!646583) (size!48494 lt!646342)))) (or (is-Undefined!12206 lt!646583) (is-Found!12206 lt!646583) (not (is-MissingVacant!12206 lt!646583)) (not (= (index!51218 lt!646583) intermediateAfterIndex!19)) (and (bvsge (index!51218 lt!646583) #b00000000000000000000000000000000) (bvslt (index!51218 lt!646583) (size!48494 lt!646342)))) (or (is-Undefined!12206 lt!646583) (ite (is-Found!12206 lt!646583) (= (select (arr!47943 lt!646342) (index!51216 lt!646583)) lt!646339) (and (is-MissingVacant!12206 lt!646583) (= (index!51218 lt!646583) intermediateAfterIndex!19) (= (select (arr!47943 lt!646342) (index!51218 lt!646583)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156171 (= lt!646583 e!830665)))

(declare-fun c!136766 () Bool)

(assert (=> d!156171 (= c!136766 (bvsge (bvadd x!665 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!646582 () (_ BitVec 64))

(assert (=> d!156171 (= lt!646582 (select (arr!47943 lt!646342) (nextIndex!0 index!646 x!665 mask!2687)))))

(assert (=> d!156171 (validMask!0 mask!2687)))

(assert (=> d!156171 (= (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!646339 lt!646342 mask!2687) lt!646583)))

(declare-fun b!1480924 () Bool)

(assert (=> b!1480924 (= e!830666 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001) mask!2687) intermediateAfterIndex!19 lt!646339 lt!646342 mask!2687))))

(declare-fun b!1480925 () Bool)

(declare-fun e!830664 () SeekEntryResult!12206)

(assert (=> b!1480925 (= e!830664 (Found!12206 (nextIndex!0 index!646 x!665 mask!2687)))))

(declare-fun b!1480926 () Bool)

(declare-fun c!136764 () Bool)

(assert (=> b!1480926 (= c!136764 (= lt!646582 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480926 (= e!830664 e!830666)))

(declare-fun b!1480927 () Bool)

(assert (=> b!1480927 (= e!830665 e!830664)))

(declare-fun c!136765 () Bool)

(assert (=> b!1480927 (= c!136765 (= lt!646582 lt!646339))))

(assert (= (and d!156171 c!136766) b!1480922))

(assert (= (and d!156171 (not c!136766)) b!1480927))

(assert (= (and b!1480927 c!136765) b!1480925))

(assert (= (and b!1480927 (not c!136765)) b!1480926))

(assert (= (and b!1480926 c!136764) b!1480923))

(assert (= (and b!1480926 (not c!136764)) b!1480924))

(declare-fun m!1366735 () Bool)

(assert (=> d!156171 m!1366735))

(declare-fun m!1366737 () Bool)

(assert (=> d!156171 m!1366737))

(assert (=> d!156171 m!1366325))

(declare-fun m!1366739 () Bool)

(assert (=> d!156171 m!1366739))

(assert (=> d!156171 m!1366247))

(assert (=> b!1480924 m!1366325))

(assert (=> b!1480924 m!1366717))

(assert (=> b!1480924 m!1366717))

(declare-fun m!1366741 () Bool)

(assert (=> b!1480924 m!1366741))

(assert (=> b!1480641 d!156171))

(assert (=> b!1480641 d!156163))

(declare-fun b!1480928 () Bool)

(declare-fun e!830668 () Bool)

(declare-fun e!830667 () Bool)

(assert (=> b!1480928 (= e!830668 e!830667)))

(declare-fun lt!646584 () (_ BitVec 64))

(assert (=> b!1480928 (= lt!646584 (select (arr!47943 a!2862) (bvadd j!93 #b00000000000000000000000000000001)))))

(declare-fun lt!646586 () Unit!49700)

(assert (=> b!1480928 (= lt!646586 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646584 (bvadd j!93 #b00000000000000000000000000000001)))))

(assert (=> b!1480928 (arrayContainsKey!0 a!2862 lt!646584 #b00000000000000000000000000000000)))

(declare-fun lt!646585 () Unit!49700)

(assert (=> b!1480928 (= lt!646585 lt!646586)))

(declare-fun res!1006442 () Bool)

(assert (=> b!1480928 (= res!1006442 (= (seekEntryOrOpen!0 (select (arr!47943 a!2862) (bvadd j!93 #b00000000000000000000000000000001)) a!2862 mask!2687) (Found!12206 (bvadd j!93 #b00000000000000000000000000000001))))))

(assert (=> b!1480928 (=> (not res!1006442) (not e!830667))))

(declare-fun b!1480929 () Bool)

(declare-fun call!67849 () Bool)

(assert (=> b!1480929 (= e!830667 call!67849)))

(declare-fun d!156173 () Bool)

(declare-fun res!1006441 () Bool)

(declare-fun e!830669 () Bool)

(assert (=> d!156173 (=> res!1006441 e!830669)))

(assert (=> d!156173 (= res!1006441 (bvsge (bvadd j!93 #b00000000000000000000000000000001) (size!48494 a!2862)))))

(assert (=> d!156173 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687) e!830669)))

(declare-fun bm!67846 () Bool)

(assert (=> bm!67846 (= call!67849 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1480930 () Bool)

(assert (=> b!1480930 (= e!830669 e!830668)))

(declare-fun c!136767 () Bool)

(assert (=> b!1480930 (= c!136767 (validKeyInArray!0 (select (arr!47943 a!2862) (bvadd j!93 #b00000000000000000000000000000001))))))

(declare-fun b!1480931 () Bool)

(assert (=> b!1480931 (= e!830668 call!67849)))

(assert (= (and d!156173 (not res!1006441)) b!1480930))

(assert (= (and b!1480930 c!136767) b!1480928))

(assert (= (and b!1480930 (not c!136767)) b!1480931))

(assert (= (and b!1480928 res!1006442) b!1480929))

(assert (= (or b!1480929 b!1480931) bm!67846))

(declare-fun m!1366743 () Bool)

(assert (=> b!1480928 m!1366743))

(declare-fun m!1366745 () Bool)

(assert (=> b!1480928 m!1366745))

(declare-fun m!1366747 () Bool)

(assert (=> b!1480928 m!1366747))

(assert (=> b!1480928 m!1366743))

(declare-fun m!1366749 () Bool)

(assert (=> b!1480928 m!1366749))

(declare-fun m!1366751 () Bool)

(assert (=> bm!67846 m!1366751))

(assert (=> b!1480930 m!1366743))

(assert (=> b!1480930 m!1366743))

(declare-fun m!1366753 () Bool)

(assert (=> b!1480930 m!1366753))

(assert (=> bm!67829 d!156173))

(declare-fun d!156175 () Bool)

(declare-fun lt!646589 () Bool)

(declare-fun content!783 (List!34624) (Set (_ BitVec 64)))

(assert (=> d!156175 (= lt!646589 (member (select (arr!47943 a!2862) #b00000000000000000000000000000000) (content!783 Nil!34621)))))

(declare-fun e!830675 () Bool)

(assert (=> d!156175 (= lt!646589 e!830675)))

(declare-fun res!1006448 () Bool)

(assert (=> d!156175 (=> (not res!1006448) (not e!830675))))

(assert (=> d!156175 (= res!1006448 (is-Cons!34620 Nil!34621))))

(assert (=> d!156175 (= (contains!9924 Nil!34621 (select (arr!47943 a!2862) #b00000000000000000000000000000000)) lt!646589)))

(declare-fun b!1480936 () Bool)

(declare-fun e!830674 () Bool)

(assert (=> b!1480936 (= e!830675 e!830674)))

(declare-fun res!1006447 () Bool)

(assert (=> b!1480936 (=> res!1006447 e!830674)))

(assert (=> b!1480936 (= res!1006447 (= (h!35988 Nil!34621) (select (arr!47943 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1480937 () Bool)

(assert (=> b!1480937 (= e!830674 (contains!9924 (t!49325 Nil!34621) (select (arr!47943 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156175 res!1006448) b!1480936))

(assert (= (and b!1480936 (not res!1006447)) b!1480937))

(declare-fun m!1366755 () Bool)

(assert (=> d!156175 m!1366755))

(assert (=> d!156175 m!1366277))

(declare-fun m!1366757 () Bool)

(assert (=> d!156175 m!1366757))

(assert (=> b!1480937 m!1366277))

(declare-fun m!1366759 () Bool)

(assert (=> b!1480937 m!1366759))

(assert (=> b!1480558 d!156175))

(assert (=> b!1480544 d!156057))

(declare-fun b!1480938 () Bool)

(declare-fun e!830677 () SeekEntryResult!12206)

(assert (=> b!1480938 (= e!830677 Undefined!12206)))

(declare-fun b!1480939 () Bool)

(declare-fun e!830678 () SeekEntryResult!12206)

(assert (=> b!1480939 (= e!830678 (MissingVacant!12206 (index!51217 lt!646472)))))

(declare-fun lt!646591 () SeekEntryResult!12206)

(declare-fun d!156177 () Bool)

(assert (=> d!156177 (and (or (is-Undefined!12206 lt!646591) (not (is-Found!12206 lt!646591)) (and (bvsge (index!51216 lt!646591) #b00000000000000000000000000000000) (bvslt (index!51216 lt!646591) (size!48494 lt!646342)))) (or (is-Undefined!12206 lt!646591) (is-Found!12206 lt!646591) (not (is-MissingVacant!12206 lt!646591)) (not (= (index!51218 lt!646591) (index!51217 lt!646472))) (and (bvsge (index!51218 lt!646591) #b00000000000000000000000000000000) (bvslt (index!51218 lt!646591) (size!48494 lt!646342)))) (or (is-Undefined!12206 lt!646591) (ite (is-Found!12206 lt!646591) (= (select (arr!47943 lt!646342) (index!51216 lt!646591)) lt!646339) (and (is-MissingVacant!12206 lt!646591) (= (index!51218 lt!646591) (index!51217 lt!646472)) (= (select (arr!47943 lt!646342) (index!51218 lt!646591)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156177 (= lt!646591 e!830677)))

(declare-fun c!136770 () Bool)

(assert (=> d!156177 (= c!136770 (bvsge (x!132792 lt!646472) #b01111111111111111111111111111110))))

(declare-fun lt!646590 () (_ BitVec 64))

(assert (=> d!156177 (= lt!646590 (select (arr!47943 lt!646342) (index!51217 lt!646472)))))

(assert (=> d!156177 (validMask!0 mask!2687)))

(assert (=> d!156177 (= (seekKeyOrZeroReturnVacant!0 (x!132792 lt!646472) (index!51217 lt!646472) (index!51217 lt!646472) lt!646339 lt!646342 mask!2687) lt!646591)))

(declare-fun b!1480940 () Bool)

(assert (=> b!1480940 (= e!830678 (seekKeyOrZeroReturnVacant!0 (bvadd (x!132792 lt!646472) #b00000000000000000000000000000001) (nextIndex!0 (index!51217 lt!646472) (x!132792 lt!646472) mask!2687) (index!51217 lt!646472) lt!646339 lt!646342 mask!2687))))

(declare-fun b!1480941 () Bool)

(declare-fun e!830676 () SeekEntryResult!12206)

(assert (=> b!1480941 (= e!830676 (Found!12206 (index!51217 lt!646472)))))

(declare-fun b!1480942 () Bool)

(declare-fun c!136768 () Bool)

(assert (=> b!1480942 (= c!136768 (= lt!646590 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480942 (= e!830676 e!830678)))

(declare-fun b!1480943 () Bool)

(assert (=> b!1480943 (= e!830677 e!830676)))

(declare-fun c!136769 () Bool)

(assert (=> b!1480943 (= c!136769 (= lt!646590 lt!646339))))

(assert (= (and d!156177 c!136770) b!1480938))

(assert (= (and d!156177 (not c!136770)) b!1480943))

(assert (= (and b!1480943 c!136769) b!1480941))

(assert (= (and b!1480943 (not c!136769)) b!1480942))

(assert (= (and b!1480942 c!136768) b!1480939))

(assert (= (and b!1480942 (not c!136768)) b!1480940))

(declare-fun m!1366761 () Bool)

(assert (=> d!156177 m!1366761))

(declare-fun m!1366763 () Bool)

(assert (=> d!156177 m!1366763))

(assert (=> d!156177 m!1366425))

(assert (=> d!156177 m!1366247))

(declare-fun m!1366765 () Bool)

(assert (=> b!1480940 m!1366765))

(assert (=> b!1480940 m!1366765))

(declare-fun m!1366767 () Bool)

(assert (=> b!1480940 m!1366767))

(assert (=> b!1480648 d!156177))

(declare-fun b!1480944 () Bool)

(declare-fun e!830681 () Bool)

(declare-fun call!67850 () Bool)

(assert (=> b!1480944 (= e!830681 call!67850)))

(declare-fun b!1480945 () Bool)

(assert (=> b!1480945 (= e!830681 call!67850)))

(declare-fun bm!67847 () Bool)

(declare-fun c!136771 () Bool)

(assert (=> bm!67847 (= call!67850 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!136771 (Cons!34620 (select (arr!47943 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!136642 (Cons!34620 (select (arr!47943 a!2862) #b00000000000000000000000000000000) Nil!34621) Nil!34621)) (ite c!136642 (Cons!34620 (select (arr!47943 a!2862) #b00000000000000000000000000000000) Nil!34621) Nil!34621))))))

(declare-fun b!1480946 () Bool)

(declare-fun e!830679 () Bool)

(assert (=> b!1480946 (= e!830679 (contains!9924 (ite c!136642 (Cons!34620 (select (arr!47943 a!2862) #b00000000000000000000000000000000) Nil!34621) Nil!34621) (select (arr!47943 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!156179 () Bool)

(declare-fun res!1006449 () Bool)

(declare-fun e!830682 () Bool)

(assert (=> d!156179 (=> res!1006449 e!830682)))

(assert (=> d!156179 (= res!1006449 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!48494 a!2862)))))

(assert (=> d!156179 (= (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!136642 (Cons!34620 (select (arr!47943 a!2862) #b00000000000000000000000000000000) Nil!34621) Nil!34621)) e!830682)))

(declare-fun b!1480947 () Bool)

(declare-fun e!830680 () Bool)

(assert (=> b!1480947 (= e!830680 e!830681)))

(assert (=> b!1480947 (= c!136771 (validKeyInArray!0 (select (arr!47943 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1480948 () Bool)

(assert (=> b!1480948 (= e!830682 e!830680)))

(declare-fun res!1006450 () Bool)

(assert (=> b!1480948 (=> (not res!1006450) (not e!830680))))

(assert (=> b!1480948 (= res!1006450 (not e!830679))))

(declare-fun res!1006451 () Bool)

(assert (=> b!1480948 (=> (not res!1006451) (not e!830679))))

(assert (=> b!1480948 (= res!1006451 (validKeyInArray!0 (select (arr!47943 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!156179 (not res!1006449)) b!1480948))

(assert (= (and b!1480948 res!1006451) b!1480946))

(assert (= (and b!1480948 res!1006450) b!1480947))

(assert (= (and b!1480947 c!136771) b!1480945))

(assert (= (and b!1480947 (not c!136771)) b!1480944))

(assert (= (or b!1480945 b!1480944) bm!67847))

(declare-fun m!1366769 () Bool)

(assert (=> bm!67847 m!1366769))

(declare-fun m!1366771 () Bool)

(assert (=> bm!67847 m!1366771))

(assert (=> b!1480946 m!1366769))

(assert (=> b!1480946 m!1366769))

(declare-fun m!1366773 () Bool)

(assert (=> b!1480946 m!1366773))

(assert (=> b!1480947 m!1366769))

(assert (=> b!1480947 m!1366769))

(declare-fun m!1366775 () Bool)

(assert (=> b!1480947 m!1366775))

(assert (=> b!1480948 m!1366769))

(assert (=> b!1480948 m!1366769))

(assert (=> b!1480948 m!1366775))

(assert (=> bm!67832 d!156179))

(assert (=> d!156037 d!156011))

(declare-fun d!156181 () Bool)

(assert (=> d!156181 (= (validKeyInArray!0 (select (arr!47943 a!2862) #b00000000000000000000000000000000)) (and (not (= (select (arr!47943 a!2862) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47943 a!2862) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1480559 d!156181))

(assert (=> b!1480560 d!156181))

(declare-fun d!156183 () Bool)

(assert (=> d!156183 (arrayContainsKey!0 a!2862 lt!646374 #b00000000000000000000000000000000)))

(declare-fun lt!646592 () Unit!49700)

(assert (=> d!156183 (= lt!646592 (choose!13 a!2862 lt!646374 #b00000000000000000000000000000000))))

(assert (=> d!156183 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!156183 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646374 #b00000000000000000000000000000000) lt!646592)))

(declare-fun bs!42670 () Bool)

(assert (= bs!42670 d!156183))

(assert (=> bs!42670 m!1366281))

(declare-fun m!1366777 () Bool)

(assert (=> bs!42670 m!1366777))

(assert (=> b!1480408 d!156183))

(declare-fun d!156185 () Bool)

(declare-fun res!1006452 () Bool)

(declare-fun e!830683 () Bool)

(assert (=> d!156185 (=> res!1006452 e!830683)))

(assert (=> d!156185 (= res!1006452 (= (select (arr!47943 a!2862) #b00000000000000000000000000000000) lt!646374))))

(assert (=> d!156185 (= (arrayContainsKey!0 a!2862 lt!646374 #b00000000000000000000000000000000) e!830683)))

(declare-fun b!1480949 () Bool)

(declare-fun e!830684 () Bool)

(assert (=> b!1480949 (= e!830683 e!830684)))

(declare-fun res!1006453 () Bool)

(assert (=> b!1480949 (=> (not res!1006453) (not e!830684))))

(assert (=> b!1480949 (= res!1006453 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!48494 a!2862)))))

(declare-fun b!1480950 () Bool)

(assert (=> b!1480950 (= e!830684 (arrayContainsKey!0 a!2862 lt!646374 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!156185 (not res!1006452)) b!1480949))

(assert (= (and b!1480949 res!1006453) b!1480950))

(assert (=> d!156185 m!1366277))

(declare-fun m!1366779 () Bool)

(assert (=> b!1480950 m!1366779))

(assert (=> b!1480408 d!156185))

(declare-fun b!1480951 () Bool)

(declare-fun e!830686 () SeekEntryResult!12206)

(declare-fun lt!646595 () SeekEntryResult!12206)

(assert (=> b!1480951 (= e!830686 (MissingZero!12206 (index!51217 lt!646595)))))

(declare-fun b!1480953 () Bool)

(declare-fun e!830685 () SeekEntryResult!12206)

(assert (=> b!1480953 (= e!830685 Undefined!12206)))

(declare-fun b!1480954 () Bool)

(assert (=> b!1480954 (= e!830686 (seekKeyOrZeroReturnVacant!0 (x!132792 lt!646595) (index!51217 lt!646595) (index!51217 lt!646595) (select (arr!47943 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687))))

(declare-fun b!1480955 () Bool)

(declare-fun e!830687 () SeekEntryResult!12206)

(assert (=> b!1480955 (= e!830685 e!830687)))

(declare-fun lt!646594 () (_ BitVec 64))

(assert (=> b!1480955 (= lt!646594 (select (arr!47943 a!2862) (index!51217 lt!646595)))))

(declare-fun c!136772 () Bool)

(assert (=> b!1480955 (= c!136772 (= lt!646594 (select (arr!47943 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1480956 () Bool)

(declare-fun c!136773 () Bool)

(assert (=> b!1480956 (= c!136773 (= lt!646594 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480956 (= e!830687 e!830686)))

(declare-fun b!1480952 () Bool)

(assert (=> b!1480952 (= e!830687 (Found!12206 (index!51217 lt!646595)))))

(declare-fun d!156187 () Bool)

(declare-fun lt!646593 () SeekEntryResult!12206)

(assert (=> d!156187 (and (or (is-Undefined!12206 lt!646593) (not (is-Found!12206 lt!646593)) (and (bvsge (index!51216 lt!646593) #b00000000000000000000000000000000) (bvslt (index!51216 lt!646593) (size!48494 a!2862)))) (or (is-Undefined!12206 lt!646593) (is-Found!12206 lt!646593) (not (is-MissingZero!12206 lt!646593)) (and (bvsge (index!51215 lt!646593) #b00000000000000000000000000000000) (bvslt (index!51215 lt!646593) (size!48494 a!2862)))) (or (is-Undefined!12206 lt!646593) (is-Found!12206 lt!646593) (is-MissingZero!12206 lt!646593) (not (is-MissingVacant!12206 lt!646593)) (and (bvsge (index!51218 lt!646593) #b00000000000000000000000000000000) (bvslt (index!51218 lt!646593) (size!48494 a!2862)))) (or (is-Undefined!12206 lt!646593) (ite (is-Found!12206 lt!646593) (= (select (arr!47943 a!2862) (index!51216 lt!646593)) (select (arr!47943 a!2862) #b00000000000000000000000000000000)) (ite (is-MissingZero!12206 lt!646593) (= (select (arr!47943 a!2862) (index!51215 lt!646593)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12206 lt!646593) (= (select (arr!47943 a!2862) (index!51218 lt!646593)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156187 (= lt!646593 e!830685)))

(declare-fun c!136774 () Bool)

(assert (=> d!156187 (= c!136774 (and (is-Intermediate!12206 lt!646595) (undefined!13018 lt!646595)))))

(assert (=> d!156187 (= lt!646595 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47943 a!2862) #b00000000000000000000000000000000) mask!2687) (select (arr!47943 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687))))

(assert (=> d!156187 (validMask!0 mask!2687)))

(assert (=> d!156187 (= (seekEntryOrOpen!0 (select (arr!47943 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) lt!646593)))

(assert (= (and d!156187 c!136774) b!1480953))

(assert (= (and d!156187 (not c!136774)) b!1480955))

(assert (= (and b!1480955 c!136772) b!1480952))

(assert (= (and b!1480955 (not c!136772)) b!1480956))

(assert (= (and b!1480956 c!136773) b!1480951))

(assert (= (and b!1480956 (not c!136773)) b!1480954))

(assert (=> b!1480954 m!1366277))

(declare-fun m!1366781 () Bool)

(assert (=> b!1480954 m!1366781))

(declare-fun m!1366783 () Bool)

(assert (=> b!1480955 m!1366783))

(declare-fun m!1366785 () Bool)

(assert (=> d!156187 m!1366785))

(assert (=> d!156187 m!1366277))

(declare-fun m!1366787 () Bool)

(assert (=> d!156187 m!1366787))

(declare-fun m!1366789 () Bool)

(assert (=> d!156187 m!1366789))

(declare-fun m!1366791 () Bool)

(assert (=> d!156187 m!1366791))

(assert (=> d!156187 m!1366277))

(assert (=> d!156187 m!1366785))

(assert (=> d!156187 m!1366247))

(declare-fun m!1366793 () Bool)

(assert (=> d!156187 m!1366793))

(assert (=> b!1480408 d!156187))

(assert (=> d!156055 d!156011))

(assert (=> d!155991 d!156011))

(declare-fun b!1480957 () Bool)

(declare-fun e!830689 () SeekEntryResult!12206)

(assert (=> b!1480957 (= e!830689 (Intermediate!12206 true (nextIndex!0 (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1480958 () Bool)

(declare-fun lt!646597 () SeekEntryResult!12206)

(assert (=> b!1480958 (and (bvsge (index!51217 lt!646597) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646597) (size!48494 a!2862)))))

(declare-fun e!830688 () Bool)

(assert (=> b!1480958 (= e!830688 (= (select (arr!47943 a!2862) (index!51217 lt!646597)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480959 () Bool)

(declare-fun e!830690 () Bool)

(assert (=> b!1480959 (= e!830690 (bvsge (x!132792 lt!646597) #b01111111111111111111111111111110))))

(declare-fun b!1480960 () Bool)

(declare-fun e!830691 () Bool)

(assert (=> b!1480960 (= e!830690 e!830691)))

(declare-fun res!1006455 () Bool)

(assert (=> b!1480960 (= res!1006455 (and (is-Intermediate!12206 lt!646597) (not (undefined!13018 lt!646597)) (bvslt (x!132792 lt!646597) #b01111111111111111111111111111110) (bvsge (x!132792 lt!646597) #b00000000000000000000000000000000) (bvsge (x!132792 lt!646597) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1480960 (=> (not res!1006455) (not e!830691))))

(declare-fun b!1480961 () Bool)

(declare-fun e!830692 () SeekEntryResult!12206)

(assert (=> b!1480961 (= e!830692 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2687) (select (arr!47943 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480962 () Bool)

(assert (=> b!1480962 (= e!830692 (Intermediate!12206 false (nextIndex!0 (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1480963 () Bool)

(assert (=> b!1480963 (and (bvsge (index!51217 lt!646597) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646597) (size!48494 a!2862)))))

(declare-fun res!1006456 () Bool)

(assert (=> b!1480963 (= res!1006456 (= (select (arr!47943 a!2862) (index!51217 lt!646597)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480963 (=> res!1006456 e!830688)))

(declare-fun d!156189 () Bool)

(assert (=> d!156189 e!830690))

(declare-fun c!136775 () Bool)

(assert (=> d!156189 (= c!136775 (and (is-Intermediate!12206 lt!646597) (undefined!13018 lt!646597)))))

(assert (=> d!156189 (= lt!646597 e!830689)))

(declare-fun c!136777 () Bool)

(assert (=> d!156189 (= c!136777 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!646596 () (_ BitVec 64))

(assert (=> d!156189 (= lt!646596 (select (arr!47943 a!2862) (nextIndex!0 (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687)))))

(assert (=> d!156189 (validMask!0 mask!2687)))

(assert (=> d!156189 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47943 a!2862) j!93) a!2862 mask!2687) lt!646597)))

(declare-fun b!1480964 () Bool)

(assert (=> b!1480964 (= e!830689 e!830692)))

(declare-fun c!136776 () Bool)

(assert (=> b!1480964 (= c!136776 (or (= lt!646596 (select (arr!47943 a!2862) j!93)) (= (bvadd lt!646596 lt!646596) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480965 () Bool)

(assert (=> b!1480965 (and (bvsge (index!51217 lt!646597) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646597) (size!48494 a!2862)))))

(declare-fun res!1006454 () Bool)

(assert (=> b!1480965 (= res!1006454 (= (select (arr!47943 a!2862) (index!51217 lt!646597)) (select (arr!47943 a!2862) j!93)))))

(assert (=> b!1480965 (=> res!1006454 e!830688)))

(assert (=> b!1480965 (= e!830691 e!830688)))

(assert (= (and d!156189 c!136777) b!1480957))

(assert (= (and d!156189 (not c!136777)) b!1480964))

(assert (= (and b!1480964 c!136776) b!1480962))

(assert (= (and b!1480964 (not c!136776)) b!1480961))

(assert (= (and d!156189 c!136775) b!1480959))

(assert (= (and d!156189 (not c!136775)) b!1480960))

(assert (= (and b!1480960 res!1006455) b!1480965))

(assert (= (and b!1480965 (not res!1006454)) b!1480963))

(assert (= (and b!1480963 (not res!1006456)) b!1480958))

(assert (=> d!156189 m!1366377))

(declare-fun m!1366795 () Bool)

(assert (=> d!156189 m!1366795))

(assert (=> d!156189 m!1366247))

(declare-fun m!1366797 () Bool)

(assert (=> b!1480958 m!1366797))

(assert (=> b!1480963 m!1366797))

(assert (=> b!1480965 m!1366797))

(assert (=> b!1480961 m!1366377))

(declare-fun m!1366799 () Bool)

(assert (=> b!1480961 m!1366799))

(assert (=> b!1480961 m!1366799))

(assert (=> b!1480961 m!1366205))

(declare-fun m!1366801 () Bool)

(assert (=> b!1480961 m!1366801))

(assert (=> b!1480565 d!156189))

(declare-fun d!156191 () Bool)

(declare-fun lt!646598 () (_ BitVec 32))

(assert (=> d!156191 (and (bvsge lt!646598 #b00000000000000000000000000000000) (bvslt lt!646598 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(assert (=> d!156191 (= lt!646598 (choose!52 (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687))))

(assert (=> d!156191 (validMask!0 mask!2687)))

(assert (=> d!156191 (= (nextIndex!0 (toIndex!0 (select (arr!47943 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) lt!646598)))

(declare-fun bs!42671 () Bool)

(assert (= bs!42671 d!156191))

(assert (=> bs!42671 m!1366207))

(declare-fun m!1366803 () Bool)

(assert (=> bs!42671 m!1366803))

(assert (=> bs!42671 m!1366247))

(assert (=> b!1480565 d!156191))

(declare-fun b!1480966 () Bool)

(declare-fun e!830694 () Bool)

(declare-fun e!830693 () Bool)

(assert (=> b!1480966 (= e!830694 e!830693)))

(declare-fun lt!646599 () (_ BitVec 64))

(assert (=> b!1480966 (= lt!646599 (select (arr!47943 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!646601 () Unit!49700)

(assert (=> b!1480966 (= lt!646601 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646599 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1480966 (arrayContainsKey!0 a!2862 lt!646599 #b00000000000000000000000000000000)))

(declare-fun lt!646600 () Unit!49700)

(assert (=> b!1480966 (= lt!646600 lt!646601)))

(declare-fun res!1006458 () Bool)

(assert (=> b!1480966 (= res!1006458 (= (seekEntryOrOpen!0 (select (arr!47943 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!2862 mask!2687) (Found!12206 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1480966 (=> (not res!1006458) (not e!830693))))

(declare-fun b!1480967 () Bool)

(declare-fun call!67851 () Bool)

(assert (=> b!1480967 (= e!830693 call!67851)))

(declare-fun d!156193 () Bool)

(declare-fun res!1006457 () Bool)

(declare-fun e!830695 () Bool)

(assert (=> d!156193 (=> res!1006457 e!830695)))

(assert (=> d!156193 (= res!1006457 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!48494 a!2862)))))

(assert (=> d!156193 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687) e!830695)))

(declare-fun bm!67848 () Bool)

(assert (=> bm!67848 (= call!67851 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1480968 () Bool)

(assert (=> b!1480968 (= e!830695 e!830694)))

(declare-fun c!136778 () Bool)

(assert (=> b!1480968 (= c!136778 (validKeyInArray!0 (select (arr!47943 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1480969 () Bool)

(assert (=> b!1480969 (= e!830694 call!67851)))

(assert (= (and d!156193 (not res!1006457)) b!1480968))

(assert (= (and b!1480968 c!136778) b!1480966))

(assert (= (and b!1480968 (not c!136778)) b!1480969))

(assert (= (and b!1480966 res!1006458) b!1480967))

(assert (= (or b!1480967 b!1480969) bm!67848))

(assert (=> b!1480966 m!1366769))

(declare-fun m!1366805 () Bool)

(assert (=> b!1480966 m!1366805))

(declare-fun m!1366807 () Bool)

(assert (=> b!1480966 m!1366807))

(assert (=> b!1480966 m!1366769))

(declare-fun m!1366809 () Bool)

(assert (=> b!1480966 m!1366809))

(declare-fun m!1366811 () Bool)

(assert (=> bm!67848 m!1366811))

(assert (=> b!1480968 m!1366769))

(assert (=> b!1480968 m!1366769))

(assert (=> b!1480968 m!1366775))

(assert (=> bm!67821 d!156193))

(declare-fun e!830697 () SeekEntryResult!12206)

(declare-fun b!1480970 () Bool)

(assert (=> b!1480970 (= e!830697 (Intermediate!12206 true (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001)))))

(declare-fun b!1480971 () Bool)

(declare-fun lt!646603 () SeekEntryResult!12206)

(assert (=> b!1480971 (and (bvsge (index!51217 lt!646603) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646603) (size!48494 lt!646342)))))

(declare-fun e!830696 () Bool)

(assert (=> b!1480971 (= e!830696 (= (select (arr!47943 lt!646342) (index!51217 lt!646603)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480972 () Bool)

(declare-fun e!830698 () Bool)

(assert (=> b!1480972 (= e!830698 (bvsge (x!132792 lt!646603) #b01111111111111111111111111111110))))

(declare-fun b!1480973 () Bool)

(declare-fun e!830699 () Bool)

(assert (=> b!1480973 (= e!830698 e!830699)))

(declare-fun res!1006460 () Bool)

(assert (=> b!1480973 (= res!1006460 (and (is-Intermediate!12206 lt!646603) (not (undefined!13018 lt!646603)) (bvslt (x!132792 lt!646603) #b01111111111111111111111111111110) (bvsge (x!132792 lt!646603) #b00000000000000000000000000000000) (bvsge (x!132792 lt!646603) (bvadd x!665 #b00000000000000000000000000000001))))))

(assert (=> b!1480973 (=> (not res!1006460) (not e!830699))))

(declare-fun e!830700 () SeekEntryResult!12206)

(declare-fun b!1480974 () Bool)

(assert (=> b!1480974 (= e!830700 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001) mask!2687) lt!646339 lt!646342 mask!2687))))

(declare-fun b!1480975 () Bool)

(assert (=> b!1480975 (= e!830700 (Intermediate!12206 false (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001)))))

(declare-fun b!1480976 () Bool)

(assert (=> b!1480976 (and (bvsge (index!51217 lt!646603) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646603) (size!48494 lt!646342)))))

(declare-fun res!1006461 () Bool)

(assert (=> b!1480976 (= res!1006461 (= (select (arr!47943 lt!646342) (index!51217 lt!646603)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480976 (=> res!1006461 e!830696)))

(declare-fun d!156195 () Bool)

(assert (=> d!156195 e!830698))

(declare-fun c!136779 () Bool)

(assert (=> d!156195 (= c!136779 (and (is-Intermediate!12206 lt!646603) (undefined!13018 lt!646603)))))

(assert (=> d!156195 (= lt!646603 e!830697)))

(declare-fun c!136781 () Bool)

(assert (=> d!156195 (= c!136781 (bvsge (bvadd x!665 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!646602 () (_ BitVec 64))

(assert (=> d!156195 (= lt!646602 (select (arr!47943 lt!646342) (nextIndex!0 index!646 x!665 mask!2687)))))

(assert (=> d!156195 (validMask!0 mask!2687)))

(assert (=> d!156195 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!646339 lt!646342 mask!2687) lt!646603)))

(declare-fun b!1480977 () Bool)

(assert (=> b!1480977 (= e!830697 e!830700)))

(declare-fun c!136780 () Bool)

(assert (=> b!1480977 (= c!136780 (or (= lt!646602 lt!646339) (= (bvadd lt!646602 lt!646602) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480978 () Bool)

(assert (=> b!1480978 (and (bvsge (index!51217 lt!646603) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646603) (size!48494 lt!646342)))))

(declare-fun res!1006459 () Bool)

(assert (=> b!1480978 (= res!1006459 (= (select (arr!47943 lt!646342) (index!51217 lt!646603)) lt!646339))))

(assert (=> b!1480978 (=> res!1006459 e!830696)))

(assert (=> b!1480978 (= e!830699 e!830696)))

(assert (= (and d!156195 c!136781) b!1480970))

(assert (= (and d!156195 (not c!136781)) b!1480977))

(assert (= (and b!1480977 c!136780) b!1480975))

(assert (= (and b!1480977 (not c!136780)) b!1480974))

(assert (= (and d!156195 c!136779) b!1480972))

(assert (= (and d!156195 (not c!136779)) b!1480973))

(assert (= (and b!1480973 res!1006460) b!1480978))

(assert (= (and b!1480978 (not res!1006459)) b!1480976))

(assert (= (and b!1480976 (not res!1006461)) b!1480971))

(assert (=> d!156195 m!1366325))

(assert (=> d!156195 m!1366739))

(assert (=> d!156195 m!1366247))

(declare-fun m!1366813 () Bool)

(assert (=> b!1480971 m!1366813))

(assert (=> b!1480976 m!1366813))

(assert (=> b!1480978 m!1366813))

(assert (=> b!1480974 m!1366325))

(assert (=> b!1480974 m!1366717))

(assert (=> b!1480974 m!1366717))

(declare-fun m!1366815 () Bool)

(assert (=> b!1480974 m!1366815))

(assert (=> b!1480664 d!156195))

(assert (=> b!1480664 d!156163))

(assert (=> d!156033 d!156011))

(assert (=> d!156005 d!156033))

(assert (=> d!156005 d!156035))

(assert (=> d!156005 d!156011))

(assert (=> d!156049 d!156051))

(assert (=> d!156049 d!156053))

(assert (=> d!156049 d!156011))

(assert (=> d!156027 d!156025))

(declare-fun d!156197 () Bool)

(assert (=> d!156197 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(assert (=> d!156197 true))

(declare-fun _$72!158 () Unit!49700)

(assert (=> d!156197 (= (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) _$72!158)))

(declare-fun bs!42672 () Bool)

(assert (= bs!42672 d!156197))

(assert (=> bs!42672 m!1366245))

(assert (=> d!156027 d!156197))

(assert (=> d!156027 d!156011))

(assert (=> b!1480410 d!156181))

(declare-fun b!1480979 () Bool)

(declare-fun e!830702 () SeekEntryResult!12206)

(assert (=> b!1480979 (= e!830702 (Intermediate!12206 true (nextIndex!0 (toIndex!0 lt!646339 mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1480980 () Bool)

(declare-fun lt!646605 () SeekEntryResult!12206)

(assert (=> b!1480980 (and (bvsge (index!51217 lt!646605) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646605) (size!48494 lt!646342)))))

(declare-fun e!830701 () Bool)

(assert (=> b!1480980 (= e!830701 (= (select (arr!47943 lt!646342) (index!51217 lt!646605)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480981 () Bool)

(declare-fun e!830703 () Bool)

(assert (=> b!1480981 (= e!830703 (bvsge (x!132792 lt!646605) #b01111111111111111111111111111110))))

(declare-fun b!1480982 () Bool)

(declare-fun e!830704 () Bool)

(assert (=> b!1480982 (= e!830703 e!830704)))

(declare-fun res!1006463 () Bool)

(assert (=> b!1480982 (= res!1006463 (and (is-Intermediate!12206 lt!646605) (not (undefined!13018 lt!646605)) (bvslt (x!132792 lt!646605) #b01111111111111111111111111111110) (bvsge (x!132792 lt!646605) #b00000000000000000000000000000000) (bvsge (x!132792 lt!646605) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1480982 (=> (not res!1006463) (not e!830704))))

(declare-fun e!830705 () SeekEntryResult!12206)

(declare-fun b!1480983 () Bool)

(assert (=> b!1480983 (= e!830705 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 lt!646339 mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2687) lt!646339 lt!646342 mask!2687))))

(declare-fun b!1480984 () Bool)

(assert (=> b!1480984 (= e!830705 (Intermediate!12206 false (nextIndex!0 (toIndex!0 lt!646339 mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1480985 () Bool)

(assert (=> b!1480985 (and (bvsge (index!51217 lt!646605) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646605) (size!48494 lt!646342)))))

(declare-fun res!1006464 () Bool)

(assert (=> b!1480985 (= res!1006464 (= (select (arr!47943 lt!646342) (index!51217 lt!646605)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480985 (=> res!1006464 e!830701)))

(declare-fun d!156199 () Bool)

(assert (=> d!156199 e!830703))

(declare-fun c!136782 () Bool)

(assert (=> d!156199 (= c!136782 (and (is-Intermediate!12206 lt!646605) (undefined!13018 lt!646605)))))

(assert (=> d!156199 (= lt!646605 e!830702)))

(declare-fun c!136784 () Bool)

(assert (=> d!156199 (= c!136784 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!646604 () (_ BitVec 64))

(assert (=> d!156199 (= lt!646604 (select (arr!47943 lt!646342) (nextIndex!0 (toIndex!0 lt!646339 mask!2687) #b00000000000000000000000000000000 mask!2687)))))

(assert (=> d!156199 (validMask!0 mask!2687)))

(assert (=> d!156199 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!646339 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!646339 lt!646342 mask!2687) lt!646605)))

(declare-fun b!1480986 () Bool)

(assert (=> b!1480986 (= e!830702 e!830705)))

(declare-fun c!136783 () Bool)

(assert (=> b!1480986 (= c!136783 (or (= lt!646604 lt!646339) (= (bvadd lt!646604 lt!646604) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480987 () Bool)

(assert (=> b!1480987 (and (bvsge (index!51217 lt!646605) #b00000000000000000000000000000000) (bvslt (index!51217 lt!646605) (size!48494 lt!646342)))))

(declare-fun res!1006462 () Bool)

(assert (=> b!1480987 (= res!1006462 (= (select (arr!47943 lt!646342) (index!51217 lt!646605)) lt!646339))))

(assert (=> b!1480987 (=> res!1006462 e!830701)))

(assert (=> b!1480987 (= e!830704 e!830701)))

(assert (= (and d!156199 c!136784) b!1480979))

(assert (= (and d!156199 (not c!136784)) b!1480986))

(assert (= (and b!1480986 c!136783) b!1480984))

(assert (= (and b!1480986 (not c!136783)) b!1480983))

(assert (= (and d!156199 c!136782) b!1480981))

(assert (= (and d!156199 (not c!136782)) b!1480982))

(assert (= (and b!1480982 res!1006463) b!1480987))

(assert (= (and b!1480987 (not res!1006462)) b!1480985))

(assert (= (and b!1480985 (not res!1006464)) b!1480980))

(assert (=> d!156199 m!1366437))

(declare-fun m!1366817 () Bool)

(assert (=> d!156199 m!1366817))

(assert (=> d!156199 m!1366247))

(declare-fun m!1366819 () Bool)

(assert (=> b!1480980 m!1366819))

(assert (=> b!1480985 m!1366819))

(assert (=> b!1480987 m!1366819))

(assert (=> b!1480983 m!1366437))

(declare-fun m!1366821 () Bool)

(assert (=> b!1480983 m!1366821))

(assert (=> b!1480983 m!1366821))

(declare-fun m!1366823 () Bool)

(assert (=> b!1480983 m!1366823))

(assert (=> b!1480655 d!156199))

(declare-fun d!156201 () Bool)

(declare-fun lt!646606 () (_ BitVec 32))

(assert (=> d!156201 (and (bvsge lt!646606 #b00000000000000000000000000000000) (bvslt lt!646606 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(assert (=> d!156201 (= lt!646606 (choose!52 (toIndex!0 lt!646339 mask!2687) #b00000000000000000000000000000000 mask!2687))))

(assert (=> d!156201 (validMask!0 mask!2687)))

(assert (=> d!156201 (= (nextIndex!0 (toIndex!0 lt!646339 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!646606)))

(declare-fun bs!42673 () Bool)

(assert (= bs!42673 d!156201))

(assert (=> bs!42673 m!1366231))

(declare-fun m!1366825 () Bool)

(assert (=> bs!42673 m!1366825))

(assert (=> bs!42673 m!1366247))

(assert (=> b!1480655 d!156201))

(push 1)

(assert (not b!1480954))

(assert (not b!1480918))

(assert (not bm!67846))

(assert (not b!1480924))

(assert (not d!156161))

(assert (not d!156165))

(assert (not b!1480983))

(assert (not d!156191))

(assert (not bm!67847))

(assert (not b!1480905))

(assert (not d!156199))

(assert (not d!156197))

(assert (not b!1480930))

(assert (not b!1480947))

(assert (not b!1480937))

(assert (not b!1480950))

(assert (not d!156175))

(assert (not d!156169))

(assert (not b!1480946))

(assert (not d!156187))

(assert (not b!1480928))

(assert (not b!1480915))

(assert (not b!1480974))

(assert (not b!1480948))

(assert (not d!156201))

(assert (not b!1480968))

(assert (not d!156195))

(assert (not b!1480961))

(assert (not d!156171))

(assert (not b!1480940))

(assert (not d!156183))

(assert (not d!156177))

(assert (not d!156163))

(assert (not d!156189))

(assert (not bm!67848))

(assert (not b!1480966))

