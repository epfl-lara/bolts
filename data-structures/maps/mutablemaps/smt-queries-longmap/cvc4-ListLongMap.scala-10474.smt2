; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123212 () Bool)

(assert start!123212)

(declare-fun res!963225 () Bool)

(declare-fun e!806637 () Bool)

(assert (=> start!123212 (=> (not res!963225) (not e!806637))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123212 (= res!963225 (validMask!0 mask!2608))))

(assert (=> start!123212 e!806637))

(assert (=> start!123212 true))

(declare-datatypes ((array!97342 0))(
  ( (array!97343 (arr!46980 (Array (_ BitVec 32) (_ BitVec 64))) (size!47531 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97342)

(declare-fun array_inv!35925 (array!97342) Bool)

(assert (=> start!123212 (array_inv!35925 a!2831)))

(declare-fun b!1428274 () Bool)

(declare-fun res!963213 () Bool)

(declare-fun e!806639 () Bool)

(assert (=> b!1428274 (=> (not res!963213) (not e!806639))))

(declare-fun lt!628877 () array!97342)

(declare-datatypes ((SeekEntryResult!11281 0))(
  ( (MissingZero!11281 (index!47515 (_ BitVec 32))) (Found!11281 (index!47516 (_ BitVec 32))) (Intermediate!11281 (undefined!12093 Bool) (index!47517 (_ BitVec 32)) (x!129152 (_ BitVec 32))) (Undefined!11281) (MissingVacant!11281 (index!47518 (_ BitVec 32))) )
))
(declare-fun lt!628879 () SeekEntryResult!11281)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!628878 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97342 (_ BitVec 32)) SeekEntryResult!11281)

(assert (=> b!1428274 (= res!963213 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628878 lt!628877 mask!2608) lt!628879))))

(declare-fun e!806635 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun b!1428275 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97342 (_ BitVec 32)) SeekEntryResult!11281)

(assert (=> b!1428275 (= e!806635 (= (seekEntryOrOpen!0 (select (arr!46980 a!2831) j!81) a!2831 mask!2608) (Found!11281 j!81)))))

(declare-fun b!1428276 () Bool)

(declare-fun res!963224 () Bool)

(assert (=> b!1428276 (=> (not res!963224) (not e!806639))))

(declare-fun lt!628875 () SeekEntryResult!11281)

(assert (=> b!1428276 (= res!963224 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46980 a!2831) j!81) a!2831 mask!2608) lt!628875))))

(declare-fun b!1428277 () Bool)

(declare-fun res!963215 () Bool)

(assert (=> b!1428277 (=> (not res!963215) (not e!806637))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428277 (= res!963215 (validKeyInArray!0 (select (arr!46980 a!2831) i!982)))))

(declare-fun b!1428278 () Bool)

(declare-fun res!963218 () Bool)

(assert (=> b!1428278 (=> (not res!963218) (not e!806639))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(assert (=> b!1428278 (= res!963218 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428279 () Bool)

(declare-fun res!963217 () Bool)

(assert (=> b!1428279 (=> (not res!963217) (not e!806637))))

(declare-datatypes ((List!33670 0))(
  ( (Nil!33667) (Cons!33666 (h!34977 (_ BitVec 64)) (t!48371 List!33670)) )
))
(declare-fun arrayNoDuplicates!0 (array!97342 (_ BitVec 32) List!33670) Bool)

(assert (=> b!1428279 (= res!963217 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33667))))

(declare-fun b!1428280 () Bool)

(declare-fun e!806638 () Bool)

(assert (=> b!1428280 (= e!806637 e!806638)))

(declare-fun res!963223 () Bool)

(assert (=> b!1428280 (=> (not res!963223) (not e!806638))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428280 (= res!963223 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46980 a!2831) j!81) mask!2608) (select (arr!46980 a!2831) j!81) a!2831 mask!2608) lt!628875))))

(assert (=> b!1428280 (= lt!628875 (Intermediate!11281 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428281 () Bool)

(assert (=> b!1428281 (= e!806638 e!806639)))

(declare-fun res!963222 () Bool)

(assert (=> b!1428281 (=> (not res!963222) (not e!806639))))

(assert (=> b!1428281 (= res!963222 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628878 mask!2608) lt!628878 lt!628877 mask!2608) lt!628879))))

