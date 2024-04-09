; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126960 () Bool)

(assert start!126960)

(declare-fun b!1491512 () Bool)

(declare-fun res!1014773 () Bool)

(declare-fun e!835678 () Bool)

(assert (=> b!1491512 (=> (not res!1014773) (not e!835678))))

(declare-datatypes ((array!99650 0))(
  ( (array!99651 (arr!48092 (Array (_ BitVec 32) (_ BitVec 64))) (size!48643 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99650)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491512 (= res!1014773 (validKeyInArray!0 (select (arr!48092 a!2862) j!93)))))

(declare-fun b!1491513 () Bool)

(declare-fun res!1014774 () Bool)

(declare-fun e!835683 () Bool)

(assert (=> b!1491513 (=> (not res!1014774) (not e!835683))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12355 0))(
  ( (MissingZero!12355 (index!51811 (_ BitVec 32))) (Found!12355 (index!51812 (_ BitVec 32))) (Intermediate!12355 (undefined!13167 Bool) (index!51813 (_ BitVec 32)) (x!133398 (_ BitVec 32))) (Undefined!12355) (MissingVacant!12355 (index!51814 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99650 (_ BitVec 32)) SeekEntryResult!12355)

(assert (=> b!1491513 (= res!1014774 (= (seekEntryOrOpen!0 (select (arr!48092 a!2862) j!93) a!2862 mask!2687) (Found!12355 j!93)))))

(declare-fun b!1491514 () Bool)

(declare-fun e!835682 () Bool)

(assert (=> b!1491514 (= e!835682 true)))

(declare-fun lt!650267 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491514 (= lt!650267 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1491515 () Bool)

(declare-fun res!1014782 () Bool)

(declare-fun e!835684 () Bool)

(assert (=> b!1491515 (=> (not res!1014782) (not e!835684))))

(declare-fun lt!650269 () SeekEntryResult!12355)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99650 (_ BitVec 32)) SeekEntryResult!12355)

(assert (=> b!1491515 (= res!1014782 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48092 a!2862) j!93) a!2862 mask!2687) lt!650269))))

(declare-fun b!1491516 () Bool)

(declare-fun e!835685 () Bool)

(assert (=> b!1491516 (= e!835678 e!835685)))

(declare-fun res!1014777 () Bool)

