; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55164 () Bool)

(assert start!55164)

(declare-fun b!604348 () Bool)

(declare-fun e!345827 () Bool)

(declare-fun e!345821 () Bool)

(assert (=> b!604348 (= e!345827 e!345821)))

(declare-fun res!388439 () Bool)

(assert (=> b!604348 (=> res!388439 e!345821)))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!604348 (= res!388439 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!19228 0))(
  ( (Unit!19229) )
))
(declare-fun lt!275707 () Unit!19228)

(declare-fun e!345824 () Unit!19228)

(assert (=> b!604348 (= lt!275707 e!345824)))

(declare-fun c!68330 () Bool)

(assert (=> b!604348 (= c!68330 (bvslt j!136 index!984))))

(declare-fun b!604349 () Bool)

(declare-fun e!345818 () Bool)

(declare-fun e!345820 () Bool)

(assert (=> b!604349 (= e!345818 e!345820)))

(declare-fun res!388440 () Bool)

(assert (=> b!604349 (=> (not res!388440) (not e!345820))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6300 0))(
  ( (MissingZero!6300 (index!27462 (_ BitVec 32))) (Found!6300 (index!27463 (_ BitVec 32))) (Intermediate!6300 (undefined!7112 Bool) (index!27464 (_ BitVec 32)) (x!56286 (_ BitVec 32))) (Undefined!6300) (MissingVacant!6300 (index!27465 (_ BitVec 32))) )
))
(declare-fun lt!275708 () SeekEntryResult!6300)

