; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126232 () Bool)

(assert start!126232)

(declare-fun b!1478024 () Bool)

(declare-fun res!1004198 () Bool)

(declare-fun e!829163 () Bool)

(assert (=> b!1478024 (=> (not res!1004198) (not e!829163))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478024 (= res!1004198 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478025 () Bool)

(declare-fun res!1004199 () Bool)

(declare-fun e!829167 () Bool)

(assert (=> b!1478025 (=> (not res!1004199) (not e!829167))))

(declare-datatypes ((array!99255 0))(
  ( (array!99256 (arr!47902 (Array (_ BitVec 32) (_ BitVec 64))) (size!48453 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99255)

(declare-datatypes ((List!34583 0))(
  ( (Nil!34580) (Cons!34579 (h!35947 (_ BitVec 64)) (t!49284 List!34583)) )
))
(declare-fun arrayNoDuplicates!0 (array!99255 (_ BitVec 32) List!34583) Bool)

(assert (=> b!1478025 (= res!1004199 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34580))))

(declare-fun lt!645514 () array!99255)

(declare-fun lt!645513 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12165 0))(
  ( (MissingZero!12165 (index!51051 (_ BitVec 32))) (Found!12165 (index!51052 (_ BitVec 32))) (Intermediate!12165 (undefined!12977 Bool) (index!51053 (_ BitVec 32)) (x!132647 (_ BitVec 32))) (Undefined!12165) (MissingVacant!12165 (index!51054 (_ BitVec 32))) )
))
(declare-fun lt!645509 () SeekEntryResult!12165)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!829162 () Bool)

(declare-fun b!1478026 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99255 (_ BitVec 32)) SeekEntryResult!12165)

(assert (=> b!1478026 (= e!829162 (= lt!645509 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645513 lt!645514 mask!2687)))))

(declare-fun b!1478027 () Bool)

(declare-fun e!829166 () Bool)

(assert (=> b!1478027 (= e!829167 e!829166)))

(declare-fun res!1004187 () Bool)

(assert (=> b!1478027 (=> (not res!1004187) (not e!829166))))

