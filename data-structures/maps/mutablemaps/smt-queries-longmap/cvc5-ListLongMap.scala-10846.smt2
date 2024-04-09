; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126964 () Bool)

(assert start!126964)

(declare-fun e!835726 () Bool)

(declare-fun b!1491620 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!99654 0))(
  ( (array!99655 (arr!48094 (Array (_ BitVec 32) (_ BitVec 64))) (size!48645 (_ BitVec 32))) )
))
(declare-fun lt!650303 () array!99654)

(declare-fun lt!650304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12357 0))(
  ( (MissingZero!12357 (index!51819 (_ BitVec 32))) (Found!12357 (index!51820 (_ BitVec 32))) (Intermediate!12357 (undefined!13169 Bool) (index!51821 (_ BitVec 32)) (x!133408 (_ BitVec 32))) (Undefined!12357) (MissingVacant!12357 (index!51822 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99654 (_ BitVec 32)) SeekEntryResult!12357)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99654 (_ BitVec 32)) SeekEntryResult!12357)

(assert (=> b!1491620 (= e!835726 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650304 lt!650303 mask!2687) (seekEntryOrOpen!0 lt!650304 lt!650303 mask!2687)))))

(declare-fun b!1491621 () Bool)

(declare-fun res!1014877 () Bool)

(declare-fun e!835728 () Bool)

(assert (=> b!1491621 (=> (not res!1014877) (not e!835728))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun a!2862 () array!99654)

(assert (=> b!1491621 (= res!1014877 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48645 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48645 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48645 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1491622 () Bool)

(declare-fun res!1014878 () Bool)

(declare-fun e!835731 () Bool)

(assert (=> b!1491622 (=> (not res!1014878) (not e!835731))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1491622 (= res!1014878 (= (seekEntryOrOpen!0 (select (arr!48094 a!2862) j!93) a!2862 mask!2687) (Found!12357 j!93)))))

(declare-fun b!1491623 () Bool)

(declare-fun e!835729 () Bool)

(declare-fun e!835732 () Bool)

(assert (=> b!1491623 (= e!835729 e!835732)))

(declare-fun res!1014872 () Bool)

(assert (=> b!1491623 (=> (not res!1014872) (not e!835732))))

(declare-fun lt!650306 () SeekEntryResult!12357)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99654 (_ BitVec 32)) SeekEntryResult!12357)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491623 (= res!1014872 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48094 a!2862) j!93) mask!2687) (select (arr!48094 a!2862) j!93) a!2862 mask!2687) lt!650306))))

