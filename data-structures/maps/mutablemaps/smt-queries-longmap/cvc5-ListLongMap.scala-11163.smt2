; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130552 () Bool)

(assert start!130552)

(declare-fun b!1531452 () Bool)

(declare-fun res!1048737 () Bool)

(declare-fun e!853360 () Bool)

(assert (=> b!1531452 (=> (not res!1048737) (not e!853360))))

(declare-datatypes ((array!101658 0))(
  ( (array!101659 (arr!49045 (Array (_ BitVec 32) (_ BitVec 64))) (size!49596 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101658)

(declare-datatypes ((List!35708 0))(
  ( (Nil!35705) (Cons!35704 (h!37150 (_ BitVec 64)) (t!50409 List!35708)) )
))
(declare-fun arrayNoDuplicates!0 (array!101658 (_ BitVec 32) List!35708) Bool)

(assert (=> b!1531452 (= res!1048737 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35705))))

(declare-fun b!1531453 () Bool)

(declare-fun res!1048742 () Bool)

(declare-fun e!853362 () Bool)

(assert (=> b!1531453 (=> res!1048742 e!853362)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13231 0))(
  ( (MissingZero!13231 (index!55318 (_ BitVec 32))) (Found!13231 (index!55319 (_ BitVec 32))) (Intermediate!13231 (undefined!14043 Bool) (index!55320 (_ BitVec 32)) (x!137028 (_ BitVec 32))) (Undefined!13231) (MissingVacant!13231 (index!55321 (_ BitVec 32))) )
))
(declare-fun lt!663217 () SeekEntryResult!13231)

(declare-fun lt!663219 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101658 (_ BitVec 32)) SeekEntryResult!13231)

(assert (=> b!1531453 (= res!1048742 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663219 (select (arr!49045 a!2804) j!70) a!2804 mask!2512) lt!663217)))))

(declare-fun res!1048733 () Bool)

(assert (=> start!130552 (=> (not res!1048733) (not e!853360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130552 (= res!1048733 (validMask!0 mask!2512))))

(assert (=> start!130552 e!853360))

(assert (=> start!130552 true))

(declare-fun array_inv!37990 (array!101658) Bool)

(assert (=> start!130552 (array_inv!37990 a!2804)))

(declare-fun b!1531454 () Bool)

(declare-fun res!1048741 () Bool)

(declare-fun e!853364 () Bool)

(assert (=> b!1531454 (=> (not res!1048741) (not e!853364))))

(declare-fun lt!663218 () SeekEntryResult!13231)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531454 (= res!1048741 (= lt!663218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49045 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49045 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101659 (store (arr!49045 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49596 a!2804)) mask!2512)))))

(declare-fun b!1531455 () Bool)

(declare-fun res!1048743 () Bool)

(assert (=> b!1531455 (=> (not res!1048743) (not e!853360))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531455 (= res!1048743 (validKeyInArray!0 (select (arr!49045 a!2804) j!70)))))

(declare-fun b!1531456 () Bool)

(declare-fun e!853359 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101658 (_ BitVec 32)) SeekEntryResult!13231)

(assert (=> b!1531456 (= e!853359 (= (seekEntry!0 (select (arr!49045 a!2804) j!70) a!2804 mask!2512) (Found!13231 j!70)))))

(declare-fun b!1531457 () Bool)

(declare-fun res!1048739 () Bool)

(assert (=> b!1531457 (=> (not res!1048739) (not e!853360))))

(assert (=> b!1531457 (= res!1048739 (and (= (size!49596 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49596 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49596 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1531458 () Bool)

(declare-fun res!1048735 () Bool)

(assert (=> b!1531458 (=> (not res!1048735) (not e!853364))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1531458 (= res!1048735 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49045 a!2804) j!70) a!2804 mask!2512) lt!663217))))

(declare-fun b!1531459 () Bool)

(declare-fun res!1048734 () Bool)

(assert (=> b!1531459 (=> (not res!1048734) (not e!853360))))

(assert (=> b!1531459 (= res!1048734 (validKeyInArray!0 (select (arr!49045 a!2804) i!961)))))

(declare-fun b!1531460 () Bool)

(declare-fun res!1048730 () Bool)

(assert (=> b!1531460 (=> (not res!1048730) (not e!853360))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1531460 (= res!1048730 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49596 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49596 a!2804))))))

(declare-fun b!1531461 () Bool)

(declare-fun res!1048732 () Bool)

(assert (=> b!1531461 (=> (not res!1048732) (not e!853360))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101658 (_ BitVec 32)) Bool)

