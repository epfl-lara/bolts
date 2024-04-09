; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125408 () Bool)

(assert start!125408)

(declare-fun lt!641378 () (_ BitVec 64))

(declare-fun b!1465466 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98773 0))(
  ( (array!98774 (arr!47670 (Array (_ BitVec 32) (_ BitVec 64))) (size!48221 (_ BitVec 32))) )
))
(declare-fun lt!641377 () array!98773)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!823470 () Bool)

(declare-fun lt!641382 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11945 0))(
  ( (MissingZero!11945 (index!50171 (_ BitVec 32))) (Found!11945 (index!50172 (_ BitVec 32))) (Intermediate!11945 (undefined!12757 Bool) (index!50173 (_ BitVec 32)) (x!131749 (_ BitVec 32))) (Undefined!11945) (MissingVacant!11945 (index!50174 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98773 (_ BitVec 32)) SeekEntryResult!11945)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98773 (_ BitVec 32)) SeekEntryResult!11945)

(assert (=> b!1465466 (= e!823470 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641382 intermediateAfterIndex!19 lt!641378 lt!641377 mask!2687) (seekEntryOrOpen!0 lt!641378 lt!641377 mask!2687))))))

(declare-fun b!1465467 () Bool)

(declare-fun res!994457 () Bool)

(declare-fun e!823471 () Bool)

(assert (=> b!1465467 (=> (not res!994457) (not e!823471))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun a!2862 () array!98773)

(assert (=> b!1465467 (= res!994457 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48221 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48221 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48221 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465468 () Bool)

(declare-fun e!823464 () Bool)

(declare-fun e!823465 () Bool)

(assert (=> b!1465468 (= e!823464 e!823465)))

(declare-fun res!994455 () Bool)

(assert (=> b!1465468 (=> (not res!994455) (not e!823465))))

(declare-fun lt!641380 () SeekEntryResult!11945)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98773 (_ BitVec 32)) SeekEntryResult!11945)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465468 (= res!994455 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47670 a!2862) j!93) mask!2687) (select (arr!47670 a!2862) j!93) a!2862 mask!2687) lt!641380))))

(assert (=> b!1465468 (= lt!641380 (Intermediate!11945 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1465469 () Bool)

(declare-fun e!823472 () Bool)

(assert (=> b!1465469 (= e!823472 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641378 lt!641377 mask!2687) (seekEntryOrOpen!0 lt!641378 lt!641377 mask!2687)))))

(declare-fun lt!641381 () SeekEntryResult!11945)

(declare-fun b!1465470 () Bool)

(assert (=> b!1465470 (= e!823470 (not (= lt!641381 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641382 lt!641378 lt!641377 mask!2687))))))

(declare-fun b!1465471 () Bool)

(declare-fun res!994444 () Bool)

(declare-fun e!823467 () Bool)

(assert (=> b!1465471 (=> res!994444 e!823467)))

(assert (=> b!1465471 (= res!994444 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641382 (select (arr!47670 a!2862) j!93) a!2862 mask!2687) lt!641380)))))

(declare-fun b!1465472 () Bool)

(declare-fun e!823463 () Bool)

(assert (=> b!1465472 (= e!823465 e!823463)))

(declare-fun res!994441 () Bool)

(assert (=> b!1465472 (=> (not res!994441) (not e!823463))))

