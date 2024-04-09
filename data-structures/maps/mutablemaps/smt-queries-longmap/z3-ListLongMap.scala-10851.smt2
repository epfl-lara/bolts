; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127062 () Bool)

(assert start!127062)

(declare-fun b!1492865 () Bool)

(declare-fun e!836339 () Bool)

(declare-fun e!836337 () Bool)

(assert (=> b!1492865 (= e!836339 (not e!836337))))

(declare-fun res!1015756 () Bool)

(assert (=> b!1492865 (=> res!1015756 e!836337)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99689 0))(
  ( (array!99690 (arr!48110 (Array (_ BitVec 32) (_ BitVec 64))) (size!48661 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99689)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1492865 (= res!1015756 (or (and (= (select (arr!48110 a!2862) index!646) (select (store (arr!48110 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48110 a!2862) index!646) (select (arr!48110 a!2862) j!93))) (= (select (arr!48110 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!836338 () Bool)

(assert (=> b!1492865 e!836338))

(declare-fun res!1015753 () Bool)

(assert (=> b!1492865 (=> (not res!1015753) (not e!836338))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99689 (_ BitVec 32)) Bool)

(assert (=> b!1492865 (= res!1015753 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50034 0))(
  ( (Unit!50035) )
))
(declare-fun lt!650760 () Unit!50034)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99689 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50034)

(assert (=> b!1492865 (= lt!650760 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1492866 () Bool)

(declare-fun res!1015749 () Bool)

(declare-fun e!836341 () Bool)

(assert (=> b!1492866 (=> (not res!1015749) (not e!836341))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1492866 (= res!1015749 (validKeyInArray!0 (select (arr!48110 a!2862) i!1006)))))

(declare-fun b!1492867 () Bool)

(declare-fun lt!650759 () array!99689)

(declare-fun lt!650764 () (_ BitVec 64))

(declare-fun e!836342 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12373 0))(
  ( (MissingZero!12373 (index!51883 (_ BitVec 32))) (Found!12373 (index!51884 (_ BitVec 32))) (Intermediate!12373 (undefined!13185 Bool) (index!51885 (_ BitVec 32)) (x!133476 (_ BitVec 32))) (Undefined!12373) (MissingVacant!12373 (index!51886 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99689 (_ BitVec 32)) SeekEntryResult!12373)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99689 (_ BitVec 32)) SeekEntryResult!12373)

(assert (=> b!1492867 (= e!836342 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650764 lt!650759 mask!2687) (seekEntryOrOpen!0 lt!650764 lt!650759 mask!2687)))))

(declare-fun res!1015757 () Bool)

(assert (=> start!127062 (=> (not res!1015757) (not e!836341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127062 (= res!1015757 (validMask!0 mask!2687))))

(assert (=> start!127062 e!836341))

(assert (=> start!127062 true))

(declare-fun array_inv!37055 (array!99689) Bool)

(assert (=> start!127062 (array_inv!37055 a!2862)))

(declare-fun b!1492868 () Bool)

(declare-fun res!1015743 () Bool)

(assert (=> b!1492868 (=> (not res!1015743) (not e!836341))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1492868 (= res!1015743 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48661 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48661 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48661 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1492869 () Bool)

(declare-fun res!1015747 () Bool)

(assert (=> b!1492869 (=> (not res!1015747) (not e!836338))))

(assert (=> b!1492869 (= res!1015747 (= (seekEntryOrOpen!0 (select (arr!48110 a!2862) j!93) a!2862 mask!2687) (Found!12373 j!93)))))

(declare-fun b!1492870 () Bool)

(declare-fun res!1015752 () Bool)

(assert (=> b!1492870 (=> (not res!1015752) (not e!836339))))

(assert (=> b!1492870 (= res!1015752 e!836342)))

(declare-fun c!138092 () Bool)

(assert (=> b!1492870 (= c!138092 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1492871 () Bool)

(declare-fun res!1015746 () Bool)

(assert (=> b!1492871 (=> (not res!1015746) (not e!836341))))

(assert (=> b!1492871 (= res!1015746 (validKeyInArray!0 (select (arr!48110 a!2862) j!93)))))

(declare-fun b!1492872 () Bool)

(declare-fun res!1015744 () Bool)

(assert (=> b!1492872 (=> (not res!1015744) (not e!836341))))

(assert (=> b!1492872 (= res!1015744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1492873 () Bool)

(declare-fun res!1015750 () Bool)

(assert (=> b!1492873 (=> (not res!1015750) (not e!836341))))

(declare-datatypes ((List!34791 0))(
  ( (Nil!34788) (Cons!34787 (h!36173 (_ BitVec 64)) (t!49492 List!34791)) )
))
(declare-fun arrayNoDuplicates!0 (array!99689 (_ BitVec 32) List!34791) Bool)

(assert (=> b!1492873 (= res!1015750 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34788))))

(declare-fun b!1492874 () Bool)

(declare-fun res!1015748 () Bool)

(declare-fun e!836336 () Bool)

(assert (=> b!1492874 (=> (not res!1015748) (not e!836336))))

(declare-fun lt!650763 () SeekEntryResult!12373)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99689 (_ BitVec 32)) SeekEntryResult!12373)

(assert (=> b!1492874 (= res!1015748 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48110 a!2862) j!93) a!2862 mask!2687) lt!650763))))

(declare-fun b!1492875 () Bool)

(declare-fun e!836340 () Bool)

(assert (=> b!1492875 (= e!836340 e!836336)))

(declare-fun res!1015751 () Bool)

(assert (=> b!1492875 (=> (not res!1015751) (not e!836336))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492875 (= res!1015751 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48110 a!2862) j!93) mask!2687) (select (arr!48110 a!2862) j!93) a!2862 mask!2687) lt!650763))))

(assert (=> b!1492875 (= lt!650763 (Intermediate!12373 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!650762 () (_ BitVec 32))

(declare-fun b!1492876 () Bool)

(assert (=> b!1492876 (= e!836337 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (and (bvsge lt!650762 #b00000000000000000000000000000000) (bvslt lt!650762 (size!48661 a!2862)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492876 (= lt!650762 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1492877 () Bool)

(assert (=> b!1492877 (= e!836341 e!836340)))

(declare-fun res!1015758 () Bool)

(assert (=> b!1492877 (=> (not res!1015758) (not e!836340))))

(assert (=> b!1492877 (= res!1015758 (= (select (store (arr!48110 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492877 (= lt!650759 (array!99690 (store (arr!48110 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48661 a!2862)))))

(declare-fun lt!650761 () SeekEntryResult!12373)

(declare-fun b!1492878 () Bool)

(assert (=> b!1492878 (= e!836342 (= lt!650761 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650764 lt!650759 mask!2687)))))

(declare-fun b!1492879 () Bool)

(declare-fun res!1015745 () Bool)

(assert (=> b!1492879 (=> (not res!1015745) (not e!836339))))

(assert (=> b!1492879 (= res!1015745 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1492880 () Bool)

(assert (=> b!1492880 (= e!836336 e!836339)))

(declare-fun res!1015754 () Bool)

(assert (=> b!1492880 (=> (not res!1015754) (not e!836339))))

(assert (=> b!1492880 (= res!1015754 (= lt!650761 (Intermediate!12373 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1492880 (= lt!650761 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650764 mask!2687) lt!650764 lt!650759 mask!2687))))

(assert (=> b!1492880 (= lt!650764 (select (store (arr!48110 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1492881 () Bool)

(declare-fun res!1015755 () Bool)

(assert (=> b!1492881 (=> (not res!1015755) (not e!836341))))

(assert (=> b!1492881 (= res!1015755 (and (= (size!48661 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48661 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48661 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1492882 () Bool)

(assert (=> b!1492882 (= e!836338 (or (= (select (arr!48110 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48110 a!2862) intermediateBeforeIndex!19) (select (arr!48110 a!2862) j!93))))))

(assert (= (and start!127062 res!1015757) b!1492881))

(assert (= (and b!1492881 res!1015755) b!1492866))

(assert (= (and b!1492866 res!1015749) b!1492871))

(assert (= (and b!1492871 res!1015746) b!1492872))

(assert (= (and b!1492872 res!1015744) b!1492873))

(assert (= (and b!1492873 res!1015750) b!1492868))

(assert (= (and b!1492868 res!1015743) b!1492877))

(assert (= (and b!1492877 res!1015758) b!1492875))

(assert (= (and b!1492875 res!1015751) b!1492874))

(assert (= (and b!1492874 res!1015748) b!1492880))

(assert (= (and b!1492880 res!1015754) b!1492870))

(assert (= (and b!1492870 c!138092) b!1492878))

(assert (= (and b!1492870 (not c!138092)) b!1492867))

(assert (= (and b!1492870 res!1015752) b!1492879))

(assert (= (and b!1492879 res!1015745) b!1492865))

(assert (= (and b!1492865 res!1015753) b!1492869))

(assert (= (and b!1492869 res!1015747) b!1492882))

(assert (= (and b!1492865 (not res!1015756)) b!1492876))

(declare-fun m!1376857 () Bool)

(assert (=> b!1492882 m!1376857))

(declare-fun m!1376859 () Bool)

(assert (=> b!1492882 m!1376859))

(declare-fun m!1376861 () Bool)

(assert (=> b!1492865 m!1376861))

(declare-fun m!1376863 () Bool)

(assert (=> b!1492865 m!1376863))

(declare-fun m!1376865 () Bool)

(assert (=> b!1492865 m!1376865))

(declare-fun m!1376867 () Bool)

(assert (=> b!1492865 m!1376867))

(declare-fun m!1376869 () Bool)

(assert (=> b!1492865 m!1376869))

(assert (=> b!1492865 m!1376859))

(declare-fun m!1376871 () Bool)

(assert (=> b!1492866 m!1376871))

(assert (=> b!1492866 m!1376871))

(declare-fun m!1376873 () Bool)

(assert (=> b!1492866 m!1376873))

(declare-fun m!1376875 () Bool)

(assert (=> b!1492867 m!1376875))

(declare-fun m!1376877 () Bool)

(assert (=> b!1492867 m!1376877))

(declare-fun m!1376879 () Bool)

(assert (=> b!1492880 m!1376879))

(assert (=> b!1492880 m!1376879))

(declare-fun m!1376881 () Bool)

(assert (=> b!1492880 m!1376881))

(assert (=> b!1492880 m!1376863))

(declare-fun m!1376883 () Bool)

(assert (=> b!1492880 m!1376883))

(assert (=> b!1492869 m!1376859))

(assert (=> b!1492869 m!1376859))

(declare-fun m!1376885 () Bool)

(assert (=> b!1492869 m!1376885))

(declare-fun m!1376887 () Bool)

(assert (=> b!1492878 m!1376887))

(assert (=> b!1492875 m!1376859))

(assert (=> b!1492875 m!1376859))

(declare-fun m!1376889 () Bool)

(assert (=> b!1492875 m!1376889))

(assert (=> b!1492875 m!1376889))

(assert (=> b!1492875 m!1376859))

(declare-fun m!1376891 () Bool)

(assert (=> b!1492875 m!1376891))

(declare-fun m!1376893 () Bool)

(assert (=> start!127062 m!1376893))

(declare-fun m!1376895 () Bool)

(assert (=> start!127062 m!1376895))

(declare-fun m!1376897 () Bool)

(assert (=> b!1492876 m!1376897))

(declare-fun m!1376899 () Bool)

(assert (=> b!1492872 m!1376899))

(declare-fun m!1376901 () Bool)

(assert (=> b!1492873 m!1376901))

(assert (=> b!1492871 m!1376859))

(assert (=> b!1492871 m!1376859))

(declare-fun m!1376903 () Bool)

(assert (=> b!1492871 m!1376903))

(assert (=> b!1492877 m!1376863))

(declare-fun m!1376905 () Bool)

(assert (=> b!1492877 m!1376905))

(assert (=> b!1492874 m!1376859))

(assert (=> b!1492874 m!1376859))

(declare-fun m!1376907 () Bool)

(assert (=> b!1492874 m!1376907))

(check-sat (not b!1492873) (not start!127062) (not b!1492876) (not b!1492867) (not b!1492869) (not b!1492880) (not b!1492872) (not b!1492871) (not b!1492874) (not b!1492866) (not b!1492878) (not b!1492875) (not b!1492865))
(check-sat)
(get-model)

(declare-fun b!1492949 () Bool)

(declare-fun c!138102 () Bool)

(declare-fun lt!650787 () (_ BitVec 64))

(assert (=> b!1492949 (= c!138102 (= lt!650787 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836375 () SeekEntryResult!12373)

(declare-fun e!836373 () SeekEntryResult!12373)

(assert (=> b!1492949 (= e!836375 e!836373)))

(declare-fun b!1492950 () Bool)

(declare-fun e!836374 () SeekEntryResult!12373)

(assert (=> b!1492950 (= e!836374 Undefined!12373)))

(declare-fun b!1492951 () Bool)

(assert (=> b!1492951 (= e!836375 (Found!12373 index!646))))

(declare-fun b!1492952 () Bool)

(assert (=> b!1492952 (= e!836374 e!836375)))

(declare-fun c!138104 () Bool)

(assert (=> b!1492952 (= c!138104 (= lt!650787 lt!650764))))

(declare-fun d!156873 () Bool)

(declare-fun lt!650788 () SeekEntryResult!12373)

(get-info :version)

(assert (=> d!156873 (and (or ((_ is Undefined!12373) lt!650788) (not ((_ is Found!12373) lt!650788)) (and (bvsge (index!51884 lt!650788) #b00000000000000000000000000000000) (bvslt (index!51884 lt!650788) (size!48661 lt!650759)))) (or ((_ is Undefined!12373) lt!650788) ((_ is Found!12373) lt!650788) (not ((_ is MissingVacant!12373) lt!650788)) (not (= (index!51886 lt!650788) intermediateAfterIndex!19)) (and (bvsge (index!51886 lt!650788) #b00000000000000000000000000000000) (bvslt (index!51886 lt!650788) (size!48661 lt!650759)))) (or ((_ is Undefined!12373) lt!650788) (ite ((_ is Found!12373) lt!650788) (= (select (arr!48110 lt!650759) (index!51884 lt!650788)) lt!650764) (and ((_ is MissingVacant!12373) lt!650788) (= (index!51886 lt!650788) intermediateAfterIndex!19) (= (select (arr!48110 lt!650759) (index!51886 lt!650788)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156873 (= lt!650788 e!836374)))

(declare-fun c!138103 () Bool)

(assert (=> d!156873 (= c!138103 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156873 (= lt!650787 (select (arr!48110 lt!650759) index!646))))

(assert (=> d!156873 (validMask!0 mask!2687)))

(assert (=> d!156873 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650764 lt!650759 mask!2687) lt!650788)))

(declare-fun b!1492953 () Bool)

(assert (=> b!1492953 (= e!836373 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!650764 lt!650759 mask!2687))))

(declare-fun b!1492954 () Bool)

(assert (=> b!1492954 (= e!836373 (MissingVacant!12373 intermediateAfterIndex!19))))

(assert (= (and d!156873 c!138103) b!1492950))

(assert (= (and d!156873 (not c!138103)) b!1492952))

(assert (= (and b!1492952 c!138104) b!1492951))

(assert (= (and b!1492952 (not c!138104)) b!1492949))

(assert (= (and b!1492949 c!138102) b!1492954))

(assert (= (and b!1492949 (not c!138102)) b!1492953))

(declare-fun m!1376961 () Bool)

(assert (=> d!156873 m!1376961))

(declare-fun m!1376963 () Bool)

(assert (=> d!156873 m!1376963))

(declare-fun m!1376965 () Bool)

(assert (=> d!156873 m!1376965))

(assert (=> d!156873 m!1376893))

(assert (=> b!1492953 m!1376897))

(assert (=> b!1492953 m!1376897))

(declare-fun m!1376967 () Bool)

(assert (=> b!1492953 m!1376967))

(assert (=> b!1492867 d!156873))

(declare-fun b!1492967 () Bool)

(declare-fun e!836382 () SeekEntryResult!12373)

(declare-fun e!836383 () SeekEntryResult!12373)

(assert (=> b!1492967 (= e!836382 e!836383)))

(declare-fun lt!650797 () (_ BitVec 64))

(declare-fun lt!650795 () SeekEntryResult!12373)

(assert (=> b!1492967 (= lt!650797 (select (arr!48110 lt!650759) (index!51885 lt!650795)))))

(declare-fun c!138111 () Bool)

(assert (=> b!1492967 (= c!138111 (= lt!650797 lt!650764))))

(declare-fun e!836384 () SeekEntryResult!12373)

(declare-fun b!1492968 () Bool)

(assert (=> b!1492968 (= e!836384 (seekKeyOrZeroReturnVacant!0 (x!133476 lt!650795) (index!51885 lt!650795) (index!51885 lt!650795) lt!650764 lt!650759 mask!2687))))

(declare-fun b!1492969 () Bool)

(assert (=> b!1492969 (= e!836384 (MissingZero!12373 (index!51885 lt!650795)))))

(declare-fun b!1492970 () Bool)

(assert (=> b!1492970 (= e!836383 (Found!12373 (index!51885 lt!650795)))))

(declare-fun b!1492971 () Bool)

(assert (=> b!1492971 (= e!836382 Undefined!12373)))

(declare-fun d!156875 () Bool)

(declare-fun lt!650796 () SeekEntryResult!12373)

(assert (=> d!156875 (and (or ((_ is Undefined!12373) lt!650796) (not ((_ is Found!12373) lt!650796)) (and (bvsge (index!51884 lt!650796) #b00000000000000000000000000000000) (bvslt (index!51884 lt!650796) (size!48661 lt!650759)))) (or ((_ is Undefined!12373) lt!650796) ((_ is Found!12373) lt!650796) (not ((_ is MissingZero!12373) lt!650796)) (and (bvsge (index!51883 lt!650796) #b00000000000000000000000000000000) (bvslt (index!51883 lt!650796) (size!48661 lt!650759)))) (or ((_ is Undefined!12373) lt!650796) ((_ is Found!12373) lt!650796) ((_ is MissingZero!12373) lt!650796) (not ((_ is MissingVacant!12373) lt!650796)) (and (bvsge (index!51886 lt!650796) #b00000000000000000000000000000000) (bvslt (index!51886 lt!650796) (size!48661 lt!650759)))) (or ((_ is Undefined!12373) lt!650796) (ite ((_ is Found!12373) lt!650796) (= (select (arr!48110 lt!650759) (index!51884 lt!650796)) lt!650764) (ite ((_ is MissingZero!12373) lt!650796) (= (select (arr!48110 lt!650759) (index!51883 lt!650796)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12373) lt!650796) (= (select (arr!48110 lt!650759) (index!51886 lt!650796)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156875 (= lt!650796 e!836382)))

(declare-fun c!138112 () Bool)

(assert (=> d!156875 (= c!138112 (and ((_ is Intermediate!12373) lt!650795) (undefined!13185 lt!650795)))))

(assert (=> d!156875 (= lt!650795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650764 mask!2687) lt!650764 lt!650759 mask!2687))))

(assert (=> d!156875 (validMask!0 mask!2687)))

(assert (=> d!156875 (= (seekEntryOrOpen!0 lt!650764 lt!650759 mask!2687) lt!650796)))

(declare-fun b!1492972 () Bool)

(declare-fun c!138113 () Bool)

(assert (=> b!1492972 (= c!138113 (= lt!650797 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492972 (= e!836383 e!836384)))

(assert (= (and d!156875 c!138112) b!1492971))

(assert (= (and d!156875 (not c!138112)) b!1492967))

(assert (= (and b!1492967 c!138111) b!1492970))

(assert (= (and b!1492967 (not c!138111)) b!1492972))

(assert (= (and b!1492972 c!138113) b!1492969))

(assert (= (and b!1492972 (not c!138113)) b!1492968))

(declare-fun m!1376969 () Bool)

(assert (=> b!1492967 m!1376969))

(declare-fun m!1376971 () Bool)

(assert (=> b!1492968 m!1376971))

(assert (=> d!156875 m!1376893))

(declare-fun m!1376973 () Bool)

(assert (=> d!156875 m!1376973))

(assert (=> d!156875 m!1376879))

(assert (=> d!156875 m!1376881))

(declare-fun m!1376975 () Bool)

(assert (=> d!156875 m!1376975))

(assert (=> d!156875 m!1376879))

(declare-fun m!1376977 () Bool)

(assert (=> d!156875 m!1376977))

(assert (=> b!1492867 d!156875))

(declare-fun d!156877 () Bool)

(assert (=> d!156877 (= (validKeyInArray!0 (select (arr!48110 a!2862) i!1006)) (and (not (= (select (arr!48110 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48110 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1492866 d!156877))

(declare-fun d!156879 () Bool)

(declare-fun lt!650800 () (_ BitVec 32))

(assert (=> d!156879 (and (bvsge lt!650800 #b00000000000000000000000000000000) (bvslt lt!650800 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156879 (= lt!650800 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156879 (validMask!0 mask!2687)))

(assert (=> d!156879 (= (nextIndex!0 index!646 x!665 mask!2687) lt!650800)))

(declare-fun bs!42869 () Bool)

(assert (= bs!42869 d!156879))

(declare-fun m!1376979 () Bool)

(assert (=> bs!42869 m!1376979))

(assert (=> bs!42869 m!1376893))

(assert (=> b!1492876 d!156879))

(declare-fun call!67959 () Bool)

(declare-fun bm!67956 () Bool)

(assert (=> bm!67956 (= call!67959 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!156881 () Bool)

(declare-fun res!1015812 () Bool)

(declare-fun e!836393 () Bool)

(assert (=> d!156881 (=> res!1015812 e!836393)))

(assert (=> d!156881 (= res!1015812 (bvsge j!93 (size!48661 a!2862)))))

(assert (=> d!156881 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!836393)))

(declare-fun b!1492981 () Bool)

(declare-fun e!836392 () Bool)

(assert (=> b!1492981 (= e!836392 call!67959)))

(declare-fun b!1492982 () Bool)

(declare-fun e!836391 () Bool)

(assert (=> b!1492982 (= e!836392 e!836391)))

(declare-fun lt!650808 () (_ BitVec 64))

(assert (=> b!1492982 (= lt!650808 (select (arr!48110 a!2862) j!93))))

(declare-fun lt!650807 () Unit!50034)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99689 (_ BitVec 64) (_ BitVec 32)) Unit!50034)

(assert (=> b!1492982 (= lt!650807 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!650808 j!93))))

(declare-fun arrayContainsKey!0 (array!99689 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1492982 (arrayContainsKey!0 a!2862 lt!650808 #b00000000000000000000000000000000)))

(declare-fun lt!650809 () Unit!50034)

(assert (=> b!1492982 (= lt!650809 lt!650807)))

(declare-fun res!1015811 () Bool)

(assert (=> b!1492982 (= res!1015811 (= (seekEntryOrOpen!0 (select (arr!48110 a!2862) j!93) a!2862 mask!2687) (Found!12373 j!93)))))

(assert (=> b!1492982 (=> (not res!1015811) (not e!836391))))

(declare-fun b!1492983 () Bool)

(assert (=> b!1492983 (= e!836391 call!67959)))

(declare-fun b!1492984 () Bool)

(assert (=> b!1492984 (= e!836393 e!836392)))

(declare-fun c!138116 () Bool)

(assert (=> b!1492984 (= c!138116 (validKeyInArray!0 (select (arr!48110 a!2862) j!93)))))

(assert (= (and d!156881 (not res!1015812)) b!1492984))

(assert (= (and b!1492984 c!138116) b!1492982))

(assert (= (and b!1492984 (not c!138116)) b!1492981))

(assert (= (and b!1492982 res!1015811) b!1492983))

(assert (= (or b!1492983 b!1492981) bm!67956))

(declare-fun m!1376981 () Bool)

(assert (=> bm!67956 m!1376981))

(assert (=> b!1492982 m!1376859))

(declare-fun m!1376983 () Bool)

(assert (=> b!1492982 m!1376983))

(declare-fun m!1376985 () Bool)

(assert (=> b!1492982 m!1376985))

(assert (=> b!1492982 m!1376859))

(assert (=> b!1492982 m!1376885))

(assert (=> b!1492984 m!1376859))

(assert (=> b!1492984 m!1376859))

(assert (=> b!1492984 m!1376903))

(assert (=> b!1492865 d!156881))

(declare-fun d!156883 () Bool)

(assert (=> d!156883 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!650815 () Unit!50034)

(declare-fun choose!38 (array!99689 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50034)

(assert (=> d!156883 (= lt!650815 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156883 (validMask!0 mask!2687)))

(assert (=> d!156883 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!650815)))

(declare-fun bs!42871 () Bool)

(assert (= bs!42871 d!156883))

(assert (=> bs!42871 m!1376869))

(declare-fun m!1376989 () Bool)

(assert (=> bs!42871 m!1376989))

(assert (=> bs!42871 m!1376893))

(assert (=> b!1492865 d!156883))

(declare-fun b!1493039 () Bool)

(declare-fun e!836427 () Bool)

(declare-fun e!836426 () Bool)

(assert (=> b!1493039 (= e!836427 e!836426)))

(declare-fun res!1015825 () Bool)

(declare-fun lt!650834 () SeekEntryResult!12373)

(assert (=> b!1493039 (= res!1015825 (and ((_ is Intermediate!12373) lt!650834) (not (undefined!13185 lt!650834)) (bvslt (x!133476 lt!650834) #b01111111111111111111111111111110) (bvsge (x!133476 lt!650834) #b00000000000000000000000000000000) (bvsge (x!133476 lt!650834) #b00000000000000000000000000000000)))))

(assert (=> b!1493039 (=> (not res!1015825) (not e!836426))))

(declare-fun d!156889 () Bool)

(assert (=> d!156889 e!836427))

(declare-fun c!138140 () Bool)

(assert (=> d!156889 (= c!138140 (and ((_ is Intermediate!12373) lt!650834) (undefined!13185 lt!650834)))))

(declare-fun e!836424 () SeekEntryResult!12373)

(assert (=> d!156889 (= lt!650834 e!836424)))

(declare-fun c!138138 () Bool)

(assert (=> d!156889 (= c!138138 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!650833 () (_ BitVec 64))

(assert (=> d!156889 (= lt!650833 (select (arr!48110 a!2862) (toIndex!0 (select (arr!48110 a!2862) j!93) mask!2687)))))

(assert (=> d!156889 (validMask!0 mask!2687)))

(assert (=> d!156889 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48110 a!2862) j!93) mask!2687) (select (arr!48110 a!2862) j!93) a!2862 mask!2687) lt!650834)))

(declare-fun b!1493040 () Bool)

(declare-fun e!836423 () SeekEntryResult!12373)

(assert (=> b!1493040 (= e!836423 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48110 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48110 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1493041 () Bool)

(assert (=> b!1493041 (= e!836423 (Intermediate!12373 false (toIndex!0 (select (arr!48110 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1493042 () Bool)

(assert (=> b!1493042 (and (bvsge (index!51885 lt!650834) #b00000000000000000000000000000000) (bvslt (index!51885 lt!650834) (size!48661 a!2862)))))

(declare-fun res!1015827 () Bool)

(assert (=> b!1493042 (= res!1015827 (= (select (arr!48110 a!2862) (index!51885 lt!650834)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836425 () Bool)

(assert (=> b!1493042 (=> res!1015827 e!836425)))

(declare-fun b!1493043 () Bool)

(assert (=> b!1493043 (and (bvsge (index!51885 lt!650834) #b00000000000000000000000000000000) (bvslt (index!51885 lt!650834) (size!48661 a!2862)))))

(assert (=> b!1493043 (= e!836425 (= (select (arr!48110 a!2862) (index!51885 lt!650834)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1493044 () Bool)

(assert (=> b!1493044 (= e!836424 e!836423)))

(declare-fun c!138139 () Bool)

(assert (=> b!1493044 (= c!138139 (or (= lt!650833 (select (arr!48110 a!2862) j!93)) (= (bvadd lt!650833 lt!650833) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1493045 () Bool)

(assert (=> b!1493045 (= e!836424 (Intermediate!12373 true (toIndex!0 (select (arr!48110 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1493046 () Bool)

(assert (=> b!1493046 (and (bvsge (index!51885 lt!650834) #b00000000000000000000000000000000) (bvslt (index!51885 lt!650834) (size!48661 a!2862)))))

(declare-fun res!1015826 () Bool)

(assert (=> b!1493046 (= res!1015826 (= (select (arr!48110 a!2862) (index!51885 lt!650834)) (select (arr!48110 a!2862) j!93)))))

(assert (=> b!1493046 (=> res!1015826 e!836425)))

(assert (=> b!1493046 (= e!836426 e!836425)))

(declare-fun b!1493047 () Bool)

(assert (=> b!1493047 (= e!836427 (bvsge (x!133476 lt!650834) #b01111111111111111111111111111110))))

(assert (= (and d!156889 c!138138) b!1493045))

(assert (= (and d!156889 (not c!138138)) b!1493044))

(assert (= (and b!1493044 c!138139) b!1493041))

(assert (= (and b!1493044 (not c!138139)) b!1493040))

(assert (= (and d!156889 c!138140) b!1493047))

(assert (= (and d!156889 (not c!138140)) b!1493039))

(assert (= (and b!1493039 res!1015825) b!1493046))

(assert (= (and b!1493046 (not res!1015826)) b!1493042))

(assert (= (and b!1493042 (not res!1015827)) b!1493043))

(declare-fun m!1377001 () Bool)

(assert (=> b!1493042 m!1377001))

(assert (=> b!1493043 m!1377001))

(assert (=> d!156889 m!1376889))

(declare-fun m!1377003 () Bool)

(assert (=> d!156889 m!1377003))

(assert (=> d!156889 m!1376893))

(assert (=> b!1493040 m!1376889))

(declare-fun m!1377005 () Bool)

(assert (=> b!1493040 m!1377005))

(assert (=> b!1493040 m!1377005))

(assert (=> b!1493040 m!1376859))

(declare-fun m!1377007 () Bool)

(assert (=> b!1493040 m!1377007))

(assert (=> b!1493046 m!1377001))

(assert (=> b!1492875 d!156889))

(declare-fun d!156899 () Bool)

(declare-fun lt!650844 () (_ BitVec 32))

(declare-fun lt!650843 () (_ BitVec 32))

(assert (=> d!156899 (= lt!650844 (bvmul (bvxor lt!650843 (bvlshr lt!650843 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156899 (= lt!650843 ((_ extract 31 0) (bvand (bvxor (select (arr!48110 a!2862) j!93) (bvlshr (select (arr!48110 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156899 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1015828 (let ((h!36175 ((_ extract 31 0) (bvand (bvxor (select (arr!48110 a!2862) j!93) (bvlshr (select (arr!48110 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133485 (bvmul (bvxor h!36175 (bvlshr h!36175 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133485 (bvlshr x!133485 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1015828 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1015828 #b00000000000000000000000000000000))))))

(assert (=> d!156899 (= (toIndex!0 (select (arr!48110 a!2862) j!93) mask!2687) (bvand (bvxor lt!650844 (bvlshr lt!650844 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1492875 d!156899))

(declare-fun b!1493066 () Bool)

(declare-fun e!836442 () Bool)

(declare-fun e!836441 () Bool)

(assert (=> b!1493066 (= e!836442 e!836441)))

(declare-fun res!1015836 () Bool)

(declare-fun lt!650846 () SeekEntryResult!12373)

(assert (=> b!1493066 (= res!1015836 (and ((_ is Intermediate!12373) lt!650846) (not (undefined!13185 lt!650846)) (bvslt (x!133476 lt!650846) #b01111111111111111111111111111110) (bvsge (x!133476 lt!650846) #b00000000000000000000000000000000) (bvsge (x!133476 lt!650846) x!665)))))

(assert (=> b!1493066 (=> (not res!1015836) (not e!836441))))

(declare-fun d!156905 () Bool)

(assert (=> d!156905 e!836442))

(declare-fun c!138149 () Bool)

(assert (=> d!156905 (= c!138149 (and ((_ is Intermediate!12373) lt!650846) (undefined!13185 lt!650846)))))

(declare-fun e!836439 () SeekEntryResult!12373)

(assert (=> d!156905 (= lt!650846 e!836439)))

(declare-fun c!138147 () Bool)

(assert (=> d!156905 (= c!138147 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!650845 () (_ BitVec 64))

(assert (=> d!156905 (= lt!650845 (select (arr!48110 a!2862) index!646))))

(assert (=> d!156905 (validMask!0 mask!2687)))

(assert (=> d!156905 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48110 a!2862) j!93) a!2862 mask!2687) lt!650846)))

(declare-fun b!1493067 () Bool)

(declare-fun e!836438 () SeekEntryResult!12373)

(assert (=> b!1493067 (= e!836438 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48110 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1493068 () Bool)

(assert (=> b!1493068 (= e!836438 (Intermediate!12373 false index!646 x!665))))

(declare-fun b!1493069 () Bool)

(assert (=> b!1493069 (and (bvsge (index!51885 lt!650846) #b00000000000000000000000000000000) (bvslt (index!51885 lt!650846) (size!48661 a!2862)))))

(declare-fun res!1015838 () Bool)

(assert (=> b!1493069 (= res!1015838 (= (select (arr!48110 a!2862) (index!51885 lt!650846)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836440 () Bool)

(assert (=> b!1493069 (=> res!1015838 e!836440)))

(declare-fun b!1493070 () Bool)

(assert (=> b!1493070 (and (bvsge (index!51885 lt!650846) #b00000000000000000000000000000000) (bvslt (index!51885 lt!650846) (size!48661 a!2862)))))

(assert (=> b!1493070 (= e!836440 (= (select (arr!48110 a!2862) (index!51885 lt!650846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1493071 () Bool)

(assert (=> b!1493071 (= e!836439 e!836438)))

(declare-fun c!138148 () Bool)

(assert (=> b!1493071 (= c!138148 (or (= lt!650845 (select (arr!48110 a!2862) j!93)) (= (bvadd lt!650845 lt!650845) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1493072 () Bool)

(assert (=> b!1493072 (= e!836439 (Intermediate!12373 true index!646 x!665))))

(declare-fun b!1493073 () Bool)

(assert (=> b!1493073 (and (bvsge (index!51885 lt!650846) #b00000000000000000000000000000000) (bvslt (index!51885 lt!650846) (size!48661 a!2862)))))

(declare-fun res!1015837 () Bool)

(assert (=> b!1493073 (= res!1015837 (= (select (arr!48110 a!2862) (index!51885 lt!650846)) (select (arr!48110 a!2862) j!93)))))

(assert (=> b!1493073 (=> res!1015837 e!836440)))

(assert (=> b!1493073 (= e!836441 e!836440)))

(declare-fun b!1493074 () Bool)

(assert (=> b!1493074 (= e!836442 (bvsge (x!133476 lt!650846) #b01111111111111111111111111111110))))

(assert (= (and d!156905 c!138147) b!1493072))

(assert (= (and d!156905 (not c!138147)) b!1493071))

(assert (= (and b!1493071 c!138148) b!1493068))

(assert (= (and b!1493071 (not c!138148)) b!1493067))

(assert (= (and d!156905 c!138149) b!1493074))

(assert (= (and d!156905 (not c!138149)) b!1493066))

(assert (= (and b!1493066 res!1015836) b!1493073))

(assert (= (and b!1493073 (not res!1015837)) b!1493069))

(assert (= (and b!1493069 (not res!1015838)) b!1493070))

(declare-fun m!1377021 () Bool)

(assert (=> b!1493069 m!1377021))

(assert (=> b!1493070 m!1377021))

(assert (=> d!156905 m!1376867))

(assert (=> d!156905 m!1376893))

(assert (=> b!1493067 m!1376897))

(assert (=> b!1493067 m!1376897))

(assert (=> b!1493067 m!1376859))

(declare-fun m!1377023 () Bool)

(assert (=> b!1493067 m!1377023))

(assert (=> b!1493073 m!1377021))

(assert (=> b!1492874 d!156905))

(declare-fun d!156907 () Bool)

(assert (=> d!156907 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!127062 d!156907))

(declare-fun d!156911 () Bool)

(assert (=> d!156911 (= (array_inv!37055 a!2862) (bvsge (size!48661 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!127062 d!156911))

(declare-fun b!1493103 () Bool)

(declare-fun e!836460 () Bool)

(declare-fun call!67962 () Bool)

(assert (=> b!1493103 (= e!836460 call!67962)))

(declare-fun bm!67959 () Bool)

(declare-fun c!138161 () Bool)

(assert (=> bm!67959 (= call!67962 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!138161 (Cons!34787 (select (arr!48110 a!2862) #b00000000000000000000000000000000) Nil!34788) Nil!34788)))))

(declare-fun b!1493104 () Bool)

(declare-fun e!836462 () Bool)

(declare-fun contains!9937 (List!34791 (_ BitVec 64)) Bool)

(assert (=> b!1493104 (= e!836462 (contains!9937 Nil!34788 (select (arr!48110 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1493105 () Bool)

(assert (=> b!1493105 (= e!836460 call!67962)))

(declare-fun b!1493106 () Bool)

(declare-fun e!836463 () Bool)

(declare-fun e!836461 () Bool)

(assert (=> b!1493106 (= e!836463 e!836461)))

(declare-fun res!1015847 () Bool)

(assert (=> b!1493106 (=> (not res!1015847) (not e!836461))))

(assert (=> b!1493106 (= res!1015847 (not e!836462))))

(declare-fun res!1015846 () Bool)

(assert (=> b!1493106 (=> (not res!1015846) (not e!836462))))

(assert (=> b!1493106 (= res!1015846 (validKeyInArray!0 (select (arr!48110 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!156915 () Bool)

(declare-fun res!1015845 () Bool)

(assert (=> d!156915 (=> res!1015845 e!836463)))

(assert (=> d!156915 (= res!1015845 (bvsge #b00000000000000000000000000000000 (size!48661 a!2862)))))

(assert (=> d!156915 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34788) e!836463)))

(declare-fun b!1493107 () Bool)

(assert (=> b!1493107 (= e!836461 e!836460)))

(assert (=> b!1493107 (= c!138161 (validKeyInArray!0 (select (arr!48110 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156915 (not res!1015845)) b!1493106))

(assert (= (and b!1493106 res!1015846) b!1493104))

(assert (= (and b!1493106 res!1015847) b!1493107))

(assert (= (and b!1493107 c!138161) b!1493103))

(assert (= (and b!1493107 (not c!138161)) b!1493105))

(assert (= (or b!1493103 b!1493105) bm!67959))

(declare-fun m!1377035 () Bool)

(assert (=> bm!67959 m!1377035))

(declare-fun m!1377037 () Bool)

(assert (=> bm!67959 m!1377037))

(assert (=> b!1493104 m!1377035))

(assert (=> b!1493104 m!1377035))

(declare-fun m!1377039 () Bool)

(assert (=> b!1493104 m!1377039))

(assert (=> b!1493106 m!1377035))

(assert (=> b!1493106 m!1377035))

(declare-fun m!1377041 () Bool)

(assert (=> b!1493106 m!1377041))

(assert (=> b!1493107 m!1377035))

(assert (=> b!1493107 m!1377035))

(assert (=> b!1493107 m!1377041))

(assert (=> b!1492873 d!156915))

(declare-fun bm!67960 () Bool)

(declare-fun call!67963 () Bool)

(assert (=> bm!67960 (= call!67963 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!156921 () Bool)

(declare-fun res!1015849 () Bool)

(declare-fun e!836466 () Bool)

(assert (=> d!156921 (=> res!1015849 e!836466)))

(assert (=> d!156921 (= res!1015849 (bvsge #b00000000000000000000000000000000 (size!48661 a!2862)))))

(assert (=> d!156921 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!836466)))

(declare-fun b!1493108 () Bool)

(declare-fun e!836465 () Bool)

(assert (=> b!1493108 (= e!836465 call!67963)))

(declare-fun b!1493109 () Bool)

(declare-fun e!836464 () Bool)

(assert (=> b!1493109 (= e!836465 e!836464)))

(declare-fun lt!650863 () (_ BitVec 64))

(assert (=> b!1493109 (= lt!650863 (select (arr!48110 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!650862 () Unit!50034)

(assert (=> b!1493109 (= lt!650862 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!650863 #b00000000000000000000000000000000))))

(assert (=> b!1493109 (arrayContainsKey!0 a!2862 lt!650863 #b00000000000000000000000000000000)))

(declare-fun lt!650864 () Unit!50034)

(assert (=> b!1493109 (= lt!650864 lt!650862)))

(declare-fun res!1015848 () Bool)

(assert (=> b!1493109 (= res!1015848 (= (seekEntryOrOpen!0 (select (arr!48110 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12373 #b00000000000000000000000000000000)))))

(assert (=> b!1493109 (=> (not res!1015848) (not e!836464))))

(declare-fun b!1493110 () Bool)

(assert (=> b!1493110 (= e!836464 call!67963)))

(declare-fun b!1493111 () Bool)

(assert (=> b!1493111 (= e!836466 e!836465)))

(declare-fun c!138162 () Bool)

(assert (=> b!1493111 (= c!138162 (validKeyInArray!0 (select (arr!48110 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156921 (not res!1015849)) b!1493111))

(assert (= (and b!1493111 c!138162) b!1493109))

(assert (= (and b!1493111 (not c!138162)) b!1493108))

(assert (= (and b!1493109 res!1015848) b!1493110))

(assert (= (or b!1493110 b!1493108) bm!67960))

(declare-fun m!1377043 () Bool)

(assert (=> bm!67960 m!1377043))

(assert (=> b!1493109 m!1377035))

(declare-fun m!1377045 () Bool)

(assert (=> b!1493109 m!1377045))

(declare-fun m!1377047 () Bool)

(assert (=> b!1493109 m!1377047))

(assert (=> b!1493109 m!1377035))

(declare-fun m!1377049 () Bool)

(assert (=> b!1493109 m!1377049))

(assert (=> b!1493111 m!1377035))

(assert (=> b!1493111 m!1377035))

(assert (=> b!1493111 m!1377041))

(assert (=> b!1492872 d!156921))

(declare-fun d!156923 () Bool)

(assert (=> d!156923 (= (validKeyInArray!0 (select (arr!48110 a!2862) j!93)) (and (not (= (select (arr!48110 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48110 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1492871 d!156923))

(declare-fun b!1493112 () Bool)

(declare-fun e!836471 () Bool)

(declare-fun e!836470 () Bool)

(assert (=> b!1493112 (= e!836471 e!836470)))

(declare-fun res!1015850 () Bool)

(declare-fun lt!650866 () SeekEntryResult!12373)

(assert (=> b!1493112 (= res!1015850 (and ((_ is Intermediate!12373) lt!650866) (not (undefined!13185 lt!650866)) (bvslt (x!133476 lt!650866) #b01111111111111111111111111111110) (bvsge (x!133476 lt!650866) #b00000000000000000000000000000000) (bvsge (x!133476 lt!650866) #b00000000000000000000000000000000)))))

(assert (=> b!1493112 (=> (not res!1015850) (not e!836470))))

(declare-fun d!156925 () Bool)

(assert (=> d!156925 e!836471))

(declare-fun c!138165 () Bool)

(assert (=> d!156925 (= c!138165 (and ((_ is Intermediate!12373) lt!650866) (undefined!13185 lt!650866)))))

(declare-fun e!836468 () SeekEntryResult!12373)

(assert (=> d!156925 (= lt!650866 e!836468)))

(declare-fun c!138163 () Bool)

(assert (=> d!156925 (= c!138163 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!650865 () (_ BitVec 64))

(assert (=> d!156925 (= lt!650865 (select (arr!48110 lt!650759) (toIndex!0 lt!650764 mask!2687)))))

(assert (=> d!156925 (validMask!0 mask!2687)))

(assert (=> d!156925 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650764 mask!2687) lt!650764 lt!650759 mask!2687) lt!650866)))

(declare-fun e!836467 () SeekEntryResult!12373)

(declare-fun b!1493113 () Bool)

(assert (=> b!1493113 (= e!836467 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!650764 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!650764 lt!650759 mask!2687))))

(declare-fun b!1493114 () Bool)

(assert (=> b!1493114 (= e!836467 (Intermediate!12373 false (toIndex!0 lt!650764 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1493115 () Bool)

(assert (=> b!1493115 (and (bvsge (index!51885 lt!650866) #b00000000000000000000000000000000) (bvslt (index!51885 lt!650866) (size!48661 lt!650759)))))

(declare-fun res!1015852 () Bool)

(assert (=> b!1493115 (= res!1015852 (= (select (arr!48110 lt!650759) (index!51885 lt!650866)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836469 () Bool)

(assert (=> b!1493115 (=> res!1015852 e!836469)))

(declare-fun b!1493116 () Bool)

(assert (=> b!1493116 (and (bvsge (index!51885 lt!650866) #b00000000000000000000000000000000) (bvslt (index!51885 lt!650866) (size!48661 lt!650759)))))

(assert (=> b!1493116 (= e!836469 (= (select (arr!48110 lt!650759) (index!51885 lt!650866)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1493117 () Bool)

(assert (=> b!1493117 (= e!836468 e!836467)))

(declare-fun c!138164 () Bool)

(assert (=> b!1493117 (= c!138164 (or (= lt!650865 lt!650764) (= (bvadd lt!650865 lt!650865) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1493118 () Bool)

(assert (=> b!1493118 (= e!836468 (Intermediate!12373 true (toIndex!0 lt!650764 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1493119 () Bool)

(assert (=> b!1493119 (and (bvsge (index!51885 lt!650866) #b00000000000000000000000000000000) (bvslt (index!51885 lt!650866) (size!48661 lt!650759)))))

(declare-fun res!1015851 () Bool)

(assert (=> b!1493119 (= res!1015851 (= (select (arr!48110 lt!650759) (index!51885 lt!650866)) lt!650764))))

(assert (=> b!1493119 (=> res!1015851 e!836469)))

(assert (=> b!1493119 (= e!836470 e!836469)))

(declare-fun b!1493120 () Bool)

(assert (=> b!1493120 (= e!836471 (bvsge (x!133476 lt!650866) #b01111111111111111111111111111110))))

(assert (= (and d!156925 c!138163) b!1493118))

(assert (= (and d!156925 (not c!138163)) b!1493117))

(assert (= (and b!1493117 c!138164) b!1493114))

(assert (= (and b!1493117 (not c!138164)) b!1493113))

(assert (= (and d!156925 c!138165) b!1493120))

(assert (= (and d!156925 (not c!138165)) b!1493112))

(assert (= (and b!1493112 res!1015850) b!1493119))

(assert (= (and b!1493119 (not res!1015851)) b!1493115))

(assert (= (and b!1493115 (not res!1015852)) b!1493116))

(declare-fun m!1377051 () Bool)

(assert (=> b!1493115 m!1377051))

(assert (=> b!1493116 m!1377051))

(assert (=> d!156925 m!1376879))

(declare-fun m!1377053 () Bool)

(assert (=> d!156925 m!1377053))

(assert (=> d!156925 m!1376893))

(assert (=> b!1493113 m!1376879))

(declare-fun m!1377055 () Bool)

(assert (=> b!1493113 m!1377055))

(assert (=> b!1493113 m!1377055))

(declare-fun m!1377057 () Bool)

(assert (=> b!1493113 m!1377057))

(assert (=> b!1493119 m!1377051))

(assert (=> b!1492880 d!156925))

(declare-fun d!156927 () Bool)

(declare-fun lt!650868 () (_ BitVec 32))

(declare-fun lt!650867 () (_ BitVec 32))

(assert (=> d!156927 (= lt!650868 (bvmul (bvxor lt!650867 (bvlshr lt!650867 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156927 (= lt!650867 ((_ extract 31 0) (bvand (bvxor lt!650764 (bvlshr lt!650764 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156927 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1015828 (let ((h!36175 ((_ extract 31 0) (bvand (bvxor lt!650764 (bvlshr lt!650764 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133485 (bvmul (bvxor h!36175 (bvlshr h!36175 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133485 (bvlshr x!133485 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1015828 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1015828 #b00000000000000000000000000000000))))))

(assert (=> d!156927 (= (toIndex!0 lt!650764 mask!2687) (bvand (bvxor lt!650868 (bvlshr lt!650868 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1492880 d!156927))

(declare-fun b!1493121 () Bool)

(declare-fun e!836472 () SeekEntryResult!12373)

(declare-fun e!836473 () SeekEntryResult!12373)

(assert (=> b!1493121 (= e!836472 e!836473)))

(declare-fun lt!650871 () (_ BitVec 64))

(declare-fun lt!650869 () SeekEntryResult!12373)

(assert (=> b!1493121 (= lt!650871 (select (arr!48110 a!2862) (index!51885 lt!650869)))))

(declare-fun c!138166 () Bool)

(assert (=> b!1493121 (= c!138166 (= lt!650871 (select (arr!48110 a!2862) j!93)))))

(declare-fun b!1493122 () Bool)

(declare-fun e!836474 () SeekEntryResult!12373)

(assert (=> b!1493122 (= e!836474 (seekKeyOrZeroReturnVacant!0 (x!133476 lt!650869) (index!51885 lt!650869) (index!51885 lt!650869) (select (arr!48110 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1493123 () Bool)

(assert (=> b!1493123 (= e!836474 (MissingZero!12373 (index!51885 lt!650869)))))

(declare-fun b!1493124 () Bool)

(assert (=> b!1493124 (= e!836473 (Found!12373 (index!51885 lt!650869)))))

(declare-fun b!1493125 () Bool)

(assert (=> b!1493125 (= e!836472 Undefined!12373)))

(declare-fun d!156931 () Bool)

(declare-fun lt!650870 () SeekEntryResult!12373)

(assert (=> d!156931 (and (or ((_ is Undefined!12373) lt!650870) (not ((_ is Found!12373) lt!650870)) (and (bvsge (index!51884 lt!650870) #b00000000000000000000000000000000) (bvslt (index!51884 lt!650870) (size!48661 a!2862)))) (or ((_ is Undefined!12373) lt!650870) ((_ is Found!12373) lt!650870) (not ((_ is MissingZero!12373) lt!650870)) (and (bvsge (index!51883 lt!650870) #b00000000000000000000000000000000) (bvslt (index!51883 lt!650870) (size!48661 a!2862)))) (or ((_ is Undefined!12373) lt!650870) ((_ is Found!12373) lt!650870) ((_ is MissingZero!12373) lt!650870) (not ((_ is MissingVacant!12373) lt!650870)) (and (bvsge (index!51886 lt!650870) #b00000000000000000000000000000000) (bvslt (index!51886 lt!650870) (size!48661 a!2862)))) (or ((_ is Undefined!12373) lt!650870) (ite ((_ is Found!12373) lt!650870) (= (select (arr!48110 a!2862) (index!51884 lt!650870)) (select (arr!48110 a!2862) j!93)) (ite ((_ is MissingZero!12373) lt!650870) (= (select (arr!48110 a!2862) (index!51883 lt!650870)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12373) lt!650870) (= (select (arr!48110 a!2862) (index!51886 lt!650870)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156931 (= lt!650870 e!836472)))

(declare-fun c!138167 () Bool)

(assert (=> d!156931 (= c!138167 (and ((_ is Intermediate!12373) lt!650869) (undefined!13185 lt!650869)))))

(assert (=> d!156931 (= lt!650869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48110 a!2862) j!93) mask!2687) (select (arr!48110 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!156931 (validMask!0 mask!2687)))

(assert (=> d!156931 (= (seekEntryOrOpen!0 (select (arr!48110 a!2862) j!93) a!2862 mask!2687) lt!650870)))

(declare-fun b!1493126 () Bool)

(declare-fun c!138168 () Bool)

(assert (=> b!1493126 (= c!138168 (= lt!650871 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493126 (= e!836473 e!836474)))

(assert (= (and d!156931 c!138167) b!1493125))

(assert (= (and d!156931 (not c!138167)) b!1493121))

(assert (= (and b!1493121 c!138166) b!1493124))

(assert (= (and b!1493121 (not c!138166)) b!1493126))

(assert (= (and b!1493126 c!138168) b!1493123))

(assert (= (and b!1493126 (not c!138168)) b!1493122))

(declare-fun m!1377059 () Bool)

(assert (=> b!1493121 m!1377059))

(assert (=> b!1493122 m!1376859))

(declare-fun m!1377061 () Bool)

(assert (=> b!1493122 m!1377061))

(assert (=> d!156931 m!1376893))

(declare-fun m!1377063 () Bool)

(assert (=> d!156931 m!1377063))

(assert (=> d!156931 m!1376889))

(assert (=> d!156931 m!1376859))

(assert (=> d!156931 m!1376891))

(declare-fun m!1377065 () Bool)

(assert (=> d!156931 m!1377065))

(assert (=> d!156931 m!1376859))

(assert (=> d!156931 m!1376889))

(declare-fun m!1377067 () Bool)

(assert (=> d!156931 m!1377067))

(assert (=> b!1492869 d!156931))

(declare-fun b!1493127 () Bool)

(declare-fun e!836479 () Bool)

(declare-fun e!836478 () Bool)

(assert (=> b!1493127 (= e!836479 e!836478)))

(declare-fun res!1015853 () Bool)

(declare-fun lt!650873 () SeekEntryResult!12373)

(assert (=> b!1493127 (= res!1015853 (and ((_ is Intermediate!12373) lt!650873) (not (undefined!13185 lt!650873)) (bvslt (x!133476 lt!650873) #b01111111111111111111111111111110) (bvsge (x!133476 lt!650873) #b00000000000000000000000000000000) (bvsge (x!133476 lt!650873) x!665)))))

(assert (=> b!1493127 (=> (not res!1015853) (not e!836478))))

(declare-fun d!156935 () Bool)

(assert (=> d!156935 e!836479))

(declare-fun c!138171 () Bool)

(assert (=> d!156935 (= c!138171 (and ((_ is Intermediate!12373) lt!650873) (undefined!13185 lt!650873)))))

(declare-fun e!836476 () SeekEntryResult!12373)

(assert (=> d!156935 (= lt!650873 e!836476)))

(declare-fun c!138169 () Bool)

(assert (=> d!156935 (= c!138169 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!650872 () (_ BitVec 64))

(assert (=> d!156935 (= lt!650872 (select (arr!48110 lt!650759) index!646))))

(assert (=> d!156935 (validMask!0 mask!2687)))

(assert (=> d!156935 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650764 lt!650759 mask!2687) lt!650873)))

(declare-fun e!836475 () SeekEntryResult!12373)

(declare-fun b!1493128 () Bool)

(assert (=> b!1493128 (= e!836475 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!650764 lt!650759 mask!2687))))

(declare-fun b!1493129 () Bool)

(assert (=> b!1493129 (= e!836475 (Intermediate!12373 false index!646 x!665))))

(declare-fun b!1493130 () Bool)

(assert (=> b!1493130 (and (bvsge (index!51885 lt!650873) #b00000000000000000000000000000000) (bvslt (index!51885 lt!650873) (size!48661 lt!650759)))))

(declare-fun res!1015855 () Bool)

(assert (=> b!1493130 (= res!1015855 (= (select (arr!48110 lt!650759) (index!51885 lt!650873)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836477 () Bool)

(assert (=> b!1493130 (=> res!1015855 e!836477)))

(declare-fun b!1493131 () Bool)

(assert (=> b!1493131 (and (bvsge (index!51885 lt!650873) #b00000000000000000000000000000000) (bvslt (index!51885 lt!650873) (size!48661 lt!650759)))))

(assert (=> b!1493131 (= e!836477 (= (select (arr!48110 lt!650759) (index!51885 lt!650873)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1493132 () Bool)

(assert (=> b!1493132 (= e!836476 e!836475)))

(declare-fun c!138170 () Bool)

(assert (=> b!1493132 (= c!138170 (or (= lt!650872 lt!650764) (= (bvadd lt!650872 lt!650872) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1493133 () Bool)

(assert (=> b!1493133 (= e!836476 (Intermediate!12373 true index!646 x!665))))

(declare-fun b!1493134 () Bool)

(assert (=> b!1493134 (and (bvsge (index!51885 lt!650873) #b00000000000000000000000000000000) (bvslt (index!51885 lt!650873) (size!48661 lt!650759)))))

(declare-fun res!1015854 () Bool)

(assert (=> b!1493134 (= res!1015854 (= (select (arr!48110 lt!650759) (index!51885 lt!650873)) lt!650764))))

(assert (=> b!1493134 (=> res!1015854 e!836477)))

(assert (=> b!1493134 (= e!836478 e!836477)))

(declare-fun b!1493135 () Bool)

(assert (=> b!1493135 (= e!836479 (bvsge (x!133476 lt!650873) #b01111111111111111111111111111110))))

(assert (= (and d!156935 c!138169) b!1493133))

(assert (= (and d!156935 (not c!138169)) b!1493132))

(assert (= (and b!1493132 c!138170) b!1493129))

(assert (= (and b!1493132 (not c!138170)) b!1493128))

(assert (= (and d!156935 c!138171) b!1493135))

(assert (= (and d!156935 (not c!138171)) b!1493127))

(assert (= (and b!1493127 res!1015853) b!1493134))

(assert (= (and b!1493134 (not res!1015854)) b!1493130))

(assert (= (and b!1493130 (not res!1015855)) b!1493131))

(declare-fun m!1377069 () Bool)

(assert (=> b!1493130 m!1377069))

(assert (=> b!1493131 m!1377069))

(assert (=> d!156935 m!1376965))

(assert (=> d!156935 m!1376893))

(assert (=> b!1493128 m!1376897))

(assert (=> b!1493128 m!1376897))

(declare-fun m!1377071 () Bool)

(assert (=> b!1493128 m!1377071))

(assert (=> b!1493134 m!1377069))

(assert (=> b!1492878 d!156935))

(check-sat (not b!1493109) (not d!156931) (not bm!67956) (not b!1493104) (not b!1493107) (not d!156883) (not b!1493067) (not b!1493106) (not b!1492982) (not b!1493113) (not b!1493111) (not d!156873) (not d!156925) (not d!156935) (not b!1492953) (not b!1492984) (not d!156889) (not b!1492968) (not d!156875) (not bm!67959) (not b!1493122) (not bm!67960) (not b!1493128) (not d!156879) (not d!156905) (not b!1493040))
(check-sat)
