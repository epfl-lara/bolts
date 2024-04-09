; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129322 () Bool)

(assert start!129322)

(declare-fun res!1038082 () Bool)

(declare-fun e!846950 () Bool)

(assert (=> start!129322 (=> (not res!1038082) (not e!846950))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129322 (= res!1038082 (validMask!0 mask!2512))))

(assert (=> start!129322 e!846950))

(assert (=> start!129322 true))

(declare-datatypes ((array!101091 0))(
  ( (array!101092 (arr!48778 (Array (_ BitVec 32) (_ BitVec 64))) (size!49329 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101091)

(declare-fun array_inv!37723 (array!101091) Bool)

(assert (=> start!129322 (array_inv!37723 a!2804)))

(declare-fun b!1518106 () Bool)

(declare-fun res!1038088 () Bool)

(assert (=> b!1518106 (=> (not res!1038088) (not e!846950))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518106 (= res!1038088 (validKeyInArray!0 (select (arr!48778 a!2804) j!70)))))

(declare-fun b!1518107 () Bool)

(declare-fun e!846951 () Bool)

(declare-fun e!846953 () Bool)

(assert (=> b!1518107 (= e!846951 e!846953)))

(declare-fun res!1038090 () Bool)

(assert (=> b!1518107 (=> res!1038090 e!846953)))

(declare-fun lt!658019 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1518107 (= res!1038090 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658019 #b00000000000000000000000000000000) (bvsge lt!658019 (size!49329 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518107 (= lt!658019 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518108 () Bool)

(declare-fun e!846952 () Bool)

(assert (=> b!1518108 (= e!846950 e!846952)))

(declare-fun res!1038085 () Bool)

(assert (=> b!1518108 (=> (not res!1038085) (not e!846952))))

(declare-datatypes ((SeekEntryResult!12970 0))(
  ( (MissingZero!12970 (index!54274 (_ BitVec 32))) (Found!12970 (index!54275 (_ BitVec 32))) (Intermediate!12970 (undefined!13782 Bool) (index!54276 (_ BitVec 32)) (x!135965 (_ BitVec 32))) (Undefined!12970) (MissingVacant!12970 (index!54277 (_ BitVec 32))) )
))
(declare-fun lt!658018 () SeekEntryResult!12970)

(declare-fun lt!658017 () SeekEntryResult!12970)

(assert (=> b!1518108 (= res!1038085 (= lt!658018 lt!658017))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1518108 (= lt!658017 (Intermediate!12970 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101091 (_ BitVec 32)) SeekEntryResult!12970)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518108 (= lt!658018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48778 a!2804) j!70) mask!2512) (select (arr!48778 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518109 () Bool)

(declare-fun res!1038084 () Bool)

(assert (=> b!1518109 (=> (not res!1038084) (not e!846950))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1518109 (= res!1038084 (validKeyInArray!0 (select (arr!48778 a!2804) i!961)))))

(declare-fun b!1518110 () Bool)

(assert (=> b!1518110 (= e!846953 true)))

(declare-fun lt!658020 () SeekEntryResult!12970)

(assert (=> b!1518110 (= lt!658020 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658019 (select (arr!48778 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518111 () Bool)

(declare-fun res!1038081 () Bool)

(assert (=> b!1518111 (=> (not res!1038081) (not e!846950))))

(assert (=> b!1518111 (= res!1038081 (and (= (size!49329 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49329 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49329 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518112 () Bool)

(declare-fun res!1038091 () Bool)

(assert (=> b!1518112 (=> (not res!1038091) (not e!846950))))

(assert (=> b!1518112 (= res!1038091 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49329 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49329 a!2804))))))

(declare-fun b!1518113 () Bool)

(assert (=> b!1518113 (= e!846952 (not e!846951))))

(declare-fun res!1038089 () Bool)

(assert (=> b!1518113 (=> res!1038089 e!846951)))

(assert (=> b!1518113 (= res!1038089 (or (not (= (select (arr!48778 a!2804) j!70) (select (store (arr!48778 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846948 () Bool)

(assert (=> b!1518113 e!846948))

(declare-fun res!1038086 () Bool)

(assert (=> b!1518113 (=> (not res!1038086) (not e!846948))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101091 (_ BitVec 32)) Bool)

(assert (=> b!1518113 (= res!1038086 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50764 0))(
  ( (Unit!50765) )
))
(declare-fun lt!658021 () Unit!50764)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101091 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50764)

(assert (=> b!1518113 (= lt!658021 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518114 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101091 (_ BitVec 32)) SeekEntryResult!12970)

(assert (=> b!1518114 (= e!846948 (= (seekEntry!0 (select (arr!48778 a!2804) j!70) a!2804 mask!2512) (Found!12970 j!70)))))

(declare-fun b!1518115 () Bool)

(declare-fun res!1038087 () Bool)

(assert (=> b!1518115 (=> (not res!1038087) (not e!846950))))

(assert (=> b!1518115 (= res!1038087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518116 () Bool)

(declare-fun res!1038083 () Bool)

(assert (=> b!1518116 (=> (not res!1038083) (not e!846952))))

(assert (=> b!1518116 (= res!1038083 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48778 a!2804) j!70) a!2804 mask!2512) lt!658017))))

(declare-fun b!1518117 () Bool)

(declare-fun res!1038092 () Bool)

(assert (=> b!1518117 (=> (not res!1038092) (not e!846952))))

(assert (=> b!1518117 (= res!1038092 (= lt!658018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48778 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48778 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101092 (store (arr!48778 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49329 a!2804)) mask!2512)))))

(declare-fun b!1518118 () Bool)

(declare-fun res!1038093 () Bool)

(assert (=> b!1518118 (=> (not res!1038093) (not e!846950))))

(declare-datatypes ((List!35441 0))(
  ( (Nil!35438) (Cons!35437 (h!36850 (_ BitVec 64)) (t!50142 List!35441)) )
))
(declare-fun arrayNoDuplicates!0 (array!101091 (_ BitVec 32) List!35441) Bool)

(assert (=> b!1518118 (= res!1038093 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35438))))

(assert (= (and start!129322 res!1038082) b!1518111))

(assert (= (and b!1518111 res!1038081) b!1518109))

(assert (= (and b!1518109 res!1038084) b!1518106))

(assert (= (and b!1518106 res!1038088) b!1518115))

(assert (= (and b!1518115 res!1038087) b!1518118))

(assert (= (and b!1518118 res!1038093) b!1518112))

(assert (= (and b!1518112 res!1038091) b!1518108))

(assert (= (and b!1518108 res!1038085) b!1518116))

(assert (= (and b!1518116 res!1038083) b!1518117))

(assert (= (and b!1518117 res!1038092) b!1518113))

(assert (= (and b!1518113 res!1038086) b!1518114))

(assert (= (and b!1518113 (not res!1038089)) b!1518107))

(assert (= (and b!1518107 (not res!1038090)) b!1518110))

(declare-fun m!1401471 () Bool)

(assert (=> start!129322 m!1401471))

(declare-fun m!1401473 () Bool)

(assert (=> start!129322 m!1401473))

(declare-fun m!1401475 () Bool)

(assert (=> b!1518114 m!1401475))

(assert (=> b!1518114 m!1401475))

(declare-fun m!1401477 () Bool)

(assert (=> b!1518114 m!1401477))

(assert (=> b!1518106 m!1401475))

(assert (=> b!1518106 m!1401475))

(declare-fun m!1401479 () Bool)

(assert (=> b!1518106 m!1401479))

(declare-fun m!1401481 () Bool)

(assert (=> b!1518109 m!1401481))

(assert (=> b!1518109 m!1401481))

(declare-fun m!1401483 () Bool)

(assert (=> b!1518109 m!1401483))

(declare-fun m!1401485 () Bool)

(assert (=> b!1518117 m!1401485))

(declare-fun m!1401487 () Bool)

(assert (=> b!1518117 m!1401487))

(assert (=> b!1518117 m!1401487))

(declare-fun m!1401489 () Bool)

(assert (=> b!1518117 m!1401489))

(assert (=> b!1518117 m!1401489))

(assert (=> b!1518117 m!1401487))

(declare-fun m!1401491 () Bool)

(assert (=> b!1518117 m!1401491))

(assert (=> b!1518110 m!1401475))

(assert (=> b!1518110 m!1401475))

(declare-fun m!1401493 () Bool)

(assert (=> b!1518110 m!1401493))

(declare-fun m!1401495 () Bool)

(assert (=> b!1518115 m!1401495))

(assert (=> b!1518116 m!1401475))

(assert (=> b!1518116 m!1401475))

(declare-fun m!1401497 () Bool)

(assert (=> b!1518116 m!1401497))

(assert (=> b!1518113 m!1401475))

(declare-fun m!1401499 () Bool)

(assert (=> b!1518113 m!1401499))

(assert (=> b!1518113 m!1401485))

(assert (=> b!1518113 m!1401487))

(declare-fun m!1401501 () Bool)

(assert (=> b!1518113 m!1401501))

(declare-fun m!1401503 () Bool)

(assert (=> b!1518107 m!1401503))

(declare-fun m!1401505 () Bool)

(assert (=> b!1518118 m!1401505))

(assert (=> b!1518108 m!1401475))

(assert (=> b!1518108 m!1401475))

(declare-fun m!1401507 () Bool)

(assert (=> b!1518108 m!1401507))

(assert (=> b!1518108 m!1401507))

(assert (=> b!1518108 m!1401475))

(declare-fun m!1401509 () Bool)

(assert (=> b!1518108 m!1401509))

(push 1)

