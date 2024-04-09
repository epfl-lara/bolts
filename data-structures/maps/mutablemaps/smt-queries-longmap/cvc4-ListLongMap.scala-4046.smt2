; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55162 () Bool)

(assert start!55162)

(declare-fun b!604279 () Bool)

(declare-fun res!388385 () Bool)

(declare-fun e!345781 () Bool)

(assert (=> b!604279 (=> (not res!388385) (not e!345781))))

(declare-datatypes ((array!37198 0))(
  ( (array!37199 (arr!17852 (Array (_ BitVec 32) (_ BitVec 64))) (size!18216 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37198)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37198 (_ BitVec 32)) Bool)

(assert (=> b!604279 (= res!388385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!604280 () Bool)

(declare-datatypes ((Unit!19222 0))(
  ( (Unit!19223) )
))
(declare-fun e!345782 () Unit!19222)

(declare-fun Unit!19224 () Unit!19222)

(assert (=> b!604280 (= e!345782 Unit!19224)))

(declare-fun lt!275653 () array!37198)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!604281 () Bool)

(declare-fun e!345771 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37198 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!604281 (= e!345771 (arrayContainsKey!0 lt!275653 (select (arr!17852 a!2986) j!136) index!984))))

(declare-fun b!604282 () Bool)

(declare-fun e!345772 () Unit!19222)

(declare-fun Unit!19225 () Unit!19222)

(assert (=> b!604282 (= e!345772 Unit!19225)))

(declare-fun lt!275651 () Unit!19222)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37198 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19222)

(assert (=> b!604282 (= lt!275651 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275653 (select (arr!17852 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!604282 (arrayContainsKey!0 lt!275653 (select (arr!17852 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!275650 () Unit!19222)

(declare-datatypes ((List!11946 0))(
  ( (Nil!11943) (Cons!11942 (h!12987 (_ BitVec 64)) (t!18182 List!11946)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37198 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11946) Unit!19222)

(assert (=> b!604282 (= lt!275650 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11943))))

(declare-fun arrayNoDuplicates!0 (array!37198 (_ BitVec 32) List!11946) Bool)

(assert (=> b!604282 (arrayNoDuplicates!0 lt!275653 #b00000000000000000000000000000000 Nil!11943)))

(declare-fun lt!275661 () Unit!19222)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37198 (_ BitVec 32) (_ BitVec 32)) Unit!19222)

(assert (=> b!604282 (= lt!275661 (lemmaNoDuplicateFromThenFromBigger!0 lt!275653 #b00000000000000000000000000000000 j!136))))

(assert (=> b!604282 (arrayNoDuplicates!0 lt!275653 j!136 Nil!11943)))

(declare-fun lt!275660 () Unit!19222)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37198 (_ BitVec 64) (_ BitVec 32) List!11946) Unit!19222)

(assert (=> b!604282 (= lt!275660 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275653 (select (arr!17852 a!2986) j!136) j!136 Nil!11943))))

(assert (=> b!604282 false))

(declare-fun b!604283 () Bool)

(declare-fun e!345778 () Bool)

(declare-fun e!345775 () Bool)

(assert (=> b!604283 (= e!345778 e!345775)))

(declare-fun res!388382 () Bool)

(assert (=> b!604283 (=> res!388382 e!345775)))

(assert (=> b!604283 (= res!388382 (bvsge index!984 j!136))))

(declare-fun lt!275658 () Unit!19222)

(assert (=> b!604283 (= lt!275658 e!345772)))

(declare-fun c!68323 () Bool)

(assert (=> b!604283 (= c!68323 (bvslt j!136 index!984))))

(declare-fun res!388384 () Bool)

(declare-fun e!345783 () Bool)

(assert (=> start!55162 (=> (not res!388384) (not e!345783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55162 (= res!388384 (validMask!0 mask!3053))))

(assert (=> start!55162 e!345783))

(assert (=> start!55162 true))

(declare-fun array_inv!13626 (array!37198) Bool)

(assert (=> start!55162 (array_inv!13626 a!2986)))

(declare-fun b!604284 () Bool)

(declare-fun res!388376 () Bool)

(assert (=> b!604284 (=> (not res!388376) (not e!345783))))

(assert (=> b!604284 (= res!388376 (and (= (size!18216 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18216 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18216 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!604285 () Bool)

(declare-fun e!345770 () Bool)

(assert (=> b!604285 (= e!345770 e!345771)))

(declare-fun res!388368 () Bool)

(assert (=> b!604285 (=> (not res!388368) (not e!345771))))

(assert (=> b!604285 (= res!388368 (arrayContainsKey!0 lt!275653 (select (arr!17852 a!2986) j!136) j!136))))

(declare-fun b!604286 () Bool)

(declare-fun res!388370 () Bool)

(assert (=> b!604286 (=> (not res!388370) (not e!345781))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!604286 (= res!388370 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17852 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!604287 () Bool)

(declare-fun e!345779 () Bool)

(declare-fun e!345774 () Bool)

(assert (=> b!604287 (= e!345779 (not e!345774))))

(declare-fun res!388381 () Bool)

(assert (=> b!604287 (=> res!388381 e!345774)))

(declare-datatypes ((SeekEntryResult!6299 0))(
  ( (MissingZero!6299 (index!27458 (_ BitVec 32))) (Found!6299 (index!27459 (_ BitVec 32))) (Intermediate!6299 (undefined!7111 Bool) (index!27460 (_ BitVec 32)) (x!56277 (_ BitVec 32))) (Undefined!6299) (MissingVacant!6299 (index!27461 (_ BitVec 32))) )
))
(declare-fun lt!275652 () SeekEntryResult!6299)

(assert (=> b!604287 (= res!388381 (not (= lt!275652 (Found!6299 index!984))))))

(declare-fun lt!275649 () Unit!19222)

(assert (=> b!604287 (= lt!275649 e!345782)))

(declare-fun c!68324 () Bool)

(assert (=> b!604287 (= c!68324 (= lt!275652 Undefined!6299))))

(declare-fun lt!275655 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37198 (_ BitVec 32)) SeekEntryResult!6299)

(assert (=> b!604287 (= lt!275652 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275655 lt!275653 mask!3053))))

(declare-fun e!345777 () Bool)

(assert (=> b!604287 e!345777))

(declare-fun res!388373 () Bool)

(assert (=> b!604287 (=> (not res!388373) (not e!345777))))

(declare-fun lt!275656 () (_ BitVec 32))

(declare-fun lt!275664 () SeekEntryResult!6299)

(assert (=> b!604287 (= res!388373 (= lt!275664 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275656 vacantSpotIndex!68 lt!275655 lt!275653 mask!3053)))))

(assert (=> b!604287 (= lt!275664 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275656 vacantSpotIndex!68 (select (arr!17852 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!604287 (= lt!275655 (select (store (arr!17852 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!275663 () Unit!19222)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37198 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19222)

(assert (=> b!604287 (= lt!275663 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275656 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!604287 (= lt!275656 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!604288 () Bool)

(declare-fun e!345780 () Bool)

(assert (=> b!604288 (= e!345780 e!345770)))

(declare-fun res!388371 () Bool)

(assert (=> b!604288 (=> res!388371 e!345770)))

(declare-fun lt!275654 () (_ BitVec 64))

(assert (=> b!604288 (= res!388371 (or (not (= (select (arr!17852 a!2986) j!136) lt!275655)) (not (= (select (arr!17852 a!2986) j!136) lt!275654)) (bvsge j!136 index!984)))))

(declare-fun b!604289 () Bool)

(declare-fun Unit!19226 () Unit!19222)

(assert (=> b!604289 (= e!345772 Unit!19226)))

(declare-fun e!345773 () Bool)

(declare-fun b!604290 () Bool)

(assert (=> b!604290 (= e!345773 (arrayContainsKey!0 lt!275653 (select (arr!17852 a!2986) j!136) index!984))))

(declare-fun b!604291 () Bool)

(declare-fun Unit!19227 () Unit!19222)

(assert (=> b!604291 (= e!345782 Unit!19227)))

(assert (=> b!604291 false))

(declare-fun b!604292 () Bool)

(declare-fun res!388379 () Bool)

(assert (=> b!604292 (=> (not res!388379) (not e!345783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!604292 (= res!388379 (validKeyInArray!0 k!1786))))

(declare-fun b!604293 () Bool)

(assert (=> b!604293 (= e!345783 e!345781)))

(declare-fun res!388380 () Bool)

(assert (=> b!604293 (=> (not res!388380) (not e!345781))))

(declare-fun lt!275662 () SeekEntryResult!6299)

(assert (=> b!604293 (= res!388380 (or (= lt!275662 (MissingZero!6299 i!1108)) (= lt!275662 (MissingVacant!6299 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37198 (_ BitVec 32)) SeekEntryResult!6299)

(assert (=> b!604293 (= lt!275662 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!604294 () Bool)

(declare-fun res!388374 () Bool)

(assert (=> b!604294 (=> (not res!388374) (not e!345783))))

(assert (=> b!604294 (= res!388374 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!604295 () Bool)

(assert (=> b!604295 (= e!345775 (or (bvslt (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 index!984) (size!18216 a!2986))))))

(assert (=> b!604295 (arrayContainsKey!0 lt!275653 (select (arr!17852 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!275657 () Unit!19222)

(assert (=> b!604295 (= lt!275657 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275653 (select (arr!17852 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!604295 e!345773))

(declare-fun res!388372 () Bool)

(assert (=> b!604295 (=> (not res!388372) (not e!345773))))

(assert (=> b!604295 (= res!388372 (arrayContainsKey!0 lt!275653 (select (arr!17852 a!2986) j!136) j!136))))

(declare-fun b!604296 () Bool)

(declare-fun e!345776 () Bool)

(assert (=> b!604296 (= e!345781 e!345776)))

(declare-fun res!388369 () Bool)

(assert (=> b!604296 (=> (not res!388369) (not e!345776))))

(assert (=> b!604296 (= res!388369 (= (select (store (arr!17852 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604296 (= lt!275653 (array!37199 (store (arr!17852 a!2986) i!1108 k!1786) (size!18216 a!2986)))))

(declare-fun b!604297 () Bool)

(assert (=> b!604297 (= e!345776 e!345779)))

(declare-fun res!388375 () Bool)

(assert (=> b!604297 (=> (not res!388375) (not e!345779))))

(declare-fun lt!275659 () SeekEntryResult!6299)

(assert (=> b!604297 (= res!388375 (and (= lt!275659 (Found!6299 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17852 a!2986) index!984) (select (arr!17852 a!2986) j!136))) (not (= (select (arr!17852 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!604297 (= lt!275659 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17852 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!604298 () Bool)

(declare-fun res!388383 () Bool)

(assert (=> b!604298 (=> (not res!388383) (not e!345783))))

(assert (=> b!604298 (= res!388383 (validKeyInArray!0 (select (arr!17852 a!2986) j!136)))))

(declare-fun b!604299 () Bool)

(assert (=> b!604299 (= e!345774 e!345778)))

(declare-fun res!388378 () Bool)

(assert (=> b!604299 (=> res!388378 e!345778)))

(assert (=> b!604299 (= res!388378 (or (not (= (select (arr!17852 a!2986) j!136) lt!275655)) (not (= (select (arr!17852 a!2986) j!136) lt!275654))))))

(assert (=> b!604299 e!345780))

(declare-fun res!388367 () Bool)

(assert (=> b!604299 (=> (not res!388367) (not e!345780))))

(assert (=> b!604299 (= res!388367 (= lt!275654 (select (arr!17852 a!2986) j!136)))))

(assert (=> b!604299 (= lt!275654 (select (store (arr!17852 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!604300 () Bool)

(declare-fun res!388377 () Bool)

(assert (=> b!604300 (=> (not res!388377) (not e!345781))))

(assert (=> b!604300 (= res!388377 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11943))))

(declare-fun b!604301 () Bool)

(assert (=> b!604301 (= e!345777 (= lt!275659 lt!275664))))

(assert (= (and start!55162 res!388384) b!604284))

(assert (= (and b!604284 res!388376) b!604298))

(assert (= (and b!604298 res!388383) b!604292))

(assert (= (and b!604292 res!388379) b!604294))

(assert (= (and b!604294 res!388374) b!604293))

(assert (= (and b!604293 res!388380) b!604279))

(assert (= (and b!604279 res!388385) b!604300))

(assert (= (and b!604300 res!388377) b!604286))

(assert (= (and b!604286 res!388370) b!604296))

(assert (= (and b!604296 res!388369) b!604297))

(assert (= (and b!604297 res!388375) b!604287))

(assert (= (and b!604287 res!388373) b!604301))

(assert (= (and b!604287 c!68324) b!604291))

(assert (= (and b!604287 (not c!68324)) b!604280))

(assert (= (and b!604287 (not res!388381)) b!604299))

(assert (= (and b!604299 res!388367) b!604288))

(assert (= (and b!604288 (not res!388371)) b!604285))

(assert (= (and b!604285 res!388368) b!604281))

(assert (= (and b!604299 (not res!388378)) b!604283))

(assert (= (and b!604283 c!68323) b!604282))

(assert (= (and b!604283 (not c!68323)) b!604289))

(assert (= (and b!604283 (not res!388382)) b!604295))

(assert (= (and b!604295 res!388372) b!604290))

(declare-fun m!581231 () Bool)

(assert (=> start!55162 m!581231))

(declare-fun m!581233 () Bool)

(assert (=> start!55162 m!581233))

(declare-fun m!581235 () Bool)

(assert (=> b!604279 m!581235))

(declare-fun m!581237 () Bool)

(assert (=> b!604287 m!581237))

(declare-fun m!581239 () Bool)

(assert (=> b!604287 m!581239))

(declare-fun m!581241 () Bool)

(assert (=> b!604287 m!581241))

(declare-fun m!581243 () Bool)

(assert (=> b!604287 m!581243))

(declare-fun m!581245 () Bool)

(assert (=> b!604287 m!581245))

(assert (=> b!604287 m!581239))

(declare-fun m!581247 () Bool)

(assert (=> b!604287 m!581247))

(declare-fun m!581249 () Bool)

(assert (=> b!604287 m!581249))

(declare-fun m!581251 () Bool)

(assert (=> b!604287 m!581251))

(assert (=> b!604295 m!581239))

(assert (=> b!604295 m!581239))

(declare-fun m!581253 () Bool)

(assert (=> b!604295 m!581253))

(assert (=> b!604295 m!581239))

(declare-fun m!581255 () Bool)

(assert (=> b!604295 m!581255))

(assert (=> b!604295 m!581239))

(declare-fun m!581257 () Bool)

(assert (=> b!604295 m!581257))

(declare-fun m!581259 () Bool)

(assert (=> b!604297 m!581259))

(assert (=> b!604297 m!581239))

(assert (=> b!604297 m!581239))

(declare-fun m!581261 () Bool)

(assert (=> b!604297 m!581261))

(declare-fun m!581263 () Bool)

(assert (=> b!604294 m!581263))

(assert (=> b!604281 m!581239))

(assert (=> b!604281 m!581239))

(declare-fun m!581265 () Bool)

(assert (=> b!604281 m!581265))

(assert (=> b!604282 m!581239))

(declare-fun m!581267 () Bool)

(assert (=> b!604282 m!581267))

(assert (=> b!604282 m!581239))

(assert (=> b!604282 m!581239))

(declare-fun m!581269 () Bool)

(assert (=> b!604282 m!581269))

(declare-fun m!581271 () Bool)

(assert (=> b!604282 m!581271))

(declare-fun m!581273 () Bool)

(assert (=> b!604282 m!581273))

(declare-fun m!581275 () Bool)

(assert (=> b!604282 m!581275))

(assert (=> b!604282 m!581239))

(declare-fun m!581277 () Bool)

(assert (=> b!604282 m!581277))

(declare-fun m!581279 () Bool)

(assert (=> b!604282 m!581279))

(assert (=> b!604298 m!581239))

(assert (=> b!604298 m!581239))

(declare-fun m!581281 () Bool)

(assert (=> b!604298 m!581281))

(assert (=> b!604296 m!581243))

(declare-fun m!581283 () Bool)

(assert (=> b!604296 m!581283))

(assert (=> b!604290 m!581239))

(assert (=> b!604290 m!581239))

(assert (=> b!604290 m!581265))

(declare-fun m!581285 () Bool)

(assert (=> b!604286 m!581285))

(declare-fun m!581287 () Bool)

(assert (=> b!604300 m!581287))

(assert (=> b!604285 m!581239))

(assert (=> b!604285 m!581239))

(assert (=> b!604285 m!581257))

(declare-fun m!581289 () Bool)

(assert (=> b!604292 m!581289))

(assert (=> b!604299 m!581239))

(assert (=> b!604299 m!581243))

(declare-fun m!581291 () Bool)

(assert (=> b!604299 m!581291))

(declare-fun m!581293 () Bool)

(assert (=> b!604293 m!581293))

(assert (=> b!604288 m!581239))

(push 1)

(assert (not b!604298))

(assert (not b!604294))

(assert (not b!604285))

(assert (not b!604292))

(assert (not b!604293))

(assert (not b!604290))

(assert (not b!604295))

(assert (not b!604300))

(assert (not b!604297))

(assert (not b!604281))

(assert (not b!604282))

(assert (not b!604287))

(assert (not start!55162))

(assert (not b!604279))

(check-sat)

(pop 1)

(push 1)

(check-sat)

