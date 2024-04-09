; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123604 () Bool)

(assert start!123604)

(declare-fun b!1432611 () Bool)

(declare-fun e!808697 () Bool)

(declare-fun e!808694 () Bool)

(assert (=> b!1432611 (= e!808697 (not e!808694))))

(declare-fun res!966586 () Bool)

(assert (=> b!1432611 (=> res!966586 e!808694)))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97494 0))(
  ( (array!97495 (arr!47050 (Array (_ BitVec 32) (_ BitVec 64))) (size!47601 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97494)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1432611 (= res!966586 (or (= (select (arr!47050 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47050 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47050 a!2831) index!585) (select (arr!47050 a!2831) j!81)) (= (select (store (arr!47050 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808692 () Bool)

(assert (=> b!1432611 e!808692))

(declare-fun res!966589 () Bool)

(assert (=> b!1432611 (=> (not res!966589) (not e!808692))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97494 (_ BitVec 32)) Bool)

(assert (=> b!1432611 (= res!966589 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48396 0))(
  ( (Unit!48397) )
))
(declare-fun lt!630643 () Unit!48396)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97494 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48396)

(assert (=> b!1432611 (= lt!630643 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432612 () Bool)

(declare-fun res!966592 () Bool)

(assert (=> b!1432612 (=> (not res!966592) (not e!808697))))

(declare-datatypes ((SeekEntryResult!11351 0))(
  ( (MissingZero!11351 (index!47795 (_ BitVec 32))) (Found!11351 (index!47796 (_ BitVec 32))) (Intermediate!11351 (undefined!12163 Bool) (index!47797 (_ BitVec 32)) (x!129444 (_ BitVec 32))) (Undefined!11351) (MissingVacant!11351 (index!47798 (_ BitVec 32))) )
))
(declare-fun lt!630642 () SeekEntryResult!11351)

(declare-fun lt!630641 () array!97494)

(declare-fun lt!630645 () (_ BitVec 64))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97494 (_ BitVec 32)) SeekEntryResult!11351)

(assert (=> b!1432612 (= res!966592 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630645 lt!630641 mask!2608) lt!630642))))

(declare-fun b!1432613 () Bool)

(declare-fun res!966593 () Bool)

(declare-fun e!808693 () Bool)

(assert (=> b!1432613 (=> (not res!966593) (not e!808693))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1432613 (= res!966593 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47601 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47601 a!2831))))))

(declare-fun b!1432614 () Bool)

(assert (=> b!1432614 (= e!808694 true)))

(declare-fun lt!630646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432614 (= lt!630646 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432615 () Bool)

(declare-fun res!966584 () Bool)

(assert (=> b!1432615 (=> (not res!966584) (not e!808693))))

(assert (=> b!1432615 (= res!966584 (and (= (size!47601 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47601 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47601 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!966587 () Bool)

(assert (=> start!123604 (=> (not res!966587) (not e!808693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123604 (= res!966587 (validMask!0 mask!2608))))

(assert (=> start!123604 e!808693))

(assert (=> start!123604 true))

(declare-fun array_inv!35995 (array!97494) Bool)

(assert (=> start!123604 (array_inv!35995 a!2831)))

(declare-fun b!1432616 () Bool)

(declare-fun res!966588 () Bool)

(assert (=> b!1432616 (=> (not res!966588) (not e!808697))))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(assert (=> b!1432616 (= res!966588 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432617 () Bool)

(declare-fun res!966596 () Bool)

(assert (=> b!1432617 (=> (not res!966596) (not e!808693))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432617 (= res!966596 (validKeyInArray!0 (select (arr!47050 a!2831) j!81)))))

(declare-fun b!1432618 () Bool)

(declare-fun e!808695 () Bool)

(assert (=> b!1432618 (= e!808695 e!808697)))

(declare-fun res!966597 () Bool)

(assert (=> b!1432618 (=> (not res!966597) (not e!808697))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432618 (= res!966597 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630645 mask!2608) lt!630645 lt!630641 mask!2608) lt!630642))))

(assert (=> b!1432618 (= lt!630642 (Intermediate!11351 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432618 (= lt!630645 (select (store (arr!47050 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432618 (= lt!630641 (array!97495 (store (arr!47050 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47601 a!2831)))))

(declare-fun b!1432619 () Bool)

(assert (=> b!1432619 (= e!808693 e!808695)))

(declare-fun res!966590 () Bool)

(assert (=> b!1432619 (=> (not res!966590) (not e!808695))))

(declare-fun lt!630644 () SeekEntryResult!11351)

(assert (=> b!1432619 (= res!966590 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47050 a!2831) j!81) mask!2608) (select (arr!47050 a!2831) j!81) a!2831 mask!2608) lt!630644))))

(assert (=> b!1432619 (= lt!630644 (Intermediate!11351 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432620 () Bool)

(declare-fun res!966595 () Bool)

(assert (=> b!1432620 (=> (not res!966595) (not e!808693))))

(assert (=> b!1432620 (= res!966595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432621 () Bool)

(declare-fun res!966585 () Bool)

(assert (=> b!1432621 (=> (not res!966585) (not e!808693))))

(declare-datatypes ((List!33740 0))(
  ( (Nil!33737) (Cons!33736 (h!35059 (_ BitVec 64)) (t!48441 List!33740)) )
))
(declare-fun arrayNoDuplicates!0 (array!97494 (_ BitVec 32) List!33740) Bool)

(assert (=> b!1432621 (= res!966585 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33737))))

(declare-fun b!1432622 () Bool)

(declare-fun res!966594 () Bool)

(assert (=> b!1432622 (=> (not res!966594) (not e!808693))))

(assert (=> b!1432622 (= res!966594 (validKeyInArray!0 (select (arr!47050 a!2831) i!982)))))

(declare-fun b!1432623 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97494 (_ BitVec 32)) SeekEntryResult!11351)

(assert (=> b!1432623 (= e!808692 (= (seekEntryOrOpen!0 (select (arr!47050 a!2831) j!81) a!2831 mask!2608) (Found!11351 j!81)))))

(declare-fun b!1432624 () Bool)

(declare-fun res!966591 () Bool)

(assert (=> b!1432624 (=> (not res!966591) (not e!808697))))

(assert (=> b!1432624 (= res!966591 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47050 a!2831) j!81) a!2831 mask!2608) lt!630644))))

(assert (= (and start!123604 res!966587) b!1432615))

(assert (= (and b!1432615 res!966584) b!1432622))

(assert (= (and b!1432622 res!966594) b!1432617))

(assert (= (and b!1432617 res!966596) b!1432620))

(assert (= (and b!1432620 res!966595) b!1432621))

(assert (= (and b!1432621 res!966585) b!1432613))

(assert (= (and b!1432613 res!966593) b!1432619))

(assert (= (and b!1432619 res!966590) b!1432618))

(assert (= (and b!1432618 res!966597) b!1432624))

(assert (= (and b!1432624 res!966591) b!1432612))

(assert (= (and b!1432612 res!966592) b!1432616))

(assert (= (and b!1432616 res!966588) b!1432611))

(assert (= (and b!1432611 res!966589) b!1432623))

(assert (= (and b!1432611 (not res!966586)) b!1432614))

(declare-fun m!1322489 () Bool)

(assert (=> b!1432620 m!1322489))

(declare-fun m!1322491 () Bool)

(assert (=> b!1432622 m!1322491))

(assert (=> b!1432622 m!1322491))

(declare-fun m!1322493 () Bool)

(assert (=> b!1432622 m!1322493))

(declare-fun m!1322495 () Bool)

(assert (=> b!1432619 m!1322495))

(assert (=> b!1432619 m!1322495))

(declare-fun m!1322497 () Bool)

(assert (=> b!1432619 m!1322497))

(assert (=> b!1432619 m!1322497))

(assert (=> b!1432619 m!1322495))

(declare-fun m!1322499 () Bool)

(assert (=> b!1432619 m!1322499))

(declare-fun m!1322501 () Bool)

(assert (=> b!1432614 m!1322501))

(assert (=> b!1432623 m!1322495))

(assert (=> b!1432623 m!1322495))

(declare-fun m!1322503 () Bool)

(assert (=> b!1432623 m!1322503))

(declare-fun m!1322505 () Bool)

(assert (=> b!1432612 m!1322505))

(declare-fun m!1322507 () Bool)

(assert (=> start!123604 m!1322507))

(declare-fun m!1322509 () Bool)

(assert (=> start!123604 m!1322509))

(declare-fun m!1322511 () Bool)

(assert (=> b!1432611 m!1322511))

(declare-fun m!1322513 () Bool)

(assert (=> b!1432611 m!1322513))

(declare-fun m!1322515 () Bool)

(assert (=> b!1432611 m!1322515))

(declare-fun m!1322517 () Bool)

(assert (=> b!1432611 m!1322517))

(assert (=> b!1432611 m!1322495))

(declare-fun m!1322519 () Bool)

(assert (=> b!1432611 m!1322519))

(assert (=> b!1432624 m!1322495))

(assert (=> b!1432624 m!1322495))

(declare-fun m!1322521 () Bool)

(assert (=> b!1432624 m!1322521))

(declare-fun m!1322523 () Bool)

(assert (=> b!1432621 m!1322523))

(assert (=> b!1432617 m!1322495))

(assert (=> b!1432617 m!1322495))

(declare-fun m!1322525 () Bool)

(assert (=> b!1432617 m!1322525))

(declare-fun m!1322527 () Bool)

(assert (=> b!1432618 m!1322527))

(assert (=> b!1432618 m!1322527))

(declare-fun m!1322529 () Bool)

(assert (=> b!1432618 m!1322529))

(assert (=> b!1432618 m!1322511))

(declare-fun m!1322531 () Bool)

(assert (=> b!1432618 m!1322531))

(push 1)

