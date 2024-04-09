; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125802 () Bool)

(assert start!125802)

(declare-fun b!1471464 () Bool)

(declare-fun res!999340 () Bool)

(declare-fun e!825970 () Bool)

(assert (=> b!1471464 (=> (not res!999340) (not e!825970))))

(declare-datatypes ((array!99053 0))(
  ( (array!99054 (arr!47807 (Array (_ BitVec 32) (_ BitVec 64))) (size!48358 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99053)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1471464 (= res!999340 (validKeyInArray!0 (select (arr!47807 a!2862) j!93)))))

(declare-fun b!1471465 () Bool)

(declare-fun res!999347 () Bool)

(assert (=> b!1471465 (=> (not res!999347) (not e!825970))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1471465 (= res!999347 (and (= (size!48358 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48358 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48358 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1471466 () Bool)

(declare-fun e!825967 () Bool)

(declare-fun e!825966 () Bool)

(assert (=> b!1471466 (= e!825967 e!825966)))

(declare-fun res!999343 () Bool)

(assert (=> b!1471466 (=> (not res!999343) (not e!825966))))

(declare-datatypes ((SeekEntryResult!12070 0))(
  ( (MissingZero!12070 (index!50671 (_ BitVec 32))) (Found!12070 (index!50672 (_ BitVec 32))) (Intermediate!12070 (undefined!12882 Bool) (index!50673 (_ BitVec 32)) (x!132260 (_ BitVec 32))) (Undefined!12070) (MissingVacant!12070 (index!50674 (_ BitVec 32))) )
))
(declare-fun lt!643249 () SeekEntryResult!12070)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99053 (_ BitVec 32)) SeekEntryResult!12070)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471466 (= res!999343 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47807 a!2862) j!93) mask!2687) (select (arr!47807 a!2862) j!93) a!2862 mask!2687) lt!643249))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1471466 (= lt!643249 (Intermediate!12070 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1471467 () Bool)

(declare-fun res!999348 () Bool)

(assert (=> b!1471467 (=> (not res!999348) (not e!825966))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1471467 (= res!999348 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47807 a!2862) j!93) a!2862 mask!2687) lt!643249))))

(declare-fun b!1471468 () Bool)

(declare-fun res!999352 () Bool)

(declare-fun e!825969 () Bool)

(assert (=> b!1471468 (=> (not res!999352) (not e!825969))))

(declare-fun e!825971 () Bool)

(assert (=> b!1471468 (= res!999352 e!825971)))

(declare-fun c!135578 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1471468 (= c!135578 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1471469 () Bool)

(declare-fun res!999349 () Bool)

(declare-fun e!825965 () Bool)

(assert (=> b!1471469 (=> (not res!999349) (not e!825965))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99053 (_ BitVec 32)) SeekEntryResult!12070)

(assert (=> b!1471469 (= res!999349 (= (seekEntryOrOpen!0 (select (arr!47807 a!2862) j!93) a!2862 mask!2687) (Found!12070 j!93)))))

(declare-fun b!1471470 () Bool)

(declare-fun res!999354 () Bool)

(assert (=> b!1471470 (=> (not res!999354) (not e!825969))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1471470 (= res!999354 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!643248 () (_ BitVec 64))

(declare-fun lt!643251 () array!99053)

(declare-fun b!1471471 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99053 (_ BitVec 32)) SeekEntryResult!12070)

(assert (=> b!1471471 (= e!825971 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643248 lt!643251 mask!2687) (seekEntryOrOpen!0 lt!643248 lt!643251 mask!2687)))))

(declare-fun b!1471472 () Bool)

(declare-fun res!999345 () Bool)

(assert (=> b!1471472 (=> (not res!999345) (not e!825970))))

(assert (=> b!1471472 (= res!999345 (validKeyInArray!0 (select (arr!47807 a!2862) i!1006)))))

(declare-fun b!1471473 () Bool)

(assert (=> b!1471473 (= e!825970 e!825967)))

(declare-fun res!999350 () Bool)

(assert (=> b!1471473 (=> (not res!999350) (not e!825967))))

