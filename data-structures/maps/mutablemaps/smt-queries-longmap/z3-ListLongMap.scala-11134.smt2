; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130134 () Bool)

(assert start!130134)

(declare-fun b!1526901 () Bool)

(declare-fun res!1045086 () Bool)

(declare-fun e!851084 () Bool)

(assert (=> b!1526901 (=> (not res!1045086) (not e!851084))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101474 0))(
  ( (array!101475 (arr!48959 (Array (_ BitVec 32) (_ BitVec 64))) (size!49510 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101474)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526901 (= res!1045086 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49510 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49510 a!2804))))))

(declare-fun b!1526902 () Bool)

(declare-fun res!1045073 () Bool)

(assert (=> b!1526902 (=> (not res!1045073) (not e!851084))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101474 (_ BitVec 32)) Bool)

(assert (=> b!1526902 (= res!1045073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526903 () Bool)

(declare-fun res!1045076 () Bool)

(assert (=> b!1526903 (=> (not res!1045076) (not e!851084))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1526903 (= res!1045076 (and (= (size!49510 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49510 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49510 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526904 () Bool)

(declare-fun e!851080 () Bool)

(assert (=> b!1526904 (= e!851080 (not true))))

(declare-fun e!851079 () Bool)

(assert (=> b!1526904 e!851079))

(declare-fun res!1045079 () Bool)

(assert (=> b!1526904 (=> (not res!1045079) (not e!851079))))

(assert (=> b!1526904 (= res!1045079 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51030 0))(
  ( (Unit!51031) )
))
(declare-fun lt!661207 () Unit!51030)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101474 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51030)

(assert (=> b!1526904 (= lt!661207 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526905 () Bool)

(declare-fun res!1045074 () Bool)

(assert (=> b!1526905 (=> (not res!1045074) (not e!851084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526905 (= res!1045074 (validKeyInArray!0 (select (arr!48959 a!2804) j!70)))))

(declare-fun b!1526906 () Bool)

(declare-fun e!851081 () Bool)

(declare-fun e!851082 () Bool)

(assert (=> b!1526906 (= e!851081 e!851082)))

(declare-fun res!1045075 () Bool)

(assert (=> b!1526906 (=> (not res!1045075) (not e!851082))))

(declare-datatypes ((SeekEntryResult!13145 0))(
  ( (MissingZero!13145 (index!54974 (_ BitVec 32))) (Found!13145 (index!54975 (_ BitVec 32))) (Intermediate!13145 (undefined!13957 Bool) (index!54976 (_ BitVec 32)) (x!136674 (_ BitVec 32))) (Undefined!13145) (MissingVacant!13145 (index!54977 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101474 (_ BitVec 32)) SeekEntryResult!13145)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101474 (_ BitVec 32)) SeekEntryResult!13145)

(assert (=> b!1526906 (= res!1045075 (= (seekEntryOrOpen!0 (select (arr!48959 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48959 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun res!1045085 () Bool)

(assert (=> start!130134 (=> (not res!1045085) (not e!851084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130134 (= res!1045085 (validMask!0 mask!2512))))

(assert (=> start!130134 e!851084))

(assert (=> start!130134 true))

(declare-fun array_inv!37904 (array!101474) Bool)

(assert (=> start!130134 (array_inv!37904 a!2804)))

(declare-fun b!1526907 () Bool)

(declare-fun res!1045078 () Bool)

(declare-fun e!851083 () Bool)

(assert (=> b!1526907 (=> (not res!1045078) (not e!851083))))

(declare-fun lt!661210 () SeekEntryResult!13145)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101474 (_ BitVec 32)) SeekEntryResult!13145)

(assert (=> b!1526907 (= res!1045078 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48959 a!2804) j!70) a!2804 mask!2512) lt!661210))))

(declare-fun b!1526908 () Bool)

(assert (=> b!1526908 (= e!851083 e!851080)))

(declare-fun res!1045077 () Bool)

(assert (=> b!1526908 (=> (not res!1045077) (not e!851080))))

(declare-fun lt!661209 () array!101474)

(declare-fun lt!661206 () (_ BitVec 64))

(declare-fun lt!661208 () SeekEntryResult!13145)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526908 (= res!1045077 (= lt!661208 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661206 mask!2512) lt!661206 lt!661209 mask!2512)))))

(assert (=> b!1526908 (= lt!661206 (select (store (arr!48959 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526908 (= lt!661209 (array!101475 (store (arr!48959 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49510 a!2804)))))

(declare-fun b!1526909 () Bool)

(declare-fun res!1045082 () Bool)

(assert (=> b!1526909 (=> (not res!1045082) (not e!851079))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101474 (_ BitVec 32)) SeekEntryResult!13145)

(assert (=> b!1526909 (= res!1045082 (= (seekEntry!0 (select (arr!48959 a!2804) j!70) a!2804 mask!2512) (Found!13145 j!70)))))

(declare-fun b!1526910 () Bool)

(assert (=> b!1526910 (= e!851084 e!851083)))

(declare-fun res!1045083 () Bool)

(assert (=> b!1526910 (=> (not res!1045083) (not e!851083))))

(assert (=> b!1526910 (= res!1045083 (= lt!661208 lt!661210))))

(assert (=> b!1526910 (= lt!661210 (Intermediate!13145 false resIndex!21 resX!21))))

(assert (=> b!1526910 (= lt!661208 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48959 a!2804) j!70) mask!2512) (select (arr!48959 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526911 () Bool)

(assert (=> b!1526911 (= e!851082 (= (seekEntryOrOpen!0 lt!661206 lt!661209 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661206 lt!661209 mask!2512)))))

(declare-fun b!1526912 () Bool)

(declare-fun res!1045081 () Bool)

(assert (=> b!1526912 (=> (not res!1045081) (not e!851084))))

(declare-datatypes ((List!35622 0))(
  ( (Nil!35619) (Cons!35618 (h!37052 (_ BitVec 64)) (t!50323 List!35622)) )
))
(declare-fun arrayNoDuplicates!0 (array!101474 (_ BitVec 32) List!35622) Bool)

(assert (=> b!1526912 (= res!1045081 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35619))))

(declare-fun b!1526913 () Bool)

(declare-fun res!1045084 () Bool)

(assert (=> b!1526913 (=> (not res!1045084) (not e!851084))))

(assert (=> b!1526913 (= res!1045084 (validKeyInArray!0 (select (arr!48959 a!2804) i!961)))))

(declare-fun b!1526914 () Bool)

(assert (=> b!1526914 (= e!851079 e!851081)))

(declare-fun res!1045080 () Bool)

(assert (=> b!1526914 (=> res!1045080 e!851081)))

(assert (=> b!1526914 (= res!1045080 (or (not (= (select (arr!48959 a!2804) j!70) lt!661206)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48959 a!2804) index!487) (select (arr!48959 a!2804) j!70)) (not (= (select (arr!48959 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!130134 res!1045085) b!1526903))

(assert (= (and b!1526903 res!1045076) b!1526913))

(assert (= (and b!1526913 res!1045084) b!1526905))

(assert (= (and b!1526905 res!1045074) b!1526902))

(assert (= (and b!1526902 res!1045073) b!1526912))

(assert (= (and b!1526912 res!1045081) b!1526901))

(assert (= (and b!1526901 res!1045086) b!1526910))

(assert (= (and b!1526910 res!1045083) b!1526907))

(assert (= (and b!1526907 res!1045078) b!1526908))

(assert (= (and b!1526908 res!1045077) b!1526904))

(assert (= (and b!1526904 res!1045079) b!1526909))

(assert (= (and b!1526909 res!1045082) b!1526914))

(assert (= (and b!1526914 (not res!1045080)) b!1526906))

(assert (= (and b!1526906 res!1045075) b!1526911))

(declare-fun m!1409809 () Bool)

(assert (=> b!1526909 m!1409809))

(assert (=> b!1526909 m!1409809))

(declare-fun m!1409811 () Bool)

(assert (=> b!1526909 m!1409811))

(assert (=> b!1526906 m!1409809))

(assert (=> b!1526906 m!1409809))

(declare-fun m!1409813 () Bool)

(assert (=> b!1526906 m!1409813))

(assert (=> b!1526906 m!1409809))

(declare-fun m!1409815 () Bool)

(assert (=> b!1526906 m!1409815))

(assert (=> b!1526907 m!1409809))

(assert (=> b!1526907 m!1409809))

(declare-fun m!1409817 () Bool)

(assert (=> b!1526907 m!1409817))

(assert (=> b!1526905 m!1409809))

(assert (=> b!1526905 m!1409809))

(declare-fun m!1409819 () Bool)

(assert (=> b!1526905 m!1409819))

(declare-fun m!1409821 () Bool)

(assert (=> b!1526912 m!1409821))

(declare-fun m!1409823 () Bool)

(assert (=> b!1526911 m!1409823))

(declare-fun m!1409825 () Bool)

(assert (=> b!1526911 m!1409825))

(assert (=> b!1526910 m!1409809))

(assert (=> b!1526910 m!1409809))

(declare-fun m!1409827 () Bool)

(assert (=> b!1526910 m!1409827))

(assert (=> b!1526910 m!1409827))

(assert (=> b!1526910 m!1409809))

(declare-fun m!1409829 () Bool)

(assert (=> b!1526910 m!1409829))

(declare-fun m!1409831 () Bool)

(assert (=> b!1526904 m!1409831))

(declare-fun m!1409833 () Bool)

(assert (=> b!1526904 m!1409833))

(declare-fun m!1409835 () Bool)

(assert (=> b!1526908 m!1409835))

(assert (=> b!1526908 m!1409835))

(declare-fun m!1409837 () Bool)

(assert (=> b!1526908 m!1409837))

(declare-fun m!1409839 () Bool)

(assert (=> b!1526908 m!1409839))

(declare-fun m!1409841 () Bool)

(assert (=> b!1526908 m!1409841))

(declare-fun m!1409843 () Bool)

(assert (=> start!130134 m!1409843))

(declare-fun m!1409845 () Bool)

(assert (=> start!130134 m!1409845))

(declare-fun m!1409847 () Bool)

(assert (=> b!1526902 m!1409847))

(declare-fun m!1409849 () Bool)

(assert (=> b!1526913 m!1409849))

(assert (=> b!1526913 m!1409849))

(declare-fun m!1409851 () Bool)

(assert (=> b!1526913 m!1409851))

(assert (=> b!1526914 m!1409809))

(declare-fun m!1409853 () Bool)

(assert (=> b!1526914 m!1409853))

(check-sat (not b!1526907) (not b!1526910) (not b!1526913) (not b!1526905) (not b!1526902) (not b!1526909) (not b!1526908) (not b!1526906) (not start!130134) (not b!1526911) (not b!1526904) (not b!1526912))
(check-sat)
