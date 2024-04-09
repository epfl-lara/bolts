; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128466 () Bool)

(assert start!128466)

(declare-fun b!1506163 () Bool)

(declare-fun res!1026592 () Bool)

(declare-fun e!841810 () Bool)

(assert (=> b!1506163 (=> (not res!1026592) (not e!841810))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100424 0))(
  ( (array!100425 (arr!48452 (Array (_ BitVec 32) (_ BitVec 64))) (size!49003 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100424)

(assert (=> b!1506163 (= res!1026592 (and (= (size!49003 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49003 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49003 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506164 () Bool)

(declare-fun res!1026596 () Bool)

(assert (=> b!1506164 (=> (not res!1026596) (not e!841810))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100424 (_ BitVec 32)) Bool)

(assert (=> b!1506164 (= res!1026596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506165 () Bool)

(assert (=> b!1506165 (= e!841810 false)))

(declare-fun lt!654130 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506165 (= lt!654130 (toIndex!0 (select (arr!48452 a!2804) j!70) mask!2512))))

(declare-fun b!1506166 () Bool)

(declare-fun res!1026597 () Bool)

(assert (=> b!1506166 (=> (not res!1026597) (not e!841810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506166 (= res!1026597 (validKeyInArray!0 (select (arr!48452 a!2804) i!961)))))

(declare-fun b!1506167 () Bool)

(declare-fun res!1026593 () Bool)

(assert (=> b!1506167 (=> (not res!1026593) (not e!841810))))

(declare-datatypes ((List!35115 0))(
  ( (Nil!35112) (Cons!35111 (h!36509 (_ BitVec 64)) (t!49816 List!35115)) )
))
(declare-fun arrayNoDuplicates!0 (array!100424 (_ BitVec 32) List!35115) Bool)

(assert (=> b!1506167 (= res!1026593 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35112))))

(declare-fun b!1506168 () Bool)

(declare-fun res!1026591 () Bool)

(assert (=> b!1506168 (=> (not res!1026591) (not e!841810))))

(assert (=> b!1506168 (= res!1026591 (validKeyInArray!0 (select (arr!48452 a!2804) j!70)))))

(declare-fun b!1506169 () Bool)

(declare-fun res!1026594 () Bool)

(assert (=> b!1506169 (=> (not res!1026594) (not e!841810))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506169 (= res!1026594 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49003 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49003 a!2804))))))

(declare-fun res!1026595 () Bool)

(assert (=> start!128466 (=> (not res!1026595) (not e!841810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128466 (= res!1026595 (validMask!0 mask!2512))))

(assert (=> start!128466 e!841810))

(assert (=> start!128466 true))

(declare-fun array_inv!37397 (array!100424) Bool)

(assert (=> start!128466 (array_inv!37397 a!2804)))

(assert (= (and start!128466 res!1026595) b!1506163))

(assert (= (and b!1506163 res!1026592) b!1506166))

(assert (= (and b!1506166 res!1026597) b!1506168))

(assert (= (and b!1506168 res!1026591) b!1506164))

(assert (= (and b!1506164 res!1026596) b!1506167))

(assert (= (and b!1506167 res!1026593) b!1506169))

(assert (= (and b!1506169 res!1026594) b!1506165))

(declare-fun m!1389219 () Bool)

(assert (=> b!1506168 m!1389219))

(assert (=> b!1506168 m!1389219))

(declare-fun m!1389221 () Bool)

(assert (=> b!1506168 m!1389221))

(declare-fun m!1389223 () Bool)

(assert (=> b!1506166 m!1389223))

(assert (=> b!1506166 m!1389223))

(declare-fun m!1389225 () Bool)

(assert (=> b!1506166 m!1389225))

(declare-fun m!1389227 () Bool)

(assert (=> b!1506164 m!1389227))

(assert (=> b!1506165 m!1389219))

(assert (=> b!1506165 m!1389219))

(declare-fun m!1389229 () Bool)

(assert (=> b!1506165 m!1389229))

(declare-fun m!1389231 () Bool)

(assert (=> b!1506167 m!1389231))

(declare-fun m!1389233 () Bool)

(assert (=> start!128466 m!1389233))

(declare-fun m!1389235 () Bool)

(assert (=> start!128466 m!1389235))

(check-sat (not b!1506166) (not b!1506168) (not b!1506164) (not b!1506165) (not b!1506167) (not start!128466))
