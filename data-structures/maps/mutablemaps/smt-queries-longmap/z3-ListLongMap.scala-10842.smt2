; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126942 () Bool)

(assert start!126942)

(declare-fun b!1491026 () Bool)

(declare-fun e!835465 () Bool)

(declare-fun e!835466 () Bool)

(assert (=> b!1491026 (= e!835465 e!835466)))

(declare-fun res!1014340 () Bool)

(assert (=> b!1491026 (=> (not res!1014340) (not e!835466))))

(declare-datatypes ((SeekEntryResult!12346 0))(
  ( (MissingZero!12346 (index!51775 (_ BitVec 32))) (Found!12346 (index!51776 (_ BitVec 32))) (Intermediate!12346 (undefined!13158 Bool) (index!51777 (_ BitVec 32)) (x!133365 (_ BitVec 32))) (Undefined!12346) (MissingVacant!12346 (index!51778 (_ BitVec 32))) )
))
(declare-fun lt!650106 () SeekEntryResult!12346)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1491026 (= res!1014340 (= lt!650106 (Intermediate!12346 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!650109 () (_ BitVec 64))

(declare-datatypes ((array!99632 0))(
  ( (array!99633 (arr!48083 (Array (_ BitVec 32) (_ BitVec 64))) (size!48634 (_ BitVec 32))) )
))
(declare-fun lt!650110 () array!99632)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99632 (_ BitVec 32)) SeekEntryResult!12346)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491026 (= lt!650106 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650109 mask!2687) lt!650109 lt!650110 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99632)

