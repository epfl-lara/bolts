; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126976 () Bool)

(assert start!126976)

(declare-fun b!1491944 () Bool)

(declare-fun res!1015166 () Bool)

(declare-fun e!835871 () Bool)

(assert (=> b!1491944 (=> (not res!1015166) (not e!835871))))

(declare-datatypes ((array!99666 0))(
  ( (array!99667 (arr!48100 (Array (_ BitVec 32) (_ BitVec 64))) (size!48651 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99666)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491944 (= res!1015166 (validKeyInArray!0 (select (arr!48100 a!2862) i!1006)))))

(declare-fun b!1491945 () Bool)

(declare-fun e!835873 () Bool)

(declare-fun e!835877 () Bool)

(assert (=> b!1491945 (= e!835873 (not e!835877))))

(declare-fun res!1015165 () Bool)

(assert (=> b!1491945 (=> res!1015165 e!835877)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1491945 (= res!1015165 (or (and (= (select (arr!48100 a!2862) index!646) (select (store (arr!48100 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48100 a!2862) index!646) (select (arr!48100 a!2862) j!93))) (= (select (arr!48100 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!835870 () Bool)

(assert (=> b!1491945 e!835870))

(declare-fun res!1015162 () Bool)

(assert (=> b!1491945 (=> (not res!1015162) (not e!835870))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99666 (_ BitVec 32)) Bool)

(assert (=> b!1491945 (= res!1015162 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50014 0))(
  ( (Unit!50015) )
))
(declare-fun lt!650414 () Unit!50014)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99666 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50014)

(assert (=> b!1491945 (= lt!650414 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491946 () Bool)

(declare-fun res!1015161 () Bool)

(assert (=> b!1491946 (=> (not res!1015161) (not e!835871))))

(assert (=> b!1491946 (= res!1015161 (and (= (size!48651 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48651 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48651 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491947 () Bool)

(declare-fun res!1015156 () Bool)

(assert (=> b!1491947 (=> (not res!1015156) (not e!835871))))

(assert (=> b!1491947 (= res!1015156 (validKeyInArray!0 (select (arr!48100 a!2862) j!93)))))

(declare-fun b!1491948 () Bool)

(declare-fun res!1015167 () Bool)

(assert (=> b!1491948 (=> (not res!1015167) (not e!835871))))

(assert (=> b!1491948 (= res!1015167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491949 () Bool)

(declare-fun e!835875 () Bool)

(declare-fun lt!650416 () (_ BitVec 64))

(declare-fun lt!650415 () array!99666)

(declare-datatypes ((SeekEntryResult!12363 0))(
  ( (MissingZero!12363 (index!51843 (_ BitVec 32))) (Found!12363 (index!51844 (_ BitVec 32))) (Intermediate!12363 (undefined!13175 Bool) (index!51845 (_ BitVec 32)) (x!133430 (_ BitVec 32))) (Undefined!12363) (MissingVacant!12363 (index!51846 (_ BitVec 32))) )
))
(declare-fun lt!650413 () SeekEntryResult!12363)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99666 (_ BitVec 32)) SeekEntryResult!12363)

(assert (=> b!1491949 (= e!835875 (= lt!650413 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650416 lt!650415 mask!2687)))))

(declare-fun b!1491950 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99666 (_ BitVec 32)) SeekEntryResult!12363)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99666 (_ BitVec 32)) SeekEntryResult!12363)

(assert (=> b!1491950 (= e!835875 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650416 lt!650415 mask!2687) (seekEntryOrOpen!0 lt!650416 lt!650415 mask!2687)))))

(declare-fun b!1491951 () Bool)

(assert (=> b!1491951 (= e!835877 (and (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110)))))

(declare-fun lt!650411 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491951 (= lt!650411 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!1015157 () Bool)

(assert (=> start!126976 (=> (not res!1015157) (not e!835871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126976 (= res!1015157 (validMask!0 mask!2687))))

(assert (=> start!126976 e!835871))

(assert (=> start!126976 true))

(declare-fun array_inv!37045 (array!99666) Bool)

(assert (=> start!126976 (array_inv!37045 a!2862)))

(declare-fun b!1491952 () Bool)

(declare-fun res!1015160 () Bool)

(assert (=> b!1491952 (=> (not res!1015160) (not e!835871))))

(declare-datatypes ((List!34781 0))(
  ( (Nil!34778) (Cons!34777 (h!36160 (_ BitVec 64)) (t!49482 List!34781)) )
))
(declare-fun arrayNoDuplicates!0 (array!99666 (_ BitVec 32) List!34781) Bool)

(assert (=> b!1491952 (= res!1015160 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34778))))

(declare-fun b!1491953 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1491953 (= e!835870 (or (= (select (arr!48100 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48100 a!2862) intermediateBeforeIndex!19) (select (arr!48100 a!2862) j!93))))))

(declare-fun b!1491954 () Bool)

(declare-fun res!1015164 () Bool)

(assert (=> b!1491954 (=> (not res!1015164) (not e!835873))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1491954 (= res!1015164 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491955 () Bool)

(declare-fun res!1015169 () Bool)

(assert (=> b!1491955 (=> (not res!1015169) (not e!835871))))

(assert (=> b!1491955 (= res!1015169 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48651 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48651 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48651 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1491956 () Bool)

(declare-fun res!1015170 () Bool)

(assert (=> b!1491956 (=> (not res!1015170) (not e!835873))))

(assert (=> b!1491956 (= res!1015170 e!835875)))

(declare-fun c!137924 () Bool)

(assert (=> b!1491956 (= c!137924 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491957 () Bool)

(declare-fun e!835874 () Bool)

(declare-fun e!835872 () Bool)

(assert (=> b!1491957 (= e!835874 e!835872)))

(declare-fun res!1015155 () Bool)

(assert (=> b!1491957 (=> (not res!1015155) (not e!835872))))

(declare-fun lt!650412 () SeekEntryResult!12363)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491957 (= res!1015155 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48100 a!2862) j!93) mask!2687) (select (arr!48100 a!2862) j!93) a!2862 mask!2687) lt!650412))))

(assert (=> b!1491957 (= lt!650412 (Intermediate!12363 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1491958 () Bool)

(assert (=> b!1491958 (= e!835871 e!835874)))

(declare-fun res!1015163 () Bool)

(assert (=> b!1491958 (=> (not res!1015163) (not e!835874))))

(assert (=> b!1491958 (= res!1015163 (= (select (store (arr!48100 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1491958 (= lt!650415 (array!99667 (store (arr!48100 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48651 a!2862)))))

(declare-fun b!1491959 () Bool)

(declare-fun res!1015158 () Bool)

(assert (=> b!1491959 (=> (not res!1015158) (not e!835872))))

(assert (=> b!1491959 (= res!1015158 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48100 a!2862) j!93) a!2862 mask!2687) lt!650412))))

(declare-fun b!1491960 () Bool)

(assert (=> b!1491960 (= e!835872 e!835873)))

(declare-fun res!1015168 () Bool)

(assert (=> b!1491960 (=> (not res!1015168) (not e!835873))))

(assert (=> b!1491960 (= res!1015168 (= lt!650413 (Intermediate!12363 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1491960 (= lt!650413 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650416 mask!2687) lt!650416 lt!650415 mask!2687))))

(assert (=> b!1491960 (= lt!650416 (select (store (arr!48100 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491961 () Bool)

(declare-fun res!1015159 () Bool)

(assert (=> b!1491961 (=> (not res!1015159) (not e!835870))))

(assert (=> b!1491961 (= res!1015159 (= (seekEntryOrOpen!0 (select (arr!48100 a!2862) j!93) a!2862 mask!2687) (Found!12363 j!93)))))

(assert (= (and start!126976 res!1015157) b!1491946))

(assert (= (and b!1491946 res!1015161) b!1491944))

(assert (= (and b!1491944 res!1015166) b!1491947))

(assert (= (and b!1491947 res!1015156) b!1491948))

(assert (= (and b!1491948 res!1015167) b!1491952))

(assert (= (and b!1491952 res!1015160) b!1491955))

(assert (= (and b!1491955 res!1015169) b!1491958))

(assert (= (and b!1491958 res!1015163) b!1491957))

(assert (= (and b!1491957 res!1015155) b!1491959))

(assert (= (and b!1491959 res!1015158) b!1491960))

(assert (= (and b!1491960 res!1015168) b!1491956))

(assert (= (and b!1491956 c!137924) b!1491949))

(assert (= (and b!1491956 (not c!137924)) b!1491950))

(assert (= (and b!1491956 res!1015170) b!1491954))

(assert (= (and b!1491954 res!1015164) b!1491945))

(assert (= (and b!1491945 res!1015162) b!1491961))

(assert (= (and b!1491961 res!1015159) b!1491953))

(assert (= (and b!1491945 (not res!1015165)) b!1491951))

(declare-fun m!1376103 () Bool)

(assert (=> b!1491961 m!1376103))

(assert (=> b!1491961 m!1376103))

(declare-fun m!1376105 () Bool)

(assert (=> b!1491961 m!1376105))

(declare-fun m!1376107 () Bool)

(assert (=> b!1491951 m!1376107))

(declare-fun m!1376109 () Bool)

(assert (=> b!1491949 m!1376109))

(declare-fun m!1376111 () Bool)

(assert (=> b!1491950 m!1376111))

(declare-fun m!1376113 () Bool)

(assert (=> b!1491950 m!1376113))

(assert (=> b!1491959 m!1376103))

(assert (=> b!1491959 m!1376103))

(declare-fun m!1376115 () Bool)

(assert (=> b!1491959 m!1376115))

(assert (=> b!1491947 m!1376103))

(assert (=> b!1491947 m!1376103))

(declare-fun m!1376117 () Bool)

(assert (=> b!1491947 m!1376117))

(declare-fun m!1376119 () Bool)

(assert (=> b!1491953 m!1376119))

(assert (=> b!1491953 m!1376103))

(declare-fun m!1376121 () Bool)

(assert (=> start!126976 m!1376121))

(declare-fun m!1376123 () Bool)

(assert (=> start!126976 m!1376123))

(declare-fun m!1376125 () Bool)

(assert (=> b!1491944 m!1376125))

(assert (=> b!1491944 m!1376125))

(declare-fun m!1376127 () Bool)

(assert (=> b!1491944 m!1376127))

(declare-fun m!1376129 () Bool)

(assert (=> b!1491958 m!1376129))

(declare-fun m!1376131 () Bool)

(assert (=> b!1491958 m!1376131))

(declare-fun m!1376133 () Bool)

(assert (=> b!1491948 m!1376133))

(declare-fun m!1376135 () Bool)

(assert (=> b!1491960 m!1376135))

(assert (=> b!1491960 m!1376135))

(declare-fun m!1376137 () Bool)

(assert (=> b!1491960 m!1376137))

(assert (=> b!1491960 m!1376129))

(declare-fun m!1376139 () Bool)

(assert (=> b!1491960 m!1376139))

(declare-fun m!1376141 () Bool)

(assert (=> b!1491952 m!1376141))

(declare-fun m!1376143 () Bool)

(assert (=> b!1491945 m!1376143))

(assert (=> b!1491945 m!1376129))

(declare-fun m!1376145 () Bool)

(assert (=> b!1491945 m!1376145))

(declare-fun m!1376147 () Bool)

(assert (=> b!1491945 m!1376147))

(declare-fun m!1376149 () Bool)

(assert (=> b!1491945 m!1376149))

(assert (=> b!1491945 m!1376103))

(assert (=> b!1491957 m!1376103))

(assert (=> b!1491957 m!1376103))

(declare-fun m!1376151 () Bool)

(assert (=> b!1491957 m!1376151))

(assert (=> b!1491957 m!1376151))

(assert (=> b!1491957 m!1376103))

(declare-fun m!1376153 () Bool)

(assert (=> b!1491957 m!1376153))

(push 1)

(assert (not b!1491952))

(assert (not b!1491960))

(assert (not b!1491947))

(assert (not b!1491944))

(assert (not b!1491948))

(assert (not b!1491961))

(assert (not b!1491949))

(assert (not start!126976))

(assert (not b!1491957))

(assert (not b!1491951))

(assert (not b!1491950))

(assert (not b!1491945))

(assert (not b!1491959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1492205 () Bool)

(declare-fun e!836007 () Bool)

(declare-fun call!67945 () Bool)

(assert (=> b!1492205 (= e!836007 call!67945)))

(declare-fun b!1492206 () Bool)

(declare-fun e!836008 () Bool)

(assert (=> b!1492206 (= e!836007 e!836008)))

(declare-fun lt!650515 () (_ BitVec 64))

(assert (=> b!1492206 (= lt!650515 (select (arr!48100 a!2862) j!93))))

(declare-fun lt!650517 () Unit!50014)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99666 (_ BitVec 64) (_ BitVec 32)) Unit!50014)

(assert (=> b!1492206 (= lt!650517 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!650515 j!93))))

(declare-fun arrayContainsKey!0 (array!99666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1492206 (arrayContainsKey!0 a!2862 lt!650515 #b00000000000000000000000000000000)))

(declare-fun lt!650516 () Unit!50014)

(assert (=> b!1492206 (= lt!650516 lt!650517)))

(declare-fun res!1015308 () Bool)

(assert (=> b!1492206 (= res!1015308 (= (seekEntryOrOpen!0 (select (arr!48100 a!2862) j!93) a!2862 mask!2687) (Found!12363 j!93)))))

(assert (=> b!1492206 (=> (not res!1015308) (not e!836008))))

(declare-fun bm!67942 () Bool)

(assert (=> bm!67942 (= call!67945 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!156793 () Bool)

(declare-fun res!1015307 () Bool)

(declare-fun e!836009 () Bool)

(assert (=> d!156793 (=> res!1015307 e!836009)))

(assert (=> d!156793 (= res!1015307 (bvsge j!93 (size!48651 a!2862)))))

(assert (=> d!156793 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!836009)))

(declare-fun b!1492207 () Bool)

(assert (=> b!1492207 (= e!836009 e!836007)))

(declare-fun c!137979 () Bool)

(assert (=> b!1492207 (= c!137979 (validKeyInArray!0 (select (arr!48100 a!2862) j!93)))))

(declare-fun b!1492208 () Bool)

(assert (=> b!1492208 (= e!836008 call!67945)))

(assert (= (and d!156793 (not res!1015307)) b!1492207))

(assert (= (and b!1492207 c!137979) b!1492206))

(assert (= (and b!1492207 (not c!137979)) b!1492205))

(assert (= (and b!1492206 res!1015308) b!1492208))

(assert (= (or b!1492208 b!1492205) bm!67942))

(assert (=> b!1492206 m!1376103))

(declare-fun m!1376337 () Bool)

(assert (=> b!1492206 m!1376337))

(declare-fun m!1376339 () Bool)

(assert (=> b!1492206 m!1376339))

(assert (=> b!1492206 m!1376103))

(assert (=> b!1492206 m!1376105))

(declare-fun m!1376341 () Bool)

(assert (=> bm!67942 m!1376341))

(assert (=> b!1492207 m!1376103))

(assert (=> b!1492207 m!1376103))

(assert (=> b!1492207 m!1376117))

(assert (=> b!1491945 d!156793))

(declare-fun d!156799 () Bool)

(assert (=> d!156799 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!650524 () Unit!50014)

(declare-fun choose!38 (array!99666 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50014)

(assert (=> d!156799 (= lt!650524 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156799 (validMask!0 mask!2687)))

(assert (=> d!156799 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!650524)))

(declare-fun bs!42856 () Bool)

(assert (= bs!42856 d!156799))

(assert (=> bs!42856 m!1376149))

(declare-fun m!1376343 () Bool)

(assert (=> bs!42856 m!1376343))

(assert (=> bs!42856 m!1376121))

(assert (=> b!1491945 d!156799))

(declare-fun d!156801 () Bool)

(assert (=> d!156801 (= (validKeyInArray!0 (select (arr!48100 a!2862) j!93)) (and (not (= (select (arr!48100 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48100 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1491947 d!156801))

(declare-fun e!836040 () SeekEntryResult!12363)

(declare-fun b!1492263 () Bool)

(assert (=> b!1492263 (= e!836040 (Intermediate!12363 true (toIndex!0 (select (arr!48100 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1492264 () Bool)

(declare-fun lt!650541 () SeekEntryResult!12363)

(assert (=> b!1492264 (and (bvsge (index!51845 lt!650541) #b00000000000000000000000000000000) (bvslt (index!51845 lt!650541) (size!48651 a!2862)))))

(declare-fun res!1015329 () Bool)

(assert (=> b!1492264 (= res!1015329 (= (select (arr!48100 a!2862) (index!51845 lt!650541)) (select (arr!48100 a!2862) j!93)))))

(declare-fun e!836041 () Bool)

(assert (=> b!1492264 (=> res!1015329 e!836041)))

(declare-fun e!836042 () Bool)

(assert (=> b!1492264 (= e!836042 e!836041)))

(declare-fun b!1492265 () Bool)

(assert (=> b!1492265 (and (bvsge (index!51845 lt!650541) #b00000000000000000000000000000000) (bvslt (index!51845 lt!650541) (size!48651 a!2862)))))

(declare-fun res!1015328 () Bool)

(assert (=> b!1492265 (= res!1015328 (= (select (arr!48100 a!2862) (index!51845 lt!650541)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492265 (=> res!1015328 e!836041)))

(declare-fun d!156803 () Bool)

(declare-fun e!836044 () Bool)

(assert (=> d!156803 e!836044))

(declare-fun c!137998 () Bool)

(assert (=> d!156803 (= c!137998 (and (is-Intermediate!12363 lt!650541) (undefined!13175 lt!650541)))))

(assert (=> d!156803 (= lt!650541 e!836040)))

(declare-fun c!138000 () Bool)

(assert (=> d!156803 (= c!138000 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!650542 () (_ BitVec 64))

(assert (=> d!156803 (= lt!650542 (select (arr!48100 a!2862) (toIndex!0 (select (arr!48100 a!2862) j!93) mask!2687)))))

(assert (=> d!156803 (validMask!0 mask!2687)))

(assert (=> d!156803 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48100 a!2862) j!93) mask!2687) (select (arr!48100 a!2862) j!93) a!2862 mask!2687) lt!650541)))

(declare-fun b!1492266 () Bool)

(assert (=> b!1492266 (= e!836044 e!836042)))

(declare-fun res!1015330 () Bool)

(assert (=> b!1492266 (= res!1015330 (and (is-Intermediate!12363 lt!650541) (not (undefined!13175 lt!650541)) (bvslt (x!133430 lt!650541) #b01111111111111111111111111111110) (bvsge (x!133430 lt!650541) #b00000000000000000000000000000000) (bvsge (x!133430 lt!650541) #b00000000000000000000000000000000)))))

(assert (=> b!1492266 (=> (not res!1015330) (not e!836042))))

(declare-fun b!1492267 () Bool)

(assert (=> b!1492267 (and (bvsge (index!51845 lt!650541) #b00000000000000000000000000000000) (bvslt (index!51845 lt!650541) (size!48651 a!2862)))))

(assert (=> b!1492267 (= e!836041 (= (select (arr!48100 a!2862) (index!51845 lt!650541)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836043 () SeekEntryResult!12363)

(declare-fun b!1492268 () Bool)

(assert (=> b!1492268 (= e!836043 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48100 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48100 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1492269 () Bool)

(assert (=> b!1492269 (= e!836044 (bvsge (x!133430 lt!650541) #b01111111111111111111111111111110))))

(declare-fun b!1492270 () Bool)

(assert (=> b!1492270 (= e!836043 (Intermediate!12363 false (toIndex!0 (select (arr!48100 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1492271 () Bool)

(assert (=> b!1492271 (= e!836040 e!836043)))

(declare-fun c!137999 () Bool)

(assert (=> b!1492271 (= c!137999 (or (= lt!650542 (select (arr!48100 a!2862) j!93)) (= (bvadd lt!650542 lt!650542) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!156803 c!138000) b!1492263))

(assert (= (and d!156803 (not c!138000)) b!1492271))

(assert (= (and b!1492271 c!137999) b!1492270))

(assert (= (and b!1492271 (not c!137999)) b!1492268))

(assert (= (and d!156803 c!137998) b!1492269))

(assert (= (and d!156803 (not c!137998)) b!1492266))

(assert (= (and b!1492266 res!1015330) b!1492264))

(assert (= (and b!1492264 (not res!1015329)) b!1492265))

(assert (= (and b!1492265 (not res!1015328)) b!1492267))

(declare-fun m!1376361 () Bool)

(assert (=> b!1492264 m!1376361))

(assert (=> d!156803 m!1376151))

(declare-fun m!1376363 () Bool)

(assert (=> d!156803 m!1376363))

(assert (=> d!156803 m!1376121))

(assert (=> b!1492268 m!1376151))

(declare-fun m!1376365 () Bool)

(assert (=> b!1492268 m!1376365))

(assert (=> b!1492268 m!1376365))

(assert (=> b!1492268 m!1376103))

(declare-fun m!1376367 () Bool)

(assert (=> b!1492268 m!1376367))

(assert (=> b!1492267 m!1376361))

(assert (=> b!1492265 m!1376361))

(assert (=> b!1491957 d!156803))

(declare-fun d!156813 () Bool)

(declare-fun lt!650548 () (_ BitVec 32))

(declare-fun lt!650547 () (_ BitVec 32))

(assert (=> d!156813 (= lt!650548 (bvmul (bvxor lt!650547 (bvlshr lt!650547 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156813 (= lt!650547 ((_ extract 31 0) (bvand (bvxor (select (arr!48100 a!2862) j!93) (bvlshr (select (arr!48100 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156813 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1015331 (let ((h!36165 ((_ extract 31 0) (bvand (bvxor (select (arr!48100 a!2862) j!93) (bvlshr (select (arr!48100 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133440 (bvmul (bvxor h!36165 (bvlshr h!36165 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133440 (bvlshr x!133440 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1015331 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1015331 #b00000000000000000000000000000000))))))

(assert (=> d!156813 (= (toIndex!0 (select (arr!48100 a!2862) j!93) mask!2687) (bvand (bvxor lt!650548 (bvlshr lt!650548 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1491957 d!156813))

(declare-fun b!1492272 () Bool)

(declare-fun e!836045 () SeekEntryResult!12363)

(assert (=> b!1492272 (= e!836045 (Intermediate!12363 true index!646 x!665))))

(declare-fun b!1492273 () Bool)

(declare-fun lt!650549 () SeekEntryResult!12363)

(assert (=> b!1492273 (and (bvsge (index!51845 lt!650549) #b00000000000000000000000000000000) (bvslt (index!51845 lt!650549) (size!48651 a!2862)))))

(declare-fun res!1015333 () Bool)

(assert (=> b!1492273 (= res!1015333 (= (select (arr!48100 a!2862) (index!51845 lt!650549)) (select (arr!48100 a!2862) j!93)))))

(declare-fun e!836046 () Bool)

(assert (=> b!1492273 (=> res!1015333 e!836046)))

(declare-fun e!836047 () Bool)

(assert (=> b!1492273 (= e!836047 e!836046)))

(declare-fun b!1492274 () Bool)

(assert (=> b!1492274 (and (bvsge (index!51845 lt!650549) #b00000000000000000000000000000000) (bvslt (index!51845 lt!650549) (size!48651 a!2862)))))

(declare-fun res!1015332 () Bool)

(assert (=> b!1492274 (= res!1015332 (= (select (arr!48100 a!2862) (index!51845 lt!650549)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492274 (=> res!1015332 e!836046)))

(declare-fun d!156815 () Bool)

(declare-fun e!836049 () Bool)

(assert (=> d!156815 e!836049))

(declare-fun c!138001 () Bool)

(assert (=> d!156815 (= c!138001 (and (is-Intermediate!12363 lt!650549) (undefined!13175 lt!650549)))))

(assert (=> d!156815 (= lt!650549 e!836045)))

(declare-fun c!138003 () Bool)

(assert (=> d!156815 (= c!138003 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!650550 () (_ BitVec 64))

(assert (=> d!156815 (= lt!650550 (select (arr!48100 a!2862) index!646))))

(assert (=> d!156815 (validMask!0 mask!2687)))

(assert (=> d!156815 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48100 a!2862) j!93) a!2862 mask!2687) lt!650549)))

(declare-fun b!1492275 () Bool)

(assert (=> b!1492275 (= e!836049 e!836047)))

(declare-fun res!1015334 () Bool)

(assert (=> b!1492275 (= res!1015334 (and (is-Intermediate!12363 lt!650549) (not (undefined!13175 lt!650549)) (bvslt (x!133430 lt!650549) #b01111111111111111111111111111110) (bvsge (x!133430 lt!650549) #b00000000000000000000000000000000) (bvsge (x!133430 lt!650549) x!665)))))

(assert (=> b!1492275 (=> (not res!1015334) (not e!836047))))

(declare-fun b!1492276 () Bool)

(assert (=> b!1492276 (and (bvsge (index!51845 lt!650549) #b00000000000000000000000000000000) (bvslt (index!51845 lt!650549) (size!48651 a!2862)))))

(assert (=> b!1492276 (= e!836046 (= (select (arr!48100 a!2862) (index!51845 lt!650549)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836048 () SeekEntryResult!12363)

(declare-fun b!1492277 () Bool)

(assert (=> b!1492277 (= e!836048 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48100 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1492278 () Bool)

(assert (=> b!1492278 (= e!836049 (bvsge (x!133430 lt!650549) #b01111111111111111111111111111110))))

(declare-fun b!1492279 () Bool)

(assert (=> b!1492279 (= e!836048 (Intermediate!12363 false index!646 x!665))))

(declare-fun b!1492280 () Bool)

(assert (=> b!1492280 (= e!836045 e!836048)))

(declare-fun c!138002 () Bool)

(assert (=> b!1492280 (= c!138002 (or (= lt!650550 (select (arr!48100 a!2862) j!93)) (= (bvadd lt!650550 lt!650550) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!156815 c!138003) b!1492272))

(assert (= (and d!156815 (not c!138003)) b!1492280))

(assert (= (and b!1492280 c!138002) b!1492279))

(assert (= (and b!1492280 (not c!138002)) b!1492277))

(assert (= (and d!156815 c!138001) b!1492278))

(assert (= (and d!156815 (not c!138001)) b!1492275))

(assert (= (and b!1492275 res!1015334) b!1492273))

(assert (= (and b!1492273 (not res!1015333)) b!1492274))

(assert (= (and b!1492274 (not res!1015332)) b!1492276))

(declare-fun m!1376369 () Bool)

(assert (=> b!1492273 m!1376369))

(assert (=> d!156815 m!1376147))

(assert (=> d!156815 m!1376121))

(assert (=> b!1492277 m!1376107))

(assert (=> b!1492277 m!1376107))

(assert (=> b!1492277 m!1376103))

(declare-fun m!1376371 () Bool)

(assert (=> b!1492277 m!1376371))

(assert (=> b!1492276 m!1376369))

(assert (=> b!1492274 m!1376369))

(assert (=> b!1491959 d!156815))

(declare-fun b!1492281 () Bool)

(declare-fun e!836050 () Bool)

(declare-fun call!67946 () Bool)

(assert (=> b!1492281 (= e!836050 call!67946)))

(declare-fun b!1492282 () Bool)

(declare-fun e!836051 () Bool)

(assert (=> b!1492282 (= e!836050 e!836051)))

(declare-fun lt!650551 () (_ BitVec 64))

(assert (=> b!1492282 (= lt!650551 (select (arr!48100 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!650553 () Unit!50014)

(assert (=> b!1492282 (= lt!650553 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!650551 #b00000000000000000000000000000000))))

(assert (=> b!1492282 (arrayContainsKey!0 a!2862 lt!650551 #b00000000000000000000000000000000)))

(declare-fun lt!650552 () Unit!50014)

(assert (=> b!1492282 (= lt!650552 lt!650553)))

(declare-fun res!1015336 () Bool)

(assert (=> b!1492282 (= res!1015336 (= (seekEntryOrOpen!0 (select (arr!48100 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12363 #b00000000000000000000000000000000)))))

(assert (=> b!1492282 (=> (not res!1015336) (not e!836051))))

(declare-fun bm!67943 () Bool)

(assert (=> bm!67943 (= call!67946 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!156817 () Bool)

(declare-fun res!1015335 () Bool)

(declare-fun e!836052 () Bool)

(assert (=> d!156817 (=> res!1015335 e!836052)))

(assert (=> d!156817 (= res!1015335 (bvsge #b00000000000000000000000000000000 (size!48651 a!2862)))))

(assert (=> d!156817 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!836052)))

(declare-fun b!1492283 () Bool)

(assert (=> b!1492283 (= e!836052 e!836050)))

(declare-fun c!138004 () Bool)

(assert (=> b!1492283 (= c!138004 (validKeyInArray!0 (select (arr!48100 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1492284 () Bool)

(assert (=> b!1492284 (= e!836051 call!67946)))

(assert (= (and d!156817 (not res!1015335)) b!1492283))

(assert (= (and b!1492283 c!138004) b!1492282))

(assert (= (and b!1492283 (not c!138004)) b!1492281))

(assert (= (and b!1492282 res!1015336) b!1492284))

(assert (= (or b!1492284 b!1492281) bm!67943))

(declare-fun m!1376373 () Bool)

(assert (=> b!1492282 m!1376373))

(declare-fun m!1376375 () Bool)

(assert (=> b!1492282 m!1376375))

(declare-fun m!1376377 () Bool)

(assert (=> b!1492282 m!1376377))

(assert (=> b!1492282 m!1376373))

(declare-fun m!1376379 () Bool)

(assert (=> b!1492282 m!1376379))

(declare-fun m!1376381 () Bool)

(assert (=> bm!67943 m!1376381))

(assert (=> b!1492283 m!1376373))

(assert (=> b!1492283 m!1376373))

(declare-fun m!1376383 () Bool)

(assert (=> b!1492283 m!1376383))

(assert (=> b!1491948 d!156817))

(declare-fun b!1492315 () Bool)

(declare-fun c!138021 () Bool)

(declare-fun lt!650568 () (_ BitVec 64))

(assert (=> b!1492315 (= c!138021 (= lt!650568 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836068 () SeekEntryResult!12363)

(declare-fun e!836070 () SeekEntryResult!12363)

(assert (=> b!1492315 (= e!836068 e!836070)))

(declare-fun b!1492316 () Bool)

(declare-fun e!836069 () SeekEntryResult!12363)

(assert (=> b!1492316 (= e!836069 Undefined!12363)))

(declare-fun b!1492317 () Bool)

(assert (=> b!1492317 (= e!836068 (Found!12363 index!646))))

(declare-fun b!1492318 () Bool)

(assert (=> b!1492318 (= e!836070 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!650416 lt!650415 mask!2687))))

(declare-fun b!1492320 () Bool)

(assert (=> b!1492320 (= e!836070 (MissingVacant!12363 intermediateAfterIndex!19))))

(declare-fun d!156819 () Bool)

(declare-fun lt!650567 () SeekEntryResult!12363)

(assert (=> d!156819 (and (or (is-Undefined!12363 lt!650567) (not (is-Found!12363 lt!650567)) (and (bvsge (index!51844 lt!650567) #b00000000000000000000000000000000) (bvslt (index!51844 lt!650567) (size!48651 lt!650415)))) (or (is-Undefined!12363 lt!650567) (is-Found!12363 lt!650567) (not (is-MissingVacant!12363 lt!650567)) (not (= (index!51846 lt!650567) intermediateAfterIndex!19)) (and (bvsge (index!51846 lt!650567) #b00000000000000000000000000000000) (bvslt (index!51846 lt!650567) (size!48651 lt!650415)))) (or (is-Undefined!12363 lt!650567) (ite (is-Found!12363 lt!650567) (= (select (arr!48100 lt!650415) (index!51844 lt!650567)) lt!650416) (and (is-MissingVacant!12363 lt!650567) (= (index!51846 lt!650567) intermediateAfterIndex!19) (= (select (arr!48100 lt!650415) (index!51846 lt!650567)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156819 (= lt!650567 e!836069)))

(declare-fun c!138022 () Bool)

(assert (=> d!156819 (= c!138022 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156819 (= lt!650568 (select (arr!48100 lt!650415) index!646))))

(assert (=> d!156819 (validMask!0 mask!2687)))

(assert (=> d!156819 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650416 lt!650415 mask!2687) lt!650567)))

(declare-fun b!1492319 () Bool)

(assert (=> b!1492319 (= e!836069 e!836068)))

(declare-fun c!138020 () Bool)

(assert (=> b!1492319 (= c!138020 (= lt!650568 lt!650416))))

(assert (= (and d!156819 c!138022) b!1492316))

(assert (= (and d!156819 (not c!138022)) b!1492319))

(assert (= (and b!1492319 c!138020) b!1492317))

(assert (= (and b!1492319 (not c!138020)) b!1492315))

(assert (= (and b!1492315 c!138021) b!1492320))

(assert (= (and b!1492315 (not c!138021)) b!1492318))

(assert (=> b!1492318 m!1376107))

(assert (=> b!1492318 m!1376107))

(declare-fun m!1376395 () Bool)

(assert (=> b!1492318 m!1376395))

(declare-fun m!1376397 () Bool)

(assert (=> d!156819 m!1376397))

(declare-fun m!1376399 () Bool)

(assert (=> d!156819 m!1376399))

(declare-fun m!1376401 () Bool)

(assert (=> d!156819 m!1376401))

(assert (=> d!156819 m!1376121))

(assert (=> b!1491950 d!156819))

(declare-fun b!1492365 () Bool)

(declare-fun c!138045 () Bool)

(declare-fun lt!650590 () (_ BitVec 64))

(assert (=> b!1492365 (= c!138045 (= lt!650590 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836097 () SeekEntryResult!12363)

(declare-fun e!836096 () SeekEntryResult!12363)

(assert (=> b!1492365 (= e!836097 e!836096)))

(declare-fun d!156823 () Bool)

(declare-fun lt!650592 () SeekEntryResult!12363)

(assert (=> d!156823 (and (or (is-Undefined!12363 lt!650592) (not (is-Found!12363 lt!650592)) (and (bvsge (index!51844 lt!650592) #b00000000000000000000000000000000) (bvslt (index!51844 lt!650592) (size!48651 lt!650415)))) (or (is-Undefined!12363 lt!650592) (is-Found!12363 lt!650592) (not (is-MissingZero!12363 lt!650592)) (and (bvsge (index!51843 lt!650592) #b00000000000000000000000000000000) (bvslt (index!51843 lt!650592) (size!48651 lt!650415)))) (or (is-Undefined!12363 lt!650592) (is-Found!12363 lt!650592) (is-MissingZero!12363 lt!650592) (not (is-MissingVacant!12363 lt!650592)) (and (bvsge (index!51846 lt!650592) #b00000000000000000000000000000000) (bvslt (index!51846 lt!650592) (size!48651 lt!650415)))) (or (is-Undefined!12363 lt!650592) (ite (is-Found!12363 lt!650592) (= (select (arr!48100 lt!650415) (index!51844 lt!650592)) lt!650416) (ite (is-MissingZero!12363 lt!650592) (= (select (arr!48100 lt!650415) (index!51843 lt!650592)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12363 lt!650592) (= (select (arr!48100 lt!650415) (index!51846 lt!650592)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!836095 () SeekEntryResult!12363)

(assert (=> d!156823 (= lt!650592 e!836095)))

(declare-fun c!138043 () Bool)

(declare-fun lt!650591 () SeekEntryResult!12363)

(assert (=> d!156823 (= c!138043 (and (is-Intermediate!12363 lt!650591) (undefined!13175 lt!650591)))))

(assert (=> d!156823 (= lt!650591 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650416 mask!2687) lt!650416 lt!650415 mask!2687))))

(assert (=> d!156823 (validMask!0 mask!2687)))

(assert (=> d!156823 (= (seekEntryOrOpen!0 lt!650416 lt!650415 mask!2687) lt!650592)))

(declare-fun b!1492366 () Bool)

(assert (=> b!1492366 (= e!836096 (seekKeyOrZeroReturnVacant!0 (x!133430 lt!650591) (index!51845 lt!650591) (index!51845 lt!650591) lt!650416 lt!650415 mask!2687))))

(declare-fun b!1492367 () Bool)

(assert (=> b!1492367 (= e!836095 e!836097)))

(assert (=> b!1492367 (= lt!650590 (select (arr!48100 lt!650415) (index!51845 lt!650591)))))

(declare-fun c!138044 () Bool)

(assert (=> b!1492367 (= c!138044 (= lt!650590 lt!650416))))

(declare-fun b!1492368 () Bool)

(assert (=> b!1492368 (= e!836095 Undefined!12363)))

(declare-fun b!1492369 () Bool)

(assert (=> b!1492369 (= e!836096 (MissingZero!12363 (index!51845 lt!650591)))))

(declare-fun b!1492370 () Bool)

(assert (=> b!1492370 (= e!836097 (Found!12363 (index!51845 lt!650591)))))

(assert (= (and d!156823 c!138043) b!1492368))

(assert (= (and d!156823 (not c!138043)) b!1492367))

(assert (= (and b!1492367 c!138044) b!1492370))

(assert (= (and b!1492367 (not c!138044)) b!1492365))

(assert (= (and b!1492365 c!138045) b!1492369))

(assert (= (and b!1492365 (not c!138045)) b!1492366))

(assert (=> d!156823 m!1376135))

(assert (=> d!156823 m!1376137))

(assert (=> d!156823 m!1376121))

(declare-fun m!1376421 () Bool)

(assert (=> d!156823 m!1376421))

(assert (=> d!156823 m!1376135))

(declare-fun m!1376423 () Bool)

(assert (=> d!156823 m!1376423))

(declare-fun m!1376425 () Bool)

(assert (=> d!156823 m!1376425))

(declare-fun m!1376427 () Bool)

(assert (=> b!1492366 m!1376427))

(declare-fun m!1376429 () Bool)

(assert (=> b!1492367 m!1376429))

(assert (=> b!1491950 d!156823))

