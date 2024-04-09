; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124712 () Bool)

(assert start!124712)

(declare-fun b!1444454 () Bool)

(declare-fun res!976545 () Bool)

(declare-fun e!813854 () Bool)

(assert (=> b!1444454 (=> (not res!976545) (not e!813854))))

(declare-fun e!813860 () Bool)

(assert (=> b!1444454 (= res!976545 e!813860)))

(declare-fun c!133469 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1444454 (= c!133469 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!976544 () Bool)

(declare-fun e!813857 () Bool)

(assert (=> start!124712 (=> (not res!976544) (not e!813857))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124712 (= res!976544 (validMask!0 mask!2687))))

(assert (=> start!124712 e!813857))

(assert (=> start!124712 true))

(declare-datatypes ((array!98077 0))(
  ( (array!98078 (arr!47322 (Array (_ BitVec 32) (_ BitVec 64))) (size!47873 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98077)

(declare-fun array_inv!36267 (array!98077) Bool)

(assert (=> start!124712 (array_inv!36267 a!2862)))

(declare-fun b!1444455 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!634173 () array!98077)

(declare-fun lt!634169 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11597 0))(
  ( (MissingZero!11597 (index!48779 (_ BitVec 32))) (Found!11597 (index!48780 (_ BitVec 32))) (Intermediate!11597 (undefined!12409 Bool) (index!48781 (_ BitVec 32)) (x!130473 (_ BitVec 32))) (Undefined!11597) (MissingVacant!11597 (index!48782 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98077 (_ BitVec 32)) SeekEntryResult!11597)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98077 (_ BitVec 32)) SeekEntryResult!11597)

(assert (=> b!1444455 (= e!813860 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634169 lt!634173 mask!2687) (seekEntryOrOpen!0 lt!634169 lt!634173 mask!2687)))))

(declare-fun b!1444456 () Bool)

(declare-fun e!813856 () Bool)

(assert (=> b!1444456 (= e!813857 e!813856)))

(declare-fun res!976548 () Bool)

(assert (=> b!1444456 (=> (not res!976548) (not e!813856))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1444456 (= res!976548 (= (select (store (arr!47322 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444456 (= lt!634173 (array!98078 (store (arr!47322 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47873 a!2862)))))

(declare-fun b!1444457 () Bool)

(declare-fun res!976549 () Bool)

(assert (=> b!1444457 (=> (not res!976549) (not e!813857))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1444457 (= res!976549 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47873 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47873 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47873 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444458 () Bool)

(declare-fun res!976556 () Bool)

(declare-fun e!813855 () Bool)

(assert (=> b!1444458 (=> res!976556 e!813855)))

(assert (=> b!1444458 (= res!976556 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun b!1444459 () Bool)

(declare-fun res!976546 () Bool)

(assert (=> b!1444459 (=> (not res!976546) (not e!813854))))

(assert (=> b!1444459 (= res!976546 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444460 () Bool)

(declare-fun res!976542 () Bool)

(assert (=> b!1444460 (=> (not res!976542) (not e!813857))))

(declare-datatypes ((List!34003 0))(
  ( (Nil!34000) (Cons!33999 (h!35349 (_ BitVec 64)) (t!48704 List!34003)) )
))
(declare-fun arrayNoDuplicates!0 (array!98077 (_ BitVec 32) List!34003) Bool)

(assert (=> b!1444460 (= res!976542 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34000))))

(declare-fun b!1444461 () Bool)

(declare-fun res!976550 () Bool)

(assert (=> b!1444461 (=> (not res!976550) (not e!813857))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444461 (= res!976550 (validKeyInArray!0 (select (arr!47322 a!2862) j!93)))))

(declare-fun b!1444462 () Bool)

(assert (=> b!1444462 (= e!813855 (validKeyInArray!0 lt!634169))))

(declare-fun lt!634174 () SeekEntryResult!11597)

(declare-fun b!1444463 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98077 (_ BitVec 32)) SeekEntryResult!11597)

(assert (=> b!1444463 (= e!813860 (= lt!634174 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634169 lt!634173 mask!2687)))))

(declare-fun b!1444464 () Bool)

(declare-fun res!976553 () Bool)

(assert (=> b!1444464 (=> res!976553 e!813855)))

(declare-fun lt!634172 () SeekEntryResult!11597)

(assert (=> b!1444464 (= res!976553 (not (= lt!634172 (seekEntryOrOpen!0 lt!634169 lt!634173 mask!2687))))))

(declare-fun b!1444465 () Bool)

(declare-fun res!976551 () Bool)

(declare-fun e!813858 () Bool)

(assert (=> b!1444465 (=> (not res!976551) (not e!813858))))

(declare-fun lt!634171 () SeekEntryResult!11597)

(assert (=> b!1444465 (= res!976551 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47322 a!2862) j!93) a!2862 mask!2687) lt!634171))))

(declare-fun b!1444466 () Bool)

(declare-fun res!976552 () Bool)

(assert (=> b!1444466 (=> (not res!976552) (not e!813857))))

(assert (=> b!1444466 (= res!976552 (and (= (size!47873 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47873 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47873 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444467 () Bool)

(assert (=> b!1444467 (= e!813858 e!813854)))

(declare-fun res!976557 () Bool)

(assert (=> b!1444467 (=> (not res!976557) (not e!813854))))

(assert (=> b!1444467 (= res!976557 (= lt!634174 (Intermediate!11597 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444467 (= lt!634174 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634169 mask!2687) lt!634169 lt!634173 mask!2687))))

(assert (=> b!1444467 (= lt!634169 (select (store (arr!47322 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444468 () Bool)

(assert (=> b!1444468 (= e!813856 e!813858)))

(declare-fun res!976555 () Bool)

(assert (=> b!1444468 (=> (not res!976555) (not e!813858))))

(assert (=> b!1444468 (= res!976555 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47322 a!2862) j!93) mask!2687) (select (arr!47322 a!2862) j!93) a!2862 mask!2687) lt!634171))))

(assert (=> b!1444468 (= lt!634171 (Intermediate!11597 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444469 () Bool)

(declare-fun res!976543 () Bool)

(assert (=> b!1444469 (=> (not res!976543) (not e!813857))))

(assert (=> b!1444469 (= res!976543 (validKeyInArray!0 (select (arr!47322 a!2862) i!1006)))))

(declare-fun b!1444470 () Bool)

(assert (=> b!1444470 (= e!813854 (not e!813855))))

(declare-fun res!976554 () Bool)

(assert (=> b!1444470 (=> res!976554 e!813855)))

(assert (=> b!1444470 (= res!976554 (or (not (= (select (arr!47322 a!2862) index!646) (select (store (arr!47322 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47322 a!2862) index!646) (select (arr!47322 a!2862) j!93)))))))

(assert (=> b!1444470 (and (= lt!634172 (Found!11597 j!93)) (or (= (select (arr!47322 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47322 a!2862) intermediateBeforeIndex!19) (select (arr!47322 a!2862) j!93))))))

(assert (=> b!1444470 (= lt!634172 (seekEntryOrOpen!0 (select (arr!47322 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98077 (_ BitVec 32)) Bool)

(assert (=> b!1444470 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48638 0))(
  ( (Unit!48639) )
))
(declare-fun lt!634170 () Unit!48638)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98077 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48638)

(assert (=> b!1444470 (= lt!634170 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444471 () Bool)

(declare-fun res!976547 () Bool)

(assert (=> b!1444471 (=> (not res!976547) (not e!813857))))

(assert (=> b!1444471 (= res!976547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124712 res!976544) b!1444466))

(assert (= (and b!1444466 res!976552) b!1444469))

(assert (= (and b!1444469 res!976543) b!1444461))

(assert (= (and b!1444461 res!976550) b!1444471))

(assert (= (and b!1444471 res!976547) b!1444460))

(assert (= (and b!1444460 res!976542) b!1444457))

(assert (= (and b!1444457 res!976549) b!1444456))

(assert (= (and b!1444456 res!976548) b!1444468))

(assert (= (and b!1444468 res!976555) b!1444465))

(assert (= (and b!1444465 res!976551) b!1444467))

(assert (= (and b!1444467 res!976557) b!1444454))

(assert (= (and b!1444454 c!133469) b!1444463))

(assert (= (and b!1444454 (not c!133469)) b!1444455))

(assert (= (and b!1444454 res!976545) b!1444459))

(assert (= (and b!1444459 res!976546) b!1444470))

(assert (= (and b!1444470 (not res!976554)) b!1444464))

(assert (= (and b!1444464 (not res!976553)) b!1444458))

(assert (= (and b!1444458 (not res!976556)) b!1444462))

(declare-fun m!1333529 () Bool)

(assert (=> b!1444456 m!1333529))

(declare-fun m!1333531 () Bool)

(assert (=> b!1444456 m!1333531))

(declare-fun m!1333533 () Bool)

(assert (=> b!1444455 m!1333533))

(declare-fun m!1333535 () Bool)

(assert (=> b!1444455 m!1333535))

(declare-fun m!1333537 () Bool)

(assert (=> b!1444470 m!1333537))

(assert (=> b!1444470 m!1333529))

(declare-fun m!1333539 () Bool)

(assert (=> b!1444470 m!1333539))

(declare-fun m!1333541 () Bool)

(assert (=> b!1444470 m!1333541))

(declare-fun m!1333543 () Bool)

(assert (=> b!1444470 m!1333543))

(declare-fun m!1333545 () Bool)

(assert (=> b!1444470 m!1333545))

(declare-fun m!1333547 () Bool)

(assert (=> b!1444470 m!1333547))

(declare-fun m!1333549 () Bool)

(assert (=> b!1444470 m!1333549))

(assert (=> b!1444470 m!1333545))

(declare-fun m!1333551 () Bool)

(assert (=> b!1444463 m!1333551))

(declare-fun m!1333553 () Bool)

(assert (=> b!1444462 m!1333553))

(declare-fun m!1333555 () Bool)

(assert (=> start!124712 m!1333555))

(declare-fun m!1333557 () Bool)

(assert (=> start!124712 m!1333557))

(assert (=> b!1444468 m!1333545))

(assert (=> b!1444468 m!1333545))

(declare-fun m!1333559 () Bool)

(assert (=> b!1444468 m!1333559))

(assert (=> b!1444468 m!1333559))

(assert (=> b!1444468 m!1333545))

(declare-fun m!1333561 () Bool)

(assert (=> b!1444468 m!1333561))

(declare-fun m!1333563 () Bool)

(assert (=> b!1444460 m!1333563))

(assert (=> b!1444464 m!1333535))

(assert (=> b!1444465 m!1333545))

(assert (=> b!1444465 m!1333545))

(declare-fun m!1333565 () Bool)

(assert (=> b!1444465 m!1333565))

(declare-fun m!1333567 () Bool)

(assert (=> b!1444469 m!1333567))

(assert (=> b!1444469 m!1333567))

(declare-fun m!1333569 () Bool)

(assert (=> b!1444469 m!1333569))

(assert (=> b!1444461 m!1333545))

(assert (=> b!1444461 m!1333545))

(declare-fun m!1333571 () Bool)

(assert (=> b!1444461 m!1333571))

(declare-fun m!1333573 () Bool)

(assert (=> b!1444467 m!1333573))

(assert (=> b!1444467 m!1333573))

(declare-fun m!1333575 () Bool)

(assert (=> b!1444467 m!1333575))

(assert (=> b!1444467 m!1333529))

(declare-fun m!1333577 () Bool)

(assert (=> b!1444467 m!1333577))

(declare-fun m!1333579 () Bool)

(assert (=> b!1444471 m!1333579))

(push 1)

(assert (not b!1444464))