(assert (=> b!1491623 (= lt!650306 (Intermediate!12357 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1491624 () Bool)

(declare-fun lt!650307 () SeekEntryResult!12357)

(assert (=> b!1491624 (= e!835726 (= lt!650307 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650304 lt!650303 mask!2687)))))

(declare-fun b!1491625 () Bool)

(declare-fun res!1014874 () Bool)

(declare-fun e!835730 () Bool)

(assert (=> b!1491625 (=> (not res!1014874) (not e!835730))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1491625 (= res!1014874 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491626 () Bool)

(declare-fun e!835733 () Bool)

(assert (=> b!1491626 (= e!835730 (not e!835733))))

(declare-fun res!1014882 () Bool)

(assert (=> b!1491626 (=> res!1014882 e!835733)))

(assert (=> b!1491626 (= res!1014882 (or (and (= (select (arr!48094 a!2862) index!646) (select (store (arr!48094 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48094 a!2862) index!646) (select (arr!48094 a!2862) j!93))) (= (select (arr!48094 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1491626 e!835731))

(declare-fun res!1014880 () Bool)

(assert (=> b!1491626 (=> (not res!1014880) (not e!835731))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99654 (_ BitVec 32)) Bool)

(assert (=> b!1491626 (= res!1014880 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50002 0))(
  ( (Unit!50003) )
))
(declare-fun lt!650305 () Unit!50002)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99654 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50002)

(assert (=> b!1491626 (= lt!650305 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491627 () Bool)

(declare-fun res!1014873 () Bool)

(assert (=> b!1491627 (=> (not res!1014873) (not e!835728))))

(assert (=> b!1491627 (= res!1014873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491628 () Bool)

(declare-fun res!1014879 () Bool)

(assert (=> b!1491628 (=> (not res!1014879) (not e!835728))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491628 (= res!1014879 (validKeyInArray!0 (select (arr!48094 a!2862) i!1006)))))

(declare-fun b!1491629 () Bool)

(declare-fun res!1014876 () Bool)

(assert (=> b!1491629 (=> (not res!1014876) (not e!835730))))

(assert (=> b!1491629 (= res!1014876 e!835726)))

(declare-fun c!137906 () Bool)

(assert (=> b!1491629 (= c!137906 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491630 () Bool)

(assert (=> b!1491630 (= e!835733 true)))

(declare-fun lt!650308 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491630 (= lt!650308 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1491631 () Bool)

(assert (=> b!1491631 (= e!835732 e!835730)))

(declare-fun res!1014875 () Bool)

(assert (=> b!1491631 (=> (not res!1014875) (not e!835730))))

(assert (=> b!1491631 (= res!1014875 (= lt!650307 (Intermediate!12357 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1491631 (= lt!650307 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650304 mask!2687) lt!650304 lt!650303 mask!2687))))

(assert (=> b!1491631 (= lt!650304 (select (store (arr!48094 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491632 () Bool)

(assert (=> b!1491632 (= e!835728 e!835729)))

(declare-fun res!1014870 () Bool)

(assert (=> b!1491632 (=> (not res!1014870) (not e!835729))))

(assert (=> b!1491632 (= res!1014870 (= (select (store (arr!48094 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1491632 (= lt!650303 (array!99655 (store (arr!48094 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48645 a!2862)))))

(declare-fun b!1491633 () Bool)

(declare-fun res!1014868 () Bool)

(assert (=> b!1491633 (=> (not res!1014868) (not e!835728))))

(assert (=> b!1491633 (= res!1014868 (validKeyInArray!0 (select (arr!48094 a!2862) j!93)))))

(declare-fun b!1491634 () Bool)

(assert (=> b!1491634 (= e!835731 (or (= (select (arr!48094 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48094 a!2862) intermediateBeforeIndex!19) (select (arr!48094 a!2862) j!93))))))

(declare-fun b!1491635 () Bool)

(declare-fun res!1014881 () Bool)

(assert (=> b!1491635 (=> (not res!1014881) (not e!835732))))

(assert (=> b!1491635 (= res!1014881 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48094 a!2862) j!93) a!2862 mask!2687) lt!650306))))

(declare-fun res!1014869 () Bool)

(assert (=> start!126964 (=> (not res!1014869) (not e!835728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126964 (= res!1014869 (validMask!0 mask!2687))))

(assert (=> start!126964 e!835728))

(assert (=> start!126964 true))

(declare-fun array_inv!37039 (array!99654) Bool)

(assert (=> start!126964 (array_inv!37039 a!2862)))

(declare-fun b!1491636 () Bool)

(declare-fun res!1014871 () Bool)

(assert (=> b!1491636 (=> (not res!1014871) (not e!835728))))

(assert (=> b!1491636 (= res!1014871 (and (= (size!48645 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48645 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48645 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491637 () Bool)

(declare-fun res!1014867 () Bool)

(assert (=> b!1491637 (=> (not res!1014867) (not e!835728))))

(declare-datatypes ((List!34775 0))(
  ( (Nil!34772) (Cons!34771 (h!36154 (_ BitVec 64)) (t!49476 List!34775)) )
))
(declare-fun arrayNoDuplicates!0 (array!99654 (_ BitVec 32) List!34775) Bool)

(assert (=> b!1491637 (= res!1014867 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34772))))

(assert (= (and start!126964 res!1014869) b!1491636))

(assert (= (and b!1491636 res!1014871) b!1491628))

(assert (= (and b!1491628 res!1014879) b!1491633))

(assert (= (and b!1491633 res!1014868) b!1491627))

(assert (= (and b!1491627 res!1014873) b!1491637))

(assert (= (and b!1491637 res!1014867) b!1491621))

(assert (= (and b!1491621 res!1014877) b!1491632))

(assert (= (and b!1491632 res!1014870) b!1491623))

(assert (= (and b!1491623 res!1014872) b!1491635))

(assert (= (and b!1491635 res!1014881) b!1491631))

(assert (= (and b!1491631 res!1014875) b!1491629))

(assert (= (and b!1491629 c!137906) b!1491624))

(assert (= (and b!1491629 (not c!137906)) b!1491620))

(assert (= (and b!1491629 res!1014876) b!1491625))

(assert (= (and b!1491625 res!1014874) b!1491626))

(assert (= (and b!1491626 res!1014880) b!1491622))

(assert (= (and b!1491622 res!1014878) b!1491634))

(assert (= (and b!1491626 (not res!1014882)) b!1491630))

(declare-fun m!1375791 () Bool)

(assert (=> b!1491631 m!1375791))

(assert (=> b!1491631 m!1375791))

(declare-fun m!1375793 () Bool)

(assert (=> b!1491631 m!1375793))

(declare-fun m!1375795 () Bool)

(assert (=> b!1491631 m!1375795))

(declare-fun m!1375797 () Bool)

(assert (=> b!1491631 m!1375797))

(declare-fun m!1375799 () Bool)

(assert (=> b!1491628 m!1375799))

(assert (=> b!1491628 m!1375799))

(declare-fun m!1375801 () Bool)

(assert (=> b!1491628 m!1375801))

(declare-fun m!1375803 () Bool)

(assert (=> b!1491622 m!1375803))

(assert (=> b!1491622 m!1375803))

(declare-fun m!1375805 () Bool)

(assert (=> b!1491622 m!1375805))

(declare-fun m!1375807 () Bool)

(assert (=> start!126964 m!1375807))

(declare-fun m!1375809 () Bool)

(assert (=> start!126964 m!1375809))

(declare-fun m!1375811 () Bool)

(assert (=> b!1491634 m!1375811))

(assert (=> b!1491634 m!1375803))

(declare-fun m!1375813 () Bool)

(assert (=> b!1491627 m!1375813))

(declare-fun m!1375815 () Bool)

(assert (=> b!1491620 m!1375815))

(declare-fun m!1375817 () Bool)

(assert (=> b!1491620 m!1375817))

(assert (=> b!1491632 m!1375795))

(declare-fun m!1375819 () Bool)

(assert (=> b!1491632 m!1375819))

(assert (=> b!1491623 m!1375803))

(assert (=> b!1491623 m!1375803))

(declare-fun m!1375821 () Bool)

(assert (=> b!1491623 m!1375821))

(assert (=> b!1491623 m!1375821))

(assert (=> b!1491623 m!1375803))

(declare-fun m!1375823 () Bool)

(assert (=> b!1491623 m!1375823))

(declare-fun m!1375825 () Bool)

(assert (=> b!1491624 m!1375825))

(assert (=> b!1491633 m!1375803))

(assert (=> b!1491633 m!1375803))

(declare-fun m!1375827 () Bool)

(assert (=> b!1491633 m!1375827))

(declare-fun m!1375829 () Bool)

(assert (=> b!1491637 m!1375829))

(assert (=> b!1491635 m!1375803))

(assert (=> b!1491635 m!1375803))

(declare-fun m!1375831 () Bool)

(assert (=> b!1491635 m!1375831))

(declare-fun m!1375833 () Bool)

(assert (=> b!1491626 m!1375833))

(assert (=> b!1491626 m!1375795))

(declare-fun m!1375835 () Bool)

(assert (=> b!1491626 m!1375835))

(declare-fun m!1375837 () Bool)

(assert (=> b!1491626 m!1375837))

(declare-fun m!1375839 () Bool)

(assert (=> b!1491626 m!1375839))

(assert (=> b!1491626 m!1375803))

(declare-fun m!1375841 () Bool)

(assert (=> b!1491630 m!1375841))

(push 1)

