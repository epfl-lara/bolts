; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129036 () Bool)

(assert start!129036)

(declare-fun b!1512439 () Bool)

(declare-fun e!844235 () Bool)

(declare-fun e!844234 () Bool)

(assert (=> b!1512439 (= e!844235 e!844234)))

(declare-fun res!1032417 () Bool)

(assert (=> b!1512439 (=> (not res!1032417) (not e!844234))))

(declare-datatypes ((SeekEntryResult!12827 0))(
  ( (MissingZero!12827 (index!53702 (_ BitVec 32))) (Found!12827 (index!53703 (_ BitVec 32))) (Intermediate!12827 (undefined!13639 Bool) (index!53704 (_ BitVec 32)) (x!135438 (_ BitVec 32))) (Undefined!12827) (MissingVacant!12827 (index!53705 (_ BitVec 32))) )
))
(declare-fun lt!655648 () SeekEntryResult!12827)

(declare-fun lt!655646 () SeekEntryResult!12827)

(assert (=> b!1512439 (= res!1032417 (= lt!655648 lt!655646))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1512439 (= lt!655646 (Intermediate!12827 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100805 0))(
  ( (array!100806 (arr!48635 (Array (_ BitVec 32) (_ BitVec 64))) (size!49186 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100805)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100805 (_ BitVec 32)) SeekEntryResult!12827)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512439 (= lt!655648 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48635 a!2804) j!70) mask!2512) (select (arr!48635 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512440 () Bool)

(declare-fun res!1032415 () Bool)

(assert (=> b!1512440 (=> (not res!1032415) (not e!844235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100805 (_ BitVec 32)) Bool)

(assert (=> b!1512440 (= res!1032415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1032419 () Bool)

(assert (=> start!129036 (=> (not res!1032419) (not e!844235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129036 (= res!1032419 (validMask!0 mask!2512))))

(assert (=> start!129036 e!844235))

(assert (=> start!129036 true))

(declare-fun array_inv!37580 (array!100805) Bool)

(assert (=> start!129036 (array_inv!37580 a!2804)))

(declare-fun b!1512441 () Bool)

(declare-fun res!1032421 () Bool)

(declare-fun e!844238 () Bool)

(assert (=> b!1512441 (=> (not res!1032421) (not e!844238))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100805 (_ BitVec 32)) SeekEntryResult!12827)

(assert (=> b!1512441 (= res!1032421 (= (seekEntry!0 (select (arr!48635 a!2804) j!70) a!2804 mask!2512) (Found!12827 j!70)))))

(declare-fun b!1512442 () Bool)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1512442 (= e!844234 (not (or (not (= (select (arr!48635 a!2804) j!70) (select (store (arr!48635 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48635 a!2804) index!487) (select (arr!48635 a!2804) j!70)) (not (= (select (arr!48635 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000) (bvslt index!487 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(assert (=> b!1512442 e!844238))

(declare-fun res!1032422 () Bool)

(assert (=> b!1512442 (=> (not res!1032422) (not e!844238))))

(assert (=> b!1512442 (= res!1032422 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50478 0))(
  ( (Unit!50479) )
))
(declare-fun lt!655647 () Unit!50478)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50478)

(assert (=> b!1512442 (= lt!655647 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512443 () Bool)

(declare-fun res!1032426 () Bool)

(assert (=> b!1512443 (=> (not res!1032426) (not e!844235))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512443 (= res!1032426 (validKeyInArray!0 (select (arr!48635 a!2804) i!961)))))

(declare-fun b!1512444 () Bool)

(declare-fun res!1032416 () Bool)

(assert (=> b!1512444 (=> (not res!1032416) (not e!844235))))

(assert (=> b!1512444 (= res!1032416 (validKeyInArray!0 (select (arr!48635 a!2804) j!70)))))

(declare-fun b!1512445 () Bool)

(declare-fun res!1032424 () Bool)

(assert (=> b!1512445 (=> (not res!1032424) (not e!844234))))

(assert (=> b!1512445 (= res!1032424 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48635 a!2804) j!70) a!2804 mask!2512) lt!655646))))

(declare-fun b!1512446 () Bool)

(declare-fun res!1032414 () Bool)

(assert (=> b!1512446 (=> (not res!1032414) (not e!844234))))

(assert (=> b!1512446 (= res!1032414 (= lt!655648 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48635 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48635 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100806 (store (arr!48635 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49186 a!2804)) mask!2512)))))

(declare-fun b!1512447 () Bool)

(declare-fun e!844237 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100805 (_ BitVec 32)) SeekEntryResult!12827)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100805 (_ BitVec 32)) SeekEntryResult!12827)

(assert (=> b!1512447 (= e!844237 (= (seekEntryOrOpen!0 (select (arr!48635 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48635 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512448 () Bool)

(declare-fun res!1032423 () Bool)

(assert (=> b!1512448 (=> (not res!1032423) (not e!844235))))

(assert (=> b!1512448 (= res!1032423 (and (= (size!49186 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49186 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49186 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512449 () Bool)

(assert (=> b!1512449 (= e!844238 e!844237)))

(declare-fun res!1032420 () Bool)

(assert (=> b!1512449 (=> res!1032420 e!844237)))

(assert (=> b!1512449 (= res!1032420 (or (not (= (select (arr!48635 a!2804) j!70) (select (store (arr!48635 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48635 a!2804) index!487) (select (arr!48635 a!2804) j!70)) (not (= (select (arr!48635 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512450 () Bool)

(declare-fun res!1032425 () Bool)

(assert (=> b!1512450 (=> (not res!1032425) (not e!844235))))

(assert (=> b!1512450 (= res!1032425 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49186 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49186 a!2804))))))

(declare-fun b!1512451 () Bool)

(declare-fun res!1032418 () Bool)

(assert (=> b!1512451 (=> (not res!1032418) (not e!844235))))

(declare-datatypes ((List!35298 0))(
  ( (Nil!35295) (Cons!35294 (h!36707 (_ BitVec 64)) (t!49999 List!35298)) )
))
(declare-fun arrayNoDuplicates!0 (array!100805 (_ BitVec 32) List!35298) Bool)

(assert (=> b!1512451 (= res!1032418 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35295))))

(assert (= (and start!129036 res!1032419) b!1512448))

(assert (= (and b!1512448 res!1032423) b!1512443))

(assert (= (and b!1512443 res!1032426) b!1512444))

(assert (= (and b!1512444 res!1032416) b!1512440))

(assert (= (and b!1512440 res!1032415) b!1512451))

(assert (= (and b!1512451 res!1032418) b!1512450))

(assert (= (and b!1512450 res!1032425) b!1512439))

(assert (= (and b!1512439 res!1032417) b!1512445))

(assert (= (and b!1512445 res!1032424) b!1512446))

(assert (= (and b!1512446 res!1032414) b!1512442))

(assert (= (and b!1512442 res!1032422) b!1512441))

(assert (= (and b!1512441 res!1032421) b!1512449))

(assert (= (and b!1512449 (not res!1032420)) b!1512447))

(declare-fun m!1395267 () Bool)

(assert (=> b!1512449 m!1395267))

(declare-fun m!1395269 () Bool)

(assert (=> b!1512449 m!1395269))

(declare-fun m!1395271 () Bool)

(assert (=> b!1512449 m!1395271))

(declare-fun m!1395273 () Bool)

(assert (=> b!1512449 m!1395273))

(declare-fun m!1395275 () Bool)

(assert (=> start!129036 m!1395275))

(declare-fun m!1395277 () Bool)

(assert (=> start!129036 m!1395277))

(assert (=> b!1512439 m!1395267))

(assert (=> b!1512439 m!1395267))

(declare-fun m!1395279 () Bool)

(assert (=> b!1512439 m!1395279))

(assert (=> b!1512439 m!1395279))

(assert (=> b!1512439 m!1395267))

(declare-fun m!1395281 () Bool)

(assert (=> b!1512439 m!1395281))

(assert (=> b!1512444 m!1395267))

(assert (=> b!1512444 m!1395267))

(declare-fun m!1395283 () Bool)

(assert (=> b!1512444 m!1395283))

(declare-fun m!1395285 () Bool)

(assert (=> b!1512443 m!1395285))

(assert (=> b!1512443 m!1395285))

(declare-fun m!1395287 () Bool)

(assert (=> b!1512443 m!1395287))

(assert (=> b!1512442 m!1395267))

(declare-fun m!1395289 () Bool)

(assert (=> b!1512442 m!1395289))

(assert (=> b!1512442 m!1395269))

(assert (=> b!1512442 m!1395273))

(assert (=> b!1512442 m!1395271))

(declare-fun m!1395291 () Bool)

(assert (=> b!1512442 m!1395291))

(assert (=> b!1512446 m!1395269))

(assert (=> b!1512446 m!1395271))

(assert (=> b!1512446 m!1395271))

(declare-fun m!1395293 () Bool)

(assert (=> b!1512446 m!1395293))

(assert (=> b!1512446 m!1395293))

(assert (=> b!1512446 m!1395271))

(declare-fun m!1395295 () Bool)

(assert (=> b!1512446 m!1395295))

(declare-fun m!1395297 () Bool)

(assert (=> b!1512451 m!1395297))

(assert (=> b!1512445 m!1395267))

(assert (=> b!1512445 m!1395267))

(declare-fun m!1395299 () Bool)

(assert (=> b!1512445 m!1395299))

(declare-fun m!1395301 () Bool)

(assert (=> b!1512440 m!1395301))

(assert (=> b!1512441 m!1395267))

(assert (=> b!1512441 m!1395267))

(declare-fun m!1395303 () Bool)

(assert (=> b!1512441 m!1395303))

(assert (=> b!1512447 m!1395267))

(assert (=> b!1512447 m!1395267))

(declare-fun m!1395305 () Bool)

(assert (=> b!1512447 m!1395305))

(assert (=> b!1512447 m!1395267))

(declare-fun m!1395307 () Bool)

(assert (=> b!1512447 m!1395307))

(check-sat (not b!1512441) (not b!1512442) (not b!1512444) (not b!1512451) (not b!1512440) (not start!129036) (not b!1512446) (not b!1512445) (not b!1512447) (not b!1512439) (not b!1512443))
(check-sat)
