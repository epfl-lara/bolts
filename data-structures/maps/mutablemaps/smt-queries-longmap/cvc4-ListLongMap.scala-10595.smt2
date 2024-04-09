; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124754 () Bool)

(assert start!124754)

(declare-fun b!1445526 () Bool)

(declare-fun res!977500 () Bool)

(declare-fun e!814295 () Bool)

(assert (=> b!1445526 (=> (not res!977500) (not e!814295))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1445526 (= res!977500 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445527 () Bool)

(declare-fun res!977490 () Bool)

(declare-fun e!814298 () Bool)

(assert (=> b!1445527 (=> (not res!977490) (not e!814298))))

(declare-datatypes ((array!98119 0))(
  ( (array!98120 (arr!47343 (Array (_ BitVec 32) (_ BitVec 64))) (size!47894 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98119)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445527 (= res!977490 (validKeyInArray!0 (select (arr!47343 a!2862) j!93)))))

(declare-fun res!977492 () Bool)

(assert (=> start!124754 (=> (not res!977492) (not e!814298))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124754 (= res!977492 (validMask!0 mask!2687))))

(assert (=> start!124754 e!814298))

(assert (=> start!124754 true))

(declare-fun array_inv!36288 (array!98119) Bool)

(assert (=> start!124754 (array_inv!36288 a!2862)))

(declare-fun b!1445528 () Bool)

(declare-fun res!977491 () Bool)

(declare-fun e!814301 () Bool)

(assert (=> b!1445528 (=> (not res!977491) (not e!814301))))

(declare-datatypes ((SeekEntryResult!11618 0))(
  ( (MissingZero!11618 (index!48863 (_ BitVec 32))) (Found!11618 (index!48864 (_ BitVec 32))) (Intermediate!11618 (undefined!12430 Bool) (index!48865 (_ BitVec 32)) (x!130550 (_ BitVec 32))) (Undefined!11618) (MissingVacant!11618 (index!48866 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98119 (_ BitVec 32)) SeekEntryResult!11618)

(assert (=> b!1445528 (= res!977491 (= (seekEntryOrOpen!0 (select (arr!47343 a!2862) j!93) a!2862 mask!2687) (Found!11618 j!93)))))

(declare-fun b!1445529 () Bool)

(declare-fun e!814297 () Bool)

(assert (=> b!1445529 (= e!814298 e!814297)))

(declare-fun res!977488 () Bool)

(assert (=> b!1445529 (=> (not res!977488) (not e!814297))))

(assert (=> b!1445529 (= res!977488 (= (select (store (arr!47343 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634488 () array!98119)

(assert (=> b!1445529 (= lt!634488 (array!98120 (store (arr!47343 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47894 a!2862)))))

(declare-fun b!1445530 () Bool)

(declare-fun e!814300 () Bool)

(assert (=> b!1445530 (= e!814300 e!814295)))

(declare-fun res!977493 () Bool)

(assert (=> b!1445530 (=> (not res!977493) (not e!814295))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!634486 () SeekEntryResult!11618)

(assert (=> b!1445530 (= res!977493 (= lt!634486 (Intermediate!11618 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!634485 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98119 (_ BitVec 32)) SeekEntryResult!11618)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445530 (= lt!634486 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634485 mask!2687) lt!634485 lt!634488 mask!2687))))

(assert (=> b!1445530 (= lt!634485 (select (store (arr!47343 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445531 () Bool)

(declare-fun res!977489 () Bool)

(assert (=> b!1445531 (=> (not res!977489) (not e!814298))))

(assert (=> b!1445531 (= res!977489 (validKeyInArray!0 (select (arr!47343 a!2862) i!1006)))))

(declare-fun b!1445532 () Bool)

(declare-fun res!977502 () Bool)

(assert (=> b!1445532 (=> (not res!977502) (not e!814298))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98119 (_ BitVec 32)) Bool)

(assert (=> b!1445532 (= res!977502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1445533 () Bool)

(declare-fun res!977499 () Bool)

(assert (=> b!1445533 (=> (not res!977499) (not e!814300))))

(declare-fun lt!634489 () SeekEntryResult!11618)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1445533 (= res!977499 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47343 a!2862) j!93) a!2862 mask!2687) lt!634489))))

(declare-fun b!1445534 () Bool)

(declare-fun res!977495 () Bool)

(assert (=> b!1445534 (=> (not res!977495) (not e!814298))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1445534 (= res!977495 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47894 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47894 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47894 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!814296 () Bool)

(declare-fun b!1445535 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98119 (_ BitVec 32)) SeekEntryResult!11618)

(assert (=> b!1445535 (= e!814296 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634485 lt!634488 mask!2687) (seekEntryOrOpen!0 lt!634485 lt!634488 mask!2687)))))

(declare-fun b!1445536 () Bool)

(assert (=> b!1445536 (= e!814296 (= lt!634486 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634485 lt!634488 mask!2687)))))

(declare-fun b!1445537 () Bool)

(declare-fun res!977494 () Bool)

(assert (=> b!1445537 (=> (not res!977494) (not e!814298))))

(declare-datatypes ((List!34024 0))(
  ( (Nil!34021) (Cons!34020 (h!35370 (_ BitVec 64)) (t!48725 List!34024)) )
))
(declare-fun arrayNoDuplicates!0 (array!98119 (_ BitVec 32) List!34024) Bool)

(assert (=> b!1445537 (= res!977494 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34021))))

(declare-fun b!1445538 () Bool)

(declare-fun res!977497 () Bool)

(assert (=> b!1445538 (=> (not res!977497) (not e!814295))))

(assert (=> b!1445538 (= res!977497 e!814296)))

(declare-fun c!133532 () Bool)

(assert (=> b!1445538 (= c!133532 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445539 () Bool)

(declare-fun res!977501 () Bool)

(assert (=> b!1445539 (=> (not res!977501) (not e!814298))))

(assert (=> b!1445539 (= res!977501 (and (= (size!47894 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47894 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47894 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445540 () Bool)

(assert (=> b!1445540 (= e!814301 (or (= (select (arr!47343 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47343 a!2862) intermediateBeforeIndex!19) (select (arr!47343 a!2862) j!93))))))

(declare-fun b!1445541 () Bool)

(assert (=> b!1445541 (= e!814297 e!814300)))

(declare-fun res!977498 () Bool)

(assert (=> b!1445541 (=> (not res!977498) (not e!814300))))

(assert (=> b!1445541 (= res!977498 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47343 a!2862) j!93) mask!2687) (select (arr!47343 a!2862) j!93) a!2862 mask!2687) lt!634489))))

(assert (=> b!1445541 (= lt!634489 (Intermediate!11618 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1445542 () Bool)

(assert (=> b!1445542 (= e!814295 (not true))))

(assert (=> b!1445542 e!814301))

(declare-fun res!977496 () Bool)

(assert (=> b!1445542 (=> (not res!977496) (not e!814301))))

(assert (=> b!1445542 (= res!977496 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48680 0))(
  ( (Unit!48681) )
))
(declare-fun lt!634487 () Unit!48680)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98119 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48680)

(assert (=> b!1445542 (= lt!634487 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!124754 res!977492) b!1445539))

(assert (= (and b!1445539 res!977501) b!1445531))

(assert (= (and b!1445531 res!977489) b!1445527))

(assert (= (and b!1445527 res!977490) b!1445532))

(assert (= (and b!1445532 res!977502) b!1445537))

(assert (= (and b!1445537 res!977494) b!1445534))

(assert (= (and b!1445534 res!977495) b!1445529))

(assert (= (and b!1445529 res!977488) b!1445541))

(assert (= (and b!1445541 res!977498) b!1445533))

(assert (= (and b!1445533 res!977499) b!1445530))

(assert (= (and b!1445530 res!977493) b!1445538))

(assert (= (and b!1445538 c!133532) b!1445536))

(assert (= (and b!1445538 (not c!133532)) b!1445535))

(assert (= (and b!1445538 res!977497) b!1445526))

(assert (= (and b!1445526 res!977500) b!1445542))

(assert (= (and b!1445542 res!977496) b!1445528))

(assert (= (and b!1445528 res!977491) b!1445540))

(declare-fun m!1334525 () Bool)

(assert (=> b!1445531 m!1334525))

(assert (=> b!1445531 m!1334525))

(declare-fun m!1334527 () Bool)

(assert (=> b!1445531 m!1334527))

(declare-fun m!1334529 () Bool)

(assert (=> b!1445532 m!1334529))

(declare-fun m!1334531 () Bool)

(assert (=> b!1445535 m!1334531))

(declare-fun m!1334533 () Bool)

(assert (=> b!1445535 m!1334533))

(declare-fun m!1334535 () Bool)

(assert (=> b!1445541 m!1334535))

(assert (=> b!1445541 m!1334535))

(declare-fun m!1334537 () Bool)

(assert (=> b!1445541 m!1334537))

(assert (=> b!1445541 m!1334537))

(assert (=> b!1445541 m!1334535))

(declare-fun m!1334539 () Bool)

(assert (=> b!1445541 m!1334539))

(assert (=> b!1445528 m!1334535))

(assert (=> b!1445528 m!1334535))

(declare-fun m!1334541 () Bool)

(assert (=> b!1445528 m!1334541))

(assert (=> b!1445527 m!1334535))

(assert (=> b!1445527 m!1334535))

(declare-fun m!1334543 () Bool)

(assert (=> b!1445527 m!1334543))

(declare-fun m!1334545 () Bool)

(assert (=> b!1445537 m!1334545))

(declare-fun m!1334547 () Bool)

(assert (=> b!1445529 m!1334547))

(declare-fun m!1334549 () Bool)

(assert (=> b!1445529 m!1334549))

(assert (=> b!1445533 m!1334535))

(assert (=> b!1445533 m!1334535))

(declare-fun m!1334551 () Bool)

(assert (=> b!1445533 m!1334551))

(declare-fun m!1334553 () Bool)

(assert (=> b!1445540 m!1334553))

(assert (=> b!1445540 m!1334535))

(declare-fun m!1334555 () Bool)

(assert (=> b!1445530 m!1334555))

(assert (=> b!1445530 m!1334555))

(declare-fun m!1334557 () Bool)

(assert (=> b!1445530 m!1334557))

(assert (=> b!1445530 m!1334547))

(declare-fun m!1334559 () Bool)

(assert (=> b!1445530 m!1334559))

(declare-fun m!1334561 () Bool)

(assert (=> start!124754 m!1334561))

(declare-fun m!1334563 () Bool)

(assert (=> start!124754 m!1334563))

(declare-fun m!1334565 () Bool)

(assert (=> b!1445536 m!1334565))

(declare-fun m!1334567 () Bool)

(assert (=> b!1445542 m!1334567))

(declare-fun m!1334569 () Bool)

(assert (=> b!1445542 m!1334569))

(push 1)

(assert (not b!1445533))

(assert (not b!1445527))

(assert (not b!1445537))

(assert (not b!1445531))

(assert (not b!1445532))

(assert (not start!124754))

(assert (not b!1445528))

(assert (not b!1445530))

(assert (not b!1445541))

(assert (not b!1445535))

(assert (not b!1445542))

(assert (not b!1445536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

