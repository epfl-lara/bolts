; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127048 () Bool)

(assert start!127048)

(declare-fun e!836171 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1492487 () Bool)

(declare-datatypes ((array!99675 0))(
  ( (array!99676 (arr!48103 (Array (_ BitVec 32) (_ BitVec 64))) (size!48654 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99675)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1492487 (= e!836171 (or (= (select (arr!48103 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48103 a!2862) intermediateBeforeIndex!19) (select (arr!48103 a!2862) j!93))))))

(declare-fun b!1492488 () Bool)

(declare-fun res!1015411 () Bool)

(declare-fun e!836168 () Bool)

(assert (=> b!1492488 (=> (not res!1015411) (not e!836168))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99675 (_ BitVec 32)) Bool)

(assert (=> b!1492488 (= res!1015411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1492489 () Bool)

(declare-fun res!1015418 () Bool)

(assert (=> b!1492489 (=> (not res!1015418) (not e!836171))))

(declare-datatypes ((SeekEntryResult!12366 0))(
  ( (MissingZero!12366 (index!51855 (_ BitVec 32))) (Found!12366 (index!51856 (_ BitVec 32))) (Intermediate!12366 (undefined!13178 Bool) (index!51857 (_ BitVec 32)) (x!133453 (_ BitVec 32))) (Undefined!12366) (MissingVacant!12366 (index!51858 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99675 (_ BitVec 32)) SeekEntryResult!12366)

(assert (=> b!1492489 (= res!1015418 (= (seekEntryOrOpen!0 (select (arr!48103 a!2862) j!93) a!2862 mask!2687) (Found!12366 j!93)))))

(declare-fun b!1492490 () Bool)

(declare-fun res!1015409 () Bool)

(declare-fun e!836169 () Bool)

(assert (=> b!1492490 (=> (not res!1015409) (not e!836169))))

(declare-fun lt!650638 () SeekEntryResult!12366)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99675 (_ BitVec 32)) SeekEntryResult!12366)

(assert (=> b!1492490 (= res!1015409 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48103 a!2862) j!93) a!2862 mask!2687) lt!650638))))

(declare-fun b!1492491 () Bool)

(declare-fun res!1015407 () Bool)

(declare-fun e!836170 () Bool)

(assert (=> b!1492491 (=> (not res!1015407) (not e!836170))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1492491 (= res!1015407 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1492492 () Bool)

(declare-fun e!836174 () Bool)

(assert (=> b!1492492 (= e!836170 (not e!836174))))

(declare-fun res!1015422 () Bool)

(assert (=> b!1492492 (=> res!1015422 e!836174)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1492492 (= res!1015422 (or (and (= (select (arr!48103 a!2862) index!646) (select (store (arr!48103 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48103 a!2862) index!646) (select (arr!48103 a!2862) j!93))) (= (select (arr!48103 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1492492 e!836171))

(declare-fun res!1015416 () Bool)

(assert (=> b!1492492 (=> (not res!1015416) (not e!836171))))

(assert (=> b!1492492 (= res!1015416 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50020 0))(
  ( (Unit!50021) )
))
(declare-fun lt!650633 () Unit!50020)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99675 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50020)

(assert (=> b!1492492 (= lt!650633 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!1015421 () Bool)

(assert (=> start!127048 (=> (not res!1015421) (not e!836168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127048 (= res!1015421 (validMask!0 mask!2687))))

(assert (=> start!127048 e!836168))

(assert (=> start!127048 true))

(declare-fun array_inv!37048 (array!99675) Bool)

(assert (=> start!127048 (array_inv!37048 a!2862)))

(declare-fun b!1492493 () Bool)

(assert (=> b!1492493 (= e!836169 e!836170)))

(declare-fun res!1015417 () Bool)

(assert (=> b!1492493 (=> (not res!1015417) (not e!836170))))

(declare-fun lt!650635 () SeekEntryResult!12366)

(assert (=> b!1492493 (= res!1015417 (= lt!650635 (Intermediate!12366 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!650636 () array!99675)

(declare-fun lt!650637 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492493 (= lt!650635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650637 mask!2687) lt!650637 lt!650636 mask!2687))))

(assert (=> b!1492493 (= lt!650637 (select (store (arr!48103 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!836172 () Bool)

(declare-fun b!1492494 () Bool)

(assert (=> b!1492494 (= e!836172 (= lt!650635 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650637 lt!650636 mask!2687)))))

(declare-fun b!1492495 () Bool)

(declare-fun res!1015410 () Bool)

(assert (=> b!1492495 (=> (not res!1015410) (not e!836168))))

(declare-datatypes ((List!34784 0))(
  ( (Nil!34781) (Cons!34780 (h!36166 (_ BitVec 64)) (t!49485 List!34784)) )
))
(declare-fun arrayNoDuplicates!0 (array!99675 (_ BitVec 32) List!34784) Bool)

(assert (=> b!1492495 (= res!1015410 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34781))))

(declare-fun b!1492496 () Bool)

(assert (=> b!1492496 (= e!836174 true)))

(declare-fun lt!650634 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492496 (= lt!650634 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1492497 () Bool)

(declare-fun e!836173 () Bool)

(assert (=> b!1492497 (= e!836168 e!836173)))

(declare-fun res!1015420 () Bool)

(assert (=> b!1492497 (=> (not res!1015420) (not e!836173))))

(assert (=> b!1492497 (= res!1015420 (= (select (store (arr!48103 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492497 (= lt!650636 (array!99676 (store (arr!48103 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48654 a!2862)))))

(declare-fun b!1492498 () Bool)

(declare-fun res!1015415 () Bool)

(assert (=> b!1492498 (=> (not res!1015415) (not e!836168))))

(assert (=> b!1492498 (= res!1015415 (and (= (size!48654 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48654 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48654 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1492499 () Bool)

(assert (=> b!1492499 (= e!836173 e!836169)))

(declare-fun res!1015414 () Bool)

(assert (=> b!1492499 (=> (not res!1015414) (not e!836169))))

(assert (=> b!1492499 (= res!1015414 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48103 a!2862) j!93) mask!2687) (select (arr!48103 a!2862) j!93) a!2862 mask!2687) lt!650638))))

(assert (=> b!1492499 (= lt!650638 (Intermediate!12366 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1492500 () Bool)

(declare-fun res!1015412 () Bool)

(assert (=> b!1492500 (=> (not res!1015412) (not e!836170))))

(assert (=> b!1492500 (= res!1015412 e!836172)))

(declare-fun c!138071 () Bool)

(assert (=> b!1492500 (= c!138071 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1492501 () Bool)

(declare-fun res!1015413 () Bool)

(assert (=> b!1492501 (=> (not res!1015413) (not e!836168))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1492501 (= res!1015413 (validKeyInArray!0 (select (arr!48103 a!2862) i!1006)))))

(declare-fun b!1492502 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99675 (_ BitVec 32)) SeekEntryResult!12366)

(assert (=> b!1492502 (= e!836172 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650637 lt!650636 mask!2687) (seekEntryOrOpen!0 lt!650637 lt!650636 mask!2687)))))

(declare-fun b!1492503 () Bool)

(declare-fun res!1015408 () Bool)

(assert (=> b!1492503 (=> (not res!1015408) (not e!836168))))

(assert (=> b!1492503 (= res!1015408 (validKeyInArray!0 (select (arr!48103 a!2862) j!93)))))

(declare-fun b!1492504 () Bool)

(declare-fun res!1015419 () Bool)

(assert (=> b!1492504 (=> (not res!1015419) (not e!836168))))

(assert (=> b!1492504 (= res!1015419 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48654 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48654 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48654 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!127048 res!1015421) b!1492498))

(assert (= (and b!1492498 res!1015415) b!1492501))

(assert (= (and b!1492501 res!1015413) b!1492503))

(assert (= (and b!1492503 res!1015408) b!1492488))

(assert (= (and b!1492488 res!1015411) b!1492495))

(assert (= (and b!1492495 res!1015410) b!1492504))

(assert (= (and b!1492504 res!1015419) b!1492497))

(assert (= (and b!1492497 res!1015420) b!1492499))

(assert (= (and b!1492499 res!1015414) b!1492490))

(assert (= (and b!1492490 res!1015409) b!1492493))

(assert (= (and b!1492493 res!1015417) b!1492500))

(assert (= (and b!1492500 c!138071) b!1492494))

(assert (= (and b!1492500 (not c!138071)) b!1492502))

(assert (= (and b!1492500 res!1015412) b!1492491))

(assert (= (and b!1492491 res!1015407) b!1492492))

(assert (= (and b!1492492 res!1015416) b!1492489))

(assert (= (and b!1492489 res!1015418) b!1492487))

(assert (= (and b!1492492 (not res!1015422)) b!1492496))

(declare-fun m!1376493 () Bool)

(assert (=> b!1492503 m!1376493))

(assert (=> b!1492503 m!1376493))

(declare-fun m!1376495 () Bool)

(assert (=> b!1492503 m!1376495))

(declare-fun m!1376497 () Bool)

(assert (=> b!1492496 m!1376497))

(declare-fun m!1376499 () Bool)

(assert (=> b!1492492 m!1376499))

(declare-fun m!1376501 () Bool)

(assert (=> b!1492492 m!1376501))

(declare-fun m!1376503 () Bool)

(assert (=> b!1492492 m!1376503))

(declare-fun m!1376505 () Bool)

(assert (=> b!1492492 m!1376505))

(declare-fun m!1376507 () Bool)

(assert (=> b!1492492 m!1376507))

(assert (=> b!1492492 m!1376493))

(declare-fun m!1376509 () Bool)

(assert (=> start!127048 m!1376509))

(declare-fun m!1376511 () Bool)

(assert (=> start!127048 m!1376511))

(declare-fun m!1376513 () Bool)

(assert (=> b!1492493 m!1376513))

(assert (=> b!1492493 m!1376513))

(declare-fun m!1376515 () Bool)

(assert (=> b!1492493 m!1376515))

(assert (=> b!1492493 m!1376501))

(declare-fun m!1376517 () Bool)

(assert (=> b!1492493 m!1376517))

(assert (=> b!1492490 m!1376493))

(assert (=> b!1492490 m!1376493))

(declare-fun m!1376519 () Bool)

(assert (=> b!1492490 m!1376519))

(declare-fun m!1376521 () Bool)

(assert (=> b!1492487 m!1376521))

(assert (=> b!1492487 m!1376493))

(declare-fun m!1376523 () Bool)

(assert (=> b!1492501 m!1376523))

(assert (=> b!1492501 m!1376523))

(declare-fun m!1376525 () Bool)

(assert (=> b!1492501 m!1376525))

(assert (=> b!1492489 m!1376493))

(assert (=> b!1492489 m!1376493))

(declare-fun m!1376527 () Bool)

(assert (=> b!1492489 m!1376527))

(declare-fun m!1376529 () Bool)

(assert (=> b!1492494 m!1376529))

(declare-fun m!1376531 () Bool)

(assert (=> b!1492502 m!1376531))

(declare-fun m!1376533 () Bool)

(assert (=> b!1492502 m!1376533))

(declare-fun m!1376535 () Bool)

(assert (=> b!1492488 m!1376535))

(declare-fun m!1376537 () Bool)

(assert (=> b!1492495 m!1376537))

(assert (=> b!1492497 m!1376501))

(declare-fun m!1376539 () Bool)

(assert (=> b!1492497 m!1376539))

(assert (=> b!1492499 m!1376493))

(assert (=> b!1492499 m!1376493))

(declare-fun m!1376541 () Bool)

(assert (=> b!1492499 m!1376541))

(assert (=> b!1492499 m!1376541))

(assert (=> b!1492499 m!1376493))

(declare-fun m!1376543 () Bool)

(assert (=> b!1492499 m!1376543))

(push 1)

