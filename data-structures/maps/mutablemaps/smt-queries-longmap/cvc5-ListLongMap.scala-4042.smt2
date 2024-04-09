; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55134 () Bool)

(assert start!55134)

(declare-fun b!603313 () Bool)

(declare-datatypes ((Unit!19138 0))(
  ( (Unit!19139) )
))
(declare-fun e!345140 () Unit!19138)

(declare-fun Unit!19140 () Unit!19138)

(assert (=> b!603313 (= e!345140 Unit!19140)))

(declare-fun b!603314 () Bool)

(declare-fun res!387571 () Bool)

(declare-fun e!345147 () Bool)

(assert (=> b!603314 (=> (not res!387571) (not e!345147))))

(declare-datatypes ((array!37170 0))(
  ( (array!37171 (arr!17838 (Array (_ BitVec 32) (_ BitVec 64))) (size!18202 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37170)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37170 (_ BitVec 32)) Bool)

(assert (=> b!603314 (= res!387571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!603315 () Bool)

(declare-fun res!387569 () Bool)

(assert (=> b!603315 (=> (not res!387569) (not e!345147))))

(declare-datatypes ((List!11932 0))(
  ( (Nil!11929) (Cons!11928 (h!12973 (_ BitVec 64)) (t!18168 List!11932)) )
))
(declare-fun arrayNoDuplicates!0 (array!37170 (_ BitVec 32) List!11932) Bool)

(assert (=> b!603315 (= res!387569 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11929))))

(declare-fun b!603316 () Bool)

(declare-fun Unit!19141 () Unit!19138)

(assert (=> b!603316 (= e!345140 Unit!19141)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!275010 () Unit!19138)

(declare-fun lt!275015 () array!37170)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37170 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19138)

(assert (=> b!603316 (= lt!275010 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275015 (select (arr!17838 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37170 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!603316 (arrayContainsKey!0 lt!275015 (select (arr!17838 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!275006 () Unit!19138)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37170 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11932) Unit!19138)

(assert (=> b!603316 (= lt!275006 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11929))))

(assert (=> b!603316 (arrayNoDuplicates!0 lt!275015 #b00000000000000000000000000000000 Nil!11929)))

(declare-fun lt!275007 () Unit!19138)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37170 (_ BitVec 32) (_ BitVec 32)) Unit!19138)

(assert (=> b!603316 (= lt!275007 (lemmaNoDuplicateFromThenFromBigger!0 lt!275015 #b00000000000000000000000000000000 j!136))))

(assert (=> b!603316 (arrayNoDuplicates!0 lt!275015 j!136 Nil!11929)))

(declare-fun lt!275008 () Unit!19138)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37170 (_ BitVec 64) (_ BitVec 32) List!11932) Unit!19138)

(assert (=> b!603316 (= lt!275008 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275015 (select (arr!17838 a!2986) j!136) j!136 Nil!11929))))

(assert (=> b!603316 false))

(declare-fun e!345152 () Bool)

(declare-fun b!603317 () Bool)

(assert (=> b!603317 (= e!345152 (arrayContainsKey!0 lt!275015 (select (arr!17838 a!2986) j!136) index!984))))

(declare-fun b!603318 () Bool)

(declare-fun e!345151 () Bool)

(declare-fun e!345148 () Bool)

(assert (=> b!603318 (= e!345151 (not e!345148))))

(declare-fun res!387578 () Bool)

(assert (=> b!603318 (=> res!387578 e!345148)))

(declare-datatypes ((SeekEntryResult!6285 0))(
  ( (MissingZero!6285 (index!27402 (_ BitVec 32))) (Found!6285 (index!27403 (_ BitVec 32))) (Intermediate!6285 (undefined!7097 Bool) (index!27404 (_ BitVec 32)) (x!56231 (_ BitVec 32))) (Undefined!6285) (MissingVacant!6285 (index!27405 (_ BitVec 32))) )
))
(declare-fun lt!275005 () SeekEntryResult!6285)

(assert (=> b!603318 (= res!387578 (not (= lt!275005 (Found!6285 index!984))))))

(declare-fun lt!275014 () Unit!19138)

(declare-fun e!345143 () Unit!19138)

(assert (=> b!603318 (= lt!275014 e!345143)))

(declare-fun c!68240 () Bool)

(assert (=> b!603318 (= c!68240 (= lt!275005 Undefined!6285))))

(declare-fun lt!275011 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37170 (_ BitVec 32)) SeekEntryResult!6285)

(assert (=> b!603318 (= lt!275005 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275011 lt!275015 mask!3053))))

(declare-fun e!345154 () Bool)

(assert (=> b!603318 e!345154))

(declare-fun res!387572 () Bool)

(assert (=> b!603318 (=> (not res!387572) (not e!345154))))

(declare-fun lt!275009 () (_ BitVec 32))

(declare-fun lt!275003 () SeekEntryResult!6285)

(assert (=> b!603318 (= res!387572 (= lt!275003 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275009 vacantSpotIndex!68 lt!275011 lt!275015 mask!3053)))))

(assert (=> b!603318 (= lt!275003 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275009 vacantSpotIndex!68 (select (arr!17838 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!603318 (= lt!275011 (select (store (arr!17838 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!275012 () Unit!19138)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37170 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19138)

(assert (=> b!603318 (= lt!275012 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275009 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!603318 (= lt!275009 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!387581 () Bool)

(declare-fun e!345144 () Bool)

(assert (=> start!55134 (=> (not res!387581) (not e!345144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55134 (= res!387581 (validMask!0 mask!3053))))

(assert (=> start!55134 e!345144))

(assert (=> start!55134 true))

(declare-fun array_inv!13612 (array!37170) Bool)

(assert (=> start!55134 (array_inv!13612 a!2986)))

(declare-fun b!603319 () Bool)

(declare-fun res!387575 () Bool)

(assert (=> b!603319 (=> (not res!387575) (not e!345144))))

(assert (=> b!603319 (= res!387575 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!603320 () Bool)

(declare-fun lt!275013 () SeekEntryResult!6285)

(assert (=> b!603320 (= e!345154 (= lt!275013 lt!275003))))

(declare-fun b!603321 () Bool)

(declare-fun res!387583 () Bool)

(assert (=> b!603321 (=> (not res!387583) (not e!345144))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!603321 (= res!387583 (validKeyInArray!0 (select (arr!17838 a!2986) j!136)))))

(declare-fun b!603322 () Bool)

(declare-fun res!387570 () Bool)

(assert (=> b!603322 (=> (not res!387570) (not e!345144))))

(assert (=> b!603322 (= res!387570 (and (= (size!18202 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18202 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18202 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!603323 () Bool)

(declare-fun e!345146 () Bool)

(assert (=> b!603323 (= e!345146 true)))

(assert (=> b!603323 e!345152))

(declare-fun res!387579 () Bool)

(assert (=> b!603323 (=> (not res!387579) (not e!345152))))

(assert (=> b!603323 (= res!387579 (arrayContainsKey!0 lt!275015 (select (arr!17838 a!2986) j!136) j!136))))

(declare-fun b!603324 () Bool)

(declare-fun Unit!19142 () Unit!19138)

(assert (=> b!603324 (= e!345143 Unit!19142)))

(assert (=> b!603324 false))

(declare-fun b!603325 () Bool)

(declare-fun e!345145 () Bool)

(declare-fun e!345141 () Bool)

(assert (=> b!603325 (= e!345145 e!345141)))

(declare-fun res!387574 () Bool)

(assert (=> b!603325 (=> (not res!387574) (not e!345141))))

(assert (=> b!603325 (= res!387574 (arrayContainsKey!0 lt!275015 (select (arr!17838 a!2986) j!136) j!136))))

(declare-fun b!603326 () Bool)

(assert (=> b!603326 (= e!345141 (arrayContainsKey!0 lt!275015 (select (arr!17838 a!2986) j!136) index!984))))

(declare-fun b!603327 () Bool)

(declare-fun res!387585 () Bool)

(assert (=> b!603327 (=> (not res!387585) (not e!345147))))

(assert (=> b!603327 (= res!387585 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17838 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!603328 () Bool)

(declare-fun e!345150 () Bool)

(assert (=> b!603328 (= e!345147 e!345150)))

(declare-fun res!387576 () Bool)

(assert (=> b!603328 (=> (not res!387576) (not e!345150))))

(assert (=> b!603328 (= res!387576 (= (select (store (arr!17838 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!603328 (= lt!275015 (array!37171 (store (arr!17838 a!2986) i!1108 k!1786) (size!18202 a!2986)))))

(declare-fun b!603329 () Bool)

(declare-fun Unit!19143 () Unit!19138)

(assert (=> b!603329 (= e!345143 Unit!19143)))

(declare-fun b!603330 () Bool)

(assert (=> b!603330 (= e!345150 e!345151)))

(declare-fun res!387586 () Bool)

(assert (=> b!603330 (=> (not res!387586) (not e!345151))))

(assert (=> b!603330 (= res!387586 (and (= lt!275013 (Found!6285 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17838 a!2986) index!984) (select (arr!17838 a!2986) j!136))) (not (= (select (arr!17838 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!603330 (= lt!275013 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17838 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!603331 () Bool)

(declare-fun res!387582 () Bool)

(assert (=> b!603331 (=> (not res!387582) (not e!345144))))

(assert (=> b!603331 (= res!387582 (validKeyInArray!0 k!1786))))

(declare-fun b!603332 () Bool)

(assert (=> b!603332 (= e!345144 e!345147)))

(declare-fun res!387577 () Bool)

(assert (=> b!603332 (=> (not res!387577) (not e!345147))))

(declare-fun lt!275016 () SeekEntryResult!6285)

(assert (=> b!603332 (= res!387577 (or (= lt!275016 (MissingZero!6285 i!1108)) (= lt!275016 (MissingVacant!6285 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37170 (_ BitVec 32)) SeekEntryResult!6285)

(assert (=> b!603332 (= lt!275016 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!603333 () Bool)

(declare-fun e!345142 () Bool)

(assert (=> b!603333 (= e!345142 e!345145)))

(declare-fun res!387584 () Bool)

(assert (=> b!603333 (=> res!387584 e!345145)))

(declare-fun lt!275002 () (_ BitVec 64))

(assert (=> b!603333 (= res!387584 (or (not (= (select (arr!17838 a!2986) j!136) lt!275011)) (not (= (select (arr!17838 a!2986) j!136) lt!275002)) (bvsge j!136 index!984)))))

(declare-fun b!603334 () Bool)

(declare-fun e!345149 () Bool)

(assert (=> b!603334 (= e!345148 e!345149)))

(declare-fun res!387580 () Bool)

(assert (=> b!603334 (=> res!387580 e!345149)))

(assert (=> b!603334 (= res!387580 (or (not (= (select (arr!17838 a!2986) j!136) lt!275011)) (not (= (select (arr!17838 a!2986) j!136) lt!275002))))))

(assert (=> b!603334 e!345142))

(declare-fun res!387573 () Bool)

(assert (=> b!603334 (=> (not res!387573) (not e!345142))))

(assert (=> b!603334 (= res!387573 (= lt!275002 (select (arr!17838 a!2986) j!136)))))

(assert (=> b!603334 (= lt!275002 (select (store (arr!17838 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!603335 () Bool)

(assert (=> b!603335 (= e!345149 e!345146)))

(declare-fun res!387587 () Bool)

(assert (=> b!603335 (=> res!387587 e!345146)))

(assert (=> b!603335 (= res!387587 (bvsge index!984 j!136))))

(declare-fun lt!275004 () Unit!19138)

(assert (=> b!603335 (= lt!275004 e!345140)))

(declare-fun c!68239 () Bool)

(assert (=> b!603335 (= c!68239 (bvslt j!136 index!984))))

(assert (= (and start!55134 res!387581) b!603322))

(assert (= (and b!603322 res!387570) b!603321))

(assert (= (and b!603321 res!387583) b!603331))

(assert (= (and b!603331 res!387582) b!603319))

(assert (= (and b!603319 res!387575) b!603332))

(assert (= (and b!603332 res!387577) b!603314))

(assert (= (and b!603314 res!387571) b!603315))

(assert (= (and b!603315 res!387569) b!603327))

(assert (= (and b!603327 res!387585) b!603328))

(assert (= (and b!603328 res!387576) b!603330))

(assert (= (and b!603330 res!387586) b!603318))

(assert (= (and b!603318 res!387572) b!603320))

(assert (= (and b!603318 c!68240) b!603324))

(assert (= (and b!603318 (not c!68240)) b!603329))

(assert (= (and b!603318 (not res!387578)) b!603334))

(assert (= (and b!603334 res!387573) b!603333))

(assert (= (and b!603333 (not res!387584)) b!603325))

(assert (= (and b!603325 res!387574) b!603326))

(assert (= (and b!603334 (not res!387580)) b!603335))

(assert (= (and b!603335 c!68239) b!603316))

(assert (= (and b!603335 (not c!68239)) b!603313))

(assert (= (and b!603335 (not res!387587)) b!603323))

(assert (= (and b!603323 res!387579) b!603317))

(declare-fun m!580371 () Bool)

(assert (=> b!603332 m!580371))

(declare-fun m!580373 () Bool)

(assert (=> b!603334 m!580373))

(declare-fun m!580375 () Bool)

(assert (=> b!603334 m!580375))

(declare-fun m!580377 () Bool)

(assert (=> b!603334 m!580377))

(assert (=> b!603326 m!580373))

(assert (=> b!603326 m!580373))

(declare-fun m!580379 () Bool)

(assert (=> b!603326 m!580379))

(assert (=> b!603317 m!580373))

(assert (=> b!603317 m!580373))

(assert (=> b!603317 m!580379))

(assert (=> b!603328 m!580375))

(declare-fun m!580381 () Bool)

(assert (=> b!603328 m!580381))

(declare-fun m!580383 () Bool)

(assert (=> b!603330 m!580383))

(assert (=> b!603330 m!580373))

(assert (=> b!603330 m!580373))

(declare-fun m!580385 () Bool)

(assert (=> b!603330 m!580385))

(declare-fun m!580387 () Bool)

(assert (=> b!603314 m!580387))

(declare-fun m!580389 () Bool)

(assert (=> b!603319 m!580389))

(assert (=> b!603316 m!580373))

(declare-fun m!580391 () Bool)

(assert (=> b!603316 m!580391))

(assert (=> b!603316 m!580373))

(declare-fun m!580393 () Bool)

(assert (=> b!603316 m!580393))

(assert (=> b!603316 m!580373))

(declare-fun m!580395 () Bool)

(assert (=> b!603316 m!580395))

(declare-fun m!580397 () Bool)

(assert (=> b!603316 m!580397))

(declare-fun m!580399 () Bool)

(assert (=> b!603316 m!580399))

(declare-fun m!580401 () Bool)

(assert (=> b!603316 m!580401))

(assert (=> b!603316 m!580373))

(declare-fun m!580403 () Bool)

(assert (=> b!603316 m!580403))

(declare-fun m!580405 () Bool)

(assert (=> start!55134 m!580405))

(declare-fun m!580407 () Bool)

(assert (=> start!55134 m!580407))

(declare-fun m!580409 () Bool)

(assert (=> b!603318 m!580409))

(declare-fun m!580411 () Bool)

(assert (=> b!603318 m!580411))

(assert (=> b!603318 m!580373))

(assert (=> b!603318 m!580375))

(declare-fun m!580413 () Bool)

(assert (=> b!603318 m!580413))

(declare-fun m!580415 () Bool)

(assert (=> b!603318 m!580415))

(declare-fun m!580417 () Bool)

(assert (=> b!603318 m!580417))

(assert (=> b!603318 m!580373))

(declare-fun m!580419 () Bool)

(assert (=> b!603318 m!580419))

(assert (=> b!603323 m!580373))

(assert (=> b!603323 m!580373))

(declare-fun m!580421 () Bool)

(assert (=> b!603323 m!580421))

(declare-fun m!580423 () Bool)

(assert (=> b!603315 m!580423))

(declare-fun m!580425 () Bool)

(assert (=> b!603331 m!580425))

(assert (=> b!603321 m!580373))

(assert (=> b!603321 m!580373))

(declare-fun m!580427 () Bool)

(assert (=> b!603321 m!580427))

(assert (=> b!603333 m!580373))

(declare-fun m!580429 () Bool)

(assert (=> b!603327 m!580429))

(assert (=> b!603325 m!580373))

(assert (=> b!603325 m!580373))

(assert (=> b!603325 m!580421))

(push 1)

