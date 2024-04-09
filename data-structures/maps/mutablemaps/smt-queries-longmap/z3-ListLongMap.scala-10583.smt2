; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124680 () Bool)

(assert start!124680)

(declare-fun b!1443599 () Bool)

(declare-fun res!975791 () Bool)

(declare-fun e!813493 () Bool)

(assert (=> b!1443599 (=> (not res!975791) (not e!813493))))

(declare-datatypes ((SeekEntryResult!11581 0))(
  ( (MissingZero!11581 (index!48715 (_ BitVec 32))) (Found!11581 (index!48716 (_ BitVec 32))) (Intermediate!11581 (undefined!12393 Bool) (index!48717 (_ BitVec 32)) (x!130417 (_ BitVec 32))) (Undefined!11581) (MissingVacant!11581 (index!48718 (_ BitVec 32))) )
))
(declare-fun lt!633884 () SeekEntryResult!11581)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98045 0))(
  ( (array!98046 (arr!47306 (Array (_ BitVec 32) (_ BitVec 64))) (size!47857 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98045)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98045 (_ BitVec 32)) SeekEntryResult!11581)

(assert (=> b!1443599 (= res!975791 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47306 a!2862) j!93) a!2862 mask!2687) lt!633884))))

(declare-fun b!1443600 () Bool)

(declare-fun res!975798 () Bool)

(declare-fun e!813488 () Bool)

(assert (=> b!1443600 (=> (not res!975798) (not e!813488))))

(declare-datatypes ((List!33987 0))(
  ( (Nil!33984) (Cons!33983 (h!35333 (_ BitVec 64)) (t!48688 List!33987)) )
))
(declare-fun arrayNoDuplicates!0 (array!98045 (_ BitVec 32) List!33987) Bool)

(assert (=> b!1443600 (= res!975798 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33984))))

(declare-fun b!1443601 () Bool)

(declare-fun res!975788 () Bool)

(declare-fun e!813491 () Bool)

(assert (=> b!1443601 (=> (not res!975788) (not e!813491))))

(declare-fun e!813492 () Bool)

(assert (=> b!1443601 (= res!975788 e!813492)))

