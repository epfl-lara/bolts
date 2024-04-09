; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126574 () Bool)

(assert start!126574)

(declare-fun b!1484462 () Bool)

(declare-fun res!1009345 () Bool)

(declare-fun e!832310 () Bool)

(assert (=> b!1484462 (=> (not res!1009345) (not e!832310))))

(declare-datatypes ((array!99453 0))(
  ( (array!99454 (arr!47998 (Array (_ BitVec 32) (_ BitVec 64))) (size!48549 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99453)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484462 (= res!1009345 (validKeyInArray!0 (select (arr!47998 a!2862) i!1006)))))

(declare-fun b!1484463 () Bool)

(declare-fun e!832313 () Bool)

(declare-fun e!832316 () Bool)

(assert (=> b!1484463 (= e!832313 e!832316)))

(declare-fun res!1009350 () Bool)

(assert (=> b!1484463 (=> (not res!1009350) (not e!832316))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12261 0))(
  ( (MissingZero!12261 (index!51435 (_ BitVec 32))) (Found!12261 (index!51436 (_ BitVec 32))) (Intermediate!12261 (undefined!13073 Bool) (index!51437 (_ BitVec 32)) (x!133020 (_ BitVec 32))) (Undefined!12261) (MissingVacant!12261 (index!51438 (_ BitVec 32))) )
))
(declare-fun lt!647736 () SeekEntryResult!12261)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1484463 (= res!1009350 (= lt!647736 (Intermediate!12261 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!647738 () array!99453)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!647734 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99453 (_ BitVec 32)) SeekEntryResult!12261)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484463 (= lt!647736 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647734 mask!2687) lt!647734 lt!647738 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1484463 (= lt!647734 (select (store (arr!47998 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1484464 () Bool)

(declare-fun res!1009340 () Bool)

(assert (=> b!1484464 (=> (not res!1009340) (not e!832310))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99453 (_ BitVec 32)) Bool)

(assert (=> b!1484464 (= res!1009340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1484466 () Bool)

(declare-fun e!832311 () Bool)

(assert (=> b!1484466 (= e!832311 true)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!647737 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484466 (= lt!647737 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1484467 () Bool)

(declare-fun res!1009354 () Bool)

(assert (=> b!1484467 (=> (not res!1009354) (not e!832310))))

(declare-datatypes ((List!34679 0))(
  ( (Nil!34676) (Cons!34675 (h!36049 (_ BitVec 64)) (t!49380 List!34679)) )
))
(declare-fun arrayNoDuplicates!0 (array!99453 (_ BitVec 32) List!34679) Bool)

(assert (=> b!1484467 (= res!1009354 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34676))))

(declare-fun b!1484468 () Bool)

(declare-fun res!1009339 () Bool)

(assert (=> b!1484468 (=> (not res!1009339) (not e!832313))))

(declare-fun lt!647739 () SeekEntryResult!12261)

(assert (=> b!1484468 (= res!1009339 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47998 a!2862) j!93) a!2862 mask!2687) lt!647739))))

(declare-fun b!1484469 () Bool)

(declare-fun res!1009352 () Bool)

(assert (=> b!1484469 (=> (not res!1009352) (not e!832310))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1484469 (= res!1009352 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48549 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48549 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48549 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484470 () Bool)

(declare-fun e!832315 () Bool)

(assert (=> b!1484470 (= e!832315 e!832313)))

(declare-fun res!1009355 () Bool)

(assert (=> b!1484470 (=> (not res!1009355) (not e!832313))))

(assert (=> b!1484470 (= res!1009355 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47998 a!2862) j!93) mask!2687) (select (arr!47998 a!2862) j!93) a!2862 mask!2687) lt!647739))))

(assert (=> b!1484470 (= lt!647739 (Intermediate!12261 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484471 () Bool)

(declare-fun e!832319 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99453 (_ BitVec 32)) SeekEntryResult!12261)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99453 (_ BitVec 32)) SeekEntryResult!12261)

(assert (=> b!1484471 (= e!832319 (= (seekEntryOrOpen!0 lt!647734 lt!647738 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647734 lt!647738 mask!2687)))))

(declare-fun e!832318 () Bool)

(declare-fun b!1484472 () Bool)

(assert (=> b!1484472 (= e!832318 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647734 lt!647738 mask!2687) (seekEntryOrOpen!0 lt!647734 lt!647738 mask!2687)))))

(declare-fun b!1484473 () Bool)

(declare-fun res!1009342 () Bool)

(declare-fun e!832317 () Bool)

(assert (=> b!1484473 (=> (not res!1009342) (not e!832317))))

