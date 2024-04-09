; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125402 () Bool)

(assert start!125402)

(declare-fun b!1465267 () Bool)

(declare-fun res!994279 () Bool)

(declare-fun e!823380 () Bool)

(assert (=> b!1465267 (=> (not res!994279) (not e!823380))))

(declare-datatypes ((array!98767 0))(
  ( (array!98768 (arr!47667 (Array (_ BitVec 32) (_ BitVec 64))) (size!48218 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98767)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465267 (= res!994279 (validKeyInArray!0 (select (arr!47667 a!2862) j!93)))))

(declare-fun b!1465268 () Bool)

(declare-fun e!823375 () Bool)

(declare-fun e!823374 () Bool)

(assert (=> b!1465268 (= e!823375 e!823374)))

(declare-fun res!994294 () Bool)

(assert (=> b!1465268 (=> (not res!994294) (not e!823374))))

(declare-datatypes ((SeekEntryResult!11942 0))(
  ( (MissingZero!11942 (index!50159 (_ BitVec 32))) (Found!11942 (index!50160 (_ BitVec 32))) (Intermediate!11942 (undefined!12754 Bool) (index!50161 (_ BitVec 32)) (x!131738 (_ BitVec 32))) (Undefined!11942) (MissingVacant!11942 (index!50162 (_ BitVec 32))) )
))
(declare-fun lt!641316 () SeekEntryResult!11942)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98767 (_ BitVec 32)) SeekEntryResult!11942)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465268 (= res!994294 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47667 a!2862) j!93) mask!2687) (select (arr!47667 a!2862) j!93) a!2862 mask!2687) lt!641316))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1465268 (= lt!641316 (Intermediate!11942 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1465269 () Bool)

(declare-fun e!823377 () Bool)

(assert (=> b!1465269 (= e!823377 true)))

(declare-fun lt!641320 () Bool)

(declare-fun e!823382 () Bool)

(assert (=> b!1465269 (= lt!641320 e!823382)))

(declare-fun c!135008 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1465269 (= c!135008 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun lt!641319 () array!98767)

(declare-fun b!1465270 () Bool)

(declare-fun lt!641315 () SeekEntryResult!11942)

(declare-fun lt!641317 () (_ BitVec 64))

(declare-fun e!823381 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1465270 (= e!823381 (= lt!641315 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641317 lt!641319 mask!2687)))))

(declare-fun res!994286 () Bool)

