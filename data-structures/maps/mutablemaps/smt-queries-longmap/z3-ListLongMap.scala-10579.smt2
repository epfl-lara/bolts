; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124656 () Bool)

(assert start!124656)

(declare-fun res!975223 () Bool)

(declare-fun e!813217 () Bool)

(assert (=> start!124656 (=> (not res!975223) (not e!813217))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124656 (= res!975223 (validMask!0 mask!2687))))

(assert (=> start!124656 e!813217))

(assert (=> start!124656 true))

(declare-datatypes ((array!98021 0))(
  ( (array!98022 (arr!47294 (Array (_ BitVec 32) (_ BitVec 64))) (size!47845 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98021)

(declare-fun array_inv!36239 (array!98021) Bool)

(assert (=> start!124656 (array_inv!36239 a!2862)))

(declare-fun b!1442964 () Bool)

(declare-fun res!975227 () Bool)

(assert (=> b!1442964 (=> (not res!975227) (not e!813217))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442964 (= res!975227 (validKeyInArray!0 (select (arr!47294 a!2862) j!93)))))

(declare-fun b!1442965 () Bool)

(declare-fun res!975225 () Bool)

(declare-fun e!813212 () Bool)

(assert (=> b!1442965 (=> (not res!975225) (not e!813212))))

(declare-fun e!813214 () Bool)

(assert (=> b!1442965 (= res!975225 e!813214)))

(declare-fun c!133385 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1442965 (= c!133385 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442966 () Bool)

(declare-fun res!975233 () Bool)

(assert (=> b!1442966 (=> (not res!975233) (not e!813217))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1442966 (= res!975233 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47845 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47845 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47845 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!633678 () (_ BitVec 64))

(declare-fun b!1442967 () Bool)

(declare-fun lt!633680 () array!98021)

(declare-datatypes ((SeekEntryResult!11569 0))(
  ( (MissingZero!11569 (index!48667 (_ BitVec 32))) (Found!11569 (index!48668 (_ BitVec 32))) (Intermediate!11569 (undefined!12381 Bool) (index!48669 (_ BitVec 32)) (x!130373 (_ BitVec 32))) (Undefined!11569) (MissingVacant!11569 (index!48670 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98021 (_ BitVec 32)) SeekEntryResult!11569)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98021 (_ BitVec 32)) SeekEntryResult!11569)

(assert (=> b!1442967 (= e!813214 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633678 lt!633680 mask!2687) (seekEntryOrOpen!0 lt!633678 lt!633680 mask!2687)))))

(declare-fun b!1442968 () Bool)

(declare-fun e!813216 () Bool)

(declare-fun e!813218 () Bool)

(assert (=> b!1442968 (= e!813216 e!813218)))

(declare-fun res!975234 () Bool)

(assert (=> b!1442968 (=> (not res!975234) (not e!813218))))

(declare-fun lt!633681 () SeekEntryResult!11569)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98021 (_ BitVec 32)) SeekEntryResult!11569)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442968 (= res!975234 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47294 a!2862) j!93) mask!2687) (select (arr!47294 a!2862) j!93) a!2862 mask!2687) lt!633681))))

