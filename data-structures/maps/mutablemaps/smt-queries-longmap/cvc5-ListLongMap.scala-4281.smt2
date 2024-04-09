; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59610 () Bool)

(assert start!59610)

(declare-fun b!658440 () Bool)

(declare-fun e!378277 () Bool)

(declare-fun e!378267 () Bool)

(assert (=> b!658440 (= e!378277 e!378267)))

(declare-fun res!427095 () Bool)

(assert (=> b!658440 (=> (not res!427095) (not e!378267))))

(declare-datatypes ((SeekEntryResult!7002 0))(
  ( (MissingZero!7002 (index!30372 (_ BitVec 32))) (Found!7002 (index!30373 (_ BitVec 32))) (Intermediate!7002 (undefined!7814 Bool) (index!30374 (_ BitVec 32)) (x!59190 (_ BitVec 32))) (Undefined!7002) (MissingVacant!7002 (index!30375 (_ BitVec 32))) )
))
(declare-fun lt!307996 () SeekEntryResult!7002)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38724 0))(
  ( (array!38725 (arr!18555 (Array (_ BitVec 32) (_ BitVec 64))) (size!18919 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38724)

(assert (=> b!658440 (= res!427095 (and (= lt!307996 (Found!7002 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18555 a!2986) index!984) (select (arr!18555 a!2986) j!136))) (not (= (select (arr!18555 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38724 (_ BitVec 32)) SeekEntryResult!7002)

(assert (=> b!658440 (= lt!307996 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18555 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!658441 () Bool)

(declare-fun e!378269 () Bool)

(declare-fun e!378270 () Bool)

(assert (=> b!658441 (= e!378269 e!378270)))

(declare-fun res!427096 () Bool)

(assert (=> b!658441 (=> (not res!427096) (not e!378270))))

(declare-fun lt!308002 () SeekEntryResult!7002)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!658441 (= res!427096 (or (= lt!308002 (MissingZero!7002 i!1108)) (= lt!308002 (MissingVacant!7002 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38724 (_ BitVec 32)) SeekEntryResult!7002)

(assert (=> b!658441 (= lt!308002 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!658442 () Bool)

(declare-fun res!427109 () Bool)

(assert (=> b!658442 (=> (not res!427109) (not e!378270))))

(declare-datatypes ((List!12649 0))(
  ( (Nil!12646) (Cons!12645 (h!13690 (_ BitVec 64)) (t!18885 List!12649)) )
))
(declare-fun arrayNoDuplicates!0 (array!38724 (_ BitVec 32) List!12649) Bool)

(assert (=> b!658442 (= res!427109 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12646))))

(declare-fun b!658443 () Bool)

(declare-datatypes ((Unit!22864 0))(
  ( (Unit!22865) )
))
(declare-fun e!378265 () Unit!22864)

(declare-fun Unit!22866 () Unit!22864)

(assert (=> b!658443 (= e!378265 Unit!22866)))

(declare-fun b!658444 () Bool)

(declare-fun e!378273 () Unit!22864)

(declare-fun Unit!22867 () Unit!22864)

(assert (=> b!658444 (= e!378273 Unit!22867)))

(declare-fun b!658445 () Bool)

(declare-fun e!378266 () Unit!22864)

(declare-fun Unit!22868 () Unit!22864)

(assert (=> b!658445 (= e!378266 Unit!22868)))

(declare-fun e!378271 () Bool)

(declare-fun lt!307994 () array!38724)

(declare-fun b!658446 () Bool)

(declare-fun arrayContainsKey!0 (array!38724 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!658446 (= e!378271 (arrayContainsKey!0 lt!307994 (select (arr!18555 a!2986) j!136) index!984))))

(declare-fun b!658447 () Bool)

(declare-fun Unit!22869 () Unit!22864)

(assert (=> b!658447 (= e!378273 Unit!22869)))

(assert (=> b!658447 false))

(declare-fun b!658448 () Bool)

(declare-fun res!427099 () Bool)

(assert (=> b!658448 (=> (not res!427099) (not e!378269))))

(assert (=> b!658448 (= res!427099 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!658450 () Bool)

(declare-fun res!427094 () Bool)

(assert (=> b!658450 (=> (not res!427094) (not e!378269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!658450 (= res!427094 (validKeyInArray!0 (select (arr!18555 a!2986) j!136)))))

(declare-fun b!658451 () Bool)

(declare-fun e!378264 () Bool)

(assert (=> b!658451 (= e!378264 (arrayContainsKey!0 lt!307994 (select (arr!18555 a!2986) j!136) index!984))))

(declare-fun b!658452 () Bool)

(declare-fun res!427106 () Bool)

(assert (=> b!658452 (=> (not res!427106) (not e!378269))))

(assert (=> b!658452 (= res!427106 (and (= (size!18919 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18919 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18919 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!658453 () Bool)

(assert (=> b!658453 (= e!378267 (not true))))

(declare-fun lt!308007 () Unit!22864)

(declare-fun e!378272 () Unit!22864)

(assert (=> b!658453 (= lt!308007 e!378272)))

(declare-fun c!76041 () Bool)

(declare-fun lt!308005 () SeekEntryResult!7002)

(assert (=> b!658453 (= c!76041 (= lt!308005 (Found!7002 index!984)))))

(declare-fun lt!307988 () Unit!22864)

(assert (=> b!658453 (= lt!307988 e!378273)))

(declare-fun c!76040 () Bool)

(assert (=> b!658453 (= c!76040 (= lt!308005 Undefined!7002))))

(declare-fun lt!307991 () (_ BitVec 64))

(assert (=> b!658453 (= lt!308005 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307991 lt!307994 mask!3053))))

(declare-fun e!378275 () Bool)

(assert (=> b!658453 e!378275))

(declare-fun res!427097 () Bool)

(assert (=> b!658453 (=> (not res!427097) (not e!378275))))

(declare-fun lt!307999 () (_ BitVec 32))

(declare-fun lt!307995 () SeekEntryResult!7002)

(assert (=> b!658453 (= res!427097 (= lt!307995 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307999 vacantSpotIndex!68 lt!307991 lt!307994 mask!3053)))))

(assert (=> b!658453 (= lt!307995 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307999 vacantSpotIndex!68 (select (arr!18555 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!658453 (= lt!307991 (select (store (arr!18555 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!308006 () Unit!22864)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38724 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22864)

(assert (=> b!658453 (= lt!308006 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307999 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!658453 (= lt!307999 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!658454 () Bool)

(declare-fun Unit!22870 () Unit!22864)

(assert (=> b!658454 (= e!378272 Unit!22870)))

(declare-fun res!427102 () Bool)

(assert (=> b!658454 (= res!427102 (= (select (store (arr!18555 a!2986) i!1108 k!1786) index!984) (select (arr!18555 a!2986) j!136)))))

(declare-fun e!378274 () Bool)

(assert (=> b!658454 (=> (not res!427102) (not e!378274))))

(assert (=> b!658454 e!378274))

(declare-fun c!76042 () Bool)

(assert (=> b!658454 (= c!76042 (bvslt j!136 index!984))))

(declare-fun lt!307997 () Unit!22864)

(assert (=> b!658454 (= lt!307997 e!378266)))

(declare-fun c!76043 () Bool)

(assert (=> b!658454 (= c!76043 (bvslt index!984 j!136))))

(declare-fun lt!308000 () Unit!22864)

(assert (=> b!658454 (= lt!308000 e!378265)))

(assert (=> b!658454 false))

(declare-fun b!658455 () Bool)

(declare-fun res!427107 () Bool)

(assert (=> b!658455 (=> (not res!427107) (not e!378270))))

(assert (=> b!658455 (= res!427107 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18555 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!658456 () Bool)

(declare-fun Unit!22871 () Unit!22864)

(assert (=> b!658456 (= e!378272 Unit!22871)))

(declare-fun b!658457 () Bool)

(declare-fun res!427108 () Bool)

(assert (=> b!658457 (=> (not res!427108) (not e!378270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38724 (_ BitVec 32)) Bool)

(assert (=> b!658457 (= res!427108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!658449 () Bool)

(assert (=> b!658449 false))

(declare-fun lt!308003 () Unit!22864)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38724 (_ BitVec 64) (_ BitVec 32) List!12649) Unit!22864)

(assert (=> b!658449 (= lt!308003 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307994 (select (arr!18555 a!2986) j!136) j!136 Nil!12646))))

(assert (=> b!658449 (arrayNoDuplicates!0 lt!307994 j!136 Nil!12646)))

(declare-fun lt!307990 () Unit!22864)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38724 (_ BitVec 32) (_ BitVec 32)) Unit!22864)

(assert (=> b!658449 (= lt!307990 (lemmaNoDuplicateFromThenFromBigger!0 lt!307994 #b00000000000000000000000000000000 j!136))))

(assert (=> b!658449 (arrayNoDuplicates!0 lt!307994 #b00000000000000000000000000000000 Nil!12646)))

(declare-fun lt!307989 () Unit!22864)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38724 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12649) Unit!22864)

(assert (=> b!658449 (= lt!307989 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12646))))

(assert (=> b!658449 (arrayContainsKey!0 lt!307994 (select (arr!18555 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!308001 () Unit!22864)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38724 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22864)

(assert (=> b!658449 (= lt!308001 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307994 (select (arr!18555 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22872 () Unit!22864)

(assert (=> b!658449 (= e!378266 Unit!22872)))

(declare-fun res!427103 () Bool)

(assert (=> start!59610 (=> (not res!427103) (not e!378269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59610 (= res!427103 (validMask!0 mask!3053))))

(assert (=> start!59610 e!378269))

(assert (=> start!59610 true))

(declare-fun array_inv!14329 (array!38724) Bool)

(assert (=> start!59610 (array_inv!14329 a!2986)))

(declare-fun b!658458 () Bool)

(assert (=> b!658458 (= e!378270 e!378277)))

(declare-fun res!427100 () Bool)

(assert (=> b!658458 (=> (not res!427100) (not e!378277))))

(assert (=> b!658458 (= res!427100 (= (select (store (arr!18555 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!658458 (= lt!307994 (array!38725 (store (arr!18555 a!2986) i!1108 k!1786) (size!18919 a!2986)))))

(declare-fun b!658459 () Bool)

(declare-fun res!427101 () Bool)

(assert (=> b!658459 (= res!427101 (bvsge j!136 index!984))))

(declare-fun e!378276 () Bool)

(assert (=> b!658459 (=> res!427101 e!378276)))

(assert (=> b!658459 (= e!378274 e!378276)))

(declare-fun b!658460 () Bool)

(assert (=> b!658460 (= e!378275 (= lt!307996 lt!307995))))

(declare-fun b!658461 () Bool)

(declare-fun res!427098 () Bool)

(assert (=> b!658461 (=> (not res!427098) (not e!378269))))

(assert (=> b!658461 (= res!427098 (validKeyInArray!0 k!1786))))

(declare-fun res!427105 () Bool)

(declare-fun b!658462 () Bool)

(assert (=> b!658462 (= res!427105 (arrayContainsKey!0 lt!307994 (select (arr!18555 a!2986) j!136) j!136))))

(assert (=> b!658462 (=> (not res!427105) (not e!378271))))

(assert (=> b!658462 (= e!378276 e!378271)))

(declare-fun b!658463 () Bool)

(assert (=> b!658463 false))

(declare-fun lt!308004 () Unit!22864)

(assert (=> b!658463 (= lt!308004 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307994 (select (arr!18555 a!2986) j!136) index!984 Nil!12646))))

(assert (=> b!658463 (arrayNoDuplicates!0 lt!307994 index!984 Nil!12646)))

(declare-fun lt!307992 () Unit!22864)

(assert (=> b!658463 (= lt!307992 (lemmaNoDuplicateFromThenFromBigger!0 lt!307994 #b00000000000000000000000000000000 index!984))))

(assert (=> b!658463 (arrayNoDuplicates!0 lt!307994 #b00000000000000000000000000000000 Nil!12646)))

(declare-fun lt!307993 () Unit!22864)

(assert (=> b!658463 (= lt!307993 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12646))))

(assert (=> b!658463 (arrayContainsKey!0 lt!307994 (select (arr!18555 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307998 () Unit!22864)

(assert (=> b!658463 (= lt!307998 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307994 (select (arr!18555 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!658463 e!378264))

(declare-fun res!427104 () Bool)

(assert (=> b!658463 (=> (not res!427104) (not e!378264))))

(assert (=> b!658463 (= res!427104 (arrayContainsKey!0 lt!307994 (select (arr!18555 a!2986) j!136) j!136))))

(declare-fun Unit!22873 () Unit!22864)

(assert (=> b!658463 (= e!378265 Unit!22873)))

(assert (= (and start!59610 res!427103) b!658452))

(assert (= (and b!658452 res!427106) b!658450))

(assert (= (and b!658450 res!427094) b!658461))

(assert (= (and b!658461 res!427098) b!658448))

(assert (= (and b!658448 res!427099) b!658441))

(assert (= (and b!658441 res!427096) b!658457))

(assert (= (and b!658457 res!427108) b!658442))

(assert (= (and b!658442 res!427109) b!658455))

(assert (= (and b!658455 res!427107) b!658458))

(assert (= (and b!658458 res!427100) b!658440))

(assert (= (and b!658440 res!427095) b!658453))

(assert (= (and b!658453 res!427097) b!658460))

(assert (= (and b!658453 c!76040) b!658447))

(assert (= (and b!658453 (not c!76040)) b!658444))

(assert (= (and b!658453 c!76041) b!658454))

(assert (= (and b!658453 (not c!76041)) b!658456))

(assert (= (and b!658454 res!427102) b!658459))

(assert (= (and b!658459 (not res!427101)) b!658462))

(assert (= (and b!658462 res!427105) b!658446))

(assert (= (and b!658454 c!76042) b!658449))

(assert (= (and b!658454 (not c!76042)) b!658445))

(assert (= (and b!658454 c!76043) b!658463))

(assert (= (and b!658454 (not c!76043)) b!658443))

(assert (= (and b!658463 res!427104) b!658451))

(declare-fun m!631491 () Bool)

(assert (=> b!658449 m!631491))

(declare-fun m!631493 () Bool)

(assert (=> b!658449 m!631493))

(assert (=> b!658449 m!631491))

(declare-fun m!631495 () Bool)

(assert (=> b!658449 m!631495))

(assert (=> b!658449 m!631491))

(declare-fun m!631497 () Bool)

(assert (=> b!658449 m!631497))

(declare-fun m!631499 () Bool)

(assert (=> b!658449 m!631499))

(assert (=> b!658449 m!631491))

(declare-fun m!631501 () Bool)

(assert (=> b!658449 m!631501))

(declare-fun m!631503 () Bool)

(assert (=> b!658449 m!631503))

(declare-fun m!631505 () Bool)

(assert (=> b!658449 m!631505))

(declare-fun m!631507 () Bool)

(assert (=> b!658442 m!631507))

(declare-fun m!631509 () Bool)

(assert (=> start!59610 m!631509))

(declare-fun m!631511 () Bool)

(assert (=> start!59610 m!631511))

(declare-fun m!631513 () Bool)

(assert (=> b!658454 m!631513))

(declare-fun m!631515 () Bool)

(assert (=> b!658454 m!631515))

(assert (=> b!658454 m!631491))

(declare-fun m!631517 () Bool)

(assert (=> b!658463 m!631517))

(assert (=> b!658463 m!631491))

(declare-fun m!631519 () Bool)

(assert (=> b!658463 m!631519))

(assert (=> b!658463 m!631499))

(assert (=> b!658463 m!631491))

(declare-fun m!631521 () Bool)

(assert (=> b!658463 m!631521))

(assert (=> b!658463 m!631505))

(assert (=> b!658463 m!631491))

(declare-fun m!631523 () Bool)

(assert (=> b!658463 m!631523))

(assert (=> b!658463 m!631491))

(declare-fun m!631525 () Bool)

(assert (=> b!658463 m!631525))

(assert (=> b!658463 m!631491))

(declare-fun m!631527 () Bool)

(assert (=> b!658463 m!631527))

(assert (=> b!658446 m!631491))

(assert (=> b!658446 m!631491))

(declare-fun m!631529 () Bool)

(assert (=> b!658446 m!631529))

(declare-fun m!631531 () Bool)

(assert (=> b!658440 m!631531))

(assert (=> b!658440 m!631491))

(assert (=> b!658440 m!631491))

(declare-fun m!631533 () Bool)

(assert (=> b!658440 m!631533))

(declare-fun m!631535 () Bool)

(assert (=> b!658441 m!631535))

(assert (=> b!658451 m!631491))

(assert (=> b!658451 m!631491))

(assert (=> b!658451 m!631529))

(declare-fun m!631537 () Bool)

(assert (=> b!658461 m!631537))

(assert (=> b!658458 m!631513))

(declare-fun m!631539 () Bool)

(assert (=> b!658458 m!631539))

(declare-fun m!631541 () Bool)

(assert (=> b!658457 m!631541))

(declare-fun m!631543 () Bool)

(assert (=> b!658455 m!631543))

(declare-fun m!631545 () Bool)

(assert (=> b!658453 m!631545))

(declare-fun m!631547 () Bool)

(assert (=> b!658453 m!631547))

(assert (=> b!658453 m!631491))

(declare-fun m!631549 () Bool)

(assert (=> b!658453 m!631549))

(declare-fun m!631551 () Bool)

(assert (=> b!658453 m!631551))

(declare-fun m!631553 () Bool)

(assert (=> b!658453 m!631553))

(assert (=> b!658453 m!631491))

(declare-fun m!631555 () Bool)

(assert (=> b!658453 m!631555))

(assert (=> b!658453 m!631513))

(assert (=> b!658450 m!631491))

(assert (=> b!658450 m!631491))

(declare-fun m!631557 () Bool)

(assert (=> b!658450 m!631557))

(assert (=> b!658462 m!631491))

(assert (=> b!658462 m!631491))

(assert (=> b!658462 m!631519))

(declare-fun m!631559 () Bool)

(assert (=> b!658448 m!631559))

(push 1)

