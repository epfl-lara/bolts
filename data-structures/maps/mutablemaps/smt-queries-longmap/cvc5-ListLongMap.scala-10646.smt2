; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125056 () Bool)

(assert start!125056)

(declare-fun b!1454020 () Bool)

(declare-fun e!818358 () Bool)

(declare-fun e!818354 () Bool)

(assert (=> b!1454020 (= e!818358 e!818354)))

(declare-fun res!985051 () Bool)

(assert (=> b!1454020 (=> (not res!985051) (not e!818354))))

(declare-datatypes ((array!98421 0))(
  ( (array!98422 (arr!47494 (Array (_ BitVec 32) (_ BitVec 64))) (size!48045 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98421)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11769 0))(
  ( (MissingZero!11769 (index!49467 (_ BitVec 32))) (Found!11769 (index!49468 (_ BitVec 32))) (Intermediate!11769 (undefined!12581 Bool) (index!49469 (_ BitVec 32)) (x!131109 (_ BitVec 32))) (Undefined!11769) (MissingVacant!11769 (index!49470 (_ BitVec 32))) )
))
(declare-fun lt!637407 () SeekEntryResult!11769)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98421 (_ BitVec 32)) SeekEntryResult!11769)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454020 (= res!985051 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47494 a!2862) j!93) mask!2687) (select (arr!47494 a!2862) j!93) a!2862 mask!2687) lt!637407))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1454020 (= lt!637407 (Intermediate!11769 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!637410 () (_ BitVec 64))

(declare-fun lt!637404 () array!98421)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1454021 () Bool)

(declare-fun lt!637411 () SeekEntryResult!11769)

(declare-fun e!818359 () Bool)

(assert (=> b!1454021 (= e!818359 (= lt!637411 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637410 lt!637404 mask!2687)))))

(declare-fun b!1454022 () Bool)

(declare-fun res!985042 () Bool)

(declare-fun e!818362 () Bool)

(assert (=> b!1454022 (=> (not res!985042) (not e!818362))))

(assert (=> b!1454022 (= res!985042 e!818359)))

(declare-fun c!134006 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1454022 (= c!134006 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1454023 () Bool)

(declare-fun res!985041 () Bool)

(declare-fun e!818355 () Bool)

(assert (=> b!1454023 (=> res!985041 e!818355)))

(declare-fun lt!637409 () (_ BitVec 32))

(assert (=> b!1454023 (= res!985041 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637409 (select (arr!47494 a!2862) j!93) a!2862 mask!2687) lt!637407)))))

(declare-fun b!1454024 () Bool)

(declare-fun e!818360 () Bool)

(assert (=> b!1454024 (= e!818362 (not e!818360))))

(declare-fun res!985038 () Bool)

