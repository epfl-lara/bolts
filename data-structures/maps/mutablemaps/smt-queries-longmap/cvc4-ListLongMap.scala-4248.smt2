; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58894 () Bool)

(assert start!58894)

(declare-fun b!649320 () Bool)

(declare-fun e!372444 () Bool)

(declare-fun e!372446 () Bool)

(assert (=> b!649320 (= e!372444 e!372446)))

(declare-fun res!420979 () Bool)

(assert (=> b!649320 (=> (not res!420979) (not e!372446))))

(declare-datatypes ((SeekEntryResult!6905 0))(
  ( (MissingZero!6905 (index!29966 (_ BitVec 32))) (Found!6905 (index!29967 (_ BitVec 32))) (Intermediate!6905 (undefined!7717 Bool) (index!29968 (_ BitVec 32)) (x!58775 (_ BitVec 32))) (Undefined!6905) (MissingVacant!6905 (index!29969 (_ BitVec 32))) )
))
(declare-fun lt!301577 () SeekEntryResult!6905)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38512 0))(
  ( (array!38513 (arr!18458 (Array (_ BitVec 32) (_ BitVec 64))) (size!18822 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38512)

(assert (=> b!649320 (= res!420979 (and (= lt!301577 (Found!6905 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18458 a!2986) index!984) (select (arr!18458 a!2986) j!136))) (not (= (select (arr!18458 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38512 (_ BitVec 32)) SeekEntryResult!6905)

(assert (=> b!649320 (= lt!301577 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18458 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!649321 () Bool)

(declare-datatypes ((Unit!22102 0))(
  ( (Unit!22103) )
))
(declare-fun e!372440 () Unit!22102)

(declare-fun Unit!22104 () Unit!22102)

(assert (=> b!649321 (= e!372440 Unit!22104)))

(declare-fun lt!301572 () array!38512)

(declare-fun lt!301571 () Unit!22102)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38512 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22102)

(assert (=> b!649321 (= lt!301571 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301572 (select (arr!18458 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!649321 (arrayContainsKey!0 lt!301572 (select (arr!18458 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301585 () Unit!22102)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((List!12552 0))(
  ( (Nil!12549) (Cons!12548 (h!13593 (_ BitVec 64)) (t!18788 List!12552)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38512 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12552) Unit!22102)

(assert (=> b!649321 (= lt!301585 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12549))))

(declare-fun arrayNoDuplicates!0 (array!38512 (_ BitVec 32) List!12552) Bool)

(assert (=> b!649321 (arrayNoDuplicates!0 lt!301572 #b00000000000000000000000000000000 Nil!12549)))

(declare-fun lt!301574 () Unit!22102)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38512 (_ BitVec 32) (_ BitVec 32)) Unit!22102)

(assert (=> b!649321 (= lt!301574 (lemmaNoDuplicateFromThenFromBigger!0 lt!301572 #b00000000000000000000000000000000 j!136))))

(assert (=> b!649321 (arrayNoDuplicates!0 lt!301572 j!136 Nil!12549)))

(declare-fun lt!301582 () Unit!22102)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38512 (_ BitVec 64) (_ BitVec 32) List!12552) Unit!22102)

(assert (=> b!649321 (= lt!301582 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301572 (select (arr!18458 a!2986) j!136) j!136 Nil!12549))))

(assert (=> b!649321 false))

(declare-fun b!649322 () Bool)

(declare-fun e!372441 () Unit!22102)

(declare-fun Unit!22105 () Unit!22102)

(assert (=> b!649322 (= e!372441 Unit!22105)))

(assert (=> b!649322 false))

(declare-fun b!649323 () Bool)

(declare-fun res!420991 () Bool)

(declare-fun e!372449 () Bool)

(assert (=> b!649323 (=> (not res!420991) (not e!372449))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!649323 (= res!420991 (validKeyInArray!0 (select (arr!18458 a!2986) j!136)))))

(declare-fun e!372454 () Bool)

(declare-fun b!649324 () Bool)

(assert (=> b!649324 (= e!372454 (arrayContainsKey!0 lt!301572 (select (arr!18458 a!2986) j!136) index!984))))

(declare-fun b!649325 () Bool)

(declare-fun res!420981 () Bool)

(declare-fun e!372445 () Bool)

(assert (=> b!649325 (=> res!420981 e!372445)))

(declare-fun contains!3175 (List!12552 (_ BitVec 64)) Bool)

(assert (=> b!649325 (= res!420981 (contains!3175 Nil!12549 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!649326 () Bool)

(declare-fun e!372450 () Bool)

(declare-fun e!372452 () Bool)

(assert (=> b!649326 (= e!372450 e!372452)))

(declare-fun res!420990 () Bool)

(assert (=> b!649326 (=> res!420990 e!372452)))

(declare-fun lt!301586 () (_ BitVec 64))

(declare-fun lt!301581 () (_ BitVec 64))

(assert (=> b!649326 (= res!420990 (or (not (= (select (arr!18458 a!2986) j!136) lt!301581)) (not (= (select (arr!18458 a!2986) j!136) lt!301586))))))

(declare-fun e!372442 () Bool)

(assert (=> b!649326 e!372442))

(declare-fun res!420977 () Bool)

(assert (=> b!649326 (=> (not res!420977) (not e!372442))))

(assert (=> b!649326 (= res!420977 (= lt!301586 (select (arr!18458 a!2986) j!136)))))

(assert (=> b!649326 (= lt!301586 (select (store (arr!18458 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!649327 () Bool)

(declare-fun res!420994 () Bool)

(assert (=> b!649327 (=> (not res!420994) (not e!372449))))

(assert (=> b!649327 (= res!420994 (and (= (size!18822 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18822 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18822 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!649328 () Bool)

(declare-fun res!420992 () Bool)

(assert (=> b!649328 (=> (not res!420992) (not e!372449))))

(assert (=> b!649328 (= res!420992 (validKeyInArray!0 k!1786))))

(declare-fun b!649329 () Bool)

(declare-fun e!372447 () Bool)

(assert (=> b!649329 (= e!372449 e!372447)))

(declare-fun res!420987 () Bool)

(assert (=> b!649329 (=> (not res!420987) (not e!372447))))

(declare-fun lt!301575 () SeekEntryResult!6905)

(assert (=> b!649329 (= res!420987 (or (= lt!301575 (MissingZero!6905 i!1108)) (= lt!301575 (MissingVacant!6905 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38512 (_ BitVec 32)) SeekEntryResult!6905)

(assert (=> b!649329 (= lt!301575 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!649330 () Bool)

(declare-fun Unit!22106 () Unit!22102)

(assert (=> b!649330 (= e!372440 Unit!22106)))

(declare-fun b!649331 () Bool)

(declare-fun res!420982 () Bool)

(assert (=> b!649331 (=> (not res!420982) (not e!372447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38512 (_ BitVec 32)) Bool)

(assert (=> b!649331 (= res!420982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!649332 () Bool)

(declare-fun res!420995 () Bool)

(assert (=> b!649332 (=> (not res!420995) (not e!372447))))

(assert (=> b!649332 (= res!420995 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12549))))

(declare-fun b!649333 () Bool)

(declare-fun res!420984 () Bool)

(assert (=> b!649333 (=> res!420984 e!372445)))

(assert (=> b!649333 (= res!420984 (contains!3175 Nil!12549 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!649334 () Bool)

(declare-fun e!372439 () Bool)

(declare-fun lt!301578 () SeekEntryResult!6905)

(assert (=> b!649334 (= e!372439 (= lt!301577 lt!301578))))

(declare-fun b!649335 () Bool)

(assert (=> b!649335 (= e!372446 (not e!372450))))

(declare-fun res!420997 () Bool)

(assert (=> b!649335 (=> res!420997 e!372450)))

(declare-fun lt!301573 () SeekEntryResult!6905)

(assert (=> b!649335 (= res!420997 (not (= lt!301573 (Found!6905 index!984))))))

(declare-fun lt!301579 () Unit!22102)

(assert (=> b!649335 (= lt!301579 e!372441)))

(declare-fun c!74540 () Bool)

(assert (=> b!649335 (= c!74540 (= lt!301573 Undefined!6905))))

(assert (=> b!649335 (= lt!301573 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301581 lt!301572 mask!3053))))

(assert (=> b!649335 e!372439))

(declare-fun res!420988 () Bool)

(assert (=> b!649335 (=> (not res!420988) (not e!372439))))

(declare-fun lt!301584 () (_ BitVec 32))

(assert (=> b!649335 (= res!420988 (= lt!301578 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301584 vacantSpotIndex!68 lt!301581 lt!301572 mask!3053)))))

(assert (=> b!649335 (= lt!301578 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301584 vacantSpotIndex!68 (select (arr!18458 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!649335 (= lt!301581 (select (store (arr!18458 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!301580 () Unit!22102)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38512 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22102)

(assert (=> b!649335 (= lt!301580 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301584 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!649335 (= lt!301584 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!649336 () Bool)

(declare-fun e!372443 () Bool)

(assert (=> b!649336 (= e!372442 e!372443)))

(declare-fun res!420978 () Bool)

(assert (=> b!649336 (=> res!420978 e!372443)))

(assert (=> b!649336 (= res!420978 (or (not (= (select (arr!18458 a!2986) j!136) lt!301581)) (not (= (select (arr!18458 a!2986) j!136) lt!301586)) (bvsge j!136 index!984)))))

(declare-fun b!649337 () Bool)

(declare-fun res!420986 () Bool)

(assert (=> b!649337 (=> (not res!420986) (not e!372449))))

(assert (=> b!649337 (= res!420986 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!649338 () Bool)

(declare-fun Unit!22107 () Unit!22102)

(assert (=> b!649338 (= e!372441 Unit!22107)))

(declare-fun b!649339 () Bool)

(assert (=> b!649339 (= e!372447 e!372444)))

(declare-fun res!420993 () Bool)

(assert (=> b!649339 (=> (not res!420993) (not e!372444))))

(assert (=> b!649339 (= res!420993 (= (select (store (arr!18458 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649339 (= lt!301572 (array!38513 (store (arr!18458 a!2986) i!1108 k!1786) (size!18822 a!2986)))))

(declare-fun b!649340 () Bool)

(declare-fun res!420996 () Bool)

(assert (=> b!649340 (=> res!420996 e!372445)))

(declare-fun noDuplicate!435 (List!12552) Bool)

(assert (=> b!649340 (= res!420996 (not (noDuplicate!435 Nil!12549)))))

(declare-fun res!420989 () Bool)

(assert (=> start!58894 (=> (not res!420989) (not e!372449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58894 (= res!420989 (validMask!0 mask!3053))))

(assert (=> start!58894 e!372449))

(assert (=> start!58894 true))

(declare-fun array_inv!14232 (array!38512) Bool)

(assert (=> start!58894 (array_inv!14232 a!2986)))

(declare-fun b!649341 () Bool)

(declare-fun e!372448 () Bool)

(assert (=> b!649341 (= e!372448 (arrayContainsKey!0 lt!301572 (select (arr!18458 a!2986) j!136) index!984))))

(declare-fun b!649342 () Bool)

(declare-fun e!372453 () Bool)

(assert (=> b!649342 (= e!372452 e!372453)))

(declare-fun res!420998 () Bool)

(assert (=> b!649342 (=> res!420998 e!372453)))

(assert (=> b!649342 (= res!420998 (bvsge index!984 j!136))))

(declare-fun lt!301583 () Unit!22102)

(assert (=> b!649342 (= lt!301583 e!372440)))

(declare-fun c!74539 () Bool)

(assert (=> b!649342 (= c!74539 (bvslt j!136 index!984))))

(declare-fun b!649343 () Bool)

(assert (=> b!649343 (= e!372445 true)))

(declare-fun lt!301587 () Bool)

(assert (=> b!649343 (= lt!301587 (contains!3175 Nil!12549 k!1786))))

(declare-fun b!649344 () Bool)

(assert (=> b!649344 (= e!372453 e!372445)))

(declare-fun res!420980 () Bool)

(assert (=> b!649344 (=> res!420980 e!372445)))

(assert (=> b!649344 (= res!420980 (or (bvsge (size!18822 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18822 a!2986))))))

(assert (=> b!649344 (arrayContainsKey!0 lt!301572 (select (arr!18458 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301576 () Unit!22102)

(assert (=> b!649344 (= lt!301576 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301572 (select (arr!18458 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!649344 e!372448))

(declare-fun res!420985 () Bool)

(assert (=> b!649344 (=> (not res!420985) (not e!372448))))

(assert (=> b!649344 (= res!420985 (arrayContainsKey!0 lt!301572 (select (arr!18458 a!2986) j!136) j!136))))

(declare-fun b!649345 () Bool)

(assert (=> b!649345 (= e!372443 e!372454)))

(declare-fun res!420976 () Bool)

(assert (=> b!649345 (=> (not res!420976) (not e!372454))))

(assert (=> b!649345 (= res!420976 (arrayContainsKey!0 lt!301572 (select (arr!18458 a!2986) j!136) j!136))))

(declare-fun b!649346 () Bool)

(declare-fun res!420983 () Bool)

(assert (=> b!649346 (=> (not res!420983) (not e!372447))))

(assert (=> b!649346 (= res!420983 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18458 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!58894 res!420989) b!649327))

(assert (= (and b!649327 res!420994) b!649323))

(assert (= (and b!649323 res!420991) b!649328))

(assert (= (and b!649328 res!420992) b!649337))

(assert (= (and b!649337 res!420986) b!649329))

(assert (= (and b!649329 res!420987) b!649331))

(assert (= (and b!649331 res!420982) b!649332))

(assert (= (and b!649332 res!420995) b!649346))

(assert (= (and b!649346 res!420983) b!649339))

(assert (= (and b!649339 res!420993) b!649320))

(assert (= (and b!649320 res!420979) b!649335))

(assert (= (and b!649335 res!420988) b!649334))

(assert (= (and b!649335 c!74540) b!649322))

(assert (= (and b!649335 (not c!74540)) b!649338))

(assert (= (and b!649335 (not res!420997)) b!649326))

(assert (= (and b!649326 res!420977) b!649336))

(assert (= (and b!649336 (not res!420978)) b!649345))

(assert (= (and b!649345 res!420976) b!649324))

(assert (= (and b!649326 (not res!420990)) b!649342))

(assert (= (and b!649342 c!74539) b!649321))

(assert (= (and b!649342 (not c!74539)) b!649330))

(assert (= (and b!649342 (not res!420998)) b!649344))

(assert (= (and b!649344 res!420985) b!649341))

(assert (= (and b!649344 (not res!420980)) b!649340))

(assert (= (and b!649340 (not res!420996)) b!649333))

(assert (= (and b!649333 (not res!420984)) b!649325))

(assert (= (and b!649325 (not res!420981)) b!649343))

(declare-fun m!622635 () Bool)

(assert (=> b!649331 m!622635))

(declare-fun m!622637 () Bool)

(assert (=> b!649328 m!622637))

(declare-fun m!622639 () Bool)

(assert (=> b!649324 m!622639))

(assert (=> b!649324 m!622639))

(declare-fun m!622641 () Bool)

(assert (=> b!649324 m!622641))

(declare-fun m!622643 () Bool)

(assert (=> b!649325 m!622643))

(assert (=> b!649345 m!622639))

(assert (=> b!649345 m!622639))

(declare-fun m!622645 () Bool)

(assert (=> b!649345 m!622645))

(declare-fun m!622647 () Bool)

(assert (=> b!649332 m!622647))

(declare-fun m!622649 () Bool)

(assert (=> b!649337 m!622649))

(declare-fun m!622651 () Bool)

(assert (=> b!649320 m!622651))

(assert (=> b!649320 m!622639))

(assert (=> b!649320 m!622639))

(declare-fun m!622653 () Bool)

(assert (=> b!649320 m!622653))

(declare-fun m!622655 () Bool)

(assert (=> b!649329 m!622655))

(assert (=> b!649344 m!622639))

(assert (=> b!649344 m!622639))

(declare-fun m!622657 () Bool)

(assert (=> b!649344 m!622657))

(assert (=> b!649344 m!622639))

(declare-fun m!622659 () Bool)

(assert (=> b!649344 m!622659))

(assert (=> b!649344 m!622639))

(assert (=> b!649344 m!622645))

(declare-fun m!622661 () Bool)

(assert (=> b!649339 m!622661))

(declare-fun m!622663 () Bool)

(assert (=> b!649339 m!622663))

(declare-fun m!622665 () Bool)

(assert (=> b!649346 m!622665))

(declare-fun m!622667 () Bool)

(assert (=> b!649335 m!622667))

(declare-fun m!622669 () Bool)

(assert (=> b!649335 m!622669))

(assert (=> b!649335 m!622639))

(assert (=> b!649335 m!622661))

(declare-fun m!622671 () Bool)

(assert (=> b!649335 m!622671))

(assert (=> b!649335 m!622639))

(declare-fun m!622673 () Bool)

(assert (=> b!649335 m!622673))

(declare-fun m!622675 () Bool)

(assert (=> b!649335 m!622675))

(declare-fun m!622677 () Bool)

(assert (=> b!649335 m!622677))

(assert (=> b!649326 m!622639))

(assert (=> b!649326 m!622661))

(declare-fun m!622679 () Bool)

(assert (=> b!649326 m!622679))

(declare-fun m!622681 () Bool)

(assert (=> b!649343 m!622681))

(declare-fun m!622683 () Bool)

(assert (=> start!58894 m!622683))

(declare-fun m!622685 () Bool)

(assert (=> start!58894 m!622685))

(assert (=> b!649321 m!622639))

(declare-fun m!622687 () Bool)

(assert (=> b!649321 m!622687))

(assert (=> b!649321 m!622639))

(declare-fun m!622689 () Bool)

(assert (=> b!649321 m!622689))

(assert (=> b!649321 m!622639))

(declare-fun m!622691 () Bool)

(assert (=> b!649321 m!622691))

(declare-fun m!622693 () Bool)

(assert (=> b!649321 m!622693))

(assert (=> b!649321 m!622639))

(declare-fun m!622695 () Bool)

(assert (=> b!649321 m!622695))

(declare-fun m!622697 () Bool)

(assert (=> b!649321 m!622697))

(declare-fun m!622699 () Bool)

(assert (=> b!649321 m!622699))

(declare-fun m!622701 () Bool)

(assert (=> b!649333 m!622701))

(assert (=> b!649336 m!622639))

(declare-fun m!622703 () Bool)

(assert (=> b!649340 m!622703))

(assert (=> b!649323 m!622639))

(assert (=> b!649323 m!622639))

(declare-fun m!622705 () Bool)

(assert (=> b!649323 m!622705))

(assert (=> b!649341 m!622639))

(assert (=> b!649341 m!622639))

(assert (=> b!649341 m!622641))

(push 1)

