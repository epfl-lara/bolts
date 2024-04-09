; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125734 () Bool)

(assert start!125734)

(declare-fun b!1470886 () Bool)

(declare-fun res!999060 () Bool)

(declare-fun e!825662 () Bool)

(assert (=> b!1470886 (=> (not res!999060) (not e!825662))))

(declare-fun e!825661 () Bool)

(assert (=> b!1470886 (= res!999060 e!825661)))

(declare-fun c!135428 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1470886 (= c!135428 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1470887 () Bool)

(declare-fun e!825660 () Bool)

(assert (=> b!1470887 (= e!825660 e!825662)))

(declare-fun res!999069 () Bool)

(assert (=> b!1470887 (=> (not res!999069) (not e!825662))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12066 0))(
  ( (MissingZero!12066 (index!50655 (_ BitVec 32))) (Found!12066 (index!50656 (_ BitVec 32))) (Intermediate!12066 (undefined!12878 Bool) (index!50657 (_ BitVec 32)) (x!132239 (_ BitVec 32))) (Undefined!12066) (MissingVacant!12066 (index!50658 (_ BitVec 32))) )
))
(declare-fun lt!643029 () SeekEntryResult!12066)

(assert (=> b!1470887 (= res!999069 (= lt!643029 (Intermediate!12066 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!643032 () (_ BitVec 64))

(declare-datatypes ((array!99042 0))(
  ( (array!99043 (arr!47803 (Array (_ BitVec 32) (_ BitVec 64))) (size!48354 (_ BitVec 32))) )
))
(declare-fun lt!643033 () array!99042)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99042 (_ BitVec 32)) SeekEntryResult!12066)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470887 (= lt!643029 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643032 mask!2687) lt!643032 lt!643033 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99042)

(assert (=> b!1470887 (= lt!643032 (select (store (arr!47803 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1470888 () Bool)

(declare-fun res!999067 () Bool)

(assert (=> b!1470888 (=> (not res!999067) (not e!825662))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1470888 (= res!999067 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1470889 () Bool)

(declare-fun e!825659 () Bool)

(declare-fun e!825657 () Bool)

(assert (=> b!1470889 (= e!825659 e!825657)))

(declare-fun res!999071 () Bool)

(assert (=> b!1470889 (=> (not res!999071) (not e!825657))))

(assert (=> b!1470889 (= res!999071 (= (select (store (arr!47803 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470889 (= lt!643033 (array!99043 (store (arr!47803 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48354 a!2862)))))

(declare-fun e!825658 () Bool)

(declare-fun b!1470890 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99042 (_ BitVec 32)) SeekEntryResult!12066)

(assert (=> b!1470890 (= e!825658 (= (seekEntryOrOpen!0 (select (arr!47803 a!2862) j!93) a!2862 mask!2687) (Found!12066 j!93)))))

(declare-fun b!1470891 () Bool)

(declare-fun res!999061 () Bool)

(assert (=> b!1470891 (=> (not res!999061) (not e!825659))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1470891 (= res!999061 (validKeyInArray!0 (select (arr!47803 a!2862) i!1006)))))

(declare-fun b!1470892 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99042 (_ BitVec 32)) SeekEntryResult!12066)

(assert (=> b!1470892 (= e!825661 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643032 lt!643033 mask!2687) (seekEntryOrOpen!0 lt!643032 lt!643033 mask!2687)))))

(declare-fun res!999062 () Bool)

(assert (=> start!125734 (=> (not res!999062) (not e!825659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125734 (= res!999062 (validMask!0 mask!2687))))

(assert (=> start!125734 e!825659))

(assert (=> start!125734 true))

(declare-fun array_inv!36748 (array!99042) Bool)

(assert (=> start!125734 (array_inv!36748 a!2862)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1470893 () Bool)

(assert (=> b!1470893 (= e!825662 (not (or (= (select (arr!47803 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47803 a!2862) intermediateBeforeIndex!19) (select (arr!47803 a!2862) j!93)))))))

(assert (=> b!1470893 e!825658))

(declare-fun res!999064 () Bool)

(assert (=> b!1470893 (=> (not res!999064) (not e!825658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99042 (_ BitVec 32)) Bool)

(assert (=> b!1470893 (= res!999064 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49420 0))(
  ( (Unit!49421) )
))
(declare-fun lt!643031 () Unit!49420)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99042 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49420)

(assert (=> b!1470893 (= lt!643031 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1470894 () Bool)

(declare-fun res!999059 () Bool)

(assert (=> b!1470894 (=> (not res!999059) (not e!825659))))

(assert (=> b!1470894 (= res!999059 (validKeyInArray!0 (select (arr!47803 a!2862) j!93)))))

(declare-fun b!1470895 () Bool)

(declare-fun res!999063 () Bool)

(assert (=> b!1470895 (=> (not res!999063) (not e!825659))))

(assert (=> b!1470895 (= res!999063 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48354 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48354 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48354 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1470896 () Bool)

(declare-fun res!999070 () Bool)

(assert (=> b!1470896 (=> (not res!999070) (not e!825659))))

(assert (=> b!1470896 (= res!999070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1470897 () Bool)

(declare-fun res!999066 () Bool)

(assert (=> b!1470897 (=> (not res!999066) (not e!825660))))

(declare-fun lt!643030 () SeekEntryResult!12066)

(assert (=> b!1470897 (= res!999066 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47803 a!2862) j!93) a!2862 mask!2687) lt!643030))))

(declare-fun b!1470898 () Bool)

(declare-fun res!999072 () Bool)

(assert (=> b!1470898 (=> (not res!999072) (not e!825659))))

(declare-datatypes ((List!34484 0))(
  ( (Nil!34481) (Cons!34480 (h!35833 (_ BitVec 64)) (t!49185 List!34484)) )
))
(declare-fun arrayNoDuplicates!0 (array!99042 (_ BitVec 32) List!34484) Bool)

(assert (=> b!1470898 (= res!999072 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34481))))

(declare-fun b!1470899 () Bool)

(assert (=> b!1470899 (= e!825661 (= lt!643029 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643032 lt!643033 mask!2687)))))

(declare-fun b!1470900 () Bool)

(assert (=> b!1470900 (= e!825657 e!825660)))

(declare-fun res!999065 () Bool)

(assert (=> b!1470900 (=> (not res!999065) (not e!825660))))

(assert (=> b!1470900 (= res!999065 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47803 a!2862) j!93) mask!2687) (select (arr!47803 a!2862) j!93) a!2862 mask!2687) lt!643030))))

(assert (=> b!1470900 (= lt!643030 (Intermediate!12066 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1470901 () Bool)

(declare-fun res!999068 () Bool)

(assert (=> b!1470901 (=> (not res!999068) (not e!825659))))

(assert (=> b!1470901 (= res!999068 (and (= (size!48354 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48354 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48354 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125734 res!999062) b!1470901))

(assert (= (and b!1470901 res!999068) b!1470891))

(assert (= (and b!1470891 res!999061) b!1470894))

(assert (= (and b!1470894 res!999059) b!1470896))

(assert (= (and b!1470896 res!999070) b!1470898))

(assert (= (and b!1470898 res!999072) b!1470895))

(assert (= (and b!1470895 res!999063) b!1470889))

(assert (= (and b!1470889 res!999071) b!1470900))

(assert (= (and b!1470900 res!999065) b!1470897))

(assert (= (and b!1470897 res!999066) b!1470887))

(assert (= (and b!1470887 res!999069) b!1470886))

(assert (= (and b!1470886 c!135428) b!1470899))

(assert (= (and b!1470886 (not c!135428)) b!1470892))

(assert (= (and b!1470886 res!999060) b!1470888))

(assert (= (and b!1470888 res!999067) b!1470893))

(assert (= (and b!1470893 res!999064) b!1470890))

(declare-fun m!1357899 () Bool)

(assert (=> b!1470891 m!1357899))

(assert (=> b!1470891 m!1357899))

(declare-fun m!1357901 () Bool)

(assert (=> b!1470891 m!1357901))

(declare-fun m!1357903 () Bool)

(assert (=> b!1470887 m!1357903))

(assert (=> b!1470887 m!1357903))

(declare-fun m!1357905 () Bool)

(assert (=> b!1470887 m!1357905))

(declare-fun m!1357907 () Bool)

(assert (=> b!1470887 m!1357907))

(declare-fun m!1357909 () Bool)

(assert (=> b!1470887 m!1357909))

(declare-fun m!1357911 () Bool)

(assert (=> b!1470892 m!1357911))

(declare-fun m!1357913 () Bool)

(assert (=> b!1470892 m!1357913))

(declare-fun m!1357915 () Bool)

(assert (=> start!125734 m!1357915))

(declare-fun m!1357917 () Bool)

(assert (=> start!125734 m!1357917))

(declare-fun m!1357919 () Bool)

(assert (=> b!1470900 m!1357919))

(assert (=> b!1470900 m!1357919))

(declare-fun m!1357921 () Bool)

(assert (=> b!1470900 m!1357921))

(assert (=> b!1470900 m!1357921))

(assert (=> b!1470900 m!1357919))

(declare-fun m!1357923 () Bool)

(assert (=> b!1470900 m!1357923))

(assert (=> b!1470889 m!1357907))

(declare-fun m!1357925 () Bool)

(assert (=> b!1470889 m!1357925))

(assert (=> b!1470894 m!1357919))

(assert (=> b!1470894 m!1357919))

(declare-fun m!1357927 () Bool)

(assert (=> b!1470894 m!1357927))

(declare-fun m!1357929 () Bool)

(assert (=> b!1470896 m!1357929))

(declare-fun m!1357931 () Bool)

(assert (=> b!1470899 m!1357931))

(assert (=> b!1470897 m!1357919))

(assert (=> b!1470897 m!1357919))

(declare-fun m!1357933 () Bool)

(assert (=> b!1470897 m!1357933))

(assert (=> b!1470890 m!1357919))

(assert (=> b!1470890 m!1357919))

(declare-fun m!1357935 () Bool)

(assert (=> b!1470890 m!1357935))

(declare-fun m!1357937 () Bool)

(assert (=> b!1470893 m!1357937))

(assert (=> b!1470893 m!1357919))

(declare-fun m!1357939 () Bool)

(assert (=> b!1470893 m!1357939))

(declare-fun m!1357941 () Bool)

(assert (=> b!1470893 m!1357941))

(declare-fun m!1357943 () Bool)

(assert (=> b!1470898 m!1357943))

(push 1)

(assert (not b!1470900))

(assert (not b!1470891))

(assert (not b!1470893))

(assert (not b!1470898))

(assert (not b!1470892))

(assert (not b!1470896))

(assert (not b!1470887))

(assert (not b!1470890))

(assert (not start!125734))

(assert (not b!1470894))

(assert (not b!1470897))

(assert (not b!1470899))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1471073 () Bool)

(declare-fun e!825752 () SeekEntryResult!12066)

(declare-fun e!825754 () SeekEntryResult!12066)

(assert (=> b!1471073 (= e!825752 e!825754)))

(declare-fun c!135460 () Bool)

(declare-fun lt!643095 () (_ BitVec 64))

(assert (=> b!1471073 (= c!135460 (= lt!643095 lt!643032))))

(declare-fun lt!643094 () SeekEntryResult!12066)

(declare-fun d!155363 () Bool)

(assert (=> d!155363 (and (or (is-Undefined!12066 lt!643094) (not (is-Found!12066 lt!643094)) (and (bvsge (index!50656 lt!643094) #b00000000000000000000000000000000) (bvslt (index!50656 lt!643094) (size!48354 lt!643033)))) (or (is-Undefined!12066 lt!643094) (is-Found!12066 lt!643094) (not (is-MissingVacant!12066 lt!643094)) (not (= (index!50658 lt!643094) intermediateAfterIndex!19)) (and (bvsge (index!50658 lt!643094) #b00000000000000000000000000000000) (bvslt (index!50658 lt!643094) (size!48354 lt!643033)))) (or (is-Undefined!12066 lt!643094) (ite (is-Found!12066 lt!643094) (= (select (arr!47803 lt!643033) (index!50656 lt!643094)) lt!643032) (and (is-MissingVacant!12066 lt!643094) (= (index!50658 lt!643094) intermediateAfterIndex!19) (= (select (arr!47803 lt!643033) (index!50658 lt!643094)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!155363 (= lt!643094 e!825752)))

(declare-fun c!135461 () Bool)

(assert (=> d!155363 (= c!135461 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155363 (= lt!643095 (select (arr!47803 lt!643033) index!646))))

(assert (=> d!155363 (validMask!0 mask!2687)))

(assert (=> d!155363 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643032 lt!643033 mask!2687) lt!643094)))

(declare-fun b!1471074 () Bool)

(assert (=> b!1471074 (= e!825754 (Found!12066 index!646))))

(declare-fun b!1471075 () Bool)

(assert (=> b!1471075 (= e!825752 Undefined!12066)))

(declare-fun b!1471076 () Bool)

(declare-fun e!825753 () SeekEntryResult!12066)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471076 (= e!825753 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!643032 lt!643033 mask!2687))))

(declare-fun b!1471077 () Bool)

(declare-fun c!135459 () Bool)

(assert (=> b!1471077 (= c!135459 (= lt!643095 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471077 (= e!825754 e!825753)))

(declare-fun b!1471078 () Bool)

(assert (=> b!1471078 (= e!825753 (MissingVacant!12066 intermediateAfterIndex!19))))

(assert (= (and d!155363 c!135461) b!1471075))

(assert (= (and d!155363 (not c!135461)) b!1471073))

(assert (= (and b!1471073 c!135460) b!1471074))

(assert (= (and b!1471073 (not c!135460)) b!1471077))

(assert (= (and b!1471077 c!135459) b!1471078))

(assert (= (and b!1471077 (not c!135459)) b!1471076))

(declare-fun m!1358069 () Bool)

(assert (=> d!155363 m!1358069))

(declare-fun m!1358071 () Bool)

(assert (=> d!155363 m!1358071))

(declare-fun m!1358073 () Bool)

(assert (=> d!155363 m!1358073))

(assert (=> d!155363 m!1357915))

(declare-fun m!1358075 () Bool)

(assert (=> b!1471076 m!1358075))

(assert (=> b!1471076 m!1358075))

(declare-fun m!1358077 () Bool)

(assert (=> b!1471076 m!1358077))

(assert (=> b!1470892 d!155363))

(declare-fun b!1471127 () Bool)

(declare-fun e!825781 () SeekEntryResult!12066)

(declare-fun lt!643116 () SeekEntryResult!12066)

(assert (=> b!1471127 (= e!825781 (MissingZero!12066 (index!50657 lt!643116)))))

(declare-fun b!1471128 () Bool)

(declare-fun e!825780 () SeekEntryResult!12066)

(assert (=> b!1471128 (= e!825780 Undefined!12066)))

(declare-fun b!1471129 () Bool)

(declare-fun c!135487 () Bool)

(declare-fun lt!643114 () (_ BitVec 64))

(assert (=> b!1471129 (= c!135487 (= lt!643114 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!825779 () SeekEntryResult!12066)

(assert (=> b!1471129 (= e!825779 e!825781)))

(declare-fun d!155375 () Bool)

(declare-fun lt!643115 () SeekEntryResult!12066)

(assert (=> d!155375 (and (or (is-Undefined!12066 lt!643115) (not (is-Found!12066 lt!643115)) (and (bvsge (index!50656 lt!643115) #b00000000000000000000000000000000) (bvslt (index!50656 lt!643115) (size!48354 lt!643033)))) (or (is-Undefined!12066 lt!643115) (is-Found!12066 lt!643115) (not (is-MissingZero!12066 lt!643115)) (and (bvsge (index!50655 lt!643115) #b00000000000000000000000000000000) (bvslt (index!50655 lt!643115) (size!48354 lt!643033)))) (or (is-Undefined!12066 lt!643115) (is-Found!12066 lt!643115) (is-MissingZero!12066 lt!643115) (not (is-MissingVacant!12066 lt!643115)) (and (bvsge (index!50658 lt!643115) #b00000000000000000000000000000000) (bvslt (index!50658 lt!643115) (size!48354 lt!643033)))) (or (is-Undefined!12066 lt!643115) (ite (is-Found!12066 lt!643115) (= (select (arr!47803 lt!643033) (index!50656 lt!643115)) lt!643032) (ite (is-MissingZero!12066 lt!643115) (= (select (arr!47803 lt!643033) (index!50655 lt!643115)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12066 lt!643115) (= (select (arr!47803 lt!643033) (index!50658 lt!643115)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155375 (= lt!643115 e!825780)))

(declare-fun c!135488 () Bool)

(assert (=> d!155375 (= c!135488 (and (is-Intermediate!12066 lt!643116) (undefined!12878 lt!643116)))))

(assert (=> d!155375 (= lt!643116 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643032 mask!2687) lt!643032 lt!643033 mask!2687))))

(assert (=> d!155375 (validMask!0 mask!2687)))

(assert (=> d!155375 (= (seekEntryOrOpen!0 lt!643032 lt!643033 mask!2687) lt!643115)))

(declare-fun b!1471130 () Bool)

(assert (=> b!1471130 (= e!825779 (Found!12066 (index!50657 lt!643116)))))

(declare-fun b!1471131 () Bool)

(assert (=> b!1471131 (= e!825781 (seekKeyOrZeroReturnVacant!0 (x!132239 lt!643116) (index!50657 lt!643116) (index!50657 lt!643116) lt!643032 lt!643033 mask!2687))))

(declare-fun b!1471132 () Bool)

(assert (=> b!1471132 (= e!825780 e!825779)))

(assert (=> b!1471132 (= lt!643114 (select (arr!47803 lt!643033) (index!50657 lt!643116)))))

(declare-fun c!135486 () Bool)

(assert (=> b!1471132 (= c!135486 (= lt!643114 lt!643032))))

(assert (= (and d!155375 c!135488) b!1471128))

(assert (= (and d!155375 (not c!135488)) b!1471132))

(assert (= (and b!1471132 c!135486) b!1471130))

(assert (= (and b!1471132 (not c!135486)) b!1471129))

(assert (= (and b!1471129 c!135487) b!1471127))

(assert (= (and b!1471129 (not c!135487)) b!1471131))

(assert (=> d!155375 m!1357903))

(declare-fun m!1358095 () Bool)

(assert (=> d!155375 m!1358095))

(declare-fun m!1358097 () Bool)

(assert (=> d!155375 m!1358097))

(declare-fun m!1358099 () Bool)

(assert (=> d!155375 m!1358099))

(assert (=> d!155375 m!1357915))

(assert (=> d!155375 m!1357903))

(assert (=> d!155375 m!1357905))

(declare-fun m!1358101 () Bool)

(assert (=> b!1471131 m!1358101))

(declare-fun m!1358103 () Bool)

(assert (=> b!1471132 m!1358103))

(assert (=> b!1470892 d!155375))

(declare-fun b!1471181 () Bool)

(declare-fun e!825809 () Bool)

(declare-fun e!825811 () Bool)

(assert (=> b!1471181 (= e!825809 e!825811)))

(declare-fun lt!643143 () (_ BitVec 64))

(assert (=> b!1471181 (= lt!643143 (select (arr!47803 a!2862) j!93))))

(declare-fun lt!643144 () Unit!49420)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99042 (_ BitVec 64) (_ BitVec 32)) Unit!49420)

(assert (=> b!1471181 (= lt!643144 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!643143 j!93))))

(declare-fun arrayContainsKey!0 (array!99042 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1471181 (arrayContainsKey!0 a!2862 lt!643143 #b00000000000000000000000000000000)))

(declare-fun lt!643142 () Unit!49420)

(assert (=> b!1471181 (= lt!643142 lt!643144)))

(declare-fun res!999193 () Bool)

(assert (=> b!1471181 (= res!999193 (= (seekEntryOrOpen!0 (select (arr!47803 a!2862) j!93) a!2862 mask!2687) (Found!12066 j!93)))))

(assert (=> b!1471181 (=> (not res!999193) (not e!825811))))

(declare-fun d!155381 () Bool)

(declare-fun res!999192 () Bool)

(declare-fun e!825813 () Bool)

(assert (=> d!155381 (=> res!999192 e!825813)))

(assert (=> d!155381 (= res!999192 (bvsge j!93 (size!48354 a!2862)))))

(assert (=> d!155381 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!825813)))

(declare-fun b!1471183 () Bool)

(declare-fun call!67725 () Bool)

(assert (=> b!1471183 (= e!825811 call!67725)))

(declare-fun b!1471185 () Bool)

(assert (=> b!1471185 (= e!825813 e!825809)))

(declare-fun c!135509 () Bool)

(assert (=> b!1471185 (= c!135509 (validKeyInArray!0 (select (arr!47803 a!2862) j!93)))))

(declare-fun b!1471187 () Bool)

(assert (=> b!1471187 (= e!825809 call!67725)))

(declare-fun bm!67722 () Bool)

(assert (=> bm!67722 (= call!67725 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(assert (= (and d!155381 (not res!999192)) b!1471185))

(assert (= (and b!1471185 c!135509) b!1471181))

(assert (= (and b!1471185 (not c!135509)) b!1471187))

(assert (= (and b!1471181 res!999193) b!1471183))

(assert (= (or b!1471183 b!1471187) bm!67722))

(assert (=> b!1471181 m!1357919))

(declare-fun m!1358123 () Bool)

(assert (=> b!1471181 m!1358123))

(declare-fun m!1358125 () Bool)

(assert (=> b!1471181 m!1358125))

(assert (=> b!1471181 m!1357919))

(assert (=> b!1471181 m!1357935))

(assert (=> b!1471185 m!1357919))

(assert (=> b!1471185 m!1357919))

(assert (=> b!1471185 m!1357927))

(declare-fun m!1358129 () Bool)

(assert (=> bm!67722 m!1358129))

(assert (=> b!1470893 d!155381))

(declare-fun d!155391 () Bool)

(assert (=> d!155391 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!643150 () Unit!49420)

(declare-fun choose!38 (array!99042 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49420)

(assert (=> d!155391 (= lt!643150 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155391 (validMask!0 mask!2687)))

(assert (=> d!155391 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!643150)))

(declare-fun bs!42501 () Bool)

(assert (= bs!42501 d!155391))

(assert (=> bs!42501 m!1357939))

(declare-fun m!1358139 () Bool)

(assert (=> bs!42501 m!1358139))

(assert (=> bs!42501 m!1357915))

(assert (=> b!1470893 d!155391))

(declare-fun d!155395 () Bool)

(assert (=> d!155395 (= (validKeyInArray!0 (select (arr!47803 a!2862) j!93)) (and (not (= (select (arr!47803 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47803 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1470894 d!155395))

(declare-fun b!1471190 () Bool)

(declare-fun e!825814 () Bool)

(declare-fun e!825815 () Bool)

(assert (=> b!1471190 (= e!825814 e!825815)))

(declare-fun lt!643152 () (_ BitVec 64))

(assert (=> b!1471190 (= lt!643152 (select (arr!47803 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!643153 () Unit!49420)

(assert (=> b!1471190 (= lt!643153 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!643152 #b00000000000000000000000000000000))))

(assert (=> b!1471190 (arrayContainsKey!0 a!2862 lt!643152 #b00000000000000000000000000000000)))

(declare-fun lt!643151 () Unit!49420)

(assert (=> b!1471190 (= lt!643151 lt!643153)))

(declare-fun res!999195 () Bool)

(assert (=> b!1471190 (= res!999195 (= (seekEntryOrOpen!0 (select (arr!47803 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12066 #b00000000000000000000000000000000)))))

(assert (=> b!1471190 (=> (not res!999195) (not e!825815))))

(declare-fun d!155397 () Bool)

(declare-fun res!999194 () Bool)

(declare-fun e!825816 () Bool)

(assert (=> d!155397 (=> res!999194 e!825816)))

(assert (=> d!155397 (= res!999194 (bvsge #b00000000000000000000000000000000 (size!48354 a!2862)))))

(assert (=> d!155397 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!825816)))

(declare-fun b!1471191 () Bool)

(declare-fun call!67726 () Bool)

(assert (=> b!1471191 (= e!825815 call!67726)))

(declare-fun b!1471192 () Bool)

(assert (=> b!1471192 (= e!825816 e!825814)))

(declare-fun c!135513 () Bool)

(assert (=> b!1471192 (= c!135513 (validKeyInArray!0 (select (arr!47803 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1471193 () Bool)

(assert (=> b!1471193 (= e!825814 call!67726)))

(declare-fun bm!67723 () Bool)

(assert (=> bm!67723 (= call!67726 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(assert (= (and d!155397 (not res!999194)) b!1471192))

(assert (= (and b!1471192 c!135513) b!1471190))

(assert (= (and b!1471192 (not c!135513)) b!1471193))

(assert (= (and b!1471190 res!999195) b!1471191))

(assert (= (or b!1471191 b!1471193) bm!67723))

(declare-fun m!1358141 () Bool)

(assert (=> b!1471190 m!1358141))

(declare-fun m!1358143 () Bool)

(assert (=> b!1471190 m!1358143))

(declare-fun m!1358145 () Bool)

(assert (=> b!1471190 m!1358145))

(assert (=> b!1471190 m!1358141))

(declare-fun m!1358147 () Bool)

(assert (=> b!1471190 m!1358147))

(assert (=> b!1471192 m!1358141))

(assert (=> b!1471192 m!1358141))

(declare-fun m!1358149 () Bool)

(assert (=> b!1471192 m!1358149))

(declare-fun m!1358151 () Bool)

(assert (=> bm!67723 m!1358151))

(assert (=> b!1470896 d!155397))

(declare-fun b!1471273 () Bool)

(declare-fun e!825868 () SeekEntryResult!12066)

(assert (=> b!1471273 (= e!825868 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47803 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!155399 () Bool)

(declare-fun e!825865 () Bool)

(assert (=> d!155399 e!825865))

(declare-fun c!135540 () Bool)

(declare-fun lt!643178 () SeekEntryResult!12066)

(assert (=> d!155399 (= c!135540 (and (is-Intermediate!12066 lt!643178) (undefined!12878 lt!643178)))))

(declare-fun e!825866 () SeekEntryResult!12066)

(assert (=> d!155399 (= lt!643178 e!825866)))

(declare-fun c!135541 () Bool)

(assert (=> d!155399 (= c!135541 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!643179 () (_ BitVec 64))

(assert (=> d!155399 (= lt!643179 (select (arr!47803 a!2862) index!646))))

(assert (=> d!155399 (validMask!0 mask!2687)))

(assert (=> d!155399 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47803 a!2862) j!93) a!2862 mask!2687) lt!643178)))

(declare-fun b!1471274 () Bool)

(assert (=> b!1471274 (and (bvsge (index!50657 lt!643178) #b00000000000000000000000000000000) (bvslt (index!50657 lt!643178) (size!48354 a!2862)))))

(declare-fun e!825867 () Bool)

(assert (=> b!1471274 (= e!825867 (= (select (arr!47803 a!2862) (index!50657 lt!643178)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1471275 () Bool)

(assert (=> b!1471275 (= e!825868 (Intermediate!12066 false index!646 x!665))))

(declare-fun b!1471276 () Bool)

(assert (=> b!1471276 (and (bvsge (index!50657 lt!643178) #b00000000000000000000000000000000) (bvslt (index!50657 lt!643178) (size!48354 a!2862)))))

(declare-fun res!999228 () Bool)

(assert (=> b!1471276 (= res!999228 (= (select (arr!47803 a!2862) (index!50657 lt!643178)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471276 (=> res!999228 e!825867)))

(declare-fun b!1471277 () Bool)

(assert (=> b!1471277 (= e!825865 (bvsge (x!132239 lt!643178) #b01111111111111111111111111111110))))

(declare-fun b!1471278 () Bool)

(assert (=> b!1471278 (= e!825866 (Intermediate!12066 true index!646 x!665))))

(declare-fun b!1471279 () Bool)

(declare-fun e!825869 () Bool)

(assert (=> b!1471279 (= e!825865 e!825869)))

(declare-fun res!999227 () Bool)

(assert (=> b!1471279 (= res!999227 (and (is-Intermediate!12066 lt!643178) (not (undefined!12878 lt!643178)) (bvslt (x!132239 lt!643178) #b01111111111111111111111111111110) (bvsge (x!132239 lt!643178) #b00000000000000000000000000000000) (bvsge (x!132239 lt!643178) x!665)))))

(assert (=> b!1471279 (=> (not res!999227) (not e!825869))))

(declare-fun b!1471280 () Bool)

(assert (=> b!1471280 (= e!825866 e!825868)))

(declare-fun c!135539 () Bool)

(assert (=> b!1471280 (= c!135539 (or (= lt!643179 (select (arr!47803 a!2862) j!93)) (= (bvadd lt!643179 lt!643179) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1471281 () Bool)

(assert (=> b!1471281 (and (bvsge (index!50657 lt!643178) #b00000000000000000000000000000000) (bvslt (index!50657 lt!643178) (size!48354 a!2862)))))

(declare-fun res!999226 () Bool)

(assert (=> b!1471281 (= res!999226 (= (select (arr!47803 a!2862) (index!50657 lt!643178)) (select (arr!47803 a!2862) j!93)))))

(assert (=> b!1471281 (=> res!999226 e!825867)))

(assert (=> b!1471281 (= e!825869 e!825867)))

(assert (= (and d!155399 c!135541) b!1471278))

(assert (= (and d!155399 (not c!135541)) b!1471280))

(assert (= (and b!1471280 c!135539) b!1471275))

(assert (= (and b!1471280 (not c!135539)) b!1471273))

(assert (= (and d!155399 c!135540) b!1471277))

(assert (= (and d!155399 (not c!135540)) b!1471279))

(assert (= (and b!1471279 res!999227) b!1471281))

(assert (= (and b!1471281 (not res!999226)) b!1471276))

(assert (= (and b!1471276 (not res!999228)) b!1471274))

(declare-fun m!1358193 () Bool)

(assert (=> b!1471281 m!1358193))

(declare-fun m!1358195 () Bool)

(assert (=> d!155399 m!1358195))

(assert (=> d!155399 m!1357915))

(assert (=> b!1471274 m!1358193))

(assert (=> b!1471273 m!1358075))

(assert (=> b!1471273 m!1358075))

(assert (=> b!1471273 m!1357919))

(declare-fun m!1358197 () Bool)

(assert (=> b!1471273 m!1358197))

(assert (=> b!1471276 m!1358193))

(assert (=> b!1470897 d!155399))

(declare-fun e!825878 () SeekEntryResult!12066)

(declare-fun b!1471291 () Bool)

(assert (=> b!1471291 (= e!825878 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!643032 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!643032 lt!643033 mask!2687))))

(declare-fun d!155417 () Bool)

(declare-fun e!825875 () Bool)

(assert (=> d!155417 e!825875))

(declare-fun c!135546 () Bool)

(declare-fun lt!643182 () SeekEntryResult!12066)

(assert (=> d!155417 (= c!135546 (and (is-Intermediate!12066 lt!643182) (undefined!12878 lt!643182)))))

(declare-fun e!825876 () SeekEntryResult!12066)

(assert (=> d!155417 (= lt!643182 e!825876)))

(declare-fun c!135547 () Bool)

(assert (=> d!155417 (= c!135547 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!643183 () (_ BitVec 64))

(assert (=> d!155417 (= lt!643183 (select (arr!47803 lt!643033) (toIndex!0 lt!643032 mask!2687)))))

(assert (=> d!155417 (validMask!0 mask!2687)))

(assert (=> d!155417 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643032 mask!2687) lt!643032 lt!643033 mask!2687) lt!643182)))

(declare-fun b!1471292 () Bool)

(assert (=> b!1471292 (and (bvsge (index!50657 lt!643182) #b00000000000000000000000000000000) (bvslt (index!50657 lt!643182) (size!48354 lt!643033)))))

(declare-fun e!825877 () Bool)

(assert (=> b!1471292 (= e!825877 (= (select (arr!47803 lt!643033) (index!50657 lt!643182)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1471293 () Bool)

(assert (=> b!1471293 (= e!825878 (Intermediate!12066 false (toIndex!0 lt!643032 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1471294 () Bool)

(assert (=> b!1471294 (and (bvsge (index!50657 lt!643182) #b00000000000000000000000000000000) (bvslt (index!50657 lt!643182) (size!48354 lt!643033)))))

(declare-fun res!999234 () Bool)

(assert (=> b!1471294 (= res!999234 (= (select (arr!47803 lt!643033) (index!50657 lt!643182)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471294 (=> res!999234 e!825877)))

(declare-fun b!1471295 () Bool)

(assert (=> b!1471295 (= e!825875 (bvsge (x!132239 lt!643182) #b01111111111111111111111111111110))))

(declare-fun b!1471296 () Bool)

(assert (=> b!1471296 (= e!825876 (Intermediate!12066 true (toIndex!0 lt!643032 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1471297 () Bool)

(declare-fun e!825879 () Bool)

(assert (=> b!1471297 (= e!825875 e!825879)))

(declare-fun res!999233 () Bool)

(assert (=> b!1471297 (= res!999233 (and (is-Intermediate!12066 lt!643182) (not (undefined!12878 lt!643182)) (bvslt (x!132239 lt!643182) #b01111111111111111111111111111110) (bvsge (x!132239 lt!643182) #b00000000000000000000000000000000) (bvsge (x!132239 lt!643182) #b00000000000000000000000000000000)))))

(assert (=> b!1471297 (=> (not res!999233) (not e!825879))))

(declare-fun b!1471298 () Bool)

(assert (=> b!1471298 (= e!825876 e!825878)))

(declare-fun c!135545 () Bool)

(assert (=> b!1471298 (= c!135545 (or (= lt!643183 lt!643032) (= (bvadd lt!643183 lt!643183) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1471299 () Bool)

(assert (=> b!1471299 (and (bvsge (index!50657 lt!643182) #b00000000000000000000000000000000) (bvslt (index!50657 lt!643182) (size!48354 lt!643033)))))

(declare-fun res!999232 () Bool)

(assert (=> b!1471299 (= res!999232 (= (select (arr!47803 lt!643033) (index!50657 lt!643182)) lt!643032))))

(assert (=> b!1471299 (=> res!999232 e!825877)))

(assert (=> b!1471299 (= e!825879 e!825877)))

(assert (= (and d!155417 c!135547) b!1471296))

(assert (= (and d!155417 (not c!135547)) b!1471298))

(assert (= (and b!1471298 c!135545) b!1471293))

(assert (= (and b!1471298 (not c!135545)) b!1471291))

(assert (= (and d!155417 c!135546) b!1471295))

(assert (= (and d!155417 (not c!135546)) b!1471297))

(assert (= (and b!1471297 res!999233) b!1471299))

(assert (= (and b!1471299 (not res!999232)) b!1471294))

(assert (= (and b!1471294 (not res!999234)) b!1471292))

(declare-fun m!1358205 () Bool)

(assert (=> b!1471299 m!1358205))

(assert (=> d!155417 m!1357903))

(declare-fun m!1358207 () Bool)

(assert (=> d!155417 m!1358207))

(assert (=> d!155417 m!1357915))

(assert (=> b!1471292 m!1358205))

(assert (=> b!1471291 m!1357903))

(declare-fun m!1358209 () Bool)

(assert (=> b!1471291 m!1358209))

(assert (=> b!1471291 m!1358209))

(declare-fun m!1358211 () Bool)

(assert (=> b!1471291 m!1358211))

(assert (=> b!1471294 m!1358205))

(assert (=> b!1470887 d!155417))

(declare-fun d!155423 () Bool)

(declare-fun lt!643189 () (_ BitVec 32))

(declare-fun lt!643188 () (_ BitVec 32))

(assert (=> d!155423 (= lt!643189 (bvmul (bvxor lt!643188 (bvlshr lt!643188 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155423 (= lt!643188 ((_ extract 31 0) (bvand (bvxor lt!643032 (bvlshr lt!643032 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155423 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!999235 (let ((h!35838 ((_ extract 31 0) (bvand (bvxor lt!643032 (bvlshr lt!643032 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132250 (bvmul (bvxor h!35838 (bvlshr h!35838 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132250 (bvlshr x!132250 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!999235 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!999235 #b00000000000000000000000000000000))))))

(assert (=> d!155423 (= (toIndex!0 lt!643032 mask!2687) (bvand (bvxor lt!643189 (bvlshr lt!643189 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1470887 d!155423))

(declare-fun b!1471319 () Bool)

(declare-fun e!825893 () Bool)

(declare-fun call!67733 () Bool)

(assert (=> b!1471319 (= e!825893 call!67733)))

(declare-fun b!1471320 () Bool)

(declare-fun e!825896 () Bool)

(assert (=> b!1471320 (= e!825896 e!825893)))

(declare-fun c!135553 () Bool)

(assert (=> b!1471320 (= c!135553 (validKeyInArray!0 (select (arr!47803 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67730 () Bool)

(assert (=> bm!67730 (= call!67733 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!135553 (Cons!34480 (select (arr!47803 a!2862) #b00000000000000000000000000000000) Nil!34481) Nil!34481)))))

(declare-fun b!1471322 () Bool)

(declare-fun e!825894 () Bool)

(assert (=> b!1471322 (= e!825894 e!825896)))

(declare-fun res!999245 () Bool)

(assert (=> b!1471322 (=> (not res!999245) (not e!825896))))

(declare-fun e!825895 () Bool)

(assert (=> b!1471322 (= res!999245 (not e!825895))))

(declare-fun res!999246 () Bool)

(assert (=> b!1471322 (=> (not res!999246) (not e!825895))))

(assert (=> b!1471322 (= res!999246 (validKeyInArray!0 (select (arr!47803 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1471323 () Bool)

(declare-fun contains!9912 (List!34484 (_ BitVec 64)) Bool)

(assert (=> b!1471323 (= e!825895 (contains!9912 Nil!34481 (select (arr!47803 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1471321 () Bool)

(assert (=> b!1471321 (= e!825893 call!67733)))

(declare-fun d!155425 () Bool)

(declare-fun res!999247 () Bool)

(assert (=> d!155425 (=> res!999247 e!825894)))

(assert (=> d!155425 (= res!999247 (bvsge #b00000000000000000000000000000000 (size!48354 a!2862)))))

(assert (=> d!155425 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34481) e!825894)))

(assert (= (and d!155425 (not res!999247)) b!1471322))

(assert (= (and b!1471322 res!999246) b!1471323))

(assert (= (and b!1471322 res!999245) b!1471320))

(assert (= (and b!1471320 c!135553) b!1471321))

(assert (= (and b!1471320 (not c!135553)) b!1471319))

(assert (= (or b!1471321 b!1471319) bm!67730))

(assert (=> b!1471320 m!1358141))

(assert (=> b!1471320 m!1358141))

(assert (=> b!1471320 m!1358149))

(assert (=> bm!67730 m!1358141))

(declare-fun m!1358221 () Bool)

(assert (=> bm!67730 m!1358221))

(assert (=> b!1471322 m!1358141))

(assert (=> b!1471322 m!1358141))

(assert (=> b!1471322 m!1358149))

(assert (=> b!1471323 m!1358141))

(assert (=> b!1471323 m!1358141))

(declare-fun m!1358223 () Bool)

(assert (=> b!1471323 m!1358223))

(assert (=> b!1470898 d!155425))

(declare-fun b!1471324 () Bool)

(declare-fun e!825900 () SeekEntryResult!12066)

(assert (=> b!1471324 (= e!825900 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!643032 lt!643033 mask!2687))))

(declare-fun d!155435 () Bool)

(declare-fun e!825897 () Bool)

(assert (=> d!155435 e!825897))

(declare-fun c!135555 () Bool)

(declare-fun lt!643194 () SeekEntryResult!12066)

(assert (=> d!155435 (= c!135555 (and (is-Intermediate!12066 lt!643194) (undefined!12878 lt!643194)))))

(declare-fun e!825898 () SeekEntryResult!12066)

(assert (=> d!155435 (= lt!643194 e!825898)))

(declare-fun c!135556 () Bool)

(assert (=> d!155435 (= c!135556 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!643195 () (_ BitVec 64))

(assert (=> d!155435 (= lt!643195 (select (arr!47803 lt!643033) index!646))))

(assert (=> d!155435 (validMask!0 mask!2687)))

(assert (=> d!155435 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643032 lt!643033 mask!2687) lt!643194)))

(declare-fun b!1471325 () Bool)

(assert (=> b!1471325 (and (bvsge (index!50657 lt!643194) #b00000000000000000000000000000000) (bvslt (index!50657 lt!643194) (size!48354 lt!643033)))))

(declare-fun e!825899 () Bool)

(assert (=> b!1471325 (= e!825899 (= (select (arr!47803 lt!643033) (index!50657 lt!643194)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1471326 () Bool)

(assert (=> b!1471326 (= e!825900 (Intermediate!12066 false index!646 x!665))))

(declare-fun b!1471327 () Bool)

(assert (=> b!1471327 (and (bvsge (index!50657 lt!643194) #b00000000000000000000000000000000) (bvslt (index!50657 lt!643194) (size!48354 lt!643033)))))

(declare-fun res!999250 () Bool)

(assert (=> b!1471327 (= res!999250 (= (select (arr!47803 lt!643033) (index!50657 lt!643194)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471327 (=> res!999250 e!825899)))

(declare-fun b!1471328 () Bool)

(assert (=> b!1471328 (= e!825897 (bvsge (x!132239 lt!643194) #b01111111111111111111111111111110))))

(declare-fun b!1471329 () Bool)

(assert (=> b!1471329 (= e!825898 (Intermediate!12066 true index!646 x!665))))

(declare-fun b!1471330 () Bool)

(declare-fun e!825901 () Bool)

(assert (=> b!1471330 (= e!825897 e!825901)))

(declare-fun res!999249 () Bool)

(assert (=> b!1471330 (= res!999249 (and (is-Intermediate!12066 lt!643194) (not (undefined!12878 lt!643194)) (bvslt (x!132239 lt!643194) #b01111111111111111111111111111110) (bvsge (x!132239 lt!643194) #b00000000000000000000000000000000) (bvsge (x!132239 lt!643194) x!665)))))

(assert (=> b!1471330 (=> (not res!999249) (not e!825901))))

(declare-fun b!1471331 () Bool)

(assert (=> b!1471331 (= e!825898 e!825900)))

(declare-fun c!135554 () Bool)

(assert (=> b!1471331 (= c!135554 (or (= lt!643195 lt!643032) (= (bvadd lt!643195 lt!643195) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1471332 () Bool)

(assert (=> b!1471332 (and (bvsge (index!50657 lt!643194) #b00000000000000000000000000000000) (bvslt (index!50657 lt!643194) (size!48354 lt!643033)))))

(declare-fun res!999248 () Bool)

(assert (=> b!1471332 (= res!999248 (= (select (arr!47803 lt!643033) (index!50657 lt!643194)) lt!643032))))

(assert (=> b!1471332 (=> res!999248 e!825899)))

(assert (=> b!1471332 (= e!825901 e!825899)))

(assert (= (and d!155435 c!135556) b!1471329))

(assert (= (and d!155435 (not c!135556)) b!1471331))

(assert (= (and b!1471331 c!135554) b!1471326))

(assert (= (and b!1471331 (not c!135554)) b!1471324))

(assert (= (and d!155435 c!135555) b!1471328))

(assert (= (and d!155435 (not c!135555)) b!1471330))

(assert (= (and b!1471330 res!999249) b!1471332))

(assert (= (and b!1471332 (not res!999248)) b!1471327))

(assert (= (and b!1471327 (not res!999250)) b!1471325))

(declare-fun m!1358225 () Bool)

(assert (=> b!1471332 m!1358225))

(assert (=> d!155435 m!1358073))

(assert (=> d!155435 m!1357915))

(assert (=> b!1471325 m!1358225))

(assert (=> b!1471324 m!1358075))

(assert (=> b!1471324 m!1358075))

(declare-fun m!1358227 () Bool)

(assert (=> b!1471324 m!1358227))

(assert (=> b!1471327 m!1358225))

(assert (=> b!1470899 d!155435))

(declare-fun d!155437 () Bool)

(assert (=> d!155437 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!125734 d!155437))

(declare-fun d!155441 () Bool)

(assert (=> d!155441 (= (array_inv!36748 a!2862) (bvsge (size!48354 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!125734 d!155441))

(declare-fun e!825914 () SeekEntryResult!12066)

(declare-fun b!1471345 () Bool)

(assert (=> b!1471345 (= e!825914 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47803 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47803 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!155443 () Bool)

(declare-fun e!825911 () Bool)

(assert (=> d!155443 e!825911))

(declare-fun c!135561 () Bool)

(declare-fun lt!643205 () SeekEntryResult!12066)

(assert (=> d!155443 (= c!135561 (and (is-Intermediate!12066 lt!643205) (undefined!12878 lt!643205)))))

(declare-fun e!825912 () SeekEntryResult!12066)

(assert (=> d!155443 (= lt!643205 e!825912)))

(declare-fun c!135562 () Bool)

(assert (=> d!155443 (= c!135562 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!643206 () (_ BitVec 64))

(assert (=> d!155443 (= lt!643206 (select (arr!47803 a!2862) (toIndex!0 (select (arr!47803 a!2862) j!93) mask!2687)))))

(assert (=> d!155443 (validMask!0 mask!2687)))

(assert (=> d!155443 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47803 a!2862) j!93) mask!2687) (select (arr!47803 a!2862) j!93) a!2862 mask!2687) lt!643205)))

(declare-fun b!1471346 () Bool)

(assert (=> b!1471346 (and (bvsge (index!50657 lt!643205) #b00000000000000000000000000000000) (bvslt (index!50657 lt!643205) (size!48354 a!2862)))))

(declare-fun e!825913 () Bool)

(assert (=> b!1471346 (= e!825913 (= (select (arr!47803 a!2862) (index!50657 lt!643205)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1471347 () Bool)

(assert (=> b!1471347 (= e!825914 (Intermediate!12066 false (toIndex!0 (select (arr!47803 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1471348 () Bool)

(assert (=> b!1471348 (and (bvsge (index!50657 lt!643205) #b00000000000000000000000000000000) (bvslt (index!50657 lt!643205) (size!48354 a!2862)))))

(declare-fun res!999259 () Bool)

(assert (=> b!1471348 (= res!999259 (= (select (arr!47803 a!2862) (index!50657 lt!643205)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471348 (=> res!999259 e!825913)))

(declare-fun b!1471349 () Bool)

(assert (=> b!1471349 (= e!825911 (bvsge (x!132239 lt!643205) #b01111111111111111111111111111110))))

(declare-fun b!1471350 () Bool)

(assert (=> b!1471350 (= e!825912 (Intermediate!12066 true (toIndex!0 (select (arr!47803 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1471351 () Bool)

(declare-fun e!825915 () Bool)

(assert (=> b!1471351 (= e!825911 e!825915)))

(declare-fun res!999258 () Bool)

(assert (=> b!1471351 (= res!999258 (and (is-Intermediate!12066 lt!643205) (not (undefined!12878 lt!643205)) (bvslt (x!132239 lt!643205) #b01111111111111111111111111111110) (bvsge (x!132239 lt!643205) #b00000000000000000000000000000000) (bvsge (x!132239 lt!643205) #b00000000000000000000000000000000)))))

(assert (=> b!1471351 (=> (not res!999258) (not e!825915))))

(declare-fun b!1471352 () Bool)

(assert (=> b!1471352 (= e!825912 e!825914)))

(declare-fun c!135560 () Bool)

(assert (=> b!1471352 (= c!135560 (or (= lt!643206 (select (arr!47803 a!2862) j!93)) (= (bvadd lt!643206 lt!643206) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1471353 () Bool)

(assert (=> b!1471353 (and (bvsge (index!50657 lt!643205) #b00000000000000000000000000000000) (bvslt (index!50657 lt!643205) (size!48354 a!2862)))))

(declare-fun res!999257 () Bool)

(assert (=> b!1471353 (= res!999257 (= (select (arr!47803 a!2862) (index!50657 lt!643205)) (select (arr!47803 a!2862) j!93)))))

(assert (=> b!1471353 (=> res!999257 e!825913)))

(assert (=> b!1471353 (= e!825915 e!825913)))

(assert (= (and d!155443 c!135562) b!1471350))

(assert (= (and d!155443 (not c!135562)) b!1471352))

(assert (= (and b!1471352 c!135560) b!1471347))

(assert (= (and b!1471352 (not c!135560)) b!1471345))

(assert (= (and d!155443 c!135561) b!1471349))

(assert (= (and d!155443 (not c!135561)) b!1471351))

(assert (= (and b!1471351 res!999258) b!1471353))

(assert (= (and b!1471353 (not res!999257)) b!1471348))

(assert (= (and b!1471348 (not res!999259)) b!1471346))

(declare-fun m!1358235 () Bool)

(assert (=> b!1471353 m!1358235))

(assert (=> d!155443 m!1357921))

(declare-fun m!1358237 () Bool)

(assert (=> d!155443 m!1358237))

(assert (=> d!155443 m!1357915))

(assert (=> b!1471346 m!1358235))

(assert (=> b!1471345 m!1357921))

(declare-fun m!1358239 () Bool)

(assert (=> b!1471345 m!1358239))

(assert (=> b!1471345 m!1358239))

(assert (=> b!1471345 m!1357919))

(declare-fun m!1358241 () Bool)

(assert (=> b!1471345 m!1358241))

(assert (=> b!1471348 m!1358235))

(assert (=> b!1470900 d!155443))

(declare-fun d!155445 () Bool)

(declare-fun lt!643211 () (_ BitVec 32))

(declare-fun lt!643210 () (_ BitVec 32))

(assert (=> d!155445 (= lt!643211 (bvmul (bvxor lt!643210 (bvlshr lt!643210 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155445 (= lt!643210 ((_ extract 31 0) (bvand (bvxor (select (arr!47803 a!2862) j!93) (bvlshr (select (arr!47803 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155445 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!999235 (let ((h!35838 ((_ extract 31 0) (bvand (bvxor (select (arr!47803 a!2862) j!93) (bvlshr (select (arr!47803 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132250 (bvmul (bvxor h!35838 (bvlshr h!35838 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132250 (bvlshr x!132250 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!999235 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!999235 #b00000000000000000000000000000000))))))

(assert (=> d!155445 (= (toIndex!0 (select (arr!47803 a!2862) j!93) mask!2687) (bvand (bvxor lt!643211 (bvlshr lt!643211 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1470900 d!155445))

(declare-fun b!1471358 () Bool)

(declare-fun e!825921 () SeekEntryResult!12066)

(declare-fun lt!643217 () SeekEntryResult!12066)

(assert (=> b!1471358 (= e!825921 (MissingZero!12066 (index!50657 lt!643217)))))

(declare-fun b!1471360 () Bool)

(declare-fun e!825920 () SeekEntryResult!12066)

(assert (=> b!1471360 (= e!825920 Undefined!12066)))

(declare-fun b!1471362 () Bool)

(declare-fun c!135567 () Bool)

(declare-fun lt!643214 () (_ BitVec 64))

(assert (=> b!1471362 (= c!135567 (= lt!643214 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!825918 () SeekEntryResult!12066)

(assert (=> b!1471362 (= e!825918 e!825921)))

(declare-fun d!155449 () Bool)

(declare-fun lt!643216 () SeekEntryResult!12066)

(assert (=> d!155449 (and (or (is-Undefined!12066 lt!643216) (not (is-Found!12066 lt!643216)) (and (bvsge (index!50656 lt!643216) #b00000000000000000000000000000000) (bvslt (index!50656 lt!643216) (size!48354 a!2862)))) (or (is-Undefined!12066 lt!643216) (is-Found!12066 lt!643216) (not (is-MissingZero!12066 lt!643216)) (and (bvsge (index!50655 lt!643216) #b00000000000000000000000000000000) (bvslt (index!50655 lt!643216) (size!48354 a!2862)))) (or (is-Undefined!12066 lt!643216) (is-Found!12066 lt!643216) (is-MissingZero!12066 lt!643216) (not (is-MissingVacant!12066 lt!643216)) (and (bvsge (index!50658 lt!643216) #b00000000000000000000000000000000) (bvslt (index!50658 lt!643216) (size!48354 a!2862)))) (or (is-Undefined!12066 lt!643216) (ite (is-Found!12066 lt!643216) (= (select (arr!47803 a!2862) (index!50656 lt!643216)) (select (arr!47803 a!2862) j!93)) (ite (is-MissingZero!12066 lt!643216) (= (select (arr!47803 a!2862) (index!50655 lt!643216)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12066 lt!643216) (= (select (arr!47803 a!2862) (index!50658 lt!643216)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155449 (= lt!643216 e!825920)))

(declare-fun c!135568 () Bool)

(assert (=> d!155449 (= c!135568 (and (is-Intermediate!12066 lt!643217) (undefined!12878 lt!643217)))))

(assert (=> d!155449 (= lt!643217 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47803 a!2862) j!93) mask!2687) (select (arr!47803 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155449 (validMask!0 mask!2687)))

(assert (=> d!155449 (= (seekEntryOrOpen!0 (select (arr!47803 a!2862) j!93) a!2862 mask!2687) lt!643216)))

(declare-fun b!1471363 () Bool)

(assert (=> b!1471363 (= e!825918 (Found!12066 (index!50657 lt!643217)))))

(declare-fun b!1471364 () Bool)

(assert (=> b!1471364 (= e!825921 (seekKeyOrZeroReturnVacant!0 (x!132239 lt!643217) (index!50657 lt!643217) (index!50657 lt!643217) (select (arr!47803 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1471365 () Bool)

(assert (=> b!1471365 (= e!825920 e!825918)))

(assert (=> b!1471365 (= lt!643214 (select (arr!47803 a!2862) (index!50657 lt!643217)))))

(declare-fun c!135563 () Bool)

(assert (=> b!1471365 (= c!135563 (= lt!643214 (select (arr!47803 a!2862) j!93)))))

(assert (= (and d!155449 c!135568) b!1471360))

(assert (= (and d!155449 (not c!135568)) b!1471365))

(assert (= (and b!1471365 c!135563) b!1471363))

(assert (= (and b!1471365 (not c!135563)) b!1471362))

(assert (= (and b!1471362 c!135567) b!1471358))

(assert (= (and b!1471362 (not c!135567)) b!1471364))

(assert (=> d!155449 m!1357919))

(assert (=> d!155449 m!1357921))

(declare-fun m!1358247 () Bool)

(assert (=> d!155449 m!1358247))

(declare-fun m!1358251 () Bool)

(assert (=> d!155449 m!1358251))

(declare-fun m!1358253 () Bool)

(assert (=> d!155449 m!1358253))

(assert (=> d!155449 m!1357915))

(assert (=> d!155449 m!1357921))

(assert (=> d!155449 m!1357919))

(assert (=> d!155449 m!1357923))

(assert (=> b!1471364 m!1357919))

(declare-fun m!1358259 () Bool)

(assert (=> b!1471364 m!1358259))

(declare-fun m!1358261 () Bool)

(assert (=> b!1471365 m!1358261))

(assert (=> b!1470890 d!155449))

(declare-fun d!155451 () Bool)

(assert (=> d!155451 (= (validKeyInArray!0 (select (arr!47803 a!2862) i!1006)) (and (not (= (select (arr!47803 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47803 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1470891 d!155451))

(push 1)

