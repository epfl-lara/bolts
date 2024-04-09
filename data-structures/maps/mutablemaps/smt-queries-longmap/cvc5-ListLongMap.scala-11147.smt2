; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130276 () Bool)

(assert start!130276)

(declare-fun b!1528829 () Bool)

(declare-fun res!1046677 () Bool)

(declare-fun e!852084 () Bool)

(assert (=> b!1528829 (=> (not res!1046677) (not e!852084))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101553 0))(
  ( (array!101554 (arr!48997 (Array (_ BitVec 32) (_ BitVec 64))) (size!49548 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101553)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1528829 (= res!1046677 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49548 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49548 a!2804))))))

(declare-fun e!852086 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun b!1528830 () Bool)

(declare-datatypes ((SeekEntryResult!13183 0))(
  ( (MissingZero!13183 (index!55126 (_ BitVec 32))) (Found!13183 (index!55127 (_ BitVec 32))) (Intermediate!13183 (undefined!13995 Bool) (index!55128 (_ BitVec 32)) (x!136825 (_ BitVec 32))) (Undefined!13183) (MissingVacant!13183 (index!55129 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101553 (_ BitVec 32)) SeekEntryResult!13183)

(assert (=> b!1528830 (= e!852086 (= (seekEntry!0 (select (arr!48997 a!2804) j!70) a!2804 mask!2512) (Found!13183 j!70)))))

(declare-fun b!1528831 () Bool)

(declare-fun res!1046675 () Bool)

(declare-fun e!852085 () Bool)

(assert (=> b!1528831 (=> (not res!1046675) (not e!852085))))

(declare-fun lt!662195 () SeekEntryResult!13183)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101553 (_ BitVec 32)) SeekEntryResult!13183)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528831 (= res!1046675 (= lt!662195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48997 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48997 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101554 (store (arr!48997 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49548 a!2804)) mask!2512)))))

(declare-fun b!1528832 () Bool)

(declare-fun res!1046680 () Bool)

(assert (=> b!1528832 (=> (not res!1046680) (not e!852085))))

(declare-fun lt!662197 () SeekEntryResult!13183)

(assert (=> b!1528832 (= res!1046680 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48997 a!2804) j!70) a!2804 mask!2512) lt!662197))))

(declare-fun b!1528834 () Bool)

(declare-fun res!1046685 () Bool)

