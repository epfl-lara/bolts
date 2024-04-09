; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126246 () Bool)

(assert start!126246)

(declare-fun b!1478402 () Bool)

(declare-fun res!1004532 () Bool)

(declare-fun e!829354 () Bool)

(assert (=> b!1478402 (=> (not res!1004532) (not e!829354))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99269 0))(
  ( (array!99270 (arr!47909 (Array (_ BitVec 32) (_ BitVec 64))) (size!48460 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99269)

(assert (=> b!1478402 (= res!1004532 (and (= (size!48460 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48460 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48460 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!645638 () (_ BitVec 64))

(declare-fun e!829358 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1478403 () Bool)

(declare-fun lt!645639 () array!99269)

(declare-datatypes ((SeekEntryResult!12172 0))(
  ( (MissingZero!12172 (index!51079 (_ BitVec 32))) (Found!12172 (index!51080 (_ BitVec 32))) (Intermediate!12172 (undefined!12984 Bool) (index!51081 (_ BitVec 32)) (x!132670 (_ BitVec 32))) (Undefined!12172) (MissingVacant!12172 (index!51082 (_ BitVec 32))) )
))
(declare-fun lt!645640 () SeekEntryResult!12172)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99269 (_ BitVec 32)) SeekEntryResult!12172)

(assert (=> b!1478403 (= e!829358 (= lt!645640 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645638 lt!645639 mask!2687)))))

(declare-fun b!1478404 () Bool)

(declare-fun res!1004524 () Bool)

(assert (=> b!1478404 (=> (not res!1004524) (not e!829354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99269 (_ BitVec 32)) Bool)

(assert (=> b!1478404 (= res!1004524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1004523 () Bool)

(assert (=> start!126246 (=> (not res!1004523) (not e!829354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126246 (= res!1004523 (validMask!0 mask!2687))))

(assert (=> start!126246 e!829354))

(assert (=> start!126246 true))

(declare-fun array_inv!36854 (array!99269) Bool)

(assert (=> start!126246 (array_inv!36854 a!2862)))

(declare-fun b!1478405 () Bool)

(declare-fun res!1004530 () Bool)

(assert (=> b!1478405 (=> (not res!1004530) (not e!829354))))

(declare-datatypes ((List!34590 0))(
  ( (Nil!34587) (Cons!34586 (h!35954 (_ BitVec 64)) (t!49291 List!34590)) )
))
(declare-fun arrayNoDuplicates!0 (array!99269 (_ BitVec 32) List!34590) Bool)

(assert (=> b!1478405 (= res!1004530 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34587))))

(declare-fun b!1478406 () Bool)

(declare-fun e!829350 () Bool)

(declare-fun e!829355 () Bool)

(assert (=> b!1478406 (= e!829350 e!829355)))

(declare-fun res!1004535 () Bool)

(assert (=> b!1478406 (=> (not res!1004535) (not e!829355))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478406 (= res!1004535 (= lt!645640 (Intermediate!12172 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478406 (= lt!645640 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645638 mask!2687) lt!645638 lt!645639 mask!2687))))

(assert (=> b!1478406 (= lt!645638 (select (store (arr!47909 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478407 () Bool)

(declare-fun res!1004527 () Bool)

(assert (=> b!1478407 (=> (not res!1004527) (not e!829355))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1478407 (= res!1004527 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478408 () Bool)

(declare-fun e!829356 () Bool)

(assert (=> b!1478408 (= e!829356 e!829350)))

(declare-fun res!1004521 () Bool)

(assert (=> b!1478408 (=> (not res!1004521) (not e!829350))))

(declare-fun lt!645636 () SeekEntryResult!12172)

(assert (=> b!1478408 (= res!1004521 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47909 a!2862) j!93) mask!2687) (select (arr!47909 a!2862) j!93) a!2862 mask!2687) lt!645636))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1478408 (= lt!645636 (Intermediate!12172 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478409 () Bool)

(declare-fun e!829353 () Bool)

(assert (=> b!1478409 (= e!829353 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1478410 () Bool)

(assert (=> b!1478410 (= e!829355 (not true))))

(declare-fun e!829351 () Bool)

(assert (=> b!1478410 e!829351))

(declare-fun res!1004531 () Bool)

(assert (=> b!1478410 (=> (not res!1004531) (not e!829351))))

(declare-fun lt!645637 () SeekEntryResult!12172)

(assert (=> b!1478410 (= res!1004531 (and (= lt!645637 (Found!12172 j!93)) (or (= (select (arr!47909 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47909 a!2862) intermediateBeforeIndex!19) (select (arr!47909 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99269 (_ BitVec 32)) SeekEntryResult!12172)

(assert (=> b!1478410 (= lt!645637 (seekEntryOrOpen!0 (select (arr!47909 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1478410 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49632 0))(
  ( (Unit!49633) )
))
(declare-fun lt!645635 () Unit!49632)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99269 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49632)

(assert (=> b!1478410 (= lt!645635 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478411 () Bool)

(declare-fun res!1004520 () Bool)

(assert (=> b!1478411 (=> (not res!1004520) (not e!829350))))

(assert (=> b!1478411 (= res!1004520 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47909 a!2862) j!93) a!2862 mask!2687) lt!645636))))

(declare-fun b!1478412 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99269 (_ BitVec 32)) SeekEntryResult!12172)

(assert (=> b!1478412 (= e!829358 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645638 lt!645639 mask!2687) (seekEntryOrOpen!0 lt!645638 lt!645639 mask!2687)))))

(declare-fun b!1478413 () Bool)

(declare-fun res!1004525 () Bool)

(assert (=> b!1478413 (=> (not res!1004525) (not e!829354))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478413 (= res!1004525 (validKeyInArray!0 (select (arr!47909 a!2862) i!1006)))))

(declare-fun b!1478414 () Bool)

(declare-fun e!829357 () Bool)

(assert (=> b!1478414 (= e!829357 e!829353)))

(declare-fun res!1004528 () Bool)

(assert (=> b!1478414 (=> (not res!1004528) (not e!829353))))

(assert (=> b!1478414 (= res!1004528 (= lt!645637 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47909 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1478415 () Bool)

(declare-fun res!1004534 () Bool)

(assert (=> b!1478415 (=> (not res!1004534) (not e!829354))))

(assert (=> b!1478415 (= res!1004534 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48460 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48460 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48460 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478416 () Bool)

(declare-fun res!1004522 () Bool)

(assert (=> b!1478416 (=> (not res!1004522) (not e!829355))))

(assert (=> b!1478416 (= res!1004522 e!829358)))

(declare-fun c!136463 () Bool)

(assert (=> b!1478416 (= c!136463 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1478417 () Bool)

(assert (=> b!1478417 (= e!829354 e!829356)))

(declare-fun res!1004529 () Bool)

(assert (=> b!1478417 (=> (not res!1004529) (not e!829356))))

(assert (=> b!1478417 (= res!1004529 (= (select (store (arr!47909 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478417 (= lt!645639 (array!99270 (store (arr!47909 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48460 a!2862)))))

(declare-fun b!1478418 () Bool)

(declare-fun res!1004526 () Bool)

(assert (=> b!1478418 (=> (not res!1004526) (not e!829354))))

(assert (=> b!1478418 (= res!1004526 (validKeyInArray!0 (select (arr!47909 a!2862) j!93)))))

(declare-fun b!1478419 () Bool)

(assert (=> b!1478419 (= e!829351 e!829357)))

(declare-fun res!1004533 () Bool)

(assert (=> b!1478419 (=> res!1004533 e!829357)))

(assert (=> b!1478419 (= res!1004533 (or (and (= (select (arr!47909 a!2862) index!646) (select (store (arr!47909 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47909 a!2862) index!646) (select (arr!47909 a!2862) j!93))) (not (= (select (arr!47909 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!126246 res!1004523) b!1478402))

(assert (= (and b!1478402 res!1004532) b!1478413))

(assert (= (and b!1478413 res!1004525) b!1478418))

(assert (= (and b!1478418 res!1004526) b!1478404))

(assert (= (and b!1478404 res!1004524) b!1478405))

(assert (= (and b!1478405 res!1004530) b!1478415))

(assert (= (and b!1478415 res!1004534) b!1478417))

(assert (= (and b!1478417 res!1004529) b!1478408))

(assert (= (and b!1478408 res!1004521) b!1478411))

(assert (= (and b!1478411 res!1004520) b!1478406))

(assert (= (and b!1478406 res!1004535) b!1478416))

(assert (= (and b!1478416 c!136463) b!1478403))

(assert (= (and b!1478416 (not c!136463)) b!1478412))

(assert (= (and b!1478416 res!1004522) b!1478407))

(assert (= (and b!1478407 res!1004527) b!1478410))

(assert (= (and b!1478410 res!1004531) b!1478419))

(assert (= (and b!1478419 (not res!1004533)) b!1478414))

(assert (= (and b!1478414 res!1004528) b!1478409))

(declare-fun m!1364371 () Bool)

(assert (=> b!1478405 m!1364371))

(declare-fun m!1364373 () Bool)

(assert (=> b!1478406 m!1364373))

(assert (=> b!1478406 m!1364373))

(declare-fun m!1364375 () Bool)

(assert (=> b!1478406 m!1364375))

(declare-fun m!1364377 () Bool)

(assert (=> b!1478406 m!1364377))

(declare-fun m!1364379 () Bool)

(assert (=> b!1478406 m!1364379))

(declare-fun m!1364381 () Bool)

(assert (=> b!1478413 m!1364381))

(assert (=> b!1478413 m!1364381))

(declare-fun m!1364383 () Bool)

(assert (=> b!1478413 m!1364383))

(declare-fun m!1364385 () Bool)

(assert (=> b!1478404 m!1364385))

(assert (=> b!1478417 m!1364377))

(declare-fun m!1364387 () Bool)

(assert (=> b!1478417 m!1364387))

(declare-fun m!1364389 () Bool)

(assert (=> b!1478412 m!1364389))

(declare-fun m!1364391 () Bool)

(assert (=> b!1478412 m!1364391))

(declare-fun m!1364393 () Bool)

(assert (=> b!1478403 m!1364393))

(declare-fun m!1364395 () Bool)

(assert (=> b!1478410 m!1364395))

(declare-fun m!1364397 () Bool)

(assert (=> b!1478410 m!1364397))

(declare-fun m!1364399 () Bool)

(assert (=> b!1478410 m!1364399))

(declare-fun m!1364401 () Bool)

(assert (=> b!1478410 m!1364401))

(declare-fun m!1364403 () Bool)

(assert (=> b!1478410 m!1364403))

(assert (=> b!1478410 m!1364399))

(assert (=> b!1478418 m!1364399))

(assert (=> b!1478418 m!1364399))

(declare-fun m!1364405 () Bool)

(assert (=> b!1478418 m!1364405))

(assert (=> b!1478408 m!1364399))

(assert (=> b!1478408 m!1364399))

(declare-fun m!1364407 () Bool)

(assert (=> b!1478408 m!1364407))

(assert (=> b!1478408 m!1364407))

(assert (=> b!1478408 m!1364399))

(declare-fun m!1364409 () Bool)

(assert (=> b!1478408 m!1364409))

(declare-fun m!1364411 () Bool)

(assert (=> start!126246 m!1364411))

(declare-fun m!1364413 () Bool)

(assert (=> start!126246 m!1364413))

(assert (=> b!1478411 m!1364399))

(assert (=> b!1478411 m!1364399))

(declare-fun m!1364415 () Bool)

(assert (=> b!1478411 m!1364415))

(declare-fun m!1364417 () Bool)

(assert (=> b!1478419 m!1364417))

(assert (=> b!1478419 m!1364377))

(declare-fun m!1364419 () Bool)

(assert (=> b!1478419 m!1364419))

(assert (=> b!1478419 m!1364399))

(assert (=> b!1478414 m!1364399))

(assert (=> b!1478414 m!1364399))

(declare-fun m!1364421 () Bool)

(assert (=> b!1478414 m!1364421))

(check-sat (not start!126246) (not b!1478405) (not b!1478404) (not b!1478406) (not b!1478412) (not b!1478411) (not b!1478413) (not b!1478403) (not b!1478410) (not b!1478418) (not b!1478408) (not b!1478414))
(check-sat)
