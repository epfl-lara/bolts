; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129106 () Bool)

(assert start!129106)

(declare-fun b!1513878 () Bool)

(declare-fun res!1033865 () Bool)

(declare-fun e!844922 () Bool)

(assert (=> b!1513878 (=> (not res!1033865) (not e!844922))))

(declare-datatypes ((array!100875 0))(
  ( (array!100876 (arr!48670 (Array (_ BitVec 32) (_ BitVec 64))) (size!49221 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100875)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513878 (= res!1033865 (validKeyInArray!0 (select (arr!48670 a!2804) i!961)))))

(declare-fun b!1513879 () Bool)

(declare-fun res!1033864 () Bool)

(assert (=> b!1513879 (=> (not res!1033864) (not e!844922))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1513879 (= res!1033864 (validKeyInArray!0 (select (arr!48670 a!2804) j!70)))))

(declare-fun b!1513880 () Bool)

(declare-fun e!844916 () Bool)

(assert (=> b!1513880 (= e!844922 e!844916)))

(declare-fun res!1033855 () Bool)

(assert (=> b!1513880 (=> (not res!1033855) (not e!844916))))

(declare-datatypes ((SeekEntryResult!12862 0))(
  ( (MissingZero!12862 (index!53842 (_ BitVec 32))) (Found!12862 (index!53843 (_ BitVec 32))) (Intermediate!12862 (undefined!13674 Bool) (index!53844 (_ BitVec 32)) (x!135569 (_ BitVec 32))) (Undefined!12862) (MissingVacant!12862 (index!53845 (_ BitVec 32))) )
))
(declare-fun lt!656113 () SeekEntryResult!12862)

(declare-fun lt!656112 () SeekEntryResult!12862)

(assert (=> b!1513880 (= res!1033855 (= lt!656113 lt!656112))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1513880 (= lt!656112 (Intermediate!12862 false resIndex!21 resX!21))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100875 (_ BitVec 32)) SeekEntryResult!12862)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513880 (= lt!656113 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48670 a!2804) j!70) mask!2512) (select (arr!48670 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513881 () Bool)

(declare-fun e!844919 () Bool)

(assert (=> b!1513881 (= e!844919 (not true))))

(declare-fun e!844918 () Bool)

(assert (=> b!1513881 e!844918))

(declare-fun res!1033861 () Bool)

(assert (=> b!1513881 (=> (not res!1033861) (not e!844918))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100875 (_ BitVec 32)) Bool)

(assert (=> b!1513881 (= res!1033861 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50548 0))(
  ( (Unit!50549) )
))
(declare-fun lt!656110 () Unit!50548)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100875 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50548)

