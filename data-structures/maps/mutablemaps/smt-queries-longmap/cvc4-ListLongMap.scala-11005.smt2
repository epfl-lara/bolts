; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128912 () Bool)

(assert start!128912)

(declare-fun res!1030215 () Bool)

(declare-fun e!843407 () Bool)

(assert (=> start!128912 (=> (not res!1030215) (not e!843407))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128912 (= res!1030215 (validMask!0 mask!2512))))

(assert (=> start!128912 e!843407))

(assert (=> start!128912 true))

(declare-datatypes ((array!100681 0))(
  ( (array!100682 (arr!48573 (Array (_ BitVec 32) (_ BitVec 64))) (size!49124 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100681)

(declare-fun array_inv!37518 (array!100681) Bool)

(assert (=> start!128912 (array_inv!37518 a!2804)))

(declare-fun b!1510239 () Bool)

(declare-fun res!1030217 () Bool)

(assert (=> b!1510239 (=> (not res!1030217) (not e!843407))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510239 (= res!1030217 (validKeyInArray!0 (select (arr!48573 a!2804) i!961)))))

(declare-fun b!1510240 () Bool)

(declare-fun res!1030219 () Bool)

(assert (=> b!1510240 (=> (not res!1030219) (not e!843407))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1510240 (= res!1030219 (and (= (size!49124 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49124 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49124 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510241 () Bool)

(declare-fun res!1030216 () Bool)

(declare-fun e!843405 () Bool)

(assert (=> b!1510241 (=> (not res!1030216) (not e!843405))))

(declare-datatypes ((SeekEntryResult!12765 0))(
  ( (MissingZero!12765 (index!53454 (_ BitVec 32))) (Found!12765 (index!53455 (_ BitVec 32))) (Intermediate!12765 (undefined!13577 Bool) (index!53456 (_ BitVec 32)) (x!135208 (_ BitVec 32))) (Undefined!12765) (MissingVacant!12765 (index!53457 (_ BitVec 32))) )
))
(declare-fun lt!655090 () SeekEntryResult!12765)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100681 (_ BitVec 32)) SeekEntryResult!12765)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510241 (= res!1030216 (= lt!655090 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48573 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48573 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100682 (store (arr!48573 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49124 a!2804)) mask!2512)))))

(declare-fun b!1510242 () Bool)

(declare-fun res!1030214 () Bool)

(assert (=> b!1510242 (=> (not res!1030214) (not e!843405))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!655088 () SeekEntryResult!12765)

(assert (=> b!1510242 (= res!1030214 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48573 a!2804) j!70) a!2804 mask!2512) lt!655088))))

(declare-fun e!843406 () Bool)

(declare-fun b!1510243 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100681 (_ BitVec 32)) SeekEntryResult!12765)

(assert (=> b!1510243 (= e!843406 (= (seekEntry!0 (select (arr!48573 a!2804) j!70) a!2804 mask!2512) (Found!12765 j!70)))))

(declare-fun b!1510244 () Bool)

(declare-fun res!1030224 () Bool)

(assert (=> b!1510244 (=> (not res!1030224) (not e!843407))))

(assert (=> b!1510244 (= res!1030224 (validKeyInArray!0 (select (arr!48573 a!2804) j!70)))))

(declare-fun b!1510245 () Bool)

(declare-fun res!1030220 () Bool)

(assert (=> b!1510245 (=> (not res!1030220) (not e!843407))))

(declare-datatypes ((List!35236 0))(
  ( (Nil!35233) (Cons!35232 (h!36645 (_ BitVec 64)) (t!49937 List!35236)) )
))
(declare-fun arrayNoDuplicates!0 (array!100681 (_ BitVec 32) List!35236) Bool)

(assert (=> b!1510245 (= res!1030220 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35233))))

(declare-fun b!1510246 () Bool)

(assert (=> b!1510246 (= e!843405 (not true))))

(assert (=> b!1510246 e!843406))

(declare-fun res!1030221 () Bool)

(assert (=> b!1510246 (=> (not res!1030221) (not e!843406))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100681 (_ BitVec 32)) Bool)

