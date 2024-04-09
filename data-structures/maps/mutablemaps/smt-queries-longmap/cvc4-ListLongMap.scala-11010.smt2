; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128942 () Bool)

(assert start!128942)

(declare-fun b!1510743 () Bool)

(declare-fun res!1030723 () Bool)

(declare-fun e!843594 () Bool)

(assert (=> b!1510743 (=> (not res!1030723) (not e!843594))))

(declare-datatypes ((array!100711 0))(
  ( (array!100712 (arr!48588 (Array (_ BitVec 32) (_ BitVec 64))) (size!49139 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100711)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510743 (= res!1030723 (validKeyInArray!0 (select (arr!48588 a!2804) j!70)))))

(declare-fun b!1510744 () Bool)

(declare-fun res!1030719 () Bool)

(assert (=> b!1510744 (=> (not res!1030719) (not e!843594))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1510744 (= res!1030719 (validKeyInArray!0 (select (arr!48588 a!2804) i!961)))))

(declare-fun b!1510745 () Bool)

(declare-fun e!843596 () Bool)

(assert (=> b!1510745 (= e!843596 (not true))))

(declare-fun e!843593 () Bool)

(assert (=> b!1510745 e!843593))

(declare-fun res!1030718 () Bool)

(assert (=> b!1510745 (=> (not res!1030718) (not e!843593))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100711 (_ BitVec 32)) Bool)

(assert (=> b!1510745 (= res!1030718 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50384 0))(
  ( (Unit!50385) )
))
(declare-fun lt!655224 () Unit!50384)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100711 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50384)

(assert (=> b!1510745 (= lt!655224 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510746 () Bool)

(declare-fun res!1030726 () Bool)

(assert (=> b!1510746 (=> (not res!1030726) (not e!843594))))

(assert (=> b!1510746 (= res!1030726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1030724 () Bool)

(assert (=> start!128942 (=> (not res!1030724) (not e!843594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128942 (= res!1030724 (validMask!0 mask!2512))))

(assert (=> start!128942 e!843594))

(assert (=> start!128942 true))

(declare-fun array_inv!37533 (array!100711) Bool)

(assert (=> start!128942 (array_inv!37533 a!2804)))

(declare-fun b!1510747 () Bool)

(declare-fun res!1030722 () Bool)

(assert (=> b!1510747 (=> (not res!1030722) (not e!843594))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1510747 (= res!1030722 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49139 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49139 a!2804))))))

(declare-fun b!1510748 () Bool)

(declare-fun res!1030728 () Bool)

(assert (=> b!1510748 (=> (not res!1030728) (not e!843594))))

(assert (=> b!1510748 (= res!1030728 (and (= (size!49139 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49139 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49139 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510749 () Bool)

(declare-fun res!1030720 () Bool)

(assert (=> b!1510749 (=> (not res!1030720) (not e!843594))))

(declare-datatypes ((List!35251 0))(
  ( (Nil!35248) (Cons!35247 (h!36660 (_ BitVec 64)) (t!49952 List!35251)) )
))
(declare-fun arrayNoDuplicates!0 (array!100711 (_ BitVec 32) List!35251) Bool)

(assert (=> b!1510749 (= res!1030720 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35248))))

(declare-fun b!1510750 () Bool)

(declare-fun res!1030727 () Bool)

(assert (=> b!1510750 (=> (not res!1030727) (not e!843596))))

(declare-datatypes ((SeekEntryResult!12780 0))(
  ( (MissingZero!12780 (index!53514 (_ BitVec 32))) (Found!12780 (index!53515 (_ BitVec 32))) (Intermediate!12780 (undefined!13592 Bool) (index!53516 (_ BitVec 32)) (x!135263 (_ BitVec 32))) (Undefined!12780) (MissingVacant!12780 (index!53517 (_ BitVec 32))) )
))
(declare-fun lt!655225 () SeekEntryResult!12780)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100711 (_ BitVec 32)) SeekEntryResult!12780)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510750 (= res!1030727 (= lt!655225 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48588 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48588 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100712 (store (arr!48588 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49139 a!2804)) mask!2512)))))

(declare-fun b!1510751 () Bool)

(assert (=> b!1510751 (= e!843594 e!843596)))

(declare-fun res!1030721 () Bool)

(assert (=> b!1510751 (=> (not res!1030721) (not e!843596))))

(declare-fun lt!655223 () SeekEntryResult!12780)

(assert (=> b!1510751 (= res!1030721 (= lt!655225 lt!655223))))

(assert (=> b!1510751 (= lt!655223 (Intermediate!12780 false resIndex!21 resX!21))))

(assert (=> b!1510751 (= lt!655225 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48588 a!2804) j!70) mask!2512) (select (arr!48588 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510752 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100711 (_ BitVec 32)) SeekEntryResult!12780)

(assert (=> b!1510752 (= e!843593 (= (seekEntry!0 (select (arr!48588 a!2804) j!70) a!2804 mask!2512) (Found!12780 j!70)))))

(declare-fun b!1510753 () Bool)

(declare-fun res!1030725 () Bool)

(assert (=> b!1510753 (=> (not res!1030725) (not e!843596))))

(assert (=> b!1510753 (= res!1030725 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48588 a!2804) j!70) a!2804 mask!2512) lt!655223))))

