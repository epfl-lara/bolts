; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58156 () Bool)

(assert start!58156)

(declare-fun b!642521 () Bool)

(declare-fun e!367984 () Bool)

(declare-fun e!367996 () Bool)

(assert (=> b!642521 (= e!367984 (not e!367996))))

(declare-fun res!416373 () Bool)

(assert (=> b!642521 (=> res!416373 e!367996)))

(declare-datatypes ((SeekEntryResult!6845 0))(
  ( (MissingZero!6845 (index!29705 (_ BitVec 32))) (Found!6845 (index!29706 (_ BitVec 32))) (Intermediate!6845 (undefined!7657 Bool) (index!29707 (_ BitVec 32)) (x!58492 (_ BitVec 32))) (Undefined!6845) (MissingVacant!6845 (index!29708 (_ BitVec 32))) )
))
(declare-fun lt!297676 () SeekEntryResult!6845)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!642521 (= res!416373 (not (= lt!297676 (Found!6845 index!984))))))

(declare-datatypes ((Unit!21742 0))(
  ( (Unit!21743) )
))
(declare-fun lt!297670 () Unit!21742)

(declare-fun e!367988 () Unit!21742)

(assert (=> b!642521 (= lt!297670 e!367988)))

(declare-fun c!73445 () Bool)

(assert (=> b!642521 (= c!73445 (= lt!297676 Undefined!6845))))

(declare-datatypes ((array!38371 0))(
  ( (array!38372 (arr!18398 (Array (_ BitVec 32) (_ BitVec 64))) (size!18762 (_ BitVec 32))) )
))
(declare-fun lt!297671 () array!38371)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!297665 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38371 (_ BitVec 32)) SeekEntryResult!6845)

(assert (=> b!642521 (= lt!297676 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297665 lt!297671 mask!3053))))

(declare-fun e!367992 () Bool)

(assert (=> b!642521 e!367992))

(declare-fun res!416381 () Bool)

(assert (=> b!642521 (=> (not res!416381) (not e!367992))))

(declare-fun lt!297666 () SeekEntryResult!6845)

(declare-fun lt!297677 () (_ BitVec 32))

