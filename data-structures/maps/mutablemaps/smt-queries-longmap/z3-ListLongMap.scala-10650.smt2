; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125082 () Bool)

(assert start!125082)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98447 0))(
  ( (array!98448 (arr!47507 (Array (_ BitVec 32) (_ BitVec 64))) (size!48058 (_ BitVec 32))) )
))
(declare-fun lt!637719 () array!98447)

(declare-fun lt!637723 () (_ BitVec 32))

(declare-fun e!818748 () Bool)

(declare-fun b!1454878 () Bool)

(declare-fun lt!637722 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11782 0))(
  ( (MissingZero!11782 (index!49519 (_ BitVec 32))) (Found!11782 (index!49520 (_ BitVec 32))) (Intermediate!11782 (undefined!12594 Bool) (index!49521 (_ BitVec 32)) (x!131154 (_ BitVec 32))) (Undefined!11782) (MissingVacant!11782 (index!49522 (_ BitVec 32))) )
))
(declare-fun lt!637716 () SeekEntryResult!11782)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98447 (_ BitVec 32)) SeekEntryResult!11782)

(assert (=> b!1454878 (= e!818748 (not (= lt!637716 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637723 lt!637722 lt!637719 mask!2687))))))

(declare-fun b!1454879 () Bool)

(declare-fun res!985749 () Bool)

(declare-fun e!818752 () Bool)

(assert (=> b!1454879 (=> (not res!985749) (not e!818752))))

(declare-fun a!2862 () array!98447)

(declare-datatypes ((List!34188 0))(
  ( (Nil!34185) (Cons!34184 (h!35534 (_ BitVec 64)) (t!48889 List!34188)) )
))
(declare-fun arrayNoDuplicates!0 (array!98447 (_ BitVec 32) List!34188) Bool)

(assert (=> b!1454879 (= res!985749 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34185))))

(declare-fun b!1454880 () Bool)

(declare-fun e!818744 () Bool)

(declare-fun e!818745 () Bool)

(assert (=> b!1454880 (= e!818744 e!818745)))

(declare-fun res!985748 () Bool)