(declare-datatypes ((array!37200 0))(
  ( (array!37201 (arr!17853 (Array (_ BitVec 32) (_ BitVec 64))) (size!18217 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37200)

(assert (=> b!604349 (= res!388440 (and (= lt!275708 (Found!6300 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17853 a!2986) index!984) (select (arr!17853 a!2986) j!136))) (not (= (select (arr!17853 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37200 (_ BitVec 32)) SeekEntryResult!6300)

(assert (=> b!604349 (= lt!275708 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17853 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!604350 () Bool)

(declare-fun res!388425 () Bool)

(declare-fun e!345825 () Bool)

(assert (=> b!604350 (=> (not res!388425) (not e!345825))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37200 (_ BitVec 32)) Bool)

(assert (=> b!604350 (= res!388425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!604351 () Bool)

(declare-fun res!388437 () Bool)

(declare-fun e!345826 () Bool)

(assert (=> b!604351 (=> (not res!388437) (not e!345826))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!604351 (= res!388437 (validKeyInArray!0 k!1786))))

(declare-fun res!388434 () Bool)

(assert (=> start!55164 (=> (not res!388434) (not e!345826))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55164 (= res!388434 (validMask!0 mask!3053))))

(assert (=> start!55164 e!345826))

(assert (=> start!55164 true))

(declare-fun array_inv!13627 (array!37200) Bool)

(assert (=> start!55164 (array_inv!13627 a!2986)))

(declare-fun b!604352 () Bool)

(declare-fun Unit!19230 () Unit!19228)

(assert (=> b!604352 (= e!345824 Unit!19230)))

(declare-fun b!604353 () Bool)

(assert (=> b!604353 (= e!345821 (or (bvslt (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18217 a!2986)) (bvslt (size!18217 a!2986) #b01111111111111111111111111111111)))))

(declare-fun lt!275709 () array!37200)

(declare-fun arrayContainsKey!0 (array!37200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!604353 (arrayContainsKey!0 lt!275709 (select (arr!17853 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!275703 () Unit!19228)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37200 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19228)

(assert (=> b!604353 (= lt!275703 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275709 (select (arr!17853 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!345816 () Bool)

(assert (=> b!604353 e!345816))

(declare-fun res!388427 () Bool)

(assert (=> b!604353 (=> (not res!388427) (not e!345816))))

(assert (=> b!604353 (= res!388427 (arrayContainsKey!0 lt!275709 (select (arr!17853 a!2986) j!136) j!136))))

(declare-fun b!604354 () Bool)

(declare-fun e!345828 () Unit!19228)

(declare-fun Unit!19231 () Unit!19228)

(assert (=> b!604354 (= e!345828 Unit!19231)))

(declare-fun b!604355 () Bool)

(declare-fun Unit!19232 () Unit!19228)

(assert (=> b!604355 (= e!345824 Unit!19232)))

(declare-fun lt!275699 () Unit!19228)

(assert (=> b!604355 (= lt!275699 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275709 (select (arr!17853 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!604355 (arrayContainsKey!0 lt!275709 (select (arr!17853 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!275697 () Unit!19228)

(declare-datatypes ((List!11947 0))(
  ( (Nil!11944) (Cons!11943 (h!12988 (_ BitVec 64)) (t!18183 List!11947)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37200 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11947) Unit!19228)

(assert (=> b!604355 (= lt!275697 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11944))))

(declare-fun arrayNoDuplicates!0 (array!37200 (_ BitVec 32) List!11947) Bool)

(assert (=> b!604355 (arrayNoDuplicates!0 lt!275709 #b00000000000000000000000000000000 Nil!11944)))

(declare-fun lt!275704 () Unit!19228)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37200 (_ BitVec 32) (_ BitVec 32)) Unit!19228)

(assert (=> b!604355 (= lt!275704 (lemmaNoDuplicateFromThenFromBigger!0 lt!275709 #b00000000000000000000000000000000 j!136))))

(assert (=> b!604355 (arrayNoDuplicates!0 lt!275709 j!136 Nil!11944)))

(declare-fun lt!275701 () Unit!19228)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37200 (_ BitVec 64) (_ BitVec 32) List!11947) Unit!19228)

(assert (=> b!604355 (= lt!275701 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275709 (select (arr!17853 a!2986) j!136) j!136 Nil!11944))))

(assert (=> b!604355 false))

(declare-fun b!604356 () Bool)

(declare-fun Unit!19233 () Unit!19228)

(assert (=> b!604356 (= e!345828 Unit!19233)))

(assert (=> b!604356 false))

(declare-fun b!604357 () Bool)

(assert (=> b!604357 (= e!345825 e!345818)))

(declare-fun res!388433 () Bool)

(assert (=> b!604357 (=> (not res!388433) (not e!345818))))

(assert (=> b!604357 (= res!388433 (= (select (store (arr!17853 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604357 (= lt!275709 (array!37201 (store (arr!17853 a!2986) i!1108 k!1786) (size!18217 a!2986)))))

(declare-fun b!604358 () Bool)

(assert (=> b!604358 (= e!345816 (arrayContainsKey!0 lt!275709 (select (arr!17853 a!2986) j!136) index!984))))

(declare-fun b!604359 () Bool)

(declare-fun e!345822 () Bool)

(assert (=> b!604359 (= e!345820 (not e!345822))))

(declare-fun res!388442 () Bool)

(assert (=> b!604359 (=> res!388442 e!345822)))

(declare-fun lt!275700 () SeekEntryResult!6300)

(assert (=> b!604359 (= res!388442 (not (= lt!275700 (Found!6300 index!984))))))

(declare-fun lt!275711 () Unit!19228)

(assert (=> b!604359 (= lt!275711 e!345828)))

(declare-fun c!68329 () Bool)

(assert (=> b!604359 (= c!68329 (= lt!275700 Undefined!6300))))

(declare-fun lt!275712 () (_ BitVec 64))

(assert (=> b!604359 (= lt!275700 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275712 lt!275709 mask!3053))))

(declare-fun e!345819 () Bool)

(assert (=> b!604359 e!345819))

(declare-fun res!388438 () Bool)

(assert (=> b!604359 (=> (not res!388438) (not e!345819))))

(declare-fun lt!275710 () SeekEntryResult!6300)

(declare-fun lt!275702 () (_ BitVec 32))

(assert (=> b!604359 (= res!388438 (= lt!275710 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275702 vacantSpotIndex!68 lt!275712 lt!275709 mask!3053)))))

(assert (=> b!604359 (= lt!275710 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275702 vacantSpotIndex!68 (select (arr!17853 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!604359 (= lt!275712 (select (store (arr!17853 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!275705 () Unit!19228)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37200 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19228)

(assert (=> b!604359 (= lt!275705 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275702 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!604359 (= lt!275702 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!604360 () Bool)

(declare-fun e!345815 () Bool)

(assert (=> b!604360 (= e!345815 (arrayContainsKey!0 lt!275709 (select (arr!17853 a!2986) j!136) index!984))))

(declare-fun b!604361 () Bool)

(declare-fun res!388428 () Bool)

(assert (=> b!604361 (=> (not res!388428) (not e!345825))))

(assert (=> b!604361 (= res!388428 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17853 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!604362 () Bool)

(assert (=> b!604362 (= e!345822 e!345827)))

(declare-fun res!388431 () Bool)

(assert (=> b!604362 (=> res!388431 e!345827)))

(declare-fun lt!275706 () (_ BitVec 64))

(assert (=> b!604362 (= res!388431 (or (not (= (select (arr!17853 a!2986) j!136) lt!275712)) (not (= (select (arr!17853 a!2986) j!136) lt!275706))))))

(declare-fun e!345829 () Bool)

(assert (=> b!604362 e!345829))

(declare-fun res!388441 () Bool)

(assert (=> b!604362 (=> (not res!388441) (not e!345829))))

(assert (=> b!604362 (= res!388441 (= lt!275706 (select (arr!17853 a!2986) j!136)))))

(assert (=> b!604362 (= lt!275706 (select (store (arr!17853 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!604363 () Bool)

(assert (=> b!604363 (= e!345819 (= lt!275708 lt!275710))))

(declare-fun b!604364 () Bool)

(declare-fun e!345817 () Bool)

(assert (=> b!604364 (= e!345817 e!345815)))

(declare-fun res!388424 () Bool)

(assert (=> b!604364 (=> (not res!388424) (not e!345815))))

(assert (=> b!604364 (= res!388424 (arrayContainsKey!0 lt!275709 (select (arr!17853 a!2986) j!136) j!136))))

(declare-fun b!604365 () Bool)

(declare-fun res!388435 () Bool)

(assert (=> b!604365 (=> (not res!388435) (not e!345825))))

(assert (=> b!604365 (= res!388435 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11944))))

(declare-fun b!604366 () Bool)

(declare-fun res!388432 () Bool)

(assert (=> b!604366 (=> (not res!388432) (not e!345826))))

(assert (=> b!604366 (= res!388432 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!604367 () Bool)

(assert (=> b!604367 (= e!345826 e!345825)))

(declare-fun res!388426 () Bool)

(assert (=> b!604367 (=> (not res!388426) (not e!345825))))

(declare-fun lt!275698 () SeekEntryResult!6300)

(assert (=> b!604367 (= res!388426 (or (= lt!275698 (MissingZero!6300 i!1108)) (= lt!275698 (MissingVacant!6300 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37200 (_ BitVec 32)) SeekEntryResult!6300)

(assert (=> b!604367 (= lt!275698 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!604368 () Bool)

(declare-fun res!388430 () Bool)

(assert (=> b!604368 (=> (not res!388430) (not e!345826))))

(assert (=> b!604368 (= res!388430 (validKeyInArray!0 (select (arr!17853 a!2986) j!136)))))

(declare-fun b!604369 () Bool)

(assert (=> b!604369 (= e!345829 e!345817)))

(declare-fun res!388429 () Bool)

(assert (=> b!604369 (=> res!388429 e!345817)))

(assert (=> b!604369 (= res!388429 (or (not (= (select (arr!17853 a!2986) j!136) lt!275712)) (not (= (select (arr!17853 a!2986) j!136) lt!275706)) (bvsge j!136 index!984)))))

(declare-fun b!604370 () Bool)

(declare-fun res!388436 () Bool)

(assert (=> b!604370 (=> (not res!388436) (not e!345826))))

(assert (=> b!604370 (= res!388436 (and (= (size!18217 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18217 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18217 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!55164 res!388434) b!604370))

(assert (= (and b!604370 res!388436) b!604368))

(assert (= (and b!604368 res!388430) b!604351))

(assert (= (and b!604351 res!388437) b!604366))

(assert (= (and b!604366 res!388432) b!604367))

(assert (= (and b!604367 res!388426) b!604350))

(assert (= (and b!604350 res!388425) b!604365))

(assert (= (and b!604365 res!388435) b!604361))

(assert (= (and b!604361 res!388428) b!604357))

(assert (= (and b!604357 res!388433) b!604349))

(assert (= (and b!604349 res!388440) b!604359))

(assert (= (and b!604359 res!388438) b!604363))

(assert (= (and b!604359 c!68329) b!604356))

(assert (= (and b!604359 (not c!68329)) b!604354))

(assert (= (and b!604359 (not res!388442)) b!604362))

(assert (= (and b!604362 res!388441) b!604369))

(assert (= (and b!604369 (not res!388429)) b!604364))

(assert (= (and b!604364 res!388424) b!604360))

(assert (= (and b!604362 (not res!388431)) b!604348))

(assert (= (and b!604348 c!68330) b!604355))

(assert (= (and b!604348 (not c!68330)) b!604352))

(assert (= (and b!604348 (not res!388439)) b!604353))

(assert (= (and b!604353 res!388427) b!604358))

(declare-fun m!581295 () Bool)

(assert (=> b!604366 m!581295))

(declare-fun m!581297 () Bool)

(assert (=> start!55164 m!581297))

(declare-fun m!581299 () Bool)

(assert (=> start!55164 m!581299))

(declare-fun m!581301 () Bool)

(assert (=> b!604361 m!581301))

(declare-fun m!581303 () Bool)

(assert (=> b!604365 m!581303))

(declare-fun m!581305 () Bool)

(assert (=> b!604368 m!581305))

(assert (=> b!604368 m!581305))

(declare-fun m!581307 () Bool)

(assert (=> b!604368 m!581307))

(assert (=> b!604358 m!581305))

(assert (=> b!604358 m!581305))

(declare-fun m!581309 () Bool)

(assert (=> b!604358 m!581309))

(assert (=> b!604362 m!581305))

(declare-fun m!581311 () Bool)

(assert (=> b!604362 m!581311))

(declare-fun m!581313 () Bool)

(assert (=> b!604362 m!581313))

(assert (=> b!604355 m!581305))

(declare-fun m!581315 () Bool)

(assert (=> b!604355 m!581315))

(declare-fun m!581317 () Bool)

(assert (=> b!604355 m!581317))

(assert (=> b!604355 m!581305))

(assert (=> b!604355 m!581305))

(declare-fun m!581319 () Bool)

(assert (=> b!604355 m!581319))

(declare-fun m!581321 () Bool)

(assert (=> b!604355 m!581321))

(declare-fun m!581323 () Bool)

(assert (=> b!604355 m!581323))

(assert (=> b!604355 m!581305))

(declare-fun m!581325 () Bool)

(assert (=> b!604355 m!581325))

(declare-fun m!581327 () Bool)

(assert (=> b!604355 m!581327))

(assert (=> b!604353 m!581305))

(assert (=> b!604353 m!581305))

(declare-fun m!581329 () Bool)

(assert (=> b!604353 m!581329))

(assert (=> b!604353 m!581305))

(declare-fun m!581331 () Bool)

(assert (=> b!604353 m!581331))

(assert (=> b!604353 m!581305))

(declare-fun m!581333 () Bool)

(assert (=> b!604353 m!581333))

(declare-fun m!581335 () Bool)

(assert (=> b!604367 m!581335))

(declare-fun m!581337 () Bool)

(assert (=> b!604350 m!581337))

(assert (=> b!604357 m!581311))

(declare-fun m!581339 () Bool)

(assert (=> b!604357 m!581339))

(assert (=> b!604360 m!581305))

(assert (=> b!604360 m!581305))

(assert (=> b!604360 m!581309))

(declare-fun m!581341 () Bool)

(assert (=> b!604359 m!581341))

(assert (=> b!604359 m!581305))

(assert (=> b!604359 m!581305))

(declare-fun m!581343 () Bool)

(assert (=> b!604359 m!581343))

(assert (=> b!604359 m!581311))

(declare-fun m!581345 () Bool)

(assert (=> b!604359 m!581345))

(declare-fun m!581347 () Bool)

(assert (=> b!604359 m!581347))

(declare-fun m!581349 () Bool)

(assert (=> b!604359 m!581349))

(declare-fun m!581351 () Bool)

(assert (=> b!604359 m!581351))

(assert (=> b!604364 m!581305))

(assert (=> b!604364 m!581305))

(assert (=> b!604364 m!581333))

(declare-fun m!581353 () Bool)

(assert (=> b!604351 m!581353))

(assert (=> b!604369 m!581305))

(declare-fun m!581355 () Bool)

(assert (=> b!604349 m!581355))

(assert (=> b!604349 m!581305))

(assert (=> b!604349 m!581305))

(declare-fun m!581357 () Bool)

(assert (=> b!604349 m!581357))

(push 1)

(assert (not b!604355))

(assert (not b!604358))

(assert (not b!604364))

(assert (not b!604368))

(assert (not b!604366))

(assert (not b!604351))

(assert (not b!604367))

(assert (not b!604365))

(assert (not start!55164))

(assert (not b!604349))

(assert (not b!604353))

(assert (not b!604359))

(assert (not b!604360))

(assert (not b!604350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!87329 () Bool)

(declare-fun res!388589 () Bool)

(declare-fun e!345968 () Bool)

(assert (=> d!87329 (=> res!388589 e!345968)))

(assert (=> d!87329 (= res!388589 (= (select (arr!17853 lt!275709) index!984) (select (arr!17853 a!2986) j!136)))))

(assert (=> d!87329 (= (arrayContainsKey!0 lt!275709 (select (arr!17853 a!2986) j!136) index!984) e!345968)))

(declare-fun b!604573 () Bool)

(declare-fun e!345969 () Bool)

(assert (=> b!604573 (= e!345968 e!345969)))

(declare-fun res!388590 () Bool)

(assert (=> b!604573 (=> (not res!388590) (not e!345969))))

(assert (=> b!604573 (= res!388590 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18217 lt!275709)))))

(declare-fun b!604574 () Bool)

(assert (=> b!604574 (= e!345969 (arrayContainsKey!0 lt!275709 (select (arr!17853 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87329 (not res!388589)) b!604573))

(assert (= (and b!604573 res!388590) b!604574))

(declare-fun m!581535 () Bool)

(assert (=> d!87329 m!581535))

(assert (=> b!604574 m!581305))

(declare-fun m!581537 () Bool)

(assert (=> b!604574 m!581537))

(assert (=> b!604358 d!87329))

(declare-fun d!87333 () Bool)

(assert (=> d!87333 (= (validKeyInArray!0 (select (arr!17853 a!2986) j!136)) (and (not (= (select (arr!17853 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17853 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!604368 d!87333))

(declare-fun d!87337 () Bool)

(declare-fun e!345988 () Bool)

(assert (=> d!87337 e!345988))

(declare-fun res!388600 () Bool)

(assert (=> d!87337 (=> (not res!388600) (not e!345988))))

(assert (=> d!87337 (= res!388600 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18217 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18217 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18217 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18217 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18217 a!2986))))))

(declare-fun lt!275848 () Unit!19228)

(declare-fun choose!9 (array!37200 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19228)

(assert (=> d!87337 (= lt!275848 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275702 vacantSpotIndex!68 mask!3053))))

(assert (=> d!87337 (validMask!0 mask!3053)))

(assert (=> d!87337 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275702 vacantSpotIndex!68 mask!3053) lt!275848)))

(declare-fun b!604602 () Bool)

(assert (=> b!604602 (= e!345988 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275702 vacantSpotIndex!68 (select (arr!17853 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275702 vacantSpotIndex!68 (select (store (arr!17853 a!2986) i!1108 k!1786) j!136) (array!37201 (store (arr!17853 a!2986) i!1108 k!1786) (size!18217 a!2986)) mask!3053)))))

(assert (= (and d!87337 res!388600) b!604602))

(declare-fun m!581563 () Bool)

(assert (=> d!87337 m!581563))

(assert (=> d!87337 m!581297))

(assert (=> b!604602 m!581341))

(declare-fun m!581569 () Bool)

(assert (=> b!604602 m!581569))

(assert (=> b!604602 m!581341))

(assert (=> b!604602 m!581305))

(assert (=> b!604602 m!581305))

(assert (=> b!604602 m!581343))

(assert (=> b!604602 m!581311))

(assert (=> b!604359 d!87337))

(declare-fun b!604672 () Bool)

(declare-fun e!346032 () SeekEntryResult!6300)

(assert (=> b!604672 (= e!346032 (MissingVacant!6300 vacantSpotIndex!68))))

(declare-fun b!604673 () Bool)

(assert (=> b!604673 (= e!346032 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!275702 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17853 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!604674 () Bool)

(declare-fun e!346033 () SeekEntryResult!6300)

(declare-fun e!346031 () SeekEntryResult!6300)

(assert (=> b!604674 (= e!346033 e!346031)))

(declare-fun lt!275876 () (_ BitVec 64))

(declare-fun c!68396 () Bool)

(assert (=> b!604674 (= c!68396 (= lt!275876 (select (arr!17853 a!2986) j!136)))))

(declare-fun d!87347 () Bool)

(declare-fun lt!275875 () SeekEntryResult!6300)

(assert (=> d!87347 (and (or (is-Undefined!6300 lt!275875) (not (is-Found!6300 lt!275875)) (and (bvsge (index!27463 lt!275875) #b00000000000000000000000000000000) (bvslt (index!27463 lt!275875) (size!18217 a!2986)))) (or (is-Undefined!6300 lt!275875) (is-Found!6300 lt!275875) (not (is-MissingVacant!6300 lt!275875)) (not (= (index!27465 lt!275875) vacantSpotIndex!68)) (and (bvsge (index!27465 lt!275875) #b00000000000000000000000000000000) (bvslt (index!27465 lt!275875) (size!18217 a!2986)))) (or (is-Undefined!6300 lt!275875) (ite (is-Found!6300 lt!275875) (= (select (arr!17853 a!2986) (index!27463 lt!275875)) (select (arr!17853 a!2986) j!136)) (and (is-MissingVacant!6300 lt!275875) (= (index!27465 lt!275875) vacantSpotIndex!68) (= (select (arr!17853 a!2986) (index!27465 lt!275875)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87347 (= lt!275875 e!346033)))

(declare-fun c!68395 () Bool)

(assert (=> d!87347 (= c!68395 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!87347 (= lt!275876 (select (arr!17853 a!2986) lt!275702))))

(assert (=> d!87347 (validMask!0 mask!3053)))

(assert (=> d!87347 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275702 vacantSpotIndex!68 (select (arr!17853 a!2986) j!136) a!2986 mask!3053) lt!275875)))

(declare-fun b!604675 () Bool)

(assert (=> b!604675 (= e!346031 (Found!6300 lt!275702))))

(declare-fun b!604676 () Bool)

(declare-fun c!68397 () Bool)

(assert (=> b!604676 (= c!68397 (= lt!275876 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604676 (= e!346031 e!346032)))

(declare-fun b!604677 () Bool)

(assert (=> b!604677 (= e!346033 Undefined!6300)))

(assert (= (and d!87347 c!68395) b!604677))

(assert (= (and d!87347 (not c!68395)) b!604674))

(assert (= (and b!604674 c!68396) b!604675))

(assert (= (and b!604674 (not c!68396)) b!604676))

(assert (= (and b!604676 c!68397) b!604672))

(assert (= (and b!604676 (not c!68397)) b!604673))

(declare-fun m!581617 () Bool)

(assert (=> b!604673 m!581617))

(assert (=> b!604673 m!581617))

(assert (=> b!604673 m!581305))

(declare-fun m!581619 () Bool)

(assert (=> b!604673 m!581619))

(declare-fun m!581621 () Bool)

(assert (=> d!87347 m!581621))

(declare-fun m!581623 () Bool)

(assert (=> d!87347 m!581623))

(declare-fun m!581625 () Bool)

(assert (=> d!87347 m!581625))

(assert (=> d!87347 m!581297))

(assert (=> b!604359 d!87347))

(declare-fun d!87361 () Bool)

(declare-fun lt!275879 () (_ BitVec 32))

(assert (=> d!87361 (and (bvsge lt!275879 #b00000000000000000000000000000000) (bvslt lt!275879 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87361 (= lt!275879 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!87361 (validMask!0 mask!3053)))

(assert (=> d!87361 (= (nextIndex!0 index!984 x!910 mask!3053) lt!275879)))

(declare-fun bs!18498 () Bool)

(assert (= bs!18498 d!87361))

(declare-fun m!581635 () Bool)

(assert (=> bs!18498 m!581635))

(assert (=> bs!18498 m!581297))

(assert (=> b!604359 d!87361))

(declare-fun b!604687 () Bool)

(declare-fun e!346043 () SeekEntryResult!6300)

(assert (=> b!604687 (= e!346043 (MissingVacant!6300 vacantSpotIndex!68))))

(declare-fun b!604688 () Bool)

(assert (=> b!604688 (= e!346043 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!275712 lt!275709 mask!3053))))

(declare-fun b!604689 () Bool)

(declare-fun e!346044 () SeekEntryResult!6300)

(declare-fun e!346042 () SeekEntryResult!6300)

(assert (=> b!604689 (= e!346044 e!346042)))

(declare-fun c!68400 () Bool)

(declare-fun lt!275881 () (_ BitVec 64))

(assert (=> b!604689 (= c!68400 (= lt!275881 lt!275712))))

(declare-fun lt!275880 () SeekEntryResult!6300)

(declare-fun d!87365 () Bool)

(assert (=> d!87365 (and (or (is-Undefined!6300 lt!275880) (not (is-Found!6300 lt!275880)) (and (bvsge (index!27463 lt!275880) #b00000000000000000000000000000000) (bvslt (index!27463 lt!275880) (size!18217 lt!275709)))) (or (is-Undefined!6300 lt!275880) (is-Found!6300 lt!275880) (not (is-MissingVacant!6300 lt!275880)) (not (= (index!27465 lt!275880) vacantSpotIndex!68)) (and (bvsge (index!27465 lt!275880) #b00000000000000000000000000000000) (bvslt (index!27465 lt!275880) (size!18217 lt!275709)))) (or (is-Undefined!6300 lt!275880) (ite (is-Found!6300 lt!275880) (= (select (arr!17853 lt!275709) (index!27463 lt!275880)) lt!275712) (and (is-MissingVacant!6300 lt!275880) (= (index!27465 lt!275880) vacantSpotIndex!68) (= (select (arr!17853 lt!275709) (index!27465 lt!275880)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87365 (= lt!275880 e!346044)))

(declare-fun c!68399 () Bool)

(assert (=> d!87365 (= c!68399 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87365 (= lt!275881 (select (arr!17853 lt!275709) index!984))))

(assert (=> d!87365 (validMask!0 mask!3053)))

(assert (=> d!87365 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275712 lt!275709 mask!3053) lt!275880)))

(declare-fun b!604690 () Bool)

(assert (=> b!604690 (= e!346042 (Found!6300 index!984))))

(declare-fun b!604691 () Bool)

(declare-fun c!68401 () Bool)

(assert (=> b!604691 (= c!68401 (= lt!275881 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604691 (= e!346042 e!346043)))

(declare-fun b!604692 () Bool)

(assert (=> b!604692 (= e!346044 Undefined!6300)))

(assert (= (and d!87365 c!68399) b!604692))

(assert (= (and d!87365 (not c!68399)) b!604689))

(assert (= (and b!604689 c!68400) b!604690))

(assert (= (and b!604689 (not c!68400)) b!604691))

(assert (= (and b!604691 c!68401) b!604687))

(assert (= (and b!604691 (not c!68401)) b!604688))

(assert (=> b!604688 m!581349))

(assert (=> b!604688 m!581349))

(declare-fun m!581637 () Bool)

(assert (=> b!604688 m!581637))

(declare-fun m!581639 () Bool)

(assert (=> d!87365 m!581639))

(declare-fun m!581643 () Bool)

(assert (=> d!87365 m!581643))

(assert (=> d!87365 m!581535))

(assert (=> d!87365 m!581297))

(assert (=> b!604359 d!87365))

(declare-fun b!604695 () Bool)

(declare-fun e!346048 () SeekEntryResult!6300)

(assert (=> b!604695 (= e!346048 (MissingVacant!6300 vacantSpotIndex!68))))

(declare-fun b!604696 () Bool)

(assert (=> b!604696 (= e!346048 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!275702 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!275712 lt!275709 mask!3053))))

(declare-fun b!604697 () Bool)

(declare-fun e!346049 () SeekEntryResult!6300)

(declare-fun e!346047 () SeekEntryResult!6300)

(assert (=> b!604697 (= e!346049 e!346047)))

(declare-fun c!68403 () Bool)

(declare-fun lt!275883 () (_ BitVec 64))

(assert (=> b!604697 (= c!68403 (= lt!275883 lt!275712))))

(declare-fun d!87369 () Bool)

(declare-fun lt!275882 () SeekEntryResult!6300)

(assert (=> d!87369 (and (or (is-Undefined!6300 lt!275882) (not (is-Found!6300 lt!275882)) (and (bvsge (index!27463 lt!275882) #b00000000000000000000000000000000) (bvslt (index!27463 lt!275882) (size!18217 lt!275709)))) (or (is-Undefined!6300 lt!275882) (is-Found!6300 lt!275882) (not (is-MissingVacant!6300 lt!275882)) (not (= (index!27465 lt!275882) vacantSpotIndex!68)) (and (bvsge (index!27465 lt!275882) #b00000000000000000000000000000000) (bvslt (index!27465 lt!275882) (size!18217 lt!275709)))) (or (is-Undefined!6300 lt!275882) (ite (is-Found!6300 lt!275882) (= (select (arr!17853 lt!275709) (index!27463 lt!275882)) lt!275712) (and (is-MissingVacant!6300 lt!275882) (= (index!27465 lt!275882) vacantSpotIndex!68) (= (select (arr!17853 lt!275709) (index!27465 lt!275882)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87369 (= lt!275882 e!346049)))

(declare-fun c!68402 () Bool)

(assert (=> d!87369 (= c!68402 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!87369 (= lt!275883 (select (arr!17853 lt!275709) lt!275702))))

(assert (=> d!87369 (validMask!0 mask!3053)))

(assert (=> d!87369 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275702 vacantSpotIndex!68 lt!275712 lt!275709 mask!3053) lt!275882)))

(declare-fun b!604698 () Bool)

(assert (=> b!604698 (= e!346047 (Found!6300 lt!275702))))

(declare-fun b!604699 () Bool)

(declare-fun c!68404 () Bool)

(assert (=> b!604699 (= c!68404 (= lt!275883 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604699 (= e!346047 e!346048)))

(declare-fun b!604700 () Bool)

(assert (=> b!604700 (= e!346049 Undefined!6300)))

(assert (= (and d!87369 c!68402) b!604700))

(assert (= (and d!87369 (not c!68402)) b!604697))

(assert (= (and b!604697 c!68403) b!604698))

(assert (= (and b!604697 (not c!68403)) b!604699))

(assert (= (and b!604699 c!68404) b!604695))

(assert (= (and b!604699 (not c!68404)) b!604696))

(assert (=> b!604696 m!581617))

(assert (=> b!604696 m!581617))

(declare-fun m!581647 () Bool)

(assert (=> b!604696 m!581647))

(declare-fun m!581649 () Bool)

(assert (=> d!87369 m!581649))

(declare-fun m!581651 () Bool)

(assert (=> d!87369 m!581651))

(declare-fun m!581653 () Bool)

(assert (=> d!87369 m!581653))

(assert (=> d!87369 m!581297))

(assert (=> b!604359 d!87369))

(declare-fun d!87371 () Bool)

(assert (=> d!87371 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55164 d!87371))

(declare-fun d!87381 () Bool)

(assert (=> d!87381 (= (array_inv!13627 a!2986) (bvsge (size!18217 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55164 d!87381))

(declare-fun d!87383 () Bool)

(declare-fun res!388634 () Bool)

(declare-fun e!346060 () Bool)

(assert (=> d!87383 (=> res!388634 e!346060)))

(assert (=> d!87383 (= res!388634 (= (select (arr!17853 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!87383 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!346060)))

(declare-fun b!604712 () Bool)

(declare-fun e!346061 () Bool)

(assert (=> b!604712 (= e!346060 e!346061)))

(declare-fun res!388635 () Bool)

(assert (=> b!604712 (=> (not res!388635) (not e!346061))))

(assert (=> b!604712 (= res!388635 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18217 a!2986)))))

(declare-fun b!604713 () Bool)

(assert (=> b!604713 (= e!346061 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!87383 (not res!388634)) b!604712))

(assert (= (and b!604712 res!388635) b!604713))

(declare-fun m!581673 () Bool)

(assert (=> d!87383 m!581673))

(declare-fun m!581675 () Bool)

(assert (=> b!604713 m!581675))

(assert (=> b!604366 d!87383))

(declare-fun d!87385 () Bool)

(assert (=> d!87385 (arrayNoDuplicates!0 lt!275709 j!136 Nil!11944)))

(declare-fun lt!275906 () Unit!19228)

(declare-fun choose!39 (array!37200 (_ BitVec 32) (_ BitVec 32)) Unit!19228)

(assert (=> d!87385 (= lt!275906 (choose!39 lt!275709 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87385 (bvslt (size!18217 lt!275709) #b01111111111111111111111111111111)))

(assert (=> d!87385 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!275709 #b00000000000000000000000000000000 j!136) lt!275906)))

(declare-fun bs!18503 () Bool)

(assert (= bs!18503 d!87385))

(assert (=> bs!18503 m!581321))

(declare-fun m!581691 () Bool)

(assert (=> bs!18503 m!581691))

(assert (=> b!604355 d!87385))

(declare-fun d!87395 () Bool)

(declare-fun res!388636 () Bool)

(declare-fun e!346065 () Bool)

(assert (=> d!87395 (=> res!388636 e!346065)))

(assert (=> d!87395 (= res!388636 (= (select (arr!17853 lt!275709) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17853 a!2986) j!136)))))

(assert (=> d!87395 (= (arrayContainsKey!0 lt!275709 (select (arr!17853 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!346065)))

(declare-fun b!604720 () Bool)

(declare-fun e!346066 () Bool)

(assert (=> b!604720 (= e!346065 e!346066)))

(declare-fun res!388637 () Bool)

(assert (=> b!604720 (=> (not res!388637) (not e!346066))))

(assert (=> b!604720 (= res!388637 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18217 lt!275709)))))

(declare-fun b!604721 () Bool)

(assert (=> b!604721 (= e!346066 (arrayContainsKey!0 lt!275709 (select (arr!17853 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87395 (not res!388636)) b!604720))

(assert (= (and b!604720 res!388637) b!604721))

(declare-fun m!581693 () Bool)

(assert (=> d!87395 m!581693))

(assert (=> b!604721 m!581305))

(declare-fun m!581695 () Bool)

(assert (=> b!604721 m!581695))

(assert (=> b!604355 d!87395))

(declare-fun b!604732 () Bool)

(declare-fun e!346075 () Bool)

(declare-fun e!346078 () Bool)

(assert (=> b!604732 (= e!346075 e!346078)))

(declare-fun res!388645 () Bool)

(assert (=> b!604732 (=> (not res!388645) (not e!346078))))

(declare-fun e!346076 () Bool)

(assert (=> b!604732 (= res!388645 (not e!346076))))

(declare-fun res!388646 () Bool)

(assert (=> b!604732 (=> (not res!388646) (not e!346076))))

(assert (=> b!604732 (= res!388646 (validKeyInArray!0 (select (arr!17853 lt!275709) j!136)))))

(declare-fun d!87397 () Bool)

(declare-fun res!388644 () Bool)

(assert (=> d!87397 (=> res!388644 e!346075)))

(assert (=> d!87397 (= res!388644 (bvsge j!136 (size!18217 lt!275709)))))

(assert (=> d!87397 (= (arrayNoDuplicates!0 lt!275709 j!136 Nil!11944) e!346075)))

(declare-fun b!604733 () Bool)

(declare-fun e!346077 () Bool)

(assert (=> b!604733 (= e!346078 e!346077)))

(declare-fun c!68411 () Bool)

(assert (=> b!604733 (= c!68411 (validKeyInArray!0 (select (arr!17853 lt!275709) j!136)))))

(declare-fun b!604734 () Bool)

(declare-fun call!33026 () Bool)

(assert (=> b!604734 (= e!346077 call!33026)))

(declare-fun b!604735 () Bool)

(assert (=> b!604735 (= e!346077 call!33026)))

(declare-fun b!604736 () Bool)

(declare-fun contains!2998 (List!11947 (_ BitVec 64)) Bool)

(assert (=> b!604736 (= e!346076 (contains!2998 Nil!11944 (select (arr!17853 lt!275709) j!136)))))

(declare-fun bm!33023 () Bool)

(assert (=> bm!33023 (= call!33026 (arrayNoDuplicates!0 lt!275709 (bvadd j!136 #b00000000000000000000000000000001) (ite c!68411 (Cons!11943 (select (arr!17853 lt!275709) j!136) Nil!11944) Nil!11944)))))

(assert (= (and d!87397 (not res!388644)) b!604732))

(assert (= (and b!604732 res!388646) b!604736))

(assert (= (and b!604732 res!388645) b!604733))

(assert (= (and b!604733 c!68411) b!604735))

(assert (= (and b!604733 (not c!68411)) b!604734))

(assert (= (or b!604735 b!604734) bm!33023))

(declare-fun m!581697 () Bool)

(assert (=> b!604732 m!581697))

(assert (=> b!604732 m!581697))

(declare-fun m!581699 () Bool)

(assert (=> b!604732 m!581699))

(assert (=> b!604733 m!581697))

(assert (=> b!604733 m!581697))

(assert (=> b!604733 m!581699))

(assert (=> b!604736 m!581697))

(assert (=> b!604736 m!581697))

(declare-fun m!581701 () Bool)

(assert (=> b!604736 m!581701))

(assert (=> bm!33023 m!581697))

(declare-fun m!581703 () Bool)

(assert (=> bm!33023 m!581703))

(assert (=> b!604355 d!87397))

(declare-fun d!87401 () Bool)

(assert (=> d!87401 (arrayContainsKey!0 lt!275709 (select (arr!17853 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275909 () Unit!19228)

(declare-fun choose!114 (array!37200 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19228)

(assert (=> d!87401 (= lt!275909 (choose!114 lt!275709 (select (arr!17853 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87401 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87401 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275709 (select (arr!17853 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!275909)))

(declare-fun bs!18504 () Bool)

(assert (= bs!18504 d!87401))

(assert (=> bs!18504 m!581305))

(assert (=> bs!18504 m!581325))

(assert (=> bs!18504 m!581305))

(declare-fun m!581705 () Bool)

(assert (=> bs!18504 m!581705))

(assert (=> b!604355 d!87401))

(declare-fun b!604737 () Bool)

(declare-fun e!346079 () Bool)

(declare-fun e!346082 () Bool)

(assert (=> b!604737 (= e!346079 e!346082)))

(declare-fun res!388648 () Bool)

(assert (=> b!604737 (=> (not res!388648) (not e!346082))))

(declare-fun e!346080 () Bool)

(assert (=> b!604737 (= res!388648 (not e!346080))))

(declare-fun res!388649 () Bool)

(assert (=> b!604737 (=> (not res!388649) (not e!346080))))

(assert (=> b!604737 (= res!388649 (validKeyInArray!0 (select (arr!17853 lt!275709) #b00000000000000000000000000000000)))))

(declare-fun d!87403 () Bool)

(declare-fun res!388647 () Bool)

(assert (=> d!87403 (=> res!388647 e!346079)))

(assert (=> d!87403 (= res!388647 (bvsge #b00000000000000000000000000000000 (size!18217 lt!275709)))))

(assert (=> d!87403 (= (arrayNoDuplicates!0 lt!275709 #b00000000000000000000000000000000 Nil!11944) e!346079)))

(declare-fun b!604738 () Bool)

(declare-fun e!346081 () Bool)

(assert (=> b!604738 (= e!346082 e!346081)))

(declare-fun c!68412 () Bool)

(assert (=> b!604738 (= c!68412 (validKeyInArray!0 (select (arr!17853 lt!275709) #b00000000000000000000000000000000)))))

(declare-fun b!604739 () Bool)

(declare-fun call!33027 () Bool)

(assert (=> b!604739 (= e!346081 call!33027)))

(declare-fun b!604740 () Bool)

(assert (=> b!604740 (= e!346081 call!33027)))

(declare-fun b!604741 () Bool)

(assert (=> b!604741 (= e!346080 (contains!2998 Nil!11944 (select (arr!17853 lt!275709) #b00000000000000000000000000000000)))))

(declare-fun bm!33024 () Bool)

(assert (=> bm!33024 (= call!33027 (arrayNoDuplicates!0 lt!275709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68412 (Cons!11943 (select (arr!17853 lt!275709) #b00000000000000000000000000000000) Nil!11944) Nil!11944)))))

(assert (= (and d!87403 (not res!388647)) b!604737))

(assert (= (and b!604737 res!388649) b!604741))

(assert (= (and b!604737 res!388648) b!604738))

(assert (= (and b!604738 c!68412) b!604740))

(assert (= (and b!604738 (not c!68412)) b!604739))

(assert (= (or b!604740 b!604739) bm!33024))

(declare-fun m!581707 () Bool)

(assert (=> b!604737 m!581707))

(assert (=> b!604737 m!581707))

(declare-fun m!581709 () Bool)

(assert (=> b!604737 m!581709))

(assert (=> b!604738 m!581707))

(assert (=> b!604738 m!581707))

(assert (=> b!604738 m!581709))

(assert (=> b!604741 m!581707))

(assert (=> b!604741 m!581707))

(declare-fun m!581711 () Bool)

(assert (=> b!604741 m!581711))

(assert (=> bm!33024 m!581707))

(declare-fun m!581713 () Bool)

