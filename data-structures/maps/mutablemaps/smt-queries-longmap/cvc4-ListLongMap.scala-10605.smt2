; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124814 () Bool)

(assert start!124814)

(declare-fun b!1447144 () Bool)

(declare-fun res!978931 () Bool)

(declare-fun e!815058 () Bool)

(assert (=> b!1447144 (=> (not res!978931) (not e!815058))))

(declare-datatypes ((array!98179 0))(
  ( (array!98180 (arr!47373 (Array (_ BitVec 32) (_ BitVec 64))) (size!47924 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98179)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447144 (= res!978931 (validKeyInArray!0 (select (arr!47373 a!2862) j!93)))))

(declare-fun b!1447145 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!635029 () array!98179)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!815066 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!635023 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11648 0))(
  ( (MissingZero!11648 (index!48983 (_ BitVec 32))) (Found!11648 (index!48984 (_ BitVec 32))) (Intermediate!11648 (undefined!12460 Bool) (index!48985 (_ BitVec 32)) (x!130660 (_ BitVec 32))) (Undefined!11648) (MissingVacant!11648 (index!48986 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98179 (_ BitVec 32)) SeekEntryResult!11648)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98179 (_ BitVec 32)) SeekEntryResult!11648)

(assert (=> b!1447145 (= e!815066 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635023 lt!635029 mask!2687) (seekEntryOrOpen!0 lt!635023 lt!635029 mask!2687)))))

(declare-fun b!1447146 () Bool)

(declare-fun res!978926 () Bool)

