; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126462 () Bool)

(assert start!126462)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!647041 () (_ BitVec 64))

(declare-fun b!1482455 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!831318 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99398 0))(
  ( (array!99399 (arr!47972 (Array (_ BitVec 32) (_ BitVec 64))) (size!48523 (_ BitVec 32))) )
))
(declare-fun lt!647038 () array!99398)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12235 0))(
  ( (MissingZero!12235 (index!51331 (_ BitVec 32))) (Found!12235 (index!51332 (_ BitVec 32))) (Intermediate!12235 (undefined!13047 Bool) (index!51333 (_ BitVec 32)) (x!132913 (_ BitVec 32))) (Undefined!12235) (MissingVacant!12235 (index!51334 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99398 (_ BitVec 32)) SeekEntryResult!12235)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99398 (_ BitVec 32)) SeekEntryResult!12235)

(assert (=> b!1482455 (= e!831318 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647041 lt!647038 mask!2687) (seekEntryOrOpen!0 lt!647041 lt!647038 mask!2687)))))

(declare-fun b!1482457 () Bool)

(declare-fun res!1007774 () Bool)

(declare-fun e!831317 () Bool)

(assert (=> b!1482457 (=> (not res!1007774) (not e!831317))))

(declare-fun a!2862 () array!99398)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1482457 (= res!1007774 (validKeyInArray!0 (select (arr!47972 a!2862) j!93)))))

(declare-fun b!1482458 () Bool)

(declare-fun res!1007761 () Bool)

(declare-fun e!831314 () Bool)

(assert (=> b!1482458 (=> (not res!1007761) (not e!831314))))

(assert (=> b!1482458 (= res!1007761 (= (seekEntryOrOpen!0 (select (arr!47972 a!2862) j!93) a!2862 mask!2687) (Found!12235 j!93)))))

(declare-fun b!1482459 () Bool)

(declare-fun e!831313 () Bool)

(declare-fun e!831319 () Bool)

(assert (=> b!1482459 (= e!831313 e!831319)))

(declare-fun res!1007768 () Bool)

(assert (=> b!1482459 (=> (not res!1007768) (not e!831319))))

