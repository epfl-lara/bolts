; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58998 () Bool)

(assert start!58998)

(declare-fun b!650347 () Bool)

(declare-fun e!373118 () Bool)

(declare-fun e!373127 () Bool)

(assert (=> b!650347 (= e!373118 e!373127)))

(declare-fun res!421691 () Bool)

(assert (=> b!650347 (=> (not res!421691) (not e!373127))))

(declare-datatypes ((SeekEntryResult!6915 0))(
  ( (MissingZero!6915 (index!30009 (_ BitVec 32))) (Found!6915 (index!30010 (_ BitVec 32))) (Intermediate!6915 (undefined!7727 Bool) (index!30011 (_ BitVec 32)) (x!58826 (_ BitVec 32))) (Undefined!6915) (MissingVacant!6915 (index!30012 (_ BitVec 32))) )
))
(declare-fun lt!302232 () SeekEntryResult!6915)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!650347 (= res!421691 (or (= lt!302232 (MissingZero!6915 i!1108)) (= lt!302232 (MissingVacant!6915 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!38535 0))(
  ( (array!38536 (arr!18468 (Array (_ BitVec 32) (_ BitVec 64))) (size!18832 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38535)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38535 (_ BitVec 32)) SeekEntryResult!6915)

(assert (=> b!650347 (= lt!302232 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!373129 () Bool)

(declare-fun lt!302229 () array!38535)

(declare-fun b!650348 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38535 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!650348 (= e!373129 (arrayContainsKey!0 lt!302229 (select (arr!18468 a!2986) j!136) index!984))))

(declare-fun b!650349 () Bool)

(declare-fun res!421683 () Bool)

(assert (=> b!650349 (=> (not res!421683) (not e!373127))))

(declare-datatypes ((List!12562 0))(
  ( (Nil!12559) (Cons!12558 (h!13603 (_ BitVec 64)) (t!18798 List!12562)) )
))
(declare-fun arrayNoDuplicates!0 (array!38535 (_ BitVec 32) List!12562) Bool)

(assert (=> b!650349 (= res!421683 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12559))))

(declare-fun b!650350 () Bool)

(declare-fun e!373122 () Bool)

(declare-fun e!373128 () Bool)

(assert (=> b!650350 (= e!373122 e!373128)))

(declare-fun res!421674 () Bool)

(assert (=> b!650350 (=> res!421674 e!373128)))

(declare-fun lt!302240 () (_ BitVec 64))

(declare-fun lt!302233 () (_ BitVec 64))

(assert (=> b!650350 (= res!421674 (or (not (= (select (arr!18468 a!2986) j!136) lt!302233)) (not (= (select (arr!18468 a!2986) j!136) lt!302240)) (bvsge j!136 index!984)))))

(declare-fun b!650352 () Bool)

(declare-fun e!373119 () Bool)

(declare-fun e!373124 () Bool)

(assert (=> b!650352 (= e!373119 e!373124)))

(declare-fun res!421689 () Bool)

(assert (=> b!650352 (=> res!421689 e!373124)))

(assert (=> b!650352 (= res!421689 (or (not (= (select (arr!18468 a!2986) j!136) lt!302233)) (not (= (select (arr!18468 a!2986) j!136) lt!302240))))))

(assert (=> b!650352 e!373122))

(declare-fun res!421675 () Bool)

(assert (=> b!650352 (=> (not res!421675) (not e!373122))))

(assert (=> b!650352 (= res!421675 (= lt!302240 (select (arr!18468 a!2986) j!136)))))

(assert (=> b!650352 (= lt!302240 (select (store (arr!18468 a!2986) i!1108 k!1786) index!984))))

(declare-fun e!373130 () Bool)

(declare-fun b!650353 () Bool)

(assert (=> b!650353 (= e!373130 (arrayContainsKey!0 lt!302229 (select (arr!18468 a!2986) j!136) index!984))))

(declare-fun b!650354 () Bool)

(declare-fun e!373131 () Bool)

(declare-fun e!373120 () Bool)

(assert (=> b!650354 (= e!373131 e!373120)))

(declare-fun res!421681 () Bool)

(assert (=> b!650354 (=> (not res!421681) (not e!373120))))

(declare-fun lt!302238 () SeekEntryResult!6915)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!650354 (= res!421681 (and (= lt!302238 (Found!6915 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18468 a!2986) index!984) (select (arr!18468 a!2986) j!136))) (not (= (select (arr!18468 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38535 (_ BitVec 32)) SeekEntryResult!6915)

(assert (=> b!650354 (= lt!302238 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18468 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!650355 () Bool)

(declare-datatypes ((Unit!22162 0))(
  ( (Unit!22163) )
))
(declare-fun e!373125 () Unit!22162)

(declare-fun Unit!22164 () Unit!22162)

(assert (=> b!650355 (= e!373125 Unit!22164)))

(declare-fun lt!302241 () Unit!22162)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38535 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22162)

(assert (=> b!650355 (= lt!302241 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302229 (select (arr!18468 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!650355 (arrayContainsKey!0 lt!302229 (select (arr!18468 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302242 () Unit!22162)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38535 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12562) Unit!22162)

(assert (=> b!650355 (= lt!302242 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12559))))

(assert (=> b!650355 (arrayNoDuplicates!0 lt!302229 #b00000000000000000000000000000000 Nil!12559)))

(declare-fun lt!302237 () Unit!22162)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38535 (_ BitVec 32) (_ BitVec 32)) Unit!22162)

(assert (=> b!650355 (= lt!302237 (lemmaNoDuplicateFromThenFromBigger!0 lt!302229 #b00000000000000000000000000000000 j!136))))

(assert (=> b!650355 (arrayNoDuplicates!0 lt!302229 j!136 Nil!12559)))

(declare-fun lt!302230 () Unit!22162)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38535 (_ BitVec 64) (_ BitVec 32) List!12562) Unit!22162)

(assert (=> b!650355 (= lt!302230 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302229 (select (arr!18468 a!2986) j!136) j!136 Nil!12559))))

(assert (=> b!650355 false))

(declare-fun b!650356 () Bool)

(declare-fun res!421673 () Bool)

(assert (=> b!650356 (=> (not res!421673) (not e!373118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!650356 (= res!421673 (validKeyInArray!0 (select (arr!18468 a!2986) j!136)))))

(declare-fun b!650357 () Bool)

(declare-fun e!373121 () Bool)

(declare-fun lt!302243 () SeekEntryResult!6915)

(assert (=> b!650357 (= e!373121 (= lt!302238 lt!302243))))

(declare-fun b!650358 () Bool)

(declare-fun res!421686 () Bool)

(assert (=> b!650358 (=> (not res!421686) (not e!373118))))

(assert (=> b!650358 (= res!421686 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!650359 () Bool)

(assert (=> b!650359 (= e!373127 e!373131)))

(declare-fun res!421678 () Bool)

(assert (=> b!650359 (=> (not res!421678) (not e!373131))))

(assert (=> b!650359 (= res!421678 (= (select (store (arr!18468 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!650359 (= lt!302229 (array!38536 (store (arr!18468 a!2986) i!1108 k!1786) (size!18832 a!2986)))))

(declare-fun b!650360 () Bool)

(declare-fun Unit!22165 () Unit!22162)

(assert (=> b!650360 (= e!373125 Unit!22165)))

(declare-fun b!650361 () Bool)

(declare-fun e!373123 () Bool)

(assert (=> b!650361 (= e!373124 e!373123)))

(declare-fun res!421687 () Bool)

(assert (=> b!650361 (=> res!421687 e!373123)))

(assert (=> b!650361 (= res!421687 (bvsge index!984 j!136))))

(declare-fun lt!302239 () Unit!22162)

(assert (=> b!650361 (= lt!302239 e!373125)))

(declare-fun c!74705 () Bool)

(assert (=> b!650361 (= c!74705 (bvslt j!136 index!984))))

(declare-fun b!650351 () Bool)

(assert (=> b!650351 (= e!373128 e!373130)))

(declare-fun res!421679 () Bool)

(assert (=> b!650351 (=> (not res!421679) (not e!373130))))

(assert (=> b!650351 (= res!421679 (arrayContainsKey!0 lt!302229 (select (arr!18468 a!2986) j!136) j!136))))

(declare-fun res!421685 () Bool)

(assert (=> start!58998 (=> (not res!421685) (not e!373118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58998 (= res!421685 (validMask!0 mask!3053))))

(assert (=> start!58998 e!373118))

(assert (=> start!58998 true))

(declare-fun array_inv!14242 (array!38535) Bool)

(assert (=> start!58998 (array_inv!14242 a!2986)))

(declare-fun b!650362 () Bool)

(declare-fun e!373126 () Unit!22162)

(declare-fun Unit!22166 () Unit!22162)

(assert (=> b!650362 (= e!373126 Unit!22166)))

(assert (=> b!650362 false))

(declare-fun b!650363 () Bool)

(declare-fun res!421682 () Bool)

(assert (=> b!650363 (=> (not res!421682) (not e!373127))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38535 (_ BitVec 32)) Bool)

(assert (=> b!650363 (= res!421682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!650364 () Bool)

(declare-fun res!421688 () Bool)

(assert (=> b!650364 (=> (not res!421688) (not e!373118))))

(assert (=> b!650364 (= res!421688 (validKeyInArray!0 k!1786))))

(declare-fun b!650365 () Bool)

(assert (=> b!650365 (= e!373120 (not e!373119))))

(declare-fun res!421677 () Bool)

(assert (=> b!650365 (=> res!421677 e!373119)))

(declare-fun lt!302234 () SeekEntryResult!6915)

(assert (=> b!650365 (= res!421677 (not (= lt!302234 (Found!6915 index!984))))))

(declare-fun lt!302231 () Unit!22162)

(assert (=> b!650365 (= lt!302231 e!373126)))

(declare-fun c!74704 () Bool)

(assert (=> b!650365 (= c!74704 (= lt!302234 Undefined!6915))))

(assert (=> b!650365 (= lt!302234 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302233 lt!302229 mask!3053))))

(assert (=> b!650365 e!373121))

(declare-fun res!421690 () Bool)

(assert (=> b!650365 (=> (not res!421690) (not e!373121))))

(declare-fun lt!302235 () (_ BitVec 32))

(assert (=> b!650365 (= res!421690 (= lt!302243 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302235 vacantSpotIndex!68 lt!302233 lt!302229 mask!3053)))))

(assert (=> b!650365 (= lt!302243 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302235 vacantSpotIndex!68 (select (arr!18468 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!650365 (= lt!302233 (select (store (arr!18468 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!302228 () Unit!22162)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38535 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22162)

(assert (=> b!650365 (= lt!302228 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302235 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!650365 (= lt!302235 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!650366 () Bool)

(declare-fun res!421684 () Bool)

(assert (=> b!650366 (=> (not res!421684) (not e!373118))))

(assert (=> b!650366 (= res!421684 (and (= (size!18832 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18832 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18832 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!650367 () Bool)

(declare-fun res!421676 () Bool)

(assert (=> b!650367 (=> (not res!421676) (not e!373127))))

(assert (=> b!650367 (= res!421676 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18468 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!650368 () Bool)

(assert (=> b!650368 (= e!373123 (or (bvsge (size!18832 a!2986) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!18832 a!2986))))))

(assert (=> b!650368 (arrayNoDuplicates!0 lt!302229 #b00000000000000000000000000000000 Nil!12559)))

(declare-fun lt!302244 () Unit!22162)

(assert (=> b!650368 (= lt!302244 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12559))))

(assert (=> b!650368 (arrayContainsKey!0 lt!302229 (select (arr!18468 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302236 () Unit!22162)

(assert (=> b!650368 (= lt!302236 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302229 (select (arr!18468 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!650368 e!373129))

(declare-fun res!421680 () Bool)

(assert (=> b!650368 (=> (not res!421680) (not e!373129))))

(assert (=> b!650368 (= res!421680 (arrayContainsKey!0 lt!302229 (select (arr!18468 a!2986) j!136) j!136))))

(declare-fun b!650369 () Bool)

(declare-fun Unit!22167 () Unit!22162)

(assert (=> b!650369 (= e!373126 Unit!22167)))

(assert (= (and start!58998 res!421685) b!650366))

(assert (= (and b!650366 res!421684) b!650356))

(assert (= (and b!650356 res!421673) b!650364))

(assert (= (and b!650364 res!421688) b!650358))

(assert (= (and b!650358 res!421686) b!650347))

(assert (= (and b!650347 res!421691) b!650363))

(assert (= (and b!650363 res!421682) b!650349))

(assert (= (and b!650349 res!421683) b!650367))

(assert (= (and b!650367 res!421676) b!650359))

(assert (= (and b!650359 res!421678) b!650354))

(assert (= (and b!650354 res!421681) b!650365))

(assert (= (and b!650365 res!421690) b!650357))

(assert (= (and b!650365 c!74704) b!650362))

(assert (= (and b!650365 (not c!74704)) b!650369))

(assert (= (and b!650365 (not res!421677)) b!650352))

(assert (= (and b!650352 res!421675) b!650350))

(assert (= (and b!650350 (not res!421674)) b!650351))

(assert (= (and b!650351 res!421679) b!650353))

(assert (= (and b!650352 (not res!421689)) b!650361))

(assert (= (and b!650361 c!74705) b!650355))

(assert (= (and b!650361 (not c!74705)) b!650360))

(assert (= (and b!650361 (not res!421687)) b!650368))

(assert (= (and b!650368 res!421680) b!650348))

(declare-fun m!623613 () Bool)

(assert (=> b!650351 m!623613))

(assert (=> b!650351 m!623613))

(declare-fun m!623615 () Bool)

(assert (=> b!650351 m!623615))

(assert (=> b!650368 m!623613))

(declare-fun m!623617 () Bool)

(assert (=> b!650368 m!623617))

(assert (=> b!650368 m!623613))

(declare-fun m!623619 () Bool)

(assert (=> b!650368 m!623619))

(assert (=> b!650368 m!623613))

(declare-fun m!623621 () Bool)

(assert (=> b!650368 m!623621))

(assert (=> b!650368 m!623613))

(assert (=> b!650368 m!623615))

(declare-fun m!623623 () Bool)

(assert (=> b!650368 m!623623))

(assert (=> b!650348 m!623613))

(assert (=> b!650348 m!623613))

(declare-fun m!623625 () Bool)

(assert (=> b!650348 m!623625))

(declare-fun m!623627 () Bool)

(assert (=> b!650363 m!623627))

(declare-fun m!623629 () Bool)

(assert (=> b!650354 m!623629))

(assert (=> b!650354 m!623613))

(assert (=> b!650354 m!623613))

(declare-fun m!623631 () Bool)

(assert (=> b!650354 m!623631))

(declare-fun m!623633 () Bool)

(assert (=> b!650365 m!623633))

(declare-fun m!623635 () Bool)

(assert (=> b!650365 m!623635))

(declare-fun m!623637 () Bool)

(assert (=> b!650365 m!623637))

(declare-fun m!623639 () Bool)

(assert (=> b!650365 m!623639))

(declare-fun m!623641 () Bool)

(assert (=> b!650365 m!623641))

(assert (=> b!650365 m!623613))

(declare-fun m!623643 () Bool)

(assert (=> b!650365 m!623643))

(assert (=> b!650365 m!623613))

(declare-fun m!623645 () Bool)

(assert (=> b!650365 m!623645))

(assert (=> b!650359 m!623639))

(declare-fun m!623647 () Bool)

(assert (=> b!650359 m!623647))

(declare-fun m!623649 () Bool)

(assert (=> start!58998 m!623649))

(declare-fun m!623651 () Bool)

(assert (=> start!58998 m!623651))

(assert (=> b!650353 m!623613))

(assert (=> b!650353 m!623613))

(assert (=> b!650353 m!623625))

(assert (=> b!650352 m!623613))

(assert (=> b!650352 m!623639))

(declare-fun m!623653 () Bool)

(assert (=> b!650352 m!623653))

(assert (=> b!650356 m!623613))

(assert (=> b!650356 m!623613))

(declare-fun m!623655 () Bool)

(assert (=> b!650356 m!623655))

(declare-fun m!623657 () Bool)

(assert (=> b!650358 m!623657))

(declare-fun m!623659 () Bool)

(assert (=> b!650347 m!623659))

(assert (=> b!650350 m!623613))

(declare-fun m!623661 () Bool)

(assert (=> b!650349 m!623661))

(declare-fun m!623663 () Bool)

(assert (=> b!650367 m!623663))

(declare-fun m!623665 () Bool)

(assert (=> b!650364 m!623665))

(assert (=> b!650355 m!623613))

(declare-fun m!623667 () Bool)

(assert (=> b!650355 m!623667))

(assert (=> b!650355 m!623613))

(declare-fun m!623669 () Bool)

(assert (=> b!650355 m!623669))

(assert (=> b!650355 m!623613))

(declare-fun m!623671 () Bool)

(assert (=> b!650355 m!623671))

(declare-fun m!623673 () Bool)

(assert (=> b!650355 m!623673))

(assert (=> b!650355 m!623623))

(assert (=> b!650355 m!623613))

(declare-fun m!623675 () Bool)

(assert (=> b!650355 m!623675))

(assert (=> b!650355 m!623617))

(push 1)

