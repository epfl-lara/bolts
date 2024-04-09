; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130158 () Bool)

(assert start!130158)

(declare-fun b!1527405 () Bool)

(declare-fun res!1045577 () Bool)

(declare-fun e!851334 () Bool)

(assert (=> b!1527405 (=> (not res!1045577) (not e!851334))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101498 0))(
  ( (array!101499 (arr!48971 (Array (_ BitVec 32) (_ BitVec 64))) (size!49522 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101498)

(assert (=> b!1527405 (= res!1045577 (and (= (size!49522 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49522 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49522 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1527406 () Bool)

(declare-fun e!851335 () Bool)

(declare-fun e!851333 () Bool)

(assert (=> b!1527406 (= e!851335 e!851333)))

(declare-fun res!1045581 () Bool)

(assert (=> b!1527406 (=> (not res!1045581) (not e!851333))))

(declare-fun lt!661388 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13157 0))(
  ( (MissingZero!13157 (index!55022 (_ BitVec 32))) (Found!13157 (index!55023 (_ BitVec 32))) (Intermediate!13157 (undefined!13969 Bool) (index!55024 (_ BitVec 32)) (x!136718 (_ BitVec 32))) (Undefined!13157) (MissingVacant!13157 (index!55025 (_ BitVec 32))) )
))
(declare-fun lt!661387 () SeekEntryResult!13157)

(declare-fun lt!661386 () array!101498)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101498 (_ BitVec 32)) SeekEntryResult!13157)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527406 (= res!1045581 (= lt!661387 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661388 mask!2512) lt!661388 lt!661386 mask!2512)))))

