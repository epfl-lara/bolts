; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125388 () Bool)

(assert start!125388)

(declare-fun b!1464805 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!823168 () Bool)

(declare-fun lt!641168 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!98753 0))(
  ( (array!98754 (arr!47660 (Array (_ BitVec 32) (_ BitVec 64))) (size!48211 (_ BitVec 32))) )
))
(declare-fun lt!641170 () array!98753)

(declare-datatypes ((SeekEntryResult!11935 0))(
  ( (MissingZero!11935 (index!50131 (_ BitVec 32))) (Found!11935 (index!50132 (_ BitVec 32))) (Intermediate!11935 (undefined!12747 Bool) (index!50133 (_ BitVec 32)) (x!131715 (_ BitVec 32))) (Undefined!11935) (MissingVacant!11935 (index!50134 (_ BitVec 32))) )
))
(declare-fun lt!641172 () SeekEntryResult!11935)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98753 (_ BitVec 32)) SeekEntryResult!11935)

(assert (=> b!1464805 (= e!823168 (= lt!641172 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641168 lt!641170 mask!2687)))))

(declare-fun b!1464806 () Bool)

(declare-fun e!823165 () Bool)

(declare-fun e!823167 () Bool)

(assert (=> b!1464806 (= e!823165 (not e!823167))))

(declare-fun res!993910 () Bool)

