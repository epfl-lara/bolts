; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128904 () Bool)

(assert start!128904)

(declare-fun e!843358 () Bool)

(declare-fun b!1510107 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100673 0))(
  ( (array!100674 (arr!48569 (Array (_ BitVec 32) (_ BitVec 64))) (size!49120 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100673)

(declare-datatypes ((SeekEntryResult!12761 0))(
  ( (MissingZero!12761 (index!53438 (_ BitVec 32))) (Found!12761 (index!53439 (_ BitVec 32))) (Intermediate!12761 (undefined!13573 Bool) (index!53440 (_ BitVec 32)) (x!135196 (_ BitVec 32))) (Undefined!12761) (MissingVacant!12761 (index!53441 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100673 (_ BitVec 32)) SeekEntryResult!12761)

(assert (=> b!1510107 (= e!843358 (= (seekEntry!0 (select (arr!48569 a!2804) j!70) a!2804 mask!2512) (Found!12761 j!70)))))

(declare-fun b!1510108 () Bool)

(declare-fun res!1030084 () Bool)

(declare-fun e!843359 () Bool)

(assert (=> b!1510108 (=> (not res!1030084) (not e!843359))))

(declare-datatypes ((List!35232 0))(
  ( (Nil!35229) (Cons!35228 (h!36641 (_ BitVec 64)) (t!49933 List!35232)) )
))
(declare-fun arrayNoDuplicates!0 (array!100673 (_ BitVec 32) List!35232) Bool)

(assert (=> b!1510108 (= res!1030084 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35229))))

(declare-fun res!1030086 () Bool)

(assert (=> start!128904 (=> (not res!1030086) (not e!843359))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128904 (= res!1030086 (validMask!0 mask!2512))))

(assert (=> start!128904 e!843359))

(assert (=> start!128904 true))

(declare-fun array_inv!37514 (array!100673) Bool)

(assert (=> start!128904 (array_inv!37514 a!2804)))

(declare-fun b!1510109 () Bool)

(declare-fun res!1030088 () Bool)

(assert (=> b!1510109 (=> (not res!1030088) (not e!843359))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1510109 (= res!1030088 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49120 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49120 a!2804))))))

(declare-fun b!1510110 () Bool)

(declare-fun res!1030087 () Bool)

(declare-fun e!843357 () Bool)

(assert (=> b!1510110 (=> (not res!1030087) (not e!843357))))

(declare-fun lt!655053 () SeekEntryResult!12761)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100673 (_ BitVec 32)) SeekEntryResult!12761)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510110 (= res!1030087 (= lt!655053 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48569 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48569 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100674 (store (arr!48569 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49120 a!2804)) mask!2512)))))

(declare-fun b!1510111 () Bool)

(declare-fun res!1030089 () Bool)

(assert (=> b!1510111 (=> (not res!1030089) (not e!843359))))

