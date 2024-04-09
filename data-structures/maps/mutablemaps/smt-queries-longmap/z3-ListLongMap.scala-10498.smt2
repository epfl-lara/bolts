; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123606 () Bool)

(assert start!123606)

(declare-fun b!1432653 () Bool)

(declare-fun res!966635 () Bool)

(declare-fun e!808710 () Bool)

(assert (=> b!1432653 (=> (not res!966635) (not e!808710))))

(declare-datatypes ((array!97496 0))(
  ( (array!97497 (arr!47051 (Array (_ BitVec 32) (_ BitVec 64))) (size!47602 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97496)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432653 (= res!966635 (validKeyInArray!0 (select (arr!47051 a!2831) j!81)))))

(declare-fun b!1432654 () Bool)

(declare-fun e!808713 () Bool)

(declare-fun e!808714 () Bool)

(assert (=> b!1432654 (= e!808713 e!808714)))

(declare-fun res!966626 () Bool)

(assert (=> b!1432654 (=> (not res!966626) (not e!808714))))

(declare-fun lt!630663 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11352 0))(
  ( (MissingZero!11352 (index!47799 (_ BitVec 32))) (Found!11352 (index!47800 (_ BitVec 32))) (Intermediate!11352 (undefined!12164 Bool) (index!47801 (_ BitVec 32)) (x!129445 (_ BitVec 32))) (Undefined!11352) (MissingVacant!11352 (index!47802 (_ BitVec 32))) )
))
(declare-fun lt!630662 () SeekEntryResult!11352)

