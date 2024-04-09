; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130136 () Bool)

(assert start!130136)

(declare-fun b!1526943 () Bool)

(declare-fun res!1045124 () Bool)

(declare-fun e!851099 () Bool)

(assert (=> b!1526943 (=> (not res!1045124) (not e!851099))))

(declare-datatypes ((array!101476 0))(
  ( (array!101477 (arr!48960 (Array (_ BitVec 32) (_ BitVec 64))) (size!49511 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101476)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526943 (= res!1045124 (validKeyInArray!0 (select (arr!48960 a!2804) j!70)))))

(declare-fun b!1526944 () Bool)

(declare-fun e!851104 () Bool)

(declare-fun e!851103 () Bool)

(assert (=> b!1526944 (= e!851104 e!851103)))

(declare-fun res!1045123 () Bool)

(assert (=> b!1526944 (=> res!1045123 e!851103)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun lt!661222 () (_ BitVec 64))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526944 (= res!1045123 (or (not (= (select (arr!48960 a!2804) j!70) lt!661222)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48960 a!2804) index!487) (select (arr!48960 a!2804) j!70)) (not (= (select (arr!48960 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526945 () Bool)

(declare-fun res!1045126 () Bool)

(assert (=> b!1526945 (=> (not res!1045126) (not e!851099))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1526945 (= res!1045126 (and (= (size!49511 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49511 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49511 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526946 () Bool)

(declare-fun res!1045128 () Bool)

(declare-fun e!851100 () Bool)

(assert (=> b!1526946 (=> (not res!1045128) (not e!851100))))

(declare-datatypes ((SeekEntryResult!13146 0))(
  ( (MissingZero!13146 (index!54978 (_ BitVec 32))) (Found!13146 (index!54979 (_ BitVec 32))) (Intermediate!13146 (undefined!13958 Bool) (index!54980 (_ BitVec 32)) (x!136675 (_ BitVec 32))) (Undefined!13146) (MissingVacant!13146 (index!54981 (_ BitVec 32))) )
))
(declare-fun lt!661225 () SeekEntryResult!13146)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101476 (_ BitVec 32)) SeekEntryResult!13146)

(assert (=> b!1526946 (= res!1045128 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48960 a!2804) j!70) a!2804 mask!2512) lt!661225))))

(declare-fun b!1526947 () Bool)

(declare-fun res!1045120 () Bool)

(assert (=> b!1526947 (=> (not res!1045120) (not e!851099))))

(assert (=> b!1526947 (= res!1045120 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49511 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49511 a!2804))))))

(declare-fun res!1045116 () Bool)

(assert (=> start!130136 (=> (not res!1045116) (not e!851099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130136 (= res!1045116 (validMask!0 mask!2512))))

(assert (=> start!130136 e!851099))

(assert (=> start!130136 true))

(declare-fun array_inv!37905 (array!101476) Bool)

(assert (=> start!130136 (array_inv!37905 a!2804)))

(declare-fun b!1526948 () Bool)

(declare-fun res!1045127 () Bool)

(assert (=> b!1526948 (=> (not res!1045127) (not e!851099))))

(assert (=> b!1526948 (= res!1045127 (validKeyInArray!0 (select (arr!48960 a!2804) i!961)))))

(declare-fun lt!661224 () array!101476)

(declare-fun e!851105 () Bool)

(declare-fun b!1526949 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101476 (_ BitVec 32)) SeekEntryResult!13146)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101476 (_ BitVec 32)) SeekEntryResult!13146)

(assert (=> b!1526949 (= e!851105 (= (seekEntryOrOpen!0 lt!661222 lt!661224 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661222 lt!661224 mask!2512)))))

(declare-fun b!1526950 () Bool)

(assert (=> b!1526950 (= e!851103 e!851105)))

(declare-fun res!1045115 () Bool)

(assert (=> b!1526950 (=> (not res!1045115) (not e!851105))))

(assert (=> b!1526950 (= res!1045115 (= (seekEntryOrOpen!0 (select (arr!48960 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48960 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526951 () Bool)

(declare-fun e!851102 () Bool)

(assert (=> b!1526951 (= e!851100 e!851102)))

(declare-fun res!1045119 () Bool)

(assert (=> b!1526951 (=> (not res!1045119) (not e!851102))))

(declare-fun lt!661221 () SeekEntryResult!13146)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526951 (= res!1045119 (= lt!661221 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661222 mask!2512) lt!661222 lt!661224 mask!2512)))))

(assert (=> b!1526951 (= lt!661222 (select (store (arr!48960 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526951 (= lt!661224 (array!101477 (store (arr!48960 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49511 a!2804)))))

(declare-fun b!1526952 () Bool)

(declare-fun res!1045122 () Bool)

(assert (=> b!1526952 (=> (not res!1045122) (not e!851104))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101476 (_ BitVec 32)) SeekEntryResult!13146)

(assert (=> b!1526952 (= res!1045122 (= (seekEntry!0 (select (arr!48960 a!2804) j!70) a!2804 mask!2512) (Found!13146 j!70)))))

(declare-fun b!1526953 () Bool)

(assert (=> b!1526953 (= e!851099 e!851100)))

(declare-fun res!1045125 () Bool)

(assert (=> b!1526953 (=> (not res!1045125) (not e!851100))))

(assert (=> b!1526953 (= res!1045125 (= lt!661221 lt!661225))))

(assert (=> b!1526953 (= lt!661225 (Intermediate!13146 false resIndex!21 resX!21))))

(assert (=> b!1526953 (= lt!661221 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48960 a!2804) j!70) mask!2512) (select (arr!48960 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526954 () Bool)

(assert (=> b!1526954 (= e!851102 (not true))))

(assert (=> b!1526954 e!851104))

(declare-fun res!1045117 () Bool)

(assert (=> b!1526954 (=> (not res!1045117) (not e!851104))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101476 (_ BitVec 32)) Bool)

(assert (=> b!1526954 (= res!1045117 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51032 0))(
  ( (Unit!51033) )
))
(declare-fun lt!661223 () Unit!51032)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101476 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51032)

(assert (=> b!1526954 (= lt!661223 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526955 () Bool)

(declare-fun res!1045118 () Bool)

(assert (=> b!1526955 (=> (not res!1045118) (not e!851099))))

(assert (=> b!1526955 (= res!1045118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526956 () Bool)

(declare-fun res!1045121 () Bool)

(assert (=> b!1526956 (=> (not res!1045121) (not e!851099))))

(declare-datatypes ((List!35623 0))(
  ( (Nil!35620) (Cons!35619 (h!37053 (_ BitVec 64)) (t!50324 List!35623)) )
))
(declare-fun arrayNoDuplicates!0 (array!101476 (_ BitVec 32) List!35623) Bool)

(assert (=> b!1526956 (= res!1045121 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35620))))

(assert (= (and start!130136 res!1045116) b!1526945))

(assert (= (and b!1526945 res!1045126) b!1526948))

(assert (= (and b!1526948 res!1045127) b!1526943))

(assert (= (and b!1526943 res!1045124) b!1526955))

(assert (= (and b!1526955 res!1045118) b!1526956))

(assert (= (and b!1526956 res!1045121) b!1526947))

(assert (= (and b!1526947 res!1045120) b!1526953))

(assert (= (and b!1526953 res!1045125) b!1526946))

(assert (= (and b!1526946 res!1045128) b!1526951))

(assert (= (and b!1526951 res!1045119) b!1526954))

(assert (= (and b!1526954 res!1045117) b!1526952))

(assert (= (and b!1526952 res!1045122) b!1526944))

(assert (= (and b!1526944 (not res!1045123)) b!1526950))

(assert (= (and b!1526950 res!1045115) b!1526949))

(declare-fun m!1409855 () Bool)

(assert (=> b!1526949 m!1409855))

(declare-fun m!1409857 () Bool)

(assert (=> b!1526949 m!1409857))

(declare-fun m!1409859 () Bool)

(assert (=> b!1526951 m!1409859))

(assert (=> b!1526951 m!1409859))

(declare-fun m!1409861 () Bool)

(assert (=> b!1526951 m!1409861))

(declare-fun m!1409863 () Bool)

(assert (=> b!1526951 m!1409863))

(declare-fun m!1409865 () Bool)

(assert (=> b!1526951 m!1409865))

(declare-fun m!1409867 () Bool)

(assert (=> b!1526946 m!1409867))

(assert (=> b!1526946 m!1409867))

(declare-fun m!1409869 () Bool)

(assert (=> b!1526946 m!1409869))

(declare-fun m!1409871 () Bool)

(assert (=> b!1526954 m!1409871))

(declare-fun m!1409873 () Bool)

(assert (=> b!1526954 m!1409873))

(declare-fun m!1409875 () Bool)

(assert (=> b!1526948 m!1409875))

(assert (=> b!1526948 m!1409875))

(declare-fun m!1409877 () Bool)

(assert (=> b!1526948 m!1409877))

(assert (=> b!1526953 m!1409867))

(assert (=> b!1526953 m!1409867))

(declare-fun m!1409879 () Bool)

(assert (=> b!1526953 m!1409879))

(assert (=> b!1526953 m!1409879))

(assert (=> b!1526953 m!1409867))

(declare-fun m!1409881 () Bool)

(assert (=> b!1526953 m!1409881))

(declare-fun m!1409883 () Bool)

(assert (=> b!1526956 m!1409883))

(assert (=> b!1526952 m!1409867))

(assert (=> b!1526952 m!1409867))

(declare-fun m!1409885 () Bool)

(assert (=> b!1526952 m!1409885))

(assert (=> b!1526950 m!1409867))

(assert (=> b!1526950 m!1409867))

(declare-fun m!1409887 () Bool)

(assert (=> b!1526950 m!1409887))

(assert (=> b!1526950 m!1409867))

(declare-fun m!1409889 () Bool)

(assert (=> b!1526950 m!1409889))

(assert (=> b!1526943 m!1409867))

(assert (=> b!1526943 m!1409867))

(declare-fun m!1409891 () Bool)

(assert (=> b!1526943 m!1409891))

(assert (=> b!1526944 m!1409867))

(declare-fun m!1409893 () Bool)

(assert (=> b!1526944 m!1409893))

(declare-fun m!1409895 () Bool)

(assert (=> start!130136 m!1409895))

(declare-fun m!1409897 () Bool)

(assert (=> start!130136 m!1409897))

(declare-fun m!1409899 () Bool)

(assert (=> b!1526955 m!1409899))

(push 1)

