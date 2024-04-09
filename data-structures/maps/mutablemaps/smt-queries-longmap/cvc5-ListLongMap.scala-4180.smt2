; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57006 () Bool)

(assert start!57006)

(declare-fun b!630631 () Bool)

(declare-fun res!407798 () Bool)

(declare-fun e!360594 () Bool)

(assert (=> b!630631 (=> (not res!407798) (not e!360594))))

(declare-datatypes ((array!38043 0))(
  ( (array!38044 (arr!18252 (Array (_ BitVec 32) (_ BitVec 64))) (size!18616 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38043)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630631 (= res!407798 (validKeyInArray!0 (select (arr!18252 a!2986) j!136)))))

(declare-fun b!630632 () Bool)

(declare-datatypes ((Unit!21154 0))(
  ( (Unit!21155) )
))
(declare-fun e!360592 () Unit!21154)

(declare-fun Unit!21156 () Unit!21154)

(assert (=> b!630632 (= e!360592 Unit!21156)))

(assert (=> b!630632 false))

(declare-fun b!630633 () Bool)

(declare-fun res!407794 () Bool)

(assert (=> b!630633 (=> (not res!407794) (not e!360594))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38043 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630633 (= res!407794 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630634 () Bool)

(declare-fun Unit!21157 () Unit!21154)

(assert (=> b!630634 (= e!360592 Unit!21157)))

(declare-fun b!630635 () Bool)

(declare-fun e!360593 () Bool)

(assert (=> b!630635 (= e!360593 (not true))))

(declare-fun lt!291339 () Unit!21154)

(assert (=> b!630635 (= lt!291339 e!360592)))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun c!71789 () Bool)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!291344 () (_ BitVec 64))

(declare-fun lt!291345 () array!38043)

(declare-datatypes ((SeekEntryResult!6699 0))(
  ( (MissingZero!6699 (index!29085 (_ BitVec 32))) (Found!6699 (index!29086 (_ BitVec 32))) (Intermediate!6699 (undefined!7511 Bool) (index!29087 (_ BitVec 32)) (x!57854 (_ BitVec 32))) (Undefined!6699) (MissingVacant!6699 (index!29088 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38043 (_ BitVec 32)) SeekEntryResult!6699)

(assert (=> b!630635 (= c!71789 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291344 lt!291345 mask!3053) Undefined!6699))))

(declare-fun e!360598 () Bool)

(assert (=> b!630635 e!360598))

(declare-fun res!407797 () Bool)

(assert (=> b!630635 (=> (not res!407797) (not e!360598))))

(declare-fun lt!291341 () (_ BitVec 32))

(declare-fun lt!291338 () SeekEntryResult!6699)

(assert (=> b!630635 (= res!407797 (= lt!291338 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291341 vacantSpotIndex!68 lt!291344 lt!291345 mask!3053)))))

(assert (=> b!630635 (= lt!291338 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291341 vacantSpotIndex!68 (select (arr!18252 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!630635 (= lt!291344 (select (store (arr!18252 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291340 () Unit!21154)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38043 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21154)

(assert (=> b!630635 (= lt!291340 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291341 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630635 (= lt!291341 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!630636 () Bool)

(declare-fun e!360597 () Bool)

(declare-fun e!360595 () Bool)

(assert (=> b!630636 (= e!360597 e!360595)))

(declare-fun res!407787 () Bool)

(assert (=> b!630636 (=> (not res!407787) (not e!360595))))

(assert (=> b!630636 (= res!407787 (= (select (store (arr!18252 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!630636 (= lt!291345 (array!38044 (store (arr!18252 a!2986) i!1108 k!1786) (size!18616 a!2986)))))

(declare-fun b!630637 () Bool)

(declare-fun res!407788 () Bool)

(assert (=> b!630637 (=> (not res!407788) (not e!360597))))

(assert (=> b!630637 (= res!407788 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18252 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630638 () Bool)

(assert (=> b!630638 (= e!360595 e!360593)))

(declare-fun res!407795 () Bool)

(assert (=> b!630638 (=> (not res!407795) (not e!360593))))

(declare-fun lt!291343 () SeekEntryResult!6699)

(assert (=> b!630638 (= res!407795 (and (= lt!291343 (Found!6699 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18252 a!2986) index!984) (select (arr!18252 a!2986) j!136))) (not (= (select (arr!18252 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!630638 (= lt!291343 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18252 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630639 () Bool)

(declare-fun res!407796 () Bool)

(assert (=> b!630639 (=> (not res!407796) (not e!360594))))

(assert (=> b!630639 (= res!407796 (validKeyInArray!0 k!1786))))

(declare-fun b!630640 () Bool)

(assert (=> b!630640 (= e!360594 e!360597)))

(declare-fun res!407791 () Bool)

(assert (=> b!630640 (=> (not res!407791) (not e!360597))))

(declare-fun lt!291342 () SeekEntryResult!6699)

(assert (=> b!630640 (= res!407791 (or (= lt!291342 (MissingZero!6699 i!1108)) (= lt!291342 (MissingVacant!6699 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38043 (_ BitVec 32)) SeekEntryResult!6699)

(assert (=> b!630640 (= lt!291342 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!407793 () Bool)

(assert (=> start!57006 (=> (not res!407793) (not e!360594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57006 (= res!407793 (validMask!0 mask!3053))))

(assert (=> start!57006 e!360594))

(assert (=> start!57006 true))

(declare-fun array_inv!14026 (array!38043) Bool)

(assert (=> start!57006 (array_inv!14026 a!2986)))

(declare-fun b!630641 () Bool)

(assert (=> b!630641 (= e!360598 (= lt!291343 lt!291338))))

(declare-fun b!630642 () Bool)

(declare-fun res!407790 () Bool)

(assert (=> b!630642 (=> (not res!407790) (not e!360597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38043 (_ BitVec 32)) Bool)

(assert (=> b!630642 (= res!407790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630643 () Bool)

(declare-fun res!407789 () Bool)

(assert (=> b!630643 (=> (not res!407789) (not e!360594))))

(assert (=> b!630643 (= res!407789 (and (= (size!18616 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18616 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18616 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!630644 () Bool)

(declare-fun res!407792 () Bool)

(assert (=> b!630644 (=> (not res!407792) (not e!360597))))

(declare-datatypes ((List!12346 0))(
  ( (Nil!12343) (Cons!12342 (h!13387 (_ BitVec 64)) (t!18582 List!12346)) )
))
(declare-fun arrayNoDuplicates!0 (array!38043 (_ BitVec 32) List!12346) Bool)

(assert (=> b!630644 (= res!407792 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12343))))

(assert (= (and start!57006 res!407793) b!630643))

(assert (= (and b!630643 res!407789) b!630631))

(assert (= (and b!630631 res!407798) b!630639))

(assert (= (and b!630639 res!407796) b!630633))

(assert (= (and b!630633 res!407794) b!630640))

(assert (= (and b!630640 res!407791) b!630642))

(assert (= (and b!630642 res!407790) b!630644))

(assert (= (and b!630644 res!407792) b!630637))

(assert (= (and b!630637 res!407788) b!630636))

(assert (= (and b!630636 res!407787) b!630638))

(assert (= (and b!630638 res!407795) b!630635))

(assert (= (and b!630635 res!407797) b!630641))

(assert (= (and b!630635 c!71789) b!630632))

(assert (= (and b!630635 (not c!71789)) b!630634))

(declare-fun m!605649 () Bool)

(assert (=> b!630642 m!605649))

(declare-fun m!605651 () Bool)

(assert (=> b!630638 m!605651))

(declare-fun m!605653 () Bool)

(assert (=> b!630638 m!605653))

(assert (=> b!630638 m!605653))

(declare-fun m!605655 () Bool)

(assert (=> b!630638 m!605655))

(declare-fun m!605657 () Bool)

(assert (=> b!630637 m!605657))

(declare-fun m!605659 () Bool)

(assert (=> b!630635 m!605659))

(declare-fun m!605661 () Bool)

(assert (=> b!630635 m!605661))

(assert (=> b!630635 m!605653))

(declare-fun m!605663 () Bool)

(assert (=> b!630635 m!605663))

(declare-fun m!605665 () Bool)

(assert (=> b!630635 m!605665))

(assert (=> b!630635 m!605653))

(declare-fun m!605667 () Bool)

(assert (=> b!630635 m!605667))

(declare-fun m!605669 () Bool)

(assert (=> b!630635 m!605669))

(declare-fun m!605671 () Bool)

(assert (=> b!630635 m!605671))

(declare-fun m!605673 () Bool)

(assert (=> b!630639 m!605673))

(declare-fun m!605675 () Bool)

(assert (=> b!630640 m!605675))

(assert (=> b!630631 m!605653))

(assert (=> b!630631 m!605653))

(declare-fun m!605677 () Bool)

(assert (=> b!630631 m!605677))

(declare-fun m!605679 () Bool)

(assert (=> start!57006 m!605679))

(declare-fun m!605681 () Bool)

(assert (=> start!57006 m!605681))

(declare-fun m!605683 () Bool)

(assert (=> b!630644 m!605683))

(declare-fun m!605685 () Bool)

(assert (=> b!630633 m!605685))

(assert (=> b!630636 m!605665))

(declare-fun m!605687 () Bool)

(assert (=> b!630636 m!605687))

(push 1)

