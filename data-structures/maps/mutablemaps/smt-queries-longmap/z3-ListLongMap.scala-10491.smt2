; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123564 () Bool)

(assert start!123564)

(declare-fun b!1431771 () Bool)

(declare-fun res!965754 () Bool)

(declare-fun e!808333 () Bool)

(assert (=> b!1431771 (=> (not res!965754) (not e!808333))))

(declare-datatypes ((array!97454 0))(
  ( (array!97455 (arr!47030 (Array (_ BitVec 32) (_ BitVec 64))) (size!47581 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97454)

(declare-datatypes ((List!33720 0))(
  ( (Nil!33717) (Cons!33716 (h!35039 (_ BitVec 64)) (t!48421 List!33720)) )
))
(declare-fun arrayNoDuplicates!0 (array!97454 (_ BitVec 32) List!33720) Bool)

(assert (=> b!1431771 (= res!965754 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33717))))

(declare-fun b!1431772 () Bool)

(declare-fun res!965744 () Bool)

(assert (=> b!1431772 (=> (not res!965744) (not e!808333))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1431772 (= res!965744 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47581 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47581 a!2831))))))

(declare-fun b!1431773 () Bool)

(declare-fun e!808334 () Bool)

(declare-fun e!808336 () Bool)

(assert (=> b!1431773 (= e!808334 e!808336)))

(declare-fun res!965748 () Bool)

(assert (=> b!1431773 (=> (not res!965748) (not e!808336))))

(declare-datatypes ((SeekEntryResult!11331 0))(
  ( (MissingZero!11331 (index!47715 (_ BitVec 32))) (Found!11331 (index!47716 (_ BitVec 32))) (Intermediate!11331 (undefined!12143 Bool) (index!47717 (_ BitVec 32)) (x!129368 (_ BitVec 32))) (Undefined!11331) (MissingVacant!11331 (index!47718 (_ BitVec 32))) )
))
(declare-fun lt!630284 () SeekEntryResult!11331)

(declare-fun lt!630286 () array!97454)

