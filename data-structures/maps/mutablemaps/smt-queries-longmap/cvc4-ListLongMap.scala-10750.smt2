; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125804 () Bool)

(assert start!125804)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!99055 0))(
  ( (array!99056 (arr!47808 (Array (_ BitVec 32) (_ BitVec 64))) (size!48359 (_ BitVec 32))) )
))
(declare-fun lt!643267 () array!99055)

(declare-fun lt!643266 () (_ BitVec 64))

(declare-fun e!825991 () Bool)

(declare-fun b!1471515 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12071 0))(
  ( (MissingZero!12071 (index!50675 (_ BitVec 32))) (Found!12071 (index!50676 (_ BitVec 32))) (Intermediate!12071 (undefined!12883 Bool) (index!50677 (_ BitVec 32)) (x!132261 (_ BitVec 32))) (Undefined!12071) (MissingVacant!12071 (index!50678 (_ BitVec 32))) )
))
(declare-fun lt!643263 () SeekEntryResult!12071)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99055 (_ BitVec 32)) SeekEntryResult!12071)

(assert (=> b!1471515 (= e!825991 (= lt!643263 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643266 lt!643267 mask!2687)))))

(declare-fun res!999386 () Bool)

(declare-fun e!825989 () Bool)

(assert (=> start!125804 (=> (not res!999386) (not e!825989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125804 (= res!999386 (validMask!0 mask!2687))))

(assert (=> start!125804 e!825989))

(assert (=> start!125804 true))

(declare-fun a!2862 () array!99055)

(declare-fun array_inv!36753 (array!99055) Bool)

(assert (=> start!125804 (array_inv!36753 a!2862)))

(declare-fun b!1471516 () Bool)

(declare-fun e!825990 () Bool)

(assert (=> b!1471516 (= e!825990 (not true))))

(declare-fun e!825992 () Bool)

(assert (=> b!1471516 e!825992))

(declare-fun res!999399 () Bool)

(assert (=> b!1471516 (=> (not res!999399) (not e!825992))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99055 (_ BitVec 32)) Bool)

(assert (=> b!1471516 (= res!999399 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49430 0))(
  ( (Unit!49431) )
))
(declare-fun lt!643265 () Unit!49430)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99055 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49430)

(assert (=> b!1471516 (= lt!643265 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1471517 () Bool)

(declare-fun res!999397 () Bool)

(assert (=> b!1471517 (=> (not res!999397) (not e!825990))))

(assert (=> b!1471517 (= res!999397 e!825991)))

(declare-fun c!135581 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1471517 (= c!135581 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1471518 () Bool)

(declare-fun res!999389 () Bool)

(assert (=> b!1471518 (=> (not res!999389) (not e!825992))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99055 (_ BitVec 32)) SeekEntryResult!12071)

(assert (=> b!1471518 (= res!999389 (= (seekEntryOrOpen!0 (select (arr!47808 a!2862) j!93) a!2862 mask!2687) (Found!12071 j!93)))))

(declare-fun b!1471519 () Bool)

(declare-fun res!999391 () Bool)

(assert (=> b!1471519 (=> (not res!999391) (not e!825989))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1471519 (= res!999391 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48359 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48359 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48359 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1471520 () Bool)

(declare-fun res!999396 () Bool)

(assert (=> b!1471520 (=> (not res!999396) (not e!825989))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1471520 (= res!999396 (validKeyInArray!0 (select (arr!47808 a!2862) i!1006)))))

(declare-fun b!1471521 () Bool)

(declare-fun res!999393 () Bool)

(assert (=> b!1471521 (=> (not res!999393) (not e!825989))))

(assert (=> b!1471521 (= res!999393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1471522 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99055 (_ BitVec 32)) SeekEntryResult!12071)

(assert (=> b!1471522 (= e!825991 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643266 lt!643267 mask!2687) (seekEntryOrOpen!0 lt!643266 lt!643267 mask!2687)))))

(declare-fun b!1471523 () Bool)

(declare-fun e!825986 () Bool)

(assert (=> b!1471523 (= e!825989 e!825986)))

(declare-fun res!999390 () Bool)

(assert (=> b!1471523 (=> (not res!999390) (not e!825986))))

(assert (=> b!1471523 (= res!999390 (= (select (store (arr!47808 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471523 (= lt!643267 (array!99056 (store (arr!47808 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48359 a!2862)))))

(declare-fun b!1471524 () Bool)

(assert (=> b!1471524 (= e!825992 (or (= (select (arr!47808 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47808 a!2862) intermediateBeforeIndex!19) (select (arr!47808 a!2862) j!93))))))

(declare-fun b!1471525 () Bool)

(declare-fun e!825988 () Bool)

(assert (=> b!1471525 (= e!825986 e!825988)))

(declare-fun res!999398 () Bool)

(assert (=> b!1471525 (=> (not res!999398) (not e!825988))))

(declare-fun lt!643264 () SeekEntryResult!12071)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471525 (= res!999398 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47808 a!2862) j!93) mask!2687) (select (arr!47808 a!2862) j!93) a!2862 mask!2687) lt!643264))))

(assert (=> b!1471525 (= lt!643264 (Intermediate!12071 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1471526 () Bool)

(declare-fun res!999392 () Bool)

(assert (=> b!1471526 (=> (not res!999392) (not e!825990))))

(assert (=> b!1471526 (= res!999392 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1471527 () Bool)

(declare-fun res!999395 () Bool)

(assert (=> b!1471527 (=> (not res!999395) (not e!825989))))

(assert (=> b!1471527 (= res!999395 (and (= (size!48359 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48359 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48359 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1471528 () Bool)

(assert (=> b!1471528 (= e!825988 e!825990)))

(declare-fun res!999388 () Bool)

(assert (=> b!1471528 (=> (not res!999388) (not e!825990))))

(assert (=> b!1471528 (= res!999388 (= lt!643263 (Intermediate!12071 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1471528 (= lt!643263 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643266 mask!2687) lt!643266 lt!643267 mask!2687))))

(assert (=> b!1471528 (= lt!643266 (select (store (arr!47808 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1471529 () Bool)

(declare-fun res!999385 () Bool)

(assert (=> b!1471529 (=> (not res!999385) (not e!825989))))

(assert (=> b!1471529 (= res!999385 (validKeyInArray!0 (select (arr!47808 a!2862) j!93)))))

(declare-fun b!1471530 () Bool)

(declare-fun res!999394 () Bool)

(assert (=> b!1471530 (=> (not res!999394) (not e!825988))))

(assert (=> b!1471530 (= res!999394 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47808 a!2862) j!93) a!2862 mask!2687) lt!643264))))

(declare-fun b!1471531 () Bool)

(declare-fun res!999387 () Bool)

(assert (=> b!1471531 (=> (not res!999387) (not e!825989))))

(declare-datatypes ((List!34489 0))(
  ( (Nil!34486) (Cons!34485 (h!35841 (_ BitVec 64)) (t!49190 List!34489)) )
))
(declare-fun arrayNoDuplicates!0 (array!99055 (_ BitVec 32) List!34489) Bool)

(assert (=> b!1471531 (= res!999387 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34486))))

(assert (= (and start!125804 res!999386) b!1471527))

(assert (= (and b!1471527 res!999395) b!1471520))

(assert (= (and b!1471520 res!999396) b!1471529))

(assert (= (and b!1471529 res!999385) b!1471521))

(assert (= (and b!1471521 res!999393) b!1471531))

(assert (= (and b!1471531 res!999387) b!1471519))

(assert (= (and b!1471519 res!999391) b!1471523))

(assert (= (and b!1471523 res!999390) b!1471525))

(assert (= (and b!1471525 res!999398) b!1471530))

(assert (= (and b!1471530 res!999394) b!1471528))

(assert (= (and b!1471528 res!999388) b!1471517))

(assert (= (and b!1471517 c!135581) b!1471515))

(assert (= (and b!1471517 (not c!135581)) b!1471522))

(assert (= (and b!1471517 res!999397) b!1471526))

(assert (= (and b!1471526 res!999392) b!1471516))

(assert (= (and b!1471516 res!999399) b!1471518))

(assert (= (and b!1471518 res!999389) b!1471524))

(declare-fun m!1358369 () Bool)

(assert (=> b!1471530 m!1358369))

(assert (=> b!1471530 m!1358369))

(declare-fun m!1358371 () Bool)

(assert (=> b!1471530 m!1358371))

(declare-fun m!1358373 () Bool)

(assert (=> b!1471515 m!1358373))

(declare-fun m!1358375 () Bool)

(assert (=> b!1471521 m!1358375))

(declare-fun m!1358377 () Bool)

(assert (=> b!1471522 m!1358377))

(declare-fun m!1358379 () Bool)

(assert (=> b!1471522 m!1358379))

(declare-fun m!1358381 () Bool)

(assert (=> b!1471528 m!1358381))

(assert (=> b!1471528 m!1358381))

(declare-fun m!1358383 () Bool)

(assert (=> b!1471528 m!1358383))

(declare-fun m!1358385 () Bool)

(assert (=> b!1471528 m!1358385))

(declare-fun m!1358387 () Bool)

(assert (=> b!1471528 m!1358387))

(assert (=> b!1471518 m!1358369))

(assert (=> b!1471518 m!1358369))

(declare-fun m!1358389 () Bool)

(assert (=> b!1471518 m!1358389))

(declare-fun m!1358391 () Bool)

(assert (=> start!125804 m!1358391))

(declare-fun m!1358393 () Bool)

(assert (=> start!125804 m!1358393))

(declare-fun m!1358395 () Bool)

(assert (=> b!1471516 m!1358395))

(declare-fun m!1358397 () Bool)

(assert (=> b!1471516 m!1358397))

(assert (=> b!1471525 m!1358369))

(assert (=> b!1471525 m!1358369))

(declare-fun m!1358399 () Bool)

(assert (=> b!1471525 m!1358399))

(assert (=> b!1471525 m!1358399))

(assert (=> b!1471525 m!1358369))

(declare-fun m!1358401 () Bool)

(assert (=> b!1471525 m!1358401))

(declare-fun m!1358403 () Bool)

(assert (=> b!1471520 m!1358403))

(assert (=> b!1471520 m!1358403))

(declare-fun m!1358405 () Bool)

(assert (=> b!1471520 m!1358405))

(assert (=> b!1471523 m!1358385))

(declare-fun m!1358407 () Bool)

(assert (=> b!1471523 m!1358407))

(declare-fun m!1358409 () Bool)

(assert (=> b!1471524 m!1358409))

(assert (=> b!1471524 m!1358369))

(declare-fun m!1358411 () Bool)

(assert (=> b!1471531 m!1358411))

(assert (=> b!1471529 m!1358369))

(assert (=> b!1471529 m!1358369))

(declare-fun m!1358413 () Bool)

(assert (=> b!1471529 m!1358413))

(push 1)

