; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59578 () Bool)

(assert start!59578)

(declare-fun b!657260 () Bool)

(declare-fun e!377575 () Bool)

(declare-fun e!377570 () Bool)

(assert (=> b!657260 (= e!377575 e!377570)))

(declare-fun res!426305 () Bool)

(assert (=> b!657260 (=> (not res!426305) (not e!377570))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6986 0))(
  ( (MissingZero!6986 (index!30308 (_ BitVec 32))) (Found!6986 (index!30309 (_ BitVec 32))) (Intermediate!6986 (undefined!7798 Bool) (index!30310 (_ BitVec 32)) (x!59126 (_ BitVec 32))) (Undefined!6986) (MissingVacant!6986 (index!30311 (_ BitVec 32))) )
))
(declare-fun lt!307038 () SeekEntryResult!6986)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38692 0))(
  ( (array!38693 (arr!18539 (Array (_ BitVec 32) (_ BitVec 64))) (size!18903 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38692)

(assert (=> b!657260 (= res!426305 (and (= lt!307038 (Found!6986 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18539 a!2986) index!984) (select (arr!18539 a!2986) j!136))) (not (= (select (arr!18539 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38692 (_ BitVec 32)) SeekEntryResult!6986)

(assert (=> b!657260 (= lt!307038 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18539 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!657261 () Bool)

(declare-fun res!426301 () Bool)

(declare-fun e!377566 () Bool)

(assert (=> b!657261 (=> (not res!426301) (not e!377566))))

(assert (=> b!657261 (= res!426301 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18539 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!657262 () Bool)

(assert (=> b!657262 false))

(declare-fun lt!307041 () array!38692)

(declare-datatypes ((Unit!22704 0))(
  ( (Unit!22705) )
))
(declare-fun lt!307033 () Unit!22704)

(declare-datatypes ((List!12633 0))(
  ( (Nil!12630) (Cons!12629 (h!13674 (_ BitVec 64)) (t!18869 List!12633)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38692 (_ BitVec 64) (_ BitVec 32) List!12633) Unit!22704)

(assert (=> b!657262 (= lt!307033 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307041 (select (arr!18539 a!2986) j!136) j!136 Nil!12630))))

(declare-fun arrayNoDuplicates!0 (array!38692 (_ BitVec 32) List!12633) Bool)

(assert (=> b!657262 (arrayNoDuplicates!0 lt!307041 j!136 Nil!12630)))

(declare-fun lt!307044 () Unit!22704)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38692 (_ BitVec 32) (_ BitVec 32)) Unit!22704)

(assert (=> b!657262 (= lt!307044 (lemmaNoDuplicateFromThenFromBigger!0 lt!307041 #b00000000000000000000000000000000 j!136))))

(assert (=> b!657262 (arrayNoDuplicates!0 lt!307041 #b00000000000000000000000000000000 Nil!12630)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!307030 () Unit!22704)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38692 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12633) Unit!22704)

(assert (=> b!657262 (= lt!307030 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12630))))

(declare-fun arrayContainsKey!0 (array!38692 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!657262 (arrayContainsKey!0 lt!307041 (select (arr!18539 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307032 () Unit!22704)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38692 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22704)

(assert (=> b!657262 (= lt!307032 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307041 (select (arr!18539 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!377577 () Unit!22704)

(declare-fun Unit!22706 () Unit!22704)

(assert (=> b!657262 (= e!377577 Unit!22706)))

(declare-fun b!657263 () Bool)

(declare-fun e!377578 () Bool)

(assert (=> b!657263 (= e!377570 (not e!377578))))

(declare-fun res!426302 () Bool)

(assert (=> b!657263 (=> res!426302 e!377578)))

(declare-fun lt!307029 () SeekEntryResult!6986)

(assert (=> b!657263 (= res!426302 (not (= lt!307029 (MissingVacant!6986 vacantSpotIndex!68))))))

(declare-fun lt!307031 () Unit!22704)

(declare-fun e!377567 () Unit!22704)

(assert (=> b!657263 (= lt!307031 e!377567)))

(declare-fun c!75849 () Bool)

(assert (=> b!657263 (= c!75849 (= lt!307029 (Found!6986 index!984)))))

(declare-fun lt!307043 () Unit!22704)

(declare-fun e!377564 () Unit!22704)

(assert (=> b!657263 (= lt!307043 e!377564)))

(declare-fun c!75851 () Bool)

(assert (=> b!657263 (= c!75851 (= lt!307029 Undefined!6986))))

(declare-fun lt!307034 () (_ BitVec 64))

(assert (=> b!657263 (= lt!307029 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307034 lt!307041 mask!3053))))

(declare-fun e!377568 () Bool)

(assert (=> b!657263 e!377568))

(declare-fun res!426303 () Bool)

(assert (=> b!657263 (=> (not res!426303) (not e!377568))))

(declare-fun lt!307036 () (_ BitVec 32))

(declare-fun lt!307047 () SeekEntryResult!6986)

(assert (=> b!657263 (= res!426303 (= lt!307047 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307036 vacantSpotIndex!68 lt!307034 lt!307041 mask!3053)))))

(assert (=> b!657263 (= lt!307047 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307036 vacantSpotIndex!68 (select (arr!18539 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!657263 (= lt!307034 (select (store (arr!18539 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!307035 () Unit!22704)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38692 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22704)

(assert (=> b!657263 (= lt!307035 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307036 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!657263 (= lt!307036 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!657264 () Bool)

(declare-fun res!426308 () Bool)

(declare-fun e!377576 () Bool)

(assert (=> b!657264 (=> (not res!426308) (not e!377576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!657264 (= res!426308 (validKeyInArray!0 k!1786))))

(declare-fun b!657265 () Bool)

(assert (=> b!657265 (= e!377568 (= lt!307038 lt!307047))))

(declare-fun b!657266 () Bool)

(declare-fun res!426314 () Bool)

(assert (=> b!657266 (=> (not res!426314) (not e!377576))))

(assert (=> b!657266 (= res!426314 (validKeyInArray!0 (select (arr!18539 a!2986) j!136)))))

(declare-fun b!657267 () Bool)

(declare-fun e!377574 () Bool)

(assert (=> b!657267 (= e!377574 (arrayContainsKey!0 lt!307041 (select (arr!18539 a!2986) j!136) index!984))))

(declare-fun b!657268 () Bool)

(assert (=> b!657268 (= e!377566 e!377575)))

(declare-fun res!426307 () Bool)

(assert (=> b!657268 (=> (not res!426307) (not e!377575))))

(assert (=> b!657268 (= res!426307 (= (select (store (arr!18539 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!657268 (= lt!307041 (array!38693 (store (arr!18539 a!2986) i!1108 k!1786) (size!18903 a!2986)))))

(declare-fun b!657269 () Bool)

(declare-fun Unit!22707 () Unit!22704)

(assert (=> b!657269 (= e!377567 Unit!22707)))

(declare-fun res!426299 () Bool)

(assert (=> b!657269 (= res!426299 (= (select (store (arr!18539 a!2986) i!1108 k!1786) index!984) (select (arr!18539 a!2986) j!136)))))

(declare-fun e!377573 () Bool)

(assert (=> b!657269 (=> (not res!426299) (not e!377573))))

(assert (=> b!657269 e!377573))

(declare-fun c!75850 () Bool)

(assert (=> b!657269 (= c!75850 (bvslt j!136 index!984))))

(declare-fun lt!307028 () Unit!22704)

(assert (=> b!657269 (= lt!307028 e!377577)))

(declare-fun c!75848 () Bool)

(assert (=> b!657269 (= c!75848 (bvslt index!984 j!136))))

(declare-fun lt!307046 () Unit!22704)

(declare-fun e!377572 () Unit!22704)

(assert (=> b!657269 (= lt!307046 e!377572)))

(assert (=> b!657269 false))

(declare-fun b!657271 () Bool)

(declare-fun e!377565 () Bool)

(assert (=> b!657271 (= e!377565 (arrayContainsKey!0 lt!307041 (select (arr!18539 a!2986) j!136) index!984))))

(declare-fun b!657272 () Bool)

(declare-fun res!426309 () Bool)

(assert (=> b!657272 (=> (not res!426309) (not e!377566))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38692 (_ BitVec 32)) Bool)

(assert (=> b!657272 (= res!426309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!657273 () Bool)

(declare-fun Unit!22708 () Unit!22704)

(assert (=> b!657273 (= e!377564 Unit!22708)))

(declare-fun res!426300 () Bool)

(assert (=> start!59578 (=> (not res!426300) (not e!377576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59578 (= res!426300 (validMask!0 mask!3053))))

(assert (=> start!59578 e!377576))

(assert (=> start!59578 true))

(declare-fun array_inv!14313 (array!38692) Bool)

(assert (=> start!59578 (array_inv!14313 a!2986)))

(declare-fun res!426312 () Bool)

(declare-fun b!657270 () Bool)

(assert (=> b!657270 (= res!426312 (arrayContainsKey!0 lt!307041 (select (arr!18539 a!2986) j!136) j!136))))

(assert (=> b!657270 (=> (not res!426312) (not e!377574))))

(declare-fun e!377569 () Bool)

(assert (=> b!657270 (= e!377569 e!377574)))

(declare-fun b!657274 () Bool)

(declare-fun Unit!22709 () Unit!22704)

(assert (=> b!657274 (= e!377572 Unit!22709)))

(declare-fun b!657275 () Bool)

(declare-fun res!426298 () Bool)

(assert (=> b!657275 (=> (not res!426298) (not e!377576))))

(assert (=> b!657275 (= res!426298 (and (= (size!18903 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18903 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18903 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!657276 () Bool)

(assert (=> b!657276 (= e!377578 true)))

(assert (=> b!657276 (= (select (store (arr!18539 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!657277 () Bool)

(declare-fun Unit!22710 () Unit!22704)

(assert (=> b!657277 (= e!377567 Unit!22710)))

(declare-fun b!657278 () Bool)

(assert (=> b!657278 false))

(declare-fun lt!307042 () Unit!22704)

(assert (=> b!657278 (= lt!307042 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307041 (select (arr!18539 a!2986) j!136) index!984 Nil!12630))))

(assert (=> b!657278 (arrayNoDuplicates!0 lt!307041 index!984 Nil!12630)))

(declare-fun lt!307037 () Unit!22704)

(assert (=> b!657278 (= lt!307037 (lemmaNoDuplicateFromThenFromBigger!0 lt!307041 #b00000000000000000000000000000000 index!984))))

(assert (=> b!657278 (arrayNoDuplicates!0 lt!307041 #b00000000000000000000000000000000 Nil!12630)))

(declare-fun lt!307039 () Unit!22704)

(assert (=> b!657278 (= lt!307039 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12630))))

(assert (=> b!657278 (arrayContainsKey!0 lt!307041 (select (arr!18539 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307045 () Unit!22704)

(assert (=> b!657278 (= lt!307045 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307041 (select (arr!18539 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!657278 e!377565))

(declare-fun res!426310 () Bool)

(assert (=> b!657278 (=> (not res!426310) (not e!377565))))

(assert (=> b!657278 (= res!426310 (arrayContainsKey!0 lt!307041 (select (arr!18539 a!2986) j!136) j!136))))

(declare-fun Unit!22711 () Unit!22704)

(assert (=> b!657278 (= e!377572 Unit!22711)))

(declare-fun b!657279 () Bool)

(declare-fun Unit!22712 () Unit!22704)

(assert (=> b!657279 (= e!377577 Unit!22712)))

(declare-fun b!657280 () Bool)

(declare-fun res!426311 () Bool)

(assert (=> b!657280 (=> (not res!426311) (not e!377566))))

(assert (=> b!657280 (= res!426311 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12630))))

(declare-fun b!657281 () Bool)

(assert (=> b!657281 (= e!377576 e!377566)))

(declare-fun res!426304 () Bool)

(assert (=> b!657281 (=> (not res!426304) (not e!377566))))

(declare-fun lt!307040 () SeekEntryResult!6986)

(assert (=> b!657281 (= res!426304 (or (= lt!307040 (MissingZero!6986 i!1108)) (= lt!307040 (MissingVacant!6986 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38692 (_ BitVec 32)) SeekEntryResult!6986)

(assert (=> b!657281 (= lt!307040 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!657282 () Bool)

(declare-fun res!426313 () Bool)

(assert (=> b!657282 (= res!426313 (bvsge j!136 index!984))))

(assert (=> b!657282 (=> res!426313 e!377569)))

(assert (=> b!657282 (= e!377573 e!377569)))

(declare-fun b!657283 () Bool)

(declare-fun Unit!22713 () Unit!22704)

(assert (=> b!657283 (= e!377564 Unit!22713)))

(assert (=> b!657283 false))

(declare-fun b!657284 () Bool)

(declare-fun res!426306 () Bool)

(assert (=> b!657284 (=> (not res!426306) (not e!377576))))

(assert (=> b!657284 (= res!426306 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!59578 res!426300) b!657275))

(assert (= (and b!657275 res!426298) b!657266))

(assert (= (and b!657266 res!426314) b!657264))

(assert (= (and b!657264 res!426308) b!657284))

(assert (= (and b!657284 res!426306) b!657281))

(assert (= (and b!657281 res!426304) b!657272))

(assert (= (and b!657272 res!426309) b!657280))

(assert (= (and b!657280 res!426311) b!657261))

(assert (= (and b!657261 res!426301) b!657268))

(assert (= (and b!657268 res!426307) b!657260))

(assert (= (and b!657260 res!426305) b!657263))

(assert (= (and b!657263 res!426303) b!657265))

(assert (= (and b!657263 c!75851) b!657283))

(assert (= (and b!657263 (not c!75851)) b!657273))

(assert (= (and b!657263 c!75849) b!657269))

(assert (= (and b!657263 (not c!75849)) b!657277))

(assert (= (and b!657269 res!426299) b!657282))

(assert (= (and b!657282 (not res!426313)) b!657270))

(assert (= (and b!657270 res!426312) b!657267))

(assert (= (and b!657269 c!75850) b!657262))

(assert (= (and b!657269 (not c!75850)) b!657279))

(assert (= (and b!657269 c!75848) b!657278))

(assert (= (and b!657269 (not c!75848)) b!657274))

(assert (= (and b!657278 res!426310) b!657271))

(assert (= (and b!657263 (not res!426302)) b!657276))

(declare-fun m!630371 () Bool)

(assert (=> b!657278 m!630371))

(declare-fun m!630373 () Bool)

(assert (=> b!657278 m!630373))

(declare-fun m!630375 () Bool)

(assert (=> b!657278 m!630375))

(assert (=> b!657278 m!630373))

(declare-fun m!630377 () Bool)

(assert (=> b!657278 m!630377))

(assert (=> b!657278 m!630373))

(declare-fun m!630379 () Bool)

(assert (=> b!657278 m!630379))

(assert (=> b!657278 m!630373))

(declare-fun m!630381 () Bool)

(assert (=> b!657278 m!630381))

(declare-fun m!630383 () Bool)

(assert (=> b!657278 m!630383))

(assert (=> b!657278 m!630373))

(declare-fun m!630385 () Bool)

(assert (=> b!657278 m!630385))

(declare-fun m!630387 () Bool)

(assert (=> b!657278 m!630387))

(declare-fun m!630389 () Bool)

(assert (=> b!657276 m!630389))

(declare-fun m!630391 () Bool)

(assert (=> b!657276 m!630391))

(assert (=> b!657262 m!630373))

(declare-fun m!630393 () Bool)

(assert (=> b!657262 m!630393))

(assert (=> b!657262 m!630373))

(declare-fun m!630395 () Bool)

(assert (=> b!657262 m!630395))

(assert (=> b!657262 m!630373))

(declare-fun m!630397 () Bool)

(assert (=> b!657262 m!630397))

(assert (=> b!657262 m!630373))

(declare-fun m!630399 () Bool)

(assert (=> b!657262 m!630399))

(declare-fun m!630401 () Bool)

(assert (=> b!657262 m!630401))

(assert (=> b!657262 m!630383))

(assert (=> b!657262 m!630387))

(assert (=> b!657267 m!630373))

(assert (=> b!657267 m!630373))

(declare-fun m!630403 () Bool)

(assert (=> b!657267 m!630403))

(assert (=> b!657269 m!630389))

(assert (=> b!657269 m!630391))

(assert (=> b!657269 m!630373))

(declare-fun m!630405 () Bool)

(assert (=> b!657261 m!630405))

(assert (=> b!657268 m!630389))

(declare-fun m!630407 () Bool)

(assert (=> b!657268 m!630407))

(declare-fun m!630409 () Bool)

(assert (=> start!59578 m!630409))

(declare-fun m!630411 () Bool)

(assert (=> start!59578 m!630411))

(assert (=> b!657270 m!630373))

(assert (=> b!657270 m!630373))

(assert (=> b!657270 m!630379))

(declare-fun m!630413 () Bool)

(assert (=> b!657260 m!630413))

(assert (=> b!657260 m!630373))

(assert (=> b!657260 m!630373))

(declare-fun m!630415 () Bool)

(assert (=> b!657260 m!630415))

(assert (=> b!657271 m!630373))

(assert (=> b!657271 m!630373))

(assert (=> b!657271 m!630403))

(declare-fun m!630417 () Bool)

(assert (=> b!657264 m!630417))

(declare-fun m!630419 () Bool)

(assert (=> b!657281 m!630419))

(declare-fun m!630421 () Bool)

(assert (=> b!657272 m!630421))

(declare-fun m!630423 () Bool)

(assert (=> b!657284 m!630423))

(declare-fun m!630425 () Bool)

(assert (=> b!657263 m!630425))

(declare-fun m!630427 () Bool)

(assert (=> b!657263 m!630427))

(assert (=> b!657263 m!630373))

(assert (=> b!657263 m!630389))

(declare-fun m!630429 () Bool)

(assert (=> b!657263 m!630429))

(assert (=> b!657263 m!630373))

(declare-fun m!630431 () Bool)

(assert (=> b!657263 m!630431))

(declare-fun m!630433 () Bool)

(assert (=> b!657263 m!630433))

(declare-fun m!630435 () Bool)

(assert (=> b!657263 m!630435))

(assert (=> b!657266 m!630373))

(assert (=> b!657266 m!630373))

(declare-fun m!630437 () Bool)

(assert (=> b!657266 m!630437))

(declare-fun m!630439 () Bool)

(assert (=> b!657280 m!630439))

(push 1)

