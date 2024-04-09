; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124718 () Bool)

(assert start!124718)

(declare-fun b!1444608 () Bool)

(declare-fun res!976678 () Bool)

(declare-fun e!813923 () Bool)

(assert (=> b!1444608 (=> (not res!976678) (not e!813923))))

(declare-datatypes ((array!98083 0))(
  ( (array!98084 (arr!47325 (Array (_ BitVec 32) (_ BitVec 64))) (size!47876 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98083)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98083 (_ BitVec 32)) Bool)

(assert (=> b!1444608 (= res!976678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!634216 () (_ BitVec 64))

(declare-fun b!1444609 () Bool)

(declare-fun e!813917 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!634215 () array!98083)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11600 0))(
  ( (MissingZero!11600 (index!48791 (_ BitVec 32))) (Found!11600 (index!48792 (_ BitVec 32))) (Intermediate!11600 (undefined!12412 Bool) (index!48793 (_ BitVec 32)) (x!130484 (_ BitVec 32))) (Undefined!11600) (MissingVacant!11600 (index!48794 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98083 (_ BitVec 32)) SeekEntryResult!11600)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98083 (_ BitVec 32)) SeekEntryResult!11600)

(assert (=> b!1444609 (= e!813917 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634216 lt!634215 mask!2687) (seekEntryOrOpen!0 lt!634216 lt!634215 mask!2687)))))

(declare-fun b!1444610 () Bool)

(declare-fun res!976686 () Bool)

(assert (=> b!1444610 (=> (not res!976686) (not e!813923))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1444610 (= res!976686 (and (= (size!47876 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47876 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47876 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444611 () Bool)

(declare-fun e!813918 () Bool)

(assert (=> b!1444611 (= e!813918 (not true))))

(declare-fun e!813919 () Bool)

(assert (=> b!1444611 e!813919))

(declare-fun res!976688 () Bool)

(assert (=> b!1444611 (=> (not res!976688) (not e!813919))))

(assert (=> b!1444611 (= res!976688 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48644 0))(
  ( (Unit!48645) )
))
(declare-fun lt!634217 () Unit!48644)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98083 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48644)

(assert (=> b!1444611 (= lt!634217 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444612 () Bool)

(declare-fun e!813922 () Bool)

(declare-fun e!813920 () Bool)

(assert (=> b!1444612 (= e!813922 e!813920)))

(declare-fun res!976682 () Bool)

(assert (=> b!1444612 (=> (not res!976682) (not e!813920))))

(declare-fun lt!634219 () SeekEntryResult!11600)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98083 (_ BitVec 32)) SeekEntryResult!11600)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444612 (= res!976682 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47325 a!2862) j!93) mask!2687) (select (arr!47325 a!2862) j!93) a!2862 mask!2687) lt!634219))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1444612 (= lt!634219 (Intermediate!11600 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444613 () Bool)

(declare-fun res!976680 () Bool)

(assert (=> b!1444613 (=> (not res!976680) (not e!813923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444613 (= res!976680 (validKeyInArray!0 (select (arr!47325 a!2862) i!1006)))))

(declare-fun b!1444614 () Bool)

(declare-fun res!976687 () Bool)

(assert (=> b!1444614 (=> (not res!976687) (not e!813920))))

(assert (=> b!1444614 (= res!976687 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47325 a!2862) j!93) a!2862 mask!2687) lt!634219))))

(declare-fun b!1444615 () Bool)

(declare-fun res!976690 () Bool)

(assert (=> b!1444615 (=> (not res!976690) (not e!813919))))

(assert (=> b!1444615 (= res!976690 (= (seekEntryOrOpen!0 (select (arr!47325 a!2862) j!93) a!2862 mask!2687) (Found!11600 j!93)))))

(declare-fun b!1444616 () Bool)

(declare-fun res!976679 () Bool)