(assert (=> b!1484473 (= res!1009342 (or (= (select (arr!47998 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47998 a!2862) intermediateBeforeIndex!19) (select (arr!47998 a!2862) j!93))))))

(declare-fun b!1484474 () Bool)

(assert (=> b!1484474 (= e!832318 (= lt!647736 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647734 lt!647738 mask!2687)))))

(declare-fun b!1484475 () Bool)

(declare-fun res!1009344 () Bool)

(assert (=> b!1484475 (=> (not res!1009344) (not e!832316))))

(assert (=> b!1484475 (= res!1009344 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484476 () Bool)

(declare-fun res!1009347 () Bool)

(assert (=> b!1484476 (=> (not res!1009347) (not e!832310))))

(assert (=> b!1484476 (= res!1009347 (and (= (size!48549 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48549 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48549 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1484477 () Bool)

(declare-fun e!832312 () Bool)

(assert (=> b!1484477 (= e!832317 e!832312)))

(declare-fun res!1009353 () Bool)

(assert (=> b!1484477 (=> res!1009353 e!832312)))

(declare-fun lt!647740 () (_ BitVec 64))

(assert (=> b!1484477 (= res!1009353 (or (and (= (select (arr!47998 a!2862) index!646) lt!647740) (= (select (arr!47998 a!2862) index!646) (select (arr!47998 a!2862) j!93))) (= (select (arr!47998 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484477 (= lt!647740 (select (store (arr!47998 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484478 () Bool)

(assert (=> b!1484478 (= e!832310 e!832315)))

(declare-fun res!1009338 () Bool)

(assert (=> b!1484478 (=> (not res!1009338) (not e!832315))))

(assert (=> b!1484478 (= res!1009338 (= (select (store (arr!47998 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1484478 (= lt!647738 (array!99454 (store (arr!47998 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48549 a!2862)))))

(declare-fun b!1484479 () Bool)

(declare-fun res!1009348 () Bool)

(assert (=> b!1484479 (=> (not res!1009348) (not e!832316))))

(assert (=> b!1484479 (= res!1009348 e!832318)))

(declare-fun c!137087 () Bool)

(assert (=> b!1484479 (= c!137087 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1484480 () Bool)

(declare-fun res!1009351 () Bool)

(assert (=> b!1484480 (=> (not res!1009351) (not e!832317))))

(assert (=> b!1484480 (= res!1009351 (= (seekEntryOrOpen!0 (select (arr!47998 a!2862) j!93) a!2862 mask!2687) (Found!12261 j!93)))))

(declare-fun b!1484465 () Bool)

(assert (=> b!1484465 (= e!832316 (not e!832311))))

(declare-fun res!1009349 () Bool)

(assert (=> b!1484465 (=> res!1009349 e!832311)))

(assert (=> b!1484465 (= res!1009349 (or (and (= (select (arr!47998 a!2862) index!646) (select (store (arr!47998 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47998 a!2862) index!646) (select (arr!47998 a!2862) j!93))) (= (select (arr!47998 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484465 e!832317))

(declare-fun res!1009346 () Bool)

(assert (=> b!1484465 (=> (not res!1009346) (not e!832317))))

(assert (=> b!1484465 (= res!1009346 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49810 0))(
  ( (Unit!49811) )
))
(declare-fun lt!647735 () Unit!49810)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99453 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49810)

(assert (=> b!1484465 (= lt!647735 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!1009343 () Bool)

(assert (=> start!126574 (=> (not res!1009343) (not e!832310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126574 (= res!1009343 (validMask!0 mask!2687))))

(assert (=> start!126574 e!832310))

(assert (=> start!126574 true))

(declare-fun array_inv!36943 (array!99453) Bool)

(assert (=> start!126574 (array_inv!36943 a!2862)))

(declare-fun b!1484481 () Bool)

(assert (=> b!1484481 (= e!832312 e!832319)))

(declare-fun res!1009356 () Bool)

(assert (=> b!1484481 (=> (not res!1009356) (not e!832319))))

(assert (=> b!1484481 (= res!1009356 (and (= index!646 intermediateAfterIndex!19) (= lt!647740 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1484482 () Bool)

(declare-fun res!1009341 () Bool)

(assert (=> b!1484482 (=> (not res!1009341) (not e!832310))))

(assert (=> b!1484482 (= res!1009341 (validKeyInArray!0 (select (arr!47998 a!2862) j!93)))))

(assert (= (and start!126574 res!1009343) b!1484476))

(assert (= (and b!1484476 res!1009347) b!1484462))

(assert (= (and b!1484462 res!1009345) b!1484482))

(assert (= (and b!1484482 res!1009341) b!1484464))

(assert (= (and b!1484464 res!1009340) b!1484467))

(assert (= (and b!1484467 res!1009354) b!1484469))

(assert (= (and b!1484469 res!1009352) b!1484478))

(assert (= (and b!1484478 res!1009338) b!1484470))

(assert (= (and b!1484470 res!1009355) b!1484468))

(assert (= (and b!1484468 res!1009339) b!1484463))

(assert (= (and b!1484463 res!1009350) b!1484479))

(assert (= (and b!1484479 c!137087) b!1484474))

(assert (= (and b!1484479 (not c!137087)) b!1484472))

(assert (= (and b!1484479 res!1009348) b!1484475))

(assert (= (and b!1484475 res!1009344) b!1484465))

(assert (= (and b!1484465 res!1009346) b!1484480))

(assert (= (and b!1484480 res!1009351) b!1484473))

(assert (= (and b!1484473 res!1009342) b!1484477))

(assert (= (and b!1484477 (not res!1009353)) b!1484481))

(assert (= (and b!1484481 res!1009356) b!1484471))

(assert (= (and b!1484465 (not res!1009349)) b!1484466))

(declare-fun m!1369809 () Bool)

(assert (=> b!1484466 m!1369809))

(declare-fun m!1369811 () Bool)

(assert (=> b!1484464 m!1369811))

(declare-fun m!1369813 () Bool)

(assert (=> b!1484480 m!1369813))

(assert (=> b!1484480 m!1369813))

(declare-fun m!1369815 () Bool)

(assert (=> b!1484480 m!1369815))

(declare-fun m!1369817 () Bool)

(assert (=> b!1484478 m!1369817))

(declare-fun m!1369819 () Bool)

(assert (=> b!1484478 m!1369819))

(declare-fun m!1369821 () Bool)

(assert (=> b!1484462 m!1369821))

(assert (=> b!1484462 m!1369821))

(declare-fun m!1369823 () Bool)

(assert (=> b!1484462 m!1369823))

(declare-fun m!1369825 () Bool)

(assert (=> b!1484465 m!1369825))

(assert (=> b!1484465 m!1369817))

(declare-fun m!1369827 () Bool)

(assert (=> b!1484465 m!1369827))

(declare-fun m!1369829 () Bool)

(assert (=> b!1484465 m!1369829))

(declare-fun m!1369831 () Bool)

(assert (=> b!1484465 m!1369831))

(assert (=> b!1484465 m!1369813))

(declare-fun m!1369833 () Bool)

(assert (=> b!1484472 m!1369833))

(declare-fun m!1369835 () Bool)

(assert (=> b!1484472 m!1369835))

(assert (=> b!1484468 m!1369813))

(assert (=> b!1484468 m!1369813))

(declare-fun m!1369837 () Bool)

(assert (=> b!1484468 m!1369837))

(assert (=> b!1484470 m!1369813))

(assert (=> b!1484470 m!1369813))

(declare-fun m!1369839 () Bool)

(assert (=> b!1484470 m!1369839))

(assert (=> b!1484470 m!1369839))

(assert (=> b!1484470 m!1369813))

(declare-fun m!1369841 () Bool)

(assert (=> b!1484470 m!1369841))

(assert (=> b!1484482 m!1369813))

(assert (=> b!1484482 m!1369813))

(declare-fun m!1369843 () Bool)

(assert (=> b!1484482 m!1369843))

(declare-fun m!1369845 () Bool)

(assert (=> b!1484473 m!1369845))

(assert (=> b!1484473 m!1369813))

(assert (=> b!1484471 m!1369835))

(assert (=> b!1484471 m!1369833))

(declare-fun m!1369847 () Bool)

(assert (=> start!126574 m!1369847))

(declare-fun m!1369849 () Bool)

(assert (=> start!126574 m!1369849))

(declare-fun m!1369851 () Bool)

(assert (=> b!1484467 m!1369851))

(assert (=> b!1484477 m!1369829))

(assert (=> b!1484477 m!1369813))

(assert (=> b!1484477 m!1369817))

(assert (=> b!1484477 m!1369827))

(declare-fun m!1369853 () Bool)

(assert (=> b!1484474 m!1369853))

(declare-fun m!1369855 () Bool)

(assert (=> b!1484463 m!1369855))

(assert (=> b!1484463 m!1369855))

(declare-fun m!1369857 () Bool)

(assert (=> b!1484463 m!1369857))

(assert (=> b!1484463 m!1369817))

(declare-fun m!1369859 () Bool)

(assert (=> b!1484463 m!1369859))

(push 1)

