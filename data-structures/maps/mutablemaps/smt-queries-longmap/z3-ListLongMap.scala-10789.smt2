; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126276 () Bool)

(assert start!126276)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99299 0))(
  ( (array!99300 (arr!47924 (Array (_ BitVec 32) (_ BitVec 64))) (size!48475 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99299)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12187 0))(
  ( (MissingZero!12187 (index!51139 (_ BitVec 32))) (Found!12187 (index!51140 (_ BitVec 32))) (Intermediate!12187 (undefined!12999 Bool) (index!51141 (_ BitVec 32)) (x!132725 (_ BitVec 32))) (Undefined!12187) (MissingVacant!12187 (index!51142 (_ BitVec 32))) )
))
(declare-fun lt!645910 () SeekEntryResult!12187)

(declare-fun e!829764 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun b!1479217 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99299 (_ BitVec 32)) SeekEntryResult!12187)

(assert (=> b!1479217 (= e!829764 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47924 a!2862) j!93) a!2862 mask!2687) lt!645910))))

(declare-fun b!1479218 () Bool)

(declare-fun e!829765 () Bool)

(declare-fun e!829761 () Bool)

(assert (=> b!1479218 (= e!829765 e!829761)))

(declare-fun res!1005245 () Bool)

(assert (=> b!1479218 (=> (not res!1005245) (not e!829761))))

