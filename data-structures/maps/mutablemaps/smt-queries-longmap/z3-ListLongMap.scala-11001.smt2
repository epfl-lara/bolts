; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128886 () Bool)

(assert start!128886)

(declare-fun b!1509810 () Bool)

(declare-fun res!1029793 () Bool)

(declare-fun e!843251 () Bool)

(assert (=> b!1509810 (=> (not res!1029793) (not e!843251))))

(declare-datatypes ((array!100655 0))(
  ( (array!100656 (arr!48560 (Array (_ BitVec 32) (_ BitVec 64))) (size!49111 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100655)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509810 (= res!1029793 (validKeyInArray!0 (select (arr!48560 a!2804) i!961)))))

(declare-fun b!1509811 () Bool)

(declare-fun res!1029786 () Bool)

(assert (=> b!1509811 (=> (not res!1029786) (not e!843251))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1509811 (= res!1029786 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49111 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49111 a!2804))))))

(declare-fun b!1509812 () Bool)

(declare-fun res!1029795 () Bool)

(declare-fun e!843248 () Bool)

(assert (=> b!1509812 (=> (not res!1029795) (not e!843248))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12752 0))(
  ( (MissingZero!12752 (index!53402 (_ BitVec 32))) (Found!12752 (index!53403 (_ BitVec 32))) (Intermediate!12752 (undefined!13564 Bool) (index!53404 (_ BitVec 32)) (x!135163 (_ BitVec 32))) (Undefined!12752) (MissingVacant!12752 (index!53405 (_ BitVec 32))) )
))
(declare-fun lt!654971 () SeekEntryResult!12752)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100655 (_ BitVec 32)) SeekEntryResult!12752)

(assert (=> b!1509812 (= res!1029795 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48560 a!2804) j!70) a!2804 mask!2512) lt!654971))))

(declare-fun b!1509813 () Bool)

(assert (=> b!1509813 (= e!843248 (not true))))

(declare-fun e!843250 () Bool)

(assert (=> b!1509813 e!843250))

(declare-fun res!1029788 () Bool)

