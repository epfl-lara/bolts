; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126294 () Bool)

(assert start!126294)

(declare-fun b!1479753 () Bool)

(declare-fun e!830036 () Bool)

(declare-fun e!830035 () Bool)

(assert (=> b!1479753 (= e!830036 e!830035)))

(declare-fun res!1005735 () Bool)

(assert (=> b!1479753 (=> (not res!1005735) (not e!830035))))

(declare-datatypes ((SeekEntryResult!12196 0))(
  ( (MissingZero!12196 (index!51175 (_ BitVec 32))) (Found!12196 (index!51176 (_ BitVec 32))) (Intermediate!12196 (undefined!13008 Bool) (index!51177 (_ BitVec 32)) (x!132758 (_ BitVec 32))) (Undefined!12196) (MissingVacant!12196 (index!51178 (_ BitVec 32))) )
))
(declare-fun lt!646129 () SeekEntryResult!12196)

(declare-datatypes ((array!99317 0))(
  ( (array!99318 (arr!47933 (Array (_ BitVec 32) (_ BitVec 64))) (size!48484 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99317)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99317 (_ BitVec 32)) SeekEntryResult!12196)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479753 (= res!1005735 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47933 a!2862) j!93) mask!2687) (select (arr!47933 a!2862) j!93) a!2862 mask!2687) lt!646129))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1479753 (= lt!646129 (Intermediate!12196 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1479754 () Bool)

(declare-fun e!830030 () Bool)

(assert (=> b!1479754 (= e!830030 true)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!646124 () array!99317)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!646125 () SeekEntryResult!12196)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!646128 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99317 (_ BitVec 32)) SeekEntryResult!12196)

(assert (=> b!1479754 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646128 lt!646124 mask!2687) lt!646125)))

(declare-datatypes ((Unit!49680 0))(
  ( (Unit!49681) )
))
(declare-fun lt!646123 () Unit!49680)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99317 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49680)

(assert (=> b!1479754 (= lt!646123 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1479755 () Bool)

(declare-fun res!1005733 () Bool)

(assert (=> b!1479755 (=> res!1005733 e!830030)))

(assert (=> b!1479755 (= res!1005733 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47933 a!2862) j!93) a!2862 mask!2687) lt!646125)))))

(declare-fun b!1479756 () Bool)

(declare-fun e!830039 () Bool)

(assert (=> b!1479756 (= e!830039 (not e!830030))))

(declare-fun res!1005737 () Bool)

(assert (=> b!1479756 (=> res!1005737 e!830030)))

