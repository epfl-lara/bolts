; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124728 () Bool)

(assert start!124728)

(declare-fun b!1444863 () Bool)

(declare-fun res!976906 () Bool)

(declare-fun e!814024 () Bool)

(assert (=> b!1444863 (=> (not res!976906) (not e!814024))))

(declare-datatypes ((array!98093 0))(
  ( (array!98094 (arr!47330 (Array (_ BitVec 32) (_ BitVec 64))) (size!47881 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98093)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444863 (= res!976906 (validKeyInArray!0 (select (arr!47330 a!2862) j!93)))))

(declare-fun b!1444864 () Bool)

(declare-fun res!976910 () Bool)

(assert (=> b!1444864 (=> (not res!976910) (not e!814024))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1444864 (= res!976910 (validKeyInArray!0 (select (arr!47330 a!2862) i!1006)))))

(declare-fun b!1444865 () Bool)

(declare-fun res!976913 () Bool)

(assert (=> b!1444865 (=> (not res!976913) (not e!814024))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1444865 (= res!976913 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47881 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47881 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47881 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444866 () Bool)

(declare-fun res!976915 () Bool)

(declare-fun e!814025 () Bool)

(assert (=> b!1444866 (=> (not res!976915) (not e!814025))))

(assert (=> b!1444866 (= res!976915 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444867 () Bool)

(declare-fun e!814023 () Bool)

(declare-fun e!814022 () Bool)

(assert (=> b!1444867 (= e!814023 e!814022)))

(declare-fun res!976912 () Bool)

(assert (=> b!1444867 (=> (not res!976912) (not e!814022))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11605 0))(
  ( (MissingZero!11605 (index!48811 (_ BitVec 32))) (Found!11605 (index!48812 (_ BitVec 32))) (Intermediate!11605 (undefined!12417 Bool) (index!48813 (_ BitVec 32)) (x!130505 (_ BitVec 32))) (Undefined!11605) (MissingVacant!11605 (index!48814 (_ BitVec 32))) )
))
(declare-fun lt!634291 () SeekEntryResult!11605)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98093 (_ BitVec 32)) SeekEntryResult!11605)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444867 (= res!976912 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47330 a!2862) j!93) mask!2687) (select (arr!47330 a!2862) j!93) a!2862 mask!2687) lt!634291))))

(assert (=> b!1444867 (= lt!634291 (Intermediate!11605 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444868 () Bool)

(declare-fun res!976917 () Bool)

(assert (=> b!1444868 (=> (not res!976917) (not e!814022))))

(assert (=> b!1444868 (= res!976917 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47330 a!2862) j!93) a!2862 mask!2687) lt!634291))))

(declare-fun res!976908 () Bool)

