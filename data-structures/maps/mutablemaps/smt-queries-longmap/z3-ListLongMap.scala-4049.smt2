; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55262 () Bool)

(assert start!55262)

(declare-fun b!605164 () Bool)

(declare-datatypes ((Unit!19270 0))(
  ( (Unit!19271) )
))
(declare-fun e!346360 () Unit!19270)

(declare-fun Unit!19272 () Unit!19270)

(assert (=> b!605164 (= e!346360 Unit!19272)))

(declare-fun b!605165 () Bool)

(declare-fun e!346363 () Bool)

(declare-datatypes ((SeekEntryResult!6307 0))(
  ( (MissingZero!6307 (index!27493 (_ BitVec 32))) (Found!6307 (index!27494 (_ BitVec 32))) (Intermediate!6307 (undefined!7119 Bool) (index!27495 (_ BitVec 32)) (x!56318 (_ BitVec 32))) (Undefined!6307) (MissingVacant!6307 (index!27496 (_ BitVec 32))) )
))
(declare-fun lt!276186 () SeekEntryResult!6307)

(declare-fun lt!276184 () SeekEntryResult!6307)

(assert (=> b!605165 (= e!346363 (= lt!276186 lt!276184))))

(declare-fun b!605166 () Bool)

(declare-fun e!346362 () Bool)

(declare-fun e!346367 () Bool)

(assert (=> b!605166 (= e!346362 e!346367)))

(declare-fun res!388957 () Bool)