(assert (=> b!1528834 (=> (not res!1046685) (not e!852084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528834 (= res!1046685 (validKeyInArray!0 (select (arr!48997 a!2804) j!70)))))

(declare-fun b!1528835 () Bool)

(declare-fun res!1046681 () Bool)

(assert (=> b!1528835 (=> (not res!1046681) (not e!852084))))

(assert (=> b!1528835 (= res!1046681 (validKeyInArray!0 (select (arr!48997 a!2804) i!961)))))

(declare-fun b!1528836 () Bool)

(declare-fun res!1046684 () Bool)

(assert (=> b!1528836 (=> (not res!1046684) (not e!852084))))

(assert (=> b!1528836 (= res!1046684 (and (= (size!49548 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49548 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49548 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528837 () Bool)

(declare-fun e!852082 () Bool)

(assert (=> b!1528837 (= e!852082 true)))

(declare-fun lt!662196 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528837 (= lt!662196 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1528838 () Bool)

(assert (=> b!1528838 (= e!852084 e!852085)))

(declare-fun res!1046679 () Bool)

(assert (=> b!1528838 (=> (not res!1046679) (not e!852085))))

(assert (=> b!1528838 (= res!1046679 (= lt!662195 lt!662197))))

(assert (=> b!1528838 (= lt!662197 (Intermediate!13183 false resIndex!21 resX!21))))

(assert (=> b!1528838 (= lt!662195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48997 a!2804) j!70) mask!2512) (select (arr!48997 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528833 () Bool)

(assert (=> b!1528833 (= e!852085 (not e!852082))))

(declare-fun res!1046683 () Bool)

(assert (=> b!1528833 (=> res!1046683 e!852082)))

(assert (=> b!1528833 (= res!1046683 (or (not (= (select (arr!48997 a!2804) j!70) (select (store (arr!48997 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1528833 e!852086))

(declare-fun res!1046678 () Bool)

(assert (=> b!1528833 (=> (not res!1046678) (not e!852086))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101553 (_ BitVec 32)) Bool)

(assert (=> b!1528833 (= res!1046678 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51106 0))(
  ( (Unit!51107) )
))
(declare-fun lt!662194 () Unit!51106)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101553 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51106)

(assert (=> b!1528833 (= lt!662194 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1046676 () Bool)

(assert (=> start!130276 (=> (not res!1046676) (not e!852084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130276 (= res!1046676 (validMask!0 mask!2512))))

(assert (=> start!130276 e!852084))

(assert (=> start!130276 true))

(declare-fun array_inv!37942 (array!101553) Bool)

(assert (=> start!130276 (array_inv!37942 a!2804)))

(declare-fun b!1528839 () Bool)

(declare-fun res!1046682 () Bool)

(assert (=> b!1528839 (=> (not res!1046682) (not e!852084))))

(assert (=> b!1528839 (= res!1046682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528840 () Bool)

(declare-fun res!1046674 () Bool)

(assert (=> b!1528840 (=> (not res!1046674) (not e!852084))))

(declare-datatypes ((List!35660 0))(
  ( (Nil!35657) (Cons!35656 (h!37093 (_ BitVec 64)) (t!50361 List!35660)) )
))
(declare-fun arrayNoDuplicates!0 (array!101553 (_ BitVec 32) List!35660) Bool)

(assert (=> b!1528840 (= res!1046674 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35657))))

(assert (= (and start!130276 res!1046676) b!1528836))

(assert (= (and b!1528836 res!1046684) b!1528835))

(assert (= (and b!1528835 res!1046681) b!1528834))

(assert (= (and b!1528834 res!1046685) b!1528839))

(assert (= (and b!1528839 res!1046682) b!1528840))

(assert (= (and b!1528840 res!1046674) b!1528829))

(assert (= (and b!1528829 res!1046677) b!1528838))

(assert (= (and b!1528838 res!1046679) b!1528832))

(assert (= (and b!1528832 res!1046680) b!1528831))

(assert (= (and b!1528831 res!1046675) b!1528833))

(assert (= (and b!1528833 res!1046678) b!1528830))

(assert (= (and b!1528833 (not res!1046683)) b!1528837))

(declare-fun m!1411797 () Bool)

(assert (=> b!1528830 m!1411797))

(assert (=> b!1528830 m!1411797))

(declare-fun m!1411799 () Bool)

(assert (=> b!1528830 m!1411799))

(declare-fun m!1411801 () Bool)

(assert (=> b!1528837 m!1411801))

(assert (=> b!1528832 m!1411797))

(assert (=> b!1528832 m!1411797))

(declare-fun m!1411803 () Bool)

(assert (=> b!1528832 m!1411803))

(declare-fun m!1411805 () Bool)

(assert (=> b!1528840 m!1411805))

(declare-fun m!1411807 () Bool)

(assert (=> b!1528839 m!1411807))

(declare-fun m!1411809 () Bool)

(assert (=> b!1528831 m!1411809))

(declare-fun m!1411811 () Bool)

(assert (=> b!1528831 m!1411811))

(assert (=> b!1528831 m!1411811))

(declare-fun m!1411813 () Bool)

(assert (=> b!1528831 m!1411813))

(assert (=> b!1528831 m!1411813))

(assert (=> b!1528831 m!1411811))

(declare-fun m!1411815 () Bool)

(assert (=> b!1528831 m!1411815))

(declare-fun m!1411817 () Bool)

(assert (=> start!130276 m!1411817))

(declare-fun m!1411819 () Bool)

(assert (=> start!130276 m!1411819))

(assert (=> b!1528833 m!1411797))

(declare-fun m!1411821 () Bool)

(assert (=> b!1528833 m!1411821))

(assert (=> b!1528833 m!1411809))

(assert (=> b!1528833 m!1411811))

(declare-fun m!1411823 () Bool)

(assert (=> b!1528833 m!1411823))

(assert (=> b!1528838 m!1411797))

(assert (=> b!1528838 m!1411797))

(declare-fun m!1411825 () Bool)

(assert (=> b!1528838 m!1411825))

(assert (=> b!1528838 m!1411825))

(assert (=> b!1528838 m!1411797))

(declare-fun m!1411827 () Bool)

(assert (=> b!1528838 m!1411827))

(declare-fun m!1411829 () Bool)

(assert (=> b!1528835 m!1411829))

(assert (=> b!1528835 m!1411829))

(declare-fun m!1411831 () Bool)

(assert (=> b!1528835 m!1411831))

(assert (=> b!1528834 m!1411797))

(assert (=> b!1528834 m!1411797))

(declare-fun m!1411833 () Bool)

(assert (=> b!1528834 m!1411833))

(push 1)

