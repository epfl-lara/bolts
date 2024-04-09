; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125238 () Bool)

(assert start!125238)

(declare-fun b!1460031 () Bool)

(declare-fun e!821025 () Bool)

(declare-fun e!821028 () Bool)

(assert (=> b!1460031 (= e!821025 (not e!821028))))

(declare-fun res!989960 () Bool)

(assert (=> b!1460031 (=> res!989960 e!821028)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98603 0))(
  ( (array!98604 (arr!47585 (Array (_ BitVec 32) (_ BitVec 64))) (size!48136 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98603)

(assert (=> b!1460031 (= res!989960 (or (and (= (select (arr!47585 a!2862) index!646) (select (store (arr!47585 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47585 a!2862) index!646) (select (arr!47585 a!2862) j!93))) (= (select (arr!47585 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11860 0))(
  ( (MissingZero!11860 (index!49831 (_ BitVec 32))) (Found!11860 (index!49832 (_ BitVec 32))) (Intermediate!11860 (undefined!12672 Bool) (index!49833 (_ BitVec 32)) (x!131440 (_ BitVec 32))) (Undefined!11860) (MissingVacant!11860 (index!49834 (_ BitVec 32))) )
))
(declare-fun lt!639664 () SeekEntryResult!11860)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1460031 (and (= lt!639664 (Found!11860 j!93)) (or (= (select (arr!47585 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47585 a!2862) intermediateBeforeIndex!19) (select (arr!47585 a!2862) j!93))) (let ((bdg!53563 (select (store (arr!47585 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47585 a!2862) index!646) bdg!53563) (= (select (arr!47585 a!2862) index!646) (select (arr!47585 a!2862) j!93))) (= (select (arr!47585 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53563 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98603 (_ BitVec 32)) SeekEntryResult!11860)

(assert (=> b!1460031 (= lt!639664 (seekEntryOrOpen!0 (select (arr!47585 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98603 (_ BitVec 32)) Bool)

(assert (=> b!1460031 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49164 0))(
  ( (Unit!49165) )
))
(declare-fun lt!639659 () Unit!49164)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98603 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49164)

(assert (=> b!1460031 (= lt!639659 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!639656 () array!98603)

(declare-fun lt!639658 () (_ BitVec 64))

(declare-fun b!1460032 () Bool)

(declare-fun e!821027 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98603 (_ BitVec 32)) SeekEntryResult!11860)

(assert (=> b!1460032 (= e!821027 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639658 lt!639656 mask!2687) (seekEntryOrOpen!0 lt!639658 lt!639656 mask!2687)))))

(declare-fun b!1460033 () Bool)

(declare-fun res!989973 () Bool)

(declare-fun e!821026 () Bool)

(assert (=> b!1460033 (=> res!989973 e!821026)))

(declare-fun e!821021 () Bool)

(assert (=> b!1460033 (= res!989973 e!821021)))

(declare-fun c!134552 () Bool)

(assert (=> b!1460033 (= c!134552 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1460034 () Bool)

(declare-fun e!821030 () Bool)

(declare-fun e!821024 () Bool)

(assert (=> b!1460034 (= e!821030 e!821024)))

(declare-fun res!989959 () Bool)

(assert (=> b!1460034 (=> (not res!989959) (not e!821024))))

(declare-fun lt!639661 () SeekEntryResult!11860)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98603 (_ BitVec 32)) SeekEntryResult!11860)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460034 (= res!989959 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47585 a!2862) j!93) mask!2687) (select (arr!47585 a!2862) j!93) a!2862 mask!2687) lt!639661))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1460034 (= lt!639661 (Intermediate!11860 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!639663 () (_ BitVec 32))

(declare-fun lt!639657 () SeekEntryResult!11860)

(declare-fun b!1460035 () Bool)

(assert (=> b!1460035 (= e!821021 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639663 intermediateAfterIndex!19 lt!639658 lt!639656 mask!2687) lt!639657)))))

(declare-fun res!989955 () Bool)

(declare-fun e!821029 () Bool)

(assert (=> start!125238 (=> (not res!989955) (not e!821029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125238 (= res!989955 (validMask!0 mask!2687))))

(assert (=> start!125238 e!821029))

(assert (=> start!125238 true))

(declare-fun array_inv!36530 (array!98603) Bool)

(assert (=> start!125238 (array_inv!36530 a!2862)))

(declare-fun b!1460036 () Bool)

(declare-fun res!989961 () Bool)

(assert (=> b!1460036 (=> (not res!989961) (not e!821029))))

(assert (=> b!1460036 (= res!989961 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48136 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48136 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48136 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!639660 () SeekEntryResult!11860)

(declare-fun b!1460037 () Bool)

(assert (=> b!1460037 (= e!821021 (not (= lt!639660 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639663 lt!639658 lt!639656 mask!2687))))))

(declare-fun b!1460038 () Bool)

(declare-fun res!989972 () Bool)

(assert (=> b!1460038 (=> (not res!989972) (not e!821029))))

(declare-datatypes ((List!34266 0))(
  ( (Nil!34263) (Cons!34262 (h!35612 (_ BitVec 64)) (t!48967 List!34266)) )
))
(declare-fun arrayNoDuplicates!0 (array!98603 (_ BitVec 32) List!34266) Bool)

(assert (=> b!1460038 (= res!989972 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34263))))

(declare-fun b!1460039 () Bool)

(declare-fun e!821022 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460039 (= e!821022 (validKeyInArray!0 lt!639658))))

(declare-fun b!1460040 () Bool)

(declare-fun res!989962 () Bool)

(assert (=> b!1460040 (=> (not res!989962) (not e!821029))))

(assert (=> b!1460040 (= res!989962 (and (= (size!48136 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48136 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48136 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1460041 () Bool)

(declare-fun res!989971 () Bool)

(assert (=> b!1460041 (=> res!989971 e!821026)))

(assert (=> b!1460041 (= res!989971 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1460042 () Bool)

(declare-fun res!989970 () Bool)

(assert (=> b!1460042 (=> (not res!989970) (not e!821024))))

(assert (=> b!1460042 (= res!989970 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47585 a!2862) j!93) a!2862 mask!2687) lt!639661))))

(declare-fun b!1460043 () Bool)

(declare-fun res!989967 () Bool)

(assert (=> b!1460043 (=> res!989967 e!821026)))

(assert (=> b!1460043 (= res!989967 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639663 (select (arr!47585 a!2862) j!93) a!2862 mask!2687) lt!639661)))))

(declare-fun b!1460044 () Bool)

(assert (=> b!1460044 (= e!821027 (= lt!639660 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639658 lt!639656 mask!2687)))))

(declare-fun b!1460045 () Bool)

(declare-fun res!989966 () Bool)

(assert (=> b!1460045 (=> (not res!989966) (not e!821025))))

(assert (=> b!1460045 (= res!989966 e!821027)))

(declare-fun c!134551 () Bool)

(assert (=> b!1460045 (= c!134551 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460046 () Bool)

(assert (=> b!1460046 (= e!821029 e!821030)))

(declare-fun res!989964 () Bool)

(assert (=> b!1460046 (=> (not res!989964) (not e!821030))))

(assert (=> b!1460046 (= res!989964 (= (select (store (arr!47585 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460046 (= lt!639656 (array!98604 (store (arr!47585 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48136 a!2862)))))

(declare-fun b!1460047 () Bool)

(assert (=> b!1460047 (= e!821024 e!821025)))

(declare-fun res!989963 () Bool)

(assert (=> b!1460047 (=> (not res!989963) (not e!821025))))

(assert (=> b!1460047 (= res!989963 (= lt!639660 (Intermediate!11860 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1460047 (= lt!639660 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639658 mask!2687) lt!639658 lt!639656 mask!2687))))

(assert (=> b!1460047 (= lt!639658 (select (store (arr!47585 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1460048 () Bool)

(declare-fun res!989968 () Bool)

(assert (=> b!1460048 (=> (not res!989968) (not e!821029))))

(assert (=> b!1460048 (= res!989968 (validKeyInArray!0 (select (arr!47585 a!2862) i!1006)))))

(declare-fun b!1460049 () Bool)

(declare-fun res!989956 () Bool)

(assert (=> b!1460049 (=> (not res!989956) (not e!821029))))

(assert (=> b!1460049 (= res!989956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460050 () Bool)

(assert (=> b!1460050 (= e!821026 e!821022)))

(declare-fun res!989958 () Bool)

(assert (=> b!1460050 (=> res!989958 e!821022)))

(assert (=> b!1460050 (= res!989958 (bvslt mask!2687 #b00000000000000000000000000000000))))

(assert (=> b!1460050 (= lt!639664 lt!639657)))

(declare-fun lt!639662 () Unit!49164)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98603 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49164)

(assert (=> b!1460050 (= lt!639662 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639663 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1460051 () Bool)

(declare-fun res!989969 () Bool)

(assert (=> b!1460051 (=> (not res!989969) (not e!821029))))

(assert (=> b!1460051 (= res!989969 (validKeyInArray!0 (select (arr!47585 a!2862) j!93)))))

(declare-fun b!1460052 () Bool)

(declare-fun res!989957 () Bool)

(assert (=> b!1460052 (=> (not res!989957) (not e!821025))))

(assert (=> b!1460052 (= res!989957 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460053 () Bool)

(assert (=> b!1460053 (= e!821028 e!821026)))

(declare-fun res!989965 () Bool)

(assert (=> b!1460053 (=> res!989965 e!821026)))

(assert (=> b!1460053 (= res!989965 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639663 #b00000000000000000000000000000000) (bvsge lt!639663 (size!48136 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460053 (= lt!639663 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1460053 (= lt!639657 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639658 lt!639656 mask!2687))))

(assert (=> b!1460053 (= lt!639657 (seekEntryOrOpen!0 lt!639658 lt!639656 mask!2687))))

(assert (= (and start!125238 res!989955) b!1460040))

(assert (= (and b!1460040 res!989962) b!1460048))

(assert (= (and b!1460048 res!989968) b!1460051))

(assert (= (and b!1460051 res!989969) b!1460049))

(assert (= (and b!1460049 res!989956) b!1460038))

(assert (= (and b!1460038 res!989972) b!1460036))

(assert (= (and b!1460036 res!989961) b!1460046))

(assert (= (and b!1460046 res!989964) b!1460034))

(assert (= (and b!1460034 res!989959) b!1460042))

(assert (= (and b!1460042 res!989970) b!1460047))

(assert (= (and b!1460047 res!989963) b!1460045))

(assert (= (and b!1460045 c!134551) b!1460044))

(assert (= (and b!1460045 (not c!134551)) b!1460032))

(assert (= (and b!1460045 res!989966) b!1460052))

(assert (= (and b!1460052 res!989957) b!1460031))

(assert (= (and b!1460031 (not res!989960)) b!1460053))

(assert (= (and b!1460053 (not res!989965)) b!1460043))

(assert (= (and b!1460043 (not res!989967)) b!1460033))

(assert (= (and b!1460033 c!134552) b!1460037))

(assert (= (and b!1460033 (not c!134552)) b!1460035))

(assert (= (and b!1460033 (not res!989973)) b!1460041))

(assert (= (and b!1460041 (not res!989971)) b!1460050))

(assert (= (and b!1460050 (not res!989958)) b!1460039))

(declare-fun m!1347785 () Bool)

(assert (=> b!1460043 m!1347785))

(assert (=> b!1460043 m!1347785))

(declare-fun m!1347787 () Bool)

(assert (=> b!1460043 m!1347787))

(declare-fun m!1347789 () Bool)

(assert (=> b!1460048 m!1347789))

(assert (=> b!1460048 m!1347789))

(declare-fun m!1347791 () Bool)

(assert (=> b!1460048 m!1347791))

(declare-fun m!1347793 () Bool)

(assert (=> b!1460050 m!1347793))

(declare-fun m!1347795 () Bool)

(assert (=> b!1460044 m!1347795))

(declare-fun m!1347797 () Bool)

(assert (=> b!1460035 m!1347797))

(declare-fun m!1347799 () Bool)

(assert (=> b!1460037 m!1347799))

(declare-fun m!1347801 () Bool)

(assert (=> b!1460046 m!1347801))

(declare-fun m!1347803 () Bool)

(assert (=> b!1460046 m!1347803))

(declare-fun m!1347805 () Bool)

(assert (=> b!1460032 m!1347805))

(declare-fun m!1347807 () Bool)

(assert (=> b!1460032 m!1347807))

(assert (=> b!1460034 m!1347785))

(assert (=> b!1460034 m!1347785))

(declare-fun m!1347809 () Bool)

(assert (=> b!1460034 m!1347809))

(assert (=> b!1460034 m!1347809))

(assert (=> b!1460034 m!1347785))

(declare-fun m!1347811 () Bool)

(assert (=> b!1460034 m!1347811))

(declare-fun m!1347813 () Bool)

(assert (=> start!125238 m!1347813))

(declare-fun m!1347815 () Bool)

(assert (=> start!125238 m!1347815))

(declare-fun m!1347817 () Bool)

(assert (=> b!1460053 m!1347817))

(assert (=> b!1460053 m!1347805))

(assert (=> b!1460053 m!1347807))

(declare-fun m!1347819 () Bool)

(assert (=> b!1460047 m!1347819))

(assert (=> b!1460047 m!1347819))

(declare-fun m!1347821 () Bool)

(assert (=> b!1460047 m!1347821))

(assert (=> b!1460047 m!1347801))

(declare-fun m!1347823 () Bool)

(assert (=> b!1460047 m!1347823))

(assert (=> b!1460042 m!1347785))

(assert (=> b!1460042 m!1347785))

(declare-fun m!1347825 () Bool)

(assert (=> b!1460042 m!1347825))

(assert (=> b!1460051 m!1347785))

(assert (=> b!1460051 m!1347785))

(declare-fun m!1347827 () Bool)

(assert (=> b!1460051 m!1347827))

(declare-fun m!1347829 () Bool)

(assert (=> b!1460049 m!1347829))

(declare-fun m!1347831 () Bool)

(assert (=> b!1460039 m!1347831))

(declare-fun m!1347833 () Bool)

(assert (=> b!1460038 m!1347833))

(declare-fun m!1347835 () Bool)

(assert (=> b!1460031 m!1347835))

(assert (=> b!1460031 m!1347801))

(declare-fun m!1347837 () Bool)

(assert (=> b!1460031 m!1347837))

(declare-fun m!1347839 () Bool)

(assert (=> b!1460031 m!1347839))

(declare-fun m!1347841 () Bool)

(assert (=> b!1460031 m!1347841))

(assert (=> b!1460031 m!1347785))

(declare-fun m!1347843 () Bool)

(assert (=> b!1460031 m!1347843))

(declare-fun m!1347845 () Bool)

(assert (=> b!1460031 m!1347845))

(assert (=> b!1460031 m!1347785))

(check-sat (not b!1460051) (not b!1460044) (not b!1460039) (not b!1460032) (not b!1460053) (not b!1460047) (not b!1460050) (not b!1460048) (not b!1460038) (not b!1460043) (not b!1460037) (not b!1460049) (not b!1460042) (not b!1460035) (not start!125238) (not b!1460034) (not b!1460031))
(check-sat)