(assert (=> b!1465472 (= res!994441 (= lt!641381 (Intermediate!11945 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1465472 (= lt!641381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641378 mask!2687) lt!641378 lt!641377 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1465472 (= lt!641378 (select (store (arr!47670 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1465473 () Bool)

(assert (=> b!1465473 (= e!823471 e!823464)))

(declare-fun res!994449 () Bool)

(assert (=> b!1465473 (=> (not res!994449) (not e!823464))))

(assert (=> b!1465473 (= res!994449 (= (select (store (arr!47670 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1465473 (= lt!641377 (array!98774 (store (arr!47670 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48221 a!2862)))))

(declare-fun b!1465474 () Bool)

(declare-fun res!994445 () Bool)

(assert (=> b!1465474 (=> (not res!994445) (not e!823463))))

(assert (=> b!1465474 (= res!994445 e!823472)))

(declare-fun c!135025 () Bool)

(assert (=> b!1465474 (= c!135025 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1465475 () Bool)

(declare-fun res!994458 () Bool)

(assert (=> b!1465475 (=> (not res!994458) (not e!823471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98773 (_ BitVec 32)) Bool)

(assert (=> b!1465475 (= res!994458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465476 () Bool)

(declare-fun res!994448 () Bool)

(assert (=> b!1465476 (=> (not res!994448) (not e!823471))))

(assert (=> b!1465476 (= res!994448 (and (= (size!48221 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48221 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48221 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1465477 () Bool)

(declare-fun res!994447 () Bool)

(assert (=> b!1465477 (=> (not res!994447) (not e!823471))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465477 (= res!994447 (validKeyInArray!0 (select (arr!47670 a!2862) j!93)))))

(declare-fun b!1465478 () Bool)

(declare-fun res!994443 () Bool)

(assert (=> b!1465478 (=> (not res!994443) (not e!823471))))

(declare-datatypes ((List!34351 0))(
  ( (Nil!34348) (Cons!34347 (h!35697 (_ BitVec 64)) (t!49052 List!34351)) )
))
(declare-fun arrayNoDuplicates!0 (array!98773 (_ BitVec 32) List!34351) Bool)

(assert (=> b!1465478 (= res!994443 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34348))))

(declare-fun b!1465465 () Bool)

(assert (=> b!1465465 (= e!823467 true)))

(declare-fun lt!641379 () Bool)

(assert (=> b!1465465 (= lt!641379 e!823470)))

(declare-fun c!135026 () Bool)

(assert (=> b!1465465 (= c!135026 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun res!994450 () Bool)

(assert (=> start!125408 (=> (not res!994450) (not e!823471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125408 (= res!994450 (validMask!0 mask!2687))))

(assert (=> start!125408 e!823471))

(assert (=> start!125408 true))

(declare-fun array_inv!36615 (array!98773) Bool)

(assert (=> start!125408 (array_inv!36615 a!2862)))

(declare-fun b!1465479 () Bool)

(declare-fun e!823466 () Bool)

(assert (=> b!1465479 (= e!823466 e!823467)))

(declare-fun res!994446 () Bool)

(assert (=> b!1465479 (=> res!994446 e!823467)))

(assert (=> b!1465479 (= res!994446 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641382 #b00000000000000000000000000000000) (bvsge lt!641382 (size!48221 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465479 (= lt!641382 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun e!823468 () Bool)

(declare-fun b!1465480 () Bool)

(assert (=> b!1465480 (= e!823468 (or (= (select (arr!47670 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47670 a!2862) intermediateBeforeIndex!19) (select (arr!47670 a!2862) j!93))))))

(declare-fun b!1465481 () Bool)

(declare-fun res!994452 () Bool)

(assert (=> b!1465481 (=> (not res!994452) (not e!823471))))

(assert (=> b!1465481 (= res!994452 (validKeyInArray!0 (select (arr!47670 a!2862) i!1006)))))

(declare-fun b!1465482 () Bool)

(assert (=> b!1465482 (= e!823472 (= lt!641381 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641378 lt!641377 mask!2687)))))

(declare-fun b!1465483 () Bool)

(declare-fun res!994442 () Bool)

(assert (=> b!1465483 (=> (not res!994442) (not e!823463))))

(assert (=> b!1465483 (= res!994442 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465484 () Bool)

(declare-fun res!994456 () Bool)

(assert (=> b!1465484 (=> (not res!994456) (not e!823468))))

(assert (=> b!1465484 (= res!994456 (= (seekEntryOrOpen!0 (select (arr!47670 a!2862) j!93) a!2862 mask!2687) (Found!11945 j!93)))))

(declare-fun b!1465485 () Bool)

(assert (=> b!1465485 (= e!823463 (not e!823466))))

(declare-fun res!994451 () Bool)

(assert (=> b!1465485 (=> res!994451 e!823466)))

(assert (=> b!1465485 (= res!994451 (or (and (= (select (arr!47670 a!2862) index!646) (select (store (arr!47670 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47670 a!2862) index!646) (select (arr!47670 a!2862) j!93))) (= (select (arr!47670 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1465485 e!823468))

(declare-fun res!994454 () Bool)

(assert (=> b!1465485 (=> (not res!994454) (not e!823468))))

(assert (=> b!1465485 (= res!994454 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49334 0))(
  ( (Unit!49335) )
))
(declare-fun lt!641383 () Unit!49334)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98773 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49334)

(assert (=> b!1465485 (= lt!641383 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1465486 () Bool)

(declare-fun res!994453 () Bool)

(assert (=> b!1465486 (=> (not res!994453) (not e!823465))))

(assert (=> b!1465486 (= res!994453 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47670 a!2862) j!93) a!2862 mask!2687) lt!641380))))

(assert (= (and start!125408 res!994450) b!1465476))

(assert (= (and b!1465476 res!994448) b!1465481))

(assert (= (and b!1465481 res!994452) b!1465477))

(assert (= (and b!1465477 res!994447) b!1465475))

(assert (= (and b!1465475 res!994458) b!1465478))

(assert (= (and b!1465478 res!994443) b!1465467))

(assert (= (and b!1465467 res!994457) b!1465473))

(assert (= (and b!1465473 res!994449) b!1465468))

(assert (= (and b!1465468 res!994455) b!1465486))

(assert (= (and b!1465486 res!994453) b!1465472))

(assert (= (and b!1465472 res!994441) b!1465474))

(assert (= (and b!1465474 c!135025) b!1465482))

(assert (= (and b!1465474 (not c!135025)) b!1465469))

(assert (= (and b!1465474 res!994445) b!1465483))

(assert (= (and b!1465483 res!994442) b!1465485))

(assert (= (and b!1465485 res!994454) b!1465484))

(assert (= (and b!1465484 res!994456) b!1465480))

(assert (= (and b!1465485 (not res!994451)) b!1465479))

(assert (= (and b!1465479 (not res!994446)) b!1465471))

(assert (= (and b!1465471 (not res!994444)) b!1465465))

(assert (= (and b!1465465 c!135026) b!1465470))

(assert (= (and b!1465465 (not c!135026)) b!1465466))

(declare-fun m!1352603 () Bool)

(assert (=> b!1465475 m!1352603))

(declare-fun m!1352605 () Bool)

(assert (=> b!1465479 m!1352605))

(declare-fun m!1352607 () Bool)

(assert (=> b!1465466 m!1352607))

(declare-fun m!1352609 () Bool)

(assert (=> b!1465466 m!1352609))

(declare-fun m!1352611 () Bool)

(assert (=> b!1465482 m!1352611))

(declare-fun m!1352613 () Bool)

(assert (=> b!1465484 m!1352613))

(assert (=> b!1465484 m!1352613))

(declare-fun m!1352615 () Bool)

(assert (=> b!1465484 m!1352615))

(declare-fun m!1352617 () Bool)

(assert (=> b!1465473 m!1352617))

(declare-fun m!1352619 () Bool)

(assert (=> b!1465473 m!1352619))

(declare-fun m!1352621 () Bool)

(assert (=> b!1465470 m!1352621))

(assert (=> b!1465468 m!1352613))

(assert (=> b!1465468 m!1352613))

(declare-fun m!1352623 () Bool)

(assert (=> b!1465468 m!1352623))

(assert (=> b!1465468 m!1352623))

(assert (=> b!1465468 m!1352613))

(declare-fun m!1352625 () Bool)

(assert (=> b!1465468 m!1352625))

(declare-fun m!1352627 () Bool)

(assert (=> b!1465480 m!1352627))

(assert (=> b!1465480 m!1352613))

(assert (=> b!1465471 m!1352613))

(assert (=> b!1465471 m!1352613))

(declare-fun m!1352629 () Bool)

(assert (=> b!1465471 m!1352629))

(declare-fun m!1352631 () Bool)

(assert (=> start!125408 m!1352631))

(declare-fun m!1352633 () Bool)

(assert (=> start!125408 m!1352633))

(declare-fun m!1352635 () Bool)

(assert (=> b!1465472 m!1352635))

(assert (=> b!1465472 m!1352635))

(declare-fun m!1352637 () Bool)

(assert (=> b!1465472 m!1352637))

(assert (=> b!1465472 m!1352617))

(declare-fun m!1352639 () Bool)

(assert (=> b!1465472 m!1352639))

(assert (=> b!1465477 m!1352613))

(assert (=> b!1465477 m!1352613))

(declare-fun m!1352641 () Bool)

(assert (=> b!1465477 m!1352641))

(declare-fun m!1352643 () Bool)

(assert (=> b!1465469 m!1352643))

(assert (=> b!1465469 m!1352609))

(assert (=> b!1465486 m!1352613))

(assert (=> b!1465486 m!1352613))

(declare-fun m!1352645 () Bool)

(assert (=> b!1465486 m!1352645))

(declare-fun m!1352647 () Bool)

(assert (=> b!1465485 m!1352647))

(assert (=> b!1465485 m!1352617))

(declare-fun m!1352649 () Bool)

(assert (=> b!1465485 m!1352649))

(declare-fun m!1352651 () Bool)

(assert (=> b!1465485 m!1352651))

(declare-fun m!1352653 () Bool)

(assert (=> b!1465485 m!1352653))

(assert (=> b!1465485 m!1352613))

(declare-fun m!1352655 () Bool)

(assert (=> b!1465481 m!1352655))

(assert (=> b!1465481 m!1352655))

(declare-fun m!1352657 () Bool)

(assert (=> b!1465481 m!1352657))

(declare-fun m!1352659 () Bool)

(assert (=> b!1465478 m!1352659))

(push 1)

