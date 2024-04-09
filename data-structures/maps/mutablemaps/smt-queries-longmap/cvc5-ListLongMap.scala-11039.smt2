; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129112 () Bool)

(assert start!129112)

(declare-fun b!1514004 () Bool)

(declare-fun e!844980 () Bool)

(declare-fun e!844984 () Bool)

(assert (=> b!1514004 (= e!844980 e!844984)))

(declare-fun res!1033981 () Bool)

(assert (=> b!1514004 (=> (not res!1033981) (not e!844984))))

(declare-datatypes ((array!100881 0))(
  ( (array!100882 (arr!48673 (Array (_ BitVec 32) (_ BitVec 64))) (size!49224 (_ BitVec 32))) )
))
(declare-fun lt!656154 () array!100881)

(declare-fun lt!656158 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12865 0))(
  ( (MissingZero!12865 (index!53854 (_ BitVec 32))) (Found!12865 (index!53855 (_ BitVec 32))) (Intermediate!12865 (undefined!13677 Bool) (index!53856 (_ BitVec 32)) (x!135580 (_ BitVec 32))) (Undefined!12865) (MissingVacant!12865 (index!53857 (_ BitVec 32))) )
))
(declare-fun lt!656157 () SeekEntryResult!12865)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100881 (_ BitVec 32)) SeekEntryResult!12865)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514004 (= res!1033981 (= lt!656157 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656158 mask!2512) lt!656158 lt!656154 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!100881)

