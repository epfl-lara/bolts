; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129314 () Bool)

(assert start!129314)

(declare-fun b!1517950 () Bool)

(declare-fun e!846876 () Bool)

(declare-fun e!846879 () Bool)

(assert (=> b!1517950 (= e!846876 e!846879)))

(declare-fun res!1037926 () Bool)

(assert (=> b!1517950 (=> (not res!1037926) (not e!846879))))

(declare-datatypes ((SeekEntryResult!12966 0))(
  ( (MissingZero!12966 (index!54258 (_ BitVec 32))) (Found!12966 (index!54259 (_ BitVec 32))) (Intermediate!12966 (undefined!13778 Bool) (index!54260 (_ BitVec 32)) (x!135945 (_ BitVec 32))) (Undefined!12966) (MissingVacant!12966 (index!54261 (_ BitVec 32))) )
))
(declare-fun lt!657958 () SeekEntryResult!12966)

(declare-fun lt!657959 () SeekEntryResult!12966)

(assert (=> b!1517950 (= res!1037926 (= lt!657958 lt!657959))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517950 (= lt!657959 (Intermediate!12966 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101083 0))(
  ( (array!101084 (arr!48774 (Array (_ BitVec 32) (_ BitVec 64))) (size!49325 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101083)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101083 (_ BitVec 32)) SeekEntryResult!12966)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517950 (= lt!657958 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48774 a!2804) j!70) mask!2512) (select (arr!48774 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517951 () Bool)

(declare-fun res!1037932 () Bool)

(assert (=> b!1517951 (=> (not res!1037932) (not e!846879))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1517951 (= res!1037932 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48774 a!2804) j!70) a!2804 mask!2512) lt!657959))))

(declare-fun res!1037935 () Bool)

