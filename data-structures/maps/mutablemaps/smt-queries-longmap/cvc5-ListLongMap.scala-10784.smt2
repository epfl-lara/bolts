; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126244 () Bool)

(assert start!126244)

(declare-fun b!1478348 () Bool)

(declare-fun res!1004476 () Bool)

(declare-fun e!829329 () Bool)

(assert (=> b!1478348 (=> (not res!1004476) (not e!829329))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99267 0))(
  ( (array!99268 (arr!47908 (Array (_ BitVec 32) (_ BitVec 64))) (size!48459 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99267)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12171 0))(
  ( (MissingZero!12171 (index!51075 (_ BitVec 32))) (Found!12171 (index!51076 (_ BitVec 32))) (Intermediate!12171 (undefined!12983 Bool) (index!51077 (_ BitVec 32)) (x!132669 (_ BitVec 32))) (Undefined!12171) (MissingVacant!12171 (index!51078 (_ BitVec 32))) )
))
(declare-fun lt!645619 () SeekEntryResult!12171)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99267 (_ BitVec 32)) SeekEntryResult!12171)

(assert (=> b!1478348 (= res!1004476 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47908 a!2862) j!93) a!2862 mask!2687) lt!645619))))

(declare-fun b!1478349 () Bool)

(declare-fun res!1004481 () Bool)

(declare-fun e!829323 () Bool)