(assert (=> b!642521 (= res!416381 (= lt!297666 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297677 vacantSpotIndex!68 lt!297665 lt!297671 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38371)

(assert (=> b!642521 (= lt!297666 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297677 vacantSpotIndex!68 (select (arr!18398 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!642521 (= lt!297665 (select (store (arr!18398 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!297668 () Unit!21742)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38371 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21742)

(assert (=> b!642521 (= lt!297668 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297677 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!642521 (= lt!297677 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!642522 () Bool)

(declare-fun res!416372 () Bool)

(declare-fun e!367989 () Bool)

(assert (=> b!642522 (=> (not res!416372) (not e!367989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!642522 (= res!416372 (validKeyInArray!0 (select (arr!18398 a!2986) j!136)))))

(declare-fun b!642523 () Bool)

(declare-fun e!367995 () Unit!21742)

(declare-fun Unit!21744 () Unit!21742)

(assert (=> b!642523 (= e!367995 Unit!21744)))

(declare-fun lt!297667 () Unit!21742)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38371 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21742)

(assert (=> b!642523 (= lt!297667 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297671 (select (arr!18398 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38371 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!642523 (arrayContainsKey!0 lt!297671 (select (arr!18398 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297678 () Unit!21742)

(declare-datatypes ((List!12492 0))(
  ( (Nil!12489) (Cons!12488 (h!13533 (_ BitVec 64)) (t!18728 List!12492)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38371 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12492) Unit!21742)

(assert (=> b!642523 (= lt!297678 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12489))))

(declare-fun arrayNoDuplicates!0 (array!38371 (_ BitVec 32) List!12492) Bool)

(assert (=> b!642523 (arrayNoDuplicates!0 lt!297671 #b00000000000000000000000000000000 Nil!12489)))

(declare-fun lt!297664 () Unit!21742)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38371 (_ BitVec 32) (_ BitVec 32)) Unit!21742)

(assert (=> b!642523 (= lt!297664 (lemmaNoDuplicateFromThenFromBigger!0 lt!297671 #b00000000000000000000000000000000 j!136))))

(assert (=> b!642523 (arrayNoDuplicates!0 lt!297671 j!136 Nil!12489)))

(declare-fun lt!297675 () Unit!21742)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38371 (_ BitVec 64) (_ BitVec 32) List!12492) Unit!21742)

(assert (=> b!642523 (= lt!297675 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!297671 (select (arr!18398 a!2986) j!136) j!136 Nil!12489))))

(assert (=> b!642523 false))

(declare-fun b!642524 () Bool)

(declare-fun e!367987 () Bool)

(assert (=> b!642524 (= e!367989 e!367987)))

(declare-fun res!416378 () Bool)

(assert (=> b!642524 (=> (not res!416378) (not e!367987))))

(declare-fun lt!297674 () SeekEntryResult!6845)

(assert (=> b!642524 (= res!416378 (or (= lt!297674 (MissingZero!6845 i!1108)) (= lt!297674 (MissingVacant!6845 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38371 (_ BitVec 32)) SeekEntryResult!6845)

(assert (=> b!642524 (= lt!297674 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!642525 () Bool)

(declare-fun Unit!21745 () Unit!21742)

(assert (=> b!642525 (= e!367988 Unit!21745)))

(assert (=> b!642525 false))

(declare-fun b!642526 () Bool)

(declare-fun res!416370 () Bool)

(assert (=> b!642526 (=> (not res!416370) (not e!367987))))

(assert (=> b!642526 (= res!416370 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18398 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!416368 () Bool)

(assert (=> start!58156 (=> (not res!416368) (not e!367989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58156 (= res!416368 (validMask!0 mask!3053))))

(assert (=> start!58156 e!367989))

(assert (=> start!58156 true))

(declare-fun array_inv!14172 (array!38371) Bool)

(assert (=> start!58156 (array_inv!14172 a!2986)))

(declare-fun b!642527 () Bool)

(declare-fun Unit!21746 () Unit!21742)

(assert (=> b!642527 (= e!367988 Unit!21746)))

(declare-fun b!642528 () Bool)

(declare-fun res!416375 () Bool)

(assert (=> b!642528 (=> (not res!416375) (not e!367987))))

(assert (=> b!642528 (= res!416375 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12489))))

(declare-fun b!642529 () Bool)

(declare-fun e!367983 () Bool)

(declare-fun e!367990 () Bool)

(assert (=> b!642529 (= e!367983 e!367990)))

(declare-fun res!416369 () Bool)

(assert (=> b!642529 (=> res!416369 e!367990)))

(declare-fun lt!297672 () (_ BitVec 64))

(assert (=> b!642529 (= res!416369 (or (not (= (select (arr!18398 a!2986) j!136) lt!297665)) (not (= (select (arr!18398 a!2986) j!136) lt!297672)) (bvsge j!136 index!984)))))

(declare-fun b!642530 () Bool)

(declare-fun e!367991 () Bool)

(assert (=> b!642530 (= e!367987 e!367991)))

(declare-fun res!416380 () Bool)

(assert (=> b!642530 (=> (not res!416380) (not e!367991))))

(assert (=> b!642530 (= res!416380 (= (select (store (arr!18398 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!642530 (= lt!297671 (array!38372 (store (arr!18398 a!2986) i!1108 k!1786) (size!18762 a!2986)))))

(declare-fun b!642531 () Bool)

(declare-fun e!367986 () Bool)

(assert (=> b!642531 (= e!367996 e!367986)))

(declare-fun res!416379 () Bool)

(assert (=> b!642531 (=> res!416379 e!367986)))

(assert (=> b!642531 (= res!416379 (or (not (= (select (arr!18398 a!2986) j!136) lt!297665)) (not (= (select (arr!18398 a!2986) j!136) lt!297672))))))

(assert (=> b!642531 e!367983))

(declare-fun res!416374 () Bool)

(assert (=> b!642531 (=> (not res!416374) (not e!367983))))

(assert (=> b!642531 (= res!416374 (= lt!297672 (select (arr!18398 a!2986) j!136)))))

(assert (=> b!642531 (= lt!297672 (select (store (arr!18398 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!642532 () Bool)

(assert (=> b!642532 (= e!367991 e!367984)))

(declare-fun res!416382 () Bool)

(assert (=> b!642532 (=> (not res!416382) (not e!367984))))

(declare-fun lt!297673 () SeekEntryResult!6845)

(assert (=> b!642532 (= res!416382 (and (= lt!297673 (Found!6845 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18398 a!2986) index!984) (select (arr!18398 a!2986) j!136))) (not (= (select (arr!18398 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!642532 (= lt!297673 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18398 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!642533 () Bool)

(declare-fun e!367985 () Bool)

(assert (=> b!642533 (= e!367985 (arrayContainsKey!0 lt!297671 (select (arr!18398 a!2986) j!136) j!136))))

(declare-fun b!642534 () Bool)

(declare-fun e!367994 () Bool)

(assert (=> b!642534 (= e!367990 e!367994)))

(declare-fun res!416383 () Bool)

(assert (=> b!642534 (=> (not res!416383) (not e!367994))))

(assert (=> b!642534 (= res!416383 (arrayContainsKey!0 lt!297671 (select (arr!18398 a!2986) j!136) j!136))))

(declare-fun b!642535 () Bool)

(declare-fun res!416377 () Bool)

(assert (=> b!642535 (=> (not res!416377) (not e!367989))))

(assert (=> b!642535 (= res!416377 (and (= (size!18762 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18762 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18762 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!642536 () Bool)

(assert (=> b!642536 (= e!367992 (= lt!297673 lt!297666))))

(declare-fun b!642537 () Bool)

(assert (=> b!642537 (= e!367994 (arrayContainsKey!0 lt!297671 (select (arr!18398 a!2986) j!136) index!984))))

(declare-fun b!642538 () Bool)

(declare-fun res!416367 () Bool)

(assert (=> b!642538 (=> (not res!416367) (not e!367989))))

(assert (=> b!642538 (= res!416367 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!642539 () Bool)

(assert (=> b!642539 (= e!367986 e!367985)))

(declare-fun res!416384 () Bool)

(assert (=> b!642539 (=> res!416384 e!367985)))

(assert (=> b!642539 (= res!416384 (bvsge index!984 j!136))))

(declare-fun lt!297669 () Unit!21742)

(assert (=> b!642539 (= lt!297669 e!367995)))

(declare-fun c!73444 () Bool)

(assert (=> b!642539 (= c!73444 (bvslt j!136 index!984))))

(declare-fun b!642540 () Bool)

(declare-fun res!416376 () Bool)

(assert (=> b!642540 (=> (not res!416376) (not e!367987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38371 (_ BitVec 32)) Bool)

(assert (=> b!642540 (= res!416376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!642541 () Bool)

(declare-fun res!416371 () Bool)

(assert (=> b!642541 (=> (not res!416371) (not e!367989))))

(assert (=> b!642541 (= res!416371 (validKeyInArray!0 k!1786))))

(declare-fun b!642542 () Bool)

(declare-fun Unit!21747 () Unit!21742)

(assert (=> b!642542 (= e!367995 Unit!21747)))

(assert (= (and start!58156 res!416368) b!642535))

(assert (= (and b!642535 res!416377) b!642522))

(assert (= (and b!642522 res!416372) b!642541))

(assert (= (and b!642541 res!416371) b!642538))

(assert (= (and b!642538 res!416367) b!642524))

(assert (= (and b!642524 res!416378) b!642540))

(assert (= (and b!642540 res!416376) b!642528))

(assert (= (and b!642528 res!416375) b!642526))

(assert (= (and b!642526 res!416370) b!642530))

(assert (= (and b!642530 res!416380) b!642532))

(assert (= (and b!642532 res!416382) b!642521))

(assert (= (and b!642521 res!416381) b!642536))

(assert (= (and b!642521 c!73445) b!642525))

(assert (= (and b!642521 (not c!73445)) b!642527))

(assert (= (and b!642521 (not res!416373)) b!642531))

(assert (= (and b!642531 res!416374) b!642529))

(assert (= (and b!642529 (not res!416369)) b!642534))

(assert (= (and b!642534 res!416383) b!642537))

(assert (= (and b!642531 (not res!416379)) b!642539))

(assert (= (and b!642539 c!73444) b!642523))

(assert (= (and b!642539 (not c!73444)) b!642542))

(assert (= (and b!642539 (not res!416384)) b!642533))

(declare-fun m!616359 () Bool)

(assert (=> b!642540 m!616359))

(declare-fun m!616361 () Bool)

(assert (=> b!642523 m!616361))

(declare-fun m!616363 () Bool)

(assert (=> b!642523 m!616363))

(declare-fun m!616365 () Bool)

(assert (=> b!642523 m!616365))

(declare-fun m!616367 () Bool)

(assert (=> b!642523 m!616367))

(declare-fun m!616369 () Bool)

(assert (=> b!642523 m!616369))

(assert (=> b!642523 m!616361))

(declare-fun m!616371 () Bool)

(assert (=> b!642523 m!616371))

(declare-fun m!616373 () Bool)

(assert (=> b!642523 m!616373))

(assert (=> b!642523 m!616361))

(declare-fun m!616375 () Bool)

(assert (=> b!642523 m!616375))

(assert (=> b!642523 m!616361))

(declare-fun m!616377 () Bool)

(assert (=> b!642524 m!616377))

(declare-fun m!616379 () Bool)

(assert (=> b!642521 m!616379))

(declare-fun m!616381 () Bool)

(assert (=> b!642521 m!616381))

(assert (=> b!642521 m!616361))

(declare-fun m!616383 () Bool)

(assert (=> b!642521 m!616383))

(declare-fun m!616385 () Bool)

(assert (=> b!642521 m!616385))

(assert (=> b!642521 m!616361))

(declare-fun m!616387 () Bool)

(assert (=> b!642521 m!616387))

(declare-fun m!616389 () Bool)

(assert (=> b!642521 m!616389))

(declare-fun m!616391 () Bool)

(assert (=> b!642521 m!616391))

(assert (=> b!642530 m!616383))

(declare-fun m!616393 () Bool)

(assert (=> b!642530 m!616393))

(assert (=> b!642533 m!616361))

(assert (=> b!642533 m!616361))

(declare-fun m!616395 () Bool)

(assert (=> b!642533 m!616395))

(assert (=> b!642531 m!616361))

(assert (=> b!642531 m!616383))

(declare-fun m!616397 () Bool)

(assert (=> b!642531 m!616397))

(declare-fun m!616399 () Bool)

(assert (=> start!58156 m!616399))

(declare-fun m!616401 () Bool)

(assert (=> start!58156 m!616401))

(declare-fun m!616403 () Bool)

(assert (=> b!642538 m!616403))

(assert (=> b!642522 m!616361))

(assert (=> b!642522 m!616361))

(declare-fun m!616405 () Bool)

(assert (=> b!642522 m!616405))

(assert (=> b!642534 m!616361))

(assert (=> b!642534 m!616361))

(assert (=> b!642534 m!616395))

(declare-fun m!616407 () Bool)

(assert (=> b!642532 m!616407))

(assert (=> b!642532 m!616361))

(assert (=> b!642532 m!616361))

(declare-fun m!616409 () Bool)

(assert (=> b!642532 m!616409))

(declare-fun m!616411 () Bool)

(assert (=> b!642528 m!616411))

(assert (=> b!642529 m!616361))

(declare-fun m!616413 () Bool)

(assert (=> b!642526 m!616413))

(declare-fun m!616415 () Bool)

(assert (=> b!642541 m!616415))

(assert (=> b!642537 m!616361))

(assert (=> b!642537 m!616361))

(declare-fun m!616417 () Bool)

(assert (=> b!642537 m!616417))

(push 1)

(assert (not b!642523))

(assert (not start!58156))

(assert (not b!642528))

(assert (not b!642522))

(assert (not b!642532))

(assert (not b!642534))

(assert (not b!642541))

(assert (not b!642533))

(assert (not b!642537))

(assert (not b!642524))

(assert (not b!642521))

(assert (not b!642538))

(assert (not b!642540))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!642602 () Bool)

(declare-fun e!368037 () Bool)

(declare-fun call!33563 () Bool)

(assert (=> b!642602 (= e!368037 call!33563)))

(declare-fun d!90671 () Bool)

(declare-fun res!416404 () Bool)

(declare-fun e!368036 () Bool)

(assert (=> d!90671 (=> res!416404 e!368036)))

(assert (=> d!90671 (= res!416404 (bvsge #b00000000000000000000000000000000 (size!18762 a!2986)))))

(assert (=> d!90671 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!368036)))

(declare-fun b!642603 () Bool)

(declare-fun e!368038 () Bool)

(assert (=> b!642603 (= e!368038 call!33563)))

(declare-fun bm!33560 () Bool)

(assert (=> bm!33560 (= call!33563 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!642604 () Bool)

(assert (=> b!642604 (= e!368038 e!368037)))

(declare-fun lt!297695 () (_ BitVec 64))

(assert (=> b!642604 (= lt!297695 (select (arr!18398 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!297696 () Unit!21742)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38371 (_ BitVec 64) (_ BitVec 32)) Unit!21742)

(assert (=> b!642604 (= lt!297696 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!297695 #b00000000000000000000000000000000))))

(assert (=> b!642604 (arrayContainsKey!0 a!2986 lt!297695 #b00000000000000000000000000000000)))

(declare-fun lt!297697 () Unit!21742)

(assert (=> b!642604 (= lt!297697 lt!297696)))

(declare-fun res!416405 () Bool)

(assert (=> b!642604 (= res!416405 (= (seekEntryOrOpen!0 (select (arr!18398 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6845 #b00000000000000000000000000000000)))))

(assert (=> b!642604 (=> (not res!416405) (not e!368037))))

(declare-fun b!642605 () Bool)

(assert (=> b!642605 (= e!368036 e!368038)))

(declare-fun c!73466 () Bool)

(assert (=> b!642605 (= c!73466 (validKeyInArray!0 (select (arr!18398 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!90671 (not res!416404)) b!642605))

(assert (= (and b!642605 c!73466) b!642604))

(assert (= (and b!642605 (not c!73466)) b!642603))

(assert (= (and b!642604 res!416405) b!642602))

(assert (= (or b!642602 b!642603) bm!33560))

(declare-fun m!616455 () Bool)

(assert (=> bm!33560 m!616455))

(declare-fun m!616457 () Bool)

(assert (=> b!642604 m!616457))

(declare-fun m!616459 () Bool)

(assert (=> b!642604 m!616459))

(declare-fun m!616461 () Bool)

(assert (=> b!642604 m!616461))

(assert (=> b!642604 m!616457))

(declare-fun m!616463 () Bool)

(assert (=> b!642604 m!616463))

(assert (=> b!642605 m!616457))

(assert (=> b!642605 m!616457))

(declare-fun m!616465 () Bool)

(assert (=> b!642605 m!616465))

(assert (=> b!642540 d!90671))

(declare-fun b!642619 () Bool)

(declare-fun e!368052 () Bool)

(declare-fun call!33566 () Bool)

(assert (=> b!642619 (= e!368052 call!33566)))

(declare-fun b!642620 () Bool)

(declare-fun e!368053 () Bool)

(declare-fun contains!3142 (List!12492 (_ BitVec 64)) Bool)

(assert (=> b!642620 (= e!368053 (contains!3142 Nil!12489 (select (arr!18398 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!642621 () Bool)

(declare-fun e!368050 () Bool)

(assert (=> b!642621 (= e!368050 e!368052)))

(declare-fun c!73469 () Bool)

(assert (=> b!642621 (= c!73469 (validKeyInArray!0 (select (arr!18398 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!90679 () Bool)

(declare-fun res!416417 () Bool)

(declare-fun e!368051 () Bool)

(assert (=> d!90679 (=> res!416417 e!368051)))

(assert (=> d!90679 (= res!416417 (bvsge #b00000000000000000000000000000000 (size!18762 a!2986)))))

(assert (=> d!90679 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12489) e!368051)))

(declare-fun b!642622 () Bool)

(assert (=> b!642622 (= e!368051 e!368050)))

(declare-fun res!416416 () Bool)

(assert (=> b!642622 (=> (not res!416416) (not e!368050))))

(assert (=> b!642622 (= res!416416 (not e!368053))))

(declare-fun res!416415 () Bool)

(assert (=> b!642622 (=> (not res!416415) (not e!368053))))

(assert (=> b!642622 (= res!416415 (validKeyInArray!0 (select (arr!18398 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!642623 () Bool)

(assert (=> b!642623 (= e!368052 call!33566)))

(declare-fun bm!33563 () Bool)

(assert (=> bm!33563 (= call!33566 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73469 (Cons!12488 (select (arr!18398 a!2986) #b00000000000000000000000000000000) Nil!12489) Nil!12489)))))

(assert (= (and d!90679 (not res!416417)) b!642622))

(assert (= (and b!642622 res!416415) b!642620))

(assert (= (and b!642622 res!416416) b!642621))

(assert (= (and b!642621 c!73469) b!642623))

(assert (= (and b!642621 (not c!73469)) b!642619))

(assert (= (or b!642623 b!642619) bm!33563))

(assert (=> b!642620 m!616457))

(assert (=> b!642620 m!616457))

(declare-fun m!616471 () Bool)

(assert (=> b!642620 m!616471))

(assert (=> b!642621 m!616457))

(assert (=> b!642621 m!616457))

(assert (=> b!642621 m!616465))

(assert (=> b!642622 m!616457))

(assert (=> b!642622 m!616457))

(assert (=> b!642622 m!616465))

(assert (=> bm!33563 m!616457))

(declare-fun m!616473 () Bool)

(assert (=> bm!33563 m!616473))

(assert (=> b!642528 d!90679))

(declare-fun d!90683 () Bool)

(declare-fun res!416422 () Bool)

(declare-fun e!368061 () Bool)

(assert (=> d!90683 (=> res!416422 e!368061)))

(assert (=> d!90683 (= res!416422 (= (select (arr!18398 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!90683 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!368061)))

(declare-fun b!642634 () Bool)

(declare-fun e!368062 () Bool)

(assert (=> b!642634 (= e!368061 e!368062)))

(declare-fun res!416423 () Bool)

(assert (=> b!642634 (=> (not res!416423) (not e!368062))))

(assert (=> b!642634 (= res!416423 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18762 a!2986)))))

(declare-fun b!642635 () Bool)

(assert (=> b!642635 (= e!368062 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!90683 (not res!416422)) b!642634))

(assert (= (and b!642634 res!416423) b!642635))

(assert (=> d!90683 m!616457))

(declare-fun m!616481 () Bool)

(assert (=> b!642635 m!616481))

(assert (=> b!642538 d!90683))

(declare-fun d!90689 () Bool)

(declare-fun res!416424 () Bool)

(declare-fun e!368063 () Bool)

(assert (=> d!90689 (=> res!416424 e!368063)))

(assert (=> d!90689 (= res!416424 (= (select (arr!18398 lt!297671) index!984) (select (arr!18398 a!2986) j!136)))))

(assert (=> d!90689 (= (arrayContainsKey!0 lt!297671 (select (arr!18398 a!2986) j!136) index!984) e!368063)))

(declare-fun b!642636 () Bool)

(declare-fun e!368064 () Bool)

(assert (=> b!642636 (= e!368063 e!368064)))

(declare-fun res!416425 () Bool)

(assert (=> b!642636 (=> (not res!416425) (not e!368064))))

(assert (=> b!642636 (= res!416425 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18762 lt!297671)))))

(declare-fun b!642637 () Bool)

(assert (=> b!642637 (= e!368064 (arrayContainsKey!0 lt!297671 (select (arr!18398 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!90689 (not res!416424)) b!642636))

(assert (= (and b!642636 res!416425) b!642637))

(declare-fun m!616487 () Bool)

(assert (=> d!90689 m!616487))

(assert (=> b!642637 m!616361))

(declare-fun m!616489 () Bool)

(assert (=> b!642637 m!616489))

(assert (=> b!642537 d!90689))

(declare-fun b!642680 () Bool)

(declare-fun e!368086 () SeekEntryResult!6845)

(declare-fun lt!297723 () SeekEntryResult!6845)

(assert (=> b!642680 (= e!368086 (Found!6845 (index!29707 lt!297723)))))

(declare-fun b!642681 () Bool)

(declare-fun c!73494 () Bool)

(declare-fun lt!297722 () (_ BitVec 64))

(assert (=> b!642681 (= c!73494 (= lt!297722 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!368088 () SeekEntryResult!6845)

(assert (=> b!642681 (= e!368086 e!368088)))

(declare-fun b!642682 () Bool)

(declare-fun e!368087 () SeekEntryResult!6845)

(assert (=> b!642682 (= e!368087 e!368086)))

(assert (=> b!642682 (= lt!297722 (select (arr!18398 a!2986) (index!29707 lt!297723)))))

(declare-fun c!73495 () Bool)

(assert (=> b!642682 (= c!73495 (= lt!297722 k!1786))))

(declare-fun b!642683 () Bool)

(assert (=> b!642683 (= e!368088 (MissingZero!6845 (index!29707 lt!297723)))))

(declare-fun b!642684 () Bool)

(assert (=> b!642684 (= e!368088 (seekKeyOrZeroReturnVacant!0 (x!58492 lt!297723) (index!29707 lt!297723) (index!29707 lt!297723) k!1786 a!2986 mask!3053))))

(declare-fun d!90695 () Bool)

(declare-fun lt!297724 () SeekEntryResult!6845)

(assert (=> d!90695 (and (or (is-Undefined!6845 lt!297724) (not (is-Found!6845 lt!297724)) (and (bvsge (index!29706 lt!297724) #b00000000000000000000000000000000) (bvslt (index!29706 lt!297724) (size!18762 a!2986)))) (or (is-Undefined!6845 lt!297724) (is-Found!6845 lt!297724) (not (is-MissingZero!6845 lt!297724)) (and (bvsge (index!29705 lt!297724) #b00000000000000000000000000000000) (bvslt (index!29705 lt!297724) (size!18762 a!2986)))) (or (is-Undefined!6845 lt!297724) (is-Found!6845 lt!297724) (is-MissingZero!6845 lt!297724) (not (is-MissingVacant!6845 lt!297724)) (and (bvsge (index!29708 lt!297724) #b00000000000000000000000000000000) (bvslt (index!29708 lt!297724) (size!18762 a!2986)))) (or (is-Undefined!6845 lt!297724) (ite (is-Found!6845 lt!297724) (= (select (arr!18398 a!2986) (index!29706 lt!297724)) k!1786) (ite (is-MissingZero!6845 lt!297724) (= (select (arr!18398 a!2986) (index!29705 lt!297724)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6845 lt!297724) (= (select (arr!18398 a!2986) (index!29708 lt!297724)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!90695 (= lt!297724 e!368087)))

(declare-fun c!73496 () Bool)

(assert (=> d!90695 (= c!73496 (and (is-Intermediate!6845 lt!297723) (undefined!7657 lt!297723)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38371 (_ BitVec 32)) SeekEntryResult!6845)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90695 (= lt!297723 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!90695 (validMask!0 mask!3053)))

(assert (=> d!90695 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!297724)))

(declare-fun b!642685 () Bool)

(assert (=> b!642685 (= e!368087 Undefined!6845)))

(assert (= (and d!90695 c!73496) b!642685))

(assert (= (and d!90695 (not c!73496)) b!642682))

(assert (= (and b!642682 c!73495) b!642680))

(assert (= (and b!642682 (not c!73495)) b!642681))

(assert (= (and b!642681 c!73494) b!642683))

(assert (= (and b!642681 (not c!73494)) b!642684))

(declare-fun m!616517 () Bool)

(assert (=> b!642682 m!616517))

(declare-fun m!616519 () Bool)

(assert (=> b!642684 m!616519))

(declare-fun m!616521 () Bool)

(assert (=> d!90695 m!616521))

(declare-fun m!616523 () Bool)

(assert (=> d!90695 m!616523))

(declare-fun m!616525 () Bool)

(assert (=> d!90695 m!616525))

(declare-fun m!616527 () Bool)

(assert (=> d!90695 m!616527))

(assert (=> d!90695 m!616399))

(declare-fun m!616529 () Bool)

(assert (=> d!90695 m!616529))

(assert (=> d!90695 m!616521))

(assert (=> b!642524 d!90695))

(declare-fun d!90703 () Bool)

(assert (=> d!90703 (arrayNoDuplicates!0 lt!297671 j!136 Nil!12489)))

(declare-fun lt!297736 () Unit!21742)

(declare-fun choose!39 (array!38371 (_ BitVec 32) (_ BitVec 32)) Unit!21742)

(assert (=> d!90703 (= lt!297736 (choose!39 lt!297671 #b00000000000000000000000000000000 j!136))))

(assert (=> d!90703 (bvslt (size!18762 lt!297671) #b01111111111111111111111111111111)))

(assert (=> d!90703 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!297671 #b00000000000000000000000000000000 j!136) lt!297736)))

(declare-fun bs!19225 () Bool)

(assert (= bs!19225 d!90703))

(assert (=> bs!19225 m!616367))

(declare-fun m!616533 () Bool)

(assert (=> bs!19225 m!616533))

(assert (=> b!642523 d!90703))

(declare-fun d!90707 () Bool)

(declare-fun res!416426 () Bool)

(declare-fun e!368095 () Bool)

(assert (=> d!90707 (=> res!416426 e!368095)))

(assert (=> d!90707 (= res!416426 (= (select (arr!18398 lt!297671) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18398 a!2986) j!136)))))

(assert (=> d!90707 (= (arrayContainsKey!0 lt!297671 (select (arr!18398 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!368095)))

(declare-fun b!642698 () Bool)

(declare-fun e!368096 () Bool)

(assert (=> b!642698 (= e!368095 e!368096)))

(declare-fun res!416427 () Bool)

(assert (=> b!642698 (=> (not res!416427) (not e!368096))))

(assert (=> b!642698 (= res!416427 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18762 lt!297671)))))

(declare-fun b!642699 () Bool)

(assert (=> b!642699 (= e!368096 (arrayContainsKey!0 lt!297671 (select (arr!18398 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90707 (not res!416426)) b!642698))

(assert (= (and b!642698 res!416427) b!642699))

(declare-fun m!616535 () Bool)

(assert (=> d!90707 m!616535))

(assert (=> b!642699 m!616361))

(declare-fun m!616537 () Bool)

(assert (=> b!642699 m!616537))

(assert (=> b!642523 d!90707))

(declare-fun b!642700 () Bool)

(declare-fun e!368099 () Bool)

(declare-fun call!33567 () Bool)

(assert (=> b!642700 (= e!368099 call!33567)))

(declare-fun b!642701 () Bool)

(declare-fun e!368100 () Bool)

(assert (=> b!642701 (= e!368100 (contains!3142 Nil!12489 (select (arr!18398 lt!297671) j!136)))))

(declare-fun b!642702 () Bool)

(declare-fun e!368097 () Bool)

(assert (=> b!642702 (= e!368097 e!368099)))

(declare-fun c!73503 () Bool)

(assert (=> b!642702 (= c!73503 (validKeyInArray!0 (select (arr!18398 lt!297671) j!136)))))

(declare-fun d!90709 () Bool)

(declare-fun res!416430 () Bool)

(declare-fun e!368098 () Bool)

(assert (=> d!90709 (=> res!416430 e!368098)))

(assert (=> d!90709 (= res!416430 (bvsge j!136 (size!18762 lt!297671)))))

(assert (=> d!90709 (= (arrayNoDuplicates!0 lt!297671 j!136 Nil!12489) e!368098)))

(declare-fun b!642703 () Bool)

(assert (=> b!642703 (= e!368098 e!368097)))

(declare-fun res!416429 () Bool)

(assert (=> b!642703 (=> (not res!416429) (not e!368097))))

(assert (=> b!642703 (= res!416429 (not e!368100))))

(declare-fun res!416428 () Bool)

(assert (=> b!642703 (=> (not res!416428) (not e!368100))))

(assert (=> b!642703 (= res!416428 (validKeyInArray!0 (select (arr!18398 lt!297671) j!136)))))

(declare-fun b!642704 () Bool)

(assert (=> b!642704 (= e!368099 call!33567)))

(declare-fun bm!33564 () Bool)

(assert (=> bm!33564 (= call!33567 (arrayNoDuplicates!0 lt!297671 (bvadd j!136 #b00000000000000000000000000000001) (ite c!73503 (Cons!12488 (select (arr!18398 lt!297671) j!136) Nil!12489) Nil!12489)))))

(assert (= (and d!90709 (not res!416430)) b!642703))

(assert (= (and b!642703 res!416428) b!642701))

(assert (= (and b!642703 res!416429) b!642702))

(assert (= (and b!642702 c!73503) b!642704))

(assert (= (and b!642702 (not c!73503)) b!642700))

(assert (= (or b!642704 b!642700) bm!33564))

(declare-fun m!616539 () Bool)

(assert (=> b!642701 m!616539))

(assert (=> b!642701 m!616539))

(declare-fun m!616541 () Bool)

(assert (=> b!642701 m!616541))

(assert (=> b!642702 m!616539))

(assert (=> b!642702 m!616539))

(declare-fun m!616543 () Bool)

(assert (=> b!642702 m!616543))

(assert (=> b!642703 m!616539))

(assert (=> b!642703 m!616539))

(assert (=> b!642703 m!616543))

(assert (=> bm!33564 m!616539))

(declare-fun m!616545 () Bool)

(assert (=> bm!33564 m!616545))

(assert (=> b!642523 d!90709))

(declare-fun b!642705 () Bool)

(declare-fun e!368103 () Bool)

(declare-fun call!33568 () Bool)

(assert (=> b!642705 (= e!368103 call!33568)))

(declare-fun b!642706 () Bool)

(declare-fun e!368104 () Bool)

(assert (=> b!642706 (= e!368104 (contains!3142 Nil!12489 (select (arr!18398 lt!297671) #b00000000000000000000000000000000)))))

(declare-fun b!642707 () Bool)

(declare-fun e!368101 () Bool)

(assert (=> b!642707 (= e!368101 e!368103)))

(declare-fun c!73504 () Bool)

(assert (=> b!642707 (= c!73504 (validKeyInArray!0 (select (arr!18398 lt!297671) #b00000000000000000000000000000000)))))

(declare-fun d!90711 () Bool)

(declare-fun res!416433 () Bool)

(declare-fun e!368102 () Bool)

(assert (=> d!90711 (=> res!416433 e!368102)))

(assert (=> d!90711 (= res!416433 (bvsge #b00000000000000000000000000000000 (size!18762 lt!297671)))))

(assert (=> d!90711 (= (arrayNoDuplicates!0 lt!297671 #b00000000000000000000000000000000 Nil!12489) e!368102)))

