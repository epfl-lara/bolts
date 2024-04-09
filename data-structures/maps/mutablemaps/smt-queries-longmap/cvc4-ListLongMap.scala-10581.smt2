; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124670 () Bool)

(assert start!124670)

(declare-fun b!1443338 () Bool)

(declare-fun res!975556 () Bool)

(declare-fun e!813383 () Bool)

(assert (=> b!1443338 (=> (not res!975556) (not e!813383))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98035 0))(
  ( (array!98036 (arr!47301 (Array (_ BitVec 32) (_ BitVec 64))) (size!47852 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98035)

(assert (=> b!1443338 (= res!975556 (and (= (size!47852 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47852 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47852 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443339 () Bool)

(declare-fun res!975554 () Bool)

(declare-fun e!813376 () Bool)

(assert (=> b!1443339 (=> (not res!975554) (not e!813376))))

(declare-fun e!813380 () Bool)

(assert (=> b!1443339 (= res!975554 e!813380)))

(declare-fun c!133406 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1443339 (= c!133406 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443340 () Bool)

(declare-fun e!813377 () Bool)

(assert (=> b!1443340 (= e!813376 (not e!813377))))

(declare-fun res!975555 () Bool)

(assert (=> b!1443340 (=> res!975555 e!813377)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1443340 (= res!975555 (or (not (= (select (arr!47301 a!2862) index!646) (select (store (arr!47301 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47301 a!2862) index!646) (select (arr!47301 a!2862) j!93)))))))

(declare-fun e!813381 () Bool)

(assert (=> b!1443340 e!813381))

(declare-fun res!975562 () Bool)

(assert (=> b!1443340 (=> (not res!975562) (not e!813381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98035 (_ BitVec 32)) Bool)

(assert (=> b!1443340 (= res!975562 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48596 0))(
  ( (Unit!48597) )
))
(declare-fun lt!633793 () Unit!48596)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98035 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48596)

(assert (=> b!1443340 (= lt!633793 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443341 () Bool)

(declare-fun res!975552 () Bool)

(assert (=> b!1443341 (=> (not res!975552) (not e!813383))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443341 (= res!975552 (validKeyInArray!0 (select (arr!47301 a!2862) i!1006)))))

(declare-fun b!1443342 () Bool)

(declare-fun res!975564 () Bool)

(assert (=> b!1443342 (=> (not res!975564) (not e!813383))))

(assert (=> b!1443342 (= res!975564 (validKeyInArray!0 (select (arr!47301 a!2862) j!93)))))

(declare-fun b!1443343 () Bool)

(declare-fun res!975565 () Bool)

(assert (=> b!1443343 (=> (not res!975565) (not e!813383))))

(assert (=> b!1443343 (= res!975565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443344 () Bool)

(declare-fun e!813379 () Bool)

(assert (=> b!1443344 (= e!813383 e!813379)))

(declare-fun res!975553 () Bool)

(assert (=> b!1443344 (=> (not res!975553) (not e!813379))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1443344 (= res!975553 (= (select (store (arr!47301 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633794 () array!98035)

(assert (=> b!1443344 (= lt!633794 (array!98036 (store (arr!47301 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47852 a!2862)))))

(declare-fun b!1443345 () Bool)

(declare-fun res!975561 () Bool)

(assert (=> b!1443345 (=> (not res!975561) (not e!813376))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1443345 (= res!975561 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1443346 () Bool)

(assert (=> b!1443346 (= e!813381 (or (= (select (arr!47301 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47301 a!2862) intermediateBeforeIndex!19) (select (arr!47301 a!2862) j!93))))))

(declare-fun res!975563 () Bool)

(assert (=> start!124670 (=> (not res!975563) (not e!813383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124670 (= res!975563 (validMask!0 mask!2687))))

(assert (=> start!124670 e!813383))

(assert (=> start!124670 true))

(declare-fun array_inv!36246 (array!98035) Bool)

(assert (=> start!124670 (array_inv!36246 a!2862)))

(declare-datatypes ((SeekEntryResult!11576 0))(
  ( (MissingZero!11576 (index!48695 (_ BitVec 32))) (Found!11576 (index!48696 (_ BitVec 32))) (Intermediate!11576 (undefined!12388 Bool) (index!48697 (_ BitVec 32)) (x!130396 (_ BitVec 32))) (Undefined!11576) (MissingVacant!11576 (index!48698 (_ BitVec 32))) )
))
(declare-fun lt!633796 () SeekEntryResult!11576)

(declare-fun lt!633792 () (_ BitVec 64))

(declare-fun b!1443347 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98035 (_ BitVec 32)) SeekEntryResult!11576)

(assert (=> b!1443347 (= e!813380 (= lt!633796 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633792 lt!633794 mask!2687)))))

(declare-fun b!1443348 () Bool)

(assert (=> b!1443348 (= e!813377 true)))

(declare-fun lt!633795 () SeekEntryResult!11576)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98035 (_ BitVec 32)) SeekEntryResult!11576)

(assert (=> b!1443348 (= lt!633795 (seekEntryOrOpen!0 lt!633792 lt!633794 mask!2687))))

(declare-fun b!1443349 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98035 (_ BitVec 32)) SeekEntryResult!11576)

(assert (=> b!1443349 (= e!813380 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633792 lt!633794 mask!2687) (seekEntryOrOpen!0 lt!633792 lt!633794 mask!2687)))))

(declare-fun b!1443350 () Bool)

(declare-fun res!975559 () Bool)

(assert (=> b!1443350 (=> (not res!975559) (not e!813381))))

(assert (=> b!1443350 (= res!975559 (= (seekEntryOrOpen!0 (select (arr!47301 a!2862) j!93) a!2862 mask!2687) (Found!11576 j!93)))))

(declare-fun b!1443351 () Bool)

(declare-fun res!975560 () Bool)

(assert (=> b!1443351 (=> (not res!975560) (not e!813383))))

(declare-datatypes ((List!33982 0))(
  ( (Nil!33979) (Cons!33978 (h!35328 (_ BitVec 64)) (t!48683 List!33982)) )
))
(declare-fun arrayNoDuplicates!0 (array!98035 (_ BitVec 32) List!33982) Bool)

(assert (=> b!1443351 (= res!975560 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33979))))

(declare-fun b!1443352 () Bool)

(declare-fun res!975566 () Bool)

(assert (=> b!1443352 (=> (not res!975566) (not e!813383))))

(assert (=> b!1443352 (= res!975566 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47852 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47852 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47852 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443353 () Bool)

(declare-fun e!813378 () Bool)

(assert (=> b!1443353 (= e!813379 e!813378)))

(declare-fun res!975567 () Bool)

(assert (=> b!1443353 (=> (not res!975567) (not e!813378))))

(declare-fun lt!633791 () SeekEntryResult!11576)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443353 (= res!975567 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47301 a!2862) j!93) mask!2687) (select (arr!47301 a!2862) j!93) a!2862 mask!2687) lt!633791))))

(assert (=> b!1443353 (= lt!633791 (Intermediate!11576 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1443354 () Bool)

(assert (=> b!1443354 (= e!813378 e!813376)))

(declare-fun res!975558 () Bool)

(assert (=> b!1443354 (=> (not res!975558) (not e!813376))))

(assert (=> b!1443354 (= res!975558 (= lt!633796 (Intermediate!11576 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1443354 (= lt!633796 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633792 mask!2687) lt!633792 lt!633794 mask!2687))))

(assert (=> b!1443354 (= lt!633792 (select (store (arr!47301 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443355 () Bool)

(declare-fun res!975557 () Bool)

(assert (=> b!1443355 (=> (not res!975557) (not e!813378))))

(assert (=> b!1443355 (= res!975557 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47301 a!2862) j!93) a!2862 mask!2687) lt!633791))))

(assert (= (and start!124670 res!975563) b!1443338))

(assert (= (and b!1443338 res!975556) b!1443341))

(assert (= (and b!1443341 res!975552) b!1443342))

(assert (= (and b!1443342 res!975564) b!1443343))

(assert (= (and b!1443343 res!975565) b!1443351))

(assert (= (and b!1443351 res!975560) b!1443352))

(assert (= (and b!1443352 res!975566) b!1443344))

(assert (= (and b!1443344 res!975553) b!1443353))

(assert (= (and b!1443353 res!975567) b!1443355))

(assert (= (and b!1443355 res!975557) b!1443354))

(assert (= (and b!1443354 res!975558) b!1443339))

(assert (= (and b!1443339 c!133406) b!1443347))

(assert (= (and b!1443339 (not c!133406)) b!1443349))

(assert (= (and b!1443339 res!975554) b!1443345))

(assert (= (and b!1443345 res!975561) b!1443340))

(assert (= (and b!1443340 res!975562) b!1443350))

(assert (= (and b!1443350 res!975559) b!1443346))

(assert (= (and b!1443340 (not res!975555)) b!1443348))

(declare-fun m!1332475 () Bool)

(assert (=> b!1443343 m!1332475))

(declare-fun m!1332477 () Bool)

(assert (=> b!1443344 m!1332477))

(declare-fun m!1332479 () Bool)

(assert (=> b!1443344 m!1332479))

(declare-fun m!1332481 () Bool)

(assert (=> b!1443342 m!1332481))

(assert (=> b!1443342 m!1332481))

(declare-fun m!1332483 () Bool)

(assert (=> b!1443342 m!1332483))

(declare-fun m!1332485 () Bool)

(assert (=> b!1443351 m!1332485))

(declare-fun m!1332487 () Bool)

(assert (=> b!1443349 m!1332487))

(declare-fun m!1332489 () Bool)

(assert (=> b!1443349 m!1332489))

(declare-fun m!1332491 () Bool)

(assert (=> b!1443347 m!1332491))

(declare-fun m!1332493 () Bool)

(assert (=> b!1443354 m!1332493))

(assert (=> b!1443354 m!1332493))

(declare-fun m!1332495 () Bool)

(assert (=> b!1443354 m!1332495))

(assert (=> b!1443354 m!1332477))

(declare-fun m!1332497 () Bool)

(assert (=> b!1443354 m!1332497))

(assert (=> b!1443353 m!1332481))

(assert (=> b!1443353 m!1332481))

(declare-fun m!1332499 () Bool)

(assert (=> b!1443353 m!1332499))

(assert (=> b!1443353 m!1332499))

(assert (=> b!1443353 m!1332481))

(declare-fun m!1332501 () Bool)

(assert (=> b!1443353 m!1332501))

(declare-fun m!1332503 () Bool)

(assert (=> b!1443346 m!1332503))

(assert (=> b!1443346 m!1332481))

(declare-fun m!1332505 () Bool)

(assert (=> start!124670 m!1332505))

(declare-fun m!1332507 () Bool)

(assert (=> start!124670 m!1332507))

(assert (=> b!1443348 m!1332489))

(declare-fun m!1332509 () Bool)

(assert (=> b!1443340 m!1332509))

(assert (=> b!1443340 m!1332477))

(declare-fun m!1332511 () Bool)

(assert (=> b!1443340 m!1332511))

(declare-fun m!1332513 () Bool)

(assert (=> b!1443340 m!1332513))

(declare-fun m!1332515 () Bool)

(assert (=> b!1443340 m!1332515))

(assert (=> b!1443340 m!1332481))

(declare-fun m!1332517 () Bool)

(assert (=> b!1443341 m!1332517))

(assert (=> b!1443341 m!1332517))

(declare-fun m!1332519 () Bool)

(assert (=> b!1443341 m!1332519))

(assert (=> b!1443355 m!1332481))

(assert (=> b!1443355 m!1332481))

(declare-fun m!1332521 () Bool)

(assert (=> b!1443355 m!1332521))

(assert (=> b!1443350 m!1332481))

(assert (=> b!1443350 m!1332481))

(declare-fun m!1332523 () Bool)

(assert (=> b!1443350 m!1332523))

(push 1)

