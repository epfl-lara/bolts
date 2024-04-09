; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125416 () Bool)

(assert start!125416)

(declare-fun b!1465729 () Bool)

(declare-fun e!823589 () Bool)

(declare-fun e!823585 () Bool)

(assert (=> b!1465729 (= e!823589 (not e!823585))))

(declare-fun res!994661 () Bool)

(assert (=> b!1465729 (=> res!994661 e!823585)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98781 0))(
  ( (array!98782 (arr!47674 (Array (_ BitVec 32) (_ BitVec 64))) (size!48225 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98781)

(assert (=> b!1465729 (= res!994661 (or (and (= (select (arr!47674 a!2862) index!646) (select (store (arr!47674 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47674 a!2862) index!646) (select (arr!47674 a!2862) j!93))) (= (select (arr!47674 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-datatypes ((SeekEntryResult!11949 0))(
  ( (MissingZero!11949 (index!50187 (_ BitVec 32))) (Found!11949 (index!50188 (_ BitVec 32))) (Intermediate!11949 (undefined!12761 Bool) (index!50189 (_ BitVec 32)) (x!131769 (_ BitVec 32))) (Undefined!11949) (MissingVacant!11949 (index!50190 (_ BitVec 32))) )
))
(declare-fun lt!641463 () SeekEntryResult!11949)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1465729 (and (= lt!641463 (Found!11949 j!93)) (or (= (select (arr!47674 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47674 a!2862) intermediateBeforeIndex!19) (select (arr!47674 a!2862) j!93))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98781 (_ BitVec 32)) SeekEntryResult!11949)

(assert (=> b!1465729 (= lt!641463 (seekEntryOrOpen!0 (select (arr!47674 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98781 (_ BitVec 32)) Bool)

(assert (=> b!1465729 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49342 0))(
  ( (Unit!49343) )
))
(declare-fun lt!641470 () Unit!49342)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98781 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49342)

(assert (=> b!1465729 (= lt!641470 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1465730 () Bool)

(declare-fun res!994660 () Bool)

(declare-fun e!823583 () Bool)

(assert (=> b!1465730 (=> (not res!994660) (not e!823583))))

(assert (=> b!1465730 (= res!994660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465731 () Bool)

(declare-fun res!994671 () Bool)

(declare-fun e!823582 () Bool)

(assert (=> b!1465731 (=> res!994671 e!823582)))

(declare-fun e!823588 () Bool)

(assert (=> b!1465731 (= res!994671 e!823588)))

(declare-fun c!135049 () Bool)

(assert (=> b!1465731 (= c!135049 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1465732 () Bool)

(declare-fun res!994659 () Bool)

(assert (=> b!1465732 (=> (not res!994659) (not e!823583))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1465732 (= res!994659 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48225 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48225 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48225 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465733 () Bool)

(assert (=> b!1465733 (= e!823585 e!823582)))

(declare-fun res!994669 () Bool)

(assert (=> b!1465733 (=> res!994669 e!823582)))

(declare-fun lt!641464 () (_ BitVec 32))

(assert (=> b!1465733 (= res!994669 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641464 #b00000000000000000000000000000000) (bvsge lt!641464 (size!48225 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465733 (= lt!641464 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1465734 () Bool)

(declare-fun res!994664 () Bool)

(assert (=> b!1465734 (=> (not res!994664) (not e!823583))))

(assert (=> b!1465734 (= res!994664 (and (= (size!48225 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48225 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48225 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!823586 () Bool)

(declare-fun lt!641467 () (_ BitVec 64))

(declare-fun b!1465735 () Bool)

(declare-fun lt!641465 () array!98781)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98781 (_ BitVec 32)) SeekEntryResult!11949)

(assert (=> b!1465735 (= e!823586 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641467 lt!641465 mask!2687) (seekEntryOrOpen!0 lt!641467 lt!641465 mask!2687)))))

(declare-fun res!994673 () Bool)

(assert (=> start!125416 (=> (not res!994673) (not e!823583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125416 (= res!994673 (validMask!0 mask!2687))))

(assert (=> start!125416 e!823583))

(assert (=> start!125416 true))

(declare-fun array_inv!36619 (array!98781) Bool)

(assert (=> start!125416 (array_inv!36619 a!2862)))

(declare-fun b!1465736 () Bool)

(declare-fun res!994663 () Bool)

(assert (=> b!1465736 (=> (not res!994663) (not e!823583))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465736 (= res!994663 (validKeyInArray!0 (select (arr!47674 a!2862) i!1006)))))

(declare-fun b!1465737 () Bool)

(declare-fun e!823581 () Bool)

(declare-fun e!823584 () Bool)

(assert (=> b!1465737 (= e!823581 e!823584)))

(declare-fun res!994667 () Bool)

(assert (=> b!1465737 (=> (not res!994667) (not e!823584))))

(declare-fun lt!641466 () SeekEntryResult!11949)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98781 (_ BitVec 32)) SeekEntryResult!11949)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465737 (= res!994667 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47674 a!2862) j!93) mask!2687) (select (arr!47674 a!2862) j!93) a!2862 mask!2687) lt!641466))))

(assert (=> b!1465737 (= lt!641466 (Intermediate!11949 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1465738 () Bool)

(declare-fun res!994670 () Bool)

(assert (=> b!1465738 (=> res!994670 e!823582)))

(assert (=> b!1465738 (= res!994670 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641464 (select (arr!47674 a!2862) j!93) a!2862 mask!2687) lt!641466)))))

(declare-fun b!1465739 () Bool)

(assert (=> b!1465739 (= e!823583 e!823581)))

(declare-fun res!994672 () Bool)

(assert (=> b!1465739 (=> (not res!994672) (not e!823581))))

(assert (=> b!1465739 (= res!994672 (= (select (store (arr!47674 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1465739 (= lt!641465 (array!98782 (store (arr!47674 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48225 a!2862)))))

(declare-fun b!1465740 () Bool)

(declare-fun res!994666 () Bool)

(assert (=> b!1465740 (=> (not res!994666) (not e!823584))))

(assert (=> b!1465740 (= res!994666 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47674 a!2862) j!93) a!2862 mask!2687) lt!641466))))

(declare-fun b!1465741 () Bool)

(declare-fun res!994668 () Bool)

(assert (=> b!1465741 (=> (not res!994668) (not e!823589))))

(assert (=> b!1465741 (= res!994668 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465742 () Bool)

(assert (=> b!1465742 (= e!823582 true)))

(assert (=> b!1465742 (= lt!641463 (seekEntryOrOpen!0 lt!641467 lt!641465 mask!2687))))

(declare-fun lt!641468 () Unit!49342)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98781 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49342)

(assert (=> b!1465742 (= lt!641468 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641464 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1465743 () Bool)

(declare-fun res!994657 () Bool)

(assert (=> b!1465743 (=> (not res!994657) (not e!823583))))

(assert (=> b!1465743 (= res!994657 (validKeyInArray!0 (select (arr!47674 a!2862) j!93)))))

(declare-fun b!1465744 () Bool)

(assert (=> b!1465744 (= e!823584 e!823589)))

(declare-fun res!994674 () Bool)

(assert (=> b!1465744 (=> (not res!994674) (not e!823589))))

(declare-fun lt!641469 () SeekEntryResult!11949)

(assert (=> b!1465744 (= res!994674 (= lt!641469 (Intermediate!11949 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1465744 (= lt!641469 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641467 mask!2687) lt!641467 lt!641465 mask!2687))))

(assert (=> b!1465744 (= lt!641467 (select (store (arr!47674 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1465745 () Bool)

(assert (=> b!1465745 (= e!823588 (not (= lt!641469 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641464 lt!641467 lt!641465 mask!2687))))))

(declare-fun b!1465746 () Bool)

(assert (=> b!1465746 (= e!823586 (= lt!641469 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641467 lt!641465 mask!2687)))))

(declare-fun b!1465747 () Bool)

(declare-fun res!994662 () Bool)

(assert (=> b!1465747 (=> (not res!994662) (not e!823583))))

(declare-datatypes ((List!34355 0))(
  ( (Nil!34352) (Cons!34351 (h!35701 (_ BitVec 64)) (t!49056 List!34355)) )
))
(declare-fun arrayNoDuplicates!0 (array!98781 (_ BitVec 32) List!34355) Bool)

(assert (=> b!1465747 (= res!994662 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34352))))

(declare-fun b!1465748 () Bool)

(declare-fun res!994658 () Bool)

(assert (=> b!1465748 (=> (not res!994658) (not e!823589))))

(assert (=> b!1465748 (= res!994658 e!823586)))

(declare-fun c!135050 () Bool)

(assert (=> b!1465748 (= c!135050 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1465749 () Bool)

(declare-fun res!994665 () Bool)

(assert (=> b!1465749 (=> res!994665 e!823582)))

(assert (=> b!1465749 (= res!994665 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1465750 () Bool)

(assert (=> b!1465750 (= e!823588 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641464 intermediateAfterIndex!19 lt!641467 lt!641465 mask!2687) (seekEntryOrOpen!0 lt!641467 lt!641465 mask!2687))))))

(assert (= (and start!125416 res!994673) b!1465734))

(assert (= (and b!1465734 res!994664) b!1465736))

(assert (= (and b!1465736 res!994663) b!1465743))

(assert (= (and b!1465743 res!994657) b!1465730))

(assert (= (and b!1465730 res!994660) b!1465747))

(assert (= (and b!1465747 res!994662) b!1465732))

(assert (= (and b!1465732 res!994659) b!1465739))

(assert (= (and b!1465739 res!994672) b!1465737))

(assert (= (and b!1465737 res!994667) b!1465740))

(assert (= (and b!1465740 res!994666) b!1465744))

(assert (= (and b!1465744 res!994674) b!1465748))

(assert (= (and b!1465748 c!135050) b!1465746))

(assert (= (and b!1465748 (not c!135050)) b!1465735))

(assert (= (and b!1465748 res!994658) b!1465741))

(assert (= (and b!1465741 res!994668) b!1465729))

(assert (= (and b!1465729 (not res!994661)) b!1465733))

(assert (= (and b!1465733 (not res!994669)) b!1465738))

(assert (= (and b!1465738 (not res!994670)) b!1465731))

(assert (= (and b!1465731 c!135049) b!1465745))

(assert (= (and b!1465731 (not c!135049)) b!1465750))

(assert (= (and b!1465731 (not res!994671)) b!1465749))

(assert (= (and b!1465749 (not res!994665)) b!1465742))

(declare-fun m!1352835 () Bool)

(assert (=> b!1465729 m!1352835))

(declare-fun m!1352837 () Bool)

(assert (=> b!1465729 m!1352837))

(declare-fun m!1352839 () Bool)

(assert (=> b!1465729 m!1352839))

(declare-fun m!1352841 () Bool)

(assert (=> b!1465729 m!1352841))

(declare-fun m!1352843 () Bool)

(assert (=> b!1465729 m!1352843))

(declare-fun m!1352845 () Bool)

(assert (=> b!1465729 m!1352845))

(declare-fun m!1352847 () Bool)

(assert (=> b!1465729 m!1352847))

(declare-fun m!1352849 () Bool)

(assert (=> b!1465729 m!1352849))

(assert (=> b!1465729 m!1352845))

(assert (=> b!1465739 m!1352837))

(declare-fun m!1352851 () Bool)

(assert (=> b!1465739 m!1352851))

(assert (=> b!1465737 m!1352845))

(assert (=> b!1465737 m!1352845))

(declare-fun m!1352853 () Bool)

(assert (=> b!1465737 m!1352853))

(assert (=> b!1465737 m!1352853))

(assert (=> b!1465737 m!1352845))

(declare-fun m!1352855 () Bool)

(assert (=> b!1465737 m!1352855))

(declare-fun m!1352857 () Bool)

(assert (=> b!1465742 m!1352857))

(declare-fun m!1352859 () Bool)

(assert (=> b!1465742 m!1352859))

(declare-fun m!1352861 () Bool)

(assert (=> b!1465736 m!1352861))

(assert (=> b!1465736 m!1352861))

(declare-fun m!1352863 () Bool)

(assert (=> b!1465736 m!1352863))

(declare-fun m!1352865 () Bool)

(assert (=> start!125416 m!1352865))

(declare-fun m!1352867 () Bool)

(assert (=> start!125416 m!1352867))

(declare-fun m!1352869 () Bool)

(assert (=> b!1465735 m!1352869))

(assert (=> b!1465735 m!1352857))

(declare-fun m!1352871 () Bool)

(assert (=> b!1465750 m!1352871))

(assert (=> b!1465750 m!1352857))

(assert (=> b!1465743 m!1352845))

(assert (=> b!1465743 m!1352845))

(declare-fun m!1352873 () Bool)

(assert (=> b!1465743 m!1352873))

(declare-fun m!1352875 () Bool)

(assert (=> b!1465746 m!1352875))

(declare-fun m!1352877 () Bool)

(assert (=> b!1465730 m!1352877))

(assert (=> b!1465738 m!1352845))

(assert (=> b!1465738 m!1352845))

(declare-fun m!1352879 () Bool)

(assert (=> b!1465738 m!1352879))

(declare-fun m!1352881 () Bool)

(assert (=> b!1465744 m!1352881))

(assert (=> b!1465744 m!1352881))

(declare-fun m!1352883 () Bool)

(assert (=> b!1465744 m!1352883))

(assert (=> b!1465744 m!1352837))

(declare-fun m!1352885 () Bool)

(assert (=> b!1465744 m!1352885))

(declare-fun m!1352887 () Bool)

(assert (=> b!1465733 m!1352887))

(assert (=> b!1465740 m!1352845))

(assert (=> b!1465740 m!1352845))

(declare-fun m!1352889 () Bool)

(assert (=> b!1465740 m!1352889))

(declare-fun m!1352891 () Bool)

(assert (=> b!1465745 m!1352891))

(declare-fun m!1352893 () Bool)

(assert (=> b!1465747 m!1352893))

(push 1)

