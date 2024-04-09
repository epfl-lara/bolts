; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56000 () Bool)

(assert start!56000)

(declare-fun b!614838 () Bool)

(declare-fun e!352528 () Bool)

(declare-fun e!352527 () Bool)

(assert (=> b!614838 (= e!352528 e!352527)))

(declare-fun res!396121 () Bool)

(assert (=> b!614838 (=> (not res!396121) (not e!352527))))

(declare-datatypes ((SeekEntryResult!6406 0))(
  ( (MissingZero!6406 (index!27907 (_ BitVec 32))) (Found!6406 (index!27908 (_ BitVec 32))) (Intermediate!6406 (undefined!7218 Bool) (index!27909 (_ BitVec 32)) (x!56735 (_ BitVec 32))) (Undefined!6406) (MissingVacant!6406 (index!27910 (_ BitVec 32))) )
))
(declare-fun lt!282322 () SeekEntryResult!6406)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!614838 (= res!396121 (or (= lt!282322 (MissingZero!6406 i!1108)) (= lt!282322 (MissingVacant!6406 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37433 0))(
  ( (array!37434 (arr!17959 (Array (_ BitVec 32) (_ BitVec 64))) (size!18323 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37433)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37433 (_ BitVec 32)) SeekEntryResult!6406)

(assert (=> b!614838 (= lt!282322 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!614839 () Bool)

(declare-datatypes ((Unit!19880 0))(
  ( (Unit!19881) )
))
(declare-fun e!352522 () Unit!19880)

(declare-fun Unit!19882 () Unit!19880)

(assert (=> b!614839 (= e!352522 Unit!19882)))

(declare-fun b!614840 () Bool)

(declare-fun res!396127 () Bool)

(assert (=> b!614840 (=> (not res!396127) (not e!352527))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!614840 (= res!396127 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17959 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!614841 () Bool)

(declare-fun e!352530 () Bool)

(declare-fun lt!282320 () SeekEntryResult!6406)

(declare-fun lt!282318 () SeekEntryResult!6406)

(assert (=> b!614841 (= e!352530 (= lt!282320 lt!282318))))

(declare-fun b!614843 () Bool)

(declare-fun e!352525 () Unit!19880)

(declare-fun Unit!19883 () Unit!19880)

(assert (=> b!614843 (= e!352525 Unit!19883)))

(declare-fun res!396122 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!614843 (= res!396122 (= (select (store (arr!17959 a!2986) i!1108 k0!1786) index!984) (select (arr!17959 a!2986) j!136)))))

(declare-fun e!352531 () Bool)

(assert (=> b!614843 (=> (not res!396122) (not e!352531))))

(assert (=> b!614843 e!352531))

(declare-fun c!69728 () Bool)

(assert (=> b!614843 (= c!69728 (bvslt j!136 index!984))))

(declare-fun lt!282321 () Unit!19880)

(declare-fun e!352521 () Unit!19880)

(assert (=> b!614843 (= lt!282321 e!352521)))

(declare-fun c!69731 () Bool)

(assert (=> b!614843 (= c!69731 (bvslt index!984 j!136))))

(declare-fun lt!282333 () Unit!19880)

(declare-fun e!352532 () Unit!19880)

(assert (=> b!614843 (= lt!282333 e!352532)))

(assert (=> b!614843 false))

(declare-fun b!614844 () Bool)

(declare-fun res!396118 () Bool)

(assert (=> b!614844 (=> (not res!396118) (not e!352528))))

(declare-fun arrayContainsKey!0 (array!37433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!614844 (= res!396118 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!614845 () Bool)

(declare-fun res!396119 () Bool)

(assert (=> b!614845 (=> (not res!396119) (not e!352528))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!614845 (= res!396119 (validKeyInArray!0 (select (arr!17959 a!2986) j!136)))))

(declare-fun b!614846 () Bool)

(declare-fun e!352524 () Bool)

(assert (=> b!614846 (= e!352527 e!352524)))

(declare-fun res!396131 () Bool)

(assert (=> b!614846 (=> (not res!396131) (not e!352524))))

(assert (=> b!614846 (= res!396131 (= (select (store (arr!17959 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!282329 () array!37433)

(assert (=> b!614846 (= lt!282329 (array!37434 (store (arr!17959 a!2986) i!1108 k0!1786) (size!18323 a!2986)))))

(declare-fun b!614847 () Bool)

(declare-fun Unit!19884 () Unit!19880)

(assert (=> b!614847 (= e!352525 Unit!19884)))

(declare-fun b!614848 () Bool)

(declare-fun res!396130 () Bool)

(assert (=> b!614848 (=> (not res!396130) (not e!352527))))

(declare-datatypes ((List!12053 0))(
  ( (Nil!12050) (Cons!12049 (h!13094 (_ BitVec 64)) (t!18289 List!12053)) )
))
(declare-fun arrayNoDuplicates!0 (array!37433 (_ BitVec 32) List!12053) Bool)

(assert (=> b!614848 (= res!396130 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12050))))

(declare-fun b!614849 () Bool)

(declare-fun Unit!19885 () Unit!19880)

(assert (=> b!614849 (= e!352522 Unit!19885)))

(assert (=> b!614849 false))

(declare-fun b!614850 () Bool)

(declare-fun res!396126 () Bool)

(assert (=> b!614850 (=> (not res!396126) (not e!352528))))

(assert (=> b!614850 (= res!396126 (and (= (size!18323 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18323 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18323 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!352529 () Bool)

(declare-fun b!614851 () Bool)

(assert (=> b!614851 (= e!352529 (arrayContainsKey!0 lt!282329 (select (arr!17959 a!2986) j!136) index!984))))

(declare-fun b!614852 () Bool)

(declare-fun res!396128 () Bool)

(assert (=> b!614852 (= res!396128 (bvsge j!136 index!984))))

(declare-fun e!352523 () Bool)

(assert (=> b!614852 (=> res!396128 e!352523)))

(assert (=> b!614852 (= e!352531 e!352523)))

(declare-fun b!614853 () Bool)

(declare-fun e!352526 () Bool)

(assert (=> b!614853 (= e!352526 (arrayContainsKey!0 lt!282329 (select (arr!17959 a!2986) j!136) index!984))))

(declare-fun b!614854 () Bool)

(assert (=> b!614854 false))

(declare-fun lt!282323 () Unit!19880)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37433 (_ BitVec 64) (_ BitVec 32) List!12053) Unit!19880)

(assert (=> b!614854 (= lt!282323 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282329 (select (arr!17959 a!2986) j!136) j!136 Nil!12050))))

(assert (=> b!614854 (arrayNoDuplicates!0 lt!282329 j!136 Nil!12050)))

(declare-fun lt!282331 () Unit!19880)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37433 (_ BitVec 32) (_ BitVec 32)) Unit!19880)

(assert (=> b!614854 (= lt!282331 (lemmaNoDuplicateFromThenFromBigger!0 lt!282329 #b00000000000000000000000000000000 j!136))))

(assert (=> b!614854 (arrayNoDuplicates!0 lt!282329 #b00000000000000000000000000000000 Nil!12050)))

(declare-fun lt!282326 () Unit!19880)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37433 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12053) Unit!19880)

(assert (=> b!614854 (= lt!282326 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12050))))

(assert (=> b!614854 (arrayContainsKey!0 lt!282329 (select (arr!17959 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282335 () Unit!19880)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37433 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19880)

(assert (=> b!614854 (= lt!282335 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282329 (select (arr!17959 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!19886 () Unit!19880)

(assert (=> b!614854 (= e!352521 Unit!19886)))

(declare-fun b!614855 () Bool)

(declare-fun e!352534 () Bool)

(assert (=> b!614855 (= e!352524 e!352534)))

(declare-fun res!396116 () Bool)

(assert (=> b!614855 (=> (not res!396116) (not e!352534))))

(assert (=> b!614855 (= res!396116 (and (= lt!282320 (Found!6406 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17959 a!2986) index!984) (select (arr!17959 a!2986) j!136))) (not (= (select (arr!17959 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37433 (_ BitVec 32)) SeekEntryResult!6406)

(assert (=> b!614855 (= lt!282320 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17959 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!614856 () Bool)

(declare-fun res!396120 () Bool)

(assert (=> b!614856 (=> (not res!396120) (not e!352527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37433 (_ BitVec 32)) Bool)

(assert (=> b!614856 (= res!396120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!614857 () Bool)

(declare-fun Unit!19887 () Unit!19880)

(assert (=> b!614857 (= e!352532 Unit!19887)))

(declare-fun b!614858 () Bool)

(assert (=> b!614858 (= e!352534 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun lt!282319 () Unit!19880)

(assert (=> b!614858 (= lt!282319 e!352525)))

(declare-fun c!69730 () Bool)

(declare-fun lt!282325 () SeekEntryResult!6406)

(assert (=> b!614858 (= c!69730 (= lt!282325 (Found!6406 index!984)))))

(declare-fun lt!282330 () Unit!19880)

(assert (=> b!614858 (= lt!282330 e!352522)))

(declare-fun c!69729 () Bool)

(assert (=> b!614858 (= c!69729 (= lt!282325 Undefined!6406))))

(declare-fun lt!282317 () (_ BitVec 64))

(assert (=> b!614858 (= lt!282325 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282317 lt!282329 mask!3053))))

(assert (=> b!614858 e!352530))

(declare-fun res!396124 () Bool)

(assert (=> b!614858 (=> (not res!396124) (not e!352530))))

(declare-fun lt!282324 () (_ BitVec 32))

(assert (=> b!614858 (= res!396124 (= lt!282318 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282324 vacantSpotIndex!68 lt!282317 lt!282329 mask!3053)))))

(assert (=> b!614858 (= lt!282318 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282324 vacantSpotIndex!68 (select (arr!17959 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!614858 (= lt!282317 (select (store (arr!17959 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!282327 () Unit!19880)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37433 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19880)

(assert (=> b!614858 (= lt!282327 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282324 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!614858 (= lt!282324 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!614859 () Bool)

(declare-fun res!396117 () Bool)

(assert (=> b!614859 (=> (not res!396117) (not e!352528))))

(assert (=> b!614859 (= res!396117 (validKeyInArray!0 k0!1786))))

(declare-fun b!614860 () Bool)

(declare-fun res!396123 () Bool)

(assert (=> b!614860 (= res!396123 (arrayContainsKey!0 lt!282329 (select (arr!17959 a!2986) j!136) j!136))))

(assert (=> b!614860 (=> (not res!396123) (not e!352526))))

(assert (=> b!614860 (= e!352523 e!352526)))

(declare-fun b!614861 () Bool)

(declare-fun Unit!19888 () Unit!19880)

(assert (=> b!614861 (= e!352521 Unit!19888)))

(declare-fun res!396125 () Bool)

(assert (=> start!56000 (=> (not res!396125) (not e!352528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56000 (= res!396125 (validMask!0 mask!3053))))

(assert (=> start!56000 e!352528))

(assert (=> start!56000 true))

(declare-fun array_inv!13733 (array!37433) Bool)

(assert (=> start!56000 (array_inv!13733 a!2986)))

(declare-fun b!614842 () Bool)

(assert (=> b!614842 false))

(declare-fun lt!282328 () Unit!19880)

(assert (=> b!614842 (= lt!282328 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282329 (select (arr!17959 a!2986) j!136) index!984 Nil!12050))))

(assert (=> b!614842 (arrayNoDuplicates!0 lt!282329 index!984 Nil!12050)))

(declare-fun lt!282336 () Unit!19880)

(assert (=> b!614842 (= lt!282336 (lemmaNoDuplicateFromThenFromBigger!0 lt!282329 #b00000000000000000000000000000000 index!984))))

(assert (=> b!614842 (arrayNoDuplicates!0 lt!282329 #b00000000000000000000000000000000 Nil!12050)))

(declare-fun lt!282332 () Unit!19880)

(assert (=> b!614842 (= lt!282332 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12050))))

(assert (=> b!614842 (arrayContainsKey!0 lt!282329 (select (arr!17959 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282334 () Unit!19880)

(assert (=> b!614842 (= lt!282334 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282329 (select (arr!17959 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!614842 e!352529))

(declare-fun res!396129 () Bool)

(assert (=> b!614842 (=> (not res!396129) (not e!352529))))

(assert (=> b!614842 (= res!396129 (arrayContainsKey!0 lt!282329 (select (arr!17959 a!2986) j!136) j!136))))

(declare-fun Unit!19889 () Unit!19880)

(assert (=> b!614842 (= e!352532 Unit!19889)))

(assert (= (and start!56000 res!396125) b!614850))

(assert (= (and b!614850 res!396126) b!614845))

(assert (= (and b!614845 res!396119) b!614859))

(assert (= (and b!614859 res!396117) b!614844))

(assert (= (and b!614844 res!396118) b!614838))

(assert (= (and b!614838 res!396121) b!614856))

(assert (= (and b!614856 res!396120) b!614848))

(assert (= (and b!614848 res!396130) b!614840))

(assert (= (and b!614840 res!396127) b!614846))

(assert (= (and b!614846 res!396131) b!614855))

(assert (= (and b!614855 res!396116) b!614858))

(assert (= (and b!614858 res!396124) b!614841))

(assert (= (and b!614858 c!69729) b!614849))

(assert (= (and b!614858 (not c!69729)) b!614839))

(assert (= (and b!614858 c!69730) b!614843))

(assert (= (and b!614858 (not c!69730)) b!614847))

(assert (= (and b!614843 res!396122) b!614852))

(assert (= (and b!614852 (not res!396128)) b!614860))

(assert (= (and b!614860 res!396123) b!614853))

(assert (= (and b!614843 c!69728) b!614854))

(assert (= (and b!614843 (not c!69728)) b!614861))

(assert (= (and b!614843 c!69731) b!614842))

(assert (= (and b!614843 (not c!69731)) b!614857))

(assert (= (and b!614842 res!396129) b!614851))

(declare-fun m!591103 () Bool)

(assert (=> b!614845 m!591103))

(assert (=> b!614845 m!591103))

(declare-fun m!591105 () Bool)

(assert (=> b!614845 m!591105))

(declare-fun m!591107 () Bool)

(assert (=> b!614848 m!591107))

(declare-fun m!591109 () Bool)

(assert (=> b!614859 m!591109))

(declare-fun m!591111 () Bool)

(assert (=> b!614844 m!591111))

(assert (=> b!614860 m!591103))

(assert (=> b!614860 m!591103))

(declare-fun m!591113 () Bool)

(assert (=> b!614860 m!591113))

(declare-fun m!591115 () Bool)

(assert (=> b!614854 m!591115))

(assert (=> b!614854 m!591103))

(declare-fun m!591117 () Bool)

(assert (=> b!614854 m!591117))

(assert (=> b!614854 m!591103))

(assert (=> b!614854 m!591103))

(declare-fun m!591119 () Bool)

(assert (=> b!614854 m!591119))

(declare-fun m!591121 () Bool)

(assert (=> b!614854 m!591121))

(declare-fun m!591123 () Bool)

(assert (=> b!614854 m!591123))

(declare-fun m!591125 () Bool)

(assert (=> b!614854 m!591125))

(assert (=> b!614854 m!591103))

(declare-fun m!591127 () Bool)

(assert (=> b!614854 m!591127))

(declare-fun m!591129 () Bool)

(assert (=> b!614858 m!591129))

(declare-fun m!591131 () Bool)

(assert (=> b!614858 m!591131))

(assert (=> b!614858 m!591103))

(declare-fun m!591133 () Bool)

(assert (=> b!614858 m!591133))

(declare-fun m!591135 () Bool)

(assert (=> b!614858 m!591135))

(declare-fun m!591137 () Bool)

(assert (=> b!614858 m!591137))

(assert (=> b!614858 m!591103))

(declare-fun m!591139 () Bool)

(assert (=> b!614858 m!591139))

(declare-fun m!591141 () Bool)

(assert (=> b!614858 m!591141))

(declare-fun m!591143 () Bool)

(assert (=> b!614838 m!591143))

(declare-fun m!591145 () Bool)

(assert (=> b!614855 m!591145))

(assert (=> b!614855 m!591103))

(assert (=> b!614855 m!591103))

(declare-fun m!591147 () Bool)

(assert (=> b!614855 m!591147))

(declare-fun m!591149 () Bool)

(assert (=> b!614842 m!591149))

(declare-fun m!591151 () Bool)

(assert (=> b!614842 m!591151))

(assert (=> b!614842 m!591103))

(declare-fun m!591153 () Bool)

(assert (=> b!614842 m!591153))

(assert (=> b!614842 m!591125))

(assert (=> b!614842 m!591103))

(assert (=> b!614842 m!591113))

(assert (=> b!614842 m!591103))

(declare-fun m!591155 () Bool)

(assert (=> b!614842 m!591155))

(assert (=> b!614842 m!591123))

(assert (=> b!614842 m!591103))

(assert (=> b!614842 m!591103))

(declare-fun m!591157 () Bool)

(assert (=> b!614842 m!591157))

(declare-fun m!591159 () Bool)

(assert (=> b!614856 m!591159))

(assert (=> b!614851 m!591103))

(assert (=> b!614851 m!591103))

(declare-fun m!591161 () Bool)

(assert (=> b!614851 m!591161))

(declare-fun m!591163 () Bool)

(assert (=> b!614840 m!591163))

(assert (=> b!614843 m!591135))

(declare-fun m!591165 () Bool)

(assert (=> b!614843 m!591165))

(assert (=> b!614843 m!591103))

(assert (=> b!614846 m!591135))

(declare-fun m!591167 () Bool)

(assert (=> b!614846 m!591167))

(assert (=> b!614853 m!591103))

(assert (=> b!614853 m!591103))

(assert (=> b!614853 m!591161))

(declare-fun m!591169 () Bool)

(assert (=> start!56000 m!591169))

(declare-fun m!591171 () Bool)

(assert (=> start!56000 m!591171))

(check-sat (not b!614848) (not b!614855) (not b!614844) (not b!614859) (not b!614854) (not b!614851) (not b!614838) (not b!614853) (not b!614845) (not start!56000) (not b!614842) (not b!614858) (not b!614856) (not b!614860))
(check-sat)
