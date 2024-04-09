; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125814 () Bool)

(assert start!125814)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12076 0))(
  ( (MissingZero!12076 (index!50695 (_ BitVec 32))) (Found!12076 (index!50696 (_ BitVec 32))) (Intermediate!12076 (undefined!12888 Bool) (index!50697 (_ BitVec 32)) (x!132282 (_ BitVec 32))) (Undefined!12076) (MissingVacant!12076 (index!50698 (_ BitVec 32))) )
))
(declare-fun lt!643338 () SeekEntryResult!12076)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!826093 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1471770 () Bool)

(declare-fun lt!643342 () (_ BitVec 64))

(declare-datatypes ((array!99065 0))(
  ( (array!99066 (arr!47813 (Array (_ BitVec 32) (_ BitVec 64))) (size!48364 (_ BitVec 32))) )
))
(declare-fun lt!643339 () array!99065)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99065 (_ BitVec 32)) SeekEntryResult!12076)

(assert (=> b!1471770 (= e!826093 (= lt!643338 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643342 lt!643339 mask!2687)))))

(declare-fun b!1471771 () Bool)

(declare-fun res!999620 () Bool)

(declare-fun e!826091 () Bool)

(assert (=> b!1471771 (=> (not res!999620) (not e!826091))))

(declare-fun a!2862 () array!99065)

(declare-datatypes ((List!34494 0))(
  ( (Nil!34491) (Cons!34490 (h!35846 (_ BitVec 64)) (t!49195 List!34494)) )
))
(declare-fun arrayNoDuplicates!0 (array!99065 (_ BitVec 32) List!34494) Bool)

(assert (=> b!1471771 (= res!999620 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34491))))

(declare-fun b!1471772 () Bool)

(declare-fun res!999612 () Bool)

(declare-fun e!826095 () Bool)

