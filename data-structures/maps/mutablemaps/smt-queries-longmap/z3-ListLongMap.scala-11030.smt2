; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129060 () Bool)

(assert start!129060)

(declare-fun b!1512912 () Bool)

(declare-fun e!844439 () Bool)

(declare-fun e!844434 () Bool)

(assert (=> b!1512912 (= e!844439 e!844434)))

(declare-fun res!1032899 () Bool)

(assert (=> b!1512912 (=> (not res!1032899) (not e!844434))))

(declare-fun lt!655768 () (_ BitVec 64))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100829 0))(
  ( (array!100830 (arr!48647 (Array (_ BitVec 32) (_ BitVec 64))) (size!49198 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100829)

(declare-datatypes ((SeekEntryResult!12839 0))(
  ( (MissingZero!12839 (index!53750 (_ BitVec 32))) (Found!12839 (index!53751 (_ BitVec 32))) (Intermediate!12839 (undefined!13651 Bool) (index!53752 (_ BitVec 32)) (x!135482 (_ BitVec 32))) (Undefined!12839) (MissingVacant!12839 (index!53753 (_ BitVec 32))) )
))
(declare-fun lt!655770 () SeekEntryResult!12839)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100829 (_ BitVec 32)) SeekEntryResult!12839)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512912 (= res!1032899 (= lt!655770 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655768 mask!2512) lt!655768 (array!100830 (store (arr!48647 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49198 a!2804)) mask!2512)))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1512912 (= lt!655768 (select (store (arr!48647 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(declare-fun b!1512913 () Bool)

(declare-fun res!1032891 () Bool)

(declare-fun e!844437 () Bool)

(assert (=> b!1512913 (=> (not res!1032891) (not e!844437))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1512913 (= res!1032891 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49198 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49198 a!2804))))))

(declare-fun b!1512914 () Bool)

(declare-fun res!1032889 () Bool)

(assert (=> b!1512914 (=> (not res!1032889) (not e!844437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100829 (_ BitVec 32)) Bool)

(assert (=> b!1512914 (= res!1032889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512915 () Bool)

(declare-fun res!1032896 () Bool)

(assert (=> b!1512915 (=> (not res!1032896) (not e!844437))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512915 (= res!1032896 (validKeyInArray!0 (select (arr!48647 a!2804) j!70)))))

(declare-fun b!1512916 () Bool)

(assert (=> b!1512916 (= e!844437 e!844439)))

(declare-fun res!1032900 () Bool)

(assert (=> b!1512916 (=> (not res!1032900) (not e!844439))))

(declare-fun lt!655769 () SeekEntryResult!12839)

(assert (=> b!1512916 (= res!1032900 (= lt!655770 lt!655769))))

(assert (=> b!1512916 (= lt!655769 (Intermediate!12839 false resIndex!21 resX!21))))

(assert (=> b!1512916 (= lt!655770 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48647 a!2804) j!70) mask!2512) (select (arr!48647 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1032887 () Bool)

(assert (=> start!129060 (=> (not res!1032887) (not e!844437))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129060 (= res!1032887 (validMask!0 mask!2512))))

(assert (=> start!129060 e!844437))

(assert (=> start!129060 true))

(declare-fun array_inv!37592 (array!100829) Bool)

(assert (=> start!129060 (array_inv!37592 a!2804)))

(declare-fun b!1512917 () Bool)

(declare-fun e!844433 () Bool)

(declare-fun e!844436 () Bool)

(assert (=> b!1512917 (= e!844433 e!844436)))

(declare-fun res!1032897 () Bool)

(assert (=> b!1512917 (=> res!1032897 e!844436)))

(assert (=> b!1512917 (= res!1032897 (or (not (= (select (arr!48647 a!2804) j!70) lt!655768)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48647 a!2804) index!487) (select (arr!48647 a!2804) j!70)) (not (= (select (arr!48647 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512918 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100829 (_ BitVec 32)) SeekEntryResult!12839)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100829 (_ BitVec 32)) SeekEntryResult!12839)

(assert (=> b!1512918 (= e!844436 (= (seekEntryOrOpen!0 (select (arr!48647 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48647 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512919 () Bool)

(declare-fun res!1032895 () Bool)

(assert (=> b!1512919 (=> (not res!1032895) (not e!844437))))

(declare-datatypes ((List!35310 0))(
  ( (Nil!35307) (Cons!35306 (h!36719 (_ BitVec 64)) (t!50011 List!35310)) )
))
(declare-fun arrayNoDuplicates!0 (array!100829 (_ BitVec 32) List!35310) Bool)

(assert (=> b!1512919 (= res!1032895 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35307))))

(declare-fun b!1512920 () Bool)

(declare-fun res!1032892 () Bool)

(assert (=> b!1512920 (=> (not res!1032892) (not e!844439))))

(assert (=> b!1512920 (= res!1032892 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48647 a!2804) j!70) a!2804 mask!2512) lt!655769))))

(declare-fun b!1512921 () Bool)

(declare-fun e!844438 () Bool)

(assert (=> b!1512921 (= e!844438 (validKeyInArray!0 lt!655768))))

(declare-fun b!1512922 () Bool)

(declare-fun res!1032898 () Bool)

(assert (=> b!1512922 (=> (not res!1032898) (not e!844433))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100829 (_ BitVec 32)) SeekEntryResult!12839)

(assert (=> b!1512922 (= res!1032898 (= (seekEntry!0 (select (arr!48647 a!2804) j!70) a!2804 mask!2512) (Found!12839 j!70)))))

(declare-fun b!1512923 () Bool)

(declare-fun res!1032893 () Bool)

(assert (=> b!1512923 (=> (not res!1032893) (not e!844437))))

(assert (=> b!1512923 (= res!1032893 (and (= (size!49198 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49198 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49198 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512924 () Bool)

(declare-fun res!1032894 () Bool)

(assert (=> b!1512924 (=> (not res!1032894) (not e!844437))))

(assert (=> b!1512924 (= res!1032894 (validKeyInArray!0 (select (arr!48647 a!2804) i!961)))))

(declare-fun b!1512925 () Bool)

(assert (=> b!1512925 (= e!844434 (not e!844438))))

(declare-fun res!1032888 () Bool)

(assert (=> b!1512925 (=> res!1032888 e!844438)))

(assert (=> b!1512925 (= res!1032888 (or (not (= (select (arr!48647 a!2804) j!70) lt!655768)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48647 a!2804) index!487) (select (arr!48647 a!2804) j!70)) (not (= (select (arr!48647 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000) (bvsge index!487 (bvadd #b00000000000000000000000000000001 mask!2512)) (not (= (select (store (arr!48647 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1512925 e!844433))

(declare-fun res!1032890 () Bool)

(assert (=> b!1512925 (=> (not res!1032890) (not e!844433))))

(assert (=> b!1512925 (= res!1032890 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50502 0))(
  ( (Unit!50503) )
))
(declare-fun lt!655771 () Unit!50502)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100829 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50502)

(assert (=> b!1512925 (= lt!655771 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129060 res!1032887) b!1512923))

(assert (= (and b!1512923 res!1032893) b!1512924))

(assert (= (and b!1512924 res!1032894) b!1512915))

(assert (= (and b!1512915 res!1032896) b!1512914))

(assert (= (and b!1512914 res!1032889) b!1512919))

(assert (= (and b!1512919 res!1032895) b!1512913))

(assert (= (and b!1512913 res!1032891) b!1512916))

(assert (= (and b!1512916 res!1032900) b!1512920))

(assert (= (and b!1512920 res!1032892) b!1512912))

(assert (= (and b!1512912 res!1032899) b!1512925))

(assert (= (and b!1512925 res!1032890) b!1512922))

(assert (= (and b!1512922 res!1032898) b!1512917))

(assert (= (and b!1512917 (not res!1032897)) b!1512918))

(assert (= (and b!1512925 (not res!1032888)) b!1512921))

(declare-fun m!1395781 () Bool)

(assert (=> b!1512920 m!1395781))

(assert (=> b!1512920 m!1395781))

(declare-fun m!1395783 () Bool)

(assert (=> b!1512920 m!1395783))

(declare-fun m!1395785 () Bool)

(assert (=> b!1512914 m!1395785))

(assert (=> b!1512915 m!1395781))

(assert (=> b!1512915 m!1395781))

(declare-fun m!1395787 () Bool)

(assert (=> b!1512915 m!1395787))

(assert (=> b!1512917 m!1395781))

(declare-fun m!1395789 () Bool)

(assert (=> b!1512917 m!1395789))

(declare-fun m!1395791 () Bool)

(assert (=> b!1512912 m!1395791))

(declare-fun m!1395793 () Bool)

(assert (=> b!1512912 m!1395793))

(assert (=> b!1512912 m!1395791))

(declare-fun m!1395795 () Bool)

(assert (=> b!1512912 m!1395795))

(declare-fun m!1395797 () Bool)

(assert (=> b!1512912 m!1395797))

(declare-fun m!1395799 () Bool)

(assert (=> b!1512924 m!1395799))

(assert (=> b!1512924 m!1395799))

(declare-fun m!1395801 () Bool)

(assert (=> b!1512924 m!1395801))

(declare-fun m!1395803 () Bool)

(assert (=> b!1512921 m!1395803))

(declare-fun m!1395805 () Bool)

(assert (=> start!129060 m!1395805))

(declare-fun m!1395807 () Bool)

(assert (=> start!129060 m!1395807))

(declare-fun m!1395809 () Bool)

(assert (=> b!1512919 m!1395809))

(assert (=> b!1512922 m!1395781))

(assert (=> b!1512922 m!1395781))

(declare-fun m!1395811 () Bool)

(assert (=> b!1512922 m!1395811))

(assert (=> b!1512918 m!1395781))

(assert (=> b!1512918 m!1395781))

(declare-fun m!1395813 () Bool)

(assert (=> b!1512918 m!1395813))

(assert (=> b!1512918 m!1395781))

(declare-fun m!1395815 () Bool)

(assert (=> b!1512918 m!1395815))

(assert (=> b!1512916 m!1395781))

(assert (=> b!1512916 m!1395781))

(declare-fun m!1395817 () Bool)

(assert (=> b!1512916 m!1395817))

(assert (=> b!1512916 m!1395817))

(assert (=> b!1512916 m!1395781))

(declare-fun m!1395819 () Bool)

(assert (=> b!1512916 m!1395819))

(assert (=> b!1512925 m!1395781))

(declare-fun m!1395821 () Bool)

(assert (=> b!1512925 m!1395821))

(assert (=> b!1512925 m!1395793))

(assert (=> b!1512925 m!1395789))

(declare-fun m!1395823 () Bool)

(assert (=> b!1512925 m!1395823))

(declare-fun m!1395825 () Bool)

(assert (=> b!1512925 m!1395825))

(check-sat (not b!1512924) (not b!1512925) (not b!1512921) (not start!129060) (not b!1512916) (not b!1512920) (not b!1512914) (not b!1512915) (not b!1512912) (not b!1512919) (not b!1512918) (not b!1512922))
(check-sat)
