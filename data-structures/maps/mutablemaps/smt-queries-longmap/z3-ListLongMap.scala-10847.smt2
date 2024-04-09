; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126972 () Bool)

(assert start!126972)

(declare-fun b!1491836 () Bool)

(declare-fun res!1015060 () Bool)

(declare-fun e!835828 () Bool)

(assert (=> b!1491836 (=> (not res!1015060) (not e!835828))))

(declare-datatypes ((array!99662 0))(
  ( (array!99663 (arr!48098 (Array (_ BitVec 32) (_ BitVec 64))) (size!48649 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99662)

(declare-datatypes ((List!34779 0))(
  ( (Nil!34776) (Cons!34775 (h!36158 (_ BitVec 64)) (t!49480 List!34779)) )
))
(declare-fun arrayNoDuplicates!0 (array!99662 (_ BitVec 32) List!34779) Bool)

(assert (=> b!1491836 (= res!1015060 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34776))))

(declare-fun b!1491837 () Bool)

(declare-fun res!1015068 () Bool)

(assert (=> b!1491837 (=> (not res!1015068) (not e!835828))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1491837 (= res!1015068 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48649 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48649 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48649 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!650375 () (_ BitVec 64))

(declare-fun b!1491838 () Bool)

(declare-fun lt!650378 () array!99662)

(declare-fun e!835825 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12361 0))(
  ( (MissingZero!12361 (index!51835 (_ BitVec 32))) (Found!12361 (index!51836 (_ BitVec 32))) (Intermediate!12361 (undefined!13173 Bool) (index!51837 (_ BitVec 32)) (x!133420 (_ BitVec 32))) (Undefined!12361) (MissingVacant!12361 (index!51838 (_ BitVec 32))) )
))
(declare-fun lt!650380 () SeekEntryResult!12361)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99662 (_ BitVec 32)) SeekEntryResult!12361)

(assert (=> b!1491838 (= e!835825 (= lt!650380 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650375 lt!650378 mask!2687)))))

(declare-fun b!1491839 () Bool)

(declare-fun res!1015062 () Bool)

(declare-fun e!835829 () Bool)

(assert (=> b!1491839 (=> (not res!1015062) (not e!835829))))

(assert (=> b!1491839 (= res!1015062 e!835825)))

(declare-fun c!137918 () Bool)

