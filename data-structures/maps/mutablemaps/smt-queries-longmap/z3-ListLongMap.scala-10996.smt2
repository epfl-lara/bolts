; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128856 () Bool)

(assert start!128856)

(declare-fun b!1509337 () Bool)

(declare-fun res!1029313 () Bool)

(declare-fun e!843092 () Bool)

(assert (=> b!1509337 (=> (not res!1029313) (not e!843092))))

(declare-datatypes ((array!100625 0))(
  ( (array!100626 (arr!48545 (Array (_ BitVec 32) (_ BitVec 64))) (size!49096 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100625)

(declare-datatypes ((List!35208 0))(
  ( (Nil!35205) (Cons!35204 (h!36617 (_ BitVec 64)) (t!49909 List!35208)) )
))
(declare-fun arrayNoDuplicates!0 (array!100625 (_ BitVec 32) List!35208) Bool)

(assert (=> b!1509337 (= res!1029313 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35205))))

(declare-fun b!1509338 () Bool)

(declare-fun res!1029315 () Bool)

(declare-fun e!843090 () Bool)

(assert (=> b!1509338 (=> (not res!1029315) (not e!843090))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12737 0))(
  ( (MissingZero!12737 (index!53342 (_ BitVec 32))) (Found!12737 (index!53343 (_ BitVec 32))) (Intermediate!12737 (undefined!13549 Bool) (index!53344 (_ BitVec 32)) (x!135108 (_ BitVec 32))) (Undefined!12737) (MissingVacant!12737 (index!53345 (_ BitVec 32))) )
))
(declare-fun lt!654836 () SeekEntryResult!12737)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100625 (_ BitVec 32)) SeekEntryResult!12737)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509338 (= res!1029315 (= lt!654836 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48545 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48545 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100626 (store (arr!48545 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49096 a!2804)) mask!2512)))))

(declare-fun b!1509339 () Bool)

(declare-fun res!1029314 () Bool)

(assert (=> b!1509339 (=> (not res!1029314) (not e!843092))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509339 (= res!1029314 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49096 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49096 a!2804))))))

(declare-fun b!1509340 () Bool)

(declare-fun res!1029321 () Bool)

(assert (=> b!1509340 (=> (not res!1029321) (not e!843092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100625 (_ BitVec 32)) Bool)

(assert (=> b!1509340 (= res!1029321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509341 () Bool)

(assert (=> b!1509341 (= e!843090 (not true))))

(assert (=> b!1509341 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50298 0))(
  ( (Unit!50299) )
))
(declare-fun lt!654838 () Unit!50298)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100625 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50298)

(assert (=> b!1509341 (= lt!654838 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509342 () Bool)

(declare-fun res!1029318 () Bool)

(assert (=> b!1509342 (=> (not res!1029318) (not e!843090))))

(declare-fun lt!654837 () SeekEntryResult!12737)

(assert (=> b!1509342 (= res!1029318 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48545 a!2804) j!70) a!2804 mask!2512) lt!654837))))

(declare-fun b!1509344 () Bool)

(assert (=> b!1509344 (= e!843092 e!843090)))

(declare-fun res!1029312 () Bool)

(assert (=> b!1509344 (=> (not res!1029312) (not e!843090))))

(assert (=> b!1509344 (= res!1029312 (= lt!654836 lt!654837))))

(assert (=> b!1509344 (= lt!654837 (Intermediate!12737 false resIndex!21 resX!21))))

(assert (=> b!1509344 (= lt!654836 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48545 a!2804) j!70) mask!2512) (select (arr!48545 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509345 () Bool)

(declare-fun res!1029317 () Bool)

(assert (=> b!1509345 (=> (not res!1029317) (not e!843092))))

(assert (=> b!1509345 (= res!1029317 (and (= (size!49096 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49096 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49096 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509346 () Bool)

(declare-fun res!1029319 () Bool)

(assert (=> b!1509346 (=> (not res!1029319) (not e!843092))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509346 (= res!1029319 (validKeyInArray!0 (select (arr!48545 a!2804) j!70)))))

(declare-fun b!1509343 () Bool)

(declare-fun res!1029320 () Bool)

(assert (=> b!1509343 (=> (not res!1029320) (not e!843092))))

(assert (=> b!1509343 (= res!1029320 (validKeyInArray!0 (select (arr!48545 a!2804) i!961)))))

(declare-fun res!1029316 () Bool)

(assert (=> start!128856 (=> (not res!1029316) (not e!843092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128856 (= res!1029316 (validMask!0 mask!2512))))

(assert (=> start!128856 e!843092))

(assert (=> start!128856 true))

(declare-fun array_inv!37490 (array!100625) Bool)

(assert (=> start!128856 (array_inv!37490 a!2804)))

(assert (= (and start!128856 res!1029316) b!1509345))

(assert (= (and b!1509345 res!1029317) b!1509343))

(assert (= (and b!1509343 res!1029320) b!1509346))

(assert (= (and b!1509346 res!1029319) b!1509340))

(assert (= (and b!1509340 res!1029321) b!1509337))

(assert (= (and b!1509337 res!1029313) b!1509339))

(assert (= (and b!1509339 res!1029314) b!1509344))

(assert (= (and b!1509344 res!1029312) b!1509342))

(assert (= (and b!1509342 res!1029318) b!1509338))

(assert (= (and b!1509338 res!1029315) b!1509341))

(declare-fun m!1391863 () Bool)

(assert (=> b!1509337 m!1391863))

(declare-fun m!1391865 () Bool)

(assert (=> b!1509338 m!1391865))

(declare-fun m!1391867 () Bool)

(assert (=> b!1509338 m!1391867))

(assert (=> b!1509338 m!1391867))

(declare-fun m!1391869 () Bool)

(assert (=> b!1509338 m!1391869))

(assert (=> b!1509338 m!1391869))

(assert (=> b!1509338 m!1391867))

(declare-fun m!1391871 () Bool)

(assert (=> b!1509338 m!1391871))

(declare-fun m!1391873 () Bool)

(assert (=> start!128856 m!1391873))

(declare-fun m!1391875 () Bool)

(assert (=> start!128856 m!1391875))

(declare-fun m!1391877 () Bool)

(assert (=> b!1509341 m!1391877))

(declare-fun m!1391879 () Bool)

(assert (=> b!1509341 m!1391879))

(declare-fun m!1391881 () Bool)

(assert (=> b!1509340 m!1391881))

(declare-fun m!1391883 () Bool)

(assert (=> b!1509343 m!1391883))

(assert (=> b!1509343 m!1391883))

(declare-fun m!1391885 () Bool)

(assert (=> b!1509343 m!1391885))

(declare-fun m!1391887 () Bool)

(assert (=> b!1509344 m!1391887))

(assert (=> b!1509344 m!1391887))

(declare-fun m!1391889 () Bool)

(assert (=> b!1509344 m!1391889))

(assert (=> b!1509344 m!1391889))

(assert (=> b!1509344 m!1391887))

(declare-fun m!1391891 () Bool)

(assert (=> b!1509344 m!1391891))

(assert (=> b!1509346 m!1391887))

(assert (=> b!1509346 m!1391887))

(declare-fun m!1391893 () Bool)

(assert (=> b!1509346 m!1391893))

(assert (=> b!1509342 m!1391887))

(assert (=> b!1509342 m!1391887))

(declare-fun m!1391895 () Bool)

(assert (=> b!1509342 m!1391895))

(check-sat (not b!1509343) (not start!128856) (not b!1509338) (not b!1509346) (not b!1509342) (not b!1509341) (not b!1509337) (not b!1509340) (not b!1509344))
(check-sat)
