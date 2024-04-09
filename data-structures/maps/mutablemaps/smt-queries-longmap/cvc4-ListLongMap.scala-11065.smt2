; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129272 () Bool)

(assert start!129272)

(declare-fun b!1517131 () Bool)

(declare-fun e!846499 () Bool)

(assert (=> b!1517131 (= e!846499 true)))

(declare-fun lt!657643 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12945 0))(
  ( (MissingZero!12945 (index!54174 (_ BitVec 32))) (Found!12945 (index!54175 (_ BitVec 32))) (Intermediate!12945 (undefined!13757 Bool) (index!54176 (_ BitVec 32)) (x!135868 (_ BitVec 32))) (Undefined!12945) (MissingVacant!12945 (index!54177 (_ BitVec 32))) )
))
(declare-fun lt!657645 () SeekEntryResult!12945)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101041 0))(
  ( (array!101042 (arr!48753 (Array (_ BitVec 32) (_ BitVec 64))) (size!49304 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101041)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101041 (_ BitVec 32)) SeekEntryResult!12945)

(assert (=> b!1517131 (= lt!657645 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657643 (select (arr!48753 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517132 () Bool)

(declare-fun res!1037111 () Bool)

(declare-fun e!846501 () Bool)

(assert (=> b!1517132 (=> (not res!1037111) (not e!846501))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!657644 () SeekEntryResult!12945)

(assert (=> b!1517132 (= res!1037111 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48753 a!2804) j!70) a!2804 mask!2512) lt!657644))))

(declare-fun b!1517133 () Bool)

(declare-fun res!1037109 () Bool)

(declare-fun e!846503 () Bool)

(assert (=> b!1517133 (=> (not res!1037109) (not e!846503))))

(declare-datatypes ((List!35416 0))(
  ( (Nil!35413) (Cons!35412 (h!36825 (_ BitVec 64)) (t!50117 List!35416)) )
))
(declare-fun arrayNoDuplicates!0 (array!101041 (_ BitVec 32) List!35416) Bool)

(assert (=> b!1517133 (= res!1037109 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35413))))

(declare-fun b!1517134 () Bool)

(declare-fun res!1037108 () Bool)

(assert (=> b!1517134 (=> (not res!1037108) (not e!846503))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101041 (_ BitVec 32)) Bool)

(assert (=> b!1517134 (= res!1037108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517135 () Bool)

(declare-fun res!1037110 () Bool)

(assert (=> b!1517135 (=> (not res!1037110) (not e!846501))))

(declare-fun lt!657646 () SeekEntryResult!12945)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517135 (= res!1037110 (= lt!657646 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48753 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48753 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101042 (store (arr!48753 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49304 a!2804)) mask!2512)))))

(declare-fun b!1517136 () Bool)

(declare-fun res!1037114 () Bool)

(assert (=> b!1517136 (=> (not res!1037114) (not e!846503))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517136 (= res!1037114 (validKeyInArray!0 (select (arr!48753 a!2804) i!961)))))

(declare-fun b!1517137 () Bool)

(declare-fun e!846498 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101041 (_ BitVec 32)) SeekEntryResult!12945)

(assert (=> b!1517137 (= e!846498 (= (seekEntry!0 (select (arr!48753 a!2804) j!70) a!2804 mask!2512) (Found!12945 j!70)))))

(declare-fun b!1517138 () Bool)

(declare-fun res!1037118 () Bool)

(assert (=> b!1517138 (=> (not res!1037118) (not e!846503))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1517138 (= res!1037118 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49304 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49304 a!2804))))))

(declare-fun b!1517139 () Bool)

(declare-fun res!1037116 () Bool)

(assert (=> b!1517139 (=> (not res!1037116) (not e!846503))))

(assert (=> b!1517139 (= res!1037116 (validKeyInArray!0 (select (arr!48753 a!2804) j!70)))))

(declare-fun res!1037113 () Bool)

