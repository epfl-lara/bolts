; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129382 () Bool)

(assert start!129382)

(declare-fun b!1519343 () Bool)

(declare-fun e!847562 () Bool)

(declare-fun e!847556 () Bool)

(assert (=> b!1519343 (= e!847562 e!847556)))

(declare-fun res!1039327 () Bool)

(assert (=> b!1519343 (=> (not res!1039327) (not e!847556))))

(declare-datatypes ((SeekEntryResult!13000 0))(
  ( (MissingZero!13000 (index!54394 (_ BitVec 32))) (Found!13000 (index!54395 (_ BitVec 32))) (Intermediate!13000 (undefined!13812 Bool) (index!54396 (_ BitVec 32)) (x!136075 (_ BitVec 32))) (Undefined!13000) (MissingVacant!13000 (index!54397 (_ BitVec 32))) )
))
(declare-fun lt!658599 () SeekEntryResult!13000)

(declare-fun lt!658598 () SeekEntryResult!13000)

(assert (=> b!1519343 (= res!1039327 (= lt!658599 lt!658598))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1519343 (= lt!658598 (Intermediate!13000 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101151 0))(
  ( (array!101152 (arr!48808 (Array (_ BitVec 32) (_ BitVec 64))) (size!49359 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101151)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101151 (_ BitVec 32)) SeekEntryResult!13000)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519343 (= lt!658599 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48808 a!2804) j!70) mask!2512) (select (arr!48808 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519344 () Bool)

(declare-fun res!1039320 () Bool)

(assert (=> b!1519344 (=> (not res!1039320) (not e!847562))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1519344 (= res!1039320 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49359 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49359 a!2804))))))

(declare-fun b!1519345 () Bool)

(declare-fun e!847561 () Bool)

(assert (=> b!1519345 (= e!847556 e!847561)))

(declare-fun res!1039332 () Bool)

(assert (=> b!1519345 (=> (not res!1039332) (not e!847561))))

(declare-fun lt!658597 () array!101151)

(declare-fun lt!658601 () (_ BitVec 64))