(assert (=> b!605166 (=> res!388957 e!346367)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!276182 () (_ BitVec 64))

(declare-datatypes ((array!37217 0))(
  ( (array!37218 (arr!17860 (Array (_ BitVec 32) (_ BitVec 64))) (size!18224 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37217)

(declare-fun lt!276189 () (_ BitVec 64))

(assert (=> b!605166 (= res!388957 (or (not (= (select (arr!17860 a!2986) j!136) lt!276182)) (not (= (select (arr!17860 a!2986) j!136) lt!276189))))))

(declare-fun e!346368 () Bool)

(assert (=> b!605166 e!346368))

(declare-fun res!388947 () Bool)

(assert (=> b!605166 (=> (not res!388947) (not e!346368))))

(assert (=> b!605166 (= res!388947 (= lt!276189 (select (arr!17860 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!605166 (= lt!276189 (select (store (arr!17860 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!605167 () Bool)

(declare-fun Unit!19273 () Unit!19270)

(assert (=> b!605167 (= e!346360 Unit!19273)))

(declare-fun lt!276187 () array!37217)

(declare-fun lt!276188 () Unit!19270)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37217 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19270)

(assert (=> b!605167 (= lt!276188 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276187 (select (arr!17860 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!605167 (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276181 () Unit!19270)

(declare-datatypes ((List!11954 0))(
  ( (Nil!11951) (Cons!11950 (h!12995 (_ BitVec 64)) (t!18190 List!11954)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37217 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11954) Unit!19270)

(assert (=> b!605167 (= lt!276181 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11951))))

(declare-fun arrayNoDuplicates!0 (array!37217 (_ BitVec 32) List!11954) Bool)

(assert (=> b!605167 (arrayNoDuplicates!0 lt!276187 #b00000000000000000000000000000000 Nil!11951)))

(declare-fun lt!276183 () Unit!19270)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37217 (_ BitVec 32) (_ BitVec 32)) Unit!19270)

(assert (=> b!605167 (= lt!276183 (lemmaNoDuplicateFromThenFromBigger!0 lt!276187 #b00000000000000000000000000000000 j!136))))

(assert (=> b!605167 (arrayNoDuplicates!0 lt!276187 j!136 Nil!11951)))

(declare-fun lt!276192 () Unit!19270)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37217 (_ BitVec 64) (_ BitVec 32) List!11954) Unit!19270)

(assert (=> b!605167 (= lt!276192 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276187 (select (arr!17860 a!2986) j!136) j!136 Nil!11951))))

(assert (=> b!605167 false))

(declare-fun e!346361 () Bool)

(declare-fun b!605168 () Bool)

(assert (=> b!605168 (= e!346361 (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) index!984))))

(declare-fun b!605169 () Bool)

(declare-fun e!346364 () Bool)

(declare-fun e!346359 () Bool)

(assert (=> b!605169 (= e!346364 e!346359)))

(declare-fun res!388958 () Bool)

(assert (=> b!605169 (=> (not res!388958) (not e!346359))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!605169 (= res!388958 (and (= lt!276186 (Found!6307 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17860 a!2986) index!984) (select (arr!17860 a!2986) j!136))) (not (= (select (arr!17860 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37217 (_ BitVec 32)) SeekEntryResult!6307)

(assert (=> b!605169 (= lt!276186 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17860 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!605170 () Bool)

(declare-fun res!388964 () Bool)

(declare-fun e!346365 () Bool)

(assert (=> b!605170 (=> (not res!388964) (not e!346365))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37217 (_ BitVec 32)) Bool)

(assert (=> b!605170 (= res!388964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!605171 () Bool)

(declare-fun e!346372 () Bool)

(assert (=> b!605171 (= e!346372 (or (bvsgt #b00000000000000000000000000000000 (size!18224 a!2986)) (bvslt (size!18224 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!605171 (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!276185 () Unit!19270)

(assert (=> b!605171 (= lt!276185 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276187 (select (arr!17860 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!605171 e!346361))

(declare-fun res!388959 () Bool)

(assert (=> b!605171 (=> (not res!388959) (not e!346361))))

(assert (=> b!605171 (= res!388959 (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) j!136))))

(declare-fun b!605172 () Bool)

(assert (=> b!605172 (= e!346359 (not e!346362))))

(declare-fun res!388946 () Bool)

(assert (=> b!605172 (=> res!388946 e!346362)))

(declare-fun lt!276195 () SeekEntryResult!6307)

(assert (=> b!605172 (= res!388946 (not (= lt!276195 (Found!6307 index!984))))))

(declare-fun lt!276191 () Unit!19270)

(declare-fun e!346366 () Unit!19270)

(assert (=> b!605172 (= lt!276191 e!346366)))

(declare-fun c!68476 () Bool)

(assert (=> b!605172 (= c!68476 (= lt!276195 Undefined!6307))))

(assert (=> b!605172 (= lt!276195 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276182 lt!276187 mask!3053))))

(assert (=> b!605172 e!346363))

(declare-fun res!388962 () Bool)

(assert (=> b!605172 (=> (not res!388962) (not e!346363))))

(declare-fun lt!276194 () (_ BitVec 32))

(assert (=> b!605172 (= res!388962 (= lt!276184 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276194 vacantSpotIndex!68 lt!276182 lt!276187 mask!3053)))))

(assert (=> b!605172 (= lt!276184 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276194 vacantSpotIndex!68 (select (arr!17860 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!605172 (= lt!276182 (select (store (arr!17860 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!276180 () Unit!19270)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37217 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19270)

(assert (=> b!605172 (= lt!276180 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276194 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!605172 (= lt!276194 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!605173 () Bool)

(declare-fun res!388956 () Bool)

(assert (=> b!605173 (=> (not res!388956) (not e!346365))))

(assert (=> b!605173 (= res!388956 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11951))))

(declare-fun b!605174 () Bool)

(assert (=> b!605174 (= e!346365 e!346364)))

(declare-fun res!388949 () Bool)

(assert (=> b!605174 (=> (not res!388949) (not e!346364))))

(assert (=> b!605174 (= res!388949 (= (select (store (arr!17860 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605174 (= lt!276187 (array!37218 (store (arr!17860 a!2986) i!1108 k0!1786) (size!18224 a!2986)))))

(declare-fun b!605176 () Bool)

(declare-fun Unit!19274 () Unit!19270)

(assert (=> b!605176 (= e!346366 Unit!19274)))

(declare-fun b!605177 () Bool)

(declare-fun Unit!19275 () Unit!19270)

(assert (=> b!605177 (= e!346366 Unit!19275)))

(assert (=> b!605177 false))

(declare-fun b!605178 () Bool)

(declare-fun e!346370 () Bool)

(assert (=> b!605178 (= e!346370 (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) index!984))))

(declare-fun b!605179 () Bool)

(declare-fun res!388961 () Bool)

(declare-fun e!346371 () Bool)

(assert (=> b!605179 (=> (not res!388961) (not e!346371))))

(assert (=> b!605179 (= res!388961 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!605180 () Bool)

(declare-fun e!346369 () Bool)

(assert (=> b!605180 (= e!346368 e!346369)))

(declare-fun res!388960 () Bool)

(assert (=> b!605180 (=> res!388960 e!346369)))

(assert (=> b!605180 (= res!388960 (or (not (= (select (arr!17860 a!2986) j!136) lt!276182)) (not (= (select (arr!17860 a!2986) j!136) lt!276189)) (bvsge j!136 index!984)))))

(declare-fun b!605181 () Bool)

(assert (=> b!605181 (= e!346367 e!346372)))

(declare-fun res!388953 () Bool)

(assert (=> b!605181 (=> res!388953 e!346372)))

(assert (=> b!605181 (= res!388953 (bvsge index!984 j!136))))

(declare-fun lt!276190 () Unit!19270)

(assert (=> b!605181 (= lt!276190 e!346360)))

(declare-fun c!68477 () Bool)

(assert (=> b!605181 (= c!68477 (bvslt j!136 index!984))))

(declare-fun b!605182 () Bool)

(declare-fun res!388952 () Bool)

(assert (=> b!605182 (=> (not res!388952) (not e!346371))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!605182 (= res!388952 (validKeyInArray!0 k0!1786))))

(declare-fun b!605183 () Bool)

(declare-fun res!388955 () Bool)

(assert (=> b!605183 (=> (not res!388955) (not e!346371))))

(assert (=> b!605183 (= res!388955 (validKeyInArray!0 (select (arr!17860 a!2986) j!136)))))

(declare-fun b!605184 () Bool)

(assert (=> b!605184 (= e!346371 e!346365)))

(declare-fun res!388950 () Bool)

(assert (=> b!605184 (=> (not res!388950) (not e!346365))))

(declare-fun lt!276193 () SeekEntryResult!6307)

(assert (=> b!605184 (= res!388950 (or (= lt!276193 (MissingZero!6307 i!1108)) (= lt!276193 (MissingVacant!6307 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37217 (_ BitVec 32)) SeekEntryResult!6307)

(assert (=> b!605184 (= lt!276193 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!605185 () Bool)

(assert (=> b!605185 (= e!346369 e!346370)))

(declare-fun res!388951 () Bool)

(assert (=> b!605185 (=> (not res!388951) (not e!346370))))

(assert (=> b!605185 (= res!388951 (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) j!136))))

(declare-fun b!605186 () Bool)

(declare-fun res!388948 () Bool)

(assert (=> b!605186 (=> (not res!388948) (not e!346371))))

(assert (=> b!605186 (= res!388948 (and (= (size!18224 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18224 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18224 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!605175 () Bool)

(declare-fun res!388954 () Bool)

(assert (=> b!605175 (=> (not res!388954) (not e!346365))))

(assert (=> b!605175 (= res!388954 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17860 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!388963 () Bool)

(assert (=> start!55262 (=> (not res!388963) (not e!346371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55262 (= res!388963 (validMask!0 mask!3053))))

(assert (=> start!55262 e!346371))

(assert (=> start!55262 true))

(declare-fun array_inv!13634 (array!37217) Bool)

(assert (=> start!55262 (array_inv!13634 a!2986)))

(assert (= (and start!55262 res!388963) b!605186))

(assert (= (and b!605186 res!388948) b!605183))

(assert (= (and b!605183 res!388955) b!605182))

(assert (= (and b!605182 res!388952) b!605179))

(assert (= (and b!605179 res!388961) b!605184))

(assert (= (and b!605184 res!388950) b!605170))

(assert (= (and b!605170 res!388964) b!605173))

(assert (= (and b!605173 res!388956) b!605175))

(assert (= (and b!605175 res!388954) b!605174))

(assert (= (and b!605174 res!388949) b!605169))

(assert (= (and b!605169 res!388958) b!605172))

(assert (= (and b!605172 res!388962) b!605165))

(assert (= (and b!605172 c!68476) b!605177))

(assert (= (and b!605172 (not c!68476)) b!605176))

(assert (= (and b!605172 (not res!388946)) b!605166))

(assert (= (and b!605166 res!388947) b!605180))

(assert (= (and b!605180 (not res!388960)) b!605185))

(assert (= (and b!605185 res!388951) b!605178))

(assert (= (and b!605166 (not res!388957)) b!605181))

(assert (= (and b!605181 c!68477) b!605167))

(assert (= (and b!605181 (not c!68477)) b!605164))

(assert (= (and b!605181 (not res!388953)) b!605171))

(assert (= (and b!605171 res!388959) b!605168))

(declare-fun m!582073 () Bool)

(assert (=> b!605185 m!582073))

(assert (=> b!605185 m!582073))

(declare-fun m!582075 () Bool)

(assert (=> b!605185 m!582075))

(declare-fun m!582077 () Bool)

(assert (=> b!605179 m!582077))

(assert (=> b!605166 m!582073))

(declare-fun m!582079 () Bool)

(assert (=> b!605166 m!582079))

(declare-fun m!582081 () Bool)

(assert (=> b!605166 m!582081))

(declare-fun m!582083 () Bool)

(assert (=> b!605169 m!582083))

(assert (=> b!605169 m!582073))

(assert (=> b!605169 m!582073))

(declare-fun m!582085 () Bool)

(assert (=> b!605169 m!582085))

(declare-fun m!582087 () Bool)

(assert (=> b!605172 m!582087))

(declare-fun m!582089 () Bool)

(assert (=> b!605172 m!582089))

(declare-fun m!582091 () Bool)

(assert (=> b!605172 m!582091))

(assert (=> b!605172 m!582073))

(declare-fun m!582093 () Bool)

(assert (=> b!605172 m!582093))

(assert (=> b!605172 m!582073))

(assert (=> b!605172 m!582079))

(declare-fun m!582095 () Bool)

(assert (=> b!605172 m!582095))

(declare-fun m!582097 () Bool)

(assert (=> b!605172 m!582097))

(assert (=> b!605183 m!582073))

(assert (=> b!605183 m!582073))

(declare-fun m!582099 () Bool)

(assert (=> b!605183 m!582099))

(assert (=> b!605171 m!582073))

(assert (=> b!605171 m!582073))

(declare-fun m!582101 () Bool)

(assert (=> b!605171 m!582101))

(assert (=> b!605171 m!582073))

(declare-fun m!582103 () Bool)

(assert (=> b!605171 m!582103))

(assert (=> b!605171 m!582073))

(assert (=> b!605171 m!582075))

(declare-fun m!582105 () Bool)

(assert (=> b!605173 m!582105))

(declare-fun m!582107 () Bool)

(assert (=> b!605175 m!582107))

(assert (=> b!605178 m!582073))

(assert (=> b!605178 m!582073))

(declare-fun m!582109 () Bool)

(assert (=> b!605178 m!582109))

(declare-fun m!582111 () Bool)

(assert (=> b!605167 m!582111))

(declare-fun m!582113 () Bool)

(assert (=> b!605167 m!582113))

(assert (=> b!605167 m!582073))

(declare-fun m!582115 () Bool)

(assert (=> b!605167 m!582115))

(declare-fun m!582117 () Bool)

(assert (=> b!605167 m!582117))

(assert (=> b!605167 m!582073))

(declare-fun m!582119 () Bool)

(assert (=> b!605167 m!582119))

(assert (=> b!605167 m!582073))

(assert (=> b!605167 m!582073))

(declare-fun m!582121 () Bool)

(assert (=> b!605167 m!582121))

(declare-fun m!582123 () Bool)

(assert (=> b!605167 m!582123))

(declare-fun m!582125 () Bool)

(assert (=> b!605184 m!582125))

(assert (=> b!605168 m!582073))

(assert (=> b!605168 m!582073))

(assert (=> b!605168 m!582109))

(assert (=> b!605180 m!582073))

(declare-fun m!582127 () Bool)

(assert (=> b!605182 m!582127))

(declare-fun m!582129 () Bool)

(assert (=> b!605170 m!582129))

(assert (=> b!605174 m!582079))

(declare-fun m!582131 () Bool)

(assert (=> b!605174 m!582131))

(declare-fun m!582133 () Bool)

(assert (=> start!55262 m!582133))

(declare-fun m!582135 () Bool)

(assert (=> start!55262 m!582135))

(check-sat (not b!605172) (not b!605185) (not start!55262) (not b!605182) (not b!605178) (not b!605171) (not b!605170) (not b!605184) (not b!605169) (not b!605179) (not b!605168) (not b!605167) (not b!605183) (not b!605173))
(check-sat)
(get-model)

(declare-fun d!87457 () Bool)

(declare-fun res!389026 () Bool)

(declare-fun e!346422 () Bool)

(assert (=> d!87457 (=> res!389026 e!346422)))

(assert (=> d!87457 (= res!389026 (= (select (arr!17860 lt!276187) j!136) (select (arr!17860 a!2986) j!136)))))

(assert (=> d!87457 (= (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) j!136) e!346422)))

(declare-fun b!605260 () Bool)

(declare-fun e!346423 () Bool)

(assert (=> b!605260 (= e!346422 e!346423)))

(declare-fun res!389027 () Bool)

(assert (=> b!605260 (=> (not res!389027) (not e!346423))))

(assert (=> b!605260 (= res!389027 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18224 lt!276187)))))

(declare-fun b!605261 () Bool)

(assert (=> b!605261 (= e!346423 (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87457 (not res!389026)) b!605260))

(assert (= (and b!605260 res!389027) b!605261))

(declare-fun m!582201 () Bool)

(assert (=> d!87457 m!582201))

(assert (=> b!605261 m!582073))

(declare-fun m!582203 () Bool)

(assert (=> b!605261 m!582203))

(assert (=> b!605185 d!87457))

(declare-fun d!87459 () Bool)

(assert (=> d!87459 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55262 d!87459))

(declare-fun d!87461 () Bool)

(assert (=> d!87461 (= (array_inv!13634 a!2986) (bvsge (size!18224 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55262 d!87461))

(declare-fun b!605275 () Bool)

(declare-fun e!346431 () SeekEntryResult!6307)

(declare-fun lt!276250 () SeekEntryResult!6307)

(assert (=> b!605275 (= e!346431 (Found!6307 (index!27495 lt!276250)))))

(declare-fun b!605276 () Bool)

(declare-fun e!346430 () SeekEntryResult!6307)

(assert (=> b!605276 (= e!346430 e!346431)))

(declare-fun lt!276251 () (_ BitVec 64))

(assert (=> b!605276 (= lt!276251 (select (arr!17860 a!2986) (index!27495 lt!276250)))))

(declare-fun c!68492 () Bool)

(assert (=> b!605276 (= c!68492 (= lt!276251 k0!1786))))

(declare-fun b!605277 () Bool)

(declare-fun e!346432 () SeekEntryResult!6307)

(assert (=> b!605277 (= e!346432 (seekKeyOrZeroReturnVacant!0 (x!56318 lt!276250) (index!27495 lt!276250) (index!27495 lt!276250) k0!1786 a!2986 mask!3053))))

(declare-fun b!605278 () Bool)

(assert (=> b!605278 (= e!346432 (MissingZero!6307 (index!27495 lt!276250)))))

(declare-fun b!605279 () Bool)

(assert (=> b!605279 (= e!346430 Undefined!6307)))

(declare-fun b!605274 () Bool)

(declare-fun c!68491 () Bool)

(assert (=> b!605274 (= c!68491 (= lt!276251 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605274 (= e!346431 e!346432)))

(declare-fun d!87463 () Bool)

(declare-fun lt!276252 () SeekEntryResult!6307)

(get-info :version)

(assert (=> d!87463 (and (or ((_ is Undefined!6307) lt!276252) (not ((_ is Found!6307) lt!276252)) (and (bvsge (index!27494 lt!276252) #b00000000000000000000000000000000) (bvslt (index!27494 lt!276252) (size!18224 a!2986)))) (or ((_ is Undefined!6307) lt!276252) ((_ is Found!6307) lt!276252) (not ((_ is MissingZero!6307) lt!276252)) (and (bvsge (index!27493 lt!276252) #b00000000000000000000000000000000) (bvslt (index!27493 lt!276252) (size!18224 a!2986)))) (or ((_ is Undefined!6307) lt!276252) ((_ is Found!6307) lt!276252) ((_ is MissingZero!6307) lt!276252) (not ((_ is MissingVacant!6307) lt!276252)) (and (bvsge (index!27496 lt!276252) #b00000000000000000000000000000000) (bvslt (index!27496 lt!276252) (size!18224 a!2986)))) (or ((_ is Undefined!6307) lt!276252) (ite ((_ is Found!6307) lt!276252) (= (select (arr!17860 a!2986) (index!27494 lt!276252)) k0!1786) (ite ((_ is MissingZero!6307) lt!276252) (= (select (arr!17860 a!2986) (index!27493 lt!276252)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6307) lt!276252) (= (select (arr!17860 a!2986) (index!27496 lt!276252)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!87463 (= lt!276252 e!346430)))

(declare-fun c!68490 () Bool)

(assert (=> d!87463 (= c!68490 (and ((_ is Intermediate!6307) lt!276250) (undefined!7119 lt!276250)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37217 (_ BitVec 32)) SeekEntryResult!6307)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87463 (= lt!276250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!87463 (validMask!0 mask!3053)))

(assert (=> d!87463 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!276252)))

(assert (= (and d!87463 c!68490) b!605279))

(assert (= (and d!87463 (not c!68490)) b!605276))

(assert (= (and b!605276 c!68492) b!605275))

(assert (= (and b!605276 (not c!68492)) b!605274))

(assert (= (and b!605274 c!68491) b!605278))

(assert (= (and b!605274 (not c!68491)) b!605277))

(declare-fun m!582205 () Bool)

(assert (=> b!605276 m!582205))

(declare-fun m!582207 () Bool)

(assert (=> b!605277 m!582207))

(declare-fun m!582209 () Bool)

(assert (=> d!87463 m!582209))

(declare-fun m!582211 () Bool)

(assert (=> d!87463 m!582211))

(declare-fun m!582213 () Bool)

(assert (=> d!87463 m!582213))

(assert (=> d!87463 m!582133))

(assert (=> d!87463 m!582209))

(declare-fun m!582215 () Bool)

(assert (=> d!87463 m!582215))

(declare-fun m!582217 () Bool)

(assert (=> d!87463 m!582217))

(assert (=> b!605184 d!87463))

(declare-fun b!605290 () Bool)

(declare-fun e!346443 () Bool)

(declare-fun call!33035 () Bool)

(assert (=> b!605290 (= e!346443 call!33035)))

(declare-fun d!87465 () Bool)

(declare-fun res!389036 () Bool)

(declare-fun e!346444 () Bool)

(assert (=> d!87465 (=> res!389036 e!346444)))

(assert (=> d!87465 (= res!389036 (bvsge #b00000000000000000000000000000000 (size!18224 a!2986)))))

(assert (=> d!87465 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11951) e!346444)))

(declare-fun b!605291 () Bool)

(declare-fun e!346441 () Bool)

(declare-fun contains!2999 (List!11954 (_ BitVec 64)) Bool)

(assert (=> b!605291 (= e!346441 (contains!2999 Nil!11951 (select (arr!17860 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33032 () Bool)

(declare-fun c!68495 () Bool)

(assert (=> bm!33032 (= call!33035 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68495 (Cons!11950 (select (arr!17860 a!2986) #b00000000000000000000000000000000) Nil!11951) Nil!11951)))))

(declare-fun b!605292 () Bool)

(declare-fun e!346442 () Bool)

(assert (=> b!605292 (= e!346444 e!346442)))

(declare-fun res!389035 () Bool)

(assert (=> b!605292 (=> (not res!389035) (not e!346442))))

(assert (=> b!605292 (= res!389035 (not e!346441))))

(declare-fun res!389034 () Bool)

(assert (=> b!605292 (=> (not res!389034) (not e!346441))))

(assert (=> b!605292 (= res!389034 (validKeyInArray!0 (select (arr!17860 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!605293 () Bool)

(assert (=> b!605293 (= e!346442 e!346443)))

(assert (=> b!605293 (= c!68495 (validKeyInArray!0 (select (arr!17860 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!605294 () Bool)

(assert (=> b!605294 (= e!346443 call!33035)))

(assert (= (and d!87465 (not res!389036)) b!605292))

(assert (= (and b!605292 res!389034) b!605291))

(assert (= (and b!605292 res!389035) b!605293))

(assert (= (and b!605293 c!68495) b!605290))

(assert (= (and b!605293 (not c!68495)) b!605294))

(assert (= (or b!605290 b!605294) bm!33032))

(declare-fun m!582219 () Bool)

(assert (=> b!605291 m!582219))

(assert (=> b!605291 m!582219))

(declare-fun m!582221 () Bool)

(assert (=> b!605291 m!582221))

(assert (=> bm!33032 m!582219))

(declare-fun m!582223 () Bool)

(assert (=> bm!33032 m!582223))

(assert (=> b!605292 m!582219))

(assert (=> b!605292 m!582219))

(declare-fun m!582225 () Bool)

(assert (=> b!605292 m!582225))

(assert (=> b!605293 m!582219))

(assert (=> b!605293 m!582219))

(assert (=> b!605293 m!582225))

(assert (=> b!605173 d!87465))

(declare-fun d!87467 () Bool)

(assert (=> d!87467 (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276255 () Unit!19270)

(declare-fun choose!114 (array!37217 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19270)

(assert (=> d!87467 (= lt!276255 (choose!114 lt!276187 (select (arr!17860 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87467 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87467 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276187 (select (arr!17860 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!276255)))

(declare-fun bs!18515 () Bool)

(assert (= bs!18515 d!87467))

(assert (=> bs!18515 m!582073))

(assert (=> bs!18515 m!582119))

(assert (=> bs!18515 m!582073))

(declare-fun m!582227 () Bool)

(assert (=> bs!18515 m!582227))

(assert (=> b!605167 d!87467))

(declare-fun d!87469 () Bool)

(declare-fun res!389037 () Bool)

(declare-fun e!346445 () Bool)

(assert (=> d!87469 (=> res!389037 e!346445)))

(assert (=> d!87469 (= res!389037 (= (select (arr!17860 lt!276187) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17860 a!2986) j!136)))))

(assert (=> d!87469 (= (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!346445)))

(declare-fun b!605295 () Bool)

(declare-fun e!346446 () Bool)

(assert (=> b!605295 (= e!346445 e!346446)))

(declare-fun res!389038 () Bool)

(assert (=> b!605295 (=> (not res!389038) (not e!346446))))

(assert (=> b!605295 (= res!389038 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18224 lt!276187)))))

(declare-fun b!605296 () Bool)

(assert (=> b!605296 (= e!346446 (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87469 (not res!389037)) b!605295))

(assert (= (and b!605295 res!389038) b!605296))

(declare-fun m!582229 () Bool)

(assert (=> d!87469 m!582229))

(assert (=> b!605296 m!582073))

(declare-fun m!582231 () Bool)

(assert (=> b!605296 m!582231))

(assert (=> b!605167 d!87469))

(declare-fun d!87471 () Bool)

(assert (=> d!87471 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18224 lt!276187)) (not (= (select (arr!17860 lt!276187) j!136) (select (arr!17860 a!2986) j!136))))))

(declare-fun lt!276258 () Unit!19270)

(declare-fun choose!21 (array!37217 (_ BitVec 64) (_ BitVec 32) List!11954) Unit!19270)

(assert (=> d!87471 (= lt!276258 (choose!21 lt!276187 (select (arr!17860 a!2986) j!136) j!136 Nil!11951))))

(assert (=> d!87471 (bvslt (size!18224 lt!276187) #b01111111111111111111111111111111)))

(assert (=> d!87471 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276187 (select (arr!17860 a!2986) j!136) j!136 Nil!11951) lt!276258)))

(declare-fun bs!18516 () Bool)

(assert (= bs!18516 d!87471))

(assert (=> bs!18516 m!582201))

(assert (=> bs!18516 m!582073))

(declare-fun m!582233 () Bool)

(assert (=> bs!18516 m!582233))

(assert (=> b!605167 d!87471))

(declare-fun b!605297 () Bool)

(declare-fun e!346449 () Bool)

(declare-fun call!33036 () Bool)

(assert (=> b!605297 (= e!346449 call!33036)))

(declare-fun d!87473 () Bool)

(declare-fun res!389041 () Bool)

(declare-fun e!346450 () Bool)

(assert (=> d!87473 (=> res!389041 e!346450)))

(assert (=> d!87473 (= res!389041 (bvsge j!136 (size!18224 lt!276187)))))

(assert (=> d!87473 (= (arrayNoDuplicates!0 lt!276187 j!136 Nil!11951) e!346450)))

(declare-fun b!605298 () Bool)

(declare-fun e!346447 () Bool)

(assert (=> b!605298 (= e!346447 (contains!2999 Nil!11951 (select (arr!17860 lt!276187) j!136)))))

(declare-fun bm!33033 () Bool)

(declare-fun c!68496 () Bool)

(assert (=> bm!33033 (= call!33036 (arrayNoDuplicates!0 lt!276187 (bvadd j!136 #b00000000000000000000000000000001) (ite c!68496 (Cons!11950 (select (arr!17860 lt!276187) j!136) Nil!11951) Nil!11951)))))

(declare-fun b!605299 () Bool)

(declare-fun e!346448 () Bool)

(assert (=> b!605299 (= e!346450 e!346448)))

(declare-fun res!389040 () Bool)

(assert (=> b!605299 (=> (not res!389040) (not e!346448))))

(assert (=> b!605299 (= res!389040 (not e!346447))))

(declare-fun res!389039 () Bool)

(assert (=> b!605299 (=> (not res!389039) (not e!346447))))

(assert (=> b!605299 (= res!389039 (validKeyInArray!0 (select (arr!17860 lt!276187) j!136)))))

(declare-fun b!605300 () Bool)

(assert (=> b!605300 (= e!346448 e!346449)))

(assert (=> b!605300 (= c!68496 (validKeyInArray!0 (select (arr!17860 lt!276187) j!136)))))

(declare-fun b!605301 () Bool)

(assert (=> b!605301 (= e!346449 call!33036)))

(assert (= (and d!87473 (not res!389041)) b!605299))

(assert (= (and b!605299 res!389039) b!605298))

(assert (= (and b!605299 res!389040) b!605300))

(assert (= (and b!605300 c!68496) b!605297))

(assert (= (and b!605300 (not c!68496)) b!605301))

(assert (= (or b!605297 b!605301) bm!33033))

(assert (=> b!605298 m!582201))

(assert (=> b!605298 m!582201))

(declare-fun m!582235 () Bool)

(assert (=> b!605298 m!582235))

(assert (=> bm!33033 m!582201))

(declare-fun m!582237 () Bool)

(assert (=> bm!33033 m!582237))

(assert (=> b!605299 m!582201))

(assert (=> b!605299 m!582201))

(declare-fun m!582239 () Bool)

(assert (=> b!605299 m!582239))

(assert (=> b!605300 m!582201))

(assert (=> b!605300 m!582201))

(assert (=> b!605300 m!582239))

(assert (=> b!605167 d!87473))

(declare-fun d!87475 () Bool)

(assert (=> d!87475 (arrayNoDuplicates!0 lt!276187 j!136 Nil!11951)))

(declare-fun lt!276261 () Unit!19270)

(declare-fun choose!39 (array!37217 (_ BitVec 32) (_ BitVec 32)) Unit!19270)

(assert (=> d!87475 (= lt!276261 (choose!39 lt!276187 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87475 (bvslt (size!18224 lt!276187) #b01111111111111111111111111111111)))

(assert (=> d!87475 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!276187 #b00000000000000000000000000000000 j!136) lt!276261)))

(declare-fun bs!18517 () Bool)

(assert (= bs!18517 d!87475))

(assert (=> bs!18517 m!582113))

(declare-fun m!582241 () Bool)

(assert (=> bs!18517 m!582241))

(assert (=> b!605167 d!87475))

(declare-fun d!87477 () Bool)

(declare-fun e!346459 () Bool)

(assert (=> d!87477 e!346459))

(declare-fun res!389050 () Bool)

(assert (=> d!87477 (=> (not res!389050) (not e!346459))))

(assert (=> d!87477 (= res!389050 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18224 a!2986))))))

(declare-fun lt!276264 () Unit!19270)

(declare-fun choose!41 (array!37217 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11954) Unit!19270)

(assert (=> d!87477 (= lt!276264 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11951))))

(assert (=> d!87477 (bvslt (size!18224 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!87477 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11951) lt!276264)))

(declare-fun b!605310 () Bool)

(assert (=> b!605310 (= e!346459 (arrayNoDuplicates!0 (array!37218 (store (arr!17860 a!2986) i!1108 k0!1786) (size!18224 a!2986)) #b00000000000000000000000000000000 Nil!11951))))

(assert (= (and d!87477 res!389050) b!605310))

(declare-fun m!582247 () Bool)

(assert (=> d!87477 m!582247))

(assert (=> b!605310 m!582079))

(declare-fun m!582249 () Bool)

(assert (=> b!605310 m!582249))

(assert (=> b!605167 d!87477))

(declare-fun b!605311 () Bool)

(declare-fun e!346462 () Bool)

(declare-fun call!33037 () Bool)

(assert (=> b!605311 (= e!346462 call!33037)))

(declare-fun d!87485 () Bool)

(declare-fun res!389053 () Bool)

(declare-fun e!346463 () Bool)

(assert (=> d!87485 (=> res!389053 e!346463)))

(assert (=> d!87485 (= res!389053 (bvsge #b00000000000000000000000000000000 (size!18224 lt!276187)))))

(assert (=> d!87485 (= (arrayNoDuplicates!0 lt!276187 #b00000000000000000000000000000000 Nil!11951) e!346463)))

(declare-fun b!605312 () Bool)

(declare-fun e!346460 () Bool)

(assert (=> b!605312 (= e!346460 (contains!2999 Nil!11951 (select (arr!17860 lt!276187) #b00000000000000000000000000000000)))))

(declare-fun bm!33034 () Bool)

(declare-fun c!68497 () Bool)

(assert (=> bm!33034 (= call!33037 (arrayNoDuplicates!0 lt!276187 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68497 (Cons!11950 (select (arr!17860 lt!276187) #b00000000000000000000000000000000) Nil!11951) Nil!11951)))))

(declare-fun b!605313 () Bool)

(declare-fun e!346461 () Bool)

(assert (=> b!605313 (= e!346463 e!346461)))

(declare-fun res!389052 () Bool)

(assert (=> b!605313 (=> (not res!389052) (not e!346461))))

(assert (=> b!605313 (= res!389052 (not e!346460))))

(declare-fun res!389051 () Bool)

(assert (=> b!605313 (=> (not res!389051) (not e!346460))))

(assert (=> b!605313 (= res!389051 (validKeyInArray!0 (select (arr!17860 lt!276187) #b00000000000000000000000000000000)))))

(declare-fun b!605314 () Bool)

(assert (=> b!605314 (= e!346461 e!346462)))

(assert (=> b!605314 (= c!68497 (validKeyInArray!0 (select (arr!17860 lt!276187) #b00000000000000000000000000000000)))))

(declare-fun b!605315 () Bool)

(assert (=> b!605315 (= e!346462 call!33037)))

(assert (= (and d!87485 (not res!389053)) b!605313))

(assert (= (and b!605313 res!389051) b!605312))

(assert (= (and b!605313 res!389052) b!605314))

(assert (= (and b!605314 c!68497) b!605311))

(assert (= (and b!605314 (not c!68497)) b!605315))

(assert (= (or b!605311 b!605315) bm!33034))

(declare-fun m!582251 () Bool)

(assert (=> b!605312 m!582251))

(assert (=> b!605312 m!582251))

(declare-fun m!582253 () Bool)

(assert (=> b!605312 m!582253))

(assert (=> bm!33034 m!582251))

(declare-fun m!582255 () Bool)

(assert (=> bm!33034 m!582255))

(assert (=> b!605313 m!582251))

(assert (=> b!605313 m!582251))

(declare-fun m!582257 () Bool)

(assert (=> b!605313 m!582257))

(assert (=> b!605314 m!582251))

(assert (=> b!605314 m!582251))

(assert (=> b!605314 m!582257))

(assert (=> b!605167 d!87485))

(declare-fun e!346481 () SeekEntryResult!6307)

(declare-fun b!605348 () Bool)

(assert (=> b!605348 (= e!346481 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17860 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!605349 () Bool)

(declare-fun e!346482 () SeekEntryResult!6307)

(declare-fun e!346483 () SeekEntryResult!6307)

(assert (=> b!605349 (= e!346482 e!346483)))

(declare-fun lt!276279 () (_ BitVec 64))

(declare-fun c!68514 () Bool)

(assert (=> b!605349 (= c!68514 (= lt!276279 (select (arr!17860 a!2986) j!136)))))

(declare-fun b!605350 () Bool)

(assert (=> b!605350 (= e!346481 (MissingVacant!6307 vacantSpotIndex!68))))

(declare-fun lt!276278 () SeekEntryResult!6307)

(declare-fun d!87487 () Bool)

(assert (=> d!87487 (and (or ((_ is Undefined!6307) lt!276278) (not ((_ is Found!6307) lt!276278)) (and (bvsge (index!27494 lt!276278) #b00000000000000000000000000000000) (bvslt (index!27494 lt!276278) (size!18224 a!2986)))) (or ((_ is Undefined!6307) lt!276278) ((_ is Found!6307) lt!276278) (not ((_ is MissingVacant!6307) lt!276278)) (not (= (index!27496 lt!276278) vacantSpotIndex!68)) (and (bvsge (index!27496 lt!276278) #b00000000000000000000000000000000) (bvslt (index!27496 lt!276278) (size!18224 a!2986)))) (or ((_ is Undefined!6307) lt!276278) (ite ((_ is Found!6307) lt!276278) (= (select (arr!17860 a!2986) (index!27494 lt!276278)) (select (arr!17860 a!2986) j!136)) (and ((_ is MissingVacant!6307) lt!276278) (= (index!27496 lt!276278) vacantSpotIndex!68) (= (select (arr!17860 a!2986) (index!27496 lt!276278)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87487 (= lt!276278 e!346482)))

(declare-fun c!68513 () Bool)

(assert (=> d!87487 (= c!68513 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87487 (= lt!276279 (select (arr!17860 a!2986) index!984))))

(assert (=> d!87487 (validMask!0 mask!3053)))

(assert (=> d!87487 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17860 a!2986) j!136) a!2986 mask!3053) lt!276278)))

(declare-fun b!605351 () Bool)

(assert (=> b!605351 (= e!346483 (Found!6307 index!984))))

(declare-fun b!605352 () Bool)

(assert (=> b!605352 (= e!346482 Undefined!6307)))

(declare-fun b!605353 () Bool)

(declare-fun c!68515 () Bool)

(assert (=> b!605353 (= c!68515 (= lt!276279 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605353 (= e!346483 e!346481)))

(assert (= (and d!87487 c!68513) b!605352))

(assert (= (and d!87487 (not c!68513)) b!605349))

(assert (= (and b!605349 c!68514) b!605351))

(assert (= (and b!605349 (not c!68514)) b!605353))

(assert (= (and b!605353 c!68515) b!605350))

(assert (= (and b!605353 (not c!68515)) b!605348))

(assert (=> b!605348 m!582087))

(assert (=> b!605348 m!582087))

(assert (=> b!605348 m!582073))

(declare-fun m!582277 () Bool)

(assert (=> b!605348 m!582277))

(declare-fun m!582279 () Bool)

(assert (=> d!87487 m!582279))

(declare-fun m!582281 () Bool)

(assert (=> d!87487 m!582281))

(assert (=> d!87487 m!582083))

(assert (=> d!87487 m!582133))

(assert (=> b!605169 d!87487))

(declare-fun d!87499 () Bool)

(declare-fun res!389056 () Bool)

(declare-fun e!346484 () Bool)

(assert (=> d!87499 (=> res!389056 e!346484)))

(assert (=> d!87499 (= res!389056 (= (select (arr!17860 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!87499 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!346484)))

(declare-fun b!605354 () Bool)

(declare-fun e!346485 () Bool)

(assert (=> b!605354 (= e!346484 e!346485)))

(declare-fun res!389057 () Bool)

(assert (=> b!605354 (=> (not res!389057) (not e!346485))))

(assert (=> b!605354 (= res!389057 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18224 a!2986)))))

(declare-fun b!605355 () Bool)

(assert (=> b!605355 (= e!346485 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!87499 (not res!389056)) b!605354))

(assert (= (and b!605354 res!389057) b!605355))

(assert (=> d!87499 m!582219))

(declare-fun m!582283 () Bool)

(assert (=> b!605355 m!582283))

(assert (=> b!605179 d!87499))

(declare-fun d!87501 () Bool)

(declare-fun res!389058 () Bool)

(declare-fun e!346486 () Bool)

(assert (=> d!87501 (=> res!389058 e!346486)))

(assert (=> d!87501 (= res!389058 (= (select (arr!17860 lt!276187) index!984) (select (arr!17860 a!2986) j!136)))))

(assert (=> d!87501 (= (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) index!984) e!346486)))

(declare-fun b!605356 () Bool)

(declare-fun e!346487 () Bool)

(assert (=> b!605356 (= e!346486 e!346487)))

(declare-fun res!389059 () Bool)

(assert (=> b!605356 (=> (not res!389059) (not e!346487))))

(assert (=> b!605356 (= res!389059 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18224 lt!276187)))))

(declare-fun b!605357 () Bool)

(assert (=> b!605357 (= e!346487 (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87501 (not res!389058)) b!605356))

(assert (= (and b!605356 res!389059) b!605357))

(declare-fun m!582285 () Bool)

(assert (=> d!87501 m!582285))

(assert (=> b!605357 m!582073))

(declare-fun m!582287 () Bool)

(assert (=> b!605357 m!582287))

(assert (=> b!605168 d!87501))

(assert (=> b!605178 d!87501))

(declare-fun d!87503 () Bool)

(assert (=> d!87503 (= (validKeyInArray!0 (select (arr!17860 a!2986) j!136)) (and (not (= (select (arr!17860 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17860 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!605183 d!87503))

(declare-fun b!605358 () Bool)

(declare-fun e!346488 () SeekEntryResult!6307)

(assert (=> b!605358 (= e!346488 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!276194 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!276182 lt!276187 mask!3053))))

(declare-fun b!605359 () Bool)

(declare-fun e!346489 () SeekEntryResult!6307)

(declare-fun e!346490 () SeekEntryResult!6307)

(assert (=> b!605359 (= e!346489 e!346490)))

(declare-fun c!68517 () Bool)

(declare-fun lt!276281 () (_ BitVec 64))

(assert (=> b!605359 (= c!68517 (= lt!276281 lt!276182))))

(declare-fun b!605360 () Bool)

(assert (=> b!605360 (= e!346488 (MissingVacant!6307 vacantSpotIndex!68))))

(declare-fun d!87505 () Bool)

(declare-fun lt!276280 () SeekEntryResult!6307)

(assert (=> d!87505 (and (or ((_ is Undefined!6307) lt!276280) (not ((_ is Found!6307) lt!276280)) (and (bvsge (index!27494 lt!276280) #b00000000000000000000000000000000) (bvslt (index!27494 lt!276280) (size!18224 lt!276187)))) (or ((_ is Undefined!6307) lt!276280) ((_ is Found!6307) lt!276280) (not ((_ is MissingVacant!6307) lt!276280)) (not (= (index!27496 lt!276280) vacantSpotIndex!68)) (and (bvsge (index!27496 lt!276280) #b00000000000000000000000000000000) (bvslt (index!27496 lt!276280) (size!18224 lt!276187)))) (or ((_ is Undefined!6307) lt!276280) (ite ((_ is Found!6307) lt!276280) (= (select (arr!17860 lt!276187) (index!27494 lt!276280)) lt!276182) (and ((_ is MissingVacant!6307) lt!276280) (= (index!27496 lt!276280) vacantSpotIndex!68) (= (select (arr!17860 lt!276187) (index!27496 lt!276280)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87505 (= lt!276280 e!346489)))

(declare-fun c!68516 () Bool)

(assert (=> d!87505 (= c!68516 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!87505 (= lt!276281 (select (arr!17860 lt!276187) lt!276194))))

(assert (=> d!87505 (validMask!0 mask!3053)))

(assert (=> d!87505 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276194 vacantSpotIndex!68 lt!276182 lt!276187 mask!3053) lt!276280)))

(declare-fun b!605361 () Bool)

(assert (=> b!605361 (= e!346490 (Found!6307 lt!276194))))

(declare-fun b!605362 () Bool)

(assert (=> b!605362 (= e!346489 Undefined!6307)))

(declare-fun b!605363 () Bool)

(declare-fun c!68518 () Bool)

(assert (=> b!605363 (= c!68518 (= lt!276281 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605363 (= e!346490 e!346488)))

(assert (= (and d!87505 c!68516) b!605362))

(assert (= (and d!87505 (not c!68516)) b!605359))

(assert (= (and b!605359 c!68517) b!605361))

(assert (= (and b!605359 (not c!68517)) b!605363))

(assert (= (and b!605363 c!68518) b!605360))

(assert (= (and b!605363 (not c!68518)) b!605358))

(declare-fun m!582289 () Bool)

(assert (=> b!605358 m!582289))

(assert (=> b!605358 m!582289))

(declare-fun m!582291 () Bool)

(assert (=> b!605358 m!582291))

(declare-fun m!582293 () Bool)

(assert (=> d!87505 m!582293))

(declare-fun m!582295 () Bool)

(assert (=> d!87505 m!582295))

(declare-fun m!582297 () Bool)

(assert (=> d!87505 m!582297))

(assert (=> d!87505 m!582133))

(assert (=> b!605172 d!87505))

(declare-fun d!87507 () Bool)

(declare-fun e!346519 () Bool)

(assert (=> d!87507 e!346519))

(declare-fun res!389068 () Bool)

(assert (=> d!87507 (=> (not res!389068) (not e!346519))))

(assert (=> d!87507 (= res!389068 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18224 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18224 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18224 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18224 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18224 a!2986))))))

(declare-fun lt!276299 () Unit!19270)

(declare-fun choose!9 (array!37217 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19270)

(assert (=> d!87507 (= lt!276299 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276194 vacantSpotIndex!68 mask!3053))))

(assert (=> d!87507 (validMask!0 mask!3053)))

(assert (=> d!87507 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276194 vacantSpotIndex!68 mask!3053) lt!276299)))

(declare-fun b!605412 () Bool)

(assert (=> b!605412 (= e!346519 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276194 vacantSpotIndex!68 (select (arr!17860 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276194 vacantSpotIndex!68 (select (store (arr!17860 a!2986) i!1108 k0!1786) j!136) (array!37218 (store (arr!17860 a!2986) i!1108 k0!1786) (size!18224 a!2986)) mask!3053)))))

(assert (= (and d!87507 res!389068) b!605412))

(declare-fun m!582313 () Bool)

(assert (=> d!87507 m!582313))

(assert (=> d!87507 m!582133))

(assert (=> b!605412 m!582089))

(assert (=> b!605412 m!582089))

(declare-fun m!582315 () Bool)

(assert (=> b!605412 m!582315))

(assert (=> b!605412 m!582079))

(assert (=> b!605412 m!582073))

(assert (=> b!605412 m!582073))

(assert (=> b!605412 m!582093))

(assert (=> b!605172 d!87507))

(declare-fun e!346520 () SeekEntryResult!6307)

(declare-fun b!605413 () Bool)

(assert (=> b!605413 (= e!346520 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!276182 lt!276187 mask!3053))))

(declare-fun b!605414 () Bool)

(declare-fun e!346521 () SeekEntryResult!6307)

(declare-fun e!346522 () SeekEntryResult!6307)

(assert (=> b!605414 (= e!346521 e!346522)))

(declare-fun c!68540 () Bool)

(declare-fun lt!276301 () (_ BitVec 64))

(assert (=> b!605414 (= c!68540 (= lt!276301 lt!276182))))

(declare-fun b!605415 () Bool)

(assert (=> b!605415 (= e!346520 (MissingVacant!6307 vacantSpotIndex!68))))

(declare-fun d!87515 () Bool)

(declare-fun lt!276300 () SeekEntryResult!6307)

(assert (=> d!87515 (and (or ((_ is Undefined!6307) lt!276300) (not ((_ is Found!6307) lt!276300)) (and (bvsge (index!27494 lt!276300) #b00000000000000000000000000000000) (bvslt (index!27494 lt!276300) (size!18224 lt!276187)))) (or ((_ is Undefined!6307) lt!276300) ((_ is Found!6307) lt!276300) (not ((_ is MissingVacant!6307) lt!276300)) (not (= (index!27496 lt!276300) vacantSpotIndex!68)) (and (bvsge (index!27496 lt!276300) #b00000000000000000000000000000000) (bvslt (index!27496 lt!276300) (size!18224 lt!276187)))) (or ((_ is Undefined!6307) lt!276300) (ite ((_ is Found!6307) lt!276300) (= (select (arr!17860 lt!276187) (index!27494 lt!276300)) lt!276182) (and ((_ is MissingVacant!6307) lt!276300) (= (index!27496 lt!276300) vacantSpotIndex!68) (= (select (arr!17860 lt!276187) (index!27496 lt!276300)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87515 (= lt!276300 e!346521)))

(declare-fun c!68539 () Bool)

(assert (=> d!87515 (= c!68539 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87515 (= lt!276301 (select (arr!17860 lt!276187) index!984))))

(assert (=> d!87515 (validMask!0 mask!3053)))

(assert (=> d!87515 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276182 lt!276187 mask!3053) lt!276300)))

(declare-fun b!605416 () Bool)

(assert (=> b!605416 (= e!346522 (Found!6307 index!984))))

(declare-fun b!605417 () Bool)

(assert (=> b!605417 (= e!346521 Undefined!6307)))

(declare-fun b!605418 () Bool)

(declare-fun c!68541 () Bool)

(assert (=> b!605418 (= c!68541 (= lt!276301 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605418 (= e!346522 e!346520)))

(assert (= (and d!87515 c!68539) b!605417))

(assert (= (and d!87515 (not c!68539)) b!605414))

(assert (= (and b!605414 c!68540) b!605416))

(assert (= (and b!605414 (not c!68540)) b!605418))

(assert (= (and b!605418 c!68541) b!605415))

(assert (= (and b!605418 (not c!68541)) b!605413))

(assert (=> b!605413 m!582087))

(assert (=> b!605413 m!582087))

(declare-fun m!582317 () Bool)

(assert (=> b!605413 m!582317))

(declare-fun m!582319 () Bool)

(assert (=> d!87515 m!582319))

(declare-fun m!582321 () Bool)

(assert (=> d!87515 m!582321))

(assert (=> d!87515 m!582285))

(assert (=> d!87515 m!582133))

(assert (=> b!605172 d!87515))

(declare-fun d!87517 () Bool)

(declare-fun lt!276304 () (_ BitVec 32))

(assert (=> d!87517 (and (bvsge lt!276304 #b00000000000000000000000000000000) (bvslt lt!276304 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87517 (= lt!276304 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!87517 (validMask!0 mask!3053)))

(assert (=> d!87517 (= (nextIndex!0 index!984 x!910 mask!3053) lt!276304)))

(declare-fun bs!18519 () Bool)

(assert (= bs!18519 d!87517))

(declare-fun m!582341 () Bool)

(assert (=> bs!18519 m!582341))

(assert (=> bs!18519 m!582133))

(assert (=> b!605172 d!87517))

(declare-fun b!605431 () Bool)

(declare-fun e!346533 () SeekEntryResult!6307)

(assert (=> b!605431 (= e!346533 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!276194 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17860 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!605432 () Bool)

(declare-fun e!346534 () SeekEntryResult!6307)

(declare-fun e!346535 () SeekEntryResult!6307)

(assert (=> b!605432 (= e!346534 e!346535)))

(declare-fun c!68545 () Bool)

(declare-fun lt!276306 () (_ BitVec 64))

(assert (=> b!605432 (= c!68545 (= lt!276306 (select (arr!17860 a!2986) j!136)))))

(declare-fun b!605433 () Bool)

(assert (=> b!605433 (= e!346533 (MissingVacant!6307 vacantSpotIndex!68))))

(declare-fun lt!276305 () SeekEntryResult!6307)

(declare-fun d!87525 () Bool)

(assert (=> d!87525 (and (or ((_ is Undefined!6307) lt!276305) (not ((_ is Found!6307) lt!276305)) (and (bvsge (index!27494 lt!276305) #b00000000000000000000000000000000) (bvslt (index!27494 lt!276305) (size!18224 a!2986)))) (or ((_ is Undefined!6307) lt!276305) ((_ is Found!6307) lt!276305) (not ((_ is MissingVacant!6307) lt!276305)) (not (= (index!27496 lt!276305) vacantSpotIndex!68)) (and (bvsge (index!27496 lt!276305) #b00000000000000000000000000000000) (bvslt (index!27496 lt!276305) (size!18224 a!2986)))) (or ((_ is Undefined!6307) lt!276305) (ite ((_ is Found!6307) lt!276305) (= (select (arr!17860 a!2986) (index!27494 lt!276305)) (select (arr!17860 a!2986) j!136)) (and ((_ is MissingVacant!6307) lt!276305) (= (index!27496 lt!276305) vacantSpotIndex!68) (= (select (arr!17860 a!2986) (index!27496 lt!276305)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87525 (= lt!276305 e!346534)))

(declare-fun c!68544 () Bool)

(assert (=> d!87525 (= c!68544 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!87525 (= lt!276306 (select (arr!17860 a!2986) lt!276194))))

(assert (=> d!87525 (validMask!0 mask!3053)))

(assert (=> d!87525 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276194 vacantSpotIndex!68 (select (arr!17860 a!2986) j!136) a!2986 mask!3053) lt!276305)))

(declare-fun b!605434 () Bool)

(assert (=> b!605434 (= e!346535 (Found!6307 lt!276194))))

(declare-fun b!605435 () Bool)

(assert (=> b!605435 (= e!346534 Undefined!6307)))

(declare-fun b!605436 () Bool)

(declare-fun c!68546 () Bool)

(assert (=> b!605436 (= c!68546 (= lt!276306 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605436 (= e!346535 e!346533)))

(assert (= (and d!87525 c!68544) b!605435))

(assert (= (and d!87525 (not c!68544)) b!605432))

(assert (= (and b!605432 c!68545) b!605434))

(assert (= (and b!605432 (not c!68545)) b!605436))

(assert (= (and b!605436 c!68546) b!605433))

(assert (= (and b!605436 (not c!68546)) b!605431))

(assert (=> b!605431 m!582289))

(assert (=> b!605431 m!582289))

(assert (=> b!605431 m!582073))

(declare-fun m!582343 () Bool)

(assert (=> b!605431 m!582343))

(declare-fun m!582345 () Bool)

(assert (=> d!87525 m!582345))

(declare-fun m!582347 () Bool)

(assert (=> d!87525 m!582347))

(declare-fun m!582349 () Bool)

(assert (=> d!87525 m!582349))

(assert (=> d!87525 m!582133))

(assert (=> b!605172 d!87525))

(declare-fun d!87527 () Bool)

(assert (=> d!87527 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!605182 d!87527))

(declare-fun d!87529 () Bool)

(declare-fun res!389077 () Bool)

(declare-fun e!346536 () Bool)

(assert (=> d!87529 (=> res!389077 e!346536)))

(assert (=> d!87529 (= res!389077 (= (select (arr!17860 lt!276187) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!17860 a!2986) j!136)))))

(assert (=> d!87529 (= (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!346536)))

(declare-fun b!605437 () Bool)

(declare-fun e!346537 () Bool)

(assert (=> b!605437 (= e!346536 e!346537)))

(declare-fun res!389078 () Bool)

(assert (=> b!605437 (=> (not res!389078) (not e!346537))))

(assert (=> b!605437 (= res!389078 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18224 lt!276187)))))

(declare-fun b!605438 () Bool)

(assert (=> b!605438 (= e!346537 (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87529 (not res!389077)) b!605437))

(assert (= (and b!605437 res!389078) b!605438))

(declare-fun m!582351 () Bool)

(assert (=> d!87529 m!582351))

(assert (=> b!605438 m!582073))

(declare-fun m!582353 () Bool)

(assert (=> b!605438 m!582353))

(assert (=> b!605171 d!87529))

(declare-fun d!87531 () Bool)

(assert (=> d!87531 (arrayContainsKey!0 lt!276187 (select (arr!17860 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!276307 () Unit!19270)

(assert (=> d!87531 (= lt!276307 (choose!114 lt!276187 (select (arr!17860 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!87531 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!87531 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276187 (select (arr!17860 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!276307)))

(declare-fun bs!18520 () Bool)

(assert (= bs!18520 d!87531))

(assert (=> bs!18520 m!582073))

(assert (=> bs!18520 m!582101))

(assert (=> bs!18520 m!582073))

(declare-fun m!582355 () Bool)

(assert (=> bs!18520 m!582355))

(assert (=> b!605171 d!87531))

(assert (=> b!605171 d!87457))

(declare-fun b!605462 () Bool)

(declare-fun e!346557 () Bool)

(declare-fun e!346556 () Bool)

(assert (=> b!605462 (= e!346557 e!346556)))

(declare-fun c!68552 () Bool)

(assert (=> b!605462 (= c!68552 (validKeyInArray!0 (select (arr!17860 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!87533 () Bool)

(declare-fun res!389093 () Bool)

(assert (=> d!87533 (=> res!389093 e!346557)))

(assert (=> d!87533 (= res!389093 (bvsge #b00000000000000000000000000000000 (size!18224 a!2986)))))

(assert (=> d!87533 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!346557)))

(declare-fun b!605463 () Bool)

(declare-fun call!33044 () Bool)

(assert (=> b!605463 (= e!346556 call!33044)))

(declare-fun b!605464 () Bool)

(declare-fun e!346558 () Bool)

(assert (=> b!605464 (= e!346556 e!346558)))

(declare-fun lt!276326 () (_ BitVec 64))

(assert (=> b!605464 (= lt!276326 (select (arr!17860 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!276327 () Unit!19270)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37217 (_ BitVec 64) (_ BitVec 32)) Unit!19270)

(assert (=> b!605464 (= lt!276327 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!276326 #b00000000000000000000000000000000))))

(assert (=> b!605464 (arrayContainsKey!0 a!2986 lt!276326 #b00000000000000000000000000000000)))

(declare-fun lt!276325 () Unit!19270)

(assert (=> b!605464 (= lt!276325 lt!276327)))

(declare-fun res!389092 () Bool)

(assert (=> b!605464 (= res!389092 (= (seekEntryOrOpen!0 (select (arr!17860 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6307 #b00000000000000000000000000000000)))))

(assert (=> b!605464 (=> (not res!389092) (not e!346558))))

(declare-fun bm!33041 () Bool)

(assert (=> bm!33041 (= call!33044 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!605465 () Bool)

(assert (=> b!605465 (= e!346558 call!33044)))

(assert (= (and d!87533 (not res!389093)) b!605462))

(assert (= (and b!605462 c!68552) b!605464))

(assert (= (and b!605462 (not c!68552)) b!605463))

(assert (= (and b!605464 res!389092) b!605465))

(assert (= (or b!605465 b!605463) bm!33041))

(assert (=> b!605462 m!582219))

(assert (=> b!605462 m!582219))

(assert (=> b!605462 m!582225))

(assert (=> b!605464 m!582219))

(declare-fun m!582375 () Bool)

(assert (=> b!605464 m!582375))

(declare-fun m!582377 () Bool)

(assert (=> b!605464 m!582377))

(assert (=> b!605464 m!582219))

(declare-fun m!582379 () Bool)

(assert (=> b!605464 m!582379))

(declare-fun m!582383 () Bool)

(assert (=> bm!33041 m!582383))

(assert (=> b!605170 d!87533))

(check-sat (not d!87477) (not b!605348) (not b!605438) (not b!605413) (not b!605357) (not b!605298) (not bm!33041) (not b!605431) (not d!87463) (not b!605299) (not bm!33032) (not d!87467) (not d!87507) (not bm!33033) (not b!605292) (not bm!33034) (not b!605314) (not b!605355) (not d!87505) (not b!605358) (not d!87531) (not b!605462) (not d!87487) (not b!605300) (not b!605313) (not d!87471) (not b!605293) (not d!87475) (not d!87517) (not b!605291) (not b!605464) (not b!605296) (not d!87515) (not b!605277) (not d!87525) (not b!605412) (not b!605261) (not b!605310) (not b!605312))
(check-sat)
