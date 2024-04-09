; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129064 () Bool)

(assert start!129064)

(declare-fun b!1512996 () Bool)

(declare-fun e!844475 () Bool)

(declare-fun e!844480 () Bool)

(assert (=> b!1512996 (= e!844475 e!844480)))

(declare-fun res!1032973 () Bool)

(assert (=> b!1512996 (=> (not res!1032973) (not e!844480))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((array!100833 0))(
  ( (array!100834 (arr!48649 (Array (_ BitVec 32) (_ BitVec 64))) (size!49200 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100833)

(declare-datatypes ((SeekEntryResult!12841 0))(
  ( (MissingZero!12841 (index!53758 (_ BitVec 32))) (Found!12841 (index!53759 (_ BitVec 32))) (Intermediate!12841 (undefined!13653 Bool) (index!53760 (_ BitVec 32)) (x!135492 (_ BitVec 32))) (Undefined!12841) (MissingVacant!12841 (index!53761 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100833 (_ BitVec 32)) SeekEntryResult!12841)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100833 (_ BitVec 32)) SeekEntryResult!12841)

(assert (=> b!1512996 (= res!1032973 (= (seekEntryOrOpen!0 (select (arr!48649 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48649 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun res!1032977 () Bool)

(declare-fun e!844478 () Bool)

(assert (=> start!129064 (=> (not res!1032977) (not e!844478))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129064 (= res!1032977 (validMask!0 mask!2512))))

(assert (=> start!129064 e!844478))

(assert (=> start!129064 true))

(declare-fun array_inv!37594 (array!100833) Bool)

(assert (=> start!129064 (array_inv!37594 a!2804)))

(declare-fun b!1512997 () Bool)

(declare-fun res!1032982 () Bool)

(declare-fun e!844476 () Bool)

(assert (=> b!1512997 (=> (not res!1032982) (not e!844476))))

(declare-fun lt!655795 () SeekEntryResult!12841)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100833 (_ BitVec 32)) SeekEntryResult!12841)

(assert (=> b!1512997 (= res!1032982 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48649 a!2804) j!70) a!2804 mask!2512) lt!655795))))

(declare-fun b!1512998 () Bool)

(declare-fun e!844477 () Bool)

(assert (=> b!1512998 (= e!844476 e!844477)))

(declare-fun res!1032974 () Bool)

(assert (=> b!1512998 (=> (not res!1032974) (not e!844477))))

(declare-fun lt!655796 () array!100833)

(declare-fun lt!655794 () (_ BitVec 64))

(declare-fun lt!655797 () SeekEntryResult!12841)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512998 (= res!1032974 (= lt!655797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655794 mask!2512) lt!655794 lt!655796 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1512998 (= lt!655794 (select (store (arr!48649 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1512998 (= lt!655796 (array!100834 (store (arr!48649 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49200 a!2804)))))

(declare-fun b!1512999 () Bool)

(declare-fun res!1032978 () Bool)

(assert (=> b!1512999 (=> (not res!1032978) (not e!844478))))

(declare-datatypes ((List!35312 0))(
  ( (Nil!35309) (Cons!35308 (h!36721 (_ BitVec 64)) (t!50013 List!35312)) )
))
(declare-fun arrayNoDuplicates!0 (array!100833 (_ BitVec 32) List!35312) Bool)

(assert (=> b!1512999 (= res!1032978 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35309))))

(declare-fun b!1513000 () Bool)

(assert (=> b!1513000 (= e!844478 e!844476)))

(declare-fun res!1032975 () Bool)

(assert (=> b!1513000 (=> (not res!1032975) (not e!844476))))

(assert (=> b!1513000 (= res!1032975 (= lt!655797 lt!655795))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1513000 (= lt!655795 (Intermediate!12841 false resIndex!21 resX!21))))

(assert (=> b!1513000 (= lt!655797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48649 a!2804) j!70) mask!2512) (select (arr!48649 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513001 () Bool)

(declare-fun res!1032976 () Bool)

(assert (=> b!1513001 (=> (not res!1032976) (not e!844478))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513001 (= res!1032976 (validKeyInArray!0 (select (arr!48649 a!2804) i!961)))))

(declare-fun b!1513002 () Bool)

(declare-fun res!1032983 () Bool)

(assert (=> b!1513002 (=> (not res!1032983) (not e!844478))))

(assert (=> b!1513002 (= res!1032983 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49200 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49200 a!2804))))))

(declare-fun b!1513003 () Bool)

(assert (=> b!1513003 (= e!844480 (= (seekEntryOrOpen!0 lt!655794 lt!655796 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!655794 lt!655796 mask!2512)))))

(declare-fun b!1513004 () Bool)

(declare-fun res!1032972 () Bool)

(assert (=> b!1513004 (=> (not res!1032972) (not e!844478))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100833 (_ BitVec 32)) Bool)

(assert (=> b!1513004 (= res!1032972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513005 () Bool)

(assert (=> b!1513005 (= e!844477 (not true))))

(declare-fun e!844479 () Bool)

(assert (=> b!1513005 e!844479))

(declare-fun res!1032981 () Bool)

(assert (=> b!1513005 (=> (not res!1032981) (not e!844479))))

(assert (=> b!1513005 (= res!1032981 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50506 0))(
  ( (Unit!50507) )
))
(declare-fun lt!655798 () Unit!50506)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100833 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50506)

(assert (=> b!1513005 (= lt!655798 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513006 () Bool)

(declare-fun res!1032980 () Bool)

(assert (=> b!1513006 (=> (not res!1032980) (not e!844478))))

(assert (=> b!1513006 (= res!1032980 (and (= (size!49200 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49200 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49200 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513007 () Bool)

(assert (=> b!1513007 (= e!844479 e!844475)))

(declare-fun res!1032984 () Bool)

(assert (=> b!1513007 (=> res!1032984 e!844475)))

(assert (=> b!1513007 (= res!1032984 (or (not (= (select (arr!48649 a!2804) j!70) lt!655794)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48649 a!2804) index!487) (select (arr!48649 a!2804) j!70)) (not (= (select (arr!48649 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513008 () Bool)

(declare-fun res!1032971 () Bool)

(assert (=> b!1513008 (=> (not res!1032971) (not e!844478))))

(assert (=> b!1513008 (= res!1032971 (validKeyInArray!0 (select (arr!48649 a!2804) j!70)))))

(declare-fun b!1513009 () Bool)

(declare-fun res!1032979 () Bool)

(assert (=> b!1513009 (=> (not res!1032979) (not e!844479))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100833 (_ BitVec 32)) SeekEntryResult!12841)

(assert (=> b!1513009 (= res!1032979 (= (seekEntry!0 (select (arr!48649 a!2804) j!70) a!2804 mask!2512) (Found!12841 j!70)))))

(assert (= (and start!129064 res!1032977) b!1513006))

(assert (= (and b!1513006 res!1032980) b!1513001))

(assert (= (and b!1513001 res!1032976) b!1513008))

(assert (= (and b!1513008 res!1032971) b!1513004))

(assert (= (and b!1513004 res!1032972) b!1512999))

(assert (= (and b!1512999 res!1032978) b!1513002))

(assert (= (and b!1513002 res!1032983) b!1513000))

(assert (= (and b!1513000 res!1032975) b!1512997))

(assert (= (and b!1512997 res!1032982) b!1512998))

(assert (= (and b!1512998 res!1032974) b!1513005))

(assert (= (and b!1513005 res!1032981) b!1513009))

(assert (= (and b!1513009 res!1032979) b!1513007))

(assert (= (and b!1513007 (not res!1032984)) b!1512996))

(assert (= (and b!1512996 res!1032973) b!1513003))

(declare-fun m!1395873 () Bool)

(assert (=> b!1513001 m!1395873))

(assert (=> b!1513001 m!1395873))

(declare-fun m!1395875 () Bool)

(assert (=> b!1513001 m!1395875))

(declare-fun m!1395877 () Bool)

(assert (=> b!1513004 m!1395877))

(declare-fun m!1395879 () Bool)

(assert (=> b!1512999 m!1395879))

(declare-fun m!1395881 () Bool)

(assert (=> b!1513005 m!1395881))

(declare-fun m!1395883 () Bool)

(assert (=> b!1513005 m!1395883))

(declare-fun m!1395885 () Bool)

(assert (=> b!1512996 m!1395885))

(assert (=> b!1512996 m!1395885))

(declare-fun m!1395887 () Bool)

(assert (=> b!1512996 m!1395887))

(assert (=> b!1512996 m!1395885))

(declare-fun m!1395889 () Bool)

(assert (=> b!1512996 m!1395889))

(assert (=> b!1513008 m!1395885))

(assert (=> b!1513008 m!1395885))

(declare-fun m!1395891 () Bool)

(assert (=> b!1513008 m!1395891))

(assert (=> b!1513009 m!1395885))

(assert (=> b!1513009 m!1395885))

(declare-fun m!1395893 () Bool)

(assert (=> b!1513009 m!1395893))

(declare-fun m!1395895 () Bool)

(assert (=> b!1513003 m!1395895))

(declare-fun m!1395897 () Bool)

(assert (=> b!1513003 m!1395897))

(assert (=> b!1512997 m!1395885))

(assert (=> b!1512997 m!1395885))

(declare-fun m!1395899 () Bool)

(assert (=> b!1512997 m!1395899))

(assert (=> b!1513000 m!1395885))

(assert (=> b!1513000 m!1395885))

(declare-fun m!1395901 () Bool)

(assert (=> b!1513000 m!1395901))

(assert (=> b!1513000 m!1395901))

(assert (=> b!1513000 m!1395885))

(declare-fun m!1395903 () Bool)

(assert (=> b!1513000 m!1395903))

(declare-fun m!1395905 () Bool)

(assert (=> start!129064 m!1395905))

(declare-fun m!1395907 () Bool)

(assert (=> start!129064 m!1395907))

(assert (=> b!1513007 m!1395885))

(declare-fun m!1395909 () Bool)

(assert (=> b!1513007 m!1395909))

(declare-fun m!1395911 () Bool)

(assert (=> b!1512998 m!1395911))

(assert (=> b!1512998 m!1395911))

(declare-fun m!1395913 () Bool)

(assert (=> b!1512998 m!1395913))

(declare-fun m!1395915 () Bool)

(assert (=> b!1512998 m!1395915))

(declare-fun m!1395917 () Bool)

(assert (=> b!1512998 m!1395917))

(push 1)

