; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126594 () Bool)

(assert start!126594)

(declare-fun b!1485092 () Bool)

(declare-fun res!1009915 () Bool)

(declare-fun e!832617 () Bool)

(assert (=> b!1485092 (=> (not res!1009915) (not e!832617))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1485092 (= res!1009915 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1485093 () Bool)

(declare-fun res!1009919 () Bool)

(declare-fun e!832612 () Bool)

(assert (=> b!1485093 (=> (not res!1009919) (not e!832612))))

(declare-datatypes ((SeekEntryResult!12271 0))(
  ( (MissingZero!12271 (index!51475 (_ BitVec 32))) (Found!12271 (index!51476 (_ BitVec 32))) (Intermediate!12271 (undefined!13083 Bool) (index!51477 (_ BitVec 32)) (x!133054 (_ BitVec 32))) (Undefined!12271) (MissingVacant!12271 (index!51478 (_ BitVec 32))) )
))
(declare-fun lt!647946 () SeekEntryResult!12271)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!99473 0))(
  ( (array!99474 (arr!48008 (Array (_ BitVec 32) (_ BitVec 64))) (size!48559 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99473)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99473 (_ BitVec 32)) SeekEntryResult!12271)

(assert (=> b!1485093 (= res!1009919 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48008 a!2862) j!93) a!2862 mask!2687) lt!647946))))

(declare-fun b!1485094 () Bool)

(declare-fun e!832615 () Bool)

(assert (=> b!1485094 (= e!832617 (not e!832615))))

(declare-fun res!1009908 () Bool)