(declare-fun lt!630283 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97454 (_ BitVec 32)) SeekEntryResult!11331)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431773 (= res!965748 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630283 mask!2608) lt!630283 lt!630286 mask!2608) lt!630284))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1431773 (= lt!630284 (Intermediate!11331 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1431773 (= lt!630283 (select (store (arr!47030 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431773 (= lt!630286 (array!97455 (store (arr!47030 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47581 a!2831)))))

(declare-fun b!1431774 () Bool)

(declare-fun res!965757 () Bool)

(assert (=> b!1431774 (=> (not res!965757) (not e!808336))))

(declare-fun lt!630282 () SeekEntryResult!11331)

(assert (=> b!1431774 (= res!965757 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47030 a!2831) j!81) a!2831 mask!2608) lt!630282))))

(declare-fun b!1431775 () Bool)

(declare-fun res!965752 () Bool)

(assert (=> b!1431775 (=> (not res!965752) (not e!808333))))

(assert (=> b!1431775 (= res!965752 (and (= (size!47581 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47581 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47581 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1431776 () Bool)

(assert (=> b!1431776 (= e!808333 e!808334)))

(declare-fun res!965755 () Bool)

(assert (=> b!1431776 (=> (not res!965755) (not e!808334))))

(assert (=> b!1431776 (= res!965755 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47030 a!2831) j!81) mask!2608) (select (arr!47030 a!2831) j!81) a!2831 mask!2608) lt!630282))))

(assert (=> b!1431776 (= lt!630282 (Intermediate!11331 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!965751 () Bool)

(assert (=> start!123564 (=> (not res!965751) (not e!808333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123564 (= res!965751 (validMask!0 mask!2608))))

(assert (=> start!123564 e!808333))

(assert (=> start!123564 true))

(declare-fun array_inv!35975 (array!97454) Bool)

(assert (=> start!123564 (array_inv!35975 a!2831)))

(declare-fun b!1431777 () Bool)

(declare-fun res!965756 () Bool)

(assert (=> b!1431777 (=> (not res!965756) (not e!808333))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431777 (= res!965756 (validKeyInArray!0 (select (arr!47030 a!2831) j!81)))))

(declare-fun b!1431778 () Bool)

(declare-fun e!808332 () Bool)

(assert (=> b!1431778 (= e!808336 (not e!808332))))

(declare-fun res!965747 () Bool)

(assert (=> b!1431778 (=> res!965747 e!808332)))

(assert (=> b!1431778 (= res!965747 (or (= (select (arr!47030 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47030 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47030 a!2831) index!585) (select (arr!47030 a!2831) j!81)) (= (select (store (arr!47030 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808335 () Bool)

(assert (=> b!1431778 e!808335))

(declare-fun res!965753 () Bool)

(assert (=> b!1431778 (=> (not res!965753) (not e!808335))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97454 (_ BitVec 32)) Bool)

(assert (=> b!1431778 (= res!965753 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48356 0))(
  ( (Unit!48357) )
))
(declare-fun lt!630281 () Unit!48356)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97454 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48356)

(assert (=> b!1431778 (= lt!630281 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1431779 () Bool)

(declare-fun res!965745 () Bool)

(assert (=> b!1431779 (=> (not res!965745) (not e!808333))))

(assert (=> b!1431779 (= res!965745 (validKeyInArray!0 (select (arr!47030 a!2831) i!982)))))

(declare-fun b!1431780 () Bool)

(declare-fun res!965750 () Bool)

(assert (=> b!1431780 (=> (not res!965750) (not e!808336))))

(assert (=> b!1431780 (= res!965750 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630283 lt!630286 mask!2608) lt!630284))))

(declare-fun b!1431781 () Bool)

(declare-fun res!965749 () Bool)

(assert (=> b!1431781 (=> (not res!965749) (not e!808336))))

(assert (=> b!1431781 (= res!965749 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431782 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97454 (_ BitVec 32)) SeekEntryResult!11331)

(assert (=> b!1431782 (= e!808335 (= (seekEntryOrOpen!0 (select (arr!47030 a!2831) j!81) a!2831 mask!2608) (Found!11331 j!81)))))

(declare-fun b!1431783 () Bool)

(assert (=> b!1431783 (= e!808332 true)))

(declare-fun lt!630285 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431783 (= lt!630285 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1431784 () Bool)

(declare-fun res!965746 () Bool)

(assert (=> b!1431784 (=> (not res!965746) (not e!808333))))

(assert (=> b!1431784 (= res!965746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!123564 res!965751) b!1431775))

(assert (= (and b!1431775 res!965752) b!1431779))

(assert (= (and b!1431779 res!965745) b!1431777))

(assert (= (and b!1431777 res!965756) b!1431784))

(assert (= (and b!1431784 res!965746) b!1431771))

(assert (= (and b!1431771 res!965754) b!1431772))

(assert (= (and b!1431772 res!965744) b!1431776))

(assert (= (and b!1431776 res!965755) b!1431773))

(assert (= (and b!1431773 res!965748) b!1431774))

(assert (= (and b!1431774 res!965757) b!1431780))

(assert (= (and b!1431780 res!965750) b!1431781))

(assert (= (and b!1431781 res!965749) b!1431778))

(assert (= (and b!1431778 res!965753) b!1431782))

(assert (= (and b!1431778 (not res!965747)) b!1431783))

(declare-fun m!1321609 () Bool)

(assert (=> b!1431784 m!1321609))

(declare-fun m!1321611 () Bool)

(assert (=> b!1431780 m!1321611))

(declare-fun m!1321613 () Bool)

(assert (=> b!1431773 m!1321613))

(assert (=> b!1431773 m!1321613))

(declare-fun m!1321615 () Bool)

(assert (=> b!1431773 m!1321615))

(declare-fun m!1321617 () Bool)

(assert (=> b!1431773 m!1321617))

(declare-fun m!1321619 () Bool)

(assert (=> b!1431773 m!1321619))

(assert (=> b!1431778 m!1321617))

(declare-fun m!1321621 () Bool)

(assert (=> b!1431778 m!1321621))

(declare-fun m!1321623 () Bool)

(assert (=> b!1431778 m!1321623))

(declare-fun m!1321625 () Bool)

(assert (=> b!1431778 m!1321625))

(declare-fun m!1321627 () Bool)

(assert (=> b!1431778 m!1321627))

(declare-fun m!1321629 () Bool)

(assert (=> b!1431778 m!1321629))

(assert (=> b!1431776 m!1321627))

(assert (=> b!1431776 m!1321627))

(declare-fun m!1321631 () Bool)

(assert (=> b!1431776 m!1321631))

(assert (=> b!1431776 m!1321631))

(assert (=> b!1431776 m!1321627))

(declare-fun m!1321633 () Bool)

(assert (=> b!1431776 m!1321633))

(declare-fun m!1321635 () Bool)

(assert (=> b!1431783 m!1321635))

(declare-fun m!1321637 () Bool)

(assert (=> start!123564 m!1321637))

(declare-fun m!1321639 () Bool)

(assert (=> start!123564 m!1321639))

(assert (=> b!1431777 m!1321627))

(assert (=> b!1431777 m!1321627))

(declare-fun m!1321641 () Bool)

(assert (=> b!1431777 m!1321641))

(assert (=> b!1431774 m!1321627))

(assert (=> b!1431774 m!1321627))

(declare-fun m!1321643 () Bool)

(assert (=> b!1431774 m!1321643))

(declare-fun m!1321645 () Bool)

(assert (=> b!1431779 m!1321645))

(assert (=> b!1431779 m!1321645))

(declare-fun m!1321647 () Bool)

(assert (=> b!1431779 m!1321647))

(assert (=> b!1431782 m!1321627))

(assert (=> b!1431782 m!1321627))

(declare-fun m!1321649 () Bool)

(assert (=> b!1431782 m!1321649))

(declare-fun m!1321651 () Bool)

(assert (=> b!1431771 m!1321651))

(check-sat (not b!1431779) (not b!1431783) (not b!1431776) (not b!1431780) (not start!123564) (not b!1431774) (not b!1431771) (not b!1431777) (not b!1431782) (not b!1431778) (not b!1431773) (not b!1431784))
(check-sat)
