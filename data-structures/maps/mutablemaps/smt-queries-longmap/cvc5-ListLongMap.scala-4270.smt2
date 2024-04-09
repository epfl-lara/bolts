; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59376 () Bool)

(assert start!59376)

(declare-fun b!655314 () Bool)

(declare-fun res!425194 () Bool)

(declare-fun e!376346 () Bool)

(assert (=> b!655314 (=> (not res!425194) (not e!376346))))

(declare-datatypes ((array!38652 0))(
  ( (array!38653 (arr!18522 (Array (_ BitVec 32) (_ BitVec 64))) (size!18886 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38652)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!655314 (= res!425194 (validKeyInArray!0 (select (arr!18522 a!2986) j!136)))))

(declare-fun b!655315 () Bool)

(assert (=> b!655315 false))

(declare-datatypes ((Unit!22534 0))(
  ( (Unit!22535) )
))
(declare-fun lt!305705 () Unit!22534)

(declare-fun lt!305714 () array!38652)

(declare-datatypes ((List!12616 0))(
  ( (Nil!12613) (Cons!12612 (h!13657 (_ BitVec 64)) (t!18852 List!12616)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38652 (_ BitVec 64) (_ BitVec 32) List!12616) Unit!22534)

(assert (=> b!655315 (= lt!305705 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305714 (select (arr!18522 a!2986) j!136) j!136 Nil!12613))))

(declare-fun arrayNoDuplicates!0 (array!38652 (_ BitVec 32) List!12616) Bool)

(assert (=> b!655315 (arrayNoDuplicates!0 lt!305714 j!136 Nil!12613)))

(declare-fun lt!305710 () Unit!22534)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38652 (_ BitVec 32) (_ BitVec 32)) Unit!22534)

(assert (=> b!655315 (= lt!305710 (lemmaNoDuplicateFromThenFromBigger!0 lt!305714 #b00000000000000000000000000000000 j!136))))

(assert (=> b!655315 (arrayNoDuplicates!0 lt!305714 #b00000000000000000000000000000000 Nil!12613)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!305709 () Unit!22534)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38652 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12616) Unit!22534)

(assert (=> b!655315 (= lt!305709 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12613))))

(declare-fun arrayContainsKey!0 (array!38652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!655315 (arrayContainsKey!0 lt!305714 (select (arr!18522 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305721 () Unit!22534)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38652 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22534)

(assert (=> b!655315 (= lt!305721 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305714 (select (arr!18522 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!376352 () Unit!22534)

(declare-fun Unit!22536 () Unit!22534)

(assert (=> b!655315 (= e!376352 Unit!22536)))

(declare-fun b!655316 () Bool)

(declare-fun res!425201 () Bool)

(assert (=> b!655316 (=> (not res!425201) (not e!376346))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!655316 (= res!425201 (and (= (size!18886 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18886 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18886 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!655317 () Bool)

(declare-fun res!425206 () Bool)

(declare-fun e!376351 () Bool)

(assert (=> b!655317 (=> (not res!425206) (not e!376351))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!655317 (= res!425206 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18522 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!655318 () Bool)

(declare-fun e!376344 () Bool)

(assert (=> b!655318 (= e!376351 e!376344)))

(declare-fun res!425196 () Bool)

(assert (=> b!655318 (=> (not res!425196) (not e!376344))))

(assert (=> b!655318 (= res!425196 (= (select (store (arr!18522 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655318 (= lt!305714 (array!38653 (store (arr!18522 a!2986) i!1108 k!1786) (size!18886 a!2986)))))

(declare-fun b!655319 () Bool)

(declare-fun e!376356 () Unit!22534)

(declare-fun Unit!22537 () Unit!22534)

(assert (=> b!655319 (= e!376356 Unit!22537)))

(declare-fun b!655320 () Bool)

(declare-fun e!376350 () Bool)

(assert (=> b!655320 (= e!376350 (not true))))

(declare-fun lt!305712 () Unit!22534)

(declare-fun e!376348 () Unit!22534)

(assert (=> b!655320 (= lt!305712 e!376348)))

(declare-fun c!75429 () Bool)

(declare-datatypes ((SeekEntryResult!6969 0))(
  ( (MissingZero!6969 (index!30234 (_ BitVec 32))) (Found!6969 (index!30235 (_ BitVec 32))) (Intermediate!6969 (undefined!7781 Bool) (index!30236 (_ BitVec 32)) (x!59051 (_ BitVec 32))) (Undefined!6969) (MissingVacant!6969 (index!30237 (_ BitVec 32))) )
))
(declare-fun lt!305711 () SeekEntryResult!6969)

(assert (=> b!655320 (= c!75429 (= lt!305711 (Found!6969 index!984)))))

(declare-fun lt!305706 () Unit!22534)

(assert (=> b!655320 (= lt!305706 e!376356)))

(declare-fun c!75428 () Bool)

(assert (=> b!655320 (= c!75428 (= lt!305711 Undefined!6969))))

(declare-fun lt!305707 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38652 (_ BitVec 32)) SeekEntryResult!6969)

(assert (=> b!655320 (= lt!305711 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305707 lt!305714 mask!3053))))

(declare-fun e!376357 () Bool)

(assert (=> b!655320 e!376357))

(declare-fun res!425200 () Bool)

(assert (=> b!655320 (=> (not res!425200) (not e!376357))))

(declare-fun lt!305715 () SeekEntryResult!6969)

(declare-fun lt!305718 () (_ BitVec 32))

(assert (=> b!655320 (= res!425200 (= lt!305715 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305718 vacantSpotIndex!68 lt!305707 lt!305714 mask!3053)))))

(assert (=> b!655320 (= lt!305715 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305718 vacantSpotIndex!68 (select (arr!18522 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!655320 (= lt!305707 (select (store (arr!18522 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!305702 () Unit!22534)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38652 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22534)

(assert (=> b!655320 (= lt!305702 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305718 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!655320 (= lt!305718 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!655321 () Bool)

(declare-fun Unit!22538 () Unit!22534)

(assert (=> b!655321 (= e!376348 Unit!22538)))

(declare-fun res!425192 () Bool)

(assert (=> b!655321 (= res!425192 (= (select (store (arr!18522 a!2986) i!1108 k!1786) index!984) (select (arr!18522 a!2986) j!136)))))

(declare-fun e!376353 () Bool)

(assert (=> b!655321 (=> (not res!425192) (not e!376353))))

(assert (=> b!655321 e!376353))

(declare-fun c!75430 () Bool)

(assert (=> b!655321 (= c!75430 (bvslt j!136 index!984))))

(declare-fun lt!305713 () Unit!22534)

(assert (=> b!655321 (= lt!305713 e!376352)))

(declare-fun c!75431 () Bool)

(assert (=> b!655321 (= c!75431 (bvslt index!984 j!136))))

(declare-fun lt!305704 () Unit!22534)

(declare-fun e!376355 () Unit!22534)

(assert (=> b!655321 (= lt!305704 e!376355)))

(assert (=> b!655321 false))

(declare-fun b!655322 () Bool)

(assert (=> b!655322 false))

(declare-fun lt!305708 () Unit!22534)

(assert (=> b!655322 (= lt!305708 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305714 (select (arr!18522 a!2986) j!136) index!984 Nil!12613))))

(assert (=> b!655322 (arrayNoDuplicates!0 lt!305714 index!984 Nil!12613)))

(declare-fun lt!305703 () Unit!22534)

(assert (=> b!655322 (= lt!305703 (lemmaNoDuplicateFromThenFromBigger!0 lt!305714 #b00000000000000000000000000000000 index!984))))

(assert (=> b!655322 (arrayNoDuplicates!0 lt!305714 #b00000000000000000000000000000000 Nil!12613)))

(declare-fun lt!305720 () Unit!22534)

(assert (=> b!655322 (= lt!305720 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12613))))

(assert (=> b!655322 (arrayContainsKey!0 lt!305714 (select (arr!18522 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305716 () Unit!22534)

(assert (=> b!655322 (= lt!305716 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305714 (select (arr!18522 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!376349 () Bool)

(assert (=> b!655322 e!376349))

(declare-fun res!425203 () Bool)

(assert (=> b!655322 (=> (not res!425203) (not e!376349))))

(assert (=> b!655322 (= res!425203 (arrayContainsKey!0 lt!305714 (select (arr!18522 a!2986) j!136) j!136))))

(declare-fun Unit!22539 () Unit!22534)

(assert (=> b!655322 (= e!376355 Unit!22539)))

(declare-fun b!655323 () Bool)

(declare-fun res!425202 () Bool)

(assert (=> b!655323 (=> (not res!425202) (not e!376351))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38652 (_ BitVec 32)) Bool)

(assert (=> b!655323 (= res!425202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!655324 () Bool)

(assert (=> b!655324 (= e!376349 (arrayContainsKey!0 lt!305714 (select (arr!18522 a!2986) j!136) index!984))))

(declare-fun b!655325 () Bool)

(declare-fun Unit!22540 () Unit!22534)

(assert (=> b!655325 (= e!376352 Unit!22540)))

(declare-fun b!655326 () Bool)

(declare-fun res!425197 () Bool)

(assert (=> b!655326 (=> (not res!425197) (not e!376346))))

(assert (=> b!655326 (= res!425197 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!655327 () Bool)

(declare-fun lt!305719 () SeekEntryResult!6969)

(assert (=> b!655327 (= e!376357 (= lt!305719 lt!305715))))

(declare-fun b!655328 () Bool)

(declare-fun res!425193 () Bool)

(assert (=> b!655328 (= res!425193 (bvsge j!136 index!984))))

(declare-fun e!376354 () Bool)

(assert (=> b!655328 (=> res!425193 e!376354)))

(assert (=> b!655328 (= e!376353 e!376354)))

(declare-fun b!655329 () Bool)

(declare-fun res!425204 () Bool)

(assert (=> b!655329 (=> (not res!425204) (not e!376351))))

(assert (=> b!655329 (= res!425204 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12613))))

(declare-fun b!655330 () Bool)

(declare-fun Unit!22541 () Unit!22534)

(assert (=> b!655330 (= e!376356 Unit!22541)))

(assert (=> b!655330 false))

(declare-fun e!376345 () Bool)

(declare-fun b!655331 () Bool)

(assert (=> b!655331 (= e!376345 (arrayContainsKey!0 lt!305714 (select (arr!18522 a!2986) j!136) index!984))))

(declare-fun res!425205 () Bool)

(assert (=> start!59376 (=> (not res!425205) (not e!376346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59376 (= res!425205 (validMask!0 mask!3053))))

(assert (=> start!59376 e!376346))

(assert (=> start!59376 true))

(declare-fun array_inv!14296 (array!38652) Bool)

(assert (=> start!59376 (array_inv!14296 a!2986)))

(declare-fun b!655332 () Bool)

(assert (=> b!655332 (= e!376346 e!376351)))

(declare-fun res!425198 () Bool)

(assert (=> b!655332 (=> (not res!425198) (not e!376351))))

(declare-fun lt!305717 () SeekEntryResult!6969)

(assert (=> b!655332 (= res!425198 (or (= lt!305717 (MissingZero!6969 i!1108)) (= lt!305717 (MissingVacant!6969 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38652 (_ BitVec 32)) SeekEntryResult!6969)

(assert (=> b!655332 (= lt!305717 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!425207 () Bool)

(declare-fun b!655333 () Bool)

(assert (=> b!655333 (= res!425207 (arrayContainsKey!0 lt!305714 (select (arr!18522 a!2986) j!136) j!136))))

(assert (=> b!655333 (=> (not res!425207) (not e!376345))))

(assert (=> b!655333 (= e!376354 e!376345)))

(declare-fun b!655334 () Bool)

(declare-fun Unit!22542 () Unit!22534)

(assert (=> b!655334 (= e!376355 Unit!22542)))

(declare-fun b!655335 () Bool)

(declare-fun Unit!22543 () Unit!22534)

(assert (=> b!655335 (= e!376348 Unit!22543)))

(declare-fun b!655336 () Bool)

(declare-fun res!425195 () Bool)

(assert (=> b!655336 (=> (not res!425195) (not e!376346))))

(assert (=> b!655336 (= res!425195 (validKeyInArray!0 k!1786))))

(declare-fun b!655337 () Bool)

(assert (=> b!655337 (= e!376344 e!376350)))

(declare-fun res!425199 () Bool)

(assert (=> b!655337 (=> (not res!425199) (not e!376350))))

(assert (=> b!655337 (= res!425199 (and (= lt!305719 (Found!6969 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18522 a!2986) index!984) (select (arr!18522 a!2986) j!136))) (not (= (select (arr!18522 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!655337 (= lt!305719 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18522 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!59376 res!425205) b!655316))

(assert (= (and b!655316 res!425201) b!655314))

(assert (= (and b!655314 res!425194) b!655336))

(assert (= (and b!655336 res!425195) b!655326))

(assert (= (and b!655326 res!425197) b!655332))

(assert (= (and b!655332 res!425198) b!655323))

(assert (= (and b!655323 res!425202) b!655329))

(assert (= (and b!655329 res!425204) b!655317))

(assert (= (and b!655317 res!425206) b!655318))

(assert (= (and b!655318 res!425196) b!655337))

(assert (= (and b!655337 res!425199) b!655320))

(assert (= (and b!655320 res!425200) b!655327))

(assert (= (and b!655320 c!75428) b!655330))

(assert (= (and b!655320 (not c!75428)) b!655319))

(assert (= (and b!655320 c!75429) b!655321))

(assert (= (and b!655320 (not c!75429)) b!655335))

(assert (= (and b!655321 res!425192) b!655328))

(assert (= (and b!655328 (not res!425193)) b!655333))

(assert (= (and b!655333 res!425207) b!655331))

(assert (= (and b!655321 c!75430) b!655315))

(assert (= (and b!655321 (not c!75430)) b!655325))

(assert (= (and b!655321 c!75431) b!655322))

(assert (= (and b!655321 (not c!75431)) b!655334))

(assert (= (and b!655322 res!425203) b!655324))

(declare-fun m!628461 () Bool)

(assert (=> start!59376 m!628461))

(declare-fun m!628463 () Bool)

(assert (=> start!59376 m!628463))

(declare-fun m!628465 () Bool)

(assert (=> b!655324 m!628465))

(assert (=> b!655324 m!628465))

(declare-fun m!628467 () Bool)

(assert (=> b!655324 m!628467))

(assert (=> b!655314 m!628465))

(assert (=> b!655314 m!628465))

(declare-fun m!628469 () Bool)

(assert (=> b!655314 m!628469))

(declare-fun m!628471 () Bool)

(assert (=> b!655321 m!628471))

(declare-fun m!628473 () Bool)

(assert (=> b!655321 m!628473))

(assert (=> b!655321 m!628465))

(declare-fun m!628475 () Bool)

(assert (=> b!655317 m!628475))

(declare-fun m!628477 () Bool)

(assert (=> b!655315 m!628477))

(declare-fun m!628479 () Bool)

(assert (=> b!655315 m!628479))

(assert (=> b!655315 m!628465))

(assert (=> b!655315 m!628465))

(declare-fun m!628481 () Bool)

(assert (=> b!655315 m!628481))

(assert (=> b!655315 m!628465))

(declare-fun m!628483 () Bool)

(assert (=> b!655315 m!628483))

(declare-fun m!628485 () Bool)

(assert (=> b!655315 m!628485))

(declare-fun m!628487 () Bool)

(assert (=> b!655315 m!628487))

(assert (=> b!655315 m!628465))

(declare-fun m!628489 () Bool)

(assert (=> b!655315 m!628489))

(assert (=> b!655322 m!628477))

(declare-fun m!628491 () Bool)

(assert (=> b!655322 m!628491))

(assert (=> b!655322 m!628485))

(assert (=> b!655322 m!628465))

(assert (=> b!655322 m!628465))

(declare-fun m!628493 () Bool)

(assert (=> b!655322 m!628493))

(declare-fun m!628495 () Bool)

(assert (=> b!655322 m!628495))

(assert (=> b!655322 m!628465))

(declare-fun m!628497 () Bool)

(assert (=> b!655322 m!628497))

(assert (=> b!655322 m!628465))

(declare-fun m!628499 () Bool)

(assert (=> b!655322 m!628499))

(assert (=> b!655322 m!628465))

(declare-fun m!628501 () Bool)

(assert (=> b!655322 m!628501))

(declare-fun m!628503 () Bool)

(assert (=> b!655332 m!628503))

(assert (=> b!655318 m!628471))

(declare-fun m!628505 () Bool)

(assert (=> b!655318 m!628505))

(assert (=> b!655333 m!628465))

(assert (=> b!655333 m!628465))

(assert (=> b!655333 m!628499))

(declare-fun m!628507 () Bool)

(assert (=> b!655336 m!628507))

(declare-fun m!628509 () Bool)

(assert (=> b!655320 m!628509))

(assert (=> b!655320 m!628465))

(assert (=> b!655320 m!628471))

(declare-fun m!628511 () Bool)

(assert (=> b!655320 m!628511))

(declare-fun m!628513 () Bool)

(assert (=> b!655320 m!628513))

(declare-fun m!628515 () Bool)

(assert (=> b!655320 m!628515))

(assert (=> b!655320 m!628465))

(declare-fun m!628517 () Bool)

(assert (=> b!655320 m!628517))

(declare-fun m!628519 () Bool)

(assert (=> b!655320 m!628519))

(assert (=> b!655331 m!628465))

(assert (=> b!655331 m!628465))

(assert (=> b!655331 m!628467))

(declare-fun m!628521 () Bool)

(assert (=> b!655337 m!628521))

(assert (=> b!655337 m!628465))

(assert (=> b!655337 m!628465))

(declare-fun m!628523 () Bool)

(assert (=> b!655337 m!628523))

(declare-fun m!628525 () Bool)

(assert (=> b!655323 m!628525))

(declare-fun m!628527 () Bool)

(assert (=> b!655329 m!628527))

(declare-fun m!628529 () Bool)

(assert (=> b!655326 m!628529))

(push 1)

