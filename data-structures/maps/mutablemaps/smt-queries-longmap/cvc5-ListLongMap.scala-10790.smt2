; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126280 () Bool)

(assert start!126280)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!829825 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99303 0))(
  ( (array!99304 (arr!47926 (Array (_ BitVec 32) (_ BitVec 64))) (size!48477 (_ BitVec 32))) )
))
(declare-fun lt!645958 () array!99303)

(declare-fun b!1479333 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!645957 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12189 0))(
  ( (MissingZero!12189 (index!51147 (_ BitVec 32))) (Found!12189 (index!51148 (_ BitVec 32))) (Intermediate!12189 (undefined!13001 Bool) (index!51149 (_ BitVec 32)) (x!132735 (_ BitVec 32))) (Undefined!12189) (MissingVacant!12189 (index!51150 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99303 (_ BitVec 32)) SeekEntryResult!12189)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99303 (_ BitVec 32)) SeekEntryResult!12189)

(assert (=> b!1479333 (= e!829825 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645957 lt!645958 mask!2687) (seekEntryOrOpen!0 lt!645957 lt!645958 mask!2687)))))

(declare-fun b!1479335 () Bool)

(declare-fun e!829829 () Bool)

(assert (=> b!1479335 (= e!829829 true)))

(declare-fun lt!645961 () SeekEntryResult!12189)

(assert (=> b!1479335 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645957 lt!645958 mask!2687) lt!645961)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((Unit!49666 0))(
  ( (Unit!49667) )
))
(declare-fun lt!645954 () Unit!49666)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99303)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99303 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49666)

