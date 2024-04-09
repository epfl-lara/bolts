; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126928 () Bool)

(assert start!126928)

(declare-fun b!1490648 () Bool)

(declare-fun e!835300 () Bool)

(declare-fun e!835299 () Bool)

(assert (=> b!1490648 (= e!835300 (not e!835299))))

(declare-fun res!1014005 () Bool)

(assert (=> b!1490648 (=> res!1014005 e!835299)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99618 0))(
  ( (array!99619 (arr!48076 (Array (_ BitVec 32) (_ BitVec 64))) (size!48627 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99618)

(assert (=> b!1490648 (= res!1014005 (or (and (= (select (arr!48076 a!2862) index!646) (select (store (arr!48076 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48076 a!2862) index!646) (select (arr!48076 a!2862) j!93))) (= (select (arr!48076 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!835295 () Bool)

(assert (=> b!1490648 e!835295))

(declare-fun res!1014018 () Bool)

(assert (=> b!1490648 (=> (not res!1014018) (not e!835295))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99618 (_ BitVec 32)) Bool)

(assert (=> b!1490648 (= res!1014018 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49966 0))(
  ( (Unit!49967) )
))
(declare-fun lt!649979 () Unit!49966)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49966)

(assert (=> b!1490648 (= lt!649979 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490649 () Bool)

(declare-fun res!1014011 () Bool)

(assert (=> b!1490649 (=> (not res!1014011) (not e!835300))))

(declare-fun e!835297 () Bool)

(assert (=> b!1490649 (= res!1014011 e!835297)))

(declare-fun c!137852 () Bool)

(assert (=> b!1490649 (= c!137852 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490650 () Bool)

(declare-fun res!1014013 () Bool)

(assert (=> b!1490650 (=> (not res!1014013) (not e!835295))))

(declare-datatypes ((SeekEntryResult!12339 0))(
  ( (MissingZero!12339 (index!51747 (_ BitVec 32))) (Found!12339 (index!51748 (_ BitVec 32))) (Intermediate!12339 (undefined!13151 Bool) (index!51749 (_ BitVec 32)) (x!133342 (_ BitVec 32))) (Undefined!12339) (MissingVacant!12339 (index!51750 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99618 (_ BitVec 32)) SeekEntryResult!12339)

(assert (=> b!1490650 (= res!1014013 (= (seekEntryOrOpen!0 (select (arr!48076 a!2862) j!93) a!2862 mask!2687) (Found!12339 j!93)))))

(declare-fun lt!649982 () array!99618)

(declare-fun lt!649984 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1490651 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99618 (_ BitVec 32)) SeekEntryResult!12339)

(assert (=> b!1490651 (= e!835297 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649984 lt!649982 mask!2687) (seekEntryOrOpen!0 lt!649984 lt!649982 mask!2687)))))

(declare-fun b!1490652 () Bool)

(declare-fun res!1014016 () Bool)

(declare-fun e!835298 () Bool)

(assert (=> b!1490652 (=> (not res!1014016) (not e!835298))))

(assert (=> b!1490652 (= res!1014016 (and (= (size!48627 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48627 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48627 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!649983 () SeekEntryResult!12339)

(declare-fun b!1490653 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99618 (_ BitVec 32)) SeekEntryResult!12339)

(assert (=> b!1490653 (= e!835297 (= lt!649983 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649984 lt!649982 mask!2687)))))

(declare-fun b!1490654 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1490654 (= e!835295 (or (= (select (arr!48076 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48076 a!2862) intermediateBeforeIndex!19) (select (arr!48076 a!2862) j!93))))))

(declare-fun b!1490655 () Bool)

(declare-fun res!1014006 () Bool)

(assert (=> b!1490655 (=> (not res!1014006) (not e!835298))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490655 (= res!1014006 (validKeyInArray!0 (select (arr!48076 a!2862) j!93)))))

(declare-fun b!1490656 () Bool)

(declare-fun res!1014015 () Bool)

(assert (=> b!1490656 (=> (not res!1014015) (not e!835298))))

(declare-datatypes ((List!34757 0))(
  ( (Nil!34754) (Cons!34753 (h!36136 (_ BitVec 64)) (t!49458 List!34757)) )
))
(declare-fun arrayNoDuplicates!0 (array!99618 (_ BitVec 32) List!34757) Bool)

(assert (=> b!1490656 (= res!1014015 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34754))))

(declare-fun b!1490657 () Bool)

(declare-fun e!835294 () Bool)

(assert (=> b!1490657 (= e!835298 e!835294)))

(declare-fun res!1014009 () Bool)

(assert (=> b!1490657 (=> (not res!1014009) (not e!835294))))

(assert (=> b!1490657 (= res!1014009 (= (select (store (arr!48076 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490657 (= lt!649982 (array!99619 (store (arr!48076 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48627 a!2862)))))

(declare-fun b!1490658 () Bool)

(declare-fun res!1014010 () Bool)

(assert (=> b!1490658 (=> (not res!1014010) (not e!835300))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1490658 (= res!1014010 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1490659 () Bool)

(declare-fun res!1014008 () Bool)

(assert (=> b!1490659 (=> (not res!1014008) (not e!835298))))

(assert (=> b!1490659 (= res!1014008 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48627 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48627 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48627 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490660 () Bool)

(declare-fun res!1014014 () Bool)

(declare-fun e!835301 () Bool)

(assert (=> b!1490660 (=> (not res!1014014) (not e!835301))))

(declare-fun lt!649981 () SeekEntryResult!12339)

(assert (=> b!1490660 (= res!1014014 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48076 a!2862) j!93) a!2862 mask!2687) lt!649981))))

(declare-fun b!1490661 () Bool)

(declare-fun res!1014004 () Bool)

(assert (=> b!1490661 (=> (not res!1014004) (not e!835298))))

(assert (=> b!1490661 (= res!1014004 (validKeyInArray!0 (select (arr!48076 a!2862) i!1006)))))

(declare-fun res!1014017 () Bool)

(assert (=> start!126928 (=> (not res!1014017) (not e!835298))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126928 (= res!1014017 (validMask!0 mask!2687))))

(assert (=> start!126928 e!835298))

(assert (=> start!126928 true))

(declare-fun array_inv!37021 (array!99618) Bool)

(assert (=> start!126928 (array_inv!37021 a!2862)))

(declare-fun b!1490662 () Bool)

(assert (=> b!1490662 (= e!835299 true)))

(declare-fun lt!649980 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490662 (= lt!649980 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1490663 () Bool)

(assert (=> b!1490663 (= e!835294 e!835301)))

(declare-fun res!1014012 () Bool)

(assert (=> b!1490663 (=> (not res!1014012) (not e!835301))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490663 (= res!1014012 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48076 a!2862) j!93) mask!2687) (select (arr!48076 a!2862) j!93) a!2862 mask!2687) lt!649981))))

(assert (=> b!1490663 (= lt!649981 (Intermediate!12339 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490664 () Bool)

(assert (=> b!1490664 (= e!835301 e!835300)))

(declare-fun res!1014003 () Bool)

(assert (=> b!1490664 (=> (not res!1014003) (not e!835300))))

(assert (=> b!1490664 (= res!1014003 (= lt!649983 (Intermediate!12339 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1490664 (= lt!649983 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649984 mask!2687) lt!649984 lt!649982 mask!2687))))

(assert (=> b!1490664 (= lt!649984 (select (store (arr!48076 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490665 () Bool)

(declare-fun res!1014007 () Bool)

(assert (=> b!1490665 (=> (not res!1014007) (not e!835298))))

(assert (=> b!1490665 (= res!1014007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!126928 res!1014017) b!1490652))

(assert (= (and b!1490652 res!1014016) b!1490661))

(assert (= (and b!1490661 res!1014004) b!1490655))

(assert (= (and b!1490655 res!1014006) b!1490665))

(assert (= (and b!1490665 res!1014007) b!1490656))

(assert (= (and b!1490656 res!1014015) b!1490659))

(assert (= (and b!1490659 res!1014008) b!1490657))

(assert (= (and b!1490657 res!1014009) b!1490663))

(assert (= (and b!1490663 res!1014012) b!1490660))

(assert (= (and b!1490660 res!1014014) b!1490664))

(assert (= (and b!1490664 res!1014003) b!1490649))

(assert (= (and b!1490649 c!137852) b!1490653))

(assert (= (and b!1490649 (not c!137852)) b!1490651))

(assert (= (and b!1490649 res!1014011) b!1490658))

(assert (= (and b!1490658 res!1014010) b!1490648))

(assert (= (and b!1490648 res!1014018) b!1490650))

(assert (= (and b!1490650 res!1014013) b!1490654))

(assert (= (and b!1490648 (not res!1014005)) b!1490662))

(declare-fun m!1374855 () Bool)

(assert (=> b!1490654 m!1374855))

(declare-fun m!1374857 () Bool)

(assert (=> b!1490654 m!1374857))

(declare-fun m!1374859 () Bool)

(assert (=> b!1490665 m!1374859))

(assert (=> b!1490663 m!1374857))

(assert (=> b!1490663 m!1374857))

(declare-fun m!1374861 () Bool)

(assert (=> b!1490663 m!1374861))

(assert (=> b!1490663 m!1374861))

(assert (=> b!1490663 m!1374857))

(declare-fun m!1374863 () Bool)

(assert (=> b!1490663 m!1374863))

(declare-fun m!1374865 () Bool)

(assert (=> b!1490662 m!1374865))

(declare-fun m!1374867 () Bool)

(assert (=> b!1490656 m!1374867))

(assert (=> b!1490650 m!1374857))

(assert (=> b!1490650 m!1374857))

(declare-fun m!1374869 () Bool)

(assert (=> b!1490650 m!1374869))

(assert (=> b!1490655 m!1374857))

(assert (=> b!1490655 m!1374857))

(declare-fun m!1374871 () Bool)

(assert (=> b!1490655 m!1374871))

(declare-fun m!1374873 () Bool)

(assert (=> b!1490653 m!1374873))

(declare-fun m!1374875 () Bool)

(assert (=> b!1490661 m!1374875))

(assert (=> b!1490661 m!1374875))

(declare-fun m!1374877 () Bool)

(assert (=> b!1490661 m!1374877))

(declare-fun m!1374879 () Bool)

(assert (=> b!1490664 m!1374879))

(assert (=> b!1490664 m!1374879))

(declare-fun m!1374881 () Bool)

(assert (=> b!1490664 m!1374881))

(declare-fun m!1374883 () Bool)

(assert (=> b!1490664 m!1374883))

(declare-fun m!1374885 () Bool)

(assert (=> b!1490664 m!1374885))

(declare-fun m!1374887 () Bool)

(assert (=> start!126928 m!1374887))

(declare-fun m!1374889 () Bool)

(assert (=> start!126928 m!1374889))

(declare-fun m!1374891 () Bool)

(assert (=> b!1490651 m!1374891))

(declare-fun m!1374893 () Bool)

(assert (=> b!1490651 m!1374893))

(declare-fun m!1374895 () Bool)

(assert (=> b!1490648 m!1374895))

(assert (=> b!1490648 m!1374883))

(declare-fun m!1374897 () Bool)

(assert (=> b!1490648 m!1374897))

(declare-fun m!1374899 () Bool)

(assert (=> b!1490648 m!1374899))

(declare-fun m!1374901 () Bool)

(assert (=> b!1490648 m!1374901))

(assert (=> b!1490648 m!1374857))

(assert (=> b!1490657 m!1374883))

(declare-fun m!1374903 () Bool)

(assert (=> b!1490657 m!1374903))

(assert (=> b!1490660 m!1374857))

(assert (=> b!1490660 m!1374857))

(declare-fun m!1374905 () Bool)

(assert (=> b!1490660 m!1374905))

(push 1)

