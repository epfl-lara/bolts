; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128946 () Bool)

(assert start!128946)

(declare-fun b!1510809 () Bool)

(declare-fun e!843618 () Bool)

(assert (=> b!1510809 (= e!843618 (not true))))

(declare-fun e!843617 () Bool)

(assert (=> b!1510809 e!843617))

(declare-fun res!1030793 () Bool)

(assert (=> b!1510809 (=> (not res!1030793) (not e!843617))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100715 0))(
  ( (array!100716 (arr!48590 (Array (_ BitVec 32) (_ BitVec 64))) (size!49141 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100715)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100715 (_ BitVec 32)) Bool)

(assert (=> b!1510809 (= res!1030793 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50388 0))(
  ( (Unit!50389) )
))
(declare-fun lt!655241 () Unit!50388)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100715 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50388)

(assert (=> b!1510809 (= lt!655241 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510810 () Bool)

(declare-fun e!843619 () Bool)

(assert (=> b!1510810 (= e!843619 e!843618)))

(declare-fun res!1030789 () Bool)

(assert (=> b!1510810 (=> (not res!1030789) (not e!843618))))

(declare-datatypes ((SeekEntryResult!12782 0))(
  ( (MissingZero!12782 (index!53522 (_ BitVec 32))) (Found!12782 (index!53523 (_ BitVec 32))) (Intermediate!12782 (undefined!13594 Bool) (index!53524 (_ BitVec 32)) (x!135273 (_ BitVec 32))) (Undefined!12782) (MissingVacant!12782 (index!53525 (_ BitVec 32))) )
))
(declare-fun lt!655243 () SeekEntryResult!12782)

(declare-fun lt!655242 () SeekEntryResult!12782)

(assert (=> b!1510810 (= res!1030789 (= lt!655243 lt!655242))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1510810 (= lt!655242 (Intermediate!12782 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100715 (_ BitVec 32)) SeekEntryResult!12782)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510810 (= lt!655243 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48590 a!2804) j!70) mask!2512) (select (arr!48590 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510811 () Bool)

(declare-fun res!1030790 () Bool)

(assert (=> b!1510811 (=> (not res!1030790) (not e!843619))))

(assert (=> b!1510811 (= res!1030790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510812 () Bool)

(declare-fun res!1030785 () Bool)

(assert (=> b!1510812 (=> (not res!1030785) (not e!843619))))

(declare-datatypes ((List!35253 0))(
  ( (Nil!35250) (Cons!35249 (h!36662 (_ BitVec 64)) (t!49954 List!35253)) )
))
(declare-fun arrayNoDuplicates!0 (array!100715 (_ BitVec 32) List!35253) Bool)

(assert (=> b!1510812 (= res!1030785 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35250))))

(declare-fun b!1510813 () Bool)

(declare-fun res!1030792 () Bool)

(assert (=> b!1510813 (=> (not res!1030792) (not e!843619))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1510813 (= res!1030792 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49141 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49141 a!2804))))))

(declare-fun b!1510814 () Bool)

(declare-fun res!1030794 () Bool)

(assert (=> b!1510814 (=> (not res!1030794) (not e!843619))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510814 (= res!1030794 (validKeyInArray!0 (select (arr!48590 a!2804) j!70)))))

(declare-fun b!1510815 () Bool)

(declare-fun res!1030786 () Bool)

(assert (=> b!1510815 (=> (not res!1030786) (not e!843618))))

(assert (=> b!1510815 (= res!1030786 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48590 a!2804) j!70) a!2804 mask!2512) lt!655242))))

(declare-fun b!1510816 () Bool)

(declare-fun res!1030788 () Bool)

