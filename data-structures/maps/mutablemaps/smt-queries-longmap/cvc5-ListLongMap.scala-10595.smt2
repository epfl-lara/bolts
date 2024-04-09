; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124750 () Bool)

(assert start!124750)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!814253 () Bool)

(declare-fun lt!634456 () (_ BitVec 64))

(declare-datatypes ((array!98115 0))(
  ( (array!98116 (arr!47341 (Array (_ BitVec 32) (_ BitVec 64))) (size!47892 (_ BitVec 32))) )
))
(declare-fun lt!634458 () array!98115)

(declare-fun b!1445424 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11616 0))(
  ( (MissingZero!11616 (index!48855 (_ BitVec 32))) (Found!11616 (index!48856 (_ BitVec 32))) (Intermediate!11616 (undefined!12428 Bool) (index!48857 (_ BitVec 32)) (x!130548 (_ BitVec 32))) (Undefined!11616) (MissingVacant!11616 (index!48858 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98115 (_ BitVec 32)) SeekEntryResult!11616)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98115 (_ BitVec 32)) SeekEntryResult!11616)

(assert (=> b!1445424 (= e!814253 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634456 lt!634458 mask!2687) (seekEntryOrOpen!0 lt!634456 lt!634458 mask!2687)))))

(declare-fun b!1445425 () Bool)

(declare-fun e!814255 () Bool)

(declare-fun e!814256 () Bool)

(assert (=> b!1445425 (= e!814255 e!814256)))

(declare-fun res!977408 () Bool)

