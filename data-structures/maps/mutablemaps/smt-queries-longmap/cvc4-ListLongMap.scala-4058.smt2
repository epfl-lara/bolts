; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55588 () Bool)

(assert start!55588)

(declare-fun b!608439 () Bool)

(declare-fun e!348465 () Bool)

(declare-fun e!348457 () Bool)

(assert (=> b!608439 (= e!348465 e!348457)))

(declare-fun res!391275 () Bool)

(assert (=> b!608439 (=> (not res!391275) (not e!348457))))

(declare-datatypes ((array!37282 0))(
  ( (array!37283 (arr!17888 (Array (_ BitVec 32) (_ BitVec 64))) (size!18252 (_ BitVec 32))) )
))
(declare-fun lt!278045 () array!37282)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37282)

(declare-fun arrayContainsKey!0 (array!37282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!608439 (= res!391275 (arrayContainsKey!0 lt!278045 (select (arr!17888 a!2986) j!136) j!136))))

(declare-fun b!608440 () Bool)

(declare-fun res!391260 () Bool)

(declare-fun e!348456 () Bool)

(assert (=> b!608440 (=> (not res!391260) (not e!348456))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!608440 (= res!391260 (validKeyInArray!0 (select (arr!17888 a!2986) j!136)))))

(declare-fun b!608441 () Bool)

(declare-fun res!391272 () Bool)

(declare-fun e!348459 () Bool)

(assert (=> b!608441 (=> res!391272 e!348459)))

(declare-datatypes ((List!11982 0))(
  ( (Nil!11979) (Cons!11978 (h!13023 (_ BitVec 64)) (t!18218 List!11982)) )
))
(declare-fun contains!3028 (List!11982 (_ BitVec 64)) Bool)

(assert (=> b!608441 (= res!391272 (contains!3028 Nil!11979 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608442 () Bool)

(assert (=> b!608442 (= e!348459 true)))

(declare-fun lt!278049 () Bool)

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!608442 (= lt!278049 (contains!3028 Nil!11979 k!1786))))

(declare-fun b!608443 () Bool)

(declare-fun res!391264 () Bool)

(declare-fun e!348451 () Bool)

(assert (=> b!608443 (=> (not res!391264) (not e!348451))))

(declare-fun arrayNoDuplicates!0 (array!37282 (_ BitVec 32) List!11982) Bool)

(assert (=> b!608443 (= res!391264 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11979))))

(declare-fun b!608444 () Bool)

(declare-fun res!391266 () Bool)

(assert (=> b!608444 (=> res!391266 e!348459)))

(declare-fun noDuplicate!330 (List!11982) Bool)

(assert (=> b!608444 (= res!391266 (not (noDuplicate!330 Nil!11979)))))

(declare-fun b!608445 () Bool)

(declare-fun res!391267 () Bool)

(assert (=> b!608445 (=> (not res!391267) (not e!348451))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37282 (_ BitVec 32)) Bool)