(assert (=> b!1514004 (= lt!656158 (select (store (arr!48673 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514004 (= lt!656154 (array!100882 (store (arr!48673 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49224 a!2804)))))

(declare-fun b!1514005 () Bool)

(declare-fun res!1033989 () Bool)

(declare-fun e!844983 () Bool)

(assert (=> b!1514005 (=> (not res!1033989) (not e!844983))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1514005 (= res!1033989 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49224 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49224 a!2804))))))

(declare-fun b!1514006 () Bool)

(declare-fun res!1033990 () Bool)

(assert (=> b!1514006 (=> (not res!1033990) (not e!844983))))

(declare-datatypes ((List!35336 0))(
  ( (Nil!35333) (Cons!35332 (h!36745 (_ BitVec 64)) (t!50037 List!35336)) )
))
(declare-fun arrayNoDuplicates!0 (array!100881 (_ BitVec 32) List!35336) Bool)

(assert (=> b!1514006 (= res!1033990 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35333))))

(declare-fun b!1514007 () Bool)

(declare-fun res!1033980 () Bool)

(assert (=> b!1514007 (=> (not res!1033980) (not e!844983))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514007 (= res!1033980 (validKeyInArray!0 (select (arr!48673 a!2804) i!961)))))

(declare-fun b!1514008 () Bool)

(declare-fun e!844981 () Bool)

(declare-fun e!844979 () Bool)

(assert (=> b!1514008 (= e!844981 e!844979)))

(declare-fun res!1033985 () Bool)

(assert (=> b!1514008 (=> res!1033985 e!844979)))

(assert (=> b!1514008 (= res!1033985 (or (not (= (select (arr!48673 a!2804) j!70) lt!656158)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48673 a!2804) index!487) (select (arr!48673 a!2804) j!70)) (not (= (select (arr!48673 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514010 () Bool)

(declare-fun res!1033982 () Bool)

(assert (=> b!1514010 (=> (not res!1033982) (not e!844983))))

(assert (=> b!1514010 (= res!1033982 (validKeyInArray!0 (select (arr!48673 a!2804) j!70)))))

(declare-fun b!1514011 () Bool)

(declare-fun res!1033991 () Bool)

(assert (=> b!1514011 (=> (not res!1033991) (not e!844980))))

(declare-fun lt!656156 () SeekEntryResult!12865)

(assert (=> b!1514011 (= res!1033991 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48673 a!2804) j!70) a!2804 mask!2512) lt!656156))))

(declare-fun b!1514012 () Bool)

(assert (=> b!1514012 (= e!844984 (not true))))

(assert (=> b!1514012 e!844981))

(declare-fun res!1033988 () Bool)

(assert (=> b!1514012 (=> (not res!1033988) (not e!844981))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100881 (_ BitVec 32)) Bool)

(assert (=> b!1514012 (= res!1033988 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50554 0))(
  ( (Unit!50555) )
))
(declare-fun lt!656155 () Unit!50554)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100881 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50554)

(assert (=> b!1514012 (= lt!656155 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514013 () Bool)

(assert (=> b!1514013 (= e!844983 e!844980)))

(declare-fun res!1033984 () Bool)

(assert (=> b!1514013 (=> (not res!1033984) (not e!844980))))

(assert (=> b!1514013 (= res!1033984 (= lt!656157 lt!656156))))

(assert (=> b!1514013 (= lt!656156 (Intermediate!12865 false resIndex!21 resX!21))))

(assert (=> b!1514013 (= lt!656157 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48673 a!2804) j!70) mask!2512) (select (arr!48673 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514014 () Bool)

(declare-fun e!844985 () Bool)

(assert (=> b!1514014 (= e!844979 e!844985)))

(declare-fun res!1033992 () Bool)

(assert (=> b!1514014 (=> (not res!1033992) (not e!844985))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100881 (_ BitVec 32)) SeekEntryResult!12865)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100881 (_ BitVec 32)) SeekEntryResult!12865)

(assert (=> b!1514014 (= res!1033992 (= (seekEntryOrOpen!0 (select (arr!48673 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48673 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514009 () Bool)

(declare-fun res!1033979 () Bool)

(assert (=> b!1514009 (=> (not res!1033979) (not e!844983))))

(assert (=> b!1514009 (= res!1033979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1033983 () Bool)

(assert (=> start!129112 (=> (not res!1033983) (not e!844983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129112 (= res!1033983 (validMask!0 mask!2512))))

(assert (=> start!129112 e!844983))

(assert (=> start!129112 true))

(declare-fun array_inv!37618 (array!100881) Bool)

(assert (=> start!129112 (array_inv!37618 a!2804)))

(declare-fun b!1514015 () Bool)

(declare-fun res!1033987 () Bool)

(assert (=> b!1514015 (=> (not res!1033987) (not e!844983))))

(assert (=> b!1514015 (= res!1033987 (and (= (size!49224 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49224 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49224 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514016 () Bool)

(assert (=> b!1514016 (= e!844985 (= (seekEntryOrOpen!0 lt!656158 lt!656154 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656158 lt!656154 mask!2512)))))

(declare-fun b!1514017 () Bool)

(declare-fun res!1033986 () Bool)

(assert (=> b!1514017 (=> (not res!1033986) (not e!844981))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100881 (_ BitVec 32)) SeekEntryResult!12865)

(assert (=> b!1514017 (= res!1033986 (= (seekEntry!0 (select (arr!48673 a!2804) j!70) a!2804 mask!2512) (Found!12865 j!70)))))

(assert (= (and start!129112 res!1033983) b!1514015))

(assert (= (and b!1514015 res!1033987) b!1514007))

(assert (= (and b!1514007 res!1033980) b!1514010))

(assert (= (and b!1514010 res!1033982) b!1514009))

(assert (= (and b!1514009 res!1033979) b!1514006))

(assert (= (and b!1514006 res!1033990) b!1514005))

(assert (= (and b!1514005 res!1033989) b!1514013))

(assert (= (and b!1514013 res!1033984) b!1514011))

(assert (= (and b!1514011 res!1033991) b!1514004))

(assert (= (and b!1514004 res!1033981) b!1514012))

(assert (= (and b!1514012 res!1033988) b!1514017))

(assert (= (and b!1514017 res!1033986) b!1514008))

(assert (= (and b!1514008 (not res!1033985)) b!1514014))

(assert (= (and b!1514014 res!1033992) b!1514016))

(declare-fun m!1396977 () Bool)

(assert (=> b!1514013 m!1396977))

(assert (=> b!1514013 m!1396977))

(declare-fun m!1396979 () Bool)

(assert (=> b!1514013 m!1396979))

(assert (=> b!1514013 m!1396979))

(assert (=> b!1514013 m!1396977))

(declare-fun m!1396981 () Bool)

(assert (=> b!1514013 m!1396981))

(declare-fun m!1396983 () Bool)

(assert (=> b!1514012 m!1396983))

(declare-fun m!1396985 () Bool)

(assert (=> b!1514012 m!1396985))

(declare-fun m!1396987 () Bool)

(assert (=> b!1514009 m!1396987))

(declare-fun m!1396989 () Bool)

(assert (=> b!1514007 m!1396989))

(assert (=> b!1514007 m!1396989))

(declare-fun m!1396991 () Bool)

(assert (=> b!1514007 m!1396991))

(declare-fun m!1396993 () Bool)

(assert (=> b!1514006 m!1396993))

(assert (=> b!1514008 m!1396977))

(declare-fun m!1396995 () Bool)

(assert (=> b!1514008 m!1396995))

(assert (=> b!1514011 m!1396977))

(assert (=> b!1514011 m!1396977))

(declare-fun m!1396997 () Bool)

(assert (=> b!1514011 m!1396997))

(declare-fun m!1396999 () Bool)

(assert (=> start!129112 m!1396999))

(declare-fun m!1397001 () Bool)

(assert (=> start!129112 m!1397001))

(assert (=> b!1514010 m!1396977))

(assert (=> b!1514010 m!1396977))

(declare-fun m!1397003 () Bool)

(assert (=> b!1514010 m!1397003))

(declare-fun m!1397005 () Bool)

(assert (=> b!1514004 m!1397005))

(assert (=> b!1514004 m!1397005))

(declare-fun m!1397007 () Bool)

(assert (=> b!1514004 m!1397007))

(declare-fun m!1397009 () Bool)

(assert (=> b!1514004 m!1397009))

(declare-fun m!1397011 () Bool)

(assert (=> b!1514004 m!1397011))

(assert (=> b!1514014 m!1396977))

(assert (=> b!1514014 m!1396977))

(declare-fun m!1397013 () Bool)

(assert (=> b!1514014 m!1397013))

(assert (=> b!1514014 m!1396977))

(declare-fun m!1397015 () Bool)

(assert (=> b!1514014 m!1397015))

(declare-fun m!1397017 () Bool)

(assert (=> b!1514016 m!1397017))

(declare-fun m!1397019 () Bool)

(assert (=> b!1514016 m!1397019))

(assert (=> b!1514017 m!1396977))

(assert (=> b!1514017 m!1396977))

(declare-fun m!1397021 () Bool)

(assert (=> b!1514017 m!1397021))

(push 1)

