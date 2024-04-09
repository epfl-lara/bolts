; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128918 () Bool)

(assert start!128918)

(declare-fun b!1510346 () Bool)

(declare-fun res!1030330 () Bool)

(declare-fun e!843450 () Bool)

(assert (=> b!1510346 (=> (not res!1030330) (not e!843450))))

(declare-datatypes ((array!100687 0))(
  ( (array!100688 (arr!48576 (Array (_ BitVec 32) (_ BitVec 64))) (size!49127 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100687)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510346 (= res!1030330 (validKeyInArray!0 (select (arr!48576 a!2804) j!70)))))

(declare-fun e!843449 () Bool)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun b!1510347 () Bool)

(assert (=> b!1510347 (= e!843449 (validKeyInArray!0 (select (store (arr!48576 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(declare-fun res!1030324 () Bool)

(assert (=> start!128918 (=> (not res!1030324) (not e!843450))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128918 (= res!1030324 (validMask!0 mask!2512))))

(assert (=> start!128918 e!843450))

(assert (=> start!128918 true))

(declare-fun array_inv!37521 (array!100687) Bool)

(assert (=> start!128918 (array_inv!37521 a!2804)))

(declare-fun e!843451 () Bool)

(declare-fun b!1510348 () Bool)

(declare-datatypes ((SeekEntryResult!12768 0))(
  ( (MissingZero!12768 (index!53466 (_ BitVec 32))) (Found!12768 (index!53467 (_ BitVec 32))) (Intermediate!12768 (undefined!13580 Bool) (index!53468 (_ BitVec 32)) (x!135219 (_ BitVec 32))) (Undefined!12768) (MissingVacant!12768 (index!53469 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100687 (_ BitVec 32)) SeekEntryResult!12768)

(assert (=> b!1510348 (= e!843451 (= (seekEntry!0 (select (arr!48576 a!2804) j!70) a!2804 mask!2512) (Found!12768 j!70)))))

(declare-fun b!1510349 () Bool)

(declare-fun res!1030329 () Bool)

(assert (=> b!1510349 (=> (not res!1030329) (not e!843450))))

(declare-datatypes ((List!35239 0))(
  ( (Nil!35236) (Cons!35235 (h!36648 (_ BitVec 64)) (t!49940 List!35239)) )
))
(declare-fun arrayNoDuplicates!0 (array!100687 (_ BitVec 32) List!35239) Bool)

(assert (=> b!1510349 (= res!1030329 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35236))))

(declare-fun b!1510350 () Bool)

(declare-fun e!843452 () Bool)

(assert (=> b!1510350 (= e!843450 e!843452)))

(declare-fun res!1030325 () Bool)

(assert (=> b!1510350 (=> (not res!1030325) (not e!843452))))

(declare-fun lt!655115 () SeekEntryResult!12768)

(declare-fun lt!655116 () SeekEntryResult!12768)

(assert (=> b!1510350 (= res!1030325 (= lt!655115 lt!655116))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1510350 (= lt!655116 (Intermediate!12768 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100687 (_ BitVec 32)) SeekEntryResult!12768)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510350 (= lt!655115 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48576 a!2804) j!70) mask!2512) (select (arr!48576 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510351 () Bool)

(declare-fun res!1030321 () Bool)

(assert (=> b!1510351 (=> (not res!1030321) (not e!843452))))

(assert (=> b!1510351 (= res!1030321 (= lt!655115 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48576 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48576 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100688 (store (arr!48576 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49127 a!2804)) mask!2512)))))

(declare-fun b!1510352 () Bool)

(assert (=> b!1510352 (= e!843452 (not e!843449))))

(declare-fun res!1030328 () Bool)

(assert (=> b!1510352 (=> res!1030328 e!843449)))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1510352 (= res!1030328 (or (not (= (select (arr!48576 a!2804) j!70) (select (store (arr!48576 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48576 a!2804) index!487) (select (arr!48576 a!2804) j!70))) (not (= j!70 index!487)) (bvslt mask!2512 #b00000000000000000000000000000000)))))

(assert (=> b!1510352 e!843451))

(declare-fun res!1030322 () Bool)

(assert (=> b!1510352 (=> (not res!1030322) (not e!843451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100687 (_ BitVec 32)) Bool)

(assert (=> b!1510352 (= res!1030322 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50360 0))(
  ( (Unit!50361) )
))
(declare-fun lt!655117 () Unit!50360)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100687 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50360)

(assert (=> b!1510352 (= lt!655117 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510353 () Bool)

(declare-fun res!1030332 () Bool)

(assert (=> b!1510353 (=> (not res!1030332) (not e!843450))))

(assert (=> b!1510353 (= res!1030332 (validKeyInArray!0 (select (arr!48576 a!2804) i!961)))))

(declare-fun b!1510354 () Bool)

(declare-fun res!1030323 () Bool)

(assert (=> b!1510354 (=> (not res!1030323) (not e!843450))))

(assert (=> b!1510354 (= res!1030323 (and (= (size!49127 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49127 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49127 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510355 () Bool)

(declare-fun res!1030326 () Bool)

(assert (=> b!1510355 (=> (not res!1030326) (not e!843450))))

(assert (=> b!1510355 (= res!1030326 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49127 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49127 a!2804))))))

(declare-fun b!1510356 () Bool)

(declare-fun res!1030327 () Bool)

(assert (=> b!1510356 (=> (not res!1030327) (not e!843450))))

(assert (=> b!1510356 (= res!1030327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510357 () Bool)

(declare-fun res!1030331 () Bool)

(assert (=> b!1510357 (=> (not res!1030331) (not e!843452))))

(assert (=> b!1510357 (= res!1030331 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48576 a!2804) j!70) a!2804 mask!2512) lt!655116))))

(assert (= (and start!128918 res!1030324) b!1510354))

(assert (= (and b!1510354 res!1030323) b!1510353))

(assert (= (and b!1510353 res!1030332) b!1510346))

(assert (= (and b!1510346 res!1030330) b!1510356))

(assert (= (and b!1510356 res!1030327) b!1510349))

(assert (= (and b!1510349 res!1030329) b!1510355))

(assert (= (and b!1510355 res!1030326) b!1510350))

(assert (= (and b!1510350 res!1030325) b!1510357))

(assert (= (and b!1510357 res!1030331) b!1510351))

(assert (= (and b!1510351 res!1030321) b!1510352))

(assert (= (and b!1510352 res!1030322) b!1510348))

(assert (= (and b!1510352 (not res!1030328)) b!1510347))

(declare-fun m!1392983 () Bool)

(assert (=> b!1510353 m!1392983))

(assert (=> b!1510353 m!1392983))

(declare-fun m!1392985 () Bool)

(assert (=> b!1510353 m!1392985))

(declare-fun m!1392987 () Bool)

(assert (=> b!1510356 m!1392987))

(declare-fun m!1392989 () Bool)

(assert (=> b!1510352 m!1392989))

(declare-fun m!1392991 () Bool)

(assert (=> b!1510352 m!1392991))

(declare-fun m!1392993 () Bool)

(assert (=> b!1510352 m!1392993))

(declare-fun m!1392995 () Bool)

(assert (=> b!1510352 m!1392995))

(declare-fun m!1392997 () Bool)

(assert (=> b!1510352 m!1392997))

(declare-fun m!1392999 () Bool)

(assert (=> b!1510352 m!1392999))

(assert (=> b!1510357 m!1392989))

(assert (=> b!1510357 m!1392989))

(declare-fun m!1393001 () Bool)

(assert (=> b!1510357 m!1393001))

(assert (=> b!1510348 m!1392989))

(assert (=> b!1510348 m!1392989))

(declare-fun m!1393003 () Bool)

(assert (=> b!1510348 m!1393003))

(declare-fun m!1393005 () Bool)

(assert (=> start!128918 m!1393005))

(declare-fun m!1393007 () Bool)

(assert (=> start!128918 m!1393007))

(assert (=> b!1510351 m!1392993))

(assert (=> b!1510351 m!1392997))

(assert (=> b!1510351 m!1392997))

(declare-fun m!1393009 () Bool)

(assert (=> b!1510351 m!1393009))

(assert (=> b!1510351 m!1393009))

(assert (=> b!1510351 m!1392997))

(declare-fun m!1393011 () Bool)

(assert (=> b!1510351 m!1393011))

(assert (=> b!1510347 m!1392993))

(assert (=> b!1510347 m!1392997))

(assert (=> b!1510347 m!1392997))

(declare-fun m!1393013 () Bool)

(assert (=> b!1510347 m!1393013))

(declare-fun m!1393015 () Bool)

(assert (=> b!1510349 m!1393015))

(assert (=> b!1510346 m!1392989))

(assert (=> b!1510346 m!1392989))

(declare-fun m!1393017 () Bool)

(assert (=> b!1510346 m!1393017))

(assert (=> b!1510350 m!1392989))

(assert (=> b!1510350 m!1392989))

(declare-fun m!1393019 () Bool)

(assert (=> b!1510350 m!1393019))

(assert (=> b!1510350 m!1393019))

(assert (=> b!1510350 m!1392989))

(declare-fun m!1393021 () Bool)

(assert (=> b!1510350 m!1393021))

(push 1)