(declare-fun lt!647037 () SeekEntryResult!12235)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1482459 (= res!1007768 (= lt!647037 (Intermediate!12235 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99398 (_ BitVec 32)) SeekEntryResult!12235)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482459 (= lt!647037 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647041 mask!2687) lt!647041 lt!647038 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1482459 (= lt!647041 (select (store (arr!47972 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1482460 () Bool)

(declare-fun res!1007775 () Bool)

(assert (=> b!1482460 (=> (not res!1007775) (not e!831319))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1482460 (= res!1007775 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1482461 () Bool)

(declare-fun res!1007770 () Bool)

(assert (=> b!1482461 (=> (not res!1007770) (not e!831317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99398 (_ BitVec 32)) Bool)

(assert (=> b!1482461 (= res!1007770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1482462 () Bool)

(declare-fun e!831315 () Bool)

(assert (=> b!1482462 (= e!831319 (not e!831315))))

(declare-fun res!1007760 () Bool)

(assert (=> b!1482462 (=> res!1007760 e!831315)))

(assert (=> b!1482462 (= res!1007760 (or (and (= (select (arr!47972 a!2862) index!646) (select (store (arr!47972 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47972 a!2862) index!646) (select (arr!47972 a!2862) j!93))) (= (select (arr!47972 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1482462 e!831314))

(declare-fun res!1007769 () Bool)

(assert (=> b!1482462 (=> (not res!1007769) (not e!831314))))

(assert (=> b!1482462 (= res!1007769 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49758 0))(
  ( (Unit!49759) )
))
(declare-fun lt!647039 () Unit!49758)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99398 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49758)

(assert (=> b!1482462 (= lt!647039 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1482463 () Bool)

(assert (=> b!1482463 (= e!831315 (= (seekEntryOrOpen!0 lt!647041 lt!647038 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647041 lt!647038 mask!2687)))))

(declare-fun b!1482464 () Bool)

(declare-fun res!1007762 () Bool)

(assert (=> b!1482464 (=> (not res!1007762) (not e!831313))))

(declare-fun lt!647040 () SeekEntryResult!12235)

(assert (=> b!1482464 (= res!1007762 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47972 a!2862) j!93) a!2862 mask!2687) lt!647040))))

(declare-fun b!1482456 () Bool)

(declare-fun res!1007765 () Bool)

(assert (=> b!1482456 (=> (not res!1007765) (not e!831317))))

(assert (=> b!1482456 (= res!1007765 (and (= (size!48523 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48523 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48523 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1007772 () Bool)

(assert (=> start!126462 (=> (not res!1007772) (not e!831317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126462 (= res!1007772 (validMask!0 mask!2687))))

(assert (=> start!126462 e!831317))

(assert (=> start!126462 true))

(declare-fun array_inv!36917 (array!99398) Bool)

(assert (=> start!126462 (array_inv!36917 a!2862)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1482465 () Bool)

(assert (=> b!1482465 (= e!831314 (and (or (= (select (arr!47972 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47972 a!2862) intermediateBeforeIndex!19) (select (arr!47972 a!2862) j!93))) (let ((bdg!54269 (select (store (arr!47972 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47972 a!2862) index!646) bdg!54269) (= (select (arr!47972 a!2862) index!646) (select (arr!47972 a!2862) j!93))) (= (select (arr!47972 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54269 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1482466 () Bool)

(declare-fun res!1007766 () Bool)

(assert (=> b!1482466 (=> (not res!1007766) (not e!831317))))

(assert (=> b!1482466 (= res!1007766 (validKeyInArray!0 (select (arr!47972 a!2862) i!1006)))))

(declare-fun b!1482467 () Bool)

(declare-fun e!831316 () Bool)

(assert (=> b!1482467 (= e!831317 e!831316)))

(declare-fun res!1007771 () Bool)

(assert (=> b!1482467 (=> (not res!1007771) (not e!831316))))

(assert (=> b!1482467 (= res!1007771 (= (select (store (arr!47972 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482467 (= lt!647038 (array!99399 (store (arr!47972 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48523 a!2862)))))

(declare-fun b!1482468 () Bool)

(declare-fun res!1007767 () Bool)

(assert (=> b!1482468 (=> (not res!1007767) (not e!831317))))

(declare-datatypes ((List!34653 0))(
  ( (Nil!34650) (Cons!34649 (h!36020 (_ BitVec 64)) (t!49354 List!34653)) )
))
(declare-fun arrayNoDuplicates!0 (array!99398 (_ BitVec 32) List!34653) Bool)

(assert (=> b!1482468 (= res!1007767 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34650))))

(declare-fun b!1482469 () Bool)

(declare-fun res!1007763 () Bool)

(assert (=> b!1482469 (=> (not res!1007763) (not e!831319))))

(assert (=> b!1482469 (= res!1007763 e!831318)))

(declare-fun c!136871 () Bool)

(assert (=> b!1482469 (= c!136871 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1482470 () Bool)

(assert (=> b!1482470 (= e!831316 e!831313)))

(declare-fun res!1007773 () Bool)

(assert (=> b!1482470 (=> (not res!1007773) (not e!831313))))

(assert (=> b!1482470 (= res!1007773 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47972 a!2862) j!93) mask!2687) (select (arr!47972 a!2862) j!93) a!2862 mask!2687) lt!647040))))

(assert (=> b!1482470 (= lt!647040 (Intermediate!12235 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1482471 () Bool)

(declare-fun res!1007764 () Bool)

(assert (=> b!1482471 (=> (not res!1007764) (not e!831317))))

(assert (=> b!1482471 (= res!1007764 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48523 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48523 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48523 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1482472 () Bool)

(assert (=> b!1482472 (= e!831318 (= lt!647037 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647041 lt!647038 mask!2687)))))

(assert (= (and start!126462 res!1007772) b!1482456))

(assert (= (and b!1482456 res!1007765) b!1482466))

(assert (= (and b!1482466 res!1007766) b!1482457))

(assert (= (and b!1482457 res!1007774) b!1482461))

(assert (= (and b!1482461 res!1007770) b!1482468))

(assert (= (and b!1482468 res!1007767) b!1482471))

(assert (= (and b!1482471 res!1007764) b!1482467))

(assert (= (and b!1482467 res!1007771) b!1482470))

(assert (= (and b!1482470 res!1007773) b!1482464))

(assert (= (and b!1482464 res!1007762) b!1482459))

(assert (= (and b!1482459 res!1007768) b!1482469))

(assert (= (and b!1482469 c!136871) b!1482472))

(assert (= (and b!1482469 (not c!136871)) b!1482455))

(assert (= (and b!1482469 res!1007763) b!1482460))

(assert (= (and b!1482460 res!1007775) b!1482462))

(assert (= (and b!1482462 res!1007769) b!1482458))

(assert (= (and b!1482458 res!1007761) b!1482465))

(assert (= (and b!1482462 (not res!1007760)) b!1482463))

(declare-fun m!1368227 () Bool)

(assert (=> b!1482461 m!1368227))

(declare-fun m!1368229 () Bool)

(assert (=> b!1482457 m!1368229))

(assert (=> b!1482457 m!1368229))

(declare-fun m!1368231 () Bool)

(assert (=> b!1482457 m!1368231))

(declare-fun m!1368233 () Bool)

(assert (=> b!1482459 m!1368233))

(assert (=> b!1482459 m!1368233))

(declare-fun m!1368235 () Bool)

(assert (=> b!1482459 m!1368235))

(declare-fun m!1368237 () Bool)

(assert (=> b!1482459 m!1368237))

(declare-fun m!1368239 () Bool)

(assert (=> b!1482459 m!1368239))

(declare-fun m!1368241 () Bool)

(assert (=> start!126462 m!1368241))

(declare-fun m!1368243 () Bool)

(assert (=> start!126462 m!1368243))

(declare-fun m!1368245 () Bool)

(assert (=> b!1482462 m!1368245))

(assert (=> b!1482462 m!1368237))

(declare-fun m!1368247 () Bool)

(assert (=> b!1482462 m!1368247))

(declare-fun m!1368249 () Bool)

(assert (=> b!1482462 m!1368249))

(declare-fun m!1368251 () Bool)

(assert (=> b!1482462 m!1368251))

(assert (=> b!1482462 m!1368229))

(declare-fun m!1368253 () Bool)

(assert (=> b!1482463 m!1368253))

(declare-fun m!1368255 () Bool)

(assert (=> b!1482463 m!1368255))

(declare-fun m!1368257 () Bool)

(assert (=> b!1482466 m!1368257))

(assert (=> b!1482466 m!1368257))

(declare-fun m!1368259 () Bool)

(assert (=> b!1482466 m!1368259))

(declare-fun m!1368261 () Bool)

(assert (=> b!1482468 m!1368261))

(assert (=> b!1482465 m!1368237))

(declare-fun m!1368263 () Bool)

(assert (=> b!1482465 m!1368263))

(assert (=> b!1482465 m!1368247))

(assert (=> b!1482465 m!1368249))

(assert (=> b!1482465 m!1368229))

(assert (=> b!1482470 m!1368229))

(assert (=> b!1482470 m!1368229))

(declare-fun m!1368265 () Bool)

(assert (=> b!1482470 m!1368265))

(assert (=> b!1482470 m!1368265))

(assert (=> b!1482470 m!1368229))

(declare-fun m!1368267 () Bool)

(assert (=> b!1482470 m!1368267))

(assert (=> b!1482467 m!1368237))

(declare-fun m!1368269 () Bool)

(assert (=> b!1482467 m!1368269))

(assert (=> b!1482464 m!1368229))

(assert (=> b!1482464 m!1368229))

(declare-fun m!1368271 () Bool)

(assert (=> b!1482464 m!1368271))

(assert (=> b!1482458 m!1368229))

(assert (=> b!1482458 m!1368229))

(declare-fun m!1368273 () Bool)

(assert (=> b!1482458 m!1368273))

(declare-fun m!1368275 () Bool)

(assert (=> b!1482472 m!1368275))

(assert (=> b!1482455 m!1368255))

(assert (=> b!1482455 m!1368253))

(check-sat (not b!1482458) (not b!1482468) (not start!126462) (not b!1482455) (not b!1482472) (not b!1482457) (not b!1482464) (not b!1482462) (not b!1482466) (not b!1482459) (not b!1482470) (not b!1482461) (not b!1482463))
(check-sat)
(get-model)

(declare-fun b!1482535 () Bool)

(declare-fun e!831352 () Bool)

(declare-fun e!831351 () Bool)

(assert (=> b!1482535 (= e!831352 e!831351)))

(declare-fun c!136877 () Bool)

(assert (=> b!1482535 (= c!136877 (validKeyInArray!0 (select (arr!47972 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!156223 () Bool)

(declare-fun res!1007829 () Bool)

(assert (=> d!156223 (=> res!1007829 e!831352)))

(assert (=> d!156223 (= res!1007829 (bvsge #b00000000000000000000000000000000 (size!48523 a!2862)))))

(assert (=> d!156223 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!831352)))

(declare-fun b!1482536 () Bool)

(declare-fun e!831353 () Bool)

(declare-fun call!67854 () Bool)

(assert (=> b!1482536 (= e!831353 call!67854)))

(declare-fun b!1482537 () Bool)

(assert (=> b!1482537 (= e!831351 e!831353)))

(declare-fun lt!647065 () (_ BitVec 64))

(assert (=> b!1482537 (= lt!647065 (select (arr!47972 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!647063 () Unit!49758)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99398 (_ BitVec 64) (_ BitVec 32)) Unit!49758)

(assert (=> b!1482537 (= lt!647063 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!647065 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1482537 (arrayContainsKey!0 a!2862 lt!647065 #b00000000000000000000000000000000)))

(declare-fun lt!647064 () Unit!49758)

(assert (=> b!1482537 (= lt!647064 lt!647063)))

(declare-fun res!1007828 () Bool)

(assert (=> b!1482537 (= res!1007828 (= (seekEntryOrOpen!0 (select (arr!47972 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12235 #b00000000000000000000000000000000)))))

(assert (=> b!1482537 (=> (not res!1007828) (not e!831353))))

(declare-fun bm!67851 () Bool)

(assert (=> bm!67851 (= call!67854 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1482538 () Bool)

(assert (=> b!1482538 (= e!831351 call!67854)))

(assert (= (and d!156223 (not res!1007829)) b!1482535))

(assert (= (and b!1482535 c!136877) b!1482537))

(assert (= (and b!1482535 (not c!136877)) b!1482538))

(assert (= (and b!1482537 res!1007828) b!1482536))

(assert (= (or b!1482536 b!1482538) bm!67851))

(declare-fun m!1368327 () Bool)

(assert (=> b!1482535 m!1368327))

(assert (=> b!1482535 m!1368327))

(declare-fun m!1368329 () Bool)

(assert (=> b!1482535 m!1368329))

(assert (=> b!1482537 m!1368327))

(declare-fun m!1368331 () Bool)

(assert (=> b!1482537 m!1368331))

(declare-fun m!1368333 () Bool)

(assert (=> b!1482537 m!1368333))

(assert (=> b!1482537 m!1368327))

(declare-fun m!1368335 () Bool)

(assert (=> b!1482537 m!1368335))

(declare-fun m!1368337 () Bool)

(assert (=> bm!67851 m!1368337))

(assert (=> b!1482461 d!156223))

(declare-fun b!1482557 () Bool)

(declare-fun lt!647070 () SeekEntryResult!12235)

(assert (=> b!1482557 (and (bvsge (index!51333 lt!647070) #b00000000000000000000000000000000) (bvslt (index!51333 lt!647070) (size!48523 a!2862)))))

(declare-fun e!831368 () Bool)

(assert (=> b!1482557 (= e!831368 (= (select (arr!47972 a!2862) (index!51333 lt!647070)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!156225 () Bool)

(declare-fun e!831366 () Bool)

(assert (=> d!156225 e!831366))

(declare-fun c!136886 () Bool)

(get-info :version)

(assert (=> d!156225 (= c!136886 (and ((_ is Intermediate!12235) lt!647070) (undefined!13047 lt!647070)))))

(declare-fun e!831364 () SeekEntryResult!12235)

(assert (=> d!156225 (= lt!647070 e!831364)))

(declare-fun c!136884 () Bool)

(assert (=> d!156225 (= c!136884 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!647071 () (_ BitVec 64))

(assert (=> d!156225 (= lt!647071 (select (arr!47972 a!2862) (toIndex!0 (select (arr!47972 a!2862) j!93) mask!2687)))))

(assert (=> d!156225 (validMask!0 mask!2687)))

(assert (=> d!156225 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47972 a!2862) j!93) mask!2687) (select (arr!47972 a!2862) j!93) a!2862 mask!2687) lt!647070)))

(declare-fun b!1482558 () Bool)

(assert (=> b!1482558 (= e!831364 (Intermediate!12235 true (toIndex!0 (select (arr!47972 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1482559 () Bool)

(declare-fun e!831365 () SeekEntryResult!12235)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482559 (= e!831365 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47972 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47972 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1482560 () Bool)

(assert (=> b!1482560 (= e!831364 e!831365)))

(declare-fun c!136885 () Bool)

(assert (=> b!1482560 (= c!136885 (or (= lt!647071 (select (arr!47972 a!2862) j!93)) (= (bvadd lt!647071 lt!647071) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1482561 () Bool)

(assert (=> b!1482561 (= e!831366 (bvsge (x!132913 lt!647070) #b01111111111111111111111111111110))))

(declare-fun b!1482562 () Bool)

(assert (=> b!1482562 (and (bvsge (index!51333 lt!647070) #b00000000000000000000000000000000) (bvslt (index!51333 lt!647070) (size!48523 a!2862)))))

(declare-fun res!1007837 () Bool)

(assert (=> b!1482562 (= res!1007837 (= (select (arr!47972 a!2862) (index!51333 lt!647070)) (select (arr!47972 a!2862) j!93)))))

(assert (=> b!1482562 (=> res!1007837 e!831368)))

(declare-fun e!831367 () Bool)

(assert (=> b!1482562 (= e!831367 e!831368)))

(declare-fun b!1482563 () Bool)

(assert (=> b!1482563 (= e!831365 (Intermediate!12235 false (toIndex!0 (select (arr!47972 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1482564 () Bool)

(assert (=> b!1482564 (and (bvsge (index!51333 lt!647070) #b00000000000000000000000000000000) (bvslt (index!51333 lt!647070) (size!48523 a!2862)))))

(declare-fun res!1007838 () Bool)

(assert (=> b!1482564 (= res!1007838 (= (select (arr!47972 a!2862) (index!51333 lt!647070)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482564 (=> res!1007838 e!831368)))

(declare-fun b!1482565 () Bool)

(assert (=> b!1482565 (= e!831366 e!831367)))

(declare-fun res!1007836 () Bool)

(assert (=> b!1482565 (= res!1007836 (and ((_ is Intermediate!12235) lt!647070) (not (undefined!13047 lt!647070)) (bvslt (x!132913 lt!647070) #b01111111111111111111111111111110) (bvsge (x!132913 lt!647070) #b00000000000000000000000000000000) (bvsge (x!132913 lt!647070) #b00000000000000000000000000000000)))))

(assert (=> b!1482565 (=> (not res!1007836) (not e!831367))))

(assert (= (and d!156225 c!136884) b!1482558))

(assert (= (and d!156225 (not c!136884)) b!1482560))

(assert (= (and b!1482560 c!136885) b!1482563))

(assert (= (and b!1482560 (not c!136885)) b!1482559))

(assert (= (and d!156225 c!136886) b!1482561))

(assert (= (and d!156225 (not c!136886)) b!1482565))

(assert (= (and b!1482565 res!1007836) b!1482562))

(assert (= (and b!1482562 (not res!1007837)) b!1482564))

(assert (= (and b!1482564 (not res!1007838)) b!1482557))

(assert (=> b!1482559 m!1368265))

(declare-fun m!1368339 () Bool)

(assert (=> b!1482559 m!1368339))

(assert (=> b!1482559 m!1368339))

(assert (=> b!1482559 m!1368229))

(declare-fun m!1368341 () Bool)

(assert (=> b!1482559 m!1368341))

(declare-fun m!1368343 () Bool)

(assert (=> b!1482557 m!1368343))

(assert (=> d!156225 m!1368265))

(declare-fun m!1368345 () Bool)

(assert (=> d!156225 m!1368345))

(assert (=> d!156225 m!1368241))

(assert (=> b!1482564 m!1368343))

(assert (=> b!1482562 m!1368343))

(assert (=> b!1482470 d!156225))

(declare-fun d!156227 () Bool)

(declare-fun lt!647077 () (_ BitVec 32))

(declare-fun lt!647076 () (_ BitVec 32))

(assert (=> d!156227 (= lt!647077 (bvmul (bvxor lt!647076 (bvlshr lt!647076 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156227 (= lt!647076 ((_ extract 31 0) (bvand (bvxor (select (arr!47972 a!2862) j!93) (bvlshr (select (arr!47972 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156227 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1007839 (let ((h!36022 ((_ extract 31 0) (bvand (bvxor (select (arr!47972 a!2862) j!93) (bvlshr (select (arr!47972 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132916 (bvmul (bvxor h!36022 (bvlshr h!36022 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132916 (bvlshr x!132916 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1007839 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1007839 #b00000000000000000000000000000000))))))

(assert (=> d!156227 (= (toIndex!0 (select (arr!47972 a!2862) j!93) mask!2687) (bvand (bvxor lt!647077 (bvlshr lt!647077 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1482470 d!156227))

(declare-fun b!1482566 () Bool)

(declare-fun lt!647078 () SeekEntryResult!12235)

(assert (=> b!1482566 (and (bvsge (index!51333 lt!647078) #b00000000000000000000000000000000) (bvslt (index!51333 lt!647078) (size!48523 lt!647038)))))

(declare-fun e!831373 () Bool)

(assert (=> b!1482566 (= e!831373 (= (select (arr!47972 lt!647038) (index!51333 lt!647078)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!156229 () Bool)

(declare-fun e!831371 () Bool)

(assert (=> d!156229 e!831371))

(declare-fun c!136889 () Bool)

(assert (=> d!156229 (= c!136889 (and ((_ is Intermediate!12235) lt!647078) (undefined!13047 lt!647078)))))

(declare-fun e!831369 () SeekEntryResult!12235)

(assert (=> d!156229 (= lt!647078 e!831369)))

(declare-fun c!136887 () Bool)

(assert (=> d!156229 (= c!136887 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!647079 () (_ BitVec 64))

(assert (=> d!156229 (= lt!647079 (select (arr!47972 lt!647038) index!646))))

(assert (=> d!156229 (validMask!0 mask!2687)))

(assert (=> d!156229 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647041 lt!647038 mask!2687) lt!647078)))

(declare-fun b!1482567 () Bool)

(assert (=> b!1482567 (= e!831369 (Intermediate!12235 true index!646 x!665))))

(declare-fun e!831370 () SeekEntryResult!12235)

(declare-fun b!1482568 () Bool)

(assert (=> b!1482568 (= e!831370 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!647041 lt!647038 mask!2687))))

(declare-fun b!1482569 () Bool)

(assert (=> b!1482569 (= e!831369 e!831370)))

(declare-fun c!136888 () Bool)

(assert (=> b!1482569 (= c!136888 (or (= lt!647079 lt!647041) (= (bvadd lt!647079 lt!647079) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1482570 () Bool)

(assert (=> b!1482570 (= e!831371 (bvsge (x!132913 lt!647078) #b01111111111111111111111111111110))))

(declare-fun b!1482571 () Bool)

(assert (=> b!1482571 (and (bvsge (index!51333 lt!647078) #b00000000000000000000000000000000) (bvslt (index!51333 lt!647078) (size!48523 lt!647038)))))

(declare-fun res!1007841 () Bool)

(assert (=> b!1482571 (= res!1007841 (= (select (arr!47972 lt!647038) (index!51333 lt!647078)) lt!647041))))

(assert (=> b!1482571 (=> res!1007841 e!831373)))

(declare-fun e!831372 () Bool)

(assert (=> b!1482571 (= e!831372 e!831373)))

(declare-fun b!1482572 () Bool)

(assert (=> b!1482572 (= e!831370 (Intermediate!12235 false index!646 x!665))))

(declare-fun b!1482573 () Bool)

(assert (=> b!1482573 (and (bvsge (index!51333 lt!647078) #b00000000000000000000000000000000) (bvslt (index!51333 lt!647078) (size!48523 lt!647038)))))

(declare-fun res!1007842 () Bool)

(assert (=> b!1482573 (= res!1007842 (= (select (arr!47972 lt!647038) (index!51333 lt!647078)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482573 (=> res!1007842 e!831373)))

(declare-fun b!1482574 () Bool)

(assert (=> b!1482574 (= e!831371 e!831372)))

(declare-fun res!1007840 () Bool)

(assert (=> b!1482574 (= res!1007840 (and ((_ is Intermediate!12235) lt!647078) (not (undefined!13047 lt!647078)) (bvslt (x!132913 lt!647078) #b01111111111111111111111111111110) (bvsge (x!132913 lt!647078) #b00000000000000000000000000000000) (bvsge (x!132913 lt!647078) x!665)))))

(assert (=> b!1482574 (=> (not res!1007840) (not e!831372))))

(assert (= (and d!156229 c!136887) b!1482567))

(assert (= (and d!156229 (not c!136887)) b!1482569))

(assert (= (and b!1482569 c!136888) b!1482572))

(assert (= (and b!1482569 (not c!136888)) b!1482568))

(assert (= (and d!156229 c!136889) b!1482570))

(assert (= (and d!156229 (not c!136889)) b!1482574))

(assert (= (and b!1482574 res!1007840) b!1482571))

(assert (= (and b!1482571 (not res!1007841)) b!1482573))

(assert (= (and b!1482573 (not res!1007842)) b!1482566))

(declare-fun m!1368347 () Bool)

(assert (=> b!1482568 m!1368347))

(assert (=> b!1482568 m!1368347))

(declare-fun m!1368349 () Bool)

(assert (=> b!1482568 m!1368349))

(declare-fun m!1368351 () Bool)

(assert (=> b!1482566 m!1368351))

(declare-fun m!1368353 () Bool)

(assert (=> d!156229 m!1368353))

(assert (=> d!156229 m!1368241))

(assert (=> b!1482573 m!1368351))

(assert (=> b!1482571 m!1368351))

(assert (=> b!1482472 d!156229))

(declare-fun b!1482587 () Bool)

(declare-fun e!831382 () SeekEntryResult!12235)

(declare-fun e!831380 () SeekEntryResult!12235)

(assert (=> b!1482587 (= e!831382 e!831380)))

(declare-fun lt!647087 () (_ BitVec 64))

(declare-fun lt!647086 () SeekEntryResult!12235)

(assert (=> b!1482587 (= lt!647087 (select (arr!47972 a!2862) (index!51333 lt!647086)))))

(declare-fun c!136896 () Bool)

(assert (=> b!1482587 (= c!136896 (= lt!647087 (select (arr!47972 a!2862) j!93)))))

(declare-fun b!1482588 () Bool)

(declare-fun e!831381 () SeekEntryResult!12235)

(assert (=> b!1482588 (= e!831381 (MissingZero!12235 (index!51333 lt!647086)))))

(declare-fun d!156231 () Bool)

(declare-fun lt!647088 () SeekEntryResult!12235)

(assert (=> d!156231 (and (or ((_ is Undefined!12235) lt!647088) (not ((_ is Found!12235) lt!647088)) (and (bvsge (index!51332 lt!647088) #b00000000000000000000000000000000) (bvslt (index!51332 lt!647088) (size!48523 a!2862)))) (or ((_ is Undefined!12235) lt!647088) ((_ is Found!12235) lt!647088) (not ((_ is MissingZero!12235) lt!647088)) (and (bvsge (index!51331 lt!647088) #b00000000000000000000000000000000) (bvslt (index!51331 lt!647088) (size!48523 a!2862)))) (or ((_ is Undefined!12235) lt!647088) ((_ is Found!12235) lt!647088) ((_ is MissingZero!12235) lt!647088) (not ((_ is MissingVacant!12235) lt!647088)) (and (bvsge (index!51334 lt!647088) #b00000000000000000000000000000000) (bvslt (index!51334 lt!647088) (size!48523 a!2862)))) (or ((_ is Undefined!12235) lt!647088) (ite ((_ is Found!12235) lt!647088) (= (select (arr!47972 a!2862) (index!51332 lt!647088)) (select (arr!47972 a!2862) j!93)) (ite ((_ is MissingZero!12235) lt!647088) (= (select (arr!47972 a!2862) (index!51331 lt!647088)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12235) lt!647088) (= (select (arr!47972 a!2862) (index!51334 lt!647088)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156231 (= lt!647088 e!831382)))

(declare-fun c!136897 () Bool)

(assert (=> d!156231 (= c!136897 (and ((_ is Intermediate!12235) lt!647086) (undefined!13047 lt!647086)))))

(assert (=> d!156231 (= lt!647086 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47972 a!2862) j!93) mask!2687) (select (arr!47972 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!156231 (validMask!0 mask!2687)))

(assert (=> d!156231 (= (seekEntryOrOpen!0 (select (arr!47972 a!2862) j!93) a!2862 mask!2687) lt!647088)))

(declare-fun b!1482589 () Bool)

(declare-fun c!136898 () Bool)

(assert (=> b!1482589 (= c!136898 (= lt!647087 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482589 (= e!831380 e!831381)))

(declare-fun b!1482590 () Bool)

(assert (=> b!1482590 (= e!831381 (seekKeyOrZeroReturnVacant!0 (x!132913 lt!647086) (index!51333 lt!647086) (index!51333 lt!647086) (select (arr!47972 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1482591 () Bool)

(assert (=> b!1482591 (= e!831380 (Found!12235 (index!51333 lt!647086)))))

(declare-fun b!1482592 () Bool)

(assert (=> b!1482592 (= e!831382 Undefined!12235)))

(assert (= (and d!156231 c!136897) b!1482592))

(assert (= (and d!156231 (not c!136897)) b!1482587))

(assert (= (and b!1482587 c!136896) b!1482591))

(assert (= (and b!1482587 (not c!136896)) b!1482589))

(assert (= (and b!1482589 c!136898) b!1482588))

(assert (= (and b!1482589 (not c!136898)) b!1482590))

(declare-fun m!1368355 () Bool)

(assert (=> b!1482587 m!1368355))

(declare-fun m!1368357 () Bool)

(assert (=> d!156231 m!1368357))

(assert (=> d!156231 m!1368265))

(assert (=> d!156231 m!1368229))

(assert (=> d!156231 m!1368267))

(declare-fun m!1368359 () Bool)

(assert (=> d!156231 m!1368359))

(assert (=> d!156231 m!1368241))

(assert (=> d!156231 m!1368229))

(assert (=> d!156231 m!1368265))

(declare-fun m!1368361 () Bool)

(assert (=> d!156231 m!1368361))

(assert (=> b!1482590 m!1368229))

(declare-fun m!1368363 () Bool)

(assert (=> b!1482590 m!1368363))

(assert (=> b!1482458 d!156231))

(declare-fun b!1482593 () Bool)

(declare-fun lt!647089 () SeekEntryResult!12235)

(assert (=> b!1482593 (and (bvsge (index!51333 lt!647089) #b00000000000000000000000000000000) (bvslt (index!51333 lt!647089) (size!48523 lt!647038)))))

(declare-fun e!831387 () Bool)

(assert (=> b!1482593 (= e!831387 (= (select (arr!47972 lt!647038) (index!51333 lt!647089)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!156237 () Bool)

(declare-fun e!831385 () Bool)

(assert (=> d!156237 e!831385))

(declare-fun c!136901 () Bool)

(assert (=> d!156237 (= c!136901 (and ((_ is Intermediate!12235) lt!647089) (undefined!13047 lt!647089)))))

(declare-fun e!831383 () SeekEntryResult!12235)

(assert (=> d!156237 (= lt!647089 e!831383)))

(declare-fun c!136899 () Bool)

(assert (=> d!156237 (= c!136899 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!647090 () (_ BitVec 64))

(assert (=> d!156237 (= lt!647090 (select (arr!47972 lt!647038) (toIndex!0 lt!647041 mask!2687)))))

(assert (=> d!156237 (validMask!0 mask!2687)))

(assert (=> d!156237 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647041 mask!2687) lt!647041 lt!647038 mask!2687) lt!647089)))

(declare-fun b!1482594 () Bool)

(assert (=> b!1482594 (= e!831383 (Intermediate!12235 true (toIndex!0 lt!647041 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1482595 () Bool)

(declare-fun e!831384 () SeekEntryResult!12235)

(assert (=> b!1482595 (= e!831384 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!647041 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!647041 lt!647038 mask!2687))))

(declare-fun b!1482596 () Bool)

(assert (=> b!1482596 (= e!831383 e!831384)))

(declare-fun c!136900 () Bool)

(assert (=> b!1482596 (= c!136900 (or (= lt!647090 lt!647041) (= (bvadd lt!647090 lt!647090) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1482597 () Bool)

(assert (=> b!1482597 (= e!831385 (bvsge (x!132913 lt!647089) #b01111111111111111111111111111110))))

(declare-fun b!1482598 () Bool)

(assert (=> b!1482598 (and (bvsge (index!51333 lt!647089) #b00000000000000000000000000000000) (bvslt (index!51333 lt!647089) (size!48523 lt!647038)))))

(declare-fun res!1007844 () Bool)

(assert (=> b!1482598 (= res!1007844 (= (select (arr!47972 lt!647038) (index!51333 lt!647089)) lt!647041))))

(assert (=> b!1482598 (=> res!1007844 e!831387)))

(declare-fun e!831386 () Bool)

(assert (=> b!1482598 (= e!831386 e!831387)))

(declare-fun b!1482599 () Bool)

(assert (=> b!1482599 (= e!831384 (Intermediate!12235 false (toIndex!0 lt!647041 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1482600 () Bool)

(assert (=> b!1482600 (and (bvsge (index!51333 lt!647089) #b00000000000000000000000000000000) (bvslt (index!51333 lt!647089) (size!48523 lt!647038)))))

(declare-fun res!1007845 () Bool)

(assert (=> b!1482600 (= res!1007845 (= (select (arr!47972 lt!647038) (index!51333 lt!647089)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482600 (=> res!1007845 e!831387)))

(declare-fun b!1482601 () Bool)

(assert (=> b!1482601 (= e!831385 e!831386)))

(declare-fun res!1007843 () Bool)

(assert (=> b!1482601 (= res!1007843 (and ((_ is Intermediate!12235) lt!647089) (not (undefined!13047 lt!647089)) (bvslt (x!132913 lt!647089) #b01111111111111111111111111111110) (bvsge (x!132913 lt!647089) #b00000000000000000000000000000000) (bvsge (x!132913 lt!647089) #b00000000000000000000000000000000)))))

(assert (=> b!1482601 (=> (not res!1007843) (not e!831386))))

(assert (= (and d!156237 c!136899) b!1482594))

(assert (= (and d!156237 (not c!136899)) b!1482596))

(assert (= (and b!1482596 c!136900) b!1482599))

(assert (= (and b!1482596 (not c!136900)) b!1482595))

(assert (= (and d!156237 c!136901) b!1482597))

(assert (= (and d!156237 (not c!136901)) b!1482601))

(assert (= (and b!1482601 res!1007843) b!1482598))

(assert (= (and b!1482598 (not res!1007844)) b!1482600))

(assert (= (and b!1482600 (not res!1007845)) b!1482593))

(assert (=> b!1482595 m!1368233))

(declare-fun m!1368365 () Bool)

(assert (=> b!1482595 m!1368365))

(assert (=> b!1482595 m!1368365))

(declare-fun m!1368367 () Bool)

(assert (=> b!1482595 m!1368367))

(declare-fun m!1368369 () Bool)

(assert (=> b!1482593 m!1368369))

(assert (=> d!156237 m!1368233))

(declare-fun m!1368371 () Bool)

(assert (=> d!156237 m!1368371))

(assert (=> d!156237 m!1368241))

(assert (=> b!1482600 m!1368369))

(assert (=> b!1482598 m!1368369))

(assert (=> b!1482459 d!156237))

(declare-fun d!156239 () Bool)

(declare-fun lt!647092 () (_ BitVec 32))

(declare-fun lt!647091 () (_ BitVec 32))

(assert (=> d!156239 (= lt!647092 (bvmul (bvxor lt!647091 (bvlshr lt!647091 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156239 (= lt!647091 ((_ extract 31 0) (bvand (bvxor lt!647041 (bvlshr lt!647041 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156239 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1007839 (let ((h!36022 ((_ extract 31 0) (bvand (bvxor lt!647041 (bvlshr lt!647041 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132916 (bvmul (bvxor h!36022 (bvlshr h!36022 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132916 (bvlshr x!132916 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1007839 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1007839 #b00000000000000000000000000000000))))))

(assert (=> d!156239 (= (toIndex!0 lt!647041 mask!2687) (bvand (bvxor lt!647092 (bvlshr lt!647092 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1482459 d!156239))

(declare-fun d!156241 () Bool)

(assert (=> d!156241 (= (validKeyInArray!0 (select (arr!47972 a!2862) j!93)) (and (not (= (select (arr!47972 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47972 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1482457 d!156241))

(declare-fun b!1482620 () Bool)

(declare-fun e!831402 () Bool)

(declare-fun e!831405 () Bool)

(assert (=> b!1482620 (= e!831402 e!831405)))

(declare-fun c!136906 () Bool)

(assert (=> b!1482620 (= c!136906 (validKeyInArray!0 (select (arr!47972 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67856 () Bool)

(declare-fun call!67859 () Bool)

(assert (=> bm!67856 (= call!67859 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!136906 (Cons!34649 (select (arr!47972 a!2862) #b00000000000000000000000000000000) Nil!34650) Nil!34650)))))

(declare-fun b!1482621 () Bool)

(declare-fun e!831404 () Bool)

(declare-fun contains!9926 (List!34653 (_ BitVec 64)) Bool)

(assert (=> b!1482621 (= e!831404 (contains!9926 Nil!34650 (select (arr!47972 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1482622 () Bool)

(assert (=> b!1482622 (= e!831405 call!67859)))

(declare-fun d!156243 () Bool)

(declare-fun res!1007856 () Bool)

(declare-fun e!831403 () Bool)

(assert (=> d!156243 (=> res!1007856 e!831403)))

(assert (=> d!156243 (= res!1007856 (bvsge #b00000000000000000000000000000000 (size!48523 a!2862)))))

(assert (=> d!156243 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34650) e!831403)))

(declare-fun b!1482623 () Bool)

(assert (=> b!1482623 (= e!831405 call!67859)))

(declare-fun b!1482624 () Bool)

(assert (=> b!1482624 (= e!831403 e!831402)))

(declare-fun res!1007858 () Bool)

(assert (=> b!1482624 (=> (not res!1007858) (not e!831402))))

(assert (=> b!1482624 (= res!1007858 (not e!831404))))

(declare-fun res!1007857 () Bool)

(assert (=> b!1482624 (=> (not res!1007857) (not e!831404))))

(assert (=> b!1482624 (= res!1007857 (validKeyInArray!0 (select (arr!47972 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156243 (not res!1007856)) b!1482624))

(assert (= (and b!1482624 res!1007857) b!1482621))

(assert (= (and b!1482624 res!1007858) b!1482620))

(assert (= (and b!1482620 c!136906) b!1482623))

(assert (= (and b!1482620 (not c!136906)) b!1482622))

(assert (= (or b!1482623 b!1482622) bm!67856))

(assert (=> b!1482620 m!1368327))

(assert (=> b!1482620 m!1368327))

(assert (=> b!1482620 m!1368329))

(assert (=> bm!67856 m!1368327))

(declare-fun m!1368375 () Bool)

(assert (=> bm!67856 m!1368375))

(assert (=> b!1482621 m!1368327))

(assert (=> b!1482621 m!1368327))

(declare-fun m!1368381 () Bool)

(assert (=> b!1482621 m!1368381))

(assert (=> b!1482624 m!1368327))

(assert (=> b!1482624 m!1368327))

(assert (=> b!1482624 m!1368329))

(assert (=> b!1482468 d!156243))

(declare-fun d!156245 () Bool)

(assert (=> d!156245 (= (validKeyInArray!0 (select (arr!47972 a!2862) i!1006)) (and (not (= (select (arr!47972 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47972 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1482466 d!156245))

(declare-fun b!1482671 () Bool)

(declare-fun c!136931 () Bool)

(declare-fun lt!647120 () (_ BitVec 64))

(assert (=> b!1482671 (= c!136931 (= lt!647120 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!831431 () SeekEntryResult!12235)

(declare-fun e!831430 () SeekEntryResult!12235)

(assert (=> b!1482671 (= e!831431 e!831430)))

(declare-fun b!1482672 () Bool)

(assert (=> b!1482672 (= e!831431 (Found!12235 index!646))))

(declare-fun b!1482673 () Bool)

(assert (=> b!1482673 (= e!831430 (MissingVacant!12235 intermediateAfterIndex!19))))

(declare-fun lt!647119 () SeekEntryResult!12235)

(declare-fun d!156249 () Bool)

(assert (=> d!156249 (and (or ((_ is Undefined!12235) lt!647119) (not ((_ is Found!12235) lt!647119)) (and (bvsge (index!51332 lt!647119) #b00000000000000000000000000000000) (bvslt (index!51332 lt!647119) (size!48523 lt!647038)))) (or ((_ is Undefined!12235) lt!647119) ((_ is Found!12235) lt!647119) (not ((_ is MissingVacant!12235) lt!647119)) (not (= (index!51334 lt!647119) intermediateAfterIndex!19)) (and (bvsge (index!51334 lt!647119) #b00000000000000000000000000000000) (bvslt (index!51334 lt!647119) (size!48523 lt!647038)))) (or ((_ is Undefined!12235) lt!647119) (ite ((_ is Found!12235) lt!647119) (= (select (arr!47972 lt!647038) (index!51332 lt!647119)) lt!647041) (and ((_ is MissingVacant!12235) lt!647119) (= (index!51334 lt!647119) intermediateAfterIndex!19) (= (select (arr!47972 lt!647038) (index!51334 lt!647119)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!831432 () SeekEntryResult!12235)

(assert (=> d!156249 (= lt!647119 e!831432)))

(declare-fun c!136929 () Bool)

(assert (=> d!156249 (= c!136929 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156249 (= lt!647120 (select (arr!47972 lt!647038) index!646))))

(assert (=> d!156249 (validMask!0 mask!2687)))

(assert (=> d!156249 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647041 lt!647038 mask!2687) lt!647119)))

(declare-fun b!1482674 () Bool)

(assert (=> b!1482674 (= e!831432 e!831431)))

(declare-fun c!136930 () Bool)

(assert (=> b!1482674 (= c!136930 (= lt!647120 lt!647041))))

(declare-fun b!1482675 () Bool)

(assert (=> b!1482675 (= e!831432 Undefined!12235)))

(declare-fun b!1482676 () Bool)

(assert (=> b!1482676 (= e!831430 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!647041 lt!647038 mask!2687))))

(assert (= (and d!156249 c!136929) b!1482675))

(assert (= (and d!156249 (not c!136929)) b!1482674))

(assert (= (and b!1482674 c!136930) b!1482672))

(assert (= (and b!1482674 (not c!136930)) b!1482671))

(assert (= (and b!1482671 c!136931) b!1482673))

(assert (= (and b!1482671 (not c!136931)) b!1482676))

(declare-fun m!1368399 () Bool)

(assert (=> d!156249 m!1368399))

(declare-fun m!1368401 () Bool)

(assert (=> d!156249 m!1368401))

(assert (=> d!156249 m!1368353))

(assert (=> d!156249 m!1368241))

(assert (=> b!1482676 m!1368347))

(assert (=> b!1482676 m!1368347))

(declare-fun m!1368403 () Bool)

(assert (=> b!1482676 m!1368403))

(assert (=> b!1482455 d!156249))

(declare-fun b!1482683 () Bool)

(declare-fun e!831438 () SeekEntryResult!12235)

(declare-fun e!831436 () SeekEntryResult!12235)

(assert (=> b!1482683 (= e!831438 e!831436)))

(declare-fun lt!647124 () (_ BitVec 64))

(declare-fun lt!647123 () SeekEntryResult!12235)

(assert (=> b!1482683 (= lt!647124 (select (arr!47972 lt!647038) (index!51333 lt!647123)))))

(declare-fun c!136935 () Bool)

(assert (=> b!1482683 (= c!136935 (= lt!647124 lt!647041))))

(declare-fun b!1482684 () Bool)

(declare-fun e!831437 () SeekEntryResult!12235)

(assert (=> b!1482684 (= e!831437 (MissingZero!12235 (index!51333 lt!647123)))))

(declare-fun d!156253 () Bool)

(declare-fun lt!647125 () SeekEntryResult!12235)

(assert (=> d!156253 (and (or ((_ is Undefined!12235) lt!647125) (not ((_ is Found!12235) lt!647125)) (and (bvsge (index!51332 lt!647125) #b00000000000000000000000000000000) (bvslt (index!51332 lt!647125) (size!48523 lt!647038)))) (or ((_ is Undefined!12235) lt!647125) ((_ is Found!12235) lt!647125) (not ((_ is MissingZero!12235) lt!647125)) (and (bvsge (index!51331 lt!647125) #b00000000000000000000000000000000) (bvslt (index!51331 lt!647125) (size!48523 lt!647038)))) (or ((_ is Undefined!12235) lt!647125) ((_ is Found!12235) lt!647125) ((_ is MissingZero!12235) lt!647125) (not ((_ is MissingVacant!12235) lt!647125)) (and (bvsge (index!51334 lt!647125) #b00000000000000000000000000000000) (bvslt (index!51334 lt!647125) (size!48523 lt!647038)))) (or ((_ is Undefined!12235) lt!647125) (ite ((_ is Found!12235) lt!647125) (= (select (arr!47972 lt!647038) (index!51332 lt!647125)) lt!647041) (ite ((_ is MissingZero!12235) lt!647125) (= (select (arr!47972 lt!647038) (index!51331 lt!647125)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12235) lt!647125) (= (select (arr!47972 lt!647038) (index!51334 lt!647125)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156253 (= lt!647125 e!831438)))

(declare-fun c!136936 () Bool)

(assert (=> d!156253 (= c!136936 (and ((_ is Intermediate!12235) lt!647123) (undefined!13047 lt!647123)))))

(assert (=> d!156253 (= lt!647123 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647041 mask!2687) lt!647041 lt!647038 mask!2687))))

(assert (=> d!156253 (validMask!0 mask!2687)))

(assert (=> d!156253 (= (seekEntryOrOpen!0 lt!647041 lt!647038 mask!2687) lt!647125)))

(declare-fun b!1482685 () Bool)

(declare-fun c!136937 () Bool)

(assert (=> b!1482685 (= c!136937 (= lt!647124 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482685 (= e!831436 e!831437)))

(declare-fun b!1482686 () Bool)

(assert (=> b!1482686 (= e!831437 (seekKeyOrZeroReturnVacant!0 (x!132913 lt!647123) (index!51333 lt!647123) (index!51333 lt!647123) lt!647041 lt!647038 mask!2687))))

(declare-fun b!1482687 () Bool)

(assert (=> b!1482687 (= e!831436 (Found!12235 (index!51333 lt!647123)))))

(declare-fun b!1482688 () Bool)

(assert (=> b!1482688 (= e!831438 Undefined!12235)))

(assert (= (and d!156253 c!136936) b!1482688))

(assert (= (and d!156253 (not c!136936)) b!1482683))

(assert (= (and b!1482683 c!136935) b!1482687))

(assert (= (and b!1482683 (not c!136935)) b!1482685))

(assert (= (and b!1482685 c!136937) b!1482684))

(assert (= (and b!1482685 (not c!136937)) b!1482686))

(declare-fun m!1368415 () Bool)

(assert (=> b!1482683 m!1368415))

(declare-fun m!1368417 () Bool)

(assert (=> d!156253 m!1368417))

(assert (=> d!156253 m!1368233))

(assert (=> d!156253 m!1368235))

(declare-fun m!1368419 () Bool)

(assert (=> d!156253 m!1368419))

(assert (=> d!156253 m!1368241))

(assert (=> d!156253 m!1368233))

(declare-fun m!1368421 () Bool)

(assert (=> d!156253 m!1368421))

(declare-fun m!1368423 () Bool)

(assert (=> b!1482686 m!1368423))

(assert (=> b!1482455 d!156253))

(declare-fun d!156257 () Bool)

(assert (=> d!156257 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126462 d!156257))

(declare-fun d!156261 () Bool)

(assert (=> d!156261 (= (array_inv!36917 a!2862) (bvsge (size!48523 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126462 d!156261))

(declare-fun b!1482707 () Bool)

(declare-fun lt!647132 () SeekEntryResult!12235)

(assert (=> b!1482707 (and (bvsge (index!51333 lt!647132) #b00000000000000000000000000000000) (bvslt (index!51333 lt!647132) (size!48523 a!2862)))))

(declare-fun e!831452 () Bool)

(assert (=> b!1482707 (= e!831452 (= (select (arr!47972 a!2862) (index!51333 lt!647132)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!156263 () Bool)

(declare-fun e!831450 () Bool)

(assert (=> d!156263 e!831450))

(declare-fun c!136949 () Bool)

(assert (=> d!156263 (= c!136949 (and ((_ is Intermediate!12235) lt!647132) (undefined!13047 lt!647132)))))

(declare-fun e!831448 () SeekEntryResult!12235)

(assert (=> d!156263 (= lt!647132 e!831448)))

(declare-fun c!136947 () Bool)

(assert (=> d!156263 (= c!136947 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!647133 () (_ BitVec 64))

(assert (=> d!156263 (= lt!647133 (select (arr!47972 a!2862) index!646))))

(assert (=> d!156263 (validMask!0 mask!2687)))

(assert (=> d!156263 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47972 a!2862) j!93) a!2862 mask!2687) lt!647132)))

(declare-fun b!1482708 () Bool)

(assert (=> b!1482708 (= e!831448 (Intermediate!12235 true index!646 x!665))))

(declare-fun e!831449 () SeekEntryResult!12235)

(declare-fun b!1482709 () Bool)

(assert (=> b!1482709 (= e!831449 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47972 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1482710 () Bool)

(assert (=> b!1482710 (= e!831448 e!831449)))

(declare-fun c!136948 () Bool)

(assert (=> b!1482710 (= c!136948 (or (= lt!647133 (select (arr!47972 a!2862) j!93)) (= (bvadd lt!647133 lt!647133) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1482711 () Bool)

(assert (=> b!1482711 (= e!831450 (bvsge (x!132913 lt!647132) #b01111111111111111111111111111110))))

(declare-fun b!1482712 () Bool)

(assert (=> b!1482712 (and (bvsge (index!51333 lt!647132) #b00000000000000000000000000000000) (bvslt (index!51333 lt!647132) (size!48523 a!2862)))))

(declare-fun res!1007862 () Bool)

(assert (=> b!1482712 (= res!1007862 (= (select (arr!47972 a!2862) (index!51333 lt!647132)) (select (arr!47972 a!2862) j!93)))))

(assert (=> b!1482712 (=> res!1007862 e!831452)))

(declare-fun e!831451 () Bool)

(assert (=> b!1482712 (= e!831451 e!831452)))

(declare-fun b!1482713 () Bool)

(assert (=> b!1482713 (= e!831449 (Intermediate!12235 false index!646 x!665))))

(declare-fun b!1482714 () Bool)

(assert (=> b!1482714 (and (bvsge (index!51333 lt!647132) #b00000000000000000000000000000000) (bvslt (index!51333 lt!647132) (size!48523 a!2862)))))

(declare-fun res!1007863 () Bool)

(assert (=> b!1482714 (= res!1007863 (= (select (arr!47972 a!2862) (index!51333 lt!647132)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482714 (=> res!1007863 e!831452)))

(declare-fun b!1482715 () Bool)

(assert (=> b!1482715 (= e!831450 e!831451)))

(declare-fun res!1007861 () Bool)

(assert (=> b!1482715 (= res!1007861 (and ((_ is Intermediate!12235) lt!647132) (not (undefined!13047 lt!647132)) (bvslt (x!132913 lt!647132) #b01111111111111111111111111111110) (bvsge (x!132913 lt!647132) #b00000000000000000000000000000000) (bvsge (x!132913 lt!647132) x!665)))))

(assert (=> b!1482715 (=> (not res!1007861) (not e!831451))))

(assert (= (and d!156263 c!136947) b!1482708))

(assert (= (and d!156263 (not c!136947)) b!1482710))

(assert (= (and b!1482710 c!136948) b!1482713))

(assert (= (and b!1482710 (not c!136948)) b!1482709))

(assert (= (and d!156263 c!136949) b!1482711))

(assert (= (and d!156263 (not c!136949)) b!1482715))

(assert (= (and b!1482715 res!1007861) b!1482712))

(assert (= (and b!1482712 (not res!1007862)) b!1482714))

(assert (= (and b!1482714 (not res!1007863)) b!1482707))

(assert (=> b!1482709 m!1368347))

(assert (=> b!1482709 m!1368347))

(assert (=> b!1482709 m!1368229))

(declare-fun m!1368435 () Bool)

(assert (=> b!1482709 m!1368435))

(declare-fun m!1368437 () Bool)

(assert (=> b!1482707 m!1368437))

(assert (=> d!156263 m!1368249))

(assert (=> d!156263 m!1368241))

(assert (=> b!1482714 m!1368437))

(assert (=> b!1482712 m!1368437))

(assert (=> b!1482464 d!156263))

(declare-fun b!1482716 () Bool)

(declare-fun e!831454 () Bool)

(declare-fun e!831453 () Bool)

(assert (=> b!1482716 (= e!831454 e!831453)))

(declare-fun c!136950 () Bool)

(assert (=> b!1482716 (= c!136950 (validKeyInArray!0 (select (arr!47972 a!2862) j!93)))))

(declare-fun d!156265 () Bool)

(declare-fun res!1007865 () Bool)

(assert (=> d!156265 (=> res!1007865 e!831454)))

(assert (=> d!156265 (= res!1007865 (bvsge j!93 (size!48523 a!2862)))))

(assert (=> d!156265 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!831454)))

(declare-fun b!1482717 () Bool)

(declare-fun e!831455 () Bool)

(declare-fun call!67861 () Bool)

(assert (=> b!1482717 (= e!831455 call!67861)))

(declare-fun b!1482718 () Bool)

(assert (=> b!1482718 (= e!831453 e!831455)))

(declare-fun lt!647136 () (_ BitVec 64))

(assert (=> b!1482718 (= lt!647136 (select (arr!47972 a!2862) j!93))))

(declare-fun lt!647134 () Unit!49758)

(assert (=> b!1482718 (= lt!647134 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!647136 j!93))))

(assert (=> b!1482718 (arrayContainsKey!0 a!2862 lt!647136 #b00000000000000000000000000000000)))

(declare-fun lt!647135 () Unit!49758)

(assert (=> b!1482718 (= lt!647135 lt!647134)))

(declare-fun res!1007864 () Bool)

(assert (=> b!1482718 (= res!1007864 (= (seekEntryOrOpen!0 (select (arr!47972 a!2862) j!93) a!2862 mask!2687) (Found!12235 j!93)))))

(assert (=> b!1482718 (=> (not res!1007864) (not e!831455))))

(declare-fun bm!67858 () Bool)

(assert (=> bm!67858 (= call!67861 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1482719 () Bool)

(assert (=> b!1482719 (= e!831453 call!67861)))

(assert (= (and d!156265 (not res!1007865)) b!1482716))

(assert (= (and b!1482716 c!136950) b!1482718))

(assert (= (and b!1482716 (not c!136950)) b!1482719))

(assert (= (and b!1482718 res!1007864) b!1482717))

(assert (= (or b!1482717 b!1482719) bm!67858))

(assert (=> b!1482716 m!1368229))

(assert (=> b!1482716 m!1368229))

(assert (=> b!1482716 m!1368231))

(assert (=> b!1482718 m!1368229))

(declare-fun m!1368439 () Bool)

(assert (=> b!1482718 m!1368439))

(declare-fun m!1368441 () Bool)

(assert (=> b!1482718 m!1368441))

(assert (=> b!1482718 m!1368229))

(assert (=> b!1482718 m!1368273))

(declare-fun m!1368443 () Bool)

(assert (=> bm!67858 m!1368443))

(assert (=> b!1482462 d!156265))

(declare-fun d!156267 () Bool)

(assert (=> d!156267 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!647145 () Unit!49758)

(declare-fun choose!38 (array!99398 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49758)

(assert (=> d!156267 (= lt!647145 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156267 (validMask!0 mask!2687)))

(assert (=> d!156267 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!647145)))

(declare-fun bs!42704 () Bool)

(assert (= bs!42704 d!156267))

(assert (=> bs!42704 m!1368251))

(declare-fun m!1368445 () Bool)

(assert (=> bs!42704 m!1368445))

(assert (=> bs!42704 m!1368241))

(assert (=> b!1482462 d!156267))

(assert (=> b!1482463 d!156253))

(assert (=> b!1482463 d!156249))

(check-sat (not d!156225) (not d!156231) (not bm!67856) (not b!1482686) (not b!1482537) (not b!1482621) (not b!1482559) (not b!1482709) (not b!1482676) (not b!1482624) (not bm!67851) (not d!156263) (not b!1482595) (not b!1482568) (not b!1482716) (not b!1482535) (not b!1482620) (not b!1482590) (not d!156253) (not d!156237) (not d!156267) (not bm!67858) (not d!156249) (not b!1482718) (not d!156229))
(check-sat)
