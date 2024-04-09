; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129042 () Bool)

(assert start!129042)

(declare-fun b!1512556 () Bool)

(declare-fun res!1032535 () Bool)

(declare-fun e!844283 () Bool)

(assert (=> b!1512556 (=> (not res!1032535) (not e!844283))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!100811 0))(
  ( (array!100812 (arr!48638 (Array (_ BitVec 32) (_ BitVec 64))) (size!49189 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100811)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12830 0))(
  ( (MissingZero!12830 (index!53714 (_ BitVec 32))) (Found!12830 (index!53715 (_ BitVec 32))) (Intermediate!12830 (undefined!13642 Bool) (index!53716 (_ BitVec 32)) (x!135449 (_ BitVec 32))) (Undefined!12830) (MissingVacant!12830 (index!53717 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100811 (_ BitVec 32)) SeekEntryResult!12830)

(assert (=> b!1512556 (= res!1032535 (= (seekEntry!0 (select (arr!48638 a!2804) j!70) a!2804 mask!2512) (Found!12830 j!70)))))

(declare-fun b!1512557 () Bool)

(declare-fun res!1032534 () Bool)

(declare-fun e!844281 () Bool)

(assert (=> b!1512557 (=> (not res!1032534) (not e!844281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512557 (= res!1032534 (validKeyInArray!0 (select (arr!48638 a!2804) j!70)))))

(declare-fun b!1512558 () Bool)

(declare-fun e!844280 () Bool)

(assert (=> b!1512558 (= e!844281 e!844280)))

(declare-fun res!1032532 () Bool)

(assert (=> b!1512558 (=> (not res!1032532) (not e!844280))))

(declare-fun lt!655673 () SeekEntryResult!12830)

(declare-fun lt!655674 () SeekEntryResult!12830)

(assert (=> b!1512558 (= res!1032532 (= lt!655673 lt!655674))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1512558 (= lt!655674 (Intermediate!12830 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100811 (_ BitVec 32)) SeekEntryResult!12830)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512558 (= lt!655673 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48638 a!2804) j!70) mask!2512) (select (arr!48638 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512559 () Bool)

(declare-fun e!844279 () Bool)

(assert (=> b!1512559 (= e!844283 e!844279)))

(declare-fun res!1032536 () Bool)

(assert (=> b!1512559 (=> res!1032536 e!844279)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1512559 (= res!1032536 (or (not (= (select (arr!48638 a!2804) j!70) (select (store (arr!48638 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48638 a!2804) index!487) (select (arr!48638 a!2804) j!70)) (not (= (select (arr!48638 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512560 () Bool)

(declare-fun res!1032539 () Bool)

(assert (=> b!1512560 (=> (not res!1032539) (not e!844281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100811 (_ BitVec 32)) Bool)

(assert (=> b!1512560 (= res!1032539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512561 () Bool)

(declare-fun res!1032542 () Bool)

(assert (=> b!1512561 (=> (not res!1032542) (not e!844281))))

(assert (=> b!1512561 (= res!1032542 (and (= (size!49189 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49189 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49189 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512562 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100811 (_ BitVec 32)) SeekEntryResult!12830)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100811 (_ BitVec 32)) SeekEntryResult!12830)

(assert (=> b!1512562 (= e!844279 (= (seekEntryOrOpen!0 (select (arr!48638 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48638 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512563 () Bool)

(declare-fun res!1032531 () Bool)

(assert (=> b!1512563 (=> (not res!1032531) (not e!844280))))

(assert (=> b!1512563 (= res!1032531 (= lt!655673 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48638 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48638 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100812 (store (arr!48638 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49189 a!2804)) mask!2512)))))

(declare-fun b!1512565 () Bool)

(declare-fun res!1032541 () Bool)

(assert (=> b!1512565 (=> (not res!1032541) (not e!844281))))

(assert (=> b!1512565 (= res!1032541 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49189 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49189 a!2804))))))

(declare-fun b!1512566 () Bool)

(declare-fun res!1032540 () Bool)

(assert (=> b!1512566 (=> (not res!1032540) (not e!844281))))

(declare-datatypes ((List!35301 0))(
  ( (Nil!35298) (Cons!35297 (h!36710 (_ BitVec 64)) (t!50002 List!35301)) )
))
(declare-fun arrayNoDuplicates!0 (array!100811 (_ BitVec 32) List!35301) Bool)

(assert (=> b!1512566 (= res!1032540 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35298))))

(declare-fun b!1512567 () Bool)

(declare-fun res!1032537 () Bool)

(assert (=> b!1512567 (=> (not res!1032537) (not e!844280))))

(assert (=> b!1512567 (= res!1032537 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48638 a!2804) j!70) a!2804 mask!2512) lt!655674))))

(declare-fun b!1512568 () Bool)

(assert (=> b!1512568 (= e!844280 (not true))))

(assert (=> b!1512568 e!844283))

(declare-fun res!1032543 () Bool)

(assert (=> b!1512568 (=> (not res!1032543) (not e!844283))))

(assert (=> b!1512568 (= res!1032543 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50484 0))(
  ( (Unit!50485) )
))
(declare-fun lt!655675 () Unit!50484)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50484)

(assert (=> b!1512568 (= lt!655675 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1032538 () Bool)

(assert (=> start!129042 (=> (not res!1032538) (not e!844281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129042 (= res!1032538 (validMask!0 mask!2512))))

(assert (=> start!129042 e!844281))

(assert (=> start!129042 true))

(declare-fun array_inv!37583 (array!100811) Bool)

(assert (=> start!129042 (array_inv!37583 a!2804)))

(declare-fun b!1512564 () Bool)

(declare-fun res!1032533 () Bool)

(assert (=> b!1512564 (=> (not res!1032533) (not e!844281))))

(assert (=> b!1512564 (= res!1032533 (validKeyInArray!0 (select (arr!48638 a!2804) i!961)))))

(assert (= (and start!129042 res!1032538) b!1512561))

(assert (= (and b!1512561 res!1032542) b!1512564))

(assert (= (and b!1512564 res!1032533) b!1512557))

(assert (= (and b!1512557 res!1032534) b!1512560))

(assert (= (and b!1512560 res!1032539) b!1512566))

(assert (= (and b!1512566 res!1032540) b!1512565))

(assert (= (and b!1512565 res!1032541) b!1512558))

(assert (= (and b!1512558 res!1032532) b!1512567))

(assert (= (and b!1512567 res!1032537) b!1512563))

(assert (= (and b!1512563 res!1032531) b!1512568))

(assert (= (and b!1512568 res!1032543) b!1512556))

(assert (= (and b!1512556 res!1032535) b!1512559))

(assert (= (and b!1512559 (not res!1032536)) b!1512562))

(declare-fun m!1395393 () Bool)

(assert (=> b!1512564 m!1395393))

(assert (=> b!1512564 m!1395393))

(declare-fun m!1395395 () Bool)

(assert (=> b!1512564 m!1395395))

(declare-fun m!1395397 () Bool)

(assert (=> start!129042 m!1395397))

(declare-fun m!1395399 () Bool)

(assert (=> start!129042 m!1395399))

(declare-fun m!1395401 () Bool)

(assert (=> b!1512557 m!1395401))

(assert (=> b!1512557 m!1395401))

(declare-fun m!1395403 () Bool)

(assert (=> b!1512557 m!1395403))

(assert (=> b!1512558 m!1395401))

(assert (=> b!1512558 m!1395401))

(declare-fun m!1395405 () Bool)

(assert (=> b!1512558 m!1395405))

(assert (=> b!1512558 m!1395405))

(assert (=> b!1512558 m!1395401))

(declare-fun m!1395407 () Bool)

(assert (=> b!1512558 m!1395407))

(declare-fun m!1395409 () Bool)

(assert (=> b!1512560 m!1395409))

(assert (=> b!1512567 m!1395401))

(assert (=> b!1512567 m!1395401))

(declare-fun m!1395411 () Bool)

(assert (=> b!1512567 m!1395411))

(assert (=> b!1512562 m!1395401))

(assert (=> b!1512562 m!1395401))

(declare-fun m!1395413 () Bool)

(assert (=> b!1512562 m!1395413))

(assert (=> b!1512562 m!1395401))

(declare-fun m!1395415 () Bool)

(assert (=> b!1512562 m!1395415))

(declare-fun m!1395417 () Bool)

(assert (=> b!1512568 m!1395417))

(declare-fun m!1395419 () Bool)

(assert (=> b!1512568 m!1395419))

(assert (=> b!1512559 m!1395401))

(declare-fun m!1395421 () Bool)

(assert (=> b!1512559 m!1395421))

(declare-fun m!1395423 () Bool)

(assert (=> b!1512559 m!1395423))

(declare-fun m!1395425 () Bool)

(assert (=> b!1512559 m!1395425))

(assert (=> b!1512556 m!1395401))

(assert (=> b!1512556 m!1395401))

(declare-fun m!1395427 () Bool)

(assert (=> b!1512556 m!1395427))

(assert (=> b!1512563 m!1395421))

(assert (=> b!1512563 m!1395423))

(assert (=> b!1512563 m!1395423))

(declare-fun m!1395429 () Bool)

(assert (=> b!1512563 m!1395429))

(assert (=> b!1512563 m!1395429))

(assert (=> b!1512563 m!1395423))

(declare-fun m!1395431 () Bool)

(assert (=> b!1512563 m!1395431))

(declare-fun m!1395433 () Bool)

(assert (=> b!1512566 m!1395433))

(check-sat (not b!1512560) (not b!1512564) (not start!129042) (not b!1512567) (not b!1512568) (not b!1512556) (not b!1512562) (not b!1512563) (not b!1512558) (not b!1512566) (not b!1512557))
(check-sat)
