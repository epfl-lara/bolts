; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125846 () Bool)

(assert start!125846)

(declare-fun res!1000338 () Bool)

(declare-fun e!826427 () Bool)

(assert (=> start!125846 (=> (not res!1000338) (not e!826427))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125846 (= res!1000338 (validMask!0 mask!2687))))

(assert (=> start!125846 e!826427))

(assert (=> start!125846 true))

(declare-datatypes ((array!99097 0))(
  ( (array!99098 (arr!47829 (Array (_ BitVec 32) (_ BitVec 64))) (size!48380 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99097)

(declare-fun array_inv!36774 (array!99097) Bool)

(assert (=> start!125846 (array_inv!36774 a!2862)))

(declare-fun b!1472586 () Bool)

(declare-fun res!1000331 () Bool)

(assert (=> b!1472586 (=> (not res!1000331) (not e!826427))))

(declare-datatypes ((List!34510 0))(
  ( (Nil!34507) (Cons!34506 (h!35862 (_ BitVec 64)) (t!49211 List!34510)) )
))
(declare-fun arrayNoDuplicates!0 (array!99097 (_ BitVec 32) List!34510) Bool)

(assert (=> b!1472586 (= res!1000331 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34507))))

(declare-fun b!1472587 () Bool)

(declare-fun res!1000336 () Bool)

(declare-fun e!826428 () Bool)

(assert (=> b!1472587 (=> (not res!1000336) (not e!826428))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12092 0))(
  ( (MissingZero!12092 (index!50759 (_ BitVec 32))) (Found!12092 (index!50760 (_ BitVec 32))) (Intermediate!12092 (undefined!12904 Bool) (index!50761 (_ BitVec 32)) (x!132338 (_ BitVec 32))) (Undefined!12092) (MissingVacant!12092 (index!50762 (_ BitVec 32))) )
))
(declare-fun lt!643582 () SeekEntryResult!12092)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99097 (_ BitVec 32)) SeekEntryResult!12092)

(assert (=> b!1472587 (= res!1000336 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47829 a!2862) j!93) a!2862 mask!2687) lt!643582))))

(declare-fun e!826430 () Bool)

(declare-fun lt!643579 () (_ BitVec 64))

(declare-fun lt!643581 () array!99097)

(declare-fun b!1472588 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99097 (_ BitVec 32)) SeekEntryResult!12092)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99097 (_ BitVec 32)) SeekEntryResult!12092)

(assert (=> b!1472588 (= e!826430 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643579 lt!643581 mask!2687) (seekEntryOrOpen!0 lt!643579 lt!643581 mask!2687)))))

(declare-fun b!1472589 () Bool)

(declare-fun res!1000332 () Bool)

(declare-fun e!826431 () Bool)

