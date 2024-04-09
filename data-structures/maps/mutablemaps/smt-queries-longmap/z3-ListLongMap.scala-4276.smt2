; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59582 () Bool)

(assert start!59582)

(declare-fun b!657410 () Bool)

(declare-datatypes ((Unit!22724 0))(
  ( (Unit!22725) )
))
(declare-fun e!377660 () Unit!22724)

(declare-fun Unit!22726 () Unit!22724)

(assert (=> b!657410 (= e!377660 Unit!22726)))

(declare-fun b!657411 () Bool)

(declare-fun e!377663 () Bool)

(declare-fun e!377661 () Bool)

(assert (=> b!657411 (= e!377663 e!377661)))

(declare-fun res!426407 () Bool)

(assert (=> b!657411 (=> (not res!426407) (not e!377661))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6988 0))(
  ( (MissingZero!6988 (index!30316 (_ BitVec 32))) (Found!6988 (index!30317 (_ BitVec 32))) (Intermediate!6988 (undefined!7800 Bool) (index!30318 (_ BitVec 32)) (x!59136 (_ BitVec 32))) (Undefined!6988) (MissingVacant!6988 (index!30319 (_ BitVec 32))) )
))
(declare-fun lt!307157 () SeekEntryResult!6988)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38696 0))(
  ( (array!38697 (arr!18541 (Array (_ BitVec 32) (_ BitVec 64))) (size!18905 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38696)

(assert (=> b!657411 (= res!426407 (and (= lt!307157 (Found!6988 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18541 a!2986) index!984) (select (arr!18541 a!2986) j!136))) (not (= (select (arr!18541 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38696 (_ BitVec 32)) SeekEntryResult!6988)

(assert (=> b!657411 (= lt!307157 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18541 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!657412 () Bool)

(declare-fun e!377657 () Unit!22724)

(declare-fun Unit!22727 () Unit!22724)

(assert (=> b!657412 (= e!377657 Unit!22727)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun res!426403 () Bool)

(assert (=> b!657412 (= res!426403 (= (select (store (arr!18541 a!2986) i!1108 k0!1786) index!984) (select (arr!18541 a!2986) j!136)))))

(declare-fun e!377668 () Bool)

(assert (=> b!657412 (=> (not res!426403) (not e!377668))))

(assert (=> b!657412 e!377668))

(declare-fun c!75874 () Bool)

(assert (=> b!657412 (= c!75874 (bvslt j!136 index!984))))

(declare-fun lt!307155 () Unit!22724)

(declare-fun e!377667 () Unit!22724)

(assert (=> b!657412 (= lt!307155 e!377667)))

(declare-fun c!75875 () Bool)

(assert (=> b!657412 (= c!75875 (bvslt index!984 j!136))))

(declare-fun lt!307148 () Unit!22724)

(declare-fun e!377654 () Unit!22724)

(assert (=> b!657412 (= lt!307148 e!377654)))

(assert (=> b!657412 false))

(declare-fun b!657413 () Bool)

(declare-fun res!426402 () Bool)

(declare-fun e!377658 () Bool)

(assert (=> b!657413 (=> (not res!426402) (not e!377658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38696 (_ BitVec 32)) Bool)

(assert (=> b!657413 (= res!426402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!657414 () Bool)

(declare-fun e!377665 () Bool)

(assert (=> b!657414 (= e!377661 (not e!377665))))

(declare-fun res!426411 () Bool)

(assert (=> b!657414 (=> res!426411 e!377665)))

(declare-fun lt!307167 () SeekEntryResult!6988)

(assert (=> b!657414 (= res!426411 (not (= lt!307167 (MissingVacant!6988 vacantSpotIndex!68))))))

(declare-fun lt!307158 () Unit!22724)

(assert (=> b!657414 (= lt!307158 e!377657)))

(declare-fun c!75873 () Bool)

(assert (=> b!657414 (= c!75873 (= lt!307167 (Found!6988 index!984)))))

(declare-fun lt!307162 () Unit!22724)

(assert (=> b!657414 (= lt!307162 e!377660)))

(declare-fun c!75872 () Bool)

(assert (=> b!657414 (= c!75872 (= lt!307167 Undefined!6988))))

(declare-fun lt!307153 () array!38696)

(declare-fun lt!307166 () (_ BitVec 64))

(assert (=> b!657414 (= lt!307167 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307166 lt!307153 mask!3053))))

(declare-fun e!377664 () Bool)

(assert (=> b!657414 e!377664))

(declare-fun res!426414 () Bool)

(assert (=> b!657414 (=> (not res!426414) (not e!377664))))

(declare-fun lt!307150 () SeekEntryResult!6988)

(declare-fun lt!307149 () (_ BitVec 32))

(assert (=> b!657414 (= res!426414 (= lt!307150 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307149 vacantSpotIndex!68 lt!307166 lt!307153 mask!3053)))))

(assert (=> b!657414 (= lt!307150 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307149 vacantSpotIndex!68 (select (arr!18541 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!657414 (= lt!307166 (select (store (arr!18541 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!307156 () Unit!22724)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38696 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22724)

(assert (=> b!657414 (= lt!307156 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307149 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!657414 (= lt!307149 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!657415 () Bool)

(declare-fun res!426413 () Bool)

(assert (=> b!657415 (=> (not res!426413) (not e!377658))))

(declare-datatypes ((List!12635 0))(
  ( (Nil!12632) (Cons!12631 (h!13676 (_ BitVec 64)) (t!18871 List!12635)) )
))
(declare-fun arrayNoDuplicates!0 (array!38696 (_ BitVec 32) List!12635) Bool)

(assert (=> b!657415 (= res!426413 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12632))))

(declare-fun res!426415 () Bool)

(declare-fun e!377656 () Bool)

(assert (=> start!59582 (=> (not res!426415) (not e!377656))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59582 (= res!426415 (validMask!0 mask!3053))))

(assert (=> start!59582 e!377656))

(assert (=> start!59582 true))

(declare-fun array_inv!14315 (array!38696) Bool)

(assert (=> start!59582 (array_inv!14315 a!2986)))

(declare-fun b!657416 () Bool)

(declare-fun Unit!22728 () Unit!22724)

(assert (=> b!657416 (= e!377654 Unit!22728)))

(declare-fun b!657417 () Bool)

(declare-fun Unit!22729 () Unit!22724)

(assert (=> b!657417 (= e!377660 Unit!22729)))

(assert (=> b!657417 false))

(declare-fun b!657418 () Bool)

(declare-fun res!426412 () Bool)

(assert (=> b!657418 (=> (not res!426412) (not e!377656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!657418 (= res!426412 (validKeyInArray!0 (select (arr!18541 a!2986) j!136)))))

(declare-fun b!657419 () Bool)

(declare-fun Unit!22730 () Unit!22724)

(assert (=> b!657419 (= e!377657 Unit!22730)))

(declare-fun b!657420 () Bool)

(assert (=> b!657420 false))

(declare-fun lt!307163 () Unit!22724)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38696 (_ BitVec 64) (_ BitVec 32) List!12635) Unit!22724)

(assert (=> b!657420 (= lt!307163 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307153 (select (arr!18541 a!2986) j!136) index!984 Nil!12632))))

(assert (=> b!657420 (arrayNoDuplicates!0 lt!307153 index!984 Nil!12632)))

(declare-fun lt!307159 () Unit!22724)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38696 (_ BitVec 32) (_ BitVec 32)) Unit!22724)

(assert (=> b!657420 (= lt!307159 (lemmaNoDuplicateFromThenFromBigger!0 lt!307153 #b00000000000000000000000000000000 index!984))))

(assert (=> b!657420 (arrayNoDuplicates!0 lt!307153 #b00000000000000000000000000000000 Nil!12632)))

(declare-fun lt!307152 () Unit!22724)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38696 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12635) Unit!22724)

(assert (=> b!657420 (= lt!307152 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12632))))

(declare-fun arrayContainsKey!0 (array!38696 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!657420 (arrayContainsKey!0 lt!307153 (select (arr!18541 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307165 () Unit!22724)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38696 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22724)

(assert (=> b!657420 (= lt!307165 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307153 (select (arr!18541 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!377666 () Bool)

(assert (=> b!657420 e!377666))

(declare-fun res!426416 () Bool)

(assert (=> b!657420 (=> (not res!426416) (not e!377666))))

(assert (=> b!657420 (= res!426416 (arrayContainsKey!0 lt!307153 (select (arr!18541 a!2986) j!136) j!136))))

(declare-fun Unit!22731 () Unit!22724)

(assert (=> b!657420 (= e!377654 Unit!22731)))

(declare-fun b!657421 () Bool)

(declare-fun res!426406 () Bool)

(assert (=> b!657421 (=> (not res!426406) (not e!377658))))

(assert (=> b!657421 (= res!426406 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18541 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!657422 () Bool)

(declare-fun res!426409 () Bool)

(assert (=> b!657422 (=> (not res!426409) (not e!377656))))

(assert (=> b!657422 (= res!426409 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!657423 () Bool)

(declare-fun res!426410 () Bool)

(assert (=> b!657423 (= res!426410 (bvsge j!136 index!984))))

(declare-fun e!377662 () Bool)

(assert (=> b!657423 (=> res!426410 e!377662)))

(assert (=> b!657423 (= e!377668 e!377662)))

(declare-fun b!657424 () Bool)

(assert (=> b!657424 (= e!377656 e!377658)))

(declare-fun res!426408 () Bool)

(assert (=> b!657424 (=> (not res!426408) (not e!377658))))

(declare-fun lt!307160 () SeekEntryResult!6988)

(assert (=> b!657424 (= res!426408 (or (= lt!307160 (MissingZero!6988 i!1108)) (= lt!307160 (MissingVacant!6988 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38696 (_ BitVec 32)) SeekEntryResult!6988)

(assert (=> b!657424 (= lt!307160 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!657425 () Bool)

(declare-fun res!426400 () Bool)

(assert (=> b!657425 (=> (not res!426400) (not e!377656))))

(assert (=> b!657425 (= res!426400 (validKeyInArray!0 k0!1786))))

(declare-fun b!657426 () Bool)

(assert (=> b!657426 (= e!377665 true)))

(assert (=> b!657426 (= (select (store (arr!18541 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!657427 () Bool)

(assert (=> b!657427 (= e!377658 e!377663)))

(declare-fun res!426401 () Bool)

(assert (=> b!657427 (=> (not res!426401) (not e!377663))))

(assert (=> b!657427 (= res!426401 (= (select (store (arr!18541 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!657427 (= lt!307153 (array!38697 (store (arr!18541 a!2986) i!1108 k0!1786) (size!18905 a!2986)))))

(declare-fun b!657428 () Bool)

(declare-fun res!426405 () Bool)

(assert (=> b!657428 (=> (not res!426405) (not e!377656))))

(assert (=> b!657428 (= res!426405 (and (= (size!18905 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18905 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18905 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!657429 () Bool)

(assert (=> b!657429 (= e!377666 (arrayContainsKey!0 lt!307153 (select (arr!18541 a!2986) j!136) index!984))))

(declare-fun b!657430 () Bool)

(declare-fun e!377659 () Bool)

(assert (=> b!657430 (= e!377659 (arrayContainsKey!0 lt!307153 (select (arr!18541 a!2986) j!136) index!984))))

(declare-fun b!657431 () Bool)

(assert (=> b!657431 (= e!377664 (= lt!307157 lt!307150))))

(declare-fun b!657432 () Bool)

(assert (=> b!657432 false))

(declare-fun lt!307151 () Unit!22724)

(assert (=> b!657432 (= lt!307151 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307153 (select (arr!18541 a!2986) j!136) j!136 Nil!12632))))

(assert (=> b!657432 (arrayNoDuplicates!0 lt!307153 j!136 Nil!12632)))

(declare-fun lt!307154 () Unit!22724)

(assert (=> b!657432 (= lt!307154 (lemmaNoDuplicateFromThenFromBigger!0 lt!307153 #b00000000000000000000000000000000 j!136))))

(assert (=> b!657432 (arrayNoDuplicates!0 lt!307153 #b00000000000000000000000000000000 Nil!12632)))

(declare-fun lt!307161 () Unit!22724)

(assert (=> b!657432 (= lt!307161 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12632))))

(assert (=> b!657432 (arrayContainsKey!0 lt!307153 (select (arr!18541 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307164 () Unit!22724)

(assert (=> b!657432 (= lt!307164 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307153 (select (arr!18541 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22732 () Unit!22724)

(assert (=> b!657432 (= e!377667 Unit!22732)))

(declare-fun b!657433 () Bool)

(declare-fun Unit!22733 () Unit!22724)

(assert (=> b!657433 (= e!377667 Unit!22733)))

(declare-fun res!426404 () Bool)

(declare-fun b!657434 () Bool)

(assert (=> b!657434 (= res!426404 (arrayContainsKey!0 lt!307153 (select (arr!18541 a!2986) j!136) j!136))))

(assert (=> b!657434 (=> (not res!426404) (not e!377659))))

(assert (=> b!657434 (= e!377662 e!377659)))

(assert (= (and start!59582 res!426415) b!657428))

(assert (= (and b!657428 res!426405) b!657418))

(assert (= (and b!657418 res!426412) b!657425))

(assert (= (and b!657425 res!426400) b!657422))

(assert (= (and b!657422 res!426409) b!657424))

(assert (= (and b!657424 res!426408) b!657413))

(assert (= (and b!657413 res!426402) b!657415))

(assert (= (and b!657415 res!426413) b!657421))

(assert (= (and b!657421 res!426406) b!657427))

(assert (= (and b!657427 res!426401) b!657411))

(assert (= (and b!657411 res!426407) b!657414))

(assert (= (and b!657414 res!426414) b!657431))

(assert (= (and b!657414 c!75872) b!657417))

(assert (= (and b!657414 (not c!75872)) b!657410))

(assert (= (and b!657414 c!75873) b!657412))

(assert (= (and b!657414 (not c!75873)) b!657419))

(assert (= (and b!657412 res!426403) b!657423))

(assert (= (and b!657423 (not res!426410)) b!657434))

(assert (= (and b!657434 res!426404) b!657430))

(assert (= (and b!657412 c!75874) b!657432))

(assert (= (and b!657412 (not c!75874)) b!657433))

(assert (= (and b!657412 c!75875) b!657420))

(assert (= (and b!657412 (not c!75875)) b!657416))

(assert (= (and b!657420 res!426416) b!657429))

(assert (= (and b!657414 (not res!426411)) b!657426))

(declare-fun m!630511 () Bool)

(assert (=> b!657412 m!630511))

(declare-fun m!630513 () Bool)

(assert (=> b!657412 m!630513))

(declare-fun m!630515 () Bool)

(assert (=> b!657412 m!630515))

(declare-fun m!630517 () Bool)

(assert (=> b!657422 m!630517))

(assert (=> b!657426 m!630511))

(assert (=> b!657426 m!630513))

(assert (=> b!657434 m!630515))

(assert (=> b!657434 m!630515))

(declare-fun m!630519 () Bool)

(assert (=> b!657434 m!630519))

(assert (=> b!657432 m!630515))

(declare-fun m!630521 () Bool)

(assert (=> b!657432 m!630521))

(declare-fun m!630523 () Bool)

(assert (=> b!657432 m!630523))

(assert (=> b!657432 m!630515))

(declare-fun m!630525 () Bool)

(assert (=> b!657432 m!630525))

(assert (=> b!657432 m!630515))

(declare-fun m!630527 () Bool)

(assert (=> b!657432 m!630527))

(assert (=> b!657432 m!630515))

(declare-fun m!630529 () Bool)

(assert (=> b!657432 m!630529))

(declare-fun m!630531 () Bool)

(assert (=> b!657432 m!630531))

(declare-fun m!630533 () Bool)

(assert (=> b!657432 m!630533))

(declare-fun m!630535 () Bool)

(assert (=> b!657414 m!630535))

(declare-fun m!630537 () Bool)

(assert (=> b!657414 m!630537))

(assert (=> b!657414 m!630515))

(assert (=> b!657414 m!630511))

(declare-fun m!630539 () Bool)

(assert (=> b!657414 m!630539))

(assert (=> b!657414 m!630515))

(declare-fun m!630541 () Bool)

(assert (=> b!657414 m!630541))

(declare-fun m!630543 () Bool)

(assert (=> b!657414 m!630543))

(declare-fun m!630545 () Bool)

(assert (=> b!657414 m!630545))

(assert (=> b!657427 m!630511))

(declare-fun m!630547 () Bool)

(assert (=> b!657427 m!630547))

(declare-fun m!630549 () Bool)

(assert (=> b!657411 m!630549))

(assert (=> b!657411 m!630515))

(assert (=> b!657411 m!630515))

(declare-fun m!630551 () Bool)

(assert (=> b!657411 m!630551))

(assert (=> b!657418 m!630515))

(assert (=> b!657418 m!630515))

(declare-fun m!630553 () Bool)

(assert (=> b!657418 m!630553))

(declare-fun m!630555 () Bool)

(assert (=> b!657424 m!630555))

(assert (=> b!657430 m!630515))

(assert (=> b!657430 m!630515))

(declare-fun m!630557 () Bool)

(assert (=> b!657430 m!630557))

(assert (=> b!657429 m!630515))

(assert (=> b!657429 m!630515))

(assert (=> b!657429 m!630557))

(declare-fun m!630559 () Bool)

(assert (=> b!657415 m!630559))

(declare-fun m!630561 () Bool)

(assert (=> start!59582 m!630561))

(declare-fun m!630563 () Bool)

(assert (=> start!59582 m!630563))

(declare-fun m!630565 () Bool)

(assert (=> b!657425 m!630565))

(declare-fun m!630567 () Bool)

(assert (=> b!657413 m!630567))

(declare-fun m!630569 () Bool)

(assert (=> b!657421 m!630569))

(declare-fun m!630571 () Bool)

(assert (=> b!657420 m!630571))

(assert (=> b!657420 m!630515))

(declare-fun m!630573 () Bool)

(assert (=> b!657420 m!630573))

(assert (=> b!657420 m!630515))

(declare-fun m!630575 () Bool)

(assert (=> b!657420 m!630575))

(declare-fun m!630577 () Bool)

(assert (=> b!657420 m!630577))

(assert (=> b!657420 m!630521))

(assert (=> b!657420 m!630515))

(declare-fun m!630579 () Bool)

(assert (=> b!657420 m!630579))

(assert (=> b!657420 m!630533))

(assert (=> b!657420 m!630515))

(assert (=> b!657420 m!630519))

(assert (=> b!657420 m!630515))

(check-sat (not b!657418) (not b!657425) (not b!657411) (not b!657424) (not b!657429) (not b!657432) (not b!657430) (not b!657434) (not b!657413) (not b!657420) (not b!657422) (not b!657414) (not start!59582) (not b!657415))
(check-sat)
