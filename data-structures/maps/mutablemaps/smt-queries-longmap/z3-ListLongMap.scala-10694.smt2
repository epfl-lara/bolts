; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125346 () Bool)

(assert start!125346)

(declare-fun b!1463419 () Bool)

(declare-fun e!822534 () Bool)

(declare-fun e!822537 () Bool)

(assert (=> b!1463419 (= e!822534 e!822537)))

(declare-fun res!992776 () Bool)

(assert (=> b!1463419 (=> (not res!992776) (not e!822537))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11914 0))(
  ( (MissingZero!11914 (index!50047 (_ BitVec 32))) (Found!11914 (index!50048 (_ BitVec 32))) (Intermediate!11914 (undefined!12726 Bool) (index!50049 (_ BitVec 32)) (x!131638 (_ BitVec 32))) (Undefined!11914) (MissingVacant!11914 (index!50050 (_ BitVec 32))) )
))
(declare-fun lt!640730 () SeekEntryResult!11914)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1463419 (= res!992776 (= lt!640730 (Intermediate!11914 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!640732 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!98711 0))(
  ( (array!98712 (arr!47639 (Array (_ BitVec 32) (_ BitVec 64))) (size!48190 (_ BitVec 32))) )
))
(declare-fun lt!640728 () array!98711)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98711 (_ BitVec 32)) SeekEntryResult!11914)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463419 (= lt!640730 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640732 mask!2687) lt!640732 lt!640728 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98711)

