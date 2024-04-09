; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125198 () Bool)

(assert start!125198)

(declare-fun res!988877 () Bool)

(declare-fun e!820476 () Bool)

(assert (=> start!125198 (=> (not res!988877) (not e!820476))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125198 (= res!988877 (validMask!0 mask!2687))))

(assert (=> start!125198 e!820476))

(assert (=> start!125198 true))

(declare-datatypes ((array!98563 0))(
  ( (array!98564 (arr!47565 (Array (_ BitVec 32) (_ BitVec 64))) (size!48116 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98563)

(declare-fun array_inv!36510 (array!98563) Bool)

(assert (=> start!125198 (array_inv!36510 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!639120 () (_ BitVec 64))

(declare-fun lt!639124 () array!98563)

(declare-fun b!1458706 () Bool)

(declare-fun e!820479 () Bool)

(declare-fun lt!639118 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11840 0))(
  ( (MissingZero!11840 (index!49751 (_ BitVec 32))) (Found!11840 (index!49752 (_ BitVec 32))) (Intermediate!11840 (undefined!12652 Bool) (index!49753 (_ BitVec 32)) (x!131364 (_ BitVec 32))) (Undefined!11840) (MissingVacant!11840 (index!49754 (_ BitVec 32))) )
))
(declare-fun lt!639117 () SeekEntryResult!11840)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98563 (_ BitVec 32)) SeekEntryResult!11840)

(assert (=> b!1458706 (= e!820479 (not (= lt!639117 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639118 lt!639120 lt!639124 mask!2687))))))

(declare-fun b!1458707 () Bool)

(declare-fun e!820478 () Bool)

(declare-fun e!820484 () Bool)

(assert (=> b!1458707 (= e!820478 (not e!820484))))

(declare-fun res!988876 () Bool)

(assert (=> b!1458707 (=> res!988876 e!820484)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1458707 (= res!988876 (or (and (= (select (arr!47565 a!2862) index!646) (select (store (arr!47565 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47565 a!2862) index!646) (select (arr!47565 a!2862) j!93))) (= (select (arr!47565 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!639123 () SeekEntryResult!11840)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1458707 (and (= lt!639123 (Found!11840 j!93)) (or (= (select (arr!47565 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47565 a!2862) intermediateBeforeIndex!19) (select (arr!47565 a!2862) j!93))) (let ((bdg!53453 (select (store (arr!47565 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47565 a!2862) index!646) bdg!53453) (= (select (arr!47565 a!2862) index!646) (select (arr!47565 a!2862) j!93))) (= (select (arr!47565 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53453 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98563 (_ BitVec 32)) SeekEntryResult!11840)

(assert (=> b!1458707 (= lt!639123 (seekEntryOrOpen!0 (select (arr!47565 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98563 (_ BitVec 32)) Bool)

(assert (=> b!1458707 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49124 0))(
  ( (Unit!49125) )
))
(declare-fun lt!639119 () Unit!49124)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98563 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49124)

(assert (=> b!1458707 (= lt!639119 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458708 () Bool)

(declare-fun e!820477 () Bool)

(declare-fun e!820480 () Bool)

(assert (=> b!1458708 (= e!820477 e!820480)))

(declare-fun res!988875 () Bool)

(assert (=> b!1458708 (=> (not res!988875) (not e!820480))))

(declare-fun lt!639121 () SeekEntryResult!11840)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458708 (= res!988875 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47565 a!2862) j!93) mask!2687) (select (arr!47565 a!2862) j!93) a!2862 mask!2687) lt!639121))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1458708 (= lt!639121 (Intermediate!11840 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1458709 () Bool)

(declare-fun res!988871 () Bool)

(assert (=> b!1458709 (=> (not res!988871) (not e!820476))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458709 (= res!988871 (validKeyInArray!0 (select (arr!47565 a!2862) i!1006)))))

(declare-fun b!1458710 () Bool)

(declare-fun e!820483 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98563 (_ BitVec 32)) SeekEntryResult!11840)

(assert (=> b!1458710 (= e!820483 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639120 lt!639124 mask!2687) (seekEntryOrOpen!0 lt!639120 lt!639124 mask!2687)))))

(declare-fun b!1458711 () Bool)

(assert (=> b!1458711 (= e!820476 e!820477)))

(declare-fun res!988872 () Bool)

(assert (=> b!1458711 (=> (not res!988872) (not e!820477))))

(assert (=> b!1458711 (= res!988872 (= (select (store (arr!47565 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1458711 (= lt!639124 (array!98564 (store (arr!47565 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48116 a!2862)))))

(declare-fun b!1458712 () Bool)

(declare-fun res!988878 () Bool)

(declare-fun e!820482 () Bool)

(assert (=> b!1458712 (=> res!988878 e!820482)))

(assert (=> b!1458712 (= res!988878 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639118 (select (arr!47565 a!2862) j!93) a!2862 mask!2687) lt!639121)))))

(declare-fun b!1458713 () Bool)

(declare-fun res!988883 () Bool)

(assert (=> b!1458713 (=> (not res!988883) (not e!820476))))

(assert (=> b!1458713 (= res!988883 (validKeyInArray!0 (select (arr!47565 a!2862) j!93)))))

(declare-fun b!1458714 () Bool)

(assert (=> b!1458714 (= e!820482 true)))

(declare-fun lt!639122 () SeekEntryResult!11840)

(assert (=> b!1458714 (= lt!639123 lt!639122)))

(declare-fun lt!639116 () Unit!49124)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98563 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49124)

(assert (=> b!1458714 (= lt!639116 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639118 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1458715 () Bool)

(declare-fun res!988879 () Bool)

(assert (=> b!1458715 (=> res!988879 e!820482)))

(assert (=> b!1458715 (= res!988879 e!820479)))

(declare-fun c!134431 () Bool)

(assert (=> b!1458715 (= c!134431 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1458716 () Bool)

(assert (=> b!1458716 (= e!820479 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639118 intermediateAfterIndex!19 lt!639120 lt!639124 mask!2687) lt!639122)))))

(declare-fun b!1458717 () Bool)

(assert (=> b!1458717 (= e!820483 (= lt!639117 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639120 lt!639124 mask!2687)))))

(declare-fun b!1458718 () Bool)

(declare-fun res!988885 () Bool)

(assert (=> b!1458718 (=> (not res!988885) (not e!820478))))

(assert (=> b!1458718 (= res!988885 e!820483)))

(declare-fun c!134432 () Bool)

(assert (=> b!1458718 (= c!134432 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1458719 () Bool)

(declare-fun res!988884 () Bool)

(assert (=> b!1458719 (=> (not res!988884) (not e!820476))))

(assert (=> b!1458719 (= res!988884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1458720 () Bool)

(assert (=> b!1458720 (= e!820480 e!820478)))

(declare-fun res!988881 () Bool)

(assert (=> b!1458720 (=> (not res!988881) (not e!820478))))

(assert (=> b!1458720 (= res!988881 (= lt!639117 (Intermediate!11840 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1458720 (= lt!639117 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639120 mask!2687) lt!639120 lt!639124 mask!2687))))

(assert (=> b!1458720 (= lt!639120 (select (store (arr!47565 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1458721 () Bool)

(assert (=> b!1458721 (= e!820484 e!820482)))

(declare-fun res!988882 () Bool)

(assert (=> b!1458721 (=> res!988882 e!820482)))

(assert (=> b!1458721 (= res!988882 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639118 #b00000000000000000000000000000000) (bvsge lt!639118 (size!48116 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458721 (= lt!639118 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1458721 (= lt!639122 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639120 lt!639124 mask!2687))))

(assert (=> b!1458721 (= lt!639122 (seekEntryOrOpen!0 lt!639120 lt!639124 mask!2687))))

(declare-fun b!1458722 () Bool)

(declare-fun res!988887 () Bool)

(assert (=> b!1458722 (=> (not res!988887) (not e!820476))))

(assert (=> b!1458722 (= res!988887 (and (= (size!48116 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48116 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48116 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1458723 () Bool)

(declare-fun res!988873 () Bool)

(assert (=> b!1458723 (=> (not res!988873) (not e!820476))))

(declare-datatypes ((List!34246 0))(
  ( (Nil!34243) (Cons!34242 (h!35592 (_ BitVec 64)) (t!48947 List!34246)) )
))
(declare-fun arrayNoDuplicates!0 (array!98563 (_ BitVec 32) List!34246) Bool)

(assert (=> b!1458723 (= res!988873 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34243))))

(declare-fun b!1458724 () Bool)

(declare-fun res!988886 () Bool)

(assert (=> b!1458724 (=> res!988886 e!820482)))

(assert (=> b!1458724 (= res!988886 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1458725 () Bool)

(declare-fun res!988874 () Bool)

(assert (=> b!1458725 (=> (not res!988874) (not e!820478))))

(assert (=> b!1458725 (= res!988874 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1458726 () Bool)

(declare-fun res!988880 () Bool)

(assert (=> b!1458726 (=> (not res!988880) (not e!820480))))

(assert (=> b!1458726 (= res!988880 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47565 a!2862) j!93) a!2862 mask!2687) lt!639121))))

(declare-fun b!1458727 () Bool)

(declare-fun res!988870 () Bool)

(assert (=> b!1458727 (=> (not res!988870) (not e!820476))))

(assert (=> b!1458727 (= res!988870 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48116 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48116 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48116 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!125198 res!988877) b!1458722))

(assert (= (and b!1458722 res!988887) b!1458709))

(assert (= (and b!1458709 res!988871) b!1458713))

(assert (= (and b!1458713 res!988883) b!1458719))

(assert (= (and b!1458719 res!988884) b!1458723))

(assert (= (and b!1458723 res!988873) b!1458727))

(assert (= (and b!1458727 res!988870) b!1458711))

(assert (= (and b!1458711 res!988872) b!1458708))

(assert (= (and b!1458708 res!988875) b!1458726))

(assert (= (and b!1458726 res!988880) b!1458720))

(assert (= (and b!1458720 res!988881) b!1458718))

(assert (= (and b!1458718 c!134432) b!1458717))

(assert (= (and b!1458718 (not c!134432)) b!1458710))

(assert (= (and b!1458718 res!988885) b!1458725))

(assert (= (and b!1458725 res!988874) b!1458707))

(assert (= (and b!1458707 (not res!988876)) b!1458721))

(assert (= (and b!1458721 (not res!988882)) b!1458712))

(assert (= (and b!1458712 (not res!988878)) b!1458715))

(assert (= (and b!1458715 c!134431) b!1458706))

(assert (= (and b!1458715 (not c!134431)) b!1458716))

(assert (= (and b!1458715 (not res!988879)) b!1458724))

(assert (= (and b!1458724 (not res!988886)) b!1458714))

(declare-fun m!1346583 () Bool)

(assert (=> b!1458706 m!1346583))

(declare-fun m!1346585 () Bool)

(assert (=> b!1458707 m!1346585))

(declare-fun m!1346587 () Bool)

(assert (=> b!1458707 m!1346587))

(declare-fun m!1346589 () Bool)

(assert (=> b!1458707 m!1346589))

(declare-fun m!1346591 () Bool)

(assert (=> b!1458707 m!1346591))

(declare-fun m!1346593 () Bool)

(assert (=> b!1458707 m!1346593))

(declare-fun m!1346595 () Bool)

(assert (=> b!1458707 m!1346595))

(declare-fun m!1346597 () Bool)

(assert (=> b!1458707 m!1346597))

(declare-fun m!1346599 () Bool)

(assert (=> b!1458707 m!1346599))

(assert (=> b!1458707 m!1346595))

(declare-fun m!1346601 () Bool)

(assert (=> start!125198 m!1346601))

(declare-fun m!1346603 () Bool)

(assert (=> start!125198 m!1346603))

(declare-fun m!1346605 () Bool)

(assert (=> b!1458714 m!1346605))

(assert (=> b!1458711 m!1346587))

(declare-fun m!1346607 () Bool)

(assert (=> b!1458711 m!1346607))

(declare-fun m!1346609 () Bool)

(assert (=> b!1458720 m!1346609))

(assert (=> b!1458720 m!1346609))

(declare-fun m!1346611 () Bool)

(assert (=> b!1458720 m!1346611))

(assert (=> b!1458720 m!1346587))

(declare-fun m!1346613 () Bool)

(assert (=> b!1458720 m!1346613))

(assert (=> b!1458713 m!1346595))

(assert (=> b!1458713 m!1346595))

(declare-fun m!1346615 () Bool)

(assert (=> b!1458713 m!1346615))

(declare-fun m!1346617 () Bool)

(assert (=> b!1458717 m!1346617))

(assert (=> b!1458712 m!1346595))

(assert (=> b!1458712 m!1346595))

(declare-fun m!1346619 () Bool)

(assert (=> b!1458712 m!1346619))

(declare-fun m!1346621 () Bool)

(assert (=> b!1458723 m!1346621))

(declare-fun m!1346623 () Bool)

(assert (=> b!1458719 m!1346623))

(assert (=> b!1458726 m!1346595))

(assert (=> b!1458726 m!1346595))

(declare-fun m!1346625 () Bool)

(assert (=> b!1458726 m!1346625))

(declare-fun m!1346627 () Bool)

(assert (=> b!1458721 m!1346627))

(declare-fun m!1346629 () Bool)

(assert (=> b!1458721 m!1346629))

(declare-fun m!1346631 () Bool)

(assert (=> b!1458721 m!1346631))

(declare-fun m!1346633 () Bool)

(assert (=> b!1458716 m!1346633))

(assert (=> b!1458708 m!1346595))

(assert (=> b!1458708 m!1346595))

(declare-fun m!1346635 () Bool)

(assert (=> b!1458708 m!1346635))

(assert (=> b!1458708 m!1346635))

(assert (=> b!1458708 m!1346595))

(declare-fun m!1346637 () Bool)

(assert (=> b!1458708 m!1346637))

(assert (=> b!1458710 m!1346629))

(assert (=> b!1458710 m!1346631))

(declare-fun m!1346639 () Bool)

(assert (=> b!1458709 m!1346639))

(assert (=> b!1458709 m!1346639))

(declare-fun m!1346641 () Bool)

(assert (=> b!1458709 m!1346641))

(push 1)

