; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128940 () Bool)

(assert start!128940)

(declare-fun b!1510710 () Bool)

(declare-fun res!1030695 () Bool)

(declare-fun e!843581 () Bool)

(assert (=> b!1510710 (=> (not res!1030695) (not e!843581))))

(declare-datatypes ((array!100709 0))(
  ( (array!100710 (arr!48587 (Array (_ BitVec 32) (_ BitVec 64))) (size!49138 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100709)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510710 (= res!1030695 (validKeyInArray!0 (select (arr!48587 a!2804) j!70)))))

(declare-fun b!1510711 () Bool)

(declare-fun res!1030691 () Bool)

(assert (=> b!1510711 (=> (not res!1030691) (not e!843581))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100709 (_ BitVec 32)) Bool)

(assert (=> b!1510711 (= res!1030691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510712 () Bool)

(declare-fun e!843583 () Bool)

(assert (=> b!1510712 (= e!843583 (not true))))

(declare-fun e!843584 () Bool)

(assert (=> b!1510712 e!843584))

(declare-fun res!1030685 () Bool)

(assert (=> b!1510712 (=> (not res!1030685) (not e!843584))))

(assert (=> b!1510712 (= res!1030685 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50382 0))(
  ( (Unit!50383) )
))
(declare-fun lt!655216 () Unit!50382)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100709 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50382)

(assert (=> b!1510712 (= lt!655216 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510713 () Bool)

(declare-fun res!1030690 () Bool)

(assert (=> b!1510713 (=> (not res!1030690) (not e!843581))))

(declare-datatypes ((List!35250 0))(
  ( (Nil!35247) (Cons!35246 (h!36659 (_ BitVec 64)) (t!49951 List!35250)) )
))
(declare-fun arrayNoDuplicates!0 (array!100709 (_ BitVec 32) List!35250) Bool)

(assert (=> b!1510713 (= res!1030690 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35247))))

(declare-fun b!1510714 () Bool)

(declare-fun res!1030687 () Bool)

(assert (=> b!1510714 (=> (not res!1030687) (not e!843583))))

(declare-datatypes ((SeekEntryResult!12779 0))(
  ( (MissingZero!12779 (index!53510 (_ BitVec 32))) (Found!12779 (index!53511 (_ BitVec 32))) (Intermediate!12779 (undefined!13591 Bool) (index!53512 (_ BitVec 32)) (x!135262 (_ BitVec 32))) (Undefined!12779) (MissingVacant!12779 (index!53513 (_ BitVec 32))) )
))
(declare-fun lt!655215 () SeekEntryResult!12779)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100709 (_ BitVec 32)) SeekEntryResult!12779)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510714 (= res!1030687 (= lt!655215 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48587 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48587 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100710 (store (arr!48587 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49138 a!2804)) mask!2512)))))

(declare-fun b!1510715 () Bool)

(declare-fun res!1030694 () Bool)

(assert (=> b!1510715 (=> (not res!1030694) (not e!843581))))

(assert (=> b!1510715 (= res!1030694 (and (= (size!49138 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49138 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49138 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510716 () Bool)

(declare-fun res!1030692 () Bool)

(assert (=> b!1510716 (=> (not res!1030692) (not e!843581))))

(assert (=> b!1510716 (= res!1030692 (validKeyInArray!0 (select (arr!48587 a!2804) i!961)))))

(declare-fun b!1510717 () Bool)

(declare-fun res!1030689 () Bool)

(assert (=> b!1510717 (=> (not res!1030689) (not e!843583))))

(declare-fun lt!655214 () SeekEntryResult!12779)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1510717 (= res!1030689 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48587 a!2804) j!70) a!2804 mask!2512) lt!655214))))

(declare-fun res!1030688 () Bool)

