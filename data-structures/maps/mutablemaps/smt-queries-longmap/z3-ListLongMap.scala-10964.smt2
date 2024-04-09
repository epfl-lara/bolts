; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128460 () Bool)

(assert start!128460)

(declare-fun b!1506100 () Bool)

(declare-fun res!1026532 () Bool)

(declare-fun e!841793 () Bool)

(assert (=> b!1506100 (=> (not res!1026532) (not e!841793))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100418 0))(
  ( (array!100419 (arr!48449 (Array (_ BitVec 32) (_ BitVec 64))) (size!49000 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100418)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506100 (= res!1026532 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49000 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49000 a!2804))))))

(declare-fun b!1506101 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1506101 (= e!841793 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun lt!654121 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506101 (= lt!654121 (toIndex!0 (select (arr!48449 a!2804) j!70) mask!2512))))

(declare-fun b!1506102 () Bool)

(declare-fun res!1026534 () Bool)

(assert (=> b!1506102 (=> (not res!1026534) (not e!841793))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1506102 (= res!1026534 (and (= (size!49000 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49000 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49000 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506103 () Bool)

(declare-fun res!1026533 () Bool)

(assert (=> b!1506103 (=> (not res!1026533) (not e!841793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506103 (= res!1026533 (validKeyInArray!0 (select (arr!48449 a!2804) i!961)))))

(declare-fun res!1026529 () Bool)

(assert (=> start!128460 (=> (not res!1026529) (not e!841793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128460 (= res!1026529 (validMask!0 mask!2512))))

(assert (=> start!128460 e!841793))

(assert (=> start!128460 true))

(declare-fun array_inv!37394 (array!100418) Bool)

(assert (=> start!128460 (array_inv!37394 a!2804)))

(declare-fun b!1506104 () Bool)

(declare-fun res!1026530 () Bool)

(assert (=> b!1506104 (=> (not res!1026530) (not e!841793))))

(declare-datatypes ((List!35112 0))(
  ( (Nil!35109) (Cons!35108 (h!36506 (_ BitVec 64)) (t!49813 List!35112)) )
))
(declare-fun arrayNoDuplicates!0 (array!100418 (_ BitVec 32) List!35112) Bool)

(assert (=> b!1506104 (= res!1026530 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35109))))

(declare-fun b!1506105 () Bool)

(declare-fun res!1026531 () Bool)

(assert (=> b!1506105 (=> (not res!1026531) (not e!841793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100418 (_ BitVec 32)) Bool)

(assert (=> b!1506105 (= res!1026531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506106 () Bool)

(declare-fun res!1026528 () Bool)

(assert (=> b!1506106 (=> (not res!1026528) (not e!841793))))

(assert (=> b!1506106 (= res!1026528 (validKeyInArray!0 (select (arr!48449 a!2804) j!70)))))

(assert (= (and start!128460 res!1026529) b!1506102))

(assert (= (and b!1506102 res!1026534) b!1506103))

(assert (= (and b!1506103 res!1026533) b!1506106))

(assert (= (and b!1506106 res!1026528) b!1506105))

(assert (= (and b!1506105 res!1026531) b!1506104))

(assert (= (and b!1506104 res!1026530) b!1506100))

(assert (= (and b!1506100 res!1026532) b!1506101))

(declare-fun m!1389165 () Bool)

(assert (=> start!128460 m!1389165))

(declare-fun m!1389167 () Bool)

(assert (=> start!128460 m!1389167))

(declare-fun m!1389169 () Bool)

(assert (=> b!1506101 m!1389169))

(assert (=> b!1506101 m!1389169))

(declare-fun m!1389171 () Bool)

(assert (=> b!1506101 m!1389171))

(declare-fun m!1389173 () Bool)

(assert (=> b!1506103 m!1389173))

(assert (=> b!1506103 m!1389173))

(declare-fun m!1389175 () Bool)

(assert (=> b!1506103 m!1389175))

(assert (=> b!1506106 m!1389169))

(assert (=> b!1506106 m!1389169))

(declare-fun m!1389177 () Bool)

(assert (=> b!1506106 m!1389177))

(declare-fun m!1389179 () Bool)

(assert (=> b!1506105 m!1389179))

(declare-fun m!1389181 () Bool)

(assert (=> b!1506104 m!1389181))

(check-sat (not b!1506103) (not b!1506106) (not b!1506104) (not b!1506105) (not b!1506101) (not start!128460))
(check-sat)