(assert (=> b!1491516 (=> (not res!1014777) (not e!835685))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1491516 (= res!1014777 (= (select (store (arr!48092 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!650268 () array!99650)

(assert (=> b!1491516 (= lt!650268 (array!99651 (store (arr!48092 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48643 a!2862)))))

(declare-fun lt!650270 () SeekEntryResult!12355)

(declare-fun lt!650271 () (_ BitVec 64))

(declare-fun e!835679 () Bool)

(declare-fun b!1491517 () Bool)

(assert (=> b!1491517 (= e!835679 (= lt!650270 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650271 lt!650268 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1491518 () Bool)

(assert (=> b!1491518 (= e!835683 (or (= (select (arr!48092 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48092 a!2862) intermediateBeforeIndex!19) (select (arr!48092 a!2862) j!93))))))

(declare-fun b!1491519 () Bool)

(declare-fun e!835681 () Bool)

(assert (=> b!1491519 (= e!835684 e!835681)))

(declare-fun res!1014785 () Bool)

(assert (=> b!1491519 (=> (not res!1014785) (not e!835681))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1491519 (= res!1014785 (= lt!650270 (Intermediate!12355 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491519 (= lt!650270 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650271 mask!2687) lt!650271 lt!650268 mask!2687))))

(assert (=> b!1491519 (= lt!650271 (select (store (arr!48092 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491520 () Bool)

(declare-fun res!1014779 () Bool)

(assert (=> b!1491520 (=> (not res!1014779) (not e!835681))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1491520 (= res!1014779 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491521 () Bool)

(declare-fun res!1014778 () Bool)

(assert (=> b!1491521 (=> (not res!1014778) (not e!835678))))

(assert (=> b!1491521 (= res!1014778 (and (= (size!48643 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48643 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48643 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491522 () Bool)

(assert (=> b!1491522 (= e!835685 e!835684)))

(declare-fun res!1014786 () Bool)

(assert (=> b!1491522 (=> (not res!1014786) (not e!835684))))

(assert (=> b!1491522 (= res!1014786 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48092 a!2862) j!93) mask!2687) (select (arr!48092 a!2862) j!93) a!2862 mask!2687) lt!650269))))

(assert (=> b!1491522 (= lt!650269 (Intermediate!12355 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1491523 () Bool)

(declare-fun res!1014780 () Bool)

(assert (=> b!1491523 (=> (not res!1014780) (not e!835681))))

(assert (=> b!1491523 (= res!1014780 e!835679)))

(declare-fun c!137900 () Bool)

(assert (=> b!1491523 (= c!137900 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491524 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99650 (_ BitVec 32)) SeekEntryResult!12355)

(assert (=> b!1491524 (= e!835679 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650271 lt!650268 mask!2687) (seekEntryOrOpen!0 lt!650271 lt!650268 mask!2687)))))

(declare-fun b!1491525 () Bool)

(declare-fun res!1014772 () Bool)

(assert (=> b!1491525 (=> (not res!1014772) (not e!835678))))

(assert (=> b!1491525 (= res!1014772 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48643 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48643 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48643 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1014776 () Bool)

(assert (=> start!126960 (=> (not res!1014776) (not e!835678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126960 (= res!1014776 (validMask!0 mask!2687))))

(assert (=> start!126960 e!835678))

(assert (=> start!126960 true))

(declare-fun array_inv!37037 (array!99650) Bool)

(assert (=> start!126960 (array_inv!37037 a!2862)))

(declare-fun b!1491526 () Bool)

(assert (=> b!1491526 (= e!835681 (not e!835682))))

(declare-fun res!1014775 () Bool)

(assert (=> b!1491526 (=> res!1014775 e!835682)))

(assert (=> b!1491526 (= res!1014775 (or (and (= (select (arr!48092 a!2862) index!646) (select (store (arr!48092 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48092 a!2862) index!646) (select (arr!48092 a!2862) j!93))) (= (select (arr!48092 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1491526 e!835683))

(declare-fun res!1014771 () Bool)

(assert (=> b!1491526 (=> (not res!1014771) (not e!835683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99650 (_ BitVec 32)) Bool)

(assert (=> b!1491526 (= res!1014771 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49998 0))(
  ( (Unit!49999) )
))
(declare-fun lt!650272 () Unit!49998)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99650 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49998)

(assert (=> b!1491526 (= lt!650272 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491527 () Bool)

(declare-fun res!1014783 () Bool)

(assert (=> b!1491527 (=> (not res!1014783) (not e!835678))))

(declare-datatypes ((List!34773 0))(
  ( (Nil!34770) (Cons!34769 (h!36152 (_ BitVec 64)) (t!49474 List!34773)) )
))
(declare-fun arrayNoDuplicates!0 (array!99650 (_ BitVec 32) List!34773) Bool)

(assert (=> b!1491527 (= res!1014783 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34770))))

(declare-fun b!1491528 () Bool)

(declare-fun res!1014781 () Bool)

(assert (=> b!1491528 (=> (not res!1014781) (not e!835678))))

(assert (=> b!1491528 (= res!1014781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491529 () Bool)

(declare-fun res!1014784 () Bool)

(assert (=> b!1491529 (=> (not res!1014784) (not e!835678))))

(assert (=> b!1491529 (= res!1014784 (validKeyInArray!0 (select (arr!48092 a!2862) i!1006)))))

(assert (= (and start!126960 res!1014776) b!1491521))

(assert (= (and b!1491521 res!1014778) b!1491529))

(assert (= (and b!1491529 res!1014784) b!1491512))

(assert (= (and b!1491512 res!1014773) b!1491528))

(assert (= (and b!1491528 res!1014781) b!1491527))

(assert (= (and b!1491527 res!1014783) b!1491525))

(assert (= (and b!1491525 res!1014772) b!1491516))

(assert (= (and b!1491516 res!1014777) b!1491522))

(assert (= (and b!1491522 res!1014786) b!1491515))

(assert (= (and b!1491515 res!1014782) b!1491519))

(assert (= (and b!1491519 res!1014785) b!1491523))

(assert (= (and b!1491523 c!137900) b!1491517))

(assert (= (and b!1491523 (not c!137900)) b!1491524))

(assert (= (and b!1491523 res!1014780) b!1491520))

(assert (= (and b!1491520 res!1014779) b!1491526))

(assert (= (and b!1491526 res!1014771) b!1491513))

(assert (= (and b!1491513 res!1014774) b!1491518))

(assert (= (and b!1491526 (not res!1014775)) b!1491514))

(declare-fun m!1375687 () Bool)

(assert (=> b!1491517 m!1375687))

(declare-fun m!1375689 () Bool)

(assert (=> b!1491529 m!1375689))

(assert (=> b!1491529 m!1375689))

(declare-fun m!1375691 () Bool)

(assert (=> b!1491529 m!1375691))

(declare-fun m!1375693 () Bool)

(assert (=> b!1491524 m!1375693))

(declare-fun m!1375695 () Bool)

(assert (=> b!1491524 m!1375695))

(declare-fun m!1375697 () Bool)

(assert (=> b!1491518 m!1375697))

(declare-fun m!1375699 () Bool)

(assert (=> b!1491518 m!1375699))

(assert (=> b!1491513 m!1375699))

(assert (=> b!1491513 m!1375699))

(declare-fun m!1375701 () Bool)

(assert (=> b!1491513 m!1375701))

(declare-fun m!1375703 () Bool)

(assert (=> b!1491527 m!1375703))

(declare-fun m!1375705 () Bool)

(assert (=> b!1491528 m!1375705))

(declare-fun m!1375707 () Bool)

(assert (=> start!126960 m!1375707))

(declare-fun m!1375709 () Bool)

(assert (=> start!126960 m!1375709))

(declare-fun m!1375711 () Bool)

(assert (=> b!1491514 m!1375711))

(declare-fun m!1375713 () Bool)

(assert (=> b!1491519 m!1375713))

(assert (=> b!1491519 m!1375713))

(declare-fun m!1375715 () Bool)

(assert (=> b!1491519 m!1375715))

(declare-fun m!1375717 () Bool)

(assert (=> b!1491519 m!1375717))

(declare-fun m!1375719 () Bool)

(assert (=> b!1491519 m!1375719))

(assert (=> b!1491516 m!1375717))

(declare-fun m!1375721 () Bool)

(assert (=> b!1491516 m!1375721))

(assert (=> b!1491512 m!1375699))

(assert (=> b!1491512 m!1375699))

(declare-fun m!1375723 () Bool)

(assert (=> b!1491512 m!1375723))

(assert (=> b!1491522 m!1375699))

(assert (=> b!1491522 m!1375699))

(declare-fun m!1375725 () Bool)

(assert (=> b!1491522 m!1375725))

(assert (=> b!1491522 m!1375725))

(assert (=> b!1491522 m!1375699))

(declare-fun m!1375727 () Bool)

(assert (=> b!1491522 m!1375727))

(assert (=> b!1491515 m!1375699))

(assert (=> b!1491515 m!1375699))

(declare-fun m!1375729 () Bool)

(assert (=> b!1491515 m!1375729))

(declare-fun m!1375731 () Bool)

(assert (=> b!1491526 m!1375731))

(assert (=> b!1491526 m!1375717))

(declare-fun m!1375733 () Bool)

(assert (=> b!1491526 m!1375733))

(declare-fun m!1375735 () Bool)

(assert (=> b!1491526 m!1375735))

(declare-fun m!1375737 () Bool)

(assert (=> b!1491526 m!1375737))

(assert (=> b!1491526 m!1375699))

(check-sat (not b!1491527) (not b!1491526) (not b!1491519) (not b!1491512) (not b!1491524) (not b!1491513) (not b!1491529) (not b!1491528) (not b!1491522) (not start!126960) (not b!1491517) (not b!1491515) (not b!1491514))
(check-sat)
