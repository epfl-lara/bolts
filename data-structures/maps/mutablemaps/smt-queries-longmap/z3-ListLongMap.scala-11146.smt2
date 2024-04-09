; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130272 () Bool)

(assert start!130272)

(declare-fun b!1528757 () Bool)

(declare-fun res!1046611 () Bool)

(declare-fun e!852052 () Bool)

(assert (=> b!1528757 (=> (not res!1046611) (not e!852052))))

(declare-datatypes ((SeekEntryResult!13181 0))(
  ( (MissingZero!13181 (index!55118 (_ BitVec 32))) (Found!13181 (index!55119 (_ BitVec 32))) (Intermediate!13181 (undefined!13993 Bool) (index!55120 (_ BitVec 32)) (x!136815 (_ BitVec 32))) (Undefined!13181) (MissingVacant!13181 (index!55121 (_ BitVec 32))) )
))
(declare-fun lt!662170 () SeekEntryResult!13181)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101549 0))(
  ( (array!101550 (arr!48995 (Array (_ BitVec 32) (_ BitVec 64))) (size!49546 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101549)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101549 (_ BitVec 32)) SeekEntryResult!13181)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528757 (= res!1046611 (= lt!662170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48995 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48995 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101550 (store (arr!48995 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49546 a!2804)) mask!2512)))))

(declare-fun b!1528758 () Bool)

(declare-fun res!1046603 () Bool)

(declare-fun e!852053 () Bool)

(assert (=> b!1528758 (=> (not res!1046603) (not e!852053))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1528758 (= res!1046603 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49546 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49546 a!2804))))))

(declare-fun b!1528759 () Bool)

(declare-fun e!852054 () Bool)

(assert (=> b!1528759 (= e!852052 (not e!852054))))

(declare-fun res!1046607 () Bool)

(assert (=> b!1528759 (=> res!1046607 e!852054)))

