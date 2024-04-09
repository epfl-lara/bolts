; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123608 () Bool)

(assert start!123608)

(declare-fun b!1432695 () Bool)

(declare-fun res!966676 () Bool)

(declare-fun e!808731 () Bool)

(assert (=> b!1432695 (=> (not res!966676) (not e!808731))))

(declare-datatypes ((SeekEntryResult!11353 0))(
  ( (MissingZero!11353 (index!47803 (_ BitVec 32))) (Found!11353 (index!47804 (_ BitVec 32))) (Intermediate!11353 (undefined!12165 Bool) (index!47805 (_ BitVec 32)) (x!129446 (_ BitVec 32))) (Undefined!11353) (MissingVacant!11353 (index!47806 (_ BitVec 32))) )
))
(declare-fun lt!630677 () SeekEntryResult!11353)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97498 0))(
  ( (array!97499 (arr!47052 (Array (_ BitVec 32) (_ BitVec 64))) (size!47603 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97498)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97498 (_ BitVec 32)) SeekEntryResult!11353)

(assert (=> b!1432695 (= res!966676 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47052 a!2831) j!81) a!2831 mask!2608) lt!630677))))

(declare-fun b!1432696 () Bool)

(declare-fun e!808729 () Bool)

(assert (=> b!1432696 (= e!808729 true)))

(declare-fun lt!630682 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432696 (= lt!630682 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun res!966675 () Bool)

(declare-fun e!808733 () Bool)

(assert (=> start!123608 (=> (not res!966675) (not e!808733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123608 (= res!966675 (validMask!0 mask!2608))))

(assert (=> start!123608 e!808733))

(assert (=> start!123608 true))

(declare-fun array_inv!35997 (array!97498) Bool)

(assert (=> start!123608 (array_inv!35997 a!2831)))

(declare-fun b!1432697 () Bool)

(declare-fun res!966672 () Bool)

(assert (=> b!1432697 (=> (not res!966672) (not e!808733))))

(declare-datatypes ((List!33742 0))(
  ( (Nil!33739) (Cons!33738 (h!35061 (_ BitVec 64)) (t!48443 List!33742)) )
))
(declare-fun arrayNoDuplicates!0 (array!97498 (_ BitVec 32) List!33742) Bool)

(assert (=> b!1432697 (= res!966672 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33739))))

(declare-fun b!1432698 () Bool)

(declare-fun res!966669 () Bool)

(assert (=> b!1432698 (=> (not res!966669) (not e!808731))))

(declare-fun lt!630681 () (_ BitVec 64))

(declare-fun lt!630680 () array!97498)

(declare-fun lt!630679 () SeekEntryResult!11353)

(assert (=> b!1432698 (= res!966669 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630681 lt!630680 mask!2608) lt!630679))))

(declare-fun e!808728 () Bool)

(declare-fun b!1432699 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97498 (_ BitVec 32)) SeekEntryResult!11353)

(assert (=> b!1432699 (= e!808728 (= (seekEntryOrOpen!0 (select (arr!47052 a!2831) j!81) a!2831 mask!2608) (Found!11353 j!81)))))

(declare-fun b!1432700 () Bool)

(declare-fun res!966671 () Bool)

(assert (=> b!1432700 (=> (not res!966671) (not e!808733))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1432700 (= res!966671 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47603 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47603 a!2831))))))

(declare-fun b!1432701 () Bool)

(declare-fun res!966668 () Bool)

(assert (=> b!1432701 (=> (not res!966668) (not e!808733))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432701 (= res!966668 (validKeyInArray!0 (select (arr!47052 a!2831) i!982)))))

(declare-fun b!1432702 () Bool)

(declare-fun res!966677 () Bool)

(assert (=> b!1432702 (=> (not res!966677) (not e!808733))))