(assert (=> b!1479335 (= lt!645954 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1479336 () Bool)

(declare-fun e!829820 () Bool)

(declare-fun e!829822 () Bool)

(assert (=> b!1479336 (= e!829820 e!829822)))

(declare-fun res!1005351 () Bool)

(assert (=> b!1479336 (=> res!1005351 e!829822)))

(assert (=> b!1479336 (= res!1005351 (or (and (= (select (arr!47926 a!2862) index!646) (select (store (arr!47926 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47926 a!2862) index!646) (select (arr!47926 a!2862) j!93))) (not (= (select (arr!47926 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1479337 () Bool)

(declare-fun res!1005366 () Bool)

(declare-fun e!829826 () Bool)

(assert (=> b!1479337 (=> (not res!1005366) (not e!829826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99303 (_ BitVec 32)) Bool)

(assert (=> b!1479337 (= res!1005366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1479338 () Bool)

(declare-fun res!1005359 () Bool)

(assert (=> b!1479338 (=> (not res!1005359) (not e!829826))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1479338 (= res!1005359 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48477 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48477 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48477 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1479339 () Bool)

(declare-fun e!829828 () Bool)

(assert (=> b!1479339 (= e!829822 e!829828)))

(declare-fun res!1005352 () Bool)

(assert (=> b!1479339 (=> (not res!1005352) (not e!829828))))

(declare-fun lt!645960 () SeekEntryResult!12189)

(assert (=> b!1479339 (= res!1005352 (= lt!645960 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47926 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1479340 () Bool)

(assert (=> b!1479340 (= e!829828 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479341 () Bool)

(declare-fun res!1005356 () Bool)

(assert (=> b!1479341 (=> (not res!1005356) (not e!829826))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479341 (= res!1005356 (validKeyInArray!0 (select (arr!47926 a!2862) j!93)))))

(declare-fun b!1479342 () Bool)

(declare-fun res!1005364 () Bool)

(assert (=> b!1479342 (=> (not res!1005364) (not e!829826))))

(declare-datatypes ((List!34607 0))(
  ( (Nil!34604) (Cons!34603 (h!35971 (_ BitVec 64)) (t!49308 List!34607)) )
))
(declare-fun arrayNoDuplicates!0 (array!99303 (_ BitVec 32) List!34607) Bool)

(assert (=> b!1479342 (= res!1005364 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34604))))

(declare-fun b!1479343 () Bool)

(declare-fun res!1005349 () Bool)

(declare-fun e!829827 () Bool)

(assert (=> b!1479343 (=> (not res!1005349) (not e!829827))))

(assert (=> b!1479343 (= res!1005349 e!829825)))

(declare-fun c!136514 () Bool)

(assert (=> b!1479343 (= c!136514 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479344 () Bool)

(declare-fun res!1005358 () Bool)

(assert (=> b!1479344 (=> (not res!1005358) (not e!829826))))

(assert (=> b!1479344 (= res!1005358 (and (= (size!48477 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48477 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48477 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1479334 () Bool)

(declare-fun res!1005360 () Bool)

(declare-fun e!829823 () Bool)

(assert (=> b!1479334 (=> (not res!1005360) (not e!829823))))

(declare-fun lt!645955 () SeekEntryResult!12189)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99303 (_ BitVec 32)) SeekEntryResult!12189)

(assert (=> b!1479334 (= res!1005360 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47926 a!2862) j!93) a!2862 mask!2687) lt!645955))))

(declare-fun res!1005350 () Bool)

(assert (=> start!126280 (=> (not res!1005350) (not e!829826))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126280 (= res!1005350 (validMask!0 mask!2687))))

(assert (=> start!126280 e!829826))

(assert (=> start!126280 true))

(declare-fun array_inv!36871 (array!99303) Bool)

(assert (=> start!126280 (array_inv!36871 a!2862)))

(declare-fun b!1479345 () Bool)

(declare-fun res!1005353 () Bool)

(assert (=> b!1479345 (=> res!1005353 e!829829)))

(assert (=> b!1479345 (= res!1005353 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47926 a!2862) j!93) a!2862 mask!2687) lt!645961)))))

(declare-fun b!1479346 () Bool)

(assert (=> b!1479346 (= e!829827 (not e!829829))))

(declare-fun res!1005362 () Bool)

(assert (=> b!1479346 (=> res!1005362 e!829829)))

(assert (=> b!1479346 (= res!1005362 (or (and (= (select (arr!47926 a!2862) index!646) (select (store (arr!47926 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47926 a!2862) index!646) (select (arr!47926 a!2862) j!93))) (not (= (select (arr!47926 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47926 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1479346 e!829820))

(declare-fun res!1005357 () Bool)

(assert (=> b!1479346 (=> (not res!1005357) (not e!829820))))

(assert (=> b!1479346 (= res!1005357 (and (= lt!645960 lt!645961) (or (= (select (arr!47926 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47926 a!2862) intermediateBeforeIndex!19) (select (arr!47926 a!2862) j!93)))))))

(assert (=> b!1479346 (= lt!645961 (Found!12189 j!93))))

(assert (=> b!1479346 (= lt!645960 (seekEntryOrOpen!0 (select (arr!47926 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1479346 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!645956 () Unit!49666)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99303 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49666)

(assert (=> b!1479346 (= lt!645956 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479347 () Bool)

(assert (=> b!1479347 (= e!829823 e!829827)))

(declare-fun res!1005355 () Bool)

(assert (=> b!1479347 (=> (not res!1005355) (not e!829827))))

(declare-fun lt!645959 () SeekEntryResult!12189)

(assert (=> b!1479347 (= res!1005355 (= lt!645959 (Intermediate!12189 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479347 (= lt!645959 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645957 mask!2687) lt!645957 lt!645958 mask!2687))))

(assert (=> b!1479347 (= lt!645957 (select (store (arr!47926 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479348 () Bool)

(declare-fun e!829821 () Bool)

(assert (=> b!1479348 (= e!829826 e!829821)))

(declare-fun res!1005354 () Bool)

(assert (=> b!1479348 (=> (not res!1005354) (not e!829821))))

(assert (=> b!1479348 (= res!1005354 (= (select (store (arr!47926 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479348 (= lt!645958 (array!99304 (store (arr!47926 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48477 a!2862)))))

(declare-fun b!1479349 () Bool)

(declare-fun res!1005361 () Bool)

(assert (=> b!1479349 (=> (not res!1005361) (not e!829827))))

(assert (=> b!1479349 (= res!1005361 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1479350 () Bool)

(declare-fun res!1005363 () Bool)

(assert (=> b!1479350 (=> (not res!1005363) (not e!829826))))

(assert (=> b!1479350 (= res!1005363 (validKeyInArray!0 (select (arr!47926 a!2862) i!1006)))))

(declare-fun b!1479351 () Bool)

(assert (=> b!1479351 (= e!829825 (= lt!645959 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645957 lt!645958 mask!2687)))))

(declare-fun b!1479352 () Bool)

(assert (=> b!1479352 (= e!829821 e!829823)))

(declare-fun res!1005365 () Bool)

(assert (=> b!1479352 (=> (not res!1005365) (not e!829823))))

(assert (=> b!1479352 (= res!1005365 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47926 a!2862) j!93) mask!2687) (select (arr!47926 a!2862) j!93) a!2862 mask!2687) lt!645955))))

(assert (=> b!1479352 (= lt!645955 (Intermediate!12189 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!126280 res!1005350) b!1479344))

(assert (= (and b!1479344 res!1005358) b!1479350))

(assert (= (and b!1479350 res!1005363) b!1479341))

(assert (= (and b!1479341 res!1005356) b!1479337))

(assert (= (and b!1479337 res!1005366) b!1479342))

(assert (= (and b!1479342 res!1005364) b!1479338))

(assert (= (and b!1479338 res!1005359) b!1479348))

(assert (= (and b!1479348 res!1005354) b!1479352))

(assert (= (and b!1479352 res!1005365) b!1479334))

(assert (= (and b!1479334 res!1005360) b!1479347))

(assert (= (and b!1479347 res!1005355) b!1479343))

(assert (= (and b!1479343 c!136514) b!1479351))

(assert (= (and b!1479343 (not c!136514)) b!1479333))

(assert (= (and b!1479343 res!1005349) b!1479349))

(assert (= (and b!1479349 res!1005361) b!1479346))

(assert (= (and b!1479346 res!1005357) b!1479336))

(assert (= (and b!1479336 (not res!1005351)) b!1479339))

(assert (= (and b!1479339 res!1005352) b!1479340))

(assert (= (and b!1479346 (not res!1005362)) b!1479345))

(assert (= (and b!1479345 (not res!1005353)) b!1479335))

(declare-fun m!1365261 () Bool)

(assert (=> b!1479333 m!1365261))

(declare-fun m!1365263 () Bool)

(assert (=> b!1479333 m!1365263))

(declare-fun m!1365265 () Bool)

(assert (=> b!1479352 m!1365265))

(assert (=> b!1479352 m!1365265))

(declare-fun m!1365267 () Bool)

(assert (=> b!1479352 m!1365267))

(assert (=> b!1479352 m!1365267))

(assert (=> b!1479352 m!1365265))

(declare-fun m!1365269 () Bool)

(assert (=> b!1479352 m!1365269))

(declare-fun m!1365271 () Bool)

(assert (=> b!1479351 m!1365271))

(assert (=> b!1479345 m!1365265))

(assert (=> b!1479345 m!1365265))

(declare-fun m!1365273 () Bool)

(assert (=> b!1479345 m!1365273))

(declare-fun m!1365275 () Bool)

(assert (=> start!126280 m!1365275))

(declare-fun m!1365277 () Bool)

(assert (=> start!126280 m!1365277))

(declare-fun m!1365279 () Bool)

(assert (=> b!1479346 m!1365279))

(declare-fun m!1365281 () Bool)

(assert (=> b!1479346 m!1365281))

(declare-fun m!1365283 () Bool)

(assert (=> b!1479346 m!1365283))

(declare-fun m!1365285 () Bool)

(assert (=> b!1479346 m!1365285))

(declare-fun m!1365287 () Bool)

(assert (=> b!1479346 m!1365287))

(assert (=> b!1479346 m!1365265))

(declare-fun m!1365289 () Bool)

(assert (=> b!1479346 m!1365289))

(declare-fun m!1365291 () Bool)

(assert (=> b!1479346 m!1365291))

(assert (=> b!1479346 m!1365265))

(assert (=> b!1479334 m!1365265))

(assert (=> b!1479334 m!1365265))

(declare-fun m!1365293 () Bool)

(assert (=> b!1479334 m!1365293))

(declare-fun m!1365295 () Bool)

(assert (=> b!1479342 m!1365295))

(assert (=> b!1479341 m!1365265))

(assert (=> b!1479341 m!1365265))

(declare-fun m!1365297 () Bool)

(assert (=> b!1479341 m!1365297))

(declare-fun m!1365299 () Bool)

(assert (=> b!1479350 m!1365299))

(assert (=> b!1479350 m!1365299))

(declare-fun m!1365301 () Bool)

(assert (=> b!1479350 m!1365301))

(assert (=> b!1479348 m!1365281))

(declare-fun m!1365303 () Bool)

(assert (=> b!1479348 m!1365303))

(declare-fun m!1365305 () Bool)

(assert (=> b!1479337 m!1365305))

(declare-fun m!1365307 () Bool)

(assert (=> b!1479347 m!1365307))

(assert (=> b!1479347 m!1365307))

(declare-fun m!1365309 () Bool)

(assert (=> b!1479347 m!1365309))

(assert (=> b!1479347 m!1365281))

(declare-fun m!1365311 () Bool)

(assert (=> b!1479347 m!1365311))

(assert (=> b!1479339 m!1365265))

(assert (=> b!1479339 m!1365265))

(declare-fun m!1365313 () Bool)

(assert (=> b!1479339 m!1365313))

(assert (=> b!1479336 m!1365287))

(assert (=> b!1479336 m!1365281))

(assert (=> b!1479336 m!1365285))

(assert (=> b!1479336 m!1365265))

(assert (=> b!1479335 m!1365261))

(declare-fun m!1365315 () Bool)

(assert (=> b!1479335 m!1365315))

(push 1)

