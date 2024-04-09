; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124792 () Bool)

(assert start!124792)

(declare-fun b!1446517 () Bool)

(declare-fun res!978376 () Bool)

(declare-fun e!814730 () Bool)

(assert (=> b!1446517 (=> (not res!978376) (not e!814730))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98157 0))(
  ( (array!98158 (arr!47362 (Array (_ BitVec 32) (_ BitVec 64))) (size!47913 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98157)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1446517 (= res!978376 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47913 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47913 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47913 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446519 () Bool)

(declare-fun res!978370 () Bool)

(assert (=> b!1446519 (=> (not res!978370) (not e!814730))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1446519 (= res!978370 (and (= (size!47913 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47913 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47913 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!814732 () Bool)

(declare-fun b!1446520 () Bool)

(assert (=> b!1446520 (= e!814732 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1446521 () Bool)

(declare-fun e!814731 () Bool)

(declare-fun e!814729 () Bool)

(assert (=> b!1446521 (= e!814731 e!814729)))

(declare-fun res!978372 () Bool)

(assert (=> b!1446521 (=> res!978372 e!814729)))

(assert (=> b!1446521 (= res!978372 (or (and (= (select (arr!47362 a!2862) index!646) (select (store (arr!47362 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47362 a!2862) index!646) (select (arr!47362 a!2862) j!93))) (not (= (select (arr!47362 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1446522 () Bool)

(declare-fun res!978375 () Bool)

(declare-fun e!814735 () Bool)

(assert (=> b!1446522 (=> (not res!978375) (not e!814735))))

(assert (=> b!1446522 (= res!978375 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446523 () Bool)

(declare-fun e!814727 () Bool)

(assert (=> b!1446523 (= e!814727 true)))

(declare-datatypes ((SeekEntryResult!11637 0))(
  ( (MissingZero!11637 (index!48939 (_ BitVec 32))) (Found!11637 (index!48940 (_ BitVec 32))) (Intermediate!11637 (undefined!12449 Bool) (index!48941 (_ BitVec 32)) (x!130625 (_ BitVec 32))) (Undefined!11637) (MissingVacant!11637 (index!48942 (_ BitVec 32))) )
))
(declare-fun lt!634796 () SeekEntryResult!11637)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98157 (_ BitVec 32)) SeekEntryResult!11637)

(assert (=> b!1446523 (= lt!634796 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47362 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1446524 () Bool)

(declare-fun e!814736 () Bool)

(assert (=> b!1446524 (= e!814736 e!814735)))

(declare-fun res!978373 () Bool)

(assert (=> b!1446524 (=> (not res!978373) (not e!814735))))

(declare-fun lt!634792 () SeekEntryResult!11637)

(assert (=> b!1446524 (= res!978373 (= lt!634792 (Intermediate!11637 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!634793 () array!98157)

(declare-fun lt!634797 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98157 (_ BitVec 32)) SeekEntryResult!11637)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446524 (= lt!634792 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634797 mask!2687) lt!634797 lt!634793 mask!2687))))

(assert (=> b!1446524 (= lt!634797 (select (store (arr!47362 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1446525 () Bool)

(declare-fun res!978368 () Bool)

(assert (=> b!1446525 (=> (not res!978368) (not e!814730))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446525 (= res!978368 (validKeyInArray!0 (select (arr!47362 a!2862) i!1006)))))

(declare-fun b!1446526 () Bool)

(declare-fun res!978371 () Bool)

(assert (=> b!1446526 (=> (not res!978371) (not e!814735))))

(declare-fun e!814734 () Bool)

(assert (=> b!1446526 (= res!978371 e!814734)))

(declare-fun c!133589 () Bool)

(assert (=> b!1446526 (= c!133589 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1446527 () Bool)

(assert (=> b!1446527 (= e!814735 (not e!814727))))

(declare-fun res!978377 () Bool)

(assert (=> b!1446527 (=> res!978377 e!814727)))

(assert (=> b!1446527 (= res!978377 (or (and (= (select (arr!47362 a!2862) index!646) (select (store (arr!47362 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47362 a!2862) index!646) (select (arr!47362 a!2862) j!93))) (not (= (select (arr!47362 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47362 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1446527 e!814731))

(declare-fun res!978365 () Bool)

(assert (=> b!1446527 (=> (not res!978365) (not e!814731))))

(declare-fun lt!634798 () SeekEntryResult!11637)

(assert (=> b!1446527 (= res!978365 (and (= lt!634798 (Found!11637 j!93)) (or (= (select (arr!47362 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47362 a!2862) intermediateBeforeIndex!19) (select (arr!47362 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98157 (_ BitVec 32)) SeekEntryResult!11637)

(assert (=> b!1446527 (= lt!634798 (seekEntryOrOpen!0 (select (arr!47362 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98157 (_ BitVec 32)) Bool)

(assert (=> b!1446527 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48718 0))(
  ( (Unit!48719) )
))
(declare-fun lt!634795 () Unit!48718)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98157 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48718)

(assert (=> b!1446527 (= lt!634795 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446528 () Bool)

(declare-fun res!978378 () Bool)

(assert (=> b!1446528 (=> (not res!978378) (not e!814736))))

(declare-fun lt!634794 () SeekEntryResult!11637)

(assert (=> b!1446528 (= res!978378 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47362 a!2862) j!93) a!2862 mask!2687) lt!634794))))

(declare-fun b!1446518 () Bool)

(declare-fun res!978379 () Bool)

(assert (=> b!1446518 (=> (not res!978379) (not e!814730))))

(assert (=> b!1446518 (= res!978379 (validKeyInArray!0 (select (arr!47362 a!2862) j!93)))))

(declare-fun res!978369 () Bool)

(assert (=> start!124792 (=> (not res!978369) (not e!814730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124792 (= res!978369 (validMask!0 mask!2687))))

(assert (=> start!124792 e!814730))

(assert (=> start!124792 true))

(declare-fun array_inv!36307 (array!98157) Bool)

(assert (=> start!124792 (array_inv!36307 a!2862)))

(declare-fun b!1446529 () Bool)

(assert (=> b!1446529 (= e!814734 (= lt!634792 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634797 lt!634793 mask!2687)))))

(declare-fun b!1446530 () Bool)

(declare-fun res!978367 () Bool)

(assert (=> b!1446530 (=> (not res!978367) (not e!814730))))

(declare-datatypes ((List!34043 0))(
  ( (Nil!34040) (Cons!34039 (h!35389 (_ BitVec 64)) (t!48744 List!34043)) )
))
(declare-fun arrayNoDuplicates!0 (array!98157 (_ BitVec 32) List!34043) Bool)

(assert (=> b!1446530 (= res!978367 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34040))))

(declare-fun b!1446531 () Bool)

(assert (=> b!1446531 (= e!814734 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634797 lt!634793 mask!2687) (seekEntryOrOpen!0 lt!634797 lt!634793 mask!2687)))))

(declare-fun b!1446532 () Bool)

(assert (=> b!1446532 (= e!814729 e!814732)))

(declare-fun res!978374 () Bool)

(assert (=> b!1446532 (=> (not res!978374) (not e!814732))))

(assert (=> b!1446532 (= res!978374 (= lt!634798 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47362 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1446533 () Bool)

(declare-fun e!814733 () Bool)

(assert (=> b!1446533 (= e!814733 e!814736)))

(declare-fun res!978380 () Bool)

(assert (=> b!1446533 (=> (not res!978380) (not e!814736))))

(assert (=> b!1446533 (= res!978380 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47362 a!2862) j!93) mask!2687) (select (arr!47362 a!2862) j!93) a!2862 mask!2687) lt!634794))))

(assert (=> b!1446533 (= lt!634794 (Intermediate!11637 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446534 () Bool)

(declare-fun res!978381 () Bool)

(assert (=> b!1446534 (=> (not res!978381) (not e!814730))))

(assert (=> b!1446534 (= res!978381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446535 () Bool)

(assert (=> b!1446535 (= e!814730 e!814733)))

(declare-fun res!978366 () Bool)

(assert (=> b!1446535 (=> (not res!978366) (not e!814733))))

(assert (=> b!1446535 (= res!978366 (= (select (store (arr!47362 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1446535 (= lt!634793 (array!98158 (store (arr!47362 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47913 a!2862)))))

(assert (= (and start!124792 res!978369) b!1446519))

(assert (= (and b!1446519 res!978370) b!1446525))

(assert (= (and b!1446525 res!978368) b!1446518))

(assert (= (and b!1446518 res!978379) b!1446534))

(assert (= (and b!1446534 res!978381) b!1446530))

(assert (= (and b!1446530 res!978367) b!1446517))

(assert (= (and b!1446517 res!978376) b!1446535))

(assert (= (and b!1446535 res!978366) b!1446533))

(assert (= (and b!1446533 res!978380) b!1446528))

(assert (= (and b!1446528 res!978378) b!1446524))

(assert (= (and b!1446524 res!978373) b!1446526))

(assert (= (and b!1446526 c!133589) b!1446529))

(assert (= (and b!1446526 (not c!133589)) b!1446531))

(assert (= (and b!1446526 res!978371) b!1446522))

(assert (= (and b!1446522 res!978375) b!1446527))

(assert (= (and b!1446527 res!978365) b!1446521))

(assert (= (and b!1446521 (not res!978372)) b!1446532))

(assert (= (and b!1446532 res!978374) b!1446520))

(assert (= (and b!1446527 (not res!978377)) b!1446523))

(declare-fun m!1335435 () Bool)

(assert (=> b!1446528 m!1335435))

(assert (=> b!1446528 m!1335435))

(declare-fun m!1335437 () Bool)

(assert (=> b!1446528 m!1335437))

(declare-fun m!1335439 () Bool)

(assert (=> start!124792 m!1335439))

(declare-fun m!1335441 () Bool)

(assert (=> start!124792 m!1335441))

(assert (=> b!1446518 m!1335435))

(assert (=> b!1446518 m!1335435))

(declare-fun m!1335443 () Bool)

(assert (=> b!1446518 m!1335443))

(declare-fun m!1335445 () Bool)

(assert (=> b!1446535 m!1335445))

(declare-fun m!1335447 () Bool)

(assert (=> b!1446535 m!1335447))

(declare-fun m!1335449 () Bool)

(assert (=> b!1446530 m!1335449))

(assert (=> b!1446523 m!1335435))

(assert (=> b!1446523 m!1335435))

(declare-fun m!1335451 () Bool)

(assert (=> b!1446523 m!1335451))

(assert (=> b!1446532 m!1335435))

(assert (=> b!1446532 m!1335435))

(declare-fun m!1335453 () Bool)

(assert (=> b!1446532 m!1335453))

(declare-fun m!1335455 () Bool)

(assert (=> b!1446531 m!1335455))

(declare-fun m!1335457 () Bool)

(assert (=> b!1446531 m!1335457))

(declare-fun m!1335459 () Bool)

(assert (=> b!1446525 m!1335459))

(assert (=> b!1446525 m!1335459))

(declare-fun m!1335461 () Bool)

(assert (=> b!1446525 m!1335461))

(declare-fun m!1335463 () Bool)

(assert (=> b!1446521 m!1335463))

(assert (=> b!1446521 m!1335445))

(declare-fun m!1335465 () Bool)

(assert (=> b!1446521 m!1335465))

(assert (=> b!1446521 m!1335435))

(assert (=> b!1446533 m!1335435))

(assert (=> b!1446533 m!1335435))

(declare-fun m!1335467 () Bool)

(assert (=> b!1446533 m!1335467))

(assert (=> b!1446533 m!1335467))

(assert (=> b!1446533 m!1335435))

(declare-fun m!1335469 () Bool)

(assert (=> b!1446533 m!1335469))

(declare-fun m!1335471 () Bool)

(assert (=> b!1446534 m!1335471))

(declare-fun m!1335473 () Bool)

(assert (=> b!1446527 m!1335473))

(assert (=> b!1446527 m!1335445))

(declare-fun m!1335475 () Bool)

(assert (=> b!1446527 m!1335475))

(assert (=> b!1446527 m!1335465))

(assert (=> b!1446527 m!1335463))

(assert (=> b!1446527 m!1335435))

(declare-fun m!1335477 () Bool)

(assert (=> b!1446527 m!1335477))

(declare-fun m!1335479 () Bool)

(assert (=> b!1446527 m!1335479))

(assert (=> b!1446527 m!1335435))

(declare-fun m!1335481 () Bool)

(assert (=> b!1446524 m!1335481))

(assert (=> b!1446524 m!1335481))

(declare-fun m!1335483 () Bool)

(assert (=> b!1446524 m!1335483))

(assert (=> b!1446524 m!1335445))

(declare-fun m!1335485 () Bool)

(assert (=> b!1446524 m!1335485))

(declare-fun m!1335487 () Bool)

(assert (=> b!1446529 m!1335487))

(push 1)