(assert (=> b!1444616 (=> (not res!976679) (not e!813923))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1444616 (= res!976679 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47876 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47876 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47876 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444618 () Bool)

(declare-fun res!976691 () Bool)

(assert (=> b!1444618 (=> (not res!976691) (not e!813923))))

(declare-datatypes ((List!34006 0))(
  ( (Nil!34003) (Cons!34002 (h!35352 (_ BitVec 64)) (t!48707 List!34006)) )
))
(declare-fun arrayNoDuplicates!0 (array!98083 (_ BitVec 32) List!34006) Bool)

(assert (=> b!1444618 (= res!976691 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34003))))

(declare-fun b!1444619 () Bool)

(assert (=> b!1444619 (= e!813920 e!813918)))

(declare-fun res!976685 () Bool)

(assert (=> b!1444619 (=> (not res!976685) (not e!813918))))

(declare-fun lt!634218 () SeekEntryResult!11600)

(assert (=> b!1444619 (= res!976685 (= lt!634218 (Intermediate!11600 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1444619 (= lt!634218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634216 mask!2687) lt!634216 lt!634215 mask!2687))))

(assert (=> b!1444619 (= lt!634216 (select (store (arr!47325 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444620 () Bool)

(assert (=> b!1444620 (= e!813917 (= lt!634218 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634216 lt!634215 mask!2687)))))

(declare-fun b!1444621 () Bool)

(declare-fun res!976692 () Bool)

(assert (=> b!1444621 (=> (not res!976692) (not e!813923))))

(assert (=> b!1444621 (= res!976692 (validKeyInArray!0 (select (arr!47325 a!2862) j!93)))))

(declare-fun b!1444622 () Bool)

(declare-fun res!976683 () Bool)

(assert (=> b!1444622 (=> (not res!976683) (not e!813918))))

(assert (=> b!1444622 (= res!976683 e!813917)))

(declare-fun c!133478 () Bool)

(assert (=> b!1444622 (= c!133478 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1444617 () Bool)

(declare-fun res!976684 () Bool)

(assert (=> b!1444617 (=> (not res!976684) (not e!813918))))

(assert (=> b!1444617 (= res!976684 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!976689 () Bool)

(assert (=> start!124718 (=> (not res!976689) (not e!813923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124718 (= res!976689 (validMask!0 mask!2687))))

(assert (=> start!124718 e!813923))

(assert (=> start!124718 true))

(declare-fun array_inv!36270 (array!98083) Bool)

(assert (=> start!124718 (array_inv!36270 a!2862)))

(declare-fun b!1444623 () Bool)

(assert (=> b!1444623 (= e!813923 e!813922)))

(declare-fun res!976681 () Bool)

(assert (=> b!1444623 (=> (not res!976681) (not e!813922))))

(assert (=> b!1444623 (= res!976681 (= (select (store (arr!47325 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444623 (= lt!634215 (array!98084 (store (arr!47325 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47876 a!2862)))))

(declare-fun b!1444624 () Bool)

(assert (=> b!1444624 (= e!813919 (or (= (select (arr!47325 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47325 a!2862) intermediateBeforeIndex!19) (select (arr!47325 a!2862) j!93))))))

(assert (= (and start!124718 res!976689) b!1444610))

(assert (= (and b!1444610 res!976686) b!1444613))

(assert (= (and b!1444613 res!976680) b!1444621))

(assert (= (and b!1444621 res!976692) b!1444608))

(assert (= (and b!1444608 res!976678) b!1444618))

(assert (= (and b!1444618 res!976691) b!1444616))

(assert (= (and b!1444616 res!976679) b!1444623))

(assert (= (and b!1444623 res!976681) b!1444612))

(assert (= (and b!1444612 res!976682) b!1444614))

(assert (= (and b!1444614 res!976687) b!1444619))

(assert (= (and b!1444619 res!976685) b!1444622))

(assert (= (and b!1444622 c!133478) b!1444620))

(assert (= (and b!1444622 (not c!133478)) b!1444609))

(assert (= (and b!1444622 res!976683) b!1444617))

(assert (= (and b!1444617 res!976684) b!1444611))

(assert (= (and b!1444611 res!976688) b!1444615))

(assert (= (and b!1444615 res!976690) b!1444624))

(declare-fun m!1333673 () Bool)

(assert (=> b!1444619 m!1333673))

(assert (=> b!1444619 m!1333673))

(declare-fun m!1333675 () Bool)

(assert (=> b!1444619 m!1333675))

(declare-fun m!1333677 () Bool)

(assert (=> b!1444619 m!1333677))

(declare-fun m!1333679 () Bool)

(assert (=> b!1444619 m!1333679))

(assert (=> b!1444623 m!1333677))

(declare-fun m!1333681 () Bool)

(assert (=> b!1444623 m!1333681))

(declare-fun m!1333683 () Bool)

(assert (=> b!1444613 m!1333683))

(assert (=> b!1444613 m!1333683))

(declare-fun m!1333685 () Bool)

(assert (=> b!1444613 m!1333685))

(declare-fun m!1333687 () Bool)

(assert (=> b!1444621 m!1333687))

(assert (=> b!1444621 m!1333687))

(declare-fun m!1333689 () Bool)

(assert (=> b!1444621 m!1333689))

(assert (=> b!1444614 m!1333687))

(assert (=> b!1444614 m!1333687))

(declare-fun m!1333691 () Bool)

(assert (=> b!1444614 m!1333691))

(declare-fun m!1333693 () Bool)

(assert (=> start!124718 m!1333693))

(declare-fun m!1333695 () Bool)

(assert (=> start!124718 m!1333695))

(assert (=> b!1444615 m!1333687))

(assert (=> b!1444615 m!1333687))

(declare-fun m!1333697 () Bool)

(assert (=> b!1444615 m!1333697))

(declare-fun m!1333699 () Bool)

(assert (=> b!1444609 m!1333699))

(declare-fun m!1333701 () Bool)

(assert (=> b!1444609 m!1333701))

(assert (=> b!1444612 m!1333687))

(assert (=> b!1444612 m!1333687))

(declare-fun m!1333703 () Bool)

(assert (=> b!1444612 m!1333703))

(assert (=> b!1444612 m!1333703))

(assert (=> b!1444612 m!1333687))

(declare-fun m!1333705 () Bool)

(assert (=> b!1444612 m!1333705))

(declare-fun m!1333707 () Bool)

(assert (=> b!1444618 m!1333707))

(declare-fun m!1333709 () Bool)

(assert (=> b!1444608 m!1333709))

(declare-fun m!1333711 () Bool)

(assert (=> b!1444611 m!1333711))

(declare-fun m!1333713 () Bool)

(assert (=> b!1444611 m!1333713))

(declare-fun m!1333715 () Bool)

(assert (=> b!1444624 m!1333715))

(assert (=> b!1444624 m!1333687))

(declare-fun m!1333717 () Bool)

(assert (=> b!1444620 m!1333717))

(push 1)

