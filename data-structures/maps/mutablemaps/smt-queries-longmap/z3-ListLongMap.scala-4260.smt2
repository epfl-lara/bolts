; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59132 () Bool)

(assert start!59132)

(declare-fun b!652425 () Bool)

(declare-fun e!374499 () Bool)

(declare-fun e!374489 () Bool)

(assert (=> b!652425 (= e!374499 e!374489)))

(declare-fun res!423242 () Bool)

(assert (=> b!652425 (=> res!423242 e!374489)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!303710 () (_ BitVec 64))

(declare-fun lt!303716 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38588 0))(
  ( (array!38589 (arr!18493 (Array (_ BitVec 32) (_ BitVec 64))) (size!18857 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38588)

(assert (=> b!652425 (= res!423242 (or (not (= (select (arr!18493 a!2986) j!136) lt!303716)) (not (= (select (arr!18493 a!2986) j!136) lt!303710)) (bvsge j!136 index!984)))))

(declare-fun b!652426 () Bool)

(declare-datatypes ((Unit!22312 0))(
  ( (Unit!22313) )
))
(declare-fun e!374490 () Unit!22312)

(declare-fun Unit!22314 () Unit!22312)

(assert (=> b!652426 (= e!374490 Unit!22314)))

(assert (=> b!652426 false))

(declare-fun b!652427 () Bool)

(declare-fun e!374501 () Bool)

(declare-datatypes ((SeekEntryResult!6940 0))(
  ( (MissingZero!6940 (index!30112 (_ BitVec 32))) (Found!6940 (index!30113 (_ BitVec 32))) (Intermediate!6940 (undefined!7752 Bool) (index!30114 (_ BitVec 32)) (x!58924 (_ BitVec 32))) (Undefined!6940) (MissingVacant!6940 (index!30115 (_ BitVec 32))) )
))
(declare-fun lt!303715 () SeekEntryResult!6940)

(declare-fun lt!303703 () SeekEntryResult!6940)

(assert (=> b!652427 (= e!374501 (= lt!303715 lt!303703))))

(declare-fun lt!303712 () array!38588)

(declare-fun b!652429 () Bool)

(declare-fun e!374502 () Bool)

(declare-fun arrayContainsKey!0 (array!38588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!652429 (= e!374502 (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) index!984))))

(declare-fun b!652430 () Bool)

(declare-fun e!374493 () Bool)

(declare-fun e!374498 () Bool)

(assert (=> b!652430 (= e!374493 e!374498)))

(declare-fun res!423243 () Bool)

(assert (=> b!652430 (=> (not res!423243) (not e!374498))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!652430 (= res!423243 (and (= lt!303715 (Found!6940 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18493 a!2986) index!984) (select (arr!18493 a!2986) j!136))) (not (= (select (arr!18493 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38588 (_ BitVec 32)) SeekEntryResult!6940)

(assert (=> b!652430 (= lt!303715 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18493 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!652431 () Bool)

(declare-fun e!374497 () Unit!22312)

(declare-fun Unit!22315 () Unit!22312)

(assert (=> b!652431 (= e!374497 Unit!22315)))

(declare-fun b!652432 () Bool)

(declare-fun e!374494 () Bool)

(declare-fun e!374496 () Bool)

(assert (=> b!652432 (= e!374494 e!374496)))

(declare-fun res!423246 () Bool)

(assert (=> b!652432 (=> res!423246 e!374496)))

(assert (=> b!652432 (= res!423246 (or (bvsge (size!18857 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18857 a!2986)) (bvsge index!984 (size!18857 a!2986))))))

(declare-datatypes ((List!12587 0))(
  ( (Nil!12584) (Cons!12583 (h!13628 (_ BitVec 64)) (t!18823 List!12587)) )
))
(declare-fun arrayNoDuplicates!0 (array!38588 (_ BitVec 32) List!12587) Bool)

(assert (=> b!652432 (arrayNoDuplicates!0 lt!303712 index!984 Nil!12584)))

(declare-fun lt!303717 () Unit!22312)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38588 (_ BitVec 32) (_ BitVec 32)) Unit!22312)

(assert (=> b!652432 (= lt!303717 (lemmaNoDuplicateFromThenFromBigger!0 lt!303712 #b00000000000000000000000000000000 index!984))))

(assert (=> b!652432 (arrayNoDuplicates!0 lt!303712 #b00000000000000000000000000000000 Nil!12584)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!303714 () Unit!22312)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38588 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12587) Unit!22312)

(assert (=> b!652432 (= lt!303714 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12584))))

(assert (=> b!652432 (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303708 () Unit!22312)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38588 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22312)

(assert (=> b!652432 (= lt!303708 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303712 (select (arr!18493 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!374500 () Bool)

(assert (=> b!652432 e!374500))

(declare-fun res!423239 () Bool)

(assert (=> b!652432 (=> (not res!423239) (not e!374500))))

(assert (=> b!652432 (= res!423239 (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) j!136))))

(declare-fun b!652433 () Bool)

(declare-fun res!423247 () Bool)

(declare-fun e!374492 () Bool)

(assert (=> b!652433 (=> (not res!423247) (not e!374492))))

(assert (=> b!652433 (= res!423247 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18493 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!652434 () Bool)

(declare-fun e!374488 () Bool)

(assert (=> b!652434 (= e!374498 (not e!374488))))

(declare-fun res!423236 () Bool)

(assert (=> b!652434 (=> res!423236 e!374488)))

(declare-fun lt!303707 () SeekEntryResult!6940)

(assert (=> b!652434 (= res!423236 (not (= lt!303707 (Found!6940 index!984))))))

(declare-fun lt!303705 () Unit!22312)

(assert (=> b!652434 (= lt!303705 e!374490)))

(declare-fun c!74962 () Bool)

(assert (=> b!652434 (= c!74962 (= lt!303707 Undefined!6940))))

(assert (=> b!652434 (= lt!303707 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303716 lt!303712 mask!3053))))

(assert (=> b!652434 e!374501))

(declare-fun res!423254 () Bool)

(assert (=> b!652434 (=> (not res!423254) (not e!374501))))

(declare-fun lt!303713 () (_ BitVec 32))

(assert (=> b!652434 (= res!423254 (= lt!303703 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303713 vacantSpotIndex!68 lt!303716 lt!303712 mask!3053)))))

(assert (=> b!652434 (= lt!303703 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303713 vacantSpotIndex!68 (select (arr!18493 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!652434 (= lt!303716 (select (store (arr!18493 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!303711 () Unit!22312)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38588 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22312)

(assert (=> b!652434 (= lt!303711 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303713 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!652434 (= lt!303713 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!652435 () Bool)

(assert (=> b!652435 (= e!374489 e!374502)))

(declare-fun res!423237 () Bool)

(assert (=> b!652435 (=> (not res!423237) (not e!374502))))

(assert (=> b!652435 (= res!423237 (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) j!136))))

(declare-fun b!652436 () Bool)

(declare-fun res!423240 () Bool)

(declare-fun e!374491 () Bool)

(assert (=> b!652436 (=> (not res!423240) (not e!374491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!652436 (= res!423240 (validKeyInArray!0 k0!1786))))

(declare-fun res!423251 () Bool)

(assert (=> start!59132 (=> (not res!423251) (not e!374491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59132 (= res!423251 (validMask!0 mask!3053))))

(assert (=> start!59132 e!374491))

(assert (=> start!59132 true))

(declare-fun array_inv!14267 (array!38588) Bool)

(assert (=> start!59132 (array_inv!14267 a!2986)))

(declare-fun b!652428 () Bool)

(declare-fun Unit!22316 () Unit!22312)

(assert (=> b!652428 (= e!374490 Unit!22316)))

(declare-fun b!652437 () Bool)

(declare-fun res!423238 () Bool)

(assert (=> b!652437 (=> (not res!423238) (not e!374492))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38588 (_ BitVec 32)) Bool)

(assert (=> b!652437 (= res!423238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!652438 () Bool)

(declare-fun res!423244 () Bool)

(assert (=> b!652438 (=> (not res!423244) (not e!374491))))

(assert (=> b!652438 (= res!423244 (and (= (size!18857 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18857 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18857 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!652439 () Bool)

(declare-fun Unit!22317 () Unit!22312)

(assert (=> b!652439 (= e!374497 Unit!22317)))

(declare-fun lt!303704 () Unit!22312)

(assert (=> b!652439 (= lt!303704 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303712 (select (arr!18493 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!652439 (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303718 () Unit!22312)

(assert (=> b!652439 (= lt!303718 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12584))))

(assert (=> b!652439 (arrayNoDuplicates!0 lt!303712 #b00000000000000000000000000000000 Nil!12584)))

(declare-fun lt!303720 () Unit!22312)

(assert (=> b!652439 (= lt!303720 (lemmaNoDuplicateFromThenFromBigger!0 lt!303712 #b00000000000000000000000000000000 j!136))))

(assert (=> b!652439 (arrayNoDuplicates!0 lt!303712 j!136 Nil!12584)))

(declare-fun lt!303709 () Unit!22312)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38588 (_ BitVec 64) (_ BitVec 32) List!12587) Unit!22312)

(assert (=> b!652439 (= lt!303709 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303712 (select (arr!18493 a!2986) j!136) j!136 Nil!12584))))

(assert (=> b!652439 false))

(declare-fun b!652440 () Bool)

(declare-fun res!423250 () Bool)

(assert (=> b!652440 (=> (not res!423250) (not e!374492))))

(assert (=> b!652440 (= res!423250 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12584))))

(declare-fun b!652441 () Bool)

(declare-fun res!423235 () Bool)

(assert (=> b!652441 (=> (not res!423235) (not e!374491))))

(assert (=> b!652441 (= res!423235 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!652442 () Bool)

(declare-fun e!374503 () Bool)

(assert (=> b!652442 (= e!374488 e!374503)))

(declare-fun res!423252 () Bool)

(assert (=> b!652442 (=> res!423252 e!374503)))

(assert (=> b!652442 (= res!423252 (or (not (= (select (arr!18493 a!2986) j!136) lt!303716)) (not (= (select (arr!18493 a!2986) j!136) lt!303710))))))

(assert (=> b!652442 e!374499))

(declare-fun res!423245 () Bool)

(assert (=> b!652442 (=> (not res!423245) (not e!374499))))

(assert (=> b!652442 (= res!423245 (= lt!303710 (select (arr!18493 a!2986) j!136)))))

(assert (=> b!652442 (= lt!303710 (select (store (arr!18493 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!652443 () Bool)

(declare-fun res!423253 () Bool)

(assert (=> b!652443 (=> (not res!423253) (not e!374491))))

(assert (=> b!652443 (= res!423253 (validKeyInArray!0 (select (arr!18493 a!2986) j!136)))))

(declare-fun b!652444 () Bool)

(assert (=> b!652444 (= e!374491 e!374492)))

(declare-fun res!423241 () Bool)

(assert (=> b!652444 (=> (not res!423241) (not e!374492))))

(declare-fun lt!303719 () SeekEntryResult!6940)

(assert (=> b!652444 (= res!423241 (or (= lt!303719 (MissingZero!6940 i!1108)) (= lt!303719 (MissingVacant!6940 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38588 (_ BitVec 32)) SeekEntryResult!6940)

(assert (=> b!652444 (= lt!303719 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!652445 () Bool)

(assert (=> b!652445 (= e!374503 e!374494)))

(declare-fun res!423249 () Bool)

(assert (=> b!652445 (=> res!423249 e!374494)))

(assert (=> b!652445 (= res!423249 (bvsge index!984 j!136))))

(declare-fun lt!303706 () Unit!22312)

(assert (=> b!652445 (= lt!303706 e!374497)))

(declare-fun c!74963 () Bool)

(assert (=> b!652445 (= c!74963 (bvslt j!136 index!984))))

(declare-fun b!652446 () Bool)

(assert (=> b!652446 (= e!374492 e!374493)))

(declare-fun res!423248 () Bool)

(assert (=> b!652446 (=> (not res!423248) (not e!374493))))

(assert (=> b!652446 (= res!423248 (= (select (store (arr!18493 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!652446 (= lt!303712 (array!38589 (store (arr!18493 a!2986) i!1108 k0!1786) (size!18857 a!2986)))))

(declare-fun b!652447 () Bool)

(declare-fun noDuplicate!437 (List!12587) Bool)

(assert (=> b!652447 (= e!374496 (noDuplicate!437 Nil!12584))))

(declare-fun b!652448 () Bool)

(assert (=> b!652448 (= e!374500 (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) index!984))))

(assert (= (and start!59132 res!423251) b!652438))

(assert (= (and b!652438 res!423244) b!652443))

(assert (= (and b!652443 res!423253) b!652436))

(assert (= (and b!652436 res!423240) b!652441))

(assert (= (and b!652441 res!423235) b!652444))

(assert (= (and b!652444 res!423241) b!652437))

(assert (= (and b!652437 res!423238) b!652440))

(assert (= (and b!652440 res!423250) b!652433))

(assert (= (and b!652433 res!423247) b!652446))

(assert (= (and b!652446 res!423248) b!652430))

(assert (= (and b!652430 res!423243) b!652434))

(assert (= (and b!652434 res!423254) b!652427))

(assert (= (and b!652434 c!74962) b!652426))

(assert (= (and b!652434 (not c!74962)) b!652428))

(assert (= (and b!652434 (not res!423236)) b!652442))

(assert (= (and b!652442 res!423245) b!652425))

(assert (= (and b!652425 (not res!423242)) b!652435))

(assert (= (and b!652435 res!423237) b!652429))

(assert (= (and b!652442 (not res!423252)) b!652445))

(assert (= (and b!652445 c!74963) b!652439))

(assert (= (and b!652445 (not c!74963)) b!652431))

(assert (= (and b!652445 (not res!423249)) b!652432))

(assert (= (and b!652432 res!423239) b!652448))

(assert (= (and b!652432 (not res!423246)) b!652447))

(declare-fun m!625633 () Bool)

(assert (=> b!652439 m!625633))

(declare-fun m!625635 () Bool)

(assert (=> b!652439 m!625635))

(assert (=> b!652439 m!625633))

(declare-fun m!625637 () Bool)

(assert (=> b!652439 m!625637))

(assert (=> b!652439 m!625633))

(declare-fun m!625639 () Bool)

(assert (=> b!652439 m!625639))

(declare-fun m!625641 () Bool)

(assert (=> b!652439 m!625641))

(assert (=> b!652439 m!625633))

(declare-fun m!625643 () Bool)

(assert (=> b!652439 m!625643))

(declare-fun m!625645 () Bool)

(assert (=> b!652439 m!625645))

(declare-fun m!625647 () Bool)

(assert (=> b!652439 m!625647))

(declare-fun m!625649 () Bool)

(assert (=> b!652436 m!625649))

(declare-fun m!625651 () Bool)

(assert (=> b!652440 m!625651))

(assert (=> b!652443 m!625633))

(assert (=> b!652443 m!625633))

(declare-fun m!625653 () Bool)

(assert (=> b!652443 m!625653))

(declare-fun m!625655 () Bool)

(assert (=> b!652447 m!625655))

(declare-fun m!625657 () Bool)

(assert (=> b!652446 m!625657))

(declare-fun m!625659 () Bool)

(assert (=> b!652446 m!625659))

(assert (=> b!652442 m!625633))

(assert (=> b!652442 m!625657))

(declare-fun m!625661 () Bool)

(assert (=> b!652442 m!625661))

(assert (=> b!652448 m!625633))

(assert (=> b!652448 m!625633))

(declare-fun m!625663 () Bool)

(assert (=> b!652448 m!625663))

(assert (=> b!652435 m!625633))

(assert (=> b!652435 m!625633))

(declare-fun m!625665 () Bool)

(assert (=> b!652435 m!625665))

(declare-fun m!625667 () Bool)

(assert (=> b!652444 m!625667))

(declare-fun m!625669 () Bool)

(assert (=> start!59132 m!625669))

(declare-fun m!625671 () Bool)

(assert (=> start!59132 m!625671))

(declare-fun m!625673 () Bool)

(assert (=> b!652433 m!625673))

(declare-fun m!625675 () Bool)

(assert (=> b!652434 m!625675))

(declare-fun m!625677 () Bool)

(assert (=> b!652434 m!625677))

(assert (=> b!652434 m!625633))

(assert (=> b!652434 m!625657))

(declare-fun m!625679 () Bool)

(assert (=> b!652434 m!625679))

(declare-fun m!625681 () Bool)

(assert (=> b!652434 m!625681))

(assert (=> b!652434 m!625633))

(declare-fun m!625683 () Bool)

(assert (=> b!652434 m!625683))

(declare-fun m!625685 () Bool)

(assert (=> b!652434 m!625685))

(assert (=> b!652429 m!625633))

(assert (=> b!652429 m!625633))

(assert (=> b!652429 m!625663))

(assert (=> b!652425 m!625633))

(declare-fun m!625687 () Bool)

(assert (=> b!652441 m!625687))

(declare-fun m!625689 () Bool)

(assert (=> b!652432 m!625689))

(assert (=> b!652432 m!625633))

(assert (=> b!652432 m!625633))

(assert (=> b!652432 m!625665))

(assert (=> b!652432 m!625633))

(declare-fun m!625691 () Bool)

(assert (=> b!652432 m!625691))

(assert (=> b!652432 m!625633))

(declare-fun m!625693 () Bool)

(assert (=> b!652432 m!625693))

(declare-fun m!625695 () Bool)

(assert (=> b!652432 m!625695))

(assert (=> b!652432 m!625645))

(assert (=> b!652432 m!625647))

(declare-fun m!625697 () Bool)

(assert (=> b!652430 m!625697))

(assert (=> b!652430 m!625633))

(assert (=> b!652430 m!625633))

(declare-fun m!625699 () Bool)

(assert (=> b!652430 m!625699))

(declare-fun m!625701 () Bool)

(assert (=> b!652437 m!625701))

(check-sat (not b!652441) (not b!652440) (not b!652432) (not b!652437) (not b!652448) (not b!652443) (not b!652429) (not b!652436) (not b!652439) (not b!652447) (not b!652444) (not b!652434) (not b!652435) (not b!652430) (not start!59132))
(check-sat)
(get-model)

(declare-fun d!92097 () Bool)

(declare-fun e!374554 () Bool)

(assert (=> d!92097 e!374554))

(declare-fun res!423317 () Bool)

(assert (=> d!92097 (=> (not res!423317) (not e!374554))))

(assert (=> d!92097 (= res!423317 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18857 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18857 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18857 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18857 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18857 a!2986))))))

(declare-fun lt!303777 () Unit!22312)

(declare-fun choose!9 (array!38588 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22312)

(assert (=> d!92097 (= lt!303777 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303713 vacantSpotIndex!68 mask!3053))))

(assert (=> d!92097 (validMask!0 mask!3053)))

(assert (=> d!92097 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303713 vacantSpotIndex!68 mask!3053) lt!303777)))

(declare-fun b!652523 () Bool)

(assert (=> b!652523 (= e!374554 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303713 vacantSpotIndex!68 (select (arr!18493 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303713 vacantSpotIndex!68 (select (store (arr!18493 a!2986) i!1108 k0!1786) j!136) (array!38589 (store (arr!18493 a!2986) i!1108 k0!1786) (size!18857 a!2986)) mask!3053)))))

(assert (= (and d!92097 res!423317) b!652523))

(declare-fun m!625773 () Bool)

(assert (=> d!92097 m!625773))

(assert (=> d!92097 m!625669))

(assert (=> b!652523 m!625677))

(declare-fun m!625775 () Bool)

(assert (=> b!652523 m!625775))

(assert (=> b!652523 m!625657))

(assert (=> b!652523 m!625677))

(assert (=> b!652523 m!625633))

(assert (=> b!652523 m!625633))

(assert (=> b!652523 m!625683))

(assert (=> b!652434 d!92097))

(declare-fun b!652536 () Bool)

(declare-fun c!74977 () Bool)

(declare-fun lt!303782 () (_ BitVec 64))

(assert (=> b!652536 (= c!74977 (= lt!303782 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!374563 () SeekEntryResult!6940)

(declare-fun e!374561 () SeekEntryResult!6940)

(assert (=> b!652536 (= e!374563 e!374561)))

(declare-fun lt!303783 () SeekEntryResult!6940)

(declare-fun d!92099 () Bool)

(get-info :version)

(assert (=> d!92099 (and (or ((_ is Undefined!6940) lt!303783) (not ((_ is Found!6940) lt!303783)) (and (bvsge (index!30113 lt!303783) #b00000000000000000000000000000000) (bvslt (index!30113 lt!303783) (size!18857 lt!303712)))) (or ((_ is Undefined!6940) lt!303783) ((_ is Found!6940) lt!303783) (not ((_ is MissingVacant!6940) lt!303783)) (not (= (index!30115 lt!303783) vacantSpotIndex!68)) (and (bvsge (index!30115 lt!303783) #b00000000000000000000000000000000) (bvslt (index!30115 lt!303783) (size!18857 lt!303712)))) (or ((_ is Undefined!6940) lt!303783) (ite ((_ is Found!6940) lt!303783) (= (select (arr!18493 lt!303712) (index!30113 lt!303783)) lt!303716) (and ((_ is MissingVacant!6940) lt!303783) (= (index!30115 lt!303783) vacantSpotIndex!68) (= (select (arr!18493 lt!303712) (index!30115 lt!303783)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!374562 () SeekEntryResult!6940)

(assert (=> d!92099 (= lt!303783 e!374562)))

(declare-fun c!74978 () Bool)

(assert (=> d!92099 (= c!74978 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!92099 (= lt!303782 (select (arr!18493 lt!303712) lt!303713))))

(assert (=> d!92099 (validMask!0 mask!3053)))

(assert (=> d!92099 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303713 vacantSpotIndex!68 lt!303716 lt!303712 mask!3053) lt!303783)))

(declare-fun b!652537 () Bool)

(assert (=> b!652537 (= e!374562 e!374563)))

(declare-fun c!74976 () Bool)

(assert (=> b!652537 (= c!74976 (= lt!303782 lt!303716))))

(declare-fun b!652538 () Bool)

(assert (=> b!652538 (= e!374562 Undefined!6940)))

(declare-fun b!652539 () Bool)

(assert (=> b!652539 (= e!374563 (Found!6940 lt!303713))))

(declare-fun b!652540 () Bool)

(assert (=> b!652540 (= e!374561 (MissingVacant!6940 vacantSpotIndex!68))))

(declare-fun b!652541 () Bool)

(assert (=> b!652541 (= e!374561 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!303713 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!303716 lt!303712 mask!3053))))

(assert (= (and d!92099 c!74978) b!652538))

(assert (= (and d!92099 (not c!74978)) b!652537))

(assert (= (and b!652537 c!74976) b!652539))

(assert (= (and b!652537 (not c!74976)) b!652536))

(assert (= (and b!652536 c!74977) b!652540))

(assert (= (and b!652536 (not c!74977)) b!652541))

(declare-fun m!625777 () Bool)

(assert (=> d!92099 m!625777))

(declare-fun m!625779 () Bool)

(assert (=> d!92099 m!625779))

(declare-fun m!625781 () Bool)

(assert (=> d!92099 m!625781))

(assert (=> d!92099 m!625669))

(declare-fun m!625783 () Bool)

(assert (=> b!652541 m!625783))

(assert (=> b!652541 m!625783))

(declare-fun m!625785 () Bool)

(assert (=> b!652541 m!625785))

(assert (=> b!652434 d!92099))

(declare-fun b!652542 () Bool)

(declare-fun c!74980 () Bool)

(declare-fun lt!303784 () (_ BitVec 64))

(assert (=> b!652542 (= c!74980 (= lt!303784 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!374566 () SeekEntryResult!6940)

(declare-fun e!374564 () SeekEntryResult!6940)

(assert (=> b!652542 (= e!374566 e!374564)))

(declare-fun lt!303785 () SeekEntryResult!6940)

(declare-fun d!92101 () Bool)

(assert (=> d!92101 (and (or ((_ is Undefined!6940) lt!303785) (not ((_ is Found!6940) lt!303785)) (and (bvsge (index!30113 lt!303785) #b00000000000000000000000000000000) (bvslt (index!30113 lt!303785) (size!18857 lt!303712)))) (or ((_ is Undefined!6940) lt!303785) ((_ is Found!6940) lt!303785) (not ((_ is MissingVacant!6940) lt!303785)) (not (= (index!30115 lt!303785) vacantSpotIndex!68)) (and (bvsge (index!30115 lt!303785) #b00000000000000000000000000000000) (bvslt (index!30115 lt!303785) (size!18857 lt!303712)))) (or ((_ is Undefined!6940) lt!303785) (ite ((_ is Found!6940) lt!303785) (= (select (arr!18493 lt!303712) (index!30113 lt!303785)) lt!303716) (and ((_ is MissingVacant!6940) lt!303785) (= (index!30115 lt!303785) vacantSpotIndex!68) (= (select (arr!18493 lt!303712) (index!30115 lt!303785)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!374565 () SeekEntryResult!6940)

(assert (=> d!92101 (= lt!303785 e!374565)))

(declare-fun c!74981 () Bool)

(assert (=> d!92101 (= c!74981 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!92101 (= lt!303784 (select (arr!18493 lt!303712) index!984))))

(assert (=> d!92101 (validMask!0 mask!3053)))

(assert (=> d!92101 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303716 lt!303712 mask!3053) lt!303785)))

(declare-fun b!652543 () Bool)

(assert (=> b!652543 (= e!374565 e!374566)))

(declare-fun c!74979 () Bool)

(assert (=> b!652543 (= c!74979 (= lt!303784 lt!303716))))

(declare-fun b!652544 () Bool)

(assert (=> b!652544 (= e!374565 Undefined!6940)))

(declare-fun b!652545 () Bool)

(assert (=> b!652545 (= e!374566 (Found!6940 index!984))))

(declare-fun b!652546 () Bool)

(assert (=> b!652546 (= e!374564 (MissingVacant!6940 vacantSpotIndex!68))))

(declare-fun b!652547 () Bool)

(assert (=> b!652547 (= e!374564 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!303716 lt!303712 mask!3053))))

(assert (= (and d!92101 c!74981) b!652544))

(assert (= (and d!92101 (not c!74981)) b!652543))

(assert (= (and b!652543 c!74979) b!652545))

(assert (= (and b!652543 (not c!74979)) b!652542))

(assert (= (and b!652542 c!74980) b!652546))

(assert (= (and b!652542 (not c!74980)) b!652547))

(declare-fun m!625787 () Bool)

(assert (=> d!92101 m!625787))

(declare-fun m!625789 () Bool)

(assert (=> d!92101 m!625789))

(declare-fun m!625791 () Bool)

(assert (=> d!92101 m!625791))

(assert (=> d!92101 m!625669))

(assert (=> b!652547 m!625675))

(assert (=> b!652547 m!625675))

(declare-fun m!625793 () Bool)

(assert (=> b!652547 m!625793))

(assert (=> b!652434 d!92101))

(declare-fun d!92103 () Bool)

(declare-fun lt!303788 () (_ BitVec 32))

(assert (=> d!92103 (and (bvsge lt!303788 #b00000000000000000000000000000000) (bvslt lt!303788 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92103 (= lt!303788 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!92103 (validMask!0 mask!3053)))

(assert (=> d!92103 (= (nextIndex!0 index!984 x!910 mask!3053) lt!303788)))

(declare-fun bs!19448 () Bool)

(assert (= bs!19448 d!92103))

(declare-fun m!625795 () Bool)

(assert (=> bs!19448 m!625795))

(assert (=> bs!19448 m!625669))

(assert (=> b!652434 d!92103))

(declare-fun b!652548 () Bool)

(declare-fun c!74983 () Bool)

(declare-fun lt!303789 () (_ BitVec 64))

(assert (=> b!652548 (= c!74983 (= lt!303789 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!374569 () SeekEntryResult!6940)

(declare-fun e!374567 () SeekEntryResult!6940)

(assert (=> b!652548 (= e!374569 e!374567)))

(declare-fun lt!303790 () SeekEntryResult!6940)

(declare-fun d!92105 () Bool)

(assert (=> d!92105 (and (or ((_ is Undefined!6940) lt!303790) (not ((_ is Found!6940) lt!303790)) (and (bvsge (index!30113 lt!303790) #b00000000000000000000000000000000) (bvslt (index!30113 lt!303790) (size!18857 a!2986)))) (or ((_ is Undefined!6940) lt!303790) ((_ is Found!6940) lt!303790) (not ((_ is MissingVacant!6940) lt!303790)) (not (= (index!30115 lt!303790) vacantSpotIndex!68)) (and (bvsge (index!30115 lt!303790) #b00000000000000000000000000000000) (bvslt (index!30115 lt!303790) (size!18857 a!2986)))) (or ((_ is Undefined!6940) lt!303790) (ite ((_ is Found!6940) lt!303790) (= (select (arr!18493 a!2986) (index!30113 lt!303790)) (select (arr!18493 a!2986) j!136)) (and ((_ is MissingVacant!6940) lt!303790) (= (index!30115 lt!303790) vacantSpotIndex!68) (= (select (arr!18493 a!2986) (index!30115 lt!303790)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!374568 () SeekEntryResult!6940)

(assert (=> d!92105 (= lt!303790 e!374568)))

(declare-fun c!74984 () Bool)

(assert (=> d!92105 (= c!74984 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!92105 (= lt!303789 (select (arr!18493 a!2986) lt!303713))))

(assert (=> d!92105 (validMask!0 mask!3053)))

(assert (=> d!92105 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303713 vacantSpotIndex!68 (select (arr!18493 a!2986) j!136) a!2986 mask!3053) lt!303790)))

(declare-fun b!652549 () Bool)

(assert (=> b!652549 (= e!374568 e!374569)))

(declare-fun c!74982 () Bool)

(assert (=> b!652549 (= c!74982 (= lt!303789 (select (arr!18493 a!2986) j!136)))))

(declare-fun b!652550 () Bool)

(assert (=> b!652550 (= e!374568 Undefined!6940)))

(declare-fun b!652551 () Bool)

(assert (=> b!652551 (= e!374569 (Found!6940 lt!303713))))

(declare-fun b!652552 () Bool)

(assert (=> b!652552 (= e!374567 (MissingVacant!6940 vacantSpotIndex!68))))

(declare-fun b!652553 () Bool)

(assert (=> b!652553 (= e!374567 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!303713 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18493 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!92105 c!74984) b!652550))

(assert (= (and d!92105 (not c!74984)) b!652549))

(assert (= (and b!652549 c!74982) b!652551))

(assert (= (and b!652549 (not c!74982)) b!652548))

(assert (= (and b!652548 c!74983) b!652552))

(assert (= (and b!652548 (not c!74983)) b!652553))

(declare-fun m!625797 () Bool)

(assert (=> d!92105 m!625797))

(declare-fun m!625799 () Bool)

(assert (=> d!92105 m!625799))

(declare-fun m!625801 () Bool)

(assert (=> d!92105 m!625801))

(assert (=> d!92105 m!625669))

(assert (=> b!652553 m!625783))

(assert (=> b!652553 m!625783))

(assert (=> b!652553 m!625633))

(declare-fun m!625803 () Bool)

(assert (=> b!652553 m!625803))

(assert (=> b!652434 d!92105))

(declare-fun b!652566 () Bool)

(declare-fun c!74991 () Bool)

(declare-fun lt!303799 () (_ BitVec 64))

(assert (=> b!652566 (= c!74991 (= lt!303799 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!374578 () SeekEntryResult!6940)

(declare-fun e!374576 () SeekEntryResult!6940)

(assert (=> b!652566 (= e!374578 e!374576)))

(declare-fun b!652567 () Bool)

(declare-fun lt!303797 () SeekEntryResult!6940)

(assert (=> b!652567 (= e!374576 (MissingZero!6940 (index!30114 lt!303797)))))

(declare-fun b!652568 () Bool)

(declare-fun e!374577 () SeekEntryResult!6940)

(assert (=> b!652568 (= e!374577 e!374578)))

(assert (=> b!652568 (= lt!303799 (select (arr!18493 a!2986) (index!30114 lt!303797)))))

(declare-fun c!74993 () Bool)

(assert (=> b!652568 (= c!74993 (= lt!303799 k0!1786))))

(declare-fun b!652569 () Bool)

(assert (=> b!652569 (= e!374578 (Found!6940 (index!30114 lt!303797)))))

(declare-fun b!652570 () Bool)

(assert (=> b!652570 (= e!374576 (seekKeyOrZeroReturnVacant!0 (x!58924 lt!303797) (index!30114 lt!303797) (index!30114 lt!303797) k0!1786 a!2986 mask!3053))))

(declare-fun b!652571 () Bool)

(assert (=> b!652571 (= e!374577 Undefined!6940)))

(declare-fun d!92107 () Bool)

(declare-fun lt!303798 () SeekEntryResult!6940)

(assert (=> d!92107 (and (or ((_ is Undefined!6940) lt!303798) (not ((_ is Found!6940) lt!303798)) (and (bvsge (index!30113 lt!303798) #b00000000000000000000000000000000) (bvslt (index!30113 lt!303798) (size!18857 a!2986)))) (or ((_ is Undefined!6940) lt!303798) ((_ is Found!6940) lt!303798) (not ((_ is MissingZero!6940) lt!303798)) (and (bvsge (index!30112 lt!303798) #b00000000000000000000000000000000) (bvslt (index!30112 lt!303798) (size!18857 a!2986)))) (or ((_ is Undefined!6940) lt!303798) ((_ is Found!6940) lt!303798) ((_ is MissingZero!6940) lt!303798) (not ((_ is MissingVacant!6940) lt!303798)) (and (bvsge (index!30115 lt!303798) #b00000000000000000000000000000000) (bvslt (index!30115 lt!303798) (size!18857 a!2986)))) (or ((_ is Undefined!6940) lt!303798) (ite ((_ is Found!6940) lt!303798) (= (select (arr!18493 a!2986) (index!30113 lt!303798)) k0!1786) (ite ((_ is MissingZero!6940) lt!303798) (= (select (arr!18493 a!2986) (index!30112 lt!303798)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6940) lt!303798) (= (select (arr!18493 a!2986) (index!30115 lt!303798)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!92107 (= lt!303798 e!374577)))

(declare-fun c!74992 () Bool)

(assert (=> d!92107 (= c!74992 (and ((_ is Intermediate!6940) lt!303797) (undefined!7752 lt!303797)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38588 (_ BitVec 32)) SeekEntryResult!6940)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92107 (= lt!303797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!92107 (validMask!0 mask!3053)))

(assert (=> d!92107 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!303798)))

(assert (= (and d!92107 c!74992) b!652571))

(assert (= (and d!92107 (not c!74992)) b!652568))

(assert (= (and b!652568 c!74993) b!652569))

(assert (= (and b!652568 (not c!74993)) b!652566))

(assert (= (and b!652566 c!74991) b!652567))

(assert (= (and b!652566 (not c!74991)) b!652570))

(declare-fun m!625805 () Bool)

(assert (=> b!652568 m!625805))

(declare-fun m!625807 () Bool)

(assert (=> b!652570 m!625807))

(declare-fun m!625809 () Bool)

(assert (=> d!92107 m!625809))

(declare-fun m!625811 () Bool)

(assert (=> d!92107 m!625811))

(declare-fun m!625813 () Bool)

(assert (=> d!92107 m!625813))

(declare-fun m!625815 () Bool)

(assert (=> d!92107 m!625815))

(assert (=> d!92107 m!625811))

(declare-fun m!625817 () Bool)

(assert (=> d!92107 m!625817))

(assert (=> d!92107 m!625669))

(assert (=> b!652444 d!92107))

(declare-fun d!92113 () Bool)

(assert (=> d!92113 (arrayNoDuplicates!0 lt!303712 index!984 Nil!12584)))

(declare-fun lt!303802 () Unit!22312)

(declare-fun choose!39 (array!38588 (_ BitVec 32) (_ BitVec 32)) Unit!22312)

(assert (=> d!92113 (= lt!303802 (choose!39 lt!303712 #b00000000000000000000000000000000 index!984))))

(assert (=> d!92113 (bvslt (size!18857 lt!303712) #b01111111111111111111111111111111)))

(assert (=> d!92113 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!303712 #b00000000000000000000000000000000 index!984) lt!303802)))

(declare-fun bs!19449 () Bool)

(assert (= bs!19449 d!92113))

(assert (=> bs!19449 m!625689))

(declare-fun m!625819 () Bool)

(assert (=> bs!19449 m!625819))

(assert (=> b!652432 d!92113))

(declare-fun d!92115 () Bool)

(declare-fun res!423326 () Bool)

(declare-fun e!374587 () Bool)

(assert (=> d!92115 (=> res!423326 e!374587)))

(assert (=> d!92115 (= res!423326 (= (select (arr!18493 lt!303712) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18493 a!2986) j!136)))))

(assert (=> d!92115 (= (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!374587)))

(declare-fun b!652580 () Bool)

(declare-fun e!374588 () Bool)

(assert (=> b!652580 (= e!374587 e!374588)))

(declare-fun res!423327 () Bool)

(assert (=> b!652580 (=> (not res!423327) (not e!374588))))

(assert (=> b!652580 (= res!423327 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18857 lt!303712)))))

(declare-fun b!652581 () Bool)

(assert (=> b!652581 (= e!374588 (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92115 (not res!423326)) b!652580))

(assert (= (and b!652580 res!423327) b!652581))

(declare-fun m!625821 () Bool)

(assert (=> d!92115 m!625821))

(assert (=> b!652581 m!625633))

(declare-fun m!625823 () Bool)

(assert (=> b!652581 m!625823))

(assert (=> b!652432 d!92115))

(declare-fun b!652612 () Bool)

(declare-fun e!374609 () Bool)

(declare-fun call!33779 () Bool)

(assert (=> b!652612 (= e!374609 call!33779)))

(declare-fun bm!33776 () Bool)

(declare-fun c!75005 () Bool)

(assert (=> bm!33776 (= call!33779 (arrayNoDuplicates!0 lt!303712 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75005 (Cons!12583 (select (arr!18493 lt!303712) #b00000000000000000000000000000000) Nil!12584) Nil!12584)))))

(declare-fun b!652613 () Bool)

(assert (=> b!652613 (= e!374609 call!33779)))

(declare-fun b!652614 () Bool)

(declare-fun e!374610 () Bool)

(declare-fun e!374608 () Bool)

(assert (=> b!652614 (= e!374610 e!374608)))

(declare-fun res!423337 () Bool)

(assert (=> b!652614 (=> (not res!423337) (not e!374608))))

(declare-fun e!374611 () Bool)

(assert (=> b!652614 (= res!423337 (not e!374611))))

(declare-fun res!423338 () Bool)

(assert (=> b!652614 (=> (not res!423338) (not e!374611))))

(assert (=> b!652614 (= res!423338 (validKeyInArray!0 (select (arr!18493 lt!303712) #b00000000000000000000000000000000)))))

(declare-fun d!92117 () Bool)

(declare-fun res!423336 () Bool)

(assert (=> d!92117 (=> res!423336 e!374610)))

(assert (=> d!92117 (= res!423336 (bvsge #b00000000000000000000000000000000 (size!18857 lt!303712)))))

(assert (=> d!92117 (= (arrayNoDuplicates!0 lt!303712 #b00000000000000000000000000000000 Nil!12584) e!374610)))

(declare-fun b!652615 () Bool)

(assert (=> b!652615 (= e!374608 e!374609)))

(assert (=> b!652615 (= c!75005 (validKeyInArray!0 (select (arr!18493 lt!303712) #b00000000000000000000000000000000)))))

(declare-fun b!652616 () Bool)

(declare-fun contains!3182 (List!12587 (_ BitVec 64)) Bool)

(assert (=> b!652616 (= e!374611 (contains!3182 Nil!12584 (select (arr!18493 lt!303712) #b00000000000000000000000000000000)))))

(assert (= (and d!92117 (not res!423336)) b!652614))

(assert (= (and b!652614 res!423338) b!652616))

(assert (= (and b!652614 res!423337) b!652615))

(assert (= (and b!652615 c!75005) b!652612))

(assert (= (and b!652615 (not c!75005)) b!652613))

(assert (= (or b!652612 b!652613) bm!33776))

(declare-fun m!625829 () Bool)

(assert (=> bm!33776 m!625829))

(declare-fun m!625833 () Bool)

(assert (=> bm!33776 m!625833))

(assert (=> b!652614 m!625829))

(assert (=> b!652614 m!625829))

(declare-fun m!625839 () Bool)

(assert (=> b!652614 m!625839))

(assert (=> b!652615 m!625829))

(assert (=> b!652615 m!625829))

(assert (=> b!652615 m!625839))

(assert (=> b!652616 m!625829))

(assert (=> b!652616 m!625829))

(declare-fun m!625845 () Bool)

(assert (=> b!652616 m!625845))

(assert (=> b!652432 d!92117))

(declare-fun b!652617 () Bool)

(declare-fun e!374613 () Bool)

(declare-fun call!33780 () Bool)

(assert (=> b!652617 (= e!374613 call!33780)))

(declare-fun bm!33777 () Bool)

(declare-fun c!75006 () Bool)

(assert (=> bm!33777 (= call!33780 (arrayNoDuplicates!0 lt!303712 (bvadd index!984 #b00000000000000000000000000000001) (ite c!75006 (Cons!12583 (select (arr!18493 lt!303712) index!984) Nil!12584) Nil!12584)))))

(declare-fun b!652618 () Bool)

(assert (=> b!652618 (= e!374613 call!33780)))

(declare-fun b!652619 () Bool)

(declare-fun e!374614 () Bool)

(declare-fun e!374612 () Bool)

(assert (=> b!652619 (= e!374614 e!374612)))

(declare-fun res!423340 () Bool)

(assert (=> b!652619 (=> (not res!423340) (not e!374612))))

(declare-fun e!374615 () Bool)

(assert (=> b!652619 (= res!423340 (not e!374615))))

(declare-fun res!423341 () Bool)

(assert (=> b!652619 (=> (not res!423341) (not e!374615))))

(assert (=> b!652619 (= res!423341 (validKeyInArray!0 (select (arr!18493 lt!303712) index!984)))))

(declare-fun d!92123 () Bool)

(declare-fun res!423339 () Bool)

(assert (=> d!92123 (=> res!423339 e!374614)))

(assert (=> d!92123 (= res!423339 (bvsge index!984 (size!18857 lt!303712)))))

(assert (=> d!92123 (= (arrayNoDuplicates!0 lt!303712 index!984 Nil!12584) e!374614)))

(declare-fun b!652620 () Bool)

(assert (=> b!652620 (= e!374612 e!374613)))

(assert (=> b!652620 (= c!75006 (validKeyInArray!0 (select (arr!18493 lt!303712) index!984)))))

(declare-fun b!652621 () Bool)

(assert (=> b!652621 (= e!374615 (contains!3182 Nil!12584 (select (arr!18493 lt!303712) index!984)))))

(assert (= (and d!92123 (not res!423339)) b!652619))

(assert (= (and b!652619 res!423341) b!652621))

(assert (= (and b!652619 res!423340) b!652620))

(assert (= (and b!652620 c!75006) b!652617))

(assert (= (and b!652620 (not c!75006)) b!652618))

(assert (= (or b!652617 b!652618) bm!33777))

(assert (=> bm!33777 m!625791))

(declare-fun m!625847 () Bool)

(assert (=> bm!33777 m!625847))

(assert (=> b!652619 m!625791))

(assert (=> b!652619 m!625791))

(declare-fun m!625849 () Bool)

(assert (=> b!652619 m!625849))

(assert (=> b!652620 m!625791))

(assert (=> b!652620 m!625791))

(assert (=> b!652620 m!625849))

(assert (=> b!652621 m!625791))

(assert (=> b!652621 m!625791))

(declare-fun m!625851 () Bool)

(assert (=> b!652621 m!625851))

(assert (=> b!652432 d!92123))

(declare-fun d!92125 () Bool)

(declare-fun res!423342 () Bool)

(declare-fun e!374616 () Bool)

(assert (=> d!92125 (=> res!423342 e!374616)))

(assert (=> d!92125 (= res!423342 (= (select (arr!18493 lt!303712) j!136) (select (arr!18493 a!2986) j!136)))))

(assert (=> d!92125 (= (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) j!136) e!374616)))

(declare-fun b!652622 () Bool)

(declare-fun e!374617 () Bool)

(assert (=> b!652622 (= e!374616 e!374617)))

(declare-fun res!423343 () Bool)

(assert (=> b!652622 (=> (not res!423343) (not e!374617))))

(assert (=> b!652622 (= res!423343 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18857 lt!303712)))))

(declare-fun b!652623 () Bool)

(assert (=> b!652623 (= e!374617 (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92125 (not res!423342)) b!652622))

(assert (= (and b!652622 res!423343) b!652623))

(declare-fun m!625853 () Bool)

(assert (=> d!92125 m!625853))

(assert (=> b!652623 m!625633))

(declare-fun m!625855 () Bool)

(assert (=> b!652623 m!625855))

(assert (=> b!652432 d!92125))

(declare-fun d!92127 () Bool)

(declare-fun e!374626 () Bool)

(assert (=> d!92127 e!374626))

(declare-fun res!423350 () Bool)

(assert (=> d!92127 (=> (not res!423350) (not e!374626))))

(assert (=> d!92127 (= res!423350 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18857 a!2986))))))

(declare-fun lt!303817 () Unit!22312)

(declare-fun choose!41 (array!38588 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12587) Unit!22312)

(assert (=> d!92127 (= lt!303817 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12584))))

(assert (=> d!92127 (bvslt (size!18857 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!92127 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12584) lt!303817)))

(declare-fun b!652634 () Bool)

(assert (=> b!652634 (= e!374626 (arrayNoDuplicates!0 (array!38589 (store (arr!18493 a!2986) i!1108 k0!1786) (size!18857 a!2986)) #b00000000000000000000000000000000 Nil!12584))))

(assert (= (and d!92127 res!423350) b!652634))

(declare-fun m!625857 () Bool)

(assert (=> d!92127 m!625857))

(assert (=> b!652634 m!625657))

(declare-fun m!625859 () Bool)

(assert (=> b!652634 m!625859))

(assert (=> b!652432 d!92127))

(declare-fun d!92129 () Bool)

(assert (=> d!92129 (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303823 () Unit!22312)

(declare-fun choose!114 (array!38588 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22312)

(assert (=> d!92129 (= lt!303823 (choose!114 lt!303712 (select (arr!18493 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!92129 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!92129 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303712 (select (arr!18493 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!303823)))

(declare-fun bs!19450 () Bool)

(assert (= bs!19450 d!92129))

(assert (=> bs!19450 m!625633))

(assert (=> bs!19450 m!625693))

(assert (=> bs!19450 m!625633))

(declare-fun m!625873 () Bool)

(assert (=> bs!19450 m!625873))

(assert (=> b!652432 d!92129))

(declare-fun d!92133 () Bool)

(assert (=> d!92133 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!59132 d!92133))

(declare-fun d!92143 () Bool)

(assert (=> d!92143 (= (array_inv!14267 a!2986) (bvsge (size!18857 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!59132 d!92143))

(declare-fun d!92145 () Bool)

(assert (=> d!92145 (= (validKeyInArray!0 (select (arr!18493 a!2986) j!136)) (and (not (= (select (arr!18493 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18493 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!652443 d!92145))

(declare-fun b!652660 () Bool)

(declare-fun c!75017 () Bool)

(declare-fun lt!303834 () (_ BitVec 64))

(assert (=> b!652660 (= c!75017 (= lt!303834 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!374647 () SeekEntryResult!6940)

(declare-fun e!374645 () SeekEntryResult!6940)

(assert (=> b!652660 (= e!374647 e!374645)))

(declare-fun d!92151 () Bool)

(declare-fun lt!303835 () SeekEntryResult!6940)

(assert (=> d!92151 (and (or ((_ is Undefined!6940) lt!303835) (not ((_ is Found!6940) lt!303835)) (and (bvsge (index!30113 lt!303835) #b00000000000000000000000000000000) (bvslt (index!30113 lt!303835) (size!18857 a!2986)))) (or ((_ is Undefined!6940) lt!303835) ((_ is Found!6940) lt!303835) (not ((_ is MissingVacant!6940) lt!303835)) (not (= (index!30115 lt!303835) vacantSpotIndex!68)) (and (bvsge (index!30115 lt!303835) #b00000000000000000000000000000000) (bvslt (index!30115 lt!303835) (size!18857 a!2986)))) (or ((_ is Undefined!6940) lt!303835) (ite ((_ is Found!6940) lt!303835) (= (select (arr!18493 a!2986) (index!30113 lt!303835)) (select (arr!18493 a!2986) j!136)) (and ((_ is MissingVacant!6940) lt!303835) (= (index!30115 lt!303835) vacantSpotIndex!68) (= (select (arr!18493 a!2986) (index!30115 lt!303835)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!374646 () SeekEntryResult!6940)

(assert (=> d!92151 (= lt!303835 e!374646)))

(declare-fun c!75018 () Bool)

(assert (=> d!92151 (= c!75018 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!92151 (= lt!303834 (select (arr!18493 a!2986) index!984))))

(assert (=> d!92151 (validMask!0 mask!3053)))

(assert (=> d!92151 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18493 a!2986) j!136) a!2986 mask!3053) lt!303835)))

(declare-fun b!652661 () Bool)

(assert (=> b!652661 (= e!374646 e!374647)))

(declare-fun c!75016 () Bool)

(assert (=> b!652661 (= c!75016 (= lt!303834 (select (arr!18493 a!2986) j!136)))))

(declare-fun b!652662 () Bool)

(assert (=> b!652662 (= e!374646 Undefined!6940)))

(declare-fun b!652663 () Bool)

(assert (=> b!652663 (= e!374647 (Found!6940 index!984))))

(declare-fun b!652664 () Bool)

(assert (=> b!652664 (= e!374645 (MissingVacant!6940 vacantSpotIndex!68))))

(declare-fun b!652665 () Bool)

(assert (=> b!652665 (= e!374645 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18493 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!92151 c!75018) b!652662))

(assert (= (and d!92151 (not c!75018)) b!652661))

(assert (= (and b!652661 c!75016) b!652663))

(assert (= (and b!652661 (not c!75016)) b!652660))

(assert (= (and b!652660 c!75017) b!652664))

(assert (= (and b!652660 (not c!75017)) b!652665))

(declare-fun m!625899 () Bool)

(assert (=> d!92151 m!625899))

(declare-fun m!625901 () Bool)

(assert (=> d!92151 m!625901))

(assert (=> d!92151 m!625697))

(assert (=> d!92151 m!625669))

(assert (=> b!652665 m!625675))

(assert (=> b!652665 m!625675))

(assert (=> b!652665 m!625633))

(declare-fun m!625903 () Bool)

(assert (=> b!652665 m!625903))

(assert (=> b!652430 d!92151))

(declare-fun d!92155 () Bool)

(declare-fun res!423362 () Bool)

(declare-fun e!374648 () Bool)

(assert (=> d!92155 (=> res!423362 e!374648)))

(assert (=> d!92155 (= res!423362 (= (select (arr!18493 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!92155 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!374648)))

(declare-fun b!652666 () Bool)

(declare-fun e!374649 () Bool)

(assert (=> b!652666 (= e!374648 e!374649)))

(declare-fun res!423363 () Bool)

(assert (=> b!652666 (=> (not res!423363) (not e!374649))))

(assert (=> b!652666 (= res!423363 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18857 a!2986)))))

(declare-fun b!652667 () Bool)

(assert (=> b!652667 (= e!374649 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!92155 (not res!423362)) b!652666))

(assert (= (and b!652666 res!423363) b!652667))

(declare-fun m!625905 () Bool)

(assert (=> d!92155 m!625905))

(declare-fun m!625907 () Bool)

(assert (=> b!652667 m!625907))

(assert (=> b!652441 d!92155))

(declare-fun b!652668 () Bool)

(declare-fun e!374651 () Bool)

(declare-fun call!33784 () Bool)

(assert (=> b!652668 (= e!374651 call!33784)))

(declare-fun bm!33781 () Bool)

(declare-fun c!75019 () Bool)

(assert (=> bm!33781 (= call!33784 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75019 (Cons!12583 (select (arr!18493 a!2986) #b00000000000000000000000000000000) Nil!12584) Nil!12584)))))

(declare-fun b!652669 () Bool)

(assert (=> b!652669 (= e!374651 call!33784)))

(declare-fun b!652670 () Bool)

(declare-fun e!374652 () Bool)

(declare-fun e!374650 () Bool)

(assert (=> b!652670 (= e!374652 e!374650)))

(declare-fun res!423365 () Bool)

(assert (=> b!652670 (=> (not res!423365) (not e!374650))))

(declare-fun e!374653 () Bool)

(assert (=> b!652670 (= res!423365 (not e!374653))))

(declare-fun res!423366 () Bool)

(assert (=> b!652670 (=> (not res!423366) (not e!374653))))

(assert (=> b!652670 (= res!423366 (validKeyInArray!0 (select (arr!18493 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!92157 () Bool)

(declare-fun res!423364 () Bool)

(assert (=> d!92157 (=> res!423364 e!374652)))

(assert (=> d!92157 (= res!423364 (bvsge #b00000000000000000000000000000000 (size!18857 a!2986)))))

(assert (=> d!92157 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12584) e!374652)))

(declare-fun b!652671 () Bool)

(assert (=> b!652671 (= e!374650 e!374651)))

(assert (=> b!652671 (= c!75019 (validKeyInArray!0 (select (arr!18493 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!652672 () Bool)

(assert (=> b!652672 (= e!374653 (contains!3182 Nil!12584 (select (arr!18493 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!92157 (not res!423364)) b!652670))

(assert (= (and b!652670 res!423366) b!652672))

(assert (= (and b!652670 res!423365) b!652671))

(assert (= (and b!652671 c!75019) b!652668))

(assert (= (and b!652671 (not c!75019)) b!652669))

(assert (= (or b!652668 b!652669) bm!33781))

(assert (=> bm!33781 m!625905))

(declare-fun m!625909 () Bool)

(assert (=> bm!33781 m!625909))

(assert (=> b!652670 m!625905))

(assert (=> b!652670 m!625905))

(declare-fun m!625911 () Bool)

(assert (=> b!652670 m!625911))

(assert (=> b!652671 m!625905))

(assert (=> b!652671 m!625905))

(assert (=> b!652671 m!625911))

(assert (=> b!652672 m!625905))

(assert (=> b!652672 m!625905))

(declare-fun m!625913 () Bool)

(assert (=> b!652672 m!625913))

(assert (=> b!652440 d!92157))

(declare-fun d!92159 () Bool)

(declare-fun res!423367 () Bool)

(declare-fun e!374654 () Bool)

(assert (=> d!92159 (=> res!423367 e!374654)))

(assert (=> d!92159 (= res!423367 (= (select (arr!18493 lt!303712) index!984) (select (arr!18493 a!2986) j!136)))))

(assert (=> d!92159 (= (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) index!984) e!374654)))

(declare-fun b!652673 () Bool)

(declare-fun e!374655 () Bool)

(assert (=> b!652673 (= e!374654 e!374655)))

(declare-fun res!423368 () Bool)

(assert (=> b!652673 (=> (not res!423368) (not e!374655))))

(assert (=> b!652673 (= res!423368 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18857 lt!303712)))))

(declare-fun b!652674 () Bool)

(assert (=> b!652674 (= e!374655 (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92159 (not res!423367)) b!652673))

(assert (= (and b!652673 res!423368) b!652674))

(assert (=> d!92159 m!625791))

(assert (=> b!652674 m!625633))

(declare-fun m!625915 () Bool)

(assert (=> b!652674 m!625915))

(assert (=> b!652429 d!92159))

(assert (=> b!652439 d!92117))

(declare-fun b!652675 () Bool)

(declare-fun e!374657 () Bool)

(declare-fun call!33785 () Bool)

(assert (=> b!652675 (= e!374657 call!33785)))

(declare-fun bm!33782 () Bool)

(declare-fun c!75020 () Bool)

(assert (=> bm!33782 (= call!33785 (arrayNoDuplicates!0 lt!303712 (bvadd j!136 #b00000000000000000000000000000001) (ite c!75020 (Cons!12583 (select (arr!18493 lt!303712) j!136) Nil!12584) Nil!12584)))))

(declare-fun b!652676 () Bool)

(assert (=> b!652676 (= e!374657 call!33785)))

(declare-fun b!652677 () Bool)

(declare-fun e!374658 () Bool)

(declare-fun e!374656 () Bool)

(assert (=> b!652677 (= e!374658 e!374656)))

(declare-fun res!423370 () Bool)

(assert (=> b!652677 (=> (not res!423370) (not e!374656))))

(declare-fun e!374659 () Bool)

(assert (=> b!652677 (= res!423370 (not e!374659))))

(declare-fun res!423371 () Bool)

(assert (=> b!652677 (=> (not res!423371) (not e!374659))))

(assert (=> b!652677 (= res!423371 (validKeyInArray!0 (select (arr!18493 lt!303712) j!136)))))

(declare-fun d!92161 () Bool)

(declare-fun res!423369 () Bool)

(assert (=> d!92161 (=> res!423369 e!374658)))

(assert (=> d!92161 (= res!423369 (bvsge j!136 (size!18857 lt!303712)))))

(assert (=> d!92161 (= (arrayNoDuplicates!0 lt!303712 j!136 Nil!12584) e!374658)))

(declare-fun b!652678 () Bool)

(assert (=> b!652678 (= e!374656 e!374657)))

(assert (=> b!652678 (= c!75020 (validKeyInArray!0 (select (arr!18493 lt!303712) j!136)))))

(declare-fun b!652679 () Bool)

(assert (=> b!652679 (= e!374659 (contains!3182 Nil!12584 (select (arr!18493 lt!303712) j!136)))))

(assert (= (and d!92161 (not res!423369)) b!652677))

(assert (= (and b!652677 res!423371) b!652679))

(assert (= (and b!652677 res!423370) b!652678))

(assert (= (and b!652678 c!75020) b!652675))

(assert (= (and b!652678 (not c!75020)) b!652676))

(assert (= (or b!652675 b!652676) bm!33782))

(assert (=> bm!33782 m!625853))

(declare-fun m!625917 () Bool)

(assert (=> bm!33782 m!625917))

(assert (=> b!652677 m!625853))

(assert (=> b!652677 m!625853))

(declare-fun m!625919 () Bool)

(assert (=> b!652677 m!625919))

(assert (=> b!652678 m!625853))

(assert (=> b!652678 m!625853))

(assert (=> b!652678 m!625919))

(assert (=> b!652679 m!625853))

(assert (=> b!652679 m!625853))

(declare-fun m!625921 () Bool)

(assert (=> b!652679 m!625921))

(assert (=> b!652439 d!92161))

(declare-fun d!92163 () Bool)

(assert (=> d!92163 (arrayNoDuplicates!0 lt!303712 j!136 Nil!12584)))

(declare-fun lt!303836 () Unit!22312)

(assert (=> d!92163 (= lt!303836 (choose!39 lt!303712 #b00000000000000000000000000000000 j!136))))

(assert (=> d!92163 (bvslt (size!18857 lt!303712) #b01111111111111111111111111111111)))

(assert (=> d!92163 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!303712 #b00000000000000000000000000000000 j!136) lt!303836)))

(declare-fun bs!19452 () Bool)

(assert (= bs!19452 d!92163))

(assert (=> bs!19452 m!625637))

(declare-fun m!625923 () Bool)

(assert (=> bs!19452 m!625923))

(assert (=> b!652439 d!92163))

(declare-fun d!92165 () Bool)

(assert (=> d!92165 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18857 lt!303712)) (not (= (select (arr!18493 lt!303712) j!136) (select (arr!18493 a!2986) j!136))))))

(declare-fun lt!303839 () Unit!22312)

(declare-fun choose!21 (array!38588 (_ BitVec 64) (_ BitVec 32) List!12587) Unit!22312)

(assert (=> d!92165 (= lt!303839 (choose!21 lt!303712 (select (arr!18493 a!2986) j!136) j!136 Nil!12584))))

(assert (=> d!92165 (bvslt (size!18857 lt!303712) #b01111111111111111111111111111111)))

(assert (=> d!92165 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303712 (select (arr!18493 a!2986) j!136) j!136 Nil!12584) lt!303839)))

(declare-fun bs!19453 () Bool)

(assert (= bs!19453 d!92165))

(assert (=> bs!19453 m!625853))

(assert (=> bs!19453 m!625633))

(declare-fun m!625925 () Bool)

(assert (=> bs!19453 m!625925))

(assert (=> b!652439 d!92165))

(assert (=> b!652439 d!92127))

(declare-fun d!92167 () Bool)

(declare-fun res!423372 () Bool)

(declare-fun e!374660 () Bool)

(assert (=> d!92167 (=> res!423372 e!374660)))

(assert (=> d!92167 (= res!423372 (= (select (arr!18493 lt!303712) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18493 a!2986) j!136)))))

(assert (=> d!92167 (= (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!374660)))

(declare-fun b!652680 () Bool)

(declare-fun e!374661 () Bool)

(assert (=> b!652680 (= e!374660 e!374661)))

(declare-fun res!423373 () Bool)

(assert (=> b!652680 (=> (not res!423373) (not e!374661))))

(assert (=> b!652680 (= res!423373 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18857 lt!303712)))))

(declare-fun b!652681 () Bool)

(assert (=> b!652681 (= e!374661 (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92167 (not res!423372)) b!652680))

(assert (= (and b!652680 res!423373) b!652681))

(declare-fun m!625927 () Bool)

(assert (=> d!92167 m!625927))

(assert (=> b!652681 m!625633))

(declare-fun m!625929 () Bool)

(assert (=> b!652681 m!625929))

(assert (=> b!652439 d!92167))

(declare-fun d!92169 () Bool)

(assert (=> d!92169 (arrayContainsKey!0 lt!303712 (select (arr!18493 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303840 () Unit!22312)

(assert (=> d!92169 (= lt!303840 (choose!114 lt!303712 (select (arr!18493 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!92169 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!92169 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303712 (select (arr!18493 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!303840)))

(declare-fun bs!19454 () Bool)

(assert (= bs!19454 d!92169))

(assert (=> bs!19454 m!625633))

(assert (=> bs!19454 m!625639))

(assert (=> bs!19454 m!625633))

(declare-fun m!625931 () Bool)

(assert (=> bs!19454 m!625931))

(assert (=> b!652439 d!92169))

(assert (=> b!652448 d!92159))

(declare-fun d!92171 () Bool)

(declare-fun res!423379 () Bool)

(declare-fun e!374675 () Bool)

(assert (=> d!92171 (=> res!423379 e!374675)))

(assert (=> d!92171 (= res!423379 (bvsge #b00000000000000000000000000000000 (size!18857 a!2986)))))

(assert (=> d!92171 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!374675)))

(declare-fun bm!33785 () Bool)

(declare-fun call!33788 () Bool)

(assert (=> bm!33785 (= call!33788 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!652702 () Bool)

(declare-fun e!374674 () Bool)

(declare-fun e!374676 () Bool)

(assert (=> b!652702 (= e!374674 e!374676)))

(declare-fun lt!303854 () (_ BitVec 64))

(assert (=> b!652702 (= lt!303854 (select (arr!18493 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!303855 () Unit!22312)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38588 (_ BitVec 64) (_ BitVec 32)) Unit!22312)

(assert (=> b!652702 (= lt!303855 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!303854 #b00000000000000000000000000000000))))

(assert (=> b!652702 (arrayContainsKey!0 a!2986 lt!303854 #b00000000000000000000000000000000)))

(declare-fun lt!303853 () Unit!22312)

(assert (=> b!652702 (= lt!303853 lt!303855)))

(declare-fun res!423378 () Bool)

(assert (=> b!652702 (= res!423378 (= (seekEntryOrOpen!0 (select (arr!18493 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6940 #b00000000000000000000000000000000)))))

(assert (=> b!652702 (=> (not res!423378) (not e!374676))))

(declare-fun b!652703 () Bool)

(assert (=> b!652703 (= e!374676 call!33788)))

(declare-fun b!652704 () Bool)

(assert (=> b!652704 (= e!374675 e!374674)))

(declare-fun c!75029 () Bool)

(assert (=> b!652704 (= c!75029 (validKeyInArray!0 (select (arr!18493 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!652705 () Bool)

(assert (=> b!652705 (= e!374674 call!33788)))

(assert (= (and d!92171 (not res!423379)) b!652704))

(assert (= (and b!652704 c!75029) b!652702))

(assert (= (and b!652704 (not c!75029)) b!652705))

(assert (= (and b!652702 res!423378) b!652703))

(assert (= (or b!652703 b!652705) bm!33785))

(declare-fun m!625933 () Bool)

(assert (=> bm!33785 m!625933))

(assert (=> b!652702 m!625905))

(declare-fun m!625935 () Bool)

(assert (=> b!652702 m!625935))

(declare-fun m!625937 () Bool)

(assert (=> b!652702 m!625937))

(assert (=> b!652702 m!625905))

(declare-fun m!625939 () Bool)

(assert (=> b!652702 m!625939))

(assert (=> b!652704 m!625905))

(assert (=> b!652704 m!625905))

(assert (=> b!652704 m!625911))

(assert (=> b!652437 d!92171))

(declare-fun d!92173 () Bool)

(assert (=> d!92173 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!652436 d!92173))

(declare-fun d!92175 () Bool)

(declare-fun res!423384 () Bool)

(declare-fun e!374685 () Bool)

(assert (=> d!92175 (=> res!423384 e!374685)))

(assert (=> d!92175 (= res!423384 ((_ is Nil!12584) Nil!12584))))

(assert (=> d!92175 (= (noDuplicate!437 Nil!12584) e!374685)))

(declare-fun b!652718 () Bool)

(declare-fun e!374686 () Bool)

(assert (=> b!652718 (= e!374685 e!374686)))

(declare-fun res!423385 () Bool)

(assert (=> b!652718 (=> (not res!423385) (not e!374686))))

(assert (=> b!652718 (= res!423385 (not (contains!3182 (t!18823 Nil!12584) (h!13628 Nil!12584))))))

(declare-fun b!652719 () Bool)

(assert (=> b!652719 (= e!374686 (noDuplicate!437 (t!18823 Nil!12584)))))

(assert (= (and d!92175 (not res!423384)) b!652718))

(assert (= (and b!652718 res!423385) b!652719))

(declare-fun m!625941 () Bool)

(assert (=> b!652718 m!625941))

(declare-fun m!625943 () Bool)

(assert (=> b!652719 m!625943))

(assert (=> b!652447 d!92175))

(assert (=> b!652435 d!92125))

(check-sat (not b!652547) (not b!652665) (not d!92163) (not b!652677) (not d!92127) (not bm!33781) (not b!652570) (not d!92105) (not b!652672) (not bm!33777) (not d!92097) (not d!92151) (not b!652616) (not d!92165) (not b!652674) (not d!92107) (not b!652541) (not b!652678) (not b!652681) (not d!92113) (not b!652623) (not b!652702) (not b!652670) (not bm!33785) (not b!652523) (not d!92129) (not b!652553) (not d!92103) (not d!92101) (not b!652718) (not b!652620) (not b!652671) (not b!652614) (not bm!33776) (not b!652621) (not b!652704) (not b!652719) (not b!652679) (not b!652581) (not b!652634) (not b!652615) (not d!92169) (not b!652667) (not b!652619) (not bm!33782) (not d!92099))
(check-sat)
