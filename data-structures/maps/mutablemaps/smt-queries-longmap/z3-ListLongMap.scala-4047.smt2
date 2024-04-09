; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55166 () Bool)

(assert start!55166)

(declare-fun b!604418 () Bool)

(declare-datatypes ((Unit!19234 0))(
  ( (Unit!19235) )
))
(declare-fun e!345871 () Unit!19234)

(declare-fun Unit!19236 () Unit!19234)

(assert (=> b!604418 (= e!345871 Unit!19236)))

(declare-fun b!604419 () Bool)

(declare-fun e!345866 () Bool)

(declare-fun e!345867 () Bool)

(assert (=> b!604419 (= e!345866 (not e!345867))))

(declare-fun res!388491 () Bool)

(assert (=> b!604419 (=> res!388491 e!345867)))

(declare-datatypes ((SeekEntryResult!6301 0))(
  ( (MissingZero!6301 (index!27466 (_ BitVec 32))) (Found!6301 (index!27467 (_ BitVec 32))) (Intermediate!6301 (undefined!7113 Bool) (index!27468 (_ BitVec 32)) (x!56287 (_ BitVec 32))) (Undefined!6301) (MissingVacant!6301 (index!27469 (_ BitVec 32))) )
))
(declare-fun lt!275756 () SeekEntryResult!6301)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!604419 (= res!388491 (not (= lt!275756 (Found!6301 index!984))))))

(declare-fun lt!275752 () Unit!19234)

(declare-fun e!345870 () Unit!19234)

(assert (=> b!604419 (= lt!275752 e!345870)))

(declare-fun c!68336 () Bool)

(assert (=> b!604419 (= c!68336 (= lt!275756 Undefined!6301))))

(declare-datatypes ((array!37202 0))(
  ( (array!37203 (arr!17854 (Array (_ BitVec 32) (_ BitVec 64))) (size!18218 (_ BitVec 32))) )
))
(declare-fun lt!275748 () array!37202)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!275754 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37202 (_ BitVec 32)) SeekEntryResult!6301)

(assert (=> b!604419 (= lt!275756 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275754 lt!275748 mask!3053))))

(declare-fun e!345865 () Bool)

(assert (=> b!604419 e!345865))

(declare-fun res!388481 () Bool)

(assert (=> b!604419 (=> (not res!388481) (not e!345865))))

(declare-fun lt!275759 () (_ BitVec 32))

(declare-fun lt!275751 () SeekEntryResult!6301)