(assert (=> b!1509813 (=> (not res!1029788) (not e!843250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100655 (_ BitVec 32)) Bool)

(assert (=> b!1509813 (= res!1029788 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50328 0))(
  ( (Unit!50329) )
))
(declare-fun lt!654973 () Unit!50328)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100655 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50328)

(assert (=> b!1509813 (= lt!654973 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509814 () Bool)

(declare-fun res!1029794 () Bool)

(assert (=> b!1509814 (=> (not res!1029794) (not e!843251))))

(assert (=> b!1509814 (= res!1029794 (and (= (size!49111 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49111 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49111 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509815 () Bool)

(declare-fun res!1029785 () Bool)

(assert (=> b!1509815 (=> (not res!1029785) (not e!843251))))

(declare-datatypes ((List!35223 0))(
  ( (Nil!35220) (Cons!35219 (h!36632 (_ BitVec 64)) (t!49924 List!35223)) )
))
(declare-fun arrayNoDuplicates!0 (array!100655 (_ BitVec 32) List!35223) Bool)

(assert (=> b!1509815 (= res!1029785 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35220))))

(declare-fun b!1509816 () Bool)

(assert (=> b!1509816 (= e!843251 e!843248)))

(declare-fun res!1029791 () Bool)

(assert (=> b!1509816 (=> (not res!1029791) (not e!843248))))

(declare-fun lt!654972 () SeekEntryResult!12752)

(assert (=> b!1509816 (= res!1029791 (= lt!654972 lt!654971))))

(assert (=> b!1509816 (= lt!654971 (Intermediate!12752 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509816 (= lt!654972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48560 a!2804) j!70) mask!2512) (select (arr!48560 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1029787 () Bool)

(assert (=> start!128886 (=> (not res!1029787) (not e!843251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128886 (= res!1029787 (validMask!0 mask!2512))))

(assert (=> start!128886 e!843251))

(assert (=> start!128886 true))

(declare-fun array_inv!37505 (array!100655) Bool)

(assert (=> start!128886 (array_inv!37505 a!2804)))

(declare-fun b!1509817 () Bool)

(declare-fun res!1029792 () Bool)

(assert (=> b!1509817 (=> (not res!1029792) (not e!843251))))

(assert (=> b!1509817 (= res!1029792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509818 () Bool)

(declare-fun res!1029790 () Bool)

(assert (=> b!1509818 (=> (not res!1029790) (not e!843251))))

(assert (=> b!1509818 (= res!1029790 (validKeyInArray!0 (select (arr!48560 a!2804) j!70)))))

(declare-fun b!1509819 () Bool)

(declare-fun res!1029789 () Bool)

(assert (=> b!1509819 (=> (not res!1029789) (not e!843248))))

(assert (=> b!1509819 (= res!1029789 (= lt!654972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48560 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48560 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100656 (store (arr!48560 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49111 a!2804)) mask!2512)))))

(declare-fun b!1509820 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100655 (_ BitVec 32)) SeekEntryResult!12752)

(assert (=> b!1509820 (= e!843250 (= (seekEntry!0 (select (arr!48560 a!2804) j!70) a!2804 mask!2512) (Found!12752 j!70)))))

(assert (= (and start!128886 res!1029787) b!1509814))

(assert (= (and b!1509814 res!1029794) b!1509810))

(assert (= (and b!1509810 res!1029793) b!1509818))

(assert (= (and b!1509818 res!1029790) b!1509817))

(assert (= (and b!1509817 res!1029792) b!1509815))

(assert (= (and b!1509815 res!1029785) b!1509811))

(assert (= (and b!1509811 res!1029786) b!1509816))

(assert (= (and b!1509816 res!1029791) b!1509812))

(assert (= (and b!1509812 res!1029795) b!1509819))

(assert (= (and b!1509819 res!1029789) b!1509813))

(assert (= (and b!1509813 res!1029788) b!1509820))

(declare-fun m!1392393 () Bool)

(assert (=> b!1509815 m!1392393))

(declare-fun m!1392395 () Bool)

(assert (=> start!128886 m!1392395))

(declare-fun m!1392397 () Bool)

(assert (=> start!128886 m!1392397))

(declare-fun m!1392399 () Bool)

(assert (=> b!1509820 m!1392399))

(assert (=> b!1509820 m!1392399))

(declare-fun m!1392401 () Bool)

(assert (=> b!1509820 m!1392401))

(assert (=> b!1509818 m!1392399))

(assert (=> b!1509818 m!1392399))

(declare-fun m!1392403 () Bool)

(assert (=> b!1509818 m!1392403))

(assert (=> b!1509816 m!1392399))

(assert (=> b!1509816 m!1392399))

(declare-fun m!1392405 () Bool)

(assert (=> b!1509816 m!1392405))

(assert (=> b!1509816 m!1392405))

(assert (=> b!1509816 m!1392399))

(declare-fun m!1392407 () Bool)

(assert (=> b!1509816 m!1392407))

(assert (=> b!1509812 m!1392399))

(assert (=> b!1509812 m!1392399))

(declare-fun m!1392409 () Bool)

(assert (=> b!1509812 m!1392409))

(declare-fun m!1392411 () Bool)

(assert (=> b!1509817 m!1392411))

(declare-fun m!1392413 () Bool)

(assert (=> b!1509819 m!1392413))

(declare-fun m!1392415 () Bool)

(assert (=> b!1509819 m!1392415))

(assert (=> b!1509819 m!1392415))

(declare-fun m!1392417 () Bool)

(assert (=> b!1509819 m!1392417))

(assert (=> b!1509819 m!1392417))

(assert (=> b!1509819 m!1392415))

(declare-fun m!1392419 () Bool)

(assert (=> b!1509819 m!1392419))

(declare-fun m!1392421 () Bool)

(assert (=> b!1509810 m!1392421))

(assert (=> b!1509810 m!1392421))

(declare-fun m!1392423 () Bool)

(assert (=> b!1509810 m!1392423))

(declare-fun m!1392425 () Bool)

(assert (=> b!1509813 m!1392425))

(declare-fun m!1392427 () Bool)

(assert (=> b!1509813 m!1392427))

(check-sat (not b!1509820) (not b!1509813) (not start!128886) (not b!1509817) (not b!1509819) (not b!1509810) (not b!1509815) (not b!1509816) (not b!1509812) (not b!1509818))
(check-sat)