(assert (=> b!1471473 (= res!999350 (= (select (store (arr!47807 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471473 (= lt!643251 (array!99054 (store (arr!47807 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48358 a!2862)))))

(declare-fun b!1471474 () Bool)

(declare-fun res!999342 () Bool)

(assert (=> b!1471474 (=> (not res!999342) (not e!825970))))

(assert (=> b!1471474 (= res!999342 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48358 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48358 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48358 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!999351 () Bool)

(assert (=> start!125802 (=> (not res!999351) (not e!825970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125802 (= res!999351 (validMask!0 mask!2687))))

(assert (=> start!125802 e!825970))

(assert (=> start!125802 true))

(declare-fun array_inv!36752 (array!99053) Bool)

(assert (=> start!125802 (array_inv!36752 a!2862)))

(declare-fun b!1471475 () Bool)

(assert (=> b!1471475 (= e!825965 (or (= (select (arr!47807 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47807 a!2862) intermediateBeforeIndex!19) (select (arr!47807 a!2862) j!93))))))

(declare-fun b!1471476 () Bool)

(assert (=> b!1471476 (= e!825966 e!825969)))

(declare-fun res!999353 () Bool)

(assert (=> b!1471476 (=> (not res!999353) (not e!825969))))

(declare-fun lt!643252 () SeekEntryResult!12070)

(assert (=> b!1471476 (= res!999353 (= lt!643252 (Intermediate!12070 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1471476 (= lt!643252 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643248 mask!2687) lt!643248 lt!643251 mask!2687))))

(assert (=> b!1471476 (= lt!643248 (select (store (arr!47807 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1471477 () Bool)

(declare-fun res!999344 () Bool)

(assert (=> b!1471477 (=> (not res!999344) (not e!825970))))

(declare-datatypes ((List!34488 0))(
  ( (Nil!34485) (Cons!34484 (h!35840 (_ BitVec 64)) (t!49189 List!34488)) )
))
(declare-fun arrayNoDuplicates!0 (array!99053 (_ BitVec 32) List!34488) Bool)

(assert (=> b!1471477 (= res!999344 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34485))))

(declare-fun b!1471478 () Bool)

(assert (=> b!1471478 (= e!825969 (not true))))

(assert (=> b!1471478 e!825965))

(declare-fun res!999341 () Bool)

(assert (=> b!1471478 (=> (not res!999341) (not e!825965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99053 (_ BitVec 32)) Bool)

(assert (=> b!1471478 (= res!999341 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49428 0))(
  ( (Unit!49429) )
))
(declare-fun lt!643250 () Unit!49428)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99053 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49428)

(assert (=> b!1471478 (= lt!643250 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1471479 () Bool)

(declare-fun res!999346 () Bool)

(assert (=> b!1471479 (=> (not res!999346) (not e!825970))))

(assert (=> b!1471479 (= res!999346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1471480 () Bool)

(assert (=> b!1471480 (= e!825971 (= lt!643252 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643248 lt!643251 mask!2687)))))

(assert (= (and start!125802 res!999351) b!1471465))

(assert (= (and b!1471465 res!999347) b!1471472))

(assert (= (and b!1471472 res!999345) b!1471464))

(assert (= (and b!1471464 res!999340) b!1471479))

(assert (= (and b!1471479 res!999346) b!1471477))

(assert (= (and b!1471477 res!999344) b!1471474))

(assert (= (and b!1471474 res!999342) b!1471473))

(assert (= (and b!1471473 res!999350) b!1471466))

(assert (= (and b!1471466 res!999343) b!1471467))

(assert (= (and b!1471467 res!999348) b!1471476))

(assert (= (and b!1471476 res!999353) b!1471468))

(assert (= (and b!1471468 c!135578) b!1471480))

(assert (= (and b!1471468 (not c!135578)) b!1471471))

(assert (= (and b!1471468 res!999352) b!1471470))

(assert (= (and b!1471470 res!999354) b!1471478))

(assert (= (and b!1471478 res!999341) b!1471469))

(assert (= (and b!1471469 res!999349) b!1471475))

(declare-fun m!1358323 () Bool)

(assert (=> b!1471476 m!1358323))

(assert (=> b!1471476 m!1358323))

(declare-fun m!1358325 () Bool)

(assert (=> b!1471476 m!1358325))

(declare-fun m!1358327 () Bool)

(assert (=> b!1471476 m!1358327))

(declare-fun m!1358329 () Bool)

(assert (=> b!1471476 m!1358329))

(declare-fun m!1358331 () Bool)

(assert (=> b!1471466 m!1358331))

(assert (=> b!1471466 m!1358331))

(declare-fun m!1358333 () Bool)

(assert (=> b!1471466 m!1358333))

(assert (=> b!1471466 m!1358333))

(assert (=> b!1471466 m!1358331))

(declare-fun m!1358335 () Bool)

(assert (=> b!1471466 m!1358335))

(assert (=> b!1471473 m!1358327))

(declare-fun m!1358337 () Bool)

(assert (=> b!1471473 m!1358337))

(declare-fun m!1358339 () Bool)

(assert (=> b!1471475 m!1358339))

(assert (=> b!1471475 m!1358331))

(declare-fun m!1358341 () Bool)

(assert (=> start!125802 m!1358341))

(declare-fun m!1358343 () Bool)

(assert (=> start!125802 m!1358343))

(declare-fun m!1358345 () Bool)

(assert (=> b!1471480 m!1358345))

(assert (=> b!1471464 m!1358331))

(assert (=> b!1471464 m!1358331))

(declare-fun m!1358347 () Bool)

(assert (=> b!1471464 m!1358347))

(declare-fun m!1358349 () Bool)

(assert (=> b!1471479 m!1358349))

(assert (=> b!1471469 m!1358331))

(assert (=> b!1471469 m!1358331))

(declare-fun m!1358351 () Bool)

(assert (=> b!1471469 m!1358351))

(declare-fun m!1358353 () Bool)

(assert (=> b!1471472 m!1358353))

(assert (=> b!1471472 m!1358353))

(declare-fun m!1358355 () Bool)

(assert (=> b!1471472 m!1358355))

(declare-fun m!1358357 () Bool)

(assert (=> b!1471477 m!1358357))

(assert (=> b!1471467 m!1358331))

(assert (=> b!1471467 m!1358331))

(declare-fun m!1358359 () Bool)

(assert (=> b!1471467 m!1358359))

(declare-fun m!1358361 () Bool)

(assert (=> b!1471471 m!1358361))

(declare-fun m!1358363 () Bool)

(assert (=> b!1471471 m!1358363))

(declare-fun m!1358365 () Bool)

(assert (=> b!1471478 m!1358365))

(declare-fun m!1358367 () Bool)

(assert (=> b!1471478 m!1358367))

(check-sat (not start!125802) (not b!1471464) (not b!1471467) (not b!1471479) (not b!1471469) (not b!1471472) (not b!1471480) (not b!1471466) (not b!1471478) (not b!1471471) (not b!1471477) (not b!1471476))
(check-sat)