(assert (=> b!1471772 (=> (not res!999612) (not e!826095))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1471772 (= res!999612 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1471773 () Bool)

(declare-fun res!999618 () Bool)

(assert (=> b!1471773 (=> (not res!999618) (not e!826095))))

(assert (=> b!1471773 (= res!999618 e!826093)))

(declare-fun c!135596 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1471773 (= c!135596 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1471774 () Bool)

(declare-fun res!999614 () Bool)

(assert (=> b!1471774 (=> (not res!999614) (not e!826091))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1471774 (= res!999614 (and (= (size!48364 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48364 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48364 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1471775 () Bool)

(assert (=> b!1471775 (= e!826095 (not true))))

(declare-fun e!826097 () Bool)

(assert (=> b!1471775 e!826097))

(declare-fun res!999616 () Bool)

(assert (=> b!1471775 (=> (not res!999616) (not e!826097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99065 (_ BitVec 32)) Bool)

(assert (=> b!1471775 (= res!999616 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49440 0))(
  ( (Unit!49441) )
))
(declare-fun lt!643340 () Unit!49440)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99065 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49440)

(assert (=> b!1471775 (= lt!643340 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1471776 () Bool)

(declare-fun e!826094 () Bool)

(declare-fun e!826092 () Bool)

(assert (=> b!1471776 (= e!826094 e!826092)))

(declare-fun res!999613 () Bool)

(assert (=> b!1471776 (=> (not res!999613) (not e!826092))))

(declare-fun lt!643341 () SeekEntryResult!12076)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471776 (= res!999613 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47813 a!2862) j!93) mask!2687) (select (arr!47813 a!2862) j!93) a!2862 mask!2687) lt!643341))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1471776 (= lt!643341 (Intermediate!12076 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1471777 () Bool)

(declare-fun res!999619 () Bool)

(assert (=> b!1471777 (=> (not res!999619) (not e!826091))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1471777 (= res!999619 (validKeyInArray!0 (select (arr!47813 a!2862) j!93)))))

(declare-fun b!1471778 () Bool)

(declare-fun res!999621 () Bool)

(assert (=> b!1471778 (=> (not res!999621) (not e!826091))))

(assert (=> b!1471778 (= res!999621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1471779 () Bool)

(declare-fun res!999611 () Bool)

(assert (=> b!1471779 (=> (not res!999611) (not e!826091))))

(assert (=> b!1471779 (= res!999611 (validKeyInArray!0 (select (arr!47813 a!2862) i!1006)))))

(declare-fun res!999623 () Bool)

(assert (=> start!125814 (=> (not res!999623) (not e!826091))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125814 (= res!999623 (validMask!0 mask!2687))))

(assert (=> start!125814 e!826091))

(assert (=> start!125814 true))

(declare-fun array_inv!36758 (array!99065) Bool)

(assert (=> start!125814 (array_inv!36758 a!2862)))

(declare-fun b!1471780 () Bool)

(declare-fun res!999622 () Bool)

(assert (=> b!1471780 (=> (not res!999622) (not e!826097))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99065 (_ BitVec 32)) SeekEntryResult!12076)

(assert (=> b!1471780 (= res!999622 (= (seekEntryOrOpen!0 (select (arr!47813 a!2862) j!93) a!2862 mask!2687) (Found!12076 j!93)))))

(declare-fun b!1471781 () Bool)

(declare-fun res!999610 () Bool)

(assert (=> b!1471781 (=> (not res!999610) (not e!826092))))

(assert (=> b!1471781 (= res!999610 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47813 a!2862) j!93) a!2862 mask!2687) lt!643341))))

(declare-fun b!1471782 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99065 (_ BitVec 32)) SeekEntryResult!12076)

(assert (=> b!1471782 (= e!826093 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643342 lt!643339 mask!2687) (seekEntryOrOpen!0 lt!643342 lt!643339 mask!2687)))))

(declare-fun b!1471783 () Bool)

(assert (=> b!1471783 (= e!826091 e!826094)))

(declare-fun res!999617 () Bool)

(assert (=> b!1471783 (=> (not res!999617) (not e!826094))))

(assert (=> b!1471783 (= res!999617 (= (select (store (arr!47813 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471783 (= lt!643339 (array!99066 (store (arr!47813 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48364 a!2862)))))

(declare-fun b!1471784 () Bool)

(declare-fun res!999624 () Bool)

(assert (=> b!1471784 (=> (not res!999624) (not e!826091))))

(assert (=> b!1471784 (= res!999624 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48364 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48364 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48364 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1471785 () Bool)

(assert (=> b!1471785 (= e!826097 (or (= (select (arr!47813 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47813 a!2862) intermediateBeforeIndex!19) (select (arr!47813 a!2862) j!93))))))

(declare-fun b!1471786 () Bool)

(assert (=> b!1471786 (= e!826092 e!826095)))

(declare-fun res!999615 () Bool)

(assert (=> b!1471786 (=> (not res!999615) (not e!826095))))

(assert (=> b!1471786 (= res!999615 (= lt!643338 (Intermediate!12076 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1471786 (= lt!643338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643342 mask!2687) lt!643342 lt!643339 mask!2687))))

(assert (=> b!1471786 (= lt!643342 (select (store (arr!47813 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125814 res!999623) b!1471774))

(assert (= (and b!1471774 res!999614) b!1471779))

(assert (= (and b!1471779 res!999611) b!1471777))

(assert (= (and b!1471777 res!999619) b!1471778))

(assert (= (and b!1471778 res!999621) b!1471771))

(assert (= (and b!1471771 res!999620) b!1471784))

(assert (= (and b!1471784 res!999624) b!1471783))

(assert (= (and b!1471783 res!999617) b!1471776))

(assert (= (and b!1471776 res!999613) b!1471781))

(assert (= (and b!1471781 res!999610) b!1471786))

(assert (= (and b!1471786 res!999615) b!1471773))

(assert (= (and b!1471773 c!135596) b!1471770))

(assert (= (and b!1471773 (not c!135596)) b!1471782))

(assert (= (and b!1471773 res!999618) b!1471772))

(assert (= (and b!1471772 res!999612) b!1471775))

(assert (= (and b!1471775 res!999616) b!1471780))

(assert (= (and b!1471780 res!999622) b!1471785))

(declare-fun m!1358599 () Bool)

(assert (=> b!1471785 m!1358599))

(declare-fun m!1358601 () Bool)

(assert (=> b!1471785 m!1358601))

(declare-fun m!1358603 () Bool)

(assert (=> b!1471786 m!1358603))

(assert (=> b!1471786 m!1358603))

(declare-fun m!1358605 () Bool)

(assert (=> b!1471786 m!1358605))

(declare-fun m!1358607 () Bool)

(assert (=> b!1471786 m!1358607))

(declare-fun m!1358609 () Bool)

(assert (=> b!1471786 m!1358609))

(declare-fun m!1358611 () Bool)

(assert (=> b!1471779 m!1358611))

(assert (=> b!1471779 m!1358611))

(declare-fun m!1358613 () Bool)

(assert (=> b!1471779 m!1358613))

(declare-fun m!1358615 () Bool)

(assert (=> b!1471778 m!1358615))

(assert (=> b!1471776 m!1358601))

(assert (=> b!1471776 m!1358601))

(declare-fun m!1358617 () Bool)

(assert (=> b!1471776 m!1358617))

(assert (=> b!1471776 m!1358617))

(assert (=> b!1471776 m!1358601))

(declare-fun m!1358619 () Bool)

(assert (=> b!1471776 m!1358619))

(assert (=> b!1471777 m!1358601))

(assert (=> b!1471777 m!1358601))

(declare-fun m!1358621 () Bool)

(assert (=> b!1471777 m!1358621))

(declare-fun m!1358623 () Bool)

(assert (=> b!1471775 m!1358623))

(declare-fun m!1358625 () Bool)

(assert (=> b!1471775 m!1358625))

(declare-fun m!1358627 () Bool)

(assert (=> b!1471771 m!1358627))

(assert (=> b!1471781 m!1358601))

(assert (=> b!1471781 m!1358601))

(declare-fun m!1358629 () Bool)

(assert (=> b!1471781 m!1358629))

(assert (=> b!1471780 m!1358601))

(assert (=> b!1471780 m!1358601))

(declare-fun m!1358631 () Bool)

(assert (=> b!1471780 m!1358631))

(declare-fun m!1358633 () Bool)

(assert (=> b!1471770 m!1358633))

(declare-fun m!1358635 () Bool)

(assert (=> start!125814 m!1358635))

(declare-fun m!1358637 () Bool)

(assert (=> start!125814 m!1358637))

(declare-fun m!1358639 () Bool)

(assert (=> b!1471782 m!1358639))

(declare-fun m!1358641 () Bool)

(assert (=> b!1471782 m!1358641))

(assert (=> b!1471783 m!1358607))

(declare-fun m!1358643 () Bool)

(assert (=> b!1471783 m!1358643))

(check-sat (not b!1471782) (not b!1471781) (not b!1471778) (not b!1471775) (not start!125814) (not b!1471779) (not b!1471780) (not b!1471786) (not b!1471770) (not b!1471777) (not b!1471771) (not b!1471776))
(check-sat)
