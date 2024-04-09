; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54514 () Bool)

(assert start!54514)

(declare-fun b!594592 () Bool)

(declare-datatypes ((Unit!18648 0))(
  ( (Unit!18649) )
))
(declare-fun e!339730 () Unit!18648)

(declare-fun Unit!18650 () Unit!18648)

(assert (=> b!594592 (= e!339730 Unit!18650)))

(declare-fun b!594593 () Bool)

(declare-fun res!380712 () Bool)

(declare-fun e!339733 () Bool)

(assert (=> b!594593 (=> res!380712 e!339733)))

(declare-datatypes ((List!11823 0))(
  ( (Nil!11820) (Cons!11819 (h!12864 (_ BitVec 64)) (t!18059 List!11823)) )
))
(declare-fun contains!2927 (List!11823 (_ BitVec 64)) Bool)

(assert (=> b!594593 (= res!380712 (contains!2927 Nil!11820 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594595 () Bool)

(declare-fun res!380708 () Bool)

(assert (=> b!594595 (=> res!380708 e!339733)))

(declare-fun noDuplicate!243 (List!11823) Bool)

(assert (=> b!594595 (= res!380708 (not (noDuplicate!243 Nil!11820)))))

(declare-fun b!594596 () Bool)

(declare-fun Unit!18651 () Unit!18648)

(assert (=> b!594596 (= e!339730 Unit!18651)))

(assert (=> b!594596 false))

(declare-fun b!594597 () Bool)

(declare-fun res!380701 () Bool)

(declare-fun e!339736 () Bool)

(assert (=> b!594597 (=> (not res!380701) (not e!339736))))

(declare-datatypes ((array!36937 0))(
  ( (array!36938 (arr!17729 (Array (_ BitVec 32) (_ BitVec 64))) (size!18093 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36937)

(declare-fun arrayNoDuplicates!0 (array!36937 (_ BitVec 32) List!11823) Bool)

(assert (=> b!594597 (= res!380701 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11820))))

(declare-fun b!594598 () Bool)

(declare-fun res!380700 () Bool)

(declare-fun e!339726 () Bool)

(assert (=> b!594598 (=> (not res!380700) (not e!339726))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!594598 (= res!380700 (validKeyInArray!0 (select (arr!17729 a!2986) j!136)))))

(declare-fun b!594599 () Bool)

(declare-fun res!380711 () Bool)

(assert (=> b!594599 (=> (not res!380711) (not e!339736))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36937 (_ BitVec 32)) Bool)

(assert (=> b!594599 (= res!380711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!594600 () Bool)

(declare-fun e!339732 () Bool)

(declare-fun e!339735 () Bool)

(assert (=> b!594600 (= e!339732 e!339735)))

(declare-fun res!380720 () Bool)

(assert (=> b!594600 (=> (not res!380720) (not e!339735))))

(declare-datatypes ((SeekEntryResult!6176 0))(
  ( (MissingZero!6176 (index!26951 (_ BitVec 32))) (Found!6176 (index!26952 (_ BitVec 32))) (Intermediate!6176 (undefined!6988 Bool) (index!26953 (_ BitVec 32)) (x!55781 (_ BitVec 32))) (Undefined!6176) (MissingVacant!6176 (index!26954 (_ BitVec 32))) )
))
(declare-fun lt!269991 () SeekEntryResult!6176)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!594600 (= res!380720 (and (= lt!269991 (Found!6176 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17729 a!2986) index!984) (select (arr!17729 a!2986) j!136))) (not (= (select (arr!17729 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36937 (_ BitVec 32)) SeekEntryResult!6176)

(assert (=> b!594600 (= lt!269991 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17729 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!594601 () Bool)

(declare-fun e!339727 () Bool)

(assert (=> b!594601 (= e!339727 e!339733)))

(declare-fun res!380704 () Bool)

(assert (=> b!594601 (=> res!380704 e!339733)))

(assert (=> b!594601 (= res!380704 (or (bvsge (size!18093 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18093 a!2986))))))

(declare-fun lt!270000 () array!36937)

(declare-fun arrayContainsKey!0 (array!36937 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!594601 (arrayContainsKey!0 lt!270000 (select (arr!17729 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269989 () Unit!18648)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36937 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18648)

(assert (=> b!594601 (= lt!269989 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270000 (select (arr!17729 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!594602 () Bool)

(declare-fun e!339734 () Bool)

(declare-fun e!339731 () Bool)

(assert (=> b!594602 (= e!339734 e!339731)))

(declare-fun res!380710 () Bool)

(assert (=> b!594602 (=> (not res!380710) (not e!339731))))

(assert (=> b!594602 (= res!380710 (arrayContainsKey!0 lt!270000 (select (arr!17729 a!2986) j!136) j!136))))

(declare-fun b!594603 () Bool)

(declare-fun res!380709 () Bool)

(assert (=> b!594603 (=> (not res!380709) (not e!339726))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!594603 (= res!380709 (validKeyInArray!0 k!1786))))

(declare-fun b!594604 () Bool)

(assert (=> b!594604 (= e!339731 (arrayContainsKey!0 lt!270000 (select (arr!17729 a!2986) j!136) index!984))))

(declare-fun b!594605 () Bool)

(declare-fun res!380719 () Bool)

(assert (=> b!594605 (=> (not res!380719) (not e!339736))))

(assert (=> b!594605 (= res!380719 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17729 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!594606 () Bool)

(assert (=> b!594606 (= e!339733 true)))

(declare-fun lt!269996 () Bool)

(assert (=> b!594606 (= lt!269996 (contains!2927 Nil!11820 k!1786))))

(declare-fun b!594607 () Bool)

(declare-fun e!339729 () Bool)

(assert (=> b!594607 (= e!339729 e!339734)))

(declare-fun res!380703 () Bool)

(assert (=> b!594607 (=> res!380703 e!339734)))

(declare-fun lt!269994 () (_ BitVec 64))

(declare-fun lt!269993 () (_ BitVec 64))

(assert (=> b!594607 (= res!380703 (or (not (= (select (arr!17729 a!2986) j!136) lt!269993)) (not (= (select (arr!17729 a!2986) j!136) lt!269994)) (bvsge j!136 index!984)))))

(declare-fun b!594608 () Bool)

(declare-fun res!380715 () Bool)

(assert (=> b!594608 (=> (not res!380715) (not e!339726))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!594608 (= res!380715 (and (= (size!18093 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18093 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18093 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!380713 () Bool)

(assert (=> start!54514 (=> (not res!380713) (not e!339726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54514 (= res!380713 (validMask!0 mask!3053))))

(assert (=> start!54514 e!339726))

(assert (=> start!54514 true))

(declare-fun array_inv!13503 (array!36937) Bool)

(assert (=> start!54514 (array_inv!13503 a!2986)))

(declare-fun b!594594 () Bool)

(assert (=> b!594594 (= e!339736 e!339732)))

(declare-fun res!380717 () Bool)

(assert (=> b!594594 (=> (not res!380717) (not e!339732))))

(assert (=> b!594594 (= res!380717 (= (select (store (arr!17729 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594594 (= lt!270000 (array!36938 (store (arr!17729 a!2986) i!1108 k!1786) (size!18093 a!2986)))))

(declare-fun b!594609 () Bool)

(assert (=> b!594609 (= e!339726 e!339736)))

(declare-fun res!380705 () Bool)

(assert (=> b!594609 (=> (not res!380705) (not e!339736))))

(declare-fun lt!269992 () SeekEntryResult!6176)

(assert (=> b!594609 (= res!380705 (or (= lt!269992 (MissingZero!6176 i!1108)) (= lt!269992 (MissingVacant!6176 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36937 (_ BitVec 32)) SeekEntryResult!6176)

(assert (=> b!594609 (= lt!269992 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!594610 () Bool)

(declare-fun e!339728 () Bool)

(assert (=> b!594610 (= e!339735 (not e!339728))))

(declare-fun res!380718 () Bool)

(assert (=> b!594610 (=> res!380718 e!339728)))

(declare-fun lt!269997 () SeekEntryResult!6176)

(assert (=> b!594610 (= res!380718 (not (= lt!269997 (Found!6176 index!984))))))

(declare-fun lt!269998 () Unit!18648)

(assert (=> b!594610 (= lt!269998 e!339730)))

(declare-fun c!67313 () Bool)

(assert (=> b!594610 (= c!67313 (= lt!269997 Undefined!6176))))

(assert (=> b!594610 (= lt!269997 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269993 lt!270000 mask!3053))))

(declare-fun e!339725 () Bool)

(assert (=> b!594610 e!339725))

(declare-fun res!380702 () Bool)

(assert (=> b!594610 (=> (not res!380702) (not e!339725))))

(declare-fun lt!269999 () (_ BitVec 32))

(declare-fun lt!269990 () SeekEntryResult!6176)

(assert (=> b!594610 (= res!380702 (= lt!269990 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269999 vacantSpotIndex!68 lt!269993 lt!270000 mask!3053)))))

(assert (=> b!594610 (= lt!269990 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269999 vacantSpotIndex!68 (select (arr!17729 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!594610 (= lt!269993 (select (store (arr!17729 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!269995 () Unit!18648)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36937 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18648)

(assert (=> b!594610 (= lt!269995 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269999 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!594610 (= lt!269999 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!594611 () Bool)

(declare-fun res!380706 () Bool)

(assert (=> b!594611 (=> res!380706 e!339733)))

(assert (=> b!594611 (= res!380706 (contains!2927 Nil!11820 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594612 () Bool)

(assert (=> b!594612 (= e!339725 (= lt!269991 lt!269990))))

(declare-fun b!594613 () Bool)

(assert (=> b!594613 (= e!339728 e!339727)))

(declare-fun res!380707 () Bool)

(assert (=> b!594613 (=> res!380707 e!339727)))

(assert (=> b!594613 (= res!380707 (or (not (= (select (arr!17729 a!2986) j!136) lt!269993)) (not (= (select (arr!17729 a!2986) j!136) lt!269994)) (bvsge j!136 index!984)))))

(assert (=> b!594613 e!339729))

(declare-fun res!380714 () Bool)

(assert (=> b!594613 (=> (not res!380714) (not e!339729))))

(assert (=> b!594613 (= res!380714 (= lt!269994 (select (arr!17729 a!2986) j!136)))))

(assert (=> b!594613 (= lt!269994 (select (store (arr!17729 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!594614 () Bool)

(declare-fun res!380716 () Bool)

(assert (=> b!594614 (=> (not res!380716) (not e!339726))))

(assert (=> b!594614 (= res!380716 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!54514 res!380713) b!594608))

(assert (= (and b!594608 res!380715) b!594598))

(assert (= (and b!594598 res!380700) b!594603))

(assert (= (and b!594603 res!380709) b!594614))

(assert (= (and b!594614 res!380716) b!594609))

(assert (= (and b!594609 res!380705) b!594599))

(assert (= (and b!594599 res!380711) b!594597))

(assert (= (and b!594597 res!380701) b!594605))

(assert (= (and b!594605 res!380719) b!594594))

(assert (= (and b!594594 res!380717) b!594600))

(assert (= (and b!594600 res!380720) b!594610))

(assert (= (and b!594610 res!380702) b!594612))

(assert (= (and b!594610 c!67313) b!594596))

(assert (= (and b!594610 (not c!67313)) b!594592))

(assert (= (and b!594610 (not res!380718)) b!594613))

(assert (= (and b!594613 res!380714) b!594607))

(assert (= (and b!594607 (not res!380703)) b!594602))

(assert (= (and b!594602 res!380710) b!594604))

(assert (= (and b!594613 (not res!380707)) b!594601))

(assert (= (and b!594601 (not res!380704)) b!594595))

(assert (= (and b!594595 (not res!380708)) b!594611))

(assert (= (and b!594611 (not res!380706)) b!594593))

(assert (= (and b!594593 (not res!380712)) b!594606))

(declare-fun m!572393 () Bool)

(assert (=> b!594605 m!572393))

(declare-fun m!572395 () Bool)

(assert (=> b!594597 m!572395))

(declare-fun m!572397 () Bool)

(assert (=> b!594603 m!572397))

(declare-fun m!572399 () Bool)

(assert (=> b!594593 m!572399))

(declare-fun m!572401 () Bool)

(assert (=> b!594614 m!572401))

(declare-fun m!572403 () Bool)

(assert (=> b!594611 m!572403))

(declare-fun m!572405 () Bool)

(assert (=> b!594595 m!572405))

(declare-fun m!572407 () Bool)

(assert (=> b!594606 m!572407))

(declare-fun m!572409 () Bool)

(assert (=> b!594610 m!572409))

(declare-fun m!572411 () Bool)

(assert (=> b!594610 m!572411))

(declare-fun m!572413 () Bool)

(assert (=> b!594610 m!572413))

(declare-fun m!572415 () Bool)

(assert (=> b!594610 m!572415))

(declare-fun m!572417 () Bool)

(assert (=> b!594610 m!572417))

(assert (=> b!594610 m!572415))

(declare-fun m!572419 () Bool)

(assert (=> b!594610 m!572419))

(declare-fun m!572421 () Bool)

(assert (=> b!594610 m!572421))

(declare-fun m!572423 () Bool)

(assert (=> b!594610 m!572423))

(declare-fun m!572425 () Bool)

(assert (=> b!594600 m!572425))

(assert (=> b!594600 m!572415))

(assert (=> b!594600 m!572415))

(declare-fun m!572427 () Bool)

(assert (=> b!594600 m!572427))

(declare-fun m!572429 () Bool)

(assert (=> b!594609 m!572429))

(assert (=> b!594613 m!572415))

(assert (=> b!594613 m!572423))

(declare-fun m!572431 () Bool)

(assert (=> b!594613 m!572431))

(declare-fun m!572433 () Bool)

(assert (=> b!594599 m!572433))

(assert (=> b!594602 m!572415))

(assert (=> b!594602 m!572415))

(declare-fun m!572435 () Bool)

(assert (=> b!594602 m!572435))

(assert (=> b!594594 m!572423))

(declare-fun m!572437 () Bool)

(assert (=> b!594594 m!572437))

(declare-fun m!572439 () Bool)

(assert (=> start!54514 m!572439))

(declare-fun m!572441 () Bool)

(assert (=> start!54514 m!572441))

(assert (=> b!594607 m!572415))

(assert (=> b!594601 m!572415))

(assert (=> b!594601 m!572415))

(declare-fun m!572443 () Bool)

(assert (=> b!594601 m!572443))

(assert (=> b!594601 m!572415))

(declare-fun m!572445 () Bool)

(assert (=> b!594601 m!572445))

(assert (=> b!594598 m!572415))

(assert (=> b!594598 m!572415))

(declare-fun m!572447 () Bool)

(assert (=> b!594598 m!572447))

(assert (=> b!594604 m!572415))

(assert (=> b!594604 m!572415))

(declare-fun m!572449 () Bool)

(assert (=> b!594604 m!572449))

(push 1)

