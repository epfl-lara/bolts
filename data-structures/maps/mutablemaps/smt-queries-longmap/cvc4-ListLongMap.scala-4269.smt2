; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59374 () Bool)

(assert start!59374)

(declare-fun b!655242 () Bool)

(declare-fun e!376305 () Bool)

(declare-datatypes ((SeekEntryResult!6968 0))(
  ( (MissingZero!6968 (index!30230 (_ BitVec 32))) (Found!6968 (index!30231 (_ BitVec 32))) (Intermediate!6968 (undefined!7780 Bool) (index!30232 (_ BitVec 32)) (x!59042 (_ BitVec 32))) (Undefined!6968) (MissingVacant!6968 (index!30233 (_ BitVec 32))) )
))
(declare-fun lt!305648 () SeekEntryResult!6968)

(declare-fun lt!305657 () SeekEntryResult!6968)

(assert (=> b!655242 (= e!376305 (= lt!305648 lt!305657))))

(declare-fun b!655243 () Bool)

(declare-datatypes ((Unit!22524 0))(
  ( (Unit!22525) )
))
(declare-fun e!376313 () Unit!22524)

(declare-fun Unit!22526 () Unit!22524)

(assert (=> b!655243 (= e!376313 Unit!22526)))

(declare-fun b!655244 () Bool)

(declare-fun res!425157 () Bool)

(declare-fun e!376303 () Bool)