(assert (=> b!1527406 (= lt!661388 (select (store (arr!48971 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1527406 (= lt!661386 (array!101499 (store (arr!48971 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49522 a!2804)))))

(declare-fun b!1527407 () Bool)

(declare-fun e!851336 () Bool)

(declare-fun e!851331 () Bool)

(assert (=> b!1527407 (= e!851336 e!851331)))

(declare-fun res!1045590 () Bool)

(assert (=> b!1527407 (=> (not res!1045590) (not e!851331))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101498 (_ BitVec 32)) SeekEntryResult!13157)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101498 (_ BitVec 32)) SeekEntryResult!13157)

(assert (=> b!1527407 (= res!1045590 (= (seekEntryOrOpen!0 (select (arr!48971 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48971 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1527408 () Bool)

(declare-fun res!1045579 () Bool)

(assert (=> b!1527408 (=> (not res!1045579) (not e!851335))))

(declare-fun lt!661390 () SeekEntryResult!13157)

(assert (=> b!1527408 (= res!1045579 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48971 a!2804) j!70) a!2804 mask!2512) lt!661390))))

(declare-fun b!1527409 () Bool)

(declare-fun res!1045580 () Bool)

(assert (=> b!1527409 (=> (not res!1045580) (not e!851334))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101498 (_ BitVec 32)) Bool)

(assert (=> b!1527409 (= res!1045580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1527410 () Bool)

(assert (=> b!1527410 (= e!851334 e!851335)))

(declare-fun res!1045587 () Bool)

(assert (=> b!1527410 (=> (not res!1045587) (not e!851335))))

(assert (=> b!1527410 (= res!1045587 (= lt!661387 lt!661390))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1527410 (= lt!661390 (Intermediate!13157 false resIndex!21 resX!21))))

(assert (=> b!1527410 (= lt!661387 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48971 a!2804) j!70) mask!2512) (select (arr!48971 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527411 () Bool)

(declare-fun e!851332 () Bool)

(assert (=> b!1527411 (= e!851332 e!851336)))

(declare-fun res!1045578 () Bool)

(assert (=> b!1527411 (=> res!1045578 e!851336)))

(assert (=> b!1527411 (= res!1045578 (or (not (= (select (arr!48971 a!2804) j!70) lt!661388)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48971 a!2804) index!487) (select (arr!48971 a!2804) j!70)) (not (= (select (arr!48971 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1527413 () Bool)

(declare-fun res!1045585 () Bool)

(assert (=> b!1527413 (=> (not res!1045585) (not e!851334))))

(assert (=> b!1527413 (= res!1045585 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49522 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49522 a!2804))))))

(declare-fun b!1527414 () Bool)

(declare-fun res!1045583 () Bool)

(assert (=> b!1527414 (=> (not res!1045583) (not e!851334))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1527414 (= res!1045583 (validKeyInArray!0 (select (arr!48971 a!2804) j!70)))))

(declare-fun b!1527415 () Bool)

(assert (=> b!1527415 (= e!851333 (not true))))

(assert (=> b!1527415 e!851332))

(declare-fun res!1045584 () Bool)

(assert (=> b!1527415 (=> (not res!1045584) (not e!851332))))

(assert (=> b!1527415 (= res!1045584 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51054 0))(
  ( (Unit!51055) )
))
(declare-fun lt!661389 () Unit!51054)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101498 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51054)

(assert (=> b!1527415 (= lt!661389 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1527416 () Bool)

(declare-fun res!1045586 () Bool)

(assert (=> b!1527416 (=> (not res!1045586) (not e!851334))))

(assert (=> b!1527416 (= res!1045586 (validKeyInArray!0 (select (arr!48971 a!2804) i!961)))))

(declare-fun b!1527417 () Bool)

(declare-fun res!1045582 () Bool)

(assert (=> b!1527417 (=> (not res!1045582) (not e!851332))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101498 (_ BitVec 32)) SeekEntryResult!13157)

(assert (=> b!1527417 (= res!1045582 (= (seekEntry!0 (select (arr!48971 a!2804) j!70) a!2804 mask!2512) (Found!13157 j!70)))))

(declare-fun b!1527418 () Bool)

(assert (=> b!1527418 (= e!851331 (= (seekEntryOrOpen!0 lt!661388 lt!661386 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661388 lt!661386 mask!2512)))))

(declare-fun b!1527412 () Bool)

(declare-fun res!1045588 () Bool)

(assert (=> b!1527412 (=> (not res!1045588) (not e!851334))))

(declare-datatypes ((List!35634 0))(
  ( (Nil!35631) (Cons!35630 (h!37064 (_ BitVec 64)) (t!50335 List!35634)) )
))
(declare-fun arrayNoDuplicates!0 (array!101498 (_ BitVec 32) List!35634) Bool)

(assert (=> b!1527412 (= res!1045588 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35631))))

(declare-fun res!1045589 () Bool)

(assert (=> start!130158 (=> (not res!1045589) (not e!851334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130158 (= res!1045589 (validMask!0 mask!2512))))

(assert (=> start!130158 e!851334))

(assert (=> start!130158 true))

(declare-fun array_inv!37916 (array!101498) Bool)

(assert (=> start!130158 (array_inv!37916 a!2804)))

(assert (= (and start!130158 res!1045589) b!1527405))

(assert (= (and b!1527405 res!1045577) b!1527416))

(assert (= (and b!1527416 res!1045586) b!1527414))

(assert (= (and b!1527414 res!1045583) b!1527409))

(assert (= (and b!1527409 res!1045580) b!1527412))

(assert (= (and b!1527412 res!1045588) b!1527413))

(assert (= (and b!1527413 res!1045585) b!1527410))

(assert (= (and b!1527410 res!1045587) b!1527408))

(assert (= (and b!1527408 res!1045579) b!1527406))

(assert (= (and b!1527406 res!1045581) b!1527415))

(assert (= (and b!1527415 res!1045584) b!1527417))

(assert (= (and b!1527417 res!1045582) b!1527411))

(assert (= (and b!1527411 (not res!1045578)) b!1527407))

(assert (= (and b!1527407 res!1045590) b!1527418))

(declare-fun m!1410361 () Bool)

(assert (=> b!1527417 m!1410361))

(assert (=> b!1527417 m!1410361))

(declare-fun m!1410363 () Bool)

(assert (=> b!1527417 m!1410363))

(assert (=> b!1527414 m!1410361))

(assert (=> b!1527414 m!1410361))

(declare-fun m!1410365 () Bool)

(assert (=> b!1527414 m!1410365))

(assert (=> b!1527407 m!1410361))

(assert (=> b!1527407 m!1410361))

(declare-fun m!1410367 () Bool)

(assert (=> b!1527407 m!1410367))

(assert (=> b!1527407 m!1410361))

(declare-fun m!1410369 () Bool)

(assert (=> b!1527407 m!1410369))

(declare-fun m!1410371 () Bool)

(assert (=> b!1527418 m!1410371))

(declare-fun m!1410373 () Bool)

(assert (=> b!1527418 m!1410373))

(assert (=> b!1527410 m!1410361))

(assert (=> b!1527410 m!1410361))

(declare-fun m!1410375 () Bool)

(assert (=> b!1527410 m!1410375))

(assert (=> b!1527410 m!1410375))

(assert (=> b!1527410 m!1410361))

(declare-fun m!1410377 () Bool)

(assert (=> b!1527410 m!1410377))

(declare-fun m!1410379 () Bool)

(assert (=> b!1527406 m!1410379))

(assert (=> b!1527406 m!1410379))

(declare-fun m!1410381 () Bool)

(assert (=> b!1527406 m!1410381))

(declare-fun m!1410383 () Bool)

(assert (=> b!1527406 m!1410383))

(declare-fun m!1410385 () Bool)

(assert (=> b!1527406 m!1410385))

(declare-fun m!1410387 () Bool)

(assert (=> b!1527415 m!1410387))

(declare-fun m!1410389 () Bool)

(assert (=> b!1527415 m!1410389))

(declare-fun m!1410391 () Bool)

(assert (=> b!1527409 m!1410391))

(assert (=> b!1527411 m!1410361))

(declare-fun m!1410393 () Bool)

(assert (=> b!1527411 m!1410393))

(declare-fun m!1410395 () Bool)

(assert (=> start!130158 m!1410395))

(declare-fun m!1410397 () Bool)

(assert (=> start!130158 m!1410397))

(declare-fun m!1410399 () Bool)

(assert (=> b!1527412 m!1410399))

(assert (=> b!1527408 m!1410361))

(assert (=> b!1527408 m!1410361))

(declare-fun m!1410401 () Bool)

(assert (=> b!1527408 m!1410401))

(declare-fun m!1410403 () Bool)

(assert (=> b!1527416 m!1410403))

(assert (=> b!1527416 m!1410403))

(declare-fun m!1410405 () Bool)

(assert (=> b!1527416 m!1410405))

(check-sat (not b!1527417) (not b!1527412) (not b!1527408) (not b!1527406) (not b!1527407) (not b!1527414) (not b!1527410) (not b!1527409) (not b!1527418) (not b!1527415) (not b!1527416) (not start!130158))
(check-sat)
