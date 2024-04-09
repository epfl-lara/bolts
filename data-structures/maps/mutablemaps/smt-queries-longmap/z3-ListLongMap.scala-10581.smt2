; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124668 () Bool)

(assert start!124668)

(declare-fun b!1443284 () Bool)

(declare-fun res!975516 () Bool)

(declare-fun e!813352 () Bool)

(assert (=> b!1443284 (=> (not res!975516) (not e!813352))))

(declare-fun e!813354 () Bool)

(assert (=> b!1443284 (= res!975516 e!813354)))

(declare-fun c!133403 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1443284 (= c!133403 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443285 () Bool)

(declare-fun res!975512 () Bool)

(declare-fun e!813357 () Bool)

(assert (=> b!1443285 (=> (not res!975512) (not e!813357))))

(declare-datatypes ((array!98033 0))(
  ( (array!98034 (arr!47300 (Array (_ BitVec 32) (_ BitVec 64))) (size!47851 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98033)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443285 (= res!975512 (validKeyInArray!0 (select (arr!47300 a!2862) i!1006)))))

(declare-fun b!1443286 () Bool)

(declare-fun res!975510 () Bool)

(assert (=> b!1443286 (=> (not res!975510) (not e!813357))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1443286 (= res!975510 (validKeyInArray!0 (select (arr!47300 a!2862) j!93)))))

(declare-fun b!1443287 () Bool)

(declare-fun e!813353 () Bool)

(assert (=> b!1443287 (= e!813357 e!813353)))

(declare-fun res!975518 () Bool)

(assert (=> b!1443287 (=> (not res!975518) (not e!813353))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1443287 (= res!975518 (= (select (store (arr!47300 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633773 () array!98033)

(assert (=> b!1443287 (= lt!633773 (array!98034 (store (arr!47300 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47851 a!2862)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!813355 () Bool)

(declare-fun b!1443289 () Bool)

(assert (=> b!1443289 (= e!813355 (or (= (select (arr!47300 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47300 a!2862) intermediateBeforeIndex!19) (select (arr!47300 a!2862) j!93))))))

(declare-fun b!1443290 () Bool)

(declare-fun res!975511 () Bool)

(declare-fun e!813356 () Bool)

(assert (=> b!1443290 (=> (not res!975511) (not e!813356))))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11575 0))(
  ( (MissingZero!11575 (index!48691 (_ BitVec 32))) (Found!11575 (index!48692 (_ BitVec 32))) (Intermediate!11575 (undefined!12387 Bool) (index!48693 (_ BitVec 32)) (x!130395 (_ BitVec 32))) (Undefined!11575) (MissingVacant!11575 (index!48694 (_ BitVec 32))) )
))
(declare-fun lt!633778 () SeekEntryResult!11575)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98033 (_ BitVec 32)) SeekEntryResult!11575)

(assert (=> b!1443290 (= res!975511 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47300 a!2862) j!93) a!2862 mask!2687) lt!633778))))

(declare-fun b!1443291 () Bool)

(declare-fun res!975517 () Bool)

(assert (=> b!1443291 (=> (not res!975517) (not e!813355))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98033 (_ BitVec 32)) SeekEntryResult!11575)

(assert (=> b!1443291 (= res!975517 (= (seekEntryOrOpen!0 (select (arr!47300 a!2862) j!93) a!2862 mask!2687) (Found!11575 j!93)))))

(declare-fun b!1443292 () Bool)

(declare-fun res!975509 () Bool)

(assert (=> b!1443292 (=> (not res!975509) (not e!813357))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1443292 (= res!975509 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47851 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47851 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47851 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443293 () Bool)

(declare-fun res!975515 () Bool)

(assert (=> b!1443293 (=> (not res!975515) (not e!813357))))

(declare-datatypes ((List!33981 0))(
  ( (Nil!33978) (Cons!33977 (h!35327 (_ BitVec 64)) (t!48682 List!33981)) )
))
(declare-fun arrayNoDuplicates!0 (array!98033 (_ BitVec 32) List!33981) Bool)

(assert (=> b!1443293 (= res!975515 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33978))))

(declare-fun b!1443294 () Bool)

(declare-fun res!975513 () Bool)

(assert (=> b!1443294 (=> (not res!975513) (not e!813357))))

(assert (=> b!1443294 (= res!975513 (and (= (size!47851 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47851 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47851 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443295 () Bool)

(declare-fun lt!633776 () SeekEntryResult!11575)

(declare-fun lt!633777 () (_ BitVec 64))

(assert (=> b!1443295 (= e!813354 (= lt!633776 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633777 lt!633773 mask!2687)))))

(declare-fun b!1443296 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98033 (_ BitVec 32)) SeekEntryResult!11575)

(assert (=> b!1443296 (= e!813354 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633777 lt!633773 mask!2687) (seekEntryOrOpen!0 lt!633777 lt!633773 mask!2687)))))

(declare-fun b!1443297 () Bool)

(declare-fun e!813358 () Bool)

(assert (=> b!1443297 (= e!813358 true)))

(declare-fun lt!633775 () SeekEntryResult!11575)

(assert (=> b!1443297 (= lt!633775 (seekEntryOrOpen!0 lt!633777 lt!633773 mask!2687))))

(declare-fun b!1443298 () Bool)

(declare-fun res!975514 () Bool)

(assert (=> b!1443298 (=> (not res!975514) (not e!813357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98033 (_ BitVec 32)) Bool)

(assert (=> b!1443298 (= res!975514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443299 () Bool)

(declare-fun res!975507 () Bool)

(assert (=> b!1443299 (=> (not res!975507) (not e!813352))))

(assert (=> b!1443299 (= res!975507 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1443300 () Bool)

(assert (=> b!1443300 (= e!813352 (not e!813358))))

(declare-fun res!975505 () Bool)

(assert (=> b!1443300 (=> res!975505 e!813358)))

(assert (=> b!1443300 (= res!975505 (or (not (= (select (arr!47300 a!2862) index!646) (select (store (arr!47300 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47300 a!2862) index!646) (select (arr!47300 a!2862) j!93)))))))

(assert (=> b!1443300 e!813355))

(declare-fun res!975519 () Bool)

(assert (=> b!1443300 (=> (not res!975519) (not e!813355))))

(assert (=> b!1443300 (= res!975519 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48594 0))(
  ( (Unit!48595) )
))
(declare-fun lt!633774 () Unit!48594)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98033 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48594)

(assert (=> b!1443300 (= lt!633774 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443301 () Bool)

(assert (=> b!1443301 (= e!813353 e!813356)))

(declare-fun res!975504 () Bool)

(assert (=> b!1443301 (=> (not res!975504) (not e!813356))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443301 (= res!975504 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47300 a!2862) j!93) mask!2687) (select (arr!47300 a!2862) j!93) a!2862 mask!2687) lt!633778))))

(assert (=> b!1443301 (= lt!633778 (Intermediate!11575 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!975508 () Bool)

(assert (=> start!124668 (=> (not res!975508) (not e!813357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124668 (= res!975508 (validMask!0 mask!2687))))

(assert (=> start!124668 e!813357))

(assert (=> start!124668 true))

(declare-fun array_inv!36245 (array!98033) Bool)

(assert (=> start!124668 (array_inv!36245 a!2862)))

(declare-fun b!1443288 () Bool)

(assert (=> b!1443288 (= e!813356 e!813352)))

(declare-fun res!975506 () Bool)

(assert (=> b!1443288 (=> (not res!975506) (not e!813352))))

(assert (=> b!1443288 (= res!975506 (= lt!633776 (Intermediate!11575 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1443288 (= lt!633776 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633777 mask!2687) lt!633777 lt!633773 mask!2687))))

(assert (=> b!1443288 (= lt!633777 (select (store (arr!47300 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!124668 res!975508) b!1443294))

(assert (= (and b!1443294 res!975513) b!1443285))

(assert (= (and b!1443285 res!975512) b!1443286))

(assert (= (and b!1443286 res!975510) b!1443298))

(assert (= (and b!1443298 res!975514) b!1443293))

(assert (= (and b!1443293 res!975515) b!1443292))

(assert (= (and b!1443292 res!975509) b!1443287))

(assert (= (and b!1443287 res!975518) b!1443301))

(assert (= (and b!1443301 res!975504) b!1443290))

(assert (= (and b!1443290 res!975511) b!1443288))

(assert (= (and b!1443288 res!975506) b!1443284))

(assert (= (and b!1443284 c!133403) b!1443295))

(assert (= (and b!1443284 (not c!133403)) b!1443296))

(assert (= (and b!1443284 res!975516) b!1443299))

(assert (= (and b!1443299 res!975507) b!1443300))

(assert (= (and b!1443300 res!975519) b!1443291))

(assert (= (and b!1443291 res!975517) b!1443289))

(assert (= (and b!1443300 (not res!975505)) b!1443297))

(declare-fun m!1332425 () Bool)

(assert (=> b!1443291 m!1332425))

(assert (=> b!1443291 m!1332425))

(declare-fun m!1332427 () Bool)

(assert (=> b!1443291 m!1332427))

(declare-fun m!1332429 () Bool)

(assert (=> b!1443293 m!1332429))

(declare-fun m!1332431 () Bool)

(assert (=> b!1443298 m!1332431))

(declare-fun m!1332433 () Bool)

(assert (=> b!1443288 m!1332433))

(assert (=> b!1443288 m!1332433))

(declare-fun m!1332435 () Bool)

(assert (=> b!1443288 m!1332435))

(declare-fun m!1332437 () Bool)

(assert (=> b!1443288 m!1332437))

(declare-fun m!1332439 () Bool)

(assert (=> b!1443288 m!1332439))

(declare-fun m!1332441 () Bool)

(assert (=> b!1443296 m!1332441))

(declare-fun m!1332443 () Bool)

(assert (=> b!1443296 m!1332443))

(declare-fun m!1332445 () Bool)

(assert (=> start!124668 m!1332445))

(declare-fun m!1332447 () Bool)

(assert (=> start!124668 m!1332447))

(assert (=> b!1443297 m!1332443))

(declare-fun m!1332449 () Bool)

(assert (=> b!1443285 m!1332449))

(assert (=> b!1443285 m!1332449))

(declare-fun m!1332451 () Bool)

(assert (=> b!1443285 m!1332451))

(declare-fun m!1332453 () Bool)

(assert (=> b!1443295 m!1332453))

(assert (=> b!1443286 m!1332425))

(assert (=> b!1443286 m!1332425))

(declare-fun m!1332455 () Bool)

(assert (=> b!1443286 m!1332455))

(assert (=> b!1443301 m!1332425))

(assert (=> b!1443301 m!1332425))

(declare-fun m!1332457 () Bool)

(assert (=> b!1443301 m!1332457))

(assert (=> b!1443301 m!1332457))

(assert (=> b!1443301 m!1332425))

(declare-fun m!1332459 () Bool)

(assert (=> b!1443301 m!1332459))

(assert (=> b!1443290 m!1332425))

(assert (=> b!1443290 m!1332425))

(declare-fun m!1332461 () Bool)

(assert (=> b!1443290 m!1332461))

(assert (=> b!1443287 m!1332437))

(declare-fun m!1332463 () Bool)

(assert (=> b!1443287 m!1332463))

(declare-fun m!1332465 () Bool)

(assert (=> b!1443300 m!1332465))

(assert (=> b!1443300 m!1332437))

(declare-fun m!1332467 () Bool)

(assert (=> b!1443300 m!1332467))

(declare-fun m!1332469 () Bool)

(assert (=> b!1443300 m!1332469))

(declare-fun m!1332471 () Bool)

(assert (=> b!1443300 m!1332471))

(assert (=> b!1443300 m!1332425))

(declare-fun m!1332473 () Bool)

(assert (=> b!1443289 m!1332473))

(assert (=> b!1443289 m!1332425))

(check-sat (not b!1443293) (not b!1443298) (not b!1443286) (not b!1443290) (not b!1443297) (not b!1443295) (not start!124668) (not b!1443301) (not b!1443291) (not b!1443300) (not b!1443285) (not b!1443296) (not b!1443288))
(check-sat)