(assert (=> b!1479756 (= res!1005737 (or (and (= (select (arr!47933 a!2862) index!646) (select (store (arr!47933 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47933 a!2862) index!646) (select (arr!47933 a!2862) j!93))) (not (= (select (arr!47933 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47933 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!830037 () Bool)

(assert (=> b!1479756 e!830037))

(declare-fun res!1005739 () Bool)

(assert (=> b!1479756 (=> (not res!1005739) (not e!830037))))

(declare-fun lt!646122 () SeekEntryResult!12196)

(assert (=> b!1479756 (= res!1005739 (and (= lt!646122 lt!646125) (or (= (select (arr!47933 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47933 a!2862) intermediateBeforeIndex!19) (select (arr!47933 a!2862) j!93)))))))

(assert (=> b!1479756 (= lt!646125 (Found!12196 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99317 (_ BitVec 32)) SeekEntryResult!12196)

(assert (=> b!1479756 (= lt!646122 (seekEntryOrOpen!0 (select (arr!47933 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99317 (_ BitVec 32)) Bool)

(assert (=> b!1479756 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!646127 () Unit!49680)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99317 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49680)

(assert (=> b!1479756 (= lt!646127 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479757 () Bool)

(declare-fun res!1005727 () Bool)

(declare-fun e!830038 () Bool)

(assert (=> b!1479757 (=> (not res!1005727) (not e!830038))))

(assert (=> b!1479757 (= res!1005727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun e!830031 () Bool)

(declare-fun lt!646126 () SeekEntryResult!12196)

(declare-fun b!1479758 () Bool)

(assert (=> b!1479758 (= e!830031 (= lt!646126 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646128 lt!646124 mask!2687)))))

(declare-fun b!1479759 () Bool)

(declare-fun res!1005730 () Bool)

(assert (=> b!1479759 (=> (not res!1005730) (not e!830038))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479759 (= res!1005730 (validKeyInArray!0 (select (arr!47933 a!2862) i!1006)))))

(declare-fun b!1479760 () Bool)

(declare-fun res!1005740 () Bool)

(assert (=> b!1479760 (=> (not res!1005740) (not e!830038))))

(assert (=> b!1479760 (= res!1005740 (validKeyInArray!0 (select (arr!47933 a!2862) j!93)))))

(declare-fun b!1479761 () Bool)

(declare-fun res!1005736 () Bool)

(assert (=> b!1479761 (=> (not res!1005736) (not e!830035))))

(assert (=> b!1479761 (= res!1005736 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47933 a!2862) j!93) a!2862 mask!2687) lt!646129))))

(declare-fun b!1479762 () Bool)

(declare-fun res!1005729 () Bool)

(assert (=> b!1479762 (=> (not res!1005729) (not e!830039))))

(assert (=> b!1479762 (= res!1005729 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1479764 () Bool)

(declare-fun res!1005741 () Bool)

(assert (=> b!1479764 (=> (not res!1005741) (not e!830038))))

(assert (=> b!1479764 (= res!1005741 (and (= (size!48484 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48484 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48484 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!830032 () Bool)

(declare-fun b!1479765 () Bool)

(assert (=> b!1479765 (= e!830032 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479766 () Bool)

(assert (=> b!1479766 (= e!830031 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646128 lt!646124 mask!2687) (seekEntryOrOpen!0 lt!646128 lt!646124 mask!2687)))))

(declare-fun b!1479767 () Bool)

(declare-fun res!1005742 () Bool)

(assert (=> b!1479767 (=> (not res!1005742) (not e!830038))))

(declare-datatypes ((List!34614 0))(
  ( (Nil!34611) (Cons!34610 (h!35978 (_ BitVec 64)) (t!49315 List!34614)) )
))
(declare-fun arrayNoDuplicates!0 (array!99317 (_ BitVec 32) List!34614) Bool)

(assert (=> b!1479767 (= res!1005742 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34611))))

(declare-fun b!1479768 () Bool)

(assert (=> b!1479768 (= e!830035 e!830039)))

(declare-fun res!1005732 () Bool)

(assert (=> b!1479768 (=> (not res!1005732) (not e!830039))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1479768 (= res!1005732 (= lt!646126 (Intermediate!12196 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1479768 (= lt!646126 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646128 mask!2687) lt!646128 lt!646124 mask!2687))))

(assert (=> b!1479768 (= lt!646128 (select (store (arr!47933 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479769 () Bool)

(assert (=> b!1479769 (= e!830038 e!830036)))

(declare-fun res!1005743 () Bool)

(assert (=> b!1479769 (=> (not res!1005743) (not e!830036))))

(assert (=> b!1479769 (= res!1005743 (= (select (store (arr!47933 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479769 (= lt!646124 (array!99318 (store (arr!47933 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48484 a!2862)))))

(declare-fun res!1005738 () Bool)

(assert (=> start!126294 (=> (not res!1005738) (not e!830038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126294 (= res!1005738 (validMask!0 mask!2687))))

(assert (=> start!126294 e!830038))

(assert (=> start!126294 true))

(declare-fun array_inv!36878 (array!99317) Bool)

(assert (=> start!126294 (array_inv!36878 a!2862)))

(declare-fun b!1479763 () Bool)

(declare-fun e!830033 () Bool)

(assert (=> b!1479763 (= e!830033 e!830032)))

(declare-fun res!1005734 () Bool)

(assert (=> b!1479763 (=> (not res!1005734) (not e!830032))))

(assert (=> b!1479763 (= res!1005734 (= lt!646122 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47933 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1479770 () Bool)

(declare-fun res!1005731 () Bool)

(assert (=> b!1479770 (=> (not res!1005731) (not e!830039))))

(assert (=> b!1479770 (= res!1005731 e!830031)))

(declare-fun c!136535 () Bool)

(assert (=> b!1479770 (= c!136535 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479771 () Bool)

(assert (=> b!1479771 (= e!830037 e!830033)))

(declare-fun res!1005728 () Bool)

(assert (=> b!1479771 (=> res!1005728 e!830033)))

(assert (=> b!1479771 (= res!1005728 (or (and (= (select (arr!47933 a!2862) index!646) (select (store (arr!47933 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47933 a!2862) index!646) (select (arr!47933 a!2862) j!93))) (not (= (select (arr!47933 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1479772 () Bool)

(declare-fun res!1005744 () Bool)

(assert (=> b!1479772 (=> (not res!1005744) (not e!830038))))

(assert (=> b!1479772 (= res!1005744 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48484 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48484 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48484 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!126294 res!1005738) b!1479764))

(assert (= (and b!1479764 res!1005741) b!1479759))

(assert (= (and b!1479759 res!1005730) b!1479760))

(assert (= (and b!1479760 res!1005740) b!1479757))

(assert (= (and b!1479757 res!1005727) b!1479767))

(assert (= (and b!1479767 res!1005742) b!1479772))

(assert (= (and b!1479772 res!1005744) b!1479769))

(assert (= (and b!1479769 res!1005743) b!1479753))

(assert (= (and b!1479753 res!1005735) b!1479761))

(assert (= (and b!1479761 res!1005736) b!1479768))

(assert (= (and b!1479768 res!1005732) b!1479770))

(assert (= (and b!1479770 c!136535) b!1479758))

(assert (= (and b!1479770 (not c!136535)) b!1479766))

(assert (= (and b!1479770 res!1005731) b!1479762))

(assert (= (and b!1479762 res!1005729) b!1479756))

(assert (= (and b!1479756 res!1005739) b!1479771))

(assert (= (and b!1479771 (not res!1005728)) b!1479763))

(assert (= (and b!1479763 res!1005734) b!1479765))

(assert (= (and b!1479756 (not res!1005737)) b!1479755))

(assert (= (and b!1479755 (not res!1005733)) b!1479754))

(declare-fun m!1365653 () Bool)

(assert (=> b!1479763 m!1365653))

(assert (=> b!1479763 m!1365653))

(declare-fun m!1365655 () Bool)

(assert (=> b!1479763 m!1365655))

(declare-fun m!1365657 () Bool)

(assert (=> b!1479756 m!1365657))

(declare-fun m!1365659 () Bool)

(assert (=> b!1479756 m!1365659))

(declare-fun m!1365661 () Bool)

(assert (=> b!1479756 m!1365661))

(declare-fun m!1365663 () Bool)

(assert (=> b!1479756 m!1365663))

(declare-fun m!1365665 () Bool)

(assert (=> b!1479756 m!1365665))

(assert (=> b!1479756 m!1365653))

(declare-fun m!1365667 () Bool)

(assert (=> b!1479756 m!1365667))

(declare-fun m!1365669 () Bool)

(assert (=> b!1479756 m!1365669))

(assert (=> b!1479756 m!1365653))

(declare-fun m!1365671 () Bool)

(assert (=> b!1479759 m!1365671))

(assert (=> b!1479759 m!1365671))

(declare-fun m!1365673 () Bool)

(assert (=> b!1479759 m!1365673))

(assert (=> b!1479769 m!1365659))

(declare-fun m!1365675 () Bool)

(assert (=> b!1479769 m!1365675))

(declare-fun m!1365677 () Bool)

(assert (=> b!1479754 m!1365677))

(declare-fun m!1365679 () Bool)

(assert (=> b!1479754 m!1365679))

(declare-fun m!1365681 () Bool)

(assert (=> b!1479767 m!1365681))

(declare-fun m!1365683 () Bool)

(assert (=> b!1479768 m!1365683))

(assert (=> b!1479768 m!1365683))

(declare-fun m!1365685 () Bool)

(assert (=> b!1479768 m!1365685))

(assert (=> b!1479768 m!1365659))

(declare-fun m!1365687 () Bool)

(assert (=> b!1479768 m!1365687))

(declare-fun m!1365689 () Bool)

(assert (=> b!1479757 m!1365689))

(assert (=> b!1479760 m!1365653))

(assert (=> b!1479760 m!1365653))

(declare-fun m!1365691 () Bool)

(assert (=> b!1479760 m!1365691))

(declare-fun m!1365693 () Bool)

(assert (=> start!126294 m!1365693))

(declare-fun m!1365695 () Bool)

(assert (=> start!126294 m!1365695))

(assert (=> b!1479761 m!1365653))

(assert (=> b!1479761 m!1365653))

(declare-fun m!1365697 () Bool)

(assert (=> b!1479761 m!1365697))

(assert (=> b!1479753 m!1365653))

(assert (=> b!1479753 m!1365653))

(declare-fun m!1365699 () Bool)

(assert (=> b!1479753 m!1365699))

(assert (=> b!1479753 m!1365699))

(assert (=> b!1479753 m!1365653))

(declare-fun m!1365701 () Bool)

(assert (=> b!1479753 m!1365701))

(declare-fun m!1365703 () Bool)

(assert (=> b!1479758 m!1365703))

(assert (=> b!1479771 m!1365665))

(assert (=> b!1479771 m!1365659))

(assert (=> b!1479771 m!1365663))

(assert (=> b!1479771 m!1365653))

(assert (=> b!1479766 m!1365677))

(declare-fun m!1365705 () Bool)

(assert (=> b!1479766 m!1365705))

(assert (=> b!1479755 m!1365653))

(assert (=> b!1479755 m!1365653))

(declare-fun m!1365707 () Bool)

(assert (=> b!1479755 m!1365707))

(check-sat (not b!1479761) (not b!1479760) (not b!1479759) (not b!1479763) (not b!1479766) (not b!1479755) (not b!1479754) (not b!1479758) (not b!1479767) (not b!1479756) (not b!1479768) (not b!1479753) (not start!126294) (not b!1479757))
(check-sat)