(assert (=> b!1531461 (= res!1048732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1531462 () Bool)

(assert (=> b!1531462 (= e!853360 e!853364)))

(declare-fun res!1048738 () Bool)

(assert (=> b!1531462 (=> (not res!1048738) (not e!853364))))

(assert (=> b!1531462 (= res!1048738 (= lt!663218 lt!663217))))

(assert (=> b!1531462 (= lt!663217 (Intermediate!13231 false resIndex!21 resX!21))))

(assert (=> b!1531462 (= lt!663218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49045 a!2804) j!70) mask!2512) (select (arr!49045 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531463 () Bool)

(declare-fun e!853361 () Bool)

(assert (=> b!1531463 (= e!853361 e!853362)))

(declare-fun res!1048736 () Bool)

(assert (=> b!1531463 (=> res!1048736 e!853362)))

(assert (=> b!1531463 (= res!1048736 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663219 #b00000000000000000000000000000000) (bvsge lt!663219 (size!49596 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531463 (= lt!663219 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1531464 () Bool)

(assert (=> b!1531464 (= e!853362 (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!534)) (bvsub #b01111111111111111111111111111110 x!534)))))

(declare-fun b!1531465 () Bool)

(assert (=> b!1531465 (= e!853364 (not e!853361))))

(declare-fun res!1048731 () Bool)

(assert (=> b!1531465 (=> res!1048731 e!853361)))

(assert (=> b!1531465 (= res!1048731 (or (not (= (select (arr!49045 a!2804) j!70) (select (store (arr!49045 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1531465 e!853359))

(declare-fun res!1048740 () Bool)

(assert (=> b!1531465 (=> (not res!1048740) (not e!853359))))

(assert (=> b!1531465 (= res!1048740 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51202 0))(
  ( (Unit!51203) )
))
(declare-fun lt!663220 () Unit!51202)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101658 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51202)

(assert (=> b!1531465 (= lt!663220 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!130552 res!1048733) b!1531457))

(assert (= (and b!1531457 res!1048739) b!1531459))

(assert (= (and b!1531459 res!1048734) b!1531455))

(assert (= (and b!1531455 res!1048743) b!1531461))

(assert (= (and b!1531461 res!1048732) b!1531452))

(assert (= (and b!1531452 res!1048737) b!1531460))

(assert (= (and b!1531460 res!1048730) b!1531462))

(assert (= (and b!1531462 res!1048738) b!1531458))

(assert (= (and b!1531458 res!1048735) b!1531454))

(assert (= (and b!1531454 res!1048741) b!1531465))

(assert (= (and b!1531465 res!1048740) b!1531456))

(assert (= (and b!1531465 (not res!1048731)) b!1531463))

(assert (= (and b!1531463 (not res!1048736)) b!1531453))

(assert (= (and b!1531453 (not res!1048742)) b!1531464))

(declare-fun m!1414161 () Bool)

(assert (=> b!1531454 m!1414161))

(declare-fun m!1414163 () Bool)

(assert (=> b!1531454 m!1414163))

(assert (=> b!1531454 m!1414163))

(declare-fun m!1414165 () Bool)

(assert (=> b!1531454 m!1414165))

(assert (=> b!1531454 m!1414165))

(assert (=> b!1531454 m!1414163))

(declare-fun m!1414167 () Bool)

(assert (=> b!1531454 m!1414167))

(declare-fun m!1414169 () Bool)

(assert (=> b!1531458 m!1414169))

(assert (=> b!1531458 m!1414169))

(declare-fun m!1414171 () Bool)

(assert (=> b!1531458 m!1414171))

(assert (=> b!1531455 m!1414169))

(assert (=> b!1531455 m!1414169))

(declare-fun m!1414173 () Bool)

(assert (=> b!1531455 m!1414173))

(declare-fun m!1414175 () Bool)

(assert (=> start!130552 m!1414175))

(declare-fun m!1414177 () Bool)

(assert (=> start!130552 m!1414177))

(assert (=> b!1531465 m!1414169))

(declare-fun m!1414179 () Bool)

(assert (=> b!1531465 m!1414179))

(assert (=> b!1531465 m!1414161))

(assert (=> b!1531465 m!1414163))

(declare-fun m!1414181 () Bool)

(assert (=> b!1531465 m!1414181))

(declare-fun m!1414183 () Bool)

(assert (=> b!1531463 m!1414183))

(assert (=> b!1531456 m!1414169))

(assert (=> b!1531456 m!1414169))

(declare-fun m!1414185 () Bool)

(assert (=> b!1531456 m!1414185))

(declare-fun m!1414187 () Bool)

(assert (=> b!1531452 m!1414187))

(declare-fun m!1414189 () Bool)

(assert (=> b!1531461 m!1414189))

(declare-fun m!1414191 () Bool)

(assert (=> b!1531459 m!1414191))

(assert (=> b!1531459 m!1414191))

(declare-fun m!1414193 () Bool)

(assert (=> b!1531459 m!1414193))

(assert (=> b!1531462 m!1414169))

(assert (=> b!1531462 m!1414169))

(declare-fun m!1414195 () Bool)

(assert (=> b!1531462 m!1414195))

(assert (=> b!1531462 m!1414195))

(assert (=> b!1531462 m!1414169))

(declare-fun m!1414197 () Bool)

(assert (=> b!1531462 m!1414197))

(assert (=> b!1531453 m!1414169))

(assert (=> b!1531453 m!1414169))

(declare-fun m!1414199 () Bool)

(assert (=> b!1531453 m!1414199))

(push 1)

(assert (not b!1531462))

(assert (not b!1531461))

(assert (not b!1531463))

(assert (not start!130552))

(assert (not b!1531453))

(assert (not b!1531452))

(assert (not b!1531458))

(assert (not b!1531454))

(assert (not b!1531459))

(assert (not b!1531455))

(assert (not b!1531465))

(assert (not b!1531456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

