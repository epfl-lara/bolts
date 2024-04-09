; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125268 () Bool)

(assert start!125268)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!821369 () Bool)

(declare-fun lt!639908 () (_ BitVec 64))

(declare-fun lt!639907 () (_ BitVec 32))

(declare-datatypes ((array!98633 0))(
  ( (array!98634 (arr!47600 (Array (_ BitVec 32) (_ BitVec 64))) (size!48151 (_ BitVec 32))) )
))
(declare-fun lt!639913 () array!98633)

(declare-fun b!1460845 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11875 0))(
  ( (MissingZero!11875 (index!49891 (_ BitVec 32))) (Found!11875 (index!49892 (_ BitVec 32))) (Intermediate!11875 (undefined!12687 Bool) (index!49893 (_ BitVec 32)) (x!131495 (_ BitVec 32))) (Undefined!11875) (MissingVacant!11875 (index!49894 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98633 (_ BitVec 32)) SeekEntryResult!11875)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98633 (_ BitVec 32)) SeekEntryResult!11875)

(assert (=> b!1460845 (= e!821369 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639907 intermediateAfterIndex!19 lt!639908 lt!639913 mask!2687) (seekEntryOrOpen!0 lt!639908 lt!639913 mask!2687))))))

(declare-fun b!1460846 () Bool)

(declare-fun res!990663 () Bool)

(declare-fun e!821363 () Bool)

(assert (=> b!1460846 (=> (not res!990663) (not e!821363))))

(declare-fun a!2862 () array!98633)

(declare-datatypes ((List!34281 0))(
  ( (Nil!34278) (Cons!34277 (h!35627 (_ BitVec 64)) (t!48982 List!34281)) )
))
(declare-fun arrayNoDuplicates!0 (array!98633 (_ BitVec 32) List!34281) Bool)

(assert (=> b!1460846 (= res!990663 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34278))))

(declare-fun b!1460847 () Bool)

(declare-fun e!821366 () Bool)

(declare-fun e!821372 () Bool)

(assert (=> b!1460847 (= e!821366 (not e!821372))))

(declare-fun res!990673 () Bool)

