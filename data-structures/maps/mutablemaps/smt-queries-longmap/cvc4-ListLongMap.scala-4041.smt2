; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55132 () Bool)

(assert start!55132)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!345109 () Bool)

(declare-datatypes ((array!37168 0))(
  ( (array!37169 (arr!17837 (Array (_ BitVec 32) (_ BitVec 64))) (size!18201 (_ BitVec 32))) )
))
(declare-fun lt!274957 () array!37168)

(declare-fun b!603244 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37168)

(declare-fun arrayContainsKey!0 (array!37168 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!603244 (= e!345109 (arrayContainsKey!0 lt!274957 (select (arr!17837 a!2986) j!136) index!984))))

(declare-fun b!603245 () Bool)

(declare-fun e!345105 () Bool)

(declare-fun e!345107 () Bool)

(assert (=> b!603245 (= e!345105 e!345107)))

(declare-fun res!387515 () Bool)

(assert (=> b!603245 (=> res!387515 e!345107)))

(declare-fun lt!274964 () (_ BitVec 64))

(declare-fun lt!274963 () (_ BitVec 64))

(assert (=> b!603245 (= res!387515 (or (not (= (select (arr!17837 a!2986) j!136) lt!274964)) (not (= (select (arr!17837 a!2986) j!136) lt!274963)) (bvsge j!136 index!984)))))

(declare-fun b!603246 () Bool)

(declare-fun res!387516 () Bool)

(declare-fun e!345098 () Bool)

