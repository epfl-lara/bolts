; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130280 () Bool)

(assert start!130280)

(declare-fun res!1046756 () Bool)

(declare-fun e!852113 () Bool)

(assert (=> start!130280 (=> (not res!1046756) (not e!852113))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130280 (= res!1046756 (validMask!0 mask!2512))))

(assert (=> start!130280 e!852113))

(assert (=> start!130280 true))

(declare-datatypes ((array!101557 0))(
  ( (array!101558 (arr!48999 (Array (_ BitVec 32) (_ BitVec 64))) (size!49550 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101557)

(declare-fun array_inv!37944 (array!101557) Bool)

(assert (=> start!130280 (array_inv!37944 a!2804)))

(declare-fun b!1528901 () Bool)

(declare-fun e!852115 () Bool)

(assert (=> b!1528901 (= e!852113 e!852115)))

(declare-fun res!1046747 () Bool)

(assert (=> b!1528901 (=> (not res!1046747) (not e!852115))))

(declare-datatypes ((SeekEntryResult!13185 0))(
  ( (MissingZero!13185 (index!55134 (_ BitVec 32))) (Found!13185 (index!55135 (_ BitVec 32))) (Intermediate!13185 (undefined!13997 Bool) (index!55136 (_ BitVec 32)) (x!136827 (_ BitVec 32))) (Undefined!13185) (MissingVacant!13185 (index!55137 (_ BitVec 32))) )
))
(declare-fun lt!662218 () SeekEntryResult!13185)

(declare-fun lt!662221 () SeekEntryResult!13185)

(assert (=> b!1528901 (= res!1046747 (= lt!662218 lt!662221))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1528901 (= lt!662221 (Intermediate!13185 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101557 (_ BitVec 32)) SeekEntryResult!13185)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528901 (= lt!662218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48999 a!2804) j!70) mask!2512) (select (arr!48999 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528902 () Bool)

(declare-fun res!1046748 () Bool)

(assert (=> b!1528902 (=> (not res!1046748) (not e!852113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528902 (= res!1046748 (validKeyInArray!0 (select (arr!48999 a!2804) j!70)))))

(declare-fun b!1528903 () Bool)

(declare-fun e!852114 () Bool)

(assert (=> b!1528903 (= e!852115 (not e!852114))))

(declare-fun res!1046754 () Bool)

(assert (=> b!1528903 (=> res!1046754 e!852114)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1528903 (= res!1046754 (or (not (= (select (arr!48999 a!2804) j!70) (select (store (arr!48999 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852116 () Bool)

(assert (=> b!1528903 e!852116))

(declare-fun res!1046749 () Bool)

(assert (=> b!1528903 (=> (not res!1046749) (not e!852116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101557 (_ BitVec 32)) Bool)

(assert (=> b!1528903 (= res!1046749 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51110 0))(
  ( (Unit!51111) )
))
(declare-fun lt!662220 () Unit!51110)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101557 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51110)

(assert (=> b!1528903 (= lt!662220 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528904 () Bool)

(declare-fun res!1046752 () Bool)

(assert (=> b!1528904 (=> (not res!1046752) (not e!852113))))

(declare-datatypes ((List!35662 0))(
  ( (Nil!35659) (Cons!35658 (h!37095 (_ BitVec 64)) (t!50363 List!35662)) )
))
(declare-fun arrayNoDuplicates!0 (array!101557 (_ BitVec 32) List!35662) Bool)

(assert (=> b!1528904 (= res!1046752 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35659))))

(declare-fun b!1528905 () Bool)

(declare-fun res!1046755 () Bool)

(assert (=> b!1528905 (=> (not res!1046755) (not e!852115))))

(assert (=> b!1528905 (= res!1046755 (= lt!662218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48999 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48999 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101558 (store (arr!48999 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49550 a!2804)) mask!2512)))))

(declare-fun b!1528906 () Bool)

(declare-fun res!1046746 () Bool)

(assert (=> b!1528906 (=> (not res!1046746) (not e!852113))))

(assert (=> b!1528906 (= res!1046746 (validKeyInArray!0 (select (arr!48999 a!2804) i!961)))))

(declare-fun b!1528907 () Bool)

(declare-fun res!1046750 () Bool)

(assert (=> b!1528907 (=> (not res!1046750) (not e!852113))))

(assert (=> b!1528907 (= res!1046750 (and (= (size!49550 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49550 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49550 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528908 () Bool)

(declare-fun res!1046751 () Bool)

(assert (=> b!1528908 (=> (not res!1046751) (not e!852115))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1528908 (= res!1046751 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48999 a!2804) j!70) a!2804 mask!2512) lt!662221))))

(declare-fun b!1528909 () Bool)

(assert (=> b!1528909 (= e!852114 true)))

(declare-fun lt!662219 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528909 (= lt!662219 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1528910 () Bool)

(declare-fun res!1046753 () Bool)

(assert (=> b!1528910 (=> (not res!1046753) (not e!852113))))

(assert (=> b!1528910 (= res!1046753 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49550 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49550 a!2804))))))

(declare-fun b!1528911 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101557 (_ BitVec 32)) SeekEntryResult!13185)

(assert (=> b!1528911 (= e!852116 (= (seekEntry!0 (select (arr!48999 a!2804) j!70) a!2804 mask!2512) (Found!13185 j!70)))))

(declare-fun b!1528912 () Bool)

(declare-fun res!1046757 () Bool)

(assert (=> b!1528912 (=> (not res!1046757) (not e!852113))))

(assert (=> b!1528912 (= res!1046757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!130280 res!1046756) b!1528907))

(assert (= (and b!1528907 res!1046750) b!1528906))

(assert (= (and b!1528906 res!1046746) b!1528902))

(assert (= (and b!1528902 res!1046748) b!1528912))

(assert (= (and b!1528912 res!1046757) b!1528904))

(assert (= (and b!1528904 res!1046752) b!1528910))

(assert (= (and b!1528910 res!1046753) b!1528901))

(assert (= (and b!1528901 res!1046747) b!1528908))

(assert (= (and b!1528908 res!1046751) b!1528905))

(assert (= (and b!1528905 res!1046755) b!1528903))

(assert (= (and b!1528903 res!1046749) b!1528911))

(assert (= (and b!1528903 (not res!1046754)) b!1528909))

(declare-fun m!1411873 () Bool)

(assert (=> b!1528904 m!1411873))

(declare-fun m!1411875 () Bool)

(assert (=> b!1528905 m!1411875))

(declare-fun m!1411877 () Bool)

(assert (=> b!1528905 m!1411877))

(assert (=> b!1528905 m!1411877))

(declare-fun m!1411879 () Bool)

(assert (=> b!1528905 m!1411879))

(assert (=> b!1528905 m!1411879))

(assert (=> b!1528905 m!1411877))

(declare-fun m!1411881 () Bool)

(assert (=> b!1528905 m!1411881))

(declare-fun m!1411883 () Bool)

(assert (=> b!1528906 m!1411883))

(assert (=> b!1528906 m!1411883))

(declare-fun m!1411885 () Bool)

(assert (=> b!1528906 m!1411885))

(declare-fun m!1411887 () Bool)

(assert (=> start!130280 m!1411887))

(declare-fun m!1411889 () Bool)

(assert (=> start!130280 m!1411889))

(declare-fun m!1411891 () Bool)

(assert (=> b!1528911 m!1411891))

(assert (=> b!1528911 m!1411891))

(declare-fun m!1411893 () Bool)

(assert (=> b!1528911 m!1411893))

(assert (=> b!1528902 m!1411891))

(assert (=> b!1528902 m!1411891))

(declare-fun m!1411895 () Bool)

(assert (=> b!1528902 m!1411895))

(declare-fun m!1411897 () Bool)

(assert (=> b!1528909 m!1411897))

(assert (=> b!1528908 m!1411891))

(assert (=> b!1528908 m!1411891))

(declare-fun m!1411899 () Bool)

(assert (=> b!1528908 m!1411899))

(assert (=> b!1528901 m!1411891))

(assert (=> b!1528901 m!1411891))

(declare-fun m!1411901 () Bool)

(assert (=> b!1528901 m!1411901))

(assert (=> b!1528901 m!1411901))

(assert (=> b!1528901 m!1411891))

(declare-fun m!1411903 () Bool)

(assert (=> b!1528901 m!1411903))

(assert (=> b!1528903 m!1411891))

(declare-fun m!1411905 () Bool)

(assert (=> b!1528903 m!1411905))

(assert (=> b!1528903 m!1411875))

(assert (=> b!1528903 m!1411877))

(declare-fun m!1411907 () Bool)

(assert (=> b!1528903 m!1411907))

(declare-fun m!1411909 () Bool)

(assert (=> b!1528912 m!1411909))

(push 1)