(assert (=> b!655244 (=> (not res!425157) (not e!376303))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38650 0))(
  ( (array!38651 (arr!18521 (Array (_ BitVec 32) (_ BitVec 64))) (size!18885 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38650)

(assert (=> b!655244 (= res!425157 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18521 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!655245 () Bool)

(assert (=> b!655245 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!305644 () array!38650)

(declare-fun lt!305659 () Unit!22524)

(declare-datatypes ((List!12615 0))(
  ( (Nil!12612) (Cons!12611 (h!13656 (_ BitVec 64)) (t!18851 List!12615)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38650 (_ BitVec 64) (_ BitVec 32) List!12615) Unit!22524)

(assert (=> b!655245 (= lt!305659 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305644 (select (arr!18521 a!2986) j!136) j!136 Nil!12612))))

(declare-fun arrayNoDuplicates!0 (array!38650 (_ BitVec 32) List!12615) Bool)

(assert (=> b!655245 (arrayNoDuplicates!0 lt!305644 j!136 Nil!12612)))

(declare-fun lt!305653 () Unit!22524)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38650 (_ BitVec 32) (_ BitVec 32)) Unit!22524)

(assert (=> b!655245 (= lt!305653 (lemmaNoDuplicateFromThenFromBigger!0 lt!305644 #b00000000000000000000000000000000 j!136))))

(assert (=> b!655245 (arrayNoDuplicates!0 lt!305644 #b00000000000000000000000000000000 Nil!12612)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!305660 () Unit!22524)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38650 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12615) Unit!22524)

(assert (=> b!655245 (= lt!305660 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12612))))

(declare-fun arrayContainsKey!0 (array!38650 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!655245 (arrayContainsKey!0 lt!305644 (select (arr!18521 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305647 () Unit!22524)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38650 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22524)

(assert (=> b!655245 (= lt!305647 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305644 (select (arr!18521 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22527 () Unit!22524)

(assert (=> b!655245 (= e!376313 Unit!22527)))

(declare-fun b!655246 () Bool)

(declare-fun e!376312 () Unit!22524)

(declare-fun Unit!22528 () Unit!22524)

(assert (=> b!655246 (= e!376312 Unit!22528)))

(assert (=> b!655246 false))

(declare-fun res!425151 () Bool)

(declare-fun e!376308 () Bool)

(assert (=> start!59374 (=> (not res!425151) (not e!376308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59374 (= res!425151 (validMask!0 mask!3053))))

(assert (=> start!59374 e!376308))

(assert (=> start!59374 true))

(declare-fun array_inv!14295 (array!38650) Bool)

(assert (=> start!59374 (array_inv!14295 a!2986)))

(declare-fun b!655247 () Bool)

(declare-fun res!425148 () Bool)

(assert (=> b!655247 (=> (not res!425148) (not e!376308))))

(assert (=> b!655247 (= res!425148 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!655248 () Bool)

(declare-fun e!376306 () Unit!22524)

(declare-fun Unit!22529 () Unit!22524)

(assert (=> b!655248 (= e!376306 Unit!22529)))

(declare-fun b!655249 () Bool)

(declare-fun e!376314 () Bool)

(assert (=> b!655249 (= e!376314 (not true))))

(declare-fun lt!305661 () Unit!22524)

(declare-fun e!376315 () Unit!22524)

(assert (=> b!655249 (= lt!305661 e!376315)))

(declare-fun c!75419 () Bool)

(declare-fun lt!305656 () SeekEntryResult!6968)

(assert (=> b!655249 (= c!75419 (= lt!305656 (Found!6968 index!984)))))

(declare-fun lt!305654 () Unit!22524)

(assert (=> b!655249 (= lt!305654 e!376312)))

(declare-fun c!75416 () Bool)

(assert (=> b!655249 (= c!75416 (= lt!305656 Undefined!6968))))

(declare-fun lt!305646 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38650 (_ BitVec 32)) SeekEntryResult!6968)

(assert (=> b!655249 (= lt!305656 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305646 lt!305644 mask!3053))))

(assert (=> b!655249 e!376305))

(declare-fun res!425150 () Bool)

(assert (=> b!655249 (=> (not res!425150) (not e!376305))))

(declare-fun lt!305651 () (_ BitVec 32))

(assert (=> b!655249 (= res!425150 (= lt!305657 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305651 vacantSpotIndex!68 lt!305646 lt!305644 mask!3053)))))

(assert (=> b!655249 (= lt!305657 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305651 vacantSpotIndex!68 (select (arr!18521 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!655249 (= lt!305646 (select (store (arr!18521 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!305645 () Unit!22524)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38650 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22524)

(assert (=> b!655249 (= lt!305645 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305651 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!655249 (= lt!305651 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!655250 () Bool)

(declare-fun res!425146 () Bool)

(assert (=> b!655250 (=> (not res!425146) (not e!376303))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38650 (_ BitVec 32)) Bool)

(assert (=> b!655250 (= res!425146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!655251 () Bool)

(declare-fun res!425149 () Bool)

(assert (=> b!655251 (=> (not res!425149) (not e!376308))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!655251 (= res!425149 (validKeyInArray!0 (select (arr!18521 a!2986) j!136)))))

(declare-fun e!376309 () Bool)

(declare-fun b!655252 () Bool)

(assert (=> b!655252 (= e!376309 (arrayContainsKey!0 lt!305644 (select (arr!18521 a!2986) j!136) index!984))))

(declare-fun b!655253 () Bool)

(assert (=> b!655253 (= e!376308 e!376303)))

(declare-fun res!425156 () Bool)

(assert (=> b!655253 (=> (not res!425156) (not e!376303))))

(declare-fun lt!305649 () SeekEntryResult!6968)

(assert (=> b!655253 (= res!425156 (or (= lt!305649 (MissingZero!6968 i!1108)) (= lt!305649 (MissingVacant!6968 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38650 (_ BitVec 32)) SeekEntryResult!6968)

(assert (=> b!655253 (= lt!305649 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!655254 () Bool)

(declare-fun res!425153 () Bool)

(assert (=> b!655254 (=> (not res!425153) (not e!376303))))

(assert (=> b!655254 (= res!425153 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12612))))

(declare-fun b!655255 () Bool)

(declare-fun res!425155 () Bool)

(assert (=> b!655255 (= res!425155 (arrayContainsKey!0 lt!305644 (select (arr!18521 a!2986) j!136) j!136))))

(declare-fun e!376310 () Bool)

(assert (=> b!655255 (=> (not res!425155) (not e!376310))))

(declare-fun e!376302 () Bool)

(assert (=> b!655255 (= e!376302 e!376310)))

(declare-fun b!655256 () Bool)

(declare-fun res!425158 () Bool)

(assert (=> b!655256 (=> (not res!425158) (not e!376308))))

(assert (=> b!655256 (= res!425158 (validKeyInArray!0 k!1786))))

(declare-fun b!655257 () Bool)

(declare-fun Unit!22530 () Unit!22524)

(assert (=> b!655257 (= e!376312 Unit!22530)))

(declare-fun b!655258 () Bool)

(declare-fun res!425144 () Bool)

(assert (=> b!655258 (= res!425144 (bvsge j!136 index!984))))

(assert (=> b!655258 (=> res!425144 e!376302)))

(declare-fun e!376304 () Bool)

(assert (=> b!655258 (= e!376304 e!376302)))

(declare-fun b!655259 () Bool)

(assert (=> b!655259 false))

(declare-fun lt!305642 () Unit!22524)

(assert (=> b!655259 (= lt!305642 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305644 (select (arr!18521 a!2986) j!136) index!984 Nil!12612))))

(assert (=> b!655259 (arrayNoDuplicates!0 lt!305644 index!984 Nil!12612)))

(declare-fun lt!305655 () Unit!22524)

(assert (=> b!655259 (= lt!305655 (lemmaNoDuplicateFromThenFromBigger!0 lt!305644 #b00000000000000000000000000000000 index!984))))

(assert (=> b!655259 (arrayNoDuplicates!0 lt!305644 #b00000000000000000000000000000000 Nil!12612)))

(declare-fun lt!305658 () Unit!22524)

(assert (=> b!655259 (= lt!305658 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12612))))

(assert (=> b!655259 (arrayContainsKey!0 lt!305644 (select (arr!18521 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305652 () Unit!22524)

(assert (=> b!655259 (= lt!305652 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305644 (select (arr!18521 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!655259 e!376309))

(declare-fun res!425152 () Bool)

(assert (=> b!655259 (=> (not res!425152) (not e!376309))))

(assert (=> b!655259 (= res!425152 (arrayContainsKey!0 lt!305644 (select (arr!18521 a!2986) j!136) j!136))))

(declare-fun Unit!22531 () Unit!22524)

(assert (=> b!655259 (= e!376306 Unit!22531)))

(declare-fun b!655260 () Bool)

(declare-fun res!425159 () Bool)

(assert (=> b!655260 (=> (not res!425159) (not e!376308))))

(assert (=> b!655260 (= res!425159 (and (= (size!18885 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18885 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18885 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!655261 () Bool)

(declare-fun Unit!22532 () Unit!22524)

(assert (=> b!655261 (= e!376315 Unit!22532)))

(declare-fun res!425145 () Bool)

(assert (=> b!655261 (= res!425145 (= (select (store (arr!18521 a!2986) i!1108 k!1786) index!984) (select (arr!18521 a!2986) j!136)))))

(assert (=> b!655261 (=> (not res!425145) (not e!376304))))

(assert (=> b!655261 e!376304))

(declare-fun c!75418 () Bool)

(assert (=> b!655261 (= c!75418 (bvslt j!136 index!984))))

(declare-fun lt!305650 () Unit!22524)

(assert (=> b!655261 (= lt!305650 e!376313)))

(declare-fun c!75417 () Bool)

(assert (=> b!655261 (= c!75417 (bvslt index!984 j!136))))

(declare-fun lt!305643 () Unit!22524)

(assert (=> b!655261 (= lt!305643 e!376306)))

(assert (=> b!655261 false))

(declare-fun b!655262 () Bool)

(assert (=> b!655262 (= e!376310 (arrayContainsKey!0 lt!305644 (select (arr!18521 a!2986) j!136) index!984))))

(declare-fun b!655263 () Bool)

(declare-fun e!376311 () Bool)

(assert (=> b!655263 (= e!376303 e!376311)))

(declare-fun res!425147 () Bool)

(assert (=> b!655263 (=> (not res!425147) (not e!376311))))

(assert (=> b!655263 (= res!425147 (= (select (store (arr!18521 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655263 (= lt!305644 (array!38651 (store (arr!18521 a!2986) i!1108 k!1786) (size!18885 a!2986)))))

(declare-fun b!655264 () Bool)

(assert (=> b!655264 (= e!376311 e!376314)))

(declare-fun res!425154 () Bool)

(assert (=> b!655264 (=> (not res!425154) (not e!376314))))

(assert (=> b!655264 (= res!425154 (and (= lt!305648 (Found!6968 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18521 a!2986) index!984) (select (arr!18521 a!2986) j!136))) (not (= (select (arr!18521 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!655264 (= lt!305648 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18521 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!655265 () Bool)

(declare-fun Unit!22533 () Unit!22524)

(assert (=> b!655265 (= e!376315 Unit!22533)))

(assert (= (and start!59374 res!425151) b!655260))

(assert (= (and b!655260 res!425159) b!655251))

(assert (= (and b!655251 res!425149) b!655256))

(assert (= (and b!655256 res!425158) b!655247))

(assert (= (and b!655247 res!425148) b!655253))

(assert (= (and b!655253 res!425156) b!655250))

(assert (= (and b!655250 res!425146) b!655254))

(assert (= (and b!655254 res!425153) b!655244))

(assert (= (and b!655244 res!425157) b!655263))

(assert (= (and b!655263 res!425147) b!655264))

(assert (= (and b!655264 res!425154) b!655249))

(assert (= (and b!655249 res!425150) b!655242))

(assert (= (and b!655249 c!75416) b!655246))

(assert (= (and b!655249 (not c!75416)) b!655257))

(assert (= (and b!655249 c!75419) b!655261))

(assert (= (and b!655249 (not c!75419)) b!655265))

(assert (= (and b!655261 res!425145) b!655258))

(assert (= (and b!655258 (not res!425144)) b!655255))

(assert (= (and b!655255 res!425155) b!655262))

(assert (= (and b!655261 c!75418) b!655245))

(assert (= (and b!655261 (not c!75418)) b!655243))

(assert (= (and b!655261 c!75417) b!655259))

(assert (= (and b!655261 (not c!75417)) b!655248))

(assert (= (and b!655259 res!425152) b!655252))

(declare-fun m!628391 () Bool)

(assert (=> b!655264 m!628391))

(declare-fun m!628393 () Bool)

(assert (=> b!655264 m!628393))

(assert (=> b!655264 m!628393))

(declare-fun m!628395 () Bool)

(assert (=> b!655264 m!628395))

(declare-fun m!628397 () Bool)

(assert (=> b!655256 m!628397))

(declare-fun m!628399 () Bool)

(assert (=> b!655261 m!628399))

(declare-fun m!628401 () Bool)

(assert (=> b!655261 m!628401))

(assert (=> b!655261 m!628393))

(declare-fun m!628403 () Bool)

(assert (=> b!655250 m!628403))

(assert (=> b!655259 m!628393))

(declare-fun m!628405 () Bool)

(assert (=> b!655259 m!628405))

(assert (=> b!655259 m!628393))

(declare-fun m!628407 () Bool)

(assert (=> b!655259 m!628407))

(assert (=> b!655259 m!628393))

(declare-fun m!628409 () Bool)

(assert (=> b!655259 m!628409))

(assert (=> b!655259 m!628393))

(declare-fun m!628411 () Bool)

(assert (=> b!655259 m!628411))

(declare-fun m!628413 () Bool)

(assert (=> b!655259 m!628413))

(assert (=> b!655259 m!628393))

(declare-fun m!628415 () Bool)

(assert (=> b!655259 m!628415))

(declare-fun m!628417 () Bool)

(assert (=> b!655259 m!628417))

(declare-fun m!628419 () Bool)

(assert (=> b!655259 m!628419))

(assert (=> b!655252 m!628393))

(assert (=> b!655252 m!628393))

(declare-fun m!628421 () Bool)

(assert (=> b!655252 m!628421))

(declare-fun m!628423 () Bool)

(assert (=> b!655253 m!628423))

(declare-fun m!628425 () Bool)

(assert (=> b!655249 m!628425))

(declare-fun m!628427 () Bool)

(assert (=> b!655249 m!628427))

(declare-fun m!628429 () Bool)

(assert (=> b!655249 m!628429))

(assert (=> b!655249 m!628393))

(declare-fun m!628431 () Bool)

(assert (=> b!655249 m!628431))

(assert (=> b!655249 m!628393))

(declare-fun m!628433 () Bool)

(assert (=> b!655249 m!628433))

(declare-fun m!628435 () Bool)

(assert (=> b!655249 m!628435))

(assert (=> b!655249 m!628399))

(declare-fun m!628437 () Bool)

(assert (=> b!655247 m!628437))

(declare-fun m!628439 () Bool)

(assert (=> b!655254 m!628439))

(assert (=> b!655255 m!628393))

(assert (=> b!655255 m!628393))

(assert (=> b!655255 m!628411))

(declare-fun m!628441 () Bool)

(assert (=> b!655245 m!628441))

(assert (=> b!655245 m!628393))

(assert (=> b!655245 m!628393))

(declare-fun m!628443 () Bool)

(assert (=> b!655245 m!628443))

(assert (=> b!655245 m!628413))

(assert (=> b!655245 m!628393))

(declare-fun m!628445 () Bool)

(assert (=> b!655245 m!628445))

(assert (=> b!655245 m!628419))

(declare-fun m!628447 () Bool)

(assert (=> b!655245 m!628447))

(assert (=> b!655245 m!628393))

(declare-fun m!628449 () Bool)

(assert (=> b!655245 m!628449))

(assert (=> b!655262 m!628393))

(assert (=> b!655262 m!628393))

(assert (=> b!655262 m!628421))

(declare-fun m!628451 () Bool)

(assert (=> b!655244 m!628451))

(assert (=> b!655251 m!628393))

(assert (=> b!655251 m!628393))

(declare-fun m!628453 () Bool)

(assert (=> b!655251 m!628453))

(declare-fun m!628455 () Bool)

(assert (=> start!59374 m!628455))

(declare-fun m!628457 () Bool)

(assert (=> start!59374 m!628457))

(assert (=> b!655263 m!628399))

(declare-fun m!628459 () Bool)

(assert (=> b!655263 m!628459))

(push 1)