(assert (=> b!1442968 (= lt!633681 (Intermediate!11569 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442969 () Bool)

(declare-fun res!975231 () Bool)

(assert (=> b!1442969 (=> (not res!975231) (not e!813217))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1442969 (= res!975231 (and (= (size!47845 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47845 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47845 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442970 () Bool)

(declare-fun res!975230 () Bool)

(assert (=> b!1442970 (=> (not res!975230) (not e!813217))))

(declare-datatypes ((List!33975 0))(
  ( (Nil!33972) (Cons!33971 (h!35321 (_ BitVec 64)) (t!48676 List!33975)) )
))
(declare-fun arrayNoDuplicates!0 (array!98021 (_ BitVec 32) List!33975) Bool)

(assert (=> b!1442970 (= res!975230 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33972))))

(declare-fun b!1442971 () Bool)

(assert (=> b!1442971 (= e!813212 (not true))))

(declare-fun e!813213 () Bool)

(assert (=> b!1442971 e!813213))

(declare-fun res!975228 () Bool)

(assert (=> b!1442971 (=> (not res!975228) (not e!813213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98021 (_ BitVec 32)) Bool)

(assert (=> b!1442971 (= res!975228 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48582 0))(
  ( (Unit!48583) )
))
(declare-fun lt!633682 () Unit!48582)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98021 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48582)

(assert (=> b!1442971 (= lt!633682 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442972 () Bool)

(assert (=> b!1442972 (= e!813217 e!813216)))

(declare-fun res!975232 () Bool)

(assert (=> b!1442972 (=> (not res!975232) (not e!813216))))

(assert (=> b!1442972 (= res!975232 (= (select (store (arr!47294 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1442972 (= lt!633680 (array!98022 (store (arr!47294 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47845 a!2862)))))

(declare-fun b!1442973 () Bool)

(declare-fun res!975229 () Bool)

(assert (=> b!1442973 (=> (not res!975229) (not e!813212))))

(assert (=> b!1442973 (= res!975229 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442974 () Bool)

(declare-fun res!975226 () Bool)

(assert (=> b!1442974 (=> (not res!975226) (not e!813213))))

(assert (=> b!1442974 (= res!975226 (= (seekEntryOrOpen!0 (select (arr!47294 a!2862) j!93) a!2862 mask!2687) (Found!11569 j!93)))))

(declare-fun b!1442975 () Bool)

(declare-fun res!975222 () Bool)

(assert (=> b!1442975 (=> (not res!975222) (not e!813218))))

(assert (=> b!1442975 (= res!975222 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47294 a!2862) j!93) a!2862 mask!2687) lt!633681))))

(declare-fun b!1442976 () Bool)

(assert (=> b!1442976 (= e!813213 (or (= (select (arr!47294 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47294 a!2862) intermediateBeforeIndex!19) (select (arr!47294 a!2862) j!93))))))

(declare-fun b!1442977 () Bool)

(assert (=> b!1442977 (= e!813218 e!813212)))

(declare-fun res!975224 () Bool)

(assert (=> b!1442977 (=> (not res!975224) (not e!813212))))

(declare-fun lt!633679 () SeekEntryResult!11569)

(assert (=> b!1442977 (= res!975224 (= lt!633679 (Intermediate!11569 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1442977 (= lt!633679 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633678 mask!2687) lt!633678 lt!633680 mask!2687))))

(assert (=> b!1442977 (= lt!633678 (select (store (arr!47294 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442978 () Bool)

(assert (=> b!1442978 (= e!813214 (= lt!633679 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633678 lt!633680 mask!2687)))))

(declare-fun b!1442979 () Bool)

(declare-fun res!975220 () Bool)

(assert (=> b!1442979 (=> (not res!975220) (not e!813217))))

(assert (=> b!1442979 (= res!975220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442980 () Bool)

(declare-fun res!975221 () Bool)

(assert (=> b!1442980 (=> (not res!975221) (not e!813217))))

(assert (=> b!1442980 (= res!975221 (validKeyInArray!0 (select (arr!47294 a!2862) i!1006)))))

(assert (= (and start!124656 res!975223) b!1442969))

(assert (= (and b!1442969 res!975231) b!1442980))

(assert (= (and b!1442980 res!975221) b!1442964))

(assert (= (and b!1442964 res!975227) b!1442979))

(assert (= (and b!1442979 res!975220) b!1442970))

(assert (= (and b!1442970 res!975230) b!1442966))

(assert (= (and b!1442966 res!975233) b!1442972))

(assert (= (and b!1442972 res!975232) b!1442968))

(assert (= (and b!1442968 res!975234) b!1442975))

(assert (= (and b!1442975 res!975222) b!1442977))

(assert (= (and b!1442977 res!975224) b!1442965))

(assert (= (and b!1442965 c!133385) b!1442978))

(assert (= (and b!1442965 (not c!133385)) b!1442967))

(assert (= (and b!1442965 res!975225) b!1442973))

(assert (= (and b!1442973 res!975229) b!1442971))

(assert (= (and b!1442971 res!975228) b!1442974))

(assert (= (and b!1442974 res!975226) b!1442976))

(declare-fun m!1332127 () Bool)

(assert (=> b!1442968 m!1332127))

(assert (=> b!1442968 m!1332127))

(declare-fun m!1332129 () Bool)

(assert (=> b!1442968 m!1332129))

(assert (=> b!1442968 m!1332129))

(assert (=> b!1442968 m!1332127))

(declare-fun m!1332131 () Bool)

(assert (=> b!1442968 m!1332131))

(declare-fun m!1332133 () Bool)

(assert (=> b!1442970 m!1332133))

(declare-fun m!1332135 () Bool)

(assert (=> b!1442971 m!1332135))

(declare-fun m!1332137 () Bool)

(assert (=> b!1442971 m!1332137))

(declare-fun m!1332139 () Bool)

(assert (=> b!1442967 m!1332139))

(declare-fun m!1332141 () Bool)

(assert (=> b!1442967 m!1332141))

(assert (=> b!1442974 m!1332127))

(assert (=> b!1442974 m!1332127))

(declare-fun m!1332143 () Bool)

(assert (=> b!1442974 m!1332143))

(declare-fun m!1332145 () Bool)

(assert (=> b!1442978 m!1332145))

(assert (=> b!1442975 m!1332127))

(assert (=> b!1442975 m!1332127))

(declare-fun m!1332147 () Bool)

(assert (=> b!1442975 m!1332147))

(declare-fun m!1332149 () Bool)

(assert (=> b!1442980 m!1332149))

(assert (=> b!1442980 m!1332149))

(declare-fun m!1332151 () Bool)

(assert (=> b!1442980 m!1332151))

(declare-fun m!1332153 () Bool)

(assert (=> b!1442979 m!1332153))

(declare-fun m!1332155 () Bool)

(assert (=> b!1442977 m!1332155))

(assert (=> b!1442977 m!1332155))

(declare-fun m!1332157 () Bool)

(assert (=> b!1442977 m!1332157))

(declare-fun m!1332159 () Bool)

(assert (=> b!1442977 m!1332159))

(declare-fun m!1332161 () Bool)

(assert (=> b!1442977 m!1332161))

(declare-fun m!1332163 () Bool)

(assert (=> start!124656 m!1332163))

(declare-fun m!1332165 () Bool)

(assert (=> start!124656 m!1332165))

(assert (=> b!1442972 m!1332159))

(declare-fun m!1332167 () Bool)

(assert (=> b!1442972 m!1332167))

(declare-fun m!1332169 () Bool)

(assert (=> b!1442976 m!1332169))

(assert (=> b!1442976 m!1332127))

(assert (=> b!1442964 m!1332127))

(assert (=> b!1442964 m!1332127))

(declare-fun m!1332171 () Bool)

(assert (=> b!1442964 m!1332171))

(check-sat (not start!124656) (not b!1442971) (not b!1442979) (not b!1442968) (not b!1442964) (not b!1442980) (not b!1442974) (not b!1442978) (not b!1442975) (not b!1442977) (not b!1442967) (not b!1442970))
(check-sat)