(assert (=> b!1513881 (= lt!656110 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513882 () Bool)

(declare-fun res!1033863 () Bool)

(assert (=> b!1513882 (=> (not res!1033863) (not e!844922))))

(assert (=> b!1513882 (= res!1033863 (and (= (size!49221 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49221 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49221 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513883 () Bool)

(declare-fun res!1033859 () Bool)

(assert (=> b!1513883 (=> (not res!1033859) (not e!844918))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100875 (_ BitVec 32)) SeekEntryResult!12862)

(assert (=> b!1513883 (= res!1033859 (= (seekEntry!0 (select (arr!48670 a!2804) j!70) a!2804 mask!2512) (Found!12862 j!70)))))

(declare-fun b!1513884 () Bool)

(declare-fun res!1033857 () Bool)

(assert (=> b!1513884 (=> (not res!1033857) (not e!844922))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1513884 (= res!1033857 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49221 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49221 a!2804))))))

(declare-fun b!1513885 () Bool)

(declare-fun e!844917 () Bool)

(assert (=> b!1513885 (= e!844918 e!844917)))

(declare-fun res!1033853 () Bool)

(assert (=> b!1513885 (=> res!1033853 e!844917)))

(declare-fun lt!656111 () (_ BitVec 64))

(assert (=> b!1513885 (= res!1033853 (or (not (= (select (arr!48670 a!2804) j!70) lt!656111)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48670 a!2804) index!487) (select (arr!48670 a!2804) j!70)) (not (= (select (arr!48670 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513886 () Bool)

(declare-fun e!844920 () Bool)

(declare-fun lt!656109 () array!100875)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100875 (_ BitVec 32)) SeekEntryResult!12862)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100875 (_ BitVec 32)) SeekEntryResult!12862)

(assert (=> b!1513886 (= e!844920 (= (seekEntryOrOpen!0 lt!656111 lt!656109 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656111 lt!656109 mask!2512)))))

(declare-fun b!1513887 () Bool)

(assert (=> b!1513887 (= e!844917 e!844920)))

(declare-fun res!1033858 () Bool)

(assert (=> b!1513887 (=> (not res!1033858) (not e!844920))))

(assert (=> b!1513887 (= res!1033858 (= (seekEntryOrOpen!0 (select (arr!48670 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48670 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun res!1033856 () Bool)

(assert (=> start!129106 (=> (not res!1033856) (not e!844922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129106 (= res!1033856 (validMask!0 mask!2512))))

(assert (=> start!129106 e!844922))

(assert (=> start!129106 true))

(declare-fun array_inv!37615 (array!100875) Bool)

(assert (=> start!129106 (array_inv!37615 a!2804)))

(declare-fun b!1513888 () Bool)

(declare-fun res!1033862 () Bool)

(assert (=> b!1513888 (=> (not res!1033862) (not e!844922))))

(assert (=> b!1513888 (= res!1033862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513889 () Bool)

(declare-fun res!1033860 () Bool)

(assert (=> b!1513889 (=> (not res!1033860) (not e!844916))))

(assert (=> b!1513889 (= res!1033860 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48670 a!2804) j!70) a!2804 mask!2512) lt!656112))))

(declare-fun b!1513890 () Bool)

(assert (=> b!1513890 (= e!844916 e!844919)))

(declare-fun res!1033854 () Bool)

(assert (=> b!1513890 (=> (not res!1033854) (not e!844919))))

(assert (=> b!1513890 (= res!1033854 (= lt!656113 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656111 mask!2512) lt!656111 lt!656109 mask!2512)))))

(assert (=> b!1513890 (= lt!656111 (select (store (arr!48670 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513890 (= lt!656109 (array!100876 (store (arr!48670 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49221 a!2804)))))

(declare-fun b!1513891 () Bool)

(declare-fun res!1033866 () Bool)

(assert (=> b!1513891 (=> (not res!1033866) (not e!844922))))

(declare-datatypes ((List!35333 0))(
  ( (Nil!35330) (Cons!35329 (h!36742 (_ BitVec 64)) (t!50034 List!35333)) )
))
(declare-fun arrayNoDuplicates!0 (array!100875 (_ BitVec 32) List!35333) Bool)

(assert (=> b!1513891 (= res!1033866 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35330))))

(assert (= (and start!129106 res!1033856) b!1513882))

(assert (= (and b!1513882 res!1033863) b!1513878))

(assert (= (and b!1513878 res!1033865) b!1513879))

(assert (= (and b!1513879 res!1033864) b!1513888))

(assert (= (and b!1513888 res!1033862) b!1513891))

(assert (= (and b!1513891 res!1033866) b!1513884))

(assert (= (and b!1513884 res!1033857) b!1513880))

(assert (= (and b!1513880 res!1033855) b!1513889))

(assert (= (and b!1513889 res!1033860) b!1513890))

(assert (= (and b!1513890 res!1033854) b!1513881))

(assert (= (and b!1513881 res!1033861) b!1513883))

(assert (= (and b!1513883 res!1033859) b!1513885))

(assert (= (and b!1513885 (not res!1033853)) b!1513887))

(assert (= (and b!1513887 res!1033858) b!1513886))

(declare-fun m!1396839 () Bool)

(assert (=> b!1513887 m!1396839))

(assert (=> b!1513887 m!1396839))

(declare-fun m!1396841 () Bool)

(assert (=> b!1513887 m!1396841))

(assert (=> b!1513887 m!1396839))

(declare-fun m!1396843 () Bool)

(assert (=> b!1513887 m!1396843))

(assert (=> b!1513885 m!1396839))

(declare-fun m!1396845 () Bool)

(assert (=> b!1513885 m!1396845))

(declare-fun m!1396847 () Bool)

(assert (=> b!1513886 m!1396847))

(declare-fun m!1396849 () Bool)

(assert (=> b!1513886 m!1396849))

(declare-fun m!1396851 () Bool)

(assert (=> start!129106 m!1396851))

(declare-fun m!1396853 () Bool)

(assert (=> start!129106 m!1396853))

(assert (=> b!1513889 m!1396839))

(assert (=> b!1513889 m!1396839))

(declare-fun m!1396855 () Bool)

(assert (=> b!1513889 m!1396855))

(assert (=> b!1513879 m!1396839))

(assert (=> b!1513879 m!1396839))

(declare-fun m!1396857 () Bool)

(assert (=> b!1513879 m!1396857))

(assert (=> b!1513880 m!1396839))

(assert (=> b!1513880 m!1396839))

(declare-fun m!1396859 () Bool)

(assert (=> b!1513880 m!1396859))

(assert (=> b!1513880 m!1396859))

(assert (=> b!1513880 m!1396839))

(declare-fun m!1396861 () Bool)

(assert (=> b!1513880 m!1396861))

(declare-fun m!1396863 () Bool)

(assert (=> b!1513888 m!1396863))

(declare-fun m!1396865 () Bool)

(assert (=> b!1513881 m!1396865))

(declare-fun m!1396867 () Bool)

(assert (=> b!1513881 m!1396867))

(assert (=> b!1513883 m!1396839))

(assert (=> b!1513883 m!1396839))

(declare-fun m!1396869 () Bool)

(assert (=> b!1513883 m!1396869))

(declare-fun m!1396871 () Bool)

(assert (=> b!1513891 m!1396871))

(declare-fun m!1396873 () Bool)

(assert (=> b!1513890 m!1396873))

(assert (=> b!1513890 m!1396873))

(declare-fun m!1396875 () Bool)

(assert (=> b!1513890 m!1396875))

(declare-fun m!1396877 () Bool)

(assert (=> b!1513890 m!1396877))

(declare-fun m!1396879 () Bool)

(assert (=> b!1513890 m!1396879))

(declare-fun m!1396881 () Bool)

(assert (=> b!1513878 m!1396881))

(assert (=> b!1513878 m!1396881))

(declare-fun m!1396883 () Bool)

(assert (=> b!1513878 m!1396883))

(push 1)

