; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56126 () Bool)

(assert start!56126)

(declare-fun b!619514 () Bool)

(declare-datatypes ((Unit!20510 0))(
  ( (Unit!20511) )
))
(declare-fun e!355311 () Unit!20510)

(declare-fun Unit!20512 () Unit!20510)

(assert (=> b!619514 (= e!355311 Unit!20512)))

(assert (=> b!619514 false))

(declare-fun b!619515 () Bool)

(declare-fun Unit!20513 () Unit!20510)

(assert (=> b!619515 (= e!355311 Unit!20513)))

(declare-fun b!619516 () Bool)

(declare-fun e!355309 () Bool)

(declare-fun e!355316 () Bool)

(assert (=> b!619516 (= e!355309 e!355316)))

(declare-fun res!399296 () Bool)

(assert (=> b!619516 (=> (not res!399296) (not e!355316))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37559 0))(
  ( (array!37560 (arr!18022 (Array (_ BitVec 32) (_ BitVec 64))) (size!18386 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37559)

(assert (=> b!619516 (= res!399296 (= (select (store (arr!18022 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!286098 () array!37559)

(assert (=> b!619516 (= lt!286098 (array!37560 (store (arr!18022 a!2986) i!1108 k0!1786) (size!18386 a!2986)))))

(declare-fun b!619517 () Bool)

(declare-fun e!355319 () Bool)

(declare-fun e!355320 () Bool)

(assert (=> b!619517 (= e!355319 (not e!355320))))

(declare-fun res!399282 () Bool)

(assert (=> b!619517 (=> res!399282 e!355320)))

(declare-datatypes ((SeekEntryResult!6469 0))(
  ( (MissingZero!6469 (index!28159 (_ BitVec 32))) (Found!6469 (index!28160 (_ BitVec 32))) (Intermediate!6469 (undefined!7281 Bool) (index!28161 (_ BitVec 32)) (x!56966 (_ BitVec 32))) (Undefined!6469) (MissingVacant!6469 (index!28162 (_ BitVec 32))) )
))
(declare-fun lt!286106 () SeekEntryResult!6469)

(assert (=> b!619517 (= res!399282 (not (= lt!286106 (MissingVacant!6469 vacantSpotIndex!68))))))

(declare-fun lt!286115 () Unit!20510)

(declare-fun e!355313 () Unit!20510)

(assert (=> b!619517 (= lt!286115 e!355313)))

(declare-fun c!70484 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!619517 (= c!70484 (= lt!286106 (Found!6469 index!984)))))

(declare-fun lt!286112 () Unit!20510)

(assert (=> b!619517 (= lt!286112 e!355311)))

(declare-fun c!70485 () Bool)

(assert (=> b!619517 (= c!70485 (= lt!286106 Undefined!6469))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!286109 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37559 (_ BitVec 32)) SeekEntryResult!6469)

(assert (=> b!619517 (= lt!286106 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286109 lt!286098 mask!3053))))

(declare-fun e!355312 () Bool)

(assert (=> b!619517 e!355312))

(declare-fun res!399285 () Bool)

(assert (=> b!619517 (=> (not res!399285) (not e!355312))))

(declare-fun lt!286114 () (_ BitVec 32))

(declare-fun lt!286104 () SeekEntryResult!6469)

(assert (=> b!619517 (= res!399285 (= lt!286104 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286114 vacantSpotIndex!68 lt!286109 lt!286098 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!619517 (= lt!286104 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286114 vacantSpotIndex!68 (select (arr!18022 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!619517 (= lt!286109 (select (store (arr!18022 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!286105 () Unit!20510)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37559 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20510)

(assert (=> b!619517 (= lt!286105 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286114 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!619517 (= lt!286114 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!619518 () Bool)

(assert (=> b!619518 (= e!355316 e!355319)))

(declare-fun res!399288 () Bool)

(assert (=> b!619518 (=> (not res!399288) (not e!355319))))

(declare-fun lt!286102 () SeekEntryResult!6469)

(assert (=> b!619518 (= res!399288 (and (= lt!286102 (Found!6469 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18022 a!2986) index!984) (select (arr!18022 a!2986) j!136))) (not (= (select (arr!18022 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!619518 (= lt!286102 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18022 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!619519 () Bool)

(declare-fun res!399284 () Bool)

(declare-fun arrayContainsKey!0 (array!37559 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!619519 (= res!399284 (arrayContainsKey!0 lt!286098 (select (arr!18022 a!2986) j!136) j!136))))

(declare-fun e!355308 () Bool)

(assert (=> b!619519 (=> (not res!399284) (not e!355308))))

(declare-fun e!355317 () Bool)

(assert (=> b!619519 (= e!355317 e!355308)))

(declare-fun b!619520 () Bool)

(declare-fun e!355307 () Unit!20510)

(declare-fun Unit!20514 () Unit!20510)

(assert (=> b!619520 (= e!355307 Unit!20514)))

(declare-fun b!619521 () Bool)

(declare-fun e!355315 () Unit!20510)

(declare-fun Unit!20515 () Unit!20510)

(assert (=> b!619521 (= e!355315 Unit!20515)))

(declare-fun b!619522 () Bool)

(declare-fun res!399293 () Bool)

(assert (=> b!619522 (=> (not res!399293) (not e!355309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37559 (_ BitVec 32)) Bool)

(assert (=> b!619522 (= res!399293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!619523 () Bool)

(declare-fun res!399292 () Bool)

(assert (=> b!619523 (=> (not res!399292) (not e!355309))))

(declare-datatypes ((List!12116 0))(
  ( (Nil!12113) (Cons!12112 (h!13157 (_ BitVec 64)) (t!18352 List!12116)) )
))
(declare-fun arrayNoDuplicates!0 (array!37559 (_ BitVec 32) List!12116) Bool)

(assert (=> b!619523 (= res!399292 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12113))))

(declare-fun res!399286 () Bool)

(declare-fun e!355318 () Bool)

(assert (=> start!56126 (=> (not res!399286) (not e!355318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56126 (= res!399286 (validMask!0 mask!3053))))

(assert (=> start!56126 e!355318))

(assert (=> start!56126 true))

(declare-fun array_inv!13796 (array!37559) Bool)

(assert (=> start!56126 (array_inv!13796 a!2986)))

(declare-fun b!619524 () Bool)

(assert (=> b!619524 false))

(declare-fun lt!286110 () Unit!20510)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37559 (_ BitVec 64) (_ BitVec 32) List!12116) Unit!20510)

(assert (=> b!619524 (= lt!286110 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286098 (select (arr!18022 a!2986) j!136) index!984 Nil!12113))))

(assert (=> b!619524 (arrayNoDuplicates!0 lt!286098 index!984 Nil!12113)))

(declare-fun lt!286100 () Unit!20510)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37559 (_ BitVec 32) (_ BitVec 32)) Unit!20510)

(assert (=> b!619524 (= lt!286100 (lemmaNoDuplicateFromThenFromBigger!0 lt!286098 #b00000000000000000000000000000000 index!984))))

(assert (=> b!619524 (arrayNoDuplicates!0 lt!286098 #b00000000000000000000000000000000 Nil!12113)))

(declare-fun lt!286097 () Unit!20510)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37559 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12116) Unit!20510)

(assert (=> b!619524 (= lt!286097 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12113))))

(assert (=> b!619524 (arrayContainsKey!0 lt!286098 (select (arr!18022 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286111 () Unit!20510)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37559 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20510)

(assert (=> b!619524 (= lt!286111 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286098 (select (arr!18022 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!355321 () Bool)

(assert (=> b!619524 e!355321))

(declare-fun res!399283 () Bool)

(assert (=> b!619524 (=> (not res!399283) (not e!355321))))

(assert (=> b!619524 (= res!399283 (arrayContainsKey!0 lt!286098 (select (arr!18022 a!2986) j!136) j!136))))

(declare-fun Unit!20516 () Unit!20510)

(assert (=> b!619524 (= e!355307 Unit!20516)))

(declare-fun b!619525 () Bool)

(assert (=> b!619525 (= e!355318 e!355309)))

(declare-fun res!399294 () Bool)

(assert (=> b!619525 (=> (not res!399294) (not e!355309))))

(declare-fun lt!286103 () SeekEntryResult!6469)

(assert (=> b!619525 (= res!399294 (or (= lt!286103 (MissingZero!6469 i!1108)) (= lt!286103 (MissingVacant!6469 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37559 (_ BitVec 32)) SeekEntryResult!6469)

(assert (=> b!619525 (= lt!286103 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!619526 () Bool)

(declare-fun Unit!20517 () Unit!20510)

(assert (=> b!619526 (= e!355313 Unit!20517)))

(declare-fun res!399289 () Bool)

(assert (=> b!619526 (= res!399289 (= (select (store (arr!18022 a!2986) i!1108 k0!1786) index!984) (select (arr!18022 a!2986) j!136)))))

(declare-fun e!355310 () Bool)

(assert (=> b!619526 (=> (not res!399289) (not e!355310))))

(assert (=> b!619526 e!355310))

(declare-fun c!70486 () Bool)

(assert (=> b!619526 (= c!70486 (bvslt j!136 index!984))))

(declare-fun lt!286107 () Unit!20510)

(assert (=> b!619526 (= lt!286107 e!355315)))

(declare-fun c!70487 () Bool)

(assert (=> b!619526 (= c!70487 (bvslt index!984 j!136))))

(declare-fun lt!286108 () Unit!20510)

(assert (=> b!619526 (= lt!286108 e!355307)))

(assert (=> b!619526 false))

(declare-fun b!619527 () Bool)

(declare-fun res!399280 () Bool)

(assert (=> b!619527 (=> (not res!399280) (not e!355318))))

(assert (=> b!619527 (= res!399280 (and (= (size!18386 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18386 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18386 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!619528 () Bool)

(assert (=> b!619528 false))

(declare-fun lt!286116 () Unit!20510)

(assert (=> b!619528 (= lt!286116 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286098 (select (arr!18022 a!2986) j!136) j!136 Nil!12113))))

(assert (=> b!619528 (arrayNoDuplicates!0 lt!286098 j!136 Nil!12113)))

(declare-fun lt!286099 () Unit!20510)

(assert (=> b!619528 (= lt!286099 (lemmaNoDuplicateFromThenFromBigger!0 lt!286098 #b00000000000000000000000000000000 j!136))))

(assert (=> b!619528 (arrayNoDuplicates!0 lt!286098 #b00000000000000000000000000000000 Nil!12113)))

(declare-fun lt!286101 () Unit!20510)

(assert (=> b!619528 (= lt!286101 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12113))))

(assert (=> b!619528 (arrayContainsKey!0 lt!286098 (select (arr!18022 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286113 () Unit!20510)

(assert (=> b!619528 (= lt!286113 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286098 (select (arr!18022 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20518 () Unit!20510)

(assert (=> b!619528 (= e!355315 Unit!20518)))

(declare-fun b!619529 () Bool)

(declare-fun res!399287 () Bool)

(assert (=> b!619529 (=> (not res!399287) (not e!355309))))

(assert (=> b!619529 (= res!399287 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18022 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!619530 () Bool)

(declare-fun res!399281 () Bool)

(assert (=> b!619530 (=> (not res!399281) (not e!355318))))

(assert (=> b!619530 (= res!399281 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!619531 () Bool)

(declare-fun res!399290 () Bool)

(assert (=> b!619531 (= res!399290 (bvsge j!136 index!984))))

(assert (=> b!619531 (=> res!399290 e!355317)))

(assert (=> b!619531 (= e!355310 e!355317)))

(declare-fun b!619532 () Bool)

(declare-fun Unit!20519 () Unit!20510)

(assert (=> b!619532 (= e!355313 Unit!20519)))

(declare-fun b!619533 () Bool)

(assert (=> b!619533 (= e!355321 (arrayContainsKey!0 lt!286098 (select (arr!18022 a!2986) j!136) index!984))))

(declare-fun b!619534 () Bool)

(assert (=> b!619534 (= e!355312 (= lt!286102 lt!286104))))

(declare-fun b!619535 () Bool)

(declare-fun res!399295 () Bool)

(assert (=> b!619535 (=> (not res!399295) (not e!355318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!619535 (= res!399295 (validKeyInArray!0 k0!1786))))

(declare-fun b!619536 () Bool)

(assert (=> b!619536 (= e!355308 (arrayContainsKey!0 lt!286098 (select (arr!18022 a!2986) j!136) index!984))))

(declare-fun b!619537 () Bool)

(declare-fun res!399291 () Bool)

(assert (=> b!619537 (=> (not res!399291) (not e!355318))))

(assert (=> b!619537 (= res!399291 (validKeyInArray!0 (select (arr!18022 a!2986) j!136)))))

(declare-fun b!619538 () Bool)

(assert (=> b!619538 (= e!355320 true)))

(assert (=> b!619538 (= (select (store (arr!18022 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (= (and start!56126 res!399286) b!619527))

(assert (= (and b!619527 res!399280) b!619537))

(assert (= (and b!619537 res!399291) b!619535))

(assert (= (and b!619535 res!399295) b!619530))

(assert (= (and b!619530 res!399281) b!619525))

(assert (= (and b!619525 res!399294) b!619522))

(assert (= (and b!619522 res!399293) b!619523))

(assert (= (and b!619523 res!399292) b!619529))

(assert (= (and b!619529 res!399287) b!619516))

(assert (= (and b!619516 res!399296) b!619518))

(assert (= (and b!619518 res!399288) b!619517))

(assert (= (and b!619517 res!399285) b!619534))

(assert (= (and b!619517 c!70485) b!619514))

(assert (= (and b!619517 (not c!70485)) b!619515))

(assert (= (and b!619517 c!70484) b!619526))

(assert (= (and b!619517 (not c!70484)) b!619532))

(assert (= (and b!619526 res!399289) b!619531))

(assert (= (and b!619531 (not res!399290)) b!619519))

(assert (= (and b!619519 res!399284) b!619536))

(assert (= (and b!619526 c!70486) b!619528))

(assert (= (and b!619526 (not c!70486)) b!619521))

(assert (= (and b!619526 c!70487) b!619524))

(assert (= (and b!619526 (not c!70487)) b!619520))

(assert (= (and b!619524 res!399283) b!619533))

(assert (= (and b!619517 (not res!399282)) b!619538))

(declare-fun m!595519 () Bool)

(assert (=> b!619526 m!595519))

(declare-fun m!595521 () Bool)

(assert (=> b!619526 m!595521))

(declare-fun m!595523 () Bool)

(assert (=> b!619526 m!595523))

(assert (=> b!619536 m!595523))

(assert (=> b!619536 m!595523))

(declare-fun m!595525 () Bool)

(assert (=> b!619536 m!595525))

(declare-fun m!595527 () Bool)

(assert (=> start!56126 m!595527))

(declare-fun m!595529 () Bool)

(assert (=> start!56126 m!595529))

(declare-fun m!595531 () Bool)

(assert (=> b!619522 m!595531))

(declare-fun m!595533 () Bool)

(assert (=> b!619529 m!595533))

(assert (=> b!619533 m!595523))

(assert (=> b!619533 m!595523))

(assert (=> b!619533 m!595525))

(assert (=> b!619538 m!595519))

(assert (=> b!619538 m!595521))

(assert (=> b!619516 m!595519))

(declare-fun m!595535 () Bool)

(assert (=> b!619516 m!595535))

(assert (=> b!619524 m!595523))

(declare-fun m!595537 () Bool)

(assert (=> b!619524 m!595537))

(assert (=> b!619524 m!595523))

(declare-fun m!595539 () Bool)

(assert (=> b!619524 m!595539))

(assert (=> b!619524 m!595523))

(declare-fun m!595541 () Bool)

(assert (=> b!619524 m!595541))

(declare-fun m!595543 () Bool)

(assert (=> b!619524 m!595543))

(declare-fun m!595545 () Bool)

(assert (=> b!619524 m!595545))

(assert (=> b!619524 m!595523))

(declare-fun m!595547 () Bool)

(assert (=> b!619524 m!595547))

(assert (=> b!619524 m!595523))

(declare-fun m!595549 () Bool)

(assert (=> b!619524 m!595549))

(declare-fun m!595551 () Bool)

(assert (=> b!619524 m!595551))

(declare-fun m!595553 () Bool)

(assert (=> b!619518 m!595553))

(assert (=> b!619518 m!595523))

(assert (=> b!619518 m!595523))

(declare-fun m!595555 () Bool)

(assert (=> b!619518 m!595555))

(declare-fun m!595557 () Bool)

(assert (=> b!619523 m!595557))

(declare-fun m!595559 () Bool)

(assert (=> b!619517 m!595559))

(declare-fun m!595561 () Bool)

(assert (=> b!619517 m!595561))

(assert (=> b!619517 m!595523))

(assert (=> b!619517 m!595519))

(declare-fun m!595563 () Bool)

(assert (=> b!619517 m!595563))

(assert (=> b!619517 m!595523))

(declare-fun m!595565 () Bool)

(assert (=> b!619517 m!595565))

(declare-fun m!595567 () Bool)

(assert (=> b!619517 m!595567))

(declare-fun m!595569 () Bool)

(assert (=> b!619517 m!595569))

(assert (=> b!619528 m!595523))

(declare-fun m!595571 () Bool)

(assert (=> b!619528 m!595571))

(assert (=> b!619528 m!595545))

(assert (=> b!619528 m!595523))

(declare-fun m!595573 () Bool)

(assert (=> b!619528 m!595573))

(declare-fun m!595575 () Bool)

(assert (=> b!619528 m!595575))

(assert (=> b!619528 m!595551))

(assert (=> b!619528 m!595523))

(declare-fun m!595577 () Bool)

(assert (=> b!619528 m!595577))

(assert (=> b!619528 m!595523))

(declare-fun m!595579 () Bool)

(assert (=> b!619528 m!595579))

(assert (=> b!619537 m!595523))

(assert (=> b!619537 m!595523))

(declare-fun m!595581 () Bool)

(assert (=> b!619537 m!595581))

(declare-fun m!595583 () Bool)

(assert (=> b!619535 m!595583))

(declare-fun m!595585 () Bool)

(assert (=> b!619530 m!595585))

(declare-fun m!595587 () Bool)

(assert (=> b!619525 m!595587))

(assert (=> b!619519 m!595523))

(assert (=> b!619519 m!595523))

(assert (=> b!619519 m!595547))

(check-sat (not b!619536) (not b!619517) (not b!619525) (not b!619524) (not b!619528) (not b!619519) (not b!619530) (not b!619535) (not start!56126) (not b!619523) (not b!619518) (not b!619537) (not b!619522) (not b!619533))
(check-sat)