(assert (=> b!1510111 (= res!1030089 (and (= (size!49120 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49120 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49120 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510112 () Bool)

(declare-fun res!1030090 () Bool)

(assert (=> b!1510112 (=> (not res!1030090) (not e!843359))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100673 (_ BitVec 32)) Bool)

(assert (=> b!1510112 (= res!1030090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510113 () Bool)

(declare-fun res!1030082 () Bool)

(assert (=> b!1510113 (=> (not res!1030082) (not e!843359))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510113 (= res!1030082 (validKeyInArray!0 (select (arr!48569 a!2804) j!70)))))

(declare-fun b!1510114 () Bool)

(declare-fun res!1030091 () Bool)

(assert (=> b!1510114 (=> (not res!1030091) (not e!843359))))

(assert (=> b!1510114 (= res!1030091 (validKeyInArray!0 (select (arr!48569 a!2804) i!961)))))

(declare-fun b!1510115 () Bool)

(assert (=> b!1510115 (= e!843357 (not (or (not (= (select (arr!48569 a!2804) j!70) (select (store (arr!48569 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48569 a!2804) index!487) (select (arr!48569 a!2804) j!70))) (not (= j!70 index!487)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(assert (=> b!1510115 e!843358))

(declare-fun res!1030085 () Bool)

(assert (=> b!1510115 (=> (not res!1030085) (not e!843358))))

(assert (=> b!1510115 (= res!1030085 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50346 0))(
  ( (Unit!50347) )
))
(declare-fun lt!655054 () Unit!50346)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100673 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50346)

(assert (=> b!1510115 (= lt!655054 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510116 () Bool)

(declare-fun res!1030092 () Bool)

(assert (=> b!1510116 (=> (not res!1030092) (not e!843357))))

(declare-fun lt!655052 () SeekEntryResult!12761)

(assert (=> b!1510116 (= res!1030092 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48569 a!2804) j!70) a!2804 mask!2512) lt!655052))))

(declare-fun b!1510117 () Bool)

(assert (=> b!1510117 (= e!843359 e!843357)))

(declare-fun res!1030083 () Bool)

(assert (=> b!1510117 (=> (not res!1030083) (not e!843357))))

(assert (=> b!1510117 (= res!1030083 (= lt!655053 lt!655052))))

(assert (=> b!1510117 (= lt!655052 (Intermediate!12761 false resIndex!21 resX!21))))

(assert (=> b!1510117 (= lt!655053 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48569 a!2804) j!70) mask!2512) (select (arr!48569 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!128904 res!1030086) b!1510111))

(assert (= (and b!1510111 res!1030089) b!1510114))

(assert (= (and b!1510114 res!1030091) b!1510113))

(assert (= (and b!1510113 res!1030082) b!1510112))

(assert (= (and b!1510112 res!1030090) b!1510108))

(assert (= (and b!1510108 res!1030084) b!1510109))

(assert (= (and b!1510109 res!1030088) b!1510117))

(assert (= (and b!1510117 res!1030083) b!1510116))

(assert (= (and b!1510116 res!1030092) b!1510110))

(assert (= (and b!1510110 res!1030087) b!1510115))

(assert (= (and b!1510115 res!1030085) b!1510107))

(declare-fun m!1392719 () Bool)

(assert (=> b!1510117 m!1392719))

(assert (=> b!1510117 m!1392719))

(declare-fun m!1392721 () Bool)

(assert (=> b!1510117 m!1392721))

(assert (=> b!1510117 m!1392721))

(assert (=> b!1510117 m!1392719))

(declare-fun m!1392723 () Bool)

(assert (=> b!1510117 m!1392723))

(assert (=> b!1510113 m!1392719))

(assert (=> b!1510113 m!1392719))

(declare-fun m!1392725 () Bool)

(assert (=> b!1510113 m!1392725))

(declare-fun m!1392727 () Bool)

(assert (=> b!1510114 m!1392727))

(assert (=> b!1510114 m!1392727))

(declare-fun m!1392729 () Bool)

(assert (=> b!1510114 m!1392729))

(assert (=> b!1510116 m!1392719))

(assert (=> b!1510116 m!1392719))

(declare-fun m!1392731 () Bool)

(assert (=> b!1510116 m!1392731))

(assert (=> b!1510107 m!1392719))

(assert (=> b!1510107 m!1392719))

(declare-fun m!1392733 () Bool)

(assert (=> b!1510107 m!1392733))

(declare-fun m!1392735 () Bool)

(assert (=> start!128904 m!1392735))

(declare-fun m!1392737 () Bool)

(assert (=> start!128904 m!1392737))

(declare-fun m!1392739 () Bool)

(assert (=> b!1510112 m!1392739))

(declare-fun m!1392741 () Bool)

(assert (=> b!1510108 m!1392741))

(declare-fun m!1392743 () Bool)

(assert (=> b!1510110 m!1392743))

(declare-fun m!1392745 () Bool)

(assert (=> b!1510110 m!1392745))

(assert (=> b!1510110 m!1392745))

(declare-fun m!1392747 () Bool)

(assert (=> b!1510110 m!1392747))

(assert (=> b!1510110 m!1392747))

(assert (=> b!1510110 m!1392745))

(declare-fun m!1392749 () Bool)

(assert (=> b!1510110 m!1392749))

(assert (=> b!1510115 m!1392719))

(declare-fun m!1392751 () Bool)

(assert (=> b!1510115 m!1392751))

(assert (=> b!1510115 m!1392743))

(declare-fun m!1392753 () Bool)

(assert (=> b!1510115 m!1392753))

(assert (=> b!1510115 m!1392745))

(declare-fun m!1392755 () Bool)

(assert (=> b!1510115 m!1392755))

(check-sat (not b!1510113) (not b!1510116) (not b!1510114) (not b!1510115) (not b!1510117) (not b!1510110) (not b!1510107) (not b!1510112) (not start!128904) (not b!1510108))
(check-sat)