(declare-fun lt!645911 () SeekEntryResult!12187)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1479218 (= res!1005245 (= lt!645911 (Intermediate!12187 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645916 () (_ BitVec 64))

(declare-fun lt!645915 () array!99299)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99299 (_ BitVec 32)) SeekEntryResult!12187)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479218 (= lt!645911 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645916 mask!2687) lt!645916 lt!645915 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1479218 (= lt!645916 (select (store (arr!47924 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479219 () Bool)

(declare-fun e!829763 () Bool)

(declare-fun e!829762 () Bool)

(assert (=> b!1479219 (= e!829763 e!829762)))

(declare-fun res!1005253 () Bool)

(assert (=> b!1479219 (=> (not res!1005253) (not e!829762))))

(assert (=> b!1479219 (= res!1005253 (= (select (store (arr!47924 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479219 (= lt!645915 (array!99300 (store (arr!47924 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48475 a!2862)))))

(declare-fun e!829767 () Bool)

(declare-fun b!1479220 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99299 (_ BitVec 32)) SeekEntryResult!12187)

(assert (=> b!1479220 (= e!829767 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645916 lt!645915 mask!2687) (seekEntryOrOpen!0 lt!645916 lt!645915 mask!2687)))))

(declare-fun b!1479221 () Bool)

(declare-fun res!1005258 () Bool)

(assert (=> b!1479221 (=> (not res!1005258) (not e!829765))))

(declare-fun lt!645914 () SeekEntryResult!12187)

(assert (=> b!1479221 (= res!1005258 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47924 a!2862) j!93) a!2862 mask!2687) lt!645914))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun b!1479222 () Bool)

(declare-fun e!829760 () Bool)

(assert (=> b!1479222 (= e!829760 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479223 () Bool)

(assert (=> b!1479223 (= e!829767 (= lt!645911 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645916 lt!645915 mask!2687)))))

(declare-fun b!1479224 () Bool)

(declare-fun res!1005247 () Bool)

(assert (=> b!1479224 (=> (not res!1005247) (not e!829761))))

(assert (=> b!1479224 (= res!1005247 e!829767)))

(declare-fun c!136508 () Bool)

(assert (=> b!1479224 (= c!136508 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479225 () Bool)

(declare-fun res!1005249 () Bool)

(assert (=> b!1479225 (=> (not res!1005249) (not e!829763))))

(assert (=> b!1479225 (= res!1005249 (and (= (size!48475 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48475 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48475 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1479226 () Bool)

(assert (=> b!1479226 (= e!829762 e!829765)))

(declare-fun res!1005254 () Bool)

(assert (=> b!1479226 (=> (not res!1005254) (not e!829765))))

(assert (=> b!1479226 (= res!1005254 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47924 a!2862) j!93) mask!2687) (select (arr!47924 a!2862) j!93) a!2862 mask!2687) lt!645914))))

(assert (=> b!1479226 (= lt!645914 (Intermediate!12187 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1479227 () Bool)

(declare-fun res!1005260 () Bool)

(assert (=> b!1479227 (=> (not res!1005260) (not e!829763))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479227 (= res!1005260 (validKeyInArray!0 (select (arr!47924 a!2862) j!93)))))

(declare-fun b!1479229 () Bool)

(declare-fun res!1005250 () Bool)

(assert (=> b!1479229 (=> (not res!1005250) (not e!829763))))

(assert (=> b!1479229 (= res!1005250 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48475 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48475 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48475 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1479230 () Bool)

(declare-fun res!1005257 () Bool)

(assert (=> b!1479230 (=> (not res!1005257) (not e!829763))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99299 (_ BitVec 32)) Bool)

(assert (=> b!1479230 (= res!1005257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1479231 () Bool)

(declare-fun res!1005252 () Bool)

(assert (=> b!1479231 (=> (not res!1005252) (not e!829761))))

(assert (=> b!1479231 (= res!1005252 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1479232 () Bool)

(declare-fun res!1005255 () Bool)

(assert (=> b!1479232 (=> (not res!1005255) (not e!829763))))

(assert (=> b!1479232 (= res!1005255 (validKeyInArray!0 (select (arr!47924 a!2862) i!1006)))))

(declare-fun b!1479233 () Bool)

(assert (=> b!1479233 (= e!829761 (not e!829764))))

(declare-fun res!1005251 () Bool)

(assert (=> b!1479233 (=> res!1005251 e!829764)))

(assert (=> b!1479233 (= res!1005251 (or (and (= (select (arr!47924 a!2862) index!646) (select (store (arr!47924 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47924 a!2862) index!646) (select (arr!47924 a!2862) j!93))) (not (= (select (arr!47924 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47924 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!829769 () Bool)

(assert (=> b!1479233 e!829769))

(declare-fun res!1005246 () Bool)

(assert (=> b!1479233 (=> (not res!1005246) (not e!829769))))

(declare-fun lt!645913 () SeekEntryResult!12187)

(assert (=> b!1479233 (= res!1005246 (and (= lt!645913 lt!645910) (or (= (select (arr!47924 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47924 a!2862) intermediateBeforeIndex!19) (select (arr!47924 a!2862) j!93)))))))

(assert (=> b!1479233 (= lt!645910 (Found!12187 j!93))))

(assert (=> b!1479233 (= lt!645913 (seekEntryOrOpen!0 (select (arr!47924 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1479233 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49662 0))(
  ( (Unit!49663) )
))
(declare-fun lt!645912 () Unit!49662)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99299 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49662)

(assert (=> b!1479233 (= lt!645912 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479234 () Bool)

(declare-fun e!829766 () Bool)

(assert (=> b!1479234 (= e!829769 e!829766)))

(declare-fun res!1005259 () Bool)

(assert (=> b!1479234 (=> res!1005259 e!829766)))

(assert (=> b!1479234 (= res!1005259 (or (and (= (select (arr!47924 a!2862) index!646) (select (store (arr!47924 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47924 a!2862) index!646) (select (arr!47924 a!2862) j!93))) (not (= (select (arr!47924 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1479235 () Bool)

(declare-fun res!1005248 () Bool)

(assert (=> b!1479235 (=> (not res!1005248) (not e!829763))))

(declare-datatypes ((List!34605 0))(
  ( (Nil!34602) (Cons!34601 (h!35969 (_ BitVec 64)) (t!49306 List!34605)) )
))
(declare-fun arrayNoDuplicates!0 (array!99299 (_ BitVec 32) List!34605) Bool)

(assert (=> b!1479235 (= res!1005248 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34602))))

(declare-fun b!1479228 () Bool)

(assert (=> b!1479228 (= e!829766 e!829760)))

(declare-fun res!1005256 () Bool)

(assert (=> b!1479228 (=> (not res!1005256) (not e!829760))))

(assert (=> b!1479228 (= res!1005256 (= lt!645913 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47924 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun res!1005261 () Bool)

(assert (=> start!126276 (=> (not res!1005261) (not e!829763))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126276 (= res!1005261 (validMask!0 mask!2687))))

(assert (=> start!126276 e!829763))

(assert (=> start!126276 true))

(declare-fun array_inv!36869 (array!99299) Bool)

(assert (=> start!126276 (array_inv!36869 a!2862)))

(assert (= (and start!126276 res!1005261) b!1479225))

(assert (= (and b!1479225 res!1005249) b!1479232))

(assert (= (and b!1479232 res!1005255) b!1479227))

(assert (= (and b!1479227 res!1005260) b!1479230))

(assert (= (and b!1479230 res!1005257) b!1479235))

(assert (= (and b!1479235 res!1005248) b!1479229))

(assert (= (and b!1479229 res!1005250) b!1479219))

(assert (= (and b!1479219 res!1005253) b!1479226))

(assert (= (and b!1479226 res!1005254) b!1479221))

(assert (= (and b!1479221 res!1005258) b!1479218))

(assert (= (and b!1479218 res!1005245) b!1479224))

(assert (= (and b!1479224 c!136508) b!1479223))

(assert (= (and b!1479224 (not c!136508)) b!1479220))

(assert (= (and b!1479224 res!1005247) b!1479231))

(assert (= (and b!1479231 res!1005252) b!1479233))

(assert (= (and b!1479233 res!1005246) b!1479234))

(assert (= (and b!1479234 (not res!1005259)) b!1479228))

(assert (= (and b!1479228 res!1005256) b!1479222))

(assert (= (and b!1479233 (not res!1005251)) b!1479217))

(declare-fun m!1365153 () Bool)

(assert (=> start!126276 m!1365153))

(declare-fun m!1365155 () Bool)

(assert (=> start!126276 m!1365155))

(declare-fun m!1365157 () Bool)

(assert (=> b!1479221 m!1365157))

(assert (=> b!1479221 m!1365157))

(declare-fun m!1365159 () Bool)

(assert (=> b!1479221 m!1365159))

(assert (=> b!1479217 m!1365157))

(assert (=> b!1479217 m!1365157))

(declare-fun m!1365161 () Bool)

(assert (=> b!1479217 m!1365161))

(declare-fun m!1365163 () Bool)

(assert (=> b!1479230 m!1365163))

(assert (=> b!1479226 m!1365157))

(assert (=> b!1479226 m!1365157))

(declare-fun m!1365165 () Bool)

(assert (=> b!1479226 m!1365165))

(assert (=> b!1479226 m!1365165))

(assert (=> b!1479226 m!1365157))

(declare-fun m!1365167 () Bool)

(assert (=> b!1479226 m!1365167))

(declare-fun m!1365169 () Bool)

(assert (=> b!1479235 m!1365169))

(declare-fun m!1365171 () Bool)

(assert (=> b!1479218 m!1365171))

(assert (=> b!1479218 m!1365171))

(declare-fun m!1365173 () Bool)

(assert (=> b!1479218 m!1365173))

(declare-fun m!1365175 () Bool)

(assert (=> b!1479218 m!1365175))

(declare-fun m!1365177 () Bool)

(assert (=> b!1479218 m!1365177))

(assert (=> b!1479219 m!1365175))

(declare-fun m!1365179 () Bool)

(assert (=> b!1479219 m!1365179))

(declare-fun m!1365181 () Bool)

(assert (=> b!1479232 m!1365181))

(assert (=> b!1479232 m!1365181))

(declare-fun m!1365183 () Bool)

(assert (=> b!1479232 m!1365183))

(declare-fun m!1365185 () Bool)

(assert (=> b!1479233 m!1365185))

(assert (=> b!1479233 m!1365175))

(declare-fun m!1365187 () Bool)

(assert (=> b!1479233 m!1365187))

(declare-fun m!1365189 () Bool)

(assert (=> b!1479233 m!1365189))

(declare-fun m!1365191 () Bool)

(assert (=> b!1479233 m!1365191))

(assert (=> b!1479233 m!1365157))

(declare-fun m!1365193 () Bool)

(assert (=> b!1479233 m!1365193))

(declare-fun m!1365195 () Bool)

(assert (=> b!1479233 m!1365195))

(assert (=> b!1479233 m!1365157))

(assert (=> b!1479227 m!1365157))

(assert (=> b!1479227 m!1365157))

(declare-fun m!1365197 () Bool)

(assert (=> b!1479227 m!1365197))

(declare-fun m!1365199 () Bool)

(assert (=> b!1479223 m!1365199))

(assert (=> b!1479228 m!1365157))

(assert (=> b!1479228 m!1365157))

(declare-fun m!1365201 () Bool)

(assert (=> b!1479228 m!1365201))

(assert (=> b!1479234 m!1365191))

(assert (=> b!1479234 m!1365175))

(assert (=> b!1479234 m!1365189))

(assert (=> b!1479234 m!1365157))

(declare-fun m!1365203 () Bool)

(assert (=> b!1479220 m!1365203))

(declare-fun m!1365205 () Bool)

(assert (=> b!1479220 m!1365205))

(check-sat (not start!126276) (not b!1479218) (not b!1479220) (not b!1479226) (not b!1479232) (not b!1479221) (not b!1479233) (not b!1479230) (not b!1479235) (not b!1479228) (not b!1479227) (not b!1479217) (not b!1479223))
(check-sat)
