; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126908 () Bool)

(assert start!126908)

(declare-fun b!1490104 () Bool)

(declare-fun res!1013527 () Bool)

(declare-fun e!835060 () Bool)

(assert (=> b!1490104 (=> (not res!1013527) (not e!835060))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12329 0))(
  ( (MissingZero!12329 (index!51707 (_ BitVec 32))) (Found!12329 (index!51708 (_ BitVec 32))) (Intermediate!12329 (undefined!13141 Bool) (index!51709 (_ BitVec 32)) (x!133300 (_ BitVec 32))) (Undefined!12329) (MissingVacant!12329 (index!51710 (_ BitVec 32))) )
))
(declare-fun lt!649803 () SeekEntryResult!12329)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99598 0))(
  ( (array!99599 (arr!48066 (Array (_ BitVec 32) (_ BitVec 64))) (size!48617 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99598)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99598 (_ BitVec 32)) SeekEntryResult!12329)

(assert (=> b!1490104 (= res!1013527 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48066 a!2862) j!93) a!2862 mask!2687) lt!649803))))

(declare-fun b!1490105 () Bool)

(declare-fun res!1013533 () Bool)

(declare-fun e!835054 () Bool)

(assert (=> b!1490105 (=> res!1013533 e!835054)))

(declare-fun e!835055 () Bool)

(assert (=> b!1490105 (= res!1013533 e!835055)))

(declare-fun c!137821 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1490105 (= c!137821 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun lt!649800 () (_ BitVec 32))

(declare-fun b!1490106 () Bool)

(declare-fun lt!649796 () SeekEntryResult!12329)

(declare-fun lt!649804 () (_ BitVec 64))

(declare-fun lt!649799 () array!99598)

(assert (=> b!1490106 (= e!835055 (not (= lt!649796 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649800 lt!649804 lt!649799 mask!2687))))))

(declare-fun b!1490107 () Bool)

(declare-fun res!1013525 () Bool)

(declare-fun e!835056 () Bool)

(assert (=> b!1490107 (=> (not res!1013525) (not e!835056))))

(declare-datatypes ((List!34747 0))(
  ( (Nil!34744) (Cons!34743 (h!36126 (_ BitVec 64)) (t!49448 List!34747)) )
))
(declare-fun arrayNoDuplicates!0 (array!99598 (_ BitVec 32) List!34747) Bool)

(assert (=> b!1490107 (= res!1013525 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34744))))

(declare-fun b!1490108 () Bool)

(declare-fun res!1013528 () Bool)

