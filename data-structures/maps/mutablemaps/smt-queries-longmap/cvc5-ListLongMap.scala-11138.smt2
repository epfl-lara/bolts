; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130156 () Bool)

(assert start!130156)

(declare-fun b!1527363 () Bool)

(declare-fun res!1045546 () Bool)

(declare-fun e!851310 () Bool)

(assert (=> b!1527363 (=> (not res!1045546) (not e!851310))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101496 0))(
  ( (array!101497 (arr!48970 (Array (_ BitVec 32) (_ BitVec 64))) (size!49521 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101496)

(assert (=> b!1527363 (= res!1045546 (and (= (size!49521 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49521 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49521 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1527364 () Bool)

(declare-fun e!851314 () Bool)

(declare-fun e!851313 () Bool)

(assert (=> b!1527364 (= e!851314 e!851313)))

(declare-fun res!1045540 () Bool)

(assert (=> b!1527364 (=> res!1045540 e!851313)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!661371 () (_ BitVec 64))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1527364 (= res!1045540 (or (not (= (select (arr!48970 a!2804) j!70) lt!661371)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48970 a!2804) index!487) (select (arr!48970 a!2804) j!70)) (not (= (select (arr!48970 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1527365 () Bool)

(declare-fun res!1045536 () Bool)

(assert (=> b!1527365 (=> (not res!1045536) (not e!851310))))

(declare-datatypes ((List!35633 0))(
  ( (Nil!35630) (Cons!35629 (h!37063 (_ BitVec 64)) (t!50334 List!35633)) )
))
(declare-fun arrayNoDuplicates!0 (array!101496 (_ BitVec 32) List!35633) Bool)

(assert (=> b!1527365 (= res!1045536 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35630))))

(declare-fun b!1527366 () Bool)

(declare-fun e!851312 () Bool)

(assert (=> b!1527366 (= e!851313 e!851312)))

(declare-fun res!1045537 () Bool)

(assert (=> b!1527366 (=> (not res!1045537) (not e!851312))))

(declare-datatypes ((SeekEntryResult!13156 0))(
  ( (MissingZero!13156 (index!55018 (_ BitVec 32))) (Found!13156 (index!55019 (_ BitVec 32))) (Intermediate!13156 (undefined!13968 Bool) (index!55020 (_ BitVec 32)) (x!136717 (_ BitVec 32))) (Undefined!13156) (MissingVacant!13156 (index!55021 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101496 (_ BitVec 32)) SeekEntryResult!13156)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101496 (_ BitVec 32)) SeekEntryResult!13156)

(assert (=> b!1527366 (= res!1045537 (= (seekEntryOrOpen!0 (select (arr!48970 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48970 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1527367 () Bool)

(declare-fun e!851315 () Bool)

(assert (=> b!1527367 (= e!851315 (not true))))

(assert (=> b!1527367 e!851314))

(declare-fun res!1045535 () Bool)

(assert (=> b!1527367 (=> (not res!1045535) (not e!851314))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101496 (_ BitVec 32)) Bool)

(assert (=> b!1527367 (= res!1045535 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51052 0))(
  ( (Unit!51053) )
))
(declare-fun lt!661375 () Unit!51052)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101496 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51052)

(assert (=> b!1527367 (= lt!661375 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1527368 () Bool)

(declare-fun res!1045541 () Bool)

(assert (=> b!1527368 (=> (not res!1045541) (not e!851310))))

(assert (=> b!1527368 (= res!1045541 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49521 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49521 a!2804))))))

(declare-fun b!1527369 () Bool)

(declare-fun e!851311 () Bool)

(assert (=> b!1527369 (= e!851311 e!851315)))

(declare-fun res!1045548 () Bool)

(assert (=> b!1527369 (=> (not res!1045548) (not e!851315))))

(declare-fun lt!661373 () array!101496)

(declare-fun lt!661374 () SeekEntryResult!13156)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101496 (_ BitVec 32)) SeekEntryResult!13156)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527369 (= res!1045548 (= lt!661374 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661371 mask!2512) lt!661371 lt!661373 mask!2512)))))

(assert (=> b!1527369 (= lt!661371 (select (store (arr!48970 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1527369 (= lt!661373 (array!101497 (store (arr!48970 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49521 a!2804)))))

(declare-fun b!1527370 () Bool)

(declare-fun res!1045545 () Bool)

(assert (=> b!1527370 (=> (not res!1045545) (not e!851314))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101496 (_ BitVec 32)) SeekEntryResult!13156)

(assert (=> b!1527370 (= res!1045545 (= (seekEntry!0 (select (arr!48970 a!2804) j!70) a!2804 mask!2512) (Found!13156 j!70)))))

(declare-fun b!1527371 () Bool)

(declare-fun res!1045544 () Bool)

(assert (=> b!1527371 (=> (not res!1045544) (not e!851310))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1527371 (= res!1045544 (validKeyInArray!0 (select (arr!48970 a!2804) i!961)))))

(declare-fun b!1527372 () Bool)

(declare-fun res!1045547 () Bool)

(assert (=> b!1527372 (=> (not res!1045547) (not e!851310))))

(assert (=> b!1527372 (= res!1045547 (validKeyInArray!0 (select (arr!48970 a!2804) j!70)))))

(declare-fun b!1527373 () Bool)

(declare-fun res!1045543 () Bool)

(assert (=> b!1527373 (=> (not res!1045543) (not e!851310))))

(assert (=> b!1527373 (= res!1045543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1045538 () Bool)

(assert (=> start!130156 (=> (not res!1045538) (not e!851310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130156 (= res!1045538 (validMask!0 mask!2512))))

(assert (=> start!130156 e!851310))

(assert (=> start!130156 true))

(declare-fun array_inv!37915 (array!101496) Bool)

(assert (=> start!130156 (array_inv!37915 a!2804)))

(declare-fun b!1527374 () Bool)

(assert (=> b!1527374 (= e!851310 e!851311)))

(declare-fun res!1045539 () Bool)

(assert (=> b!1527374 (=> (not res!1045539) (not e!851311))))

(declare-fun lt!661372 () SeekEntryResult!13156)

(assert (=> b!1527374 (= res!1045539 (= lt!661374 lt!661372))))

(assert (=> b!1527374 (= lt!661372 (Intermediate!13156 false resIndex!21 resX!21))))

(assert (=> b!1527374 (= lt!661374 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48970 a!2804) j!70) mask!2512) (select (arr!48970 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527375 () Bool)

(declare-fun res!1045542 () Bool)

(assert (=> b!1527375 (=> (not res!1045542) (not e!851311))))

(assert (=> b!1527375 (= res!1045542 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48970 a!2804) j!70) a!2804 mask!2512) lt!661372))))

(declare-fun b!1527376 () Bool)

(assert (=> b!1527376 (= e!851312 (= (seekEntryOrOpen!0 lt!661371 lt!661373 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661371 lt!661373 mask!2512)))))

(assert (= (and start!130156 res!1045538) b!1527363))

(assert (= (and b!1527363 res!1045546) b!1527371))

(assert (= (and b!1527371 res!1045544) b!1527372))

(assert (= (and b!1527372 res!1045547) b!1527373))

(assert (= (and b!1527373 res!1045543) b!1527365))

(assert (= (and b!1527365 res!1045536) b!1527368))

(assert (= (and b!1527368 res!1045541) b!1527374))

(assert (= (and b!1527374 res!1045539) b!1527375))

(assert (= (and b!1527375 res!1045542) b!1527369))

(assert (= (and b!1527369 res!1045548) b!1527367))

(assert (= (and b!1527367 res!1045535) b!1527370))

(assert (= (and b!1527370 res!1045545) b!1527364))

(assert (= (and b!1527364 (not res!1045540)) b!1527366))

(assert (= (and b!1527366 res!1045537) b!1527376))

(declare-fun m!1410315 () Bool)

(assert (=> b!1527365 m!1410315))

(declare-fun m!1410317 () Bool)

(assert (=> b!1527367 m!1410317))

(declare-fun m!1410319 () Bool)

(assert (=> b!1527367 m!1410319))

(declare-fun m!1410321 () Bool)

(assert (=> b!1527371 m!1410321))

(assert (=> b!1527371 m!1410321))

(declare-fun m!1410323 () Bool)

(assert (=> b!1527371 m!1410323))

(declare-fun m!1410325 () Bool)

(assert (=> b!1527370 m!1410325))

(assert (=> b!1527370 m!1410325))

(declare-fun m!1410327 () Bool)

(assert (=> b!1527370 m!1410327))

(assert (=> b!1527366 m!1410325))

(assert (=> b!1527366 m!1410325))

(declare-fun m!1410329 () Bool)

(assert (=> b!1527366 m!1410329))

(assert (=> b!1527366 m!1410325))

(declare-fun m!1410331 () Bool)

(assert (=> b!1527366 m!1410331))

(declare-fun m!1410333 () Bool)

(assert (=> b!1527376 m!1410333))

(declare-fun m!1410335 () Bool)

(assert (=> b!1527376 m!1410335))

(assert (=> b!1527364 m!1410325))

(declare-fun m!1410337 () Bool)

(assert (=> b!1527364 m!1410337))

(declare-fun m!1410339 () Bool)

(assert (=> b!1527369 m!1410339))

(assert (=> b!1527369 m!1410339))

(declare-fun m!1410341 () Bool)

(assert (=> b!1527369 m!1410341))

(declare-fun m!1410343 () Bool)

(assert (=> b!1527369 m!1410343))

(declare-fun m!1410345 () Bool)

(assert (=> b!1527369 m!1410345))

(assert (=> b!1527372 m!1410325))

(assert (=> b!1527372 m!1410325))

(declare-fun m!1410347 () Bool)

(assert (=> b!1527372 m!1410347))

(assert (=> b!1527375 m!1410325))

(assert (=> b!1527375 m!1410325))

(declare-fun m!1410349 () Bool)

(assert (=> b!1527375 m!1410349))

(declare-fun m!1410351 () Bool)

(assert (=> b!1527373 m!1410351))

(assert (=> b!1527374 m!1410325))

(assert (=> b!1527374 m!1410325))

(declare-fun m!1410353 () Bool)

(assert (=> b!1527374 m!1410353))

(assert (=> b!1527374 m!1410353))

(assert (=> b!1527374 m!1410325))

(declare-fun m!1410355 () Bool)

(assert (=> b!1527374 m!1410355))

(declare-fun m!1410357 () Bool)

(assert (=> start!130156 m!1410357))

(declare-fun m!1410359 () Bool)

(assert (=> start!130156 m!1410359))

(push 1)

