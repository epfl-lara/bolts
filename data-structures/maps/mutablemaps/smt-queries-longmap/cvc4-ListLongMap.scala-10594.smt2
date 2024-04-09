; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124748 () Bool)

(assert start!124748)

(declare-fun b!1445373 () Bool)

(declare-fun e!814236 () Bool)

(declare-fun e!814232 () Bool)

(assert (=> b!1445373 (= e!814236 e!814232)))

(declare-fun res!977367 () Bool)

(assert (=> b!1445373 (=> (not res!977367) (not e!814232))))

(declare-datatypes ((SeekEntryResult!11615 0))(
  ( (MissingZero!11615 (index!48851 (_ BitVec 32))) (Found!11615 (index!48852 (_ BitVec 32))) (Intermediate!11615 (undefined!12427 Bool) (index!48853 (_ BitVec 32)) (x!130539 (_ BitVec 32))) (Undefined!11615) (MissingVacant!11615 (index!48854 (_ BitVec 32))) )
))
(declare-fun lt!634443 () SeekEntryResult!11615)

(declare-datatypes ((array!98113 0))(
  ( (array!98114 (arr!47340 (Array (_ BitVec 32) (_ BitVec 64))) (size!47891 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98113)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98113 (_ BitVec 32)) SeekEntryResult!11615)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445373 (= res!977367 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47340 a!2862) j!93) mask!2687) (select (arr!47340 a!2862) j!93) a!2862 mask!2687) lt!634443))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1445373 (= lt!634443 (Intermediate!11615 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!814234 () Bool)

(declare-fun b!1445374 () Bool)

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1445374 (= e!814234 (not (or (and (= (select (arr!47340 a!2862) index!646) (select (store (arr!47340 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47340 a!2862) index!646) (select (arr!47340 a!2862) j!93))) (not (= (select (arr!47340 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(declare-fun e!814238 () Bool)

(assert (=> b!1445374 e!814238))

(declare-fun res!977361 () Bool)

(assert (=> b!1445374 (=> (not res!977361) (not e!814238))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98113 (_ BitVec 32)) Bool)

(assert (=> b!1445374 (= res!977361 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48674 0))(
  ( (Unit!48675) )
))
(declare-fun lt!634442 () Unit!48674)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98113 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48674)

(assert (=> b!1445374 (= lt!634442 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1445375 () Bool)

(declare-fun res!977354 () Bool)

(declare-fun e!814237 () Bool)

(assert (=> b!1445375 (=> (not res!977354) (not e!814237))))

(declare-datatypes ((List!34021 0))(
  ( (Nil!34018) (Cons!34017 (h!35367 (_ BitVec 64)) (t!48722 List!34021)) )
))
(declare-fun arrayNoDuplicates!0 (array!98113 (_ BitVec 32) List!34021) Bool)

(assert (=> b!1445375 (= res!977354 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34018))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1445376 () Bool)

(declare-fun e!814235 () Bool)

(declare-fun lt!634441 () array!98113)

(declare-fun lt!634440 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98113 (_ BitVec 32)) SeekEntryResult!11615)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98113 (_ BitVec 32)) SeekEntryResult!11615)

(assert (=> b!1445376 (= e!814235 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634440 lt!634441 mask!2687) (seekEntryOrOpen!0 lt!634440 lt!634441 mask!2687)))))

(declare-fun b!1445377 () Bool)

(declare-fun res!977358 () Bool)

(assert (=> b!1445377 (=> (not res!977358) (not e!814232))))

(assert (=> b!1445377 (= res!977358 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47340 a!2862) j!93) a!2862 mask!2687) lt!634443))))

(declare-fun b!1445378 () Bool)

(assert (=> b!1445378 (= e!814238 (or (= (select (arr!47340 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47340 a!2862) intermediateBeforeIndex!19) (select (arr!47340 a!2862) j!93))))))

(declare-fun b!1445379 () Bool)

(assert (=> b!1445379 (= e!814232 e!814234)))

(declare-fun res!977363 () Bool)

(assert (=> b!1445379 (=> (not res!977363) (not e!814234))))

(declare-fun lt!634444 () SeekEntryResult!11615)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1445379 (= res!977363 (= lt!634444 (Intermediate!11615 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1445379 (= lt!634444 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634440 mask!2687) lt!634440 lt!634441 mask!2687))))