(assert (=> b!1519345 (= res!1039332 (= lt!658599 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658601 mask!2512) lt!658601 lt!658597 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1519345 (= lt!658601 (select (store (arr!48808 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1519345 (= lt!658597 (array!101152 (store (arr!48808 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49359 a!2804)))))

(declare-fun b!1519346 () Bool)

(declare-fun res!1039321 () Bool)

(assert (=> b!1519346 (=> (not res!1039321) (not e!847562))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519346 (= res!1039321 (validKeyInArray!0 (select (arr!48808 a!2804) j!70)))))

(declare-fun b!1519347 () Bool)

(declare-fun res!1039328 () Bool)

(assert (=> b!1519347 (=> (not res!1039328) (not e!847562))))

(assert (=> b!1519347 (= res!1039328 (and (= (size!49359 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49359 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49359 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519348 () Bool)

(declare-fun e!847559 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101151 (_ BitVec 32)) SeekEntryResult!13000)

(assert (=> b!1519348 (= e!847559 (= (seekEntry!0 (select (arr!48808 a!2804) j!70) a!2804 mask!2512) (Found!13000 j!70)))))

(declare-fun b!1519349 () Bool)

(declare-fun e!847555 () Bool)

(assert (=> b!1519349 (= e!847555 (validKeyInArray!0 lt!658601))))

(declare-fun b!1519350 () Bool)

(declare-fun res!1039331 () Bool)

(assert (=> b!1519350 (=> (not res!1039331) (not e!847562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101151 (_ BitVec 32)) Bool)

(assert (=> b!1519350 (= res!1039331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1039330 () Bool)

(assert (=> start!129382 (=> (not res!1039330) (not e!847562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129382 (= res!1039330 (validMask!0 mask!2512))))

(assert (=> start!129382 e!847562))

(assert (=> start!129382 true))

(declare-fun array_inv!37753 (array!101151) Bool)

(assert (=> start!129382 (array_inv!37753 a!2804)))

(declare-fun b!1519351 () Bool)

(declare-fun e!847560 () Bool)

(assert (=> b!1519351 (= e!847561 (not e!847560))))

(declare-fun res!1039326 () Bool)

(assert (=> b!1519351 (=> res!1039326 e!847560)))

(assert (=> b!1519351 (= res!1039326 (or (not (= (select (arr!48808 a!2804) j!70) lt!658601)) (= x!534 resX!21)))))

(assert (=> b!1519351 e!847559))

(declare-fun res!1039329 () Bool)

(assert (=> b!1519351 (=> (not res!1039329) (not e!847559))))

(assert (=> b!1519351 (= res!1039329 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50824 0))(
  ( (Unit!50825) )
))
(declare-fun lt!658602 () Unit!50824)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101151 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50824)

(assert (=> b!1519351 (= lt!658602 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519352 () Bool)

(declare-fun res!1039324 () Bool)

(assert (=> b!1519352 (=> (not res!1039324) (not e!847556))))

(assert (=> b!1519352 (= res!1039324 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48808 a!2804) j!70) a!2804 mask!2512) lt!658598))))

(declare-fun b!1519353 () Bool)

(declare-fun res!1039318 () Bool)

(declare-fun e!847557 () Bool)

(assert (=> b!1519353 (=> res!1039318 e!847557)))

(declare-fun lt!658603 () (_ BitVec 32))

(assert (=> b!1519353 (= res!1039318 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658603 (select (arr!48808 a!2804) j!70) a!2804 mask!2512) lt!658598)))))

(declare-fun b!1519354 () Bool)

(declare-fun res!1039325 () Bool)

(assert (=> b!1519354 (=> (not res!1039325) (not e!847562))))

(assert (=> b!1519354 (= res!1039325 (validKeyInArray!0 (select (arr!48808 a!2804) i!961)))))

(declare-fun b!1519355 () Bool)

(declare-fun res!1039323 () Bool)

(assert (=> b!1519355 (=> (not res!1039323) (not e!847562))))

(declare-datatypes ((List!35471 0))(
  ( (Nil!35468) (Cons!35467 (h!36880 (_ BitVec 64)) (t!50172 List!35471)) )
))
(declare-fun arrayNoDuplicates!0 (array!101151 (_ BitVec 32) List!35471) Bool)

(assert (=> b!1519355 (= res!1039323 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35468))))

(declare-fun b!1519356 () Bool)

(assert (=> b!1519356 (= e!847557 e!847555)))

(declare-fun res!1039322 () Bool)

(assert (=> b!1519356 (=> res!1039322 e!847555)))

(assert (=> b!1519356 (= res!1039322 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101151 (_ BitVec 32)) SeekEntryResult!13000)

(assert (=> b!1519356 (= (seekEntryOrOpen!0 (select (arr!48808 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658601 lt!658597 mask!2512))))

(declare-fun lt!658600 () Unit!50824)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101151 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50824)

(assert (=> b!1519356 (= lt!658600 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658603 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1519357 () Bool)

(assert (=> b!1519357 (= e!847560 e!847557)))

(declare-fun res!1039319 () Bool)

(assert (=> b!1519357 (=> res!1039319 e!847557)))

(assert (=> b!1519357 (= res!1039319 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658603 #b00000000000000000000000000000000) (bvsge lt!658603 (size!49359 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519357 (= lt!658603 (nextIndex!0 index!487 x!534 mask!2512))))

(assert (= (and start!129382 res!1039330) b!1519347))

(assert (= (and b!1519347 res!1039328) b!1519354))

(assert (= (and b!1519354 res!1039325) b!1519346))

(assert (= (and b!1519346 res!1039321) b!1519350))

(assert (= (and b!1519350 res!1039331) b!1519355))

(assert (= (and b!1519355 res!1039323) b!1519344))

(assert (= (and b!1519344 res!1039320) b!1519343))

(assert (= (and b!1519343 res!1039327) b!1519352))

(assert (= (and b!1519352 res!1039324) b!1519345))

(assert (= (and b!1519345 res!1039332) b!1519351))

(assert (= (and b!1519351 res!1039329) b!1519348))

(assert (= (and b!1519351 (not res!1039326)) b!1519357))

(assert (= (and b!1519357 (not res!1039319)) b!1519353))

(assert (= (and b!1519353 (not res!1039318)) b!1519356))

(assert (= (and b!1519356 (not res!1039322)) b!1519349))

(declare-fun m!1402797 () Bool)

(assert (=> b!1519346 m!1402797))

(assert (=> b!1519346 m!1402797))

(declare-fun m!1402799 () Bool)

(assert (=> b!1519346 m!1402799))

(declare-fun m!1402801 () Bool)

(assert (=> b!1519354 m!1402801))

(assert (=> b!1519354 m!1402801))

(declare-fun m!1402803 () Bool)

(assert (=> b!1519354 m!1402803))

(assert (=> b!1519343 m!1402797))

(assert (=> b!1519343 m!1402797))

(declare-fun m!1402805 () Bool)

(assert (=> b!1519343 m!1402805))

(assert (=> b!1519343 m!1402805))

(assert (=> b!1519343 m!1402797))

(declare-fun m!1402807 () Bool)

(assert (=> b!1519343 m!1402807))

(assert (=> b!1519353 m!1402797))

(assert (=> b!1519353 m!1402797))

(declare-fun m!1402809 () Bool)

(assert (=> b!1519353 m!1402809))

(assert (=> b!1519348 m!1402797))

(assert (=> b!1519348 m!1402797))

(declare-fun m!1402811 () Bool)

(assert (=> b!1519348 m!1402811))

(assert (=> b!1519352 m!1402797))

(assert (=> b!1519352 m!1402797))

(declare-fun m!1402813 () Bool)

(assert (=> b!1519352 m!1402813))

(declare-fun m!1402815 () Bool)

(assert (=> b!1519350 m!1402815))

(assert (=> b!1519351 m!1402797))

(declare-fun m!1402817 () Bool)

(assert (=> b!1519351 m!1402817))

(declare-fun m!1402819 () Bool)

(assert (=> b!1519351 m!1402819))

(assert (=> b!1519356 m!1402797))

(assert (=> b!1519356 m!1402797))

(declare-fun m!1402821 () Bool)

(assert (=> b!1519356 m!1402821))

(declare-fun m!1402823 () Bool)

(assert (=> b!1519356 m!1402823))

(declare-fun m!1402825 () Bool)

(assert (=> b!1519356 m!1402825))

(declare-fun m!1402827 () Bool)

(assert (=> start!129382 m!1402827))

(declare-fun m!1402829 () Bool)

(assert (=> start!129382 m!1402829))

(declare-fun m!1402831 () Bool)

(assert (=> b!1519349 m!1402831))

(declare-fun m!1402833 () Bool)

(assert (=> b!1519357 m!1402833))

(declare-fun m!1402835 () Bool)

(assert (=> b!1519345 m!1402835))

(assert (=> b!1519345 m!1402835))

(declare-fun m!1402837 () Bool)

(assert (=> b!1519345 m!1402837))

(declare-fun m!1402839 () Bool)

(assert (=> b!1519345 m!1402839))

(declare-fun m!1402841 () Bool)

(assert (=> b!1519345 m!1402841))

(declare-fun m!1402843 () Bool)

(assert (=> b!1519355 m!1402843))

(push 1)

