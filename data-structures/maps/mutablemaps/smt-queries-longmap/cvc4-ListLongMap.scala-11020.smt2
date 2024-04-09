; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129002 () Bool)

(assert start!129002)

(declare-fun b!1511767 () Bool)

(declare-fun res!1031749 () Bool)

(declare-fun e!843973 () Bool)

(assert (=> b!1511767 (=> (not res!1031749) (not e!843973))))

(declare-datatypes ((array!100771 0))(
  ( (array!100772 (arr!48618 (Array (_ BitVec 32) (_ BitVec 64))) (size!49169 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100771)

(declare-datatypes ((List!35281 0))(
  ( (Nil!35278) (Cons!35277 (h!36690 (_ BitVec 64)) (t!49982 List!35281)) )
))
(declare-fun arrayNoDuplicates!0 (array!100771 (_ BitVec 32) List!35281) Bool)

(assert (=> b!1511767 (= res!1031749 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35278))))

(declare-fun e!843972 () Bool)

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun b!1511768 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511768 (= e!843972 (not (or (not (= (select (arr!48618 a!2804) j!70) (select (store (arr!48618 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48618 a!2804) index!487) (select (arr!48618 a!2804) j!70)) (not (= (select (arr!48618 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(declare-fun e!843970 () Bool)

(assert (=> b!1511768 e!843970))

(declare-fun res!1031748 () Bool)

(assert (=> b!1511768 (=> (not res!1031748) (not e!843970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100771 (_ BitVec 32)) Bool)

(assert (=> b!1511768 (= res!1031748 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50444 0))(
  ( (Unit!50445) )
))
(declare-fun lt!655493 () Unit!50444)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100771 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50444)

(assert (=> b!1511768 (= lt!655493 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511769 () Bool)

(declare-fun res!1031754 () Bool)

(assert (=> b!1511769 (=> (not res!1031754) (not e!843973))))

(assert (=> b!1511769 (= res!1031754 (and (= (size!49169 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49169 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49169 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511770 () Bool)

(declare-fun e!843971 () Bool)

(assert (=> b!1511770 (= e!843970 e!843971)))

(declare-fun res!1031750 () Bool)

(assert (=> b!1511770 (=> res!1031750 e!843971)))

(assert (=> b!1511770 (= res!1031750 (or (not (= (select (arr!48618 a!2804) j!70) (select (store (arr!48618 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48618 a!2804) index!487) (select (arr!48618 a!2804) j!70)) (not (= (select (arr!48618 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1031747 () Bool)

(assert (=> start!129002 (=> (not res!1031747) (not e!843973))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129002 (= res!1031747 (validMask!0 mask!2512))))

(assert (=> start!129002 e!843973))

(assert (=> start!129002 true))

(declare-fun array_inv!37563 (array!100771) Bool)

(assert (=> start!129002 (array_inv!37563 a!2804)))

(declare-fun b!1511771 () Bool)

(declare-datatypes ((SeekEntryResult!12810 0))(
  ( (MissingZero!12810 (index!53634 (_ BitVec 32))) (Found!12810 (index!53635 (_ BitVec 32))) (Intermediate!12810 (undefined!13622 Bool) (index!53636 (_ BitVec 32)) (x!135373 (_ BitVec 32))) (Undefined!12810) (MissingVacant!12810 (index!53637 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100771 (_ BitVec 32)) SeekEntryResult!12810)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100771 (_ BitVec 32)) SeekEntryResult!12810)

(assert (=> b!1511771 (= e!843971 (= (seekEntryOrOpen!0 (select (arr!48618 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48618 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1511772 () Bool)

(declare-fun res!1031744 () Bool)

(assert (=> b!1511772 (=> (not res!1031744) (not e!843972))))

(declare-fun lt!655495 () SeekEntryResult!12810)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100771 (_ BitVec 32)) SeekEntryResult!12810)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511772 (= res!1031744 (= lt!655495 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48618 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48618 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100772 (store (arr!48618 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49169 a!2804)) mask!2512)))))

(declare-fun b!1511773 () Bool)

(declare-fun res!1031753 () Bool)

(assert (=> b!1511773 (=> (not res!1031753) (not e!843973))))

(assert (=> b!1511773 (= res!1031753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511774 () Bool)

(declare-fun res!1031751 () Bool)

(assert (=> b!1511774 (=> (not res!1031751) (not e!843972))))

(declare-fun lt!655494 () SeekEntryResult!12810)

(assert (=> b!1511774 (= res!1031751 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48618 a!2804) j!70) a!2804 mask!2512) lt!655494))))

(declare-fun b!1511775 () Bool)

(assert (=> b!1511775 (= e!843973 e!843972)))

(declare-fun res!1031742 () Bool)

(assert (=> b!1511775 (=> (not res!1031742) (not e!843972))))

(assert (=> b!1511775 (= res!1031742 (= lt!655495 lt!655494))))

(assert (=> b!1511775 (= lt!655494 (Intermediate!12810 false resIndex!21 resX!21))))

(assert (=> b!1511775 (= lt!655495 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48618 a!2804) j!70) mask!2512) (select (arr!48618 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511776 () Bool)

(declare-fun res!1031745 () Bool)

(assert (=> b!1511776 (=> (not res!1031745) (not e!843973))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511776 (= res!1031745 (validKeyInArray!0 (select (arr!48618 a!2804) i!961)))))

(declare-fun b!1511777 () Bool)

(declare-fun res!1031743 () Bool)

(assert (=> b!1511777 (=> (not res!1031743) (not e!843973))))

(assert (=> b!1511777 (= res!1031743 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49169 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49169 a!2804))))))

(declare-fun b!1511778 () Bool)

(declare-fun res!1031752 () Bool)

(assert (=> b!1511778 (=> (not res!1031752) (not e!843970))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100771 (_ BitVec 32)) SeekEntryResult!12810)

(assert (=> b!1511778 (= res!1031752 (= (seekEntry!0 (select (arr!48618 a!2804) j!70) a!2804 mask!2512) (Found!12810 j!70)))))

(declare-fun b!1511779 () Bool)

(declare-fun res!1031746 () Bool)

(assert (=> b!1511779 (=> (not res!1031746) (not e!843973))))

(assert (=> b!1511779 (= res!1031746 (validKeyInArray!0 (select (arr!48618 a!2804) j!70)))))

(assert (= (and start!129002 res!1031747) b!1511769))

(assert (= (and b!1511769 res!1031754) b!1511776))

(assert (= (and b!1511776 res!1031745) b!1511779))

(assert (= (and b!1511779 res!1031746) b!1511773))

(assert (= (and b!1511773 res!1031753) b!1511767))

(assert (= (and b!1511767 res!1031749) b!1511777))

(assert (= (and b!1511777 res!1031743) b!1511775))

(assert (= (and b!1511775 res!1031742) b!1511774))

(assert (= (and b!1511774 res!1031751) b!1511772))

(assert (= (and b!1511772 res!1031744) b!1511768))

(assert (= (and b!1511768 res!1031748) b!1511778))

(assert (= (and b!1511778 res!1031752) b!1511770))

(assert (= (and b!1511770 (not res!1031750)) b!1511771))

(declare-fun m!1394547 () Bool)

(assert (=> b!1511774 m!1394547))

(assert (=> b!1511774 m!1394547))

(declare-fun m!1394549 () Bool)

(assert (=> b!1511774 m!1394549))

(declare-fun m!1394551 () Bool)

(assert (=> b!1511772 m!1394551))

(declare-fun m!1394553 () Bool)

(assert (=> b!1511772 m!1394553))

(assert (=> b!1511772 m!1394553))

(declare-fun m!1394555 () Bool)

(assert (=> b!1511772 m!1394555))

(assert (=> b!1511772 m!1394555))

(assert (=> b!1511772 m!1394553))

(declare-fun m!1394557 () Bool)

(assert (=> b!1511772 m!1394557))

(assert (=> b!1511779 m!1394547))

(assert (=> b!1511779 m!1394547))

(declare-fun m!1394559 () Bool)

(assert (=> b!1511779 m!1394559))

(declare-fun m!1394561 () Bool)

(assert (=> b!1511767 m!1394561))

(declare-fun m!1394563 () Bool)

(assert (=> b!1511773 m!1394563))

(declare-fun m!1394565 () Bool)

(assert (=> b!1511776 m!1394565))

(assert (=> b!1511776 m!1394565))

(declare-fun m!1394567 () Bool)

(assert (=> b!1511776 m!1394567))

(assert (=> b!1511768 m!1394547))

(declare-fun m!1394569 () Bool)

(assert (=> b!1511768 m!1394569))

(assert (=> b!1511768 m!1394551))

(declare-fun m!1394571 () Bool)

(assert (=> b!1511768 m!1394571))

(assert (=> b!1511768 m!1394553))

(declare-fun m!1394573 () Bool)

(assert (=> b!1511768 m!1394573))

(assert (=> b!1511770 m!1394547))

(assert (=> b!1511770 m!1394551))

(assert (=> b!1511770 m!1394553))

(assert (=> b!1511770 m!1394571))

(declare-fun m!1394575 () Bool)

(assert (=> start!129002 m!1394575))

(declare-fun m!1394577 () Bool)

(assert (=> start!129002 m!1394577))

(assert (=> b!1511771 m!1394547))

(assert (=> b!1511771 m!1394547))

(declare-fun m!1394579 () Bool)

(assert (=> b!1511771 m!1394579))

(assert (=> b!1511771 m!1394547))

(declare-fun m!1394581 () Bool)

(assert (=> b!1511771 m!1394581))

(assert (=> b!1511775 m!1394547))

(assert (=> b!1511775 m!1394547))

(declare-fun m!1394583 () Bool)

(assert (=> b!1511775 m!1394583))

(assert (=> b!1511775 m!1394583))

(assert (=> b!1511775 m!1394547))

(declare-fun m!1394585 () Bool)

(assert (=> b!1511775 m!1394585))

(assert (=> b!1511778 m!1394547))

(assert (=> b!1511778 m!1394547))

(declare-fun m!1394587 () Bool)

(assert (=> b!1511778 m!1394587))

(push 1)

(assert (not b!1511776))

(assert (not start!129002))