(assert (=> b!1432702 (= res!966677 (and (= (size!47603 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47603 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47603 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432703 () Bool)

(declare-fun e!808732 () Bool)

(assert (=> b!1432703 (= e!808732 e!808731)))

(declare-fun res!966679 () Bool)

(assert (=> b!1432703 (=> (not res!966679) (not e!808731))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432703 (= res!966679 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630681 mask!2608) lt!630681 lt!630680 mask!2608) lt!630679))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432703 (= lt!630679 (Intermediate!11353 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432703 (= lt!630681 (select (store (arr!47052 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432703 (= lt!630680 (array!97499 (store (arr!47052 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47603 a!2831)))))

(declare-fun b!1432704 () Bool)

(declare-fun res!966680 () Bool)

(assert (=> b!1432704 (=> (not res!966680) (not e!808733))))

(assert (=> b!1432704 (= res!966680 (validKeyInArray!0 (select (arr!47052 a!2831) j!81)))))

(declare-fun b!1432705 () Bool)

(assert (=> b!1432705 (= e!808733 e!808732)))

(declare-fun res!966670 () Bool)

(assert (=> b!1432705 (=> (not res!966670) (not e!808732))))

(assert (=> b!1432705 (= res!966670 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47052 a!2831) j!81) mask!2608) (select (arr!47052 a!2831) j!81) a!2831 mask!2608) lt!630677))))

(assert (=> b!1432705 (= lt!630677 (Intermediate!11353 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432706 () Bool)

(declare-fun res!966673 () Bool)

(assert (=> b!1432706 (=> (not res!966673) (not e!808733))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97498 (_ BitVec 32)) Bool)

(assert (=> b!1432706 (= res!966673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432707 () Bool)

(assert (=> b!1432707 (= e!808731 (not e!808729))))

(declare-fun res!966681 () Bool)

(assert (=> b!1432707 (=> res!966681 e!808729)))

(assert (=> b!1432707 (= res!966681 (or (= (select (arr!47052 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47052 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47052 a!2831) index!585) (select (arr!47052 a!2831) j!81)) (= (select (store (arr!47052 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1432707 e!808728))

(declare-fun res!966674 () Bool)

(assert (=> b!1432707 (=> (not res!966674) (not e!808728))))

(assert (=> b!1432707 (= res!966674 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48400 0))(
  ( (Unit!48401) )
))
(declare-fun lt!630678 () Unit!48400)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97498 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48400)

(assert (=> b!1432707 (= lt!630678 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432708 () Bool)

(declare-fun res!966678 () Bool)

(assert (=> b!1432708 (=> (not res!966678) (not e!808731))))

(assert (=> b!1432708 (= res!966678 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!123608 res!966675) b!1432702))

(assert (= (and b!1432702 res!966677) b!1432701))

(assert (= (and b!1432701 res!966668) b!1432704))

(assert (= (and b!1432704 res!966680) b!1432706))

(assert (= (and b!1432706 res!966673) b!1432697))

(assert (= (and b!1432697 res!966672) b!1432700))

(assert (= (and b!1432700 res!966671) b!1432705))

(assert (= (and b!1432705 res!966670) b!1432703))

(assert (= (and b!1432703 res!966679) b!1432695))

(assert (= (and b!1432695 res!966676) b!1432698))

(assert (= (and b!1432698 res!966669) b!1432708))

(assert (= (and b!1432708 res!966678) b!1432707))

(assert (= (and b!1432707 res!966674) b!1432699))

(assert (= (and b!1432707 (not res!966681)) b!1432696))

(declare-fun m!1322577 () Bool)

(assert (=> b!1432705 m!1322577))

(assert (=> b!1432705 m!1322577))

(declare-fun m!1322579 () Bool)

(assert (=> b!1432705 m!1322579))

(assert (=> b!1432705 m!1322579))

(assert (=> b!1432705 m!1322577))

(declare-fun m!1322581 () Bool)

(assert (=> b!1432705 m!1322581))

(assert (=> b!1432695 m!1322577))

(assert (=> b!1432695 m!1322577))

(declare-fun m!1322583 () Bool)

(assert (=> b!1432695 m!1322583))

(declare-fun m!1322585 () Bool)

(assert (=> b!1432698 m!1322585))

(assert (=> b!1432699 m!1322577))

(assert (=> b!1432699 m!1322577))

(declare-fun m!1322587 () Bool)

(assert (=> b!1432699 m!1322587))

(declare-fun m!1322589 () Bool)

(assert (=> b!1432706 m!1322589))

(declare-fun m!1322591 () Bool)

(assert (=> b!1432703 m!1322591))

(assert (=> b!1432703 m!1322591))

(declare-fun m!1322593 () Bool)

(assert (=> b!1432703 m!1322593))

(declare-fun m!1322595 () Bool)

(assert (=> b!1432703 m!1322595))

(declare-fun m!1322597 () Bool)

(assert (=> b!1432703 m!1322597))

(assert (=> b!1432707 m!1322595))

(declare-fun m!1322599 () Bool)

(assert (=> b!1432707 m!1322599))

(declare-fun m!1322601 () Bool)

(assert (=> b!1432707 m!1322601))

(declare-fun m!1322603 () Bool)

(assert (=> b!1432707 m!1322603))

(assert (=> b!1432707 m!1322577))

(declare-fun m!1322605 () Bool)

(assert (=> b!1432707 m!1322605))

(declare-fun m!1322607 () Bool)

(assert (=> b!1432701 m!1322607))

(assert (=> b!1432701 m!1322607))

(declare-fun m!1322609 () Bool)

(assert (=> b!1432701 m!1322609))

(declare-fun m!1322611 () Bool)

(assert (=> b!1432696 m!1322611))

(declare-fun m!1322613 () Bool)

(assert (=> start!123608 m!1322613))

(declare-fun m!1322615 () Bool)

(assert (=> start!123608 m!1322615))

(assert (=> b!1432704 m!1322577))

(assert (=> b!1432704 m!1322577))

(declare-fun m!1322617 () Bool)

(assert (=> b!1432704 m!1322617))

(declare-fun m!1322619 () Bool)

(assert (=> b!1432697 m!1322619))

(push 1)

