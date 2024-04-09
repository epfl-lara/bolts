; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127418 () Bool)

(assert start!127418)

(declare-fun b!1497364 () Bool)

(declare-fun e!838563 () Bool)

(declare-fun e!838561 () Bool)

(assert (=> b!1497364 (= e!838563 (not e!838561))))

(declare-fun res!1018623 () Bool)

(assert (=> b!1497364 (=> res!1018623 e!838561)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99793 0))(
  ( (array!99794 (arr!48156 (Array (_ BitVec 32) (_ BitVec 64))) (size!48707 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99793)

(assert (=> b!1497364 (= res!1018623 (or (and (= (select (arr!48156 a!2862) index!646) (select (store (arr!48156 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48156 a!2862) index!646) (select (arr!48156 a!2862) j!93))) (= (select (arr!48156 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-datatypes ((SeekEntryResult!12419 0))(
  ( (MissingZero!12419 (index!52067 (_ BitVec 32))) (Found!12419 (index!52068 (_ BitVec 32))) (Intermediate!12419 (undefined!13231 Bool) (index!52069 (_ BitVec 32)) (x!133690 (_ BitVec 32))) (Undefined!12419) (MissingVacant!12419 (index!52070 (_ BitVec 32))) )
))
(declare-fun lt!652392 () SeekEntryResult!12419)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1497364 (and (= lt!652392 (Found!12419 j!93)) (or (= (select (arr!48156 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48156 a!2862) intermediateBeforeIndex!19) (select (arr!48156 a!2862) j!93))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99793 (_ BitVec 32)) SeekEntryResult!12419)

(assert (=> b!1497364 (= lt!652392 (seekEntryOrOpen!0 (select (arr!48156 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99793 (_ BitVec 32)) Bool)

(assert (=> b!1497364 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!50126 0))(
  ( (Unit!50127) )
))
(declare-fun lt!652391 () Unit!50126)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99793 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50126)

(assert (=> b!1497364 (= lt!652391 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1497365 () Bool)

(declare-fun lt!652396 () (_ BitVec 64))

(declare-fun e!838565 () Bool)

(declare-fun lt!652394 () (_ BitVec 32))

(declare-fun lt!652389 () array!99793)

(declare-fun lt!652395 () SeekEntryResult!12419)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99793 (_ BitVec 32)) SeekEntryResult!12419)

(assert (=> b!1497365 (= e!838565 (not (= lt!652395 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652394 lt!652396 lt!652389 mask!2687))))))

(declare-fun b!1497366 () Bool)

(declare-fun res!1018607 () Bool)

(declare-fun e!838562 () Bool)

(assert (=> b!1497366 (=> (not res!1018607) (not e!838562))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497366 (= res!1018607 (validKeyInArray!0 (select (arr!48156 a!2862) i!1006)))))

(declare-fun b!1497367 () Bool)

(declare-fun res!1018611 () Bool)

(declare-fun e!838560 () Bool)

(assert (=> b!1497367 (=> res!1018611 e!838560)))

(declare-fun lt!652393 () SeekEntryResult!12419)

(assert (=> b!1497367 (= res!1018611 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652394 (select (arr!48156 a!2862) j!93) a!2862 mask!2687) lt!652393)))))

(declare-fun e!838558 () Bool)

(declare-fun b!1497368 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99793 (_ BitVec 32)) SeekEntryResult!12419)

(assert (=> b!1497368 (= e!838558 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652396 lt!652389 mask!2687) (seekEntryOrOpen!0 lt!652396 lt!652389 mask!2687)))))

(declare-fun res!1018614 () Bool)

(assert (=> start!127418 (=> (not res!1018614) (not e!838562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127418 (= res!1018614 (validMask!0 mask!2687))))

(assert (=> start!127418 e!838562))

(assert (=> start!127418 true))

(declare-fun array_inv!37101 (array!99793) Bool)

(assert (=> start!127418 (array_inv!37101 a!2862)))

(declare-fun b!1497369 () Bool)

(declare-fun res!1018608 () Bool)

(assert (=> b!1497369 (=> res!1018608 e!838560)))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1497369 (= res!1018608 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1497370 () Bool)

(declare-fun res!1018618 () Bool)

(assert (=> b!1497370 (=> (not res!1018618) (not e!838562))))

(assert (=> b!1497370 (= res!1018618 (validKeyInArray!0 (select (arr!48156 a!2862) j!93)))))

(declare-fun b!1497371 () Bool)

(declare-fun res!1018621 () Bool)

(assert (=> b!1497371 (=> (not res!1018621) (not e!838562))))

(assert (=> b!1497371 (= res!1018621 (and (= (size!48707 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48707 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48707 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1497372 () Bool)

(declare-fun res!1018613 () Bool)

(declare-fun e!838559 () Bool)

(assert (=> b!1497372 (=> (not res!1018613) (not e!838559))))

(assert (=> b!1497372 (= res!1018613 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48156 a!2862) j!93) a!2862 mask!2687) lt!652393))))

(declare-fun b!1497373 () Bool)

(declare-fun res!1018612 () Bool)

(assert (=> b!1497373 (=> (not res!1018612) (not e!838563))))

(assert (=> b!1497373 (= res!1018612 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1497374 () Bool)

(declare-fun res!1018615 () Bool)

(assert (=> b!1497374 (=> (not res!1018615) (not e!838562))))

(assert (=> b!1497374 (= res!1018615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1497375 () Bool)

(assert (=> b!1497375 (= e!838558 (= lt!652395 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652396 lt!652389 mask!2687)))))

(declare-fun b!1497376 () Bool)

(assert (=> b!1497376 (= e!838565 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652394 intermediateAfterIndex!19 lt!652396 lt!652389 mask!2687) (seekEntryOrOpen!0 lt!652396 lt!652389 mask!2687))))))

(declare-fun b!1497377 () Bool)

(declare-fun res!1018620 () Bool)

(assert (=> b!1497377 (=> res!1018620 e!838560)))

(assert (=> b!1497377 (= res!1018620 e!838565)))

(declare-fun c!138916 () Bool)

(assert (=> b!1497377 (= c!138916 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1497378 () Bool)

(declare-fun res!1018610 () Bool)

(assert (=> b!1497378 (=> (not res!1018610) (not e!838562))))

(assert (=> b!1497378 (= res!1018610 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48707 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48707 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48707 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1497379 () Bool)

(declare-fun res!1018617 () Bool)

(assert (=> b!1497379 (=> (not res!1018617) (not e!838562))))

(declare-datatypes ((List!34837 0))(
  ( (Nil!34834) (Cons!34833 (h!36231 (_ BitVec 64)) (t!49538 List!34837)) )
))
(declare-fun arrayNoDuplicates!0 (array!99793 (_ BitVec 32) List!34837) Bool)

(assert (=> b!1497379 (= res!1018617 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34834))))

(declare-fun b!1497380 () Bool)

(assert (=> b!1497380 (= e!838561 e!838560)))

(declare-fun res!1018619 () Bool)

(assert (=> b!1497380 (=> res!1018619 e!838560)))

(assert (=> b!1497380 (= res!1018619 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652394 #b00000000000000000000000000000000) (bvsge lt!652394 (size!48707 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497380 (= lt!652394 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1497381 () Bool)

(declare-fun e!838557 () Bool)

(assert (=> b!1497381 (= e!838557 e!838559)))

(declare-fun res!1018606 () Bool)

(assert (=> b!1497381 (=> (not res!1018606) (not e!838559))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497381 (= res!1018606 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48156 a!2862) j!93) mask!2687) (select (arr!48156 a!2862) j!93) a!2862 mask!2687) lt!652393))))

(assert (=> b!1497381 (= lt!652393 (Intermediate!12419 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1497382 () Bool)

(declare-fun res!1018616 () Bool)

(assert (=> b!1497382 (=> (not res!1018616) (not e!838563))))

(assert (=> b!1497382 (= res!1018616 e!838558)))

(declare-fun c!138917 () Bool)

(assert (=> b!1497382 (= c!138917 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1497383 () Bool)

(assert (=> b!1497383 (= e!838562 e!838557)))

(declare-fun res!1018622 () Bool)

(assert (=> b!1497383 (=> (not res!1018622) (not e!838557))))

(assert (=> b!1497383 (= res!1018622 (= (select (store (arr!48156 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1497383 (= lt!652389 (array!99794 (store (arr!48156 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48707 a!2862)))))

(declare-fun b!1497384 () Bool)

(assert (=> b!1497384 (= e!838559 e!838563)))

(declare-fun res!1018609 () Bool)

(assert (=> b!1497384 (=> (not res!1018609) (not e!838563))))

(assert (=> b!1497384 (= res!1018609 (= lt!652395 (Intermediate!12419 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1497384 (= lt!652395 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652396 mask!2687) lt!652396 lt!652389 mask!2687))))

(assert (=> b!1497384 (= lt!652396 (select (store (arr!48156 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1497385 () Bool)

(assert (=> b!1497385 (= e!838560 true)))

(assert (=> b!1497385 (= lt!652392 (seekEntryOrOpen!0 lt!652396 lt!652389 mask!2687))))

(declare-fun lt!652390 () Unit!50126)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99793 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50126)

(assert (=> b!1497385 (= lt!652390 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652394 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(assert (= (and start!127418 res!1018614) b!1497371))

(assert (= (and b!1497371 res!1018621) b!1497366))

(assert (= (and b!1497366 res!1018607) b!1497370))

(assert (= (and b!1497370 res!1018618) b!1497374))

(assert (= (and b!1497374 res!1018615) b!1497379))

(assert (= (and b!1497379 res!1018617) b!1497378))

(assert (= (and b!1497378 res!1018610) b!1497383))

(assert (= (and b!1497383 res!1018622) b!1497381))

(assert (= (and b!1497381 res!1018606) b!1497372))

(assert (= (and b!1497372 res!1018613) b!1497384))

(assert (= (and b!1497384 res!1018609) b!1497382))

(assert (= (and b!1497382 c!138917) b!1497375))

(assert (= (and b!1497382 (not c!138917)) b!1497368))

(assert (= (and b!1497382 res!1018616) b!1497373))

(assert (= (and b!1497373 res!1018612) b!1497364))

(assert (= (and b!1497364 (not res!1018623)) b!1497380))

(assert (= (and b!1497380 (not res!1018619)) b!1497367))

(assert (= (and b!1497367 (not res!1018611)) b!1497377))

(assert (= (and b!1497377 c!138916) b!1497365))

(assert (= (and b!1497377 (not c!138916)) b!1497376))

(assert (= (and b!1497377 (not res!1018620)) b!1497369))

(assert (= (and b!1497369 (not res!1018608)) b!1497385))

(declare-fun m!1380501 () Bool)

(assert (=> b!1497379 m!1380501))

(declare-fun m!1380503 () Bool)

(assert (=> b!1497380 m!1380503))

(declare-fun m!1380505 () Bool)

(assert (=> b!1497367 m!1380505))

(assert (=> b!1497367 m!1380505))

(declare-fun m!1380507 () Bool)

(assert (=> b!1497367 m!1380507))

(declare-fun m!1380509 () Bool)

(assert (=> b!1497365 m!1380509))

(declare-fun m!1380511 () Bool)

(assert (=> b!1497376 m!1380511))

(declare-fun m!1380513 () Bool)

(assert (=> b!1497376 m!1380513))

(declare-fun m!1380515 () Bool)

(assert (=> b!1497366 m!1380515))

(assert (=> b!1497366 m!1380515))

(declare-fun m!1380517 () Bool)

(assert (=> b!1497366 m!1380517))

(declare-fun m!1380519 () Bool)

(assert (=> start!127418 m!1380519))

(declare-fun m!1380521 () Bool)

(assert (=> start!127418 m!1380521))

(assert (=> b!1497385 m!1380513))

(declare-fun m!1380523 () Bool)

(assert (=> b!1497385 m!1380523))

(declare-fun m!1380525 () Bool)

(assert (=> b!1497374 m!1380525))

(declare-fun m!1380527 () Bool)

(assert (=> b!1497384 m!1380527))

(assert (=> b!1497384 m!1380527))

(declare-fun m!1380529 () Bool)

(assert (=> b!1497384 m!1380529))

(declare-fun m!1380531 () Bool)

(assert (=> b!1497384 m!1380531))

(declare-fun m!1380533 () Bool)

(assert (=> b!1497384 m!1380533))

(assert (=> b!1497383 m!1380531))

(declare-fun m!1380535 () Bool)

(assert (=> b!1497383 m!1380535))

(declare-fun m!1380537 () Bool)

(assert (=> b!1497375 m!1380537))

(assert (=> b!1497381 m!1380505))

(assert (=> b!1497381 m!1380505))

(declare-fun m!1380539 () Bool)

(assert (=> b!1497381 m!1380539))

(assert (=> b!1497381 m!1380539))

(assert (=> b!1497381 m!1380505))

(declare-fun m!1380541 () Bool)

(assert (=> b!1497381 m!1380541))

(declare-fun m!1380543 () Bool)

(assert (=> b!1497364 m!1380543))

(assert (=> b!1497364 m!1380531))

(declare-fun m!1380545 () Bool)

(assert (=> b!1497364 m!1380545))

(declare-fun m!1380547 () Bool)

(assert (=> b!1497364 m!1380547))

(declare-fun m!1380549 () Bool)

(assert (=> b!1497364 m!1380549))

(assert (=> b!1497364 m!1380505))

(declare-fun m!1380551 () Bool)

(assert (=> b!1497364 m!1380551))

(declare-fun m!1380553 () Bool)

(assert (=> b!1497364 m!1380553))

(assert (=> b!1497364 m!1380505))

(assert (=> b!1497372 m!1380505))

(assert (=> b!1497372 m!1380505))

(declare-fun m!1380555 () Bool)

(assert (=> b!1497372 m!1380555))

(declare-fun m!1380557 () Bool)

(assert (=> b!1497368 m!1380557))

(assert (=> b!1497368 m!1380513))

(assert (=> b!1497370 m!1380505))

(assert (=> b!1497370 m!1380505))

(declare-fun m!1380559 () Bool)

(assert (=> b!1497370 m!1380559))

(push 1)

