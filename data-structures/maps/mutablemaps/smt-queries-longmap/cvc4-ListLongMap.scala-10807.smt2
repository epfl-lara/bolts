; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126536 () Bool)

(assert start!126536)

(declare-fun b!1483265 () Bool)

(declare-fun e!831744 () Bool)

(declare-fun e!831746 () Bool)

(assert (=> b!1483265 (= e!831744 (not e!831746))))

(declare-fun res!1008272 () Bool)

(assert (=> b!1483265 (=> res!1008272 e!831746)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99415 0))(
  ( (array!99416 (arr!47979 (Array (_ BitVec 32) (_ BitVec 64))) (size!48530 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99415)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1483265 (= res!1008272 (or (and (= (select (arr!47979 a!2862) index!646) (select (store (arr!47979 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47979 a!2862) index!646) (select (arr!47979 a!2862) j!93))) (= (select (arr!47979 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!831745 () Bool)

(assert (=> b!1483265 e!831745))

(declare-fun res!1008263 () Bool)

(assert (=> b!1483265 (=> (not res!1008263) (not e!831745))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99415 (_ BitVec 32)) Bool)

(assert (=> b!1483265 (= res!1008263 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49772 0))(
  ( (Unit!49773) )
))
(declare-fun lt!647336 () Unit!49772)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99415 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49772)

(assert (=> b!1483265 (= lt!647336 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483266 () Bool)

(declare-fun res!1008255 () Bool)

(declare-fun e!831743 () Bool)

(assert (=> b!1483266 (=> (not res!1008255) (not e!831743))))

(declare-datatypes ((List!34660 0))(
  ( (Nil!34657) (Cons!34656 (h!36030 (_ BitVec 64)) (t!49361 List!34660)) )
))
(declare-fun arrayNoDuplicates!0 (array!99415 (_ BitVec 32) List!34660) Bool)

(assert (=> b!1483266 (= res!1008255 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34657))))

(declare-fun b!1483267 () Bool)

(declare-fun res!1008265 () Bool)

(assert (=> b!1483267 (=> (not res!1008265) (not e!831743))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483267 (= res!1008265 (validKeyInArray!0 (select (arr!47979 a!2862) j!93)))))

(declare-fun res!1008258 () Bool)

(assert (=> start!126536 (=> (not res!1008258) (not e!831743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126536 (= res!1008258 (validMask!0 mask!2687))))

(assert (=> start!126536 e!831743))

(assert (=> start!126536 true))

(declare-fun array_inv!36924 (array!99415) Bool)

(assert (=> start!126536 (array_inv!36924 a!2862)))

(declare-fun b!1483268 () Bool)

(declare-fun res!1008269 () Bool)

(assert (=> b!1483268 (=> (not res!1008269) (not e!831744))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1483268 (= res!1008269 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1483269 () Bool)

(declare-fun e!831742 () Bool)

(assert (=> b!1483269 (= e!831743 e!831742)))

(declare-fun res!1008273 () Bool)

(assert (=> b!1483269 (=> (not res!1008273) (not e!831742))))

(assert (=> b!1483269 (= res!1008273 (= (select (store (arr!47979 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647335 () array!99415)

(assert (=> b!1483269 (= lt!647335 (array!99416 (store (arr!47979 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48530 a!2862)))))

(declare-fun lt!647339 () (_ BitVec 64))

(declare-fun e!831749 () Bool)

(declare-fun b!1483270 () Bool)

(declare-datatypes ((SeekEntryResult!12242 0))(
  ( (MissingZero!12242 (index!51359 (_ BitVec 32))) (Found!12242 (index!51360 (_ BitVec 32))) (Intermediate!12242 (undefined!13054 Bool) (index!51361 (_ BitVec 32)) (x!132945 (_ BitVec 32))) (Undefined!12242) (MissingVacant!12242 (index!51362 (_ BitVec 32))) )
))
(declare-fun lt!647341 () SeekEntryResult!12242)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99415 (_ BitVec 32)) SeekEntryResult!12242)

(assert (=> b!1483270 (= e!831749 (= lt!647341 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647339 lt!647335 mask!2687)))))

(declare-fun b!1483271 () Bool)

(declare-fun res!1008264 () Bool)

(assert (=> b!1483271 (=> (not res!1008264) (not e!831743))))

(assert (=> b!1483271 (= res!1008264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1483272 () Bool)

(declare-fun res!1008261 () Bool)

(assert (=> b!1483272 (=> (not res!1008261) (not e!831745))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1483272 (= res!1008261 (or (= (select (arr!47979 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47979 a!2862) intermediateBeforeIndex!19) (select (arr!47979 a!2862) j!93))))))

(declare-fun b!1483273 () Bool)

(declare-fun res!1008257 () Bool)

(assert (=> b!1483273 (=> (not res!1008257) (not e!831743))))

(assert (=> b!1483273 (= res!1008257 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48530 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48530 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48530 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1483274 () Bool)

(declare-fun e!831740 () Bool)

(declare-fun e!831741 () Bool)

(assert (=> b!1483274 (= e!831740 e!831741)))

(declare-fun res!1008260 () Bool)

(assert (=> b!1483274 (=> (not res!1008260) (not e!831741))))

(declare-fun lt!647340 () (_ BitVec 64))

(assert (=> b!1483274 (= res!1008260 (and (= index!646 intermediateAfterIndex!19) (= lt!647340 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483275 () Bool)

(declare-fun res!1008262 () Bool)

(assert (=> b!1483275 (=> (not res!1008262) (not e!831744))))

(assert (=> b!1483275 (= res!1008262 e!831749)))

(declare-fun c!137030 () Bool)

(assert (=> b!1483275 (= c!137030 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1483276 () Bool)

(declare-fun res!1008256 () Bool)

(assert (=> b!1483276 (=> (not res!1008256) (not e!831743))))

(assert (=> b!1483276 (= res!1008256 (and (= (size!48530 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48530 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48530 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483277 () Bool)

(assert (=> b!1483277 (= e!831746 true)))

(declare-fun lt!647338 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483277 (= lt!647338 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1483278 () Bool)

(declare-fun res!1008268 () Bool)

(declare-fun e!831747 () Bool)

(assert (=> b!1483278 (=> (not res!1008268) (not e!831747))))

(declare-fun lt!647337 () SeekEntryResult!12242)

(assert (=> b!1483278 (= res!1008268 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47979 a!2862) j!93) a!2862 mask!2687) lt!647337))))

(declare-fun b!1483279 () Bool)

(declare-fun res!1008271 () Bool)

(assert (=> b!1483279 (=> (not res!1008271) (not e!831743))))

(assert (=> b!1483279 (= res!1008271 (validKeyInArray!0 (select (arr!47979 a!2862) i!1006)))))

(declare-fun b!1483280 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99415 (_ BitVec 32)) SeekEntryResult!12242)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99415 (_ BitVec 32)) SeekEntryResult!12242)

(assert (=> b!1483280 (= e!831749 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647339 lt!647335 mask!2687) (seekEntryOrOpen!0 lt!647339 lt!647335 mask!2687)))))

(declare-fun b!1483281 () Bool)

(declare-fun res!1008270 () Bool)

(assert (=> b!1483281 (=> (not res!1008270) (not e!831745))))

(assert (=> b!1483281 (= res!1008270 (= (seekEntryOrOpen!0 (select (arr!47979 a!2862) j!93) a!2862 mask!2687) (Found!12242 j!93)))))

(declare-fun b!1483282 () Bool)

(assert (=> b!1483282 (= e!831747 e!831744)))

(declare-fun res!1008266 () Bool)

(assert (=> b!1483282 (=> (not res!1008266) (not e!831744))))

(assert (=> b!1483282 (= res!1008266 (= lt!647341 (Intermediate!12242 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483282 (= lt!647341 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647339 mask!2687) lt!647339 lt!647335 mask!2687))))

(assert (=> b!1483282 (= lt!647339 (select (store (arr!47979 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1483283 () Bool)

(assert (=> b!1483283 (= e!831742 e!831747)))

(declare-fun res!1008259 () Bool)

(assert (=> b!1483283 (=> (not res!1008259) (not e!831747))))

(assert (=> b!1483283 (= res!1008259 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47979 a!2862) j!93) mask!2687) (select (arr!47979 a!2862) j!93) a!2862 mask!2687) lt!647337))))

(assert (=> b!1483283 (= lt!647337 (Intermediate!12242 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1483284 () Bool)

(assert (=> b!1483284 (= e!831745 e!831740)))

(declare-fun res!1008267 () Bool)

(assert (=> b!1483284 (=> res!1008267 e!831740)))

(assert (=> b!1483284 (= res!1008267 (or (and (= (select (arr!47979 a!2862) index!646) lt!647340) (= (select (arr!47979 a!2862) index!646) (select (arr!47979 a!2862) j!93))) (= (select (arr!47979 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483284 (= lt!647340 (select (store (arr!47979 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483285 () Bool)

(assert (=> b!1483285 (= e!831741 (= (seekEntryOrOpen!0 lt!647339 lt!647335 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647339 lt!647335 mask!2687)))))

(assert (= (and start!126536 res!1008258) b!1483276))

(assert (= (and b!1483276 res!1008256) b!1483279))

(assert (= (and b!1483279 res!1008271) b!1483267))

(assert (= (and b!1483267 res!1008265) b!1483271))

(assert (= (and b!1483271 res!1008264) b!1483266))

(assert (= (and b!1483266 res!1008255) b!1483273))

(assert (= (and b!1483273 res!1008257) b!1483269))

(assert (= (and b!1483269 res!1008273) b!1483283))

(assert (= (and b!1483283 res!1008259) b!1483278))

(assert (= (and b!1483278 res!1008268) b!1483282))

(assert (= (and b!1483282 res!1008266) b!1483275))

(assert (= (and b!1483275 c!137030) b!1483270))

(assert (= (and b!1483275 (not c!137030)) b!1483280))

(assert (= (and b!1483275 res!1008262) b!1483268))

(assert (= (and b!1483268 res!1008269) b!1483265))

(assert (= (and b!1483265 res!1008263) b!1483281))

(assert (= (and b!1483281 res!1008270) b!1483272))

(assert (= (and b!1483272 res!1008261) b!1483284))

(assert (= (and b!1483284 (not res!1008267)) b!1483274))

(assert (= (and b!1483274 res!1008260) b!1483285))

(assert (= (and b!1483265 (not res!1008272)) b!1483277))

(declare-fun m!1368821 () Bool)

(assert (=> b!1483277 m!1368821))

(declare-fun m!1368823 () Bool)

(assert (=> b!1483284 m!1368823))

(declare-fun m!1368825 () Bool)

(assert (=> b!1483284 m!1368825))

(declare-fun m!1368827 () Bool)

(assert (=> b!1483284 m!1368827))

(declare-fun m!1368829 () Bool)

(assert (=> b!1483284 m!1368829))

(declare-fun m!1368831 () Bool)

(assert (=> b!1483265 m!1368831))

(assert (=> b!1483265 m!1368827))

(assert (=> b!1483265 m!1368829))

(assert (=> b!1483265 m!1368823))

(declare-fun m!1368833 () Bool)

(assert (=> b!1483265 m!1368833))

(assert (=> b!1483265 m!1368825))

(assert (=> b!1483267 m!1368825))

(assert (=> b!1483267 m!1368825))

(declare-fun m!1368835 () Bool)

(assert (=> b!1483267 m!1368835))

(assert (=> b!1483269 m!1368827))

(declare-fun m!1368837 () Bool)

(assert (=> b!1483269 m!1368837))

(declare-fun m!1368839 () Bool)

(assert (=> b!1483280 m!1368839))

(declare-fun m!1368841 () Bool)

(assert (=> b!1483280 m!1368841))

(declare-fun m!1368843 () Bool)

(assert (=> b!1483270 m!1368843))

(declare-fun m!1368845 () Bool)

(assert (=> b!1483282 m!1368845))

(assert (=> b!1483282 m!1368845))

(declare-fun m!1368847 () Bool)

(assert (=> b!1483282 m!1368847))

(assert (=> b!1483282 m!1368827))

(declare-fun m!1368849 () Bool)

(assert (=> b!1483282 m!1368849))

(assert (=> b!1483285 m!1368841))

(assert (=> b!1483285 m!1368839))

(assert (=> b!1483283 m!1368825))

(assert (=> b!1483283 m!1368825))

(declare-fun m!1368851 () Bool)

(assert (=> b!1483283 m!1368851))

(assert (=> b!1483283 m!1368851))

(assert (=> b!1483283 m!1368825))

(declare-fun m!1368853 () Bool)

(assert (=> b!1483283 m!1368853))

(declare-fun m!1368855 () Bool)

(assert (=> b!1483272 m!1368855))

(assert (=> b!1483272 m!1368825))

(assert (=> b!1483278 m!1368825))

(assert (=> b!1483278 m!1368825))

(declare-fun m!1368857 () Bool)

(assert (=> b!1483278 m!1368857))

(declare-fun m!1368859 () Bool)

(assert (=> b!1483279 m!1368859))

(assert (=> b!1483279 m!1368859))

(declare-fun m!1368861 () Bool)

(assert (=> b!1483279 m!1368861))

(declare-fun m!1368863 () Bool)

(assert (=> start!126536 m!1368863))

(declare-fun m!1368865 () Bool)

(assert (=> start!126536 m!1368865))

(declare-fun m!1368867 () Bool)

(assert (=> b!1483271 m!1368867))

(assert (=> b!1483281 m!1368825))

(assert (=> b!1483281 m!1368825))

(declare-fun m!1368869 () Bool)

(assert (=> b!1483281 m!1368869))

(declare-fun m!1368871 () Bool)

(assert (=> b!1483266 m!1368871))

(push 1)