(assert (= (and start!128942 res!1030724) b!1510748))

(assert (= (and b!1510748 res!1030728) b!1510744))

(assert (= (and b!1510744 res!1030719) b!1510743))

(assert (= (and b!1510743 res!1030723) b!1510746))

(assert (= (and b!1510746 res!1030726) b!1510749))

(assert (= (and b!1510749 res!1030720) b!1510747))

(assert (= (and b!1510747 res!1030722) b!1510751))

(assert (= (and b!1510751 res!1030721) b!1510753))

(assert (= (and b!1510753 res!1030725) b!1510750))

(assert (= (and b!1510750 res!1030727) b!1510745))

(assert (= (and b!1510745 res!1030718) b!1510752))

(declare-fun m!1393425 () Bool)

(assert (=> b!1510749 m!1393425))

(declare-fun m!1393427 () Bool)

(assert (=> b!1510746 m!1393427))

(declare-fun m!1393429 () Bool)

(assert (=> b!1510743 m!1393429))

(assert (=> b!1510743 m!1393429))

(declare-fun m!1393431 () Bool)

(assert (=> b!1510743 m!1393431))

(declare-fun m!1393433 () Bool)

(assert (=> start!128942 m!1393433))

(declare-fun m!1393435 () Bool)

(assert (=> start!128942 m!1393435))

(declare-fun m!1393437 () Bool)

(assert (=> b!1510750 m!1393437))

(declare-fun m!1393439 () Bool)

(assert (=> b!1510750 m!1393439))

(assert (=> b!1510750 m!1393439))

(declare-fun m!1393441 () Bool)

(assert (=> b!1510750 m!1393441))

(assert (=> b!1510750 m!1393441))

(assert (=> b!1510750 m!1393439))

(declare-fun m!1393443 () Bool)

(assert (=> b!1510750 m!1393443))

(assert (=> b!1510752 m!1393429))

(assert (=> b!1510752 m!1393429))

(declare-fun m!1393445 () Bool)

(assert (=> b!1510752 m!1393445))

(declare-fun m!1393447 () Bool)

(assert (=> b!1510744 m!1393447))

(assert (=> b!1510744 m!1393447))

(declare-fun m!1393449 () Bool)

(assert (=> b!1510744 m!1393449))

(assert (=> b!1510753 m!1393429))

(assert (=> b!1510753 m!1393429))

(declare-fun m!1393451 () Bool)

(assert (=> b!1510753 m!1393451))

(assert (=> b!1510751 m!1393429))

(assert (=> b!1510751 m!1393429))

(declare-fun m!1393453 () Bool)

(assert (=> b!1510751 m!1393453))

(assert (=> b!1510751 m!1393453))

(assert (=> b!1510751 m!1393429))

(declare-fun m!1393455 () Bool)

(assert (=> b!1510751 m!1393455))

(declare-fun m!1393457 () Bool)

(assert (=> b!1510745 m!1393457))

(declare-fun m!1393459 () Bool)

(assert (=> b!1510745 m!1393459))

(push 1)

(assert (not b!1510750))

