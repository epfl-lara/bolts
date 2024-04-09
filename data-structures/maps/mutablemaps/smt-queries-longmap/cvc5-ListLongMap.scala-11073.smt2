; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129316 () Bool)

(assert start!129316)

(declare-fun b!1517989 () Bool)

(declare-fun res!1037964 () Bool)

(declare-fun e!846896 () Bool)

(assert (=> b!1517989 (=> (not res!1037964) (not e!846896))))

(declare-datatypes ((array!101085 0))(
  ( (array!101086 (arr!48775 (Array (_ BitVec 32) (_ BitVec 64))) (size!49326 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101085)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101085 (_ BitVec 32)) Bool)

(assert (=> b!1517989 (= res!1037964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1037976 () Bool)

(assert (=> start!129316 (=> (not res!1037976) (not e!846896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129316 (= res!1037976 (validMask!0 mask!2512))))

(assert (=> start!129316 e!846896))

(assert (=> start!129316 true))

(declare-fun array_inv!37720 (array!101085) Bool)

(assert (=> start!129316 (array_inv!37720 a!2804)))

(declare-fun b!1517990 () Bool)

(declare-fun res!1037970 () Bool)

(declare-fun e!846897 () Bool)

(assert (=> b!1517990 (=> (not res!1037970) (not e!846897))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12967 0))(
  ( (MissingZero!12967 (index!54262 (_ BitVec 32))) (Found!12967 (index!54263 (_ BitVec 32))) (Intermediate!12967 (undefined!13779 Bool) (index!54264 (_ BitVec 32)) (x!135954 (_ BitVec 32))) (Undefined!12967) (MissingVacant!12967 (index!54265 (_ BitVec 32))) )
))
(declare-fun lt!657975 () SeekEntryResult!12967)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101085 (_ BitVec 32)) SeekEntryResult!12967)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517990 (= res!1037970 (= lt!657975 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48775 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48775 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101086 (store (arr!48775 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49326 a!2804)) mask!2512)))))

(declare-fun b!1517991 () Bool)

(declare-fun res!1037969 () Bool)

(assert (=> b!1517991 (=> (not res!1037969) (not e!846897))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!657973 () SeekEntryResult!12967)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1517991 (= res!1037969 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48775 a!2804) j!70) a!2804 mask!2512) lt!657973))))

(declare-fun b!1517992 () Bool)

(declare-fun res!1037968 () Bool)

(assert (=> b!1517992 (=> (not res!1037968) (not e!846896))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1517992 (= res!1037968 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49326 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49326 a!2804))))))

(declare-fun b!1517993 () Bool)

(declare-fun e!846895 () Bool)

(declare-fun e!846894 () Bool)

(assert (=> b!1517993 (= e!846895 e!846894)))

(declare-fun res!1037973 () Bool)

(assert (=> b!1517993 (=> res!1037973 e!846894)))

(declare-fun lt!657972 () (_ BitVec 32))

