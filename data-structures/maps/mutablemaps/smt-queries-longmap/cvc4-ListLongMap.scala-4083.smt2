; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56008 () Bool)

(assert start!56008)

(declare-fun res!396323 () Bool)

(declare-fun e!352698 () Bool)

(assert (=> start!56008 (=> (not res!396323) (not e!352698))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56008 (= res!396323 (validMask!0 mask!3053))))

(assert (=> start!56008 e!352698))

(assert (=> start!56008 true))

(declare-datatypes ((array!37441 0))(
  ( (array!37442 (arr!17963 (Array (_ BitVec 32) (_ BitVec 64))) (size!18327 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37441)

(declare-fun array_inv!13737 (array!37441) Bool)

(assert (=> start!56008 (array_inv!13737 a!2986)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!615126 () Bool)

(declare-fun lt!282576 () array!37441)

(declare-fun res!396310 () Bool)

(declare-fun arrayContainsKey!0 (array!37441 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!615126 (= res!396310 (arrayContainsKey!0 lt!282576 (select (arr!17963 a!2986) j!136) j!136))))

(declare-fun e!352689 () Bool)

(assert (=> b!615126 (=> (not res!396310) (not e!352689))))

(declare-fun e!352701 () Bool)

(assert (=> b!615126 (= e!352701 e!352689)))

(declare-fun b!615127 () Bool)

(declare-datatypes ((Unit!19920 0))(
  ( (Unit!19921) )
))
(declare-fun e!352692 () Unit!19920)

(declare-fun Unit!19922 () Unit!19920)

(assert (=> b!615127 (= e!352692 Unit!19922)))

(declare-fun b!615128 () Bool)

(declare-fun e!352696 () Unit!19920)

(declare-fun Unit!19923 () Unit!19920)

(assert (=> b!615128 (= e!352696 Unit!19923)))

(declare-fun b!615129 () Bool)

(declare-fun res!396319 () Bool)

(assert (=> b!615129 (=> (not res!396319) (not e!352698))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!615129 (= res!396319 (and (= (size!18327 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18327 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18327 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!615130 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!615130 (= e!352689 (arrayContainsKey!0 lt!282576 (select (arr!17963 a!2986) j!136) index!984))))

(declare-fun b!615131 () Bool)

(declare-fun res!396313 () Bool)

(declare-fun e!352694 () Bool)

(assert (=> b!615131 (=> (not res!396313) (not e!352694))))

(declare-datatypes ((List!12057 0))(
  ( (Nil!12054) (Cons!12053 (h!13098 (_ BitVec 64)) (t!18293 List!12057)) )
))
(declare-fun arrayNoDuplicates!0 (array!37441 (_ BitVec 32) List!12057) Bool)

(assert (=> b!615131 (= res!396313 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12054))))

(declare-fun b!615132 () Bool)

(declare-fun e!352697 () Bool)

(assert (=> b!615132 (= e!352694 e!352697)))

(declare-fun res!396309 () Bool)

(assert (=> b!615132 (=> (not res!396309) (not e!352697))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!615132 (= res!396309 (= (select (store (arr!17963 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!615132 (= lt!282576 (array!37442 (store (arr!17963 a!2986) i!1108 k!1786) (size!18327 a!2986)))))

(declare-fun b!615133 () Bool)

(declare-fun res!396318 () Bool)

(assert (=> b!615133 (=> (not res!396318) (not e!352694))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!615133 (= res!396318 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17963 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!615134 () Bool)

(declare-fun e!352702 () Bool)

(declare-datatypes ((SeekEntryResult!6410 0))(
  ( (MissingZero!6410 (index!27923 (_ BitVec 32))) (Found!6410 (index!27924 (_ BitVec 32))) (Intermediate!6410 (undefined!7222 Bool) (index!27925 (_ BitVec 32)) (x!56747 (_ BitVec 32))) (Undefined!6410) (MissingVacant!6410 (index!27926 (_ BitVec 32))) )
))
(declare-fun lt!282573 () SeekEntryResult!6410)

(declare-fun lt!282569 () SeekEntryResult!6410)

(assert (=> b!615134 (= e!352702 (= lt!282573 lt!282569))))

(declare-fun b!615135 () Bool)

(declare-fun e!352690 () Bool)

(assert (=> b!615135 (= e!352697 e!352690)))

(declare-fun res!396317 () Bool)

(assert (=> b!615135 (=> (not res!396317) (not e!352690))))

(assert (=> b!615135 (= res!396317 (and (= lt!282573 (Found!6410 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17963 a!2986) index!984) (select (arr!17963 a!2986) j!136))) (not (= (select (arr!17963 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37441 (_ BitVec 32)) SeekEntryResult!6410)

(assert (=> b!615135 (= lt!282573 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17963 a!2986) j!136) a!2986 mask!3053))))

(declare-fun e!352695 () Bool)

(declare-fun b!615136 () Bool)

(assert (=> b!615136 (= e!352695 (arrayContainsKey!0 lt!282576 (select (arr!17963 a!2986) j!136) index!984))))

(declare-fun b!615137 () Bool)

(declare-fun res!396311 () Bool)

(assert (=> b!615137 (=> (not res!396311) (not e!352698))))

(assert (=> b!615137 (= res!396311 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!615138 () Bool)

(assert (=> b!615138 (= e!352698 e!352694)))

(declare-fun res!396316 () Bool)

(assert (=> b!615138 (=> (not res!396316) (not e!352694))))

(declare-fun lt!282558 () SeekEntryResult!6410)

(assert (=> b!615138 (= res!396316 (or (= lt!282558 (MissingZero!6410 i!1108)) (= lt!282558 (MissingVacant!6410 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37441 (_ BitVec 32)) SeekEntryResult!6410)

(assert (=> b!615138 (= lt!282558 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!615139 () Bool)

(declare-fun e!352693 () Unit!19920)

(declare-fun Unit!19924 () Unit!19920)

(assert (=> b!615139 (= e!352693 Unit!19924)))

(declare-fun b!615140 () Bool)

(declare-fun e!352699 () Unit!19920)

(declare-fun Unit!19925 () Unit!19920)

(assert (=> b!615140 (= e!352699 Unit!19925)))

(declare-fun b!615141 () Bool)

(declare-fun res!396308 () Bool)

(assert (=> b!615141 (=> (not res!396308) (not e!352698))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!615141 (= res!396308 (validKeyInArray!0 k!1786))))

(declare-fun b!615142 () Bool)

(declare-fun res!396314 () Bool)

(assert (=> b!615142 (=> (not res!396314) (not e!352694))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37441 (_ BitVec 32)) Bool)

(assert (=> b!615142 (= res!396314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!615143 () Bool)

(assert (=> b!615143 false))

(declare-fun lt!282571 () Unit!19920)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37441 (_ BitVec 64) (_ BitVec 32) List!12057) Unit!19920)

(assert (=> b!615143 (= lt!282571 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282576 (select (arr!17963 a!2986) j!136) j!136 Nil!12054))))

(assert (=> b!615143 (arrayNoDuplicates!0 lt!282576 j!136 Nil!12054)))

(declare-fun lt!282574 () Unit!19920)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37441 (_ BitVec 32) (_ BitVec 32)) Unit!19920)

(assert (=> b!615143 (= lt!282574 (lemmaNoDuplicateFromThenFromBigger!0 lt!282576 #b00000000000000000000000000000000 j!136))))

(assert (=> b!615143 (arrayNoDuplicates!0 lt!282576 #b00000000000000000000000000000000 Nil!12054)))

(declare-fun lt!282572 () Unit!19920)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37441 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12057) Unit!19920)

(assert (=> b!615143 (= lt!282572 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12054))))

(assert (=> b!615143 (arrayContainsKey!0 lt!282576 (select (arr!17963 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282557 () Unit!19920)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37441 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19920)

(assert (=> b!615143 (= lt!282557 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282576 (select (arr!17963 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!19926 () Unit!19920)

(assert (=> b!615143 (= e!352693 Unit!19926)))

(declare-fun b!615144 () Bool)

(declare-fun res!396322 () Bool)

(assert (=> b!615144 (=> (not res!396322) (not e!352698))))

(assert (=> b!615144 (= res!396322 (validKeyInArray!0 (select (arr!17963 a!2986) j!136)))))

(declare-fun b!615145 () Bool)

(assert (=> b!615145 (= e!352690 (not true))))

(declare-fun lt!282564 () Unit!19920)

(assert (=> b!615145 (= lt!282564 e!352692)))

(declare-fun c!69777 () Bool)

(declare-fun lt!282570 () SeekEntryResult!6410)

(assert (=> b!615145 (= c!69777 (= lt!282570 (Found!6410 index!984)))))

(declare-fun lt!282568 () Unit!19920)

(assert (=> b!615145 (= lt!282568 e!352699)))

(declare-fun c!69778 () Bool)

(assert (=> b!615145 (= c!69778 (= lt!282570 Undefined!6410))))

(declare-fun lt!282562 () (_ BitVec 64))

(assert (=> b!615145 (= lt!282570 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282562 lt!282576 mask!3053))))

(assert (=> b!615145 e!352702))

(declare-fun res!396312 () Bool)

(assert (=> b!615145 (=> (not res!396312) (not e!352702))))

(declare-fun lt!282575 () (_ BitVec 32))

(assert (=> b!615145 (= res!396312 (= lt!282569 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282575 vacantSpotIndex!68 lt!282562 lt!282576 mask!3053)))))

(assert (=> b!615145 (= lt!282569 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282575 vacantSpotIndex!68 (select (arr!17963 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!615145 (= lt!282562 (select (store (arr!17963 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!282559 () Unit!19920)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37441 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19920)

(assert (=> b!615145 (= lt!282559 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282575 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!615145 (= lt!282575 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!615146 () Bool)

(declare-fun Unit!19927 () Unit!19920)

(assert (=> b!615146 (= e!352692 Unit!19927)))

(declare-fun res!396315 () Bool)

(assert (=> b!615146 (= res!396315 (= (select (store (arr!17963 a!2986) i!1108 k!1786) index!984) (select (arr!17963 a!2986) j!136)))))

(declare-fun e!352691 () Bool)

(assert (=> b!615146 (=> (not res!396315) (not e!352691))))

(assert (=> b!615146 e!352691))

(declare-fun c!69776 () Bool)

(assert (=> b!615146 (= c!69776 (bvslt j!136 index!984))))

(declare-fun lt!282565 () Unit!19920)

(assert (=> b!615146 (= lt!282565 e!352693)))

(declare-fun c!69779 () Bool)

(assert (=> b!615146 (= c!69779 (bvslt index!984 j!136))))

(declare-fun lt!282563 () Unit!19920)

(assert (=> b!615146 (= lt!282563 e!352696)))

(assert (=> b!615146 false))

(declare-fun b!615147 () Bool)

(declare-fun Unit!19928 () Unit!19920)

(assert (=> b!615147 (= e!352699 Unit!19928)))

(assert (=> b!615147 false))

(declare-fun b!615148 () Bool)

(assert (=> b!615148 false))

(declare-fun lt!282567 () Unit!19920)

(assert (=> b!615148 (= lt!282567 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282576 (select (arr!17963 a!2986) j!136) index!984 Nil!12054))))

(assert (=> b!615148 (arrayNoDuplicates!0 lt!282576 index!984 Nil!12054)))

(declare-fun lt!282560 () Unit!19920)

(assert (=> b!615148 (= lt!282560 (lemmaNoDuplicateFromThenFromBigger!0 lt!282576 #b00000000000000000000000000000000 index!984))))

(assert (=> b!615148 (arrayNoDuplicates!0 lt!282576 #b00000000000000000000000000000000 Nil!12054)))

(declare-fun lt!282566 () Unit!19920)

(assert (=> b!615148 (= lt!282566 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12054))))

(assert (=> b!615148 (arrayContainsKey!0 lt!282576 (select (arr!17963 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282561 () Unit!19920)

(assert (=> b!615148 (= lt!282561 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282576 (select (arr!17963 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!615148 e!352695))

(declare-fun res!396320 () Bool)

(assert (=> b!615148 (=> (not res!396320) (not e!352695))))

(assert (=> b!615148 (= res!396320 (arrayContainsKey!0 lt!282576 (select (arr!17963 a!2986) j!136) j!136))))

(declare-fun Unit!19929 () Unit!19920)

(assert (=> b!615148 (= e!352696 Unit!19929)))

(declare-fun b!615149 () Bool)

(declare-fun res!396321 () Bool)

(assert (=> b!615149 (= res!396321 (bvsge j!136 index!984))))

(assert (=> b!615149 (=> res!396321 e!352701)))

(assert (=> b!615149 (= e!352691 e!352701)))

(assert (= (and start!56008 res!396323) b!615129))

(assert (= (and b!615129 res!396319) b!615144))

(assert (= (and b!615144 res!396322) b!615141))

(assert (= (and b!615141 res!396308) b!615137))

(assert (= (and b!615137 res!396311) b!615138))

(assert (= (and b!615138 res!396316) b!615142))

(assert (= (and b!615142 res!396314) b!615131))

(assert (= (and b!615131 res!396313) b!615133))

(assert (= (and b!615133 res!396318) b!615132))

(assert (= (and b!615132 res!396309) b!615135))

(assert (= (and b!615135 res!396317) b!615145))

(assert (= (and b!615145 res!396312) b!615134))

(assert (= (and b!615145 c!69778) b!615147))

(assert (= (and b!615145 (not c!69778)) b!615140))

(assert (= (and b!615145 c!69777) b!615146))

(assert (= (and b!615145 (not c!69777)) b!615127))

(assert (= (and b!615146 res!396315) b!615149))

(assert (= (and b!615149 (not res!396321)) b!615126))

(assert (= (and b!615126 res!396310) b!615130))

(assert (= (and b!615146 c!69776) b!615143))

(assert (= (and b!615146 (not c!69776)) b!615139))

(assert (= (and b!615146 c!69779) b!615148))

(assert (= (and b!615146 (not c!69779)) b!615128))

(assert (= (and b!615148 res!396320) b!615136))

(declare-fun m!591383 () Bool)

(assert (=> b!615135 m!591383))

(declare-fun m!591385 () Bool)

(assert (=> b!615135 m!591385))

(assert (=> b!615135 m!591385))

(declare-fun m!591387 () Bool)

(assert (=> b!615135 m!591387))

(declare-fun m!591389 () Bool)

(assert (=> b!615138 m!591389))

(assert (=> b!615136 m!591385))

(assert (=> b!615136 m!591385))

(declare-fun m!591391 () Bool)

(assert (=> b!615136 m!591391))

(declare-fun m!591393 () Bool)

(assert (=> b!615132 m!591393))

(declare-fun m!591395 () Bool)

(assert (=> b!615132 m!591395))

(assert (=> b!615146 m!591393))

(declare-fun m!591397 () Bool)

(assert (=> b!615146 m!591397))

(assert (=> b!615146 m!591385))

(assert (=> b!615148 m!591385))

(declare-fun m!591399 () Bool)

(assert (=> b!615148 m!591399))

(assert (=> b!615148 m!591385))

(declare-fun m!591401 () Bool)

(assert (=> b!615148 m!591401))

(assert (=> b!615148 m!591385))

(declare-fun m!591403 () Bool)

(assert (=> b!615148 m!591403))

(declare-fun m!591405 () Bool)

(assert (=> b!615148 m!591405))

(declare-fun m!591407 () Bool)

(assert (=> b!615148 m!591407))

(assert (=> b!615148 m!591385))

(declare-fun m!591409 () Bool)

(assert (=> b!615148 m!591409))

(assert (=> b!615148 m!591385))

(declare-fun m!591411 () Bool)

(assert (=> b!615148 m!591411))

(declare-fun m!591413 () Bool)

(assert (=> b!615148 m!591413))

(declare-fun m!591415 () Bool)

(assert (=> b!615137 m!591415))

(declare-fun m!591417 () Bool)

(assert (=> b!615141 m!591417))

(assert (=> b!615143 m!591385))

(declare-fun m!591419 () Bool)

(assert (=> b!615143 m!591419))

(assert (=> b!615143 m!591385))

(declare-fun m!591421 () Bool)

(assert (=> b!615143 m!591421))

(assert (=> b!615143 m!591385))

(declare-fun m!591423 () Bool)

(assert (=> b!615143 m!591423))

(declare-fun m!591425 () Bool)

(assert (=> b!615143 m!591425))

(assert (=> b!615143 m!591413))

(assert (=> b!615143 m!591401))

(assert (=> b!615143 m!591385))

(declare-fun m!591427 () Bool)

(assert (=> b!615143 m!591427))

(declare-fun m!591429 () Bool)

(assert (=> b!615133 m!591429))

(assert (=> b!615126 m!591385))

(assert (=> b!615126 m!591385))

(assert (=> b!615126 m!591409))

(declare-fun m!591431 () Bool)

(assert (=> b!615142 m!591431))

(declare-fun m!591433 () Bool)

(assert (=> b!615131 m!591433))

(assert (=> b!615130 m!591385))

(assert (=> b!615130 m!591385))

(assert (=> b!615130 m!591391))

(assert (=> b!615144 m!591385))

(assert (=> b!615144 m!591385))

(declare-fun m!591435 () Bool)

(assert (=> b!615144 m!591435))

(declare-fun m!591437 () Bool)

(assert (=> start!56008 m!591437))

(declare-fun m!591439 () Bool)

(assert (=> start!56008 m!591439))

(declare-fun m!591441 () Bool)

(assert (=> b!615145 m!591441))

(declare-fun m!591443 () Bool)

(assert (=> b!615145 m!591443))

(declare-fun m!591445 () Bool)

(assert (=> b!615145 m!591445))

(declare-fun m!591447 () Bool)

(assert (=> b!615145 m!591447))

(assert (=> b!615145 m!591393))

(declare-fun m!591449 () Bool)

(assert (=> b!615145 m!591449))

(assert (=> b!615145 m!591385))

(declare-fun m!591451 () Bool)

(assert (=> b!615145 m!591451))

(assert (=> b!615145 m!591385))

(push 1)

