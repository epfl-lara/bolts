; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129032 () Bool)

(assert start!129032)

(declare-fun res!1032337 () Bool)

(declare-fun e!844207 () Bool)

(assert (=> start!129032 (=> (not res!1032337) (not e!844207))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129032 (= res!1032337 (validMask!0 mask!2512))))

(assert (=> start!129032 e!844207))

(assert (=> start!129032 true))

(declare-datatypes ((array!100801 0))(
  ( (array!100802 (arr!48633 (Array (_ BitVec 32) (_ BitVec 64))) (size!49184 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100801)

(declare-fun array_inv!37578 (array!100801) Bool)

(assert (=> start!129032 (array_inv!37578 a!2804)))

(declare-fun b!1512361 () Bool)

(declare-fun res!1032343 () Bool)

(assert (=> b!1512361 (=> (not res!1032343) (not e!844207))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1512361 (= res!1032343 (and (= (size!49184 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49184 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49184 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512362 () Bool)

(declare-fun res!1032346 () Bool)

(assert (=> b!1512362 (=> (not res!1032346) (not e!844207))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512362 (= res!1032346 (validKeyInArray!0 (select (arr!48633 a!2804) i!961)))))

(declare-fun e!844208 () Bool)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun b!1512363 () Bool)

(declare-datatypes ((SeekEntryResult!12825 0))(
  ( (MissingZero!12825 (index!53694 (_ BitVec 32))) (Found!12825 (index!53695 (_ BitVec 32))) (Intermediate!12825 (undefined!13637 Bool) (index!53696 (_ BitVec 32)) (x!135428 (_ BitVec 32))) (Undefined!12825) (MissingVacant!12825 (index!53697 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100801 (_ BitVec 32)) SeekEntryResult!12825)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100801 (_ BitVec 32)) SeekEntryResult!12825)

(assert (=> b!1512363 (= e!844208 (= (seekEntryOrOpen!0 (select (arr!48633 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48633 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512364 () Bool)

(declare-fun res!1032338 () Bool)

(declare-fun e!844204 () Bool)

(assert (=> b!1512364 (=> (not res!1032338) (not e!844204))))

(declare-fun lt!655630 () SeekEntryResult!12825)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100801 (_ BitVec 32)) SeekEntryResult!12825)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512364 (= res!1032338 (= lt!655630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48633 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48633 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100802 (store (arr!48633 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49184 a!2804)) mask!2512)))))

(declare-fun b!1512365 () Bool)

(declare-fun res!1032348 () Bool)

(assert (=> b!1512365 (=> (not res!1032348) (not e!844204))))

(declare-fun lt!655629 () SeekEntryResult!12825)

(assert (=> b!1512365 (= res!1032348 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48633 a!2804) j!70) a!2804 mask!2512) lt!655629))))

(declare-fun b!1512366 () Bool)

(declare-fun res!1032344 () Bool)

(assert (=> b!1512366 (=> (not res!1032344) (not e!844207))))

(assert (=> b!1512366 (= res!1032344 (validKeyInArray!0 (select (arr!48633 a!2804) j!70)))))

(declare-fun b!1512367 () Bool)

(declare-fun res!1032336 () Bool)

(assert (=> b!1512367 (=> (not res!1032336) (not e!844207))))

(declare-datatypes ((List!35296 0))(
  ( (Nil!35293) (Cons!35292 (h!36705 (_ BitVec 64)) (t!49997 List!35296)) )
))
(declare-fun arrayNoDuplicates!0 (array!100801 (_ BitVec 32) List!35296) Bool)

(assert (=> b!1512367 (= res!1032336 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35293))))

(declare-fun b!1512368 () Bool)

(declare-fun e!844206 () Bool)

(assert (=> b!1512368 (= e!844206 e!844208)))

(declare-fun res!1032339 () Bool)

(assert (=> b!1512368 (=> res!1032339 e!844208)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1512368 (= res!1032339 (or (not (= (select (arr!48633 a!2804) j!70) (select (store (arr!48633 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48633 a!2804) index!487) (select (arr!48633 a!2804) j!70)) (not (= (select (arr!48633 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512369 () Bool)

(assert (=> b!1512369 (= e!844207 e!844204)))

(declare-fun res!1032345 () Bool)

(assert (=> b!1512369 (=> (not res!1032345) (not e!844204))))

(assert (=> b!1512369 (= res!1032345 (= lt!655630 lt!655629))))

(assert (=> b!1512369 (= lt!655629 (Intermediate!12825 false resIndex!21 resX!21))))

(assert (=> b!1512369 (= lt!655630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48633 a!2804) j!70) mask!2512) (select (arr!48633 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512370 () Bool)

(declare-fun res!1032342 () Bool)

(assert (=> b!1512370 (=> (not res!1032342) (not e!844206))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100801 (_ BitVec 32)) SeekEntryResult!12825)

(assert (=> b!1512370 (= res!1032342 (= (seekEntry!0 (select (arr!48633 a!2804) j!70) a!2804 mask!2512) (Found!12825 j!70)))))

(declare-fun b!1512371 () Bool)

(assert (=> b!1512371 (= e!844204 (not true))))

(assert (=> b!1512371 e!844206))

(declare-fun res!1032347 () Bool)

(assert (=> b!1512371 (=> (not res!1032347) (not e!844206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100801 (_ BitVec 32)) Bool)

(assert (=> b!1512371 (= res!1032347 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50474 0))(
  ( (Unit!50475) )
))
(declare-fun lt!655628 () Unit!50474)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100801 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50474)

(assert (=> b!1512371 (= lt!655628 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512372 () Bool)

(declare-fun res!1032340 () Bool)

(assert (=> b!1512372 (=> (not res!1032340) (not e!844207))))

(assert (=> b!1512372 (= res!1032340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512373 () Bool)

(declare-fun res!1032341 () Bool)

(assert (=> b!1512373 (=> (not res!1032341) (not e!844207))))

(assert (=> b!1512373 (= res!1032341 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49184 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49184 a!2804))))))

(assert (= (and start!129032 res!1032337) b!1512361))

(assert (= (and b!1512361 res!1032343) b!1512362))

(assert (= (and b!1512362 res!1032346) b!1512366))

(assert (= (and b!1512366 res!1032344) b!1512372))

(assert (= (and b!1512372 res!1032340) b!1512367))

(assert (= (and b!1512367 res!1032336) b!1512373))

(assert (= (and b!1512373 res!1032341) b!1512369))

(assert (= (and b!1512369 res!1032345) b!1512365))

(assert (= (and b!1512365 res!1032348) b!1512364))

(assert (= (and b!1512364 res!1032338) b!1512371))

(assert (= (and b!1512371 res!1032347) b!1512370))

(assert (= (and b!1512370 res!1032342) b!1512368))

(assert (= (and b!1512368 (not res!1032339)) b!1512363))

(declare-fun m!1395183 () Bool)

(assert (=> b!1512370 m!1395183))

(assert (=> b!1512370 m!1395183))

(declare-fun m!1395185 () Bool)

(assert (=> b!1512370 m!1395185))

(declare-fun m!1395187 () Bool)

(assert (=> start!129032 m!1395187))

(declare-fun m!1395189 () Bool)

(assert (=> start!129032 m!1395189))

(declare-fun m!1395191 () Bool)

(assert (=> b!1512364 m!1395191))

(declare-fun m!1395193 () Bool)

(assert (=> b!1512364 m!1395193))

(assert (=> b!1512364 m!1395193))

(declare-fun m!1395195 () Bool)

(assert (=> b!1512364 m!1395195))

(assert (=> b!1512364 m!1395195))

(assert (=> b!1512364 m!1395193))

(declare-fun m!1395197 () Bool)

(assert (=> b!1512364 m!1395197))

(declare-fun m!1395199 () Bool)

(assert (=> b!1512371 m!1395199))

(declare-fun m!1395201 () Bool)

(assert (=> b!1512371 m!1395201))

(assert (=> b!1512369 m!1395183))

(assert (=> b!1512369 m!1395183))

(declare-fun m!1395203 () Bool)

(assert (=> b!1512369 m!1395203))

(assert (=> b!1512369 m!1395203))

(assert (=> b!1512369 m!1395183))

(declare-fun m!1395205 () Bool)

(assert (=> b!1512369 m!1395205))

(assert (=> b!1512365 m!1395183))

(assert (=> b!1512365 m!1395183))

(declare-fun m!1395207 () Bool)

(assert (=> b!1512365 m!1395207))

(declare-fun m!1395209 () Bool)

(assert (=> b!1512367 m!1395209))

(declare-fun m!1395211 () Bool)

(assert (=> b!1512372 m!1395211))

(assert (=> b!1512366 m!1395183))

(assert (=> b!1512366 m!1395183))

(declare-fun m!1395213 () Bool)

(assert (=> b!1512366 m!1395213))

(declare-fun m!1395215 () Bool)

(assert (=> b!1512362 m!1395215))

(assert (=> b!1512362 m!1395215))

(declare-fun m!1395217 () Bool)

(assert (=> b!1512362 m!1395217))

(assert (=> b!1512363 m!1395183))

(assert (=> b!1512363 m!1395183))

(declare-fun m!1395219 () Bool)

(assert (=> b!1512363 m!1395219))

(assert (=> b!1512363 m!1395183))

(declare-fun m!1395221 () Bool)

(assert (=> b!1512363 m!1395221))

(assert (=> b!1512368 m!1395183))

(assert (=> b!1512368 m!1395191))

(assert (=> b!1512368 m!1395193))

(declare-fun m!1395223 () Bool)

(assert (=> b!1512368 m!1395223))

(push 1)

