; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124786 () Bool)

(assert start!124786)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1446346 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!814638 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1446346 (= e!814638 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1446347 () Bool)

(declare-fun res!978214 () Bool)

(declare-fun e!814641 () Bool)

(assert (=> b!1446347 (=> (not res!978214) (not e!814641))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98151 0))(
  ( (array!98152 (arr!47359 (Array (_ BitVec 32) (_ BitVec 64))) (size!47910 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98151)

(assert (=> b!1446347 (= res!978214 (and (= (size!47910 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47910 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47910 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1446348 () Bool)

(declare-fun res!978222 () Bool)

(assert (=> b!1446348 (=> (not res!978222) (not e!814641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98151 (_ BitVec 32)) Bool)

(assert (=> b!1446348 (= res!978222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446349 () Bool)

(declare-fun res!978219 () Bool)

(assert (=> b!1446349 (=> (not res!978219) (not e!814641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446349 (= res!978219 (validKeyInArray!0 (select (arr!47359 a!2862) i!1006)))))

(declare-fun b!1446350 () Bool)

(declare-fun e!814646 () Bool)

(assert (=> b!1446350 (= e!814646 e!814638)))

(declare-fun res!978213 () Bool)

(assert (=> b!1446350 (=> (not res!978213) (not e!814638))))

(declare-datatypes ((SeekEntryResult!11634 0))(
  ( (MissingZero!11634 (index!48927 (_ BitVec 32))) (Found!11634 (index!48928 (_ BitVec 32))) (Intermediate!11634 (undefined!12446 Bool) (index!48929 (_ BitVec 32)) (x!130614 (_ BitVec 32))) (Undefined!11634) (MissingVacant!11634 (index!48930 (_ BitVec 32))) )
))
(declare-fun lt!634735 () SeekEntryResult!11634)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98151 (_ BitVec 32)) SeekEntryResult!11634)

(assert (=> b!1446350 (= res!978213 (= lt!634735 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47359 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1446351 () Bool)

(declare-fun e!814637 () Bool)

(assert (=> b!1446351 (= e!814641 e!814637)))

(declare-fun res!978228 () Bool)

(assert (=> b!1446351 (=> (not res!978228) (not e!814637))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1446351 (= res!978228 (= (select (store (arr!47359 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634732 () array!98151)

(assert (=> b!1446351 (= lt!634732 (array!98152 (store (arr!47359 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47910 a!2862)))))

(declare-fun e!814643 () Bool)

(declare-fun lt!634729 () SeekEntryResult!11634)

(declare-fun lt!634730 () (_ BitVec 64))

(declare-fun b!1446352 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98151 (_ BitVec 32)) SeekEntryResult!11634)

(assert (=> b!1446352 (= e!814643 (= lt!634729 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634730 lt!634732 mask!2687)))))

(declare-fun b!1446354 () Bool)

(declare-fun e!814640 () Bool)

(assert (=> b!1446354 (= e!814637 e!814640)))

(declare-fun res!978226 () Bool)

(assert (=> b!1446354 (=> (not res!978226) (not e!814640))))

(declare-fun lt!634733 () SeekEntryResult!11634)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446354 (= res!978226 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47359 a!2862) j!93) mask!2687) (select (arr!47359 a!2862) j!93) a!2862 mask!2687) lt!634733))))

(assert (=> b!1446354 (= lt!634733 (Intermediate!11634 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446355 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98151 (_ BitVec 32)) SeekEntryResult!11634)

(assert (=> b!1446355 (= e!814643 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634730 lt!634732 mask!2687) (seekEntryOrOpen!0 lt!634730 lt!634732 mask!2687)))))

(declare-fun b!1446356 () Bool)

(declare-fun res!978215 () Bool)

(assert (=> b!1446356 (=> (not res!978215) (not e!814641))))

(declare-datatypes ((List!34040 0))(
  ( (Nil!34037) (Cons!34036 (h!35386 (_ BitVec 64)) (t!48741 List!34040)) )
))
(declare-fun arrayNoDuplicates!0 (array!98151 (_ BitVec 32) List!34040) Bool)

(assert (=> b!1446356 (= res!978215 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34037))))

(declare-fun b!1446357 () Bool)

(declare-fun res!978225 () Bool)

(assert (=> b!1446357 (=> (not res!978225) (not e!814640))))

(assert (=> b!1446357 (= res!978225 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47359 a!2862) j!93) a!2862 mask!2687) lt!634733))))

(declare-fun b!1446358 () Bool)

(declare-fun res!978217 () Bool)

(assert (=> b!1446358 (=> (not res!978217) (not e!814641))))

(assert (=> b!1446358 (= res!978217 (validKeyInArray!0 (select (arr!47359 a!2862) j!93)))))

(declare-fun b!1446359 () Bool)

(declare-fun res!978218 () Bool)

(declare-fun e!814644 () Bool)

(assert (=> b!1446359 (=> (not res!978218) (not e!814644))))

(assert (=> b!1446359 (= res!978218 e!814643)))

(declare-fun c!133580 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1446359 (= c!133580 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1446360 () Bool)

(declare-fun e!814639 () Bool)

(assert (=> b!1446360 (= e!814644 (not e!814639))))

(declare-fun res!978212 () Bool)

(assert (=> b!1446360 (=> res!978212 e!814639)))

(assert (=> b!1446360 (= res!978212 (or (and (= (select (arr!47359 a!2862) index!646) (select (store (arr!47359 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47359 a!2862) index!646) (select (arr!47359 a!2862) j!93))) (not (= (select (arr!47359 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47359 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!814645 () Bool)

(assert (=> b!1446360 e!814645))

(declare-fun res!978216 () Bool)

(assert (=> b!1446360 (=> (not res!978216) (not e!814645))))

(assert (=> b!1446360 (= res!978216 (and (= lt!634735 (Found!11634 j!93)) (or (= (select (arr!47359 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47359 a!2862) intermediateBeforeIndex!19) (select (arr!47359 a!2862) j!93)))))))

(assert (=> b!1446360 (= lt!634735 (seekEntryOrOpen!0 (select (arr!47359 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1446360 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48712 0))(
  ( (Unit!48713) )
))
(declare-fun lt!634731 () Unit!48712)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98151 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48712)

(assert (=> b!1446360 (= lt!634731 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446361 () Bool)

(declare-fun res!978227 () Bool)

(assert (=> b!1446361 (=> (not res!978227) (not e!814641))))

(assert (=> b!1446361 (= res!978227 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47910 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47910 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47910 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446362 () Bool)

(declare-fun res!978220 () Bool)

(assert (=> b!1446362 (=> (not res!978220) (not e!814644))))

(assert (=> b!1446362 (= res!978220 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446363 () Bool)

(assert (=> b!1446363 (= e!814639 true)))

(declare-fun lt!634734 () SeekEntryResult!11634)

(assert (=> b!1446363 (= lt!634734 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47359 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1446364 () Bool)

(assert (=> b!1446364 (= e!814640 e!814644)))

(declare-fun res!978221 () Bool)

(assert (=> b!1446364 (=> (not res!978221) (not e!814644))))

(assert (=> b!1446364 (= res!978221 (= lt!634729 (Intermediate!11634 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1446364 (= lt!634729 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634730 mask!2687) lt!634730 lt!634732 mask!2687))))

(assert (=> b!1446364 (= lt!634730 (select (store (arr!47359 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!978224 () Bool)

(assert (=> start!124786 (=> (not res!978224) (not e!814641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124786 (= res!978224 (validMask!0 mask!2687))))

(assert (=> start!124786 e!814641))

(assert (=> start!124786 true))

(declare-fun array_inv!36304 (array!98151) Bool)

(assert (=> start!124786 (array_inv!36304 a!2862)))

(declare-fun b!1446353 () Bool)

(assert (=> b!1446353 (= e!814645 e!814646)))

(declare-fun res!978223 () Bool)

(assert (=> b!1446353 (=> res!978223 e!814646)))

(assert (=> b!1446353 (= res!978223 (or (and (= (select (arr!47359 a!2862) index!646) (select (store (arr!47359 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47359 a!2862) index!646) (select (arr!47359 a!2862) j!93))) (not (= (select (arr!47359 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!124786 res!978224) b!1446347))

(assert (= (and b!1446347 res!978214) b!1446349))

(assert (= (and b!1446349 res!978219) b!1446358))

(assert (= (and b!1446358 res!978217) b!1446348))

(assert (= (and b!1446348 res!978222) b!1446356))

(assert (= (and b!1446356 res!978215) b!1446361))

(assert (= (and b!1446361 res!978227) b!1446351))

(assert (= (and b!1446351 res!978228) b!1446354))

(assert (= (and b!1446354 res!978226) b!1446357))

(assert (= (and b!1446357 res!978225) b!1446364))

(assert (= (and b!1446364 res!978221) b!1446359))

(assert (= (and b!1446359 c!133580) b!1446352))

(assert (= (and b!1446359 (not c!133580)) b!1446355))

(assert (= (and b!1446359 res!978218) b!1446362))

(assert (= (and b!1446362 res!978220) b!1446360))

(assert (= (and b!1446360 res!978216) b!1446353))

(assert (= (and b!1446353 (not res!978223)) b!1446350))

(assert (= (and b!1446350 res!978213) b!1446346))

(assert (= (and b!1446360 (not res!978212)) b!1446363))

(declare-fun m!1335273 () Bool)

(assert (=> b!1446353 m!1335273))

(declare-fun m!1335275 () Bool)

(assert (=> b!1446353 m!1335275))

(declare-fun m!1335277 () Bool)

(assert (=> b!1446353 m!1335277))

(declare-fun m!1335279 () Bool)

(assert (=> b!1446353 m!1335279))

(declare-fun m!1335281 () Bool)

(assert (=> b!1446348 m!1335281))

(assert (=> b!1446358 m!1335279))

(assert (=> b!1446358 m!1335279))

(declare-fun m!1335283 () Bool)

(assert (=> b!1446358 m!1335283))

(declare-fun m!1335285 () Bool)

(assert (=> b!1446356 m!1335285))

(declare-fun m!1335287 () Bool)

(assert (=> start!124786 m!1335287))

(declare-fun m!1335289 () Bool)

(assert (=> start!124786 m!1335289))

(declare-fun m!1335291 () Bool)

(assert (=> b!1446355 m!1335291))

(declare-fun m!1335293 () Bool)

(assert (=> b!1446355 m!1335293))

(assert (=> b!1446357 m!1335279))

(assert (=> b!1446357 m!1335279))

(declare-fun m!1335295 () Bool)

(assert (=> b!1446357 m!1335295))

(assert (=> b!1446363 m!1335279))

(assert (=> b!1446363 m!1335279))

(declare-fun m!1335297 () Bool)

(assert (=> b!1446363 m!1335297))

(declare-fun m!1335299 () Bool)

(assert (=> b!1446360 m!1335299))

(assert (=> b!1446360 m!1335275))

(declare-fun m!1335301 () Bool)

(assert (=> b!1446360 m!1335301))

(assert (=> b!1446360 m!1335277))

(assert (=> b!1446360 m!1335273))

(assert (=> b!1446360 m!1335279))

(declare-fun m!1335303 () Bool)

(assert (=> b!1446360 m!1335303))

(declare-fun m!1335305 () Bool)

(assert (=> b!1446360 m!1335305))

(assert (=> b!1446360 m!1335279))

(assert (=> b!1446350 m!1335279))

(assert (=> b!1446350 m!1335279))

(declare-fun m!1335307 () Bool)

(assert (=> b!1446350 m!1335307))

(assert (=> b!1446351 m!1335275))

(declare-fun m!1335309 () Bool)

(assert (=> b!1446351 m!1335309))

(assert (=> b!1446354 m!1335279))

(assert (=> b!1446354 m!1335279))

(declare-fun m!1335311 () Bool)

(assert (=> b!1446354 m!1335311))

(assert (=> b!1446354 m!1335311))

(assert (=> b!1446354 m!1335279))

(declare-fun m!1335313 () Bool)

(assert (=> b!1446354 m!1335313))

(declare-fun m!1335315 () Bool)

(assert (=> b!1446364 m!1335315))

(assert (=> b!1446364 m!1335315))

(declare-fun m!1335317 () Bool)

(assert (=> b!1446364 m!1335317))

(assert (=> b!1446364 m!1335275))

(declare-fun m!1335319 () Bool)

(assert (=> b!1446364 m!1335319))

(declare-fun m!1335321 () Bool)

(assert (=> b!1446349 m!1335321))

(assert (=> b!1446349 m!1335321))

(declare-fun m!1335323 () Bool)

(assert (=> b!1446349 m!1335323))

(declare-fun m!1335325 () Bool)

(assert (=> b!1446352 m!1335325))

(push 1)

