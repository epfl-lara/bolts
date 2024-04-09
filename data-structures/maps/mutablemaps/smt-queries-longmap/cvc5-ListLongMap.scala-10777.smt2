; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126202 () Bool)

(assert start!126202)

(declare-fun b!1477214 () Bool)

(declare-fun e!828760 () Bool)

(declare-fun e!828763 () Bool)

(assert (=> b!1477214 (= e!828760 e!828763)))

(declare-fun res!1003470 () Bool)

(assert (=> b!1477214 (=> (not res!1003470) (not e!828763))))

(declare-datatypes ((SeekEntryResult!12150 0))(
  ( (MissingZero!12150 (index!50991 (_ BitVec 32))) (Found!12150 (index!50992 (_ BitVec 32))) (Intermediate!12150 (undefined!12962 Bool) (index!50993 (_ BitVec 32)) (x!132592 (_ BitVec 32))) (Undefined!12150) (MissingVacant!12150 (index!50994 (_ BitVec 32))) )
))
(declare-fun lt!645242 () SeekEntryResult!12150)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99225 0))(
  ( (array!99226 (arr!47887 (Array (_ BitVec 32) (_ BitVec 64))) (size!48438 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99225)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99225 (_ BitVec 32)) SeekEntryResult!12150)

(assert (=> b!1477214 (= res!1003470 (= lt!645242 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47887 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477215 () Bool)

(declare-fun res!1003473 () Bool)

(declare-fun e!828764 () Bool)

(assert (=> b!1477215 (=> (not res!1003473) (not e!828764))))

(declare-fun e!828757 () Bool)

(assert (=> b!1477215 (= res!1003473 e!828757)))

(declare-fun c!136397 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1477215 (= c!136397 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477217 () Bool)

(declare-fun res!1003472 () Bool)

(declare-fun e!828759 () Bool)

(assert (=> b!1477217 (=> (not res!1003472) (not e!828759))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477217 (= res!1003472 (validKeyInArray!0 (select (arr!47887 a!2862) i!1006)))))

(declare-fun b!1477218 () Bool)

(assert (=> b!1477218 (= e!828764 (not true))))

(declare-fun e!828756 () Bool)

(assert (=> b!1477218 e!828756))

(declare-fun res!1003474 () Bool)

(assert (=> b!1477218 (=> (not res!1003474) (not e!828756))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1477218 (= res!1003474 (and (= lt!645242 (Found!12150 j!93)) (or (= (select (arr!47887 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47887 a!2862) intermediateBeforeIndex!19) (select (arr!47887 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99225 (_ BitVec 32)) SeekEntryResult!12150)

(assert (=> b!1477218 (= lt!645242 (seekEntryOrOpen!0 (select (arr!47887 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99225 (_ BitVec 32)) Bool)

(assert (=> b!1477218 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49588 0))(
  ( (Unit!49589) )
))
(declare-fun lt!645243 () Unit!49588)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99225 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49588)

(assert (=> b!1477218 (= lt!645243 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477219 () Bool)

(declare-fun e!828762 () Bool)

(assert (=> b!1477219 (= e!828762 e!828764)))

(declare-fun res!1003475 () Bool)

(assert (=> b!1477219 (=> (not res!1003475) (not e!828764))))

(declare-fun lt!645240 () SeekEntryResult!12150)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1477219 (= res!1003475 (= lt!645240 (Intermediate!12150 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645239 () array!99225)

(declare-fun lt!645241 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99225 (_ BitVec 32)) SeekEntryResult!12150)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477219 (= lt!645240 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645241 mask!2687) lt!645241 lt!645239 mask!2687))))

(assert (=> b!1477219 (= lt!645241 (select (store (arr!47887 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477220 () Bool)

(declare-fun res!1003464 () Bool)

(assert (=> b!1477220 (=> (not res!1003464) (not e!828764))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1477220 (= res!1003464 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1477221 () Bool)

(declare-fun res!1003466 () Bool)

(assert (=> b!1477221 (=> (not res!1003466) (not e!828759))))

(declare-datatypes ((List!34568 0))(
  ( (Nil!34565) (Cons!34564 (h!35932 (_ BitVec 64)) (t!49269 List!34568)) )
))
(declare-fun arrayNoDuplicates!0 (array!99225 (_ BitVec 32) List!34568) Bool)

(assert (=> b!1477221 (= res!1003466 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34565))))

(declare-fun b!1477222 () Bool)

(declare-fun e!828761 () Bool)

(assert (=> b!1477222 (= e!828759 e!828761)))

(declare-fun res!1003468 () Bool)

(assert (=> b!1477222 (=> (not res!1003468) (not e!828761))))

(assert (=> b!1477222 (= res!1003468 (= (select (store (arr!47887 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477222 (= lt!645239 (array!99226 (store (arr!47887 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48438 a!2862)))))

(declare-fun b!1477223 () Bool)

(assert (=> b!1477223 (= e!828757 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645241 lt!645239 mask!2687) (seekEntryOrOpen!0 lt!645241 lt!645239 mask!2687)))))

(declare-fun b!1477224 () Bool)

(assert (=> b!1477224 (= e!828761 e!828762)))

(declare-fun res!1003469 () Bool)

(assert (=> b!1477224 (=> (not res!1003469) (not e!828762))))

(declare-fun lt!645244 () SeekEntryResult!12150)

(assert (=> b!1477224 (= res!1003469 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47887 a!2862) j!93) mask!2687) (select (arr!47887 a!2862) j!93) a!2862 mask!2687) lt!645244))))

(assert (=> b!1477224 (= lt!645244 (Intermediate!12150 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477225 () Bool)

(declare-fun res!1003476 () Bool)

(assert (=> b!1477225 (=> (not res!1003476) (not e!828759))))

(assert (=> b!1477225 (= res!1003476 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48438 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48438 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48438 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477226 () Bool)

(assert (=> b!1477226 (= e!828763 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477227 () Bool)

(assert (=> b!1477227 (= e!828757 (= lt!645240 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645241 lt!645239 mask!2687)))))

(declare-fun b!1477216 () Bool)

(declare-fun res!1003479 () Bool)

(assert (=> b!1477216 (=> (not res!1003479) (not e!828759))))

(assert (=> b!1477216 (= res!1003479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1003471 () Bool)

(assert (=> start!126202 (=> (not res!1003471) (not e!828759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126202 (= res!1003471 (validMask!0 mask!2687))))

(assert (=> start!126202 e!828759))

(assert (=> start!126202 true))

(declare-fun array_inv!36832 (array!99225) Bool)

(assert (=> start!126202 (array_inv!36832 a!2862)))

(declare-fun b!1477228 () Bool)

(assert (=> b!1477228 (= e!828756 e!828760)))

(declare-fun res!1003465 () Bool)

(assert (=> b!1477228 (=> res!1003465 e!828760)))

(assert (=> b!1477228 (= res!1003465 (or (and (= (select (arr!47887 a!2862) index!646) (select (store (arr!47887 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47887 a!2862) index!646) (select (arr!47887 a!2862) j!93))) (not (= (select (arr!47887 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477229 () Bool)

(declare-fun res!1003477 () Bool)

(assert (=> b!1477229 (=> (not res!1003477) (not e!828759))))

(assert (=> b!1477229 (= res!1003477 (and (= (size!48438 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48438 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48438 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477230 () Bool)

(declare-fun res!1003478 () Bool)

(assert (=> b!1477230 (=> (not res!1003478) (not e!828759))))

(assert (=> b!1477230 (= res!1003478 (validKeyInArray!0 (select (arr!47887 a!2862) j!93)))))

(declare-fun b!1477231 () Bool)

(declare-fun res!1003467 () Bool)

(assert (=> b!1477231 (=> (not res!1003467) (not e!828762))))

(assert (=> b!1477231 (= res!1003467 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47887 a!2862) j!93) a!2862 mask!2687) lt!645244))))

(assert (= (and start!126202 res!1003471) b!1477229))

(assert (= (and b!1477229 res!1003477) b!1477217))

(assert (= (and b!1477217 res!1003472) b!1477230))

(assert (= (and b!1477230 res!1003478) b!1477216))

(assert (= (and b!1477216 res!1003479) b!1477221))

(assert (= (and b!1477221 res!1003466) b!1477225))

(assert (= (and b!1477225 res!1003476) b!1477222))

(assert (= (and b!1477222 res!1003468) b!1477224))

(assert (= (and b!1477224 res!1003469) b!1477231))

(assert (= (and b!1477231 res!1003467) b!1477219))

(assert (= (and b!1477219 res!1003475) b!1477215))

(assert (= (and b!1477215 c!136397) b!1477227))

(assert (= (and b!1477215 (not c!136397)) b!1477223))

(assert (= (and b!1477215 res!1003473) b!1477220))

(assert (= (and b!1477220 res!1003464) b!1477218))

(assert (= (and b!1477218 res!1003474) b!1477228))

(assert (= (and b!1477228 (not res!1003465)) b!1477214))

(assert (= (and b!1477214 res!1003470) b!1477226))

(declare-fun m!1363227 () Bool)

(assert (=> b!1477217 m!1363227))

(assert (=> b!1477217 m!1363227))

(declare-fun m!1363229 () Bool)

(assert (=> b!1477217 m!1363229))

(declare-fun m!1363231 () Bool)

(assert (=> b!1477222 m!1363231))

(declare-fun m!1363233 () Bool)

(assert (=> b!1477222 m!1363233))

(declare-fun m!1363235 () Bool)

(assert (=> b!1477228 m!1363235))

(assert (=> b!1477228 m!1363231))

(declare-fun m!1363237 () Bool)

(assert (=> b!1477228 m!1363237))

(declare-fun m!1363239 () Bool)

(assert (=> b!1477228 m!1363239))

(assert (=> b!1477224 m!1363239))

(assert (=> b!1477224 m!1363239))

(declare-fun m!1363241 () Bool)

(assert (=> b!1477224 m!1363241))

(assert (=> b!1477224 m!1363241))

(assert (=> b!1477224 m!1363239))

(declare-fun m!1363243 () Bool)

(assert (=> b!1477224 m!1363243))

(assert (=> b!1477230 m!1363239))

(assert (=> b!1477230 m!1363239))

(declare-fun m!1363245 () Bool)

(assert (=> b!1477230 m!1363245))

(declare-fun m!1363247 () Bool)

(assert (=> start!126202 m!1363247))

(declare-fun m!1363249 () Bool)

(assert (=> start!126202 m!1363249))

(assert (=> b!1477231 m!1363239))

(assert (=> b!1477231 m!1363239))

(declare-fun m!1363251 () Bool)

(assert (=> b!1477231 m!1363251))

(declare-fun m!1363253 () Bool)

(assert (=> b!1477219 m!1363253))

(assert (=> b!1477219 m!1363253))

(declare-fun m!1363255 () Bool)

(assert (=> b!1477219 m!1363255))

(assert (=> b!1477219 m!1363231))

(declare-fun m!1363257 () Bool)

(assert (=> b!1477219 m!1363257))

(declare-fun m!1363259 () Bool)

(assert (=> b!1477221 m!1363259))

(declare-fun m!1363261 () Bool)

(assert (=> b!1477223 m!1363261))

(declare-fun m!1363263 () Bool)

(assert (=> b!1477223 m!1363263))

(declare-fun m!1363265 () Bool)

(assert (=> b!1477218 m!1363265))

(declare-fun m!1363267 () Bool)

(assert (=> b!1477218 m!1363267))

(assert (=> b!1477218 m!1363239))

(declare-fun m!1363269 () Bool)

(assert (=> b!1477218 m!1363269))

(declare-fun m!1363271 () Bool)

(assert (=> b!1477218 m!1363271))

(assert (=> b!1477218 m!1363239))

(declare-fun m!1363273 () Bool)

(assert (=> b!1477216 m!1363273))

(declare-fun m!1363275 () Bool)

(assert (=> b!1477227 m!1363275))

(assert (=> b!1477214 m!1363239))

(assert (=> b!1477214 m!1363239))

(declare-fun m!1363277 () Bool)

(assert (=> b!1477214 m!1363277))

(push 1)

