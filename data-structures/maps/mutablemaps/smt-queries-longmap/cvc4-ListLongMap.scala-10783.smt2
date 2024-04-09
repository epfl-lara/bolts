; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126242 () Bool)

(assert start!126242)

(declare-fun b!1478294 () Bool)

(declare-fun e!829301 () Bool)

(declare-fun e!829300 () Bool)

(assert (=> b!1478294 (= e!829301 e!829300)))

(declare-fun res!1004426 () Bool)

(assert (=> b!1478294 (=> res!1004426 e!829300)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99265 0))(
  ( (array!99266 (arr!47907 (Array (_ BitVec 32) (_ BitVec 64))) (size!48458 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99265)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1478294 (= res!1004426 (or (and (= (select (arr!47907 a!2862) index!646) (select (store (arr!47907 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47907 a!2862) index!646) (select (arr!47907 a!2862) j!93))) (not (= (select (arr!47907 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478295 () Bool)

(declare-fun e!829302 () Bool)

(assert (=> b!1478295 (= e!829300 e!829302)))

(declare-fun res!1004425 () Bool)

(assert (=> b!1478295 (=> (not res!1004425) (not e!829302))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12170 0))(
  ( (MissingZero!12170 (index!51071 (_ BitVec 32))) (Found!12170 (index!51072 (_ BitVec 32))) (Intermediate!12170 (undefined!12982 Bool) (index!51073 (_ BitVec 32)) (x!132660 (_ BitVec 32))) (Undefined!12170) (MissingVacant!12170 (index!51074 (_ BitVec 32))) )
))
(declare-fun lt!645603 () SeekEntryResult!12170)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99265 (_ BitVec 32)) SeekEntryResult!12170)

(assert (=> b!1478295 (= res!1004425 (= lt!645603 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47907 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun lt!645600 () (_ BitVec 64))

(declare-fun b!1478296 () Bool)

(declare-fun lt!645601 () SeekEntryResult!12170)

(declare-fun lt!645604 () array!99265)

(declare-fun e!829296 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99265 (_ BitVec 32)) SeekEntryResult!12170)

(assert (=> b!1478296 (= e!829296 (= lt!645601 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645600 lt!645604 mask!2687)))))

(declare-fun b!1478297 () Bool)

(declare-fun res!1004439 () Bool)

(declare-fun e!829304 () Bool)

(assert (=> b!1478297 (=> (not res!1004439) (not e!829304))))

(assert (=> b!1478297 (= res!1004439 e!829296)))

(declare-fun c!136457 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1478297 (= c!136457 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1478298 () Bool)

(declare-fun res!1004432 () Bool)

(assert (=> b!1478298 (=> (not res!1004432) (not e!829304))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478298 (= res!1004432 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478299 () Bool)

(declare-fun res!1004428 () Bool)

(declare-fun e!829297 () Bool)

(assert (=> b!1478299 (=> (not res!1004428) (not e!829297))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1478299 (= res!1004428 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48458 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48458 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48458 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478300 () Bool)

(declare-fun res!1004438 () Bool)

(declare-fun e!829299 () Bool)

(assert (=> b!1478300 (=> (not res!1004438) (not e!829299))))

(declare-fun lt!645599 () SeekEntryResult!12170)

(assert (=> b!1478300 (= res!1004438 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47907 a!2862) j!93) a!2862 mask!2687) lt!645599))))

(declare-fun b!1478301 () Bool)

(declare-fun e!829303 () Bool)

(assert (=> b!1478301 (= e!829297 e!829303)))

(declare-fun res!1004435 () Bool)

(assert (=> b!1478301 (=> (not res!1004435) (not e!829303))))

(assert (=> b!1478301 (= res!1004435 (= (select (store (arr!47907 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478301 (= lt!645604 (array!99266 (store (arr!47907 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48458 a!2862)))))

(declare-fun b!1478302 () Bool)

(declare-fun res!1004433 () Bool)

(assert (=> b!1478302 (=> (not res!1004433) (not e!829297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478302 (= res!1004433 (validKeyInArray!0 (select (arr!47907 a!2862) j!93)))))

(declare-fun b!1478303 () Bool)

(declare-fun res!1004430 () Bool)

(assert (=> b!1478303 (=> (not res!1004430) (not e!829297))))

(declare-datatypes ((List!34588 0))(
  ( (Nil!34585) (Cons!34584 (h!35952 (_ BitVec 64)) (t!49289 List!34588)) )
))
(declare-fun arrayNoDuplicates!0 (array!99265 (_ BitVec 32) List!34588) Bool)

(assert (=> b!1478303 (= res!1004430 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34585))))

(declare-fun b!1478304 () Bool)

(assert (=> b!1478304 (= e!829303 e!829299)))

(declare-fun res!1004431 () Bool)

(assert (=> b!1478304 (=> (not res!1004431) (not e!829299))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478304 (= res!1004431 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47907 a!2862) j!93) mask!2687) (select (arr!47907 a!2862) j!93) a!2862 mask!2687) lt!645599))))

(assert (=> b!1478304 (= lt!645599 (Intermediate!12170 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1004424 () Bool)

(assert (=> start!126242 (=> (not res!1004424) (not e!829297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126242 (= res!1004424 (validMask!0 mask!2687))))

(assert (=> start!126242 e!829297))

(assert (=> start!126242 true))

(declare-fun array_inv!36852 (array!99265) Bool)

(assert (=> start!126242 (array_inv!36852 a!2862)))

(declare-fun b!1478305 () Bool)

(declare-fun res!1004429 () Bool)

(assert (=> b!1478305 (=> (not res!1004429) (not e!829297))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99265 (_ BitVec 32)) Bool)

(assert (=> b!1478305 (= res!1004429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1478306 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99265 (_ BitVec 32)) SeekEntryResult!12170)

(assert (=> b!1478306 (= e!829296 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645600 lt!645604 mask!2687) (seekEntryOrOpen!0 lt!645600 lt!645604 mask!2687)))))

(declare-fun b!1478307 () Bool)

(assert (=> b!1478307 (= e!829299 e!829304)))

(declare-fun res!1004436 () Bool)

(assert (=> b!1478307 (=> (not res!1004436) (not e!829304))))

(assert (=> b!1478307 (= res!1004436 (= lt!645601 (Intermediate!12170 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1478307 (= lt!645601 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645600 mask!2687) lt!645600 lt!645604 mask!2687))))

(assert (=> b!1478307 (= lt!645600 (select (store (arr!47907 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478308 () Bool)

(declare-fun res!1004434 () Bool)

(assert (=> b!1478308 (=> (not res!1004434) (not e!829297))))

(assert (=> b!1478308 (= res!1004434 (validKeyInArray!0 (select (arr!47907 a!2862) i!1006)))))

(declare-fun b!1478309 () Bool)

(declare-fun res!1004427 () Bool)

(assert (=> b!1478309 (=> (not res!1004427) (not e!829297))))

(assert (=> b!1478309 (= res!1004427 (and (= (size!48458 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48458 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48458 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478310 () Bool)

(assert (=> b!1478310 (= e!829304 (not true))))

(assert (=> b!1478310 e!829301))

(declare-fun res!1004437 () Bool)

(assert (=> b!1478310 (=> (not res!1004437) (not e!829301))))

(assert (=> b!1478310 (= res!1004437 (and (= lt!645603 (Found!12170 j!93)) (or (= (select (arr!47907 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47907 a!2862) intermediateBeforeIndex!19) (select (arr!47907 a!2862) j!93)))))))

(assert (=> b!1478310 (= lt!645603 (seekEntryOrOpen!0 (select (arr!47907 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1478310 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49628 0))(
  ( (Unit!49629) )
))
(declare-fun lt!645602 () Unit!49628)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99265 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49628)

(assert (=> b!1478310 (= lt!645602 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478311 () Bool)

(assert (=> b!1478311 (= e!829302 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(assert (= (and start!126242 res!1004424) b!1478309))

(assert (= (and b!1478309 res!1004427) b!1478308))

(assert (= (and b!1478308 res!1004434) b!1478302))

(assert (= (and b!1478302 res!1004433) b!1478305))

(assert (= (and b!1478305 res!1004429) b!1478303))

(assert (= (and b!1478303 res!1004430) b!1478299))

(assert (= (and b!1478299 res!1004428) b!1478301))

(assert (= (and b!1478301 res!1004435) b!1478304))

(assert (= (and b!1478304 res!1004431) b!1478300))

(assert (= (and b!1478300 res!1004438) b!1478307))

(assert (= (and b!1478307 res!1004436) b!1478297))

(assert (= (and b!1478297 c!136457) b!1478296))

(assert (= (and b!1478297 (not c!136457)) b!1478306))

(assert (= (and b!1478297 res!1004439) b!1478298))

(assert (= (and b!1478298 res!1004432) b!1478310))

(assert (= (and b!1478310 res!1004437) b!1478294))

(assert (= (and b!1478294 (not res!1004426)) b!1478295))

(assert (= (and b!1478295 res!1004425) b!1478311))

(declare-fun m!1364267 () Bool)

(assert (=> b!1478294 m!1364267))

(declare-fun m!1364269 () Bool)

(assert (=> b!1478294 m!1364269))

(declare-fun m!1364271 () Bool)

(assert (=> b!1478294 m!1364271))

(declare-fun m!1364273 () Bool)

(assert (=> b!1478294 m!1364273))

(declare-fun m!1364275 () Bool)

(assert (=> b!1478310 m!1364275))

(declare-fun m!1364277 () Bool)

(assert (=> b!1478310 m!1364277))

(assert (=> b!1478310 m!1364273))

(declare-fun m!1364279 () Bool)

(assert (=> b!1478310 m!1364279))

(declare-fun m!1364281 () Bool)

(assert (=> b!1478310 m!1364281))

(assert (=> b!1478310 m!1364273))

(declare-fun m!1364283 () Bool)

(assert (=> start!126242 m!1364283))

(declare-fun m!1364285 () Bool)

(assert (=> start!126242 m!1364285))

(declare-fun m!1364287 () Bool)

(assert (=> b!1478307 m!1364287))

(assert (=> b!1478307 m!1364287))

(declare-fun m!1364289 () Bool)

(assert (=> b!1478307 m!1364289))

(assert (=> b!1478307 m!1364269))

(declare-fun m!1364291 () Bool)

(assert (=> b!1478307 m!1364291))

(declare-fun m!1364293 () Bool)

(assert (=> b!1478308 m!1364293))

(assert (=> b!1478308 m!1364293))

(declare-fun m!1364295 () Bool)

(assert (=> b!1478308 m!1364295))

(assert (=> b!1478304 m!1364273))

(assert (=> b!1478304 m!1364273))

(declare-fun m!1364297 () Bool)

(assert (=> b!1478304 m!1364297))

(assert (=> b!1478304 m!1364297))

(assert (=> b!1478304 m!1364273))

(declare-fun m!1364299 () Bool)

(assert (=> b!1478304 m!1364299))

(declare-fun m!1364301 () Bool)

(assert (=> b!1478296 m!1364301))

(declare-fun m!1364303 () Bool)

(assert (=> b!1478303 m!1364303))

(declare-fun m!1364305 () Bool)

(assert (=> b!1478306 m!1364305))

(declare-fun m!1364307 () Bool)

(assert (=> b!1478306 m!1364307))

(assert (=> b!1478302 m!1364273))

(assert (=> b!1478302 m!1364273))

(declare-fun m!1364309 () Bool)

(assert (=> b!1478302 m!1364309))

(assert (=> b!1478301 m!1364269))

(declare-fun m!1364311 () Bool)

(assert (=> b!1478301 m!1364311))

(assert (=> b!1478300 m!1364273))

(assert (=> b!1478300 m!1364273))

(declare-fun m!1364313 () Bool)

(assert (=> b!1478300 m!1364313))

(assert (=> b!1478295 m!1364273))

(assert (=> b!1478295 m!1364273))

(declare-fun m!1364315 () Bool)

(assert (=> b!1478295 m!1364315))

(declare-fun m!1364317 () Bool)

(assert (=> b!1478305 m!1364317))

(push 1)

