; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129208 () Bool)

(assert start!129208)

(declare-fun b!1515951 () Bool)

(declare-fun res!1035935 () Bool)

(declare-fun e!845990 () Bool)

(assert (=> b!1515951 (=> (not res!1035935) (not e!845990))))

(declare-datatypes ((SeekEntryResult!12913 0))(
  ( (MissingZero!12913 (index!54046 (_ BitVec 32))) (Found!12913 (index!54047 (_ BitVec 32))) (Intermediate!12913 (undefined!13725 Bool) (index!54048 (_ BitVec 32)) (x!135756 (_ BitVec 32))) (Undefined!12913) (MissingVacant!12913 (index!54049 (_ BitVec 32))) )
))
(declare-fun lt!657230 () SeekEntryResult!12913)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100977 0))(
  ( (array!100978 (arr!48721 (Array (_ BitVec 32) (_ BitVec 64))) (size!49272 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100977)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100977 (_ BitVec 32)) SeekEntryResult!12913)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515951 (= res!1035935 (= lt!657230 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48721 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48721 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100978 (store (arr!48721 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49272 a!2804)) mask!2512)))))

(declare-fun res!1035936 () Bool)

(declare-fun e!845993 () Bool)

(assert (=> start!129208 (=> (not res!1035936) (not e!845993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129208 (= res!1035936 (validMask!0 mask!2512))))

(assert (=> start!129208 e!845993))

(assert (=> start!129208 true))

(declare-fun array_inv!37666 (array!100977) Bool)

(assert (=> start!129208 (array_inv!37666 a!2804)))

(declare-fun b!1515952 () Bool)

(declare-fun res!1035930 () Bool)

(assert (=> b!1515952 (=> (not res!1035930) (not e!845990))))

(declare-fun lt!657231 () SeekEntryResult!12913)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1515952 (= res!1035930 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48721 a!2804) j!70) a!2804 mask!2512) lt!657231))))

(declare-fun b!1515953 () Bool)

(declare-fun res!1035929 () Bool)

(assert (=> b!1515953 (=> (not res!1035929) (not e!845993))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515953 (= res!1035929 (validKeyInArray!0 (select (arr!48721 a!2804) j!70)))))

(declare-fun b!1515954 () Bool)

(declare-fun res!1035932 () Bool)

(assert (=> b!1515954 (=> (not res!1035932) (not e!845993))))

