; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124896 () Bool)

(assert start!124896)

(declare-fun b!1449481 () Bool)

(declare-fun res!981026 () Bool)

(declare-fun e!816290 () Bool)

(assert (=> b!1449481 (=> (not res!981026) (not e!816290))))

(declare-datatypes ((array!98261 0))(
  ( (array!98262 (arr!47414 (Array (_ BitVec 32) (_ BitVec 64))) (size!47965 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98261)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98261 (_ BitVec 32)) Bool)

(assert (=> b!1449481 (= res!981026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449482 () Bool)

(declare-fun e!816294 () Bool)

(declare-fun e!816292 () Bool)

(assert (=> b!1449482 (= e!816294 e!816292)))

(declare-fun res!981017 () Bool)

(assert (=> b!1449482 (=> (not res!981017) (not e!816292))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11689 0))(
  ( (MissingZero!11689 (index!49147 (_ BitVec 32))) (Found!11689 (index!49148 (_ BitVec 32))) (Intermediate!11689 (undefined!12501 Bool) (index!49149 (_ BitVec 32)) (x!130813 (_ BitVec 32))) (Undefined!11689) (MissingVacant!11689 (index!49150 (_ BitVec 32))) )
))
(declare-fun lt!635890 () SeekEntryResult!11689)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1449482 (= res!981017 (= lt!635890 (Intermediate!11689 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635885 () (_ BitVec 64))

(declare-fun lt!635889 () array!98261)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98261 (_ BitVec 32)) SeekEntryResult!11689)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449482 (= lt!635890 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635885 mask!2687) lt!635885 lt!635889 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1449482 (= lt!635885 (select (store (arr!47414 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449483 () Bool)

(declare-fun e!816289 () Bool)

(assert (=> b!1449483 (= e!816289 e!816294)))

(declare-fun res!981031 () Bool)

(assert (=> b!1449483 (=> (not res!981031) (not e!816294))))

(declare-fun lt!635888 () SeekEntryResult!11689)

(assert (=> b!1449483 (= res!981031 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47414 a!2862) j!93) mask!2687) (select (arr!47414 a!2862) j!93) a!2862 mask!2687) lt!635888))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1449483 (= lt!635888 (Intermediate!11689 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449484 () Bool)

(declare-fun res!981032 () Bool)

(assert (=> b!1449484 (=> (not res!981032) (not e!816290))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449484 (= res!981032 (validKeyInArray!0 (select (arr!47414 a!2862) i!1006)))))

(declare-fun res!981027 () Bool)

(assert (=> start!124896 (=> (not res!981027) (not e!816290))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124896 (= res!981027 (validMask!0 mask!2687))))

(assert (=> start!124896 e!816290))

(assert (=> start!124896 true))

(declare-fun array_inv!36359 (array!98261) Bool)

(assert (=> start!124896 (array_inv!36359 a!2862)))

(declare-fun b!1449485 () Bool)

(declare-fun res!981023 () Bool)

(assert (=> b!1449485 (=> (not res!981023) (not e!816292))))

(declare-fun e!816287 () Bool)

(assert (=> b!1449485 (= res!981023 e!816287)))

(declare-fun c!133745 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1449485 (= c!133745 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1449486 () Bool)

(declare-fun e!816288 () Bool)

(assert (=> b!1449486 (= e!816292 (not e!816288))))

(declare-fun res!981029 () Bool)

(assert (=> b!1449486 (=> res!981029 e!816288)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1449486 (= res!981029 (or (and (= (select (arr!47414 a!2862) index!646) (select (store (arr!47414 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47414 a!2862) index!646) (select (arr!47414 a!2862) j!93))) (not (= (select (arr!47414 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47414 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816295 () Bool)

(assert (=> b!1449486 e!816295))

(declare-fun res!981024 () Bool)

(assert (=> b!1449486 (=> (not res!981024) (not e!816295))))

(declare-fun lt!635887 () SeekEntryResult!11689)

(assert (=> b!1449486 (= res!981024 (and (= lt!635887 (Found!11689 j!93)) (or (= (select (arr!47414 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47414 a!2862) intermediateBeforeIndex!19) (select (arr!47414 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98261 (_ BitVec 32)) SeekEntryResult!11689)

(assert (=> b!1449486 (= lt!635887 (seekEntryOrOpen!0 (select (arr!47414 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1449486 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48822 0))(
  ( (Unit!48823) )
))
(declare-fun lt!635886 () Unit!48822)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98261 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48822)

(assert (=> b!1449486 (= lt!635886 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1449487 () Bool)

(declare-fun res!981025 () Bool)

(assert (=> b!1449487 (=> (not res!981025) (not e!816290))))

(assert (=> b!1449487 (= res!981025 (validKeyInArray!0 (select (arr!47414 a!2862) j!93)))))

(declare-fun b!1449488 () Bool)

(assert (=> b!1449488 (= e!816290 e!816289)))

(declare-fun res!981028 () Bool)

(assert (=> b!1449488 (=> (not res!981028) (not e!816289))))

(assert (=> b!1449488 (= res!981028 (= (select (store (arr!47414 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449488 (= lt!635889 (array!98262 (store (arr!47414 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47965 a!2862)))))

(declare-fun b!1449489 () Bool)

(declare-fun res!981018 () Bool)

(assert (=> b!1449489 (=> (not res!981018) (not e!816294))))

(assert (=> b!1449489 (= res!981018 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47414 a!2862) j!93) a!2862 mask!2687) lt!635888))))

(declare-fun b!1449490 () Bool)

(declare-fun res!981021 () Bool)

(assert (=> b!1449490 (=> (not res!981021) (not e!816290))))

(assert (=> b!1449490 (= res!981021 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47965 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47965 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47965 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449491 () Bool)

(declare-fun e!816291 () Bool)

(declare-fun e!816296 () Bool)

(assert (=> b!1449491 (= e!816291 e!816296)))

(declare-fun res!981030 () Bool)

(assert (=> b!1449491 (=> (not res!981030) (not e!816296))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98261 (_ BitVec 32)) SeekEntryResult!11689)

(assert (=> b!1449491 (= res!981030 (= lt!635887 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47414 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1449492 () Bool)

(declare-fun res!981033 () Bool)

(assert (=> b!1449492 (=> (not res!981033) (not e!816290))))

(assert (=> b!1449492 (= res!981033 (and (= (size!47965 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47965 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47965 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1449493 () Bool)

(assert (=> b!1449493 (= e!816295 e!816291)))

(declare-fun res!981022 () Bool)

(assert (=> b!1449493 (=> res!981022 e!816291)))

(assert (=> b!1449493 (= res!981022 (or (and (= (select (arr!47414 a!2862) index!646) (select (store (arr!47414 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47414 a!2862) index!646) (select (arr!47414 a!2862) j!93))) (not (= (select (arr!47414 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449494 () Bool)

(assert (=> b!1449494 (= e!816296 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449495 () Bool)

(assert (=> b!1449495 (= e!816287 (= lt!635890 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635885 lt!635889 mask!2687)))))

(declare-fun b!1449496 () Bool)

(declare-fun res!981019 () Bool)

(assert (=> b!1449496 (=> (not res!981019) (not e!816290))))

(declare-datatypes ((List!34095 0))(
  ( (Nil!34092) (Cons!34091 (h!35441 (_ BitVec 64)) (t!48796 List!34095)) )
))
(declare-fun arrayNoDuplicates!0 (array!98261 (_ BitVec 32) List!34095) Bool)

(assert (=> b!1449496 (= res!981019 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34092))))

(declare-fun b!1449497 () Bool)

(assert (=> b!1449497 (= e!816287 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635885 lt!635889 mask!2687) (seekEntryOrOpen!0 lt!635885 lt!635889 mask!2687)))))

(declare-fun b!1449498 () Bool)

(declare-fun res!981020 () Bool)

(assert (=> b!1449498 (=> (not res!981020) (not e!816292))))

(assert (=> b!1449498 (= res!981020 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449499 () Bool)

(assert (=> b!1449499 (= e!816288 true)))

(declare-fun lt!635884 () SeekEntryResult!11689)

(assert (=> b!1449499 (= lt!635884 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47414 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and start!124896 res!981027) b!1449492))

(assert (= (and b!1449492 res!981033) b!1449484))

(assert (= (and b!1449484 res!981032) b!1449487))

(assert (= (and b!1449487 res!981025) b!1449481))

(assert (= (and b!1449481 res!981026) b!1449496))

(assert (= (and b!1449496 res!981019) b!1449490))

(assert (= (and b!1449490 res!981021) b!1449488))

(assert (= (and b!1449488 res!981028) b!1449483))

(assert (= (and b!1449483 res!981031) b!1449489))

(assert (= (and b!1449489 res!981018) b!1449482))

(assert (= (and b!1449482 res!981017) b!1449485))

(assert (= (and b!1449485 c!133745) b!1449495))

(assert (= (and b!1449485 (not c!133745)) b!1449497))

(assert (= (and b!1449485 res!981023) b!1449498))

(assert (= (and b!1449498 res!981020) b!1449486))

(assert (= (and b!1449486 res!981024) b!1449493))

(assert (= (and b!1449493 (not res!981022)) b!1449491))

(assert (= (and b!1449491 res!981030) b!1449494))

(assert (= (and b!1449486 (not res!981029)) b!1449499))

(declare-fun m!1338243 () Bool)

(assert (=> b!1449489 m!1338243))

(assert (=> b!1449489 m!1338243))

(declare-fun m!1338245 () Bool)

(assert (=> b!1449489 m!1338245))

(declare-fun m!1338247 () Bool)

(assert (=> b!1449493 m!1338247))

(declare-fun m!1338249 () Bool)

(assert (=> b!1449493 m!1338249))

(declare-fun m!1338251 () Bool)

(assert (=> b!1449493 m!1338251))

(assert (=> b!1449493 m!1338243))

(declare-fun m!1338253 () Bool)

(assert (=> b!1449495 m!1338253))

(assert (=> b!1449491 m!1338243))

(assert (=> b!1449491 m!1338243))

(declare-fun m!1338255 () Bool)

(assert (=> b!1449491 m!1338255))

(assert (=> b!1449488 m!1338249))

(declare-fun m!1338257 () Bool)

(assert (=> b!1449488 m!1338257))

(assert (=> b!1449499 m!1338243))

(assert (=> b!1449499 m!1338243))

(declare-fun m!1338259 () Bool)

(assert (=> b!1449499 m!1338259))

(declare-fun m!1338261 () Bool)

(assert (=> b!1449497 m!1338261))

(declare-fun m!1338263 () Bool)

(assert (=> b!1449497 m!1338263))

(assert (=> b!1449483 m!1338243))

(assert (=> b!1449483 m!1338243))

(declare-fun m!1338265 () Bool)

(assert (=> b!1449483 m!1338265))

(assert (=> b!1449483 m!1338265))

(assert (=> b!1449483 m!1338243))

(declare-fun m!1338267 () Bool)

(assert (=> b!1449483 m!1338267))

(declare-fun m!1338269 () Bool)

(assert (=> b!1449486 m!1338269))

(assert (=> b!1449486 m!1338249))

(declare-fun m!1338271 () Bool)

(assert (=> b!1449486 m!1338271))

(assert (=> b!1449486 m!1338251))

(assert (=> b!1449486 m!1338247))

(assert (=> b!1449486 m!1338243))

(declare-fun m!1338273 () Bool)

(assert (=> b!1449486 m!1338273))

(declare-fun m!1338275 () Bool)

(assert (=> b!1449486 m!1338275))

(assert (=> b!1449486 m!1338243))

(assert (=> b!1449487 m!1338243))

(assert (=> b!1449487 m!1338243))

(declare-fun m!1338277 () Bool)

(assert (=> b!1449487 m!1338277))

(declare-fun m!1338279 () Bool)

(assert (=> b!1449482 m!1338279))

(assert (=> b!1449482 m!1338279))

(declare-fun m!1338281 () Bool)

(assert (=> b!1449482 m!1338281))

(assert (=> b!1449482 m!1338249))

(declare-fun m!1338283 () Bool)

(assert (=> b!1449482 m!1338283))

(declare-fun m!1338285 () Bool)

(assert (=> b!1449484 m!1338285))

(assert (=> b!1449484 m!1338285))

(declare-fun m!1338287 () Bool)

(assert (=> b!1449484 m!1338287))

(declare-fun m!1338289 () Bool)

(assert (=> b!1449481 m!1338289))

(declare-fun m!1338291 () Bool)

(assert (=> b!1449496 m!1338291))

(declare-fun m!1338293 () Bool)

(assert (=> start!124896 m!1338293))

(declare-fun m!1338295 () Bool)

(assert (=> start!124896 m!1338295))

(check-sat (not b!1449491) (not b!1449499) (not b!1449484) (not b!1449495) (not b!1449496) (not start!124896) (not b!1449486) (not b!1449497) (not b!1449487) (not b!1449481) (not b!1449482) (not b!1449483) (not b!1449489))
(check-sat)