(assert (=> b!1491026 (= lt!650109 (select (store (arr!48083 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1491027 () Bool)

(declare-fun e!835462 () Bool)

(assert (=> b!1491027 (= e!835462 (or (= (select (arr!48083 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48083 a!2862) intermediateBeforeIndex!19) (select (arr!48083 a!2862) j!93))))))

(declare-fun b!1491029 () Bool)

(declare-fun res!1014344 () Bool)

(assert (=> b!1491029 (=> (not res!1014344) (not e!835466))))

(declare-fun e!835467 () Bool)

(assert (=> b!1491029 (= res!1014344 e!835467)))

(declare-fun c!137873 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1491029 (= c!137873 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491030 () Bool)

(declare-fun e!835463 () Bool)

(assert (=> b!1491030 (= e!835463 true)))

(declare-fun lt!650105 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491030 (= lt!650105 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1491031 () Bool)

(assert (=> b!1491031 (= e!835467 (= lt!650106 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650109 lt!650110 mask!2687)))))

(declare-fun b!1491032 () Bool)

(declare-fun res!1014343 () Bool)

(declare-fun e!835468 () Bool)

(assert (=> b!1491032 (=> (not res!1014343) (not e!835468))))

(declare-datatypes ((List!34764 0))(
  ( (Nil!34761) (Cons!34760 (h!36143 (_ BitVec 64)) (t!49465 List!34764)) )
))
(declare-fun arrayNoDuplicates!0 (array!99632 (_ BitVec 32) List!34764) Bool)

(assert (=> b!1491032 (= res!1014343 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34761))))

(declare-fun b!1491033 () Bool)

(declare-fun e!835469 () Bool)

(assert (=> b!1491033 (= e!835468 e!835469)))

(declare-fun res!1014353 () Bool)

(assert (=> b!1491033 (=> (not res!1014353) (not e!835469))))

(assert (=> b!1491033 (= res!1014353 (= (select (store (arr!48083 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1491033 (= lt!650110 (array!99633 (store (arr!48083 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48634 a!2862)))))

(declare-fun b!1491034 () Bool)

(declare-fun res!1014352 () Bool)

(assert (=> b!1491034 (=> (not res!1014352) (not e!835468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491034 (= res!1014352 (validKeyInArray!0 (select (arr!48083 a!2862) i!1006)))))

(declare-fun b!1491035 () Bool)

(declare-fun res!1014341 () Bool)

(assert (=> b!1491035 (=> (not res!1014341) (not e!835468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99632 (_ BitVec 32)) Bool)

(assert (=> b!1491035 (= res!1014341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491036 () Bool)

(declare-fun res!1014345 () Bool)

(assert (=> b!1491036 (=> (not res!1014345) (not e!835468))))

(assert (=> b!1491036 (= res!1014345 (validKeyInArray!0 (select (arr!48083 a!2862) j!93)))))

(declare-fun b!1491037 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99632 (_ BitVec 32)) SeekEntryResult!12346)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99632 (_ BitVec 32)) SeekEntryResult!12346)

(assert (=> b!1491037 (= e!835467 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650109 lt!650110 mask!2687) (seekEntryOrOpen!0 lt!650109 lt!650110 mask!2687)))))

(declare-fun b!1491038 () Bool)

(declare-fun res!1014339 () Bool)

(assert (=> b!1491038 (=> (not res!1014339) (not e!835468))))

(assert (=> b!1491038 (= res!1014339 (and (= (size!48634 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48634 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48634 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491039 () Bool)

(assert (=> b!1491039 (= e!835466 (not e!835463))))

(declare-fun res!1014342 () Bool)

(assert (=> b!1491039 (=> res!1014342 e!835463)))

(assert (=> b!1491039 (= res!1014342 (or (and (= (select (arr!48083 a!2862) index!646) (select (store (arr!48083 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48083 a!2862) index!646) (select (arr!48083 a!2862) j!93))) (= (select (arr!48083 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1491039 e!835462))

(declare-fun res!1014346 () Bool)

(assert (=> b!1491039 (=> (not res!1014346) (not e!835462))))

(assert (=> b!1491039 (= res!1014346 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49980 0))(
  ( (Unit!49981) )
))
(declare-fun lt!650108 () Unit!49980)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99632 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49980)

(assert (=> b!1491039 (= lt!650108 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!1014351 () Bool)

(assert (=> start!126942 (=> (not res!1014351) (not e!835468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126942 (= res!1014351 (validMask!0 mask!2687))))

(assert (=> start!126942 e!835468))

(assert (=> start!126942 true))

(declare-fun array_inv!37028 (array!99632) Bool)

(assert (=> start!126942 (array_inv!37028 a!2862)))

(declare-fun b!1491028 () Bool)

(declare-fun res!1014347 () Bool)

(assert (=> b!1491028 (=> (not res!1014347) (not e!835468))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1491028 (= res!1014347 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48634 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48634 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48634 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1491040 () Bool)

(assert (=> b!1491040 (= e!835469 e!835465)))

(declare-fun res!1014348 () Bool)

(assert (=> b!1491040 (=> (not res!1014348) (not e!835465))))

(declare-fun lt!650107 () SeekEntryResult!12346)

(assert (=> b!1491040 (= res!1014348 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48083 a!2862) j!93) mask!2687) (select (arr!48083 a!2862) j!93) a!2862 mask!2687) lt!650107))))

(assert (=> b!1491040 (= lt!650107 (Intermediate!12346 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1491041 () Bool)

(declare-fun res!1014349 () Bool)

(assert (=> b!1491041 (=> (not res!1014349) (not e!835465))))

(assert (=> b!1491041 (= res!1014349 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48083 a!2862) j!93) a!2862 mask!2687) lt!650107))))

(declare-fun b!1491042 () Bool)

(declare-fun res!1014354 () Bool)

(assert (=> b!1491042 (=> (not res!1014354) (not e!835462))))

(assert (=> b!1491042 (= res!1014354 (= (seekEntryOrOpen!0 (select (arr!48083 a!2862) j!93) a!2862 mask!2687) (Found!12346 j!93)))))

(declare-fun b!1491043 () Bool)

(declare-fun res!1014350 () Bool)

(assert (=> b!1491043 (=> (not res!1014350) (not e!835466))))

(assert (=> b!1491043 (= res!1014350 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!126942 res!1014351) b!1491038))

(assert (= (and b!1491038 res!1014339) b!1491034))

(assert (= (and b!1491034 res!1014352) b!1491036))

(assert (= (and b!1491036 res!1014345) b!1491035))

(assert (= (and b!1491035 res!1014341) b!1491032))

(assert (= (and b!1491032 res!1014343) b!1491028))

(assert (= (and b!1491028 res!1014347) b!1491033))

(assert (= (and b!1491033 res!1014353) b!1491040))

(assert (= (and b!1491040 res!1014348) b!1491041))

(assert (= (and b!1491041 res!1014349) b!1491026))

(assert (= (and b!1491026 res!1014340) b!1491029))

(assert (= (and b!1491029 c!137873) b!1491031))

(assert (= (and b!1491029 (not c!137873)) b!1491037))

(assert (= (and b!1491029 res!1014344) b!1491043))

(assert (= (and b!1491043 res!1014350) b!1491039))

(assert (= (and b!1491039 res!1014346) b!1491042))

(assert (= (and b!1491042 res!1014354) b!1491027))

(assert (= (and b!1491039 (not res!1014342)) b!1491030))

(declare-fun m!1375219 () Bool)

(assert (=> b!1491027 m!1375219))

(declare-fun m!1375221 () Bool)

(assert (=> b!1491027 m!1375221))

(assert (=> b!1491036 m!1375221))

(assert (=> b!1491036 m!1375221))

(declare-fun m!1375223 () Bool)

(assert (=> b!1491036 m!1375223))

(assert (=> b!1491040 m!1375221))

(assert (=> b!1491040 m!1375221))

(declare-fun m!1375225 () Bool)

(assert (=> b!1491040 m!1375225))

(assert (=> b!1491040 m!1375225))

(assert (=> b!1491040 m!1375221))

(declare-fun m!1375227 () Bool)

(assert (=> b!1491040 m!1375227))

(assert (=> b!1491042 m!1375221))

(assert (=> b!1491042 m!1375221))

(declare-fun m!1375229 () Bool)

(assert (=> b!1491042 m!1375229))

(declare-fun m!1375231 () Bool)

(assert (=> b!1491031 m!1375231))

(declare-fun m!1375233 () Bool)

(assert (=> b!1491032 m!1375233))

(declare-fun m!1375235 () Bool)

(assert (=> b!1491034 m!1375235))

(assert (=> b!1491034 m!1375235))

(declare-fun m!1375237 () Bool)

(assert (=> b!1491034 m!1375237))

(declare-fun m!1375239 () Bool)

(assert (=> b!1491039 m!1375239))

(declare-fun m!1375241 () Bool)

(assert (=> b!1491039 m!1375241))

(declare-fun m!1375243 () Bool)

(assert (=> b!1491039 m!1375243))

(declare-fun m!1375245 () Bool)

(assert (=> b!1491039 m!1375245))

(declare-fun m!1375247 () Bool)

(assert (=> b!1491039 m!1375247))

(assert (=> b!1491039 m!1375221))

(declare-fun m!1375249 () Bool)

(assert (=> b!1491030 m!1375249))

(assert (=> b!1491041 m!1375221))

(assert (=> b!1491041 m!1375221))

(declare-fun m!1375251 () Bool)

(assert (=> b!1491041 m!1375251))

(declare-fun m!1375253 () Bool)

(assert (=> b!1491037 m!1375253))

(declare-fun m!1375255 () Bool)

(assert (=> b!1491037 m!1375255))

(assert (=> b!1491033 m!1375241))

(declare-fun m!1375257 () Bool)

(assert (=> b!1491033 m!1375257))

(declare-fun m!1375259 () Bool)

(assert (=> start!126942 m!1375259))

(declare-fun m!1375261 () Bool)

(assert (=> start!126942 m!1375261))

(declare-fun m!1375263 () Bool)

(assert (=> b!1491035 m!1375263))

(declare-fun m!1375265 () Bool)

(assert (=> b!1491026 m!1375265))

(assert (=> b!1491026 m!1375265))

(declare-fun m!1375267 () Bool)

(assert (=> b!1491026 m!1375267))

(assert (=> b!1491026 m!1375241))

(declare-fun m!1375269 () Bool)

(assert (=> b!1491026 m!1375269))

(check-sat (not b!1491042) (not b!1491026) (not b!1491036) (not b!1491041) (not b!1491035) (not b!1491037) (not b!1491040) (not start!126942) (not b!1491034) (not b!1491031) (not b!1491039) (not b!1491032) (not b!1491030))