(assert (=> b!1445425 (=> (not res!977408) (not e!814256))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98115)

(assert (=> b!1445425 (= res!977408 (= (select (store (arr!47341 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1445425 (= lt!634458 (array!98116 (store (arr!47341 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47892 a!2862)))))

(declare-fun b!1445426 () Bool)

(declare-fun e!814259 () Bool)

(assert (=> b!1445426 (= e!814259 (not true))))

(declare-fun e!814254 () Bool)

(assert (=> b!1445426 e!814254))

(declare-fun res!977402 () Bool)

(assert (=> b!1445426 (=> (not res!977402) (not e!814254))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98115 (_ BitVec 32)) Bool)

(assert (=> b!1445426 (= res!977402 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48676 0))(
  ( (Unit!48677) )
))
(declare-fun lt!634457 () Unit!48676)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98115 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48676)

(assert (=> b!1445426 (= lt!634457 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1445427 () Bool)

(declare-fun res!977399 () Bool)

(assert (=> b!1445427 (=> (not res!977399) (not e!814255))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445427 (= res!977399 (validKeyInArray!0 (select (arr!47341 a!2862) j!93)))))

(declare-fun b!1445428 () Bool)

(declare-fun lt!634459 () SeekEntryResult!11616)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98115 (_ BitVec 32)) SeekEntryResult!11616)

(assert (=> b!1445428 (= e!814253 (= lt!634459 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634456 lt!634458 mask!2687)))))

(declare-fun b!1445430 () Bool)

(declare-fun res!977405 () Bool)

(assert (=> b!1445430 (=> (not res!977405) (not e!814255))))

(assert (=> b!1445430 (= res!977405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1445431 () Bool)

(declare-fun res!977410 () Bool)

(assert (=> b!1445431 (=> (not res!977410) (not e!814255))))

(assert (=> b!1445431 (= res!977410 (and (= (size!47892 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47892 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47892 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445432 () Bool)

(declare-fun res!977412 () Bool)

(assert (=> b!1445432 (=> (not res!977412) (not e!814254))))

(assert (=> b!1445432 (= res!977412 (= (seekEntryOrOpen!0 (select (arr!47341 a!2862) j!93) a!2862 mask!2687) (Found!11616 j!93)))))

(declare-fun b!1445433 () Bool)

(declare-fun res!977404 () Bool)

(assert (=> b!1445433 (=> (not res!977404) (not e!814255))))

(declare-datatypes ((List!34022 0))(
  ( (Nil!34019) (Cons!34018 (h!35368 (_ BitVec 64)) (t!48723 List!34022)) )
))
(declare-fun arrayNoDuplicates!0 (array!98115 (_ BitVec 32) List!34022) Bool)

(assert (=> b!1445433 (= res!977404 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34019))))

(declare-fun b!1445434 () Bool)

(declare-fun e!814258 () Bool)

(assert (=> b!1445434 (= e!814256 e!814258)))

(declare-fun res!977411 () Bool)

(assert (=> b!1445434 (=> (not res!977411) (not e!814258))))

(declare-fun lt!634455 () SeekEntryResult!11616)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445434 (= res!977411 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47341 a!2862) j!93) mask!2687) (select (arr!47341 a!2862) j!93) a!2862 mask!2687) lt!634455))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1445434 (= lt!634455 (Intermediate!11616 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!977407 () Bool)

(assert (=> start!124750 (=> (not res!977407) (not e!814255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124750 (= res!977407 (validMask!0 mask!2687))))

(assert (=> start!124750 e!814255))

(assert (=> start!124750 true))

(declare-fun array_inv!36286 (array!98115) Bool)

(assert (=> start!124750 (array_inv!36286 a!2862)))

(declare-fun b!1445429 () Bool)

(assert (=> b!1445429 (= e!814254 (or (= (select (arr!47341 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47341 a!2862) intermediateBeforeIndex!19) (select (arr!47341 a!2862) j!93))))))

(declare-fun b!1445435 () Bool)

(declare-fun res!977401 () Bool)

(assert (=> b!1445435 (=> (not res!977401) (not e!814255))))

(assert (=> b!1445435 (= res!977401 (validKeyInArray!0 (select (arr!47341 a!2862) i!1006)))))

(declare-fun b!1445436 () Bool)

(declare-fun res!977406 () Bool)

(assert (=> b!1445436 (=> (not res!977406) (not e!814259))))

(assert (=> b!1445436 (= res!977406 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445437 () Bool)

(declare-fun res!977409 () Bool)

(assert (=> b!1445437 (=> (not res!977409) (not e!814255))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1445437 (= res!977409 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47892 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47892 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47892 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445438 () Bool)

(assert (=> b!1445438 (= e!814258 e!814259)))

(declare-fun res!977403 () Bool)

(assert (=> b!1445438 (=> (not res!977403) (not e!814259))))

(assert (=> b!1445438 (= res!977403 (= lt!634459 (Intermediate!11616 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1445438 (= lt!634459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634456 mask!2687) lt!634456 lt!634458 mask!2687))))

(assert (=> b!1445438 (= lt!634456 (select (store (arr!47341 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445439 () Bool)

(declare-fun res!977398 () Bool)

(assert (=> b!1445439 (=> (not res!977398) (not e!814259))))

(assert (=> b!1445439 (= res!977398 e!814253)))

(declare-fun c!133526 () Bool)

(assert (=> b!1445439 (= c!133526 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445440 () Bool)

(declare-fun res!977400 () Bool)

(assert (=> b!1445440 (=> (not res!977400) (not e!814258))))

(assert (=> b!1445440 (= res!977400 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47341 a!2862) j!93) a!2862 mask!2687) lt!634455))))

(assert (= (and start!124750 res!977407) b!1445431))

(assert (= (and b!1445431 res!977410) b!1445435))

(assert (= (and b!1445435 res!977401) b!1445427))

(assert (= (and b!1445427 res!977399) b!1445430))

(assert (= (and b!1445430 res!977405) b!1445433))

(assert (= (and b!1445433 res!977404) b!1445437))

(assert (= (and b!1445437 res!977409) b!1445425))

(assert (= (and b!1445425 res!977408) b!1445434))

(assert (= (and b!1445434 res!977411) b!1445440))

(assert (= (and b!1445440 res!977400) b!1445438))

(assert (= (and b!1445438 res!977403) b!1445439))

(assert (= (and b!1445439 c!133526) b!1445428))

(assert (= (and b!1445439 (not c!133526)) b!1445424))

(assert (= (and b!1445439 res!977398) b!1445436))

(assert (= (and b!1445436 res!977406) b!1445426))

(assert (= (and b!1445426 res!977402) b!1445432))

(assert (= (and b!1445432 res!977412) b!1445429))

(declare-fun m!1334433 () Bool)

(assert (=> b!1445425 m!1334433))

(declare-fun m!1334435 () Bool)

(assert (=> b!1445425 m!1334435))

(declare-fun m!1334437 () Bool)

(assert (=> b!1445427 m!1334437))

(assert (=> b!1445427 m!1334437))

(declare-fun m!1334439 () Bool)

(assert (=> b!1445427 m!1334439))

(declare-fun m!1334441 () Bool)

(assert (=> b!1445426 m!1334441))

(declare-fun m!1334443 () Bool)

(assert (=> b!1445426 m!1334443))

(assert (=> b!1445440 m!1334437))

(assert (=> b!1445440 m!1334437))

(declare-fun m!1334445 () Bool)

(assert (=> b!1445440 m!1334445))

(declare-fun m!1334447 () Bool)

(assert (=> b!1445424 m!1334447))

(declare-fun m!1334449 () Bool)

(assert (=> b!1445424 m!1334449))

(assert (=> b!1445434 m!1334437))

(assert (=> b!1445434 m!1334437))

(declare-fun m!1334451 () Bool)

(assert (=> b!1445434 m!1334451))

(assert (=> b!1445434 m!1334451))

(assert (=> b!1445434 m!1334437))

(declare-fun m!1334453 () Bool)

(assert (=> b!1445434 m!1334453))

(declare-fun m!1334455 () Bool)

(assert (=> b!1445435 m!1334455))

(assert (=> b!1445435 m!1334455))

(declare-fun m!1334457 () Bool)

(assert (=> b!1445435 m!1334457))

(declare-fun m!1334459 () Bool)

(assert (=> b!1445433 m!1334459))

(declare-fun m!1334461 () Bool)

(assert (=> b!1445428 m!1334461))

(declare-fun m!1334463 () Bool)

(assert (=> b!1445430 m!1334463))

(declare-fun m!1334465 () Bool)

(assert (=> start!124750 m!1334465))

(declare-fun m!1334467 () Bool)

(assert (=> start!124750 m!1334467))

(declare-fun m!1334469 () Bool)

(assert (=> b!1445429 m!1334469))

(assert (=> b!1445429 m!1334437))

(declare-fun m!1334471 () Bool)

(assert (=> b!1445438 m!1334471))

(assert (=> b!1445438 m!1334471))

(declare-fun m!1334473 () Bool)

(assert (=> b!1445438 m!1334473))

(assert (=> b!1445438 m!1334433))

(declare-fun m!1334475 () Bool)

(assert (=> b!1445438 m!1334475))

(assert (=> b!1445432 m!1334437))

(assert (=> b!1445432 m!1334437))

(declare-fun m!1334477 () Bool)

(assert (=> b!1445432 m!1334477))

(push 1)

