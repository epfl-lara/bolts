; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128932 () Bool)

(assert start!128932)

(declare-fun b!1510578 () Bool)

(declare-fun e!843534 () Bool)

(assert (=> b!1510578 (= e!843534 (not true))))

(declare-fun e!843533 () Bool)

(assert (=> b!1510578 e!843533))

(declare-fun res!1030553 () Bool)

(assert (=> b!1510578 (=> (not res!1030553) (not e!843533))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100701 0))(
  ( (array!100702 (arr!48583 (Array (_ BitVec 32) (_ BitVec 64))) (size!49134 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100701)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100701 (_ BitVec 32)) Bool)

(assert (=> b!1510578 (= res!1030553 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50374 0))(
  ( (Unit!50375) )
))
(declare-fun lt!655179 () Unit!50374)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100701 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50374)

(assert (=> b!1510578 (= lt!655179 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510580 () Bool)

(declare-datatypes ((SeekEntryResult!12775 0))(
  ( (MissingZero!12775 (index!53494 (_ BitVec 32))) (Found!12775 (index!53495 (_ BitVec 32))) (Intermediate!12775 (undefined!13587 Bool) (index!53496 (_ BitVec 32)) (x!135250 (_ BitVec 32))) (Undefined!12775) (MissingVacant!12775 (index!53497 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100701 (_ BitVec 32)) SeekEntryResult!12775)

(assert (=> b!1510580 (= e!843533 (= (seekEntry!0 (select (arr!48583 a!2804) j!70) a!2804 mask!2512) (Found!12775 j!70)))))

(declare-fun b!1510581 () Bool)

(declare-fun res!1030556 () Bool)

(assert (=> b!1510581 (=> (not res!1030556) (not e!843534))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!655180 () SeekEntryResult!12775)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100701 (_ BitVec 32)) SeekEntryResult!12775)

(assert (=> b!1510581 (= res!1030556 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48583 a!2804) j!70) a!2804 mask!2512) lt!655180))))

(declare-fun b!1510582 () Bool)

(declare-fun res!1030557 () Bool)

(assert (=> b!1510582 (=> (not res!1030557) (not e!843534))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!655178 () SeekEntryResult!12775)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510582 (= res!1030557 (= lt!655178 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48583 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48583 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100702 (store (arr!48583 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49134 a!2804)) mask!2512)))))

(declare-fun b!1510583 () Bool)

(declare-fun res!1030561 () Bool)

(declare-fun e!843535 () Bool)

(assert (=> b!1510583 (=> (not res!1030561) (not e!843535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510583 (= res!1030561 (validKeyInArray!0 (select (arr!48583 a!2804) i!961)))))

(declare-fun b!1510584 () Bool)

(declare-fun res!1030560 () Bool)

(assert (=> b!1510584 (=> (not res!1030560) (not e!843535))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1510584 (= res!1030560 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49134 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49134 a!2804))))))

(declare-fun b!1510585 () Bool)

(declare-fun res!1030558 () Bool)

(assert (=> b!1510585 (=> (not res!1030558) (not e!843535))))