(assert (=> b!1510816 (=> (not res!1030788) (not e!843619))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1510816 (= res!1030788 (and (= (size!49141 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49141 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49141 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1030787 () Bool)

(assert (=> start!128946 (=> (not res!1030787) (not e!843619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128946 (= res!1030787 (validMask!0 mask!2512))))

(assert (=> start!128946 e!843619))

(assert (=> start!128946 true))

(declare-fun array_inv!37535 (array!100715) Bool)

(assert (=> start!128946 (array_inv!37535 a!2804)))

(declare-fun b!1510817 () Bool)

(declare-fun res!1030791 () Bool)

(assert (=> b!1510817 (=> (not res!1030791) (not e!843618))))

(assert (=> b!1510817 (= res!1030791 (= lt!655243 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48590 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48590 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100716 (store (arr!48590 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49141 a!2804)) mask!2512)))))

(declare-fun b!1510818 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100715 (_ BitVec 32)) SeekEntryResult!12782)

(assert (=> b!1510818 (= e!843617 (= (seekEntry!0 (select (arr!48590 a!2804) j!70) a!2804 mask!2512) (Found!12782 j!70)))))

(declare-fun b!1510819 () Bool)

(declare-fun res!1030784 () Bool)

(assert (=> b!1510819 (=> (not res!1030784) (not e!843619))))

(assert (=> b!1510819 (= res!1030784 (validKeyInArray!0 (select (arr!48590 a!2804) i!961)))))

(assert (= (and start!128946 res!1030787) b!1510816))

(assert (= (and b!1510816 res!1030788) b!1510819))

(assert (= (and b!1510819 res!1030784) b!1510814))

(assert (= (and b!1510814 res!1030794) b!1510811))

(assert (= (and b!1510811 res!1030790) b!1510812))

(assert (= (and b!1510812 res!1030785) b!1510813))

(assert (= (and b!1510813 res!1030792) b!1510810))

(assert (= (and b!1510810 res!1030789) b!1510815))

(assert (= (and b!1510815 res!1030786) b!1510817))

(assert (= (and b!1510817 res!1030791) b!1510809))

(assert (= (and b!1510809 res!1030793) b!1510818))

(declare-fun m!1393497 () Bool)

(assert (=> b!1510810 m!1393497))

(assert (=> b!1510810 m!1393497))

(declare-fun m!1393499 () Bool)

(assert (=> b!1510810 m!1393499))

(assert (=> b!1510810 m!1393499))

(assert (=> b!1510810 m!1393497))

(declare-fun m!1393501 () Bool)

(assert (=> b!1510810 m!1393501))

(declare-fun m!1393503 () Bool)

(assert (=> b!1510811 m!1393503))

(declare-fun m!1393505 () Bool)

(assert (=> b!1510812 m!1393505))

(assert (=> b!1510814 m!1393497))

(assert (=> b!1510814 m!1393497))

(declare-fun m!1393507 () Bool)

(assert (=> b!1510814 m!1393507))

(assert (=> b!1510815 m!1393497))

(assert (=> b!1510815 m!1393497))

(declare-fun m!1393509 () Bool)

(assert (=> b!1510815 m!1393509))

(declare-fun m!1393511 () Bool)

(assert (=> b!1510819 m!1393511))

(assert (=> b!1510819 m!1393511))

(declare-fun m!1393513 () Bool)

(assert (=> b!1510819 m!1393513))

(assert (=> b!1510818 m!1393497))

(assert (=> b!1510818 m!1393497))

(declare-fun m!1393515 () Bool)

(assert (=> b!1510818 m!1393515))

(declare-fun m!1393517 () Bool)

(assert (=> b!1510817 m!1393517))

(declare-fun m!1393519 () Bool)

(assert (=> b!1510817 m!1393519))

(assert (=> b!1510817 m!1393519))

(declare-fun m!1393521 () Bool)

(assert (=> b!1510817 m!1393521))

(assert (=> b!1510817 m!1393521))

(assert (=> b!1510817 m!1393519))

(declare-fun m!1393523 () Bool)

(assert (=> b!1510817 m!1393523))

(declare-fun m!1393525 () Bool)

(assert (=> b!1510809 m!1393525))

(declare-fun m!1393527 () Bool)

(assert (=> b!1510809 m!1393527))

(declare-fun m!1393529 () Bool)

(assert (=> start!128946 m!1393529))

(declare-fun m!1393531 () Bool)

(assert (=> start!128946 m!1393531))

(check-sat (not b!1510809) (not b!1510812) (not b!1510811) (not b!1510814) (not b!1510819) (not b!1510810) (not b!1510815) (not b!1510818) (not b!1510817) (not start!128946))
(check-sat)