(assert (=> b!1460847 (=> res!990673 e!821372)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1460847 (= res!990673 (or (and (= (select (arr!47600 a!2862) index!646) (select (store (arr!47600 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47600 a!2862) index!646) (select (arr!47600 a!2862) j!93))) (= (select (arr!47600 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!821368 () Bool)

(assert (=> b!1460847 e!821368))

(declare-fun res!990664 () Bool)

(assert (=> b!1460847 (=> (not res!990664) (not e!821368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98633 (_ BitVec 32)) Bool)

(assert (=> b!1460847 (= res!990664 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49194 0))(
  ( (Unit!49195) )
))
(declare-fun lt!639912 () Unit!49194)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98633 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49194)

(assert (=> b!1460847 (= lt!639912 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1460848 () Bool)

(declare-fun res!990675 () Bool)

(assert (=> b!1460848 (=> (not res!990675) (not e!821366))))

(declare-fun e!821370 () Bool)

(assert (=> b!1460848 (= res!990675 e!821370)))

(declare-fun c!134606 () Bool)

(assert (=> b!1460848 (= c!134606 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460849 () Bool)

(declare-fun res!990676 () Bool)

(assert (=> b!1460849 (=> (not res!990676) (not e!821363))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1460849 (= res!990676 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48151 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48151 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48151 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460850 () Bool)

(declare-fun res!990662 () Bool)

(assert (=> b!1460850 (=> (not res!990662) (not e!821363))))

(assert (=> b!1460850 (= res!990662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460851 () Bool)

(declare-fun res!990666 () Bool)

(assert (=> b!1460851 (=> (not res!990666) (not e!821363))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460851 (= res!990666 (validKeyInArray!0 (select (arr!47600 a!2862) i!1006)))))

(declare-fun lt!639909 () SeekEntryResult!11875)

(declare-fun b!1460852 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98633 (_ BitVec 32)) SeekEntryResult!11875)

(assert (=> b!1460852 (= e!821369 (not (= lt!639909 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639907 lt!639908 lt!639913 mask!2687))))))

(declare-fun b!1460853 () Bool)

(declare-fun e!821364 () Bool)

(declare-fun e!821367 () Bool)

(assert (=> b!1460853 (= e!821364 e!821367)))

(declare-fun res!990661 () Bool)

(assert (=> b!1460853 (=> (not res!990661) (not e!821367))))

(declare-fun lt!639911 () SeekEntryResult!11875)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460853 (= res!990661 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47600 a!2862) j!93) mask!2687) (select (arr!47600 a!2862) j!93) a!2862 mask!2687) lt!639911))))

(assert (=> b!1460853 (= lt!639911 (Intermediate!11875 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460854 () Bool)

(declare-fun res!990669 () Bool)

(assert (=> b!1460854 (=> (not res!990669) (not e!821363))))

(assert (=> b!1460854 (= res!990669 (and (= (size!48151 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48151 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48151 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1460855 () Bool)

(assert (=> b!1460855 (= e!821368 (or (= (select (arr!47600 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47600 a!2862) intermediateBeforeIndex!19) (select (arr!47600 a!2862) j!93))))))

(declare-fun b!1460856 () Bool)

(declare-fun e!821371 () Bool)

(assert (=> b!1460856 (= e!821372 e!821371)))

(declare-fun res!990672 () Bool)

(assert (=> b!1460856 (=> res!990672 e!821371)))

(assert (=> b!1460856 (= res!990672 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639907 #b00000000000000000000000000000000) (bvsge lt!639907 (size!48151 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460856 (= lt!639907 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1460857 () Bool)

(declare-fun res!990674 () Bool)

(assert (=> b!1460857 (=> (not res!990674) (not e!821366))))

(assert (=> b!1460857 (= res!990674 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460858 () Bool)

(declare-fun res!990667 () Bool)

(assert (=> b!1460858 (=> res!990667 e!821371)))

(assert (=> b!1460858 (= res!990667 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639907 (select (arr!47600 a!2862) j!93) a!2862 mask!2687) lt!639911)))))

(declare-fun res!990677 () Bool)

(assert (=> start!125268 (=> (not res!990677) (not e!821363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125268 (= res!990677 (validMask!0 mask!2687))))

(assert (=> start!125268 e!821363))

(assert (=> start!125268 true))

(declare-fun array_inv!36545 (array!98633) Bool)

(assert (=> start!125268 (array_inv!36545 a!2862)))

(declare-fun b!1460859 () Bool)

(assert (=> b!1460859 (= e!821363 e!821364)))

(declare-fun res!990665 () Bool)

(assert (=> b!1460859 (=> (not res!990665) (not e!821364))))

(assert (=> b!1460859 (= res!990665 (= (select (store (arr!47600 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460859 (= lt!639913 (array!98634 (store (arr!47600 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48151 a!2862)))))

(declare-fun b!1460860 () Bool)

(declare-fun res!990670 () Bool)

(assert (=> b!1460860 (=> (not res!990670) (not e!821367))))

(assert (=> b!1460860 (= res!990670 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47600 a!2862) j!93) a!2862 mask!2687) lt!639911))))

(declare-fun b!1460861 () Bool)

(declare-fun res!990678 () Bool)

(assert (=> b!1460861 (=> (not res!990678) (not e!821363))))

(assert (=> b!1460861 (= res!990678 (validKeyInArray!0 (select (arr!47600 a!2862) j!93)))))

(declare-fun b!1460862 () Bool)

(assert (=> b!1460862 (= e!821371 true)))

(declare-fun lt!639910 () Bool)

(assert (=> b!1460862 (= lt!639910 e!821369)))

(declare-fun c!134605 () Bool)

(assert (=> b!1460862 (= c!134605 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1460863 () Bool)

(assert (=> b!1460863 (= e!821370 (= lt!639909 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639908 lt!639913 mask!2687)))))

(declare-fun b!1460864 () Bool)

(assert (=> b!1460864 (= e!821367 e!821366)))

(declare-fun res!990671 () Bool)

(assert (=> b!1460864 (=> (not res!990671) (not e!821366))))

(assert (=> b!1460864 (= res!990671 (= lt!639909 (Intermediate!11875 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1460864 (= lt!639909 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639908 mask!2687) lt!639908 lt!639913 mask!2687))))

(assert (=> b!1460864 (= lt!639908 (select (store (arr!47600 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1460865 () Bool)

(assert (=> b!1460865 (= e!821370 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639908 lt!639913 mask!2687) (seekEntryOrOpen!0 lt!639908 lt!639913 mask!2687)))))

(declare-fun b!1460866 () Bool)

(declare-fun res!990668 () Bool)

(assert (=> b!1460866 (=> (not res!990668) (not e!821368))))

(assert (=> b!1460866 (= res!990668 (= (seekEntryOrOpen!0 (select (arr!47600 a!2862) j!93) a!2862 mask!2687) (Found!11875 j!93)))))

(assert (= (and start!125268 res!990677) b!1460854))

(assert (= (and b!1460854 res!990669) b!1460851))

(assert (= (and b!1460851 res!990666) b!1460861))

(assert (= (and b!1460861 res!990678) b!1460850))

(assert (= (and b!1460850 res!990662) b!1460846))

(assert (= (and b!1460846 res!990663) b!1460849))

(assert (= (and b!1460849 res!990676) b!1460859))

(assert (= (and b!1460859 res!990665) b!1460853))

(assert (= (and b!1460853 res!990661) b!1460860))

(assert (= (and b!1460860 res!990670) b!1460864))

(assert (= (and b!1460864 res!990671) b!1460848))

(assert (= (and b!1460848 c!134606) b!1460863))

(assert (= (and b!1460848 (not c!134606)) b!1460865))

(assert (= (and b!1460848 res!990675) b!1460857))

(assert (= (and b!1460857 res!990674) b!1460847))

(assert (= (and b!1460847 res!990664) b!1460866))

(assert (= (and b!1460866 res!990668) b!1460855))

(assert (= (and b!1460847 (not res!990673)) b!1460856))

(assert (= (and b!1460856 (not res!990672)) b!1460858))

(assert (= (and b!1460858 (not res!990667)) b!1460862))

(assert (= (and b!1460862 c!134605) b!1460852))

(assert (= (and b!1460862 (not c!134605)) b!1460845))

(declare-fun m!1348543 () Bool)

(assert (=> b!1460845 m!1348543))

(declare-fun m!1348545 () Bool)

(assert (=> b!1460845 m!1348545))

(declare-fun m!1348547 () Bool)

(assert (=> b!1460850 m!1348547))

(declare-fun m!1348549 () Bool)

(assert (=> b!1460853 m!1348549))

(assert (=> b!1460853 m!1348549))

(declare-fun m!1348551 () Bool)

(assert (=> b!1460853 m!1348551))

(assert (=> b!1460853 m!1348551))

(assert (=> b!1460853 m!1348549))

(declare-fun m!1348553 () Bool)

(assert (=> b!1460853 m!1348553))

(assert (=> b!1460861 m!1348549))

(assert (=> b!1460861 m!1348549))

(declare-fun m!1348555 () Bool)

(assert (=> b!1460861 m!1348555))

(declare-fun m!1348557 () Bool)

(assert (=> b!1460855 m!1348557))

(assert (=> b!1460855 m!1348549))

(assert (=> b!1460860 m!1348549))

(assert (=> b!1460860 m!1348549))

(declare-fun m!1348559 () Bool)

(assert (=> b!1460860 m!1348559))

(declare-fun m!1348561 () Bool)

(assert (=> b!1460846 m!1348561))

(declare-fun m!1348563 () Bool)

(assert (=> b!1460859 m!1348563))

(declare-fun m!1348565 () Bool)

(assert (=> b!1460859 m!1348565))

(declare-fun m!1348567 () Bool)

(assert (=> b!1460847 m!1348567))

(assert (=> b!1460847 m!1348563))

(declare-fun m!1348569 () Bool)

(assert (=> b!1460847 m!1348569))

(declare-fun m!1348571 () Bool)

(assert (=> b!1460847 m!1348571))

(declare-fun m!1348573 () Bool)

(assert (=> b!1460847 m!1348573))

(assert (=> b!1460847 m!1348549))

(declare-fun m!1348575 () Bool)

(assert (=> b!1460852 m!1348575))

(assert (=> b!1460858 m!1348549))

(assert (=> b!1460858 m!1348549))

(declare-fun m!1348577 () Bool)

(assert (=> b!1460858 m!1348577))

(declare-fun m!1348579 () Bool)

(assert (=> b!1460863 m!1348579))

(assert (=> b!1460866 m!1348549))

(assert (=> b!1460866 m!1348549))

(declare-fun m!1348581 () Bool)

(assert (=> b!1460866 m!1348581))

(declare-fun m!1348583 () Bool)

(assert (=> start!125268 m!1348583))

(declare-fun m!1348585 () Bool)

(assert (=> start!125268 m!1348585))

(declare-fun m!1348587 () Bool)

(assert (=> b!1460865 m!1348587))

(assert (=> b!1460865 m!1348545))

(declare-fun m!1348589 () Bool)

(assert (=> b!1460856 m!1348589))

(declare-fun m!1348591 () Bool)

(assert (=> b!1460851 m!1348591))

(assert (=> b!1460851 m!1348591))

(declare-fun m!1348593 () Bool)

(assert (=> b!1460851 m!1348593))

(declare-fun m!1348595 () Bool)

(assert (=> b!1460864 m!1348595))

(assert (=> b!1460864 m!1348595))

(declare-fun m!1348597 () Bool)

(assert (=> b!1460864 m!1348597))

(assert (=> b!1460864 m!1348563))

(declare-fun m!1348599 () Bool)

(assert (=> b!1460864 m!1348599))

(check-sat (not b!1460853) (not b!1460856) (not b!1460846) (not b!1460860) (not b!1460847) (not b!1460845) (not b!1460852) (not start!125268) (not b!1460865) (not b!1460850) (not b!1460861) (not b!1460863) (not b!1460866) (not b!1460864) (not b!1460858) (not b!1460851))
(check-sat)
