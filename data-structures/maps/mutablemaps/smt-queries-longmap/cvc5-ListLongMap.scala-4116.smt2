; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56202 () Bool)

(assert start!56202)

(declare-fun b!622263 () Bool)

(declare-fun e!356922 () Bool)

(declare-fun e!356927 () Bool)

(assert (=> b!622263 (= e!356922 e!356927)))

(declare-fun res!401117 () Bool)

(assert (=> b!622263 (=> (not res!401117) (not e!356927))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37635 0))(
  ( (array!37636 (arr!18060 (Array (_ BitVec 32) (_ BitVec 64))) (size!18424 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37635)

(assert (=> b!622263 (= res!401117 (= (select (store (arr!18060 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!288389 () array!37635)

(assert (=> b!622263 (= lt!288389 (array!37636 (store (arr!18060 a!2986) i!1108 k!1786) (size!18424 a!2986)))))

(declare-fun b!622264 () Bool)

(declare-fun res!401128 () Bool)

(assert (=> b!622264 (=> (not res!401128) (not e!356922))))

(declare-datatypes ((List!12154 0))(
  ( (Nil!12151) (Cons!12150 (h!13195 (_ BitVec 64)) (t!18390 List!12154)) )
))
(declare-fun arrayNoDuplicates!0 (array!37635 (_ BitVec 32) List!12154) Bool)

(assert (=> b!622264 (= res!401128 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12151))))

(declare-fun b!622265 () Bool)

(declare-fun e!356921 () Bool)

(assert (=> b!622265 (= e!356921 e!356922)))

(declare-fun res!401118 () Bool)

(assert (=> b!622265 (=> (not res!401118) (not e!356922))))

(declare-datatypes ((SeekEntryResult!6507 0))(
  ( (MissingZero!6507 (index!28311 (_ BitVec 32))) (Found!6507 (index!28312 (_ BitVec 32))) (Intermediate!6507 (undefined!7319 Bool) (index!28313 (_ BitVec 32)) (x!57108 (_ BitVec 32))) (Undefined!6507) (MissingVacant!6507 (index!28314 (_ BitVec 32))) )
))
(declare-fun lt!288381 () SeekEntryResult!6507)

(assert (=> b!622265 (= res!401118 (or (= lt!288381 (MissingZero!6507 i!1108)) (= lt!288381 (MissingVacant!6507 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37635 (_ BitVec 32)) SeekEntryResult!6507)

(assert (=> b!622265 (= lt!288381 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!622266 () Bool)

(declare-datatypes ((Unit!20890 0))(
  ( (Unit!20891) )
))
(declare-fun e!356926 () Unit!20890)

(declare-fun Unit!20892 () Unit!20890)

(assert (=> b!622266 (= e!356926 Unit!20892)))

(assert (=> b!622266 false))

(declare-fun b!622267 () Bool)

(declare-fun res!401130 () Bool)

(assert (=> b!622267 (=> (not res!401130) (not e!356921))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!622267 (= res!401130 (and (= (size!18424 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18424 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18424 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!622268 () Bool)

(declare-fun e!356929 () Unit!20890)

(declare-fun Unit!20893 () Unit!20890)

(assert (=> b!622268 (= e!356929 Unit!20893)))

(declare-fun e!356917 () Bool)

(declare-fun b!622269 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37635 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!622269 (= e!356917 (arrayContainsKey!0 lt!288389 (select (arr!18060 a!2986) j!136) index!984))))

(declare-fun res!401119 () Bool)

(assert (=> start!56202 (=> (not res!401119) (not e!356921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56202 (= res!401119 (validMask!0 mask!3053))))

(assert (=> start!56202 e!356921))

(assert (=> start!56202 true))

(declare-fun array_inv!13834 (array!37635) Bool)

(assert (=> start!56202 (array_inv!13834 a!2986)))

(declare-fun b!622270 () Bool)

(declare-fun res!401124 () Bool)

(assert (=> b!622270 (=> (not res!401124) (not e!356921))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!622270 (= res!401124 (validKeyInArray!0 k!1786))))

(declare-fun res!401123 () Bool)

(declare-fun b!622271 () Bool)

(assert (=> b!622271 (= res!401123 (arrayContainsKey!0 lt!288389 (select (arr!18060 a!2986) j!136) j!136))))

(assert (=> b!622271 (=> (not res!401123) (not e!356917))))

(declare-fun e!356924 () Bool)

(assert (=> b!622271 (= e!356924 e!356917)))

(declare-fun b!622272 () Bool)

(declare-fun e!356928 () Bool)

(assert (=> b!622272 (= e!356927 e!356928)))

(declare-fun res!401127 () Bool)

(assert (=> b!622272 (=> (not res!401127) (not e!356928))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!288377 () SeekEntryResult!6507)

(assert (=> b!622272 (= res!401127 (and (= lt!288377 (Found!6507 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18060 a!2986) index!984) (select (arr!18060 a!2986) j!136))) (not (= (select (arr!18060 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37635 (_ BitVec 32)) SeekEntryResult!6507)

(assert (=> b!622272 (= lt!288377 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18060 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!622273 () Bool)

(declare-fun res!401125 () Bool)

(assert (=> b!622273 (=> (not res!401125) (not e!356921))))

(assert (=> b!622273 (= res!401125 (validKeyInArray!0 (select (arr!18060 a!2986) j!136)))))

(declare-fun b!622274 () Bool)

(declare-fun res!401121 () Bool)

(assert (=> b!622274 (= res!401121 (bvsge j!136 index!984))))

(assert (=> b!622274 (=> res!401121 e!356924)))

(declare-fun e!356920 () Bool)

(assert (=> b!622274 (= e!356920 e!356924)))

(declare-fun b!622275 () Bool)

(declare-fun e!356916 () Bool)

(declare-fun lt!288391 () SeekEntryResult!6507)

(assert (=> b!622275 (= e!356916 (= lt!288377 lt!288391))))

(declare-fun b!622276 () Bool)

(declare-fun res!401129 () Bool)

(assert (=> b!622276 (=> (not res!401129) (not e!356922))))

(assert (=> b!622276 (= res!401129 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18060 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!622277 () Bool)

(declare-fun res!401126 () Bool)

(assert (=> b!622277 (=> (not res!401126) (not e!356921))))

(assert (=> b!622277 (= res!401126 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!622278 () Bool)

(declare-fun e!356919 () Unit!20890)

(declare-fun Unit!20894 () Unit!20890)

(assert (=> b!622278 (= e!356919 Unit!20894)))

(declare-fun b!622279 () Bool)

(assert (=> b!622279 (= e!356928 (not true))))

(declare-fun lt!288392 () Unit!20890)

(assert (=> b!622279 (= lt!288392 e!356929)))

(declare-fun c!70942 () Bool)

(declare-fun lt!288390 () SeekEntryResult!6507)

(assert (=> b!622279 (= c!70942 (= lt!288390 (Found!6507 index!984)))))

(declare-fun lt!288383 () Unit!20890)

(assert (=> b!622279 (= lt!288383 e!356926)))

(declare-fun c!70943 () Bool)

(assert (=> b!622279 (= c!70943 (= lt!288390 Undefined!6507))))

(declare-fun lt!288385 () (_ BitVec 64))

(assert (=> b!622279 (= lt!288390 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288385 lt!288389 mask!3053))))

(assert (=> b!622279 e!356916))

(declare-fun res!401132 () Bool)

(assert (=> b!622279 (=> (not res!401132) (not e!356916))))

(declare-fun lt!288393 () (_ BitVec 32))

(assert (=> b!622279 (= res!401132 (= lt!288391 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288393 vacantSpotIndex!68 lt!288385 lt!288389 mask!3053)))))

(assert (=> b!622279 (= lt!288391 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288393 vacantSpotIndex!68 (select (arr!18060 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!622279 (= lt!288385 (select (store (arr!18060 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!288378 () Unit!20890)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37635 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20890)

(assert (=> b!622279 (= lt!288378 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288393 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!622279 (= lt!288393 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!622280 () Bool)

(declare-fun res!401131 () Bool)

(assert (=> b!622280 (=> (not res!401131) (not e!356922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37635 (_ BitVec 32)) Bool)

(assert (=> b!622280 (= res!401131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!622281 () Bool)

(assert (=> b!622281 false))

(declare-fun lt!288384 () Unit!20890)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37635 (_ BitVec 64) (_ BitVec 32) List!12154) Unit!20890)

(assert (=> b!622281 (= lt!288384 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288389 (select (arr!18060 a!2986) j!136) index!984 Nil!12151))))

(assert (=> b!622281 (arrayNoDuplicates!0 lt!288389 index!984 Nil!12151)))

(declare-fun lt!288386 () Unit!20890)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37635 (_ BitVec 32) (_ BitVec 32)) Unit!20890)

(assert (=> b!622281 (= lt!288386 (lemmaNoDuplicateFromThenFromBigger!0 lt!288389 #b00000000000000000000000000000000 index!984))))

(assert (=> b!622281 (arrayNoDuplicates!0 lt!288389 #b00000000000000000000000000000000 Nil!12151)))

(declare-fun lt!288387 () Unit!20890)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37635 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12154) Unit!20890)

(assert (=> b!622281 (= lt!288387 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12151))))

(assert (=> b!622281 (arrayContainsKey!0 lt!288389 (select (arr!18060 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288394 () Unit!20890)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37635 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20890)

(assert (=> b!622281 (= lt!288394 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288389 (select (arr!18060 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!356925 () Bool)

(assert (=> b!622281 e!356925))

(declare-fun res!401122 () Bool)

(assert (=> b!622281 (=> (not res!401122) (not e!356925))))

(assert (=> b!622281 (= res!401122 (arrayContainsKey!0 lt!288389 (select (arr!18060 a!2986) j!136) j!136))))

(declare-fun Unit!20895 () Unit!20890)

(assert (=> b!622281 (= e!356919 Unit!20895)))

(declare-fun b!622282 () Bool)

(assert (=> b!622282 false))

(declare-fun lt!288382 () Unit!20890)

(assert (=> b!622282 (= lt!288382 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288389 (select (arr!18060 a!2986) j!136) j!136 Nil!12151))))

(assert (=> b!622282 (arrayNoDuplicates!0 lt!288389 j!136 Nil!12151)))

(declare-fun lt!288379 () Unit!20890)

(assert (=> b!622282 (= lt!288379 (lemmaNoDuplicateFromThenFromBigger!0 lt!288389 #b00000000000000000000000000000000 j!136))))

(assert (=> b!622282 (arrayNoDuplicates!0 lt!288389 #b00000000000000000000000000000000 Nil!12151)))

(declare-fun lt!288396 () Unit!20890)

(assert (=> b!622282 (= lt!288396 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12151))))

(assert (=> b!622282 (arrayContainsKey!0 lt!288389 (select (arr!18060 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288388 () Unit!20890)

(assert (=> b!622282 (= lt!288388 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288389 (select (arr!18060 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!356923 () Unit!20890)

(declare-fun Unit!20896 () Unit!20890)

(assert (=> b!622282 (= e!356923 Unit!20896)))

(declare-fun b!622283 () Bool)

(assert (=> b!622283 (= e!356925 (arrayContainsKey!0 lt!288389 (select (arr!18060 a!2986) j!136) index!984))))

(declare-fun b!622284 () Bool)

(declare-fun Unit!20897 () Unit!20890)

(assert (=> b!622284 (= e!356923 Unit!20897)))

(declare-fun b!622285 () Bool)

(declare-fun Unit!20898 () Unit!20890)

(assert (=> b!622285 (= e!356929 Unit!20898)))

(declare-fun res!401120 () Bool)

(assert (=> b!622285 (= res!401120 (= (select (store (arr!18060 a!2986) i!1108 k!1786) index!984) (select (arr!18060 a!2986) j!136)))))

(assert (=> b!622285 (=> (not res!401120) (not e!356920))))

(assert (=> b!622285 e!356920))

(declare-fun c!70941 () Bool)

(assert (=> b!622285 (= c!70941 (bvslt j!136 index!984))))

(declare-fun lt!288395 () Unit!20890)

(assert (=> b!622285 (= lt!288395 e!356923)))

(declare-fun c!70940 () Bool)

(assert (=> b!622285 (= c!70940 (bvslt index!984 j!136))))

(declare-fun lt!288380 () Unit!20890)

(assert (=> b!622285 (= lt!288380 e!356919)))

(assert (=> b!622285 false))

(declare-fun b!622286 () Bool)

(declare-fun Unit!20899 () Unit!20890)

(assert (=> b!622286 (= e!356926 Unit!20899)))

(assert (= (and start!56202 res!401119) b!622267))

(assert (= (and b!622267 res!401130) b!622273))

(assert (= (and b!622273 res!401125) b!622270))

(assert (= (and b!622270 res!401124) b!622277))

(assert (= (and b!622277 res!401126) b!622265))

(assert (= (and b!622265 res!401118) b!622280))

(assert (= (and b!622280 res!401131) b!622264))

(assert (= (and b!622264 res!401128) b!622276))

(assert (= (and b!622276 res!401129) b!622263))

(assert (= (and b!622263 res!401117) b!622272))

(assert (= (and b!622272 res!401127) b!622279))

(assert (= (and b!622279 res!401132) b!622275))

(assert (= (and b!622279 c!70943) b!622266))

(assert (= (and b!622279 (not c!70943)) b!622286))

(assert (= (and b!622279 c!70942) b!622285))

(assert (= (and b!622279 (not c!70942)) b!622268))

(assert (= (and b!622285 res!401120) b!622274))

(assert (= (and b!622274 (not res!401121)) b!622271))

(assert (= (and b!622271 res!401123) b!622269))

(assert (= (and b!622285 c!70941) b!622282))

(assert (= (and b!622285 (not c!70941)) b!622284))

(assert (= (and b!622285 c!70940) b!622281))

(assert (= (and b!622285 (not c!70940)) b!622278))

(assert (= (and b!622281 res!401122) b!622283))

(declare-fun m!598179 () Bool)

(assert (=> b!622264 m!598179))

(declare-fun m!598181 () Bool)

(assert (=> b!622285 m!598181))

(declare-fun m!598183 () Bool)

(assert (=> b!622285 m!598183))

(declare-fun m!598185 () Bool)

(assert (=> b!622285 m!598185))

(declare-fun m!598187 () Bool)

(assert (=> start!56202 m!598187))

(declare-fun m!598189 () Bool)

(assert (=> start!56202 m!598189))

(assert (=> b!622271 m!598185))

(assert (=> b!622271 m!598185))

(declare-fun m!598191 () Bool)

(assert (=> b!622271 m!598191))

(assert (=> b!622263 m!598181))

(declare-fun m!598193 () Bool)

(assert (=> b!622263 m!598193))

(assert (=> b!622282 m!598185))

(declare-fun m!598195 () Bool)

(assert (=> b!622282 m!598195))

(assert (=> b!622282 m!598185))

(declare-fun m!598197 () Bool)

(assert (=> b!622282 m!598197))

(declare-fun m!598199 () Bool)

(assert (=> b!622282 m!598199))

(declare-fun m!598201 () Bool)

(assert (=> b!622282 m!598201))

(assert (=> b!622282 m!598185))

(declare-fun m!598203 () Bool)

(assert (=> b!622282 m!598203))

(declare-fun m!598205 () Bool)

(assert (=> b!622282 m!598205))

(assert (=> b!622282 m!598185))

(declare-fun m!598207 () Bool)

(assert (=> b!622282 m!598207))

(declare-fun m!598209 () Bool)

(assert (=> b!622280 m!598209))

(assert (=> b!622281 m!598185))

(assert (=> b!622281 m!598185))

(declare-fun m!598211 () Bool)

(assert (=> b!622281 m!598211))

(assert (=> b!622281 m!598195))

(declare-fun m!598213 () Bool)

(assert (=> b!622281 m!598213))

(declare-fun m!598215 () Bool)

(assert (=> b!622281 m!598215))

(assert (=> b!622281 m!598201))

(assert (=> b!622281 m!598185))

(assert (=> b!622281 m!598191))

(assert (=> b!622281 m!598185))

(declare-fun m!598217 () Bool)

(assert (=> b!622281 m!598217))

(assert (=> b!622281 m!598185))

(declare-fun m!598219 () Bool)

(assert (=> b!622281 m!598219))

(assert (=> b!622283 m!598185))

(assert (=> b!622283 m!598185))

(declare-fun m!598221 () Bool)

(assert (=> b!622283 m!598221))

(declare-fun m!598223 () Bool)

(assert (=> b!622276 m!598223))

(declare-fun m!598225 () Bool)

(assert (=> b!622277 m!598225))

(declare-fun m!598227 () Bool)

(assert (=> b!622279 m!598227))

(assert (=> b!622279 m!598185))

(assert (=> b!622279 m!598181))

(declare-fun m!598229 () Bool)

(assert (=> b!622279 m!598229))

(declare-fun m!598231 () Bool)

(assert (=> b!622279 m!598231))

(declare-fun m!598233 () Bool)

(assert (=> b!622279 m!598233))

(declare-fun m!598235 () Bool)

(assert (=> b!622279 m!598235))

(assert (=> b!622279 m!598185))

(declare-fun m!598237 () Bool)

(assert (=> b!622279 m!598237))

(assert (=> b!622269 m!598185))

(assert (=> b!622269 m!598185))

(assert (=> b!622269 m!598221))

(declare-fun m!598239 () Bool)

(assert (=> b!622272 m!598239))

(assert (=> b!622272 m!598185))

(assert (=> b!622272 m!598185))

(declare-fun m!598241 () Bool)

(assert (=> b!622272 m!598241))

(assert (=> b!622273 m!598185))

(assert (=> b!622273 m!598185))

(declare-fun m!598243 () Bool)

(assert (=> b!622273 m!598243))

(declare-fun m!598245 () Bool)

(assert (=> b!622270 m!598245))

(declare-fun m!598247 () Bool)

(assert (=> b!622265 m!598247))

(push 1)

