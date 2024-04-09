; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56012 () Bool)

(assert start!56012)

(declare-fun b!615270 () Bool)

(declare-datatypes ((Unit!19940 0))(
  ( (Unit!19941) )
))
(declare-fun e!352774 () Unit!19940)

(declare-fun Unit!19942 () Unit!19940)

(assert (=> b!615270 (= e!352774 Unit!19942)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun res!396406 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37445 0))(
  ( (array!37446 (arr!17965 (Array (_ BitVec 32) (_ BitVec 64))) (size!18329 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37445)

(assert (=> b!615270 (= res!396406 (= (select (store (arr!17965 a!2986) i!1108 k0!1786) index!984) (select (arr!17965 a!2986) j!136)))))

(declare-fun e!352781 () Bool)

(assert (=> b!615270 (=> (not res!396406) (not e!352781))))

(assert (=> b!615270 e!352781))

(declare-fun c!69801 () Bool)

(assert (=> b!615270 (= c!69801 (bvslt j!136 index!984))))

(declare-fun lt!282682 () Unit!19940)

(declare-fun e!352784 () Unit!19940)

(assert (=> b!615270 (= lt!282682 e!352784)))

(declare-fun c!69800 () Bool)

(assert (=> b!615270 (= c!69800 (bvslt index!984 j!136))))

(declare-fun lt!282684 () Unit!19940)

(declare-fun e!352776 () Unit!19940)

(assert (=> b!615270 (= lt!282684 e!352776)))

(assert (=> b!615270 false))

(declare-fun b!615271 () Bool)

(declare-fun res!396414 () Bool)

(declare-fun e!352775 () Bool)

(assert (=> b!615271 (=> (not res!396414) (not e!352775))))

(declare-fun arrayContainsKey!0 (array!37445 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!615271 (= res!396414 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!615272 () Bool)

(declare-fun lt!282688 () array!37445)

(declare-fun e!352782 () Bool)

(assert (=> b!615272 (= e!352782 (arrayContainsKey!0 lt!282688 (select (arr!17965 a!2986) j!136) index!984))))

(declare-fun b!615273 () Bool)

(declare-fun Unit!19943 () Unit!19940)

(assert (=> b!615273 (= e!352776 Unit!19943)))

(declare-fun b!615274 () Bool)

(declare-fun res!396415 () Bool)

(assert (=> b!615274 (=> (not res!396415) (not e!352775))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!615274 (= res!396415 (validKeyInArray!0 k0!1786))))

(declare-fun b!615275 () Bool)

(declare-fun res!396416 () Bool)

(assert (=> b!615275 (= res!396416 (bvsge j!136 index!984))))

(declare-fun e!352785 () Bool)

(assert (=> b!615275 (=> res!396416 e!352785)))

(assert (=> b!615275 (= e!352781 e!352785)))

(declare-fun b!615276 () Bool)

(declare-fun res!396408 () Bool)

(assert (=> b!615276 (= res!396408 (arrayContainsKey!0 lt!282688 (select (arr!17965 a!2986) j!136) j!136))))

(assert (=> b!615276 (=> (not res!396408) (not e!352782))))

(assert (=> b!615276 (= e!352785 e!352782)))

(declare-fun b!615277 () Bool)

(declare-fun e!352783 () Bool)

(declare-datatypes ((SeekEntryResult!6412 0))(
  ( (MissingZero!6412 (index!27931 (_ BitVec 32))) (Found!6412 (index!27932 (_ BitVec 32))) (Intermediate!6412 (undefined!7224 Bool) (index!27933 (_ BitVec 32)) (x!56757 (_ BitVec 32))) (Undefined!6412) (MissingVacant!6412 (index!27934 (_ BitVec 32))) )
))
(declare-fun lt!282693 () SeekEntryResult!6412)

(declare-fun lt!282690 () SeekEntryResult!6412)

(assert (=> b!615277 (= e!352783 (= lt!282693 lt!282690))))

(declare-fun b!615278 () Bool)

(declare-fun Unit!19944 () Unit!19940)

(assert (=> b!615278 (= e!352774 Unit!19944)))

(declare-fun b!615279 () Bool)

(declare-fun Unit!19945 () Unit!19940)

(assert (=> b!615279 (= e!352784 Unit!19945)))

(declare-fun res!396418 () Bool)

(assert (=> start!56012 (=> (not res!396418) (not e!352775))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56012 (= res!396418 (validMask!0 mask!3053))))

(assert (=> start!56012 e!352775))

(assert (=> start!56012 true))

(declare-fun array_inv!13739 (array!37445) Bool)

(assert (=> start!56012 (array_inv!13739 a!2986)))

(declare-fun b!615280 () Bool)

(declare-fun e!352773 () Unit!19940)

(declare-fun Unit!19946 () Unit!19940)

(assert (=> b!615280 (= e!352773 Unit!19946)))

(declare-fun b!615281 () Bool)

(declare-fun e!352779 () Bool)

(declare-fun e!352778 () Bool)

(assert (=> b!615281 (= e!352779 e!352778)))

(declare-fun res!396417 () Bool)

(assert (=> b!615281 (=> (not res!396417) (not e!352778))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!615281 (= res!396417 (and (= lt!282693 (Found!6412 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17965 a!2986) index!984) (select (arr!17965 a!2986) j!136))) (not (= (select (arr!17965 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37445 (_ BitVec 32)) SeekEntryResult!6412)

(assert (=> b!615281 (= lt!282693 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17965 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!615282 () Bool)

(assert (=> b!615282 false))

(declare-fun lt!282683 () Unit!19940)

(declare-datatypes ((List!12059 0))(
  ( (Nil!12056) (Cons!12055 (h!13100 (_ BitVec 64)) (t!18295 List!12059)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37445 (_ BitVec 64) (_ BitVec 32) List!12059) Unit!19940)

(assert (=> b!615282 (= lt!282683 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282688 (select (arr!17965 a!2986) j!136) j!136 Nil!12056))))

(declare-fun arrayNoDuplicates!0 (array!37445 (_ BitVec 32) List!12059) Bool)

(assert (=> b!615282 (arrayNoDuplicates!0 lt!282688 j!136 Nil!12056)))

(declare-fun lt!282687 () Unit!19940)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37445 (_ BitVec 32) (_ BitVec 32)) Unit!19940)

(assert (=> b!615282 (= lt!282687 (lemmaNoDuplicateFromThenFromBigger!0 lt!282688 #b00000000000000000000000000000000 j!136))))

(assert (=> b!615282 (arrayNoDuplicates!0 lt!282688 #b00000000000000000000000000000000 Nil!12056)))

(declare-fun lt!282681 () Unit!19940)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37445 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12059) Unit!19940)

(assert (=> b!615282 (= lt!282681 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12056))))

(assert (=> b!615282 (arrayContainsKey!0 lt!282688 (select (arr!17965 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282677 () Unit!19940)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37445 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19940)

(assert (=> b!615282 (= lt!282677 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282688 (select (arr!17965 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!19947 () Unit!19940)

(assert (=> b!615282 (= e!352784 Unit!19947)))

(declare-fun b!615283 () Bool)

(declare-fun res!396407 () Bool)

(assert (=> b!615283 (=> (not res!396407) (not e!352775))))

(assert (=> b!615283 (= res!396407 (and (= (size!18329 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18329 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18329 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!615284 () Bool)

(declare-fun e!352780 () Bool)

(assert (=> b!615284 (= e!352780 e!352779)))

(declare-fun res!396405 () Bool)

(assert (=> b!615284 (=> (not res!396405) (not e!352779))))

(assert (=> b!615284 (= res!396405 (= (select (store (arr!17965 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!615284 (= lt!282688 (array!37446 (store (arr!17965 a!2986) i!1108 k0!1786) (size!18329 a!2986)))))

(declare-fun b!615285 () Bool)

(assert (=> b!615285 (= e!352775 e!352780)))

(declare-fun res!396411 () Bool)

(assert (=> b!615285 (=> (not res!396411) (not e!352780))))

(declare-fun lt!282685 () SeekEntryResult!6412)

(assert (=> b!615285 (= res!396411 (or (= lt!282685 (MissingZero!6412 i!1108)) (= lt!282685 (MissingVacant!6412 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37445 (_ BitVec 32)) SeekEntryResult!6412)

(assert (=> b!615285 (= lt!282685 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!615286 () Bool)

(declare-fun Unit!19948 () Unit!19940)

(assert (=> b!615286 (= e!352773 Unit!19948)))

(assert (=> b!615286 false))

(declare-fun b!615287 () Bool)

(declare-fun e!352786 () Bool)

(assert (=> b!615287 (= e!352786 (arrayContainsKey!0 lt!282688 (select (arr!17965 a!2986) j!136) index!984))))

(declare-fun b!615288 () Bool)

(declare-fun res!396404 () Bool)

(assert (=> b!615288 (=> (not res!396404) (not e!352780))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37445 (_ BitVec 32)) Bool)

(assert (=> b!615288 (= res!396404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!615289 () Bool)

(assert (=> b!615289 false))

(declare-fun lt!282680 () Unit!19940)

(assert (=> b!615289 (= lt!282680 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282688 (select (arr!17965 a!2986) j!136) index!984 Nil!12056))))

(assert (=> b!615289 (arrayNoDuplicates!0 lt!282688 index!984 Nil!12056)))

(declare-fun lt!282695 () Unit!19940)

(assert (=> b!615289 (= lt!282695 (lemmaNoDuplicateFromThenFromBigger!0 lt!282688 #b00000000000000000000000000000000 index!984))))

(assert (=> b!615289 (arrayNoDuplicates!0 lt!282688 #b00000000000000000000000000000000 Nil!12056)))

(declare-fun lt!282679 () Unit!19940)

(assert (=> b!615289 (= lt!282679 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12056))))

(assert (=> b!615289 (arrayContainsKey!0 lt!282688 (select (arr!17965 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282694 () Unit!19940)

(assert (=> b!615289 (= lt!282694 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282688 (select (arr!17965 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!615289 e!352786))

(declare-fun res!396412 () Bool)

(assert (=> b!615289 (=> (not res!396412) (not e!352786))))

(assert (=> b!615289 (= res!396412 (arrayContainsKey!0 lt!282688 (select (arr!17965 a!2986) j!136) j!136))))

(declare-fun Unit!19949 () Unit!19940)

(assert (=> b!615289 (= e!352776 Unit!19949)))

(declare-fun b!615290 () Bool)

(declare-fun res!396410 () Bool)

(assert (=> b!615290 (=> (not res!396410) (not e!352775))))

(assert (=> b!615290 (= res!396410 (validKeyInArray!0 (select (arr!17965 a!2986) j!136)))))

(declare-fun b!615291 () Bool)

(declare-fun res!396419 () Bool)

(assert (=> b!615291 (=> (not res!396419) (not e!352780))))

(assert (=> b!615291 (= res!396419 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17965 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!615292 () Bool)

(assert (=> b!615292 (= e!352778 (not true))))

(declare-fun lt!282691 () Unit!19940)

(assert (=> b!615292 (= lt!282691 e!352774)))

(declare-fun c!69802 () Bool)

(declare-fun lt!282696 () SeekEntryResult!6412)

(assert (=> b!615292 (= c!69802 (= lt!282696 (Found!6412 index!984)))))

(declare-fun lt!282678 () Unit!19940)

(assert (=> b!615292 (= lt!282678 e!352773)))

(declare-fun c!69803 () Bool)

(assert (=> b!615292 (= c!69803 (= lt!282696 Undefined!6412))))

(declare-fun lt!282689 () (_ BitVec 64))

(assert (=> b!615292 (= lt!282696 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282689 lt!282688 mask!3053))))

(assert (=> b!615292 e!352783))

(declare-fun res!396409 () Bool)

(assert (=> b!615292 (=> (not res!396409) (not e!352783))))

(declare-fun lt!282692 () (_ BitVec 32))

(assert (=> b!615292 (= res!396409 (= lt!282690 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282692 vacantSpotIndex!68 lt!282689 lt!282688 mask!3053)))))

(assert (=> b!615292 (= lt!282690 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282692 vacantSpotIndex!68 (select (arr!17965 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!615292 (= lt!282689 (select (store (arr!17965 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!282686 () Unit!19940)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37445 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19940)

(assert (=> b!615292 (= lt!282686 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282692 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!615292 (= lt!282692 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!615293 () Bool)

(declare-fun res!396413 () Bool)

(assert (=> b!615293 (=> (not res!396413) (not e!352780))))

(assert (=> b!615293 (= res!396413 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12056))))

(assert (= (and start!56012 res!396418) b!615283))

(assert (= (and b!615283 res!396407) b!615290))

(assert (= (and b!615290 res!396410) b!615274))

(assert (= (and b!615274 res!396415) b!615271))

(assert (= (and b!615271 res!396414) b!615285))

(assert (= (and b!615285 res!396411) b!615288))

(assert (= (and b!615288 res!396404) b!615293))

(assert (= (and b!615293 res!396413) b!615291))

(assert (= (and b!615291 res!396419) b!615284))

(assert (= (and b!615284 res!396405) b!615281))

(assert (= (and b!615281 res!396417) b!615292))

(assert (= (and b!615292 res!396409) b!615277))

(assert (= (and b!615292 c!69803) b!615286))

(assert (= (and b!615292 (not c!69803)) b!615280))

(assert (= (and b!615292 c!69802) b!615270))

(assert (= (and b!615292 (not c!69802)) b!615278))

(assert (= (and b!615270 res!396406) b!615275))

(assert (= (and b!615275 (not res!396416)) b!615276))

(assert (= (and b!615276 res!396408) b!615272))

(assert (= (and b!615270 c!69801) b!615282))

(assert (= (and b!615270 (not c!69801)) b!615279))

(assert (= (and b!615270 c!69800) b!615289))

(assert (= (and b!615270 (not c!69800)) b!615273))

(assert (= (and b!615289 res!396412) b!615287))

(declare-fun m!591523 () Bool)

(assert (=> b!615272 m!591523))

(assert (=> b!615272 m!591523))

(declare-fun m!591525 () Bool)

(assert (=> b!615272 m!591525))

(declare-fun m!591527 () Bool)

(assert (=> b!615293 m!591527))

(assert (=> b!615289 m!591523))

(declare-fun m!591529 () Bool)

(assert (=> b!615289 m!591529))

(assert (=> b!615289 m!591523))

(declare-fun m!591531 () Bool)

(assert (=> b!615289 m!591531))

(assert (=> b!615289 m!591523))

(declare-fun m!591533 () Bool)

(assert (=> b!615289 m!591533))

(assert (=> b!615289 m!591523))

(declare-fun m!591535 () Bool)

(assert (=> b!615289 m!591535))

(declare-fun m!591537 () Bool)

(assert (=> b!615289 m!591537))

(declare-fun m!591539 () Bool)

(assert (=> b!615289 m!591539))

(declare-fun m!591541 () Bool)

(assert (=> b!615289 m!591541))

(assert (=> b!615289 m!591523))

(declare-fun m!591543 () Bool)

(assert (=> b!615289 m!591543))

(declare-fun m!591545 () Bool)

(assert (=> b!615282 m!591545))

(assert (=> b!615282 m!591523))

(assert (=> b!615282 m!591523))

(declare-fun m!591547 () Bool)

(assert (=> b!615282 m!591547))

(assert (=> b!615282 m!591537))

(assert (=> b!615282 m!591523))

(declare-fun m!591549 () Bool)

(assert (=> b!615282 m!591549))

(assert (=> b!615282 m!591523))

(declare-fun m!591551 () Bool)

(assert (=> b!615282 m!591551))

(declare-fun m!591553 () Bool)

(assert (=> b!615282 m!591553))

(assert (=> b!615282 m!591539))

(declare-fun m!591555 () Bool)

(assert (=> b!615281 m!591555))

(assert (=> b!615281 m!591523))

(assert (=> b!615281 m!591523))

(declare-fun m!591557 () Bool)

(assert (=> b!615281 m!591557))

(declare-fun m!591559 () Bool)

(assert (=> b!615288 m!591559))

(assert (=> b!615290 m!591523))

(assert (=> b!615290 m!591523))

(declare-fun m!591561 () Bool)

(assert (=> b!615290 m!591561))

(declare-fun m!591563 () Bool)

(assert (=> b!615285 m!591563))

(declare-fun m!591565 () Bool)

(assert (=> b!615291 m!591565))

(assert (=> b!615287 m!591523))

(assert (=> b!615287 m!591523))

(assert (=> b!615287 m!591525))

(declare-fun m!591567 () Bool)

(assert (=> b!615271 m!591567))

(declare-fun m!591569 () Bool)

(assert (=> start!56012 m!591569))

(declare-fun m!591571 () Bool)

(assert (=> start!56012 m!591571))

(declare-fun m!591573 () Bool)

(assert (=> b!615284 m!591573))

(declare-fun m!591575 () Bool)

(assert (=> b!615284 m!591575))

(assert (=> b!615270 m!591573))

(declare-fun m!591577 () Bool)

(assert (=> b!615270 m!591577))

(assert (=> b!615270 m!591523))

(assert (=> b!615276 m!591523))

(assert (=> b!615276 m!591523))

(assert (=> b!615276 m!591531))

(declare-fun m!591579 () Bool)

(assert (=> b!615274 m!591579))

(declare-fun m!591581 () Bool)

(assert (=> b!615292 m!591581))

(declare-fun m!591583 () Bool)

(assert (=> b!615292 m!591583))

(assert (=> b!615292 m!591523))

(assert (=> b!615292 m!591573))

(declare-fun m!591585 () Bool)

(assert (=> b!615292 m!591585))

(assert (=> b!615292 m!591523))

(declare-fun m!591587 () Bool)

(assert (=> b!615292 m!591587))

(declare-fun m!591589 () Bool)

(assert (=> b!615292 m!591589))

(declare-fun m!591591 () Bool)

(assert (=> b!615292 m!591591))

(check-sat (not b!615281) (not start!56012) (not b!615274) (not b!615293) (not b!615276) (not b!615287) (not b!615285) (not b!615288) (not b!615272) (not b!615292) (not b!615271) (not b!615289) (not b!615282) (not b!615290))
(check-sat)