(assert (=> b!1454880 (=> (not res!985748) (not e!818745))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1454880 (= res!985748 (= lt!637716 (Intermediate!11782 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454880 (= lt!637716 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637722 mask!2687) lt!637722 lt!637719 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1454880 (= lt!637722 (select (store (arr!47507 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1454881 () Bool)

(declare-fun e!818747 () Bool)

(assert (=> b!1454881 (= e!818745 (not e!818747))))

(declare-fun res!985745 () Bool)

(assert (=> b!1454881 (=> res!985745 e!818747)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1454881 (= res!985745 (or (and (= (select (arr!47507 a!2862) index!646) (select (store (arr!47507 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47507 a!2862) index!646) (select (arr!47507 a!2862) j!93))) (= (select (arr!47507 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!818749 () Bool)

(assert (=> b!1454881 e!818749))

(declare-fun res!985740 () Bool)

(assert (=> b!1454881 (=> (not res!985740) (not e!818749))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98447 (_ BitVec 32)) Bool)

(assert (=> b!1454881 (= res!985740 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49008 0))(
  ( (Unit!49009) )
))
(declare-fun lt!637721 () Unit!49008)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98447 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49008)

(assert (=> b!1454881 (= lt!637721 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1454882 () Bool)

(declare-fun e!818751 () Bool)

(assert (=> b!1454882 (= e!818751 e!818744)))

(declare-fun res!985747 () Bool)

(assert (=> b!1454882 (=> (not res!985747) (not e!818744))))

(declare-fun lt!637717 () SeekEntryResult!11782)

(assert (=> b!1454882 (= res!985747 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47507 a!2862) j!93) mask!2687) (select (arr!47507 a!2862) j!93) a!2862 mask!2687) lt!637717))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1454882 (= lt!637717 (Intermediate!11782 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1454883 () Bool)

(declare-fun res!985755 () Bool)

(assert (=> b!1454883 (=> (not res!985755) (not e!818745))))

(declare-fun e!818746 () Bool)

(assert (=> b!1454883 (= res!985755 e!818746)))

(declare-fun c!134083 () Bool)

(assert (=> b!1454883 (= c!134083 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1454884 () Bool)

(declare-fun lt!637718 () SeekEntryResult!11782)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98447 (_ BitVec 32)) SeekEntryResult!11782)

(assert (=> b!1454884 (= e!818748 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637723 intermediateAfterIndex!19 lt!637722 lt!637719 mask!2687) lt!637718)))))

(declare-fun b!1454885 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98447 (_ BitVec 32)) SeekEntryResult!11782)

(assert (=> b!1454885 (= e!818746 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637722 lt!637719 mask!2687) (seekEntryOrOpen!0 lt!637722 lt!637719 mask!2687)))))

(declare-fun b!1454886 () Bool)

(declare-fun res!985742 () Bool)

(declare-fun e!818750 () Bool)

(assert (=> b!1454886 (=> res!985742 e!818750)))

(assert (=> b!1454886 (= res!985742 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637723 (select (arr!47507 a!2862) j!93) a!2862 mask!2687) lt!637717)))))

(declare-fun b!1454887 () Bool)

(assert (=> b!1454887 (= e!818749 (and (or (= (select (arr!47507 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47507 a!2862) intermediateBeforeIndex!19) (select (arr!47507 a!2862) j!93))) (let ((bdg!53110 (select (store (arr!47507 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47507 a!2862) index!646) bdg!53110) (= (select (arr!47507 a!2862) index!646) (select (arr!47507 a!2862) j!93))) (= (select (arr!47507 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53110 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454889 () Bool)

(assert (=> b!1454889 (= e!818752 e!818751)))

(declare-fun res!985739 () Bool)

(assert (=> b!1454889 (=> (not res!985739) (not e!818751))))

(assert (=> b!1454889 (= res!985739 (= (select (store (arr!47507 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1454889 (= lt!637719 (array!98448 (store (arr!47507 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48058 a!2862)))))

(declare-fun b!1454890 () Bool)

(declare-fun res!985743 () Bool)

(assert (=> b!1454890 (=> (not res!985743) (not e!818752))))

(assert (=> b!1454890 (= res!985743 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48058 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48058 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48058 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1454891 () Bool)

(declare-fun res!985752 () Bool)

(assert (=> b!1454891 (=> (not res!985752) (not e!818744))))

(assert (=> b!1454891 (= res!985752 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47507 a!2862) j!93) a!2862 mask!2687) lt!637717))))

(declare-fun b!1454892 () Bool)

(declare-fun res!985746 () Bool)

(assert (=> b!1454892 (=> (not res!985746) (not e!818752))))

(assert (=> b!1454892 (= res!985746 (and (= (size!48058 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48058 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48058 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454893 () Bool)

(declare-fun res!985753 () Bool)

(assert (=> b!1454893 (=> (not res!985753) (not e!818752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454893 (= res!985753 (validKeyInArray!0 (select (arr!47507 a!2862) j!93)))))

(declare-fun b!1454894 () Bool)

(assert (=> b!1454894 (= e!818750 true)))

(declare-fun lt!637720 () Bool)

(assert (=> b!1454894 (= lt!637720 e!818748)))

(declare-fun c!134084 () Bool)

(assert (=> b!1454894 (= c!134084 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1454895 () Bool)

(declare-fun res!985754 () Bool)

(assert (=> b!1454895 (=> (not res!985754) (not e!818749))))

(assert (=> b!1454895 (= res!985754 (= (seekEntryOrOpen!0 (select (arr!47507 a!2862) j!93) a!2862 mask!2687) (Found!11782 j!93)))))

(declare-fun b!1454896 () Bool)

(assert (=> b!1454896 (= e!818746 (= lt!637716 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637722 lt!637719 mask!2687)))))

(declare-fun b!1454897 () Bool)

(declare-fun res!985744 () Bool)

(assert (=> b!1454897 (=> (not res!985744) (not e!818745))))

(assert (=> b!1454897 (= res!985744 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454888 () Bool)

(declare-fun res!985751 () Bool)

(assert (=> b!1454888 (=> (not res!985751) (not e!818752))))

(assert (=> b!1454888 (= res!985751 (validKeyInArray!0 (select (arr!47507 a!2862) i!1006)))))

(declare-fun res!985738 () Bool)

(assert (=> start!125082 (=> (not res!985738) (not e!818752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125082 (= res!985738 (validMask!0 mask!2687))))

(assert (=> start!125082 e!818752))

(assert (=> start!125082 true))

(declare-fun array_inv!36452 (array!98447) Bool)

(assert (=> start!125082 (array_inv!36452 a!2862)))

(declare-fun b!1454898 () Bool)

(declare-fun res!985741 () Bool)

(assert (=> b!1454898 (=> (not res!985741) (not e!818752))))

(assert (=> b!1454898 (= res!985741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454899 () Bool)

(assert (=> b!1454899 (= e!818747 e!818750)))

(declare-fun res!985750 () Bool)

(assert (=> b!1454899 (=> res!985750 e!818750)))

(assert (=> b!1454899 (= res!985750 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637723 #b00000000000000000000000000000000) (bvsge lt!637723 (size!48058 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454899 (= lt!637723 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1454899 (= lt!637718 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637722 lt!637719 mask!2687))))

(assert (=> b!1454899 (= lt!637718 (seekEntryOrOpen!0 lt!637722 lt!637719 mask!2687))))

(assert (= (and start!125082 res!985738) b!1454892))

(assert (= (and b!1454892 res!985746) b!1454888))

(assert (= (and b!1454888 res!985751) b!1454893))

(assert (= (and b!1454893 res!985753) b!1454898))

(assert (= (and b!1454898 res!985741) b!1454879))

(assert (= (and b!1454879 res!985749) b!1454890))

(assert (= (and b!1454890 res!985743) b!1454889))

(assert (= (and b!1454889 res!985739) b!1454882))

(assert (= (and b!1454882 res!985747) b!1454891))

(assert (= (and b!1454891 res!985752) b!1454880))

(assert (= (and b!1454880 res!985748) b!1454883))

(assert (= (and b!1454883 c!134083) b!1454896))

(assert (= (and b!1454883 (not c!134083)) b!1454885))

(assert (= (and b!1454883 res!985755) b!1454897))

(assert (= (and b!1454897 res!985744) b!1454881))

(assert (= (and b!1454881 res!985740) b!1454895))

(assert (= (and b!1454895 res!985754) b!1454887))

(assert (= (and b!1454881 (not res!985745)) b!1454899))

(assert (= (and b!1454899 (not res!985750)) b!1454886))

(assert (= (and b!1454886 (not res!985742)) b!1454894))

(assert (= (and b!1454894 c!134084) b!1454878))

(assert (= (and b!1454894 (not c!134084)) b!1454884))

(declare-fun m!1343215 () Bool)

(assert (=> b!1454884 m!1343215))

(declare-fun m!1343217 () Bool)

(assert (=> b!1454896 m!1343217))

(declare-fun m!1343219 () Bool)

(assert (=> b!1454882 m!1343219))

(assert (=> b!1454882 m!1343219))

(declare-fun m!1343221 () Bool)

(assert (=> b!1454882 m!1343221))

(assert (=> b!1454882 m!1343221))

(assert (=> b!1454882 m!1343219))

(declare-fun m!1343223 () Bool)

(assert (=> b!1454882 m!1343223))

(declare-fun m!1343225 () Bool)

(assert (=> b!1454880 m!1343225))

(assert (=> b!1454880 m!1343225))

(declare-fun m!1343227 () Bool)

(assert (=> b!1454880 m!1343227))

(declare-fun m!1343229 () Bool)

(assert (=> b!1454880 m!1343229))

(declare-fun m!1343231 () Bool)

(assert (=> b!1454880 m!1343231))

(declare-fun m!1343233 () Bool)

(assert (=> b!1454878 m!1343233))

(declare-fun m!1343235 () Bool)

(assert (=> b!1454885 m!1343235))

(declare-fun m!1343237 () Bool)

(assert (=> b!1454885 m!1343237))

(assert (=> b!1454895 m!1343219))

(assert (=> b!1454895 m!1343219))

(declare-fun m!1343239 () Bool)

(assert (=> b!1454895 m!1343239))

(assert (=> b!1454891 m!1343219))

(assert (=> b!1454891 m!1343219))

(declare-fun m!1343241 () Bool)

(assert (=> b!1454891 m!1343241))

(assert (=> b!1454893 m!1343219))

(assert (=> b!1454893 m!1343219))

(declare-fun m!1343243 () Bool)

(assert (=> b!1454893 m!1343243))

(declare-fun m!1343245 () Bool)

(assert (=> b!1454899 m!1343245))

(assert (=> b!1454899 m!1343235))

(assert (=> b!1454899 m!1343237))

(declare-fun m!1343247 () Bool)

(assert (=> b!1454881 m!1343247))

(assert (=> b!1454881 m!1343229))

(declare-fun m!1343249 () Bool)

(assert (=> b!1454881 m!1343249))

(declare-fun m!1343251 () Bool)

(assert (=> b!1454881 m!1343251))

(declare-fun m!1343253 () Bool)

(assert (=> b!1454881 m!1343253))

(assert (=> b!1454881 m!1343219))

(declare-fun m!1343255 () Bool)

(assert (=> start!125082 m!1343255))

(declare-fun m!1343257 () Bool)

(assert (=> start!125082 m!1343257))

(declare-fun m!1343259 () Bool)

(assert (=> b!1454879 m!1343259))

(assert (=> b!1454887 m!1343229))

(declare-fun m!1343261 () Bool)

(assert (=> b!1454887 m!1343261))

(assert (=> b!1454887 m!1343249))

(assert (=> b!1454887 m!1343251))

(assert (=> b!1454887 m!1343219))

(declare-fun m!1343263 () Bool)

(assert (=> b!1454898 m!1343263))

(assert (=> b!1454886 m!1343219))

(assert (=> b!1454886 m!1343219))

(declare-fun m!1343265 () Bool)

(assert (=> b!1454886 m!1343265))

(assert (=> b!1454889 m!1343229))

(declare-fun m!1343267 () Bool)

(assert (=> b!1454889 m!1343267))

(declare-fun m!1343269 () Bool)

(assert (=> b!1454888 m!1343269))

(assert (=> b!1454888 m!1343269))

(declare-fun m!1343271 () Bool)

(assert (=> b!1454888 m!1343271))

(check-sat (not b!1454884) (not b!1454879) (not b!1454899) (not b!1454880) (not b!1454893) (not start!125082) (not b!1454886) (not b!1454878) (not b!1454898) (not b!1454882) (not b!1454895) (not b!1454885) (not b!1454888) (not b!1454896) (not b!1454881) (not b!1454891))
(check-sat)
