; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58454 () Bool)

(assert start!58454)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38426 0))(
  ( (array!38427 (arr!18421 (Array (_ BitVec 32) (_ BitVec 64))) (size!18785 (_ BitVec 32))) )
))
(declare-fun lt!299138 () array!38426)

(declare-fun e!369688 () Bool)

(declare-fun b!645079 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38426)

(declare-fun arrayContainsKey!0 (array!38426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!645079 (= e!369688 (arrayContainsKey!0 lt!299138 (select (arr!18421 a!2986) j!136) index!984))))

(declare-fun b!645080 () Bool)

(declare-fun e!369678 () Bool)

(declare-fun e!369686 () Bool)

(assert (=> b!645080 (= e!369678 e!369686)))

(declare-fun res!418024 () Bool)

(assert (=> b!645080 (=> res!418024 e!369686)))

(assert (=> b!645080 (= res!418024 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!21880 0))(
  ( (Unit!21881) )
))
(declare-fun lt!299144 () Unit!21880)

(declare-fun e!369687 () Unit!21880)

(assert (=> b!645080 (= lt!299144 e!369687)))

(declare-fun c!73898 () Bool)

(assert (=> b!645080 (= c!73898 (bvslt j!136 index!984))))

(declare-fun b!645081 () Bool)

(declare-fun Unit!21882 () Unit!21880)

(assert (=> b!645081 (= e!369687 Unit!21882)))

(declare-fun lt!299140 () Unit!21880)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38426 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21880)