(assert (=> b!1485094 (=> res!1009908 e!832615)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1485094 (= res!1009908 (or (and (= (select (arr!48008 a!2862) index!646) (select (store (arr!48008 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48008 a!2862) index!646) (select (arr!48008 a!2862) j!93))) (= (select (arr!48008 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!832618 () Bool)

(assert (=> b!1485094 e!832618))

(declare-fun res!1009924 () Bool)

(assert (=> b!1485094 (=> (not res!1009924) (not e!832618))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99473 (_ BitVec 32)) Bool)

(assert (=> b!1485094 (= res!1009924 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49830 0))(
  ( (Unit!49831) )
))
(declare-fun lt!647950 () Unit!49830)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99473 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49830)

(assert (=> b!1485094 (= lt!647950 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1485095 () Bool)

(assert (=> b!1485095 (= e!832615 (and (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110)))))

(declare-fun lt!647949 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485095 (= lt!647949 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1485096 () Bool)

(declare-fun e!832610 () Bool)

(assert (=> b!1485096 (= e!832610 e!832612)))

(declare-fun res!1009922 () Bool)

(assert (=> b!1485096 (=> (not res!1009922) (not e!832612))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485096 (= res!1009922 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48008 a!2862) j!93) mask!2687) (select (arr!48008 a!2862) j!93) a!2862 mask!2687) lt!647946))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1485096 (= lt!647946 (Intermediate!12271 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1485097 () Bool)

(declare-fun res!1009923 () Bool)

(declare-fun e!832616 () Bool)

(assert (=> b!1485097 (=> (not res!1009923) (not e!832616))))

(assert (=> b!1485097 (= res!1009923 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48559 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48559 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48559 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1485098 () Bool)

(declare-fun res!1009921 () Bool)

(assert (=> b!1485098 (=> (not res!1009921) (not e!832616))))

(declare-datatypes ((List!34689 0))(
  ( (Nil!34686) (Cons!34685 (h!36059 (_ BitVec 64)) (t!49390 List!34689)) )
))
(declare-fun arrayNoDuplicates!0 (array!99473 (_ BitVec 32) List!34689) Bool)

(assert (=> b!1485098 (= res!1009921 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34686))))

(declare-fun b!1485099 () Bool)

(declare-fun res!1009913 () Bool)

(assert (=> b!1485099 (=> (not res!1009913) (not e!832616))))

(assert (=> b!1485099 (= res!1009913 (and (= (size!48559 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48559 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48559 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1485100 () Bool)

(declare-fun res!1009925 () Bool)

(assert (=> b!1485100 (=> (not res!1009925) (not e!832616))))

(assert (=> b!1485100 (= res!1009925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1485101 () Bool)

(assert (=> b!1485101 (= e!832616 e!832610)))

(declare-fun res!1009911 () Bool)

(assert (=> b!1485101 (=> (not res!1009911) (not e!832610))))

(assert (=> b!1485101 (= res!1009911 (= (select (store (arr!48008 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647945 () array!99473)

(assert (=> b!1485101 (= lt!647945 (array!99474 (store (arr!48008 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48559 a!2862)))))

(declare-fun b!1485102 () Bool)

(declare-fun res!1009914 () Bool)

(assert (=> b!1485102 (=> (not res!1009914) (not e!832618))))

(assert (=> b!1485102 (= res!1009914 (or (= (select (arr!48008 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48008 a!2862) intermediateBeforeIndex!19) (select (arr!48008 a!2862) j!93))))))

(declare-fun b!1485103 () Bool)

(declare-fun e!832614 () Bool)

(declare-fun e!832611 () Bool)

(assert (=> b!1485103 (= e!832614 e!832611)))

(declare-fun res!1009920 () Bool)

(assert (=> b!1485103 (=> (not res!1009920) (not e!832611))))

(declare-fun lt!647947 () (_ BitVec 64))

(assert (=> b!1485103 (= res!1009920 (and (= index!646 intermediateAfterIndex!19) (= lt!647947 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485104 () Bool)

(assert (=> b!1485104 (= e!832618 e!832614)))

(declare-fun res!1009918 () Bool)

(assert (=> b!1485104 (=> res!1009918 e!832614)))

(assert (=> b!1485104 (= res!1009918 (or (and (= (select (arr!48008 a!2862) index!646) lt!647947) (= (select (arr!48008 a!2862) index!646) (select (arr!48008 a!2862) j!93))) (= (select (arr!48008 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485104 (= lt!647947 (select (store (arr!48008 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun lt!647948 () (_ BitVec 64))

(declare-fun e!832613 () Bool)

(declare-fun b!1485105 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99473 (_ BitVec 32)) SeekEntryResult!12271)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99473 (_ BitVec 32)) SeekEntryResult!12271)

(assert (=> b!1485105 (= e!832613 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647948 lt!647945 mask!2687) (seekEntryOrOpen!0 lt!647948 lt!647945 mask!2687)))))

(declare-fun b!1485107 () Bool)

(declare-fun res!1009910 () Bool)

(assert (=> b!1485107 (=> (not res!1009910) (not e!832616))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1485107 (= res!1009910 (validKeyInArray!0 (select (arr!48008 a!2862) i!1006)))))

(declare-fun b!1485108 () Bool)

(assert (=> b!1485108 (= e!832612 e!832617)))

(declare-fun res!1009917 () Bool)

(assert (=> b!1485108 (=> (not res!1009917) (not e!832617))))

(declare-fun lt!647944 () SeekEntryResult!12271)

(assert (=> b!1485108 (= res!1009917 (= lt!647944 (Intermediate!12271 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1485108 (= lt!647944 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647948 mask!2687) lt!647948 lt!647945 mask!2687))))

(assert (=> b!1485108 (= lt!647948 (select (store (arr!48008 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1485109 () Bool)

(declare-fun res!1009909 () Bool)

(assert (=> b!1485109 (=> (not res!1009909) (not e!832617))))

(assert (=> b!1485109 (= res!1009909 e!832613)))

(declare-fun c!137117 () Bool)

(assert (=> b!1485109 (= c!137117 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1485110 () Bool)

(assert (=> b!1485110 (= e!832613 (= lt!647944 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647948 lt!647945 mask!2687)))))

(declare-fun b!1485111 () Bool)

(declare-fun res!1009926 () Bool)

(assert (=> b!1485111 (=> (not res!1009926) (not e!832618))))

(assert (=> b!1485111 (= res!1009926 (= (seekEntryOrOpen!0 (select (arr!48008 a!2862) j!93) a!2862 mask!2687) (Found!12271 j!93)))))

(declare-fun b!1485112 () Bool)

(assert (=> b!1485112 (= e!832611 (= (seekEntryOrOpen!0 lt!647948 lt!647945 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647948 lt!647945 mask!2687)))))

(declare-fun b!1485106 () Bool)

(declare-fun res!1009912 () Bool)

(assert (=> b!1485106 (=> (not res!1009912) (not e!832616))))

(assert (=> b!1485106 (= res!1009912 (validKeyInArray!0 (select (arr!48008 a!2862) j!93)))))

(declare-fun res!1009916 () Bool)

(assert (=> start!126594 (=> (not res!1009916) (not e!832616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126594 (= res!1009916 (validMask!0 mask!2687))))

(assert (=> start!126594 e!832616))

(assert (=> start!126594 true))

(declare-fun array_inv!36953 (array!99473) Bool)

(assert (=> start!126594 (array_inv!36953 a!2862)))

(assert (= (and start!126594 res!1009916) b!1485099))

(assert (= (and b!1485099 res!1009913) b!1485107))

(assert (= (and b!1485107 res!1009910) b!1485106))

(assert (= (and b!1485106 res!1009912) b!1485100))

(assert (= (and b!1485100 res!1009925) b!1485098))

(assert (= (and b!1485098 res!1009921) b!1485097))

(assert (= (and b!1485097 res!1009923) b!1485101))

(assert (= (and b!1485101 res!1009911) b!1485096))

(assert (= (and b!1485096 res!1009922) b!1485093))

(assert (= (and b!1485093 res!1009919) b!1485108))

(assert (= (and b!1485108 res!1009917) b!1485109))

(assert (= (and b!1485109 c!137117) b!1485110))

(assert (= (and b!1485109 (not c!137117)) b!1485105))

(assert (= (and b!1485109 res!1009909) b!1485092))

(assert (= (and b!1485092 res!1009915) b!1485094))

(assert (= (and b!1485094 res!1009924) b!1485111))

(assert (= (and b!1485111 res!1009926) b!1485102))

(assert (= (and b!1485102 res!1009914) b!1485104))

(assert (= (and b!1485104 (not res!1009918)) b!1485103))

(assert (= (and b!1485103 res!1009920) b!1485112))

(assert (= (and b!1485094 (not res!1009908)) b!1485095))

(declare-fun m!1370329 () Bool)

(assert (=> b!1485108 m!1370329))

(assert (=> b!1485108 m!1370329))

(declare-fun m!1370331 () Bool)

(assert (=> b!1485108 m!1370331))

(declare-fun m!1370333 () Bool)

(assert (=> b!1485108 m!1370333))

(declare-fun m!1370335 () Bool)

(assert (=> b!1485108 m!1370335))

(declare-fun m!1370337 () Bool)

(assert (=> b!1485096 m!1370337))

(assert (=> b!1485096 m!1370337))

(declare-fun m!1370339 () Bool)

(assert (=> b!1485096 m!1370339))

(assert (=> b!1485096 m!1370339))

(assert (=> b!1485096 m!1370337))

(declare-fun m!1370341 () Bool)

(assert (=> b!1485096 m!1370341))

(declare-fun m!1370343 () Bool)

(assert (=> b!1485107 m!1370343))

(assert (=> b!1485107 m!1370343))

(declare-fun m!1370345 () Bool)

(assert (=> b!1485107 m!1370345))

(assert (=> b!1485093 m!1370337))

(assert (=> b!1485093 m!1370337))

(declare-fun m!1370347 () Bool)

(assert (=> b!1485093 m!1370347))

(declare-fun m!1370349 () Bool)

(assert (=> b!1485095 m!1370349))

(declare-fun m!1370351 () Bool)

(assert (=> b!1485105 m!1370351))

(declare-fun m!1370353 () Bool)

(assert (=> b!1485105 m!1370353))

(assert (=> b!1485112 m!1370353))

(assert (=> b!1485112 m!1370351))

(declare-fun m!1370355 () Bool)

(assert (=> b!1485104 m!1370355))

(assert (=> b!1485104 m!1370337))

(assert (=> b!1485104 m!1370333))

(declare-fun m!1370357 () Bool)

(assert (=> b!1485104 m!1370357))

(assert (=> b!1485111 m!1370337))

(assert (=> b!1485111 m!1370337))

(declare-fun m!1370359 () Bool)

(assert (=> b!1485111 m!1370359))

(declare-fun m!1370361 () Bool)

(assert (=> b!1485102 m!1370361))

(assert (=> b!1485102 m!1370337))

(declare-fun m!1370363 () Bool)

(assert (=> b!1485098 m!1370363))

(assert (=> b!1485106 m!1370337))

(assert (=> b!1485106 m!1370337))

(declare-fun m!1370365 () Bool)

(assert (=> b!1485106 m!1370365))

(declare-fun m!1370367 () Bool)

(assert (=> start!126594 m!1370367))

(declare-fun m!1370369 () Bool)

(assert (=> start!126594 m!1370369))

(assert (=> b!1485101 m!1370333))

(declare-fun m!1370371 () Bool)

(assert (=> b!1485101 m!1370371))

(declare-fun m!1370373 () Bool)

(assert (=> b!1485110 m!1370373))

(declare-fun m!1370375 () Bool)

(assert (=> b!1485100 m!1370375))

(declare-fun m!1370377 () Bool)

(assert (=> b!1485094 m!1370377))

(assert (=> b!1485094 m!1370333))

(assert (=> b!1485094 m!1370357))

(assert (=> b!1485094 m!1370355))

(declare-fun m!1370379 () Bool)

(assert (=> b!1485094 m!1370379))

(assert (=> b!1485094 m!1370337))

(check-sat (not b!1485110) (not start!126594) (not b!1485098) (not b!1485112) (not b!1485093) (not b!1485108) (not b!1485111) (not b!1485105) (not b!1485106) (not b!1485100) (not b!1485095) (not b!1485094) (not b!1485107) (not b!1485096))
(check-sat)