(assert (=> b!1463419 (= lt!640732 (select (store (arr!47639 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1463420 () Bool)

(declare-fun res!992772 () Bool)

(declare-fun e!822542 () Bool)

(assert (=> b!1463420 (=> (not res!992772) (not e!822542))))

(declare-datatypes ((List!34320 0))(
  ( (Nil!34317) (Cons!34316 (h!35666 (_ BitVec 64)) (t!49021 List!34320)) )
))
(declare-fun arrayNoDuplicates!0 (array!98711 (_ BitVec 32) List!34320) Bool)

(assert (=> b!1463420 (= res!992772 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34317))))

(declare-fun b!1463421 () Bool)

(declare-fun e!822541 () Bool)

(assert (=> b!1463421 (= e!822541 e!822534)))

(declare-fun res!992767 () Bool)

(assert (=> b!1463421 (=> (not res!992767) (not e!822534))))

(declare-fun lt!640727 () SeekEntryResult!11914)

(assert (=> b!1463421 (= res!992767 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47639 a!2862) j!93) mask!2687) (select (arr!47639 a!2862) j!93) a!2862 mask!2687) lt!640727))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1463421 (= lt!640727 (Intermediate!11914 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1463423 () Bool)

(declare-fun res!992784 () Bool)

(assert (=> b!1463423 (=> (not res!992784) (not e!822537))))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1463423 (= res!992784 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1463424 () Bool)

(declare-fun e!822539 () Bool)

(assert (=> b!1463424 (= e!822537 (not e!822539))))

(declare-fun res!992781 () Bool)

(assert (=> b!1463424 (=> res!992781 e!822539)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1463424 (= res!992781 (or (and (= (select (arr!47639 a!2862) index!646) (select (store (arr!47639 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47639 a!2862) index!646) (select (arr!47639 a!2862) j!93))) (= (select (arr!47639 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!822540 () Bool)

(assert (=> b!1463424 e!822540))

(declare-fun res!992773 () Bool)

(assert (=> b!1463424 (=> (not res!992773) (not e!822540))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98711 (_ BitVec 32)) Bool)

(assert (=> b!1463424 (= res!992773 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49272 0))(
  ( (Unit!49273) )
))
(declare-fun lt!640731 () Unit!49272)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98711 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49272)

(assert (=> b!1463424 (= lt!640731 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1463425 () Bool)

(declare-fun res!992768 () Bool)

(assert (=> b!1463425 (=> (not res!992768) (not e!822542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463425 (= res!992768 (validKeyInArray!0 (select (arr!47639 a!2862) j!93)))))

(declare-fun b!1463426 () Bool)

(declare-fun e!822535 () Bool)

(assert (=> b!1463426 (= e!822535 (= lt!640730 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640732 lt!640728 mask!2687)))))

(declare-fun b!1463427 () Bool)

(declare-fun res!992778 () Bool)

(assert (=> b!1463427 (=> (not res!992778) (not e!822537))))

(assert (=> b!1463427 (= res!992778 e!822535)))

(declare-fun c!134839 () Bool)

(assert (=> b!1463427 (= c!134839 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1463428 () Bool)

(declare-fun res!992774 () Bool)

(assert (=> b!1463428 (=> (not res!992774) (not e!822540))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98711 (_ BitVec 32)) SeekEntryResult!11914)

(assert (=> b!1463428 (= res!992774 (= (seekEntryOrOpen!0 (select (arr!47639 a!2862) j!93) a!2862 mask!2687) (Found!11914 j!93)))))

(declare-fun b!1463429 () Bool)

(declare-fun res!992771 () Bool)

(assert (=> b!1463429 (=> (not res!992771) (not e!822542))))

(assert (=> b!1463429 (= res!992771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1463430 () Bool)

(declare-fun res!992780 () Bool)

(assert (=> b!1463430 (=> (not res!992780) (not e!822534))))

(assert (=> b!1463430 (= res!992780 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47639 a!2862) j!93) a!2862 mask!2687) lt!640727))))

(declare-fun b!1463431 () Bool)

(assert (=> b!1463431 (= e!822540 (or (= (select (arr!47639 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47639 a!2862) intermediateBeforeIndex!19) (select (arr!47639 a!2862) j!93))))))

(declare-fun b!1463432 () Bool)

(declare-fun res!992777 () Bool)

(declare-fun e!822538 () Bool)

(assert (=> b!1463432 (=> res!992777 e!822538)))

(declare-fun lt!640726 () (_ BitVec 32))

(assert (=> b!1463432 (= res!992777 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640726 (select (arr!47639 a!2862) j!93) a!2862 mask!2687) lt!640727)))))

(declare-fun e!822533 () Bool)

(declare-fun b!1463422 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98711 (_ BitVec 32)) SeekEntryResult!11914)

(assert (=> b!1463422 (= e!822533 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640726 intermediateAfterIndex!19 lt!640732 lt!640728 mask!2687) (seekEntryOrOpen!0 lt!640732 lt!640728 mask!2687))))))

(declare-fun res!992779 () Bool)

(assert (=> start!125346 (=> (not res!992779) (not e!822542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125346 (= res!992779 (validMask!0 mask!2687))))

(assert (=> start!125346 e!822542))

(assert (=> start!125346 true))

(declare-fun array_inv!36584 (array!98711) Bool)

(assert (=> start!125346 (array_inv!36584 a!2862)))

(declare-fun b!1463433 () Bool)

(assert (=> b!1463433 (= e!822538 true)))

(declare-fun lt!640729 () Bool)

(assert (=> b!1463433 (= lt!640729 e!822533)))

(declare-fun c!134840 () Bool)

(assert (=> b!1463433 (= c!134840 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463434 () Bool)

(declare-fun res!992783 () Bool)

(assert (=> b!1463434 (=> (not res!992783) (not e!822542))))

(assert (=> b!1463434 (= res!992783 (and (= (size!48190 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48190 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48190 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1463435 () Bool)

(declare-fun res!992769 () Bool)

(assert (=> b!1463435 (=> (not res!992769) (not e!822542))))

(assert (=> b!1463435 (= res!992769 (validKeyInArray!0 (select (arr!47639 a!2862) i!1006)))))

(declare-fun b!1463436 () Bool)

(assert (=> b!1463436 (= e!822542 e!822541)))

(declare-fun res!992775 () Bool)

(assert (=> b!1463436 (=> (not res!992775) (not e!822541))))

(assert (=> b!1463436 (= res!992775 (= (select (store (arr!47639 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1463436 (= lt!640728 (array!98712 (store (arr!47639 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48190 a!2862)))))

(declare-fun b!1463437 () Bool)

(assert (=> b!1463437 (= e!822533 (not (= lt!640730 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640726 lt!640732 lt!640728 mask!2687))))))

(declare-fun b!1463438 () Bool)

(assert (=> b!1463438 (= e!822539 e!822538)))

(declare-fun res!992782 () Bool)

(assert (=> b!1463438 (=> res!992782 e!822538)))

(assert (=> b!1463438 (= res!992782 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640726 #b00000000000000000000000000000000) (bvsge lt!640726 (size!48190 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463438 (= lt!640726 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1463439 () Bool)

(assert (=> b!1463439 (= e!822535 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640732 lt!640728 mask!2687) (seekEntryOrOpen!0 lt!640732 lt!640728 mask!2687)))))

(declare-fun b!1463440 () Bool)

(declare-fun res!992770 () Bool)

(assert (=> b!1463440 (=> (not res!992770) (not e!822542))))

(assert (=> b!1463440 (= res!992770 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48190 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48190 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48190 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!125346 res!992779) b!1463434))

(assert (= (and b!1463434 res!992783) b!1463435))

(assert (= (and b!1463435 res!992769) b!1463425))

(assert (= (and b!1463425 res!992768) b!1463429))

(assert (= (and b!1463429 res!992771) b!1463420))

(assert (= (and b!1463420 res!992772) b!1463440))

(assert (= (and b!1463440 res!992770) b!1463436))

(assert (= (and b!1463436 res!992775) b!1463421))

(assert (= (and b!1463421 res!992767) b!1463430))

(assert (= (and b!1463430 res!992780) b!1463419))

(assert (= (and b!1463419 res!992776) b!1463427))

(assert (= (and b!1463427 c!134839) b!1463426))

(assert (= (and b!1463427 (not c!134839)) b!1463439))

(assert (= (and b!1463427 res!992778) b!1463423))

(assert (= (and b!1463423 res!992784) b!1463424))

(assert (= (and b!1463424 res!992773) b!1463428))

(assert (= (and b!1463428 res!992774) b!1463431))

(assert (= (and b!1463424 (not res!992781)) b!1463438))

(assert (= (and b!1463438 (not res!992782)) b!1463432))

(assert (= (and b!1463432 (not res!992777)) b!1463433))

(assert (= (and b!1463433 c!134840) b!1463437))

(assert (= (and b!1463433 (not c!134840)) b!1463422))

(declare-fun m!1350805 () Bool)

(assert (=> b!1463422 m!1350805))

(declare-fun m!1350807 () Bool)

(assert (=> b!1463422 m!1350807))

(declare-fun m!1350809 () Bool)

(assert (=> b!1463428 m!1350809))

(assert (=> b!1463428 m!1350809))

(declare-fun m!1350811 () Bool)

(assert (=> b!1463428 m!1350811))

(declare-fun m!1350813 () Bool)

(assert (=> b!1463419 m!1350813))

(assert (=> b!1463419 m!1350813))

(declare-fun m!1350815 () Bool)

(assert (=> b!1463419 m!1350815))

(declare-fun m!1350817 () Bool)

(assert (=> b!1463419 m!1350817))

(declare-fun m!1350819 () Bool)

(assert (=> b!1463419 m!1350819))

(declare-fun m!1350821 () Bool)

(assert (=> b!1463426 m!1350821))

(declare-fun m!1350823 () Bool)

(assert (=> start!125346 m!1350823))

(declare-fun m!1350825 () Bool)

(assert (=> start!125346 m!1350825))

(declare-fun m!1350827 () Bool)

(assert (=> b!1463420 m!1350827))

(assert (=> b!1463421 m!1350809))

(assert (=> b!1463421 m!1350809))

(declare-fun m!1350829 () Bool)

(assert (=> b!1463421 m!1350829))

(assert (=> b!1463421 m!1350829))

(assert (=> b!1463421 m!1350809))

(declare-fun m!1350831 () Bool)

(assert (=> b!1463421 m!1350831))

(declare-fun m!1350833 () Bool)

(assert (=> b!1463424 m!1350833))

(assert (=> b!1463424 m!1350817))

(declare-fun m!1350835 () Bool)

(assert (=> b!1463424 m!1350835))

(declare-fun m!1350837 () Bool)

(assert (=> b!1463424 m!1350837))

(declare-fun m!1350839 () Bool)

(assert (=> b!1463424 m!1350839))

(assert (=> b!1463424 m!1350809))

(declare-fun m!1350841 () Bool)

(assert (=> b!1463431 m!1350841))

(assert (=> b!1463431 m!1350809))

(assert (=> b!1463430 m!1350809))

(assert (=> b!1463430 m!1350809))

(declare-fun m!1350843 () Bool)

(assert (=> b!1463430 m!1350843))

(declare-fun m!1350845 () Bool)

(assert (=> b!1463439 m!1350845))

(assert (=> b!1463439 m!1350807))

(assert (=> b!1463432 m!1350809))

(assert (=> b!1463432 m!1350809))

(declare-fun m!1350847 () Bool)

(assert (=> b!1463432 m!1350847))

(declare-fun m!1350849 () Bool)

(assert (=> b!1463429 m!1350849))

(assert (=> b!1463425 m!1350809))

(assert (=> b!1463425 m!1350809))

(declare-fun m!1350851 () Bool)

(assert (=> b!1463425 m!1350851))

(declare-fun m!1350853 () Bool)

(assert (=> b!1463438 m!1350853))

(assert (=> b!1463436 m!1350817))

(declare-fun m!1350855 () Bool)

(assert (=> b!1463436 m!1350855))

(declare-fun m!1350857 () Bool)

(assert (=> b!1463435 m!1350857))

(assert (=> b!1463435 m!1350857))

(declare-fun m!1350859 () Bool)

(assert (=> b!1463435 m!1350859))

(declare-fun m!1350861 () Bool)

(assert (=> b!1463437 m!1350861))

(check-sat (not b!1463419) (not b!1463432) (not b!1463424) (not b!1463428) (not b!1463420) (not b!1463435) (not b!1463438) (not b!1463439) (not b!1463422) (not b!1463430) (not start!125346) (not b!1463437) (not b!1463425) (not b!1463429) (not b!1463421) (not b!1463426))
(check-sat)
