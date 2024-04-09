; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128922 () Bool)

(assert start!128922)

(declare-fun b!1510413 () Bool)

(declare-fun res!1030394 () Bool)

(declare-fun e!843475 () Bool)

(assert (=> b!1510413 (=> (not res!1030394) (not e!843475))))

(declare-datatypes ((array!100691 0))(
  ( (array!100692 (arr!48578 (Array (_ BitVec 32) (_ BitVec 64))) (size!49129 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100691)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100691 (_ BitVec 32)) Bool)

(assert (=> b!1510413 (= res!1030394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510414 () Bool)

(declare-fun res!1030397 () Bool)

(declare-fun e!843476 () Bool)

(assert (=> b!1510414 (=> (not res!1030397) (not e!843476))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12770 0))(
  ( (MissingZero!12770 (index!53474 (_ BitVec 32))) (Found!12770 (index!53475 (_ BitVec 32))) (Intermediate!12770 (undefined!13582 Bool) (index!53476 (_ BitVec 32)) (x!135229 (_ BitVec 32))) (Undefined!12770) (MissingVacant!12770 (index!53477 (_ BitVec 32))) )
))
(declare-fun lt!655134 () SeekEntryResult!12770)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100691 (_ BitVec 32)) SeekEntryResult!12770)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510414 (= res!1030397 (= lt!655134 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48578 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48578 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100692 (store (arr!48578 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49129 a!2804)) mask!2512)))))

(declare-fun b!1510415 () Bool)

(declare-fun res!1030390 () Bool)

(assert (=> b!1510415 (=> (not res!1030390) (not e!843476))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!655133 () SeekEntryResult!12770)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1510415 (= res!1030390 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48578 a!2804) j!70) a!2804 mask!2512) lt!655133))))

(declare-fun b!1510416 () Bool)

(assert (=> b!1510416 (= e!843476 (not true))))

(declare-fun e!843473 () Bool)

(assert (=> b!1510416 e!843473))

(declare-fun res!1030388 () Bool)

(assert (=> b!1510416 (=> (not res!1030388) (not e!843473))))

(assert (=> b!1510416 (= res!1030388 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50364 0))(
  ( (Unit!50365) )
))
(declare-fun lt!655135 () Unit!50364)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50364)

(assert (=> b!1510416 (= lt!655135 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510417 () Bool)

(declare-fun res!1030395 () Bool)

(assert (=> b!1510417 (=> (not res!1030395) (not e!843475))))

(declare-datatypes ((List!35241 0))(
  ( (Nil!35238) (Cons!35237 (h!36650 (_ BitVec 64)) (t!49942 List!35241)) )
))
(declare-fun arrayNoDuplicates!0 (array!100691 (_ BitVec 32) List!35241) Bool)

(assert (=> b!1510417 (= res!1030395 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35238))))

(declare-fun b!1510418 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100691 (_ BitVec 32)) SeekEntryResult!12770)

(assert (=> b!1510418 (= e!843473 (= (seekEntry!0 (select (arr!48578 a!2804) j!70) a!2804 mask!2512) (Found!12770 j!70)))))

(declare-fun b!1510419 () Bool)

(declare-fun res!1030389 () Bool)

(assert (=> b!1510419 (=> (not res!1030389) (not e!843475))))

