; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56096 () Bool)

(assert start!56096)

(declare-fun b!618389 () Bool)

(declare-fun e!354634 () Bool)

(declare-fun e!354640 () Bool)

(assert (=> b!618389 (= e!354634 e!354640)))

(declare-fun res!398528 () Bool)

(assert (=> b!618389 (=> (not res!398528) (not e!354640))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37529 0))(
  ( (array!37530 (arr!18007 (Array (_ BitVec 32) (_ BitVec 64))) (size!18371 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37529)

(assert (=> b!618389 (= res!398528 (= (select (store (arr!18007 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!285205 () array!37529)

(assert (=> b!618389 (= lt!285205 (array!37530 (store (arr!18007 a!2986) i!1108 k0!1786) (size!18371 a!2986)))))

(declare-fun b!618390 () Bool)

(declare-fun e!354643 () Bool)

(assert (=> b!618390 (= e!354643 e!354634)))

(declare-fun res!398517 () Bool)

(assert (=> b!618390 (=> (not res!398517) (not e!354634))))

(declare-datatypes ((SeekEntryResult!6454 0))(
  ( (MissingZero!6454 (index!28099 (_ BitVec 32))) (Found!6454 (index!28100 (_ BitVec 32))) (Intermediate!6454 (undefined!7266 Bool) (index!28101 (_ BitVec 32)) (x!56911 (_ BitVec 32))) (Undefined!6454) (MissingVacant!6454 (index!28102 (_ BitVec 32))) )
))
(declare-fun lt!285213 () SeekEntryResult!6454)

(assert (=> b!618390 (= res!398517 (or (= lt!285213 (MissingZero!6454 i!1108)) (= lt!285213 (MissingVacant!6454 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37529 (_ BitVec 32)) SeekEntryResult!6454)

(assert (=> b!618390 (= lt!285213 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!618391 () Bool)

(declare-fun e!354632 () Bool)

(declare-fun lt!285198 () SeekEntryResult!6454)

(declare-fun lt!285206 () SeekEntryResult!6454)

(assert (=> b!618391 (= e!354632 (= lt!285198 lt!285206))))

(declare-fun b!618392 () Bool)

(declare-fun e!354641 () Bool)

(declare-fun e!354633 () Bool)

(assert (=> b!618392 (= e!354641 (not e!354633))))

(declare-fun res!398523 () Bool)

(assert (=> b!618392 (=> res!398523 e!354633)))

(declare-fun lt!285209 () SeekEntryResult!6454)

(assert (=> b!618392 (= res!398523 (not (= lt!285209 (MissingVacant!6454 vacantSpotIndex!68))))))

(declare-datatypes ((Unit!20360 0))(
  ( (Unit!20361) )
))
(declare-fun lt!285197 () Unit!20360)

(declare-fun e!354646 () Unit!20360)

(assert (=> b!618392 (= lt!285197 e!354646)))

(declare-fun c!70307 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!618392 (= c!70307 (= lt!285209 (Found!6454 index!984)))))

(declare-fun lt!285214 () Unit!20360)

(declare-fun e!354637 () Unit!20360)

(assert (=> b!618392 (= lt!285214 e!354637)))

(declare-fun c!70305 () Bool)

(assert (=> b!618392 (= c!70305 (= lt!285209 Undefined!6454))))

(declare-fun lt!285215 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37529 (_ BitVec 32)) SeekEntryResult!6454)

(assert (=> b!618392 (= lt!285209 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285215 lt!285205 mask!3053))))

(assert (=> b!618392 e!354632))

(declare-fun res!398524 () Bool)

(assert (=> b!618392 (=> (not res!398524) (not e!354632))))

(declare-fun lt!285211 () (_ BitVec 32))

(assert (=> b!618392 (= res!398524 (= lt!285206 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285211 vacantSpotIndex!68 lt!285215 lt!285205 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!618392 (= lt!285206 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285211 vacantSpotIndex!68 (select (arr!18007 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!618392 (= lt!285215 (select (store (arr!18007 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!285204 () Unit!20360)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37529 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20360)

(assert (=> b!618392 (= lt!285204 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285211 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!618392 (= lt!285211 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun e!354638 () Bool)

(declare-fun b!618393 () Bool)

(declare-fun arrayContainsKey!0 (array!37529 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!618393 (= e!354638 (arrayContainsKey!0 lt!285205 (select (arr!18007 a!2986) j!136) index!984))))

(declare-fun b!618394 () Bool)

(declare-fun e!354645 () Unit!20360)

(declare-fun Unit!20362 () Unit!20360)

(assert (=> b!618394 (= e!354645 Unit!20362)))

(declare-fun b!618395 () Bool)

(declare-fun res!398515 () Bool)

(assert (=> b!618395 (=> (not res!398515) (not e!354634))))

(assert (=> b!618395 (= res!398515 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18007 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!618396 () Bool)

(declare-fun res!398526 () Bool)

(assert (=> b!618396 (=> (not res!398526) (not e!354643))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!618396 (= res!398526 (validKeyInArray!0 (select (arr!18007 a!2986) j!136)))))

(declare-fun res!398518 () Bool)

(assert (=> start!56096 (=> (not res!398518) (not e!354643))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56096 (= res!398518 (validMask!0 mask!3053))))

(assert (=> start!56096 e!354643))

(assert (=> start!56096 true))

(declare-fun array_inv!13781 (array!37529) Bool)

(assert (=> start!56096 (array_inv!13781 a!2986)))

(declare-fun b!618397 () Bool)

(declare-fun e!354635 () Unit!20360)

(declare-fun Unit!20363 () Unit!20360)

(assert (=> b!618397 (= e!354635 Unit!20363)))

(declare-fun e!354642 () Bool)

(declare-fun b!618398 () Bool)

(assert (=> b!618398 (= e!354642 (arrayContainsKey!0 lt!285205 (select (arr!18007 a!2986) j!136) index!984))))

(declare-fun b!618399 () Bool)

(declare-fun Unit!20364 () Unit!20360)

(assert (=> b!618399 (= e!354637 Unit!20364)))

(assert (=> b!618399 false))

(declare-fun b!618400 () Bool)

(assert (=> b!618400 (= e!354640 e!354641)))

(declare-fun res!398530 () Bool)

(assert (=> b!618400 (=> (not res!398530) (not e!354641))))

(assert (=> b!618400 (= res!398530 (and (= lt!285198 (Found!6454 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18007 a!2986) index!984) (select (arr!18007 a!2986) j!136))) (not (= (select (arr!18007 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!618400 (= lt!285198 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18007 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!618401 () Bool)

(declare-fun res!398527 () Bool)

(assert (=> b!618401 (=> (not res!398527) (not e!354643))))

(assert (=> b!618401 (= res!398527 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!618402 () Bool)

(declare-fun res!398522 () Bool)

(assert (=> b!618402 (=> (not res!398522) (not e!354643))))

(assert (=> b!618402 (= res!398522 (and (= (size!18371 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18371 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18371 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!618403 () Bool)

(assert (=> b!618403 false))

(declare-fun lt!285201 () Unit!20360)

(declare-datatypes ((List!12101 0))(
  ( (Nil!12098) (Cons!12097 (h!13142 (_ BitVec 64)) (t!18337 List!12101)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37529 (_ BitVec 64) (_ BitVec 32) List!12101) Unit!20360)

(assert (=> b!618403 (= lt!285201 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285205 (select (arr!18007 a!2986) j!136) index!984 Nil!12098))))

(declare-fun arrayNoDuplicates!0 (array!37529 (_ BitVec 32) List!12101) Bool)

(assert (=> b!618403 (arrayNoDuplicates!0 lt!285205 index!984 Nil!12098)))

(declare-fun lt!285212 () Unit!20360)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37529 (_ BitVec 32) (_ BitVec 32)) Unit!20360)

(assert (=> b!618403 (= lt!285212 (lemmaNoDuplicateFromThenFromBigger!0 lt!285205 #b00000000000000000000000000000000 index!984))))

(assert (=> b!618403 (arrayNoDuplicates!0 lt!285205 #b00000000000000000000000000000000 Nil!12098)))

(declare-fun lt!285207 () Unit!20360)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37529 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12101) Unit!20360)

(assert (=> b!618403 (= lt!285207 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12098))))

(assert (=> b!618403 (arrayContainsKey!0 lt!285205 (select (arr!18007 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285216 () Unit!20360)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37529 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20360)

(assert (=> b!618403 (= lt!285216 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285205 (select (arr!18007 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!618403 e!354638))

(declare-fun res!398519 () Bool)

(assert (=> b!618403 (=> (not res!398519) (not e!354638))))

(assert (=> b!618403 (= res!398519 (arrayContainsKey!0 lt!285205 (select (arr!18007 a!2986) j!136) j!136))))

(declare-fun Unit!20365 () Unit!20360)

(assert (=> b!618403 (= e!354645 Unit!20365)))

(declare-fun b!618404 () Bool)

(declare-fun res!398516 () Bool)

(assert (=> b!618404 (= res!398516 (bvsge j!136 index!984))))

(declare-fun e!354644 () Bool)

(assert (=> b!618404 (=> res!398516 e!354644)))

(declare-fun e!354639 () Bool)

(assert (=> b!618404 (= e!354639 e!354644)))

(declare-fun b!618405 () Bool)

(declare-fun res!398531 () Bool)

(assert (=> b!618405 (=> (not res!398531) (not e!354634))))

(assert (=> b!618405 (= res!398531 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12098))))

(declare-fun b!618406 () Bool)

(declare-fun Unit!20366 () Unit!20360)

(assert (=> b!618406 (= e!354646 Unit!20366)))

(declare-fun b!618407 () Bool)

(declare-fun res!398529 () Bool)

(assert (=> b!618407 (=> (not res!398529) (not e!354643))))

(assert (=> b!618407 (= res!398529 (validKeyInArray!0 k0!1786))))

(declare-fun b!618408 () Bool)

(assert (=> b!618408 (= e!354633 true)))

(assert (=> b!618408 (= (select (store (arr!18007 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!618409 () Bool)

(assert (=> b!618409 false))

(declare-fun lt!285199 () Unit!20360)

(assert (=> b!618409 (= lt!285199 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285205 (select (arr!18007 a!2986) j!136) j!136 Nil!12098))))

(assert (=> b!618409 (arrayNoDuplicates!0 lt!285205 j!136 Nil!12098)))

(declare-fun lt!285200 () Unit!20360)

(assert (=> b!618409 (= lt!285200 (lemmaNoDuplicateFromThenFromBigger!0 lt!285205 #b00000000000000000000000000000000 j!136))))

(assert (=> b!618409 (arrayNoDuplicates!0 lt!285205 #b00000000000000000000000000000000 Nil!12098)))

(declare-fun lt!285202 () Unit!20360)

(assert (=> b!618409 (= lt!285202 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12098))))

(assert (=> b!618409 (arrayContainsKey!0 lt!285205 (select (arr!18007 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285208 () Unit!20360)

(assert (=> b!618409 (= lt!285208 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285205 (select (arr!18007 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20367 () Unit!20360)

(assert (=> b!618409 (= e!354635 Unit!20367)))

(declare-fun b!618410 () Bool)

(declare-fun Unit!20368 () Unit!20360)

(assert (=> b!618410 (= e!354637 Unit!20368)))

(declare-fun b!618411 () Bool)

(declare-fun res!398521 () Bool)

(assert (=> b!618411 (=> (not res!398521) (not e!354634))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37529 (_ BitVec 32)) Bool)

(assert (=> b!618411 (= res!398521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!398525 () Bool)

(declare-fun b!618412 () Bool)

(assert (=> b!618412 (= res!398525 (arrayContainsKey!0 lt!285205 (select (arr!18007 a!2986) j!136) j!136))))

(assert (=> b!618412 (=> (not res!398525) (not e!354642))))

(assert (=> b!618412 (= e!354644 e!354642)))

(declare-fun b!618413 () Bool)

(declare-fun Unit!20369 () Unit!20360)

(assert (=> b!618413 (= e!354646 Unit!20369)))

(declare-fun res!398520 () Bool)

(assert (=> b!618413 (= res!398520 (= (select (store (arr!18007 a!2986) i!1108 k0!1786) index!984) (select (arr!18007 a!2986) j!136)))))

(assert (=> b!618413 (=> (not res!398520) (not e!354639))))

(assert (=> b!618413 e!354639))

(declare-fun c!70306 () Bool)

(assert (=> b!618413 (= c!70306 (bvslt j!136 index!984))))

(declare-fun lt!285203 () Unit!20360)

(assert (=> b!618413 (= lt!285203 e!354635)))

(declare-fun c!70304 () Bool)

(assert (=> b!618413 (= c!70304 (bvslt index!984 j!136))))

(declare-fun lt!285210 () Unit!20360)

(assert (=> b!618413 (= lt!285210 e!354645)))

(assert (=> b!618413 false))

(assert (= (and start!56096 res!398518) b!618402))

(assert (= (and b!618402 res!398522) b!618396))

(assert (= (and b!618396 res!398526) b!618407))

(assert (= (and b!618407 res!398529) b!618401))

(assert (= (and b!618401 res!398527) b!618390))

(assert (= (and b!618390 res!398517) b!618411))

(assert (= (and b!618411 res!398521) b!618405))

(assert (= (and b!618405 res!398531) b!618395))

(assert (= (and b!618395 res!398515) b!618389))

(assert (= (and b!618389 res!398528) b!618400))

(assert (= (and b!618400 res!398530) b!618392))

(assert (= (and b!618392 res!398524) b!618391))

(assert (= (and b!618392 c!70305) b!618399))

(assert (= (and b!618392 (not c!70305)) b!618410))

(assert (= (and b!618392 c!70307) b!618413))

(assert (= (and b!618392 (not c!70307)) b!618406))

(assert (= (and b!618413 res!398520) b!618404))

(assert (= (and b!618404 (not res!398516)) b!618412))

(assert (= (and b!618412 res!398525) b!618398))

(assert (= (and b!618413 c!70306) b!618409))

(assert (= (and b!618413 (not c!70306)) b!618397))

(assert (= (and b!618413 c!70304) b!618403))

(assert (= (and b!618413 (not c!70304)) b!618394))

(assert (= (and b!618403 res!398519) b!618393))

(assert (= (and b!618392 (not res!398523)) b!618408))

(declare-fun m!594469 () Bool)

(assert (=> b!618393 m!594469))

(assert (=> b!618393 m!594469))

(declare-fun m!594471 () Bool)

(assert (=> b!618393 m!594471))

(declare-fun m!594473 () Bool)

(assert (=> b!618390 m!594473))

(declare-fun m!594475 () Bool)

(assert (=> b!618400 m!594475))

(assert (=> b!618400 m!594469))

(assert (=> b!618400 m!594469))

(declare-fun m!594477 () Bool)

(assert (=> b!618400 m!594477))

(assert (=> b!618409 m!594469))

(assert (=> b!618409 m!594469))

(declare-fun m!594479 () Bool)

(assert (=> b!618409 m!594479))

(assert (=> b!618409 m!594469))

(declare-fun m!594481 () Bool)

(assert (=> b!618409 m!594481))

(declare-fun m!594483 () Bool)

(assert (=> b!618409 m!594483))

(declare-fun m!594485 () Bool)

(assert (=> b!618409 m!594485))

(declare-fun m!594487 () Bool)

(assert (=> b!618409 m!594487))

(declare-fun m!594489 () Bool)

(assert (=> b!618409 m!594489))

(assert (=> b!618409 m!594469))

(declare-fun m!594491 () Bool)

(assert (=> b!618409 m!594491))

(declare-fun m!594493 () Bool)

(assert (=> b!618413 m!594493))

(declare-fun m!594495 () Bool)

(assert (=> b!618413 m!594495))

(assert (=> b!618413 m!594469))

(declare-fun m!594497 () Bool)

(assert (=> b!618395 m!594497))

(assert (=> b!618389 m!594493))

(declare-fun m!594499 () Bool)

(assert (=> b!618389 m!594499))

(declare-fun m!594501 () Bool)

(assert (=> b!618411 m!594501))

(declare-fun m!594503 () Bool)

(assert (=> b!618407 m!594503))

(assert (=> b!618396 m!594469))

(assert (=> b!618396 m!594469))

(declare-fun m!594505 () Bool)

(assert (=> b!618396 m!594505))

(declare-fun m!594507 () Bool)

(assert (=> b!618401 m!594507))

(declare-fun m!594509 () Bool)

(assert (=> b!618392 m!594509))

(declare-fun m!594511 () Bool)

(assert (=> b!618392 m!594511))

(assert (=> b!618392 m!594469))

(assert (=> b!618392 m!594493))

(declare-fun m!594513 () Bool)

(assert (=> b!618392 m!594513))

(declare-fun m!594515 () Bool)

(assert (=> b!618392 m!594515))

(assert (=> b!618392 m!594469))

(declare-fun m!594517 () Bool)

(assert (=> b!618392 m!594517))

(declare-fun m!594519 () Bool)

(assert (=> b!618392 m!594519))

(assert (=> b!618408 m!594493))

(assert (=> b!618408 m!594495))

(assert (=> b!618398 m!594469))

(assert (=> b!618398 m!594469))

(assert (=> b!618398 m!594471))

(assert (=> b!618412 m!594469))

(assert (=> b!618412 m!594469))

(declare-fun m!594521 () Bool)

(assert (=> b!618412 m!594521))

(declare-fun m!594523 () Bool)

(assert (=> start!56096 m!594523))

(declare-fun m!594525 () Bool)

(assert (=> start!56096 m!594525))

(declare-fun m!594527 () Bool)

(assert (=> b!618405 m!594527))

(assert (=> b!618403 m!594469))

(declare-fun m!594529 () Bool)

(assert (=> b!618403 m!594529))

(assert (=> b!618403 m!594469))

(declare-fun m!594531 () Bool)

(assert (=> b!618403 m!594531))

(assert (=> b!618403 m!594489))

(assert (=> b!618403 m!594469))

(declare-fun m!594533 () Bool)

(assert (=> b!618403 m!594533))

(assert (=> b!618403 m!594469))

(assert (=> b!618403 m!594521))

(assert (=> b!618403 m!594469))

(declare-fun m!594535 () Bool)

(assert (=> b!618403 m!594535))

(declare-fun m!594537 () Bool)

(assert (=> b!618403 m!594537))

(assert (=> b!618403 m!594487))

(check-sat (not b!618396) (not b!618393) (not b!618398) (not b!618400) (not b!618412) (not b!618409) (not b!618411) (not b!618403) (not b!618405) (not b!618392) (not start!56096) (not b!618390) (not b!618401) (not b!618407))
(check-sat)
