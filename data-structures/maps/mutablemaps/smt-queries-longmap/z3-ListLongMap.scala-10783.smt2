; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126240 () Bool)

(assert start!126240)

(declare-fun b!1478240 () Bool)

(declare-fun e!829277 () Bool)

(declare-fun e!829269 () Bool)

(assert (=> b!1478240 (= e!829277 e!829269)))

(declare-fun res!1004380 () Bool)

(assert (=> b!1478240 (=> (not res!1004380) (not e!829269))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99263 0))(
  ( (array!99264 (arr!47906 (Array (_ BitVec 32) (_ BitVec 64))) (size!48457 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99263)

(assert (=> b!1478240 (= res!1004380 (= (select (store (arr!47906 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!645585 () array!99263)

(assert (=> b!1478240 (= lt!645585 (array!99264 (store (arr!47906 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48457 a!2862)))))

(declare-fun b!1478241 () Bool)

(declare-fun res!1004383 () Bool)

(assert (=> b!1478241 (=> (not res!1004383) (not e!829277))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478241 (= res!1004383 (validKeyInArray!0 (select (arr!47906 a!2862) j!93)))))

(declare-fun b!1478242 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!829275 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!645584 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12169 0))(
  ( (MissingZero!12169 (index!51067 (_ BitVec 32))) (Found!12169 (index!51068 (_ BitVec 32))) (Intermediate!12169 (undefined!12981 Bool) (index!51069 (_ BitVec 32)) (x!132659 (_ BitVec 32))) (Undefined!12169) (MissingVacant!12169 (index!51070 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99263 (_ BitVec 32)) SeekEntryResult!12169)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99263 (_ BitVec 32)) SeekEntryResult!12169)

(assert (=> b!1478242 (= e!829275 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645584 lt!645585 mask!2687) (seekEntryOrOpen!0 lt!645584 lt!645585 mask!2687)))))

(declare-fun b!1478243 () Bool)

(declare-fun lt!645582 () SeekEntryResult!12169)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99263 (_ BitVec 32)) SeekEntryResult!12169)

(assert (=> b!1478243 (= e!829275 (= lt!645582 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645584 lt!645585 mask!2687)))))

(declare-fun b!1478244 () Bool)

(declare-fun res!1004384 () Bool)

(declare-fun e!829271 () Bool)

(assert (=> b!1478244 (=> (not res!1004384) (not e!829271))))

(declare-fun lt!645586 () SeekEntryResult!12169)

(assert (=> b!1478244 (= res!1004384 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47906 a!2862) j!93) a!2862 mask!2687) lt!645586))))

(declare-fun b!1478245 () Bool)

(assert (=> b!1478245 (= e!829269 e!829271)))

(declare-fun res!1004387 () Bool)