(assert (=> b!1447146 (=> (not res!978926) (not e!815058))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1447146 (= res!978926 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47924 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47924 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47924 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447147 () Bool)

(declare-fun res!978928 () Bool)

(declare-fun e!815061 () Bool)

(assert (=> b!1447147 (=> (not res!978928) (not e!815061))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1447147 (= res!978928 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447148 () Bool)

(declare-fun e!815059 () Bool)

(declare-fun e!815065 () Bool)

(assert (=> b!1447148 (= e!815059 e!815065)))

(declare-fun res!978936 () Bool)

(assert (=> b!1447148 (=> res!978936 e!815065)))

(assert (=> b!1447148 (= res!978936 (or (and (= (select (arr!47373 a!2862) index!646) (select (store (arr!47373 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47373 a!2862) index!646) (select (arr!47373 a!2862) j!93))) (not (= (select (arr!47373 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447149 () Bool)

(declare-fun lt!635024 () SeekEntryResult!11648)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98179 (_ BitVec 32)) SeekEntryResult!11648)

(assert (=> b!1447149 (= e!815066 (= lt!635024 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635023 lt!635029 mask!2687)))))

(declare-fun b!1447150 () Bool)

(declare-fun res!978930 () Bool)

(assert (=> b!1447150 (=> (not res!978930) (not e!815058))))

(assert (=> b!1447150 (= res!978930 (validKeyInArray!0 (select (arr!47373 a!2862) i!1006)))))

(declare-fun b!1447151 () Bool)

(declare-fun res!978934 () Bool)

(assert (=> b!1447151 (=> (not res!978934) (not e!815058))))

(declare-datatypes ((List!34054 0))(
  ( (Nil!34051) (Cons!34050 (h!35400 (_ BitVec 64)) (t!48755 List!34054)) )
))
(declare-fun arrayNoDuplicates!0 (array!98179 (_ BitVec 32) List!34054) Bool)

(assert (=> b!1447151 (= res!978934 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34051))))

(declare-fun b!1447152 () Bool)

(declare-fun e!815062 () Bool)

(assert (=> b!1447152 (= e!815061 (not e!815062))))

(declare-fun res!978940 () Bool)

(assert (=> b!1447152 (=> res!978940 e!815062)))

(assert (=> b!1447152 (= res!978940 (or (and (= (select (arr!47373 a!2862) index!646) (select (store (arr!47373 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47373 a!2862) index!646) (select (arr!47373 a!2862) j!93))) (not (= (select (arr!47373 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47373 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1447152 e!815059))

(declare-fun res!978937 () Bool)

(assert (=> b!1447152 (=> (not res!978937) (not e!815059))))

(declare-fun lt!635026 () SeekEntryResult!11648)

(assert (=> b!1447152 (= res!978937 (and (= lt!635026 (Found!11648 j!93)) (or (= (select (arr!47373 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47373 a!2862) intermediateBeforeIndex!19) (select (arr!47373 a!2862) j!93)))))))

(assert (=> b!1447152 (= lt!635026 (seekEntryOrOpen!0 (select (arr!47373 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98179 (_ BitVec 32)) Bool)

(assert (=> b!1447152 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48740 0))(
  ( (Unit!48741) )
))
(declare-fun lt!635028 () Unit!48740)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98179 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48740)

(assert (=> b!1447152 (= lt!635028 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447153 () Bool)

(declare-fun res!978927 () Bool)

(assert (=> b!1447153 (=> (not res!978927) (not e!815058))))

(assert (=> b!1447153 (= res!978927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1447154 () Bool)

(declare-fun res!978941 () Bool)

(declare-fun e!815063 () Bool)

(assert (=> b!1447154 (=> (not res!978941) (not e!815063))))

(declare-fun lt!635025 () SeekEntryResult!11648)

(assert (=> b!1447154 (= res!978941 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47373 a!2862) j!93) a!2862 mask!2687) lt!635025))))

(declare-fun b!1447155 () Bool)

(declare-fun res!978929 () Bool)

(assert (=> b!1447155 (=> (not res!978929) (not e!815058))))

(assert (=> b!1447155 (= res!978929 (and (= (size!47924 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47924 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47924 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1447156 () Bool)

(declare-fun e!815064 () Bool)

(assert (=> b!1447156 (= e!815064 e!815063)))

(declare-fun res!978942 () Bool)

(assert (=> b!1447156 (=> (not res!978942) (not e!815063))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447156 (= res!978942 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47373 a!2862) j!93) mask!2687) (select (arr!47373 a!2862) j!93) a!2862 mask!2687) lt!635025))))

(assert (=> b!1447156 (= lt!635025 (Intermediate!11648 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1447157 () Bool)

(declare-fun res!978933 () Bool)

(assert (=> b!1447157 (=> (not res!978933) (not e!815061))))

(assert (=> b!1447157 (= res!978933 e!815066)))

(declare-fun c!133622 () Bool)

(assert (=> b!1447157 (= c!133622 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1447158 () Bool)

(assert (=> b!1447158 (= e!815062 true)))

(declare-fun lt!635027 () SeekEntryResult!11648)

(assert (=> b!1447158 (= lt!635027 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47373 a!2862) j!93) a!2862 mask!2687))))

(declare-fun e!815060 () Bool)

(declare-fun b!1447159 () Bool)

(assert (=> b!1447159 (= e!815060 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun res!978939 () Bool)

(assert (=> start!124814 (=> (not res!978939) (not e!815058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124814 (= res!978939 (validMask!0 mask!2687))))

(assert (=> start!124814 e!815058))

(assert (=> start!124814 true))

(declare-fun array_inv!36318 (array!98179) Bool)

(assert (=> start!124814 (array_inv!36318 a!2862)))

(declare-fun b!1447160 () Bool)

(assert (=> b!1447160 (= e!815058 e!815064)))

(declare-fun res!978932 () Bool)

(assert (=> b!1447160 (=> (not res!978932) (not e!815064))))

(assert (=> b!1447160 (= res!978932 (= (select (store (arr!47373 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447160 (= lt!635029 (array!98180 (store (arr!47373 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47924 a!2862)))))

(declare-fun b!1447161 () Bool)

(assert (=> b!1447161 (= e!815063 e!815061)))

(declare-fun res!978935 () Bool)

(assert (=> b!1447161 (=> (not res!978935) (not e!815061))))

(assert (=> b!1447161 (= res!978935 (= lt!635024 (Intermediate!11648 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1447161 (= lt!635024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635023 mask!2687) lt!635023 lt!635029 mask!2687))))

(assert (=> b!1447161 (= lt!635023 (select (store (arr!47373 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1447162 () Bool)

(assert (=> b!1447162 (= e!815065 e!815060)))

(declare-fun res!978938 () Bool)

(assert (=> b!1447162 (=> (not res!978938) (not e!815060))))

(assert (=> b!1447162 (= res!978938 (= lt!635026 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47373 a!2862) j!93) a!2862 mask!2687)))))

(assert (= (and start!124814 res!978939) b!1447155))

(assert (= (and b!1447155 res!978929) b!1447150))

(assert (= (and b!1447150 res!978930) b!1447144))

(assert (= (and b!1447144 res!978931) b!1447153))

(assert (= (and b!1447153 res!978927) b!1447151))

(assert (= (and b!1447151 res!978934) b!1447146))

(assert (= (and b!1447146 res!978926) b!1447160))

(assert (= (and b!1447160 res!978932) b!1447156))

(assert (= (and b!1447156 res!978942) b!1447154))

(assert (= (and b!1447154 res!978941) b!1447161))

(assert (= (and b!1447161 res!978935) b!1447157))

(assert (= (and b!1447157 c!133622) b!1447149))

(assert (= (and b!1447157 (not c!133622)) b!1447145))

(assert (= (and b!1447157 res!978933) b!1447147))

(assert (= (and b!1447147 res!978928) b!1447152))

(assert (= (and b!1447152 res!978937) b!1447148))

(assert (= (and b!1447148 (not res!978936)) b!1447162))

(assert (= (and b!1447162 res!978938) b!1447159))

(assert (= (and b!1447152 (not res!978940)) b!1447158))

(declare-fun m!1336029 () Bool)

(assert (=> b!1447160 m!1336029))

(declare-fun m!1336031 () Bool)

(assert (=> b!1447160 m!1336031))

(declare-fun m!1336033 () Bool)

(assert (=> b!1447148 m!1336033))

(assert (=> b!1447148 m!1336029))

(declare-fun m!1336035 () Bool)

(assert (=> b!1447148 m!1336035))

(declare-fun m!1336037 () Bool)

(assert (=> b!1447148 m!1336037))

(assert (=> b!1447144 m!1336037))

(assert (=> b!1447144 m!1336037))

(declare-fun m!1336039 () Bool)

(assert (=> b!1447144 m!1336039))

(declare-fun m!1336041 () Bool)

(assert (=> start!124814 m!1336041))

(declare-fun m!1336043 () Bool)

(assert (=> start!124814 m!1336043))

(declare-fun m!1336045 () Bool)

(assert (=> b!1447161 m!1336045))

(assert (=> b!1447161 m!1336045))

(declare-fun m!1336047 () Bool)

(assert (=> b!1447161 m!1336047))

(assert (=> b!1447161 m!1336029))

(declare-fun m!1336049 () Bool)

(assert (=> b!1447161 m!1336049))

(declare-fun m!1336051 () Bool)

(assert (=> b!1447150 m!1336051))

(assert (=> b!1447150 m!1336051))

(declare-fun m!1336053 () Bool)

(assert (=> b!1447150 m!1336053))

(assert (=> b!1447162 m!1336037))

(assert (=> b!1447162 m!1336037))

(declare-fun m!1336055 () Bool)

(assert (=> b!1447162 m!1336055))

(declare-fun m!1336057 () Bool)

(assert (=> b!1447153 m!1336057))

(declare-fun m!1336059 () Bool)

(assert (=> b!1447149 m!1336059))

(assert (=> b!1447154 m!1336037))

(assert (=> b!1447154 m!1336037))

(declare-fun m!1336061 () Bool)

(assert (=> b!1447154 m!1336061))

(declare-fun m!1336063 () Bool)

(assert (=> b!1447152 m!1336063))

(assert (=> b!1447152 m!1336029))

(declare-fun m!1336065 () Bool)

(assert (=> b!1447152 m!1336065))

(assert (=> b!1447152 m!1336035))

(assert (=> b!1447152 m!1336033))

(assert (=> b!1447152 m!1336037))

(declare-fun m!1336067 () Bool)

(assert (=> b!1447152 m!1336067))

(declare-fun m!1336069 () Bool)

(assert (=> b!1447152 m!1336069))

(assert (=> b!1447152 m!1336037))

(assert (=> b!1447156 m!1336037))

(assert (=> b!1447156 m!1336037))

(declare-fun m!1336071 () Bool)

(assert (=> b!1447156 m!1336071))

(assert (=> b!1447156 m!1336071))

(assert (=> b!1447156 m!1336037))

(declare-fun m!1336073 () Bool)

(assert (=> b!1447156 m!1336073))

(declare-fun m!1336075 () Bool)

(assert (=> b!1447151 m!1336075))

(assert (=> b!1447158 m!1336037))

(assert (=> b!1447158 m!1336037))

(declare-fun m!1336077 () Bool)

(assert (=> b!1447158 m!1336077))

(declare-fun m!1336079 () Bool)

(assert (=> b!1447145 m!1336079))

(declare-fun m!1336081 () Bool)

(assert (=> b!1447145 m!1336081))

(push 1)