(assert (=> start!128940 (=> (not res!1030688) (not e!843581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128940 (= res!1030688 (validMask!0 mask!2512))))

(assert (=> start!128940 e!843581))

(assert (=> start!128940 true))

(declare-fun array_inv!37532 (array!100709) Bool)

(assert (=> start!128940 (array_inv!37532 a!2804)))

(declare-fun b!1510718 () Bool)

(assert (=> b!1510718 (= e!843581 e!843583)))

(declare-fun res!1030686 () Bool)

(assert (=> b!1510718 (=> (not res!1030686) (not e!843583))))

(assert (=> b!1510718 (= res!1030686 (= lt!655215 lt!655214))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1510718 (= lt!655214 (Intermediate!12779 false resIndex!21 resX!21))))

(assert (=> b!1510718 (= lt!655215 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48587 a!2804) j!70) mask!2512) (select (arr!48587 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510719 () Bool)

(declare-fun res!1030693 () Bool)

(assert (=> b!1510719 (=> (not res!1030693) (not e!843581))))

(assert (=> b!1510719 (= res!1030693 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49138 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49138 a!2804))))))

(declare-fun b!1510720 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100709 (_ BitVec 32)) SeekEntryResult!12779)

(assert (=> b!1510720 (= e!843584 (= (seekEntry!0 (select (arr!48587 a!2804) j!70) a!2804 mask!2512) (Found!12779 j!70)))))

(assert (= (and start!128940 res!1030688) b!1510715))

(assert (= (and b!1510715 res!1030694) b!1510716))

(assert (= (and b!1510716 res!1030692) b!1510710))

(assert (= (and b!1510710 res!1030695) b!1510711))

(assert (= (and b!1510711 res!1030691) b!1510713))

(assert (= (and b!1510713 res!1030690) b!1510719))

(assert (= (and b!1510719 res!1030693) b!1510718))

(assert (= (and b!1510718 res!1030686) b!1510717))

(assert (= (and b!1510717 res!1030689) b!1510714))

(assert (= (and b!1510714 res!1030687) b!1510712))

(assert (= (and b!1510712 res!1030685) b!1510720))

(declare-fun m!1393389 () Bool)

(assert (=> b!1510714 m!1393389))

(declare-fun m!1393391 () Bool)

(assert (=> b!1510714 m!1393391))

(assert (=> b!1510714 m!1393391))

(declare-fun m!1393393 () Bool)

(assert (=> b!1510714 m!1393393))

(assert (=> b!1510714 m!1393393))

(assert (=> b!1510714 m!1393391))

(declare-fun m!1393395 () Bool)

(assert (=> b!1510714 m!1393395))

(declare-fun m!1393397 () Bool)

(assert (=> b!1510710 m!1393397))

(assert (=> b!1510710 m!1393397))

(declare-fun m!1393399 () Bool)

(assert (=> b!1510710 m!1393399))

(assert (=> b!1510717 m!1393397))

(assert (=> b!1510717 m!1393397))

(declare-fun m!1393401 () Bool)

(assert (=> b!1510717 m!1393401))

(declare-fun m!1393403 () Bool)

(assert (=> b!1510712 m!1393403))

(declare-fun m!1393405 () Bool)

(assert (=> b!1510712 m!1393405))

(declare-fun m!1393407 () Bool)

(assert (=> b!1510713 m!1393407))

(assert (=> b!1510720 m!1393397))

(assert (=> b!1510720 m!1393397))

(declare-fun m!1393409 () Bool)

(assert (=> b!1510720 m!1393409))

(declare-fun m!1393411 () Bool)

(assert (=> start!128940 m!1393411))

(declare-fun m!1393413 () Bool)

(assert (=> start!128940 m!1393413))

(declare-fun m!1393415 () Bool)

(assert (=> b!1510711 m!1393415))

(declare-fun m!1393417 () Bool)

(assert (=> b!1510716 m!1393417))

(assert (=> b!1510716 m!1393417))

(declare-fun m!1393419 () Bool)

(assert (=> b!1510716 m!1393419))

(assert (=> b!1510718 m!1393397))

(assert (=> b!1510718 m!1393397))

(declare-fun m!1393421 () Bool)

(assert (=> b!1510718 m!1393421))

(assert (=> b!1510718 m!1393421))

(assert (=> b!1510718 m!1393397))

(declare-fun m!1393423 () Bool)

(assert (=> b!1510718 m!1393423))

(check-sat (not b!1510720) (not b!1510713) (not b!1510718) (not b!1510710) (not b!1510716) (not b!1510714) (not b!1510712) (not start!128940) (not b!1510711) (not b!1510717))
(check-sat)