(assert (=> b!1428281 (= lt!628879 (Intermediate!11281 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1428281 (= lt!628878 (select (store (arr!46980 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428281 (= lt!628877 (array!97343 (store (arr!46980 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47531 a!2831)))))

(declare-fun b!1428282 () Bool)

(declare-fun res!963221 () Bool)

(assert (=> b!1428282 (=> (not res!963221) (not e!806637))))

(assert (=> b!1428282 (= res!963221 (and (= (size!47531 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47531 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47531 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428283 () Bool)

(declare-fun res!963219 () Bool)

(assert (=> b!1428283 (=> (not res!963219) (not e!806637))))

(assert (=> b!1428283 (= res!963219 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47531 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47531 a!2831))))))

(declare-fun b!1428284 () Bool)

(assert (=> b!1428284 (= e!806639 (not (or (= (select (arr!46980 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46980 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (select (arr!46980 a!2831) index!585) (select (arr!46980 a!2831) j!81))))))))

(assert (=> b!1428284 e!806635))

(declare-fun res!963216 () Bool)

(assert (=> b!1428284 (=> (not res!963216) (not e!806635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97342 (_ BitVec 32)) Bool)

(assert (=> b!1428284 (= res!963216 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48256 0))(
  ( (Unit!48257) )
))
(declare-fun lt!628876 () Unit!48256)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97342 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48256)

(assert (=> b!1428284 (= lt!628876 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1428285 () Bool)

(declare-fun res!963220 () Bool)

(assert (=> b!1428285 (=> (not res!963220) (not e!806637))))

(assert (=> b!1428285 (= res!963220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428286 () Bool)

(declare-fun res!963214 () Bool)

(assert (=> b!1428286 (=> (not res!963214) (not e!806637))))

(assert (=> b!1428286 (= res!963214 (validKeyInArray!0 (select (arr!46980 a!2831) j!81)))))

(assert (= (and start!123212 res!963225) b!1428282))

(assert (= (and b!1428282 res!963221) b!1428277))

(assert (= (and b!1428277 res!963215) b!1428286))

(assert (= (and b!1428286 res!963214) b!1428285))

(assert (= (and b!1428285 res!963220) b!1428279))

(assert (= (and b!1428279 res!963217) b!1428283))

(assert (= (and b!1428283 res!963219) b!1428280))

(assert (= (and b!1428280 res!963223) b!1428281))

(assert (= (and b!1428281 res!963222) b!1428276))

(assert (= (and b!1428276 res!963224) b!1428274))

(assert (= (and b!1428274 res!963213) b!1428278))

(assert (= (and b!1428278 res!963218) b!1428284))

(assert (= (and b!1428284 res!963216) b!1428275))

(declare-fun m!1318573 () Bool)

(assert (=> b!1428277 m!1318573))

(assert (=> b!1428277 m!1318573))

(declare-fun m!1318575 () Bool)

(assert (=> b!1428277 m!1318575))

(declare-fun m!1318577 () Bool)

(assert (=> b!1428281 m!1318577))

(assert (=> b!1428281 m!1318577))

(declare-fun m!1318579 () Bool)

(assert (=> b!1428281 m!1318579))

(declare-fun m!1318581 () Bool)

(assert (=> b!1428281 m!1318581))

(declare-fun m!1318583 () Bool)

(assert (=> b!1428281 m!1318583))

(declare-fun m!1318585 () Bool)

(assert (=> b!1428284 m!1318585))

(declare-fun m!1318587 () Bool)

(assert (=> b!1428284 m!1318587))

(declare-fun m!1318589 () Bool)

(assert (=> b!1428284 m!1318589))

(declare-fun m!1318591 () Bool)

(assert (=> b!1428284 m!1318591))

(declare-fun m!1318593 () Bool)

(assert (=> b!1428274 m!1318593))

(assert (=> b!1428276 m!1318587))

(assert (=> b!1428276 m!1318587))

(declare-fun m!1318595 () Bool)

(assert (=> b!1428276 m!1318595))

(declare-fun m!1318597 () Bool)

(assert (=> b!1428285 m!1318597))

(assert (=> b!1428275 m!1318587))

(assert (=> b!1428275 m!1318587))

(declare-fun m!1318599 () Bool)

(assert (=> b!1428275 m!1318599))

(assert (=> b!1428286 m!1318587))

(assert (=> b!1428286 m!1318587))

(declare-fun m!1318601 () Bool)

(assert (=> b!1428286 m!1318601))

(assert (=> b!1428280 m!1318587))

(assert (=> b!1428280 m!1318587))

(declare-fun m!1318603 () Bool)

(assert (=> b!1428280 m!1318603))

(assert (=> b!1428280 m!1318603))

(assert (=> b!1428280 m!1318587))

(declare-fun m!1318605 () Bool)

(assert (=> b!1428280 m!1318605))

(declare-fun m!1318607 () Bool)

(assert (=> b!1428279 m!1318607))

(declare-fun m!1318609 () Bool)

(assert (=> start!123212 m!1318609))

(declare-fun m!1318611 () Bool)

(assert (=> start!123212 m!1318611))

(push 1)

(assert (not b!1428275))

(assert (not b!1428279))

(assert (not b!1428277))

(assert (not b!1428274))

(assert (not b!1428285))

(assert (not b!1428286))

(assert (not start!123212))

(assert (not b!1428280))

(assert (not b!1428276))

(assert (not b!1428284))

(assert (not b!1428281))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!153399 () Bool)

(assert (=> d!153399 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123212 d!153399))

(declare-fun d!153409 () Bool)

(assert (=> d!153409 (= (array_inv!35925 a!2831) (bvsge (size!47531 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123212 d!153409))

(declare-fun b!1428399 () Bool)

(declare-fun e!806712 () SeekEntryResult!11281)

(assert (=> b!1428399 (= e!806712 (Intermediate!11281 true index!585 x!605))))

(declare-fun b!1428400 () Bool)

(declare-fun lt!628922 () SeekEntryResult!11281)

(assert (=> b!1428400 (and (bvsge (index!47517 lt!628922) #b00000000000000000000000000000000) (bvslt (index!47517 lt!628922) (size!47531 lt!628877)))))

(declare-fun res!963271 () Bool)

(assert (=> b!1428400 (= res!963271 (= (select (arr!46980 lt!628877) (index!47517 lt!628922)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!806713 () Bool)

(assert (=> b!1428400 (=> res!963271 e!806713)))

(declare-fun b!1428401 () Bool)

(declare-fun e!806711 () Bool)

(assert (=> b!1428401 (= e!806711 (bvsge (x!129152 lt!628922) #b01111111111111111111111111111110))))

(declare-fun d!153413 () Bool)

(assert (=> d!153413 e!806711))

(declare-fun c!132058 () Bool)

(assert (=> d!153413 (= c!132058 (and (is-Intermediate!11281 lt!628922) (undefined!12093 lt!628922)))))

(assert (=> d!153413 (= lt!628922 e!806712)))

(declare-fun c!132059 () Bool)

(assert (=> d!153413 (= c!132059 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!628921 () (_ BitVec 64))

(assert (=> d!153413 (= lt!628921 (select (arr!46980 lt!628877) index!585))))

(assert (=> d!153413 (validMask!0 mask!2608)))

(assert (=> d!153413 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628878 lt!628877 mask!2608) lt!628922)))

(declare-fun b!1428402 () Bool)

(declare-fun e!806710 () SeekEntryResult!11281)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428402 (= e!806710 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!628878 lt!628877 mask!2608))))

(declare-fun b!1428403 () Bool)

(assert (=> b!1428403 (= e!806712 e!806710)))

(declare-fun c!132060 () Bool)

(assert (=> b!1428403 (= c!132060 (or (= lt!628921 lt!628878) (= (bvadd lt!628921 lt!628921) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1428404 () Bool)

(assert (=> b!1428404 (and (bvsge (index!47517 lt!628922) #b00000000000000000000000000000000) (bvslt (index!47517 lt!628922) (size!47531 lt!628877)))))

(declare-fun res!963273 () Bool)

(assert (=> b!1428404 (= res!963273 (= (select (arr!46980 lt!628877) (index!47517 lt!628922)) lt!628878))))

(assert (=> b!1428404 (=> res!963273 e!806713)))

(declare-fun e!806709 () Bool)

(assert (=> b!1428404 (= e!806709 e!806713)))

(declare-fun b!1428405 () Bool)

(assert (=> b!1428405 (= e!806711 e!806709)))

(declare-fun res!963272 () Bool)

(assert (=> b!1428405 (= res!963272 (and (is-Intermediate!11281 lt!628922) (not (undefined!12093 lt!628922)) (bvslt (x!129152 lt!628922) #b01111111111111111111111111111110) (bvsge (x!129152 lt!628922) #b00000000000000000000000000000000) (bvsge (x!129152 lt!628922) x!605)))))

(assert (=> b!1428405 (=> (not res!963272) (not e!806709))))

(declare-fun b!1428406 () Bool)

(assert (=> b!1428406 (and (bvsge (index!47517 lt!628922) #b00000000000000000000000000000000) (bvslt (index!47517 lt!628922) (size!47531 lt!628877)))))

(assert (=> b!1428406 (= e!806713 (= (select (arr!46980 lt!628877) (index!47517 lt!628922)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1428407 () Bool)

(assert (=> b!1428407 (= e!806710 (Intermediate!11281 false index!585 x!605))))

(assert (= (and d!153413 c!132059) b!1428399))

(assert (= (and d!153413 (not c!132059)) b!1428403))

(assert (= (and b!1428403 c!132060) b!1428407))

(assert (= (and b!1428403 (not c!132060)) b!1428402))

(assert (= (and d!153413 c!132058) b!1428401))

(assert (= (and d!153413 (not c!132058)) b!1428405))

(assert (= (and b!1428405 res!963272) b!1428404))

(assert (= (and b!1428404 (not res!963273)) b!1428400))

(assert (= (and b!1428400 (not res!963271)) b!1428406))

(declare-fun m!1318661 () Bool)

(assert (=> b!1428404 m!1318661))

(declare-fun m!1318663 () Bool)

(assert (=> b!1428402 m!1318663))

(assert (=> b!1428402 m!1318663))

(declare-fun m!1318665 () Bool)

(assert (=> b!1428402 m!1318665))

(assert (=> b!1428406 m!1318661))

(declare-fun m!1318667 () Bool)

(assert (=> d!153413 m!1318667))

(assert (=> d!153413 m!1318609))

(assert (=> b!1428400 m!1318661))

(assert (=> b!1428274 d!153413))

(declare-fun b!1428461 () Bool)

(declare-fun e!806743 () Bool)

(declare-fun e!806745 () Bool)

(assert (=> b!1428461 (= e!806743 e!806745)))

(declare-fun lt!628951 () (_ BitVec 64))

(assert (=> b!1428461 (= lt!628951 (select (arr!46980 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!628949 () Unit!48256)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97342 (_ BitVec 64) (_ BitVec 32)) Unit!48256)

(assert (=> b!1428461 (= lt!628949 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628951 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1428461 (arrayContainsKey!0 a!2831 lt!628951 #b00000000000000000000000000000000)))

(declare-fun lt!628950 () Unit!48256)

(assert (=> b!1428461 (= lt!628950 lt!628949)))

(declare-fun res!963282 () Bool)

(assert (=> b!1428461 (= res!963282 (= (seekEntryOrOpen!0 (select (arr!46980 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11281 #b00000000000000000000000000000000)))))

(assert (=> b!1428461 (=> (not res!963282) (not e!806745))))

(declare-fun b!1428462 () Bool)

(declare-fun call!67393 () Bool)

(assert (=> b!1428462 (= e!806745 call!67393)))

(declare-fun bm!67390 () Bool)

(assert (=> bm!67390 (= call!67393 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1428463 () Bool)

(assert (=> b!1428463 (= e!806743 call!67393)))

(declare-fun d!153421 () Bool)

(declare-fun res!963281 () Bool)

(declare-fun e!806744 () Bool)

(assert (=> d!153421 (=> res!963281 e!806744)))

(assert (=> d!153421 (= res!963281 (bvsge #b00000000000000000000000000000000 (size!47531 a!2831)))))

(assert (=> d!153421 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!806744)))

(declare-fun b!1428464 () Bool)

(assert (=> b!1428464 (= e!806744 e!806743)))

(declare-fun c!132084 () Bool)

(assert (=> b!1428464 (= c!132084 (validKeyInArray!0 (select (arr!46980 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153421 (not res!963281)) b!1428464))

(assert (= (and b!1428464 c!132084) b!1428461))

(assert (= (and b!1428464 (not c!132084)) b!1428463))

(assert (= (and b!1428461 res!963282) b!1428462))

(assert (= (or b!1428462 b!1428463) bm!67390))

(declare-fun m!1318689 () Bool)

(assert (=> b!1428461 m!1318689))

(declare-fun m!1318691 () Bool)

(assert (=> b!1428461 m!1318691))

(declare-fun m!1318693 () Bool)

(assert (=> b!1428461 m!1318693))

(assert (=> b!1428461 m!1318689))

(declare-fun m!1318697 () Bool)

(assert (=> b!1428461 m!1318697))

(declare-fun m!1318701 () Bool)

(assert (=> bm!67390 m!1318701))

(assert (=> b!1428464 m!1318689))

(assert (=> b!1428464 m!1318689))

(declare-fun m!1318707 () Bool)

(assert (=> b!1428464 m!1318707))

(assert (=> b!1428285 d!153421))

(declare-fun b!1428465 () Bool)

(declare-fun e!806749 () SeekEntryResult!11281)

(assert (=> b!1428465 (= e!806749 (Intermediate!11281 true (toIndex!0 (select (arr!46980 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1428466 () Bool)

(declare-fun lt!628953 () SeekEntryResult!11281)

(assert (=> b!1428466 (and (bvsge (index!47517 lt!628953) #b00000000000000000000000000000000) (bvslt (index!47517 lt!628953) (size!47531 a!2831)))))

(declare-fun res!963283 () Bool)

(assert (=> b!1428466 (= res!963283 (= (select (arr!46980 a!2831) (index!47517 lt!628953)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!806750 () Bool)

(assert (=> b!1428466 (=> res!963283 e!806750)))

(declare-fun b!1428467 () Bool)

(declare-fun e!806748 () Bool)

(assert (=> b!1428467 (= e!806748 (bvsge (x!129152 lt!628953) #b01111111111111111111111111111110))))

(declare-fun d!153429 () Bool)

(assert (=> d!153429 e!806748))

(declare-fun c!132085 () Bool)

(assert (=> d!153429 (= c!132085 (and (is-Intermediate!11281 lt!628953) (undefined!12093 lt!628953)))))

(assert (=> d!153429 (= lt!628953 e!806749)))

(declare-fun c!132086 () Bool)

(assert (=> d!153429 (= c!132086 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!628952 () (_ BitVec 64))

(assert (=> d!153429 (= lt!628952 (select (arr!46980 a!2831) (toIndex!0 (select (arr!46980 a!2831) j!81) mask!2608)))))

(assert (=> d!153429 (validMask!0 mask!2608)))

(assert (=> d!153429 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46980 a!2831) j!81) mask!2608) (select (arr!46980 a!2831) j!81) a!2831 mask!2608) lt!628953)))

(declare-fun e!806747 () SeekEntryResult!11281)

(declare-fun b!1428468 () Bool)

(assert (=> b!1428468 (= e!806747 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46980 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46980 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1428469 () Bool)

(assert (=> b!1428469 (= e!806749 e!806747)))

(declare-fun c!132087 () Bool)

(assert (=> b!1428469 (= c!132087 (or (= lt!628952 (select (arr!46980 a!2831) j!81)) (= (bvadd lt!628952 lt!628952) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1428470 () Bool)

(assert (=> b!1428470 (and (bvsge (index!47517 lt!628953) #b00000000000000000000000000000000) (bvslt (index!47517 lt!628953) (size!47531 a!2831)))))

(declare-fun res!963285 () Bool)

(assert (=> b!1428470 (= res!963285 (= (select (arr!46980 a!2831) (index!47517 lt!628953)) (select (arr!46980 a!2831) j!81)))))

(assert (=> b!1428470 (=> res!963285 e!806750)))

(declare-fun e!806746 () Bool)

(assert (=> b!1428470 (= e!806746 e!806750)))

(declare-fun b!1428471 () Bool)

(assert (=> b!1428471 (= e!806748 e!806746)))

(declare-fun res!963284 () Bool)

(assert (=> b!1428471 (= res!963284 (and (is-Intermediate!11281 lt!628953) (not (undefined!12093 lt!628953)) (bvslt (x!129152 lt!628953) #b01111111111111111111111111111110) (bvsge (x!129152 lt!628953) #b00000000000000000000000000000000) (bvsge (x!129152 lt!628953) #b00000000000000000000000000000000)))))

(assert (=> b!1428471 (=> (not res!963284) (not e!806746))))

(declare-fun b!1428472 () Bool)

(assert (=> b!1428472 (and (bvsge (index!47517 lt!628953) #b00000000000000000000000000000000) (bvslt (index!47517 lt!628953) (size!47531 a!2831)))))

(assert (=> b!1428472 (= e!806750 (= (select (arr!46980 a!2831) (index!47517 lt!628953)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1428473 () Bool)

(assert (=> b!1428473 (= e!806747 (Intermediate!11281 false (toIndex!0 (select (arr!46980 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153429 c!132086) b!1428465))

(assert (= (and d!153429 (not c!132086)) b!1428469))

(assert (= (and b!1428469 c!132087) b!1428473))

(assert (= (and b!1428469 (not c!132087)) b!1428468))

(assert (= (and d!153429 c!132085) b!1428467))

(assert (= (and d!153429 (not c!132085)) b!1428471))

(assert (= (and b!1428471 res!963284) b!1428470))

(assert (= (and b!1428470 (not res!963285)) b!1428466))

(assert (= (and b!1428466 (not res!963283)) b!1428472))

(declare-fun m!1318709 () Bool)

(assert (=> b!1428470 m!1318709))

(assert (=> b!1428468 m!1318603))

(declare-fun m!1318711 () Bool)

(assert (=> b!1428468 m!1318711))

(assert (=> b!1428468 m!1318711))

(assert (=> b!1428468 m!1318587))

(declare-fun m!1318713 () Bool)

(assert (=> b!1428468 m!1318713))

(assert (=> b!1428472 m!1318709))

(assert (=> d!153429 m!1318603))

(declare-fun m!1318715 () Bool)

(assert (=> d!153429 m!1318715))

(assert (=> d!153429 m!1318609))

(assert (=> b!1428466 m!1318709))

(assert (=> b!1428280 d!153429))

(declare-fun d!153431 () Bool)

(declare-fun lt!628959 () (_ BitVec 32))

(declare-fun lt!628958 () (_ BitVec 32))

(assert (=> d!153431 (= lt!628959 (bvmul (bvxor lt!628958 (bvlshr lt!628958 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153431 (= lt!628958 ((_ extract 31 0) (bvand (bvxor (select (arr!46980 a!2831) j!81) (bvlshr (select (arr!46980 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153431 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!963286 (let ((h!34979 ((_ extract 31 0) (bvand (bvxor (select (arr!46980 a!2831) j!81) (bvlshr (select (arr!46980 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129157 (bvmul (bvxor h!34979 (bvlshr h!34979 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129157 (bvlshr x!129157 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!963286 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!963286 #b00000000000000000000000000000000))))))

(assert (=> d!153431 (= (toIndex!0 (select (arr!46980 a!2831) j!81) mask!2608) (bvand (bvxor lt!628959 (bvlshr lt!628959 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1428280 d!153431))

(declare-fun b!1428537 () Bool)

(declare-fun c!132110 () Bool)

(declare-fun lt!628984 () (_ BitVec 64))

(assert (=> b!1428537 (= c!132110 (= lt!628984 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!806790 () SeekEntryResult!11281)

(declare-fun e!806789 () SeekEntryResult!11281)

(assert (=> b!1428537 (= e!806790 e!806789)))

(declare-fun b!1428538 () Bool)

(declare-fun lt!628982 () SeekEntryResult!11281)

(assert (=> b!1428538 (= e!806789 (MissingZero!11281 (index!47517 lt!628982)))))

(declare-fun b!1428539 () Bool)

(assert (=> b!1428539 (= e!806790 (Found!11281 (index!47517 lt!628982)))))

(declare-fun d!153433 () Bool)

(declare-fun lt!628983 () SeekEntryResult!11281)

(assert (=> d!153433 (and (or (is-Undefined!11281 lt!628983) (not (is-Found!11281 lt!628983)) (and (bvsge (index!47516 lt!628983) #b00000000000000000000000000000000) (bvslt (index!47516 lt!628983) (size!47531 a!2831)))) (or (is-Undefined!11281 lt!628983) (is-Found!11281 lt!628983) (not (is-MissingZero!11281 lt!628983)) (and (bvsge (index!47515 lt!628983) #b00000000000000000000000000000000) (bvslt (index!47515 lt!628983) (size!47531 a!2831)))) (or (is-Undefined!11281 lt!628983) (is-Found!11281 lt!628983) (is-MissingZero!11281 lt!628983) (not (is-MissingVacant!11281 lt!628983)) (and (bvsge (index!47518 lt!628983) #b00000000000000000000000000000000) (bvslt (index!47518 lt!628983) (size!47531 a!2831)))) (or (is-Undefined!11281 lt!628983) (ite (is-Found!11281 lt!628983) (= (select (arr!46980 a!2831) (index!47516 lt!628983)) (select (arr!46980 a!2831) j!81)) (ite (is-MissingZero!11281 lt!628983) (= (select (arr!46980 a!2831) (index!47515 lt!628983)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11281 lt!628983) (= (select (arr!46980 a!2831) (index!47518 lt!628983)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!806791 () SeekEntryResult!11281)

(assert (=> d!153433 (= lt!628983 e!806791)))

(declare-fun c!132111 () Bool)

(assert (=> d!153433 (= c!132111 (and (is-Intermediate!11281 lt!628982) (undefined!12093 lt!628982)))))

(assert (=> d!153433 (= lt!628982 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46980 a!2831) j!81) mask!2608) (select (arr!46980 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153433 (validMask!0 mask!2608)))

(assert (=> d!153433 (= (seekEntryOrOpen!0 (select (arr!46980 a!2831) j!81) a!2831 mask!2608) lt!628983)))

(declare-fun b!1428540 () Bool)

(assert (=> b!1428540 (= e!806791 Undefined!11281)))

(declare-fun b!1428541 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97342 (_ BitVec 32)) SeekEntryResult!11281)

(assert (=> b!1428541 (= e!806789 (seekKeyOrZeroReturnVacant!0 (x!129152 lt!628982) (index!47517 lt!628982) (index!47517 lt!628982) (select (arr!46980 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1428542 () Bool)

(assert (=> b!1428542 (= e!806791 e!806790)))

(assert (=> b!1428542 (= lt!628984 (select (arr!46980 a!2831) (index!47517 lt!628982)))))

(declare-fun c!132109 () Bool)

(assert (=> b!1428542 (= c!132109 (= lt!628984 (select (arr!46980 a!2831) j!81)))))

(assert (= (and d!153433 c!132111) b!1428540))

(assert (= (and d!153433 (not c!132111)) b!1428542))

(assert (= (and b!1428542 c!132109) b!1428539))

(assert (= (and b!1428542 (not c!132109)) b!1428537))

(assert (= (and b!1428537 c!132110) b!1428538))

(assert (= (and b!1428537 (not c!132110)) b!1428541))

(declare-fun m!1318749 () Bool)

(assert (=> d!153433 m!1318749))

(assert (=> d!153433 m!1318603))

(assert (=> d!153433 m!1318587))

(assert (=> d!153433 m!1318605))

(declare-fun m!1318751 () Bool)

(assert (=> d!153433 m!1318751))

(declare-fun m!1318753 () Bool)

(assert (=> d!153433 m!1318753))

(assert (=> d!153433 m!1318587))

(assert (=> d!153433 m!1318603))

(assert (=> d!153433 m!1318609))

(assert (=> b!1428541 m!1318587))

(declare-fun m!1318755 () Bool)

(assert (=> b!1428541 m!1318755))

(declare-fun m!1318757 () Bool)

(assert (=> b!1428542 m!1318757))

(assert (=> b!1428275 d!153433))

(declare-fun b!1428543 () Bool)

(declare-fun e!806792 () Bool)

(declare-fun e!806794 () Bool)

(assert (=> b!1428543 (= e!806792 e!806794)))

(declare-fun lt!628987 () (_ BitVec 64))

(assert (=> b!1428543 (= lt!628987 (select (arr!46980 a!2831) j!81))))

(declare-fun lt!628985 () Unit!48256)

(assert (=> b!1428543 (= lt!628985 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628987 j!81))))

(assert (=> b!1428543 (arrayContainsKey!0 a!2831 lt!628987 #b00000000000000000000000000000000)))

(declare-fun lt!628986 () Unit!48256)

(assert (=> b!1428543 (= lt!628986 lt!628985)))

(declare-fun res!963310 () Bool)

(assert (=> b!1428543 (= res!963310 (= (seekEntryOrOpen!0 (select (arr!46980 a!2831) j!81) a!2831 mask!2608) (Found!11281 j!81)))))

(assert (=> b!1428543 (=> (not res!963310) (not e!806794))))

(declare-fun b!1428544 () Bool)

(declare-fun call!67397 () Bool)

(assert (=> b!1428544 (= e!806794 call!67397)))

(declare-fun bm!67394 () Bool)

(assert (=> bm!67394 (= call!67397 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1428545 () Bool)

(assert (=> b!1428545 (= e!806792 call!67397)))

(declare-fun d!153459 () Bool)

(declare-fun res!963309 () Bool)

(declare-fun e!806793 () Bool)

(assert (=> d!153459 (=> res!963309 e!806793)))

(assert (=> d!153459 (= res!963309 (bvsge j!81 (size!47531 a!2831)))))

(assert (=> d!153459 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!806793)))

(declare-fun b!1428546 () Bool)

(assert (=> b!1428546 (= e!806793 e!806792)))

(declare-fun c!132112 () Bool)

(assert (=> b!1428546 (= c!132112 (validKeyInArray!0 (select (arr!46980 a!2831) j!81)))))

(assert (= (and d!153459 (not res!963309)) b!1428546))

(assert (= (and b!1428546 c!132112) b!1428543))

(assert (= (and b!1428546 (not c!132112)) b!1428545))

(assert (= (and b!1428543 res!963310) b!1428544))

(assert (= (or b!1428544 b!1428545) bm!67394))

(assert (=> b!1428543 m!1318587))

(declare-fun m!1318759 () Bool)

(assert (=> b!1428543 m!1318759))

(declare-fun m!1318761 () Bool)

(assert (=> b!1428543 m!1318761))

(assert (=> b!1428543 m!1318587))

(assert (=> b!1428543 m!1318599))

(declare-fun m!1318763 () Bool)

(assert (=> bm!67394 m!1318763))

(assert (=> b!1428546 m!1318587))

(assert (=> b!1428546 m!1318587))

(assert (=> b!1428546 m!1318601))

(assert (=> b!1428284 d!153459))

(declare-fun d!153461 () Bool)

(assert (=> d!153461 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!628996 () Unit!48256)

(declare-fun choose!38 (array!97342 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48256)

(assert (=> d!153461 (= lt!628996 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153461 (validMask!0 mask!2608)))

(assert (=> d!153461 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!628996)))

(declare-fun bs!41619 () Bool)

(assert (= bs!41619 d!153461))

