; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59348 () Bool)

(assert start!59348)

(declare-fun b!654306 () Bool)

(declare-fun res!424503 () Bool)

(declare-fun e!375745 () Bool)

(assert (=> b!654306 (=> (not res!424503) (not e!375745))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38624 0))(
  ( (array!38625 (arr!18508 (Array (_ BitVec 32) (_ BitVec 64))) (size!18872 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38624)

(assert (=> b!654306 (= res!424503 (and (= (size!18872 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18872 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18872 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!375751 () Bool)

(declare-fun lt!304879 () array!38624)

(declare-fun b!654307 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!654307 (= e!375751 (arrayContainsKey!0 lt!304879 (select (arr!18508 a!2986) j!136) index!984))))

(declare-fun b!654308 () Bool)

(declare-fun res!424506 () Bool)

(declare-fun e!375752 () Bool)

(assert (=> b!654308 (=> (not res!424506) (not e!375752))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!654308 (= res!424506 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18508 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!424494 () Bool)

(assert (=> start!59348 (=> (not res!424494) (not e!375745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59348 (= res!424494 (validMask!0 mask!3053))))

(assert (=> start!59348 e!375745))

(assert (=> start!59348 true))

(declare-fun array_inv!14282 (array!38624) Bool)

(assert (=> start!59348 (array_inv!14282 a!2986)))

(declare-fun b!654309 () Bool)

(assert (=> b!654309 (= e!375745 e!375752)))

(declare-fun res!424505 () Bool)

(assert (=> b!654309 (=> (not res!424505) (not e!375752))))

(declare-datatypes ((SeekEntryResult!6955 0))(
  ( (MissingZero!6955 (index!30178 (_ BitVec 32))) (Found!6955 (index!30179 (_ BitVec 32))) (Intermediate!6955 (undefined!7767 Bool) (index!30180 (_ BitVec 32)) (x!58997 (_ BitVec 32))) (Undefined!6955) (MissingVacant!6955 (index!30181 (_ BitVec 32))) )
))
(declare-fun lt!304876 () SeekEntryResult!6955)

(assert (=> b!654309 (= res!424505 (or (= lt!304876 (MissingZero!6955 i!1108)) (= lt!304876 (MissingVacant!6955 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38624 (_ BitVec 32)) SeekEntryResult!6955)

(assert (=> b!654309 (= lt!304876 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!654310 () Bool)

(declare-datatypes ((Unit!22404 0))(
  ( (Unit!22405) )
))
(declare-fun e!375748 () Unit!22404)

(declare-fun Unit!22406 () Unit!22404)

(assert (=> b!654310 (= e!375748 Unit!22406)))

(assert (=> b!654310 false))

(declare-fun b!654311 () Bool)

(declare-fun e!375755 () Bool)

(assert (=> b!654311 (= e!375752 e!375755)))

(declare-fun res!424500 () Bool)

(assert (=> b!654311 (=> (not res!424500) (not e!375755))))

(assert (=> b!654311 (= res!424500 (= (select (store (arr!18508 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!654311 (= lt!304879 (array!38625 (store (arr!18508 a!2986) i!1108 k0!1786) (size!18872 a!2986)))))

(declare-fun b!654312 () Bool)

(declare-fun e!375749 () Unit!22404)

(declare-fun Unit!22407 () Unit!22404)

(assert (=> b!654312 (= e!375749 Unit!22407)))

(declare-fun b!654313 () Bool)

(declare-fun e!375744 () Bool)

(assert (=> b!654313 (= e!375744 false)))

(declare-fun lt!304864 () Unit!22404)

(declare-fun e!375746 () Unit!22404)

(assert (=> b!654313 (= lt!304864 e!375746)))

(declare-fun c!75273 () Bool)

(assert (=> b!654313 (= c!75273 (bvslt index!984 j!136))))

(declare-fun lt!304874 () Unit!22404)

(assert (=> b!654313 (= lt!304874 e!375749)))

(declare-fun c!75275 () Bool)

(assert (=> b!654313 (= c!75275 (bvslt j!136 index!984))))

(declare-fun b!654314 () Bool)

(declare-fun Unit!22408 () Unit!22404)

(assert (=> b!654314 (= e!375746 Unit!22408)))

(declare-fun res!424510 () Bool)

(assert (=> b!654314 (= res!424510 (arrayContainsKey!0 lt!304879 (select (arr!18508 a!2986) j!136) j!136))))

(declare-fun e!375756 () Bool)

(assert (=> b!654314 (=> (not res!424510) (not e!375756))))

(assert (=> b!654314 e!375756))

(declare-fun lt!304869 () Unit!22404)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38624 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22404)

(assert (=> b!654314 (= lt!304869 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304879 (select (arr!18508 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!654314 (arrayContainsKey!0 lt!304879 (select (arr!18508 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!304877 () Unit!22404)

(declare-datatypes ((List!12602 0))(
  ( (Nil!12599) (Cons!12598 (h!13643 (_ BitVec 64)) (t!18838 List!12602)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38624 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12602) Unit!22404)

(assert (=> b!654314 (= lt!304877 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12599))))

(declare-fun arrayNoDuplicates!0 (array!38624 (_ BitVec 32) List!12602) Bool)

(assert (=> b!654314 (arrayNoDuplicates!0 lt!304879 #b00000000000000000000000000000000 Nil!12599)))

(declare-fun lt!304880 () Unit!22404)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38624 (_ BitVec 32) (_ BitVec 32)) Unit!22404)

(assert (=> b!654314 (= lt!304880 (lemmaNoDuplicateFromThenFromBigger!0 lt!304879 #b00000000000000000000000000000000 index!984))))

(assert (=> b!654314 (arrayNoDuplicates!0 lt!304879 index!984 Nil!12599)))

(declare-fun lt!304867 () Unit!22404)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38624 (_ BitVec 64) (_ BitVec 32) List!12602) Unit!22404)

(assert (=> b!654314 (= lt!304867 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304879 (select (arr!18508 a!2986) j!136) index!984 Nil!12599))))

(assert (=> b!654314 false))

(declare-fun b!654315 () Bool)

(declare-fun Unit!22409 () Unit!22404)

(assert (=> b!654315 (= e!375748 Unit!22409)))

(declare-fun b!654316 () Bool)

(assert (=> b!654316 (= e!375756 (arrayContainsKey!0 lt!304879 (select (arr!18508 a!2986) j!136) index!984))))

(declare-fun b!654317 () Bool)

(declare-fun res!424504 () Bool)

(assert (=> b!654317 (=> (not res!424504) (not e!375745))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!654317 (= res!424504 (validKeyInArray!0 (select (arr!18508 a!2986) j!136)))))

(declare-fun b!654318 () Bool)

(declare-fun Unit!22410 () Unit!22404)

(assert (=> b!654318 (= e!375749 Unit!22410)))

(declare-fun lt!304863 () Unit!22404)

(assert (=> b!654318 (= lt!304863 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304879 (select (arr!18508 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!654318 (arrayContainsKey!0 lt!304879 (select (arr!18508 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!304878 () Unit!22404)

(assert (=> b!654318 (= lt!304878 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12599))))

(assert (=> b!654318 (arrayNoDuplicates!0 lt!304879 #b00000000000000000000000000000000 Nil!12599)))

(declare-fun lt!304868 () Unit!22404)

(assert (=> b!654318 (= lt!304868 (lemmaNoDuplicateFromThenFromBigger!0 lt!304879 #b00000000000000000000000000000000 j!136))))

(assert (=> b!654318 (arrayNoDuplicates!0 lt!304879 j!136 Nil!12599)))

(declare-fun lt!304875 () Unit!22404)

(assert (=> b!654318 (= lt!304875 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304879 (select (arr!18508 a!2986) j!136) j!136 Nil!12599))))

(assert (=> b!654318 false))

(declare-fun b!654319 () Bool)

(declare-fun e!375743 () Bool)

(assert (=> b!654319 (= e!375755 e!375743)))

(declare-fun res!424496 () Bool)

(assert (=> b!654319 (=> (not res!424496) (not e!375743))))

(declare-fun lt!304870 () SeekEntryResult!6955)

(assert (=> b!654319 (= res!424496 (and (= lt!304870 (Found!6955 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18508 a!2986) index!984) (select (arr!18508 a!2986) j!136))) (not (= (select (arr!18508 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38624 (_ BitVec 32)) SeekEntryResult!6955)

(assert (=> b!654319 (= lt!304870 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18508 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!654320 () Bool)

(declare-fun e!375757 () Bool)

(declare-fun e!375754 () Bool)

(assert (=> b!654320 (= e!375757 e!375754)))

(declare-fun res!424509 () Bool)

(assert (=> b!654320 (=> res!424509 e!375754)))

(declare-fun lt!304881 () (_ BitVec 64))

(declare-fun lt!304873 () (_ BitVec 64))

(assert (=> b!654320 (= res!424509 (or (not (= (select (arr!18508 a!2986) j!136) lt!304873)) (not (= (select (arr!18508 a!2986) j!136) lt!304881)) (bvsge j!136 index!984)))))

(declare-fun b!654321 () Bool)

(declare-fun Unit!22411 () Unit!22404)

(assert (=> b!654321 (= e!375746 Unit!22411)))

(declare-fun b!654322 () Bool)

(declare-fun res!424511 () Bool)

(assert (=> b!654322 (=> (not res!424511) (not e!375745))))

(assert (=> b!654322 (= res!424511 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!654323 () Bool)

(declare-fun res!424502 () Bool)

(assert (=> b!654323 (=> (not res!424502) (not e!375745))))

(assert (=> b!654323 (= res!424502 (validKeyInArray!0 k0!1786))))

(declare-fun b!654324 () Bool)

(declare-fun res!424498 () Bool)

(assert (=> b!654324 (=> (not res!424498) (not e!375752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38624 (_ BitVec 32)) Bool)

(assert (=> b!654324 (= res!424498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!654325 () Bool)

(declare-fun e!375747 () Bool)

(declare-fun lt!304871 () SeekEntryResult!6955)

(assert (=> b!654325 (= e!375747 (= lt!304870 lt!304871))))

(declare-fun b!654326 () Bool)

(assert (=> b!654326 (= e!375754 e!375751)))

(declare-fun res!424501 () Bool)

(assert (=> b!654326 (=> (not res!424501) (not e!375751))))

(assert (=> b!654326 (= res!424501 (arrayContainsKey!0 lt!304879 (select (arr!18508 a!2986) j!136) j!136))))

(declare-fun b!654327 () Bool)

(declare-fun res!424499 () Bool)

(assert (=> b!654327 (=> (not res!424499) (not e!375752))))

(assert (=> b!654327 (= res!424499 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12599))))

(declare-fun b!654328 () Bool)

(declare-fun e!375750 () Bool)

(assert (=> b!654328 (= e!375743 (not e!375750))))

(declare-fun res!424507 () Bool)

(assert (=> b!654328 (=> res!424507 e!375750)))

(declare-fun lt!304866 () SeekEntryResult!6955)

(assert (=> b!654328 (= res!424507 (not (= lt!304866 (Found!6955 index!984))))))

(declare-fun lt!304865 () Unit!22404)

(assert (=> b!654328 (= lt!304865 e!375748)))

(declare-fun c!75274 () Bool)

(assert (=> b!654328 (= c!75274 (= lt!304866 Undefined!6955))))

(assert (=> b!654328 (= lt!304866 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!304873 lt!304879 mask!3053))))

(assert (=> b!654328 e!375747))

(declare-fun res!424497 () Bool)

(assert (=> b!654328 (=> (not res!424497) (not e!375747))))

(declare-fun lt!304862 () (_ BitVec 32))

(assert (=> b!654328 (= res!424497 (= lt!304871 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304862 vacantSpotIndex!68 lt!304873 lt!304879 mask!3053)))))

(assert (=> b!654328 (= lt!304871 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304862 vacantSpotIndex!68 (select (arr!18508 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!654328 (= lt!304873 (select (store (arr!18508 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!304872 () Unit!22404)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38624 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22404)

(assert (=> b!654328 (= lt!304872 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!304862 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!654328 (= lt!304862 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!654329 () Bool)

(assert (=> b!654329 (= e!375750 e!375744)))

(declare-fun res!424508 () Bool)

(assert (=> b!654329 (=> res!424508 e!375744)))

(assert (=> b!654329 (= res!424508 (or (not (= (select (arr!18508 a!2986) j!136) lt!304873)) (not (= (select (arr!18508 a!2986) j!136) lt!304881))))))

(assert (=> b!654329 e!375757))

(declare-fun res!424495 () Bool)

(assert (=> b!654329 (=> (not res!424495) (not e!375757))))

(assert (=> b!654329 (= res!424495 (= lt!304881 (select (arr!18508 a!2986) j!136)))))

(assert (=> b!654329 (= lt!304881 (select (store (arr!18508 a!2986) i!1108 k0!1786) index!984))))

(assert (= (and start!59348 res!424494) b!654306))

(assert (= (and b!654306 res!424503) b!654317))

(assert (= (and b!654317 res!424504) b!654323))

(assert (= (and b!654323 res!424502) b!654322))

(assert (= (and b!654322 res!424511) b!654309))

(assert (= (and b!654309 res!424505) b!654324))

(assert (= (and b!654324 res!424498) b!654327))

(assert (= (and b!654327 res!424499) b!654308))

(assert (= (and b!654308 res!424506) b!654311))

(assert (= (and b!654311 res!424500) b!654319))

(assert (= (and b!654319 res!424496) b!654328))

(assert (= (and b!654328 res!424497) b!654325))

(assert (= (and b!654328 c!75274) b!654310))

(assert (= (and b!654328 (not c!75274)) b!654315))

(assert (= (and b!654328 (not res!424507)) b!654329))

(assert (= (and b!654329 res!424495) b!654320))

(assert (= (and b!654320 (not res!424509)) b!654326))

(assert (= (and b!654326 res!424501) b!654307))

(assert (= (and b!654329 (not res!424508)) b!654313))

(assert (= (and b!654313 c!75275) b!654318))

(assert (= (and b!654313 (not c!75275)) b!654312))

(assert (= (and b!654313 c!75273) b!654314))

(assert (= (and b!654313 (not c!75273)) b!654321))

(assert (= (and b!654314 res!424510) b!654316))

(declare-fun m!627481 () Bool)

(assert (=> b!654320 m!627481))

(declare-fun m!627483 () Bool)

(assert (=> b!654319 m!627483))

(assert (=> b!654319 m!627481))

(assert (=> b!654319 m!627481))

(declare-fun m!627485 () Bool)

(assert (=> b!654319 m!627485))

(declare-fun m!627487 () Bool)

(assert (=> b!654323 m!627487))

(declare-fun m!627489 () Bool)

(assert (=> b!654324 m!627489))

(assert (=> b!654317 m!627481))

(assert (=> b!654317 m!627481))

(declare-fun m!627491 () Bool)

(assert (=> b!654317 m!627491))

(assert (=> b!654329 m!627481))

(declare-fun m!627493 () Bool)

(assert (=> b!654329 m!627493))

(declare-fun m!627495 () Bool)

(assert (=> b!654329 m!627495))

(declare-fun m!627497 () Bool)

(assert (=> b!654309 m!627497))

(assert (=> b!654311 m!627493))

(declare-fun m!627499 () Bool)

(assert (=> b!654311 m!627499))

(declare-fun m!627501 () Bool)

(assert (=> start!59348 m!627501))

(declare-fun m!627503 () Bool)

(assert (=> start!59348 m!627503))

(declare-fun m!627505 () Bool)

(assert (=> b!654322 m!627505))

(declare-fun m!627507 () Bool)

(assert (=> b!654327 m!627507))

(assert (=> b!654318 m!627481))

(declare-fun m!627509 () Bool)

(assert (=> b!654318 m!627509))

(assert (=> b!654318 m!627481))

(assert (=> b!654318 m!627481))

(declare-fun m!627511 () Bool)

(assert (=> b!654318 m!627511))

(declare-fun m!627513 () Bool)

(assert (=> b!654318 m!627513))

(declare-fun m!627515 () Bool)

(assert (=> b!654318 m!627515))

(assert (=> b!654318 m!627481))

(declare-fun m!627517 () Bool)

(assert (=> b!654318 m!627517))

(declare-fun m!627519 () Bool)

(assert (=> b!654318 m!627519))

(declare-fun m!627521 () Bool)

(assert (=> b!654318 m!627521))

(assert (=> b!654307 m!627481))

(assert (=> b!654307 m!627481))

(declare-fun m!627523 () Bool)

(assert (=> b!654307 m!627523))

(declare-fun m!627525 () Bool)

(assert (=> b!654314 m!627525))

(assert (=> b!654314 m!627481))

(declare-fun m!627527 () Bool)

(assert (=> b!654314 m!627527))

(assert (=> b!654314 m!627481))

(assert (=> b!654314 m!627481))

(declare-fun m!627529 () Bool)

(assert (=> b!654314 m!627529))

(assert (=> b!654314 m!627481))

(declare-fun m!627531 () Bool)

(assert (=> b!654314 m!627531))

(assert (=> b!654314 m!627481))

(declare-fun m!627533 () Bool)

(assert (=> b!654314 m!627533))

(declare-fun m!627535 () Bool)

(assert (=> b!654314 m!627535))

(assert (=> b!654314 m!627519))

(assert (=> b!654314 m!627521))

(assert (=> b!654326 m!627481))

(assert (=> b!654326 m!627481))

(assert (=> b!654326 m!627529))

(declare-fun m!627537 () Bool)

(assert (=> b!654308 m!627537))

(assert (=> b!654316 m!627481))

(assert (=> b!654316 m!627481))

(assert (=> b!654316 m!627523))

(declare-fun m!627539 () Bool)

(assert (=> b!654328 m!627539))

(declare-fun m!627541 () Bool)

(assert (=> b!654328 m!627541))

(assert (=> b!654328 m!627481))

(declare-fun m!627543 () Bool)

(assert (=> b!654328 m!627543))

(assert (=> b!654328 m!627493))

(declare-fun m!627545 () Bool)

(assert (=> b!654328 m!627545))

(declare-fun m!627547 () Bool)

(assert (=> b!654328 m!627547))

(declare-fun m!627549 () Bool)

(assert (=> b!654328 m!627549))

(assert (=> b!654328 m!627481))

(check-sat (not b!654316) (not b!654307) (not b!654322) (not b!654324) (not b!654326) (not b!654314) (not b!654318) (not b!654328) (not start!59348) (not b!654323) (not b!654327) (not b!654317) (not b!654319) (not b!654309))
(check-sat)