(assert (=> b!645081 (= lt!299140 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299138 (select (arr!18421 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!645081 (arrayContainsKey!0 lt!299138 (select (arr!18421 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!299149 () Unit!21880)

(declare-datatypes ((List!12515 0))(
  ( (Nil!12512) (Cons!12511 (h!13556 (_ BitVec 64)) (t!18751 List!12515)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38426 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12515) Unit!21880)

(assert (=> b!645081 (= lt!299149 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12512))))

(declare-fun arrayNoDuplicates!0 (array!38426 (_ BitVec 32) List!12515) Bool)

(assert (=> b!645081 (arrayNoDuplicates!0 lt!299138 #b00000000000000000000000000000000 Nil!12512)))

(declare-fun lt!299146 () Unit!21880)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38426 (_ BitVec 32) (_ BitVec 32)) Unit!21880)

(assert (=> b!645081 (= lt!299146 (lemmaNoDuplicateFromThenFromBigger!0 lt!299138 #b00000000000000000000000000000000 j!136))))

(assert (=> b!645081 (arrayNoDuplicates!0 lt!299138 j!136 Nil!12512)))

(declare-fun lt!299136 () Unit!21880)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38426 (_ BitVec 64) (_ BitVec 32) List!12515) Unit!21880)

(assert (=> b!645081 (= lt!299136 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299138 (select (arr!18421 a!2986) j!136) j!136 Nil!12512))))

(assert (=> b!645081 false))

(declare-fun b!645082 () Bool)

(declare-fun e!369682 () Bool)

(declare-fun e!369679 () Bool)

(assert (=> b!645082 (= e!369682 e!369679)))

(declare-fun res!418037 () Bool)

(assert (=> b!645082 (=> res!418037 e!369679)))

(declare-fun lt!299151 () (_ BitVec 64))

(declare-fun lt!299143 () (_ BitVec 64))

(assert (=> b!645082 (= res!418037 (or (not (= (select (arr!18421 a!2986) j!136) lt!299151)) (not (= (select (arr!18421 a!2986) j!136) lt!299143)) (bvsge j!136 index!984)))))

(declare-fun b!645083 () Bool)

(declare-fun res!418030 () Bool)

(declare-fun e!369683 () Bool)

(assert (=> b!645083 (=> (not res!418030) (not e!369683))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!645083 (= res!418030 (validKeyInArray!0 k0!1786))))

(declare-fun b!645084 () Bool)

(declare-fun e!369685 () Unit!21880)

(declare-fun Unit!21883 () Unit!21880)

(assert (=> b!645084 (= e!369685 Unit!21883)))

(declare-fun b!645085 () Bool)

(declare-fun res!418027 () Bool)

(declare-fun e!369677 () Bool)

(assert (=> b!645085 (=> (not res!418027) (not e!369677))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38426 (_ BitVec 32)) Bool)

(assert (=> b!645085 (= res!418027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!418029 () Bool)

(assert (=> start!58454 (=> (not res!418029) (not e!369683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58454 (= res!418029 (validMask!0 mask!3053))))

(assert (=> start!58454 e!369683))

(assert (=> start!58454 true))

(declare-fun array_inv!14195 (array!38426) Bool)

(assert (=> start!58454 (array_inv!14195 a!2986)))

(declare-fun b!645086 () Bool)

(declare-fun res!418031 () Bool)

(assert (=> b!645086 (=> (not res!418031) (not e!369683))))

(assert (=> b!645086 (= res!418031 (validKeyInArray!0 (select (arr!18421 a!2986) j!136)))))

(declare-fun b!645087 () Bool)

(declare-fun res!418035 () Bool)

(assert (=> b!645087 (=> (not res!418035) (not e!369677))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!645087 (= res!418035 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18421 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!645088 () Bool)

(declare-fun e!369675 () Bool)

(assert (=> b!645088 (= e!369679 e!369675)))

(declare-fun res!418020 () Bool)

(assert (=> b!645088 (=> (not res!418020) (not e!369675))))

(assert (=> b!645088 (= res!418020 (arrayContainsKey!0 lt!299138 (select (arr!18421 a!2986) j!136) j!136))))

(declare-fun b!645089 () Bool)

(declare-fun res!418036 () Bool)

(assert (=> b!645089 (=> (not res!418036) (not e!369683))))

(assert (=> b!645089 (= res!418036 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!645090 () Bool)

(declare-fun e!369684 () Bool)

(declare-fun e!369680 () Bool)

(assert (=> b!645090 (= e!369684 (not e!369680))))

(declare-fun res!418028 () Bool)

(assert (=> b!645090 (=> res!418028 e!369680)))

(declare-datatypes ((SeekEntryResult!6868 0))(
  ( (MissingZero!6868 (index!29806 (_ BitVec 32))) (Found!6868 (index!29807 (_ BitVec 32))) (Intermediate!6868 (undefined!7680 Bool) (index!29808 (_ BitVec 32)) (x!58606 (_ BitVec 32))) (Undefined!6868) (MissingVacant!6868 (index!29809 (_ BitVec 32))) )
))
(declare-fun lt!299145 () SeekEntryResult!6868)

(assert (=> b!645090 (= res!418028 (not (= lt!299145 (Found!6868 index!984))))))

(declare-fun lt!299147 () Unit!21880)

(assert (=> b!645090 (= lt!299147 e!369685)))

(declare-fun c!73897 () Bool)

(assert (=> b!645090 (= c!73897 (= lt!299145 Undefined!6868))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38426 (_ BitVec 32)) SeekEntryResult!6868)

(assert (=> b!645090 (= lt!299145 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299151 lt!299138 mask!3053))))

(declare-fun e!369681 () Bool)

(assert (=> b!645090 e!369681))

(declare-fun res!418019 () Bool)

(assert (=> b!645090 (=> (not res!418019) (not e!369681))))

(declare-fun lt!299142 () SeekEntryResult!6868)

(declare-fun lt!299150 () (_ BitVec 32))

(assert (=> b!645090 (= res!418019 (= lt!299142 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299150 vacantSpotIndex!68 lt!299151 lt!299138 mask!3053)))))

(assert (=> b!645090 (= lt!299142 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299150 vacantSpotIndex!68 (select (arr!18421 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!645090 (= lt!299151 (select (store (arr!18421 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!299141 () Unit!21880)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38426 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21880)

(assert (=> b!645090 (= lt!299141 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299150 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!645090 (= lt!299150 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!645091 () Bool)

(declare-fun Unit!21884 () Unit!21880)

(assert (=> b!645091 (= e!369687 Unit!21884)))

(declare-fun b!645092 () Bool)

(assert (=> b!645092 (= e!369675 (arrayContainsKey!0 lt!299138 (select (arr!18421 a!2986) j!136) index!984))))

(declare-fun b!645093 () Bool)

(declare-fun res!418026 () Bool)

(assert (=> b!645093 (=> (not res!418026) (not e!369677))))

(assert (=> b!645093 (= res!418026 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12512))))

(declare-fun b!645094 () Bool)

(declare-fun res!418033 () Bool)

(assert (=> b!645094 (=> (not res!418033) (not e!369683))))

(assert (=> b!645094 (= res!418033 (and (= (size!18785 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18785 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18785 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!645095 () Bool)

(declare-fun lt!299139 () SeekEntryResult!6868)

(assert (=> b!645095 (= e!369681 (= lt!299139 lt!299142))))

(declare-fun b!645096 () Bool)

(assert (=> b!645096 (= e!369680 e!369678)))

(declare-fun res!418023 () Bool)

(assert (=> b!645096 (=> res!418023 e!369678)))

(assert (=> b!645096 (= res!418023 (or (not (= (select (arr!18421 a!2986) j!136) lt!299151)) (not (= (select (arr!18421 a!2986) j!136) lt!299143))))))

(assert (=> b!645096 e!369682))

(declare-fun res!418025 () Bool)

(assert (=> b!645096 (=> (not res!418025) (not e!369682))))

(assert (=> b!645096 (= res!418025 (= lt!299143 (select (arr!18421 a!2986) j!136)))))

(assert (=> b!645096 (= lt!299143 (select (store (arr!18421 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!645097 () Bool)

(assert (=> b!645097 (= e!369683 e!369677)))

(declare-fun res!418034 () Bool)

(assert (=> b!645097 (=> (not res!418034) (not e!369677))))

(declare-fun lt!299148 () SeekEntryResult!6868)

(assert (=> b!645097 (= res!418034 (or (= lt!299148 (MissingZero!6868 i!1108)) (= lt!299148 (MissingVacant!6868 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38426 (_ BitVec 32)) SeekEntryResult!6868)

(assert (=> b!645097 (= lt!299148 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!645098 () Bool)

(declare-fun e!369674 () Bool)

(assert (=> b!645098 (= e!369674 e!369684)))

(declare-fun res!418021 () Bool)

(assert (=> b!645098 (=> (not res!418021) (not e!369684))))

(assert (=> b!645098 (= res!418021 (and (= lt!299139 (Found!6868 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18421 a!2986) index!984) (select (arr!18421 a!2986) j!136))) (not (= (select (arr!18421 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!645098 (= lt!299139 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18421 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!645099 () Bool)

(assert (=> b!645099 (= e!369686 true)))

(assert (=> b!645099 (arrayContainsKey!0 lt!299138 (select (arr!18421 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299137 () Unit!21880)

(assert (=> b!645099 (= lt!299137 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299138 (select (arr!18421 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!645099 e!369688))

(declare-fun res!418022 () Bool)

(assert (=> b!645099 (=> (not res!418022) (not e!369688))))

(assert (=> b!645099 (= res!418022 (arrayContainsKey!0 lt!299138 (select (arr!18421 a!2986) j!136) j!136))))

(declare-fun b!645100 () Bool)

(declare-fun Unit!21885 () Unit!21880)

(assert (=> b!645100 (= e!369685 Unit!21885)))

(assert (=> b!645100 false))

(declare-fun b!645101 () Bool)

(assert (=> b!645101 (= e!369677 e!369674)))

(declare-fun res!418032 () Bool)

(assert (=> b!645101 (=> (not res!418032) (not e!369674))))

(assert (=> b!645101 (= res!418032 (= (select (store (arr!18421 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!645101 (= lt!299138 (array!38427 (store (arr!18421 a!2986) i!1108 k0!1786) (size!18785 a!2986)))))

(assert (= (and start!58454 res!418029) b!645094))

(assert (= (and b!645094 res!418033) b!645086))

(assert (= (and b!645086 res!418031) b!645083))

(assert (= (and b!645083 res!418030) b!645089))

(assert (= (and b!645089 res!418036) b!645097))

(assert (= (and b!645097 res!418034) b!645085))

(assert (= (and b!645085 res!418027) b!645093))

(assert (= (and b!645093 res!418026) b!645087))

(assert (= (and b!645087 res!418035) b!645101))

(assert (= (and b!645101 res!418032) b!645098))

(assert (= (and b!645098 res!418021) b!645090))

(assert (= (and b!645090 res!418019) b!645095))

(assert (= (and b!645090 c!73897) b!645100))

(assert (= (and b!645090 (not c!73897)) b!645084))

(assert (= (and b!645090 (not res!418028)) b!645096))

(assert (= (and b!645096 res!418025) b!645082))

(assert (= (and b!645082 (not res!418037)) b!645088))

(assert (= (and b!645088 res!418020) b!645092))

(assert (= (and b!645096 (not res!418023)) b!645080))

(assert (= (and b!645080 c!73898) b!645081))

(assert (= (and b!645080 (not c!73898)) b!645091))

(assert (= (and b!645080 (not res!418024)) b!645099))

(assert (= (and b!645099 res!418022) b!645079))

(declare-fun m!618679 () Bool)

(assert (=> b!645087 m!618679))

(declare-fun m!618681 () Bool)

(assert (=> b!645085 m!618681))

(declare-fun m!618683 () Bool)

(assert (=> b!645097 m!618683))

(declare-fun m!618685 () Bool)

(assert (=> start!58454 m!618685))

(declare-fun m!618687 () Bool)

(assert (=> start!58454 m!618687))

(declare-fun m!618689 () Bool)

(assert (=> b!645081 m!618689))

(assert (=> b!645081 m!618689))

(declare-fun m!618691 () Bool)

(assert (=> b!645081 m!618691))

(declare-fun m!618693 () Bool)

(assert (=> b!645081 m!618693))

(assert (=> b!645081 m!618689))

(declare-fun m!618695 () Bool)

(assert (=> b!645081 m!618695))

(declare-fun m!618697 () Bool)

(assert (=> b!645081 m!618697))

(assert (=> b!645081 m!618689))

(declare-fun m!618699 () Bool)

(assert (=> b!645081 m!618699))

(declare-fun m!618701 () Bool)

(assert (=> b!645081 m!618701))

(declare-fun m!618703 () Bool)

(assert (=> b!645081 m!618703))

(assert (=> b!645099 m!618689))

(assert (=> b!645099 m!618689))

(declare-fun m!618705 () Bool)

(assert (=> b!645099 m!618705))

(assert (=> b!645099 m!618689))

(declare-fun m!618707 () Bool)

(assert (=> b!645099 m!618707))

(assert (=> b!645099 m!618689))

(declare-fun m!618709 () Bool)

(assert (=> b!645099 m!618709))

(assert (=> b!645092 m!618689))

(assert (=> b!645092 m!618689))

(declare-fun m!618711 () Bool)

(assert (=> b!645092 m!618711))

(declare-fun m!618713 () Bool)

(assert (=> b!645101 m!618713))

(declare-fun m!618715 () Bool)

(assert (=> b!645101 m!618715))

(declare-fun m!618717 () Bool)

(assert (=> b!645083 m!618717))

(assert (=> b!645079 m!618689))

(assert (=> b!645079 m!618689))

(assert (=> b!645079 m!618711))

(declare-fun m!618719 () Bool)

(assert (=> b!645098 m!618719))

(assert (=> b!645098 m!618689))

(assert (=> b!645098 m!618689))

(declare-fun m!618721 () Bool)

(assert (=> b!645098 m!618721))

(assert (=> b!645082 m!618689))

(assert (=> b!645086 m!618689))

(assert (=> b!645086 m!618689))

(declare-fun m!618723 () Bool)

(assert (=> b!645086 m!618723))

(declare-fun m!618725 () Bool)

(assert (=> b!645089 m!618725))

(assert (=> b!645096 m!618689))

(assert (=> b!645096 m!618713))

(declare-fun m!618727 () Bool)

(assert (=> b!645096 m!618727))

(declare-fun m!618729 () Bool)

(assert (=> b!645093 m!618729))

(declare-fun m!618731 () Bool)

(assert (=> b!645090 m!618731))

(assert (=> b!645090 m!618689))

(declare-fun m!618733 () Bool)

(assert (=> b!645090 m!618733))

(assert (=> b!645090 m!618689))

(assert (=> b!645090 m!618713))

(declare-fun m!618735 () Bool)

(assert (=> b!645090 m!618735))

(declare-fun m!618737 () Bool)

(assert (=> b!645090 m!618737))

(declare-fun m!618739 () Bool)

(assert (=> b!645090 m!618739))

(declare-fun m!618741 () Bool)

(assert (=> b!645090 m!618741))

(assert (=> b!645088 m!618689))

(assert (=> b!645088 m!618689))

(assert (=> b!645088 m!618709))

(check-sat (not b!645093) (not b!645081) (not b!645098) (not b!645090) (not b!645097) (not b!645079) (not b!645088) (not b!645086) (not b!645089) (not b!645083) (not start!58454) (not b!645092) (not b!645099) (not b!645085))
(check-sat)
