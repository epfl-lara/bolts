; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125404 () Bool)

(assert start!125404)

(declare-fun b!1465333 () Bool)

(declare-fun e!823403 () Bool)

(declare-fun e!823407 () Bool)

(assert (=> b!1465333 (= e!823403 (not e!823407))))

(declare-fun res!994342 () Bool)

(assert (=> b!1465333 (=> res!994342 e!823407)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98769 0))(
  ( (array!98770 (arr!47668 (Array (_ BitVec 32) (_ BitVec 64))) (size!48219 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98769)

(assert (=> b!1465333 (= res!994342 (or (and (= (select (arr!47668 a!2862) index!646) (select (store (arr!47668 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47668 a!2862) index!646) (select (arr!47668 a!2862) j!93))) (= (select (arr!47668 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!823405 () Bool)

(assert (=> b!1465333 e!823405))

(declare-fun res!994347 () Bool)

(assert (=> b!1465333 (=> (not res!994347) (not e!823405))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98769 (_ BitVec 32)) Bool)

(assert (=> b!1465333 (= res!994347 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49330 0))(
  ( (Unit!49331) )
))
(declare-fun lt!641336 () Unit!49330)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98769 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49330)

(assert (=> b!1465333 (= lt!641336 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1465334 () Bool)

(declare-fun res!994348 () Bool)

(declare-fun e!823410 () Bool)

(assert (=> b!1465334 (=> (not res!994348) (not e!823410))))

(assert (=> b!1465334 (= res!994348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465335 () Bool)

(declare-fun res!994333 () Bool)

(declare-fun e!823406 () Bool)

(assert (=> b!1465335 (=> (not res!994333) (not e!823406))))

(declare-datatypes ((SeekEntryResult!11943 0))(
  ( (MissingZero!11943 (index!50163 (_ BitVec 32))) (Found!11943 (index!50164 (_ BitVec 32))) (Intermediate!11943 (undefined!12755 Bool) (index!50165 (_ BitVec 32)) (x!131747 (_ BitVec 32))) (Undefined!11943) (MissingVacant!11943 (index!50166 (_ BitVec 32))) )
))
(declare-fun lt!641338 () SeekEntryResult!11943)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98769 (_ BitVec 32)) SeekEntryResult!11943)

(assert (=> b!1465335 (= res!994333 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47668 a!2862) j!93) a!2862 mask!2687) lt!641338))))

(declare-fun b!1465336 () Bool)

(declare-fun res!994343 () Bool)

(assert (=> b!1465336 (=> (not res!994343) (not e!823410))))

(assert (=> b!1465336 (= res!994343 (and (= (size!48219 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48219 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48219 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1465337 () Bool)

(declare-fun lt!641339 () (_ BitVec 64))

(declare-fun lt!641340 () array!98769)

(declare-fun e!823411 () Bool)

(declare-fun lt!641337 () SeekEntryResult!11943)

(assert (=> b!1465337 (= e!823411 (= lt!641337 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641339 lt!641340 mask!2687)))))

(declare-fun b!1465338 () Bool)

(declare-fun e!823412 () Bool)

(assert (=> b!1465338 (= e!823412 true)))

(declare-fun lt!641335 () Bool)

(declare-fun e!823409 () Bool)

(assert (=> b!1465338 (= lt!641335 e!823409)))

(declare-fun c!135014 () Bool)

(assert (=> b!1465338 (= c!135014 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1465339 () Bool)

(declare-fun res!994341 () Bool)

(assert (=> b!1465339 (=> (not res!994341) (not e!823405))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98769 (_ BitVec 32)) SeekEntryResult!11943)

(assert (=> b!1465339 (= res!994341 (= (seekEntryOrOpen!0 (select (arr!47668 a!2862) j!93) a!2862 mask!2687) (Found!11943 j!93)))))

(declare-fun b!1465341 () Bool)

(declare-fun res!994346 () Bool)

(assert (=> b!1465341 (=> (not res!994346) (not e!823410))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465341 (= res!994346 (validKeyInArray!0 (select (arr!47668 a!2862) i!1006)))))

(declare-fun b!1465342 () Bool)

(declare-fun lt!641341 () (_ BitVec 32))

(assert (=> b!1465342 (= e!823409 (not (= lt!641337 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641341 lt!641339 lt!641340 mask!2687))))))

(declare-fun b!1465343 () Bool)

(declare-fun res!994340 () Bool)

(assert (=> b!1465343 (=> (not res!994340) (not e!823403))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1465343 (= res!994340 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465344 () Bool)

(declare-fun res!994345 () Bool)

(assert (=> b!1465344 (=> (not res!994345) (not e!823403))))

(assert (=> b!1465344 (= res!994345 e!823411)))

(declare-fun c!135013 () Bool)

(assert (=> b!1465344 (= c!135013 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1465345 () Bool)

(declare-fun res!994344 () Bool)

(assert (=> b!1465345 (=> res!994344 e!823412)))

(assert (=> b!1465345 (= res!994344 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641341 (select (arr!47668 a!2862) j!93) a!2862 mask!2687) lt!641338)))))

(declare-fun b!1465346 () Bool)

(declare-fun e!823408 () Bool)

(assert (=> b!1465346 (= e!823410 e!823408)))

(declare-fun res!994350 () Bool)

(assert (=> b!1465346 (=> (not res!994350) (not e!823408))))

(assert (=> b!1465346 (= res!994350 (= (select (store (arr!47668 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1465346 (= lt!641340 (array!98770 (store (arr!47668 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48219 a!2862)))))

(declare-fun b!1465347 () Bool)

(declare-fun res!994335 () Bool)

(assert (=> b!1465347 (=> (not res!994335) (not e!823410))))

(assert (=> b!1465347 (= res!994335 (validKeyInArray!0 (select (arr!47668 a!2862) j!93)))))

(declare-fun b!1465348 () Bool)

(declare-fun res!994338 () Bool)

(assert (=> b!1465348 (=> (not res!994338) (not e!823410))))

(declare-datatypes ((List!34349 0))(
  ( (Nil!34346) (Cons!34345 (h!35695 (_ BitVec 64)) (t!49050 List!34349)) )
))
(declare-fun arrayNoDuplicates!0 (array!98769 (_ BitVec 32) List!34349) Bool)

(assert (=> b!1465348 (= res!994338 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34346))))

(declare-fun b!1465349 () Bool)

(assert (=> b!1465349 (= e!823406 e!823403)))

(declare-fun res!994337 () Bool)

(assert (=> b!1465349 (=> (not res!994337) (not e!823403))))

(assert (=> b!1465349 (= res!994337 (= lt!641337 (Intermediate!11943 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465349 (= lt!641337 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641339 mask!2687) lt!641339 lt!641340 mask!2687))))

(assert (=> b!1465349 (= lt!641339 (select (store (arr!47668 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1465350 () Bool)

(assert (=> b!1465350 (= e!823408 e!823406)))

(declare-fun res!994339 () Bool)

(assert (=> b!1465350 (=> (not res!994339) (not e!823406))))

(assert (=> b!1465350 (= res!994339 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47668 a!2862) j!93) mask!2687) (select (arr!47668 a!2862) j!93) a!2862 mask!2687) lt!641338))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1465350 (= lt!641338 (Intermediate!11943 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1465351 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98769 (_ BitVec 32)) SeekEntryResult!11943)

(assert (=> b!1465351 (= e!823409 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641341 intermediateAfterIndex!19 lt!641339 lt!641340 mask!2687) (seekEntryOrOpen!0 lt!641339 lt!641340 mask!2687))))))

(declare-fun b!1465352 () Bool)

(declare-fun res!994334 () Bool)

(assert (=> b!1465352 (=> (not res!994334) (not e!823410))))

(assert (=> b!1465352 (= res!994334 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48219 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48219 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48219 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465353 () Bool)

(assert (=> b!1465353 (= e!823411 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641339 lt!641340 mask!2687) (seekEntryOrOpen!0 lt!641339 lt!641340 mask!2687)))))

(declare-fun b!1465354 () Bool)

(assert (=> b!1465354 (= e!823407 e!823412)))

(declare-fun res!994336 () Bool)

(assert (=> b!1465354 (=> res!994336 e!823412)))

(assert (=> b!1465354 (= res!994336 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641341 #b00000000000000000000000000000000) (bvsge lt!641341 (size!48219 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465354 (= lt!641341 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!994349 () Bool)

(assert (=> start!125404 (=> (not res!994349) (not e!823410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125404 (= res!994349 (validMask!0 mask!2687))))

(assert (=> start!125404 e!823410))

(assert (=> start!125404 true))

(declare-fun array_inv!36613 (array!98769) Bool)

(assert (=> start!125404 (array_inv!36613 a!2862)))

(declare-fun b!1465340 () Bool)

(assert (=> b!1465340 (= e!823405 (or (= (select (arr!47668 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47668 a!2862) intermediateBeforeIndex!19) (select (arr!47668 a!2862) j!93))))))

(assert (= (and start!125404 res!994349) b!1465336))

(assert (= (and b!1465336 res!994343) b!1465341))

(assert (= (and b!1465341 res!994346) b!1465347))

(assert (= (and b!1465347 res!994335) b!1465334))

(assert (= (and b!1465334 res!994348) b!1465348))

(assert (= (and b!1465348 res!994338) b!1465352))

(assert (= (and b!1465352 res!994334) b!1465346))

(assert (= (and b!1465346 res!994350) b!1465350))

(assert (= (and b!1465350 res!994339) b!1465335))

(assert (= (and b!1465335 res!994333) b!1465349))

(assert (= (and b!1465349 res!994337) b!1465344))

(assert (= (and b!1465344 c!135013) b!1465337))

(assert (= (and b!1465344 (not c!135013)) b!1465353))

(assert (= (and b!1465344 res!994345) b!1465343))

(assert (= (and b!1465343 res!994340) b!1465333))

(assert (= (and b!1465333 res!994347) b!1465339))

(assert (= (and b!1465339 res!994341) b!1465340))

(assert (= (and b!1465333 (not res!994342)) b!1465354))

(assert (= (and b!1465354 (not res!994336)) b!1465345))

(assert (= (and b!1465345 (not res!994344)) b!1465338))

(assert (= (and b!1465338 c!135014) b!1465342))

(assert (= (and b!1465338 (not c!135014)) b!1465351))

(declare-fun m!1352487 () Bool)

(assert (=> b!1465345 m!1352487))

(assert (=> b!1465345 m!1352487))

(declare-fun m!1352489 () Bool)

(assert (=> b!1465345 m!1352489))

(declare-fun m!1352491 () Bool)

(assert (=> b!1465349 m!1352491))

(assert (=> b!1465349 m!1352491))

(declare-fun m!1352493 () Bool)

(assert (=> b!1465349 m!1352493))

(declare-fun m!1352495 () Bool)

(assert (=> b!1465349 m!1352495))

(declare-fun m!1352497 () Bool)

(assert (=> b!1465349 m!1352497))

(assert (=> b!1465339 m!1352487))

(assert (=> b!1465339 m!1352487))

(declare-fun m!1352499 () Bool)

(assert (=> b!1465339 m!1352499))

(declare-fun m!1352501 () Bool)

(assert (=> b!1465341 m!1352501))

(assert (=> b!1465341 m!1352501))

(declare-fun m!1352503 () Bool)

(assert (=> b!1465341 m!1352503))

(assert (=> b!1465347 m!1352487))

(assert (=> b!1465347 m!1352487))

(declare-fun m!1352505 () Bool)

(assert (=> b!1465347 m!1352505))

(assert (=> b!1465335 m!1352487))

(assert (=> b!1465335 m!1352487))

(declare-fun m!1352507 () Bool)

(assert (=> b!1465335 m!1352507))

(declare-fun m!1352509 () Bool)

(assert (=> b!1465342 m!1352509))

(declare-fun m!1352511 () Bool)

(assert (=> b!1465334 m!1352511))

(assert (=> b!1465346 m!1352495))

(declare-fun m!1352513 () Bool)

(assert (=> b!1465346 m!1352513))

(declare-fun m!1352515 () Bool)

(assert (=> b!1465354 m!1352515))

(declare-fun m!1352517 () Bool)

(assert (=> b!1465337 m!1352517))

(declare-fun m!1352519 () Bool)

(assert (=> b!1465348 m!1352519))

(declare-fun m!1352521 () Bool)

(assert (=> start!125404 m!1352521))

(declare-fun m!1352523 () Bool)

(assert (=> start!125404 m!1352523))

(declare-fun m!1352525 () Bool)

(assert (=> b!1465340 m!1352525))

(assert (=> b!1465340 m!1352487))

(declare-fun m!1352527 () Bool)

(assert (=> b!1465351 m!1352527))

(declare-fun m!1352529 () Bool)

(assert (=> b!1465351 m!1352529))

(declare-fun m!1352531 () Bool)

(assert (=> b!1465333 m!1352531))

(assert (=> b!1465333 m!1352495))

(declare-fun m!1352533 () Bool)

(assert (=> b!1465333 m!1352533))

(declare-fun m!1352535 () Bool)

(assert (=> b!1465333 m!1352535))

(declare-fun m!1352537 () Bool)

(assert (=> b!1465333 m!1352537))

(assert (=> b!1465333 m!1352487))

(declare-fun m!1352539 () Bool)

(assert (=> b!1465353 m!1352539))

(assert (=> b!1465353 m!1352529))

(assert (=> b!1465350 m!1352487))

(assert (=> b!1465350 m!1352487))

(declare-fun m!1352541 () Bool)

(assert (=> b!1465350 m!1352541))

(assert (=> b!1465350 m!1352541))

(assert (=> b!1465350 m!1352487))

(declare-fun m!1352543 () Bool)

(assert (=> b!1465350 m!1352543))

(push 1)