(assert (=> b!1491839 (= c!137918 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491840 () Bool)

(declare-fun res!1015072 () Bool)

(assert (=> b!1491840 (=> (not res!1015072) (not e!835828))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1491840 (= res!1015072 (and (= (size!48649 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48649 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48649 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1015071 () Bool)

(assert (=> start!126972 (=> (not res!1015071) (not e!835828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126972 (= res!1015071 (validMask!0 mask!2687))))

(assert (=> start!126972 e!835828))

(assert (=> start!126972 true))

(declare-fun array_inv!37043 (array!99662) Bool)

(assert (=> start!126972 (array_inv!37043 a!2862)))

(declare-fun b!1491841 () Bool)

(declare-fun res!1015066 () Bool)

(declare-fun e!835826 () Bool)

(assert (=> b!1491841 (=> (not res!1015066) (not e!835826))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99662 (_ BitVec 32)) SeekEntryResult!12361)

(assert (=> b!1491841 (= res!1015066 (= (seekEntryOrOpen!0 (select (arr!48098 a!2862) j!93) a!2862 mask!2687) (Found!12361 j!93)))))

(declare-fun b!1491842 () Bool)

(declare-fun e!835823 () Bool)

(assert (=> b!1491842 (= e!835828 e!835823)))

(declare-fun res!1015063 () Bool)

(assert (=> b!1491842 (=> (not res!1015063) (not e!835823))))

(assert (=> b!1491842 (= res!1015063 (= (select (store (arr!48098 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1491842 (= lt!650378 (array!99663 (store (arr!48098 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48649 a!2862)))))

(declare-fun b!1491843 () Bool)

(declare-fun e!835827 () Bool)

(assert (=> b!1491843 (= e!835827 true)))

(declare-fun lt!650376 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491843 (= lt!650376 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1491844 () Bool)

(declare-fun res!1015067 () Bool)

(declare-fun e!835822 () Bool)

(assert (=> b!1491844 (=> (not res!1015067) (not e!835822))))

(declare-fun lt!650377 () SeekEntryResult!12361)

(assert (=> b!1491844 (= res!1015067 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48098 a!2862) j!93) a!2862 mask!2687) lt!650377))))

(declare-fun b!1491845 () Bool)

(declare-fun res!1015059 () Bool)

(assert (=> b!1491845 (=> (not res!1015059) (not e!835828))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491845 (= res!1015059 (validKeyInArray!0 (select (arr!48098 a!2862) j!93)))))

(declare-fun b!1491846 () Bool)

(declare-fun res!1015074 () Bool)

(assert (=> b!1491846 (=> (not res!1015074) (not e!835829))))

(assert (=> b!1491846 (= res!1015074 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491847 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99662 (_ BitVec 32)) SeekEntryResult!12361)

(assert (=> b!1491847 (= e!835825 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650375 lt!650378 mask!2687) (seekEntryOrOpen!0 lt!650375 lt!650378 mask!2687)))))

(declare-fun b!1491848 () Bool)

(assert (=> b!1491848 (= e!835826 (or (= (select (arr!48098 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48098 a!2862) intermediateBeforeIndex!19) (select (arr!48098 a!2862) j!93))))))

(declare-fun b!1491849 () Bool)

(assert (=> b!1491849 (= e!835822 e!835829)))

(declare-fun res!1015064 () Bool)

(assert (=> b!1491849 (=> (not res!1015064) (not e!835829))))

(assert (=> b!1491849 (= res!1015064 (= lt!650380 (Intermediate!12361 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491849 (= lt!650380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650375 mask!2687) lt!650375 lt!650378 mask!2687))))

(assert (=> b!1491849 (= lt!650375 (select (store (arr!48098 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491850 () Bool)

(assert (=> b!1491850 (= e!835829 (not e!835827))))

(declare-fun res!1015073 () Bool)

(assert (=> b!1491850 (=> res!1015073 e!835827)))

(assert (=> b!1491850 (= res!1015073 (or (and (= (select (arr!48098 a!2862) index!646) (select (store (arr!48098 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48098 a!2862) index!646) (select (arr!48098 a!2862) j!93))) (= (select (arr!48098 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1491850 e!835826))

(declare-fun res!1015065 () Bool)

(assert (=> b!1491850 (=> (not res!1015065) (not e!835826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99662 (_ BitVec 32)) Bool)

(assert (=> b!1491850 (= res!1015065 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50010 0))(
  ( (Unit!50011) )
))
(declare-fun lt!650379 () Unit!50010)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99662 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50010)

(assert (=> b!1491850 (= lt!650379 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491851 () Bool)

(declare-fun res!1015069 () Bool)

(assert (=> b!1491851 (=> (not res!1015069) (not e!835828))))

(assert (=> b!1491851 (= res!1015069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491852 () Bool)

(declare-fun res!1015070 () Bool)

(assert (=> b!1491852 (=> (not res!1015070) (not e!835828))))

(assert (=> b!1491852 (= res!1015070 (validKeyInArray!0 (select (arr!48098 a!2862) i!1006)))))

(declare-fun b!1491853 () Bool)

(assert (=> b!1491853 (= e!835823 e!835822)))

(declare-fun res!1015061 () Bool)

(assert (=> b!1491853 (=> (not res!1015061) (not e!835822))))

(assert (=> b!1491853 (= res!1015061 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48098 a!2862) j!93) mask!2687) (select (arr!48098 a!2862) j!93) a!2862 mask!2687) lt!650377))))

(assert (=> b!1491853 (= lt!650377 (Intermediate!12361 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!126972 res!1015071) b!1491840))

(assert (= (and b!1491840 res!1015072) b!1491852))

(assert (= (and b!1491852 res!1015070) b!1491845))

(assert (= (and b!1491845 res!1015059) b!1491851))

(assert (= (and b!1491851 res!1015069) b!1491836))

(assert (= (and b!1491836 res!1015060) b!1491837))

(assert (= (and b!1491837 res!1015068) b!1491842))

(assert (= (and b!1491842 res!1015063) b!1491853))

(assert (= (and b!1491853 res!1015061) b!1491844))

(assert (= (and b!1491844 res!1015067) b!1491849))

(assert (= (and b!1491849 res!1015064) b!1491839))

(assert (= (and b!1491839 c!137918) b!1491838))

(assert (= (and b!1491839 (not c!137918)) b!1491847))

(assert (= (and b!1491839 res!1015062) b!1491846))

(assert (= (and b!1491846 res!1015074) b!1491850))

(assert (= (and b!1491850 res!1015065) b!1491841))

(assert (= (and b!1491841 res!1015066) b!1491848))

(assert (= (and b!1491850 (not res!1015073)) b!1491843))

(declare-fun m!1375999 () Bool)

(assert (=> b!1491845 m!1375999))

(assert (=> b!1491845 m!1375999))

(declare-fun m!1376001 () Bool)

(assert (=> b!1491845 m!1376001))

(declare-fun m!1376003 () Bool)

(assert (=> start!126972 m!1376003))

(declare-fun m!1376005 () Bool)

(assert (=> start!126972 m!1376005))

(assert (=> b!1491844 m!1375999))

(assert (=> b!1491844 m!1375999))

(declare-fun m!1376007 () Bool)

(assert (=> b!1491844 m!1376007))

(declare-fun m!1376009 () Bool)

(assert (=> b!1491847 m!1376009))

(declare-fun m!1376011 () Bool)

(assert (=> b!1491847 m!1376011))

(declare-fun m!1376013 () Bool)

(assert (=> b!1491842 m!1376013))

(declare-fun m!1376015 () Bool)

(assert (=> b!1491842 m!1376015))

(assert (=> b!1491853 m!1375999))

(assert (=> b!1491853 m!1375999))

(declare-fun m!1376017 () Bool)

(assert (=> b!1491853 m!1376017))

(assert (=> b!1491853 m!1376017))

(assert (=> b!1491853 m!1375999))

(declare-fun m!1376019 () Bool)

(assert (=> b!1491853 m!1376019))

(declare-fun m!1376021 () Bool)

(assert (=> b!1491848 m!1376021))

(assert (=> b!1491848 m!1375999))

(declare-fun m!1376023 () Bool)

(assert (=> b!1491850 m!1376023))

(assert (=> b!1491850 m!1376013))

(declare-fun m!1376025 () Bool)

(assert (=> b!1491850 m!1376025))

(declare-fun m!1376027 () Bool)

(assert (=> b!1491850 m!1376027))

(declare-fun m!1376029 () Bool)

(assert (=> b!1491850 m!1376029))

(assert (=> b!1491850 m!1375999))

(declare-fun m!1376031 () Bool)

(assert (=> b!1491843 m!1376031))

(declare-fun m!1376033 () Bool)

(assert (=> b!1491836 m!1376033))

(assert (=> b!1491841 m!1375999))

(assert (=> b!1491841 m!1375999))

(declare-fun m!1376035 () Bool)

(assert (=> b!1491841 m!1376035))

(declare-fun m!1376037 () Bool)

(assert (=> b!1491849 m!1376037))

(assert (=> b!1491849 m!1376037))

(declare-fun m!1376039 () Bool)

(assert (=> b!1491849 m!1376039))

(assert (=> b!1491849 m!1376013))

(declare-fun m!1376041 () Bool)

(assert (=> b!1491849 m!1376041))

(declare-fun m!1376043 () Bool)

(assert (=> b!1491852 m!1376043))

(assert (=> b!1491852 m!1376043))

(declare-fun m!1376045 () Bool)

(assert (=> b!1491852 m!1376045))

(declare-fun m!1376047 () Bool)

(assert (=> b!1491851 m!1376047))

(declare-fun m!1376049 () Bool)

(assert (=> b!1491838 m!1376049))

(check-sat (not b!1491843) (not b!1491845) (not b!1491836) (not b!1491838) (not b!1491841) (not b!1491853) (not b!1491849) (not b!1491852) (not b!1491851) (not b!1491850) (not b!1491847) (not b!1491844) (not start!126972))
(check-sat)
