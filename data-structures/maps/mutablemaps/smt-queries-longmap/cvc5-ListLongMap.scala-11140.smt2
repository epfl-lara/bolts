; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130234 () Bool)

(assert start!130234)

(declare-fun b!1528030 () Bool)

(declare-fun res!1045880 () Bool)

(declare-fun e!851682 () Bool)

(assert (=> b!1528030 (=> (not res!1045880) (not e!851682))))

(declare-datatypes ((array!101511 0))(
  ( (array!101512 (arr!48976 (Array (_ BitVec 32) (_ BitVec 64))) (size!49527 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101511)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101511 (_ BitVec 32)) Bool)

(assert (=> b!1528030 (= res!1045880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528031 () Bool)

(declare-fun res!1045877 () Bool)

(assert (=> b!1528031 (=> (not res!1045877) (not e!851682))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528031 (= res!1045877 (validKeyInArray!0 (select (arr!48976 a!2804) j!70)))))

(declare-fun b!1528032 () Bool)

(declare-fun e!851685 () Bool)

(assert (=> b!1528032 (= e!851685 true)))

(declare-datatypes ((SeekEntryResult!13162 0))(
  ( (MissingZero!13162 (index!55042 (_ BitVec 32))) (Found!13162 (index!55043 (_ BitVec 32))) (Intermediate!13162 (undefined!13974 Bool) (index!55044 (_ BitVec 32)) (x!136748 (_ BitVec 32))) (Undefined!13162) (MissingVacant!13162 (index!55045 (_ BitVec 32))) )
))
(declare-fun lt!661689 () SeekEntryResult!13162)

(declare-fun lt!661691 () SeekEntryResult!13162)

(assert (=> b!1528032 (= lt!661689 lt!661691)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((Unit!51064 0))(
  ( (Unit!51065) )
))
(declare-fun lt!661687 () Unit!51064)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101511 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51064)

(assert (=> b!1528032 (= lt!661687 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1528033 () Bool)

(declare-fun res!1045886 () Bool)

(assert (=> b!1528033 (=> (not res!1045886) (not e!851682))))

(assert (=> b!1528033 (= res!1045886 (and (= (size!49527 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49527 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49527 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1045881 () Bool)

(assert (=> start!130234 (=> (not res!1045881) (not e!851682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130234 (= res!1045881 (validMask!0 mask!2512))))

(assert (=> start!130234 e!851682))

(assert (=> start!130234 true))

(declare-fun array_inv!37921 (array!101511) Bool)

(assert (=> start!130234 (array_inv!37921 a!2804)))

(declare-fun b!1528034 () Bool)

(declare-fun res!1045887 () Bool)

(assert (=> b!1528034 (=> (not res!1045887) (not e!851682))))

(assert (=> b!1528034 (= res!1045887 (validKeyInArray!0 (select (arr!48976 a!2804) i!961)))))

(declare-fun b!1528035 () Bool)

(declare-fun e!851687 () Bool)

(assert (=> b!1528035 (= e!851687 e!851685)))

(declare-fun res!1045878 () Bool)

(assert (=> b!1528035 (=> res!1045878 e!851685)))

(assert (=> b!1528035 (= res!1045878 (not (= lt!661691 (Found!13162 j!70))))))

(declare-fun lt!661685 () SeekEntryResult!13162)

(assert (=> b!1528035 (= lt!661685 lt!661689)))

(declare-fun lt!661684 () (_ BitVec 64))

(declare-fun lt!661690 () array!101511)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101511 (_ BitVec 32)) SeekEntryResult!13162)

(assert (=> b!1528035 (= lt!661689 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661684 lt!661690 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101511 (_ BitVec 32)) SeekEntryResult!13162)

(assert (=> b!1528035 (= lt!661685 (seekEntryOrOpen!0 lt!661684 lt!661690 mask!2512))))

(declare-fun lt!661688 () SeekEntryResult!13162)

(assert (=> b!1528035 (= lt!661688 lt!661691)))

(assert (=> b!1528035 (= lt!661691 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48976 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528035 (= lt!661688 (seekEntryOrOpen!0 (select (arr!48976 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528036 () Bool)

(declare-fun e!851683 () Bool)

(declare-fun e!851681 () Bool)

(assert (=> b!1528036 (= e!851683 e!851681)))

(declare-fun res!1045875 () Bool)

(assert (=> b!1528036 (=> (not res!1045875) (not e!851681))))

(declare-fun lt!661693 () SeekEntryResult!13162)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101511 (_ BitVec 32)) SeekEntryResult!13162)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528036 (= res!1045875 (= lt!661693 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661684 mask!2512) lt!661684 lt!661690 mask!2512)))))

(assert (=> b!1528036 (= lt!661684 (select (store (arr!48976 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528036 (= lt!661690 (array!101512 (store (arr!48976 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49527 a!2804)))))

(declare-fun b!1528037 () Bool)

(declare-fun e!851686 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101511 (_ BitVec 32)) SeekEntryResult!13162)

(assert (=> b!1528037 (= e!851686 (= (seekEntry!0 (select (arr!48976 a!2804) j!70) a!2804 mask!2512) (Found!13162 j!70)))))

(declare-fun b!1528038 () Bool)

(assert (=> b!1528038 (= e!851682 e!851683)))

(declare-fun res!1045884 () Bool)

(assert (=> b!1528038 (=> (not res!1045884) (not e!851683))))

(declare-fun lt!661686 () SeekEntryResult!13162)

(assert (=> b!1528038 (= res!1045884 (= lt!661693 lt!661686))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1528038 (= lt!661686 (Intermediate!13162 false resIndex!21 resX!21))))

(assert (=> b!1528038 (= lt!661693 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48976 a!2804) j!70) mask!2512) (select (arr!48976 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528039 () Bool)

(assert (=> b!1528039 (= e!851681 (not e!851687))))

(declare-fun res!1045885 () Bool)

(assert (=> b!1528039 (=> res!1045885 e!851687)))

(assert (=> b!1528039 (= res!1045885 (or (not (= (select (arr!48976 a!2804) j!70) lt!661684)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48976 a!2804) index!487) (select (arr!48976 a!2804) j!70)) (not (= (select (arr!48976 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1528039 e!851686))

(declare-fun res!1045876 () Bool)

(assert (=> b!1528039 (=> (not res!1045876) (not e!851686))))

(assert (=> b!1528039 (= res!1045876 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!661692 () Unit!51064)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101511 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51064)

(assert (=> b!1528039 (= lt!661692 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528040 () Bool)

(declare-fun res!1045883 () Bool)

(assert (=> b!1528040 (=> (not res!1045883) (not e!851682))))

(declare-datatypes ((List!35639 0))(
  ( (Nil!35636) (Cons!35635 (h!37072 (_ BitVec 64)) (t!50340 List!35639)) )
))
(declare-fun arrayNoDuplicates!0 (array!101511 (_ BitVec 32) List!35639) Bool)

(assert (=> b!1528040 (= res!1045883 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35636))))

(declare-fun b!1528041 () Bool)

(declare-fun res!1045879 () Bool)

(assert (=> b!1528041 (=> (not res!1045879) (not e!851683))))

(assert (=> b!1528041 (= res!1045879 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48976 a!2804) j!70) a!2804 mask!2512) lt!661686))))

(declare-fun b!1528042 () Bool)

(declare-fun res!1045882 () Bool)

(assert (=> b!1528042 (=> (not res!1045882) (not e!851682))))

(assert (=> b!1528042 (= res!1045882 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49527 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49527 a!2804))))))

(assert (= (and start!130234 res!1045881) b!1528033))

(assert (= (and b!1528033 res!1045886) b!1528034))

(assert (= (and b!1528034 res!1045887) b!1528031))

(assert (= (and b!1528031 res!1045877) b!1528030))

(assert (= (and b!1528030 res!1045880) b!1528040))

(assert (= (and b!1528040 res!1045883) b!1528042))

(assert (= (and b!1528042 res!1045882) b!1528038))

(assert (= (and b!1528038 res!1045884) b!1528041))

(assert (= (and b!1528041 res!1045879) b!1528036))

(assert (= (and b!1528036 res!1045875) b!1528039))

(assert (= (and b!1528039 res!1045876) b!1528037))

(assert (= (and b!1528039 (not res!1045885)) b!1528035))

(assert (= (and b!1528035 (not res!1045878)) b!1528032))

(declare-fun m!1410849 () Bool)

(assert (=> b!1528032 m!1410849))

(declare-fun m!1410851 () Bool)

(assert (=> b!1528036 m!1410851))

(assert (=> b!1528036 m!1410851))

(declare-fun m!1410853 () Bool)

(assert (=> b!1528036 m!1410853))

(declare-fun m!1410855 () Bool)

(assert (=> b!1528036 m!1410855))

(declare-fun m!1410857 () Bool)

(assert (=> b!1528036 m!1410857))

(declare-fun m!1410859 () Bool)

(assert (=> b!1528037 m!1410859))

(assert (=> b!1528037 m!1410859))

(declare-fun m!1410861 () Bool)

(assert (=> b!1528037 m!1410861))

(assert (=> b!1528031 m!1410859))

(assert (=> b!1528031 m!1410859))

(declare-fun m!1410863 () Bool)

(assert (=> b!1528031 m!1410863))

(assert (=> b!1528038 m!1410859))

(assert (=> b!1528038 m!1410859))

(declare-fun m!1410865 () Bool)

(assert (=> b!1528038 m!1410865))

(assert (=> b!1528038 m!1410865))

(assert (=> b!1528038 m!1410859))

(declare-fun m!1410867 () Bool)

(assert (=> b!1528038 m!1410867))

(assert (=> b!1528039 m!1410859))

(declare-fun m!1410869 () Bool)

(assert (=> b!1528039 m!1410869))

(declare-fun m!1410871 () Bool)

(assert (=> b!1528039 m!1410871))

(declare-fun m!1410873 () Bool)

(assert (=> b!1528039 m!1410873))

(declare-fun m!1410875 () Bool)

(assert (=> start!130234 m!1410875))

(declare-fun m!1410877 () Bool)

(assert (=> start!130234 m!1410877))

(declare-fun m!1410879 () Bool)

(assert (=> b!1528030 m!1410879))

(declare-fun m!1410881 () Bool)

(assert (=> b!1528034 m!1410881))

(assert (=> b!1528034 m!1410881))

(declare-fun m!1410883 () Bool)

(assert (=> b!1528034 m!1410883))

(declare-fun m!1410885 () Bool)

(assert (=> b!1528040 m!1410885))

(assert (=> b!1528035 m!1410859))

(declare-fun m!1410887 () Bool)

(assert (=> b!1528035 m!1410887))

(assert (=> b!1528035 m!1410859))

(declare-fun m!1410889 () Bool)

(assert (=> b!1528035 m!1410889))

(declare-fun m!1410891 () Bool)

(assert (=> b!1528035 m!1410891))

(assert (=> b!1528035 m!1410859))

(declare-fun m!1410893 () Bool)

(assert (=> b!1528035 m!1410893))

(assert (=> b!1528041 m!1410859))

(assert (=> b!1528041 m!1410859))

(declare-fun m!1410895 () Bool)

(assert (=> b!1528041 m!1410895))

(push 1)

