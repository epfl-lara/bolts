; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56092 () Bool)

(assert start!56092)

(declare-fun b!618239 () Bool)

(declare-datatypes ((Unit!20340 0))(
  ( (Unit!20341) )
))
(declare-fun e!354554 () Unit!20340)

(declare-fun Unit!20342 () Unit!20340)

(assert (=> b!618239 (= e!354554 Unit!20342)))

(declare-fun b!618241 () Bool)

(assert (=> b!618241 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37525 0))(
  ( (array!37526 (arr!18005 (Array (_ BitVec 32) (_ BitVec 64))) (size!18369 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37525)

(declare-fun lt!285082 () array!37525)

(declare-fun lt!285081 () Unit!20340)

(declare-datatypes ((List!12099 0))(
  ( (Nil!12096) (Cons!12095 (h!13140 (_ BitVec 64)) (t!18335 List!12099)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37525 (_ BitVec 64) (_ BitVec 32) List!12099) Unit!20340)

(assert (=> b!618241 (= lt!285081 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285082 (select (arr!18005 a!2986) j!136) j!136 Nil!12096))))

(declare-fun arrayNoDuplicates!0 (array!37525 (_ BitVec 32) List!12099) Bool)

(assert (=> b!618241 (arrayNoDuplicates!0 lt!285082 j!136 Nil!12096)))

(declare-fun lt!285086 () Unit!20340)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37525 (_ BitVec 32) (_ BitVec 32)) Unit!20340)

(assert (=> b!618241 (= lt!285086 (lemmaNoDuplicateFromThenFromBigger!0 lt!285082 #b00000000000000000000000000000000 j!136))))

(assert (=> b!618241 (arrayNoDuplicates!0 lt!285082 #b00000000000000000000000000000000 Nil!12096)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!285087 () Unit!20340)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37525 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12099) Unit!20340)

(assert (=> b!618241 (= lt!285087 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12096))))

(declare-fun arrayContainsKey!0 (array!37525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!618241 (arrayContainsKey!0 lt!285082 (select (arr!18005 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285093 () Unit!20340)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37525 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20340)

(assert (=> b!618241 (= lt!285093 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285082 (select (arr!18005 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20343 () Unit!20340)

(assert (=> b!618241 (= e!354554 Unit!20343)))

(declare-fun b!618242 () Bool)

(declare-fun e!354542 () Unit!20340)

(declare-fun Unit!20344 () Unit!20340)

(assert (=> b!618242 (= e!354542 Unit!20344)))

(declare-fun b!618243 () Bool)

(declare-fun e!354546 () Unit!20340)

(declare-fun Unit!20345 () Unit!20340)

(assert (=> b!618243 (= e!354546 Unit!20345)))

(declare-fun b!618244 () Bool)

(declare-fun res!398420 () Bool)

(assert (=> b!618244 (= res!398420 (arrayContainsKey!0 lt!285082 (select (arr!18005 a!2986) j!136) j!136))))

(declare-fun e!354556 () Bool)

(assert (=> b!618244 (=> (not res!398420) (not e!354556))))

(declare-fun e!354548 () Bool)

(assert (=> b!618244 (= e!354548 e!354556)))

(declare-fun b!618245 () Bool)

(assert (=> b!618245 (= e!354556 (arrayContainsKey!0 lt!285082 (select (arr!18005 a!2986) j!136) index!984))))

(declare-fun e!354547 () Bool)

(declare-fun b!618246 () Bool)

(assert (=> b!618246 (= e!354547 (arrayContainsKey!0 lt!285082 (select (arr!18005 a!2986) j!136) index!984))))

(declare-fun b!618247 () Bool)

(declare-fun res!398422 () Bool)

(declare-fun e!354553 () Bool)

(assert (=> b!618247 (=> (not res!398422) (not e!354553))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!618247 (= res!398422 (validKeyInArray!0 k!1786))))

(declare-fun b!618248 () Bool)

(declare-fun e!354544 () Unit!20340)

(declare-fun Unit!20346 () Unit!20340)

(assert (=> b!618248 (= e!354544 Unit!20346)))

(declare-fun b!618249 () Bool)

(declare-fun res!398415 () Bool)

(declare-fun e!354545 () Bool)

(assert (=> b!618249 (=> (not res!398415) (not e!354545))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37525 (_ BitVec 32)) Bool)

(assert (=> b!618249 (= res!398415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!618250 () Bool)

(declare-fun res!398426 () Bool)

(assert (=> b!618250 (=> (not res!398426) (not e!354545))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!618250 (= res!398426 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18005 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!618251 () Bool)

(declare-fun res!398417 () Bool)

(assert (=> b!618251 (=> (not res!398417) (not e!354553))))

(assert (=> b!618251 (= res!398417 (and (= (size!18369 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18369 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18369 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!618252 () Bool)

(declare-fun res!398425 () Bool)

(assert (=> b!618252 (=> (not res!398425) (not e!354553))))

(assert (=> b!618252 (= res!398425 (validKeyInArray!0 (select (arr!18005 a!2986) j!136)))))

(declare-fun b!618253 () Bool)

(declare-fun e!354543 () Bool)

(assert (=> b!618253 (= e!354545 e!354543)))

(declare-fun res!398429 () Bool)

(assert (=> b!618253 (=> (not res!398429) (not e!354543))))

(assert (=> b!618253 (= res!398429 (= (select (store (arr!18005 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!618253 (= lt!285082 (array!37526 (store (arr!18005 a!2986) i!1108 k!1786) (size!18369 a!2986)))))

(declare-fun b!618254 () Bool)

(declare-fun res!398413 () Bool)

(assert (=> b!618254 (= res!398413 (bvsge j!136 index!984))))

(assert (=> b!618254 (=> res!398413 e!354548)))

(declare-fun e!354552 () Bool)

(assert (=> b!618254 (= e!354552 e!354548)))

(declare-fun b!618240 () Bool)

(declare-fun e!354555 () Bool)

(declare-datatypes ((SeekEntryResult!6452 0))(
  ( (MissingZero!6452 (index!28091 (_ BitVec 32))) (Found!6452 (index!28092 (_ BitVec 32))) (Intermediate!6452 (undefined!7264 Bool) (index!28093 (_ BitVec 32)) (x!56901 (_ BitVec 32))) (Undefined!6452) (MissingVacant!6452 (index!28094 (_ BitVec 32))) )
))
(declare-fun lt!285077 () SeekEntryResult!6452)

(declare-fun lt!285090 () SeekEntryResult!6452)

(assert (=> b!618240 (= e!354555 (= lt!285077 lt!285090))))

(declare-fun res!398421 () Bool)

(assert (=> start!56092 (=> (not res!398421) (not e!354553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56092 (= res!398421 (validMask!0 mask!3053))))

(assert (=> start!56092 e!354553))

(assert (=> start!56092 true))

(declare-fun array_inv!13779 (array!37525) Bool)

(assert (=> start!56092 (array_inv!13779 a!2986)))

(declare-fun b!618255 () Bool)

(declare-fun e!354550 () Bool)

(declare-fun e!354551 () Bool)

(assert (=> b!618255 (= e!354550 (not e!354551))))

(declare-fun res!398424 () Bool)

(assert (=> b!618255 (=> res!398424 e!354551)))

(declare-fun lt!285080 () SeekEntryResult!6452)

(assert (=> b!618255 (= res!398424 (not (= lt!285080 (MissingVacant!6452 vacantSpotIndex!68))))))

(declare-fun lt!285088 () Unit!20340)

(assert (=> b!618255 (= lt!285088 e!354546)))

(declare-fun c!70282 () Bool)

(assert (=> b!618255 (= c!70282 (= lt!285080 (Found!6452 index!984)))))

(declare-fun lt!285096 () Unit!20340)

(assert (=> b!618255 (= lt!285096 e!354544)))

(declare-fun c!70280 () Bool)

(assert (=> b!618255 (= c!70280 (= lt!285080 Undefined!6452))))

(declare-fun lt!285079 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37525 (_ BitVec 32)) SeekEntryResult!6452)

(assert (=> b!618255 (= lt!285080 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285079 lt!285082 mask!3053))))

(assert (=> b!618255 e!354555))

(declare-fun res!398414 () Bool)

(assert (=> b!618255 (=> (not res!398414) (not e!354555))))

(declare-fun lt!285083 () (_ BitVec 32))

(assert (=> b!618255 (= res!398414 (= lt!285090 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285083 vacantSpotIndex!68 lt!285079 lt!285082 mask!3053)))))

(assert (=> b!618255 (= lt!285090 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285083 vacantSpotIndex!68 (select (arr!18005 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!618255 (= lt!285079 (select (store (arr!18005 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!285095 () Unit!20340)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37525 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20340)

(assert (=> b!618255 (= lt!285095 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285083 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!618255 (= lt!285083 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!618256 () Bool)

(declare-fun Unit!20347 () Unit!20340)

(assert (=> b!618256 (= e!354546 Unit!20347)))

(declare-fun res!398416 () Bool)

(assert (=> b!618256 (= res!398416 (= (select (store (arr!18005 a!2986) i!1108 k!1786) index!984) (select (arr!18005 a!2986) j!136)))))

(assert (=> b!618256 (=> (not res!398416) (not e!354552))))

(assert (=> b!618256 e!354552))

(declare-fun c!70283 () Bool)

(assert (=> b!618256 (= c!70283 (bvslt j!136 index!984))))

(declare-fun lt!285089 () Unit!20340)

(assert (=> b!618256 (= lt!285089 e!354554)))

(declare-fun c!70281 () Bool)

(assert (=> b!618256 (= c!70281 (bvslt index!984 j!136))))

(declare-fun lt!285092 () Unit!20340)

(assert (=> b!618256 (= lt!285092 e!354542)))

(assert (=> b!618256 false))

(declare-fun b!618257 () Bool)

(assert (=> b!618257 (= e!354543 e!354550)))

(declare-fun res!398418 () Bool)

(assert (=> b!618257 (=> (not res!398418) (not e!354550))))

(assert (=> b!618257 (= res!398418 (and (= lt!285077 (Found!6452 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18005 a!2986) index!984) (select (arr!18005 a!2986) j!136))) (not (= (select (arr!18005 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!618257 (= lt!285077 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18005 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!618258 () Bool)

(declare-fun Unit!20348 () Unit!20340)

(assert (=> b!618258 (= e!354544 Unit!20348)))

(assert (=> b!618258 false))

(declare-fun b!618259 () Bool)

(assert (=> b!618259 false))

(declare-fun lt!285078 () Unit!20340)

(assert (=> b!618259 (= lt!285078 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285082 (select (arr!18005 a!2986) j!136) index!984 Nil!12096))))

(assert (=> b!618259 (arrayNoDuplicates!0 lt!285082 index!984 Nil!12096)))

(declare-fun lt!285094 () Unit!20340)

(assert (=> b!618259 (= lt!285094 (lemmaNoDuplicateFromThenFromBigger!0 lt!285082 #b00000000000000000000000000000000 index!984))))

(assert (=> b!618259 (arrayNoDuplicates!0 lt!285082 #b00000000000000000000000000000000 Nil!12096)))

(declare-fun lt!285085 () Unit!20340)

(assert (=> b!618259 (= lt!285085 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12096))))

(assert (=> b!618259 (arrayContainsKey!0 lt!285082 (select (arr!18005 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285084 () Unit!20340)

(assert (=> b!618259 (= lt!285084 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285082 (select (arr!18005 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!618259 e!354547))

(declare-fun res!398419 () Bool)

(assert (=> b!618259 (=> (not res!398419) (not e!354547))))

(assert (=> b!618259 (= res!398419 (arrayContainsKey!0 lt!285082 (select (arr!18005 a!2986) j!136) j!136))))

(declare-fun Unit!20349 () Unit!20340)

(assert (=> b!618259 (= e!354542 Unit!20349)))

(declare-fun b!618260 () Bool)

(declare-fun res!398423 () Bool)

(assert (=> b!618260 (=> (not res!398423) (not e!354553))))

(assert (=> b!618260 (= res!398423 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!618261 () Bool)

(declare-fun res!398428 () Bool)

(assert (=> b!618261 (=> (not res!398428) (not e!354545))))

(assert (=> b!618261 (= res!398428 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12096))))

(declare-fun b!618262 () Bool)

(assert (=> b!618262 (= e!354551 true)))

(assert (=> b!618262 (= (select (store (arr!18005 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!618263 () Bool)

(assert (=> b!618263 (= e!354553 e!354545)))

(declare-fun res!398427 () Bool)

(assert (=> b!618263 (=> (not res!398427) (not e!354545))))

(declare-fun lt!285091 () SeekEntryResult!6452)

(assert (=> b!618263 (= res!398427 (or (= lt!285091 (MissingZero!6452 i!1108)) (= lt!285091 (MissingVacant!6452 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37525 (_ BitVec 32)) SeekEntryResult!6452)

(assert (=> b!618263 (= lt!285091 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56092 res!398421) b!618251))

(assert (= (and b!618251 res!398417) b!618252))

(assert (= (and b!618252 res!398425) b!618247))

(assert (= (and b!618247 res!398422) b!618260))

(assert (= (and b!618260 res!398423) b!618263))

(assert (= (and b!618263 res!398427) b!618249))

(assert (= (and b!618249 res!398415) b!618261))

(assert (= (and b!618261 res!398428) b!618250))

(assert (= (and b!618250 res!398426) b!618253))

(assert (= (and b!618253 res!398429) b!618257))

(assert (= (and b!618257 res!398418) b!618255))

(assert (= (and b!618255 res!398414) b!618240))

(assert (= (and b!618255 c!70280) b!618258))

(assert (= (and b!618255 (not c!70280)) b!618248))

(assert (= (and b!618255 c!70282) b!618256))

(assert (= (and b!618255 (not c!70282)) b!618243))

(assert (= (and b!618256 res!398416) b!618254))

(assert (= (and b!618254 (not res!398413)) b!618244))

(assert (= (and b!618244 res!398420) b!618245))

(assert (= (and b!618256 c!70283) b!618241))

(assert (= (and b!618256 (not c!70283)) b!618239))

(assert (= (and b!618256 c!70281) b!618259))

(assert (= (and b!618256 (not c!70281)) b!618242))

(assert (= (and b!618259 res!398419) b!618246))

(assert (= (and b!618255 (not res!398424)) b!618262))

(declare-fun m!594329 () Bool)

(assert (=> b!618263 m!594329))

(declare-fun m!594331 () Bool)

(assert (=> b!618249 m!594331))

(declare-fun m!594333 () Bool)

(assert (=> b!618256 m!594333))

(declare-fun m!594335 () Bool)

(assert (=> b!618256 m!594335))

(declare-fun m!594337 () Bool)

(assert (=> b!618256 m!594337))

(assert (=> b!618241 m!594337))

(declare-fun m!594339 () Bool)

(assert (=> b!618241 m!594339))

(assert (=> b!618241 m!594337))

(declare-fun m!594341 () Bool)

(assert (=> b!618241 m!594341))

(declare-fun m!594343 () Bool)

(assert (=> b!618241 m!594343))

(assert (=> b!618241 m!594337))

(declare-fun m!594345 () Bool)

(assert (=> b!618241 m!594345))

(declare-fun m!594347 () Bool)

(assert (=> b!618241 m!594347))

(assert (=> b!618241 m!594337))

(declare-fun m!594349 () Bool)

(assert (=> b!618241 m!594349))

(declare-fun m!594351 () Bool)

(assert (=> b!618241 m!594351))

(assert (=> b!618259 m!594337))

(assert (=> b!618259 m!594339))

(declare-fun m!594353 () Bool)

(assert (=> b!618259 m!594353))

(assert (=> b!618259 m!594337))

(declare-fun m!594355 () Bool)

(assert (=> b!618259 m!594355))

(assert (=> b!618259 m!594337))

(declare-fun m!594357 () Bool)

(assert (=> b!618259 m!594357))

(assert (=> b!618259 m!594337))

(declare-fun m!594359 () Bool)

(assert (=> b!618259 m!594359))

(assert (=> b!618259 m!594337))

(declare-fun m!594361 () Bool)

(assert (=> b!618259 m!594361))

(declare-fun m!594363 () Bool)

(assert (=> b!618259 m!594363))

(assert (=> b!618259 m!594351))

(assert (=> b!618245 m!594337))

(assert (=> b!618245 m!594337))

(declare-fun m!594365 () Bool)

(assert (=> b!618245 m!594365))

(assert (=> b!618253 m!594333))

(declare-fun m!594367 () Bool)

(assert (=> b!618253 m!594367))

(declare-fun m!594369 () Bool)

(assert (=> b!618250 m!594369))

(declare-fun m!594371 () Bool)

(assert (=> b!618257 m!594371))

(assert (=> b!618257 m!594337))

(assert (=> b!618257 m!594337))

(declare-fun m!594373 () Bool)

(assert (=> b!618257 m!594373))

(declare-fun m!594375 () Bool)

(assert (=> b!618260 m!594375))

(declare-fun m!594377 () Bool)

(assert (=> b!618261 m!594377))

(assert (=> b!618262 m!594333))

(assert (=> b!618262 m!594335))

(assert (=> b!618244 m!594337))

(assert (=> b!618244 m!594337))

(assert (=> b!618244 m!594361))

(declare-fun m!594379 () Bool)

(assert (=> start!56092 m!594379))

(declare-fun m!594381 () Bool)

(assert (=> start!56092 m!594381))

(assert (=> b!618252 m!594337))

(assert (=> b!618252 m!594337))

(declare-fun m!594383 () Bool)

(assert (=> b!618252 m!594383))

(declare-fun m!594385 () Bool)

(assert (=> b!618247 m!594385))

(assert (=> b!618246 m!594337))

(assert (=> b!618246 m!594337))

(assert (=> b!618246 m!594365))

(declare-fun m!594387 () Bool)

(assert (=> b!618255 m!594387))

(declare-fun m!594389 () Bool)

(assert (=> b!618255 m!594389))

(declare-fun m!594391 () Bool)

(assert (=> b!618255 m!594391))

(assert (=> b!618255 m!594337))

(declare-fun m!594393 () Bool)

(assert (=> b!618255 m!594393))

(assert (=> b!618255 m!594337))

(declare-fun m!594395 () Bool)

(assert (=> b!618255 m!594395))

(assert (=> b!618255 m!594333))

(declare-fun m!594397 () Bool)

(assert (=> b!618255 m!594397))

(push 1)

