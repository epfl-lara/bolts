; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124860 () Bool)

(assert start!124860)

(declare-fun b!1448455 () Bool)

(declare-fun e!815748 () Bool)

(declare-fun e!815747 () Bool)

(assert (=> b!1448455 (= e!815748 e!815747)))

(declare-fun res!980111 () Bool)

(assert (=> b!1448455 (=> res!980111 e!815747)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98225 0))(
  ( (array!98226 (arr!47396 (Array (_ BitVec 32) (_ BitVec 64))) (size!47947 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98225)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1448455 (= res!980111 (or (and (= (select (arr!47396 a!2862) index!646) (select (store (arr!47396 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47396 a!2862) index!646) (select (arr!47396 a!2862) j!93))) (not (= (select (arr!47396 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1448456 () Bool)

(declare-fun e!815753 () Bool)

(assert (=> b!1448456 (= e!815753 true)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11671 0))(
  ( (MissingZero!11671 (index!49075 (_ BitVec 32))) (Found!11671 (index!49076 (_ BitVec 32))) (Intermediate!11671 (undefined!12483 Bool) (index!49077 (_ BitVec 32)) (x!130747 (_ BitVec 32))) (Undefined!11671) (MissingVacant!11671 (index!49078 (_ BitVec 32))) )
))
(declare-fun lt!635508 () SeekEntryResult!11671)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98225 (_ BitVec 32)) SeekEntryResult!11671)

(assert (=> b!1448456 (= lt!635508 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47396 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448457 () Bool)

(declare-fun res!980101 () Bool)

(declare-fun e!815752 () Bool)

(assert (=> b!1448457 (=> (not res!980101) (not e!815752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98225 (_ BitVec 32)) Bool)

(assert (=> b!1448457 (= res!980101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!980106 () Bool)

(assert (=> start!124860 (=> (not res!980106) (not e!815752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124860 (= res!980106 (validMask!0 mask!2687))))

(assert (=> start!124860 e!815752))

(assert (=> start!124860 true))

(declare-fun array_inv!36341 (array!98225) Bool)

(assert (=> start!124860 (array_inv!36341 a!2862)))

(declare-fun b!1448458 () Bool)

(declare-fun res!980104 () Bool)

(declare-fun e!815756 () Bool)

(assert (=> b!1448458 (=> (not res!980104) (not e!815756))))

(declare-fun e!815754 () Bool)

(assert (=> b!1448458 (= res!980104 e!815754)))

(declare-fun c!133691 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1448458 (= c!133691 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448459 () Bool)

(declare-fun e!815750 () Bool)

(declare-fun e!815755 () Bool)

(assert (=> b!1448459 (= e!815750 e!815755)))

(declare-fun res!980108 () Bool)

(assert (=> b!1448459 (=> (not res!980108) (not e!815755))))

(declare-fun lt!635506 () SeekEntryResult!11671)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98225 (_ BitVec 32)) SeekEntryResult!11671)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448459 (= res!980108 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47396 a!2862) j!93) mask!2687) (select (arr!47396 a!2862) j!93) a!2862 mask!2687) lt!635506))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1448459 (= lt!635506 (Intermediate!11671 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!815751 () Bool)

(declare-fun b!1448460 () Bool)

(assert (=> b!1448460 (= e!815751 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448461 () Bool)

(declare-fun res!980099 () Bool)

(assert (=> b!1448461 (=> (not res!980099) (not e!815752))))

(assert (=> b!1448461 (= res!980099 (and (= (size!47947 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47947 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47947 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448462 () Bool)

(assert (=> b!1448462 (= e!815755 e!815756)))

(declare-fun res!980103 () Bool)

(assert (=> b!1448462 (=> (not res!980103) (not e!815756))))

(declare-fun lt!635510 () SeekEntryResult!11671)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1448462 (= res!980103 (= lt!635510 (Intermediate!11671 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635511 () (_ BitVec 64))

(declare-fun lt!635507 () array!98225)

(assert (=> b!1448462 (= lt!635510 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635511 mask!2687) lt!635511 lt!635507 mask!2687))))

(assert (=> b!1448462 (= lt!635511 (select (store (arr!47396 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1448463 () Bool)

(assert (=> b!1448463 (= e!815756 (not e!815753))))

(declare-fun res!980115 () Bool)

(assert (=> b!1448463 (=> res!980115 e!815753)))

(assert (=> b!1448463 (= res!980115 (or (and (= (select (arr!47396 a!2862) index!646) (select (store (arr!47396 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47396 a!2862) index!646) (select (arr!47396 a!2862) j!93))) (not (= (select (arr!47396 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47396 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1448463 e!815748))

(declare-fun res!980100 () Bool)

(assert (=> b!1448463 (=> (not res!980100) (not e!815748))))

(declare-fun lt!635509 () SeekEntryResult!11671)

(assert (=> b!1448463 (= res!980100 (and (= lt!635509 (Found!11671 j!93)) (or (= (select (arr!47396 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47396 a!2862) intermediateBeforeIndex!19) (select (arr!47396 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98225 (_ BitVec 32)) SeekEntryResult!11671)

(assert (=> b!1448463 (= lt!635509 (seekEntryOrOpen!0 (select (arr!47396 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1448463 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48786 0))(
  ( (Unit!48787) )
))
(declare-fun lt!635512 () Unit!48786)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98225 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48786)

(assert (=> b!1448463 (= lt!635512 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448464 () Bool)

(declare-fun res!980105 () Bool)

(assert (=> b!1448464 (=> (not res!980105) (not e!815752))))

(assert (=> b!1448464 (= res!980105 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47947 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47947 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47947 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1448465 () Bool)

(declare-fun res!980109 () Bool)

(assert (=> b!1448465 (=> (not res!980109) (not e!815756))))

(assert (=> b!1448465 (= res!980109 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448466 () Bool)

(assert (=> b!1448466 (= e!815754 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635511 lt!635507 mask!2687) (seekEntryOrOpen!0 lt!635511 lt!635507 mask!2687)))))

(declare-fun b!1448467 () Bool)

(assert (=> b!1448467 (= e!815747 e!815751)))

(declare-fun res!980113 () Bool)

(assert (=> b!1448467 (=> (not res!980113) (not e!815751))))

(assert (=> b!1448467 (= res!980113 (= lt!635509 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47396 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448468 () Bool)

(declare-fun res!980110 () Bool)

(assert (=> b!1448468 (=> (not res!980110) (not e!815752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448468 (= res!980110 (validKeyInArray!0 (select (arr!47396 a!2862) j!93)))))

(declare-fun b!1448469 () Bool)

(declare-fun res!980114 () Bool)

(assert (=> b!1448469 (=> (not res!980114) (not e!815752))))

(declare-datatypes ((List!34077 0))(
  ( (Nil!34074) (Cons!34073 (h!35423 (_ BitVec 64)) (t!48778 List!34077)) )
))
(declare-fun arrayNoDuplicates!0 (array!98225 (_ BitVec 32) List!34077) Bool)

(assert (=> b!1448469 (= res!980114 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34074))))

(declare-fun b!1448470 () Bool)

(declare-fun res!980102 () Bool)

(assert (=> b!1448470 (=> (not res!980102) (not e!815752))))

(assert (=> b!1448470 (= res!980102 (validKeyInArray!0 (select (arr!47396 a!2862) i!1006)))))

(declare-fun b!1448471 () Bool)

(assert (=> b!1448471 (= e!815752 e!815750)))

(declare-fun res!980112 () Bool)

(assert (=> b!1448471 (=> (not res!980112) (not e!815750))))

(assert (=> b!1448471 (= res!980112 (= (select (store (arr!47396 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1448471 (= lt!635507 (array!98226 (store (arr!47396 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47947 a!2862)))))

(declare-fun b!1448472 () Bool)

(assert (=> b!1448472 (= e!815754 (= lt!635510 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635511 lt!635507 mask!2687)))))

(declare-fun b!1448473 () Bool)

(declare-fun res!980107 () Bool)

(assert (=> b!1448473 (=> (not res!980107) (not e!815755))))

(assert (=> b!1448473 (= res!980107 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47396 a!2862) j!93) a!2862 mask!2687) lt!635506))))

(assert (= (and start!124860 res!980106) b!1448461))

(assert (= (and b!1448461 res!980099) b!1448470))

(assert (= (and b!1448470 res!980102) b!1448468))

(assert (= (and b!1448468 res!980110) b!1448457))

(assert (= (and b!1448457 res!980101) b!1448469))

(assert (= (and b!1448469 res!980114) b!1448464))

(assert (= (and b!1448464 res!980105) b!1448471))

(assert (= (and b!1448471 res!980112) b!1448459))

(assert (= (and b!1448459 res!980108) b!1448473))

(assert (= (and b!1448473 res!980107) b!1448462))

(assert (= (and b!1448462 res!980103) b!1448458))

(assert (= (and b!1448458 c!133691) b!1448472))

(assert (= (and b!1448458 (not c!133691)) b!1448466))

(assert (= (and b!1448458 res!980104) b!1448465))

(assert (= (and b!1448465 res!980109) b!1448463))

(assert (= (and b!1448463 res!980100) b!1448455))

(assert (= (and b!1448455 (not res!980111)) b!1448467))

(assert (= (and b!1448467 res!980113) b!1448460))

(assert (= (and b!1448463 (not res!980115)) b!1448456))

(declare-fun m!1337271 () Bool)

(assert (=> b!1448455 m!1337271))

(declare-fun m!1337273 () Bool)

(assert (=> b!1448455 m!1337273))

(declare-fun m!1337275 () Bool)

(assert (=> b!1448455 m!1337275))

(declare-fun m!1337277 () Bool)

(assert (=> b!1448455 m!1337277))

(declare-fun m!1337279 () Bool)

(assert (=> b!1448457 m!1337279))

(declare-fun m!1337281 () Bool)

(assert (=> b!1448469 m!1337281))

(assert (=> b!1448471 m!1337273))

(declare-fun m!1337283 () Bool)

(assert (=> b!1448471 m!1337283))

(assert (=> b!1448473 m!1337277))

(assert (=> b!1448473 m!1337277))

(declare-fun m!1337285 () Bool)

(assert (=> b!1448473 m!1337285))

(declare-fun m!1337287 () Bool)

(assert (=> b!1448463 m!1337287))

(assert (=> b!1448463 m!1337273))

(declare-fun m!1337289 () Bool)

(assert (=> b!1448463 m!1337289))

(assert (=> b!1448463 m!1337275))

(assert (=> b!1448463 m!1337271))

(assert (=> b!1448463 m!1337277))

(declare-fun m!1337291 () Bool)

(assert (=> b!1448463 m!1337291))

(declare-fun m!1337293 () Bool)

(assert (=> b!1448463 m!1337293))

(assert (=> b!1448463 m!1337277))

(declare-fun m!1337295 () Bool)

(assert (=> b!1448462 m!1337295))

(assert (=> b!1448462 m!1337295))

(declare-fun m!1337297 () Bool)

(assert (=> b!1448462 m!1337297))

(assert (=> b!1448462 m!1337273))

(declare-fun m!1337299 () Bool)

(assert (=> b!1448462 m!1337299))

(assert (=> b!1448468 m!1337277))

(assert (=> b!1448468 m!1337277))

(declare-fun m!1337301 () Bool)

(assert (=> b!1448468 m!1337301))

(assert (=> b!1448467 m!1337277))

(assert (=> b!1448467 m!1337277))

(declare-fun m!1337303 () Bool)

(assert (=> b!1448467 m!1337303))

(declare-fun m!1337305 () Bool)

(assert (=> b!1448472 m!1337305))

(declare-fun m!1337307 () Bool)

(assert (=> b!1448470 m!1337307))

(assert (=> b!1448470 m!1337307))

(declare-fun m!1337309 () Bool)

(assert (=> b!1448470 m!1337309))

(assert (=> b!1448456 m!1337277))

(assert (=> b!1448456 m!1337277))

(declare-fun m!1337311 () Bool)

(assert (=> b!1448456 m!1337311))

(assert (=> b!1448459 m!1337277))

(assert (=> b!1448459 m!1337277))

(declare-fun m!1337313 () Bool)

(assert (=> b!1448459 m!1337313))

(assert (=> b!1448459 m!1337313))

(assert (=> b!1448459 m!1337277))

(declare-fun m!1337315 () Bool)

(assert (=> b!1448459 m!1337315))

(declare-fun m!1337317 () Bool)

(assert (=> start!124860 m!1337317))

(declare-fun m!1337319 () Bool)

(assert (=> start!124860 m!1337319))

(declare-fun m!1337321 () Bool)

(assert (=> b!1448466 m!1337321))

(declare-fun m!1337323 () Bool)

(assert (=> b!1448466 m!1337323))

(check-sat (not b!1448468) (not start!124860) (not b!1448463) (not b!1448462) (not b!1448466) (not b!1448470) (not b!1448459) (not b!1448469) (not b!1448473) (not b!1448457) (not b!1448472) (not b!1448456) (not b!1448467))
(check-sat)