(assert (=> b!604419 (= res!388481 (= lt!275751 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275759 vacantSpotIndex!68 lt!275754 lt!275748 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37202)

(assert (=> b!604419 (= lt!275751 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275759 vacantSpotIndex!68 (select (arr!17854 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!604419 (= lt!275754 (select (store (arr!17854 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!275760 () Unit!19234)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37202 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19234)

(assert (=> b!604419 (= lt!275760 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275759 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!604419 (= lt!275759 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!604420 () Bool)

(declare-fun e!345873 () Bool)

(declare-fun e!345862 () Bool)

(assert (=> b!604420 (= e!345873 e!345862)))

(declare-fun res!388484 () Bool)

(assert (=> b!604420 (=> (not res!388484) (not e!345862))))

(assert (=> b!604420 (= res!388484 (= (select (store (arr!17854 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604420 (= lt!275748 (array!37203 (store (arr!17854 a!2986) i!1108 k0!1786) (size!18218 a!2986)))))

(declare-fun b!604421 () Bool)

(declare-fun res!388488 () Bool)

(declare-fun e!345872 () Bool)

(assert (=> b!604421 (=> (not res!388488) (not e!345872))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!604421 (= res!388488 (validKeyInArray!0 (select (arr!17854 a!2986) j!136)))))

(declare-fun b!604422 () Bool)

(declare-fun Unit!19237 () Unit!19234)

(assert (=> b!604422 (= e!345871 Unit!19237)))

(declare-fun lt!275746 () Unit!19234)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37202 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19234)

(assert (=> b!604422 (= lt!275746 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275748 (select (arr!17854 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37202 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!604422 (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275755 () Unit!19234)

(declare-datatypes ((List!11948 0))(
  ( (Nil!11945) (Cons!11944 (h!12989 (_ BitVec 64)) (t!18184 List!11948)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37202 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11948) Unit!19234)

(assert (=> b!604422 (= lt!275755 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11945))))

(declare-fun arrayNoDuplicates!0 (array!37202 (_ BitVec 32) List!11948) Bool)

(assert (=> b!604422 (arrayNoDuplicates!0 lt!275748 #b00000000000000000000000000000000 Nil!11945)))

(declare-fun lt!275758 () Unit!19234)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37202 (_ BitVec 32) (_ BitVec 32)) Unit!19234)

(assert (=> b!604422 (= lt!275758 (lemmaNoDuplicateFromThenFromBigger!0 lt!275748 #b00000000000000000000000000000000 j!136))))

(assert (=> b!604422 (arrayNoDuplicates!0 lt!275748 j!136 Nil!11945)))

(declare-fun lt!275749 () Unit!19234)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37202 (_ BitVec 64) (_ BitVec 32) List!11948) Unit!19234)

(assert (=> b!604422 (= lt!275749 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275748 (select (arr!17854 a!2986) j!136) j!136 Nil!11945))))

(assert (=> b!604422 false))

(declare-fun b!604423 () Bool)

(declare-fun res!388486 () Bool)

(assert (=> b!604423 (=> (not res!388486) (not e!345872))))

(assert (=> b!604423 (= res!388486 (validKeyInArray!0 k0!1786))))

(declare-fun b!604424 () Bool)

(declare-fun e!345863 () Bool)

(assert (=> b!604424 (= e!345863 (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) index!984))))

(declare-fun b!604425 () Bool)

(declare-fun e!345868 () Bool)

(declare-fun e!345861 () Bool)

(assert (=> b!604425 (= e!345868 e!345861)))

(declare-fun res!388497 () Bool)

(assert (=> b!604425 (=> res!388497 e!345861)))

(assert (=> b!604425 (= res!388497 (bvsge index!984 j!136))))

(declare-fun lt!275745 () Unit!19234)

(assert (=> b!604425 (= lt!275745 e!345871)))

(declare-fun c!68335 () Bool)

(assert (=> b!604425 (= c!68335 (bvslt j!136 index!984))))

(declare-fun b!604426 () Bool)

(declare-fun res!388492 () Bool)

(assert (=> b!604426 (=> (not res!388492) (not e!345872))))

(assert (=> b!604426 (= res!388492 (and (= (size!18218 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18218 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18218 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!604427 () Bool)

(assert (=> b!604427 (= e!345862 e!345866)))

(declare-fun res!388487 () Bool)

(assert (=> b!604427 (=> (not res!388487) (not e!345866))))

(declare-fun lt!275753 () SeekEntryResult!6301)

(assert (=> b!604427 (= res!388487 (and (= lt!275753 (Found!6301 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17854 a!2986) index!984) (select (arr!17854 a!2986) j!136))) (not (= (select (arr!17854 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!604427 (= lt!275753 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17854 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!604428 () Bool)

(declare-fun Unit!19238 () Unit!19234)

(assert (=> b!604428 (= e!345870 Unit!19238)))

(declare-fun b!604429 () Bool)

(assert (=> b!604429 (= e!345861 (or (bvslt (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18218 a!2986)) (bvslt (size!18218 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!604429 (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!275757 () Unit!19234)

(assert (=> b!604429 (= lt!275757 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275748 (select (arr!17854 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!345860 () Bool)

(assert (=> b!604429 e!345860))

(declare-fun res!388483 () Bool)

(assert (=> b!604429 (=> (not res!388483) (not e!345860))))

(assert (=> b!604429 (= res!388483 (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) j!136))))

(declare-fun b!604417 () Bool)

(declare-fun Unit!19239 () Unit!19234)

(assert (=> b!604417 (= e!345870 Unit!19239)))

(assert (=> b!604417 false))

(declare-fun res!388482 () Bool)

(assert (=> start!55166 (=> (not res!388482) (not e!345872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55166 (= res!388482 (validMask!0 mask!3053))))

(assert (=> start!55166 e!345872))

(assert (=> start!55166 true))

(declare-fun array_inv!13628 (array!37202) Bool)

(assert (=> start!55166 (array_inv!13628 a!2986)))

(declare-fun b!604430 () Bool)

(declare-fun res!388496 () Bool)

(assert (=> b!604430 (=> (not res!388496) (not e!345873))))

(assert (=> b!604430 (= res!388496 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11945))))

(declare-fun b!604431 () Bool)

(declare-fun res!388485 () Bool)

(assert (=> b!604431 (=> (not res!388485) (not e!345873))))

(assert (=> b!604431 (= res!388485 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17854 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!604432 () Bool)

(assert (=> b!604432 (= e!345860 (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) index!984))))

(declare-fun b!604433 () Bool)

(declare-fun res!388490 () Bool)

(assert (=> b!604433 (=> (not res!388490) (not e!345872))))

(assert (=> b!604433 (= res!388490 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!604434 () Bool)

(assert (=> b!604434 (= e!345872 e!345873)))

(declare-fun res!388494 () Bool)

(assert (=> b!604434 (=> (not res!388494) (not e!345873))))

(declare-fun lt!275747 () SeekEntryResult!6301)

(assert (=> b!604434 (= res!388494 (or (= lt!275747 (MissingZero!6301 i!1108)) (= lt!275747 (MissingVacant!6301 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37202 (_ BitVec 32)) SeekEntryResult!6301)

(assert (=> b!604434 (= lt!275747 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!604435 () Bool)

(declare-fun e!345864 () Bool)

(declare-fun e!345869 () Bool)

(assert (=> b!604435 (= e!345864 e!345869)))

(declare-fun res!388493 () Bool)

(assert (=> b!604435 (=> res!388493 e!345869)))

(declare-fun lt!275750 () (_ BitVec 64))

(assert (=> b!604435 (= res!388493 (or (not (= (select (arr!17854 a!2986) j!136) lt!275754)) (not (= (select (arr!17854 a!2986) j!136) lt!275750)) (bvsge j!136 index!984)))))

(declare-fun b!604436 () Bool)

(assert (=> b!604436 (= e!345869 e!345863)))

(declare-fun res!388489 () Bool)

(assert (=> b!604436 (=> (not res!388489) (not e!345863))))

(assert (=> b!604436 (= res!388489 (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) j!136))))

(declare-fun b!604437 () Bool)

(assert (=> b!604437 (= e!345865 (= lt!275753 lt!275751))))

(declare-fun b!604438 () Bool)

(declare-fun res!388498 () Bool)

(assert (=> b!604438 (=> (not res!388498) (not e!345873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37202 (_ BitVec 32)) Bool)

(assert (=> b!604438 (= res!388498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!604439 () Bool)

(assert (=> b!604439 (= e!345867 e!345868)))

(declare-fun res!388495 () Bool)

(assert (=> b!604439 (=> res!388495 e!345868)))

(assert (=> b!604439 (= res!388495 (or (not (= (select (arr!17854 a!2986) j!136) lt!275754)) (not (= (select (arr!17854 a!2986) j!136) lt!275750))))))

(assert (=> b!604439 e!345864))

(declare-fun res!388499 () Bool)

(assert (=> b!604439 (=> (not res!388499) (not e!345864))))

(assert (=> b!604439 (= res!388499 (= lt!275750 (select (arr!17854 a!2986) j!136)))))

(assert (=> b!604439 (= lt!275750 (select (store (arr!17854 a!2986) i!1108 k0!1786) index!984))))

(assert (= (and start!55166 res!388482) b!604426))

(assert (= (and b!604426 res!388492) b!604421))

(assert (= (and b!604421 res!388488) b!604423))

(assert (= (and b!604423 res!388486) b!604433))

(assert (= (and b!604433 res!388490) b!604434))

(assert (= (and b!604434 res!388494) b!604438))

(assert (= (and b!604438 res!388498) b!604430))

(assert (= (and b!604430 res!388496) b!604431))

(assert (= (and b!604431 res!388485) b!604420))

(assert (= (and b!604420 res!388484) b!604427))

(assert (= (and b!604427 res!388487) b!604419))

(assert (= (and b!604419 res!388481) b!604437))

(assert (= (and b!604419 c!68336) b!604417))

(assert (= (and b!604419 (not c!68336)) b!604428))

(assert (= (and b!604419 (not res!388491)) b!604439))

(assert (= (and b!604439 res!388499) b!604435))

(assert (= (and b!604435 (not res!388493)) b!604436))

(assert (= (and b!604436 res!388489) b!604424))

(assert (= (and b!604439 (not res!388495)) b!604425))

(assert (= (and b!604425 c!68335) b!604422))

(assert (= (and b!604425 (not c!68335)) b!604418))

(assert (= (and b!604425 (not res!388497)) b!604429))

(assert (= (and b!604429 res!388483) b!604432))

(declare-fun m!581359 () Bool)

(assert (=> b!604438 m!581359))

(declare-fun m!581361 () Bool)

(assert (=> start!55166 m!581361))

(declare-fun m!581363 () Bool)

(assert (=> start!55166 m!581363))

(declare-fun m!581365 () Bool)

(assert (=> b!604439 m!581365))

(declare-fun m!581367 () Bool)

(assert (=> b!604439 m!581367))

(declare-fun m!581369 () Bool)

(assert (=> b!604439 m!581369))

(assert (=> b!604429 m!581365))

(assert (=> b!604429 m!581365))

(declare-fun m!581371 () Bool)

(assert (=> b!604429 m!581371))

(assert (=> b!604429 m!581365))

(declare-fun m!581373 () Bool)

(assert (=> b!604429 m!581373))

(assert (=> b!604429 m!581365))

(declare-fun m!581375 () Bool)

(assert (=> b!604429 m!581375))

(declare-fun m!581377 () Bool)

(assert (=> b!604419 m!581377))

(assert (=> b!604419 m!581365))

(declare-fun m!581379 () Bool)

(assert (=> b!604419 m!581379))

(assert (=> b!604419 m!581367))

(declare-fun m!581381 () Bool)

(assert (=> b!604419 m!581381))

(declare-fun m!581383 () Bool)

(assert (=> b!604419 m!581383))

(declare-fun m!581385 () Bool)

(assert (=> b!604419 m!581385))

(assert (=> b!604419 m!581365))

(declare-fun m!581387 () Bool)

(assert (=> b!604419 m!581387))

(declare-fun m!581389 () Bool)

(assert (=> b!604422 m!581389))

(assert (=> b!604422 m!581365))

(declare-fun m!581391 () Bool)

(assert (=> b!604422 m!581391))

(assert (=> b!604422 m!581365))

(declare-fun m!581393 () Bool)

(assert (=> b!604422 m!581393))

(assert (=> b!604422 m!581365))

(declare-fun m!581395 () Bool)

(assert (=> b!604422 m!581395))

(declare-fun m!581397 () Bool)

(assert (=> b!604422 m!581397))

(assert (=> b!604422 m!581365))

(declare-fun m!581399 () Bool)

(assert (=> b!604422 m!581399))

(declare-fun m!581401 () Bool)

(assert (=> b!604422 m!581401))

(assert (=> b!604421 m!581365))

(assert (=> b!604421 m!581365))

(declare-fun m!581403 () Bool)

(assert (=> b!604421 m!581403))

(assert (=> b!604432 m!581365))

(assert (=> b!604432 m!581365))

(declare-fun m!581405 () Bool)

(assert (=> b!604432 m!581405))

(declare-fun m!581407 () Bool)

(assert (=> b!604423 m!581407))

(declare-fun m!581409 () Bool)

(assert (=> b!604433 m!581409))

(declare-fun m!581411 () Bool)

(assert (=> b!604434 m!581411))

(assert (=> b!604436 m!581365))

(assert (=> b!604436 m!581365))

(assert (=> b!604436 m!581375))

(declare-fun m!581413 () Bool)

(assert (=> b!604431 m!581413))

(declare-fun m!581415 () Bool)

(assert (=> b!604427 m!581415))

(assert (=> b!604427 m!581365))

(assert (=> b!604427 m!581365))

(declare-fun m!581417 () Bool)

(assert (=> b!604427 m!581417))

(assert (=> b!604420 m!581367))

(declare-fun m!581419 () Bool)

(assert (=> b!604420 m!581419))

(assert (=> b!604435 m!581365))

(declare-fun m!581421 () Bool)

(assert (=> b!604430 m!581421))

(assert (=> b!604424 m!581365))

(assert (=> b!604424 m!581365))

(assert (=> b!604424 m!581405))

(check-sat (not b!604419) (not start!55166) (not b!604430) (not b!604436) (not b!604421) (not b!604423) (not b!604434) (not b!604424) (not b!604433) (not b!604432) (not b!604427) (not b!604429) (not b!604438) (not b!604422))
(check-sat)
(get-model)

(declare-fun b!604517 () Bool)

(declare-fun e!345928 () Bool)

(declare-fun e!345926 () Bool)

(assert (=> b!604517 (= e!345928 e!345926)))

(declare-fun lt!275816 () (_ BitVec 64))

(assert (=> b!604517 (= lt!275816 (select (arr!17854 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!275817 () Unit!19234)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37202 (_ BitVec 64) (_ BitVec 32)) Unit!19234)

(assert (=> b!604517 (= lt!275817 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!275816 #b00000000000000000000000000000000))))

(assert (=> b!604517 (arrayContainsKey!0 a!2986 lt!275816 #b00000000000000000000000000000000)))

(declare-fun lt!275815 () Unit!19234)

(assert (=> b!604517 (= lt!275815 lt!275817)))

(declare-fun res!388562 () Bool)

(assert (=> b!604517 (= res!388562 (= (seekEntryOrOpen!0 (select (arr!17854 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6301 #b00000000000000000000000000000000)))))

(assert (=> b!604517 (=> (not res!388562) (not e!345926))))

(declare-fun b!604518 () Bool)

(declare-fun e!345927 () Bool)

(assert (=> b!604518 (= e!345927 e!345928)))

(declare-fun c!68345 () Bool)

(assert (=> b!604518 (= c!68345 (validKeyInArray!0 (select (arr!17854 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!604519 () Bool)

(declare-fun call!33011 () Bool)

(assert (=> b!604519 (= e!345926 call!33011)))

(declare-fun bm!33008 () Bool)

(assert (=> bm!33008 (= call!33011 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!604520 () Bool)

(assert (=> b!604520 (= e!345928 call!33011)))

(declare-fun d!87303 () Bool)

(declare-fun res!388561 () Bool)

(assert (=> d!87303 (=> res!388561 e!345927)))

(assert (=> d!87303 (= res!388561 (bvsge #b00000000000000000000000000000000 (size!18218 a!2986)))))

(assert (=> d!87303 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!345927)))

(assert (= (and d!87303 (not res!388561)) b!604518))

(assert (= (and b!604518 c!68345) b!604517))

(assert (= (and b!604518 (not c!68345)) b!604520))

(assert (= (and b!604517 res!388562) b!604519))

(assert (= (or b!604519 b!604520) bm!33008))

(declare-fun m!581487 () Bool)

(assert (=> b!604517 m!581487))

(declare-fun m!581489 () Bool)

(assert (=> b!604517 m!581489))

(declare-fun m!581491 () Bool)

(assert (=> b!604517 m!581491))

(assert (=> b!604517 m!581487))

(declare-fun m!581493 () Bool)

(assert (=> b!604517 m!581493))

(assert (=> b!604518 m!581487))

(assert (=> b!604518 m!581487))

(declare-fun m!581495 () Bool)

(assert (=> b!604518 m!581495))

(declare-fun m!581497 () Bool)

(assert (=> bm!33008 m!581497))

(assert (=> b!604438 d!87303))

(declare-fun d!87305 () Bool)

(assert (=> d!87305 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55166 d!87305))

(declare-fun d!87307 () Bool)

(assert (=> d!87307 (= (array_inv!13628 a!2986) (bvsge (size!18218 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55166 d!87307))

(declare-fun b!604533 () Bool)

(declare-fun e!345935 () SeekEntryResult!6301)

(assert (=> b!604533 (= e!345935 (MissingVacant!6301 vacantSpotIndex!68))))

(declare-fun b!604534 () Bool)

(declare-fun e!345936 () SeekEntryResult!6301)

(assert (=> b!604534 (= e!345936 (Found!6301 index!984))))

(declare-fun b!604535 () Bool)

(assert (=> b!604535 (= e!345935 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17854 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!604536 () Bool)

(declare-fun e!345937 () SeekEntryResult!6301)

(assert (=> b!604536 (= e!345937 Undefined!6301)))

(declare-fun b!604537 () Bool)

(assert (=> b!604537 (= e!345937 e!345936)))

(declare-fun lt!275823 () (_ BitVec 64))

(declare-fun c!68352 () Bool)

(assert (=> b!604537 (= c!68352 (= lt!275823 (select (arr!17854 a!2986) j!136)))))

(declare-fun d!87309 () Bool)

(declare-fun lt!275822 () SeekEntryResult!6301)

(get-info :version)

(assert (=> d!87309 (and (or ((_ is Undefined!6301) lt!275822) (not ((_ is Found!6301) lt!275822)) (and (bvsge (index!27467 lt!275822) #b00000000000000000000000000000000) (bvslt (index!27467 lt!275822) (size!18218 a!2986)))) (or ((_ is Undefined!6301) lt!275822) ((_ is Found!6301) lt!275822) (not ((_ is MissingVacant!6301) lt!275822)) (not (= (index!27469 lt!275822) vacantSpotIndex!68)) (and (bvsge (index!27469 lt!275822) #b00000000000000000000000000000000) (bvslt (index!27469 lt!275822) (size!18218 a!2986)))) (or ((_ is Undefined!6301) lt!275822) (ite ((_ is Found!6301) lt!275822) (= (select (arr!17854 a!2986) (index!27467 lt!275822)) (select (arr!17854 a!2986) j!136)) (and ((_ is MissingVacant!6301) lt!275822) (= (index!27469 lt!275822) vacantSpotIndex!68) (= (select (arr!17854 a!2986) (index!27469 lt!275822)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87309 (= lt!275822 e!345937)))

(declare-fun c!68354 () Bool)

(assert (=> d!87309 (= c!68354 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87309 (= lt!275823 (select (arr!17854 a!2986) index!984))))

(assert (=> d!87309 (validMask!0 mask!3053)))

(assert (=> d!87309 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17854 a!2986) j!136) a!2986 mask!3053) lt!275822)))

(declare-fun b!604538 () Bool)

(declare-fun c!68353 () Bool)

(assert (=> b!604538 (= c!68353 (= lt!275823 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604538 (= e!345936 e!345935)))

(assert (= (and d!87309 c!68354) b!604536))

(assert (= (and d!87309 (not c!68354)) b!604537))

(assert (= (and b!604537 c!68352) b!604534))

(assert (= (and b!604537 (not c!68352)) b!604538))

(assert (= (and b!604538 c!68353) b!604533))

(assert (= (and b!604538 (not c!68353)) b!604535))

(assert (=> b!604535 m!581377))

(assert (=> b!604535 m!581377))

(assert (=> b!604535 m!581365))

(declare-fun m!581499 () Bool)

(assert (=> b!604535 m!581499))

(declare-fun m!581501 () Bool)

(assert (=> d!87309 m!581501))

(declare-fun m!581503 () Bool)

(assert (=> d!87309 m!581503))

(assert (=> d!87309 m!581415))

(assert (=> d!87309 m!581361))

(assert (=> b!604427 d!87309))

(declare-fun d!87311 () Bool)

(declare-fun res!388567 () Bool)

(declare-fun e!345942 () Bool)

(assert (=> d!87311 (=> res!388567 e!345942)))

(assert (=> d!87311 (= res!388567 (= (select (arr!17854 lt!275748) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!17854 a!2986) j!136)))))

(assert (=> d!87311 (= (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!345942)))

(declare-fun b!604543 () Bool)

(declare-fun e!345943 () Bool)

(assert (=> b!604543 (= e!345942 e!345943)))

(declare-fun res!388568 () Bool)

(assert (=> b!604543 (=> (not res!388568) (not e!345943))))

(assert (=> b!604543 (= res!388568 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18218 lt!275748)))))

(declare-fun b!604544 () Bool)

(assert (=> b!604544 (= e!345943 (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87311 (not res!388567)) b!604543))

(assert (= (and b!604543 res!388568) b!604544))

(declare-fun m!581505 () Bool)

(assert (=> d!87311 m!581505))

(assert (=> b!604544 m!581365))

(declare-fun m!581507 () Bool)

(assert (=> b!604544 m!581507))

(assert (=> b!604429 d!87311))

(declare-fun d!87313 () Bool)

(assert (=> d!87313 (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!275826 () Unit!19234)

(declare-fun choose!114 (array!37202 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19234)

(assert (=> d!87313 (= lt!275826 (choose!114 lt!275748 (select (arr!17854 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!87313 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!87313 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275748 (select (arr!17854 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!275826)))

(declare-fun bs!18494 () Bool)

(assert (= bs!18494 d!87313))

(assert (=> bs!18494 m!581365))

(assert (=> bs!18494 m!581371))

(assert (=> bs!18494 m!581365))

(declare-fun m!581509 () Bool)

(assert (=> bs!18494 m!581509))

(assert (=> b!604429 d!87313))

(declare-fun d!87315 () Bool)

(declare-fun res!388569 () Bool)

(declare-fun e!345944 () Bool)

(assert (=> d!87315 (=> res!388569 e!345944)))

(assert (=> d!87315 (= res!388569 (= (select (arr!17854 lt!275748) j!136) (select (arr!17854 a!2986) j!136)))))

(assert (=> d!87315 (= (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) j!136) e!345944)))

(declare-fun b!604545 () Bool)

(declare-fun e!345945 () Bool)

(assert (=> b!604545 (= e!345944 e!345945)))

(declare-fun res!388570 () Bool)

(assert (=> b!604545 (=> (not res!388570) (not e!345945))))

(assert (=> b!604545 (= res!388570 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18218 lt!275748)))))

(declare-fun b!604546 () Bool)

(assert (=> b!604546 (= e!345945 (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87315 (not res!388569)) b!604545))

(assert (= (and b!604545 res!388570) b!604546))

(declare-fun m!581511 () Bool)

(assert (=> d!87315 m!581511))

(assert (=> b!604546 m!581365))

(declare-fun m!581513 () Bool)

(assert (=> b!604546 m!581513))

(assert (=> b!604429 d!87315))

(assert (=> b!604436 d!87315))

(declare-fun d!87317 () Bool)

(declare-fun res!388571 () Bool)

(declare-fun e!345946 () Bool)

(assert (=> d!87317 (=> res!388571 e!345946)))

(assert (=> d!87317 (= res!388571 (= (select (arr!17854 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!87317 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!345946)))

(declare-fun b!604547 () Bool)

(declare-fun e!345947 () Bool)

(assert (=> b!604547 (= e!345946 e!345947)))

(declare-fun res!388572 () Bool)

(assert (=> b!604547 (=> (not res!388572) (not e!345947))))

(assert (=> b!604547 (= res!388572 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18218 a!2986)))))

(declare-fun b!604548 () Bool)

(assert (=> b!604548 (= e!345947 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!87317 (not res!388571)) b!604547))

(assert (= (and b!604547 res!388572) b!604548))

(assert (=> d!87317 m!581487))

(declare-fun m!581515 () Bool)

(assert (=> b!604548 m!581515))

(assert (=> b!604433 d!87317))

(declare-fun d!87319 () Bool)

(assert (=> d!87319 (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275827 () Unit!19234)

(assert (=> d!87319 (= lt!275827 (choose!114 lt!275748 (select (arr!17854 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87319 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87319 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275748 (select (arr!17854 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!275827)))

(declare-fun bs!18495 () Bool)

(assert (= bs!18495 d!87319))

(assert (=> bs!18495 m!581365))

(assert (=> bs!18495 m!581393))

(assert (=> bs!18495 m!581365))

(declare-fun m!581517 () Bool)

(assert (=> bs!18495 m!581517))

(assert (=> b!604422 d!87319))

(declare-fun b!604559 () Bool)

(declare-fun e!345959 () Bool)

(declare-fun call!33014 () Bool)

(assert (=> b!604559 (= e!345959 call!33014)))

(declare-fun b!604560 () Bool)

(declare-fun e!345956 () Bool)

(declare-fun contains!2996 (List!11948 (_ BitVec 64)) Bool)

(assert (=> b!604560 (= e!345956 (contains!2996 Nil!11945 (select (arr!17854 lt!275748) j!136)))))

(declare-fun b!604561 () Bool)

(assert (=> b!604561 (= e!345959 call!33014)))

(declare-fun b!604562 () Bool)

(declare-fun e!345957 () Bool)

(assert (=> b!604562 (= e!345957 e!345959)))

(declare-fun c!68357 () Bool)

(assert (=> b!604562 (= c!68357 (validKeyInArray!0 (select (arr!17854 lt!275748) j!136)))))

(declare-fun bm!33011 () Bool)

(assert (=> bm!33011 (= call!33014 (arrayNoDuplicates!0 lt!275748 (bvadd j!136 #b00000000000000000000000000000001) (ite c!68357 (Cons!11944 (select (arr!17854 lt!275748) j!136) Nil!11945) Nil!11945)))))

(declare-fun d!87321 () Bool)

(declare-fun res!388581 () Bool)

(declare-fun e!345958 () Bool)

(assert (=> d!87321 (=> res!388581 e!345958)))

(assert (=> d!87321 (= res!388581 (bvsge j!136 (size!18218 lt!275748)))))

(assert (=> d!87321 (= (arrayNoDuplicates!0 lt!275748 j!136 Nil!11945) e!345958)))

(declare-fun b!604563 () Bool)

(assert (=> b!604563 (= e!345958 e!345957)))

(declare-fun res!388580 () Bool)

(assert (=> b!604563 (=> (not res!388580) (not e!345957))))

(assert (=> b!604563 (= res!388580 (not e!345956))))

(declare-fun res!388579 () Bool)

(assert (=> b!604563 (=> (not res!388579) (not e!345956))))

(assert (=> b!604563 (= res!388579 (validKeyInArray!0 (select (arr!17854 lt!275748) j!136)))))

(assert (= (and d!87321 (not res!388581)) b!604563))

(assert (= (and b!604563 res!388579) b!604560))

(assert (= (and b!604563 res!388580) b!604562))

(assert (= (and b!604562 c!68357) b!604559))

(assert (= (and b!604562 (not c!68357)) b!604561))

(assert (= (or b!604559 b!604561) bm!33011))

(assert (=> b!604560 m!581511))

(assert (=> b!604560 m!581511))

(declare-fun m!581519 () Bool)

(assert (=> b!604560 m!581519))

(assert (=> b!604562 m!581511))

(assert (=> b!604562 m!581511))

(declare-fun m!581521 () Bool)

(assert (=> b!604562 m!581521))

(assert (=> bm!33011 m!581511))

(declare-fun m!581523 () Bool)

(assert (=> bm!33011 m!581523))

(assert (=> b!604563 m!581511))

(assert (=> b!604563 m!581511))

(assert (=> b!604563 m!581521))

(assert (=> b!604422 d!87321))

(declare-fun d!87323 () Bool)

(assert (=> d!87323 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18218 lt!275748)) (not (= (select (arr!17854 lt!275748) j!136) (select (arr!17854 a!2986) j!136))))))

(declare-fun lt!275830 () Unit!19234)

(declare-fun choose!21 (array!37202 (_ BitVec 64) (_ BitVec 32) List!11948) Unit!19234)

(assert (=> d!87323 (= lt!275830 (choose!21 lt!275748 (select (arr!17854 a!2986) j!136) j!136 Nil!11945))))

(assert (=> d!87323 (bvslt (size!18218 lt!275748) #b01111111111111111111111111111111)))

(assert (=> d!87323 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275748 (select (arr!17854 a!2986) j!136) j!136 Nil!11945) lt!275830)))

(declare-fun bs!18496 () Bool)

(assert (= bs!18496 d!87323))

(assert (=> bs!18496 m!581511))

(assert (=> bs!18496 m!581365))

(declare-fun m!581525 () Bool)

(assert (=> bs!18496 m!581525))

(assert (=> b!604422 d!87323))

(declare-fun b!604564 () Bool)

(declare-fun e!345963 () Bool)

(declare-fun call!33015 () Bool)

(assert (=> b!604564 (= e!345963 call!33015)))

(declare-fun b!604565 () Bool)

(declare-fun e!345960 () Bool)

(assert (=> b!604565 (= e!345960 (contains!2996 Nil!11945 (select (arr!17854 lt!275748) #b00000000000000000000000000000000)))))

(declare-fun b!604566 () Bool)

(assert (=> b!604566 (= e!345963 call!33015)))

(declare-fun b!604567 () Bool)

(declare-fun e!345961 () Bool)

(assert (=> b!604567 (= e!345961 e!345963)))

(declare-fun c!68358 () Bool)

(assert (=> b!604567 (= c!68358 (validKeyInArray!0 (select (arr!17854 lt!275748) #b00000000000000000000000000000000)))))

(declare-fun bm!33012 () Bool)

(assert (=> bm!33012 (= call!33015 (arrayNoDuplicates!0 lt!275748 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68358 (Cons!11944 (select (arr!17854 lt!275748) #b00000000000000000000000000000000) Nil!11945) Nil!11945)))))

(declare-fun d!87327 () Bool)

(declare-fun res!388584 () Bool)

(declare-fun e!345962 () Bool)

(assert (=> d!87327 (=> res!388584 e!345962)))

(assert (=> d!87327 (= res!388584 (bvsge #b00000000000000000000000000000000 (size!18218 lt!275748)))))

(assert (=> d!87327 (= (arrayNoDuplicates!0 lt!275748 #b00000000000000000000000000000000 Nil!11945) e!345962)))

(declare-fun b!604568 () Bool)

(assert (=> b!604568 (= e!345962 e!345961)))

(declare-fun res!388583 () Bool)

(assert (=> b!604568 (=> (not res!388583) (not e!345961))))

(assert (=> b!604568 (= res!388583 (not e!345960))))

(declare-fun res!388582 () Bool)

(assert (=> b!604568 (=> (not res!388582) (not e!345960))))

(assert (=> b!604568 (= res!388582 (validKeyInArray!0 (select (arr!17854 lt!275748) #b00000000000000000000000000000000)))))

(assert (= (and d!87327 (not res!388584)) b!604568))

(assert (= (and b!604568 res!388582) b!604565))

(assert (= (and b!604568 res!388583) b!604567))

(assert (= (and b!604567 c!68358) b!604564))

(assert (= (and b!604567 (not c!68358)) b!604566))

(assert (= (or b!604564 b!604566) bm!33012))

(declare-fun m!581527 () Bool)

(assert (=> b!604565 m!581527))

(assert (=> b!604565 m!581527))

(declare-fun m!581529 () Bool)

(assert (=> b!604565 m!581529))

(assert (=> b!604567 m!581527))

(assert (=> b!604567 m!581527))

(declare-fun m!581531 () Bool)

(assert (=> b!604567 m!581531))

(assert (=> bm!33012 m!581527))

(declare-fun m!581533 () Bool)

(assert (=> bm!33012 m!581533))

(assert (=> b!604568 m!581527))

(assert (=> b!604568 m!581527))

(assert (=> b!604568 m!581531))

(assert (=> b!604422 d!87327))

(declare-fun d!87331 () Bool)

(assert (=> d!87331 (arrayNoDuplicates!0 lt!275748 j!136 Nil!11945)))

(declare-fun lt!275833 () Unit!19234)

(declare-fun choose!39 (array!37202 (_ BitVec 32) (_ BitVec 32)) Unit!19234)

(assert (=> d!87331 (= lt!275833 (choose!39 lt!275748 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87331 (bvslt (size!18218 lt!275748) #b01111111111111111111111111111111)))

(assert (=> d!87331 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!275748 #b00000000000000000000000000000000 j!136) lt!275833)))

(declare-fun bs!18497 () Bool)

(assert (= bs!18497 d!87331))

(assert (=> bs!18497 m!581391))

(declare-fun m!581539 () Bool)

(assert (=> bs!18497 m!581539))

(assert (=> b!604422 d!87331))

(declare-fun d!87335 () Bool)

(declare-fun e!345972 () Bool)

(assert (=> d!87335 e!345972))

(declare-fun res!388593 () Bool)

(assert (=> d!87335 (=> (not res!388593) (not e!345972))))

(assert (=> d!87335 (= res!388593 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18218 a!2986))))))

(declare-fun lt!275836 () Unit!19234)

(declare-fun choose!41 (array!37202 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11948) Unit!19234)

(assert (=> d!87335 (= lt!275836 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11945))))

(assert (=> d!87335 (bvslt (size!18218 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!87335 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11945) lt!275836)))

(declare-fun b!604577 () Bool)

(assert (=> b!604577 (= e!345972 (arrayNoDuplicates!0 (array!37203 (store (arr!17854 a!2986) i!1108 k0!1786) (size!18218 a!2986)) #b00000000000000000000000000000000 Nil!11945))))

(assert (= (and d!87335 res!388593) b!604577))

(declare-fun m!581541 () Bool)

(assert (=> d!87335 m!581541))

(assert (=> b!604577 m!581367))

(declare-fun m!581543 () Bool)

(assert (=> b!604577 m!581543))

(assert (=> b!604422 d!87335))

(declare-fun d!87339 () Bool)

(declare-fun res!388594 () Bool)

(declare-fun e!345973 () Bool)

(assert (=> d!87339 (=> res!388594 e!345973)))

(assert (=> d!87339 (= res!388594 (= (select (arr!17854 lt!275748) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17854 a!2986) j!136)))))

(assert (=> d!87339 (= (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!345973)))

(declare-fun b!604578 () Bool)

(declare-fun e!345974 () Bool)

(assert (=> b!604578 (= e!345973 e!345974)))

(declare-fun res!388595 () Bool)

(assert (=> b!604578 (=> (not res!388595) (not e!345974))))

(assert (=> b!604578 (= res!388595 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18218 lt!275748)))))

(declare-fun b!604579 () Bool)

(assert (=> b!604579 (= e!345974 (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87339 (not res!388594)) b!604578))

(assert (= (and b!604578 res!388595) b!604579))

(declare-fun m!581545 () Bool)

(assert (=> d!87339 m!581545))

(assert (=> b!604579 m!581365))

(declare-fun m!581547 () Bool)

(assert (=> b!604579 m!581547))

(assert (=> b!604422 d!87339))

(declare-fun d!87341 () Bool)

(declare-fun res!388596 () Bool)

(declare-fun e!345975 () Bool)

(assert (=> d!87341 (=> res!388596 e!345975)))

(assert (=> d!87341 (= res!388596 (= (select (arr!17854 lt!275748) index!984) (select (arr!17854 a!2986) j!136)))))

(assert (=> d!87341 (= (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) index!984) e!345975)))

(declare-fun b!604580 () Bool)

(declare-fun e!345976 () Bool)

(assert (=> b!604580 (= e!345975 e!345976)))

(declare-fun res!388597 () Bool)

(assert (=> b!604580 (=> (not res!388597) (not e!345976))))

(assert (=> b!604580 (= res!388597 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18218 lt!275748)))))

(declare-fun b!604581 () Bool)

(assert (=> b!604581 (= e!345976 (arrayContainsKey!0 lt!275748 (select (arr!17854 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87341 (not res!388596)) b!604580))

(assert (= (and b!604580 res!388597) b!604581))

(declare-fun m!581549 () Bool)

(assert (=> d!87341 m!581549))

(assert (=> b!604581 m!581365))

(declare-fun m!581551 () Bool)

(assert (=> b!604581 m!581551))

(assert (=> b!604424 d!87341))

(declare-fun b!604627 () Bool)

(declare-fun e!346006 () SeekEntryResult!6301)

(declare-fun lt!275865 () SeekEntryResult!6301)

(assert (=> b!604627 (= e!346006 (MissingZero!6301 (index!27468 lt!275865)))))

(declare-fun b!604628 () Bool)

(declare-fun e!346004 () SeekEntryResult!6301)

(assert (=> b!604628 (= e!346004 Undefined!6301)))

(declare-fun b!604629 () Bool)

(assert (=> b!604629 (= e!346006 (seekKeyOrZeroReturnVacant!0 (x!56287 lt!275865) (index!27468 lt!275865) (index!27468 lt!275865) k0!1786 a!2986 mask!3053))))

(declare-fun b!604631 () Bool)

(declare-fun e!346005 () SeekEntryResult!6301)

(assert (=> b!604631 (= e!346005 (Found!6301 (index!27468 lt!275865)))))

(declare-fun b!604632 () Bool)

(assert (=> b!604632 (= e!346004 e!346005)))

(declare-fun lt!275866 () (_ BitVec 64))

(assert (=> b!604632 (= lt!275866 (select (arr!17854 a!2986) (index!27468 lt!275865)))))

(declare-fun c!68379 () Bool)

(assert (=> b!604632 (= c!68379 (= lt!275866 k0!1786))))

(declare-fun d!87343 () Bool)

(declare-fun lt!275864 () SeekEntryResult!6301)

(assert (=> d!87343 (and (or ((_ is Undefined!6301) lt!275864) (not ((_ is Found!6301) lt!275864)) (and (bvsge (index!27467 lt!275864) #b00000000000000000000000000000000) (bvslt (index!27467 lt!275864) (size!18218 a!2986)))) (or ((_ is Undefined!6301) lt!275864) ((_ is Found!6301) lt!275864) (not ((_ is MissingZero!6301) lt!275864)) (and (bvsge (index!27466 lt!275864) #b00000000000000000000000000000000) (bvslt (index!27466 lt!275864) (size!18218 a!2986)))) (or ((_ is Undefined!6301) lt!275864) ((_ is Found!6301) lt!275864) ((_ is MissingZero!6301) lt!275864) (not ((_ is MissingVacant!6301) lt!275864)) (and (bvsge (index!27469 lt!275864) #b00000000000000000000000000000000) (bvslt (index!27469 lt!275864) (size!18218 a!2986)))) (or ((_ is Undefined!6301) lt!275864) (ite ((_ is Found!6301) lt!275864) (= (select (arr!17854 a!2986) (index!27467 lt!275864)) k0!1786) (ite ((_ is MissingZero!6301) lt!275864) (= (select (arr!17854 a!2986) (index!27466 lt!275864)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6301) lt!275864) (= (select (arr!17854 a!2986) (index!27469 lt!275864)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!87343 (= lt!275864 e!346004)))

(declare-fun c!68378 () Bool)

(assert (=> d!87343 (= c!68378 (and ((_ is Intermediate!6301) lt!275865) (undefined!7113 lt!275865)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37202 (_ BitVec 32)) SeekEntryResult!6301)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87343 (= lt!275865 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!87343 (validMask!0 mask!3053)))

(assert (=> d!87343 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!275864)))

(declare-fun b!604630 () Bool)

(declare-fun c!68377 () Bool)

(assert (=> b!604630 (= c!68377 (= lt!275866 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604630 (= e!346005 e!346006)))

(assert (= (and d!87343 c!68378) b!604628))

(assert (= (and d!87343 (not c!68378)) b!604632))

(assert (= (and b!604632 c!68379) b!604631))

(assert (= (and b!604632 (not c!68379)) b!604630))

(assert (= (and b!604630 c!68377) b!604627))

(assert (= (and b!604630 (not c!68377)) b!604629))

(declare-fun m!581583 () Bool)

(assert (=> b!604629 m!581583))

(declare-fun m!581585 () Bool)

(assert (=> b!604632 m!581585))

(declare-fun m!581587 () Bool)

(assert (=> d!87343 m!581587))

(declare-fun m!581589 () Bool)

(assert (=> d!87343 m!581589))

(assert (=> d!87343 m!581589))

(declare-fun m!581591 () Bool)

(assert (=> d!87343 m!581591))

(assert (=> d!87343 m!581361))

(declare-fun m!581593 () Bool)

(assert (=> d!87343 m!581593))

(declare-fun m!581595 () Bool)

(assert (=> d!87343 m!581595))

(assert (=> b!604434 d!87343))

(declare-fun d!87351 () Bool)

(assert (=> d!87351 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!604423 d!87351))

(declare-fun b!604653 () Bool)

(declare-fun e!346022 () Bool)

(declare-fun call!33019 () Bool)

(assert (=> b!604653 (= e!346022 call!33019)))

(declare-fun b!604655 () Bool)

(declare-fun e!346019 () Bool)

(assert (=> b!604655 (= e!346019 (contains!2996 Nil!11945 (select (arr!17854 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!604656 () Bool)

(assert (=> b!604656 (= e!346022 call!33019)))

(declare-fun b!604657 () Bool)

(declare-fun e!346020 () Bool)

(assert (=> b!604657 (= e!346020 e!346022)))

(declare-fun c!68386 () Bool)

(assert (=> b!604657 (= c!68386 (validKeyInArray!0 (select (arr!17854 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33016 () Bool)

(assert (=> bm!33016 (= call!33019 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68386 (Cons!11944 (select (arr!17854 a!2986) #b00000000000000000000000000000000) Nil!11945) Nil!11945)))))

(declare-fun d!87353 () Bool)

(declare-fun res!388615 () Bool)

(declare-fun e!346021 () Bool)

(assert (=> d!87353 (=> res!388615 e!346021)))

(assert (=> d!87353 (= res!388615 (bvsge #b00000000000000000000000000000000 (size!18218 a!2986)))))

(assert (=> d!87353 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11945) e!346021)))

(declare-fun b!604659 () Bool)

(assert (=> b!604659 (= e!346021 e!346020)))

(declare-fun res!388614 () Bool)

(assert (=> b!604659 (=> (not res!388614) (not e!346020))))

(assert (=> b!604659 (= res!388614 (not e!346019))))

(declare-fun res!388613 () Bool)

(assert (=> b!604659 (=> (not res!388613) (not e!346019))))

(assert (=> b!604659 (= res!388613 (validKeyInArray!0 (select (arr!17854 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!87353 (not res!388615)) b!604659))

(assert (= (and b!604659 res!388613) b!604655))

(assert (= (and b!604659 res!388614) b!604657))

(assert (= (and b!604657 c!68386) b!604653))

(assert (= (and b!604657 (not c!68386)) b!604656))

(assert (= (or b!604653 b!604656) bm!33016))

(assert (=> b!604655 m!581487))

(assert (=> b!604655 m!581487))

(declare-fun m!581597 () Bool)

(assert (=> b!604655 m!581597))

(assert (=> b!604657 m!581487))

(assert (=> b!604657 m!581487))

(assert (=> b!604657 m!581495))

(assert (=> bm!33016 m!581487))

(declare-fun m!581599 () Bool)

(assert (=> bm!33016 m!581599))

(assert (=> b!604659 m!581487))

(assert (=> b!604659 m!581487))

(assert (=> b!604659 m!581495))

(assert (=> b!604430 d!87353))

(declare-fun b!604660 () Bool)

(declare-fun e!346025 () SeekEntryResult!6301)

(assert (=> b!604660 (= e!346025 (MissingVacant!6301 vacantSpotIndex!68))))

(declare-fun b!604661 () Bool)

(declare-fun e!346026 () SeekEntryResult!6301)

(assert (=> b!604661 (= e!346026 (Found!6301 index!984))))

(declare-fun b!604662 () Bool)

(assert (=> b!604662 (= e!346025 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!275754 lt!275748 mask!3053))))

(declare-fun b!604663 () Bool)

(declare-fun e!346027 () SeekEntryResult!6301)

(assert (=> b!604663 (= e!346027 Undefined!6301)))

(declare-fun b!604664 () Bool)

(assert (=> b!604664 (= e!346027 e!346026)))

(declare-fun c!68389 () Bool)

(declare-fun lt!275872 () (_ BitVec 64))

(assert (=> b!604664 (= c!68389 (= lt!275872 lt!275754))))

(declare-fun lt!275871 () SeekEntryResult!6301)

(declare-fun d!87355 () Bool)

(assert (=> d!87355 (and (or ((_ is Undefined!6301) lt!275871) (not ((_ is Found!6301) lt!275871)) (and (bvsge (index!27467 lt!275871) #b00000000000000000000000000000000) (bvslt (index!27467 lt!275871) (size!18218 lt!275748)))) (or ((_ is Undefined!6301) lt!275871) ((_ is Found!6301) lt!275871) (not ((_ is MissingVacant!6301) lt!275871)) (not (= (index!27469 lt!275871) vacantSpotIndex!68)) (and (bvsge (index!27469 lt!275871) #b00000000000000000000000000000000) (bvslt (index!27469 lt!275871) (size!18218 lt!275748)))) (or ((_ is Undefined!6301) lt!275871) (ite ((_ is Found!6301) lt!275871) (= (select (arr!17854 lt!275748) (index!27467 lt!275871)) lt!275754) (and ((_ is MissingVacant!6301) lt!275871) (= (index!27469 lt!275871) vacantSpotIndex!68) (= (select (arr!17854 lt!275748) (index!27469 lt!275871)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87355 (= lt!275871 e!346027)))

(declare-fun c!68391 () Bool)

(assert (=> d!87355 (= c!68391 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87355 (= lt!275872 (select (arr!17854 lt!275748) index!984))))

(assert (=> d!87355 (validMask!0 mask!3053)))

(assert (=> d!87355 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275754 lt!275748 mask!3053) lt!275871)))

(declare-fun b!604665 () Bool)

(declare-fun c!68390 () Bool)

(assert (=> b!604665 (= c!68390 (= lt!275872 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604665 (= e!346026 e!346025)))

(assert (= (and d!87355 c!68391) b!604663))

(assert (= (and d!87355 (not c!68391)) b!604664))

(assert (= (and b!604664 c!68389) b!604661))

(assert (= (and b!604664 (not c!68389)) b!604665))

(assert (= (and b!604665 c!68390) b!604660))

(assert (= (and b!604665 (not c!68390)) b!604662))

(assert (=> b!604662 m!581377))

(assert (=> b!604662 m!581377))

(declare-fun m!581601 () Bool)

(assert (=> b!604662 m!581601))

(declare-fun m!581603 () Bool)

(assert (=> d!87355 m!581603))

(declare-fun m!581605 () Bool)

(assert (=> d!87355 m!581605))

(assert (=> d!87355 m!581549))

(assert (=> d!87355 m!581361))

(assert (=> b!604419 d!87355))

(declare-fun b!604666 () Bool)

(declare-fun e!346028 () SeekEntryResult!6301)

(assert (=> b!604666 (= e!346028 (MissingVacant!6301 vacantSpotIndex!68))))

(declare-fun b!604667 () Bool)

(declare-fun e!346029 () SeekEntryResult!6301)

(assert (=> b!604667 (= e!346029 (Found!6301 lt!275759))))

(declare-fun b!604668 () Bool)

(assert (=> b!604668 (= e!346028 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!275759 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17854 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!604669 () Bool)

(declare-fun e!346030 () SeekEntryResult!6301)

(assert (=> b!604669 (= e!346030 Undefined!6301)))

(declare-fun b!604670 () Bool)

(assert (=> b!604670 (= e!346030 e!346029)))

(declare-fun lt!275874 () (_ BitVec 64))

(declare-fun c!68392 () Bool)

(assert (=> b!604670 (= c!68392 (= lt!275874 (select (arr!17854 a!2986) j!136)))))

(declare-fun d!87357 () Bool)

(declare-fun lt!275873 () SeekEntryResult!6301)

(assert (=> d!87357 (and (or ((_ is Undefined!6301) lt!275873) (not ((_ is Found!6301) lt!275873)) (and (bvsge (index!27467 lt!275873) #b00000000000000000000000000000000) (bvslt (index!27467 lt!275873) (size!18218 a!2986)))) (or ((_ is Undefined!6301) lt!275873) ((_ is Found!6301) lt!275873) (not ((_ is MissingVacant!6301) lt!275873)) (not (= (index!27469 lt!275873) vacantSpotIndex!68)) (and (bvsge (index!27469 lt!275873) #b00000000000000000000000000000000) (bvslt (index!27469 lt!275873) (size!18218 a!2986)))) (or ((_ is Undefined!6301) lt!275873) (ite ((_ is Found!6301) lt!275873) (= (select (arr!17854 a!2986) (index!27467 lt!275873)) (select (arr!17854 a!2986) j!136)) (and ((_ is MissingVacant!6301) lt!275873) (= (index!27469 lt!275873) vacantSpotIndex!68) (= (select (arr!17854 a!2986) (index!27469 lt!275873)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87357 (= lt!275873 e!346030)))

(declare-fun c!68394 () Bool)

(assert (=> d!87357 (= c!68394 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!87357 (= lt!275874 (select (arr!17854 a!2986) lt!275759))))

(assert (=> d!87357 (validMask!0 mask!3053)))

(assert (=> d!87357 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275759 vacantSpotIndex!68 (select (arr!17854 a!2986) j!136) a!2986 mask!3053) lt!275873)))

(declare-fun b!604671 () Bool)

(declare-fun c!68393 () Bool)

(assert (=> b!604671 (= c!68393 (= lt!275874 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604671 (= e!346029 e!346028)))

(assert (= (and d!87357 c!68394) b!604669))

(assert (= (and d!87357 (not c!68394)) b!604670))

(assert (= (and b!604670 c!68392) b!604667))

(assert (= (and b!604670 (not c!68392)) b!604671))

(assert (= (and b!604671 c!68393) b!604666))

(assert (= (and b!604671 (not c!68393)) b!604668))

(declare-fun m!581607 () Bool)

(assert (=> b!604668 m!581607))

(assert (=> b!604668 m!581607))

(assert (=> b!604668 m!581365))

(declare-fun m!581609 () Bool)

(assert (=> b!604668 m!581609))

(declare-fun m!581611 () Bool)

(assert (=> d!87357 m!581611))

(declare-fun m!581613 () Bool)

(assert (=> d!87357 m!581613))

(declare-fun m!581615 () Bool)

(assert (=> d!87357 m!581615))

(assert (=> d!87357 m!581361))

(assert (=> b!604419 d!87357))

(declare-fun d!87359 () Bool)

(declare-fun e!346059 () Bool)

(assert (=> d!87359 e!346059))

(declare-fun res!388633 () Bool)

(assert (=> d!87359 (=> (not res!388633) (not e!346059))))

(assert (=> d!87359 (= res!388633 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18218 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18218 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18218 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18218 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18218 a!2986))))))

(declare-fun lt!275892 () Unit!19234)

(declare-fun choose!9 (array!37202 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19234)

(assert (=> d!87359 (= lt!275892 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275759 vacantSpotIndex!68 mask!3053))))

(assert (=> d!87359 (validMask!0 mask!3053)))

(assert (=> d!87359 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275759 vacantSpotIndex!68 mask!3053) lt!275892)))

(declare-fun b!604711 () Bool)

(assert (=> b!604711 (= e!346059 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275759 vacantSpotIndex!68 (select (arr!17854 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275759 vacantSpotIndex!68 (select (store (arr!17854 a!2986) i!1108 k0!1786) j!136) (array!37203 (store (arr!17854 a!2986) i!1108 k0!1786) (size!18218 a!2986)) mask!3053)))))

(assert (= (and d!87359 res!388633) b!604711))

(declare-fun m!581669 () Bool)

(assert (=> d!87359 m!581669))

(assert (=> d!87359 m!581361))

(assert (=> b!604711 m!581367))

(assert (=> b!604711 m!581365))

(assert (=> b!604711 m!581387))

(assert (=> b!604711 m!581365))

(assert (=> b!604711 m!581385))

(assert (=> b!604711 m!581385))

(declare-fun m!581671 () Bool)

(assert (=> b!604711 m!581671))

(assert (=> b!604419 d!87359))

(declare-fun d!87379 () Bool)

(declare-fun lt!275898 () (_ BitVec 32))

(assert (=> d!87379 (and (bvsge lt!275898 #b00000000000000000000000000000000) (bvslt lt!275898 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87379 (= lt!275898 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!87379 (validMask!0 mask!3053)))

(assert (=> d!87379 (= (nextIndex!0 index!984 x!910 mask!3053) lt!275898)))

(declare-fun bs!18501 () Bool)

(assert (= bs!18501 d!87379))

(declare-fun m!581679 () Bool)

(assert (=> bs!18501 m!581679))

(assert (=> bs!18501 m!581361))

(assert (=> b!604419 d!87379))

(declare-fun b!604714 () Bool)

(declare-fun e!346062 () SeekEntryResult!6301)

(assert (=> b!604714 (= e!346062 (MissingVacant!6301 vacantSpotIndex!68))))

(declare-fun b!604715 () Bool)

(declare-fun e!346063 () SeekEntryResult!6301)

(assert (=> b!604715 (= e!346063 (Found!6301 lt!275759))))

(declare-fun b!604716 () Bool)

(assert (=> b!604716 (= e!346062 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!275759 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!275754 lt!275748 mask!3053))))

(declare-fun b!604717 () Bool)

(declare-fun e!346064 () SeekEntryResult!6301)

(assert (=> b!604717 (= e!346064 Undefined!6301)))

(declare-fun b!604718 () Bool)

(assert (=> b!604718 (= e!346064 e!346063)))

(declare-fun c!68406 () Bool)

(declare-fun lt!275900 () (_ BitVec 64))

(assert (=> b!604718 (= c!68406 (= lt!275900 lt!275754))))

(declare-fun lt!275899 () SeekEntryResult!6301)

(declare-fun d!87389 () Bool)

(assert (=> d!87389 (and (or ((_ is Undefined!6301) lt!275899) (not ((_ is Found!6301) lt!275899)) (and (bvsge (index!27467 lt!275899) #b00000000000000000000000000000000) (bvslt (index!27467 lt!275899) (size!18218 lt!275748)))) (or ((_ is Undefined!6301) lt!275899) ((_ is Found!6301) lt!275899) (not ((_ is MissingVacant!6301) lt!275899)) (not (= (index!27469 lt!275899) vacantSpotIndex!68)) (and (bvsge (index!27469 lt!275899) #b00000000000000000000000000000000) (bvslt (index!27469 lt!275899) (size!18218 lt!275748)))) (or ((_ is Undefined!6301) lt!275899) (ite ((_ is Found!6301) lt!275899) (= (select (arr!17854 lt!275748) (index!27467 lt!275899)) lt!275754) (and ((_ is MissingVacant!6301) lt!275899) (= (index!27469 lt!275899) vacantSpotIndex!68) (= (select (arr!17854 lt!275748) (index!27469 lt!275899)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87389 (= lt!275899 e!346064)))

(declare-fun c!68408 () Bool)

(assert (=> d!87389 (= c!68408 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!87389 (= lt!275900 (select (arr!17854 lt!275748) lt!275759))))

(assert (=> d!87389 (validMask!0 mask!3053)))

(assert (=> d!87389 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275759 vacantSpotIndex!68 lt!275754 lt!275748 mask!3053) lt!275899)))

(declare-fun b!604719 () Bool)

(declare-fun c!68407 () Bool)

(assert (=> b!604719 (= c!68407 (= lt!275900 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604719 (= e!346063 e!346062)))

(assert (= (and d!87389 c!68408) b!604717))

(assert (= (and d!87389 (not c!68408)) b!604718))

(assert (= (and b!604718 c!68406) b!604715))

(assert (= (and b!604718 (not c!68406)) b!604719))

(assert (= (and b!604719 c!68407) b!604714))

(assert (= (and b!604719 (not c!68407)) b!604716))

(assert (=> b!604716 m!581607))

(assert (=> b!604716 m!581607))

(declare-fun m!581681 () Bool)

(assert (=> b!604716 m!581681))

(declare-fun m!581683 () Bool)

(assert (=> d!87389 m!581683))

(declare-fun m!581685 () Bool)

(assert (=> d!87389 m!581685))

(declare-fun m!581687 () Bool)

(assert (=> d!87389 m!581687))

(assert (=> d!87389 m!581361))

(assert (=> b!604419 d!87389))

(assert (=> b!604432 d!87341))

(declare-fun d!87391 () Bool)

(assert (=> d!87391 (= (validKeyInArray!0 (select (arr!17854 a!2986) j!136)) (and (not (= (select (arr!17854 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17854 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!604421 d!87391))

(check-sat (not b!604544) (not d!87331) (not d!87379) (not b!604716) (not d!87389) (not b!604563) (not d!87343) (not d!87319) (not b!604711) (not b!604577) (not d!87323) (not b!604535) (not b!604562) (not bm!33011) (not b!604657) (not bm!33016) (not bm!33008) (not b!604659) (not d!87357) (not b!604629) (not d!87359) (not b!604668) (not b!604517) (not b!604579) (not b!604567) (not b!604662) (not d!87309) (not d!87313) (not d!87335) (not b!604581) (not b!604546) (not d!87355) (not b!604655) (not b!604548) (not b!604518) (not b!604568) (not b!604560) (not b!604565) (not bm!33012))
(check-sat)
