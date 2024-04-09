; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130120 () Bool)

(assert start!130120)

(declare-fun b!1526607 () Bool)

(declare-fun e!850937 () Bool)

(declare-fun e!850931 () Bool)

(assert (=> b!1526607 (= e!850937 e!850931)))

(declare-fun res!1044784 () Bool)

(assert (=> b!1526607 (=> (not res!1044784) (not e!850931))))

(declare-datatypes ((SeekEntryResult!13138 0))(
  ( (MissingZero!13138 (index!54946 (_ BitVec 32))) (Found!13138 (index!54947 (_ BitVec 32))) (Intermediate!13138 (undefined!13950 Bool) (index!54948 (_ BitVec 32)) (x!136651 (_ BitVec 32))) (Undefined!13138) (MissingVacant!13138 (index!54949 (_ BitVec 32))) )
))
(declare-fun lt!661103 () SeekEntryResult!13138)

(declare-fun lt!661104 () SeekEntryResult!13138)

(assert (=> b!1526607 (= res!1044784 (= lt!661103 lt!661104))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1526607 (= lt!661104 (Intermediate!13138 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101460 0))(
  ( (array!101461 (arr!48952 (Array (_ BitVec 32) (_ BitVec 64))) (size!49503 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101460)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101460 (_ BitVec 32)) SeekEntryResult!13138)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526607 (= lt!661103 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48952 a!2804) j!70) mask!2512) (select (arr!48952 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1044780 () Bool)

(assert (=> start!130120 (=> (not res!1044780) (not e!850937))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130120 (= res!1044780 (validMask!0 mask!2512))))

(assert (=> start!130120 e!850937))

(assert (=> start!130120 true))

(declare-fun array_inv!37897 (array!101460) Bool)

(assert (=> start!130120 (array_inv!37897 a!2804)))

(declare-fun b!1526608 () Bool)

(declare-fun e!850935 () Bool)

(assert (=> b!1526608 (= e!850935 (not true))))

(declare-fun e!850934 () Bool)

(assert (=> b!1526608 e!850934))

(declare-fun res!1044788 () Bool)

(assert (=> b!1526608 (=> (not res!1044788) (not e!850934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101460 (_ BitVec 32)) Bool)

(assert (=> b!1526608 (= res!1044788 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51016 0))(
  ( (Unit!51017) )
))
(declare-fun lt!661105 () Unit!51016)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101460 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51016)

(assert (=> b!1526608 (= lt!661105 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun lt!661101 () (_ BitVec 64))

(declare-fun b!1526609 () Bool)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!661102 () array!101460)

(declare-fun e!850936 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101460 (_ BitVec 32)) SeekEntryResult!13138)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101460 (_ BitVec 32)) SeekEntryResult!13138)

(assert (=> b!1526609 (= e!850936 (= (seekEntryOrOpen!0 lt!661101 lt!661102 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661101 lt!661102 mask!2512)))))

(declare-fun b!1526610 () Bool)

(declare-fun res!1044786 () Bool)

(assert (=> b!1526610 (=> (not res!1044786) (not e!850937))))

(declare-datatypes ((List!35615 0))(
  ( (Nil!35612) (Cons!35611 (h!37045 (_ BitVec 64)) (t!50316 List!35615)) )
))
(declare-fun arrayNoDuplicates!0 (array!101460 (_ BitVec 32) List!35615) Bool)

(assert (=> b!1526610 (= res!1044786 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35612))))

(declare-fun b!1526611 () Bool)

(declare-fun res!1044791 () Bool)

(assert (=> b!1526611 (=> (not res!1044791) (not e!850937))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526611 (= res!1044791 (validKeyInArray!0 (select (arr!48952 a!2804) j!70)))))

(declare-fun b!1526612 () Bool)

(declare-fun res!1044779 () Bool)

