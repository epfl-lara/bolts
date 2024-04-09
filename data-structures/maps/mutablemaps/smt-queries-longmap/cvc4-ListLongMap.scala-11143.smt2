; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130256 () Bool)

(assert start!130256)

(declare-fun b!1528459 () Bool)

(declare-fun res!1046308 () Bool)

(declare-fun e!851912 () Bool)

(assert (=> b!1528459 (=> (not res!1046308) (not e!851912))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101533 0))(
  ( (array!101534 (arr!48987 (Array (_ BitVec 32) (_ BitVec 64))) (size!49538 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101533)

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1528459 (= res!1046308 (and (= (size!49538 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49538 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49538 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528460 () Bool)

(declare-fun res!1046309 () Bool)

(assert (=> b!1528460 (=> (not res!1046309) (not e!851912))))

(declare-datatypes ((List!35650 0))(
  ( (Nil!35647) (Cons!35646 (h!37083 (_ BitVec 64)) (t!50351 List!35650)) )
))
(declare-fun arrayNoDuplicates!0 (array!101533 (_ BitVec 32) List!35650) Bool)

(assert (=> b!1528460 (= res!1046309 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35647))))

(declare-fun b!1528461 () Bool)

(declare-fun res!1046311 () Bool)

(assert (=> b!1528461 (=> (not res!1046311) (not e!851912))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1528461 (= res!1046311 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49538 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49538 a!2804))))))

(declare-fun b!1528462 () Bool)

(declare-fun res!1046313 () Bool)

(assert (=> b!1528462 (=> (not res!1046313) (not e!851912))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101533 (_ BitVec 32)) Bool)

(assert (=> b!1528462 (= res!1046313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528463 () Bool)

(declare-fun e!851914 () Bool)

(assert (=> b!1528463 (= e!851912 e!851914)))

(declare-fun res!1046310 () Bool)

(assert (=> b!1528463 (=> (not res!1046310) (not e!851914))))

(declare-datatypes ((SeekEntryResult!13173 0))(
  ( (MissingZero!13173 (index!55086 (_ BitVec 32))) (Found!13173 (index!55087 (_ BitVec 32))) (Intermediate!13173 (undefined!13985 Bool) (index!55088 (_ BitVec 32)) (x!136783 (_ BitVec 32))) (Undefined!13173) (MissingVacant!13173 (index!55089 (_ BitVec 32))) )
))
(declare-fun lt!662019 () SeekEntryResult!13173)

(declare-fun lt!662014 () SeekEntryResult!13173)

(assert (=> b!1528463 (= res!1046310 (= lt!662019 lt!662014))))

(assert (=> b!1528463 (= lt!662014 (Intermediate!13173 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101533 (_ BitVec 32)) SeekEntryResult!13173)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528463 (= lt!662019 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48987 a!2804) j!70) mask!2512) (select (arr!48987 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!851913 () Bool)

(declare-fun b!1528464 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101533 (_ BitVec 32)) SeekEntryResult!13173)

(assert (=> b!1528464 (= e!851913 (= (seekEntry!0 (select (arr!48987 a!2804) j!70) a!2804 mask!2512) (Found!13173 j!70)))))

(declare-fun b!1528465 () Bool)

(declare-fun e!851918 () Bool)

(declare-fun e!851915 () Bool)

(assert (=> b!1528465 (= e!851918 (not e!851915))))

(declare-fun res!1046304 () Bool)

(assert (=> b!1528465 (=> res!1046304 e!851915)))

(declare-fun lt!662023 () (_ BitVec 64))

(assert (=> b!1528465 (= res!1046304 (or (not (= (select (arr!48987 a!2804) j!70) lt!662023)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48987 a!2804) index!487) (select (arr!48987 a!2804) j!70)) (not (= (select (arr!48987 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1528465 e!851913))

(declare-fun res!1046306 () Bool)

(assert (=> b!1528465 (=> (not res!1046306) (not e!851913))))

(assert (=> b!1528465 (= res!1046306 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51086 0))(
  ( (Unit!51087) )
))
(declare-fun lt!662017 () Unit!51086)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101533 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51086)

(assert (=> b!1528465 (= lt!662017 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528466 () Bool)

(declare-fun res!1046305 () Bool)

(assert (=> b!1528466 (=> (not res!1046305) (not e!851914))))

(assert (=> b!1528466 (= res!1046305 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48987 a!2804) j!70) a!2804 mask!2512) lt!662014))))

(declare-fun res!1046315 () Bool)

(assert (=> start!130256 (=> (not res!1046315) (not e!851912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130256 (= res!1046315 (validMask!0 mask!2512))))

(assert (=> start!130256 e!851912))

(assert (=> start!130256 true))

(declare-fun array_inv!37932 (array!101533) Bool)

(assert (=> start!130256 (array_inv!37932 a!2804)))

(declare-fun b!1528467 () Bool)

(declare-fun e!851916 () Bool)

(assert (=> b!1528467 (= e!851915 e!851916)))

(declare-fun res!1046307 () Bool)

(assert (=> b!1528467 (=> res!1046307 e!851916)))

(declare-fun lt!662016 () SeekEntryResult!13173)

(assert (=> b!1528467 (= res!1046307 (not (= lt!662016 (Found!13173 j!70))))))

(declare-fun lt!662018 () SeekEntryResult!13173)

(declare-fun lt!662015 () SeekEntryResult!13173)

(assert (=> b!1528467 (= lt!662018 lt!662015)))

(declare-fun lt!662021 () array!101533)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101533 (_ BitVec 32)) SeekEntryResult!13173)

(assert (=> b!1528467 (= lt!662015 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!662023 lt!662021 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101533 (_ BitVec 32)) SeekEntryResult!13173)

(assert (=> b!1528467 (= lt!662018 (seekEntryOrOpen!0 lt!662023 lt!662021 mask!2512))))

(declare-fun lt!662022 () SeekEntryResult!13173)

(assert (=> b!1528467 (= lt!662022 lt!662016)))

(assert (=> b!1528467 (= lt!662016 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48987 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528467 (= lt!662022 (seekEntryOrOpen!0 (select (arr!48987 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528468 () Bool)

(declare-fun res!1046314 () Bool)

(assert (=> b!1528468 (=> (not res!1046314) (not e!851912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528468 (= res!1046314 (validKeyInArray!0 (select (arr!48987 a!2804) j!70)))))

(declare-fun b!1528469 () Bool)

(declare-fun res!1046316 () Bool)

(assert (=> b!1528469 (=> (not res!1046316) (not e!851912))))

(assert (=> b!1528469 (= res!1046316 (validKeyInArray!0 (select (arr!48987 a!2804) i!961)))))

(declare-fun b!1528470 () Bool)

(assert (=> b!1528470 (= e!851914 e!851918)))

(declare-fun res!1046312 () Bool)

(assert (=> b!1528470 (=> (not res!1046312) (not e!851918))))

(assert (=> b!1528470 (= res!1046312 (= lt!662019 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!662023 mask!2512) lt!662023 lt!662021 mask!2512)))))

(assert (=> b!1528470 (= lt!662023 (select (store (arr!48987 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528470 (= lt!662021 (array!101534 (store (arr!48987 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49538 a!2804)))))

(declare-fun b!1528471 () Bool)

(assert (=> b!1528471 (= e!851916 true)))

(assert (=> b!1528471 (= lt!662015 lt!662016)))

(declare-fun lt!662020 () Unit!51086)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101533 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51086)

(assert (=> b!1528471 (= lt!662020 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(assert (= (and start!130256 res!1046315) b!1528459))

(assert (= (and b!1528459 res!1046308) b!1528469))

(assert (= (and b!1528469 res!1046316) b!1528468))

(assert (= (and b!1528468 res!1046314) b!1528462))

(assert (= (and b!1528462 res!1046313) b!1528460))

(assert (= (and b!1528460 res!1046309) b!1528461))

(assert (= (and b!1528461 res!1046311) b!1528463))

(assert (= (and b!1528463 res!1046310) b!1528466))

(assert (= (and b!1528466 res!1046305) b!1528470))

(assert (= (and b!1528470 res!1046312) b!1528465))

(assert (= (and b!1528465 res!1046306) b!1528464))

(assert (= (and b!1528465 (not res!1046304)) b!1528467))

(assert (= (and b!1528467 (not res!1046307)) b!1528471))

(declare-fun m!1411377 () Bool)

(assert (=> b!1528468 m!1411377))

(assert (=> b!1528468 m!1411377))

(declare-fun m!1411379 () Bool)

(assert (=> b!1528468 m!1411379))

(declare-fun m!1411381 () Bool)

(assert (=> b!1528470 m!1411381))

(assert (=> b!1528470 m!1411381))

(declare-fun m!1411383 () Bool)

(assert (=> b!1528470 m!1411383))

(declare-fun m!1411385 () Bool)

(assert (=> b!1528470 m!1411385))

(declare-fun m!1411387 () Bool)

(assert (=> b!1528470 m!1411387))

(declare-fun m!1411389 () Bool)

(assert (=> b!1528460 m!1411389))

(assert (=> b!1528467 m!1411377))

(declare-fun m!1411391 () Bool)

(assert (=> b!1528467 m!1411391))

(assert (=> b!1528467 m!1411377))

(declare-fun m!1411393 () Bool)

(assert (=> b!1528467 m!1411393))

(declare-fun m!1411395 () Bool)

(assert (=> b!1528467 m!1411395))

(assert (=> b!1528467 m!1411377))

(declare-fun m!1411397 () Bool)

(assert (=> b!1528467 m!1411397))

(declare-fun m!1411399 () Bool)

(assert (=> b!1528462 m!1411399))

(declare-fun m!1411401 () Bool)

(assert (=> start!130256 m!1411401))

(declare-fun m!1411403 () Bool)

(assert (=> start!130256 m!1411403))

(declare-fun m!1411405 () Bool)

(assert (=> b!1528471 m!1411405))

(assert (=> b!1528465 m!1411377))

(declare-fun m!1411407 () Bool)

(assert (=> b!1528465 m!1411407))

(declare-fun m!1411409 () Bool)

(assert (=> b!1528465 m!1411409))

(declare-fun m!1411411 () Bool)

(assert (=> b!1528465 m!1411411))

(assert (=> b!1528463 m!1411377))

(assert (=> b!1528463 m!1411377))

(declare-fun m!1411413 () Bool)

(assert (=> b!1528463 m!1411413))

(assert (=> b!1528463 m!1411413))

(assert (=> b!1528463 m!1411377))

(declare-fun m!1411415 () Bool)

(assert (=> b!1528463 m!1411415))

(declare-fun m!1411417 () Bool)

(assert (=> b!1528469 m!1411417))

(assert (=> b!1528469 m!1411417))

(declare-fun m!1411419 () Bool)

(assert (=> b!1528469 m!1411419))

(assert (=> b!1528464 m!1411377))

(assert (=> b!1528464 m!1411377))

(declare-fun m!1411421 () Bool)

(assert (=> b!1528464 m!1411421))

(assert (=> b!1528466 m!1411377))

(assert (=> b!1528466 m!1411377))

(declare-fun m!1411423 () Bool)

(assert (=> b!1528466 m!1411423))

(push 1)

