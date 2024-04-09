; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127414 () Bool)

(assert start!127414)

(declare-fun b!1497232 () Bool)

(declare-fun res!1018511 () Bool)

(declare-fun e!838508 () Bool)

(assert (=> b!1497232 (=> (not res!1018511) (not e!838508))))

(declare-datatypes ((array!99789 0))(
  ( (array!99790 (arr!48154 (Array (_ BitVec 32) (_ BitVec 64))) (size!48705 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99789)

(declare-datatypes ((List!34835 0))(
  ( (Nil!34832) (Cons!34831 (h!36229 (_ BitVec 64)) (t!49536 List!34835)) )
))
(declare-fun arrayNoDuplicates!0 (array!99789 (_ BitVec 32) List!34835) Bool)

(assert (=> b!1497232 (= res!1018511 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34832))))

(declare-fun b!1497233 () Bool)

(declare-fun e!838504 () Bool)

(assert (=> b!1497233 (= e!838504 true)))

(declare-fun lt!652347 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12417 0))(
  ( (MissingZero!12417 (index!52059 (_ BitVec 32))) (Found!12417 (index!52060 (_ BitVec 32))) (Intermediate!12417 (undefined!13229 Bool) (index!52061 (_ BitVec 32)) (x!133688 (_ BitVec 32))) (Undefined!12417) (MissingVacant!12417 (index!52062 (_ BitVec 32))) )
))
(declare-fun lt!652341 () SeekEntryResult!12417)

(declare-fun lt!652348 () array!99789)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99789 (_ BitVec 32)) SeekEntryResult!12417)