(assert (=> start!129272 (=> (not res!1037113) (not e!846503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129272 (= res!1037113 (validMask!0 mask!2512))))

(assert (=> start!129272 e!846503))

(assert (=> start!129272 true))

(declare-fun array_inv!37698 (array!101041) Bool)

(assert (=> start!129272 (array_inv!37698 a!2804)))

(declare-fun b!1517140 () Bool)

(declare-fun res!1037112 () Bool)

(assert (=> b!1517140 (=> (not res!1037112) (not e!846503))))

(assert (=> b!1517140 (= res!1037112 (and (= (size!49304 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49304 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49304 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517141 () Bool)

(declare-fun e!846500 () Bool)

(assert (=> b!1517141 (= e!846501 (not e!846500))))

(declare-fun res!1037106 () Bool)

(assert (=> b!1517141 (=> res!1037106 e!846500)))

(assert (=> b!1517141 (= res!1037106 (or (not (= (select (arr!48753 a!2804) j!70) (select (store (arr!48753 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517141 e!846498))

(declare-fun res!1037107 () Bool)

(assert (=> b!1517141 (=> (not res!1037107) (not e!846498))))

(assert (=> b!1517141 (= res!1037107 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50714 0))(
  ( (Unit!50715) )
))
(declare-fun lt!657642 () Unit!50714)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101041 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50714)

(assert (=> b!1517141 (= lt!657642 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517142 () Bool)

(assert (=> b!1517142 (= e!846500 e!846499)))

(declare-fun res!1037115 () Bool)

(assert (=> b!1517142 (=> res!1037115 e!846499)))

(assert (=> b!1517142 (= res!1037115 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657643 #b00000000000000000000000000000000) (bvsge lt!657643 (size!49304 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517142 (= lt!657643 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517143 () Bool)

(assert (=> b!1517143 (= e!846503 e!846501)))

(declare-fun res!1037117 () Bool)

(assert (=> b!1517143 (=> (not res!1037117) (not e!846501))))

(assert (=> b!1517143 (= res!1037117 (= lt!657646 lt!657644))))

(assert (=> b!1517143 (= lt!657644 (Intermediate!12945 false resIndex!21 resX!21))))

(assert (=> b!1517143 (= lt!657646 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48753 a!2804) j!70) mask!2512) (select (arr!48753 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129272 res!1037113) b!1517140))

(assert (= (and b!1517140 res!1037112) b!1517136))

(assert (= (and b!1517136 res!1037114) b!1517139))

(assert (= (and b!1517139 res!1037116) b!1517134))

(assert (= (and b!1517134 res!1037108) b!1517133))

(assert (= (and b!1517133 res!1037109) b!1517138))

(assert (= (and b!1517138 res!1037118) b!1517143))

(assert (= (and b!1517143 res!1037117) b!1517132))

(assert (= (and b!1517132 res!1037111) b!1517135))

(assert (= (and b!1517135 res!1037110) b!1517141))

(assert (= (and b!1517141 res!1037107) b!1517137))

(assert (= (and b!1517141 (not res!1037106)) b!1517142))

(assert (= (and b!1517142 (not res!1037115)) b!1517131))

(declare-fun m!1400471 () Bool)

(assert (=> b!1517141 m!1400471))

(declare-fun m!1400473 () Bool)

(assert (=> b!1517141 m!1400473))

(declare-fun m!1400475 () Bool)

(assert (=> b!1517141 m!1400475))

(declare-fun m!1400477 () Bool)

(assert (=> b!1517141 m!1400477))

(declare-fun m!1400479 () Bool)

(assert (=> b!1517141 m!1400479))

(declare-fun m!1400481 () Bool)

(assert (=> b!1517136 m!1400481))

(assert (=> b!1517136 m!1400481))

(declare-fun m!1400483 () Bool)

(assert (=> b!1517136 m!1400483))

(assert (=> b!1517143 m!1400471))

(assert (=> b!1517143 m!1400471))

(declare-fun m!1400485 () Bool)

(assert (=> b!1517143 m!1400485))

(assert (=> b!1517143 m!1400485))

(assert (=> b!1517143 m!1400471))

(declare-fun m!1400487 () Bool)

(assert (=> b!1517143 m!1400487))

(assert (=> b!1517132 m!1400471))

(assert (=> b!1517132 m!1400471))

(declare-fun m!1400489 () Bool)

(assert (=> b!1517132 m!1400489))

(assert (=> b!1517137 m!1400471))

(assert (=> b!1517137 m!1400471))

(declare-fun m!1400491 () Bool)

(assert (=> b!1517137 m!1400491))

(declare-fun m!1400493 () Bool)

(assert (=> b!1517133 m!1400493))

(declare-fun m!1400495 () Bool)

(assert (=> b!1517142 m!1400495))

(declare-fun m!1400497 () Bool)

(assert (=> start!129272 m!1400497))

(declare-fun m!1400499 () Bool)

(assert (=> start!129272 m!1400499))

(assert (=> b!1517131 m!1400471))

(assert (=> b!1517131 m!1400471))

(declare-fun m!1400501 () Bool)

(assert (=> b!1517131 m!1400501))

(declare-fun m!1400503 () Bool)

(assert (=> b!1517134 m!1400503))

(assert (=> b!1517135 m!1400475))

(assert (=> b!1517135 m!1400477))

(assert (=> b!1517135 m!1400477))

(declare-fun m!1400505 () Bool)

(assert (=> b!1517135 m!1400505))

(assert (=> b!1517135 m!1400505))

(assert (=> b!1517135 m!1400477))

(declare-fun m!1400507 () Bool)

(assert (=> b!1517135 m!1400507))

(assert (=> b!1517139 m!1400471))

(assert (=> b!1517139 m!1400471))

(declare-fun m!1400509 () Bool)

(assert (=> b!1517139 m!1400509))

(push 1)

