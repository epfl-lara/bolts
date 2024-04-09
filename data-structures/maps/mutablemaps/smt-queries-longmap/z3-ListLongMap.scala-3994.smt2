; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54164 () Bool)

(assert start!54164)

(declare-fun res!378471 () Bool)

(declare-fun e!337672 () Bool)

(assert (=> start!54164 (=> (not res!378471) (not e!337672))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54164 (= res!378471 (validMask!0 mask!3053))))

(assert (=> start!54164 e!337672))

(assert (=> start!54164 true))

(declare-datatypes ((array!36857 0))(
  ( (array!36858 (arr!17695 (Array (_ BitVec 32) (_ BitVec 64))) (size!18059 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36857)

(declare-fun array_inv!13469 (array!36857) Bool)

(assert (=> start!54164 (array_inv!13469 a!2986)))

(declare-fun b!591360 () Bool)

(declare-fun res!378470 () Bool)

(declare-fun e!337667 () Bool)

(assert (=> b!591360 (=> (not res!378470) (not e!337667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36857 (_ BitVec 32)) Bool)

(assert (=> b!591360 (= res!378470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591361 () Bool)

(declare-fun e!337663 () Bool)

(assert (=> b!591361 (= e!337663 true)))

(declare-fun e!337664 () Bool)

(assert (=> b!591361 e!337664))

(declare-fun res!378479 () Bool)

(assert (=> b!591361 (=> (not res!378479) (not e!337664))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!268395 () (_ BitVec 64))

(assert (=> b!591361 (= res!378479 (= lt!268395 (select (arr!17695 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!591361 (= lt!268395 (select (store (arr!17695 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!591362 () Bool)

(declare-fun e!337669 () Bool)

(assert (=> b!591362 (= e!337669 (not e!337663))))

(declare-fun res!378473 () Bool)

(assert (=> b!591362 (=> res!378473 e!337663)))

(declare-datatypes ((SeekEntryResult!6142 0))(
  ( (MissingZero!6142 (index!26803 (_ BitVec 32))) (Found!6142 (index!26804 (_ BitVec 32))) (Intermediate!6142 (undefined!6954 Bool) (index!26805 (_ BitVec 32)) (x!55623 (_ BitVec 32))) (Undefined!6142) (MissingVacant!6142 (index!26806 (_ BitVec 32))) )
))
(declare-fun lt!268393 () SeekEntryResult!6142)

(assert (=> b!591362 (= res!378473 (not (= lt!268393 (Found!6142 index!984))))))

(declare-datatypes ((Unit!18512 0))(
  ( (Unit!18513) )
))
(declare-fun lt!268394 () Unit!18512)

(declare-fun e!337670 () Unit!18512)

(assert (=> b!591362 (= lt!268394 e!337670)))

(declare-fun c!66815 () Bool)

(assert (=> b!591362 (= c!66815 (= lt!268393 Undefined!6142))))

(declare-fun lt!268392 () array!36857)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!268401 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36857 (_ BitVec 32)) SeekEntryResult!6142)

(assert (=> b!591362 (= lt!268393 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268401 lt!268392 mask!3053))))

(declare-fun e!337668 () Bool)

(assert (=> b!591362 e!337668))

(declare-fun res!378464 () Bool)

(assert (=> b!591362 (=> (not res!378464) (not e!337668))))

(declare-fun lt!268399 () SeekEntryResult!6142)

(declare-fun lt!268397 () (_ BitVec 32))

(assert (=> b!591362 (= res!378464 (= lt!268399 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268397 vacantSpotIndex!68 lt!268401 lt!268392 mask!3053)))))

(assert (=> b!591362 (= lt!268399 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268397 vacantSpotIndex!68 (select (arr!17695 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591362 (= lt!268401 (select (store (arr!17695 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!268396 () Unit!18512)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36857 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18512)

(assert (=> b!591362 (= lt!268396 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268397 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591362 (= lt!268397 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!591363 () Bool)

(declare-fun e!337666 () Bool)

(assert (=> b!591363 (= e!337667 e!337666)))

(declare-fun res!378475 () Bool)

(assert (=> b!591363 (=> (not res!378475) (not e!337666))))

(assert (=> b!591363 (= res!378475 (= (select (store (arr!17695 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!591363 (= lt!268392 (array!36858 (store (arr!17695 a!2986) i!1108 k0!1786) (size!18059 a!2986)))))

(declare-fun b!591364 () Bool)

(assert (=> b!591364 (= e!337672 e!337667)))

(declare-fun res!378465 () Bool)

(assert (=> b!591364 (=> (not res!378465) (not e!337667))))

(declare-fun lt!268400 () SeekEntryResult!6142)

(assert (=> b!591364 (= res!378465 (or (= lt!268400 (MissingZero!6142 i!1108)) (= lt!268400 (MissingVacant!6142 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36857 (_ BitVec 32)) SeekEntryResult!6142)

(assert (=> b!591364 (= lt!268400 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!591365 () Bool)

(declare-fun res!378472 () Bool)

(assert (=> b!591365 (=> (not res!378472) (not e!337672))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591365 (= res!378472 (validKeyInArray!0 k0!1786))))

(declare-fun b!591366 () Bool)

(declare-fun e!337662 () Bool)

(assert (=> b!591366 (= e!337664 e!337662)))

(declare-fun res!378474 () Bool)

(assert (=> b!591366 (=> res!378474 e!337662)))

(assert (=> b!591366 (= res!378474 (or (not (= (select (arr!17695 a!2986) j!136) lt!268401)) (not (= (select (arr!17695 a!2986) j!136) lt!268395)) (bvsge j!136 index!984)))))

(declare-fun b!591367 () Bool)

(declare-fun res!378478 () Bool)

(assert (=> b!591367 (=> (not res!378478) (not e!337672))))

(declare-fun arrayContainsKey!0 (array!36857 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591367 (= res!378478 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591368 () Bool)

(declare-fun res!378468 () Bool)

(assert (=> b!591368 (=> (not res!378468) (not e!337672))))

(assert (=> b!591368 (= res!378468 (and (= (size!18059 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18059 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18059 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!337665 () Bool)

(declare-fun b!591369 () Bool)

(assert (=> b!591369 (= e!337665 (arrayContainsKey!0 lt!268392 (select (arr!17695 a!2986) j!136) index!984))))

(declare-fun b!591370 () Bool)

(declare-fun res!378476 () Bool)

(assert (=> b!591370 (=> (not res!378476) (not e!337672))))

(assert (=> b!591370 (= res!378476 (validKeyInArray!0 (select (arr!17695 a!2986) j!136)))))

(declare-fun b!591371 () Bool)

(declare-fun lt!268398 () SeekEntryResult!6142)

(assert (=> b!591371 (= e!337668 (= lt!268398 lt!268399))))

(declare-fun b!591372 () Bool)

(assert (=> b!591372 (= e!337662 e!337665)))

(declare-fun res!378469 () Bool)

(assert (=> b!591372 (=> (not res!378469) (not e!337665))))

(assert (=> b!591372 (= res!378469 (arrayContainsKey!0 lt!268392 (select (arr!17695 a!2986) j!136) j!136))))

(declare-fun b!591373 () Bool)

(assert (=> b!591373 (= e!337666 e!337669)))

(declare-fun res!378477 () Bool)

(assert (=> b!591373 (=> (not res!378477) (not e!337669))))

(assert (=> b!591373 (= res!378477 (and (= lt!268398 (Found!6142 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17695 a!2986) index!984) (select (arr!17695 a!2986) j!136))) (not (= (select (arr!17695 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!591373 (= lt!268398 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17695 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591374 () Bool)

(declare-fun Unit!18514 () Unit!18512)

(assert (=> b!591374 (= e!337670 Unit!18514)))

(declare-fun b!591375 () Bool)

(declare-fun res!378466 () Bool)

(assert (=> b!591375 (=> (not res!378466) (not e!337667))))

(assert (=> b!591375 (= res!378466 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17695 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!591376 () Bool)

(declare-fun res!378467 () Bool)

(assert (=> b!591376 (=> (not res!378467) (not e!337667))))

(declare-datatypes ((List!11789 0))(
  ( (Nil!11786) (Cons!11785 (h!12830 (_ BitVec 64)) (t!18025 List!11789)) )
))
(declare-fun arrayNoDuplicates!0 (array!36857 (_ BitVec 32) List!11789) Bool)

(assert (=> b!591376 (= res!378467 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11786))))

(declare-fun b!591377 () Bool)

(declare-fun Unit!18515 () Unit!18512)

(assert (=> b!591377 (= e!337670 Unit!18515)))

(assert (=> b!591377 false))

(assert (= (and start!54164 res!378471) b!591368))

(assert (= (and b!591368 res!378468) b!591370))

(assert (= (and b!591370 res!378476) b!591365))

(assert (= (and b!591365 res!378472) b!591367))

(assert (= (and b!591367 res!378478) b!591364))

(assert (= (and b!591364 res!378465) b!591360))

(assert (= (and b!591360 res!378470) b!591376))

(assert (= (and b!591376 res!378467) b!591375))

(assert (= (and b!591375 res!378466) b!591363))

(assert (= (and b!591363 res!378475) b!591373))

(assert (= (and b!591373 res!378477) b!591362))

(assert (= (and b!591362 res!378464) b!591371))

(assert (= (and b!591362 c!66815) b!591377))

(assert (= (and b!591362 (not c!66815)) b!591374))

(assert (= (and b!591362 (not res!378473)) b!591361))

(assert (= (and b!591361 res!378479) b!591366))

(assert (= (and b!591366 (not res!378474)) b!591372))

(assert (= (and b!591372 res!378469) b!591369))

(declare-fun m!569623 () Bool)

(assert (=> b!591360 m!569623))

(declare-fun m!569625 () Bool)

(assert (=> b!591369 m!569625))

(assert (=> b!591369 m!569625))

(declare-fun m!569627 () Bool)

(assert (=> b!591369 m!569627))

(declare-fun m!569629 () Bool)

(assert (=> b!591375 m!569629))

(declare-fun m!569631 () Bool)

(assert (=> start!54164 m!569631))

(declare-fun m!569633 () Bool)

(assert (=> start!54164 m!569633))

(assert (=> b!591366 m!569625))

(declare-fun m!569635 () Bool)

(assert (=> b!591363 m!569635))

(declare-fun m!569637 () Bool)

(assert (=> b!591363 m!569637))

(declare-fun m!569639 () Bool)

(assert (=> b!591376 m!569639))

(declare-fun m!569641 () Bool)

(assert (=> b!591367 m!569641))

(assert (=> b!591370 m!569625))

(assert (=> b!591370 m!569625))

(declare-fun m!569643 () Bool)

(assert (=> b!591370 m!569643))

(declare-fun m!569645 () Bool)

(assert (=> b!591362 m!569645))

(declare-fun m!569647 () Bool)

(assert (=> b!591362 m!569647))

(assert (=> b!591362 m!569625))

(assert (=> b!591362 m!569635))

(assert (=> b!591362 m!569625))

(declare-fun m!569649 () Bool)

(assert (=> b!591362 m!569649))

(declare-fun m!569651 () Bool)

(assert (=> b!591362 m!569651))

(declare-fun m!569653 () Bool)

(assert (=> b!591362 m!569653))

(declare-fun m!569655 () Bool)

(assert (=> b!591362 m!569655))

(declare-fun m!569657 () Bool)

(assert (=> b!591364 m!569657))

(declare-fun m!569659 () Bool)

(assert (=> b!591373 m!569659))

(assert (=> b!591373 m!569625))

(assert (=> b!591373 m!569625))

(declare-fun m!569661 () Bool)

(assert (=> b!591373 m!569661))

(assert (=> b!591361 m!569625))

(assert (=> b!591361 m!569635))

(declare-fun m!569663 () Bool)

(assert (=> b!591361 m!569663))

(assert (=> b!591372 m!569625))

(assert (=> b!591372 m!569625))

(declare-fun m!569665 () Bool)

(assert (=> b!591372 m!569665))

(declare-fun m!569667 () Bool)

(assert (=> b!591365 m!569667))

(check-sat (not b!591367) (not b!591376) (not b!591365) (not b!591370) (not b!591360) (not b!591369) (not b!591362) (not b!591372) (not b!591364) (not b!591373) (not start!54164))
(check-sat)