(assert (=> b!1478027 (= res!1004187 (= (select (store (arr!47902 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478027 (= lt!645514 (array!99256 (store (arr!47902 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48453 a!2862)))))

(declare-fun b!1478028 () Bool)

(declare-fun res!1004197 () Bool)

(assert (=> b!1478028 (=> (not res!1004197) (not e!829163))))

(assert (=> b!1478028 (= res!1004197 e!829162)))

(declare-fun c!136442 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1478028 (= c!136442 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1478030 () Bool)

(declare-fun e!829164 () Bool)

(assert (=> b!1478030 (= e!829166 e!829164)))

(declare-fun res!1004184 () Bool)

(assert (=> b!1478030 (=> (not res!1004184) (not e!829164))))

(declare-fun lt!645511 () SeekEntryResult!12165)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478030 (= res!1004184 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47902 a!2862) j!93) mask!2687) (select (arr!47902 a!2862) j!93) a!2862 mask!2687) lt!645511))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1478030 (= lt!645511 (Intermediate!12165 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478031 () Bool)

(declare-fun res!1004190 () Bool)

(assert (=> b!1478031 (=> (not res!1004190) (not e!829167))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99255 (_ BitVec 32)) Bool)

(assert (=> b!1478031 (= res!1004190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1478032 () Bool)

(assert (=> b!1478032 (= e!829164 e!829163)))

(declare-fun res!1004192 () Bool)

(assert (=> b!1478032 (=> (not res!1004192) (not e!829163))))

(assert (=> b!1478032 (= res!1004192 (= lt!645509 (Intermediate!12165 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1478032 (= lt!645509 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645513 mask!2687) lt!645513 lt!645514 mask!2687))))

(assert (=> b!1478032 (= lt!645513 (select (store (arr!47902 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478033 () Bool)

(declare-fun e!829165 () Bool)

(assert (=> b!1478033 (= e!829165 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1478034 () Bool)

(declare-fun e!829169 () Bool)

(declare-fun e!829161 () Bool)

(assert (=> b!1478034 (= e!829169 e!829161)))

(declare-fun res!1004194 () Bool)

(assert (=> b!1478034 (=> res!1004194 e!829161)))

(assert (=> b!1478034 (= res!1004194 (or (and (= (select (arr!47902 a!2862) index!646) (select (store (arr!47902 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47902 a!2862) index!646) (select (arr!47902 a!2862) j!93))) (not (= (select (arr!47902 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478035 () Bool)

(declare-fun res!1004188 () Bool)

(assert (=> b!1478035 (=> (not res!1004188) (not e!829167))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478035 (= res!1004188 (validKeyInArray!0 (select (arr!47902 a!2862) j!93)))))

(declare-fun b!1478036 () Bool)

(declare-fun res!1004189 () Bool)

(assert (=> b!1478036 (=> (not res!1004189) (not e!829167))))

(assert (=> b!1478036 (= res!1004189 (and (= (size!48453 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48453 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48453 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478037 () Bool)

(declare-fun res!1004186 () Bool)

(assert (=> b!1478037 (=> (not res!1004186) (not e!829167))))

(assert (=> b!1478037 (= res!1004186 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48453 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48453 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48453 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478038 () Bool)

(assert (=> b!1478038 (= e!829163 (not true))))

(assert (=> b!1478038 e!829169))

(declare-fun res!1004193 () Bool)

(assert (=> b!1478038 (=> (not res!1004193) (not e!829169))))

(declare-fun lt!645512 () SeekEntryResult!12165)

(assert (=> b!1478038 (= res!1004193 (and (= lt!645512 (Found!12165 j!93)) (or (= (select (arr!47902 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47902 a!2862) intermediateBeforeIndex!19) (select (arr!47902 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99255 (_ BitVec 32)) SeekEntryResult!12165)

(assert (=> b!1478038 (= lt!645512 (seekEntryOrOpen!0 (select (arr!47902 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1478038 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49618 0))(
  ( (Unit!49619) )
))
(declare-fun lt!645510 () Unit!49618)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99255 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49618)

(assert (=> b!1478038 (= lt!645510 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478039 () Bool)

(declare-fun res!1004185 () Bool)

(assert (=> b!1478039 (=> (not res!1004185) (not e!829164))))

(assert (=> b!1478039 (= res!1004185 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47902 a!2862) j!93) a!2862 mask!2687) lt!645511))))

(declare-fun res!1004191 () Bool)

(assert (=> start!126232 (=> (not res!1004191) (not e!829167))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126232 (= res!1004191 (validMask!0 mask!2687))))

(assert (=> start!126232 e!829167))

(assert (=> start!126232 true))

(declare-fun array_inv!36847 (array!99255) Bool)

(assert (=> start!126232 (array_inv!36847 a!2862)))

(declare-fun b!1478029 () Bool)

(assert (=> b!1478029 (= e!829161 e!829165)))

(declare-fun res!1004196 () Bool)

(assert (=> b!1478029 (=> (not res!1004196) (not e!829165))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99255 (_ BitVec 32)) SeekEntryResult!12165)

(assert (=> b!1478029 (= res!1004196 (= lt!645512 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47902 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1478040 () Bool)

(assert (=> b!1478040 (= e!829162 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645513 lt!645514 mask!2687) (seekEntryOrOpen!0 lt!645513 lt!645514 mask!2687)))))

(declare-fun b!1478041 () Bool)

(declare-fun res!1004195 () Bool)

(assert (=> b!1478041 (=> (not res!1004195) (not e!829167))))

(assert (=> b!1478041 (= res!1004195 (validKeyInArray!0 (select (arr!47902 a!2862) i!1006)))))

(assert (= (and start!126232 res!1004191) b!1478036))

(assert (= (and b!1478036 res!1004189) b!1478041))

(assert (= (and b!1478041 res!1004195) b!1478035))

(assert (= (and b!1478035 res!1004188) b!1478031))

(assert (= (and b!1478031 res!1004190) b!1478025))

(assert (= (and b!1478025 res!1004199) b!1478037))

(assert (= (and b!1478037 res!1004186) b!1478027))

(assert (= (and b!1478027 res!1004187) b!1478030))

(assert (= (and b!1478030 res!1004184) b!1478039))

(assert (= (and b!1478039 res!1004185) b!1478032))

(assert (= (and b!1478032 res!1004192) b!1478028))

(assert (= (and b!1478028 c!136442) b!1478026))

(assert (= (and b!1478028 (not c!136442)) b!1478040))

(assert (= (and b!1478028 res!1004197) b!1478024))

(assert (= (and b!1478024 res!1004198) b!1478038))

(assert (= (and b!1478038 res!1004193) b!1478034))

(assert (= (and b!1478034 (not res!1004194)) b!1478029))

(assert (= (and b!1478029 res!1004196) b!1478033))

(declare-fun m!1364007 () Bool)

(assert (=> b!1478038 m!1364007))

(declare-fun m!1364009 () Bool)

(assert (=> b!1478038 m!1364009))

(declare-fun m!1364011 () Bool)

(assert (=> b!1478038 m!1364011))

(declare-fun m!1364013 () Bool)

(assert (=> b!1478038 m!1364013))

(declare-fun m!1364015 () Bool)

(assert (=> b!1478038 m!1364015))

(assert (=> b!1478038 m!1364011))

(declare-fun m!1364017 () Bool)

(assert (=> b!1478025 m!1364017))

(assert (=> b!1478030 m!1364011))

(assert (=> b!1478030 m!1364011))

(declare-fun m!1364019 () Bool)

(assert (=> b!1478030 m!1364019))

(assert (=> b!1478030 m!1364019))

(assert (=> b!1478030 m!1364011))

(declare-fun m!1364021 () Bool)

(assert (=> b!1478030 m!1364021))

(assert (=> b!1478035 m!1364011))

(assert (=> b!1478035 m!1364011))

(declare-fun m!1364023 () Bool)

(assert (=> b!1478035 m!1364023))

(declare-fun m!1364025 () Bool)

(assert (=> b!1478027 m!1364025))

(declare-fun m!1364027 () Bool)

(assert (=> b!1478027 m!1364027))

(declare-fun m!1364029 () Bool)

(assert (=> b!1478041 m!1364029))

(assert (=> b!1478041 m!1364029))

(declare-fun m!1364031 () Bool)

(assert (=> b!1478041 m!1364031))

(declare-fun m!1364033 () Bool)

(assert (=> b!1478031 m!1364033))

(declare-fun m!1364035 () Bool)

(assert (=> b!1478040 m!1364035))

(declare-fun m!1364037 () Bool)

(assert (=> b!1478040 m!1364037))

(declare-fun m!1364039 () Bool)

(assert (=> b!1478034 m!1364039))

(assert (=> b!1478034 m!1364025))

(declare-fun m!1364041 () Bool)

(assert (=> b!1478034 m!1364041))

(assert (=> b!1478034 m!1364011))

(declare-fun m!1364043 () Bool)

(assert (=> start!126232 m!1364043))

(declare-fun m!1364045 () Bool)

(assert (=> start!126232 m!1364045))

(assert (=> b!1478039 m!1364011))

(assert (=> b!1478039 m!1364011))

(declare-fun m!1364047 () Bool)

(assert (=> b!1478039 m!1364047))

(declare-fun m!1364049 () Bool)

(assert (=> b!1478026 m!1364049))

(declare-fun m!1364051 () Bool)

(assert (=> b!1478032 m!1364051))

(assert (=> b!1478032 m!1364051))

(declare-fun m!1364053 () Bool)

(assert (=> b!1478032 m!1364053))

(assert (=> b!1478032 m!1364025))

(declare-fun m!1364055 () Bool)

(assert (=> b!1478032 m!1364055))

(assert (=> b!1478029 m!1364011))

(assert (=> b!1478029 m!1364011))

(declare-fun m!1364057 () Bool)

(assert (=> b!1478029 m!1364057))

(push 1)