(assert (=> b!1515954 (= res!1035932 (and (= (size!49272 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49272 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49272 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515955 () Bool)

(declare-fun res!1035934 () Bool)

(assert (=> b!1515955 (=> (not res!1035934) (not e!845993))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515955 (= res!1035934 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49272 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49272 a!2804))))))

(declare-fun b!1515956 () Bool)

(declare-fun res!1035927 () Bool)

(assert (=> b!1515956 (=> (not res!1035927) (not e!845993))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100977 (_ BitVec 32)) Bool)

(assert (=> b!1515956 (= res!1035927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515957 () Bool)

(assert (=> b!1515957 (= e!845990 (not true))))

(declare-fun e!845992 () Bool)

(assert (=> b!1515957 e!845992))

(declare-fun res!1035933 () Bool)

(assert (=> b!1515957 (=> (not res!1035933) (not e!845992))))

(assert (=> b!1515957 (= res!1035933 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50650 0))(
  ( (Unit!50651) )
))
(declare-fun lt!657232 () Unit!50650)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100977 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50650)

(assert (=> b!1515957 (= lt!657232 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515958 () Bool)

(declare-fun res!1035931 () Bool)

(assert (=> b!1515958 (=> (not res!1035931) (not e!845993))))

(declare-datatypes ((List!35384 0))(
  ( (Nil!35381) (Cons!35380 (h!36793 (_ BitVec 64)) (t!50085 List!35384)) )
))
(declare-fun arrayNoDuplicates!0 (array!100977 (_ BitVec 32) List!35384) Bool)

(assert (=> b!1515958 (= res!1035931 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35381))))

(declare-fun b!1515959 () Bool)

(declare-fun res!1035926 () Bool)

(assert (=> b!1515959 (=> (not res!1035926) (not e!845993))))

(assert (=> b!1515959 (= res!1035926 (validKeyInArray!0 (select (arr!48721 a!2804) i!961)))))

(declare-fun b!1515960 () Bool)

(assert (=> b!1515960 (= e!845993 e!845990)))

(declare-fun res!1035928 () Bool)

(assert (=> b!1515960 (=> (not res!1035928) (not e!845990))))

(assert (=> b!1515960 (= res!1035928 (= lt!657230 lt!657231))))

(assert (=> b!1515960 (= lt!657231 (Intermediate!12913 false resIndex!21 resX!21))))

(assert (=> b!1515960 (= lt!657230 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48721 a!2804) j!70) mask!2512) (select (arr!48721 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515961 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100977 (_ BitVec 32)) SeekEntryResult!12913)

(assert (=> b!1515961 (= e!845992 (= (seekEntry!0 (select (arr!48721 a!2804) j!70) a!2804 mask!2512) (Found!12913 j!70)))))

(assert (= (and start!129208 res!1035936) b!1515954))

(assert (= (and b!1515954 res!1035932) b!1515959))

(assert (= (and b!1515959 res!1035926) b!1515953))

(assert (= (and b!1515953 res!1035929) b!1515956))

(assert (= (and b!1515956 res!1035927) b!1515958))

(assert (= (and b!1515958 res!1035931) b!1515955))

(assert (= (and b!1515955 res!1035934) b!1515960))

(assert (= (and b!1515960 res!1035928) b!1515952))

(assert (= (and b!1515952 res!1035930) b!1515951))

(assert (= (and b!1515951 res!1035935) b!1515957))

(assert (= (and b!1515957 res!1035933) b!1515961))

(declare-fun m!1399239 () Bool)

(assert (=> start!129208 m!1399239))

(declare-fun m!1399241 () Bool)

(assert (=> start!129208 m!1399241))

(declare-fun m!1399243 () Bool)

(assert (=> b!1515957 m!1399243))

(declare-fun m!1399245 () Bool)

(assert (=> b!1515957 m!1399245))

(declare-fun m!1399247 () Bool)

(assert (=> b!1515960 m!1399247))

(assert (=> b!1515960 m!1399247))

(declare-fun m!1399249 () Bool)

(assert (=> b!1515960 m!1399249))

(assert (=> b!1515960 m!1399249))

(assert (=> b!1515960 m!1399247))

(declare-fun m!1399251 () Bool)

(assert (=> b!1515960 m!1399251))

(declare-fun m!1399253 () Bool)

(assert (=> b!1515956 m!1399253))

(assert (=> b!1515952 m!1399247))

(assert (=> b!1515952 m!1399247))

(declare-fun m!1399255 () Bool)

(assert (=> b!1515952 m!1399255))

(declare-fun m!1399257 () Bool)

(assert (=> b!1515959 m!1399257))

(assert (=> b!1515959 m!1399257))

(declare-fun m!1399259 () Bool)

(assert (=> b!1515959 m!1399259))

(assert (=> b!1515961 m!1399247))

(assert (=> b!1515961 m!1399247))

(declare-fun m!1399261 () Bool)

(assert (=> b!1515961 m!1399261))

(declare-fun m!1399263 () Bool)

(assert (=> b!1515958 m!1399263))

(assert (=> b!1515953 m!1399247))

(assert (=> b!1515953 m!1399247))

(declare-fun m!1399265 () Bool)

(assert (=> b!1515953 m!1399265))

(declare-fun m!1399267 () Bool)

(assert (=> b!1515951 m!1399267))

(declare-fun m!1399269 () Bool)

(assert (=> b!1515951 m!1399269))

(assert (=> b!1515951 m!1399269))

(declare-fun m!1399271 () Bool)

(assert (=> b!1515951 m!1399271))

(assert (=> b!1515951 m!1399271))

(assert (=> b!1515951 m!1399269))

(declare-fun m!1399273 () Bool)

(assert (=> b!1515951 m!1399273))

(push 1)