(assert (=> b!1510419 (= res!1030389 (and (= (size!49129 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49129 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49129 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510421 () Bool)

(declare-fun res!1030393 () Bool)

(assert (=> b!1510421 (=> (not res!1030393) (not e!843475))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510421 (= res!1030393 (validKeyInArray!0 (select (arr!48578 a!2804) j!70)))))

(declare-fun b!1510422 () Bool)

(assert (=> b!1510422 (= e!843475 e!843476)))

(declare-fun res!1030398 () Bool)

(assert (=> b!1510422 (=> (not res!1030398) (not e!843476))))

(assert (=> b!1510422 (= res!1030398 (= lt!655134 lt!655133))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1510422 (= lt!655133 (Intermediate!12770 false resIndex!21 resX!21))))

(assert (=> b!1510422 (= lt!655134 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48578 a!2804) j!70) mask!2512) (select (arr!48578 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510423 () Bool)

(declare-fun res!1030396 () Bool)

(assert (=> b!1510423 (=> (not res!1030396) (not e!843475))))

(assert (=> b!1510423 (= res!1030396 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49129 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49129 a!2804))))))

(declare-fun b!1510420 () Bool)

(declare-fun res!1030392 () Bool)

(assert (=> b!1510420 (=> (not res!1030392) (not e!843475))))

(assert (=> b!1510420 (= res!1030392 (validKeyInArray!0 (select (arr!48578 a!2804) i!961)))))

(declare-fun res!1030391 () Bool)

(assert (=> start!128922 (=> (not res!1030391) (not e!843475))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128922 (= res!1030391 (validMask!0 mask!2512))))

(assert (=> start!128922 e!843475))

(assert (=> start!128922 true))

(declare-fun array_inv!37523 (array!100691) Bool)

(assert (=> start!128922 (array_inv!37523 a!2804)))

(assert (= (and start!128922 res!1030391) b!1510419))

(assert (= (and b!1510419 res!1030389) b!1510420))

(assert (= (and b!1510420 res!1030392) b!1510421))

(assert (= (and b!1510421 res!1030393) b!1510413))

(assert (= (and b!1510413 res!1030394) b!1510417))

(assert (= (and b!1510417 res!1030395) b!1510423))

(assert (= (and b!1510423 res!1030396) b!1510422))

(assert (= (and b!1510422 res!1030398) b!1510415))

(assert (= (and b!1510415 res!1030390) b!1510414))

(assert (= (and b!1510414 res!1030397) b!1510416))

(assert (= (and b!1510416 res!1030388) b!1510418))

(declare-fun m!1393059 () Bool)

(assert (=> b!1510413 m!1393059))

(declare-fun m!1393061 () Bool)

(assert (=> b!1510415 m!1393061))

(assert (=> b!1510415 m!1393061))

(declare-fun m!1393063 () Bool)

(assert (=> b!1510415 m!1393063))

(declare-fun m!1393065 () Bool)

(assert (=> b!1510420 m!1393065))

(assert (=> b!1510420 m!1393065))

(declare-fun m!1393067 () Bool)

(assert (=> b!1510420 m!1393067))

(assert (=> b!1510418 m!1393061))

(assert (=> b!1510418 m!1393061))

(declare-fun m!1393069 () Bool)

(assert (=> b!1510418 m!1393069))

(assert (=> b!1510422 m!1393061))

(assert (=> b!1510422 m!1393061))

(declare-fun m!1393071 () Bool)

(assert (=> b!1510422 m!1393071))

(assert (=> b!1510422 m!1393071))

(assert (=> b!1510422 m!1393061))

(declare-fun m!1393073 () Bool)

(assert (=> b!1510422 m!1393073))

(declare-fun m!1393075 () Bool)

(assert (=> b!1510417 m!1393075))

(declare-fun m!1393077 () Bool)

(assert (=> b!1510416 m!1393077))

(declare-fun m!1393079 () Bool)

(assert (=> b!1510416 m!1393079))

(declare-fun m!1393081 () Bool)

(assert (=> start!128922 m!1393081))

(declare-fun m!1393083 () Bool)

(assert (=> start!128922 m!1393083))

(assert (=> b!1510421 m!1393061))

(assert (=> b!1510421 m!1393061))

(declare-fun m!1393085 () Bool)

(assert (=> b!1510421 m!1393085))

(declare-fun m!1393087 () Bool)

(assert (=> b!1510414 m!1393087))

(declare-fun m!1393089 () Bool)

(assert (=> b!1510414 m!1393089))

(assert (=> b!1510414 m!1393089))

(declare-fun m!1393091 () Bool)

(assert (=> b!1510414 m!1393091))

(assert (=> b!1510414 m!1393091))

(assert (=> b!1510414 m!1393089))

(declare-fun m!1393093 () Bool)

(assert (=> b!1510414 m!1393093))

(check-sat (not b!1510415) (not b!1510421) (not b!1510420) (not b!1510414) (not b!1510422) (not b!1510417) (not b!1510413) (not b!1510416) (not start!128922) (not b!1510418))
(check-sat)