(assert (=> b!608445 (= res!391267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!608446 () Bool)

(declare-fun e!348464 () Bool)

(declare-fun e!348460 () Bool)

(assert (=> b!608446 (= e!348464 e!348460)))

(declare-fun res!391259 () Bool)

(assert (=> b!608446 (=> (not res!391259) (not e!348460))))

(declare-datatypes ((SeekEntryResult!6335 0))(
  ( (MissingZero!6335 (index!27614 (_ BitVec 32))) (Found!6335 (index!27615 (_ BitVec 32))) (Intermediate!6335 (undefined!7147 Bool) (index!27616 (_ BitVec 32)) (x!56445 (_ BitVec 32))) (Undefined!6335) (MissingVacant!6335 (index!27617 (_ BitVec 32))) )
))
(declare-fun lt!278052 () SeekEntryResult!6335)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!608446 (= res!391259 (and (= lt!278052 (Found!6335 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17888 a!2986) index!984) (select (arr!17888 a!2986) j!136))) (not (= (select (arr!17888 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37282 (_ BitVec 32)) SeekEntryResult!6335)

(assert (=> b!608446 (= lt!278052 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17888 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!608448 () Bool)

(declare-fun e!348452 () Bool)

(declare-fun lt!278043 () SeekEntryResult!6335)

(assert (=> b!608448 (= e!348452 (= lt!278052 lt!278043))))

(declare-fun b!608449 () Bool)

(assert (=> b!608449 (= e!348457 (arrayContainsKey!0 lt!278045 (select (arr!17888 a!2986) j!136) index!984))))

(declare-fun b!608450 () Bool)

(declare-datatypes ((Unit!19438 0))(
  ( (Unit!19439) )
))
(declare-fun e!348455 () Unit!19438)

(declare-fun Unit!19440 () Unit!19438)

(assert (=> b!608450 (= e!348455 Unit!19440)))

(declare-fun b!608451 () Bool)

(declare-fun e!348466 () Bool)

(assert (=> b!608451 (= e!348466 (arrayContainsKey!0 lt!278045 (select (arr!17888 a!2986) j!136) index!984))))

(declare-fun b!608452 () Bool)

(declare-fun e!348463 () Bool)

(declare-fun e!348453 () Bool)

(assert (=> b!608452 (= e!348463 e!348453)))

(declare-fun res!391265 () Bool)

(assert (=> b!608452 (=> res!391265 e!348453)))

(assert (=> b!608452 (= res!391265 (bvsge index!984 j!136))))

(declare-fun lt!278054 () Unit!19438)

(assert (=> b!608452 (= lt!278054 e!348455)))

(declare-fun c!68959 () Bool)

(assert (=> b!608452 (= c!68959 (bvslt j!136 index!984))))

(declare-fun b!608453 () Bool)

(assert (=> b!608453 (= e!348456 e!348451)))

(declare-fun res!391258 () Bool)

(assert (=> b!608453 (=> (not res!391258) (not e!348451))))

(declare-fun lt!278041 () SeekEntryResult!6335)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!608453 (= res!391258 (or (= lt!278041 (MissingZero!6335 i!1108)) (= lt!278041 (MissingVacant!6335 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37282 (_ BitVec 32)) SeekEntryResult!6335)

(assert (=> b!608453 (= lt!278041 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!608454 () Bool)

(assert (=> b!608454 (= e!348453 e!348459)))

(declare-fun res!391268 () Bool)

(assert (=> b!608454 (=> res!391268 e!348459)))

(assert (=> b!608454 (= res!391268 (or (bvsge (size!18252 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18252 a!2986))))))

(assert (=> b!608454 (arrayContainsKey!0 lt!278045 (select (arr!17888 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278050 () Unit!19438)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37282 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19438)

(assert (=> b!608454 (= lt!278050 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278045 (select (arr!17888 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!608454 e!348466))

(declare-fun res!391269 () Bool)

(assert (=> b!608454 (=> (not res!391269) (not e!348466))))

(assert (=> b!608454 (= res!391269 (arrayContainsKey!0 lt!278045 (select (arr!17888 a!2986) j!136) j!136))))

(declare-fun b!608455 () Bool)

(declare-fun res!391276 () Bool)

(assert (=> b!608455 (=> (not res!391276) (not e!348451))))

(assert (=> b!608455 (= res!391276 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17888 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!608456 () Bool)

(declare-fun e!348462 () Unit!19438)

(declare-fun Unit!19441 () Unit!19438)

(assert (=> b!608456 (= e!348462 Unit!19441)))

(declare-fun b!608457 () Bool)

(declare-fun e!348458 () Bool)

(assert (=> b!608457 (= e!348458 e!348465)))

(declare-fun res!391256 () Bool)

(assert (=> b!608457 (=> res!391256 e!348465)))

(declare-fun lt!278042 () (_ BitVec 64))

(declare-fun lt!278053 () (_ BitVec 64))

(assert (=> b!608457 (= res!391256 (or (not (= (select (arr!17888 a!2986) j!136) lt!278053)) (not (= (select (arr!17888 a!2986) j!136) lt!278042)) (bvsge j!136 index!984)))))

(declare-fun b!608458 () Bool)

(declare-fun res!391271 () Bool)

(assert (=> b!608458 (=> (not res!391271) (not e!348456))))

(assert (=> b!608458 (= res!391271 (and (= (size!18252 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18252 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18252 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!391263 () Bool)

(assert (=> start!55588 (=> (not res!391263) (not e!348456))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55588 (= res!391263 (validMask!0 mask!3053))))

(assert (=> start!55588 e!348456))

(assert (=> start!55588 true))

(declare-fun array_inv!13662 (array!37282) Bool)

(assert (=> start!55588 (array_inv!13662 a!2986)))

(declare-fun b!608447 () Bool)

(declare-fun res!391277 () Bool)

(assert (=> b!608447 (=> (not res!391277) (not e!348456))))

(assert (=> b!608447 (= res!391277 (validKeyInArray!0 k!1786))))

(declare-fun b!608459 () Bool)

(declare-fun Unit!19442 () Unit!19438)

(assert (=> b!608459 (= e!348455 Unit!19442)))

(declare-fun lt!278048 () Unit!19438)

(assert (=> b!608459 (= lt!278048 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278045 (select (arr!17888 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!608459 (arrayContainsKey!0 lt!278045 (select (arr!17888 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278047 () Unit!19438)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37282 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11982) Unit!19438)

(assert (=> b!608459 (= lt!278047 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11979))))

(assert (=> b!608459 (arrayNoDuplicates!0 lt!278045 #b00000000000000000000000000000000 Nil!11979)))

(declare-fun lt!278040 () Unit!19438)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37282 (_ BitVec 32) (_ BitVec 32)) Unit!19438)

(assert (=> b!608459 (= lt!278040 (lemmaNoDuplicateFromThenFromBigger!0 lt!278045 #b00000000000000000000000000000000 j!136))))

(assert (=> b!608459 (arrayNoDuplicates!0 lt!278045 j!136 Nil!11979)))

(declare-fun lt!278044 () Unit!19438)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37282 (_ BitVec 64) (_ BitVec 32) List!11982) Unit!19438)

(assert (=> b!608459 (= lt!278044 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278045 (select (arr!17888 a!2986) j!136) j!136 Nil!11979))))

(assert (=> b!608459 false))

(declare-fun b!608460 () Bool)

(declare-fun e!348454 () Bool)

(assert (=> b!608460 (= e!348460 (not e!348454))))

(declare-fun res!391262 () Bool)

(assert (=> b!608460 (=> res!391262 e!348454)))

(declare-fun lt!278039 () SeekEntryResult!6335)

(assert (=> b!608460 (= res!391262 (not (= lt!278039 (Found!6335 index!984))))))

(declare-fun lt!278051 () Unit!19438)

(assert (=> b!608460 (= lt!278051 e!348462)))

(declare-fun c!68960 () Bool)

(assert (=> b!608460 (= c!68960 (= lt!278039 Undefined!6335))))

(assert (=> b!608460 (= lt!278039 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278053 lt!278045 mask!3053))))

(assert (=> b!608460 e!348452))

(declare-fun res!391261 () Bool)

(assert (=> b!608460 (=> (not res!391261) (not e!348452))))

(declare-fun lt!278046 () (_ BitVec 32))

(assert (=> b!608460 (= res!391261 (= lt!278043 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278046 vacantSpotIndex!68 lt!278053 lt!278045 mask!3053)))))

(assert (=> b!608460 (= lt!278043 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278046 vacantSpotIndex!68 (select (arr!17888 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!608460 (= lt!278053 (select (store (arr!17888 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!278055 () Unit!19438)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37282 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19438)

(assert (=> b!608460 (= lt!278055 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278046 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!608460 (= lt!278046 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!608461 () Bool)

(assert (=> b!608461 (= e!348451 e!348464)))

(declare-fun res!391270 () Bool)

(assert (=> b!608461 (=> (not res!391270) (not e!348464))))

(assert (=> b!608461 (= res!391270 (= (select (store (arr!17888 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!608461 (= lt!278045 (array!37283 (store (arr!17888 a!2986) i!1108 k!1786) (size!18252 a!2986)))))

(declare-fun b!608462 () Bool)

(declare-fun res!391274 () Bool)

(assert (=> b!608462 (=> res!391274 e!348459)))

(assert (=> b!608462 (= res!391274 (contains!3028 Nil!11979 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608463 () Bool)

(declare-fun res!391273 () Bool)

(assert (=> b!608463 (=> (not res!391273) (not e!348456))))

(assert (=> b!608463 (= res!391273 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!608464 () Bool)

(declare-fun Unit!19443 () Unit!19438)

(assert (=> b!608464 (= e!348462 Unit!19443)))

(assert (=> b!608464 false))

(declare-fun b!608465 () Bool)

(assert (=> b!608465 (= e!348454 e!348463)))

(declare-fun res!391255 () Bool)

(assert (=> b!608465 (=> res!391255 e!348463)))

(assert (=> b!608465 (= res!391255 (or (not (= (select (arr!17888 a!2986) j!136) lt!278053)) (not (= (select (arr!17888 a!2986) j!136) lt!278042))))))

(assert (=> b!608465 e!348458))

(declare-fun res!391257 () Bool)

(assert (=> b!608465 (=> (not res!391257) (not e!348458))))

(assert (=> b!608465 (= res!391257 (= lt!278042 (select (arr!17888 a!2986) j!136)))))

(assert (=> b!608465 (= lt!278042 (select (store (arr!17888 a!2986) i!1108 k!1786) index!984))))

(assert (= (and start!55588 res!391263) b!608458))

(assert (= (and b!608458 res!391271) b!608440))

(assert (= (and b!608440 res!391260) b!608447))

(assert (= (and b!608447 res!391277) b!608463))

(assert (= (and b!608463 res!391273) b!608453))

(assert (= (and b!608453 res!391258) b!608445))

(assert (= (and b!608445 res!391267) b!608443))

(assert (= (and b!608443 res!391264) b!608455))

(assert (= (and b!608455 res!391276) b!608461))

(assert (= (and b!608461 res!391270) b!608446))

(assert (= (and b!608446 res!391259) b!608460))

(assert (= (and b!608460 res!391261) b!608448))

(assert (= (and b!608460 c!68960) b!608464))

(assert (= (and b!608460 (not c!68960)) b!608456))

(assert (= (and b!608460 (not res!391262)) b!608465))

(assert (= (and b!608465 res!391257) b!608457))

(assert (= (and b!608457 (not res!391256)) b!608439))

(assert (= (and b!608439 res!391275) b!608449))

(assert (= (and b!608465 (not res!391255)) b!608452))

(assert (= (and b!608452 c!68959) b!608459))

(assert (= (and b!608452 (not c!68959)) b!608450))

(assert (= (and b!608452 (not res!391265)) b!608454))

(assert (= (and b!608454 res!391269) b!608451))

(assert (= (and b!608454 (not res!391268)) b!608444))

(assert (= (and b!608444 (not res!391266)) b!608441))

(assert (= (and b!608441 (not res!391272)) b!608462))

(assert (= (and b!608462 (not res!391274)) b!608442))

(declare-fun m!585093 () Bool)

(assert (=> b!608465 m!585093))

(declare-fun m!585095 () Bool)

(assert (=> b!608465 m!585095))

(declare-fun m!585097 () Bool)

(assert (=> b!608465 m!585097))

(declare-fun m!585099 () Bool)

(assert (=> b!608447 m!585099))

(assert (=> b!608439 m!585093))

(assert (=> b!608439 m!585093))

(declare-fun m!585101 () Bool)

(assert (=> b!608439 m!585101))

(declare-fun m!585103 () Bool)

(assert (=> b!608446 m!585103))

(assert (=> b!608446 m!585093))

(assert (=> b!608446 m!585093))

(declare-fun m!585105 () Bool)

(assert (=> b!608446 m!585105))

(assert (=> b!608449 m!585093))

(assert (=> b!608449 m!585093))

(declare-fun m!585107 () Bool)

(assert (=> b!608449 m!585107))

(declare-fun m!585109 () Bool)

(assert (=> b!608442 m!585109))

(declare-fun m!585111 () Bool)

(assert (=> b!608459 m!585111))

(assert (=> b!608459 m!585093))

(declare-fun m!585113 () Bool)

(assert (=> b!608459 m!585113))

(declare-fun m!585115 () Bool)

(assert (=> b!608459 m!585115))

(assert (=> b!608459 m!585093))

(assert (=> b!608459 m!585093))

(declare-fun m!585117 () Bool)

(assert (=> b!608459 m!585117))

(declare-fun m!585119 () Bool)

(assert (=> b!608459 m!585119))

(assert (=> b!608459 m!585093))

(declare-fun m!585121 () Bool)

(assert (=> b!608459 m!585121))

(declare-fun m!585123 () Bool)

(assert (=> b!608459 m!585123))

(assert (=> b!608457 m!585093))

(declare-fun m!585125 () Bool)

(assert (=> b!608445 m!585125))

(declare-fun m!585127 () Bool)

(assert (=> b!608460 m!585127))

(declare-fun m!585129 () Bool)

(assert (=> b!608460 m!585129))

(assert (=> b!608460 m!585093))

(declare-fun m!585131 () Bool)

(assert (=> b!608460 m!585131))

(assert (=> b!608460 m!585093))

(assert (=> b!608460 m!585095))

(declare-fun m!585133 () Bool)

(assert (=> b!608460 m!585133))

(declare-fun m!585135 () Bool)

(assert (=> b!608460 m!585135))

(declare-fun m!585137 () Bool)

(assert (=> b!608460 m!585137))

(declare-fun m!585139 () Bool)

(assert (=> b!608453 m!585139))

(assert (=> b!608454 m!585093))

(assert (=> b!608454 m!585093))

(declare-fun m!585141 () Bool)

(assert (=> b!608454 m!585141))

(assert (=> b!608454 m!585093))

(declare-fun m!585143 () Bool)

(assert (=> b!608454 m!585143))

(assert (=> b!608454 m!585093))

(assert (=> b!608454 m!585101))

(assert (=> b!608440 m!585093))

(assert (=> b!608440 m!585093))

(declare-fun m!585145 () Bool)

(assert (=> b!608440 m!585145))

(declare-fun m!585147 () Bool)

(assert (=> b!608443 m!585147))

(assert (=> b!608461 m!585095))

(declare-fun m!585149 () Bool)

(assert (=> b!608461 m!585149))

(declare-fun m!585151 () Bool)

(assert (=> b!608462 m!585151))

(assert (=> b!608451 m!585093))

(assert (=> b!608451 m!585093))

(assert (=> b!608451 m!585107))

(declare-fun m!585153 () Bool)

(assert (=> start!55588 m!585153))

(declare-fun m!585155 () Bool)

(assert (=> start!55588 m!585155))

(declare-fun m!585157 () Bool)

(assert (=> b!608444 m!585157))

(declare-fun m!585159 () Bool)

(assert (=> b!608441 m!585159))

(declare-fun m!585161 () Bool)

(assert (=> b!608463 m!585161))

(declare-fun m!585163 () Bool)

(assert (=> b!608455 m!585163))

(push 1)

