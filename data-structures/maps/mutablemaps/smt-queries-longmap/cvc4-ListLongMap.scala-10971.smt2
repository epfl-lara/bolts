; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128540 () Bool)

(assert start!128540)

(declare-fun res!1027052 () Bool)

(declare-fun e!841988 () Bool)

(assert (=> start!128540 (=> (not res!1027052) (not e!841988))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128540 (= res!1027052 (validMask!0 mask!2512))))

(assert (=> start!128540 e!841988))

(assert (=> start!128540 true))

(declare-datatypes ((array!100465 0))(
  ( (array!100466 (arr!48471 (Array (_ BitVec 32) (_ BitVec 64))) (size!49022 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100465)

(declare-fun array_inv!37416 (array!100465) Bool)

(assert (=> start!128540 (array_inv!37416 a!2804)))

(declare-fun b!1506652 () Bool)

(declare-fun res!1027049 () Bool)

(assert (=> b!1506652 (=> (not res!1027049) (not e!841988))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506652 (= res!1027049 (validKeyInArray!0 (select (arr!48471 a!2804) j!70)))))

(declare-fun b!1506653 () Bool)

(declare-fun res!1027047 () Bool)

(assert (=> b!1506653 (=> (not res!1027047) (not e!841988))))

(declare-datatypes ((List!35134 0))(
  ( (Nil!35131) (Cons!35130 (h!36531 (_ BitVec 64)) (t!49835 List!35134)) )
))
(declare-fun arrayNoDuplicates!0 (array!100465 (_ BitVec 32) List!35134) Bool)

(assert (=> b!1506653 (= res!1027047 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35131))))

(declare-fun b!1506654 () Bool)

(declare-fun res!1027050 () Bool)

(assert (=> b!1506654 (=> (not res!1027050) (not e!841988))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1506654 (= res!1027050 (validKeyInArray!0 (select (arr!48471 a!2804) i!961)))))

(declare-fun b!1506655 () Bool)

(assert (=> b!1506655 (= e!841988 false)))

(declare-datatypes ((SeekEntryResult!12663 0))(
  ( (MissingZero!12663 (index!53046 (_ BitVec 32))) (Found!12663 (index!53047 (_ BitVec 32))) (Intermediate!12663 (undefined!13475 Bool) (index!53048 (_ BitVec 32)) (x!134810 (_ BitVec 32))) (Undefined!12663) (MissingVacant!12663 (index!53049 (_ BitVec 32))) )
))
(declare-fun lt!654223 () SeekEntryResult!12663)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100465 (_ BitVec 32)) SeekEntryResult!12663)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506655 (= lt!654223 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48471 a!2804) j!70) mask!2512) (select (arr!48471 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1506656 () Bool)

(declare-fun res!1027051 () Bool)

(assert (=> b!1506656 (=> (not res!1027051) (not e!841988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100465 (_ BitVec 32)) Bool)

(assert (=> b!1506656 (= res!1027051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506657 () Bool)

(declare-fun res!1027048 () Bool)

(assert (=> b!1506657 (=> (not res!1027048) (not e!841988))))

(assert (=> b!1506657 (= res!1027048 (and (= (size!49022 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49022 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49022 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506658 () Bool)

(declare-fun res!1027053 () Bool)

(assert (=> b!1506658 (=> (not res!1027053) (not e!841988))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1506658 (= res!1027053 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49022 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49022 a!2804))))))

(assert (= (and start!128540 res!1027052) b!1506657))

(assert (= (and b!1506657 res!1027048) b!1506654))

(assert (= (and b!1506654 res!1027050) b!1506652))

(assert (= (and b!1506652 res!1027049) b!1506656))

(assert (= (and b!1506656 res!1027051) b!1506653))

(assert (= (and b!1506653 res!1027047) b!1506658))

(assert (= (and b!1506658 res!1027053) b!1506655))

(declare-fun m!1389625 () Bool)

(assert (=> start!128540 m!1389625))

(declare-fun m!1389627 () Bool)

(assert (=> start!128540 m!1389627))

(declare-fun m!1389629 () Bool)

(assert (=> b!1506655 m!1389629))

(assert (=> b!1506655 m!1389629))

(declare-fun m!1389631 () Bool)

(assert (=> b!1506655 m!1389631))

(assert (=> b!1506655 m!1389631))

(assert (=> b!1506655 m!1389629))

(declare-fun m!1389633 () Bool)

(assert (=> b!1506655 m!1389633))

(declare-fun m!1389635 () Bool)

(assert (=> b!1506653 m!1389635))

(assert (=> b!1506652 m!1389629))

(assert (=> b!1506652 m!1389629))

(declare-fun m!1389637 () Bool)

(assert (=> b!1506652 m!1389637))

(declare-fun m!1389639 () Bool)

(assert (=> b!1506656 m!1389639))

(declare-fun m!1389641 () Bool)

(assert (=> b!1506654 m!1389641))

(assert (=> b!1506654 m!1389641))

(declare-fun m!1389643 () Bool)

(assert (=> b!1506654 m!1389643))

(push 1)

(assert (not b!1506654))

(assert (not b!1506656))

(assert (not b!1506653))

(assert (not b!1506655))

(assert (not b!1506652))

(assert (not start!128540))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