(assert (=> b!1497233 (= lt!652341 (seekEntryOrOpen!0 lt!652347 lt!652348 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((Unit!50122 0))(
  ( (Unit!50123) )
))
(declare-fun lt!652346 () Unit!50122)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun lt!652343 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50122)

(assert (=> b!1497233 (= lt!652346 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652343 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1497234 () Bool)

(declare-fun e!838506 () Bool)

(declare-fun e!838503 () Bool)

(assert (=> b!1497234 (= e!838506 (not e!838503))))

(declare-fun res!1018514 () Bool)

(assert (=> b!1497234 (=> res!1018514 e!838503)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1497234 (= res!1018514 (or (and (= (select (arr!48154 a!2862) index!646) (select (store (arr!48154 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48154 a!2862) index!646) (select (arr!48154 a!2862) j!93))) (= (select (arr!48154 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1497234 (and (= lt!652341 (Found!12417 j!93)) (or (= (select (arr!48154 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48154 a!2862) intermediateBeforeIndex!19) (select (arr!48154 a!2862) j!93))))))

(assert (=> b!1497234 (= lt!652341 (seekEntryOrOpen!0 (select (arr!48154 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99789 (_ BitVec 32)) Bool)

(assert (=> b!1497234 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!652344 () Unit!50122)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50122)

(assert (=> b!1497234 (= lt!652344 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1497235 () Bool)

(declare-fun res!1018509 () Bool)

(assert (=> b!1497235 (=> (not res!1018509) (not e!838508))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497235 (= res!1018509 (validKeyInArray!0 (select (arr!48154 a!2862) j!93)))))

(declare-fun b!1497236 () Bool)

(declare-fun e!838505 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99789 (_ BitVec 32)) SeekEntryResult!12417)

(assert (=> b!1497236 (= e!838505 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652343 intermediateAfterIndex!19 lt!652347 lt!652348 mask!2687) (seekEntryOrOpen!0 lt!652347 lt!652348 mask!2687))))))

(declare-fun res!1018515 () Bool)

(assert (=> start!127414 (=> (not res!1018515) (not e!838508))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127414 (= res!1018515 (validMask!0 mask!2687))))

(assert (=> start!127414 e!838508))

(assert (=> start!127414 true))

(declare-fun array_inv!37099 (array!99789) Bool)

(assert (=> start!127414 (array_inv!37099 a!2862)))

(declare-fun b!1497237 () Bool)

(declare-fun lt!652345 () SeekEntryResult!12417)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99789 (_ BitVec 32)) SeekEntryResult!12417)

(assert (=> b!1497237 (= e!838505 (not (= lt!652345 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652343 lt!652347 lt!652348 mask!2687))))))

(declare-fun b!1497238 () Bool)

(declare-fun res!1018503 () Bool)

(assert (=> b!1497238 (=> (not res!1018503) (not e!838508))))

(assert (=> b!1497238 (= res!1018503 (validKeyInArray!0 (select (arr!48154 a!2862) i!1006)))))

(declare-fun b!1497239 () Bool)

(declare-fun res!1018513 () Bool)

(assert (=> b!1497239 (=> (not res!1018513) (not e!838506))))

(assert (=> b!1497239 (= res!1018513 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1497240 () Bool)

(assert (=> b!1497240 (= e!838503 e!838504)))

(declare-fun res!1018505 () Bool)

(assert (=> b!1497240 (=> res!1018505 e!838504)))

(assert (=> b!1497240 (= res!1018505 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652343 #b00000000000000000000000000000000) (bvsge lt!652343 (size!48705 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497240 (= lt!652343 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1497241 () Bool)

(declare-fun res!1018507 () Bool)

(assert (=> b!1497241 (=> (not res!1018507) (not e!838508))))

(assert (=> b!1497241 (= res!1018507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1497242 () Bool)

(declare-fun res!1018512 () Bool)

(assert (=> b!1497242 (=> (not res!1018512) (not e!838506))))

(declare-fun e!838511 () Bool)

(assert (=> b!1497242 (= res!1018512 e!838511)))

(declare-fun c!138904 () Bool)

(assert (=> b!1497242 (= c!138904 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1497243 () Bool)

(declare-fun res!1018510 () Bool)

(declare-fun e!838510 () Bool)

(assert (=> b!1497243 (=> (not res!1018510) (not e!838510))))

(declare-fun lt!652342 () SeekEntryResult!12417)

(assert (=> b!1497243 (= res!1018510 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48154 a!2862) j!93) a!2862 mask!2687) lt!652342))))

(declare-fun b!1497244 () Bool)

(declare-fun res!1018504 () Bool)

(assert (=> b!1497244 (=> (not res!1018504) (not e!838508))))

(assert (=> b!1497244 (= res!1018504 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48705 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48705 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48705 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1497245 () Bool)

(assert (=> b!1497245 (= e!838510 e!838506)))

(declare-fun res!1018508 () Bool)

(assert (=> b!1497245 (=> (not res!1018508) (not e!838506))))

(assert (=> b!1497245 (= res!1018508 (= lt!652345 (Intermediate!12417 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497245 (= lt!652345 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652347 mask!2687) lt!652347 lt!652348 mask!2687))))

(assert (=> b!1497245 (= lt!652347 (select (store (arr!48154 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1497246 () Bool)

(declare-fun res!1018502 () Bool)

(assert (=> b!1497246 (=> res!1018502 e!838504)))

(assert (=> b!1497246 (= res!1018502 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652343 (select (arr!48154 a!2862) j!93) a!2862 mask!2687) lt!652342)))))

(declare-fun b!1497247 () Bool)

(declare-fun e!838507 () Bool)

(assert (=> b!1497247 (= e!838507 e!838510)))

(declare-fun res!1018501 () Bool)

(assert (=> b!1497247 (=> (not res!1018501) (not e!838510))))

(assert (=> b!1497247 (= res!1018501 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48154 a!2862) j!93) mask!2687) (select (arr!48154 a!2862) j!93) a!2862 mask!2687) lt!652342))))

(assert (=> b!1497247 (= lt!652342 (Intermediate!12417 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1497248 () Bool)

(declare-fun res!1018499 () Bool)

(assert (=> b!1497248 (=> res!1018499 e!838504)))

(assert (=> b!1497248 (= res!1018499 e!838505)))

(declare-fun c!138905 () Bool)

(assert (=> b!1497248 (= c!138905 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1497249 () Bool)

(assert (=> b!1497249 (= e!838508 e!838507)))

(declare-fun res!1018506 () Bool)

(assert (=> b!1497249 (=> (not res!1018506) (not e!838507))))

(assert (=> b!1497249 (= res!1018506 (= (select (store (arr!48154 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1497249 (= lt!652348 (array!99790 (store (arr!48154 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48705 a!2862)))))

(declare-fun b!1497250 () Bool)

(declare-fun res!1018498 () Bool)

(assert (=> b!1497250 (=> (not res!1018498) (not e!838508))))

(assert (=> b!1497250 (= res!1018498 (and (= (size!48705 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48705 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48705 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1497251 () Bool)

(declare-fun res!1018500 () Bool)

(assert (=> b!1497251 (=> res!1018500 e!838504)))

(assert (=> b!1497251 (= res!1018500 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1497252 () Bool)

(assert (=> b!1497252 (= e!838511 (= lt!652345 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652347 lt!652348 mask!2687)))))

(declare-fun b!1497253 () Bool)

(assert (=> b!1497253 (= e!838511 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652347 lt!652348 mask!2687) (seekEntryOrOpen!0 lt!652347 lt!652348 mask!2687)))))

(assert (= (and start!127414 res!1018515) b!1497250))

(assert (= (and b!1497250 res!1018498) b!1497238))

(assert (= (and b!1497238 res!1018503) b!1497235))

(assert (= (and b!1497235 res!1018509) b!1497241))

(assert (= (and b!1497241 res!1018507) b!1497232))

(assert (= (and b!1497232 res!1018511) b!1497244))

(assert (= (and b!1497244 res!1018504) b!1497249))

(assert (= (and b!1497249 res!1018506) b!1497247))

(assert (= (and b!1497247 res!1018501) b!1497243))

(assert (= (and b!1497243 res!1018510) b!1497245))

(assert (= (and b!1497245 res!1018508) b!1497242))

(assert (= (and b!1497242 c!138904) b!1497252))

(assert (= (and b!1497242 (not c!138904)) b!1497253))

(assert (= (and b!1497242 res!1018512) b!1497239))

(assert (= (and b!1497239 res!1018513) b!1497234))

(assert (= (and b!1497234 (not res!1018514)) b!1497240))

(assert (= (and b!1497240 (not res!1018505)) b!1497246))

(assert (= (and b!1497246 (not res!1018502)) b!1497248))

(assert (= (and b!1497248 c!138905) b!1497237))

(assert (= (and b!1497248 (not c!138905)) b!1497236))

(assert (= (and b!1497248 (not res!1018499)) b!1497251))

(assert (= (and b!1497251 (not res!1018500)) b!1497233))

(declare-fun m!1380381 () Bool)

(assert (=> b!1497240 m!1380381))

(declare-fun m!1380383 () Bool)

(assert (=> b!1497238 m!1380383))

(assert (=> b!1497238 m!1380383))

(declare-fun m!1380385 () Bool)

(assert (=> b!1497238 m!1380385))

(declare-fun m!1380387 () Bool)

(assert (=> b!1497234 m!1380387))

(declare-fun m!1380389 () Bool)

(assert (=> b!1497234 m!1380389))

(declare-fun m!1380391 () Bool)

(assert (=> b!1497234 m!1380391))

(declare-fun m!1380393 () Bool)

(assert (=> b!1497234 m!1380393))

(declare-fun m!1380395 () Bool)

(assert (=> b!1497234 m!1380395))

(declare-fun m!1380397 () Bool)

(assert (=> b!1497234 m!1380397))

(declare-fun m!1380399 () Bool)

(assert (=> b!1497234 m!1380399))

(declare-fun m!1380401 () Bool)

(assert (=> b!1497234 m!1380401))

(assert (=> b!1497234 m!1380397))

(declare-fun m!1380403 () Bool)

(assert (=> start!127414 m!1380403))

(declare-fun m!1380405 () Bool)

(assert (=> start!127414 m!1380405))

(declare-fun m!1380407 () Bool)

(assert (=> b!1497252 m!1380407))

(declare-fun m!1380409 () Bool)

(assert (=> b!1497241 m!1380409))

(declare-fun m!1380411 () Bool)

(assert (=> b!1497237 m!1380411))

(declare-fun m!1380413 () Bool)

(assert (=> b!1497245 m!1380413))

(assert (=> b!1497245 m!1380413))

(declare-fun m!1380415 () Bool)

(assert (=> b!1497245 m!1380415))

(assert (=> b!1497245 m!1380389))

(declare-fun m!1380417 () Bool)

(assert (=> b!1497245 m!1380417))

(assert (=> b!1497235 m!1380397))

(assert (=> b!1497235 m!1380397))

(declare-fun m!1380419 () Bool)

(assert (=> b!1497235 m!1380419))

(assert (=> b!1497243 m!1380397))

(assert (=> b!1497243 m!1380397))

(declare-fun m!1380421 () Bool)

(assert (=> b!1497243 m!1380421))

(declare-fun m!1380423 () Bool)

(assert (=> b!1497233 m!1380423))

(declare-fun m!1380425 () Bool)

(assert (=> b!1497233 m!1380425))

(declare-fun m!1380427 () Bool)

(assert (=> b!1497232 m!1380427))

(declare-fun m!1380429 () Bool)

(assert (=> b!1497253 m!1380429))

(assert (=> b!1497253 m!1380423))

(assert (=> b!1497247 m!1380397))

(assert (=> b!1497247 m!1380397))

(declare-fun m!1380431 () Bool)

(assert (=> b!1497247 m!1380431))

(assert (=> b!1497247 m!1380431))

(assert (=> b!1497247 m!1380397))

(declare-fun m!1380433 () Bool)

(assert (=> b!1497247 m!1380433))

(assert (=> b!1497249 m!1380389))

(declare-fun m!1380435 () Bool)

(assert (=> b!1497249 m!1380435))

(assert (=> b!1497246 m!1380397))

(assert (=> b!1497246 m!1380397))

(declare-fun m!1380437 () Bool)

(assert (=> b!1497246 m!1380437))

(declare-fun m!1380439 () Bool)

(assert (=> b!1497236 m!1380439))

(assert (=> b!1497236 m!1380423))

(push 1)

