; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128462 () Bool)

(assert start!128462)

(declare-fun res!1026552 () Bool)

(declare-fun e!841798 () Bool)

(assert (=> start!128462 (=> (not res!1026552) (not e!841798))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128462 (= res!1026552 (validMask!0 mask!2512))))

(assert (=> start!128462 e!841798))

(assert (=> start!128462 true))

(declare-datatypes ((array!100420 0))(
  ( (array!100421 (arr!48450 (Array (_ BitVec 32) (_ BitVec 64))) (size!49001 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100420)

(declare-fun array_inv!37395 (array!100420) Bool)

(assert (=> start!128462 (array_inv!37395 a!2804)))

(declare-fun b!1506121 () Bool)

(declare-fun res!1026551 () Bool)

(assert (=> b!1506121 (=> (not res!1026551) (not e!841798))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1506121 (= res!1026551 (and (= (size!49001 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49001 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49001 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506122 () Bool)

(assert (=> b!1506122 (= e!841798 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun lt!654124 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506122 (= lt!654124 (toIndex!0 (select (arr!48450 a!2804) j!70) mask!2512))))

(declare-fun b!1506123 () Bool)

(declare-fun res!1026549 () Bool)

(assert (=> b!1506123 (=> (not res!1026549) (not e!841798))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506123 (= res!1026549 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49001 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49001 a!2804))))))

(declare-fun b!1506124 () Bool)

(declare-fun res!1026553 () Bool)

(assert (=> b!1506124 (=> (not res!1026553) (not e!841798))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506124 (= res!1026553 (validKeyInArray!0 (select (arr!48450 a!2804) j!70)))))

(declare-fun b!1506125 () Bool)

(declare-fun res!1026555 () Bool)

(assert (=> b!1506125 (=> (not res!1026555) (not e!841798))))

(assert (=> b!1506125 (= res!1026555 (validKeyInArray!0 (select (arr!48450 a!2804) i!961)))))

(declare-fun b!1506126 () Bool)

(declare-fun res!1026550 () Bool)

(assert (=> b!1506126 (=> (not res!1026550) (not e!841798))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100420 (_ BitVec 32)) Bool)

(assert (=> b!1506126 (= res!1026550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506127 () Bool)

(declare-fun res!1026554 () Bool)

(assert (=> b!1506127 (=> (not res!1026554) (not e!841798))))

(declare-datatypes ((List!35113 0))(
  ( (Nil!35110) (Cons!35109 (h!36507 (_ BitVec 64)) (t!49814 List!35113)) )
))
(declare-fun arrayNoDuplicates!0 (array!100420 (_ BitVec 32) List!35113) Bool)

(assert (=> b!1506127 (= res!1026554 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35110))))

(assert (= (and start!128462 res!1026552) b!1506121))

(assert (= (and b!1506121 res!1026551) b!1506125))

(assert (= (and b!1506125 res!1026555) b!1506124))

(assert (= (and b!1506124 res!1026553) b!1506126))

(assert (= (and b!1506126 res!1026550) b!1506127))

(assert (= (and b!1506127 res!1026554) b!1506123))

(assert (= (and b!1506123 res!1026549) b!1506122))

(declare-fun m!1389183 () Bool)

(assert (=> b!1506126 m!1389183))

(declare-fun m!1389185 () Bool)

(assert (=> start!128462 m!1389185))

(declare-fun m!1389187 () Bool)

(assert (=> start!128462 m!1389187))

(declare-fun m!1389189 () Bool)

(assert (=> b!1506124 m!1389189))

(assert (=> b!1506124 m!1389189))

(declare-fun m!1389191 () Bool)

(assert (=> b!1506124 m!1389191))

(assert (=> b!1506122 m!1389189))

(assert (=> b!1506122 m!1389189))

(declare-fun m!1389193 () Bool)

(assert (=> b!1506122 m!1389193))

(declare-fun m!1389195 () Bool)

(assert (=> b!1506127 m!1389195))

(declare-fun m!1389197 () Bool)

(assert (=> b!1506125 m!1389197))

(assert (=> b!1506125 m!1389197))

(declare-fun m!1389199 () Bool)

(assert (=> b!1506125 m!1389199))

(push 1)

(assert (not b!1506122))

(assert (not b!1506124))

(assert (not b!1506127))

(assert (not b!1506125))

(assert (not b!1506126))

(assert (not start!128462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

