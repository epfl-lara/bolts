; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125232 () Bool)

(assert start!125232)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98597 0))(
  ( (array!98598 (arr!47582 (Array (_ BitVec 32) (_ BitVec 64))) (size!48133 (_ BitVec 32))) )
))
(declare-fun lt!639581 () array!98597)

(declare-fun b!1459829 () Bool)

(declare-fun e!820942 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!639579 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11857 0))(
  ( (MissingZero!11857 (index!49819 (_ BitVec 32))) (Found!11857 (index!49820 (_ BitVec 32))) (Intermediate!11857 (undefined!12669 Bool) (index!49821 (_ BitVec 32)) (x!131429 (_ BitVec 32))) (Undefined!11857) (MissingVacant!11857 (index!49822 (_ BitVec 32))) )
))
(declare-fun lt!639575 () SeekEntryResult!11857)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98597 (_ BitVec 32)) SeekEntryResult!11857)

(assert (=> b!1459829 (= e!820942 (= lt!639575 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639579 lt!639581 mask!2687)))))

(declare-fun b!1459830 () Bool)

(declare-fun res!989792 () Bool)

(declare-fun e!820937 () Bool)

(assert (=> b!1459830 (=> (not res!989792) (not e!820937))))

(declare-fun a!2862 () array!98597)

(declare-datatypes ((List!34263 0))(
  ( (Nil!34260) (Cons!34259 (h!35609 (_ BitVec 64)) (t!48964 List!34263)) )
))
(declare-fun arrayNoDuplicates!0 (array!98597 (_ BitVec 32) List!34263) Bool)

(assert (=> b!1459830 (= res!989792 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34260))))

(declare-fun b!1459831 () Bool)

(declare-fun res!989794 () Bool)