(assert (=> start!129314 (=> (not res!1037935) (not e!846876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129314 (= res!1037935 (validMask!0 mask!2512))))

(assert (=> start!129314 e!846876))

(assert (=> start!129314 true))

(declare-fun array_inv!37719 (array!101083) Bool)

(assert (=> start!129314 (array_inv!37719 a!2804)))

(declare-fun b!1517952 () Bool)

(declare-fun res!1037933 () Bool)

(assert (=> b!1517952 (=> (not res!1037933) (not e!846876))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1517952 (= res!1037933 (and (= (size!49325 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49325 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49325 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517953 () Bool)

(declare-fun e!846881 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101083 (_ BitVec 32)) SeekEntryResult!12966)

(assert (=> b!1517953 (= e!846881 (= (seekEntry!0 (select (arr!48774 a!2804) j!70) a!2804 mask!2512) (Found!12966 j!70)))))

(declare-fun b!1517954 () Bool)

(declare-fun e!846878 () Bool)

(declare-fun e!846877 () Bool)

(assert (=> b!1517954 (= e!846878 e!846877)))

(declare-fun res!1037936 () Bool)

(assert (=> b!1517954 (=> res!1037936 e!846877)))

(declare-fun lt!657961 () (_ BitVec 32))

(assert (=> b!1517954 (= res!1037936 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657961 #b00000000000000000000000000000000) (bvsge lt!657961 (size!49325 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517954 (= lt!657961 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517955 () Bool)

(declare-fun res!1037927 () Bool)

(assert (=> b!1517955 (=> (not res!1037927) (not e!846876))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517955 (= res!1037927 (validKeyInArray!0 (select (arr!48774 a!2804) j!70)))))

(declare-fun b!1517956 () Bool)

(declare-fun res!1037929 () Bool)

(assert (=> b!1517956 (=> (not res!1037929) (not e!846876))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101083 (_ BitVec 32)) Bool)

(assert (=> b!1517956 (= res!1037929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517957 () Bool)

(declare-fun res!1037934 () Bool)

(assert (=> b!1517957 (=> (not res!1037934) (not e!846876))))

(assert (=> b!1517957 (= res!1037934 (validKeyInArray!0 (select (arr!48774 a!2804) i!961)))))

(declare-fun b!1517958 () Bool)

(declare-fun res!1037930 () Bool)

(assert (=> b!1517958 (=> (not res!1037930) (not e!846876))))

(assert (=> b!1517958 (= res!1037930 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49325 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49325 a!2804))))))

(declare-fun b!1517959 () Bool)

(assert (=> b!1517959 (= e!846877 true)))

(declare-fun lt!657957 () SeekEntryResult!12966)

(assert (=> b!1517959 (= lt!657957 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657961 (select (arr!48774 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517960 () Bool)

(declare-fun res!1037937 () Bool)

(assert (=> b!1517960 (=> (not res!1037937) (not e!846879))))

(assert (=> b!1517960 (= res!1037937 (= lt!657958 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48774 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48774 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101084 (store (arr!48774 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49325 a!2804)) mask!2512)))))

(declare-fun b!1517961 () Bool)

(assert (=> b!1517961 (= e!846879 (not e!846878))))

(declare-fun res!1037928 () Bool)

(assert (=> b!1517961 (=> res!1037928 e!846878)))

(assert (=> b!1517961 (= res!1037928 (or (not (= (select (arr!48774 a!2804) j!70) (select (store (arr!48774 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517961 e!846881))

(declare-fun res!1037925 () Bool)

(assert (=> b!1517961 (=> (not res!1037925) (not e!846881))))

(assert (=> b!1517961 (= res!1037925 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50756 0))(
  ( (Unit!50757) )
))
(declare-fun lt!657960 () Unit!50756)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101083 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50756)

(assert (=> b!1517961 (= lt!657960 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517962 () Bool)

(declare-fun res!1037931 () Bool)

(assert (=> b!1517962 (=> (not res!1037931) (not e!846876))))

(declare-datatypes ((List!35437 0))(
  ( (Nil!35434) (Cons!35433 (h!36846 (_ BitVec 64)) (t!50138 List!35437)) )
))
(declare-fun arrayNoDuplicates!0 (array!101083 (_ BitVec 32) List!35437) Bool)

(assert (=> b!1517962 (= res!1037931 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35434))))

(assert (= (and start!129314 res!1037935) b!1517952))

(assert (= (and b!1517952 res!1037933) b!1517957))

(assert (= (and b!1517957 res!1037934) b!1517955))

(assert (= (and b!1517955 res!1037927) b!1517956))

(assert (= (and b!1517956 res!1037929) b!1517962))

(assert (= (and b!1517962 res!1037931) b!1517958))

(assert (= (and b!1517958 res!1037930) b!1517950))

(assert (= (and b!1517950 res!1037926) b!1517951))

(assert (= (and b!1517951 res!1037932) b!1517960))

(assert (= (and b!1517960 res!1037937) b!1517961))

(assert (= (and b!1517961 res!1037925) b!1517953))

(assert (= (and b!1517961 (not res!1037928)) b!1517954))

(assert (= (and b!1517954 (not res!1037936)) b!1517959))

(declare-fun m!1401311 () Bool)

(assert (=> b!1517954 m!1401311))

(declare-fun m!1401313 () Bool)

(assert (=> b!1517955 m!1401313))

(assert (=> b!1517955 m!1401313))

(declare-fun m!1401315 () Bool)

(assert (=> b!1517955 m!1401315))

(declare-fun m!1401317 () Bool)

(assert (=> b!1517957 m!1401317))

(assert (=> b!1517957 m!1401317))

(declare-fun m!1401319 () Bool)

(assert (=> b!1517957 m!1401319))

(declare-fun m!1401321 () Bool)

(assert (=> start!129314 m!1401321))

(declare-fun m!1401323 () Bool)

(assert (=> start!129314 m!1401323))

(declare-fun m!1401325 () Bool)

(assert (=> b!1517960 m!1401325))

(declare-fun m!1401327 () Bool)

(assert (=> b!1517960 m!1401327))

(assert (=> b!1517960 m!1401327))

(declare-fun m!1401329 () Bool)

(assert (=> b!1517960 m!1401329))

(assert (=> b!1517960 m!1401329))

(assert (=> b!1517960 m!1401327))

(declare-fun m!1401331 () Bool)

(assert (=> b!1517960 m!1401331))

(assert (=> b!1517959 m!1401313))

(assert (=> b!1517959 m!1401313))

(declare-fun m!1401333 () Bool)

(assert (=> b!1517959 m!1401333))

(assert (=> b!1517951 m!1401313))

(assert (=> b!1517951 m!1401313))

(declare-fun m!1401335 () Bool)

(assert (=> b!1517951 m!1401335))

(assert (=> b!1517961 m!1401313))

(declare-fun m!1401337 () Bool)

(assert (=> b!1517961 m!1401337))

(assert (=> b!1517961 m!1401325))

(assert (=> b!1517961 m!1401327))

(declare-fun m!1401339 () Bool)

(assert (=> b!1517961 m!1401339))

(assert (=> b!1517953 m!1401313))

(assert (=> b!1517953 m!1401313))

(declare-fun m!1401341 () Bool)

(assert (=> b!1517953 m!1401341))

(assert (=> b!1517950 m!1401313))

(assert (=> b!1517950 m!1401313))

(declare-fun m!1401343 () Bool)

(assert (=> b!1517950 m!1401343))

(assert (=> b!1517950 m!1401343))

(assert (=> b!1517950 m!1401313))

(declare-fun m!1401345 () Bool)

(assert (=> b!1517950 m!1401345))

(declare-fun m!1401347 () Bool)

(assert (=> b!1517962 m!1401347))

(declare-fun m!1401349 () Bool)

(assert (=> b!1517956 m!1401349))

(push 1)

(assert (not b!1517960))

(assert (not b!1517955))

(assert (not b!1517954))

(assert (not b!1517951))

(assert (not b!1517959))

(assert (not b!1517962))

(assert (not start!129314))

(assert (not b!1517953))

(assert (not b!1517961))

(assert (not b!1517950))

