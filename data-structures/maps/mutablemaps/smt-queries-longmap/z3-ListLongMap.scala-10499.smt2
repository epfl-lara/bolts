; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123612 () Bool)

(assert start!123612)

(declare-fun res!966753 () Bool)

(declare-fun e!808768 () Bool)

(assert (=> start!123612 (=> (not res!966753) (not e!808768))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123612 (= res!966753 (validMask!0 mask!2608))))

(assert (=> start!123612 e!808768))

(assert (=> start!123612 true))

(declare-datatypes ((array!97502 0))(
  ( (array!97503 (arr!47054 (Array (_ BitVec 32) (_ BitVec 64))) (size!47605 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97502)

(declare-fun array_inv!35999 (array!97502) Bool)

(assert (=> start!123612 (array_inv!35999 a!2831)))

(declare-fun b!1432779 () Bool)

(declare-fun res!966754 () Bool)

(assert (=> b!1432779 (=> (not res!966754) (not e!808768))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432779 (= res!966754 (validKeyInArray!0 (select (arr!47054 a!2831) i!982)))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun b!1432780 () Bool)

(declare-fun e!808764 () Bool)

(declare-datatypes ((SeekEntryResult!11355 0))(
  ( (MissingZero!11355 (index!47811 (_ BitVec 32))) (Found!11355 (index!47812 (_ BitVec 32))) (Intermediate!11355 (undefined!12167 Bool) (index!47813 (_ BitVec 32)) (x!129456 (_ BitVec 32))) (Undefined!11355) (MissingVacant!11355 (index!47814 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97502 (_ BitVec 32)) SeekEntryResult!11355)

(assert (=> b!1432780 (= e!808764 (= (seekEntryOrOpen!0 (select (arr!47054 a!2831) j!81) a!2831 mask!2608) (Found!11355 j!81)))))

(declare-fun b!1432781 () Bool)

(declare-fun res!966760 () Bool)

(declare-fun e!808769 () Bool)

(assert (=> b!1432781 (=> (not res!966760) (not e!808769))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!630717 () SeekEntryResult!11355)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97502 (_ BitVec 32)) SeekEntryResult!11355)

(assert (=> b!1432781 (= res!966760 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47054 a!2831) j!81) a!2831 mask!2608) lt!630717))))

(declare-fun b!1432782 () Bool)

(declare-fun res!966757 () Bool)

(assert (=> b!1432782 (=> (not res!966757) (not e!808769))))

(declare-fun lt!630718 () SeekEntryResult!11355)

(declare-fun lt!630715 () array!97502)

(declare-fun lt!630714 () (_ BitVec 64))

(assert (=> b!1432782 (= res!966757 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630714 lt!630715 mask!2608) lt!630718))))

(declare-fun b!1432783 () Bool)

(declare-fun res!966759 () Bool)

(assert (=> b!1432783 (=> (not res!966759) (not e!808768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97502 (_ BitVec 32)) Bool)

(assert (=> b!1432783 (= res!966759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432784 () Bool)

(declare-fun e!808766 () Bool)

(assert (=> b!1432784 (= e!808769 (not e!808766))))

(declare-fun res!966765 () Bool)

(assert (=> b!1432784 (=> res!966765 e!808766)))

(assert (=> b!1432784 (= res!966765 (or (= (select (arr!47054 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47054 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47054 a!2831) index!585) (select (arr!47054 a!2831) j!81)) (= (select (store (arr!47054 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1432784 e!808764))

(declare-fun res!966764 () Bool)

(assert (=> b!1432784 (=> (not res!966764) (not e!808764))))

(assert (=> b!1432784 (= res!966764 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48404 0))(
  ( (Unit!48405) )
))
(declare-fun lt!630716 () Unit!48404)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97502 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48404)

(assert (=> b!1432784 (= lt!630716 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432785 () Bool)

(declare-fun res!966758 () Bool)

(assert (=> b!1432785 (=> (not res!966758) (not e!808769))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432785 (= res!966758 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432786 () Bool)

(declare-fun res!966763 () Bool)

(assert (=> b!1432786 (=> (not res!966763) (not e!808768))))

(declare-datatypes ((List!33744 0))(
  ( (Nil!33741) (Cons!33740 (h!35063 (_ BitVec 64)) (t!48445 List!33744)) )
))
(declare-fun arrayNoDuplicates!0 (array!97502 (_ BitVec 32) List!33744) Bool)

(assert (=> b!1432786 (= res!966763 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33741))))

(declare-fun b!1432787 () Bool)

(declare-fun res!966752 () Bool)

(assert (=> b!1432787 (=> (not res!966752) (not e!808768))))

(assert (=> b!1432787 (= res!966752 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47605 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47605 a!2831))))))

(declare-fun b!1432788 () Bool)

(declare-fun e!808767 () Bool)

(assert (=> b!1432788 (= e!808767 e!808769)))

(declare-fun res!966762 () Bool)

(assert (=> b!1432788 (=> (not res!966762) (not e!808769))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432788 (= res!966762 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630714 mask!2608) lt!630714 lt!630715 mask!2608) lt!630718))))

(assert (=> b!1432788 (= lt!630718 (Intermediate!11355 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432788 (= lt!630714 (select (store (arr!47054 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432788 (= lt!630715 (array!97503 (store (arr!47054 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47605 a!2831)))))

(declare-fun b!1432789 () Bool)

(assert (=> b!1432789 (= e!808766 true)))

(declare-fun lt!630713 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432789 (= lt!630713 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432790 () Bool)

(declare-fun res!966756 () Bool)

(assert (=> b!1432790 (=> (not res!966756) (not e!808768))))

(assert (=> b!1432790 (= res!966756 (validKeyInArray!0 (select (arr!47054 a!2831) j!81)))))

(declare-fun b!1432791 () Bool)

(declare-fun res!966761 () Bool)

(assert (=> b!1432791 (=> (not res!966761) (not e!808768))))

(assert (=> b!1432791 (= res!966761 (and (= (size!47605 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47605 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47605 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432792 () Bool)

(assert (=> b!1432792 (= e!808768 e!808767)))

(declare-fun res!966755 () Bool)

(assert (=> b!1432792 (=> (not res!966755) (not e!808767))))

(assert (=> b!1432792 (= res!966755 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47054 a!2831) j!81) mask!2608) (select (arr!47054 a!2831) j!81) a!2831 mask!2608) lt!630717))))

(assert (=> b!1432792 (= lt!630717 (Intermediate!11355 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!123612 res!966753) b!1432791))

(assert (= (and b!1432791 res!966761) b!1432779))

(assert (= (and b!1432779 res!966754) b!1432790))

(assert (= (and b!1432790 res!966756) b!1432783))

(assert (= (and b!1432783 res!966759) b!1432786))

(assert (= (and b!1432786 res!966763) b!1432787))

(assert (= (and b!1432787 res!966752) b!1432792))

(assert (= (and b!1432792 res!966755) b!1432788))

(assert (= (and b!1432788 res!966762) b!1432781))

(assert (= (and b!1432781 res!966760) b!1432782))

(assert (= (and b!1432782 res!966757) b!1432785))

(assert (= (and b!1432785 res!966758) b!1432784))

(assert (= (and b!1432784 res!966764) b!1432780))

(assert (= (and b!1432784 (not res!966765)) b!1432789))

(declare-fun m!1322665 () Bool)

(assert (=> b!1432790 m!1322665))

(assert (=> b!1432790 m!1322665))

(declare-fun m!1322667 () Bool)

(assert (=> b!1432790 m!1322667))

(assert (=> b!1432781 m!1322665))

(assert (=> b!1432781 m!1322665))

(declare-fun m!1322669 () Bool)

(assert (=> b!1432781 m!1322669))

(declare-fun m!1322671 () Bool)

(assert (=> b!1432779 m!1322671))

(assert (=> b!1432779 m!1322671))

(declare-fun m!1322673 () Bool)

(assert (=> b!1432779 m!1322673))

(assert (=> b!1432780 m!1322665))

(assert (=> b!1432780 m!1322665))

(declare-fun m!1322675 () Bool)

(assert (=> b!1432780 m!1322675))

(declare-fun m!1322677 () Bool)

(assert (=> b!1432786 m!1322677))

(declare-fun m!1322679 () Bool)

(assert (=> b!1432783 m!1322679))

(declare-fun m!1322681 () Bool)

(assert (=> b!1432789 m!1322681))

(assert (=> b!1432792 m!1322665))

(assert (=> b!1432792 m!1322665))

(declare-fun m!1322683 () Bool)

(assert (=> b!1432792 m!1322683))

(assert (=> b!1432792 m!1322683))

(assert (=> b!1432792 m!1322665))

(declare-fun m!1322685 () Bool)

(assert (=> b!1432792 m!1322685))

(declare-fun m!1322687 () Bool)

(assert (=> b!1432782 m!1322687))

(declare-fun m!1322689 () Bool)

(assert (=> b!1432784 m!1322689))

(declare-fun m!1322691 () Bool)

(assert (=> b!1432784 m!1322691))

(declare-fun m!1322693 () Bool)

(assert (=> b!1432784 m!1322693))

(declare-fun m!1322695 () Bool)

(assert (=> b!1432784 m!1322695))

(assert (=> b!1432784 m!1322665))

(declare-fun m!1322697 () Bool)

(assert (=> b!1432784 m!1322697))

(declare-fun m!1322699 () Bool)

(assert (=> b!1432788 m!1322699))

(assert (=> b!1432788 m!1322699))

(declare-fun m!1322701 () Bool)

(assert (=> b!1432788 m!1322701))

(assert (=> b!1432788 m!1322689))

(declare-fun m!1322703 () Bool)

(assert (=> b!1432788 m!1322703))

(declare-fun m!1322705 () Bool)

(assert (=> start!123612 m!1322705))

(declare-fun m!1322707 () Bool)

(assert (=> start!123612 m!1322707))

(check-sat (not b!1432780) (not b!1432790) (not b!1432782) (not b!1432784) (not b!1432788) (not b!1432789) (not start!123612) (not b!1432783) (not b!1432792) (not b!1432786) (not b!1432779) (not b!1432781))
(check-sat)