(assert (=> b!1472589 (=> (not res!1000332) (not e!826431))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1472589 (= res!1000332 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1472590 () Bool)

(declare-fun res!1000333 () Bool)

(assert (=> b!1472590 (=> (not res!1000333) (not e!826427))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1472590 (= res!1000333 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48380 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48380 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48380 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1472591 () Bool)

(assert (=> b!1472591 (= e!826431 (not true))))

(declare-fun e!826433 () Bool)

(assert (=> b!1472591 e!826433))

(declare-fun res!1000340 () Bool)

(assert (=> b!1472591 (=> (not res!1000340) (not e!826433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99097 (_ BitVec 32)) Bool)

(assert (=> b!1472591 (= res!1000340 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49472 0))(
  ( (Unit!49473) )
))
(declare-fun lt!643580 () Unit!49472)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99097 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49472)

(assert (=> b!1472591 (= lt!643580 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1472592 () Bool)

(declare-fun res!1000337 () Bool)

(assert (=> b!1472592 (=> (not res!1000337) (not e!826433))))

(assert (=> b!1472592 (= res!1000337 (= (seekEntryOrOpen!0 (select (arr!47829 a!2862) j!93) a!2862 mask!2687) (Found!12092 j!93)))))

(declare-fun b!1472593 () Bool)

(assert (=> b!1472593 (= e!826433 (or (= (select (arr!47829 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47829 a!2862) intermediateBeforeIndex!19) (select (arr!47829 a!2862) j!93))))))

(declare-fun b!1472594 () Bool)

(declare-fun res!1000344 () Bool)

(assert (=> b!1472594 (=> (not res!1000344) (not e!826431))))

(assert (=> b!1472594 (= res!1000344 e!826430)))

(declare-fun c!135644 () Bool)

(assert (=> b!1472594 (= c!135644 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472595 () Bool)

(declare-fun lt!643578 () SeekEntryResult!12092)

(assert (=> b!1472595 (= e!826430 (= lt!643578 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643579 lt!643581 mask!2687)))))

(declare-fun b!1472596 () Bool)

(declare-fun e!826432 () Bool)

(assert (=> b!1472596 (= e!826432 e!826428)))

(declare-fun res!1000342 () Bool)

(assert (=> b!1472596 (=> (not res!1000342) (not e!826428))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472596 (= res!1000342 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47829 a!2862) j!93) mask!2687) (select (arr!47829 a!2862) j!93) a!2862 mask!2687) lt!643582))))

(assert (=> b!1472596 (= lt!643582 (Intermediate!12092 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472597 () Bool)

(declare-fun res!1000343 () Bool)

(assert (=> b!1472597 (=> (not res!1000343) (not e!826427))))

(assert (=> b!1472597 (= res!1000343 (and (= (size!48380 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48380 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48380 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472598 () Bool)

(assert (=> b!1472598 (= e!826427 e!826432)))

(declare-fun res!1000335 () Bool)

(assert (=> b!1472598 (=> (not res!1000335) (not e!826432))))

(assert (=> b!1472598 (= res!1000335 (= (select (store (arr!47829 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472598 (= lt!643581 (array!99098 (store (arr!47829 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48380 a!2862)))))

(declare-fun b!1472599 () Bool)

(assert (=> b!1472599 (= e!826428 e!826431)))

(declare-fun res!1000339 () Bool)

(assert (=> b!1472599 (=> (not res!1000339) (not e!826431))))

(assert (=> b!1472599 (= res!1000339 (= lt!643578 (Intermediate!12092 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1472599 (= lt!643578 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643579 mask!2687) lt!643579 lt!643581 mask!2687))))

(assert (=> b!1472599 (= lt!643579 (select (store (arr!47829 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1472600 () Bool)

(declare-fun res!1000341 () Bool)

(assert (=> b!1472600 (=> (not res!1000341) (not e!826427))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472600 (= res!1000341 (validKeyInArray!0 (select (arr!47829 a!2862) i!1006)))))

(declare-fun b!1472601 () Bool)

(declare-fun res!1000334 () Bool)

(assert (=> b!1472601 (=> (not res!1000334) (not e!826427))))

(assert (=> b!1472601 (= res!1000334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472602 () Bool)

(declare-fun res!1000330 () Bool)

(assert (=> b!1472602 (=> (not res!1000330) (not e!826427))))

(assert (=> b!1472602 (= res!1000330 (validKeyInArray!0 (select (arr!47829 a!2862) j!93)))))

(assert (= (and start!125846 res!1000338) b!1472597))

(assert (= (and b!1472597 res!1000343) b!1472600))

(assert (= (and b!1472600 res!1000341) b!1472602))

(assert (= (and b!1472602 res!1000330) b!1472601))

(assert (= (and b!1472601 res!1000334) b!1472586))

(assert (= (and b!1472586 res!1000331) b!1472590))

(assert (= (and b!1472590 res!1000333) b!1472598))

(assert (= (and b!1472598 res!1000335) b!1472596))

(assert (= (and b!1472596 res!1000342) b!1472587))

(assert (= (and b!1472587 res!1000336) b!1472599))

(assert (= (and b!1472599 res!1000339) b!1472594))

(assert (= (and b!1472594 c!135644) b!1472595))

(assert (= (and b!1472594 (not c!135644)) b!1472588))

(assert (= (and b!1472594 res!1000344) b!1472589))

(assert (= (and b!1472589 res!1000332) b!1472591))

(assert (= (and b!1472591 res!1000340) b!1472592))

(assert (= (and b!1472592 res!1000337) b!1472593))

(declare-fun m!1359335 () Bool)

(assert (=> b!1472591 m!1359335))

(declare-fun m!1359337 () Bool)

(assert (=> b!1472591 m!1359337))

(declare-fun m!1359339 () Bool)

(assert (=> b!1472595 m!1359339))

(declare-fun m!1359341 () Bool)

(assert (=> b!1472592 m!1359341))

(assert (=> b!1472592 m!1359341))

(declare-fun m!1359343 () Bool)

(assert (=> b!1472592 m!1359343))

(assert (=> b!1472596 m!1359341))

(assert (=> b!1472596 m!1359341))

(declare-fun m!1359345 () Bool)

(assert (=> b!1472596 m!1359345))

(assert (=> b!1472596 m!1359345))

(assert (=> b!1472596 m!1359341))

(declare-fun m!1359347 () Bool)

(assert (=> b!1472596 m!1359347))

(declare-fun m!1359349 () Bool)

(assert (=> b!1472593 m!1359349))

(assert (=> b!1472593 m!1359341))

(declare-fun m!1359351 () Bool)

(assert (=> b!1472588 m!1359351))

(declare-fun m!1359353 () Bool)

(assert (=> b!1472588 m!1359353))

(assert (=> b!1472587 m!1359341))

(assert (=> b!1472587 m!1359341))

(declare-fun m!1359355 () Bool)

(assert (=> b!1472587 m!1359355))

(declare-fun m!1359357 () Bool)

(assert (=> start!125846 m!1359357))

(declare-fun m!1359359 () Bool)

(assert (=> start!125846 m!1359359))

(declare-fun m!1359361 () Bool)

(assert (=> b!1472601 m!1359361))

(declare-fun m!1359363 () Bool)

(assert (=> b!1472598 m!1359363))

(declare-fun m!1359365 () Bool)

(assert (=> b!1472598 m!1359365))

(assert (=> b!1472602 m!1359341))

(assert (=> b!1472602 m!1359341))

(declare-fun m!1359367 () Bool)

(assert (=> b!1472602 m!1359367))

(declare-fun m!1359369 () Bool)

(assert (=> b!1472599 m!1359369))

(assert (=> b!1472599 m!1359369))

(declare-fun m!1359371 () Bool)

(assert (=> b!1472599 m!1359371))

(assert (=> b!1472599 m!1359363))

(declare-fun m!1359373 () Bool)

(assert (=> b!1472599 m!1359373))

(declare-fun m!1359375 () Bool)

(assert (=> b!1472600 m!1359375))

(assert (=> b!1472600 m!1359375))

(declare-fun m!1359377 () Bool)

(assert (=> b!1472600 m!1359377))

(declare-fun m!1359379 () Bool)

(assert (=> b!1472586 m!1359379))

(push 1)