(assert (=> b!1445379 (= lt!634440 (select (store (arr!47340 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445380 () Bool)

(declare-fun res!977359 () Bool)

(assert (=> b!1445380 (=> (not res!977359) (not e!814234))))

(assert (=> b!1445380 (= res!977359 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445381 () Bool)

(declare-fun res!977356 () Bool)

(assert (=> b!1445381 (=> (not res!977356) (not e!814234))))

(assert (=> b!1445381 (= res!977356 e!814235)))

(declare-fun c!133523 () Bool)

(assert (=> b!1445381 (= c!133523 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445382 () Bool)

(declare-fun res!977353 () Bool)

(assert (=> b!1445382 (=> (not res!977353) (not e!814237))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445382 (= res!977353 (validKeyInArray!0 (select (arr!47340 a!2862) i!1006)))))

(declare-fun res!977355 () Bool)

(assert (=> start!124748 (=> (not res!977355) (not e!814237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124748 (= res!977355 (validMask!0 mask!2687))))

(assert (=> start!124748 e!814237))

(assert (=> start!124748 true))

(declare-fun array_inv!36285 (array!98113) Bool)

(assert (=> start!124748 (array_inv!36285 a!2862)))

(declare-fun b!1445383 () Bool)

(declare-fun res!977366 () Bool)

(assert (=> b!1445383 (=> (not res!977366) (not e!814237))))

(assert (=> b!1445383 (= res!977366 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47891 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47891 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47891 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445384 () Bool)

(declare-fun res!977357 () Bool)

(assert (=> b!1445384 (=> (not res!977357) (not e!814238))))

(assert (=> b!1445384 (= res!977357 (= (seekEntryOrOpen!0 (select (arr!47340 a!2862) j!93) a!2862 mask!2687) (Found!11615 j!93)))))

(declare-fun b!1445385 () Bool)

(declare-fun res!977362 () Bool)

(assert (=> b!1445385 (=> (not res!977362) (not e!814237))))

(assert (=> b!1445385 (= res!977362 (validKeyInArray!0 (select (arr!47340 a!2862) j!93)))))

(declare-fun b!1445386 () Bool)

(declare-fun res!977364 () Bool)

(assert (=> b!1445386 (=> (not res!977364) (not e!814237))))

(assert (=> b!1445386 (= res!977364 (and (= (size!47891 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47891 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47891 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445387 () Bool)

(assert (=> b!1445387 (= e!814235 (= lt!634444 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634440 lt!634441 mask!2687)))))

(declare-fun b!1445388 () Bool)

(assert (=> b!1445388 (= e!814237 e!814236)))

(declare-fun res!977360 () Bool)

(assert (=> b!1445388 (=> (not res!977360) (not e!814236))))

(assert (=> b!1445388 (= res!977360 (= (select (store (arr!47340 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1445388 (= lt!634441 (array!98114 (store (arr!47340 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47891 a!2862)))))

(declare-fun b!1445389 () Bool)

(declare-fun res!977365 () Bool)

(assert (=> b!1445389 (=> (not res!977365) (not e!814237))))

(assert (=> b!1445389 (= res!977365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124748 res!977355) b!1445386))

(assert (= (and b!1445386 res!977364) b!1445382))

(assert (= (and b!1445382 res!977353) b!1445385))

(assert (= (and b!1445385 res!977362) b!1445389))

(assert (= (and b!1445389 res!977365) b!1445375))

(assert (= (and b!1445375 res!977354) b!1445383))

(assert (= (and b!1445383 res!977366) b!1445388))

(assert (= (and b!1445388 res!977360) b!1445373))

(assert (= (and b!1445373 res!977367) b!1445377))

(assert (= (and b!1445377 res!977358) b!1445379))

(assert (= (and b!1445379 res!977363) b!1445381))

(assert (= (and b!1445381 c!133523) b!1445387))

(assert (= (and b!1445381 (not c!133523)) b!1445376))

(assert (= (and b!1445381 res!977356) b!1445380))

(assert (= (and b!1445380 res!977359) b!1445374))

(assert (= (and b!1445374 res!977361) b!1445384))

(assert (= (and b!1445384 res!977357) b!1445378))

(declare-fun m!1334383 () Bool)

(assert (=> b!1445378 m!1334383))

(declare-fun m!1334385 () Bool)

(assert (=> b!1445378 m!1334385))

(declare-fun m!1334387 () Bool)

(assert (=> b!1445389 m!1334387))

(assert (=> b!1445384 m!1334385))

(assert (=> b!1445384 m!1334385))

(declare-fun m!1334389 () Bool)

(assert (=> b!1445384 m!1334389))

(declare-fun m!1334391 () Bool)

(assert (=> b!1445388 m!1334391))

(declare-fun m!1334393 () Bool)

(assert (=> b!1445388 m!1334393))

(declare-fun m!1334395 () Bool)

(assert (=> b!1445376 m!1334395))

(declare-fun m!1334397 () Bool)

(assert (=> b!1445376 m!1334397))

(declare-fun m!1334399 () Bool)

(assert (=> b!1445379 m!1334399))

(assert (=> b!1445379 m!1334399))

(declare-fun m!1334401 () Bool)

(assert (=> b!1445379 m!1334401))

(assert (=> b!1445379 m!1334391))

(declare-fun m!1334403 () Bool)

(assert (=> b!1445379 m!1334403))

(assert (=> b!1445385 m!1334385))

(assert (=> b!1445385 m!1334385))

(declare-fun m!1334405 () Bool)

(assert (=> b!1445385 m!1334405))

(assert (=> b!1445373 m!1334385))

(assert (=> b!1445373 m!1334385))

(declare-fun m!1334407 () Bool)

(assert (=> b!1445373 m!1334407))

(assert (=> b!1445373 m!1334407))

(assert (=> b!1445373 m!1334385))

(declare-fun m!1334409 () Bool)

(assert (=> b!1445373 m!1334409))

(declare-fun m!1334411 () Bool)

(assert (=> b!1445387 m!1334411))

(assert (=> b!1445377 m!1334385))

(assert (=> b!1445377 m!1334385))

(declare-fun m!1334413 () Bool)

(assert (=> b!1445377 m!1334413))

(declare-fun m!1334415 () Bool)

(assert (=> b!1445374 m!1334415))

(assert (=> b!1445374 m!1334391))

(declare-fun m!1334417 () Bool)

(assert (=> b!1445374 m!1334417))

(declare-fun m!1334419 () Bool)

(assert (=> b!1445374 m!1334419))

(declare-fun m!1334421 () Bool)

(assert (=> b!1445374 m!1334421))

(assert (=> b!1445374 m!1334385))

(declare-fun m!1334423 () Bool)

(assert (=> b!1445375 m!1334423))

(declare-fun m!1334425 () Bool)

(assert (=> b!1445382 m!1334425))

(assert (=> b!1445382 m!1334425))

(declare-fun m!1334427 () Bool)

(assert (=> b!1445382 m!1334427))

(declare-fun m!1334429 () Bool)

(assert (=> start!124748 m!1334429))

(declare-fun m!1334431 () Bool)

(assert (=> start!124748 m!1334431))

(push 1)

(assert (not b!1445374))

(assert (not b!1445389))

(assert (not b!1445375))

(assert (not b!1445379))

(assert (not b!1445373))

