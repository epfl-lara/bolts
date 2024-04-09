; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54346 () Bool)

(assert start!54346)

(declare-fun b!593347 () Bool)

(declare-fun e!338932 () Bool)

(declare-datatypes ((List!11814 0))(
  ( (Nil!11811) (Cons!11810 (h!12855 (_ BitVec 64)) (t!18050 List!11814)) )
))
(declare-fun noDuplicate!234 (List!11814) Bool)

(assert (=> b!593347 (= e!338932 (noDuplicate!234 Nil!11811))))

(declare-fun b!593348 () Bool)

(declare-datatypes ((Unit!18612 0))(
  ( (Unit!18613) )
))
(declare-fun e!338929 () Unit!18612)

(declare-fun Unit!18614 () Unit!18612)

(assert (=> b!593348 (= e!338929 Unit!18614)))

(declare-fun e!338934 () Bool)

(declare-fun b!593349 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!36913 0))(
  ( (array!36914 (arr!17720 (Array (_ BitVec 32) (_ BitVec 64))) (size!18084 (_ BitVec 32))) )
))
(declare-fun lt!269432 () array!36913)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!36913)

(declare-fun arrayContainsKey!0 (array!36913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!593349 (= e!338934 (arrayContainsKey!0 lt!269432 (select (arr!17720 a!2986) j!136) index!984))))

(declare-fun res!379915 () Bool)

(declare-fun e!338933 () Bool)

(assert (=> start!54346 (=> (not res!379915) (not e!338933))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54346 (= res!379915 (validMask!0 mask!3053))))

(assert (=> start!54346 e!338933))

(assert (=> start!54346 true))

(declare-fun array_inv!13494 (array!36913) Bool)

(assert (=> start!54346 (array_inv!13494 a!2986)))

(declare-fun b!593350 () Bool)

(declare-fun res!379917 () Bool)