(assert (=> start!124728 (=> (not res!976908) (not e!814024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124728 (= res!976908 (validMask!0 mask!2687))))

(assert (=> start!124728 e!814024))

(assert (=> start!124728 true))

(declare-fun array_inv!36275 (array!98093) Bool)

(assert (=> start!124728 (array_inv!36275 a!2862)))

(declare-fun b!1444869 () Bool)

(declare-fun res!976909 () Bool)

(assert (=> b!1444869 (=> (not res!976909) (not e!814025))))

(declare-fun e!814027 () Bool)

(assert (=> b!1444869 (= res!976909 e!814027)))

(declare-fun c!133493 () Bool)

(assert (=> b!1444869 (= c!133493 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1444870 () Bool)

(declare-fun res!976903 () Bool)

(assert (=> b!1444870 (=> (not res!976903) (not e!814024))))

(assert (=> b!1444870 (= res!976903 (and (= (size!47881 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47881 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47881 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444871 () Bool)

(declare-fun e!814028 () Bool)

(assert (=> b!1444871 (= e!814028 (or (= (select (arr!47330 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47330 a!2862) intermediateBeforeIndex!19) (select (arr!47330 a!2862) j!93))))))

(declare-fun b!1444872 () Bool)

(declare-fun lt!634294 () (_ BitVec 64))

(declare-fun lt!634290 () array!98093)

(declare-fun lt!634292 () SeekEntryResult!11605)

(assert (=> b!1444872 (= e!814027 (= lt!634292 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634294 lt!634290 mask!2687)))))

(declare-fun b!1444873 () Bool)

(declare-fun res!976911 () Bool)

(assert (=> b!1444873 (=> (not res!976911) (not e!814024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98093 (_ BitVec 32)) Bool)

(assert (=> b!1444873 (= res!976911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1444874 () Bool)

(assert (=> b!1444874 (= e!814022 e!814025)))

(declare-fun res!976907 () Bool)

(assert (=> b!1444874 (=> (not res!976907) (not e!814025))))

(assert (=> b!1444874 (= res!976907 (= lt!634292 (Intermediate!11605 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1444874 (= lt!634292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634294 mask!2687) lt!634294 lt!634290 mask!2687))))

(assert (=> b!1444874 (= lt!634294 (select (store (arr!47330 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444875 () Bool)

(declare-fun res!976916 () Bool)

(assert (=> b!1444875 (=> (not res!976916) (not e!814024))))

(declare-datatypes ((List!34011 0))(
  ( (Nil!34008) (Cons!34007 (h!35357 (_ BitVec 64)) (t!48712 List!34011)) )
))
(declare-fun arrayNoDuplicates!0 (array!98093 (_ BitVec 32) List!34011) Bool)

(assert (=> b!1444875 (= res!976916 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34008))))

(declare-fun b!1444876 () Bool)

(declare-fun res!976914 () Bool)

(assert (=> b!1444876 (=> (not res!976914) (not e!814028))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98093 (_ BitVec 32)) SeekEntryResult!11605)

(assert (=> b!1444876 (= res!976914 (= (seekEntryOrOpen!0 (select (arr!47330 a!2862) j!93) a!2862 mask!2687) (Found!11605 j!93)))))

(declare-fun b!1444877 () Bool)

(assert (=> b!1444877 (= e!814025 (not true))))

(assert (=> b!1444877 e!814028))

(declare-fun res!976905 () Bool)

(assert (=> b!1444877 (=> (not res!976905) (not e!814028))))

(assert (=> b!1444877 (= res!976905 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48654 0))(
  ( (Unit!48655) )
))
(declare-fun lt!634293 () Unit!48654)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98093 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48654)

(assert (=> b!1444877 (= lt!634293 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444878 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98093 (_ BitVec 32)) SeekEntryResult!11605)

(assert (=> b!1444878 (= e!814027 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634294 lt!634290 mask!2687) (seekEntryOrOpen!0 lt!634294 lt!634290 mask!2687)))))

(declare-fun b!1444879 () Bool)

(assert (=> b!1444879 (= e!814024 e!814023)))

(declare-fun res!976904 () Bool)

(assert (=> b!1444879 (=> (not res!976904) (not e!814023))))

(assert (=> b!1444879 (= res!976904 (= (select (store (arr!47330 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444879 (= lt!634290 (array!98094 (store (arr!47330 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47881 a!2862)))))

(assert (= (and start!124728 res!976908) b!1444870))

(assert (= (and b!1444870 res!976903) b!1444864))

(assert (= (and b!1444864 res!976910) b!1444863))

(assert (= (and b!1444863 res!976906) b!1444873))

(assert (= (and b!1444873 res!976911) b!1444875))

(assert (= (and b!1444875 res!976916) b!1444865))

(assert (= (and b!1444865 res!976913) b!1444879))

(assert (= (and b!1444879 res!976904) b!1444867))

(assert (= (and b!1444867 res!976912) b!1444868))

(assert (= (and b!1444868 res!976917) b!1444874))

(assert (= (and b!1444874 res!976907) b!1444869))

(assert (= (and b!1444869 c!133493) b!1444872))

(assert (= (and b!1444869 (not c!133493)) b!1444878))

(assert (= (and b!1444869 res!976909) b!1444866))

(assert (= (and b!1444866 res!976915) b!1444877))

(assert (= (and b!1444877 res!976905) b!1444876))

(assert (= (and b!1444876 res!976914) b!1444871))

(declare-fun m!1333915 () Bool)

(assert (=> b!1444875 m!1333915))

(declare-fun m!1333917 () Bool)

(assert (=> b!1444874 m!1333917))

(assert (=> b!1444874 m!1333917))

(declare-fun m!1333919 () Bool)

(assert (=> b!1444874 m!1333919))

(declare-fun m!1333921 () Bool)

(assert (=> b!1444874 m!1333921))

(declare-fun m!1333923 () Bool)

(assert (=> b!1444874 m!1333923))

(declare-fun m!1333925 () Bool)

(assert (=> start!124728 m!1333925))

(declare-fun m!1333927 () Bool)

(assert (=> start!124728 m!1333927))

(declare-fun m!1333929 () Bool)

(assert (=> b!1444868 m!1333929))

(assert (=> b!1444868 m!1333929))

(declare-fun m!1333931 () Bool)

(assert (=> b!1444868 m!1333931))

(assert (=> b!1444863 m!1333929))

(assert (=> b!1444863 m!1333929))

(declare-fun m!1333933 () Bool)

(assert (=> b!1444863 m!1333933))

(assert (=> b!1444879 m!1333921))

(declare-fun m!1333935 () Bool)

(assert (=> b!1444879 m!1333935))

(declare-fun m!1333937 () Bool)

(assert (=> b!1444873 m!1333937))

(declare-fun m!1333939 () Bool)

(assert (=> b!1444864 m!1333939))

(assert (=> b!1444864 m!1333939))

(declare-fun m!1333941 () Bool)

(assert (=> b!1444864 m!1333941))

(declare-fun m!1333943 () Bool)

(assert (=> b!1444877 m!1333943))

(declare-fun m!1333945 () Bool)

(assert (=> b!1444877 m!1333945))

(assert (=> b!1444867 m!1333929))

(assert (=> b!1444867 m!1333929))

(declare-fun m!1333947 () Bool)

(assert (=> b!1444867 m!1333947))

(assert (=> b!1444867 m!1333947))

(assert (=> b!1444867 m!1333929))

(declare-fun m!1333949 () Bool)

(assert (=> b!1444867 m!1333949))

(assert (=> b!1444876 m!1333929))

(assert (=> b!1444876 m!1333929))

(declare-fun m!1333951 () Bool)

(assert (=> b!1444876 m!1333951))

(declare-fun m!1333953 () Bool)

(assert (=> b!1444872 m!1333953))

(declare-fun m!1333955 () Bool)

(assert (=> b!1444878 m!1333955))

(declare-fun m!1333957 () Bool)

(assert (=> b!1444878 m!1333957))

(declare-fun m!1333959 () Bool)

(assert (=> b!1444871 m!1333959))

(assert (=> b!1444871 m!1333929))

(check-sat (not start!124728) (not b!1444877) (not b!1444864) (not b!1444873) (not b!1444878) (not b!1444876) (not b!1444875) (not b!1444868) (not b!1444874) (not b!1444867) (not b!1444872) (not b!1444863))
(check-sat)
