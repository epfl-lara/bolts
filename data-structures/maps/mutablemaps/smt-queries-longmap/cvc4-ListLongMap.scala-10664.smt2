; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125168 () Bool)

(assert start!125168)

(declare-fun b!1457716 () Bool)

(declare-fun res!988072 () Bool)

(declare-fun e!820042 () Bool)

(assert (=> b!1457716 (=> (not res!988072) (not e!820042))))

(declare-datatypes ((array!98533 0))(
  ( (array!98534 (arr!47550 (Array (_ BitVec 32) (_ BitVec 64))) (size!48101 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98533)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11825 0))(
  ( (MissingZero!11825 (index!49691 (_ BitVec 32))) (Found!11825 (index!49692 (_ BitVec 32))) (Intermediate!11825 (undefined!12637 Bool) (index!49693 (_ BitVec 32)) (x!131309 (_ BitVec 32))) (Undefined!11825) (MissingVacant!11825 (index!49694 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98533 (_ BitVec 32)) SeekEntryResult!11825)

(assert (=> b!1457716 (= res!988072 (= (seekEntryOrOpen!0 (select (arr!47550 a!2862) j!93) a!2862 mask!2687) (Found!11825 j!93)))))

(declare-fun b!1457717 () Bool)

(declare-fun e!820043 () Bool)

(declare-fun e!820041 () Bool)

(assert (=> b!1457717 (= e!820043 e!820041)))

(declare-fun res!988063 () Bool)

(assert (=> b!1457717 (=> (not res!988063) (not e!820041))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1457717 (= res!988063 (= (select (store (arr!47550 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!638748 () array!98533)

(assert (=> b!1457717 (= lt!638748 (array!98534 (store (arr!47550 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48101 a!2862)))))

(declare-fun b!1457718 () Bool)

(declare-fun res!988073 () Bool)

(assert (=> b!1457718 (=> (not res!988073) (not e!820043))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457718 (= res!988073 (validKeyInArray!0 (select (arr!47550 a!2862) j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!820036 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1457719 () Bool)

(declare-fun lt!638749 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98533 (_ BitVec 32)) SeekEntryResult!11825)

(assert (=> b!1457719 (= e!820036 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638749 lt!638748 mask!2687) (seekEntryOrOpen!0 lt!638749 lt!638748 mask!2687)))))

(declare-fun lt!638755 () (_ BitVec 32))

(declare-fun e!820039 () Bool)

(declare-fun lt!638751 () SeekEntryResult!11825)

(declare-fun b!1457720 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98533 (_ BitVec 32)) SeekEntryResult!11825)

(assert (=> b!1457720 (= e!820039 (not (= lt!638751 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638755 lt!638749 lt!638748 mask!2687))))))

(declare-fun b!1457721 () Bool)

(declare-fun e!820038 () Bool)

(assert (=> b!1457721 (= e!820041 e!820038)))

(declare-fun res!988061 () Bool)

(assert (=> b!1457721 (=> (not res!988061) (not e!820038))))

(declare-fun lt!638752 () SeekEntryResult!11825)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457721 (= res!988061 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47550 a!2862) j!93) mask!2687) (select (arr!47550 a!2862) j!93) a!2862 mask!2687) lt!638752))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1457721 (= lt!638752 (Intermediate!11825 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1457722 () Bool)

(declare-fun e!820034 () Bool)

(assert (=> b!1457722 (= e!820034 true)))

(declare-fun lt!638753 () Bool)

(assert (=> b!1457722 (= lt!638753 e!820039)))

(declare-fun c!134342 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1457722 (= c!134342 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457723 () Bool)

(declare-fun e!820040 () Bool)

(declare-fun e!820037 () Bool)

(assert (=> b!1457723 (= e!820040 (not e!820037))))

(declare-fun res!988075 () Bool)

(assert (=> b!1457723 (=> res!988075 e!820037)))

(assert (=> b!1457723 (= res!988075 (or (and (= (select (arr!47550 a!2862) index!646) (select (store (arr!47550 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47550 a!2862) index!646) (select (arr!47550 a!2862) j!93))) (= (select (arr!47550 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1457723 e!820042))

(declare-fun res!988070 () Bool)

(assert (=> b!1457723 (=> (not res!988070) (not e!820042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98533 (_ BitVec 32)) Bool)

(assert (=> b!1457723 (= res!988070 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49094 0))(
  ( (Unit!49095) )
))
(declare-fun lt!638754 () Unit!49094)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98533 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49094)

(assert (=> b!1457723 (= lt!638754 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!638750 () SeekEntryResult!11825)

(declare-fun b!1457724 () Bool)

(assert (=> b!1457724 (= e!820039 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638755 intermediateAfterIndex!19 lt!638749 lt!638748 mask!2687) lt!638750)))))

(declare-fun b!1457725 () Bool)

(assert (=> b!1457725 (= e!820042 (and (or (= (select (arr!47550 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47550 a!2862) intermediateBeforeIndex!19) (select (arr!47550 a!2862) j!93))) (let ((bdg!53365 (select (store (arr!47550 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47550 a!2862) index!646) bdg!53365) (= (select (arr!47550 a!2862) index!646) (select (arr!47550 a!2862) j!93))) (= (select (arr!47550 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53365 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1457726 () Bool)

(declare-fun res!988066 () Bool)

(assert (=> b!1457726 (=> (not res!988066) (not e!820040))))

(assert (=> b!1457726 (= res!988066 e!820036)))

(declare-fun c!134341 () Bool)

(assert (=> b!1457726 (= c!134341 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1457728 () Bool)

(assert (=> b!1457728 (= e!820037 e!820034)))

(declare-fun res!988064 () Bool)

(assert (=> b!1457728 (=> res!988064 e!820034)))

(assert (=> b!1457728 (= res!988064 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638755 #b00000000000000000000000000000000) (bvsge lt!638755 (size!48101 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457728 (= lt!638755 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1457728 (= lt!638750 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638749 lt!638748 mask!2687))))

(assert (=> b!1457728 (= lt!638750 (seekEntryOrOpen!0 lt!638749 lt!638748 mask!2687))))

(declare-fun b!1457729 () Bool)

(declare-fun res!988065 () Bool)

(assert (=> b!1457729 (=> (not res!988065) (not e!820040))))

(assert (=> b!1457729 (= res!988065 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1457730 () Bool)

(declare-fun res!988060 () Bool)

(assert (=> b!1457730 (=> (not res!988060) (not e!820043))))

(declare-datatypes ((List!34231 0))(
  ( (Nil!34228) (Cons!34227 (h!35577 (_ BitVec 64)) (t!48932 List!34231)) )
))
(declare-fun arrayNoDuplicates!0 (array!98533 (_ BitVec 32) List!34231) Bool)

(assert (=> b!1457730 (= res!988060 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34228))))

(declare-fun b!1457731 () Bool)

(assert (=> b!1457731 (= e!820038 e!820040)))

(declare-fun res!988076 () Bool)

(assert (=> b!1457731 (=> (not res!988076) (not e!820040))))

(assert (=> b!1457731 (= res!988076 (= lt!638751 (Intermediate!11825 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1457731 (= lt!638751 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638749 mask!2687) lt!638749 lt!638748 mask!2687))))

(assert (=> b!1457731 (= lt!638749 (select (store (arr!47550 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457732 () Bool)

(declare-fun res!988071 () Bool)

(assert (=> b!1457732 (=> (not res!988071) (not e!820043))))

(assert (=> b!1457732 (= res!988071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1457733 () Bool)

(declare-fun res!988077 () Bool)

(assert (=> b!1457733 (=> res!988077 e!820034)))

(assert (=> b!1457733 (= res!988077 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638755 (select (arr!47550 a!2862) j!93) a!2862 mask!2687) lt!638752)))))

(declare-fun b!1457734 () Bool)

(declare-fun res!988068 () Bool)

(assert (=> b!1457734 (=> (not res!988068) (not e!820043))))

(assert (=> b!1457734 (= res!988068 (and (= (size!48101 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48101 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48101 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1457735 () Bool)

(assert (=> b!1457735 (= e!820036 (= lt!638751 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638749 lt!638748 mask!2687)))))

(declare-fun b!1457727 () Bool)

(declare-fun res!988067 () Bool)

(assert (=> b!1457727 (=> (not res!988067) (not e!820043))))

(assert (=> b!1457727 (= res!988067 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48101 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48101 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48101 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!988069 () Bool)

(assert (=> start!125168 (=> (not res!988069) (not e!820043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125168 (= res!988069 (validMask!0 mask!2687))))

(assert (=> start!125168 e!820043))

(assert (=> start!125168 true))

(declare-fun array_inv!36495 (array!98533) Bool)

(assert (=> start!125168 (array_inv!36495 a!2862)))

(declare-fun b!1457736 () Bool)

(declare-fun res!988062 () Bool)

(assert (=> b!1457736 (=> (not res!988062) (not e!820038))))

(assert (=> b!1457736 (= res!988062 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47550 a!2862) j!93) a!2862 mask!2687) lt!638752))))

(declare-fun b!1457737 () Bool)

(declare-fun res!988074 () Bool)

(assert (=> b!1457737 (=> (not res!988074) (not e!820043))))

(assert (=> b!1457737 (= res!988074 (validKeyInArray!0 (select (arr!47550 a!2862) i!1006)))))

(assert (= (and start!125168 res!988069) b!1457734))

(assert (= (and b!1457734 res!988068) b!1457737))

(assert (= (and b!1457737 res!988074) b!1457718))

(assert (= (and b!1457718 res!988073) b!1457732))

(assert (= (and b!1457732 res!988071) b!1457730))

(assert (= (and b!1457730 res!988060) b!1457727))

(assert (= (and b!1457727 res!988067) b!1457717))

(assert (= (and b!1457717 res!988063) b!1457721))

(assert (= (and b!1457721 res!988061) b!1457736))

(assert (= (and b!1457736 res!988062) b!1457731))

(assert (= (and b!1457731 res!988076) b!1457726))

(assert (= (and b!1457726 c!134341) b!1457735))

(assert (= (and b!1457726 (not c!134341)) b!1457719))

(assert (= (and b!1457726 res!988066) b!1457729))

(assert (= (and b!1457729 res!988065) b!1457723))

(assert (= (and b!1457723 res!988070) b!1457716))

(assert (= (and b!1457716 res!988072) b!1457725))

(assert (= (and b!1457723 (not res!988075)) b!1457728))

(assert (= (and b!1457728 (not res!988064)) b!1457733))

(assert (= (and b!1457733 (not res!988077)) b!1457722))

(assert (= (and b!1457722 c!134342) b!1457720))

(assert (= (and b!1457722 (not c!134342)) b!1457724))

(declare-fun m!1345709 () Bool)

(assert (=> b!1457731 m!1345709))

(assert (=> b!1457731 m!1345709))

(declare-fun m!1345711 () Bool)

(assert (=> b!1457731 m!1345711))

(declare-fun m!1345713 () Bool)

(assert (=> b!1457731 m!1345713))

(declare-fun m!1345715 () Bool)

(assert (=> b!1457731 m!1345715))

(assert (=> b!1457725 m!1345713))

(declare-fun m!1345717 () Bool)

(assert (=> b!1457725 m!1345717))

(declare-fun m!1345719 () Bool)

(assert (=> b!1457725 m!1345719))

(declare-fun m!1345721 () Bool)

(assert (=> b!1457725 m!1345721))

(declare-fun m!1345723 () Bool)

(assert (=> b!1457725 m!1345723))

(declare-fun m!1345725 () Bool)

(assert (=> start!125168 m!1345725))

(declare-fun m!1345727 () Bool)

(assert (=> start!125168 m!1345727))

(declare-fun m!1345729 () Bool)

(assert (=> b!1457732 m!1345729))

(assert (=> b!1457717 m!1345713))

(declare-fun m!1345731 () Bool)

(assert (=> b!1457717 m!1345731))

(declare-fun m!1345733 () Bool)

(assert (=> b!1457723 m!1345733))

(assert (=> b!1457723 m!1345713))

(assert (=> b!1457723 m!1345719))

(assert (=> b!1457723 m!1345721))

(declare-fun m!1345735 () Bool)

(assert (=> b!1457723 m!1345735))

(assert (=> b!1457723 m!1345723))

(declare-fun m!1345737 () Bool)

(assert (=> b!1457735 m!1345737))

(declare-fun m!1345739 () Bool)

(assert (=> b!1457737 m!1345739))

(assert (=> b!1457737 m!1345739))

(declare-fun m!1345741 () Bool)

(assert (=> b!1457737 m!1345741))

(declare-fun m!1345743 () Bool)

(assert (=> b!1457720 m!1345743))

(assert (=> b!1457736 m!1345723))

(assert (=> b!1457736 m!1345723))

(declare-fun m!1345745 () Bool)

(assert (=> b!1457736 m!1345745))

(declare-fun m!1345747 () Bool)

(assert (=> b!1457730 m!1345747))

(declare-fun m!1345749 () Bool)

(assert (=> b!1457719 m!1345749))

(declare-fun m!1345751 () Bool)

(assert (=> b!1457719 m!1345751))

(assert (=> b!1457721 m!1345723))

(assert (=> b!1457721 m!1345723))

(declare-fun m!1345753 () Bool)

(assert (=> b!1457721 m!1345753))

(assert (=> b!1457721 m!1345753))

(assert (=> b!1457721 m!1345723))

(declare-fun m!1345755 () Bool)

(assert (=> b!1457721 m!1345755))

(assert (=> b!1457716 m!1345723))

(assert (=> b!1457716 m!1345723))

(declare-fun m!1345757 () Bool)

(assert (=> b!1457716 m!1345757))

(declare-fun m!1345759 () Bool)

(assert (=> b!1457724 m!1345759))

(assert (=> b!1457718 m!1345723))

(assert (=> b!1457718 m!1345723))

(declare-fun m!1345761 () Bool)

(assert (=> b!1457718 m!1345761))

(assert (=> b!1457733 m!1345723))

(assert (=> b!1457733 m!1345723))

(declare-fun m!1345763 () Bool)

(assert (=> b!1457733 m!1345763))

(declare-fun m!1345765 () Bool)

(assert (=> b!1457728 m!1345765))

(assert (=> b!1457728 m!1345749))

(assert (=> b!1457728 m!1345751))

(push 1)

