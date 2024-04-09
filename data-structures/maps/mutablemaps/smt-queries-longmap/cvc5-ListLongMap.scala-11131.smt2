; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130114 () Bool)

(assert start!130114)

(declare-fun b!1526481 () Bool)

(declare-fun res!1044659 () Bool)

(declare-fun e!850868 () Bool)

(assert (=> b!1526481 (=> (not res!1044659) (not e!850868))))

(declare-datatypes ((array!101454 0))(
  ( (array!101455 (arr!48949 (Array (_ BitVec 32) (_ BitVec 64))) (size!49500 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101454)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526481 (= res!1044659 (validKeyInArray!0 (select (arr!48949 a!2804) i!961)))))

(declare-fun b!1526482 () Bool)

(declare-fun res!1044666 () Bool)

(assert (=> b!1526482 (=> (not res!1044666) (not e!850868))))

(declare-datatypes ((List!35612 0))(
  ( (Nil!35609) (Cons!35608 (h!37042 (_ BitVec 64)) (t!50313 List!35612)) )
))
(declare-fun arrayNoDuplicates!0 (array!101454 (_ BitVec 32) List!35612) Bool)

(assert (=> b!1526482 (= res!1044666 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35609))))

(declare-fun b!1526483 () Bool)

(declare-fun e!850869 () Bool)

(declare-fun lt!661056 () array!101454)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!661057 () (_ BitVec 64))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13135 0))(
  ( (MissingZero!13135 (index!54934 (_ BitVec 32))) (Found!13135 (index!54935 (_ BitVec 32))) (Intermediate!13135 (undefined!13947 Bool) (index!54936 (_ BitVec 32)) (x!136640 (_ BitVec 32))) (Undefined!13135) (MissingVacant!13135 (index!54937 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101454 (_ BitVec 32)) SeekEntryResult!13135)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101454 (_ BitVec 32)) SeekEntryResult!13135)

(assert (=> b!1526483 (= e!850869 (= (seekEntryOrOpen!0 lt!661057 lt!661056 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661057 lt!661056 mask!2512)))))

(declare-fun b!1526484 () Bool)

(declare-fun res!1044653 () Bool)

(assert (=> b!1526484 (=> (not res!1044653) (not e!850868))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1526484 (= res!1044653 (validKeyInArray!0 (select (arr!48949 a!2804) j!70)))))

(declare-fun b!1526485 () Bool)

(declare-fun res!1044665 () Bool)

(assert (=> b!1526485 (=> (not res!1044665) (not e!850868))))