(assert (=> b!603246 (=> (not res!387516) (not e!345098))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!603246 (= res!387516 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17837 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!603247 () Bool)

(declare-fun e!345099 () Bool)

(declare-fun e!345108 () Bool)

(assert (=> b!603247 (= e!345099 e!345108)))

(declare-fun res!387518 () Bool)

(assert (=> b!603247 (=> (not res!387518) (not e!345108))))

(declare-datatypes ((SeekEntryResult!6284 0))(
  ( (MissingZero!6284 (index!27398 (_ BitVec 32))) (Found!6284 (index!27399 (_ BitVec 32))) (Intermediate!6284 (undefined!7096 Bool) (index!27400 (_ BitVec 32)) (x!56222 (_ BitVec 32))) (Undefined!6284) (MissingVacant!6284 (index!27401 (_ BitVec 32))) )
))
(declare-fun lt!274959 () SeekEntryResult!6284)

(assert (=> b!603247 (= res!387518 (and (= lt!274959 (Found!6284 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17837 a!2986) index!984) (select (arr!17837 a!2986) j!136))) (not (= (select (arr!17837 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37168 (_ BitVec 32)) SeekEntryResult!6284)

(assert (=> b!603247 (= lt!274959 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17837 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!603248 () Bool)

(declare-fun res!387522 () Bool)

(declare-fun e!345096 () Bool)

(assert (=> b!603248 (=> (not res!387522) (not e!345096))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!603248 (= res!387522 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!387527 () Bool)

(assert (=> start!55132 (=> (not res!387527) (not e!345096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55132 (= res!387527 (validMask!0 mask!3053))))

(assert (=> start!55132 e!345096))

(assert (=> start!55132 true))

(declare-fun array_inv!13611 (array!37168) Bool)

(assert (=> start!55132 (array_inv!13611 a!2986)))

(declare-fun b!603249 () Bool)

(declare-fun e!345101 () Bool)

(assert (=> b!603249 (= e!345108 (not e!345101))))

(declare-fun res!387528 () Bool)

(assert (=> b!603249 (=> res!387528 e!345101)))

(declare-fun lt!274958 () SeekEntryResult!6284)

(assert (=> b!603249 (= res!387528 (not (= lt!274958 (Found!6284 index!984))))))

(declare-datatypes ((Unit!19132 0))(
  ( (Unit!19133) )
))
(declare-fun lt!274965 () Unit!19132)

(declare-fun e!345095 () Unit!19132)

(assert (=> b!603249 (= lt!274965 e!345095)))

(declare-fun c!68234 () Bool)

(assert (=> b!603249 (= c!68234 (= lt!274958 Undefined!6284))))

(assert (=> b!603249 (= lt!274958 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274964 lt!274957 mask!3053))))

(declare-fun e!345097 () Bool)

(assert (=> b!603249 e!345097))

(declare-fun res!387517 () Bool)

(assert (=> b!603249 (=> (not res!387517) (not e!345097))))

(declare-fun lt!274966 () SeekEntryResult!6284)

(declare-fun lt!274968 () (_ BitVec 32))

(assert (=> b!603249 (= res!387517 (= lt!274966 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274968 vacantSpotIndex!68 lt!274964 lt!274957 mask!3053)))))

(assert (=> b!603249 (= lt!274966 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274968 vacantSpotIndex!68 (select (arr!17837 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!603249 (= lt!274964 (select (store (arr!17837 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!274960 () Unit!19132)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37168 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19132)

(assert (=> b!603249 (= lt!274960 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274968 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!603249 (= lt!274968 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!603250 () Bool)

(declare-fun e!345103 () Bool)

(assert (=> b!603250 (= e!345103 true)))

(declare-fun e!345104 () Bool)

(assert (=> b!603250 e!345104))

(declare-fun res!387530 () Bool)

(assert (=> b!603250 (=> (not res!387530) (not e!345104))))

(assert (=> b!603250 (= res!387530 (arrayContainsKey!0 lt!274957 (select (arr!17837 a!2986) j!136) j!136))))

(declare-fun b!603251 () Bool)

(declare-fun Unit!19134 () Unit!19132)

(assert (=> b!603251 (= e!345095 Unit!19134)))

(declare-fun b!603252 () Bool)

(assert (=> b!603252 (= e!345098 e!345099)))

(declare-fun res!387526 () Bool)

(assert (=> b!603252 (=> (not res!387526) (not e!345099))))

(assert (=> b!603252 (= res!387526 (= (select (store (arr!17837 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!603252 (= lt!274957 (array!37169 (store (arr!17837 a!2986) i!1108 k!1786) (size!18201 a!2986)))))

(declare-fun b!603253 () Bool)

(declare-fun e!345106 () Unit!19132)

(declare-fun Unit!19135 () Unit!19132)

(assert (=> b!603253 (= e!345106 Unit!19135)))

(declare-fun b!603254 () Bool)

(assert (=> b!603254 (= e!345096 e!345098)))

(declare-fun res!387512 () Bool)

(assert (=> b!603254 (=> (not res!387512) (not e!345098))))

(declare-fun lt!274971 () SeekEntryResult!6284)

(assert (=> b!603254 (= res!387512 (or (= lt!274971 (MissingZero!6284 i!1108)) (= lt!274971 (MissingVacant!6284 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37168 (_ BitVec 32)) SeekEntryResult!6284)

(assert (=> b!603254 (= lt!274971 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!603255 () Bool)

(declare-fun e!345100 () Bool)

(assert (=> b!603255 (= e!345100 e!345103)))

(declare-fun res!387520 () Bool)

(assert (=> b!603255 (=> res!387520 e!345103)))

(assert (=> b!603255 (= res!387520 (bvsge index!984 j!136))))

(declare-fun lt!274962 () Unit!19132)

(assert (=> b!603255 (= lt!274962 e!345106)))

(declare-fun c!68233 () Bool)

(assert (=> b!603255 (= c!68233 (bvslt j!136 index!984))))

(declare-fun b!603256 () Bool)

(declare-fun res!387513 () Bool)

(assert (=> b!603256 (=> (not res!387513) (not e!345098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37168 (_ BitVec 32)) Bool)

(assert (=> b!603256 (= res!387513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!603257 () Bool)

(assert (=> b!603257 (= e!345107 e!345109)))

(declare-fun res!387529 () Bool)

(assert (=> b!603257 (=> (not res!387529) (not e!345109))))

(assert (=> b!603257 (= res!387529 (arrayContainsKey!0 lt!274957 (select (arr!17837 a!2986) j!136) j!136))))

(declare-fun b!603258 () Bool)

(declare-fun res!387523 () Bool)

(assert (=> b!603258 (=> (not res!387523) (not e!345098))))

(declare-datatypes ((List!11931 0))(
  ( (Nil!11928) (Cons!11927 (h!12972 (_ BitVec 64)) (t!18167 List!11931)) )
))
(declare-fun arrayNoDuplicates!0 (array!37168 (_ BitVec 32) List!11931) Bool)

(assert (=> b!603258 (= res!387523 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11928))))

(declare-fun b!603259 () Bool)

(assert (=> b!603259 (= e!345104 (arrayContainsKey!0 lt!274957 (select (arr!17837 a!2986) j!136) index!984))))

(declare-fun b!603260 () Bool)

(assert (=> b!603260 (= e!345101 e!345100)))

(declare-fun res!387525 () Bool)

(assert (=> b!603260 (=> res!387525 e!345100)))

(assert (=> b!603260 (= res!387525 (or (not (= (select (arr!17837 a!2986) j!136) lt!274964)) (not (= (select (arr!17837 a!2986) j!136) lt!274963))))))

(assert (=> b!603260 e!345105))

(declare-fun res!387524 () Bool)

(assert (=> b!603260 (=> (not res!387524) (not e!345105))))

(assert (=> b!603260 (= res!387524 (= lt!274963 (select (arr!17837 a!2986) j!136)))))

(assert (=> b!603260 (= lt!274963 (select (store (arr!17837 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!603261 () Bool)

(assert (=> b!603261 (= e!345097 (= lt!274959 lt!274966))))

(declare-fun b!603262 () Bool)

(declare-fun Unit!19136 () Unit!19132)

(assert (=> b!603262 (= e!345095 Unit!19136)))

(assert (=> b!603262 false))

(declare-fun b!603263 () Bool)

(declare-fun res!387519 () Bool)

(assert (=> b!603263 (=> (not res!387519) (not e!345096))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!603263 (= res!387519 (validKeyInArray!0 (select (arr!17837 a!2986) j!136)))))

(declare-fun b!603264 () Bool)

(declare-fun res!387514 () Bool)

(assert (=> b!603264 (=> (not res!387514) (not e!345096))))

(assert (=> b!603264 (= res!387514 (validKeyInArray!0 k!1786))))

(declare-fun b!603265 () Bool)

(declare-fun res!387521 () Bool)

(assert (=> b!603265 (=> (not res!387521) (not e!345096))))

(assert (=> b!603265 (= res!387521 (and (= (size!18201 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18201 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18201 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!603266 () Bool)

(declare-fun Unit!19137 () Unit!19132)

(assert (=> b!603266 (= e!345106 Unit!19137)))

(declare-fun lt!274969 () Unit!19132)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37168 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19132)

(assert (=> b!603266 (= lt!274969 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274957 (select (arr!17837 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!603266 (arrayContainsKey!0 lt!274957 (select (arr!17837 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274961 () Unit!19132)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37168 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11931) Unit!19132)

(assert (=> b!603266 (= lt!274961 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11928))))

(assert (=> b!603266 (arrayNoDuplicates!0 lt!274957 #b00000000000000000000000000000000 Nil!11928)))

(declare-fun lt!274970 () Unit!19132)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37168 (_ BitVec 32) (_ BitVec 32)) Unit!19132)

(assert (=> b!603266 (= lt!274970 (lemmaNoDuplicateFromThenFromBigger!0 lt!274957 #b00000000000000000000000000000000 j!136))))

(assert (=> b!603266 (arrayNoDuplicates!0 lt!274957 j!136 Nil!11928)))

(declare-fun lt!274967 () Unit!19132)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37168 (_ BitVec 64) (_ BitVec 32) List!11931) Unit!19132)

(assert (=> b!603266 (= lt!274967 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274957 (select (arr!17837 a!2986) j!136) j!136 Nil!11928))))

(assert (=> b!603266 false))

(assert (= (and start!55132 res!387527) b!603265))

(assert (= (and b!603265 res!387521) b!603263))

(assert (= (and b!603263 res!387519) b!603264))

(assert (= (and b!603264 res!387514) b!603248))

(assert (= (and b!603248 res!387522) b!603254))

(assert (= (and b!603254 res!387512) b!603256))

(assert (= (and b!603256 res!387513) b!603258))

(assert (= (and b!603258 res!387523) b!603246))

(assert (= (and b!603246 res!387516) b!603252))

(assert (= (and b!603252 res!387526) b!603247))

(assert (= (and b!603247 res!387518) b!603249))

(assert (= (and b!603249 res!387517) b!603261))

(assert (= (and b!603249 c!68234) b!603262))

(assert (= (and b!603249 (not c!68234)) b!603251))

(assert (= (and b!603249 (not res!387528)) b!603260))

(assert (= (and b!603260 res!387524) b!603245))

(assert (= (and b!603245 (not res!387515)) b!603257))

(assert (= (and b!603257 res!387529) b!603244))

(assert (= (and b!603260 (not res!387525)) b!603255))

(assert (= (and b!603255 c!68233) b!603266))

(assert (= (and b!603255 (not c!68233)) b!603253))

(assert (= (and b!603255 (not res!387520)) b!603250))

(assert (= (and b!603250 res!387530) b!603259))

(declare-fun m!580311 () Bool)

(assert (=> b!603260 m!580311))

(declare-fun m!580313 () Bool)

(assert (=> b!603260 m!580313))

(declare-fun m!580315 () Bool)

(assert (=> b!603260 m!580315))

(declare-fun m!580317 () Bool)

(assert (=> b!603254 m!580317))

(declare-fun m!580319 () Bool)

(assert (=> b!603264 m!580319))

(assert (=> b!603244 m!580311))

(assert (=> b!603244 m!580311))

(declare-fun m!580321 () Bool)

(assert (=> b!603244 m!580321))

(declare-fun m!580323 () Bool)

(assert (=> b!603246 m!580323))

(declare-fun m!580325 () Bool)

(assert (=> b!603249 m!580325))

(declare-fun m!580327 () Bool)

(assert (=> b!603249 m!580327))

(assert (=> b!603249 m!580311))

(assert (=> b!603249 m!580311))

(declare-fun m!580329 () Bool)

(assert (=> b!603249 m!580329))

(declare-fun m!580331 () Bool)

(assert (=> b!603249 m!580331))

(assert (=> b!603249 m!580313))

(declare-fun m!580333 () Bool)

(assert (=> b!603249 m!580333))

(declare-fun m!580335 () Bool)

(assert (=> b!603249 m!580335))

(assert (=> b!603252 m!580313))

(declare-fun m!580337 () Bool)

(assert (=> b!603252 m!580337))

(declare-fun m!580339 () Bool)

(assert (=> b!603247 m!580339))

(assert (=> b!603247 m!580311))

(assert (=> b!603247 m!580311))

(declare-fun m!580341 () Bool)

(assert (=> b!603247 m!580341))

(declare-fun m!580343 () Bool)

(assert (=> start!55132 m!580343))

(declare-fun m!580345 () Bool)

(assert (=> start!55132 m!580345))

(declare-fun m!580347 () Bool)

(assert (=> b!603258 m!580347))

(assert (=> b!603263 m!580311))

(assert (=> b!603263 m!580311))

(declare-fun m!580349 () Bool)

(assert (=> b!603263 m!580349))

(assert (=> b!603245 m!580311))

(assert (=> b!603257 m!580311))

(assert (=> b!603257 m!580311))

(declare-fun m!580351 () Bool)

(assert (=> b!603257 m!580351))

(assert (=> b!603259 m!580311))

(assert (=> b!603259 m!580311))

(assert (=> b!603259 m!580321))

(assert (=> b!603250 m!580311))

(assert (=> b!603250 m!580311))

(assert (=> b!603250 m!580351))

(declare-fun m!580353 () Bool)

(assert (=> b!603248 m!580353))

(assert (=> b!603266 m!580311))

(declare-fun m!580355 () Bool)

(assert (=> b!603266 m!580355))

(assert (=> b!603266 m!580311))

(declare-fun m!580357 () Bool)

(assert (=> b!603266 m!580357))

(assert (=> b!603266 m!580311))

(declare-fun m!580359 () Bool)

(assert (=> b!603266 m!580359))

(declare-fun m!580361 () Bool)

(assert (=> b!603266 m!580361))

(assert (=> b!603266 m!580311))

(declare-fun m!580363 () Bool)

(assert (=> b!603266 m!580363))

(declare-fun m!580365 () Bool)

(assert (=> b!603266 m!580365))

(declare-fun m!580367 () Bool)

(assert (=> b!603266 m!580367))

(declare-fun m!580369 () Bool)

(assert (=> b!603256 m!580369))

(push 1)