(assert (=> b!1490108 (=> (not res!1013528) (not e!835056))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1490108 (= res!1013528 (and (= (size!48617 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48617 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48617 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490109 () Bool)

(declare-fun res!1013534 () Bool)

(assert (=> b!1490109 (=> (not res!1013534) (not e!835056))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490109 (= res!1013534 (validKeyInArray!0 (select (arr!48066 a!2862) j!93)))))

(declare-fun b!1490110 () Bool)

(declare-fun res!1013521 () Bool)

(assert (=> b!1490110 (=> (not res!1013521) (not e!835056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99598 (_ BitVec 32)) Bool)

(assert (=> b!1490110 (= res!1013521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490111 () Bool)

(declare-fun e!835061 () Bool)

(declare-fun e!835053 () Bool)

(assert (=> b!1490111 (= e!835061 (not e!835053))))

(declare-fun res!1013531 () Bool)

(assert (=> b!1490111 (=> res!1013531 e!835053)))

(assert (=> b!1490111 (= res!1013531 (or (and (= (select (arr!48066 a!2862) index!646) (select (store (arr!48066 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48066 a!2862) index!646) (select (arr!48066 a!2862) j!93))) (= (select (arr!48066 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!649798 () SeekEntryResult!12329)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1490111 (and (= lt!649798 (Found!12329 j!93)) (or (= (select (arr!48066 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48066 a!2862) intermediateBeforeIndex!19) (select (arr!48066 a!2862) j!93))) (let ((bdg!54774 (select (store (arr!48066 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48066 a!2862) index!646) bdg!54774) (= (select (arr!48066 a!2862) index!646) (select (arr!48066 a!2862) j!93))) (= (select (arr!48066 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54774 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99598 (_ BitVec 32)) SeekEntryResult!12329)

(assert (=> b!1490111 (= lt!649798 (seekEntryOrOpen!0 (select (arr!48066 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1490111 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49946 0))(
  ( (Unit!49947) )
))
(declare-fun lt!649801 () Unit!49946)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99598 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49946)

(assert (=> b!1490111 (= lt!649801 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490112 () Bool)

(assert (=> b!1490112 (= e!835060 e!835061)))

(declare-fun res!1013535 () Bool)

(assert (=> b!1490112 (=> (not res!1013535) (not e!835061))))

(assert (=> b!1490112 (= res!1013535 (= lt!649796 (Intermediate!12329 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490112 (= lt!649796 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649804 mask!2687) lt!649804 lt!649799 mask!2687))))

(assert (=> b!1490112 (= lt!649804 (select (store (arr!48066 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!835058 () Bool)

(declare-fun b!1490113 () Bool)

(assert (=> b!1490113 (= e!835058 (= lt!649796 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649804 lt!649799 mask!2687)))))

(declare-fun b!1490114 () Bool)

(declare-fun e!835057 () Bool)

(assert (=> b!1490114 (= e!835057 e!835060)))

(declare-fun res!1013524 () Bool)

(assert (=> b!1490114 (=> (not res!1013524) (not e!835060))))

(assert (=> b!1490114 (= res!1013524 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48066 a!2862) j!93) mask!2687) (select (arr!48066 a!2862) j!93) a!2862 mask!2687) lt!649803))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1490114 (= lt!649803 (Intermediate!12329 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490115 () Bool)

(declare-fun res!1013529 () Bool)

(assert (=> b!1490115 (=> res!1013529 e!835054)))

(assert (=> b!1490115 (= res!1013529 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1490116 () Bool)

(declare-fun res!1013523 () Bool)

(assert (=> b!1490116 (=> (not res!1013523) (not e!835056))))

(assert (=> b!1490116 (= res!1013523 (validKeyInArray!0 (select (arr!48066 a!2862) i!1006)))))

(declare-fun b!1490117 () Bool)

(declare-fun res!1013530 () Bool)

(assert (=> b!1490117 (=> res!1013530 e!835054)))

(assert (=> b!1490117 (= res!1013530 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649800 (select (arr!48066 a!2862) j!93) a!2862 mask!2687) lt!649803)))))

(declare-fun b!1490118 () Bool)

(declare-fun res!1013538 () Bool)

(assert (=> b!1490118 (=> (not res!1013538) (not e!835061))))

(assert (=> b!1490118 (= res!1013538 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1490119 () Bool)

(declare-fun res!1013532 () Bool)

(assert (=> b!1490119 (=> (not res!1013532) (not e!835061))))

(assert (=> b!1490119 (= res!1013532 e!835058)))

(declare-fun c!137822 () Bool)

(assert (=> b!1490119 (= c!137822 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490121 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99598 (_ BitVec 32)) SeekEntryResult!12329)

(assert (=> b!1490121 (= e!835058 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649804 lt!649799 mask!2687) (seekEntryOrOpen!0 lt!649804 lt!649799 mask!2687)))))

(declare-fun b!1490122 () Bool)

(assert (=> b!1490122 (= e!835054 true)))

(declare-fun lt!649802 () SeekEntryResult!12329)

(assert (=> b!1490122 (= lt!649798 lt!649802)))

(declare-fun lt!649797 () Unit!49946)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99598 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49946)

(assert (=> b!1490122 (= lt!649797 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649800 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1490123 () Bool)

(assert (=> b!1490123 (= e!835053 e!835054)))

(declare-fun res!1013537 () Bool)

(assert (=> b!1490123 (=> res!1013537 e!835054)))

(assert (=> b!1490123 (= res!1013537 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649800 #b00000000000000000000000000000000) (bvsge lt!649800 (size!48617 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490123 (= lt!649800 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1490123 (= lt!649802 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649804 lt!649799 mask!2687))))

(assert (=> b!1490123 (= lt!649802 (seekEntryOrOpen!0 lt!649804 lt!649799 mask!2687))))

(declare-fun b!1490124 () Bool)

(declare-fun res!1013526 () Bool)

(assert (=> b!1490124 (=> (not res!1013526) (not e!835056))))

(assert (=> b!1490124 (= res!1013526 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48617 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48617 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48617 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490125 () Bool)

(assert (=> b!1490125 (= e!835055 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649800 intermediateAfterIndex!19 lt!649804 lt!649799 mask!2687) lt!649802)))))

(declare-fun b!1490120 () Bool)

(assert (=> b!1490120 (= e!835056 e!835057)))

(declare-fun res!1013522 () Bool)

(assert (=> b!1490120 (=> (not res!1013522) (not e!835057))))

(assert (=> b!1490120 (= res!1013522 (= (select (store (arr!48066 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490120 (= lt!649799 (array!99599 (store (arr!48066 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48617 a!2862)))))

(declare-fun res!1013536 () Bool)

(assert (=> start!126908 (=> (not res!1013536) (not e!835056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126908 (= res!1013536 (validMask!0 mask!2687))))

(assert (=> start!126908 e!835056))

(assert (=> start!126908 true))

(declare-fun array_inv!37011 (array!99598) Bool)

(assert (=> start!126908 (array_inv!37011 a!2862)))

(assert (= (and start!126908 res!1013536) b!1490108))

(assert (= (and b!1490108 res!1013528) b!1490116))

(assert (= (and b!1490116 res!1013523) b!1490109))

(assert (= (and b!1490109 res!1013534) b!1490110))

(assert (= (and b!1490110 res!1013521) b!1490107))

(assert (= (and b!1490107 res!1013525) b!1490124))

(assert (= (and b!1490124 res!1013526) b!1490120))

(assert (= (and b!1490120 res!1013522) b!1490114))

(assert (= (and b!1490114 res!1013524) b!1490104))

(assert (= (and b!1490104 res!1013527) b!1490112))

(assert (= (and b!1490112 res!1013535) b!1490119))

(assert (= (and b!1490119 c!137822) b!1490113))

(assert (= (and b!1490119 (not c!137822)) b!1490121))

(assert (= (and b!1490119 res!1013532) b!1490118))

(assert (= (and b!1490118 res!1013538) b!1490111))

(assert (= (and b!1490111 (not res!1013531)) b!1490123))

(assert (= (and b!1490123 (not res!1013537)) b!1490117))

(assert (= (and b!1490117 (not res!1013530)) b!1490105))

(assert (= (and b!1490105 c!137821) b!1490106))

(assert (= (and b!1490105 (not c!137821)) b!1490125))

(assert (= (and b!1490105 (not res!1013533)) b!1490115))

(assert (= (and b!1490115 (not res!1013529)) b!1490122))

(declare-fun m!1374327 () Bool)

(assert (=> b!1490109 m!1374327))

(assert (=> b!1490109 m!1374327))

(declare-fun m!1374329 () Bool)

(assert (=> b!1490109 m!1374329))

(declare-fun m!1374331 () Bool)

(assert (=> b!1490110 m!1374331))

(declare-fun m!1374333 () Bool)

(assert (=> b!1490116 m!1374333))

(assert (=> b!1490116 m!1374333))

(declare-fun m!1374335 () Bool)

(assert (=> b!1490116 m!1374335))

(declare-fun m!1374337 () Bool)

(assert (=> b!1490111 m!1374337))

(declare-fun m!1374339 () Bool)

(assert (=> b!1490111 m!1374339))

(declare-fun m!1374341 () Bool)

(assert (=> b!1490111 m!1374341))

(declare-fun m!1374343 () Bool)

(assert (=> b!1490111 m!1374343))

(declare-fun m!1374345 () Bool)

(assert (=> b!1490111 m!1374345))

(assert (=> b!1490111 m!1374327))

(declare-fun m!1374347 () Bool)

(assert (=> b!1490111 m!1374347))

(declare-fun m!1374349 () Bool)

(assert (=> b!1490111 m!1374349))

(assert (=> b!1490111 m!1374327))

(assert (=> b!1490114 m!1374327))

(assert (=> b!1490114 m!1374327))

(declare-fun m!1374351 () Bool)

(assert (=> b!1490114 m!1374351))

(assert (=> b!1490114 m!1374351))

(assert (=> b!1490114 m!1374327))

(declare-fun m!1374353 () Bool)

(assert (=> b!1490114 m!1374353))

(declare-fun m!1374355 () Bool)

(assert (=> start!126908 m!1374355))

(declare-fun m!1374357 () Bool)

(assert (=> start!126908 m!1374357))

(assert (=> b!1490117 m!1374327))

(assert (=> b!1490117 m!1374327))

(declare-fun m!1374359 () Bool)

(assert (=> b!1490117 m!1374359))

(declare-fun m!1374361 () Bool)

(assert (=> b!1490107 m!1374361))

(assert (=> b!1490104 m!1374327))

(assert (=> b!1490104 m!1374327))

(declare-fun m!1374363 () Bool)

(assert (=> b!1490104 m!1374363))

(declare-fun m!1374365 () Bool)

(assert (=> b!1490122 m!1374365))

(declare-fun m!1374367 () Bool)

(assert (=> b!1490112 m!1374367))

(assert (=> b!1490112 m!1374367))

(declare-fun m!1374369 () Bool)

(assert (=> b!1490112 m!1374369))

(assert (=> b!1490112 m!1374339))

(declare-fun m!1374371 () Bool)

(assert (=> b!1490112 m!1374371))

(declare-fun m!1374373 () Bool)

(assert (=> b!1490123 m!1374373))

(declare-fun m!1374375 () Bool)

(assert (=> b!1490123 m!1374375))

(declare-fun m!1374377 () Bool)

(assert (=> b!1490123 m!1374377))

(declare-fun m!1374379 () Bool)

(assert (=> b!1490106 m!1374379))

(assert (=> b!1490120 m!1374339))

(declare-fun m!1374381 () Bool)

(assert (=> b!1490120 m!1374381))

(assert (=> b!1490121 m!1374375))

(assert (=> b!1490121 m!1374377))

(declare-fun m!1374383 () Bool)

(assert (=> b!1490125 m!1374383))

(declare-fun m!1374385 () Bool)

(assert (=> b!1490113 m!1374385))

(push 1)

(assert (not b!1490106))

(assert (not b!1490109))

(assert (not b!1490125))

(assert (not b!1490104))

(assert (not b!1490114))

(assert (not b!1490107))

(assert (not b!1490110))

(assert (not b!1490123))

(assert (not b!1490111))

(assert (not b!1490122))

(assert (not b!1490121))

(assert (not b!1490113))

(assert (not start!126908))

(assert (not b!1490116))

(assert (not b!1490112))

(assert (not b!1490117))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