(assert (=> b!593350 (=> (not res!379917) (not e!338933))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!593350 (= res!379917 (and (= (size!18084 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18084 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18084 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!593351 () Bool)

(declare-fun res!379906 () Bool)

(assert (=> b!593351 (=> (not res!379906) (not e!338933))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!593351 (= res!379906 (validKeyInArray!0 k!1786))))

(declare-fun b!593352 () Bool)

(declare-fun e!338930 () Bool)

(assert (=> b!593352 (= e!338933 e!338930)))

(declare-fun res!379907 () Bool)

(assert (=> b!593352 (=> (not res!379907) (not e!338930))))

(declare-datatypes ((SeekEntryResult!6167 0))(
  ( (MissingZero!6167 (index!26909 (_ BitVec 32))) (Found!6167 (index!26910 (_ BitVec 32))) (Intermediate!6167 (undefined!6979 Bool) (index!26911 (_ BitVec 32)) (x!55730 (_ BitVec 32))) (Undefined!6167) (MissingVacant!6167 (index!26912 (_ BitVec 32))) )
))
(declare-fun lt!269431 () SeekEntryResult!6167)

(assert (=> b!593352 (= res!379907 (or (= lt!269431 (MissingZero!6167 i!1108)) (= lt!269431 (MissingVacant!6167 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36913 (_ BitVec 32)) SeekEntryResult!6167)

(assert (=> b!593352 (= lt!269431 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!593353 () Bool)

(declare-fun e!338927 () Bool)

(assert (=> b!593353 (= e!338930 e!338927)))

(declare-fun res!379909 () Bool)

(assert (=> b!593353 (=> (not res!379909) (not e!338927))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!593353 (= res!379909 (= (select (store (arr!17720 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593353 (= lt!269432 (array!36914 (store (arr!17720 a!2986) i!1108 k!1786) (size!18084 a!2986)))))

(declare-fun b!593354 () Bool)

(declare-fun e!338931 () Bool)

(assert (=> b!593354 (= e!338927 e!338931)))

(declare-fun res!379919 () Bool)

(assert (=> b!593354 (=> (not res!379919) (not e!338931))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!269433 () SeekEntryResult!6167)

(assert (=> b!593354 (= res!379919 (and (= lt!269433 (Found!6167 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17720 a!2986) index!984) (select (arr!17720 a!2986) j!136))) (not (= (select (arr!17720 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36913 (_ BitVec 32)) SeekEntryResult!6167)

(assert (=> b!593354 (= lt!269433 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17720 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!593355 () Bool)

(declare-fun res!379913 () Bool)

(assert (=> b!593355 (=> (not res!379913) (not e!338930))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36913 (_ BitVec 32)) Bool)

(assert (=> b!593355 (= res!379913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!593356 () Bool)

(declare-fun Unit!18615 () Unit!18612)

(assert (=> b!593356 (= e!338929 Unit!18615)))

(assert (=> b!593356 false))

(declare-fun b!593357 () Bool)

(declare-fun res!379910 () Bool)

(assert (=> b!593357 (=> (not res!379910) (not e!338933))))

(assert (=> b!593357 (= res!379910 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!593358 () Bool)

(declare-fun e!338938 () Bool)

(assert (=> b!593358 (= e!338938 e!338932)))

(declare-fun res!379911 () Bool)

(assert (=> b!593358 (=> res!379911 e!338932)))

(assert (=> b!593358 (= res!379911 (or (bvsgt #b00000000000000000000000000000000 (size!18084 a!2986)) (bvsge (size!18084 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!593358 (arrayContainsKey!0 lt!269432 (select (arr!17720 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269436 () Unit!18612)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36913 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18612)

(assert (=> b!593358 (= lt!269436 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269432 (select (arr!17720 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!593359 () Bool)

(declare-fun res!379918 () Bool)

(assert (=> b!593359 (=> (not res!379918) (not e!338930))))

(declare-fun arrayNoDuplicates!0 (array!36913 (_ BitVec 32) List!11814) Bool)

(assert (=> b!593359 (= res!379918 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11811))))

(declare-fun b!593360 () Bool)

(declare-fun e!338926 () Bool)

(assert (=> b!593360 (= e!338926 e!338938)))

(declare-fun res!379908 () Bool)

(assert (=> b!593360 (=> res!379908 e!338938)))

(declare-fun lt!269430 () (_ BitVec 64))

(declare-fun lt!269434 () (_ BitVec 64))

(assert (=> b!593360 (= res!379908 (or (not (= (select (arr!17720 a!2986) j!136) lt!269430)) (not (= (select (arr!17720 a!2986) j!136) lt!269434)) (bvsge j!136 index!984)))))

(declare-fun e!338928 () Bool)

(assert (=> b!593360 e!338928))

(declare-fun res!379922 () Bool)

(assert (=> b!593360 (=> (not res!379922) (not e!338928))))

(assert (=> b!593360 (= res!379922 (= lt!269434 (select (arr!17720 a!2986) j!136)))))

(assert (=> b!593360 (= lt!269434 (select (store (arr!17720 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!593361 () Bool)

(declare-fun e!338935 () Bool)

(assert (=> b!593361 (= e!338935 e!338934)))

(declare-fun res!379905 () Bool)

(assert (=> b!593361 (=> (not res!379905) (not e!338934))))

(assert (=> b!593361 (= res!379905 (arrayContainsKey!0 lt!269432 (select (arr!17720 a!2986) j!136) j!136))))

(declare-fun b!593362 () Bool)

(declare-fun res!379916 () Bool)

(assert (=> b!593362 (=> (not res!379916) (not e!338930))))

(assert (=> b!593362 (= res!379916 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17720 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!593363 () Bool)

(assert (=> b!593363 (= e!338928 e!338935)))

(declare-fun res!379920 () Bool)

(assert (=> b!593363 (=> res!379920 e!338935)))

(assert (=> b!593363 (= res!379920 (or (not (= (select (arr!17720 a!2986) j!136) lt!269430)) (not (= (select (arr!17720 a!2986) j!136) lt!269434)) (bvsge j!136 index!984)))))

(declare-fun b!593364 () Bool)

(declare-fun res!379914 () Bool)

(assert (=> b!593364 (=> (not res!379914) (not e!338933))))

(assert (=> b!593364 (= res!379914 (validKeyInArray!0 (select (arr!17720 a!2986) j!136)))))

(declare-fun b!593365 () Bool)

(assert (=> b!593365 (= e!338931 (not e!338926))))

(declare-fun res!379912 () Bool)

(assert (=> b!593365 (=> res!379912 e!338926)))

(declare-fun lt!269439 () SeekEntryResult!6167)

(assert (=> b!593365 (= res!379912 (not (= lt!269439 (Found!6167 index!984))))))

(declare-fun lt!269438 () Unit!18612)

(assert (=> b!593365 (= lt!269438 e!338929)))

(declare-fun c!67088 () Bool)

(assert (=> b!593365 (= c!67088 (= lt!269439 Undefined!6167))))

(assert (=> b!593365 (= lt!269439 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269430 lt!269432 mask!3053))))

(declare-fun e!338937 () Bool)

(assert (=> b!593365 e!338937))

(declare-fun res!379921 () Bool)

(assert (=> b!593365 (=> (not res!379921) (not e!338937))))

(declare-fun lt!269429 () SeekEntryResult!6167)

(declare-fun lt!269435 () (_ BitVec 32))

(assert (=> b!593365 (= res!379921 (= lt!269429 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269435 vacantSpotIndex!68 lt!269430 lt!269432 mask!3053)))))

(assert (=> b!593365 (= lt!269429 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269435 vacantSpotIndex!68 (select (arr!17720 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!593365 (= lt!269430 (select (store (arr!17720 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!269437 () Unit!18612)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36913 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18612)

(assert (=> b!593365 (= lt!269437 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269435 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!593365 (= lt!269435 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!593366 () Bool)

(assert (=> b!593366 (= e!338937 (= lt!269433 lt!269429))))

(assert (= (and start!54346 res!379915) b!593350))

(assert (= (and b!593350 res!379917) b!593364))

(assert (= (and b!593364 res!379914) b!593351))

(assert (= (and b!593351 res!379906) b!593357))

(assert (= (and b!593357 res!379910) b!593352))

(assert (= (and b!593352 res!379907) b!593355))

(assert (= (and b!593355 res!379913) b!593359))

(assert (= (and b!593359 res!379918) b!593362))

(assert (= (and b!593362 res!379916) b!593353))

(assert (= (and b!593353 res!379909) b!593354))

(assert (= (and b!593354 res!379919) b!593365))

(assert (= (and b!593365 res!379921) b!593366))

(assert (= (and b!593365 c!67088) b!593356))

(assert (= (and b!593365 (not c!67088)) b!593348))

(assert (= (and b!593365 (not res!379912)) b!593360))

(assert (= (and b!593360 res!379922) b!593363))

(assert (= (and b!593363 (not res!379920)) b!593361))

(assert (= (and b!593361 res!379905) b!593349))

(assert (= (and b!593360 (not res!379908)) b!593358))

(assert (= (and b!593358 (not res!379911)) b!593347))

(declare-fun m!571337 () Bool)

(assert (=> b!593351 m!571337))

(declare-fun m!571339 () Bool)

(assert (=> start!54346 m!571339))

(declare-fun m!571341 () Bool)

(assert (=> start!54346 m!571341))

(declare-fun m!571343 () Bool)

(assert (=> b!593354 m!571343))

(declare-fun m!571345 () Bool)

(assert (=> b!593354 m!571345))

(assert (=> b!593354 m!571345))

(declare-fun m!571347 () Bool)

(assert (=> b!593354 m!571347))

(assert (=> b!593363 m!571345))

(assert (=> b!593349 m!571345))

(assert (=> b!593349 m!571345))

(declare-fun m!571349 () Bool)

(assert (=> b!593349 m!571349))

(declare-fun m!571351 () Bool)

(assert (=> b!593362 m!571351))

(declare-fun m!571353 () Bool)

(assert (=> b!593365 m!571353))

(declare-fun m!571355 () Bool)

(assert (=> b!593365 m!571355))

(declare-fun m!571357 () Bool)

(assert (=> b!593365 m!571357))

(assert (=> b!593365 m!571345))

(declare-fun m!571359 () Bool)

(assert (=> b!593365 m!571359))

(declare-fun m!571361 () Bool)

(assert (=> b!593365 m!571361))

(declare-fun m!571363 () Bool)

(assert (=> b!593365 m!571363))

(assert (=> b!593365 m!571345))

(declare-fun m!571365 () Bool)

(assert (=> b!593365 m!571365))

(assert (=> b!593360 m!571345))

(assert (=> b!593360 m!571359))

(declare-fun m!571367 () Bool)

(assert (=> b!593360 m!571367))

(assert (=> b!593353 m!571359))

(declare-fun m!571369 () Bool)

(assert (=> b!593353 m!571369))

(assert (=> b!593358 m!571345))

(assert (=> b!593358 m!571345))

(declare-fun m!571371 () Bool)

(assert (=> b!593358 m!571371))

(assert (=> b!593358 m!571345))

(declare-fun m!571373 () Bool)

(assert (=> b!593358 m!571373))

(declare-fun m!571375 () Bool)

(assert (=> b!593359 m!571375))

(declare-fun m!571377 () Bool)

(assert (=> b!593355 m!571377))

(declare-fun m!571379 () Bool)

(assert (=> b!593352 m!571379))

(declare-fun m!571381 () Bool)

(assert (=> b!593347 m!571381))

(declare-fun m!571383 () Bool)

(assert (=> b!593357 m!571383))

(assert (=> b!593364 m!571345))

(assert (=> b!593364 m!571345))

(declare-fun m!571385 () Bool)

(assert (=> b!593364 m!571385))

(assert (=> b!593361 m!571345))

(assert (=> b!593361 m!571345))

(declare-fun m!571387 () Bool)

(assert (=> b!593361 m!571387))

(push 1)

(assert (not b!593364))

(assert (not b!593359))

(assert (not b!593355))

(assert (not b!593357))

(assert (not b!593347))

(assert (not b!593354))

(assert (not b!593358))

(assert (not start!54346))

(assert (not b!593361))

(assert (not b!593351))

(assert (not b!593365))

(assert (not b!593349))

(assert (not b!593352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!593484 () Bool)

(declare-fun e!339022 () SeekEntryResult!6167)

(assert (=> b!593484 (= e!339022 (MissingVacant!6167 vacantSpotIndex!68))))

(declare-fun b!593485 () Bool)

(assert (=> b!593485 (= e!339022 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269435 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!269430 lt!269432 mask!3053))))

(declare-fun b!593486 () Bool)

(declare-fun c!67127 () Bool)

(declare-fun lt!269483 () (_ BitVec 64))

(assert (=> b!593486 (= c!67127 (= lt!269483 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!339020 () SeekEntryResult!6167)

(assert (=> b!593486 (= e!339020 e!339022)))

(declare-fun b!593487 () Bool)

(assert (=> b!593487 (= e!339020 (Found!6167 lt!269435))))

(declare-fun b!593488 () Bool)

(declare-fun e!339021 () SeekEntryResult!6167)

(assert (=> b!593488 (= e!339021 Undefined!6167)))

(declare-fun b!593489 () Bool)

(assert (=> b!593489 (= e!339021 e!339020)))

(declare-fun c!67126 () Bool)

(assert (=> b!593489 (= c!67126 (= lt!269483 lt!269430))))

(declare-fun d!86333 () Bool)

(declare-fun lt!269484 () SeekEntryResult!6167)

(assert (=> d!86333 (and (or (is-Undefined!6167 lt!269484) (not (is-Found!6167 lt!269484)) (and (bvsge (index!26910 lt!269484) #b00000000000000000000000000000000) (bvslt (index!26910 lt!269484) (size!18084 lt!269432)))) (or (is-Undefined!6167 lt!269484) (is-Found!6167 lt!269484) (not (is-MissingVacant!6167 lt!269484)) (not (= (index!26912 lt!269484) vacantSpotIndex!68)) (and (bvsge (index!26912 lt!269484) #b00000000000000000000000000000000) (bvslt (index!26912 lt!269484) (size!18084 lt!269432)))) (or (is-Undefined!6167 lt!269484) (ite (is-Found!6167 lt!269484) (= (select (arr!17720 lt!269432) (index!26910 lt!269484)) lt!269430) (and (is-MissingVacant!6167 lt!269484) (= (index!26912 lt!269484) vacantSpotIndex!68) (= (select (arr!17720 lt!269432) (index!26912 lt!269484)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86333 (= lt!269484 e!339021)))

(declare-fun c!67125 () Bool)

(assert (=> d!86333 (= c!67125 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86333 (= lt!269483 (select (arr!17720 lt!269432) lt!269435))))

(assert (=> d!86333 (validMask!0 mask!3053)))

(assert (=> d!86333 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269435 vacantSpotIndex!68 lt!269430 lt!269432 mask!3053) lt!269484)))

(assert (= (and d!86333 c!67125) b!593488))

(assert (= (and d!86333 (not c!67125)) b!593489))

(assert (= (and b!593489 c!67126) b!593487))

(assert (= (and b!593489 (not c!67126)) b!593486))

(assert (= (and b!593486 c!67127) b!593484))

(assert (= (and b!593486 (not c!67127)) b!593485))

(declare-fun m!571473 () Bool)

(assert (=> b!593485 m!571473))

(assert (=> b!593485 m!571473))

(declare-fun m!571475 () Bool)

(assert (=> b!593485 m!571475))

(declare-fun m!571477 () Bool)

(assert (=> d!86333 m!571477))

(declare-fun m!571479 () Bool)

(assert (=> d!86333 m!571479))

(declare-fun m!571481 () Bool)

(assert (=> d!86333 m!571481))

(assert (=> d!86333 m!571339))

(assert (=> b!593365 d!86333))

(declare-fun b!593494 () Bool)

(declare-fun e!339029 () SeekEntryResult!6167)

(assert (=> b!593494 (= e!339029 (MissingVacant!6167 vacantSpotIndex!68))))

(declare-fun b!593495 () Bool)

(assert (=> b!593495 (= e!339029 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!269430 lt!269432 mask!3053))))

(declare-fun b!593496 () Bool)

(declare-fun c!67130 () Bool)

(declare-fun lt!269485 () (_ BitVec 64))

(assert (=> b!593496 (= c!67130 (= lt!269485 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!339027 () SeekEntryResult!6167)

(assert (=> b!593496 (= e!339027 e!339029)))

(declare-fun b!593497 () Bool)

(assert (=> b!593497 (= e!339027 (Found!6167 index!984))))

(declare-fun b!593498 () Bool)

(declare-fun e!339028 () SeekEntryResult!6167)

(assert (=> b!593498 (= e!339028 Undefined!6167)))

(declare-fun b!593499 () Bool)

(assert (=> b!593499 (= e!339028 e!339027)))

(declare-fun c!67129 () Bool)

(assert (=> b!593499 (= c!67129 (= lt!269485 lt!269430))))

(declare-fun lt!269486 () SeekEntryResult!6167)

(declare-fun d!86355 () Bool)

(assert (=> d!86355 (and (or (is-Undefined!6167 lt!269486) (not (is-Found!6167 lt!269486)) (and (bvsge (index!26910 lt!269486) #b00000000000000000000000000000000) (bvslt (index!26910 lt!269486) (size!18084 lt!269432)))) (or (is-Undefined!6167 lt!269486) (is-Found!6167 lt!269486) (not (is-MissingVacant!6167 lt!269486)) (not (= (index!26912 lt!269486) vacantSpotIndex!68)) (and (bvsge (index!26912 lt!269486) #b00000000000000000000000000000000) (bvslt (index!26912 lt!269486) (size!18084 lt!269432)))) (or (is-Undefined!6167 lt!269486) (ite (is-Found!6167 lt!269486) (= (select (arr!17720 lt!269432) (index!26910 lt!269486)) lt!269430) (and (is-MissingVacant!6167 lt!269486) (= (index!26912 lt!269486) vacantSpotIndex!68) (= (select (arr!17720 lt!269432) (index!26912 lt!269486)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86355 (= lt!269486 e!339028)))

(declare-fun c!67128 () Bool)

(assert (=> d!86355 (= c!67128 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86355 (= lt!269485 (select (arr!17720 lt!269432) index!984))))

(assert (=> d!86355 (validMask!0 mask!3053)))

(assert (=> d!86355 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269430 lt!269432 mask!3053) lt!269486)))

(assert (= (and d!86355 c!67128) b!593498))

(assert (= (and d!86355 (not c!67128)) b!593499))

(assert (= (and b!593499 c!67129) b!593497))

(assert (= (and b!593499 (not c!67129)) b!593496))

(assert (= (and b!593496 c!67130) b!593494))

(assert (= (and b!593496 (not c!67130)) b!593495))

(assert (=> b!593495 m!571353))

(assert (=> b!593495 m!571353))

(declare-fun m!571483 () Bool)

(assert (=> b!593495 m!571483))

(declare-fun m!571485 () Bool)

(assert (=> d!86355 m!571485))

(declare-fun m!571487 () Bool)

(assert (=> d!86355 m!571487))

(declare-fun m!571489 () Bool)

(assert (=> d!86355 m!571489))

(assert (=> d!86355 m!571339))

(assert (=> b!593365 d!86355))

(declare-fun b!593502 () Bool)

(declare-fun e!339034 () SeekEntryResult!6167)

(assert (=> b!593502 (= e!339034 (MissingVacant!6167 vacantSpotIndex!68))))

(declare-fun b!593503 () Bool)

(assert (=> b!593503 (= e!339034 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269435 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17720 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!593504 () Bool)

(declare-fun c!67133 () Bool)

(declare-fun lt!269487 () (_ BitVec 64))

(assert (=> b!593504 (= c!67133 (= lt!269487 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!339032 () SeekEntryResult!6167)

(assert (=> b!593504 (= e!339032 e!339034)))

(declare-fun b!593505 () Bool)

(assert (=> b!593505 (= e!339032 (Found!6167 lt!269435))))

(declare-fun b!593506 () Bool)

(declare-fun e!339033 () SeekEntryResult!6167)

(assert (=> b!593506 (= e!339033 Undefined!6167)))

(declare-fun b!593507 () Bool)

(assert (=> b!593507 (= e!339033 e!339032)))

(declare-fun c!67132 () Bool)

(assert (=> b!593507 (= c!67132 (= lt!269487 (select (arr!17720 a!2986) j!136)))))

(declare-fun d!86357 () Bool)

(declare-fun lt!269488 () SeekEntryResult!6167)

(assert (=> d!86357 (and (or (is-Undefined!6167 lt!269488) (not (is-Found!6167 lt!269488)) (and (bvsge (index!26910 lt!269488) #b00000000000000000000000000000000) (bvslt (index!26910 lt!269488) (size!18084 a!2986)))) (or (is-Undefined!6167 lt!269488) (is-Found!6167 lt!269488) (not (is-MissingVacant!6167 lt!269488)) (not (= (index!26912 lt!269488) vacantSpotIndex!68)) (and (bvsge (index!26912 lt!269488) #b00000000000000000000000000000000) (bvslt (index!26912 lt!269488) (size!18084 a!2986)))) (or (is-Undefined!6167 lt!269488) (ite (is-Found!6167 lt!269488) (= (select (arr!17720 a!2986) (index!26910 lt!269488)) (select (arr!17720 a!2986) j!136)) (and (is-MissingVacant!6167 lt!269488) (= (index!26912 lt!269488) vacantSpotIndex!68) (= (select (arr!17720 a!2986) (index!26912 lt!269488)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86357 (= lt!269488 e!339033)))

(declare-fun c!67131 () Bool)

(assert (=> d!86357 (= c!67131 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86357 (= lt!269487 (select (arr!17720 a!2986) lt!269435))))

(assert (=> d!86357 (validMask!0 mask!3053)))

(assert (=> d!86357 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269435 vacantSpotIndex!68 (select (arr!17720 a!2986) j!136) a!2986 mask!3053) lt!269488)))

(assert (= (and d!86357 c!67131) b!593506))

(assert (= (and d!86357 (not c!67131)) b!593507))

(assert (= (and b!593507 c!67132) b!593505))

(assert (= (and b!593507 (not c!67132)) b!593504))

(assert (= (and b!593504 c!67133) b!593502))

(assert (= (and b!593504 (not c!67133)) b!593503))

(assert (=> b!593503 m!571473))

