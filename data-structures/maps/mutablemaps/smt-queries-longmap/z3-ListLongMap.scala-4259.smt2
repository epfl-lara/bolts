; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59126 () Bool)

(assert start!59126)

(declare-fun b!652213 () Bool)

(declare-fun e!374360 () Bool)

(declare-fun e!374353 () Bool)

(assert (=> b!652213 (= e!374360 e!374353)))

(declare-fun res!423076 () Bool)

(assert (=> b!652213 (=> res!423076 e!374353)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!303547 () (_ BitVec 64))

(declare-datatypes ((array!38582 0))(
  ( (array!38583 (arr!18490 (Array (_ BitVec 32) (_ BitVec 64))) (size!18854 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38582)

(declare-fun lt!303543 () (_ BitVec 64))

(assert (=> b!652213 (= res!423076 (or (not (= (select (arr!18490 a!2986) j!136) lt!303543)) (not (= (select (arr!18490 a!2986) j!136) lt!303547))))))

(declare-fun e!374348 () Bool)

(assert (=> b!652213 e!374348))

(declare-fun res!423073 () Bool)

(assert (=> b!652213 (=> (not res!423073) (not e!374348))))

(assert (=> b!652213 (= res!423073 (= lt!303547 (select (arr!18490 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!652213 (= lt!303547 (select (store (arr!18490 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!652214 () Bool)

(declare-fun res!423068 () Bool)

(declare-fun e!374352 () Bool)

(assert (=> b!652214 (=> (not res!423068) (not e!374352))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!652214 (= res!423068 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18490 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!652215 () Bool)

(declare-fun e!374350 () Bool)

(declare-fun e!374359 () Bool)

(assert (=> b!652215 (= e!374350 e!374359)))

(declare-fun res!423067 () Bool)

(assert (=> b!652215 (=> (not res!423067) (not e!374359))))

(declare-fun lt!303546 () array!38582)

(declare-fun arrayContainsKey!0 (array!38582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!652215 (= res!423067 (arrayContainsKey!0 lt!303546 (select (arr!18490 a!2986) j!136) j!136))))

(declare-fun b!652216 () Bool)

(declare-datatypes ((Unit!22294 0))(
  ( (Unit!22295) )
))
(declare-fun e!374354 () Unit!22294)

(declare-fun Unit!22296 () Unit!22294)

(assert (=> b!652216 (= e!374354 Unit!22296)))

(declare-fun res!423074 () Bool)

(declare-fun e!374358 () Bool)

(assert (=> start!59126 (=> (not res!423074) (not e!374358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59126 (= res!423074 (validMask!0 mask!3053))))

(assert (=> start!59126 e!374358))

(assert (=> start!59126 true))

(declare-fun array_inv!14264 (array!38582) Bool)

(assert (=> start!59126 (array_inv!14264 a!2986)))

(declare-fun b!652217 () Bool)

(declare-fun e!374355 () Bool)

(assert (=> b!652217 (= e!374355 (not e!374360))))

(declare-fun res!423063 () Bool)

(assert (=> b!652217 (=> res!423063 e!374360)))

(declare-datatypes ((SeekEntryResult!6937 0))(
  ( (MissingZero!6937 (index!30100 (_ BitVec 32))) (Found!6937 (index!30101 (_ BitVec 32))) (Intermediate!6937 (undefined!7749 Bool) (index!30102 (_ BitVec 32)) (x!58913 (_ BitVec 32))) (Undefined!6937) (MissingVacant!6937 (index!30103 (_ BitVec 32))) )
))
(declare-fun lt!303541 () SeekEntryResult!6937)

(assert (=> b!652217 (= res!423063 (not (= lt!303541 (Found!6937 index!984))))))

(declare-fun lt!303544 () Unit!22294)

(assert (=> b!652217 (= lt!303544 e!374354)))

(declare-fun c!74945 () Bool)

(assert (=> b!652217 (= c!74945 (= lt!303541 Undefined!6937))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38582 (_ BitVec 32)) SeekEntryResult!6937)

(assert (=> b!652217 (= lt!303541 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303543 lt!303546 mask!3053))))

(declare-fun e!374349 () Bool)

(assert (=> b!652217 e!374349))

(declare-fun res!423061 () Bool)

(assert (=> b!652217 (=> (not res!423061) (not e!374349))))

(declare-fun lt!303545 () (_ BitVec 32))

(declare-fun lt!303553 () SeekEntryResult!6937)

(assert (=> b!652217 (= res!423061 (= lt!303553 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303545 vacantSpotIndex!68 lt!303543 lt!303546 mask!3053)))))

(assert (=> b!652217 (= lt!303553 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303545 vacantSpotIndex!68 (select (arr!18490 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!652217 (= lt!303543 (select (store (arr!18490 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!303556 () Unit!22294)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38582 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22294)

(assert (=> b!652217 (= lt!303556 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303545 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!652217 (= lt!303545 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!652218 () Bool)

(declare-fun res!423075 () Bool)

(assert (=> b!652218 (=> (not res!423075) (not e!374352))))

(declare-datatypes ((List!12584 0))(
  ( (Nil!12581) (Cons!12580 (h!13625 (_ BitVec 64)) (t!18820 List!12584)) )
))
(declare-fun arrayNoDuplicates!0 (array!38582 (_ BitVec 32) List!12584) Bool)

(assert (=> b!652218 (= res!423075 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12581))))

(declare-fun b!652219 () Bool)

(declare-fun e!374361 () Unit!22294)

(declare-fun Unit!22297 () Unit!22294)

(assert (=> b!652219 (= e!374361 Unit!22297)))

(declare-fun b!652220 () Bool)

(declare-fun res!423060 () Bool)

(assert (=> b!652220 (=> (not res!423060) (not e!374358))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!652220 (= res!423060 (validKeyInArray!0 (select (arr!18490 a!2986) j!136)))))

(declare-fun b!652221 () Bool)

(assert (=> b!652221 (= e!374359 (arrayContainsKey!0 lt!303546 (select (arr!18490 a!2986) j!136) index!984))))

(declare-fun b!652222 () Bool)

(assert (=> b!652222 (= e!374348 e!374350)))

(declare-fun res!423070 () Bool)

(assert (=> b!652222 (=> res!423070 e!374350)))

(assert (=> b!652222 (= res!423070 (or (not (= (select (arr!18490 a!2986) j!136) lt!303543)) (not (= (select (arr!18490 a!2986) j!136) lt!303547)) (bvsge j!136 index!984)))))

(declare-fun b!652223 () Bool)

(declare-fun res!423062 () Bool)

(assert (=> b!652223 (=> (not res!423062) (not e!374358))))

(assert (=> b!652223 (= res!423062 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!652224 () Bool)

(declare-fun e!374351 () Bool)

(assert (=> b!652224 (= e!374351 e!374355)))

(declare-fun res!423065 () Bool)

(assert (=> b!652224 (=> (not res!423065) (not e!374355))))

(declare-fun lt!303558 () SeekEntryResult!6937)

(assert (=> b!652224 (= res!423065 (and (= lt!303558 (Found!6937 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18490 a!2986) index!984) (select (arr!18490 a!2986) j!136))) (not (= (select (arr!18490 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!652224 (= lt!303558 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18490 a!2986) j!136) a!2986 mask!3053))))

(declare-fun e!374356 () Bool)

(declare-fun b!652225 () Bool)

(assert (=> b!652225 (= e!374356 (arrayContainsKey!0 lt!303546 (select (arr!18490 a!2986) j!136) index!984))))

(declare-fun b!652226 () Bool)

(declare-fun e!374362 () Bool)

(assert (=> b!652226 (= e!374362 (or (bvsge (size!18854 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18854 a!2986)) (bvslt index!984 (size!18854 a!2986))))))

(assert (=> b!652226 (arrayNoDuplicates!0 lt!303546 index!984 Nil!12581)))

(declare-fun lt!303557 () Unit!22294)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38582 (_ BitVec 32) (_ BitVec 32)) Unit!22294)

(assert (=> b!652226 (= lt!303557 (lemmaNoDuplicateFromThenFromBigger!0 lt!303546 #b00000000000000000000000000000000 index!984))))

(assert (=> b!652226 (arrayNoDuplicates!0 lt!303546 #b00000000000000000000000000000000 Nil!12581)))

(declare-fun lt!303550 () Unit!22294)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38582 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12584) Unit!22294)

(assert (=> b!652226 (= lt!303550 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12581))))

(assert (=> b!652226 (arrayContainsKey!0 lt!303546 (select (arr!18490 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303552 () Unit!22294)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38582 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22294)

(assert (=> b!652226 (= lt!303552 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303546 (select (arr!18490 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!652226 e!374356))

(declare-fun res!423064 () Bool)

(assert (=> b!652226 (=> (not res!423064) (not e!374356))))

(assert (=> b!652226 (= res!423064 (arrayContainsKey!0 lt!303546 (select (arr!18490 a!2986) j!136) j!136))))

(declare-fun b!652227 () Bool)

(assert (=> b!652227 (= e!374353 e!374362)))

(declare-fun res!423077 () Bool)

(assert (=> b!652227 (=> res!423077 e!374362)))

(assert (=> b!652227 (= res!423077 (bvsge index!984 j!136))))

(declare-fun lt!303542 () Unit!22294)

(assert (=> b!652227 (= lt!303542 e!374361)))

(declare-fun c!74944 () Bool)

(assert (=> b!652227 (= c!74944 (bvslt j!136 index!984))))

(declare-fun b!652228 () Bool)

(declare-fun res!423072 () Bool)

(assert (=> b!652228 (=> (not res!423072) (not e!374352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38582 (_ BitVec 32)) Bool)

(assert (=> b!652228 (= res!423072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!652229 () Bool)

(assert (=> b!652229 (= e!374358 e!374352)))

(declare-fun res!423071 () Bool)

(assert (=> b!652229 (=> (not res!423071) (not e!374352))))

(declare-fun lt!303555 () SeekEntryResult!6937)

(assert (=> b!652229 (= res!423071 (or (= lt!303555 (MissingZero!6937 i!1108)) (= lt!303555 (MissingVacant!6937 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38582 (_ BitVec 32)) SeekEntryResult!6937)

(assert (=> b!652229 (= lt!303555 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!652230 () Bool)

(assert (=> b!652230 (= e!374349 (= lt!303558 lt!303553))))

(declare-fun b!652231 () Bool)

(assert (=> b!652231 (= e!374352 e!374351)))

(declare-fun res!423066 () Bool)

(assert (=> b!652231 (=> (not res!423066) (not e!374351))))

(assert (=> b!652231 (= res!423066 (= (select (store (arr!18490 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!652231 (= lt!303546 (array!38583 (store (arr!18490 a!2986) i!1108 k0!1786) (size!18854 a!2986)))))

(declare-fun b!652232 () Bool)

(declare-fun Unit!22298 () Unit!22294)

(assert (=> b!652232 (= e!374361 Unit!22298)))

(declare-fun lt!303551 () Unit!22294)

(assert (=> b!652232 (= lt!303551 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303546 (select (arr!18490 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!652232 (arrayContainsKey!0 lt!303546 (select (arr!18490 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303554 () Unit!22294)

(assert (=> b!652232 (= lt!303554 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12581))))

(assert (=> b!652232 (arrayNoDuplicates!0 lt!303546 #b00000000000000000000000000000000 Nil!12581)))

(declare-fun lt!303548 () Unit!22294)

(assert (=> b!652232 (= lt!303548 (lemmaNoDuplicateFromThenFromBigger!0 lt!303546 #b00000000000000000000000000000000 j!136))))

(assert (=> b!652232 (arrayNoDuplicates!0 lt!303546 j!136 Nil!12581)))

(declare-fun lt!303549 () Unit!22294)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38582 (_ BitVec 64) (_ BitVec 32) List!12584) Unit!22294)

(assert (=> b!652232 (= lt!303549 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303546 (select (arr!18490 a!2986) j!136) j!136 Nil!12581))))

(assert (=> b!652232 false))

(declare-fun b!652233 () Bool)

(declare-fun res!423059 () Bool)

(assert (=> b!652233 (=> (not res!423059) (not e!374358))))

(assert (=> b!652233 (= res!423059 (validKeyInArray!0 k0!1786))))

(declare-fun b!652234 () Bool)

(declare-fun res!423069 () Bool)

(assert (=> b!652234 (=> (not res!423069) (not e!374358))))

(assert (=> b!652234 (= res!423069 (and (= (size!18854 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18854 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18854 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!652235 () Bool)

(declare-fun Unit!22299 () Unit!22294)

(assert (=> b!652235 (= e!374354 Unit!22299)))

(assert (=> b!652235 false))

(assert (= (and start!59126 res!423074) b!652234))

(assert (= (and b!652234 res!423069) b!652220))

(assert (= (and b!652220 res!423060) b!652233))

(assert (= (and b!652233 res!423059) b!652223))

(assert (= (and b!652223 res!423062) b!652229))

(assert (= (and b!652229 res!423071) b!652228))

(assert (= (and b!652228 res!423072) b!652218))

(assert (= (and b!652218 res!423075) b!652214))

(assert (= (and b!652214 res!423068) b!652231))

(assert (= (and b!652231 res!423066) b!652224))

(assert (= (and b!652224 res!423065) b!652217))

(assert (= (and b!652217 res!423061) b!652230))

(assert (= (and b!652217 c!74945) b!652235))

(assert (= (and b!652217 (not c!74945)) b!652216))

(assert (= (and b!652217 (not res!423063)) b!652213))

(assert (= (and b!652213 res!423073) b!652222))

(assert (= (and b!652222 (not res!423070)) b!652215))

(assert (= (and b!652215 res!423067) b!652221))

(assert (= (and b!652213 (not res!423076)) b!652227))

(assert (= (and b!652227 c!74944) b!652232))

(assert (= (and b!652227 (not c!74944)) b!652219))

(assert (= (and b!652227 (not res!423077)) b!652226))

(assert (= (and b!652226 res!423064) b!652225))

(declare-fun m!625427 () Bool)

(assert (=> b!652213 m!625427))

(declare-fun m!625429 () Bool)

(assert (=> b!652213 m!625429))

(declare-fun m!625431 () Bool)

(assert (=> b!652213 m!625431))

(assert (=> b!652226 m!625427))

(declare-fun m!625433 () Bool)

(assert (=> b!652226 m!625433))

(assert (=> b!652226 m!625427))

(declare-fun m!625435 () Bool)

(assert (=> b!652226 m!625435))

(assert (=> b!652226 m!625427))

(declare-fun m!625437 () Bool)

(assert (=> b!652226 m!625437))

(declare-fun m!625439 () Bool)

(assert (=> b!652226 m!625439))

(assert (=> b!652226 m!625427))

(declare-fun m!625441 () Bool)

(assert (=> b!652226 m!625441))

(declare-fun m!625443 () Bool)

(assert (=> b!652226 m!625443))

(declare-fun m!625445 () Bool)

(assert (=> b!652226 m!625445))

(assert (=> b!652225 m!625427))

(assert (=> b!652225 m!625427))

(declare-fun m!625447 () Bool)

(assert (=> b!652225 m!625447))

(declare-fun m!625449 () Bool)

(assert (=> start!59126 m!625449))

(declare-fun m!625451 () Bool)

(assert (=> start!59126 m!625451))

(assert (=> b!652220 m!625427))

(assert (=> b!652220 m!625427))

(declare-fun m!625453 () Bool)

(assert (=> b!652220 m!625453))

(assert (=> b!652222 m!625427))

(assert (=> b!652231 m!625429))

(declare-fun m!625455 () Bool)

(assert (=> b!652231 m!625455))

(assert (=> b!652232 m!625427))

(declare-fun m!625457 () Bool)

(assert (=> b!652232 m!625457))

(declare-fun m!625459 () Bool)

(assert (=> b!652232 m!625459))

(declare-fun m!625461 () Bool)

(assert (=> b!652232 m!625461))

(assert (=> b!652232 m!625427))

(declare-fun m!625463 () Bool)

(assert (=> b!652232 m!625463))

(assert (=> b!652232 m!625427))

(assert (=> b!652232 m!625427))

(declare-fun m!625465 () Bool)

(assert (=> b!652232 m!625465))

(assert (=> b!652232 m!625443))

(assert (=> b!652232 m!625445))

(declare-fun m!625467 () Bool)

(assert (=> b!652224 m!625467))

(assert (=> b!652224 m!625427))

(assert (=> b!652224 m!625427))

(declare-fun m!625469 () Bool)

(assert (=> b!652224 m!625469))

(declare-fun m!625471 () Bool)

(assert (=> b!652214 m!625471))

(assert (=> b!652215 m!625427))

(assert (=> b!652215 m!625427))

(assert (=> b!652215 m!625435))

(declare-fun m!625473 () Bool)

(assert (=> b!652217 m!625473))

(declare-fun m!625475 () Bool)

(assert (=> b!652217 m!625475))

(declare-fun m!625477 () Bool)

(assert (=> b!652217 m!625477))

(declare-fun m!625479 () Bool)

(assert (=> b!652217 m!625479))

(assert (=> b!652217 m!625427))

(assert (=> b!652217 m!625429))

(assert (=> b!652217 m!625427))

(declare-fun m!625481 () Bool)

(assert (=> b!652217 m!625481))

(declare-fun m!625483 () Bool)

(assert (=> b!652217 m!625483))

(declare-fun m!625485 () Bool)

(assert (=> b!652229 m!625485))

(declare-fun m!625487 () Bool)

(assert (=> b!652228 m!625487))

(assert (=> b!652221 m!625427))

(assert (=> b!652221 m!625427))

(assert (=> b!652221 m!625447))

(declare-fun m!625489 () Bool)

(assert (=> b!652218 m!625489))

(declare-fun m!625491 () Bool)

(assert (=> b!652223 m!625491))

(declare-fun m!625493 () Bool)

(assert (=> b!652233 m!625493))

(check-sat (not b!652232) (not b!652215) (not b!652217) (not b!652225) (not b!652220) (not start!59126) (not b!652221) (not b!652224) (not b!652229) (not b!652226) (not b!652228) (not b!652233) (not b!652218) (not b!652223))
(check-sat)