(assert (=> b!1526485 (= res!1044665 (and (= (size!49500 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49500 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49500 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526486 () Bool)

(declare-fun e!850870 () Bool)

(declare-fun e!850873 () Bool)

(assert (=> b!1526486 (= e!850870 e!850873)))

(declare-fun res!1044658 () Bool)

(assert (=> b!1526486 (=> res!1044658 e!850873)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526486 (= res!1044658 (or (not (= (select (arr!48949 a!2804) j!70) lt!661057)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48949 a!2804) index!487) (select (arr!48949 a!2804) j!70)) (not (= (select (arr!48949 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526487 () Bool)

(declare-fun res!1044654 () Bool)

(declare-fun e!850871 () Bool)

(assert (=> b!1526487 (=> (not res!1044654) (not e!850871))))

(declare-fun lt!661059 () SeekEntryResult!13135)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101454 (_ BitVec 32)) SeekEntryResult!13135)

(assert (=> b!1526487 (= res!1044654 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48949 a!2804) j!70) a!2804 mask!2512) lt!661059))))

(declare-fun b!1526488 () Bool)

(declare-fun res!1044660 () Bool)

(assert (=> b!1526488 (=> (not res!1044660) (not e!850868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101454 (_ BitVec 32)) Bool)

(assert (=> b!1526488 (= res!1044660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526489 () Bool)

(assert (=> b!1526489 (= e!850868 e!850871)))

(declare-fun res!1044663 () Bool)

(assert (=> b!1526489 (=> (not res!1044663) (not e!850871))))

(declare-fun lt!661058 () SeekEntryResult!13135)

(assert (=> b!1526489 (= res!1044663 (= lt!661058 lt!661059))))

(assert (=> b!1526489 (= lt!661059 (Intermediate!13135 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526489 (= lt!661058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48949 a!2804) j!70) mask!2512) (select (arr!48949 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526490 () Bool)

(declare-fun e!850872 () Bool)

(assert (=> b!1526490 (= e!850871 e!850872)))

(declare-fun res!1044661 () Bool)

(assert (=> b!1526490 (=> (not res!1044661) (not e!850872))))

(assert (=> b!1526490 (= res!1044661 (= lt!661058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661057 mask!2512) lt!661057 lt!661056 mask!2512)))))

(assert (=> b!1526490 (= lt!661057 (select (store (arr!48949 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526490 (= lt!661056 (array!101455 (store (arr!48949 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49500 a!2804)))))

(declare-fun b!1526491 () Bool)

(declare-fun res!1044656 () Bool)

(assert (=> b!1526491 (=> (not res!1044656) (not e!850868))))

(assert (=> b!1526491 (= res!1044656 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49500 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49500 a!2804))))))

(declare-fun res!1044662 () Bool)

(assert (=> start!130114 (=> (not res!1044662) (not e!850868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130114 (= res!1044662 (validMask!0 mask!2512))))

(assert (=> start!130114 e!850868))

(assert (=> start!130114 true))

(declare-fun array_inv!37894 (array!101454) Bool)

(assert (=> start!130114 (array_inv!37894 a!2804)))

(declare-fun b!1526492 () Bool)

(assert (=> b!1526492 (= e!850872 (not true))))

(assert (=> b!1526492 e!850870))

(declare-fun res!1044657 () Bool)

(assert (=> b!1526492 (=> (not res!1044657) (not e!850870))))

(assert (=> b!1526492 (= res!1044657 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51010 0))(
  ( (Unit!51011) )
))
(declare-fun lt!661060 () Unit!51010)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101454 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51010)

(assert (=> b!1526492 (= lt!661060 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526493 () Bool)

(declare-fun res!1044655 () Bool)

(assert (=> b!1526493 (=> (not res!1044655) (not e!850870))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101454 (_ BitVec 32)) SeekEntryResult!13135)

(assert (=> b!1526493 (= res!1044655 (= (seekEntry!0 (select (arr!48949 a!2804) j!70) a!2804 mask!2512) (Found!13135 j!70)))))

(declare-fun b!1526494 () Bool)

(assert (=> b!1526494 (= e!850873 e!850869)))

(declare-fun res!1044664 () Bool)

(assert (=> b!1526494 (=> (not res!1044664) (not e!850869))))

(assert (=> b!1526494 (= res!1044664 (= (seekEntryOrOpen!0 (select (arr!48949 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48949 a!2804) j!70) a!2804 mask!2512)))))

(assert (= (and start!130114 res!1044662) b!1526485))

(assert (= (and b!1526485 res!1044665) b!1526481))

(assert (= (and b!1526481 res!1044659) b!1526484))

(assert (= (and b!1526484 res!1044653) b!1526488))

(assert (= (and b!1526488 res!1044660) b!1526482))

(assert (= (and b!1526482 res!1044666) b!1526491))

(assert (= (and b!1526491 res!1044656) b!1526489))

(assert (= (and b!1526489 res!1044663) b!1526487))

(assert (= (and b!1526487 res!1044654) b!1526490))

(assert (= (and b!1526490 res!1044661) b!1526492))

(assert (= (and b!1526492 res!1044657) b!1526493))

(assert (= (and b!1526493 res!1044655) b!1526486))

(assert (= (and b!1526486 (not res!1044658)) b!1526494))

(assert (= (and b!1526494 res!1044664) b!1526483))

(declare-fun m!1409349 () Bool)

(assert (=> b!1526483 m!1409349))

(declare-fun m!1409351 () Bool)

(assert (=> b!1526483 m!1409351))

(declare-fun m!1409353 () Bool)

(assert (=> b!1526486 m!1409353))

(declare-fun m!1409355 () Bool)

(assert (=> b!1526486 m!1409355))

(declare-fun m!1409357 () Bool)

(assert (=> b!1526492 m!1409357))

(declare-fun m!1409359 () Bool)

(assert (=> b!1526492 m!1409359))

(assert (=> b!1526493 m!1409353))

(assert (=> b!1526493 m!1409353))

(declare-fun m!1409361 () Bool)

(assert (=> b!1526493 m!1409361))

(assert (=> b!1526487 m!1409353))

(assert (=> b!1526487 m!1409353))

(declare-fun m!1409363 () Bool)

(assert (=> b!1526487 m!1409363))

(declare-fun m!1409365 () Bool)

(assert (=> b!1526488 m!1409365))

(assert (=> b!1526484 m!1409353))

(assert (=> b!1526484 m!1409353))

(declare-fun m!1409367 () Bool)

(assert (=> b!1526484 m!1409367))

(assert (=> b!1526494 m!1409353))

(assert (=> b!1526494 m!1409353))

(declare-fun m!1409369 () Bool)

(assert (=> b!1526494 m!1409369))

(assert (=> b!1526494 m!1409353))

(declare-fun m!1409371 () Bool)

(assert (=> b!1526494 m!1409371))

(assert (=> b!1526489 m!1409353))

(assert (=> b!1526489 m!1409353))

(declare-fun m!1409373 () Bool)

(assert (=> b!1526489 m!1409373))

(assert (=> b!1526489 m!1409373))

(assert (=> b!1526489 m!1409353))

(declare-fun m!1409375 () Bool)

(assert (=> b!1526489 m!1409375))

(declare-fun m!1409377 () Bool)

(assert (=> b!1526482 m!1409377))

(declare-fun m!1409379 () Bool)

(assert (=> b!1526481 m!1409379))

(assert (=> b!1526481 m!1409379))

(declare-fun m!1409381 () Bool)

(assert (=> b!1526481 m!1409381))

(declare-fun m!1409383 () Bool)

(assert (=> start!130114 m!1409383))

(declare-fun m!1409385 () Bool)

(assert (=> start!130114 m!1409385))

(declare-fun m!1409387 () Bool)

(assert (=> b!1526490 m!1409387))

(assert (=> b!1526490 m!1409387))

(declare-fun m!1409389 () Bool)

(assert (=> b!1526490 m!1409389))

(declare-fun m!1409391 () Bool)

(assert (=> b!1526490 m!1409391))

(declare-fun m!1409393 () Bool)

(assert (=> b!1526490 m!1409393))

(push 1)