(declare-fun c!133421 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1443601 (= c!133421 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!975787 () Bool)

(assert (=> start!124680 (=> (not res!975787) (not e!813488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124680 (= res!975787 (validMask!0 mask!2687))))

(assert (=> start!124680 e!813488))

(assert (=> start!124680 true))

(declare-fun array_inv!36251 (array!98045) Bool)

(assert (=> start!124680 (array_inv!36251 a!2862)))

(declare-fun b!1443602 () Bool)

(declare-fun res!975785 () Bool)

(assert (=> b!1443602 (=> (not res!975785) (not e!813488))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1443602 (= res!975785 (and (= (size!47857 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47857 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47857 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!633885 () array!98045)

(declare-fun b!1443603 () Bool)

(declare-fun lt!633886 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98045 (_ BitVec 32)) SeekEntryResult!11581)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98045 (_ BitVec 32)) SeekEntryResult!11581)

(assert (=> b!1443603 (= e!813492 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633886 lt!633885 mask!2687) (seekEntryOrOpen!0 lt!633886 lt!633885 mask!2687)))))

(declare-fun b!1443604 () Bool)

(declare-fun res!975797 () Bool)

(assert (=> b!1443604 (=> (not res!975797) (not e!813488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98045 (_ BitVec 32)) Bool)

(assert (=> b!1443604 (= res!975797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443605 () Bool)

(declare-fun res!975795 () Bool)

(assert (=> b!1443605 (=> (not res!975795) (not e!813488))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1443605 (= res!975795 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47857 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47857 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47857 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!633882 () SeekEntryResult!11581)

(declare-fun b!1443606 () Bool)

(assert (=> b!1443606 (= e!813492 (= lt!633882 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633886 lt!633885 mask!2687)))))

(declare-fun b!1443607 () Bool)

(declare-fun res!975796 () Bool)

(assert (=> b!1443607 (=> (not res!975796) (not e!813491))))

(assert (=> b!1443607 (= res!975796 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1443608 () Bool)

(declare-fun e!813489 () Bool)

(assert (=> b!1443608 (= e!813491 (not e!813489))))

(declare-fun res!975790 () Bool)

(assert (=> b!1443608 (=> res!975790 e!813489)))

(assert (=> b!1443608 (= res!975790 (or (not (= (select (arr!47306 a!2862) index!646) (select (store (arr!47306 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47306 a!2862) index!646) (select (arr!47306 a!2862) j!93)))))))

(declare-fun e!813487 () Bool)

(assert (=> b!1443608 e!813487))

(declare-fun res!975784 () Bool)

(assert (=> b!1443608 (=> (not res!975784) (not e!813487))))

(assert (=> b!1443608 (= res!975784 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48606 0))(
  ( (Unit!48607) )
))
(declare-fun lt!633881 () Unit!48606)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98045 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48606)

(assert (=> b!1443608 (= lt!633881 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443609 () Bool)

(declare-fun res!975792 () Bool)

(assert (=> b!1443609 (=> (not res!975792) (not e!813488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443609 (= res!975792 (validKeyInArray!0 (select (arr!47306 a!2862) i!1006)))))

(declare-fun b!1443610 () Bool)

(declare-fun e!813490 () Bool)

(assert (=> b!1443610 (= e!813490 e!813493)))

(declare-fun res!975783 () Bool)

(assert (=> b!1443610 (=> (not res!975783) (not e!813493))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443610 (= res!975783 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47306 a!2862) j!93) mask!2687) (select (arr!47306 a!2862) j!93) a!2862 mask!2687) lt!633884))))

(assert (=> b!1443610 (= lt!633884 (Intermediate!11581 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1443611 () Bool)

(assert (=> b!1443611 (= e!813487 (or (= (select (arr!47306 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47306 a!2862) intermediateBeforeIndex!19) (select (arr!47306 a!2862) j!93))))))

(declare-fun b!1443612 () Bool)

(declare-fun res!975789 () Bool)

(assert (=> b!1443612 (=> (not res!975789) (not e!813488))))

(assert (=> b!1443612 (= res!975789 (validKeyInArray!0 (select (arr!47306 a!2862) j!93)))))

(declare-fun b!1443613 () Bool)

(declare-fun res!975794 () Bool)

(assert (=> b!1443613 (=> (not res!975794) (not e!813487))))

(assert (=> b!1443613 (= res!975794 (= (seekEntryOrOpen!0 (select (arr!47306 a!2862) j!93) a!2862 mask!2687) (Found!11581 j!93)))))

(declare-fun b!1443614 () Bool)

(assert (=> b!1443614 (= e!813488 e!813490)))

(declare-fun res!975786 () Bool)

(assert (=> b!1443614 (=> (not res!975786) (not e!813490))))

(assert (=> b!1443614 (= res!975786 (= (select (store (arr!47306 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443614 (= lt!633885 (array!98046 (store (arr!47306 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47857 a!2862)))))

(declare-fun b!1443615 () Bool)

(assert (=> b!1443615 (= e!813489 true)))

(declare-fun lt!633883 () SeekEntryResult!11581)

(assert (=> b!1443615 (= lt!633883 (seekEntryOrOpen!0 lt!633886 lt!633885 mask!2687))))

(declare-fun b!1443616 () Bool)

(assert (=> b!1443616 (= e!813493 e!813491)))

(declare-fun res!975793 () Bool)

(assert (=> b!1443616 (=> (not res!975793) (not e!813491))))

(assert (=> b!1443616 (= res!975793 (= lt!633882 (Intermediate!11581 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1443616 (= lt!633882 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633886 mask!2687) lt!633886 lt!633885 mask!2687))))

(assert (=> b!1443616 (= lt!633886 (select (store (arr!47306 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!124680 res!975787) b!1443602))

(assert (= (and b!1443602 res!975785) b!1443609))

(assert (= (and b!1443609 res!975792) b!1443612))

(assert (= (and b!1443612 res!975789) b!1443604))

(assert (= (and b!1443604 res!975797) b!1443600))

(assert (= (and b!1443600 res!975798) b!1443605))

(assert (= (and b!1443605 res!975795) b!1443614))

(assert (= (and b!1443614 res!975786) b!1443610))

(assert (= (and b!1443610 res!975783) b!1443599))

(assert (= (and b!1443599 res!975791) b!1443616))

(assert (= (and b!1443616 res!975793) b!1443601))

(assert (= (and b!1443601 c!133421) b!1443606))

(assert (= (and b!1443601 (not c!133421)) b!1443603))

(assert (= (and b!1443601 res!975788) b!1443607))

(assert (= (and b!1443607 res!975796) b!1443608))

(assert (= (and b!1443608 res!975784) b!1443613))

(assert (= (and b!1443613 res!975794) b!1443611))

(assert (= (and b!1443608 (not res!975790)) b!1443615))

(declare-fun m!1332725 () Bool)

(assert (=> b!1443609 m!1332725))

(assert (=> b!1443609 m!1332725))

(declare-fun m!1332727 () Bool)

(assert (=> b!1443609 m!1332727))

(declare-fun m!1332729 () Bool)

(assert (=> b!1443614 m!1332729))

(declare-fun m!1332731 () Bool)

(assert (=> b!1443614 m!1332731))

(declare-fun m!1332733 () Bool)

(assert (=> b!1443606 m!1332733))

(declare-fun m!1332735 () Bool)

(assert (=> b!1443610 m!1332735))

(assert (=> b!1443610 m!1332735))

(declare-fun m!1332737 () Bool)

(assert (=> b!1443610 m!1332737))

(assert (=> b!1443610 m!1332737))

(assert (=> b!1443610 m!1332735))

(declare-fun m!1332739 () Bool)

(assert (=> b!1443610 m!1332739))

(declare-fun m!1332741 () Bool)

(assert (=> b!1443615 m!1332741))

(declare-fun m!1332743 () Bool)

(assert (=> b!1443604 m!1332743))

(declare-fun m!1332745 () Bool)

(assert (=> b!1443611 m!1332745))

(assert (=> b!1443611 m!1332735))

(declare-fun m!1332747 () Bool)

(assert (=> start!124680 m!1332747))

(declare-fun m!1332749 () Bool)

(assert (=> start!124680 m!1332749))

(assert (=> b!1443612 m!1332735))

(assert (=> b!1443612 m!1332735))

(declare-fun m!1332751 () Bool)

(assert (=> b!1443612 m!1332751))

(declare-fun m!1332753 () Bool)

(assert (=> b!1443616 m!1332753))

(assert (=> b!1443616 m!1332753))

(declare-fun m!1332755 () Bool)

(assert (=> b!1443616 m!1332755))

(assert (=> b!1443616 m!1332729))

(declare-fun m!1332757 () Bool)

(assert (=> b!1443616 m!1332757))

(declare-fun m!1332759 () Bool)

(assert (=> b!1443608 m!1332759))

(assert (=> b!1443608 m!1332729))

(declare-fun m!1332761 () Bool)

(assert (=> b!1443608 m!1332761))

(declare-fun m!1332763 () Bool)

(assert (=> b!1443608 m!1332763))

(declare-fun m!1332765 () Bool)

(assert (=> b!1443608 m!1332765))

(assert (=> b!1443608 m!1332735))

(declare-fun m!1332767 () Bool)

(assert (=> b!1443600 m!1332767))

(assert (=> b!1443599 m!1332735))

(assert (=> b!1443599 m!1332735))

(declare-fun m!1332769 () Bool)

(assert (=> b!1443599 m!1332769))

(declare-fun m!1332771 () Bool)

(assert (=> b!1443603 m!1332771))

(assert (=> b!1443603 m!1332741))

(assert (=> b!1443613 m!1332735))

(assert (=> b!1443613 m!1332735))

(declare-fun m!1332773 () Bool)

(assert (=> b!1443613 m!1332773))

(check-sat (not b!1443599) (not b!1443606) (not b!1443613) (not start!124680) (not b!1443600) (not b!1443615) (not b!1443604) (not b!1443609) (not b!1443616) (not b!1443603) (not b!1443608) (not b!1443612) (not b!1443610))
(check-sat)