(declare-fun lt!630660 () array!97496)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97496 (_ BitVec 32)) SeekEntryResult!11352)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432654 (= res!966626 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630663 mask!2608) lt!630663 lt!630660 mask!2608) lt!630662))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432654 (= lt!630662 (Intermediate!11352 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432654 (= lt!630663 (select (store (arr!47051 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432654 (= lt!630660 (array!97497 (store (arr!47051 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47602 a!2831)))))

(declare-fun b!1432655 () Bool)

(declare-fun res!966634 () Bool)

(assert (=> b!1432655 (=> (not res!966634) (not e!808710))))

(assert (=> b!1432655 (= res!966634 (validKeyInArray!0 (select (arr!47051 a!2831) i!982)))))

(declare-fun e!808712 () Bool)

(declare-fun b!1432656 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97496 (_ BitVec 32)) SeekEntryResult!11352)

(assert (=> b!1432656 (= e!808712 (= (seekEntryOrOpen!0 (select (arr!47051 a!2831) j!81) a!2831 mask!2608) (Found!11352 j!81)))))

(declare-fun b!1432657 () Bool)

(declare-fun e!808711 () Bool)

(assert (=> b!1432657 (= e!808711 true)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!630659 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432657 (= lt!630659 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432658 () Bool)

(declare-fun res!966637 () Bool)

(assert (=> b!1432658 (=> (not res!966637) (not e!808710))))

(declare-datatypes ((List!33741 0))(
  ( (Nil!33738) (Cons!33737 (h!35060 (_ BitVec 64)) (t!48442 List!33741)) )
))
(declare-fun arrayNoDuplicates!0 (array!97496 (_ BitVec 32) List!33741) Bool)

(assert (=> b!1432658 (= res!966637 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33738))))

(declare-fun b!1432660 () Bool)

(declare-fun res!966627 () Bool)

(assert (=> b!1432660 (=> (not res!966627) (not e!808710))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97496 (_ BitVec 32)) Bool)

(assert (=> b!1432660 (= res!966627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432661 () Bool)

(declare-fun res!966636 () Bool)

(assert (=> b!1432661 (=> (not res!966636) (not e!808714))))

(declare-fun lt!630661 () SeekEntryResult!11352)

(assert (=> b!1432661 (= res!966636 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47051 a!2831) j!81) a!2831 mask!2608) lt!630661))))

(declare-fun b!1432662 () Bool)

(assert (=> b!1432662 (= e!808714 (not e!808711))))

(declare-fun res!966638 () Bool)

(assert (=> b!1432662 (=> res!966638 e!808711)))

(assert (=> b!1432662 (= res!966638 (or (= (select (arr!47051 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47051 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47051 a!2831) index!585) (select (arr!47051 a!2831) j!81)) (= (select (store (arr!47051 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1432662 e!808712))

(declare-fun res!966630 () Bool)

(assert (=> b!1432662 (=> (not res!966630) (not e!808712))))

(assert (=> b!1432662 (= res!966630 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48398 0))(
  ( (Unit!48399) )
))
(declare-fun lt!630664 () Unit!48398)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97496 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48398)

(assert (=> b!1432662 (= lt!630664 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432663 () Bool)

(assert (=> b!1432663 (= e!808710 e!808713)))

(declare-fun res!966628 () Bool)

(assert (=> b!1432663 (=> (not res!966628) (not e!808713))))

(assert (=> b!1432663 (= res!966628 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47051 a!2831) j!81) mask!2608) (select (arr!47051 a!2831) j!81) a!2831 mask!2608) lt!630661))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1432663 (= lt!630661 (Intermediate!11352 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432664 () Bool)

(declare-fun res!966631 () Bool)

(assert (=> b!1432664 (=> (not res!966631) (not e!808710))))

(assert (=> b!1432664 (= res!966631 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47602 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47602 a!2831))))))

(declare-fun res!966633 () Bool)

(assert (=> start!123606 (=> (not res!966633) (not e!808710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123606 (= res!966633 (validMask!0 mask!2608))))

(assert (=> start!123606 e!808710))

(assert (=> start!123606 true))

(declare-fun array_inv!35996 (array!97496) Bool)

(assert (=> start!123606 (array_inv!35996 a!2831)))

(declare-fun b!1432659 () Bool)

(declare-fun res!966632 () Bool)

(assert (=> b!1432659 (=> (not res!966632) (not e!808714))))

(assert (=> b!1432659 (= res!966632 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432665 () Bool)

(declare-fun res!966639 () Bool)

(assert (=> b!1432665 (=> (not res!966639) (not e!808714))))

(assert (=> b!1432665 (= res!966639 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630663 lt!630660 mask!2608) lt!630662))))

(declare-fun b!1432666 () Bool)

(declare-fun res!966629 () Bool)

(assert (=> b!1432666 (=> (not res!966629) (not e!808710))))

(assert (=> b!1432666 (= res!966629 (and (= (size!47602 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47602 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47602 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!123606 res!966633) b!1432666))

(assert (= (and b!1432666 res!966629) b!1432655))

(assert (= (and b!1432655 res!966634) b!1432653))

(assert (= (and b!1432653 res!966635) b!1432660))

(assert (= (and b!1432660 res!966627) b!1432658))

(assert (= (and b!1432658 res!966637) b!1432664))

(assert (= (and b!1432664 res!966631) b!1432663))

(assert (= (and b!1432663 res!966628) b!1432654))

(assert (= (and b!1432654 res!966626) b!1432661))

(assert (= (and b!1432661 res!966636) b!1432665))

(assert (= (and b!1432665 res!966639) b!1432659))

(assert (= (and b!1432659 res!966632) b!1432662))

(assert (= (and b!1432662 res!966630) b!1432656))

(assert (= (and b!1432662 (not res!966638)) b!1432657))

(declare-fun m!1322533 () Bool)

(assert (=> b!1432665 m!1322533))

(declare-fun m!1322535 () Bool)

(assert (=> b!1432655 m!1322535))

(assert (=> b!1432655 m!1322535))

(declare-fun m!1322537 () Bool)

(assert (=> b!1432655 m!1322537))

(declare-fun m!1322539 () Bool)

(assert (=> b!1432653 m!1322539))

(assert (=> b!1432653 m!1322539))

(declare-fun m!1322541 () Bool)

(assert (=> b!1432653 m!1322541))

(declare-fun m!1322543 () Bool)

(assert (=> b!1432662 m!1322543))

(declare-fun m!1322545 () Bool)

(assert (=> b!1432662 m!1322545))

(declare-fun m!1322547 () Bool)

(assert (=> b!1432662 m!1322547))

(declare-fun m!1322549 () Bool)

(assert (=> b!1432662 m!1322549))

(assert (=> b!1432662 m!1322539))

(declare-fun m!1322551 () Bool)

(assert (=> b!1432662 m!1322551))

(declare-fun m!1322553 () Bool)

(assert (=> b!1432660 m!1322553))

(declare-fun m!1322555 () Bool)

(assert (=> b!1432658 m!1322555))

(declare-fun m!1322557 () Bool)

(assert (=> start!123606 m!1322557))

(declare-fun m!1322559 () Bool)

(assert (=> start!123606 m!1322559))

(declare-fun m!1322561 () Bool)

(assert (=> b!1432657 m!1322561))

(assert (=> b!1432656 m!1322539))

(assert (=> b!1432656 m!1322539))

(declare-fun m!1322563 () Bool)

(assert (=> b!1432656 m!1322563))

(assert (=> b!1432663 m!1322539))

(assert (=> b!1432663 m!1322539))

(declare-fun m!1322565 () Bool)

(assert (=> b!1432663 m!1322565))

(assert (=> b!1432663 m!1322565))

(assert (=> b!1432663 m!1322539))

(declare-fun m!1322567 () Bool)

(assert (=> b!1432663 m!1322567))

(declare-fun m!1322569 () Bool)

(assert (=> b!1432654 m!1322569))

(assert (=> b!1432654 m!1322569))

(declare-fun m!1322571 () Bool)

(assert (=> b!1432654 m!1322571))

(assert (=> b!1432654 m!1322543))

(declare-fun m!1322573 () Bool)

(assert (=> b!1432654 m!1322573))

(assert (=> b!1432661 m!1322539))

(assert (=> b!1432661 m!1322539))

(declare-fun m!1322575 () Bool)

(assert (=> b!1432661 m!1322575))

(check-sat (not b!1432665) (not b!1432661) (not b!1432662) (not b!1432653) (not b!1432660) (not b!1432654) (not b!1432655) (not b!1432656) (not b!1432663) (not b!1432658) (not b!1432657) (not start!123606))
(check-sat)