(assert (=> b!1478349 (=> (not res!1004481) (not e!829323))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1478349 (= res!1004481 (and (= (size!48459 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48459 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48459 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478350 () Bool)

(declare-fun res!1004475 () Bool)

(assert (=> b!1478350 (=> (not res!1004475) (not e!829323))))

(declare-datatypes ((List!34589 0))(
  ( (Nil!34586) (Cons!34585 (h!35953 (_ BitVec 64)) (t!49290 List!34589)) )
))
(declare-fun arrayNoDuplicates!0 (array!99267 (_ BitVec 32) List!34589) Bool)

(assert (=> b!1478350 (= res!1004475 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34586))))

(declare-fun res!1004472 () Bool)

(assert (=> start!126244 (=> (not res!1004472) (not e!829323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126244 (= res!1004472 (validMask!0 mask!2687))))

(assert (=> start!126244 e!829323))

(assert (=> start!126244 true))

(declare-fun array_inv!36853 (array!99267) Bool)

(assert (=> start!126244 (array_inv!36853 a!2862)))

(declare-fun b!1478351 () Bool)

(declare-fun e!829327 () Bool)

(assert (=> b!1478351 (= e!829329 e!829327)))

(declare-fun res!1004480 () Bool)

(assert (=> b!1478351 (=> (not res!1004480) (not e!829327))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!645622 () SeekEntryResult!12171)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478351 (= res!1004480 (= lt!645622 (Intermediate!12171 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645621 () (_ BitVec 64))

(declare-fun lt!645617 () array!99267)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478351 (= lt!645622 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645621 mask!2687) lt!645621 lt!645617 mask!2687))))

(assert (=> b!1478351 (= lt!645621 (select (store (arr!47908 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478352 () Bool)

(declare-fun res!1004484 () Bool)

(assert (=> b!1478352 (=> (not res!1004484) (not e!829327))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1478352 (= res!1004484 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478353 () Bool)

(declare-fun e!829326 () Bool)

(declare-fun e!829331 () Bool)

(assert (=> b!1478353 (= e!829326 e!829331)))

(declare-fun res!1004483 () Bool)

(assert (=> b!1478353 (=> res!1004483 e!829331)))

(assert (=> b!1478353 (= res!1004483 (or (and (= (select (arr!47908 a!2862) index!646) (select (store (arr!47908 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47908 a!2862) index!646) (select (arr!47908 a!2862) j!93))) (not (= (select (arr!47908 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478354 () Bool)

(declare-fun e!829324 () Bool)

(assert (=> b!1478354 (= e!829331 e!829324)))

(declare-fun res!1004482 () Bool)

(assert (=> b!1478354 (=> (not res!1004482) (not e!829324))))

(declare-fun lt!645620 () SeekEntryResult!12171)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99267 (_ BitVec 32)) SeekEntryResult!12171)

(assert (=> b!1478354 (= res!1004482 (= lt!645620 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47908 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1478355 () Bool)

(declare-fun res!1004486 () Bool)

(assert (=> b!1478355 (=> (not res!1004486) (not e!829327))))

(declare-fun e!829330 () Bool)

(assert (=> b!1478355 (= res!1004486 e!829330)))

(declare-fun c!136460 () Bool)

(assert (=> b!1478355 (= c!136460 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1478356 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99267 (_ BitVec 32)) SeekEntryResult!12171)

(assert (=> b!1478356 (= e!829330 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645621 lt!645617 mask!2687) (seekEntryOrOpen!0 lt!645621 lt!645617 mask!2687)))))

(declare-fun b!1478357 () Bool)

(declare-fun res!1004473 () Bool)

(assert (=> b!1478357 (=> (not res!1004473) (not e!829323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99267 (_ BitVec 32)) Bool)

(assert (=> b!1478357 (= res!1004473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1478358 () Bool)

(assert (=> b!1478358 (= e!829330 (= lt!645622 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645621 lt!645617 mask!2687)))))

(declare-fun b!1478359 () Bool)

(declare-fun res!1004477 () Bool)

(assert (=> b!1478359 (=> (not res!1004477) (not e!829323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478359 (= res!1004477 (validKeyInArray!0 (select (arr!47908 a!2862) i!1006)))))

(declare-fun b!1478360 () Bool)

(assert (=> b!1478360 (= e!829327 (not true))))

(assert (=> b!1478360 e!829326))

(declare-fun res!1004487 () Bool)

(assert (=> b!1478360 (=> (not res!1004487) (not e!829326))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1478360 (= res!1004487 (and (= lt!645620 (Found!12171 j!93)) (or (= (select (arr!47908 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47908 a!2862) intermediateBeforeIndex!19) (select (arr!47908 a!2862) j!93)))))))

(assert (=> b!1478360 (= lt!645620 (seekEntryOrOpen!0 (select (arr!47908 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1478360 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49630 0))(
  ( (Unit!49631) )
))
(declare-fun lt!645618 () Unit!49630)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99267 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49630)

(assert (=> b!1478360 (= lt!645618 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478361 () Bool)

(declare-fun e!829328 () Bool)

(assert (=> b!1478361 (= e!829323 e!829328)))

(declare-fun res!1004478 () Bool)

(assert (=> b!1478361 (=> (not res!1004478) (not e!829328))))

(assert (=> b!1478361 (= res!1004478 (= (select (store (arr!47908 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478361 (= lt!645617 (array!99268 (store (arr!47908 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48459 a!2862)))))

(declare-fun b!1478362 () Bool)

(declare-fun res!1004485 () Bool)

(assert (=> b!1478362 (=> (not res!1004485) (not e!829323))))

(assert (=> b!1478362 (= res!1004485 (validKeyInArray!0 (select (arr!47908 a!2862) j!93)))))

(declare-fun b!1478363 () Bool)

(assert (=> b!1478363 (= e!829328 e!829329)))

(declare-fun res!1004474 () Bool)

(assert (=> b!1478363 (=> (not res!1004474) (not e!829329))))

(assert (=> b!1478363 (= res!1004474 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47908 a!2862) j!93) mask!2687) (select (arr!47908 a!2862) j!93) a!2862 mask!2687) lt!645619))))

(assert (=> b!1478363 (= lt!645619 (Intermediate!12171 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478364 () Bool)

(declare-fun res!1004479 () Bool)

(assert (=> b!1478364 (=> (not res!1004479) (not e!829323))))

(assert (=> b!1478364 (= res!1004479 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48459 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48459 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48459 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478365 () Bool)

(assert (=> b!1478365 (= e!829324 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(assert (= (and start!126244 res!1004472) b!1478349))

(assert (= (and b!1478349 res!1004481) b!1478359))

(assert (= (and b!1478359 res!1004477) b!1478362))

(assert (= (and b!1478362 res!1004485) b!1478357))

(assert (= (and b!1478357 res!1004473) b!1478350))

(assert (= (and b!1478350 res!1004475) b!1478364))

(assert (= (and b!1478364 res!1004479) b!1478361))

(assert (= (and b!1478361 res!1004478) b!1478363))

(assert (= (and b!1478363 res!1004474) b!1478348))

(assert (= (and b!1478348 res!1004476) b!1478351))

(assert (= (and b!1478351 res!1004480) b!1478355))

(assert (= (and b!1478355 c!136460) b!1478358))

(assert (= (and b!1478355 (not c!136460)) b!1478356))

(assert (= (and b!1478355 res!1004486) b!1478352))

(assert (= (and b!1478352 res!1004484) b!1478360))

(assert (= (and b!1478360 res!1004487) b!1478353))

(assert (= (and b!1478353 (not res!1004483)) b!1478354))

(assert (= (and b!1478354 res!1004482) b!1478365))

(declare-fun m!1364319 () Bool)

(assert (=> b!1478356 m!1364319))

(declare-fun m!1364321 () Bool)

(assert (=> b!1478356 m!1364321))

(declare-fun m!1364323 () Bool)

(assert (=> b!1478359 m!1364323))

(assert (=> b!1478359 m!1364323))

(declare-fun m!1364325 () Bool)

(assert (=> b!1478359 m!1364325))

(declare-fun m!1364327 () Bool)

(assert (=> b!1478362 m!1364327))

(assert (=> b!1478362 m!1364327))

(declare-fun m!1364329 () Bool)

(assert (=> b!1478362 m!1364329))

(assert (=> b!1478363 m!1364327))

(assert (=> b!1478363 m!1364327))

(declare-fun m!1364331 () Bool)

(assert (=> b!1478363 m!1364331))

(assert (=> b!1478363 m!1364331))

(assert (=> b!1478363 m!1364327))

(declare-fun m!1364333 () Bool)

(assert (=> b!1478363 m!1364333))

(declare-fun m!1364335 () Bool)

(assert (=> b!1478351 m!1364335))

(assert (=> b!1478351 m!1364335))

(declare-fun m!1364337 () Bool)

(assert (=> b!1478351 m!1364337))

(declare-fun m!1364339 () Bool)

(assert (=> b!1478351 m!1364339))

(declare-fun m!1364341 () Bool)

(assert (=> b!1478351 m!1364341))

(declare-fun m!1364343 () Bool)

(assert (=> b!1478350 m!1364343))

(assert (=> b!1478361 m!1364339))

(declare-fun m!1364345 () Bool)

(assert (=> b!1478361 m!1364345))

(declare-fun m!1364347 () Bool)

(assert (=> b!1478353 m!1364347))

(assert (=> b!1478353 m!1364339))

(declare-fun m!1364349 () Bool)

(assert (=> b!1478353 m!1364349))

(assert (=> b!1478353 m!1364327))

(assert (=> b!1478354 m!1364327))

(assert (=> b!1478354 m!1364327))

(declare-fun m!1364351 () Bool)

(assert (=> b!1478354 m!1364351))

(declare-fun m!1364353 () Bool)

(assert (=> start!126244 m!1364353))

(declare-fun m!1364355 () Bool)

(assert (=> start!126244 m!1364355))

(assert (=> b!1478348 m!1364327))

(assert (=> b!1478348 m!1364327))

(declare-fun m!1364357 () Bool)

(assert (=> b!1478348 m!1364357))

(declare-fun m!1364359 () Bool)

(assert (=> b!1478360 m!1364359))

(declare-fun m!1364361 () Bool)

(assert (=> b!1478360 m!1364361))

(assert (=> b!1478360 m!1364327))

(declare-fun m!1364363 () Bool)

(assert (=> b!1478360 m!1364363))

(declare-fun m!1364365 () Bool)

(assert (=> b!1478360 m!1364365))

(assert (=> b!1478360 m!1364327))

(declare-fun m!1364367 () Bool)

(assert (=> b!1478358 m!1364367))

(declare-fun m!1364369 () Bool)

(assert (=> b!1478357 m!1364369))

(push 1)