(assert (=> b!1454024 (=> res!985038 e!818360)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1454024 (= res!985038 (or (and (= (select (arr!47494 a!2862) index!646) (select (store (arr!47494 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47494 a!2862) index!646) (select (arr!47494 a!2862) j!93))) (= (select (arr!47494 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!818357 () Bool)

(assert (=> b!1454024 e!818357))

(declare-fun res!985046 () Bool)

(assert (=> b!1454024 (=> (not res!985046) (not e!818357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98421 (_ BitVec 32)) Bool)

(assert (=> b!1454024 (= res!985046 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48982 0))(
  ( (Unit!48983) )
))
(declare-fun lt!637405 () Unit!48982)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98421 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48982)

(assert (=> b!1454024 (= lt!637405 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1454025 () Bool)

(declare-fun res!985050 () Bool)

(assert (=> b!1454025 (=> (not res!985050) (not e!818357))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98421 (_ BitVec 32)) SeekEntryResult!11769)

(assert (=> b!1454025 (= res!985050 (= (seekEntryOrOpen!0 (select (arr!47494 a!2862) j!93) a!2862 mask!2687) (Found!11769 j!93)))))

(declare-fun b!1454026 () Bool)

(declare-fun res!985053 () Bool)

(declare-fun e!818356 () Bool)

(assert (=> b!1454026 (=> (not res!985053) (not e!818356))))

(assert (=> b!1454026 (= res!985053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454027 () Bool)

(assert (=> b!1454027 (= e!818356 e!818358)))

(declare-fun res!985052 () Bool)

(assert (=> b!1454027 (=> (not res!985052) (not e!818358))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1454027 (= res!985052 (= (select (store (arr!47494 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1454027 (= lt!637404 (array!98422 (store (arr!47494 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48045 a!2862)))))

(declare-fun b!1454028 () Bool)

(assert (=> b!1454028 (= e!818354 e!818362)))

(declare-fun res!985039 () Bool)

(assert (=> b!1454028 (=> (not res!985039) (not e!818362))))

(assert (=> b!1454028 (= res!985039 (= lt!637411 (Intermediate!11769 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1454028 (= lt!637411 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637410 mask!2687) lt!637410 lt!637404 mask!2687))))

(assert (=> b!1454028 (= lt!637410 (select (store (arr!47494 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1454029 () Bool)

(declare-fun res!985047 () Bool)

(assert (=> b!1454029 (=> (not res!985047) (not e!818362))))

(assert (=> b!1454029 (= res!985047 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454030 () Bool)

(declare-fun res!985044 () Bool)

(assert (=> b!1454030 (=> (not res!985044) (not e!818356))))

(assert (=> b!1454030 (= res!985044 (and (= (size!48045 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48045 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48045 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454031 () Bool)

(declare-fun e!818363 () Bool)

(assert (=> b!1454031 (= e!818363 (not (= lt!637411 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637409 lt!637410 lt!637404 mask!2687))))))

(declare-fun b!1454033 () Bool)

(declare-fun res!985037 () Bool)

(assert (=> b!1454033 (=> (not res!985037) (not e!818354))))

(assert (=> b!1454033 (= res!985037 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47494 a!2862) j!93) a!2862 mask!2687) lt!637407))))

(declare-fun b!1454034 () Bool)

(assert (=> b!1454034 (= e!818355 true)))

(declare-fun lt!637406 () Bool)

(assert (=> b!1454034 (= lt!637406 e!818363)))

(declare-fun c!134005 () Bool)

(assert (=> b!1454034 (= c!134005 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1454035 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98421 (_ BitVec 32)) SeekEntryResult!11769)

(assert (=> b!1454035 (= e!818359 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637410 lt!637404 mask!2687) (seekEntryOrOpen!0 lt!637410 lt!637404 mask!2687)))))

(declare-fun b!1454036 () Bool)

(declare-fun res!985036 () Bool)

(assert (=> b!1454036 (=> (not res!985036) (not e!818356))))

(declare-datatypes ((List!34175 0))(
  ( (Nil!34172) (Cons!34171 (h!35521 (_ BitVec 64)) (t!48876 List!34175)) )
))
(declare-fun arrayNoDuplicates!0 (array!98421 (_ BitVec 32) List!34175) Bool)

(assert (=> b!1454036 (= res!985036 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34172))))

(declare-fun b!1454037 () Bool)

(assert (=> b!1454037 (= e!818357 (and (or (= (select (arr!47494 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47494 a!2862) intermediateBeforeIndex!19) (select (arr!47494 a!2862) j!93))) (let ((bdg!53035 (select (store (arr!47494 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47494 a!2862) index!646) bdg!53035) (= (select (arr!47494 a!2862) index!646) (select (arr!47494 a!2862) j!93))) (= (select (arr!47494 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53035 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454038 () Bool)

(declare-fun lt!637408 () SeekEntryResult!11769)

(assert (=> b!1454038 (= e!818363 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637409 intermediateAfterIndex!19 lt!637410 lt!637404 mask!2687) lt!637408)))))

(declare-fun b!1454039 () Bool)

(declare-fun res!985049 () Bool)

(assert (=> b!1454039 (=> (not res!985049) (not e!818356))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454039 (= res!985049 (validKeyInArray!0 (select (arr!47494 a!2862) j!93)))))

(declare-fun b!1454040 () Bool)

(declare-fun res!985048 () Bool)

(assert (=> b!1454040 (=> (not res!985048) (not e!818356))))

(assert (=> b!1454040 (= res!985048 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48045 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48045 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48045 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1454041 () Bool)

(assert (=> b!1454041 (= e!818360 e!818355)))

(declare-fun res!985043 () Bool)

(assert (=> b!1454041 (=> res!985043 e!818355)))

(assert (=> b!1454041 (= res!985043 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637409 #b00000000000000000000000000000000) (bvsge lt!637409 (size!48045 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454041 (= lt!637409 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1454041 (= lt!637408 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637410 lt!637404 mask!2687))))

(assert (=> b!1454041 (= lt!637408 (seekEntryOrOpen!0 lt!637410 lt!637404 mask!2687))))

(declare-fun b!1454032 () Bool)

(declare-fun res!985045 () Bool)

(assert (=> b!1454032 (=> (not res!985045) (not e!818356))))

(assert (=> b!1454032 (= res!985045 (validKeyInArray!0 (select (arr!47494 a!2862) i!1006)))))

(declare-fun res!985040 () Bool)

(assert (=> start!125056 (=> (not res!985040) (not e!818356))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125056 (= res!985040 (validMask!0 mask!2687))))

(assert (=> start!125056 e!818356))

(assert (=> start!125056 true))

(declare-fun array_inv!36439 (array!98421) Bool)

(assert (=> start!125056 (array_inv!36439 a!2862)))

(assert (= (and start!125056 res!985040) b!1454030))

(assert (= (and b!1454030 res!985044) b!1454032))

(assert (= (and b!1454032 res!985045) b!1454039))

(assert (= (and b!1454039 res!985049) b!1454026))

(assert (= (and b!1454026 res!985053) b!1454036))

(assert (= (and b!1454036 res!985036) b!1454040))

(assert (= (and b!1454040 res!985048) b!1454027))

(assert (= (and b!1454027 res!985052) b!1454020))

(assert (= (and b!1454020 res!985051) b!1454033))

(assert (= (and b!1454033 res!985037) b!1454028))

(assert (= (and b!1454028 res!985039) b!1454022))

(assert (= (and b!1454022 c!134006) b!1454021))

(assert (= (and b!1454022 (not c!134006)) b!1454035))

(assert (= (and b!1454022 res!985042) b!1454029))

(assert (= (and b!1454029 res!985047) b!1454024))

(assert (= (and b!1454024 res!985046) b!1454025))

(assert (= (and b!1454025 res!985050) b!1454037))

(assert (= (and b!1454024 (not res!985038)) b!1454041))

(assert (= (and b!1454041 (not res!985043)) b!1454023))

(assert (= (and b!1454023 (not res!985041)) b!1454034))

(assert (= (and b!1454034 c!134005) b!1454031))

(assert (= (and b!1454034 (not c!134005)) b!1454038))

(declare-fun m!1342461 () Bool)

(assert (=> b!1454035 m!1342461))

(declare-fun m!1342463 () Bool)

(assert (=> b!1454035 m!1342463))

(declare-fun m!1342465 () Bool)

(assert (=> b!1454039 m!1342465))

(assert (=> b!1454039 m!1342465))

(declare-fun m!1342467 () Bool)

(assert (=> b!1454039 m!1342467))

(declare-fun m!1342469 () Bool)

(assert (=> b!1454028 m!1342469))

(assert (=> b!1454028 m!1342469))

(declare-fun m!1342471 () Bool)

(assert (=> b!1454028 m!1342471))

(declare-fun m!1342473 () Bool)

(assert (=> b!1454028 m!1342473))

(declare-fun m!1342475 () Bool)

(assert (=> b!1454028 m!1342475))

(declare-fun m!1342477 () Bool)

(assert (=> start!125056 m!1342477))

(declare-fun m!1342479 () Bool)

(assert (=> start!125056 m!1342479))

(assert (=> b!1454020 m!1342465))

(assert (=> b!1454020 m!1342465))

(declare-fun m!1342481 () Bool)

(assert (=> b!1454020 m!1342481))

(assert (=> b!1454020 m!1342481))

(assert (=> b!1454020 m!1342465))

(declare-fun m!1342483 () Bool)

(assert (=> b!1454020 m!1342483))

(declare-fun m!1342485 () Bool)

(assert (=> b!1454041 m!1342485))

(assert (=> b!1454041 m!1342461))

(assert (=> b!1454041 m!1342463))

(assert (=> b!1454037 m!1342473))

(declare-fun m!1342487 () Bool)

(assert (=> b!1454037 m!1342487))

(declare-fun m!1342489 () Bool)

(assert (=> b!1454037 m!1342489))

(declare-fun m!1342491 () Bool)

(assert (=> b!1454037 m!1342491))

(assert (=> b!1454037 m!1342465))

(declare-fun m!1342493 () Bool)

(assert (=> b!1454038 m!1342493))

(declare-fun m!1342495 () Bool)

(assert (=> b!1454021 m!1342495))

(declare-fun m!1342497 () Bool)

(assert (=> b!1454031 m!1342497))

(declare-fun m!1342499 () Bool)

(assert (=> b!1454024 m!1342499))

(assert (=> b!1454024 m!1342473))

(assert (=> b!1454024 m!1342489))

(assert (=> b!1454024 m!1342491))

(declare-fun m!1342501 () Bool)

(assert (=> b!1454024 m!1342501))

(assert (=> b!1454024 m!1342465))

(assert (=> b!1454025 m!1342465))

(assert (=> b!1454025 m!1342465))

(declare-fun m!1342503 () Bool)

(assert (=> b!1454025 m!1342503))

(assert (=> b!1454033 m!1342465))

(assert (=> b!1454033 m!1342465))

(declare-fun m!1342505 () Bool)

(assert (=> b!1454033 m!1342505))

(declare-fun m!1342507 () Bool)

(assert (=> b!1454026 m!1342507))

(declare-fun m!1342509 () Bool)

(assert (=> b!1454032 m!1342509))

(assert (=> b!1454032 m!1342509))

(declare-fun m!1342511 () Bool)

(assert (=> b!1454032 m!1342511))

(declare-fun m!1342513 () Bool)

(assert (=> b!1454036 m!1342513))

(assert (=> b!1454023 m!1342465))

(assert (=> b!1454023 m!1342465))

(declare-fun m!1342515 () Bool)

(assert (=> b!1454023 m!1342515))

(assert (=> b!1454027 m!1342473))

(declare-fun m!1342517 () Bool)

(assert (=> b!1454027 m!1342517))

(push 1)

