; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124828 () Bool)

(assert start!124828)

(declare-fun b!1447543 () Bool)

(declare-fun res!979296 () Bool)

(declare-fun e!815271 () Bool)

(assert (=> b!1447543 (=> (not res!979296) (not e!815271))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1447543 (= res!979296 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447544 () Bool)

(declare-fun e!815272 () Bool)

(declare-fun e!815276 () Bool)

(assert (=> b!1447544 (= e!815272 e!815276)))

(declare-fun res!979298 () Bool)

(assert (=> b!1447544 (=> (not res!979298) (not e!815276))))

(declare-datatypes ((SeekEntryResult!11655 0))(
  ( (MissingZero!11655 (index!49011 (_ BitVec 32))) (Found!11655 (index!49012 (_ BitVec 32))) (Intermediate!11655 (undefined!12467 Bool) (index!49013 (_ BitVec 32)) (x!130691 (_ BitVec 32))) (Undefined!11655) (MissingVacant!11655 (index!49014 (_ BitVec 32))) )
))
(declare-fun lt!635170 () SeekEntryResult!11655)

(declare-datatypes ((array!98193 0))(
  ( (array!98194 (arr!47380 (Array (_ BitVec 32) (_ BitVec 64))) (size!47931 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98193)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98193 (_ BitVec 32)) SeekEntryResult!11655)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447544 (= res!979298 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47380 a!2862) j!93) mask!2687) (select (arr!47380 a!2862) j!93) a!2862 mask!2687) lt!635170))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1447544 (= lt!635170 (Intermediate!11655 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1447545 () Bool)

(declare-fun res!979284 () Bool)

(declare-fun e!815267 () Bool)

(assert (=> b!1447545 (=> (not res!979284) (not e!815267))))

(declare-datatypes ((List!34061 0))(
  ( (Nil!34058) (Cons!34057 (h!35407 (_ BitVec 64)) (t!48762 List!34061)) )
))
(declare-fun arrayNoDuplicates!0 (array!98193 (_ BitVec 32) List!34061) Bool)

(assert (=> b!1447545 (= res!979284 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34058))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1447546 () Bool)

(declare-fun e!815274 () Bool)

(assert (=> b!1447546 (= e!815274 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447547 () Bool)

(declare-fun res!979291 () Bool)

(assert (=> b!1447547 (=> (not res!979291) (not e!815267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447547 (= res!979291 (validKeyInArray!0 (select (arr!47380 a!2862) i!1006)))))

(declare-fun b!1447548 () Bool)

(declare-fun res!979286 () Bool)

(assert (=> b!1447548 (=> (not res!979286) (not e!815267))))

(assert (=> b!1447548 (= res!979286 (validKeyInArray!0 (select (arr!47380 a!2862) j!93)))))

(declare-fun b!1447549 () Bool)

(declare-fun res!979285 () Bool)

(assert (=> b!1447549 (=> (not res!979285) (not e!815267))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1447549 (= res!979285 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47931 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47931 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47931 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447551 () Bool)

(declare-fun e!815268 () Bool)

(assert (=> b!1447551 (= e!815268 e!815274)))

(declare-fun res!979297 () Bool)

(assert (=> b!1447551 (=> (not res!979297) (not e!815274))))

(declare-fun lt!635175 () SeekEntryResult!11655)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98193 (_ BitVec 32)) SeekEntryResult!11655)

(assert (=> b!1447551 (= res!979297 (= lt!635175 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47380 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1447552 () Bool)

(declare-fun res!979287 () Bool)

(assert (=> b!1447552 (=> (not res!979287) (not e!815267))))

(assert (=> b!1447552 (= res!979287 (and (= (size!47931 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47931 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47931 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1447553 () Bool)

(declare-fun res!979289 () Bool)

(assert (=> b!1447553 (=> (not res!979289) (not e!815271))))

(declare-fun e!815273 () Bool)

(assert (=> b!1447553 (= res!979289 e!815273)))

(declare-fun c!133643 () Bool)

(assert (=> b!1447553 (= c!133643 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1447554 () Bool)

(assert (=> b!1447554 (= e!815276 e!815271)))

(declare-fun res!979293 () Bool)

(assert (=> b!1447554 (=> (not res!979293) (not e!815271))))

(declare-fun lt!635173 () SeekEntryResult!11655)

(assert (=> b!1447554 (= res!979293 (= lt!635173 (Intermediate!11655 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635171 () array!98193)

(declare-fun lt!635172 () (_ BitVec 64))

(assert (=> b!1447554 (= lt!635173 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635172 mask!2687) lt!635172 lt!635171 mask!2687))))

(assert (=> b!1447554 (= lt!635172 (select (store (arr!47380 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1447555 () Bool)

(declare-fun res!979290 () Bool)

(assert (=> b!1447555 (=> (not res!979290) (not e!815276))))

(assert (=> b!1447555 (= res!979290 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47380 a!2862) j!93) a!2862 mask!2687) lt!635170))))

(declare-fun b!1447556 () Bool)

(assert (=> b!1447556 (= e!815273 (= lt!635173 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635172 lt!635171 mask!2687)))))

(declare-fun b!1447557 () Bool)

(declare-fun e!815269 () Bool)

(assert (=> b!1447557 (= e!815271 (not e!815269))))

(declare-fun res!979283 () Bool)

(assert (=> b!1447557 (=> res!979283 e!815269)))

(assert (=> b!1447557 (= res!979283 (or (and (= (select (arr!47380 a!2862) index!646) (select (store (arr!47380 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47380 a!2862) index!646) (select (arr!47380 a!2862) j!93))) (not (= (select (arr!47380 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47380 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815270 () Bool)

(assert (=> b!1447557 e!815270))

(declare-fun res!979288 () Bool)

(assert (=> b!1447557 (=> (not res!979288) (not e!815270))))

(assert (=> b!1447557 (= res!979288 (and (= lt!635175 (Found!11655 j!93)) (or (= (select (arr!47380 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47380 a!2862) intermediateBeforeIndex!19) (select (arr!47380 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98193 (_ BitVec 32)) SeekEntryResult!11655)

(assert (=> b!1447557 (= lt!635175 (seekEntryOrOpen!0 (select (arr!47380 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98193 (_ BitVec 32)) Bool)

(assert (=> b!1447557 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48754 0))(
  ( (Unit!48755) )
))
(declare-fun lt!635174 () Unit!48754)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98193 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48754)

(assert (=> b!1447557 (= lt!635174 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447558 () Bool)

(assert (=> b!1447558 (= e!815273 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635172 lt!635171 mask!2687) (seekEntryOrOpen!0 lt!635172 lt!635171 mask!2687)))))

(declare-fun b!1447550 () Bool)

(assert (=> b!1447550 (= e!815267 e!815272)))

(declare-fun res!979295 () Bool)

(assert (=> b!1447550 (=> (not res!979295) (not e!815272))))

(assert (=> b!1447550 (= res!979295 (= (select (store (arr!47380 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447550 (= lt!635171 (array!98194 (store (arr!47380 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47931 a!2862)))))

(declare-fun res!979299 () Bool)

(assert (=> start!124828 (=> (not res!979299) (not e!815267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124828 (= res!979299 (validMask!0 mask!2687))))

(assert (=> start!124828 e!815267))

(assert (=> start!124828 true))

(declare-fun array_inv!36325 (array!98193) Bool)

(assert (=> start!124828 (array_inv!36325 a!2862)))

(declare-fun b!1447559 () Bool)

(assert (=> b!1447559 (= e!815270 e!815268)))

(declare-fun res!979294 () Bool)

(assert (=> b!1447559 (=> res!979294 e!815268)))

(assert (=> b!1447559 (= res!979294 (or (and (= (select (arr!47380 a!2862) index!646) (select (store (arr!47380 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47380 a!2862) index!646) (select (arr!47380 a!2862) j!93))) (not (= (select (arr!47380 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447560 () Bool)

(assert (=> b!1447560 (= e!815269 true)))

(declare-fun lt!635176 () SeekEntryResult!11655)

(assert (=> b!1447560 (= lt!635176 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47380 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1447561 () Bool)

(declare-fun res!979292 () Bool)

(assert (=> b!1447561 (=> (not res!979292) (not e!815267))))

(assert (=> b!1447561 (= res!979292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124828 res!979299) b!1447552))

(assert (= (and b!1447552 res!979287) b!1447547))

(assert (= (and b!1447547 res!979291) b!1447548))

(assert (= (and b!1447548 res!979286) b!1447561))

(assert (= (and b!1447561 res!979292) b!1447545))

(assert (= (and b!1447545 res!979284) b!1447549))

(assert (= (and b!1447549 res!979285) b!1447550))

(assert (= (and b!1447550 res!979295) b!1447544))

(assert (= (and b!1447544 res!979298) b!1447555))

(assert (= (and b!1447555 res!979290) b!1447554))

(assert (= (and b!1447554 res!979293) b!1447553))

(assert (= (and b!1447553 c!133643) b!1447556))

(assert (= (and b!1447553 (not c!133643)) b!1447558))

(assert (= (and b!1447553 res!979289) b!1447543))

(assert (= (and b!1447543 res!979296) b!1447557))

(assert (= (and b!1447557 res!979288) b!1447559))

(assert (= (and b!1447559 (not res!979294)) b!1447551))

(assert (= (and b!1447551 res!979297) b!1447546))

(assert (= (and b!1447557 (not res!979283)) b!1447560))

(declare-fun m!1336407 () Bool)

(assert (=> b!1447558 m!1336407))

(declare-fun m!1336409 () Bool)

(assert (=> b!1447558 m!1336409))

(declare-fun m!1336411 () Bool)

(assert (=> b!1447550 m!1336411))

(declare-fun m!1336413 () Bool)

(assert (=> b!1447550 m!1336413))

(declare-fun m!1336415 () Bool)

(assert (=> b!1447560 m!1336415))

(assert (=> b!1447560 m!1336415))

(declare-fun m!1336417 () Bool)

(assert (=> b!1447560 m!1336417))

(declare-fun m!1336419 () Bool)

(assert (=> start!124828 m!1336419))

(declare-fun m!1336421 () Bool)

(assert (=> start!124828 m!1336421))

(assert (=> b!1447555 m!1336415))

(assert (=> b!1447555 m!1336415))

(declare-fun m!1336423 () Bool)

(assert (=> b!1447555 m!1336423))

(declare-fun m!1336425 () Bool)

(assert (=> b!1447554 m!1336425))

(assert (=> b!1447554 m!1336425))

(declare-fun m!1336427 () Bool)

(assert (=> b!1447554 m!1336427))

(assert (=> b!1447554 m!1336411))

(declare-fun m!1336429 () Bool)

(assert (=> b!1447554 m!1336429))

(assert (=> b!1447551 m!1336415))

(assert (=> b!1447551 m!1336415))

(declare-fun m!1336431 () Bool)

(assert (=> b!1447551 m!1336431))

(declare-fun m!1336433 () Bool)

(assert (=> b!1447556 m!1336433))

(declare-fun m!1336435 () Bool)

(assert (=> b!1447557 m!1336435))

(assert (=> b!1447557 m!1336411))

(declare-fun m!1336437 () Bool)

(assert (=> b!1447557 m!1336437))

(declare-fun m!1336439 () Bool)

(assert (=> b!1447557 m!1336439))

(declare-fun m!1336441 () Bool)

(assert (=> b!1447557 m!1336441))

(assert (=> b!1447557 m!1336415))

(declare-fun m!1336443 () Bool)

(assert (=> b!1447557 m!1336443))

(declare-fun m!1336445 () Bool)

(assert (=> b!1447557 m!1336445))

(assert (=> b!1447557 m!1336415))

(assert (=> b!1447548 m!1336415))

(assert (=> b!1447548 m!1336415))

(declare-fun m!1336447 () Bool)

(assert (=> b!1447548 m!1336447))

(declare-fun m!1336449 () Bool)

(assert (=> b!1447545 m!1336449))

(declare-fun m!1336451 () Bool)

(assert (=> b!1447561 m!1336451))

(assert (=> b!1447544 m!1336415))

(assert (=> b!1447544 m!1336415))

(declare-fun m!1336453 () Bool)

(assert (=> b!1447544 m!1336453))

(assert (=> b!1447544 m!1336453))

(assert (=> b!1447544 m!1336415))

(declare-fun m!1336455 () Bool)

(assert (=> b!1447544 m!1336455))

(declare-fun m!1336457 () Bool)

(assert (=> b!1447547 m!1336457))

(assert (=> b!1447547 m!1336457))

(declare-fun m!1336459 () Bool)

(assert (=> b!1447547 m!1336459))

(assert (=> b!1447559 m!1336441))

(assert (=> b!1447559 m!1336411))

(assert (=> b!1447559 m!1336439))

(assert (=> b!1447559 m!1336415))

(push 1)