(assert (=> b!1510246 (= res!1030221 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50354 0))(
  ( (Unit!50355) )
))
(declare-fun lt!655089 () Unit!50354)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50354)

(assert (=> b!1510246 (= lt!655089 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510247 () Bool)

(assert (=> b!1510247 (= e!843407 e!843405)))

(declare-fun res!1030222 () Bool)

(assert (=> b!1510247 (=> (not res!1030222) (not e!843405))))

(assert (=> b!1510247 (= res!1030222 (= lt!655090 lt!655088))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1510247 (= lt!655088 (Intermediate!12765 false resIndex!21 resX!21))))

(assert (=> b!1510247 (= lt!655090 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48573 a!2804) j!70) mask!2512) (select (arr!48573 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510248 () Bool)

(declare-fun res!1030223 () Bool)

(assert (=> b!1510248 (=> (not res!1030223) (not e!843407))))

(assert (=> b!1510248 (= res!1030223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510249 () Bool)

(declare-fun res!1030218 () Bool)

(assert (=> b!1510249 (=> (not res!1030218) (not e!843407))))

(assert (=> b!1510249 (= res!1030218 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49124 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49124 a!2804))))))

(assert (= (and start!128912 res!1030215) b!1510240))

(assert (= (and b!1510240 res!1030219) b!1510239))

(assert (= (and b!1510239 res!1030217) b!1510244))

(assert (= (and b!1510244 res!1030224) b!1510248))

(assert (= (and b!1510248 res!1030223) b!1510245))

(assert (= (and b!1510245 res!1030220) b!1510249))

(assert (= (and b!1510249 res!1030218) b!1510247))

(assert (= (and b!1510247 res!1030222) b!1510242))

(assert (= (and b!1510242 res!1030214) b!1510241))

(assert (= (and b!1510241 res!1030216) b!1510246))

(assert (= (and b!1510246 res!1030221) b!1510243))

(declare-fun m!1392867 () Bool)

(assert (=> b!1510245 m!1392867))

(declare-fun m!1392869 () Bool)

(assert (=> b!1510248 m!1392869))

(declare-fun m!1392871 () Bool)

(assert (=> b!1510242 m!1392871))

(assert (=> b!1510242 m!1392871))

(declare-fun m!1392873 () Bool)

(assert (=> b!1510242 m!1392873))

(declare-fun m!1392875 () Bool)

(assert (=> b!1510239 m!1392875))

(assert (=> b!1510239 m!1392875))

(declare-fun m!1392877 () Bool)

(assert (=> b!1510239 m!1392877))

(assert (=> b!1510247 m!1392871))

(assert (=> b!1510247 m!1392871))

(declare-fun m!1392879 () Bool)

(assert (=> b!1510247 m!1392879))

(assert (=> b!1510247 m!1392879))

(assert (=> b!1510247 m!1392871))

(declare-fun m!1392881 () Bool)

(assert (=> b!1510247 m!1392881))

(declare-fun m!1392883 () Bool)

(assert (=> start!128912 m!1392883))

(declare-fun m!1392885 () Bool)

(assert (=> start!128912 m!1392885))

(declare-fun m!1392887 () Bool)

(assert (=> b!1510246 m!1392887))

(declare-fun m!1392889 () Bool)

(assert (=> b!1510246 m!1392889))

(assert (=> b!1510244 m!1392871))

(assert (=> b!1510244 m!1392871))

(declare-fun m!1392891 () Bool)

(assert (=> b!1510244 m!1392891))

(declare-fun m!1392893 () Bool)

(assert (=> b!1510241 m!1392893))

(declare-fun m!1392895 () Bool)

(assert (=> b!1510241 m!1392895))

(assert (=> b!1510241 m!1392895))

(declare-fun m!1392897 () Bool)

(assert (=> b!1510241 m!1392897))

(assert (=> b!1510241 m!1392897))

(assert (=> b!1510241 m!1392895))

(declare-fun m!1392899 () Bool)

(assert (=> b!1510241 m!1392899))

(assert (=> b!1510243 m!1392871))

(assert (=> b!1510243 m!1392871))

(declare-fun m!1392901 () Bool)

(assert (=> b!1510243 m!1392901))

(push 1)

(assert (not start!128912))

(assert (not b!1510242))