(assert (=> b!1478245 (=> (not res!1004387) (not e!829271))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478245 (= res!1004387 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47906 a!2862) j!93) mask!2687) (select (arr!47906 a!2862) j!93) a!2862 mask!2687) lt!645586))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1478245 (= lt!645586 (Intermediate!12169 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!829270 () Bool)

(declare-fun b!1478246 () Bool)

(assert (=> b!1478246 (= e!829270 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun res!1004388 () Bool)

(assert (=> start!126240 (=> (not res!1004388) (not e!829277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126240 (= res!1004388 (validMask!0 mask!2687))))

(assert (=> start!126240 e!829277))

(assert (=> start!126240 true))

(declare-fun array_inv!36851 (array!99263) Bool)

(assert (=> start!126240 (array_inv!36851 a!2862)))

(declare-fun b!1478247 () Bool)

(declare-fun e!829274 () Bool)

(declare-fun e!829272 () Bool)

(assert (=> b!1478247 (= e!829274 e!829272)))

(declare-fun res!1004377 () Bool)

(assert (=> b!1478247 (=> res!1004377 e!829272)))

(assert (=> b!1478247 (= res!1004377 (or (and (= (select (arr!47906 a!2862) index!646) (select (store (arr!47906 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47906 a!2862) index!646) (select (arr!47906 a!2862) j!93))) (not (= (select (arr!47906 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478248 () Bool)

(declare-fun res!1004389 () Bool)

(assert (=> b!1478248 (=> (not res!1004389) (not e!829277))))

(assert (=> b!1478248 (= res!1004389 (validKeyInArray!0 (select (arr!47906 a!2862) i!1006)))))

(declare-fun b!1478249 () Bool)

(declare-fun e!829273 () Bool)

(assert (=> b!1478249 (= e!829271 e!829273)))

(declare-fun res!1004382 () Bool)

(assert (=> b!1478249 (=> (not res!1004382) (not e!829273))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1478249 (= res!1004382 (= lt!645582 (Intermediate!12169 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1478249 (= lt!645582 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645584 mask!2687) lt!645584 lt!645585 mask!2687))))

(assert (=> b!1478249 (= lt!645584 (select (store (arr!47906 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478250 () Bool)

(declare-fun res!1004376 () Bool)

(assert (=> b!1478250 (=> (not res!1004376) (not e!829273))))

(assert (=> b!1478250 (= res!1004376 e!829275)))

(declare-fun c!136454 () Bool)

(assert (=> b!1478250 (= c!136454 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1478251 () Bool)

(declare-fun res!1004378 () Bool)

(assert (=> b!1478251 (=> (not res!1004378) (not e!829277))))

(assert (=> b!1478251 (= res!1004378 (and (= (size!48457 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48457 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48457 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478252 () Bool)

(declare-fun res!1004391 () Bool)

(assert (=> b!1478252 (=> (not res!1004391) (not e!829277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99263 (_ BitVec 32)) Bool)

(assert (=> b!1478252 (= res!1004391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1478253 () Bool)

(declare-fun res!1004385 () Bool)

(assert (=> b!1478253 (=> (not res!1004385) (not e!829277))))

(assert (=> b!1478253 (= res!1004385 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48457 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48457 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48457 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478254 () Bool)

(assert (=> b!1478254 (= e!829272 e!829270)))

(declare-fun res!1004379 () Bool)

(assert (=> b!1478254 (=> (not res!1004379) (not e!829270))))

(declare-fun lt!645583 () SeekEntryResult!12169)

(assert (=> b!1478254 (= res!1004379 (= lt!645583 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47906 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1478255 () Bool)

(declare-fun res!1004390 () Bool)

(assert (=> b!1478255 (=> (not res!1004390) (not e!829273))))

(assert (=> b!1478255 (= res!1004390 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478256 () Bool)

(assert (=> b!1478256 (= e!829273 (not true))))

(assert (=> b!1478256 e!829274))

(declare-fun res!1004386 () Bool)

(assert (=> b!1478256 (=> (not res!1004386) (not e!829274))))

(assert (=> b!1478256 (= res!1004386 (and (= lt!645583 (Found!12169 j!93)) (or (= (select (arr!47906 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47906 a!2862) intermediateBeforeIndex!19) (select (arr!47906 a!2862) j!93)))))))

(assert (=> b!1478256 (= lt!645583 (seekEntryOrOpen!0 (select (arr!47906 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1478256 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49626 0))(
  ( (Unit!49627) )
))
(declare-fun lt!645581 () Unit!49626)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99263 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49626)

(assert (=> b!1478256 (= lt!645581 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478257 () Bool)

(declare-fun res!1004381 () Bool)

(assert (=> b!1478257 (=> (not res!1004381) (not e!829277))))

(declare-datatypes ((List!34587 0))(
  ( (Nil!34584) (Cons!34583 (h!35951 (_ BitVec 64)) (t!49288 List!34587)) )
))
(declare-fun arrayNoDuplicates!0 (array!99263 (_ BitVec 32) List!34587) Bool)

(assert (=> b!1478257 (= res!1004381 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34584))))

(assert (= (and start!126240 res!1004388) b!1478251))

(assert (= (and b!1478251 res!1004378) b!1478248))

(assert (= (and b!1478248 res!1004389) b!1478241))

(assert (= (and b!1478241 res!1004383) b!1478252))

(assert (= (and b!1478252 res!1004391) b!1478257))

(assert (= (and b!1478257 res!1004381) b!1478253))

(assert (= (and b!1478253 res!1004385) b!1478240))

(assert (= (and b!1478240 res!1004380) b!1478245))

(assert (= (and b!1478245 res!1004387) b!1478244))

(assert (= (and b!1478244 res!1004384) b!1478249))

(assert (= (and b!1478249 res!1004382) b!1478250))

(assert (= (and b!1478250 c!136454) b!1478243))

(assert (= (and b!1478250 (not c!136454)) b!1478242))

(assert (= (and b!1478250 res!1004376) b!1478255))

(assert (= (and b!1478255 res!1004390) b!1478256))

(assert (= (and b!1478256 res!1004386) b!1478247))

(assert (= (and b!1478247 (not res!1004377)) b!1478254))

(assert (= (and b!1478254 res!1004379) b!1478246))

(declare-fun m!1364215 () Bool)

(assert (=> b!1478240 m!1364215))

(declare-fun m!1364217 () Bool)

(assert (=> b!1478240 m!1364217))

(declare-fun m!1364219 () Bool)

(assert (=> b!1478248 m!1364219))

(assert (=> b!1478248 m!1364219))

(declare-fun m!1364221 () Bool)

(assert (=> b!1478248 m!1364221))

(declare-fun m!1364223 () Bool)

(assert (=> b!1478252 m!1364223))

(declare-fun m!1364225 () Bool)

(assert (=> b!1478243 m!1364225))

(declare-fun m!1364227 () Bool)

(assert (=> b!1478256 m!1364227))

(declare-fun m!1364229 () Bool)

(assert (=> b!1478256 m!1364229))

(declare-fun m!1364231 () Bool)

(assert (=> b!1478256 m!1364231))

(declare-fun m!1364233 () Bool)

(assert (=> b!1478256 m!1364233))

(declare-fun m!1364235 () Bool)

(assert (=> b!1478256 m!1364235))

(assert (=> b!1478256 m!1364231))

(assert (=> b!1478254 m!1364231))

(assert (=> b!1478254 m!1364231))

(declare-fun m!1364237 () Bool)

(assert (=> b!1478254 m!1364237))

(declare-fun m!1364239 () Bool)

(assert (=> b!1478257 m!1364239))

(assert (=> b!1478244 m!1364231))

(assert (=> b!1478244 m!1364231))

(declare-fun m!1364241 () Bool)

(assert (=> b!1478244 m!1364241))

(assert (=> b!1478245 m!1364231))

(assert (=> b!1478245 m!1364231))

(declare-fun m!1364243 () Bool)

(assert (=> b!1478245 m!1364243))

(assert (=> b!1478245 m!1364243))

(assert (=> b!1478245 m!1364231))

(declare-fun m!1364245 () Bool)

(assert (=> b!1478245 m!1364245))

(declare-fun m!1364247 () Bool)

(assert (=> b!1478242 m!1364247))

(declare-fun m!1364249 () Bool)

(assert (=> b!1478242 m!1364249))

(assert (=> b!1478241 m!1364231))

(assert (=> b!1478241 m!1364231))

(declare-fun m!1364251 () Bool)

(assert (=> b!1478241 m!1364251))

(declare-fun m!1364253 () Bool)

(assert (=> start!126240 m!1364253))

(declare-fun m!1364255 () Bool)

(assert (=> start!126240 m!1364255))

(declare-fun m!1364257 () Bool)

(assert (=> b!1478247 m!1364257))

(assert (=> b!1478247 m!1364215))

(declare-fun m!1364259 () Bool)

(assert (=> b!1478247 m!1364259))

(assert (=> b!1478247 m!1364231))

(declare-fun m!1364261 () Bool)

(assert (=> b!1478249 m!1364261))

(assert (=> b!1478249 m!1364261))

(declare-fun m!1364263 () Bool)

(assert (=> b!1478249 m!1364263))

(assert (=> b!1478249 m!1364215))

(declare-fun m!1364265 () Bool)

(assert (=> b!1478249 m!1364265))

(check-sat (not b!1478244) (not b!1478252) (not b!1478245) (not b!1478257) (not b!1478243) (not b!1478249) (not start!126240) (not b!1478248) (not b!1478254) (not b!1478256) (not b!1478241) (not b!1478242))
(check-sat)