(assert (=> b!1528759 (= res!1046607 (or (not (= (select (arr!48995 a!2804) j!70) (select (store (arr!48995 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852056 () Bool)

(assert (=> b!1528759 e!852056))

(declare-fun res!1046606 () Bool)

(assert (=> b!1528759 (=> (not res!1046606) (not e!852056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101549 (_ BitVec 32)) Bool)

(assert (=> b!1528759 (= res!1046606 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51102 0))(
  ( (Unit!51103) )
))
(declare-fun lt!662172 () Unit!51102)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101549 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51102)

(assert (=> b!1528759 (= lt!662172 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528760 () Bool)

(declare-fun res!1046608 () Bool)

(assert (=> b!1528760 (=> (not res!1046608) (not e!852053))))

(assert (=> b!1528760 (= res!1046608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528761 () Bool)

(assert (=> b!1528761 (= e!852054 true)))

(declare-fun lt!662173 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528761 (= lt!662173 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1528762 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101549 (_ BitVec 32)) SeekEntryResult!13181)

(assert (=> b!1528762 (= e!852056 (= (seekEntry!0 (select (arr!48995 a!2804) j!70) a!2804 mask!2512) (Found!13181 j!70)))))

(declare-fun res!1046612 () Bool)

(assert (=> start!130272 (=> (not res!1046612) (not e!852053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130272 (= res!1046612 (validMask!0 mask!2512))))

(assert (=> start!130272 e!852053))

(assert (=> start!130272 true))

(declare-fun array_inv!37940 (array!101549) Bool)

(assert (=> start!130272 (array_inv!37940 a!2804)))

(declare-fun b!1528763 () Bool)

(declare-fun res!1046605 () Bool)

(assert (=> b!1528763 (=> (not res!1046605) (not e!852053))))

(declare-datatypes ((List!35658 0))(
  ( (Nil!35655) (Cons!35654 (h!37091 (_ BitVec 64)) (t!50359 List!35658)) )
))
(declare-fun arrayNoDuplicates!0 (array!101549 (_ BitVec 32) List!35658) Bool)

(assert (=> b!1528763 (= res!1046605 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35655))))

(declare-fun b!1528764 () Bool)

(declare-fun res!1046609 () Bool)

(assert (=> b!1528764 (=> (not res!1046609) (not e!852053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528764 (= res!1046609 (validKeyInArray!0 (select (arr!48995 a!2804) i!961)))))

(declare-fun b!1528765 () Bool)

(assert (=> b!1528765 (= e!852053 e!852052)))

(declare-fun res!1046613 () Bool)

(assert (=> b!1528765 (=> (not res!1046613) (not e!852052))))

(declare-fun lt!662171 () SeekEntryResult!13181)

(assert (=> b!1528765 (= res!1046613 (= lt!662170 lt!662171))))

(assert (=> b!1528765 (= lt!662171 (Intermediate!13181 false resIndex!21 resX!21))))

(assert (=> b!1528765 (= lt!662170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48995 a!2804) j!70) mask!2512) (select (arr!48995 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528766 () Bool)

(declare-fun res!1046610 () Bool)

(assert (=> b!1528766 (=> (not res!1046610) (not e!852053))))

(assert (=> b!1528766 (= res!1046610 (and (= (size!49546 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49546 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49546 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528767 () Bool)

(declare-fun res!1046604 () Bool)

(assert (=> b!1528767 (=> (not res!1046604) (not e!852052))))

(assert (=> b!1528767 (= res!1046604 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48995 a!2804) j!70) a!2804 mask!2512) lt!662171))))

(declare-fun b!1528768 () Bool)

(declare-fun res!1046602 () Bool)

(assert (=> b!1528768 (=> (not res!1046602) (not e!852053))))

(assert (=> b!1528768 (= res!1046602 (validKeyInArray!0 (select (arr!48995 a!2804) j!70)))))

(assert (= (and start!130272 res!1046612) b!1528766))

(assert (= (and b!1528766 res!1046610) b!1528764))

(assert (= (and b!1528764 res!1046609) b!1528768))

(assert (= (and b!1528768 res!1046602) b!1528760))

(assert (= (and b!1528760 res!1046608) b!1528763))

(assert (= (and b!1528763 res!1046605) b!1528758))

(assert (= (and b!1528758 res!1046603) b!1528765))

(assert (= (and b!1528765 res!1046613) b!1528767))

(assert (= (and b!1528767 res!1046604) b!1528757))

(assert (= (and b!1528757 res!1046611) b!1528759))

(assert (= (and b!1528759 res!1046606) b!1528762))

(assert (= (and b!1528759 (not res!1046607)) b!1528761))

(declare-fun m!1411721 () Bool)

(assert (=> b!1528763 m!1411721))

(declare-fun m!1411723 () Bool)

(assert (=> b!1528767 m!1411723))

(assert (=> b!1528767 m!1411723))

(declare-fun m!1411725 () Bool)

(assert (=> b!1528767 m!1411725))

(declare-fun m!1411727 () Bool)

(assert (=> b!1528757 m!1411727))

(declare-fun m!1411729 () Bool)

(assert (=> b!1528757 m!1411729))

(assert (=> b!1528757 m!1411729))

(declare-fun m!1411731 () Bool)

(assert (=> b!1528757 m!1411731))

(assert (=> b!1528757 m!1411731))

(assert (=> b!1528757 m!1411729))

(declare-fun m!1411733 () Bool)

(assert (=> b!1528757 m!1411733))

(declare-fun m!1411735 () Bool)

(assert (=> b!1528760 m!1411735))

(assert (=> b!1528759 m!1411723))

(declare-fun m!1411737 () Bool)

(assert (=> b!1528759 m!1411737))

(assert (=> b!1528759 m!1411727))

(assert (=> b!1528759 m!1411729))

(declare-fun m!1411739 () Bool)

(assert (=> b!1528759 m!1411739))

(declare-fun m!1411741 () Bool)

(assert (=> b!1528761 m!1411741))

(declare-fun m!1411743 () Bool)

(assert (=> b!1528764 m!1411743))

(assert (=> b!1528764 m!1411743))

(declare-fun m!1411745 () Bool)

(assert (=> b!1528764 m!1411745))

(declare-fun m!1411747 () Bool)

(assert (=> start!130272 m!1411747))

(declare-fun m!1411749 () Bool)

(assert (=> start!130272 m!1411749))

(assert (=> b!1528762 m!1411723))

(assert (=> b!1528762 m!1411723))

(declare-fun m!1411751 () Bool)

(assert (=> b!1528762 m!1411751))

(assert (=> b!1528765 m!1411723))

(assert (=> b!1528765 m!1411723))

(declare-fun m!1411753 () Bool)

(assert (=> b!1528765 m!1411753))

(assert (=> b!1528765 m!1411753))

(assert (=> b!1528765 m!1411723))

(declare-fun m!1411755 () Bool)

(assert (=> b!1528765 m!1411755))

(assert (=> b!1528768 m!1411723))

(assert (=> b!1528768 m!1411723))

(declare-fun m!1411757 () Bool)

(assert (=> b!1528768 m!1411757))

(check-sat (not b!1528762) (not start!130272) (not b!1528765) (not b!1528759) (not b!1528768) (not b!1528764) (not b!1528761) (not b!1528767) (not b!1528760) (not b!1528763) (not b!1528757))
(check-sat)
