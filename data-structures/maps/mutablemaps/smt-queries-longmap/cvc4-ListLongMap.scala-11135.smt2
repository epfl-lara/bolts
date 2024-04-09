; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130142 () Bool)

(assert start!130142)

(declare-fun res!1045250 () Bool)

(declare-fun e!851163 () Bool)

(assert (=> start!130142 (=> (not res!1045250) (not e!851163))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130142 (= res!1045250 (validMask!0 mask!2512))))

(assert (=> start!130142 e!851163))

(assert (=> start!130142 true))

(declare-datatypes ((array!101482 0))(
  ( (array!101483 (arr!48963 (Array (_ BitVec 32) (_ BitVec 64))) (size!49514 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101482)

(declare-fun array_inv!37908 (array!101482) Bool)

(assert (=> start!130142 (array_inv!37908 a!2804)))

(declare-fun b!1527069 () Bool)

(declare-fun res!1045253 () Bool)

(assert (=> b!1527069 (=> (not res!1045253) (not e!851163))))

(declare-datatypes ((List!35626 0))(
  ( (Nil!35623) (Cons!35622 (h!37056 (_ BitVec 64)) (t!50327 List!35626)) )
))
(declare-fun arrayNoDuplicates!0 (array!101482 (_ BitVec 32) List!35626) Bool)

(assert (=> b!1527069 (= res!1045253 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35623))))

(declare-fun b!1527070 () Bool)

(declare-fun e!851164 () Bool)

(assert (=> b!1527070 (= e!851164 (not true))))

(declare-fun e!851165 () Bool)

(assert (=> b!1527070 e!851165))

(declare-fun res!1045249 () Bool)

(assert (=> b!1527070 (=> (not res!1045249) (not e!851165))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101482 (_ BitVec 32)) Bool)

(assert (=> b!1527070 (= res!1045249 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51038 0))(
  ( (Unit!51039) )
))
(declare-fun lt!661266 () Unit!51038)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101482 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51038)

(assert (=> b!1527070 (= lt!661266 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1527071 () Bool)

(declare-fun res!1045254 () Bool)

(assert (=> b!1527071 (=> (not res!1045254) (not e!851163))))

(assert (=> b!1527071 (= res!1045254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun e!851162 () Bool)

(declare-fun lt!661270 () array!101482)

(declare-fun b!1527072 () Bool)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!661268 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13149 0))(
  ( (MissingZero!13149 (index!54990 (_ BitVec 32))) (Found!13149 (index!54991 (_ BitVec 32))) (Intermediate!13149 (undefined!13961 Bool) (index!54992 (_ BitVec 32)) (x!136686 (_ BitVec 32))) (Undefined!13149) (MissingVacant!13149 (index!54993 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101482 (_ BitVec 32)) SeekEntryResult!13149)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101482 (_ BitVec 32)) SeekEntryResult!13149)

(assert (=> b!1527072 (= e!851162 (= (seekEntryOrOpen!0 lt!661268 lt!661270 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661268 lt!661270 mask!2512)))))

(declare-fun b!1527073 () Bool)

(declare-fun e!851166 () Bool)

(assert (=> b!1527073 (= e!851165 e!851166)))

(declare-fun res!1045244 () Bool)

(assert (=> b!1527073 (=> res!1045244 e!851166)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1527073 (= res!1045244 (or (not (= (select (arr!48963 a!2804) j!70) lt!661268)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48963 a!2804) index!487) (select (arr!48963 a!2804) j!70)) (not (= (select (arr!48963 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1527074 () Bool)

(declare-fun e!851167 () Bool)

(assert (=> b!1527074 (= e!851167 e!851164)))

(declare-fun res!1045248 () Bool)

(assert (=> b!1527074 (=> (not res!1045248) (not e!851164))))

(declare-fun lt!661269 () SeekEntryResult!13149)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101482 (_ BitVec 32)) SeekEntryResult!13149)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527074 (= res!1045248 (= lt!661269 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661268 mask!2512) lt!661268 lt!661270 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1527074 (= lt!661268 (select (store (arr!48963 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1527074 (= lt!661270 (array!101483 (store (arr!48963 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49514 a!2804)))))

(declare-fun b!1527075 () Bool)

(declare-fun res!1045243 () Bool)

(assert (=> b!1527075 (=> (not res!1045243) (not e!851163))))

(assert (=> b!1527075 (= res!1045243 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49514 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49514 a!2804))))))

(declare-fun b!1527076 () Bool)

(declare-fun res!1045251 () Bool)

(assert (=> b!1527076 (=> (not res!1045251) (not e!851167))))

(declare-fun lt!661267 () SeekEntryResult!13149)

(assert (=> b!1527076 (= res!1045251 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48963 a!2804) j!70) a!2804 mask!2512) lt!661267))))

(declare-fun b!1527077 () Bool)

(declare-fun res!1045245 () Bool)

(assert (=> b!1527077 (=> (not res!1045245) (not e!851163))))

(assert (=> b!1527077 (= res!1045245 (and (= (size!49514 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49514 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49514 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1527078 () Bool)

(declare-fun res!1045246 () Bool)

(assert (=> b!1527078 (=> (not res!1045246) (not e!851163))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1527078 (= res!1045246 (validKeyInArray!0 (select (arr!48963 a!2804) j!70)))))

(declare-fun b!1527079 () Bool)

(assert (=> b!1527079 (= e!851163 e!851167)))

(declare-fun res!1045252 () Bool)

(assert (=> b!1527079 (=> (not res!1045252) (not e!851167))))

(assert (=> b!1527079 (= res!1045252 (= lt!661269 lt!661267))))

(assert (=> b!1527079 (= lt!661267 (Intermediate!13149 false resIndex!21 resX!21))))

(assert (=> b!1527079 (= lt!661269 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48963 a!2804) j!70) mask!2512) (select (arr!48963 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527080 () Bool)

(assert (=> b!1527080 (= e!851166 e!851162)))

(declare-fun res!1045242 () Bool)

(assert (=> b!1527080 (=> (not res!1045242) (not e!851162))))

(assert (=> b!1527080 (= res!1045242 (= (seekEntryOrOpen!0 (select (arr!48963 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48963 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1527081 () Bool)

(declare-fun res!1045247 () Bool)

(assert (=> b!1527081 (=> (not res!1045247) (not e!851165))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101482 (_ BitVec 32)) SeekEntryResult!13149)

(assert (=> b!1527081 (= res!1045247 (= (seekEntry!0 (select (arr!48963 a!2804) j!70) a!2804 mask!2512) (Found!13149 j!70)))))

(declare-fun b!1527082 () Bool)

(declare-fun res!1045241 () Bool)

(assert (=> b!1527082 (=> (not res!1045241) (not e!851163))))

(assert (=> b!1527082 (= res!1045241 (validKeyInArray!0 (select (arr!48963 a!2804) i!961)))))

(assert (= (and start!130142 res!1045250) b!1527077))

(assert (= (and b!1527077 res!1045245) b!1527082))

(assert (= (and b!1527082 res!1045241) b!1527078))

(assert (= (and b!1527078 res!1045246) b!1527071))

(assert (= (and b!1527071 res!1045254) b!1527069))

(assert (= (and b!1527069 res!1045253) b!1527075))

(assert (= (and b!1527075 res!1045243) b!1527079))

(assert (= (and b!1527079 res!1045252) b!1527076))

(assert (= (and b!1527076 res!1045251) b!1527074))

(assert (= (and b!1527074 res!1045248) b!1527070))

(assert (= (and b!1527070 res!1045249) b!1527081))

(assert (= (and b!1527081 res!1045247) b!1527073))

(assert (= (and b!1527073 (not res!1045244)) b!1527080))

(assert (= (and b!1527080 res!1045242) b!1527072))

(declare-fun m!1409993 () Bool)

(assert (=> start!130142 m!1409993))

(declare-fun m!1409995 () Bool)

(assert (=> start!130142 m!1409995))

(declare-fun m!1409997 () Bool)

(assert (=> b!1527074 m!1409997))

(assert (=> b!1527074 m!1409997))

(declare-fun m!1409999 () Bool)

(assert (=> b!1527074 m!1409999))

(declare-fun m!1410001 () Bool)

(assert (=> b!1527074 m!1410001))

(declare-fun m!1410003 () Bool)

(assert (=> b!1527074 m!1410003))

(declare-fun m!1410005 () Bool)

(assert (=> b!1527071 m!1410005))

(declare-fun m!1410007 () Bool)

(assert (=> b!1527081 m!1410007))

(assert (=> b!1527081 m!1410007))

(declare-fun m!1410009 () Bool)

(assert (=> b!1527081 m!1410009))

(assert (=> b!1527076 m!1410007))

(assert (=> b!1527076 m!1410007))

(declare-fun m!1410011 () Bool)

(assert (=> b!1527076 m!1410011))

(assert (=> b!1527078 m!1410007))

(assert (=> b!1527078 m!1410007))

(declare-fun m!1410013 () Bool)

(assert (=> b!1527078 m!1410013))

(declare-fun m!1410015 () Bool)

(assert (=> b!1527070 m!1410015))

(declare-fun m!1410017 () Bool)

(assert (=> b!1527070 m!1410017))

(declare-fun m!1410019 () Bool)

(assert (=> b!1527082 m!1410019))

(assert (=> b!1527082 m!1410019))

(declare-fun m!1410021 () Bool)

(assert (=> b!1527082 m!1410021))

(declare-fun m!1410023 () Bool)

(assert (=> b!1527069 m!1410023))

(declare-fun m!1410025 () Bool)

(assert (=> b!1527072 m!1410025))

(declare-fun m!1410027 () Bool)

(assert (=> b!1527072 m!1410027))

(assert (=> b!1527080 m!1410007))

(assert (=> b!1527080 m!1410007))

(declare-fun m!1410029 () Bool)

(assert (=> b!1527080 m!1410029))

(assert (=> b!1527080 m!1410007))

(declare-fun m!1410031 () Bool)

(assert (=> b!1527080 m!1410031))

(assert (=> b!1527073 m!1410007))

(declare-fun m!1410033 () Bool)

(assert (=> b!1527073 m!1410033))

(assert (=> b!1527079 m!1410007))

(assert (=> b!1527079 m!1410007))

(declare-fun m!1410035 () Bool)

(assert (=> b!1527079 m!1410035))

(assert (=> b!1527079 m!1410035))

(assert (=> b!1527079 m!1410007))

(declare-fun m!1410037 () Bool)

(assert (=> b!1527079 m!1410037))

(push 1)

