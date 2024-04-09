; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129822 () Bool)

(assert start!129822)

(declare-fun b!1523385 () Bool)

(declare-fun e!849320 () Bool)

(declare-fun e!849318 () Bool)

(assert (=> b!1523385 (= e!849320 e!849318)))

(declare-fun res!1042430 () Bool)

(assert (=> b!1523385 (=> (not res!1042430) (not e!849318))))

(declare-datatypes ((SeekEntryResult!13085 0))(
  ( (MissingZero!13085 (index!54734 (_ BitVec 32))) (Found!13085 (index!54735 (_ BitVec 32))) (Intermediate!13085 (undefined!13897 Bool) (index!54736 (_ BitVec 32)) (x!136430 (_ BitVec 32))) (Undefined!13085) (MissingVacant!13085 (index!54737 (_ BitVec 32))) )
))
(declare-fun lt!659895 () SeekEntryResult!13085)

(declare-fun lt!659894 () SeekEntryResult!13085)

(assert (=> b!1523385 (= res!1042430 (= lt!659895 lt!659894))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1523385 (= lt!659894 (Intermediate!13085 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101345 0))(
  ( (array!101346 (arr!48899 (Array (_ BitVec 32) (_ BitVec 64))) (size!49450 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101345)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101345 (_ BitVec 32)) SeekEntryResult!13085)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523385 (= lt!659895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48899 a!2804) j!70) mask!2512) (select (arr!48899 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523386 () Bool)

(declare-fun res!1042437 () Bool)

(assert (=> b!1523386 (=> (not res!1042437) (not e!849320))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1523386 (= res!1042437 (and (= (size!49450 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49450 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49450 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523387 () Bool)

(declare-fun res!1042433 () Bool)

(assert (=> b!1523387 (=> (not res!1042433) (not e!849320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523387 (= res!1042433 (validKeyInArray!0 (select (arr!48899 a!2804) i!961)))))

(declare-fun b!1523388 () Bool)

(declare-fun res!1042440 () Bool)

(assert (=> b!1523388 (=> (not res!1042440) (not e!849320))))

(assert (=> b!1523388 (= res!1042440 (validKeyInArray!0 (select (arr!48899 a!2804) j!70)))))

(declare-fun b!1523389 () Bool)

(declare-fun res!1042436 () Bool)

(assert (=> b!1523389 (=> (not res!1042436) (not e!849318))))

(assert (=> b!1523389 (= res!1042436 (= lt!659895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48899 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48899 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101346 (store (arr!48899 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49450 a!2804)) mask!2512)))))

(declare-fun b!1523390 () Bool)

(declare-fun res!1042438 () Bool)

(assert (=> b!1523390 (=> (not res!1042438) (not e!849318))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1523390 (= res!1042438 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48899 a!2804) j!70) a!2804 mask!2512) lt!659894))))

(declare-fun b!1523391 () Bool)

(declare-fun res!1042432 () Bool)

(assert (=> b!1523391 (=> (not res!1042432) (not e!849320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101345 (_ BitVec 32)) Bool)

(assert (=> b!1523391 (= res!1042432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1523392 () Bool)

(assert (=> b!1523392 (= e!849318 (not true))))

(declare-fun e!849317 () Bool)

(assert (=> b!1523392 e!849317))

(declare-fun res!1042435 () Bool)

(assert (=> b!1523392 (=> (not res!1042435) (not e!849317))))

(assert (=> b!1523392 (= res!1042435 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50910 0))(
  ( (Unit!50911) )
))
(declare-fun lt!659896 () Unit!50910)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101345 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50910)

(assert (=> b!1523392 (= lt!659896 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523393 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101345 (_ BitVec 32)) SeekEntryResult!13085)

(assert (=> b!1523393 (= e!849317 (= (seekEntry!0 (select (arr!48899 a!2804) j!70) a!2804 mask!2512) (Found!13085 j!70)))))

(declare-fun b!1523394 () Bool)

(declare-fun res!1042431 () Bool)

(assert (=> b!1523394 (=> (not res!1042431) (not e!849320))))

(assert (=> b!1523394 (= res!1042431 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49450 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49450 a!2804))))))

(declare-fun b!1523395 () Bool)

(declare-fun res!1042434 () Bool)

(assert (=> b!1523395 (=> (not res!1042434) (not e!849320))))

(declare-datatypes ((List!35562 0))(
  ( (Nil!35559) (Cons!35558 (h!36983 (_ BitVec 64)) (t!50263 List!35562)) )
))
(declare-fun arrayNoDuplicates!0 (array!101345 (_ BitVec 32) List!35562) Bool)

(assert (=> b!1523395 (= res!1042434 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35559))))

(declare-fun res!1042439 () Bool)

(assert (=> start!129822 (=> (not res!1042439) (not e!849320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129822 (= res!1042439 (validMask!0 mask!2512))))

(assert (=> start!129822 e!849320))

(assert (=> start!129822 true))

(declare-fun array_inv!37844 (array!101345) Bool)

(assert (=> start!129822 (array_inv!37844 a!2804)))

(assert (= (and start!129822 res!1042439) b!1523386))

(assert (= (and b!1523386 res!1042437) b!1523387))

(assert (= (and b!1523387 res!1042433) b!1523388))

(assert (= (and b!1523388 res!1042440) b!1523391))

(assert (= (and b!1523391 res!1042432) b!1523395))

(assert (= (and b!1523395 res!1042434) b!1523394))

(assert (= (and b!1523394 res!1042431) b!1523385))

(assert (= (and b!1523385 res!1042430) b!1523390))

(assert (= (and b!1523390 res!1042438) b!1523389))

(assert (= (and b!1523389 res!1042436) b!1523392))

(assert (= (and b!1523392 res!1042435) b!1523393))

(declare-fun m!1406559 () Bool)

(assert (=> b!1523387 m!1406559))

(assert (=> b!1523387 m!1406559))

(declare-fun m!1406561 () Bool)

(assert (=> b!1523387 m!1406561))

(declare-fun m!1406563 () Bool)

(assert (=> b!1523392 m!1406563))

(declare-fun m!1406565 () Bool)

(assert (=> b!1523392 m!1406565))

(declare-fun m!1406567 () Bool)

(assert (=> b!1523393 m!1406567))

(assert (=> b!1523393 m!1406567))

(declare-fun m!1406569 () Bool)

(assert (=> b!1523393 m!1406569))

(declare-fun m!1406571 () Bool)

(assert (=> b!1523391 m!1406571))

(declare-fun m!1406573 () Bool)

(assert (=> b!1523389 m!1406573))

(declare-fun m!1406575 () Bool)

(assert (=> b!1523389 m!1406575))

(assert (=> b!1523389 m!1406575))

(declare-fun m!1406577 () Bool)

(assert (=> b!1523389 m!1406577))

(assert (=> b!1523389 m!1406577))

(assert (=> b!1523389 m!1406575))

(declare-fun m!1406579 () Bool)

(assert (=> b!1523389 m!1406579))

(assert (=> b!1523385 m!1406567))

(assert (=> b!1523385 m!1406567))

(declare-fun m!1406581 () Bool)

(assert (=> b!1523385 m!1406581))

(assert (=> b!1523385 m!1406581))

(assert (=> b!1523385 m!1406567))

(declare-fun m!1406583 () Bool)

(assert (=> b!1523385 m!1406583))

(assert (=> b!1523390 m!1406567))

(assert (=> b!1523390 m!1406567))

(declare-fun m!1406585 () Bool)

(assert (=> b!1523390 m!1406585))

(declare-fun m!1406587 () Bool)

(assert (=> b!1523395 m!1406587))

(assert (=> b!1523388 m!1406567))

(assert (=> b!1523388 m!1406567))

(declare-fun m!1406589 () Bool)

(assert (=> b!1523388 m!1406589))

(declare-fun m!1406591 () Bool)

(assert (=> start!129822 m!1406591))

(declare-fun m!1406593 () Bool)

(assert (=> start!129822 m!1406593))

(check-sat (not b!1523388) (not b!1523385) (not b!1523392) (not b!1523393) (not b!1523389) (not start!129822) (not b!1523395) (not b!1523387) (not b!1523390) (not b!1523391))
(check-sat)
