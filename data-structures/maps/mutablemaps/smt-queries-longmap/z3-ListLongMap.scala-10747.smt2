; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125724 () Bool)

(assert start!125724)

(declare-fun b!1470646 () Bool)

(declare-fun res!998861 () Bool)

(declare-fun e!825551 () Bool)

(assert (=> b!1470646 (=> (not res!998861) (not e!825551))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99032 0))(
  ( (array!99033 (arr!47798 (Array (_ BitVec 32) (_ BitVec 64))) (size!48349 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99032)

(assert (=> b!1470646 (= res!998861 (and (= (size!48349 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48349 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48349 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1470647 () Bool)

(declare-fun res!998855 () Bool)

(declare-fun e!825555 () Bool)

(assert (=> b!1470647 (=> (not res!998855) (not e!825555))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12061 0))(
  ( (MissingZero!12061 (index!50635 (_ BitVec 32))) (Found!12061 (index!50636 (_ BitVec 32))) (Intermediate!12061 (undefined!12873 Bool) (index!50637 (_ BitVec 32)) (x!132218 (_ BitVec 32))) (Undefined!12061) (MissingVacant!12061 (index!50638 (_ BitVec 32))) )
))
(declare-fun lt!642955 () SeekEntryResult!12061)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99032 (_ BitVec 32)) SeekEntryResult!12061)

(assert (=> b!1470647 (= res!998855 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47798 a!2862) j!93) a!2862 mask!2687) lt!642955))))

(declare-fun b!1470648 () Bool)

(declare-fun res!998852 () Bool)

(assert (=> b!1470648 (=> (not res!998852) (not e!825551))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1470648 (= res!998852 (validKeyInArray!0 (select (arr!47798 a!2862) j!93)))))

(declare-fun b!1470649 () Bool)

(declare-fun e!825552 () Bool)

(assert (=> b!1470649 (= e!825552 e!825555)))

(declare-fun res!998850 () Bool)

(assert (=> b!1470649 (=> (not res!998850) (not e!825555))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470649 (= res!998850 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47798 a!2862) j!93) mask!2687) (select (arr!47798 a!2862) j!93) a!2862 mask!2687) lt!642955))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1470649 (= lt!642955 (Intermediate!12061 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1470650 () Bool)

(declare-fun e!825554 () Bool)

(assert (=> b!1470650 (= e!825554 (not true))))

(declare-fun e!825556 () Bool)

(assert (=> b!1470650 e!825556))

(declare-fun res!998859 () Bool)

(assert (=> b!1470650 (=> (not res!998859) (not e!825556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99032 (_ BitVec 32)) Bool)

(assert (=> b!1470650 (= res!998859 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49410 0))(
  ( (Unit!49411) )
))
(declare-fun lt!642956 () Unit!49410)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99032 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49410)

(assert (=> b!1470650 (= lt!642956 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1470651 () Bool)

(declare-fun res!998857 () Bool)

(assert (=> b!1470651 (=> (not res!998857) (not e!825551))))

(assert (=> b!1470651 (= res!998857 (validKeyInArray!0 (select (arr!47798 a!2862) i!1006)))))

(declare-fun lt!642954 () (_ BitVec 64))

(declare-fun b!1470652 () Bool)

(declare-fun lt!642957 () SeekEntryResult!12061)

(declare-fun lt!642958 () array!99032)

(declare-fun e!825553 () Bool)

(assert (=> b!1470652 (= e!825553 (= lt!642957 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642954 lt!642958 mask!2687)))))

(declare-fun b!1470653 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99032 (_ BitVec 32)) SeekEntryResult!12061)

(assert (=> b!1470653 (= e!825556 (= (seekEntryOrOpen!0 (select (arr!47798 a!2862) j!93) a!2862 mask!2687) (Found!12061 j!93)))))

(declare-fun res!998858 () Bool)

(assert (=> start!125724 (=> (not res!998858) (not e!825551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125724 (= res!998858 (validMask!0 mask!2687))))

(assert (=> start!125724 e!825551))

(assert (=> start!125724 true))

(declare-fun array_inv!36743 (array!99032) Bool)

(assert (=> start!125724 (array_inv!36743 a!2862)))

(declare-fun b!1470654 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99032 (_ BitVec 32)) SeekEntryResult!12061)

(assert (=> b!1470654 (= e!825553 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642954 lt!642958 mask!2687) (seekEntryOrOpen!0 lt!642954 lt!642958 mask!2687)))))

(declare-fun b!1470655 () Bool)

(declare-fun res!998860 () Bool)

(assert (=> b!1470655 (=> (not res!998860) (not e!825551))))

(assert (=> b!1470655 (= res!998860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1470656 () Bool)

(declare-fun res!998862 () Bool)

(assert (=> b!1470656 (=> (not res!998862) (not e!825551))))

(declare-datatypes ((List!34479 0))(
  ( (Nil!34476) (Cons!34475 (h!35828 (_ BitVec 64)) (t!49180 List!34479)) )
))
(declare-fun arrayNoDuplicates!0 (array!99032 (_ BitVec 32) List!34479) Bool)

(assert (=> b!1470656 (= res!998862 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34476))))

(declare-fun b!1470657 () Bool)

(declare-fun res!998849 () Bool)

(assert (=> b!1470657 (=> (not res!998849) (not e!825554))))

(assert (=> b!1470657 (= res!998849 e!825553)))

(declare-fun c!135413 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1470657 (= c!135413 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1470658 () Bool)

(declare-fun res!998854 () Bool)

(assert (=> b!1470658 (=> (not res!998854) (not e!825554))))

(assert (=> b!1470658 (= res!998854 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1470659 () Bool)

(declare-fun res!998856 () Bool)

(assert (=> b!1470659 (=> (not res!998856) (not e!825551))))

(assert (=> b!1470659 (= res!998856 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48349 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48349 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48349 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1470660 () Bool)

(assert (=> b!1470660 (= e!825555 e!825554)))

(declare-fun res!998853 () Bool)

(assert (=> b!1470660 (=> (not res!998853) (not e!825554))))

(assert (=> b!1470660 (= res!998853 (= lt!642957 (Intermediate!12061 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1470660 (= lt!642957 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642954 mask!2687) lt!642954 lt!642958 mask!2687))))

(assert (=> b!1470660 (= lt!642954 (select (store (arr!47798 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1470661 () Bool)

(assert (=> b!1470661 (= e!825551 e!825552)))

(declare-fun res!998851 () Bool)

(assert (=> b!1470661 (=> (not res!998851) (not e!825552))))

(assert (=> b!1470661 (= res!998851 (= (select (store (arr!47798 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470661 (= lt!642958 (array!99033 (store (arr!47798 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48349 a!2862)))))

(assert (= (and start!125724 res!998858) b!1470646))

(assert (= (and b!1470646 res!998861) b!1470651))

(assert (= (and b!1470651 res!998857) b!1470648))

(assert (= (and b!1470648 res!998852) b!1470655))

(assert (= (and b!1470655 res!998860) b!1470656))

(assert (= (and b!1470656 res!998862) b!1470659))

(assert (= (and b!1470659 res!998856) b!1470661))

(assert (= (and b!1470661 res!998851) b!1470649))

(assert (= (and b!1470649 res!998850) b!1470647))

(assert (= (and b!1470647 res!998855) b!1470660))

(assert (= (and b!1470660 res!998853) b!1470657))

(assert (= (and b!1470657 c!135413) b!1470652))

(assert (= (and b!1470657 (not c!135413)) b!1470654))

(assert (= (and b!1470657 res!998849) b!1470658))

(assert (= (and b!1470658 res!998854) b!1470650))

(assert (= (and b!1470650 res!998859) b!1470653))

(declare-fun m!1357679 () Bool)

(assert (=> b!1470656 m!1357679))

(declare-fun m!1357681 () Bool)

(assert (=> b!1470647 m!1357681))

(assert (=> b!1470647 m!1357681))

(declare-fun m!1357683 () Bool)

(assert (=> b!1470647 m!1357683))

(declare-fun m!1357685 () Bool)

(assert (=> b!1470651 m!1357685))

(assert (=> b!1470651 m!1357685))

(declare-fun m!1357687 () Bool)

(assert (=> b!1470651 m!1357687))

(declare-fun m!1357689 () Bool)

(assert (=> b!1470655 m!1357689))

(declare-fun m!1357691 () Bool)

(assert (=> b!1470660 m!1357691))

(assert (=> b!1470660 m!1357691))

(declare-fun m!1357693 () Bool)

(assert (=> b!1470660 m!1357693))

(declare-fun m!1357695 () Bool)

(assert (=> b!1470660 m!1357695))

(declare-fun m!1357697 () Bool)

(assert (=> b!1470660 m!1357697))

(assert (=> b!1470649 m!1357681))

(assert (=> b!1470649 m!1357681))

(declare-fun m!1357699 () Bool)

(assert (=> b!1470649 m!1357699))

(assert (=> b!1470649 m!1357699))

(assert (=> b!1470649 m!1357681))

(declare-fun m!1357701 () Bool)

(assert (=> b!1470649 m!1357701))

(declare-fun m!1357703 () Bool)

(assert (=> b!1470654 m!1357703))

(declare-fun m!1357705 () Bool)

(assert (=> b!1470654 m!1357705))

(declare-fun m!1357707 () Bool)

(assert (=> b!1470650 m!1357707))

(declare-fun m!1357709 () Bool)

(assert (=> b!1470650 m!1357709))

(declare-fun m!1357711 () Bool)

(assert (=> b!1470652 m!1357711))

(assert (=> b!1470648 m!1357681))

(assert (=> b!1470648 m!1357681))

(declare-fun m!1357713 () Bool)

(assert (=> b!1470648 m!1357713))

(assert (=> b!1470661 m!1357695))

(declare-fun m!1357715 () Bool)

(assert (=> b!1470661 m!1357715))

(assert (=> b!1470653 m!1357681))

(assert (=> b!1470653 m!1357681))

(declare-fun m!1357717 () Bool)

(assert (=> b!1470653 m!1357717))

(declare-fun m!1357719 () Bool)

(assert (=> start!125724 m!1357719))

(declare-fun m!1357721 () Bool)

(assert (=> start!125724 m!1357721))

(check-sat (not b!1470653) (not b!1470650) (not b!1470656) (not b!1470654) (not b!1470649) (not b!1470647) (not b!1470651) (not start!125724) (not b!1470648) (not b!1470652) (not b!1470660) (not b!1470655))
(check-sat)