(assert (=> b!1510585 (= res!1030558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510586 () Bool)

(assert (=> b!1510586 (= e!843535 e!843534)))

(declare-fun res!1030554 () Bool)

(assert (=> b!1510586 (=> (not res!1030554) (not e!843534))))

(assert (=> b!1510586 (= res!1030554 (= lt!655178 lt!655180))))

(assert (=> b!1510586 (= lt!655180 (Intermediate!12775 false resIndex!21 resX!21))))

(assert (=> b!1510586 (= lt!655178 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48583 a!2804) j!70) mask!2512) (select (arr!48583 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510587 () Bool)

(declare-fun res!1030555 () Bool)

(assert (=> b!1510587 (=> (not res!1030555) (not e!843535))))

(assert (=> b!1510587 (= res!1030555 (validKeyInArray!0 (select (arr!48583 a!2804) j!70)))))

(declare-fun b!1510588 () Bool)

(declare-fun res!1030559 () Bool)

(assert (=> b!1510588 (=> (not res!1030559) (not e!843535))))

(declare-datatypes ((List!35246 0))(
  ( (Nil!35243) (Cons!35242 (h!36655 (_ BitVec 64)) (t!49947 List!35246)) )
))
(declare-fun arrayNoDuplicates!0 (array!100701 (_ BitVec 32) List!35246) Bool)

(assert (=> b!1510588 (= res!1030559 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35243))))

(declare-fun res!1030562 () Bool)

(assert (=> start!128932 (=> (not res!1030562) (not e!843535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128932 (= res!1030562 (validMask!0 mask!2512))))

(assert (=> start!128932 e!843535))

(assert (=> start!128932 true))

(declare-fun array_inv!37528 (array!100701) Bool)

(assert (=> start!128932 (array_inv!37528 a!2804)))

(declare-fun b!1510579 () Bool)

(declare-fun res!1030563 () Bool)

(assert (=> b!1510579 (=> (not res!1030563) (not e!843535))))

(assert (=> b!1510579 (= res!1030563 (and (= (size!49134 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49134 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49134 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128932 res!1030562) b!1510579))

(assert (= (and b!1510579 res!1030563) b!1510583))

(assert (= (and b!1510583 res!1030561) b!1510587))

(assert (= (and b!1510587 res!1030555) b!1510585))

(assert (= (and b!1510585 res!1030558) b!1510588))

(assert (= (and b!1510588 res!1030559) b!1510584))

(assert (= (and b!1510584 res!1030560) b!1510586))

(assert (= (and b!1510586 res!1030554) b!1510581))

(assert (= (and b!1510581 res!1030556) b!1510582))

(assert (= (and b!1510582 res!1030557) b!1510578))

(assert (= (and b!1510578 res!1030553) b!1510580))

(declare-fun m!1393245 () Bool)

(assert (=> b!1510585 m!1393245))

(declare-fun m!1393247 () Bool)

(assert (=> b!1510586 m!1393247))

(assert (=> b!1510586 m!1393247))

(declare-fun m!1393249 () Bool)

(assert (=> b!1510586 m!1393249))

(assert (=> b!1510586 m!1393249))

(assert (=> b!1510586 m!1393247))

(declare-fun m!1393251 () Bool)

(assert (=> b!1510586 m!1393251))

(assert (=> b!1510587 m!1393247))

(assert (=> b!1510587 m!1393247))

(declare-fun m!1393253 () Bool)

(assert (=> b!1510587 m!1393253))

(declare-fun m!1393255 () Bool)

(assert (=> b!1510578 m!1393255))

(declare-fun m!1393257 () Bool)

(assert (=> b!1510578 m!1393257))

(declare-fun m!1393259 () Bool)

(assert (=> b!1510583 m!1393259))

(assert (=> b!1510583 m!1393259))

(declare-fun m!1393261 () Bool)

(assert (=> b!1510583 m!1393261))

(assert (=> b!1510580 m!1393247))

(assert (=> b!1510580 m!1393247))

(declare-fun m!1393263 () Bool)

(assert (=> b!1510580 m!1393263))

(assert (=> b!1510581 m!1393247))

(assert (=> b!1510581 m!1393247))

(declare-fun m!1393265 () Bool)

(assert (=> b!1510581 m!1393265))

(declare-fun m!1393267 () Bool)

(assert (=> b!1510588 m!1393267))

(declare-fun m!1393269 () Bool)

(assert (=> start!128932 m!1393269))

(declare-fun m!1393271 () Bool)

(assert (=> start!128932 m!1393271))

(declare-fun m!1393273 () Bool)

(assert (=> b!1510582 m!1393273))

(declare-fun m!1393275 () Bool)

(assert (=> b!1510582 m!1393275))

(assert (=> b!1510582 m!1393275))

(declare-fun m!1393277 () Bool)

(assert (=> b!1510582 m!1393277))

(assert (=> b!1510582 m!1393277))

(assert (=> b!1510582 m!1393275))

(declare-fun m!1393279 () Bool)

(assert (=> b!1510582 m!1393279))

(push 1)

