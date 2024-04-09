; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53980 () Bool)

(assert start!53980)

(declare-fun b!589054 () Bool)

(declare-fun res!376746 () Bool)

(declare-fun e!336317 () Bool)

(assert (=> b!589054 (=> (not res!376746) (not e!336317))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589054 (= res!376746 (validKeyInArray!0 k!1786))))

(declare-fun b!589055 () Bool)

(declare-fun res!376752 () Bool)

(assert (=> b!589055 (=> (not res!376752) (not e!336317))))

(declare-datatypes ((array!36778 0))(
  ( (array!36779 (arr!17658 (Array (_ BitVec 32) (_ BitVec 64))) (size!18022 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36778)

(declare-fun arrayContainsKey!0 (array!36778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589055 (= res!376752 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589056 () Bool)

(declare-fun res!376754 () Bool)

(assert (=> b!589056 (=> (not res!376754) (not e!336317))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589056 (= res!376754 (and (= (size!18022 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18022 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18022 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589057 () Bool)

(declare-datatypes ((Unit!18364 0))(
  ( (Unit!18365) )
))
(declare-fun e!336322 () Unit!18364)

(declare-fun Unit!18366 () Unit!18364)

(assert (=> b!589057 (= e!336322 Unit!18366)))

(assert (=> b!589057 false))

(declare-fun b!589058 () Bool)

(declare-fun e!336320 () Bool)

(declare-datatypes ((SeekEntryResult!6105 0))(
  ( (MissingZero!6105 (index!26650 (_ BitVec 32))) (Found!6105 (index!26651 (_ BitVec 32))) (Intermediate!6105 (undefined!6917 Bool) (index!26652 (_ BitVec 32)) (x!55474 (_ BitVec 32))) (Undefined!6105) (MissingVacant!6105 (index!26653 (_ BitVec 32))) )
))
(declare-fun lt!267199 () SeekEntryResult!6105)

(declare-fun lt!267193 () SeekEntryResult!6105)

(assert (=> b!589058 (= e!336320 (= lt!267199 lt!267193))))

(declare-fun b!589059 () Bool)

(declare-fun res!376755 () Bool)

(declare-fun e!336318 () Bool)

(assert (=> b!589059 (=> (not res!376755) (not e!336318))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!589059 (= res!376755 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17658 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589060 () Bool)

(declare-fun Unit!18367 () Unit!18364)

(assert (=> b!589060 (= e!336322 Unit!18367)))

(declare-fun b!589061 () Bool)

(declare-fun res!376749 () Bool)

(assert (=> b!589061 (=> (not res!376749) (not e!336318))))

(declare-datatypes ((List!11752 0))(
  ( (Nil!11749) (Cons!11748 (h!12793 (_ BitVec 64)) (t!17988 List!11752)) )
))
(declare-fun arrayNoDuplicates!0 (array!36778 (_ BitVec 32) List!11752) Bool)

(assert (=> b!589061 (= res!376749 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11749))))

(declare-fun b!589062 () Bool)

(declare-fun res!376750 () Bool)

(assert (=> b!589062 (=> (not res!376750) (not e!336318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36778 (_ BitVec 32)) Bool)

(assert (=> b!589062 (= res!376750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589063 () Bool)

(declare-fun res!376756 () Bool)

(assert (=> b!589063 (=> (not res!376756) (not e!336317))))

(assert (=> b!589063 (= res!376756 (validKeyInArray!0 (select (arr!17658 a!2986) j!136)))))

(declare-fun b!589064 () Bool)

(declare-fun e!336316 () Bool)

(assert (=> b!589064 (= e!336318 e!336316)))

(declare-fun res!376751 () Bool)

(assert (=> b!589064 (=> (not res!376751) (not e!336316))))

(assert (=> b!589064 (= res!376751 (= (select (store (arr!17658 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!267200 () array!36778)

(assert (=> b!589064 (= lt!267200 (array!36779 (store (arr!17658 a!2986) i!1108 k!1786) (size!18022 a!2986)))))

(declare-fun b!589065 () Bool)

(assert (=> b!589065 (= e!336317 e!336318)))

(declare-fun res!376753 () Bool)

(assert (=> b!589065 (=> (not res!376753) (not e!336318))))

(declare-fun lt!267198 () SeekEntryResult!6105)

(assert (=> b!589065 (= res!376753 (or (= lt!267198 (MissingZero!6105 i!1108)) (= lt!267198 (MissingVacant!6105 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36778 (_ BitVec 32)) SeekEntryResult!6105)

(assert (=> b!589065 (= lt!267198 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!589066 () Bool)

(declare-fun e!336319 () Bool)

(assert (=> b!589066 (= e!336319 (not true))))

(declare-fun lt!267195 () Unit!18364)

(assert (=> b!589066 (= lt!267195 e!336322)))

(declare-fun c!66521 () Bool)

(declare-fun lt!267196 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36778 (_ BitVec 32)) SeekEntryResult!6105)

(assert (=> b!589066 (= c!66521 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267196 lt!267200 mask!3053) Undefined!6105))))

(assert (=> b!589066 e!336320))

(declare-fun res!376757 () Bool)

(assert (=> b!589066 (=> (not res!376757) (not e!336320))))

(declare-fun lt!267197 () (_ BitVec 32))

(assert (=> b!589066 (= res!376757 (= lt!267193 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267197 vacantSpotIndex!68 lt!267196 lt!267200 mask!3053)))))

(assert (=> b!589066 (= lt!267193 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267197 vacantSpotIndex!68 (select (arr!17658 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589066 (= lt!267196 (select (store (arr!17658 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267194 () Unit!18364)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36778 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18364)

(assert (=> b!589066 (= lt!267194 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267197 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589066 (= lt!267197 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!376748 () Bool)

(assert (=> start!53980 (=> (not res!376748) (not e!336317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53980 (= res!376748 (validMask!0 mask!3053))))

(assert (=> start!53980 e!336317))

(assert (=> start!53980 true))

(declare-fun array_inv!13432 (array!36778) Bool)

(assert (=> start!53980 (array_inv!13432 a!2986)))

(declare-fun b!589067 () Bool)

(assert (=> b!589067 (= e!336316 e!336319)))

(declare-fun res!376747 () Bool)

(assert (=> b!589067 (=> (not res!376747) (not e!336319))))

(assert (=> b!589067 (= res!376747 (and (= lt!267199 (Found!6105 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17658 a!2986) index!984) (select (arr!17658 a!2986) j!136))) (not (= (select (arr!17658 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!589067 (= lt!267199 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17658 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53980 res!376748) b!589056))

(assert (= (and b!589056 res!376754) b!589063))

(assert (= (and b!589063 res!376756) b!589054))

(assert (= (and b!589054 res!376746) b!589055))

(assert (= (and b!589055 res!376752) b!589065))

(assert (= (and b!589065 res!376753) b!589062))

(assert (= (and b!589062 res!376750) b!589061))

(assert (= (and b!589061 res!376749) b!589059))

(assert (= (and b!589059 res!376755) b!589064))

(assert (= (and b!589064 res!376751) b!589067))

(assert (= (and b!589067 res!376747) b!589066))

(assert (= (and b!589066 res!376757) b!589058))

(assert (= (and b!589066 c!66521) b!589057))

(assert (= (and b!589066 (not c!66521)) b!589060))

(declare-fun m!567643 () Bool)

(assert (=> b!589063 m!567643))

(assert (=> b!589063 m!567643))

(declare-fun m!567645 () Bool)

(assert (=> b!589063 m!567645))

(declare-fun m!567647 () Bool)

(assert (=> b!589055 m!567647))

(declare-fun m!567649 () Bool)

(assert (=> b!589054 m!567649))

(declare-fun m!567651 () Bool)

(assert (=> b!589067 m!567651))

(assert (=> b!589067 m!567643))

(assert (=> b!589067 m!567643))

(declare-fun m!567653 () Bool)

(assert (=> b!589067 m!567653))

(declare-fun m!567655 () Bool)

(assert (=> start!53980 m!567655))

(declare-fun m!567657 () Bool)

(assert (=> start!53980 m!567657))

(declare-fun m!567659 () Bool)

(assert (=> b!589066 m!567659))

(declare-fun m!567661 () Bool)

(assert (=> b!589066 m!567661))

(assert (=> b!589066 m!567643))

(declare-fun m!567663 () Bool)

(assert (=> b!589066 m!567663))

(declare-fun m!567665 () Bool)

(assert (=> b!589066 m!567665))

(declare-fun m!567667 () Bool)

(assert (=> b!589066 m!567667))

(declare-fun m!567669 () Bool)

(assert (=> b!589066 m!567669))

(assert (=> b!589066 m!567643))

(declare-fun m!567671 () Bool)

(assert (=> b!589066 m!567671))

(declare-fun m!567673 () Bool)

(assert (=> b!589061 m!567673))

(declare-fun m!567675 () Bool)

(assert (=> b!589059 m!567675))

(declare-fun m!567677 () Bool)

(assert (=> b!589065 m!567677))

(declare-fun m!567679 () Bool)

(assert (=> b!589062 m!567679))

(assert (=> b!589064 m!567663))

(declare-fun m!567681 () Bool)

(assert (=> b!589064 m!567681))

(push 1)

