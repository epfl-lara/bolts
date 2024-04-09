; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126204 () Bool)

(assert start!126204)

(declare-fun b!1477268 () Bool)

(declare-fun res!1003523 () Bool)

(declare-fun e!828789 () Bool)

(assert (=> b!1477268 (=> (not res!1003523) (not e!828789))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1477268 (= res!1003523 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1477269 () Bool)

(declare-fun res!1003522 () Bool)

(assert (=> b!1477269 (=> (not res!1003522) (not e!828789))))

(declare-fun e!828786 () Bool)

(assert (=> b!1477269 (= res!1003522 e!828786)))

(declare-fun c!136400 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1477269 (= c!136400 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477270 () Bool)

(declare-fun e!828783 () Bool)

(declare-fun e!828787 () Bool)

(assert (=> b!1477270 (= e!828783 e!828787)))

(declare-fun res!1003525 () Bool)

(assert (=> b!1477270 (=> res!1003525 e!828787)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!99227 0))(
  ( (array!99228 (arr!47888 (Array (_ BitVec 32) (_ BitVec 64))) (size!48439 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99227)

(assert (=> b!1477270 (= res!1003525 (or (and (= (select (arr!47888 a!2862) index!646) (select (store (arr!47888 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47888 a!2862) index!646) (select (arr!47888 a!2862) j!93))) (not (= (select (arr!47888 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477271 () Bool)

(declare-fun e!828788 () Bool)

(declare-fun e!828791 () Bool)

(assert (=> b!1477271 (= e!828788 e!828791)))

(declare-fun res!1003512 () Bool)

(assert (=> b!1477271 (=> (not res!1003512) (not e!828791))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12151 0))(
  ( (MissingZero!12151 (index!50995 (_ BitVec 32))) (Found!12151 (index!50996 (_ BitVec 32))) (Intermediate!12151 (undefined!12963 Bool) (index!50997 (_ BitVec 32)) (x!132593 (_ BitVec 32))) (Undefined!12151) (MissingVacant!12151 (index!50998 (_ BitVec 32))) )
))
(declare-fun lt!645261 () SeekEntryResult!12151)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99227 (_ BitVec 32)) SeekEntryResult!12151)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477271 (= res!1003512 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47888 a!2862) j!93) mask!2687) (select (arr!47888 a!2862) j!93) a!2862 mask!2687) lt!645261))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1477271 (= lt!645261 (Intermediate!12151 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477272 () Bool)

(assert (=> b!1477272 (= e!828791 e!828789)))

(declare-fun res!1003527 () Bool)

(assert (=> b!1477272 (=> (not res!1003527) (not e!828789))))

(declare-fun lt!645260 () SeekEntryResult!12151)

(assert (=> b!1477272 (= res!1003527 (= lt!645260 (Intermediate!12151 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645258 () array!99227)

(declare-fun lt!645257 () (_ BitVec 64))

(assert (=> b!1477272 (= lt!645260 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645257 mask!2687) lt!645257 lt!645258 mask!2687))))

(assert (=> b!1477272 (= lt!645257 (select (store (arr!47888 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477273 () Bool)

(declare-fun res!1003518 () Bool)

(declare-fun e!828790 () Bool)

(assert (=> b!1477273 (=> (not res!1003518) (not e!828790))))

(assert (=> b!1477273 (= res!1003518 (and (= (size!48439 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48439 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48439 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477274 () Bool)

(declare-fun res!1003519 () Bool)

(assert (=> b!1477274 (=> (not res!1003519) (not e!828790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477274 (= res!1003519 (validKeyInArray!0 (select (arr!47888 a!2862) j!93)))))

(declare-fun b!1477275 () Bool)

(declare-fun res!1003515 () Bool)

(assert (=> b!1477275 (=> (not res!1003515) (not e!828790))))

(declare-datatypes ((List!34569 0))(
  ( (Nil!34566) (Cons!34565 (h!35933 (_ BitVec 64)) (t!49270 List!34569)) )
))
(declare-fun arrayNoDuplicates!0 (array!99227 (_ BitVec 32) List!34569) Bool)

(assert (=> b!1477275 (= res!1003515 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34566))))

(declare-fun b!1477276 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99227 (_ BitVec 32)) SeekEntryResult!12151)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99227 (_ BitVec 32)) SeekEntryResult!12151)

(assert (=> b!1477276 (= e!828786 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645257 lt!645258 mask!2687) (seekEntryOrOpen!0 lt!645257 lt!645258 mask!2687)))))

(declare-fun b!1477277 () Bool)

(declare-fun res!1003517 () Bool)

(assert (=> b!1477277 (=> (not res!1003517) (not e!828791))))

(assert (=> b!1477277 (= res!1003517 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47888 a!2862) j!93) a!2862 mask!2687) lt!645261))))

(declare-fun b!1477278 () Bool)

(declare-fun res!1003521 () Bool)

(assert (=> b!1477278 (=> (not res!1003521) (not e!828790))))

(assert (=> b!1477278 (= res!1003521 (validKeyInArray!0 (select (arr!47888 a!2862) i!1006)))))

(declare-fun b!1477279 () Bool)

(declare-fun e!828785 () Bool)

(assert (=> b!1477279 (= e!828785 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun res!1003520 () Bool)

(assert (=> start!126204 (=> (not res!1003520) (not e!828790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126204 (= res!1003520 (validMask!0 mask!2687))))

(assert (=> start!126204 e!828790))

(assert (=> start!126204 true))

(declare-fun array_inv!36833 (array!99227) Bool)

(assert (=> start!126204 (array_inv!36833 a!2862)))

(declare-fun b!1477280 () Bool)

(declare-fun res!1003524 () Bool)

(assert (=> b!1477280 (=> (not res!1003524) (not e!828790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99227 (_ BitVec 32)) Bool)

(assert (=> b!1477280 (= res!1003524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477281 () Bool)

(assert (=> b!1477281 (= e!828787 e!828785)))

(declare-fun res!1003516 () Bool)

(assert (=> b!1477281 (=> (not res!1003516) (not e!828785))))

(declare-fun lt!645259 () SeekEntryResult!12151)

(assert (=> b!1477281 (= res!1003516 (= lt!645259 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47888 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477282 () Bool)

(assert (=> b!1477282 (= e!828786 (= lt!645260 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645257 lt!645258 mask!2687)))))

(declare-fun b!1477283 () Bool)

(declare-fun res!1003513 () Bool)

(assert (=> b!1477283 (=> (not res!1003513) (not e!828790))))

(assert (=> b!1477283 (= res!1003513 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48439 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48439 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48439 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477284 () Bool)

(assert (=> b!1477284 (= e!828789 (not true))))

(assert (=> b!1477284 e!828783))

(declare-fun res!1003514 () Bool)

(assert (=> b!1477284 (=> (not res!1003514) (not e!828783))))

(assert (=> b!1477284 (= res!1003514 (and (= lt!645259 (Found!12151 j!93)) (or (= (select (arr!47888 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47888 a!2862) intermediateBeforeIndex!19) (select (arr!47888 a!2862) j!93)))))))

(assert (=> b!1477284 (= lt!645259 (seekEntryOrOpen!0 (select (arr!47888 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1477284 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49590 0))(
  ( (Unit!49591) )
))
(declare-fun lt!645262 () Unit!49590)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99227 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49590)

(assert (=> b!1477284 (= lt!645262 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477285 () Bool)

(assert (=> b!1477285 (= e!828790 e!828788)))

(declare-fun res!1003526 () Bool)

(assert (=> b!1477285 (=> (not res!1003526) (not e!828788))))

(assert (=> b!1477285 (= res!1003526 (= (select (store (arr!47888 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477285 (= lt!645258 (array!99228 (store (arr!47888 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48439 a!2862)))))

(assert (= (and start!126204 res!1003520) b!1477273))

(assert (= (and b!1477273 res!1003518) b!1477278))

(assert (= (and b!1477278 res!1003521) b!1477274))

(assert (= (and b!1477274 res!1003519) b!1477280))

(assert (= (and b!1477280 res!1003524) b!1477275))

(assert (= (and b!1477275 res!1003515) b!1477283))

(assert (= (and b!1477283 res!1003513) b!1477285))

(assert (= (and b!1477285 res!1003526) b!1477271))

(assert (= (and b!1477271 res!1003512) b!1477277))

(assert (= (and b!1477277 res!1003517) b!1477272))

(assert (= (and b!1477272 res!1003527) b!1477269))

(assert (= (and b!1477269 c!136400) b!1477282))

(assert (= (and b!1477269 (not c!136400)) b!1477276))

(assert (= (and b!1477269 res!1003522) b!1477268))

(assert (= (and b!1477268 res!1003523) b!1477284))

(assert (= (and b!1477284 res!1003514) b!1477270))

(assert (= (and b!1477270 (not res!1003525)) b!1477281))

(assert (= (and b!1477281 res!1003516) b!1477279))

(declare-fun m!1363279 () Bool)

(assert (=> b!1477270 m!1363279))

(declare-fun m!1363281 () Bool)

(assert (=> b!1477270 m!1363281))

(declare-fun m!1363283 () Bool)

(assert (=> b!1477270 m!1363283))

(declare-fun m!1363285 () Bool)

(assert (=> b!1477270 m!1363285))

(assert (=> b!1477277 m!1363285))

(assert (=> b!1477277 m!1363285))

(declare-fun m!1363287 () Bool)

(assert (=> b!1477277 m!1363287))

(declare-fun m!1363289 () Bool)

(assert (=> start!126204 m!1363289))

(declare-fun m!1363291 () Bool)

(assert (=> start!126204 m!1363291))

(declare-fun m!1363293 () Bool)

(assert (=> b!1477280 m!1363293))

(assert (=> b!1477281 m!1363285))

(assert (=> b!1477281 m!1363285))

(declare-fun m!1363295 () Bool)

(assert (=> b!1477281 m!1363295))

(assert (=> b!1477285 m!1363281))

(declare-fun m!1363297 () Bool)

(assert (=> b!1477285 m!1363297))

(declare-fun m!1363299 () Bool)

(assert (=> b!1477278 m!1363299))

(assert (=> b!1477278 m!1363299))

(declare-fun m!1363301 () Bool)

(assert (=> b!1477278 m!1363301))

(declare-fun m!1363303 () Bool)

(assert (=> b!1477284 m!1363303))

(declare-fun m!1363305 () Bool)

(assert (=> b!1477284 m!1363305))

(assert (=> b!1477284 m!1363285))

(declare-fun m!1363307 () Bool)

(assert (=> b!1477284 m!1363307))

(declare-fun m!1363309 () Bool)

(assert (=> b!1477284 m!1363309))

(assert (=> b!1477284 m!1363285))

(declare-fun m!1363311 () Bool)

(assert (=> b!1477276 m!1363311))

(declare-fun m!1363313 () Bool)

(assert (=> b!1477276 m!1363313))

(assert (=> b!1477274 m!1363285))

(assert (=> b!1477274 m!1363285))

(declare-fun m!1363315 () Bool)

(assert (=> b!1477274 m!1363315))

(assert (=> b!1477271 m!1363285))

(assert (=> b!1477271 m!1363285))

(declare-fun m!1363317 () Bool)

(assert (=> b!1477271 m!1363317))

(assert (=> b!1477271 m!1363317))

(assert (=> b!1477271 m!1363285))

(declare-fun m!1363319 () Bool)

(assert (=> b!1477271 m!1363319))

(declare-fun m!1363321 () Bool)

(assert (=> b!1477282 m!1363321))

(declare-fun m!1363323 () Bool)

(assert (=> b!1477275 m!1363323))

(declare-fun m!1363325 () Bool)

(assert (=> b!1477272 m!1363325))

(assert (=> b!1477272 m!1363325))

(declare-fun m!1363327 () Bool)

(assert (=> b!1477272 m!1363327))

(assert (=> b!1477272 m!1363281))

(declare-fun m!1363329 () Bool)

(assert (=> b!1477272 m!1363329))

(check-sat (not b!1477281) (not b!1477271) (not b!1477276) (not b!1477282) (not b!1477272) (not start!126204) (not b!1477278) (not b!1477280) (not b!1477277) (not b!1477275) (not b!1477274) (not b!1477284))
(check-sat)
