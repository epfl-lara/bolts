; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59346 () Bool)

(assert start!59346)

(declare-fun b!654234 () Bool)

(declare-fun e!375706 () Bool)

(assert (=> b!654234 (= e!375706 false)))

(declare-datatypes ((Unit!22396 0))(
  ( (Unit!22397) )
))
(declare-fun lt!304808 () Unit!22396)

(declare-fun e!375699 () Unit!22396)

(assert (=> b!654234 (= lt!304808 e!375699)))

(declare-fun c!75264 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!654234 (= c!75264 (bvslt index!984 j!136))))

(declare-fun lt!304809 () Unit!22396)

(declare-fun e!375711 () Unit!22396)

(assert (=> b!654234 (= lt!304809 e!375711)))

(declare-fun c!75265 () Bool)

(assert (=> b!654234 (= c!75265 (bvslt j!136 index!984))))

(declare-fun b!654235 () Bool)

(declare-fun res!424444 () Bool)

(declare-fun e!375702 () Bool)

(assert (=> b!654235 (=> (not res!424444) (not e!375702))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38622 0))(
  ( (array!38623 (arr!18507 (Array (_ BitVec 32) (_ BitVec 64))) (size!18871 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38622)

(assert (=> b!654235 (= res!424444 (and (= (size!18871 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18871 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18871 a!2986)) (not (= i!1108 j!136))))))

(declare-fun lt!304813 () array!38622)

(declare-fun e!375704 () Bool)

(declare-fun b!654236 () Bool)

(declare-fun arrayContainsKey!0 (array!38622 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!654236 (= e!375704 (arrayContainsKey!0 lt!304813 (select (arr!18507 a!2986) j!136) index!984))))

(declare-fun b!654237 () Bool)

(declare-fun e!375709 () Bool)

(declare-datatypes ((SeekEntryResult!6954 0))(
  ( (MissingZero!6954 (index!30174 (_ BitVec 32))) (Found!6954 (index!30175 (_ BitVec 32))) (Intermediate!6954 (undefined!7766 Bool) (index!30176 (_ BitVec 32)) (x!58996 (_ BitVec 32))) (Undefined!6954) (MissingVacant!6954 (index!30177 (_ BitVec 32))) )
))
(declare-fun lt!304810 () SeekEntryResult!6954)

(declare-fun lt!304811 () SeekEntryResult!6954)

(assert (=> b!654237 (= e!375709 (= lt!304810 lt!304811))))

(declare-fun b!654238 () Bool)

(declare-fun Unit!22398 () Unit!22396)

(assert (=> b!654238 (= e!375699 Unit!22398)))

(declare-fun res!424442 () Bool)

(assert (=> b!654238 (= res!424442 (arrayContainsKey!0 lt!304813 (select (arr!18507 a!2986) j!136) j!136))))

(declare-fun e!375707 () Bool)

(assert (=> b!654238 (=> (not res!424442) (not e!375707))))

(assert (=> b!654238 e!375707))

(declare-fun lt!304816 () Unit!22396)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38622 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22396)

(assert (=> b!654238 (= lt!304816 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304813 (select (arr!18507 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!654238 (arrayContainsKey!0 lt!304813 (select (arr!18507 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!304821 () Unit!22396)

(declare-datatypes ((List!12601 0))(
  ( (Nil!12598) (Cons!12597 (h!13642 (_ BitVec 64)) (t!18837 List!12601)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38622 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12601) Unit!22396)

(assert (=> b!654238 (= lt!304821 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12598))))

(declare-fun arrayNoDuplicates!0 (array!38622 (_ BitVec 32) List!12601) Bool)

(assert (=> b!654238 (arrayNoDuplicates!0 lt!304813 #b00000000000000000000000000000000 Nil!12598)))

(declare-fun lt!304820 () Unit!22396)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38622 (_ BitVec 32) (_ BitVec 32)) Unit!22396)

(assert (=> b!654238 (= lt!304820 (lemmaNoDuplicateFromThenFromBigger!0 lt!304813 #b00000000000000000000000000000000 index!984))))

(assert (=> b!654238 (arrayNoDuplicates!0 lt!304813 index!984 Nil!12598)))

(declare-fun lt!304802 () Unit!22396)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38622 (_ BitVec 64) (_ BitVec 32) List!12601) Unit!22396)

(assert (=> b!654238 (= lt!304802 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304813 (select (arr!18507 a!2986) j!136) index!984 Nil!12598))))

(assert (=> b!654238 false))

(declare-fun b!654239 () Bool)

(declare-fun e!375710 () Unit!22396)

(declare-fun Unit!22399 () Unit!22396)

(assert (=> b!654239 (= e!375710 Unit!22399)))

(assert (=> b!654239 false))

(declare-fun b!654241 () Bool)

(declare-fun e!375698 () Bool)

(declare-fun e!375703 () Bool)

(assert (=> b!654241 (= e!375698 e!375703)))

(declare-fun res!424455 () Bool)

(assert (=> b!654241 (=> res!424455 e!375703)))

(declare-fun lt!304805 () (_ BitVec 64))

(declare-fun lt!304818 () (_ BitVec 64))

(assert (=> b!654241 (= res!424455 (or (not (= (select (arr!18507 a!2986) j!136) lt!304818)) (not (= (select (arr!18507 a!2986) j!136) lt!304805)) (bvsge j!136 index!984)))))

(declare-fun b!654242 () Bool)

(declare-fun res!424441 () Bool)

(declare-fun e!375705 () Bool)

(assert (=> b!654242 (=> (not res!424441) (not e!375705))))

(assert (=> b!654242 (= res!424441 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12598))))

(declare-fun b!654243 () Bool)

(declare-fun e!375701 () Bool)

(assert (=> b!654243 (= e!375705 e!375701)))

(declare-fun res!424446 () Bool)

(assert (=> b!654243 (=> (not res!424446) (not e!375701))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!654243 (= res!424446 (= (select (store (arr!18507 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!654243 (= lt!304813 (array!38623 (store (arr!18507 a!2986) i!1108 k!1786) (size!18871 a!2986)))))

(declare-fun b!654244 () Bool)

(declare-fun Unit!22400 () Unit!22396)

(assert (=> b!654244 (= e!375711 Unit!22400)))

(declare-fun lt!304807 () Unit!22396)

(assert (=> b!654244 (= lt!304807 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304813 (select (arr!18507 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!654244 (arrayContainsKey!0 lt!304813 (select (arr!18507 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!304817 () Unit!22396)

(assert (=> b!654244 (= lt!304817 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12598))))

(assert (=> b!654244 (arrayNoDuplicates!0 lt!304813 #b00000000000000000000000000000000 Nil!12598)))

(declare-fun lt!304803 () Unit!22396)

(assert (=> b!654244 (= lt!304803 (lemmaNoDuplicateFromThenFromBigger!0 lt!304813 #b00000000000000000000000000000000 j!136))))

(assert (=> b!654244 (arrayNoDuplicates!0 lt!304813 j!136 Nil!12598)))

(declare-fun lt!304815 () Unit!22396)

(assert (=> b!654244 (= lt!304815 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304813 (select (arr!18507 a!2986) j!136) j!136 Nil!12598))))

(assert (=> b!654244 false))

(declare-fun b!654245 () Bool)

(declare-fun e!375708 () Bool)

(declare-fun e!375700 () Bool)

(assert (=> b!654245 (= e!375708 (not e!375700))))

(declare-fun res!424450 () Bool)

(assert (=> b!654245 (=> res!424450 e!375700)))

(declare-fun lt!304812 () SeekEntryResult!6954)

(assert (=> b!654245 (= res!424450 (not (= lt!304812 (Found!6954 index!984))))))

(declare-fun lt!304804 () Unit!22396)

(assert (=> b!654245 (= lt!304804 e!375710)))

(declare-fun c!75266 () Bool)

(assert (=> b!654245 (= c!75266 (= lt!304812 Undefined!6954))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38622 (_ BitVec 32)) SeekEntryResult!6954)

(assert (=> b!654245 (= lt!304812 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!304818 lt!304813 mask!3053))))

(assert (=> b!654245 e!375709))

(declare-fun res!424452 () Bool)

(assert (=> b!654245 (=> (not res!424452) (not e!375709))))

(declare-fun lt!304819 () (_ BitVec 32))

(assert (=> b!654245 (= res!424452 (= lt!304811 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304819 vacantSpotIndex!68 lt!304818 lt!304813 mask!3053)))))

(assert (=> b!654245 (= lt!304811 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304819 vacantSpotIndex!68 (select (arr!18507 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!654245 (= lt!304818 (select (store (arr!18507 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!304814 () Unit!22396)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38622 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22396)

(assert (=> b!654245 (= lt!304814 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!304819 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!654245 (= lt!304819 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!654246 () Bool)

(assert (=> b!654246 (= e!375703 e!375704)))

(declare-fun res!424448 () Bool)

(assert (=> b!654246 (=> (not res!424448) (not e!375704))))

(assert (=> b!654246 (= res!424448 (arrayContainsKey!0 lt!304813 (select (arr!18507 a!2986) j!136) j!136))))

(declare-fun b!654247 () Bool)

(assert (=> b!654247 (= e!375702 e!375705)))

(declare-fun res!424456 () Bool)

(assert (=> b!654247 (=> (not res!424456) (not e!375705))))

(declare-fun lt!304806 () SeekEntryResult!6954)

(assert (=> b!654247 (= res!424456 (or (= lt!304806 (MissingZero!6954 i!1108)) (= lt!304806 (MissingVacant!6954 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38622 (_ BitVec 32)) SeekEntryResult!6954)

(assert (=> b!654247 (= lt!304806 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!654248 () Bool)

(declare-fun res!424443 () Bool)

(assert (=> b!654248 (=> (not res!424443) (not e!375705))))

(assert (=> b!654248 (= res!424443 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18507 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!654249 () Bool)

(declare-fun Unit!22401 () Unit!22396)

(assert (=> b!654249 (= e!375710 Unit!22401)))

(declare-fun res!424457 () Bool)

(assert (=> start!59346 (=> (not res!424457) (not e!375702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59346 (= res!424457 (validMask!0 mask!3053))))

(assert (=> start!59346 e!375702))

(assert (=> start!59346 true))

(declare-fun array_inv!14281 (array!38622) Bool)

(assert (=> start!59346 (array_inv!14281 a!2986)))

(declare-fun b!654240 () Bool)

(assert (=> b!654240 (= e!375701 e!375708)))

(declare-fun res!424454 () Bool)

(assert (=> b!654240 (=> (not res!424454) (not e!375708))))

(assert (=> b!654240 (= res!424454 (and (= lt!304810 (Found!6954 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18507 a!2986) index!984) (select (arr!18507 a!2986) j!136))) (not (= (select (arr!18507 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!654240 (= lt!304810 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18507 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!654250 () Bool)

(assert (=> b!654250 (= e!375707 (arrayContainsKey!0 lt!304813 (select (arr!18507 a!2986) j!136) index!984))))

(declare-fun b!654251 () Bool)

(declare-fun Unit!22402 () Unit!22396)

(assert (=> b!654251 (= e!375699 Unit!22402)))

(declare-fun b!654252 () Bool)

(declare-fun res!424445 () Bool)

(assert (=> b!654252 (=> (not res!424445) (not e!375702))))

(assert (=> b!654252 (= res!424445 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!654253 () Bool)

(declare-fun res!424447 () Bool)

(assert (=> b!654253 (=> (not res!424447) (not e!375702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!654253 (= res!424447 (validKeyInArray!0 (select (arr!18507 a!2986) j!136)))))

(declare-fun b!654254 () Bool)

(declare-fun res!424440 () Bool)

(assert (=> b!654254 (=> (not res!424440) (not e!375702))))

(assert (=> b!654254 (= res!424440 (validKeyInArray!0 k!1786))))

(declare-fun b!654255 () Bool)

(declare-fun Unit!22403 () Unit!22396)

(assert (=> b!654255 (= e!375711 Unit!22403)))

(declare-fun b!654256 () Bool)

(assert (=> b!654256 (= e!375700 e!375706)))

(declare-fun res!424453 () Bool)

(assert (=> b!654256 (=> res!424453 e!375706)))

(assert (=> b!654256 (= res!424453 (or (not (= (select (arr!18507 a!2986) j!136) lt!304818)) (not (= (select (arr!18507 a!2986) j!136) lt!304805))))))

(assert (=> b!654256 e!375698))

(declare-fun res!424451 () Bool)

(assert (=> b!654256 (=> (not res!424451) (not e!375698))))

(assert (=> b!654256 (= res!424451 (= lt!304805 (select (arr!18507 a!2986) j!136)))))

(assert (=> b!654256 (= lt!304805 (select (store (arr!18507 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!654257 () Bool)

(declare-fun res!424449 () Bool)

(assert (=> b!654257 (=> (not res!424449) (not e!375705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38622 (_ BitVec 32)) Bool)

(assert (=> b!654257 (= res!424449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!59346 res!424457) b!654235))

(assert (= (and b!654235 res!424444) b!654253))

(assert (= (and b!654253 res!424447) b!654254))

(assert (= (and b!654254 res!424440) b!654252))

(assert (= (and b!654252 res!424445) b!654247))

(assert (= (and b!654247 res!424456) b!654257))

(assert (= (and b!654257 res!424449) b!654242))

(assert (= (and b!654242 res!424441) b!654248))

(assert (= (and b!654248 res!424443) b!654243))

(assert (= (and b!654243 res!424446) b!654240))

(assert (= (and b!654240 res!424454) b!654245))

(assert (= (and b!654245 res!424452) b!654237))

(assert (= (and b!654245 c!75266) b!654239))

(assert (= (and b!654245 (not c!75266)) b!654249))

(assert (= (and b!654245 (not res!424450)) b!654256))

(assert (= (and b!654256 res!424451) b!654241))

(assert (= (and b!654241 (not res!424455)) b!654246))

(assert (= (and b!654246 res!424448) b!654236))

(assert (= (and b!654256 (not res!424453)) b!654234))

(assert (= (and b!654234 c!75265) b!654244))

(assert (= (and b!654234 (not c!75265)) b!654255))

(assert (= (and b!654234 c!75264) b!654238))

(assert (= (and b!654234 (not c!75264)) b!654251))

(assert (= (and b!654238 res!424442) b!654250))

(declare-fun m!627411 () Bool)

(assert (=> b!654257 m!627411))

(declare-fun m!627413 () Bool)

(assert (=> b!654243 m!627413))

(declare-fun m!627415 () Bool)

(assert (=> b!654243 m!627415))

(declare-fun m!627417 () Bool)

(assert (=> b!654241 m!627417))

(assert (=> b!654256 m!627417))

(assert (=> b!654256 m!627413))

(declare-fun m!627419 () Bool)

(assert (=> b!654256 m!627419))

(assert (=> b!654236 m!627417))

(assert (=> b!654236 m!627417))

(declare-fun m!627421 () Bool)

(assert (=> b!654236 m!627421))

(declare-fun m!627423 () Bool)

(assert (=> b!654252 m!627423))

(assert (=> b!654244 m!627417))

(declare-fun m!627425 () Bool)

(assert (=> b!654244 m!627425))

(declare-fun m!627427 () Bool)

(assert (=> b!654244 m!627427))

(assert (=> b!654244 m!627417))

(declare-fun m!627429 () Bool)

(assert (=> b!654244 m!627429))

(assert (=> b!654244 m!627417))

(declare-fun m!627431 () Bool)

(assert (=> b!654244 m!627431))

(declare-fun m!627433 () Bool)

(assert (=> b!654244 m!627433))

(declare-fun m!627435 () Bool)

(assert (=> b!654244 m!627435))

(declare-fun m!627437 () Bool)

(assert (=> b!654244 m!627437))

(assert (=> b!654244 m!627417))

(declare-fun m!627439 () Bool)

(assert (=> b!654254 m!627439))

(assert (=> b!654250 m!627417))

(assert (=> b!654250 m!627417))

(assert (=> b!654250 m!627421))

(declare-fun m!627441 () Bool)

(assert (=> b!654240 m!627441))

(assert (=> b!654240 m!627417))

(assert (=> b!654240 m!627417))

(declare-fun m!627443 () Bool)

(assert (=> b!654240 m!627443))

(declare-fun m!627445 () Bool)

(assert (=> b!654242 m!627445))

(declare-fun m!627447 () Bool)

(assert (=> b!654245 m!627447))

(declare-fun m!627449 () Bool)

(assert (=> b!654245 m!627449))

(assert (=> b!654245 m!627417))

(declare-fun m!627451 () Bool)

(assert (=> b!654245 m!627451))

(assert (=> b!654245 m!627417))

(assert (=> b!654245 m!627413))

(declare-fun m!627453 () Bool)

(assert (=> b!654245 m!627453))

(declare-fun m!627455 () Bool)

(assert (=> b!654245 m!627455))

(declare-fun m!627457 () Bool)

(assert (=> b!654245 m!627457))

(assert (=> b!654253 m!627417))

(assert (=> b!654253 m!627417))

(declare-fun m!627459 () Bool)

(assert (=> b!654253 m!627459))

(declare-fun m!627461 () Bool)

(assert (=> start!59346 m!627461))

(declare-fun m!627463 () Bool)

(assert (=> start!59346 m!627463))

(declare-fun m!627465 () Bool)

(assert (=> b!654247 m!627465))

(declare-fun m!627467 () Bool)

(assert (=> b!654248 m!627467))

(assert (=> b!654246 m!627417))

(assert (=> b!654246 m!627417))

(declare-fun m!627469 () Bool)

(assert (=> b!654246 m!627469))

(declare-fun m!627471 () Bool)

(assert (=> b!654238 m!627471))

(declare-fun m!627473 () Bool)

(assert (=> b!654238 m!627473))

(assert (=> b!654238 m!627417))

(declare-fun m!627475 () Bool)

(assert (=> b!654238 m!627475))

(assert (=> b!654238 m!627417))

(declare-fun m!627477 () Bool)

(assert (=> b!654238 m!627477))

(assert (=> b!654238 m!627417))

(assert (=> b!654238 m!627469))

(assert (=> b!654238 m!627437))

(assert (=> b!654238 m!627417))

(assert (=> b!654238 m!627417))

(declare-fun m!627479 () Bool)

(assert (=> b!654238 m!627479))

(assert (=> b!654238 m!627435))

(push 1)

(assert (not b!654247))

(assert (not b!654240))

(assert (not b!654245))

(assert (not b!654244))

(assert (not b!654253))

(assert (not b!654252))

(assert (not b!654236))

(assert (not b!654254))

(assert (not b!654246))

(assert (not b!654238))

(assert (not b!654250))

(assert (not b!654242))

(assert (not b!654257))

(assert (not start!59346))

(check-sat)

(pop 1)

(push 1)

(check-sat)