(assert (=> b!1526612 (=> (not res!1044779) (not e!850937))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1526612 (= res!1044779 (and (= (size!49503 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49503 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49503 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526613 () Bool)

(declare-fun e!850932 () Bool)

(assert (=> b!1526613 (= e!850934 e!850932)))

(declare-fun res!1044792 () Bool)

(assert (=> b!1526613 (=> res!1044792 e!850932)))

(assert (=> b!1526613 (= res!1044792 (or (not (= (select (arr!48952 a!2804) j!70) lt!661101)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48952 a!2804) index!487) (select (arr!48952 a!2804) j!70)) (not (= (select (arr!48952 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526614 () Bool)

(declare-fun res!1044783 () Bool)

(assert (=> b!1526614 (=> (not res!1044783) (not e!850937))))

(assert (=> b!1526614 (= res!1044783 (validKeyInArray!0 (select (arr!48952 a!2804) i!961)))))

(declare-fun b!1526615 () Bool)

(declare-fun res!1044789 () Bool)

(assert (=> b!1526615 (=> (not res!1044789) (not e!850937))))

(assert (=> b!1526615 (= res!1044789 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49503 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49503 a!2804))))))

(declare-fun b!1526616 () Bool)

(assert (=> b!1526616 (= e!850931 e!850935)))

(declare-fun res!1044781 () Bool)

(assert (=> b!1526616 (=> (not res!1044781) (not e!850935))))

(assert (=> b!1526616 (= res!1044781 (= lt!661103 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661101 mask!2512) lt!661101 lt!661102 mask!2512)))))

(assert (=> b!1526616 (= lt!661101 (select (store (arr!48952 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526616 (= lt!661102 (array!101461 (store (arr!48952 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49503 a!2804)))))

(declare-fun b!1526617 () Bool)

(assert (=> b!1526617 (= e!850932 e!850936)))

(declare-fun res!1044787 () Bool)

(assert (=> b!1526617 (=> (not res!1044787) (not e!850936))))

(assert (=> b!1526617 (= res!1044787 (= (seekEntryOrOpen!0 (select (arr!48952 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48952 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526618 () Bool)

(declare-fun res!1044782 () Bool)

(assert (=> b!1526618 (=> (not res!1044782) (not e!850931))))

(assert (=> b!1526618 (= res!1044782 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48952 a!2804) j!70) a!2804 mask!2512) lt!661104))))

(declare-fun b!1526619 () Bool)

(declare-fun res!1044790 () Bool)

(assert (=> b!1526619 (=> (not res!1044790) (not e!850934))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101460 (_ BitVec 32)) SeekEntryResult!13138)

(assert (=> b!1526619 (= res!1044790 (= (seekEntry!0 (select (arr!48952 a!2804) j!70) a!2804 mask!2512) (Found!13138 j!70)))))

(declare-fun b!1526620 () Bool)

(declare-fun res!1044785 () Bool)

(assert (=> b!1526620 (=> (not res!1044785) (not e!850937))))

(assert (=> b!1526620 (= res!1044785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!130120 res!1044780) b!1526612))

(assert (= (and b!1526612 res!1044779) b!1526614))

(assert (= (and b!1526614 res!1044783) b!1526611))

(assert (= (and b!1526611 res!1044791) b!1526620))

(assert (= (and b!1526620 res!1044785) b!1526610))

(assert (= (and b!1526610 res!1044786) b!1526615))

(assert (= (and b!1526615 res!1044789) b!1526607))

(assert (= (and b!1526607 res!1044784) b!1526618))

(assert (= (and b!1526618 res!1044782) b!1526616))

(assert (= (and b!1526616 res!1044781) b!1526608))

(assert (= (and b!1526608 res!1044788) b!1526619))

(assert (= (and b!1526619 res!1044790) b!1526613))

(assert (= (and b!1526613 (not res!1044792)) b!1526617))

(assert (= (and b!1526617 res!1044787) b!1526609))

(declare-fun m!1409487 () Bool)

(assert (=> b!1526614 m!1409487))

(assert (=> b!1526614 m!1409487))

(declare-fun m!1409489 () Bool)

(assert (=> b!1526614 m!1409489))

(declare-fun m!1409491 () Bool)

(assert (=> b!1526609 m!1409491))

(declare-fun m!1409493 () Bool)

(assert (=> b!1526609 m!1409493))

(declare-fun m!1409495 () Bool)

(assert (=> b!1526607 m!1409495))

(assert (=> b!1526607 m!1409495))

(declare-fun m!1409497 () Bool)

(assert (=> b!1526607 m!1409497))

(assert (=> b!1526607 m!1409497))

(assert (=> b!1526607 m!1409495))

(declare-fun m!1409499 () Bool)

(assert (=> b!1526607 m!1409499))

(assert (=> b!1526617 m!1409495))

(assert (=> b!1526617 m!1409495))

(declare-fun m!1409501 () Bool)

(assert (=> b!1526617 m!1409501))

(assert (=> b!1526617 m!1409495))

(declare-fun m!1409503 () Bool)

(assert (=> b!1526617 m!1409503))

(assert (=> b!1526611 m!1409495))

(assert (=> b!1526611 m!1409495))

(declare-fun m!1409505 () Bool)

(assert (=> b!1526611 m!1409505))

(declare-fun m!1409507 () Bool)

(assert (=> start!130120 m!1409507))

(declare-fun m!1409509 () Bool)

(assert (=> start!130120 m!1409509))

(assert (=> b!1526618 m!1409495))

(assert (=> b!1526618 m!1409495))

(declare-fun m!1409511 () Bool)

(assert (=> b!1526618 m!1409511))

(declare-fun m!1409513 () Bool)

(assert (=> b!1526616 m!1409513))

(assert (=> b!1526616 m!1409513))

(declare-fun m!1409515 () Bool)

(assert (=> b!1526616 m!1409515))

(declare-fun m!1409517 () Bool)

(assert (=> b!1526616 m!1409517))

(declare-fun m!1409519 () Bool)

(assert (=> b!1526616 m!1409519))

(declare-fun m!1409521 () Bool)

(assert (=> b!1526610 m!1409521))

(assert (=> b!1526619 m!1409495))

(assert (=> b!1526619 m!1409495))

(declare-fun m!1409523 () Bool)

(assert (=> b!1526619 m!1409523))

(assert (=> b!1526613 m!1409495))

(declare-fun m!1409525 () Bool)

(assert (=> b!1526613 m!1409525))

(declare-fun m!1409527 () Bool)

(assert (=> b!1526608 m!1409527))

(declare-fun m!1409529 () Bool)

(assert (=> b!1526608 m!1409529))

(declare-fun m!1409531 () Bool)

(assert (=> b!1526620 m!1409531))

(push 1)