(assert (=> start!125402 (=> (not res!994286) (not e!823380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125402 (= res!994286 (validMask!0 mask!2687))))

(assert (=> start!125402 e!823380))

(assert (=> start!125402 true))

(declare-fun array_inv!36612 (array!98767) Bool)

(assert (=> start!125402 (array_inv!36612 a!2862)))

(declare-fun b!1465271 () Bool)

(assert (=> b!1465271 (= e!823380 e!823375)))

(declare-fun res!994295 () Bool)

(assert (=> b!1465271 (=> (not res!994295) (not e!823375))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1465271 (= res!994295 (= (select (store (arr!47667 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1465271 (= lt!641319 (array!98768 (store (arr!47667 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48218 a!2862)))))

(declare-fun b!1465272 () Bool)

(declare-fun res!994289 () Bool)

(assert (=> b!1465272 (=> (not res!994289) (not e!823380))))

(assert (=> b!1465272 (= res!994289 (validKeyInArray!0 (select (arr!47667 a!2862) i!1006)))))

(declare-fun b!1465273 () Bool)

(declare-fun e!823373 () Bool)

(assert (=> b!1465273 (= e!823373 e!823377)))

(declare-fun res!994287 () Bool)

(assert (=> b!1465273 (=> res!994287 e!823377)))

(declare-fun lt!641318 () (_ BitVec 32))

(assert (=> b!1465273 (= res!994287 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641318 #b00000000000000000000000000000000) (bvsge lt!641318 (size!48218 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465273 (= lt!641318 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1465274 () Bool)

(declare-fun res!994284 () Bool)

(assert (=> b!1465274 (=> (not res!994284) (not e!823380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98767 (_ BitVec 32)) Bool)

(assert (=> b!1465274 (= res!994284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465275 () Bool)

(declare-fun res!994292 () Bool)

(declare-fun e!823376 () Bool)

(assert (=> b!1465275 (=> (not res!994292) (not e!823376))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98767 (_ BitVec 32)) SeekEntryResult!11942)

(assert (=> b!1465275 (= res!994292 (= (seekEntryOrOpen!0 (select (arr!47667 a!2862) j!93) a!2862 mask!2687) (Found!11942 j!93)))))

(declare-fun b!1465276 () Bool)

(declare-fun res!994296 () Bool)

(assert (=> b!1465276 (=> res!994296 e!823377)))

(assert (=> b!1465276 (= res!994296 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641318 (select (arr!47667 a!2862) j!93) a!2862 mask!2687) lt!641316)))))

(declare-fun b!1465277 () Bool)

(declare-fun res!994293 () Bool)

(assert (=> b!1465277 (=> (not res!994293) (not e!823380))))

(assert (=> b!1465277 (= res!994293 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48218 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48218 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48218 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465278 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98767 (_ BitVec 32)) SeekEntryResult!11942)

(assert (=> b!1465278 (= e!823382 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641318 intermediateAfterIndex!19 lt!641317 lt!641319 mask!2687) (seekEntryOrOpen!0 lt!641317 lt!641319 mask!2687))))))

(declare-fun b!1465279 () Bool)

(declare-fun res!994290 () Bool)

(assert (=> b!1465279 (=> (not res!994290) (not e!823374))))

(assert (=> b!1465279 (= res!994290 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47667 a!2862) j!93) a!2862 mask!2687) lt!641316))))

(declare-fun b!1465280 () Bool)

(declare-fun e!823379 () Bool)

(assert (=> b!1465280 (= e!823379 (not e!823373))))

(declare-fun res!994282 () Bool)

(assert (=> b!1465280 (=> res!994282 e!823373)))

(assert (=> b!1465280 (= res!994282 (or (and (= (select (arr!47667 a!2862) index!646) (select (store (arr!47667 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47667 a!2862) index!646) (select (arr!47667 a!2862) j!93))) (= (select (arr!47667 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1465280 e!823376))

(declare-fun res!994285 () Bool)

(assert (=> b!1465280 (=> (not res!994285) (not e!823376))))

(assert (=> b!1465280 (= res!994285 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49328 0))(
  ( (Unit!49329) )
))
(declare-fun lt!641314 () Unit!49328)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98767 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49328)

(assert (=> b!1465280 (= lt!641314 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1465281 () Bool)

(assert (=> b!1465281 (= e!823376 (or (= (select (arr!47667 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47667 a!2862) intermediateBeforeIndex!19) (select (arr!47667 a!2862) j!93))))))

(declare-fun b!1465282 () Bool)

(assert (=> b!1465282 (= e!823381 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641317 lt!641319 mask!2687) (seekEntryOrOpen!0 lt!641317 lt!641319 mask!2687)))))

(declare-fun b!1465283 () Bool)

(declare-fun res!994291 () Bool)

(assert (=> b!1465283 (=> (not res!994291) (not e!823379))))

(assert (=> b!1465283 (= res!994291 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465284 () Bool)

(declare-fun res!994280 () Bool)

(assert (=> b!1465284 (=> (not res!994280) (not e!823380))))

(assert (=> b!1465284 (= res!994280 (and (= (size!48218 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48218 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48218 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1465285 () Bool)

(assert (=> b!1465285 (= e!823382 (not (= lt!641315 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641318 lt!641317 lt!641319 mask!2687))))))

(declare-fun b!1465286 () Bool)

(declare-fun res!994283 () Bool)

(assert (=> b!1465286 (=> (not res!994283) (not e!823379))))

(assert (=> b!1465286 (= res!994283 e!823381)))

(declare-fun c!135007 () Bool)

(assert (=> b!1465286 (= c!135007 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1465287 () Bool)

(declare-fun res!994281 () Bool)

(assert (=> b!1465287 (=> (not res!994281) (not e!823380))))

(declare-datatypes ((List!34348 0))(
  ( (Nil!34345) (Cons!34344 (h!35694 (_ BitVec 64)) (t!49049 List!34348)) )
))
(declare-fun arrayNoDuplicates!0 (array!98767 (_ BitVec 32) List!34348) Bool)

(assert (=> b!1465287 (= res!994281 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34345))))

(declare-fun b!1465288 () Bool)

(assert (=> b!1465288 (= e!823374 e!823379)))

(declare-fun res!994288 () Bool)

(assert (=> b!1465288 (=> (not res!994288) (not e!823379))))

(assert (=> b!1465288 (= res!994288 (= lt!641315 (Intermediate!11942 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1465288 (= lt!641315 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641317 mask!2687) lt!641317 lt!641319 mask!2687))))

(assert (=> b!1465288 (= lt!641317 (select (store (arr!47667 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125402 res!994286) b!1465284))

(assert (= (and b!1465284 res!994280) b!1465272))

(assert (= (and b!1465272 res!994289) b!1465267))

(assert (= (and b!1465267 res!994279) b!1465274))

(assert (= (and b!1465274 res!994284) b!1465287))

(assert (= (and b!1465287 res!994281) b!1465277))

(assert (= (and b!1465277 res!994293) b!1465271))

(assert (= (and b!1465271 res!994295) b!1465268))

(assert (= (and b!1465268 res!994294) b!1465279))

(assert (= (and b!1465279 res!994290) b!1465288))

(assert (= (and b!1465288 res!994288) b!1465286))

(assert (= (and b!1465286 c!135007) b!1465270))

(assert (= (and b!1465286 (not c!135007)) b!1465282))

(assert (= (and b!1465286 res!994283) b!1465283))

(assert (= (and b!1465283 res!994291) b!1465280))

(assert (= (and b!1465280 res!994285) b!1465275))

(assert (= (and b!1465275 res!994292) b!1465281))

(assert (= (and b!1465280 (not res!994282)) b!1465273))

(assert (= (and b!1465273 (not res!994287)) b!1465276))

(assert (= (and b!1465276 (not res!994296)) b!1465269))

(assert (= (and b!1465269 c!135008) b!1465285))

(assert (= (and b!1465269 (not c!135008)) b!1465278))

(declare-fun m!1352429 () Bool)

(assert (=> b!1465285 m!1352429))

(declare-fun m!1352431 () Bool)

(assert (=> b!1465278 m!1352431))

(declare-fun m!1352433 () Bool)

(assert (=> b!1465278 m!1352433))

(declare-fun m!1352435 () Bool)

(assert (=> b!1465280 m!1352435))

(declare-fun m!1352437 () Bool)

(assert (=> b!1465280 m!1352437))

(declare-fun m!1352439 () Bool)

(assert (=> b!1465280 m!1352439))

(declare-fun m!1352441 () Bool)

(assert (=> b!1465280 m!1352441))

(declare-fun m!1352443 () Bool)

(assert (=> b!1465280 m!1352443))

(declare-fun m!1352445 () Bool)

(assert (=> b!1465280 m!1352445))

(assert (=> b!1465279 m!1352445))

(assert (=> b!1465279 m!1352445))

(declare-fun m!1352447 () Bool)

(assert (=> b!1465279 m!1352447))

(declare-fun m!1352449 () Bool)

(assert (=> b!1465270 m!1352449))

(assert (=> b!1465275 m!1352445))

(assert (=> b!1465275 m!1352445))

(declare-fun m!1352451 () Bool)

(assert (=> b!1465275 m!1352451))

(declare-fun m!1352453 () Bool)

(assert (=> b!1465282 m!1352453))

(assert (=> b!1465282 m!1352433))

(declare-fun m!1352455 () Bool)

(assert (=> b!1465272 m!1352455))

(assert (=> b!1465272 m!1352455))

(declare-fun m!1352457 () Bool)

(assert (=> b!1465272 m!1352457))

(assert (=> b!1465268 m!1352445))

(assert (=> b!1465268 m!1352445))

(declare-fun m!1352459 () Bool)

(assert (=> b!1465268 m!1352459))

(assert (=> b!1465268 m!1352459))

(assert (=> b!1465268 m!1352445))

(declare-fun m!1352461 () Bool)

(assert (=> b!1465268 m!1352461))

(declare-fun m!1352463 () Bool)

(assert (=> b!1465287 m!1352463))

(declare-fun m!1352465 () Bool)

(assert (=> start!125402 m!1352465))

(declare-fun m!1352467 () Bool)

(assert (=> start!125402 m!1352467))

(assert (=> b!1465276 m!1352445))

(assert (=> b!1465276 m!1352445))

(declare-fun m!1352469 () Bool)

(assert (=> b!1465276 m!1352469))

(declare-fun m!1352471 () Bool)

(assert (=> b!1465281 m!1352471))

(assert (=> b!1465281 m!1352445))

(assert (=> b!1465267 m!1352445))

(assert (=> b!1465267 m!1352445))

(declare-fun m!1352473 () Bool)

(assert (=> b!1465267 m!1352473))

(assert (=> b!1465271 m!1352437))

(declare-fun m!1352475 () Bool)

(assert (=> b!1465271 m!1352475))

(declare-fun m!1352477 () Bool)

(assert (=> b!1465273 m!1352477))

(declare-fun m!1352479 () Bool)

(assert (=> b!1465288 m!1352479))

(assert (=> b!1465288 m!1352479))

(declare-fun m!1352481 () Bool)

(assert (=> b!1465288 m!1352481))

(assert (=> b!1465288 m!1352437))

(declare-fun m!1352483 () Bool)

(assert (=> b!1465288 m!1352483))

(declare-fun m!1352485 () Bool)

(assert (=> b!1465274 m!1352485))

(push 1)