(assert (=> b!1517993 (= res!1037973 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657972 #b00000000000000000000000000000000) (bvsge lt!657972 (size!49326 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517993 (= lt!657972 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517994 () Bool)

(assert (=> b!1517994 (= e!846894 true)))

(declare-fun lt!657974 () SeekEntryResult!12967)

(assert (=> b!1517994 (= lt!657974 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657972 (select (arr!48775 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517995 () Bool)

(assert (=> b!1517995 (= e!846897 (not e!846895))))

(declare-fun res!1037971 () Bool)

(assert (=> b!1517995 (=> res!1037971 e!846895)))

(assert (=> b!1517995 (= res!1037971 (or (not (= (select (arr!48775 a!2804) j!70) (select (store (arr!48775 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846898 () Bool)

(assert (=> b!1517995 e!846898))

(declare-fun res!1037974 () Bool)

(assert (=> b!1517995 (=> (not res!1037974) (not e!846898))))

(assert (=> b!1517995 (= res!1037974 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50758 0))(
  ( (Unit!50759) )
))
(declare-fun lt!657976 () Unit!50758)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101085 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50758)

(assert (=> b!1517995 (= lt!657976 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517996 () Bool)

(declare-fun res!1037965 () Bool)

(assert (=> b!1517996 (=> (not res!1037965) (not e!846896))))

(declare-datatypes ((List!35438 0))(
  ( (Nil!35435) (Cons!35434 (h!36847 (_ BitVec 64)) (t!50139 List!35438)) )
))
(declare-fun arrayNoDuplicates!0 (array!101085 (_ BitVec 32) List!35438) Bool)

(assert (=> b!1517996 (= res!1037965 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35435))))

(declare-fun b!1517997 () Bool)

(declare-fun res!1037972 () Bool)

(assert (=> b!1517997 (=> (not res!1037972) (not e!846896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517997 (= res!1037972 (validKeyInArray!0 (select (arr!48775 a!2804) i!961)))))

(declare-fun b!1517998 () Bool)

(declare-fun res!1037975 () Bool)

(assert (=> b!1517998 (=> (not res!1037975) (not e!846896))))

(assert (=> b!1517998 (= res!1037975 (validKeyInArray!0 (select (arr!48775 a!2804) j!70)))))

(declare-fun b!1517999 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101085 (_ BitVec 32)) SeekEntryResult!12967)

(assert (=> b!1517999 (= e!846898 (= (seekEntry!0 (select (arr!48775 a!2804) j!70) a!2804 mask!2512) (Found!12967 j!70)))))

(declare-fun b!1518000 () Bool)

(assert (=> b!1518000 (= e!846896 e!846897)))

(declare-fun res!1037966 () Bool)

(assert (=> b!1518000 (=> (not res!1037966) (not e!846897))))

(assert (=> b!1518000 (= res!1037966 (= lt!657975 lt!657973))))

(assert (=> b!1518000 (= lt!657973 (Intermediate!12967 false resIndex!21 resX!21))))

(assert (=> b!1518000 (= lt!657975 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48775 a!2804) j!70) mask!2512) (select (arr!48775 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518001 () Bool)

(declare-fun res!1037967 () Bool)

(assert (=> b!1518001 (=> (not res!1037967) (not e!846896))))

(assert (=> b!1518001 (= res!1037967 (and (= (size!49326 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49326 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49326 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129316 res!1037976) b!1518001))

(assert (= (and b!1518001 res!1037967) b!1517997))

(assert (= (and b!1517997 res!1037972) b!1517998))

(assert (= (and b!1517998 res!1037975) b!1517989))

(assert (= (and b!1517989 res!1037964) b!1517996))

(assert (= (and b!1517996 res!1037965) b!1517992))

(assert (= (and b!1517992 res!1037968) b!1518000))

(assert (= (and b!1518000 res!1037966) b!1517991))

(assert (= (and b!1517991 res!1037969) b!1517990))

(assert (= (and b!1517990 res!1037970) b!1517995))

(assert (= (and b!1517995 res!1037974) b!1517999))

(assert (= (and b!1517995 (not res!1037971)) b!1517993))

(assert (= (and b!1517993 (not res!1037973)) b!1517994))

(declare-fun m!1401351 () Bool)

(assert (=> b!1517997 m!1401351))

(assert (=> b!1517997 m!1401351))

(declare-fun m!1401353 () Bool)

(assert (=> b!1517997 m!1401353))

(declare-fun m!1401355 () Bool)

(assert (=> b!1517999 m!1401355))

(assert (=> b!1517999 m!1401355))

(declare-fun m!1401357 () Bool)

(assert (=> b!1517999 m!1401357))

(assert (=> b!1517991 m!1401355))

(assert (=> b!1517991 m!1401355))

(declare-fun m!1401359 () Bool)

(assert (=> b!1517991 m!1401359))

(assert (=> b!1517995 m!1401355))

(declare-fun m!1401361 () Bool)

(assert (=> b!1517995 m!1401361))

(declare-fun m!1401363 () Bool)

(assert (=> b!1517995 m!1401363))

(declare-fun m!1401365 () Bool)

(assert (=> b!1517995 m!1401365))

(declare-fun m!1401367 () Bool)

(assert (=> b!1517995 m!1401367))

(assert (=> b!1517994 m!1401355))

(assert (=> b!1517994 m!1401355))

(declare-fun m!1401369 () Bool)

(assert (=> b!1517994 m!1401369))

(assert (=> b!1517990 m!1401363))

(assert (=> b!1517990 m!1401365))

(assert (=> b!1517990 m!1401365))

(declare-fun m!1401371 () Bool)

(assert (=> b!1517990 m!1401371))

(assert (=> b!1517990 m!1401371))

(assert (=> b!1517990 m!1401365))

(declare-fun m!1401373 () Bool)

(assert (=> b!1517990 m!1401373))

(declare-fun m!1401375 () Bool)

(assert (=> b!1517989 m!1401375))

(declare-fun m!1401377 () Bool)

(assert (=> b!1517996 m!1401377))

(declare-fun m!1401379 () Bool)

(assert (=> start!129316 m!1401379))

(declare-fun m!1401381 () Bool)

(assert (=> start!129316 m!1401381))

(declare-fun m!1401383 () Bool)

(assert (=> b!1517993 m!1401383))

(assert (=> b!1518000 m!1401355))

(assert (=> b!1518000 m!1401355))

(declare-fun m!1401385 () Bool)

(assert (=> b!1518000 m!1401385))

(assert (=> b!1518000 m!1401385))

(assert (=> b!1518000 m!1401355))

(declare-fun m!1401387 () Bool)

(assert (=> b!1518000 m!1401387))

(assert (=> b!1517998 m!1401355))

(assert (=> b!1517998 m!1401355))

(declare-fun m!1401389 () Bool)

(assert (=> b!1517998 m!1401389))

(push 1)

