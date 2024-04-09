; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125412 () Bool)

(assert start!125412)

(declare-fun b!1465597 () Bool)

(declare-fun e!823531 () Bool)

(declare-fun e!823526 () Bool)

(assert (=> b!1465597 (= e!823531 e!823526)))

(declare-fun res!994558 () Bool)

(assert (=> b!1465597 (=> res!994558 e!823526)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!641423 () (_ BitVec 32))

(declare-datatypes ((array!98777 0))(
  ( (array!98778 (arr!47672 (Array (_ BitVec 32) (_ BitVec 64))) (size!48223 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98777)

(assert (=> b!1465597 (= res!994558 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641423 #b00000000000000000000000000000000) (bvsge lt!641423 (size!48223 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465597 (= lt!641423 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1465598 () Bool)

(declare-fun e!823525 () Bool)

(declare-fun e!823529 () Bool)

(assert (=> b!1465598 (= e!823525 e!823529)))

(declare-fun res!994549 () Bool)

(assert (=> b!1465598 (=> (not res!994549) (not e!823529))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11947 0))(
  ( (MissingZero!11947 (index!50179 (_ BitVec 32))) (Found!11947 (index!50180 (_ BitVec 32))) (Intermediate!11947 (undefined!12759 Bool) (index!50181 (_ BitVec 32)) (x!131759 (_ BitVec 32))) (Undefined!11947) (MissingVacant!11947 (index!50182 (_ BitVec 32))) )
))
(declare-fun lt!641419 () SeekEntryResult!11947)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98777 (_ BitVec 32)) SeekEntryResult!11947)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465598 (= res!994549 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47672 a!2862) j!93) mask!2687) (select (arr!47672 a!2862) j!93) a!2862 mask!2687) lt!641419))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1465598 (= lt!641419 (Intermediate!11947 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1465600 () Bool)

(declare-fun e!823528 () Bool)

(assert (=> b!1465600 (= e!823529 e!823528)))

(declare-fun res!994550 () Bool)

(assert (=> b!1465600 (=> (not res!994550) (not e!823528))))

(declare-fun lt!641424 () SeekEntryResult!11947)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1465600 (= res!994550 (= lt!641424 (Intermediate!11947 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!641421 () (_ BitVec 64))

(declare-fun lt!641422 () array!98777)

(assert (=> b!1465600 (= lt!641424 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641421 mask!2687) lt!641421 lt!641422 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1465600 (= lt!641421 (select (store (arr!47672 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1465601 () Bool)

(declare-fun res!994566 () Bool)

(declare-fun e!823530 () Bool)

(assert (=> b!1465601 (=> (not res!994566) (not e!823530))))

(assert (=> b!1465601 (= res!994566 (and (= (size!48223 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48223 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48223 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1465602 () Bool)

(declare-fun res!994553 () Bool)

(assert (=> b!1465602 (=> (not res!994553) (not e!823530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465602 (= res!994553 (validKeyInArray!0 (select (arr!47672 a!2862) j!93)))))

(declare-fun b!1465603 () Bool)

(declare-fun res!994556 () Bool)

(assert (=> b!1465603 (=> res!994556 e!823526)))

(assert (=> b!1465603 (= res!994556 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641423 (select (arr!47672 a!2862) j!93) a!2862 mask!2687) lt!641419)))))

(declare-fun b!1465604 () Bool)

(declare-fun res!994563 () Bool)

(assert (=> b!1465604 (=> (not res!994563) (not e!823528))))

(declare-fun e!823527 () Bool)

(assert (=> b!1465604 (= res!994563 e!823527)))

(declare-fun c!135038 () Bool)

(assert (=> b!1465604 (= c!135038 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1465605 () Bool)

(assert (=> b!1465605 (= e!823527 (= lt!641424 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641421 lt!641422 mask!2687)))))

(declare-fun b!1465606 () Bool)

(assert (=> b!1465606 (= e!823526 true)))

(declare-fun lt!641425 () Bool)

(declare-fun e!823532 () Bool)

(assert (=> b!1465606 (= lt!641425 e!823532)))

(declare-fun c!135037 () Bool)

(assert (=> b!1465606 (= c!135037 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1465607 () Bool)

(assert (=> b!1465607 (= e!823530 e!823525)))

(declare-fun res!994552 () Bool)

(assert (=> b!1465607 (=> (not res!994552) (not e!823525))))

(assert (=> b!1465607 (= res!994552 (= (select (store (arr!47672 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1465607 (= lt!641422 (array!98778 (store (arr!47672 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48223 a!2862)))))

(declare-fun b!1465608 () Bool)

(declare-fun res!994555 () Bool)

(assert (=> b!1465608 (=> (not res!994555) (not e!823530))))

(assert (=> b!1465608 (= res!994555 (validKeyInArray!0 (select (arr!47672 a!2862) i!1006)))))

(declare-fun res!994560 () Bool)

(assert (=> start!125412 (=> (not res!994560) (not e!823530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125412 (= res!994560 (validMask!0 mask!2687))))

(assert (=> start!125412 e!823530))

(assert (=> start!125412 true))

(declare-fun array_inv!36617 (array!98777) Bool)

(assert (=> start!125412 (array_inv!36617 a!2862)))

(declare-fun b!1465599 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98777 (_ BitVec 32)) SeekEntryResult!11947)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98777 (_ BitVec 32)) SeekEntryResult!11947)

(assert (=> b!1465599 (= e!823532 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641423 intermediateAfterIndex!19 lt!641421 lt!641422 mask!2687) (seekEntryOrOpen!0 lt!641421 lt!641422 mask!2687))))))

(declare-fun b!1465609 () Bool)

(declare-fun res!994562 () Bool)

(assert (=> b!1465609 (=> (not res!994562) (not e!823530))))

(declare-datatypes ((List!34353 0))(
  ( (Nil!34350) (Cons!34349 (h!35699 (_ BitVec 64)) (t!49054 List!34353)) )
))
(declare-fun arrayNoDuplicates!0 (array!98777 (_ BitVec 32) List!34353) Bool)

(assert (=> b!1465609 (= res!994562 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34350))))

(declare-fun b!1465610 () Bool)

(assert (=> b!1465610 (= e!823528 (not e!823531))))

(declare-fun res!994559 () Bool)

(assert (=> b!1465610 (=> res!994559 e!823531)))

(assert (=> b!1465610 (= res!994559 (or (and (= (select (arr!47672 a!2862) index!646) (select (store (arr!47672 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47672 a!2862) index!646) (select (arr!47672 a!2862) j!93))) (= (select (arr!47672 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!823524 () Bool)

(assert (=> b!1465610 e!823524))

(declare-fun res!994554 () Bool)

(assert (=> b!1465610 (=> (not res!994554) (not e!823524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98777 (_ BitVec 32)) Bool)

(assert (=> b!1465610 (= res!994554 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49338 0))(
  ( (Unit!49339) )
))
(declare-fun lt!641420 () Unit!49338)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98777 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49338)

(assert (=> b!1465610 (= lt!641420 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1465611 () Bool)

(assert (=> b!1465611 (= e!823524 (or (= (select (arr!47672 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47672 a!2862) intermediateBeforeIndex!19) (select (arr!47672 a!2862) j!93))))))

(declare-fun b!1465612 () Bool)

(declare-fun res!994557 () Bool)

(assert (=> b!1465612 (=> (not res!994557) (not e!823528))))

(assert (=> b!1465612 (= res!994557 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465613 () Bool)

(declare-fun res!994565 () Bool)

(assert (=> b!1465613 (=> (not res!994565) (not e!823529))))

(assert (=> b!1465613 (= res!994565 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47672 a!2862) j!93) a!2862 mask!2687) lt!641419))))

(declare-fun b!1465614 () Bool)

(declare-fun res!994561 () Bool)

(assert (=> b!1465614 (=> (not res!994561) (not e!823530))))

(assert (=> b!1465614 (= res!994561 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48223 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48223 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48223 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465615 () Bool)

(declare-fun res!994564 () Bool)

(assert (=> b!1465615 (=> (not res!994564) (not e!823524))))

(assert (=> b!1465615 (= res!994564 (= (seekEntryOrOpen!0 (select (arr!47672 a!2862) j!93) a!2862 mask!2687) (Found!11947 j!93)))))

(declare-fun b!1465616 () Bool)

(assert (=> b!1465616 (= e!823532 (not (= lt!641424 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641423 lt!641421 lt!641422 mask!2687))))))

(declare-fun b!1465617 () Bool)

(declare-fun res!994551 () Bool)

(assert (=> b!1465617 (=> (not res!994551) (not e!823530))))

(assert (=> b!1465617 (= res!994551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465618 () Bool)

(assert (=> b!1465618 (= e!823527 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641421 lt!641422 mask!2687) (seekEntryOrOpen!0 lt!641421 lt!641422 mask!2687)))))

(assert (= (and start!125412 res!994560) b!1465601))

(assert (= (and b!1465601 res!994566) b!1465608))

(assert (= (and b!1465608 res!994555) b!1465602))

(assert (= (and b!1465602 res!994553) b!1465617))

(assert (= (and b!1465617 res!994551) b!1465609))

(assert (= (and b!1465609 res!994562) b!1465614))

(assert (= (and b!1465614 res!994561) b!1465607))

(assert (= (and b!1465607 res!994552) b!1465598))

(assert (= (and b!1465598 res!994549) b!1465613))

(assert (= (and b!1465613 res!994565) b!1465600))

(assert (= (and b!1465600 res!994550) b!1465604))

(assert (= (and b!1465604 c!135038) b!1465605))

(assert (= (and b!1465604 (not c!135038)) b!1465618))

(assert (= (and b!1465604 res!994563) b!1465612))

(assert (= (and b!1465612 res!994557) b!1465610))

(assert (= (and b!1465610 res!994554) b!1465615))

(assert (= (and b!1465615 res!994564) b!1465611))

(assert (= (and b!1465610 (not res!994559)) b!1465597))

(assert (= (and b!1465597 (not res!994558)) b!1465603))

(assert (= (and b!1465603 (not res!994556)) b!1465606))

(assert (= (and b!1465606 c!135037) b!1465616))

(assert (= (and b!1465606 (not c!135037)) b!1465599))

(declare-fun m!1352719 () Bool)

(assert (=> b!1465605 m!1352719))

(declare-fun m!1352721 () Bool)

(assert (=> b!1465602 m!1352721))

(assert (=> b!1465602 m!1352721))

(declare-fun m!1352723 () Bool)

(assert (=> b!1465602 m!1352723))

(assert (=> b!1465613 m!1352721))

(assert (=> b!1465613 m!1352721))

(declare-fun m!1352725 () Bool)

(assert (=> b!1465613 m!1352725))

(declare-fun m!1352727 () Bool)

(assert (=> start!125412 m!1352727))

(declare-fun m!1352729 () Bool)

(assert (=> start!125412 m!1352729))

(declare-fun m!1352731 () Bool)

(assert (=> b!1465611 m!1352731))

(assert (=> b!1465611 m!1352721))

(assert (=> b!1465598 m!1352721))

(assert (=> b!1465598 m!1352721))

(declare-fun m!1352733 () Bool)

(assert (=> b!1465598 m!1352733))

(assert (=> b!1465598 m!1352733))

(assert (=> b!1465598 m!1352721))

(declare-fun m!1352735 () Bool)

(assert (=> b!1465598 m!1352735))

(declare-fun m!1352737 () Bool)

(assert (=> b!1465600 m!1352737))

(assert (=> b!1465600 m!1352737))

(declare-fun m!1352739 () Bool)

(assert (=> b!1465600 m!1352739))

(declare-fun m!1352741 () Bool)

(assert (=> b!1465600 m!1352741))

(declare-fun m!1352743 () Bool)

(assert (=> b!1465600 m!1352743))

(declare-fun m!1352745 () Bool)

(assert (=> b!1465610 m!1352745))

(assert (=> b!1465610 m!1352741))

(declare-fun m!1352747 () Bool)

(assert (=> b!1465610 m!1352747))

(declare-fun m!1352749 () Bool)

(assert (=> b!1465610 m!1352749))

(declare-fun m!1352751 () Bool)

(assert (=> b!1465610 m!1352751))

(assert (=> b!1465610 m!1352721))

(declare-fun m!1352753 () Bool)

(assert (=> b!1465608 m!1352753))

(assert (=> b!1465608 m!1352753))

(declare-fun m!1352755 () Bool)

(assert (=> b!1465608 m!1352755))

(declare-fun m!1352757 () Bool)

(assert (=> b!1465617 m!1352757))

(declare-fun m!1352759 () Bool)

(assert (=> b!1465609 m!1352759))

(declare-fun m!1352761 () Bool)

(assert (=> b!1465599 m!1352761))

(declare-fun m!1352763 () Bool)

(assert (=> b!1465599 m!1352763))

(declare-fun m!1352765 () Bool)

(assert (=> b!1465616 m!1352765))

(assert (=> b!1465615 m!1352721))

(assert (=> b!1465615 m!1352721))

(declare-fun m!1352767 () Bool)

(assert (=> b!1465615 m!1352767))

(assert (=> b!1465607 m!1352741))

(declare-fun m!1352769 () Bool)

(assert (=> b!1465607 m!1352769))

(declare-fun m!1352771 () Bool)

(assert (=> b!1465618 m!1352771))

(assert (=> b!1465618 m!1352763))

(assert (=> b!1465603 m!1352721))

(assert (=> b!1465603 m!1352721))

(declare-fun m!1352773 () Bool)

(assert (=> b!1465603 m!1352773))

(declare-fun m!1352775 () Bool)

(assert (=> b!1465597 m!1352775))

(check-sat (not b!1465597) (not b!1465602) (not start!125412) (not b!1465598) (not b!1465613) (not b!1465617) (not b!1465616) (not b!1465610) (not b!1465603) (not b!1465608) (not b!1465599) (not b!1465618) (not b!1465615) (not b!1465605) (not b!1465600) (not b!1465609))