(assert (=> b!1464806 (=> res!993910 e!823167)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98753)

(assert (=> b!1464806 (= res!993910 (or (and (= (select (arr!47660 a!2862) index!646) (select (store (arr!47660 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47660 a!2862) index!646) (select (arr!47660 a!2862) j!93))) (= (select (arr!47660 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!823169 () Bool)

(assert (=> b!1464806 e!823169))

(declare-fun res!993915 () Bool)

(assert (=> b!1464806 (=> (not res!993915) (not e!823169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98753 (_ BitVec 32)) Bool)

(assert (=> b!1464806 (= res!993915 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49314 0))(
  ( (Unit!49315) )
))
(declare-fun lt!641167 () Unit!49314)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98753 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49314)

(assert (=> b!1464806 (= lt!641167 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1464807 () Bool)

(declare-fun e!823171 () Bool)

(assert (=> b!1464807 (= e!823167 e!823171)))

(declare-fun res!993917 () Bool)

(assert (=> b!1464807 (=> res!993917 e!823171)))

(declare-fun lt!641169 () (_ BitVec 32))

(assert (=> b!1464807 (= res!993917 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641169 #b00000000000000000000000000000000) (bvsge lt!641169 (size!48211 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464807 (= lt!641169 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1464808 () Bool)

(declare-fun e!823163 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98753 (_ BitVec 32)) SeekEntryResult!11935)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98753 (_ BitVec 32)) SeekEntryResult!11935)

(assert (=> b!1464808 (= e!823163 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641169 intermediateAfterIndex!19 lt!641168 lt!641170 mask!2687) (seekEntryOrOpen!0 lt!641168 lt!641170 mask!2687))))))

(declare-fun b!1464809 () Bool)

(assert (=> b!1464809 (= e!823171 true)))

(declare-fun lt!641171 () Bool)

(assert (=> b!1464809 (= lt!641171 e!823163)))

(declare-fun c!134966 () Bool)

(assert (=> b!1464809 (= c!134966 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1464810 () Bool)

(declare-fun res!993902 () Bool)

(declare-fun e!823164 () Bool)

(assert (=> b!1464810 (=> (not res!993902) (not e!823164))))

(declare-datatypes ((List!34341 0))(
  ( (Nil!34338) (Cons!34337 (h!35687 (_ BitVec 64)) (t!49042 List!34341)) )
))
(declare-fun arrayNoDuplicates!0 (array!98753 (_ BitVec 32) List!34341) Bool)

(assert (=> b!1464810 (= res!993902 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34338))))

(declare-fun b!1464811 () Bool)

(declare-fun res!993909 () Bool)

(declare-fun e!823172 () Bool)

(assert (=> b!1464811 (=> (not res!993909) (not e!823172))))

(declare-fun lt!641173 () SeekEntryResult!11935)

(assert (=> b!1464811 (= res!993909 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47660 a!2862) j!93) a!2862 mask!2687) lt!641173))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1464812 () Bool)

(assert (=> b!1464812 (= e!823169 (or (= (select (arr!47660 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47660 a!2862) intermediateBeforeIndex!19) (select (arr!47660 a!2862) j!93))))))

(declare-fun b!1464813 () Bool)

(assert (=> b!1464813 (= e!823163 (not (= lt!641172 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641169 lt!641168 lt!641170 mask!2687))))))

(declare-fun b!1464814 () Bool)

(declare-fun res!993918 () Bool)

(assert (=> b!1464814 (=> (not res!993918) (not e!823164))))

(assert (=> b!1464814 (= res!993918 (and (= (size!48211 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48211 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48211 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!993914 () Bool)

(assert (=> start!125388 (=> (not res!993914) (not e!823164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125388 (= res!993914 (validMask!0 mask!2687))))

(assert (=> start!125388 e!823164))

(assert (=> start!125388 true))

(declare-fun array_inv!36605 (array!98753) Bool)

(assert (=> start!125388 (array_inv!36605 a!2862)))

(declare-fun b!1464815 () Bool)

(declare-fun res!993911 () Bool)

(assert (=> b!1464815 (=> (not res!993911) (not e!823164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464815 (= res!993911 (validKeyInArray!0 (select (arr!47660 a!2862) i!1006)))))

(declare-fun b!1464816 () Bool)

(declare-fun res!993903 () Bool)

(assert (=> b!1464816 (=> res!993903 e!823171)))

(assert (=> b!1464816 (= res!993903 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641169 (select (arr!47660 a!2862) j!93) a!2862 mask!2687) lt!641173)))))

(declare-fun b!1464817 () Bool)

(declare-fun res!993912 () Bool)

(assert (=> b!1464817 (=> (not res!993912) (not e!823165))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1464817 (= res!993912 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464818 () Bool)

(assert (=> b!1464818 (= e!823172 e!823165)))

(declare-fun res!993907 () Bool)

(assert (=> b!1464818 (=> (not res!993907) (not e!823165))))

(assert (=> b!1464818 (= res!993907 (= lt!641172 (Intermediate!11935 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464818 (= lt!641172 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641168 mask!2687) lt!641168 lt!641170 mask!2687))))

(assert (=> b!1464818 (= lt!641168 (select (store (arr!47660 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464819 () Bool)

(declare-fun e!823170 () Bool)

(assert (=> b!1464819 (= e!823164 e!823170)))

(declare-fun res!993913 () Bool)

(assert (=> b!1464819 (=> (not res!993913) (not e!823170))))

(assert (=> b!1464819 (= res!993913 (= (select (store (arr!47660 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1464819 (= lt!641170 (array!98754 (store (arr!47660 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48211 a!2862)))))

(declare-fun b!1464820 () Bool)

(declare-fun res!993905 () Bool)

(assert (=> b!1464820 (=> (not res!993905) (not e!823164))))

(assert (=> b!1464820 (= res!993905 (validKeyInArray!0 (select (arr!47660 a!2862) j!93)))))

(declare-fun b!1464821 () Bool)

(declare-fun res!993906 () Bool)

(assert (=> b!1464821 (=> (not res!993906) (not e!823164))))

(assert (=> b!1464821 (= res!993906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1464822 () Bool)

(declare-fun res!993908 () Bool)

(assert (=> b!1464822 (=> (not res!993908) (not e!823169))))

(assert (=> b!1464822 (= res!993908 (= (seekEntryOrOpen!0 (select (arr!47660 a!2862) j!93) a!2862 mask!2687) (Found!11935 j!93)))))

(declare-fun b!1464823 () Bool)

(assert (=> b!1464823 (= e!823170 e!823172)))

(declare-fun res!993901 () Bool)

(assert (=> b!1464823 (=> (not res!993901) (not e!823172))))

(assert (=> b!1464823 (= res!993901 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47660 a!2862) j!93) mask!2687) (select (arr!47660 a!2862) j!93) a!2862 mask!2687) lt!641173))))

(assert (=> b!1464823 (= lt!641173 (Intermediate!11935 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1464824 () Bool)

(assert (=> b!1464824 (= e!823168 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641168 lt!641170 mask!2687) (seekEntryOrOpen!0 lt!641168 lt!641170 mask!2687)))))

(declare-fun b!1464825 () Bool)

(declare-fun res!993916 () Bool)

(assert (=> b!1464825 (=> (not res!993916) (not e!823165))))

(assert (=> b!1464825 (= res!993916 e!823168)))

(declare-fun c!134965 () Bool)

(assert (=> b!1464825 (= c!134965 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1464826 () Bool)

(declare-fun res!993904 () Bool)

(assert (=> b!1464826 (=> (not res!993904) (not e!823164))))

(assert (=> b!1464826 (= res!993904 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48211 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48211 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48211 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!125388 res!993914) b!1464814))

(assert (= (and b!1464814 res!993918) b!1464815))

(assert (= (and b!1464815 res!993911) b!1464820))

(assert (= (and b!1464820 res!993905) b!1464821))

(assert (= (and b!1464821 res!993906) b!1464810))

(assert (= (and b!1464810 res!993902) b!1464826))

(assert (= (and b!1464826 res!993904) b!1464819))

(assert (= (and b!1464819 res!993913) b!1464823))

(assert (= (and b!1464823 res!993901) b!1464811))

(assert (= (and b!1464811 res!993909) b!1464818))

(assert (= (and b!1464818 res!993907) b!1464825))

(assert (= (and b!1464825 c!134965) b!1464805))

(assert (= (and b!1464825 (not c!134965)) b!1464824))

(assert (= (and b!1464825 res!993916) b!1464817))

(assert (= (and b!1464817 res!993912) b!1464806))

(assert (= (and b!1464806 res!993915) b!1464822))

(assert (= (and b!1464822 res!993908) b!1464812))

(assert (= (and b!1464806 (not res!993910)) b!1464807))

(assert (= (and b!1464807 (not res!993917)) b!1464816))

(assert (= (and b!1464816 (not res!993903)) b!1464809))

(assert (= (and b!1464809 c!134966) b!1464813))

(assert (= (and b!1464809 (not c!134966)) b!1464808))

(declare-fun m!1352023 () Bool)

(assert (=> b!1464810 m!1352023))

(declare-fun m!1352025 () Bool)

(assert (=> b!1464821 m!1352025))

(declare-fun m!1352027 () Bool)

(assert (=> b!1464815 m!1352027))

(assert (=> b!1464815 m!1352027))

(declare-fun m!1352029 () Bool)

(assert (=> b!1464815 m!1352029))

(declare-fun m!1352031 () Bool)

(assert (=> b!1464820 m!1352031))

(assert (=> b!1464820 m!1352031))

(declare-fun m!1352033 () Bool)

(assert (=> b!1464820 m!1352033))

(assert (=> b!1464811 m!1352031))

(assert (=> b!1464811 m!1352031))

(declare-fun m!1352035 () Bool)

(assert (=> b!1464811 m!1352035))

(declare-fun m!1352037 () Bool)

(assert (=> b!1464819 m!1352037))

(declare-fun m!1352039 () Bool)

(assert (=> b!1464819 m!1352039))

(assert (=> b!1464823 m!1352031))

(assert (=> b!1464823 m!1352031))

(declare-fun m!1352041 () Bool)

(assert (=> b!1464823 m!1352041))

(assert (=> b!1464823 m!1352041))

(assert (=> b!1464823 m!1352031))

(declare-fun m!1352043 () Bool)

(assert (=> b!1464823 m!1352043))

(declare-fun m!1352045 () Bool)

(assert (=> b!1464818 m!1352045))

(assert (=> b!1464818 m!1352045))

(declare-fun m!1352047 () Bool)

(assert (=> b!1464818 m!1352047))

(assert (=> b!1464818 m!1352037))

(declare-fun m!1352049 () Bool)

(assert (=> b!1464818 m!1352049))

(declare-fun m!1352051 () Bool)

(assert (=> b!1464808 m!1352051))

(declare-fun m!1352053 () Bool)

(assert (=> b!1464808 m!1352053))

(declare-fun m!1352055 () Bool)

(assert (=> b!1464812 m!1352055))

(assert (=> b!1464812 m!1352031))

(declare-fun m!1352057 () Bool)

(assert (=> b!1464824 m!1352057))

(assert (=> b!1464824 m!1352053))

(declare-fun m!1352059 () Bool)

(assert (=> b!1464806 m!1352059))

(assert (=> b!1464806 m!1352037))

(declare-fun m!1352061 () Bool)

(assert (=> b!1464806 m!1352061))

(declare-fun m!1352063 () Bool)

(assert (=> b!1464806 m!1352063))

(declare-fun m!1352065 () Bool)

(assert (=> b!1464806 m!1352065))

(assert (=> b!1464806 m!1352031))

(declare-fun m!1352067 () Bool)

(assert (=> b!1464805 m!1352067))

(declare-fun m!1352069 () Bool)

(assert (=> b!1464807 m!1352069))

(declare-fun m!1352071 () Bool)

(assert (=> b!1464813 m!1352071))

(declare-fun m!1352073 () Bool)

(assert (=> start!125388 m!1352073))

(declare-fun m!1352075 () Bool)

(assert (=> start!125388 m!1352075))

(assert (=> b!1464822 m!1352031))

(assert (=> b!1464822 m!1352031))

(declare-fun m!1352077 () Bool)

(assert (=> b!1464822 m!1352077))

(assert (=> b!1464816 m!1352031))

(assert (=> b!1464816 m!1352031))

(declare-fun m!1352079 () Bool)

(assert (=> b!1464816 m!1352079))

(check-sat (not b!1464806) (not b!1464815) (not b!1464821) (not b!1464811) (not b!1464810) (not b!1464805) (not b!1464807) (not b!1464808) (not b!1464824) (not b!1464813) (not b!1464822) (not b!1464816) (not b!1464818) (not start!125388) (not b!1464823) (not b!1464820))
(check-sat)