(assert (=> b!1459831 (=> (not res!989794) (not e!820937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98597 (_ BitVec 32)) Bool)

(assert (=> b!1459831 (= res!989794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1459832 () Bool)

(declare-fun e!820936 () Bool)

(assert (=> b!1459832 (= e!820936 true)))

(declare-fun lt!639578 () SeekEntryResult!11857)

(declare-fun lt!639583 () SeekEntryResult!11857)

(assert (=> b!1459832 (= lt!639578 lt!639583)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!639582 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((Unit!49158 0))(
  ( (Unit!49159) )
))
(declare-fun lt!639576 () Unit!49158)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98597 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49158)

(assert (=> b!1459832 (= lt!639576 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639582 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1459833 () Bool)

(declare-fun e!820935 () Bool)

(declare-fun e!820943 () Bool)

(assert (=> b!1459833 (= e!820935 e!820943)))

(declare-fun res!989802 () Bool)

(assert (=> b!1459833 (=> (not res!989802) (not e!820943))))

(assert (=> b!1459833 (= res!989802 (= lt!639575 (Intermediate!11857 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459833 (= lt!639575 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639579 mask!2687) lt!639579 lt!639581 mask!2687))))

(assert (=> b!1459833 (= lt!639579 (select (store (arr!47582 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1459834 () Bool)

(declare-fun res!989797 () Bool)

(assert (=> b!1459834 (=> (not res!989797) (not e!820943))))

(assert (=> b!1459834 (= res!989797 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1459835 () Bool)

(declare-fun res!989788 () Bool)

(assert (=> b!1459835 (=> (not res!989788) (not e!820937))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459835 (= res!989788 (validKeyInArray!0 (select (arr!47582 a!2862) i!1006)))))

(declare-fun b!1459836 () Bool)

(declare-fun res!989789 () Bool)

(assert (=> b!1459836 (=> (not res!989789) (not e!820937))))

(assert (=> b!1459836 (= res!989789 (validKeyInArray!0 (select (arr!47582 a!2862) j!93)))))

(declare-fun b!1459837 () Bool)

(declare-fun e!820939 () Bool)

(assert (=> b!1459837 (= e!820939 e!820935)))

(declare-fun res!989795 () Bool)

(assert (=> b!1459837 (=> (not res!989795) (not e!820935))))

(declare-fun lt!639577 () SeekEntryResult!11857)

(assert (=> b!1459837 (= res!989795 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47582 a!2862) j!93) mask!2687) (select (arr!47582 a!2862) j!93) a!2862 mask!2687) lt!639577))))

(assert (=> b!1459837 (= lt!639577 (Intermediate!11857 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1459838 () Bool)

(declare-fun res!989803 () Bool)

(assert (=> b!1459838 (=> res!989803 e!820936)))

(assert (=> b!1459838 (= res!989803 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1459828 () Bool)

(declare-fun res!989790 () Bool)

(assert (=> b!1459828 (=> (not res!989790) (not e!820935))))

(assert (=> b!1459828 (= res!989790 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47582 a!2862) j!93) a!2862 mask!2687) lt!639577))))

(declare-fun res!989796 () Bool)

(assert (=> start!125232 (=> (not res!989796) (not e!820937))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125232 (= res!989796 (validMask!0 mask!2687))))

(assert (=> start!125232 e!820937))

(assert (=> start!125232 true))

(declare-fun array_inv!36527 (array!98597) Bool)

(assert (=> start!125232 (array_inv!36527 a!2862)))

(declare-fun b!1459839 () Bool)

(assert (=> b!1459839 (= e!820937 e!820939)))

(declare-fun res!989799 () Bool)

(assert (=> b!1459839 (=> (not res!989799) (not e!820939))))

(assert (=> b!1459839 (= res!989799 (= (select (store (arr!47582 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1459839 (= lt!639581 (array!98598 (store (arr!47582 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48133 a!2862)))))

(declare-fun b!1459840 () Bool)

(declare-fun res!989798 () Bool)

(assert (=> b!1459840 (=> (not res!989798) (not e!820937))))

(assert (=> b!1459840 (= res!989798 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48133 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48133 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48133 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459841 () Bool)

(declare-fun e!820941 () Bool)

(assert (=> b!1459841 (= e!820943 (not e!820941))))

(declare-fun res!989805 () Bool)

(assert (=> b!1459841 (=> res!989805 e!820941)))

(assert (=> b!1459841 (= res!989805 (or (and (= (select (arr!47582 a!2862) index!646) (select (store (arr!47582 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47582 a!2862) index!646) (select (arr!47582 a!2862) j!93))) (= (select (arr!47582 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1459841 (and (= lt!639578 (Found!11857 j!93)) (or (= (select (arr!47582 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47582 a!2862) intermediateBeforeIndex!19) (select (arr!47582 a!2862) j!93))) (let ((bdg!53547 (select (store (arr!47582 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47582 a!2862) index!646) bdg!53547) (= (select (arr!47582 a!2862) index!646) (select (arr!47582 a!2862) j!93))) (= (select (arr!47582 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53547 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98597 (_ BitVec 32)) SeekEntryResult!11857)

(assert (=> b!1459841 (= lt!639578 (seekEntryOrOpen!0 (select (arr!47582 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1459841 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!639580 () Unit!49158)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98597 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49158)

(assert (=> b!1459841 (= lt!639580 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459842 () Bool)

(declare-fun res!989804 () Bool)

(assert (=> b!1459842 (=> (not res!989804) (not e!820937))))

(assert (=> b!1459842 (= res!989804 (and (= (size!48133 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48133 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48133 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1459843 () Bool)

(declare-fun res!989791 () Bool)

(assert (=> b!1459843 (=> res!989791 e!820936)))

(assert (=> b!1459843 (= res!989791 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639582 (select (arr!47582 a!2862) j!93) a!2862 mask!2687) lt!639577)))))

(declare-fun b!1459844 () Bool)

(declare-fun res!989801 () Bool)

(assert (=> b!1459844 (=> (not res!989801) (not e!820943))))

(assert (=> b!1459844 (= res!989801 e!820942)))

(declare-fun c!134533 () Bool)

(assert (=> b!1459844 (= c!134533 (bvsle x!665 intermediateAfterX!19))))

(declare-fun e!820940 () Bool)

(declare-fun b!1459845 () Bool)

(assert (=> b!1459845 (= e!820940 (not (= lt!639575 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639582 lt!639579 lt!639581 mask!2687))))))

(declare-fun b!1459846 () Bool)

(assert (=> b!1459846 (= e!820941 e!820936)))

(declare-fun res!989793 () Bool)

(assert (=> b!1459846 (=> res!989793 e!820936)))

(assert (=> b!1459846 (= res!989793 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639582 #b00000000000000000000000000000000) (bvsge lt!639582 (size!48133 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459846 (= lt!639582 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98597 (_ BitVec 32)) SeekEntryResult!11857)

(assert (=> b!1459846 (= lt!639583 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639579 lt!639581 mask!2687))))

(assert (=> b!1459846 (= lt!639583 (seekEntryOrOpen!0 lt!639579 lt!639581 mask!2687))))

(declare-fun b!1459847 () Bool)

(declare-fun res!989800 () Bool)

(assert (=> b!1459847 (=> res!989800 e!820936)))

(assert (=> b!1459847 (= res!989800 e!820940)))

(declare-fun c!134534 () Bool)

(assert (=> b!1459847 (= c!134534 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459848 () Bool)

(assert (=> b!1459848 (= e!820940 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639582 intermediateAfterIndex!19 lt!639579 lt!639581 mask!2687) lt!639583)))))

(declare-fun b!1459849 () Bool)

(assert (=> b!1459849 (= e!820942 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639579 lt!639581 mask!2687) (seekEntryOrOpen!0 lt!639579 lt!639581 mask!2687)))))

(assert (= (and start!125232 res!989796) b!1459842))

(assert (= (and b!1459842 res!989804) b!1459835))

(assert (= (and b!1459835 res!989788) b!1459836))

(assert (= (and b!1459836 res!989789) b!1459831))

(assert (= (and b!1459831 res!989794) b!1459830))

(assert (= (and b!1459830 res!989792) b!1459840))

(assert (= (and b!1459840 res!989798) b!1459839))

(assert (= (and b!1459839 res!989799) b!1459837))

(assert (= (and b!1459837 res!989795) b!1459828))

(assert (= (and b!1459828 res!989790) b!1459833))

(assert (= (and b!1459833 res!989802) b!1459844))

(assert (= (and b!1459844 c!134533) b!1459829))

(assert (= (and b!1459844 (not c!134533)) b!1459849))

(assert (= (and b!1459844 res!989801) b!1459834))

(assert (= (and b!1459834 res!989797) b!1459841))

(assert (= (and b!1459841 (not res!989805)) b!1459846))

(assert (= (and b!1459846 (not res!989793)) b!1459843))

(assert (= (and b!1459843 (not res!989791)) b!1459847))

(assert (= (and b!1459847 c!134534) b!1459845))

(assert (= (and b!1459847 (not c!134534)) b!1459848))

(assert (= (and b!1459847 (not res!989800)) b!1459838))

(assert (= (and b!1459838 (not res!989803)) b!1459832))

(declare-fun m!1347603 () Bool)

(assert (=> b!1459843 m!1347603))

(assert (=> b!1459843 m!1347603))

(declare-fun m!1347605 () Bool)

(assert (=> b!1459843 m!1347605))

(declare-fun m!1347607 () Bool)

(assert (=> b!1459839 m!1347607))

(declare-fun m!1347609 () Bool)

(assert (=> b!1459839 m!1347609))

(assert (=> b!1459837 m!1347603))

(assert (=> b!1459837 m!1347603))

(declare-fun m!1347611 () Bool)

(assert (=> b!1459837 m!1347611))

(assert (=> b!1459837 m!1347611))

(assert (=> b!1459837 m!1347603))

(declare-fun m!1347613 () Bool)

(assert (=> b!1459837 m!1347613))

(declare-fun m!1347615 () Bool)

(assert (=> b!1459845 m!1347615))

(declare-fun m!1347617 () Bool)

(assert (=> start!125232 m!1347617))

(declare-fun m!1347619 () Bool)

(assert (=> start!125232 m!1347619))

(declare-fun m!1347621 () Bool)

(assert (=> b!1459841 m!1347621))

(assert (=> b!1459841 m!1347607))

(declare-fun m!1347623 () Bool)

(assert (=> b!1459841 m!1347623))

(declare-fun m!1347625 () Bool)

(assert (=> b!1459841 m!1347625))

(declare-fun m!1347627 () Bool)

(assert (=> b!1459841 m!1347627))

(assert (=> b!1459841 m!1347603))

(declare-fun m!1347629 () Bool)

(assert (=> b!1459841 m!1347629))

(declare-fun m!1347631 () Bool)

(assert (=> b!1459841 m!1347631))

(assert (=> b!1459841 m!1347603))

(declare-fun m!1347633 () Bool)

(assert (=> b!1459833 m!1347633))

(assert (=> b!1459833 m!1347633))

(declare-fun m!1347635 () Bool)

(assert (=> b!1459833 m!1347635))

(assert (=> b!1459833 m!1347607))

(declare-fun m!1347637 () Bool)

(assert (=> b!1459833 m!1347637))

(declare-fun m!1347639 () Bool)

(assert (=> b!1459831 m!1347639))

(declare-fun m!1347641 () Bool)

(assert (=> b!1459832 m!1347641))

(assert (=> b!1459828 m!1347603))

(assert (=> b!1459828 m!1347603))

(declare-fun m!1347643 () Bool)

(assert (=> b!1459828 m!1347643))

(declare-fun m!1347645 () Bool)

(assert (=> b!1459848 m!1347645))

(declare-fun m!1347647 () Bool)

(assert (=> b!1459846 m!1347647))

(declare-fun m!1347649 () Bool)

(assert (=> b!1459846 m!1347649))

(declare-fun m!1347651 () Bool)

(assert (=> b!1459846 m!1347651))

(declare-fun m!1347653 () Bool)

(assert (=> b!1459830 m!1347653))

(declare-fun m!1347655 () Bool)

(assert (=> b!1459829 m!1347655))

(assert (=> b!1459836 m!1347603))

(assert (=> b!1459836 m!1347603))

(declare-fun m!1347657 () Bool)

(assert (=> b!1459836 m!1347657))

(assert (=> b!1459849 m!1347649))

(assert (=> b!1459849 m!1347651))

(declare-fun m!1347659 () Bool)

(assert (=> b!1459835 m!1347659))

(assert (=> b!1459835 m!1347659))

(declare-fun m!1347661 () Bool)

(assert (=> b!1459835 m!1347661))

(check-sat (not b!1459843) (not b!1459832) (not b!1459846) (not b!1459831) (not b!1459830) (not b!1459837) (not b!1459828) (not b!1459829) (not b!1459833) (not b!1459835) (not b!1459849) (not b!1459845) (not b!1459841) (not b!1459848) (not start!125232) (not b!1459836))
(check-sat)
