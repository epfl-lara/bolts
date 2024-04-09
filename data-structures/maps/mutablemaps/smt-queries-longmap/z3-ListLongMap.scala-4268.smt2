; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59366 () Bool)

(assert start!59366)

(declare-fun b!654954 () Bool)

(declare-datatypes ((Unit!22484 0))(
  ( (Unit!22485) )
))
(declare-fun e!376140 () Unit!22484)

(declare-fun Unit!22486 () Unit!22484)

(assert (=> b!654954 (= e!376140 Unit!22486)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun res!424957 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38642 0))(
  ( (array!38643 (arr!18517 (Array (_ BitVec 32) (_ BitVec 64))) (size!18881 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38642)

(assert (=> b!654954 (= res!424957 (= (select (store (arr!18517 a!2986) i!1108 k0!1786) index!984) (select (arr!18517 a!2986) j!136)))))

(declare-fun e!376138 () Bool)

(assert (=> b!654954 (=> (not res!424957) (not e!376138))))

(assert (=> b!654954 e!376138))

(declare-fun c!75369 () Bool)

(assert (=> b!654954 (= c!75369 (bvslt j!136 index!984))))

(declare-fun lt!305405 () Unit!22484)

(declare-fun e!376141 () Unit!22484)

(assert (=> b!654954 (= lt!305405 e!376141)))

(declare-fun c!75370 () Bool)

(assert (=> b!654954 (= c!75370 (bvslt index!984 j!136))))

(declare-fun lt!305414 () Unit!22484)

(declare-fun e!376135 () Unit!22484)

(assert (=> b!654954 (= lt!305414 e!376135)))

(assert (=> b!654954 false))

(declare-fun b!654955 () Bool)

(declare-fun res!424952 () Bool)

(assert (=> b!654955 (= res!424952 (bvsge j!136 index!984))))

(declare-fun e!376143 () Bool)

(assert (=> b!654955 (=> res!424952 e!376143)))

(assert (=> b!654955 (= e!376138 e!376143)))

(declare-fun b!654956 () Bool)

(declare-fun res!424956 () Bool)

(declare-fun e!376142 () Bool)

(assert (=> b!654956 (=> (not res!424956) (not e!376142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!654956 (= res!424956 (validKeyInArray!0 k0!1786))))

(declare-fun b!654957 () Bool)

(declare-fun e!376144 () Unit!22484)

(declare-fun Unit!22487 () Unit!22484)

(assert (=> b!654957 (= e!376144 Unit!22487)))

(assert (=> b!654957 false))

(declare-fun b!654958 () Bool)

(declare-fun Unit!22488 () Unit!22484)

(assert (=> b!654958 (= e!376135 Unit!22488)))

(declare-fun lt!305402 () array!38642)

(declare-fun e!376139 () Bool)

(declare-fun b!654959 () Bool)

(declare-fun arrayContainsKey!0 (array!38642 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!654959 (= e!376139 (arrayContainsKey!0 lt!305402 (select (arr!18517 a!2986) j!136) index!984))))

(declare-fun b!654960 () Bool)

(declare-fun e!376137 () Bool)

(declare-datatypes ((SeekEntryResult!6964 0))(
  ( (MissingZero!6964 (index!30214 (_ BitVec 32))) (Found!6964 (index!30215 (_ BitVec 32))) (Intermediate!6964 (undefined!7776 Bool) (index!30216 (_ BitVec 32)) (x!59030 (_ BitVec 32))) (Undefined!6964) (MissingVacant!6964 (index!30217 (_ BitVec 32))) )
))
(declare-fun lt!305419 () SeekEntryResult!6964)

(declare-fun lt!305412 () SeekEntryResult!6964)

(assert (=> b!654960 (= e!376137 (= lt!305419 lt!305412))))

(declare-fun res!424955 () Bool)

(assert (=> start!59366 (=> (not res!424955) (not e!376142))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59366 (= res!424955 (validMask!0 mask!3053))))

(assert (=> start!59366 e!376142))

(assert (=> start!59366 true))

(declare-fun array_inv!14291 (array!38642) Bool)

(assert (=> start!59366 (array_inv!14291 a!2986)))

(declare-fun b!654961 () Bool)

(declare-fun Unit!22489 () Unit!22484)

(assert (=> b!654961 (= e!376144 Unit!22489)))

(declare-fun e!376136 () Bool)

(declare-fun b!654962 () Bool)

(assert (=> b!654962 (= e!376136 (arrayContainsKey!0 lt!305402 (select (arr!18517 a!2986) j!136) index!984))))

(declare-fun res!424961 () Bool)

(declare-fun b!654963 () Bool)

(assert (=> b!654963 (= res!424961 (arrayContainsKey!0 lt!305402 (select (arr!18517 a!2986) j!136) j!136))))

(assert (=> b!654963 (=> (not res!424961) (not e!376139))))

(assert (=> b!654963 (= e!376143 e!376139)))

(declare-fun b!654964 () Bool)

(declare-fun Unit!22490 () Unit!22484)

(assert (=> b!654964 (= e!376141 Unit!22490)))

(declare-fun b!654965 () Bool)

(declare-fun res!424967 () Bool)

(assert (=> b!654965 (=> (not res!424967) (not e!376142))))

(assert (=> b!654965 (= res!424967 (and (= (size!18881 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18881 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18881 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!654966 () Bool)

(declare-fun res!424966 () Bool)

(assert (=> b!654966 (=> (not res!424966) (not e!376142))))

(assert (=> b!654966 (= res!424966 (validKeyInArray!0 (select (arr!18517 a!2986) j!136)))))

(declare-fun b!654967 () Bool)

(declare-fun e!376147 () Bool)

(declare-fun e!376145 () Bool)

(assert (=> b!654967 (= e!376147 e!376145)))

(declare-fun res!424960 () Bool)

(assert (=> b!654967 (=> (not res!424960) (not e!376145))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!654967 (= res!424960 (and (= lt!305419 (Found!6964 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18517 a!2986) index!984) (select (arr!18517 a!2986) j!136))) (not (= (select (arr!18517 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38642 (_ BitVec 32)) SeekEntryResult!6964)

(assert (=> b!654967 (= lt!305419 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18517 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!654968 () Bool)

(declare-fun Unit!22491 () Unit!22484)

(assert (=> b!654968 (= e!376140 Unit!22491)))

(declare-fun b!654969 () Bool)

(declare-fun res!424965 () Bool)

(assert (=> b!654969 (=> (not res!424965) (not e!376142))))

(assert (=> b!654969 (= res!424965 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!654970 () Bool)

(assert (=> b!654970 false))

(declare-fun lt!305411 () Unit!22484)

(declare-datatypes ((List!12611 0))(
  ( (Nil!12608) (Cons!12607 (h!13652 (_ BitVec 64)) (t!18847 List!12611)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38642 (_ BitVec 64) (_ BitVec 32) List!12611) Unit!22484)

(assert (=> b!654970 (= lt!305411 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305402 (select (arr!18517 a!2986) j!136) j!136 Nil!12608))))

(declare-fun arrayNoDuplicates!0 (array!38642 (_ BitVec 32) List!12611) Bool)

(assert (=> b!654970 (arrayNoDuplicates!0 lt!305402 j!136 Nil!12608)))

(declare-fun lt!305410 () Unit!22484)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38642 (_ BitVec 32) (_ BitVec 32)) Unit!22484)

(assert (=> b!654970 (= lt!305410 (lemmaNoDuplicateFromThenFromBigger!0 lt!305402 #b00000000000000000000000000000000 j!136))))

(assert (=> b!654970 (arrayNoDuplicates!0 lt!305402 #b00000000000000000000000000000000 Nil!12608)))

(declare-fun lt!305421 () Unit!22484)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38642 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12611) Unit!22484)

(assert (=> b!654970 (= lt!305421 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12608))))

(assert (=> b!654970 (arrayContainsKey!0 lt!305402 (select (arr!18517 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305404 () Unit!22484)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38642 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22484)

(assert (=> b!654970 (= lt!305404 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305402 (select (arr!18517 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22492 () Unit!22484)

(assert (=> b!654970 (= e!376141 Unit!22492)))

(declare-fun b!654971 () Bool)

(declare-fun e!376146 () Bool)

(assert (=> b!654971 (= e!376142 e!376146)))

(declare-fun res!424964 () Bool)

(assert (=> b!654971 (=> (not res!424964) (not e!376146))))

(declare-fun lt!305403 () SeekEntryResult!6964)

(assert (=> b!654971 (= res!424964 (or (= lt!305403 (MissingZero!6964 i!1108)) (= lt!305403 (MissingVacant!6964 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38642 (_ BitVec 32)) SeekEntryResult!6964)

(assert (=> b!654971 (= lt!305403 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!654972 () Bool)

(declare-fun res!424953 () Bool)

(assert (=> b!654972 (=> (not res!424953) (not e!376146))))

(assert (=> b!654972 (= res!424953 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18517 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!654973 () Bool)

(declare-fun res!424958 () Bool)

(assert (=> b!654973 (=> (not res!424958) (not e!376146))))

(assert (=> b!654973 (= res!424958 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12608))))

(declare-fun b!654974 () Bool)

(assert (=> b!654974 (= e!376145 (not true))))

(declare-fun lt!305418 () Unit!22484)

(assert (=> b!654974 (= lt!305418 e!376140)))

(declare-fun c!75368 () Bool)

(declare-fun lt!305416 () SeekEntryResult!6964)

(assert (=> b!654974 (= c!75368 (= lt!305416 (Found!6964 index!984)))))

(declare-fun lt!305420 () Unit!22484)

(assert (=> b!654974 (= lt!305420 e!376144)))

(declare-fun c!75371 () Bool)

(assert (=> b!654974 (= c!75371 (= lt!305416 Undefined!6964))))

(declare-fun lt!305417 () (_ BitVec 64))

(assert (=> b!654974 (= lt!305416 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305417 lt!305402 mask!3053))))

(assert (=> b!654974 e!376137))

(declare-fun res!424962 () Bool)

(assert (=> b!654974 (=> (not res!424962) (not e!376137))))

(declare-fun lt!305415 () (_ BitVec 32))

(assert (=> b!654974 (= res!424962 (= lt!305412 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305415 vacantSpotIndex!68 lt!305417 lt!305402 mask!3053)))))

(assert (=> b!654974 (= lt!305412 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305415 vacantSpotIndex!68 (select (arr!18517 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!654974 (= lt!305417 (select (store (arr!18517 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!305408 () Unit!22484)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38642 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22484)

(assert (=> b!654974 (= lt!305408 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305415 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!654974 (= lt!305415 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!654975 () Bool)

(assert (=> b!654975 false))

(declare-fun lt!305406 () Unit!22484)

(assert (=> b!654975 (= lt!305406 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305402 (select (arr!18517 a!2986) j!136) index!984 Nil!12608))))

(assert (=> b!654975 (arrayNoDuplicates!0 lt!305402 index!984 Nil!12608)))

(declare-fun lt!305407 () Unit!22484)

(assert (=> b!654975 (= lt!305407 (lemmaNoDuplicateFromThenFromBigger!0 lt!305402 #b00000000000000000000000000000000 index!984))))

(assert (=> b!654975 (arrayNoDuplicates!0 lt!305402 #b00000000000000000000000000000000 Nil!12608)))

(declare-fun lt!305413 () Unit!22484)

(assert (=> b!654975 (= lt!305413 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12608))))

(assert (=> b!654975 (arrayContainsKey!0 lt!305402 (select (arr!18517 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305409 () Unit!22484)

(assert (=> b!654975 (= lt!305409 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305402 (select (arr!18517 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!654975 e!376136))

(declare-fun res!424954 () Bool)

(assert (=> b!654975 (=> (not res!424954) (not e!376136))))

(assert (=> b!654975 (= res!424954 (arrayContainsKey!0 lt!305402 (select (arr!18517 a!2986) j!136) j!136))))

(declare-fun Unit!22493 () Unit!22484)

(assert (=> b!654975 (= e!376135 Unit!22493)))

(declare-fun b!654976 () Bool)

(declare-fun res!424963 () Bool)

(assert (=> b!654976 (=> (not res!424963) (not e!376146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38642 (_ BitVec 32)) Bool)

(assert (=> b!654976 (= res!424963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!654977 () Bool)

(assert (=> b!654977 (= e!376146 e!376147)))

(declare-fun res!424959 () Bool)

(assert (=> b!654977 (=> (not res!424959) (not e!376147))))

(assert (=> b!654977 (= res!424959 (= (select (store (arr!18517 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!654977 (= lt!305402 (array!38643 (store (arr!18517 a!2986) i!1108 k0!1786) (size!18881 a!2986)))))

(assert (= (and start!59366 res!424955) b!654965))

(assert (= (and b!654965 res!424967) b!654966))

(assert (= (and b!654966 res!424966) b!654956))

(assert (= (and b!654956 res!424956) b!654969))

(assert (= (and b!654969 res!424965) b!654971))

(assert (= (and b!654971 res!424964) b!654976))

(assert (= (and b!654976 res!424963) b!654973))

(assert (= (and b!654973 res!424958) b!654972))

(assert (= (and b!654972 res!424953) b!654977))

(assert (= (and b!654977 res!424959) b!654967))

(assert (= (and b!654967 res!424960) b!654974))

(assert (= (and b!654974 res!424962) b!654960))

(assert (= (and b!654974 c!75371) b!654957))

(assert (= (and b!654974 (not c!75371)) b!654961))

(assert (= (and b!654974 c!75368) b!654954))

(assert (= (and b!654974 (not c!75368)) b!654968))

(assert (= (and b!654954 res!424957) b!654955))

(assert (= (and b!654955 (not res!424952)) b!654963))

(assert (= (and b!654963 res!424961) b!654959))

(assert (= (and b!654954 c!75369) b!654970))

(assert (= (and b!654954 (not c!75369)) b!654964))

(assert (= (and b!654954 c!75370) b!654975))

(assert (= (and b!654954 (not c!75370)) b!654958))

(assert (= (and b!654975 res!424954) b!654962))

(declare-fun m!628111 () Bool)

(assert (=> b!654967 m!628111))

(declare-fun m!628113 () Bool)

(assert (=> b!654967 m!628113))

(assert (=> b!654967 m!628113))

(declare-fun m!628115 () Bool)

(assert (=> b!654967 m!628115))

(assert (=> b!654963 m!628113))

(assert (=> b!654963 m!628113))

(declare-fun m!628117 () Bool)

(assert (=> b!654963 m!628117))

(assert (=> b!654959 m!628113))

(assert (=> b!654959 m!628113))

(declare-fun m!628119 () Bool)

(assert (=> b!654959 m!628119))

(declare-fun m!628121 () Bool)

(assert (=> b!654969 m!628121))

(declare-fun m!628123 () Bool)

(assert (=> b!654974 m!628123))

(declare-fun m!628125 () Bool)

(assert (=> b!654974 m!628125))

(assert (=> b!654974 m!628113))

(declare-fun m!628127 () Bool)

(assert (=> b!654974 m!628127))

(assert (=> b!654974 m!628113))

(declare-fun m!628129 () Bool)

(assert (=> b!654974 m!628129))

(declare-fun m!628131 () Bool)

(assert (=> b!654974 m!628131))

(declare-fun m!628133 () Bool)

(assert (=> b!654974 m!628133))

(declare-fun m!628135 () Bool)

(assert (=> b!654974 m!628135))

(declare-fun m!628137 () Bool)

(assert (=> b!654956 m!628137))

(assert (=> b!654977 m!628127))

(declare-fun m!628139 () Bool)

(assert (=> b!654977 m!628139))

(declare-fun m!628141 () Bool)

(assert (=> b!654972 m!628141))

(declare-fun m!628143 () Bool)

(assert (=> b!654973 m!628143))

(assert (=> b!654966 m!628113))

(assert (=> b!654966 m!628113))

(declare-fun m!628145 () Bool)

(assert (=> b!654966 m!628145))

(assert (=> b!654962 m!628113))

(assert (=> b!654962 m!628113))

(assert (=> b!654962 m!628119))

(declare-fun m!628147 () Bool)

(assert (=> b!654971 m!628147))

(declare-fun m!628149 () Bool)

(assert (=> b!654970 m!628149))

(assert (=> b!654970 m!628113))

(declare-fun m!628151 () Bool)

(assert (=> b!654970 m!628151))

(assert (=> b!654970 m!628113))

(declare-fun m!628153 () Bool)

(assert (=> b!654970 m!628153))

(assert (=> b!654970 m!628113))

(declare-fun m!628155 () Bool)

(assert (=> b!654970 m!628155))

(declare-fun m!628157 () Bool)

(assert (=> b!654970 m!628157))

(assert (=> b!654970 m!628113))

(declare-fun m!628159 () Bool)

(assert (=> b!654970 m!628159))

(declare-fun m!628161 () Bool)

(assert (=> b!654970 m!628161))

(declare-fun m!628163 () Bool)

(assert (=> b!654976 m!628163))

(assert (=> b!654954 m!628127))

(declare-fun m!628165 () Bool)

(assert (=> b!654954 m!628165))

(assert (=> b!654954 m!628113))

(declare-fun m!628167 () Bool)

(assert (=> start!59366 m!628167))

(declare-fun m!628169 () Bool)

(assert (=> start!59366 m!628169))

(assert (=> b!654975 m!628113))

(declare-fun m!628171 () Bool)

(assert (=> b!654975 m!628171))

(assert (=> b!654975 m!628113))

(declare-fun m!628173 () Bool)

(assert (=> b!654975 m!628173))

(assert (=> b!654975 m!628113))

(declare-fun m!628175 () Bool)

(assert (=> b!654975 m!628175))

(assert (=> b!654975 m!628151))

(assert (=> b!654975 m!628113))

(assert (=> b!654975 m!628117))

(assert (=> b!654975 m!628157))

(declare-fun m!628177 () Bool)

(assert (=> b!654975 m!628177))

(assert (=> b!654975 m!628113))

(declare-fun m!628179 () Bool)

(assert (=> b!654975 m!628179))

(check-sat (not b!654975) (not b!654973) (not b!654970) (not b!654974) (not b!654971) (not b!654966) (not start!59366) (not b!654956) (not b!654976) (not b!654959) (not b!654962) (not b!654969) (not b!654963) (not b!654967))
(check-sat)
