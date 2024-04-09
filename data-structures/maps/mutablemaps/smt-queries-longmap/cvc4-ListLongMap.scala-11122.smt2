; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129998 () Bool)

(assert start!129998)

(declare-fun b!1525006 () Bool)

(declare-fun res!1043506 () Bool)

(declare-fun e!850099 () Bool)

(assert (=> b!1525006 (=> (not res!1043506) (not e!850099))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101401 0))(
  ( (array!101402 (arr!48924 (Array (_ BitVec 32) (_ BitVec 64))) (size!49475 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101401)

(declare-datatypes ((SeekEntryResult!13110 0))(
  ( (MissingZero!13110 (index!54834 (_ BitVec 32))) (Found!13110 (index!54835 (_ BitVec 32))) (Intermediate!13110 (undefined!13922 Bool) (index!54836 (_ BitVec 32)) (x!136534 (_ BitVec 32))) (Undefined!13110) (MissingVacant!13110 (index!54837 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101401 (_ BitVec 32)) SeekEntryResult!13110)

(assert (=> b!1525006 (= res!1043506 (= (seekEntry!0 (select (arr!48924 a!2804) j!70) a!2804 mask!2512) (Found!13110 j!70)))))

(declare-fun b!1525007 () Bool)

(declare-fun res!1043507 () Bool)

(declare-fun e!850102 () Bool)

(assert (=> b!1525007 (=> (not res!1043507) (not e!850102))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1525007 (= res!1043507 (validKeyInArray!0 (select (arr!48924 a!2804) j!70)))))

(declare-fun res!1043515 () Bool)

(assert (=> start!129998 (=> (not res!1043515) (not e!850102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129998 (= res!1043515 (validMask!0 mask!2512))))

(assert (=> start!129998 e!850102))

(assert (=> start!129998 true))

(declare-fun array_inv!37869 (array!101401) Bool)

(assert (=> start!129998 (array_inv!37869 a!2804)))

(declare-fun b!1525008 () Bool)

(declare-fun res!1043511 () Bool)

(assert (=> b!1525008 (=> (not res!1043511) (not e!850102))))

(declare-datatypes ((List!35587 0))(
  ( (Nil!35584) (Cons!35583 (h!37014 (_ BitVec 64)) (t!50288 List!35587)) )
))
(declare-fun arrayNoDuplicates!0 (array!101401 (_ BitVec 32) List!35587) Bool)

(assert (=> b!1525008 (= res!1043511 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35584))))

(declare-fun b!1525009 () Bool)

(declare-fun res!1043512 () Bool)

(declare-fun e!850100 () Bool)

(assert (=> b!1525009 (=> (not res!1043512) (not e!850100))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!660489 () SeekEntryResult!13110)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101401 (_ BitVec 32)) SeekEntryResult!13110)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525009 (= res!1043512 (= lt!660489 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48924 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48924 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101402 (store (arr!48924 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49475 a!2804)) mask!2512)))))

(declare-fun b!1525010 () Bool)

(declare-fun e!850101 () Bool)

(assert (=> b!1525010 (= e!850099 e!850101)))

(declare-fun res!1043516 () Bool)

(assert (=> b!1525010 (=> res!1043516 e!850101)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1525010 (= res!1043516 (or (not (= (select (arr!48924 a!2804) j!70) (select (store (arr!48924 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48924 a!2804) index!487) (select (arr!48924 a!2804) j!70)) (not (= (select (arr!48924 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1525011 () Bool)

(assert (=> b!1525011 (= e!850100 (not true))))

(assert (=> b!1525011 e!850099))

(declare-fun res!1043508 () Bool)

(assert (=> b!1525011 (=> (not res!1043508) (not e!850099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101401 (_ BitVec 32)) Bool)

(assert (=> b!1525011 (= res!1043508 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50960 0))(
  ( (Unit!50961) )
))
(declare-fun lt!660488 () Unit!50960)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101401 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50960)

(assert (=> b!1525011 (= lt!660488 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1525012 () Bool)

(declare-fun res!1043514 () Bool)

(assert (=> b!1525012 (=> (not res!1043514) (not e!850102))))

(assert (=> b!1525012 (= res!1043514 (validKeyInArray!0 (select (arr!48924 a!2804) i!961)))))

(declare-fun b!1525013 () Bool)

(assert (=> b!1525013 (= e!850102 e!850100)))

(declare-fun res!1043517 () Bool)

(assert (=> b!1525013 (=> (not res!1043517) (not e!850100))))

(declare-fun lt!660490 () SeekEntryResult!13110)

(assert (=> b!1525013 (= res!1043517 (= lt!660489 lt!660490))))

(assert (=> b!1525013 (= lt!660490 (Intermediate!13110 false resIndex!21 resX!21))))

(assert (=> b!1525013 (= lt!660489 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48924 a!2804) j!70) mask!2512) (select (arr!48924 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525014 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101401 (_ BitVec 32)) SeekEntryResult!13110)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101401 (_ BitVec 32)) SeekEntryResult!13110)

(assert (=> b!1525014 (= e!850101 (= (seekEntryOrOpen!0 (select (arr!48924 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48924 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1525015 () Bool)

(declare-fun res!1043509 () Bool)

(assert (=> b!1525015 (=> (not res!1043509) (not e!850102))))

(assert (=> b!1525015 (= res!1043509 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49475 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49475 a!2804))))))

(declare-fun b!1525016 () Bool)

(declare-fun res!1043513 () Bool)

(assert (=> b!1525016 (=> (not res!1043513) (not e!850100))))

(assert (=> b!1525016 (= res!1043513 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48924 a!2804) j!70) a!2804 mask!2512) lt!660490))))

(declare-fun b!1525017 () Bool)

(declare-fun res!1043505 () Bool)

(assert (=> b!1525017 (=> (not res!1043505) (not e!850102))))

(assert (=> b!1525017 (= res!1043505 (and (= (size!49475 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49475 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49475 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1525018 () Bool)

(declare-fun res!1043510 () Bool)

(assert (=> b!1525018 (=> (not res!1043510) (not e!850102))))

(assert (=> b!1525018 (= res!1043510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129998 res!1043515) b!1525017))

(assert (= (and b!1525017 res!1043505) b!1525012))

(assert (= (and b!1525012 res!1043514) b!1525007))

(assert (= (and b!1525007 res!1043507) b!1525018))

(assert (= (and b!1525018 res!1043510) b!1525008))

(assert (= (and b!1525008 res!1043511) b!1525015))

(assert (= (and b!1525015 res!1043509) b!1525013))

(assert (= (and b!1525013 res!1043517) b!1525016))

(assert (= (and b!1525016 res!1043513) b!1525009))

(assert (= (and b!1525009 res!1043512) b!1525011))

(assert (= (and b!1525011 res!1043508) b!1525006))

(assert (= (and b!1525006 res!1043506) b!1525010))

(assert (= (and b!1525010 (not res!1043516)) b!1525014))

(declare-fun m!1407945 () Bool)

(assert (=> b!1525018 m!1407945))

(declare-fun m!1407947 () Bool)

(assert (=> b!1525008 m!1407947))

(declare-fun m!1407949 () Bool)

(assert (=> b!1525009 m!1407949))

(declare-fun m!1407951 () Bool)

(assert (=> b!1525009 m!1407951))

(assert (=> b!1525009 m!1407951))

(declare-fun m!1407953 () Bool)

(assert (=> b!1525009 m!1407953))

(assert (=> b!1525009 m!1407953))

(assert (=> b!1525009 m!1407951))

(declare-fun m!1407955 () Bool)

(assert (=> b!1525009 m!1407955))

(declare-fun m!1407957 () Bool)

(assert (=> b!1525012 m!1407957))

(assert (=> b!1525012 m!1407957))

(declare-fun m!1407959 () Bool)

(assert (=> b!1525012 m!1407959))

(declare-fun m!1407961 () Bool)

(assert (=> b!1525007 m!1407961))

(assert (=> b!1525007 m!1407961))

(declare-fun m!1407963 () Bool)

(assert (=> b!1525007 m!1407963))

(assert (=> b!1525006 m!1407961))

(assert (=> b!1525006 m!1407961))

(declare-fun m!1407965 () Bool)

(assert (=> b!1525006 m!1407965))

(declare-fun m!1407967 () Bool)

(assert (=> b!1525011 m!1407967))

(declare-fun m!1407969 () Bool)

(assert (=> b!1525011 m!1407969))

(assert (=> b!1525016 m!1407961))

(assert (=> b!1525016 m!1407961))

(declare-fun m!1407971 () Bool)

(assert (=> b!1525016 m!1407971))

(assert (=> b!1525013 m!1407961))

(assert (=> b!1525013 m!1407961))

(declare-fun m!1407973 () Bool)

(assert (=> b!1525013 m!1407973))

(assert (=> b!1525013 m!1407973))

(assert (=> b!1525013 m!1407961))

(declare-fun m!1407975 () Bool)

(assert (=> b!1525013 m!1407975))

(declare-fun m!1407977 () Bool)

(assert (=> start!129998 m!1407977))

(declare-fun m!1407979 () Bool)

(assert (=> start!129998 m!1407979))

(assert (=> b!1525010 m!1407961))

(assert (=> b!1525010 m!1407949))

(assert (=> b!1525010 m!1407951))

(declare-fun m!1407981 () Bool)

(assert (=> b!1525010 m!1407981))

(assert (=> b!1525014 m!1407961))

(assert (=> b!1525014 m!1407961))

(declare-fun m!1407983 () Bool)

(assert (=> b!1525014 m!1407983))

(assert (=> b!1525014 m!1407961))

(declare-fun m!1407985 () Bool)

(assert (=> b!1525014 m!1407985))

(push 1)

