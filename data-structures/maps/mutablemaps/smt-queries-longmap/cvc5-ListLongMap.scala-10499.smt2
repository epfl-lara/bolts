; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123610 () Bool)

(assert start!123610)

(declare-fun b!1432737 () Bool)

(declare-fun res!966722 () Bool)

(declare-fun e!808748 () Bool)

(assert (=> b!1432737 (=> (not res!966722) (not e!808748))))

(declare-datatypes ((array!97500 0))(
  ( (array!97501 (arr!47053 (Array (_ BitVec 32) (_ BitVec 64))) (size!47604 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97500)

(declare-datatypes ((List!33743 0))(
  ( (Nil!33740) (Cons!33739 (h!35062 (_ BitVec 64)) (t!48444 List!33743)) )
))
(declare-fun arrayNoDuplicates!0 (array!97500 (_ BitVec 32) List!33743) Bool)

(assert (=> b!1432737 (= res!966722 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33740))))

(declare-fun b!1432738 () Bool)

(declare-fun e!808749 () Bool)

(declare-fun e!808747 () Bool)

(assert (=> b!1432738 (= e!808749 e!808747)))

(declare-fun res!966713 () Bool)

(assert (=> b!1432738 (=> (not res!966713) (not e!808747))))

(declare-datatypes ((SeekEntryResult!11354 0))(
  ( (MissingZero!11354 (index!47807 (_ BitVec 32))) (Found!11354 (index!47808 (_ BitVec 32))) (Intermediate!11354 (undefined!12166 Bool) (index!47809 (_ BitVec 32)) (x!129455 (_ BitVec 32))) (Undefined!11354) (MissingVacant!11354 (index!47810 (_ BitVec 32))) )
))
(declare-fun lt!630700 () SeekEntryResult!11354)

(declare-fun lt!630699 () (_ BitVec 64))

(declare-fun lt!630695 () array!97500)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97500 (_ BitVec 32)) SeekEntryResult!11354)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432738 (= res!966713 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630699 mask!2608) lt!630699 lt!630695 mask!2608) lt!630700))))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(assert (=> b!1432738 (= lt!630700 (Intermediate!11354 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432738 (= lt!630699 (select (store (arr!47053 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432738 (= lt!630695 (array!97501 (store (arr!47053 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47604 a!2831)))))

(declare-fun b!1432739 () Bool)

(declare-fun res!966718 () Bool)

(assert (=> b!1432739 (=> (not res!966718) (not e!808748))))

(assert (=> b!1432739 (= res!966718 (and (= (size!47604 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47604 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47604 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432740 () Bool)

(declare-fun e!808746 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97500 (_ BitVec 32)) SeekEntryResult!11354)

(assert (=> b!1432740 (= e!808746 (= (seekEntryOrOpen!0 (select (arr!47053 a!2831) j!81) a!2831 mask!2608) (Found!11354 j!81)))))

(declare-fun b!1432741 () Bool)

(declare-fun res!966721 () Bool)

(assert (=> b!1432741 (=> (not res!966721) (not e!808748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432741 (= res!966721 (validKeyInArray!0 (select (arr!47053 a!2831) i!982)))))

(declare-fun res!966717 () Bool)

(assert (=> start!123610 (=> (not res!966717) (not e!808748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123610 (= res!966717 (validMask!0 mask!2608))))

(assert (=> start!123610 e!808748))

(assert (=> start!123610 true))

(declare-fun array_inv!35998 (array!97500) Bool)

(assert (=> start!123610 (array_inv!35998 a!2831)))

(declare-fun b!1432742 () Bool)

(declare-fun res!966710 () Bool)

(assert (=> b!1432742 (=> (not res!966710) (not e!808747))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1432742 (= res!966710 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432743 () Bool)

(declare-fun res!966723 () Bool)

(assert (=> b!1432743 (=> (not res!966723) (not e!808748))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1432743 (= res!966723 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47604 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47604 a!2831))))))

(declare-fun b!1432744 () Bool)

(declare-fun res!966711 () Bool)

(assert (=> b!1432744 (=> (not res!966711) (not e!808747))))

(declare-fun lt!630697 () SeekEntryResult!11354)

(assert (=> b!1432744 (= res!966711 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47053 a!2831) j!81) a!2831 mask!2608) lt!630697))))

(declare-fun b!1432745 () Bool)

(declare-fun e!808750 () Bool)

(assert (=> b!1432745 (= e!808750 true)))

(declare-fun lt!630696 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432745 (= lt!630696 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432746 () Bool)

(declare-fun res!966712 () Bool)

(assert (=> b!1432746 (=> (not res!966712) (not e!808747))))

(assert (=> b!1432746 (= res!966712 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630699 lt!630695 mask!2608) lt!630700))))

(declare-fun b!1432747 () Bool)

(declare-fun res!966719 () Bool)

(assert (=> b!1432747 (=> (not res!966719) (not e!808748))))

(assert (=> b!1432747 (= res!966719 (validKeyInArray!0 (select (arr!47053 a!2831) j!81)))))

(declare-fun b!1432748 () Bool)

(assert (=> b!1432748 (= e!808748 e!808749)))

(declare-fun res!966720 () Bool)

(assert (=> b!1432748 (=> (not res!966720) (not e!808749))))

(assert (=> b!1432748 (= res!966720 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47053 a!2831) j!81) mask!2608) (select (arr!47053 a!2831) j!81) a!2831 mask!2608) lt!630697))))

(assert (=> b!1432748 (= lt!630697 (Intermediate!11354 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432749 () Bool)

(declare-fun res!966716 () Bool)

(assert (=> b!1432749 (=> (not res!966716) (not e!808748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97500 (_ BitVec 32)) Bool)

(assert (=> b!1432749 (= res!966716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432750 () Bool)

(assert (=> b!1432750 (= e!808747 (not e!808750))))

(declare-fun res!966714 () Bool)

(assert (=> b!1432750 (=> res!966714 e!808750)))

(assert (=> b!1432750 (= res!966714 (or (= (select (arr!47053 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47053 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47053 a!2831) index!585) (select (arr!47053 a!2831) j!81)) (= (select (store (arr!47053 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1432750 e!808746))

(declare-fun res!966715 () Bool)

(assert (=> b!1432750 (=> (not res!966715) (not e!808746))))

(assert (=> b!1432750 (= res!966715 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48402 0))(
  ( (Unit!48403) )
))
(declare-fun lt!630698 () Unit!48402)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97500 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48402)

(assert (=> b!1432750 (= lt!630698 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (= (and start!123610 res!966717) b!1432739))

(assert (= (and b!1432739 res!966718) b!1432741))

(assert (= (and b!1432741 res!966721) b!1432747))

(assert (= (and b!1432747 res!966719) b!1432749))

(assert (= (and b!1432749 res!966716) b!1432737))

(assert (= (and b!1432737 res!966722) b!1432743))

(assert (= (and b!1432743 res!966723) b!1432748))

(assert (= (and b!1432748 res!966720) b!1432738))

(assert (= (and b!1432738 res!966713) b!1432744))

(assert (= (and b!1432744 res!966711) b!1432746))

(assert (= (and b!1432746 res!966712) b!1432742))

(assert (= (and b!1432742 res!966710) b!1432750))

(assert (= (and b!1432750 res!966715) b!1432740))

(assert (= (and b!1432750 (not res!966714)) b!1432745))

(declare-fun m!1322621 () Bool)

(assert (=> b!1432737 m!1322621))

(declare-fun m!1322623 () Bool)

(assert (=> b!1432740 m!1322623))

(assert (=> b!1432740 m!1322623))

(declare-fun m!1322625 () Bool)

(assert (=> b!1432740 m!1322625))

(assert (=> b!1432748 m!1322623))

(assert (=> b!1432748 m!1322623))

(declare-fun m!1322627 () Bool)

(assert (=> b!1432748 m!1322627))

(assert (=> b!1432748 m!1322627))

(assert (=> b!1432748 m!1322623))

(declare-fun m!1322629 () Bool)

(assert (=> b!1432748 m!1322629))

(declare-fun m!1322631 () Bool)

(assert (=> b!1432746 m!1322631))

(declare-fun m!1322633 () Bool)

(assert (=> b!1432749 m!1322633))

(declare-fun m!1322635 () Bool)

(assert (=> b!1432745 m!1322635))

(declare-fun m!1322637 () Bool)

(assert (=> b!1432738 m!1322637))

(assert (=> b!1432738 m!1322637))

(declare-fun m!1322639 () Bool)

(assert (=> b!1432738 m!1322639))

(declare-fun m!1322641 () Bool)

(assert (=> b!1432738 m!1322641))

(declare-fun m!1322643 () Bool)

(assert (=> b!1432738 m!1322643))

(declare-fun m!1322645 () Bool)

(assert (=> start!123610 m!1322645))

(declare-fun m!1322647 () Bool)

(assert (=> start!123610 m!1322647))

(assert (=> b!1432744 m!1322623))

(assert (=> b!1432744 m!1322623))

(declare-fun m!1322649 () Bool)

(assert (=> b!1432744 m!1322649))

(assert (=> b!1432750 m!1322641))

(declare-fun m!1322651 () Bool)

(assert (=> b!1432750 m!1322651))

(declare-fun m!1322653 () Bool)

(assert (=> b!1432750 m!1322653))

(declare-fun m!1322655 () Bool)

(assert (=> b!1432750 m!1322655))

(assert (=> b!1432750 m!1322623))

(declare-fun m!1322657 () Bool)

(assert (=> b!1432750 m!1322657))

(assert (=> b!1432747 m!1322623))

(assert (=> b!1432747 m!1322623))

(declare-fun m!1322659 () Bool)

(assert (=> b!1432747 m!1322659))

(declare-fun m!1322661 () Bool)

(assert (=> b!1432741 m!1322661))

(assert (=> b!1432741 m!1322661))

(declare-fun m!1322663 () Bool)

(assert (=> b!1432741 m!1322663))

(push 1)

