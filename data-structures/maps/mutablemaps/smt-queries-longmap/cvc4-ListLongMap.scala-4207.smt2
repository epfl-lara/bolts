; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57706 () Bool)

(assert start!57706)

(declare-fun b!637315 () Bool)

(declare-fun res!412397 () Bool)

(declare-fun e!364686 () Bool)

(assert (=> b!637315 (=> (not res!412397) (not e!364686))))

(declare-datatypes ((array!38233 0))(
  ( (array!38234 (arr!18335 (Array (_ BitVec 32) (_ BitVec 64))) (size!18699 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38233)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!637315 (= res!412397 (validKeyInArray!0 (select (arr!18335 a!2986) j!136)))))

(declare-fun b!637316 () Bool)

(declare-fun e!364691 () Bool)

(declare-fun e!364693 () Bool)

(assert (=> b!637316 (= e!364691 e!364693)))

(declare-fun res!412391 () Bool)

(assert (=> b!637316 (=> (not res!412391) (not e!364693))))

(declare-datatypes ((SeekEntryResult!6782 0))(
  ( (MissingZero!6782 (index!29441 (_ BitVec 32))) (Found!6782 (index!29442 (_ BitVec 32))) (Intermediate!6782 (undefined!7594 Bool) (index!29443 (_ BitVec 32)) (x!58225 (_ BitVec 32))) (Undefined!6782) (MissingVacant!6782 (index!29444 (_ BitVec 32))) )
))
(declare-fun lt!294712 () SeekEntryResult!6782)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!637316 (= res!412391 (and (= lt!294712 (Found!6782 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18335 a!2986) index!984) (select (arr!18335 a!2986) j!136))) (not (= (select (arr!18335 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38233 (_ BitVec 32)) SeekEntryResult!6782)

(assert (=> b!637316 (= lt!294712 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18335 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!637318 () Bool)

(declare-fun e!364683 () Bool)

(assert (=> b!637318 (= e!364683 true)))

(declare-fun lt!294721 () Bool)

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((List!12429 0))(
  ( (Nil!12426) (Cons!12425 (h!13470 (_ BitVec 64)) (t!18665 List!12429)) )
))
(declare-fun contains!3112 (List!12429 (_ BitVec 64)) Bool)

(assert (=> b!637318 (= lt!294721 (contains!3112 Nil!12426 k!1786))))

(declare-fun b!637319 () Bool)

(declare-datatypes ((Unit!21486 0))(
  ( (Unit!21487) )
))
(declare-fun e!364684 () Unit!21486)

(declare-fun Unit!21488 () Unit!21486)

(assert (=> b!637319 (= e!364684 Unit!21488)))

(assert (=> b!637319 false))

(declare-fun b!637320 () Bool)

(declare-fun e!364682 () Bool)

(assert (=> b!637320 (= e!364682 e!364683)))

(declare-fun res!412400 () Bool)

(assert (=> b!637320 (=> res!412400 e!364683)))

(assert (=> b!637320 (= res!412400 (or (bvsge (size!18699 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18699 a!2986))))))

(declare-fun lt!294717 () array!38233)

(declare-fun arrayContainsKey!0 (array!38233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!637320 (arrayContainsKey!0 lt!294717 (select (arr!18335 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294718 () Unit!21486)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38233 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21486)

(assert (=> b!637320 (= lt!294718 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294717 (select (arr!18335 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!637321 () Bool)

(declare-fun res!412390 () Bool)

(declare-fun e!364690 () Bool)

(assert (=> b!637321 (=> (not res!412390) (not e!364690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38233 (_ BitVec 32)) Bool)

(assert (=> b!637321 (= res!412390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!637322 () Bool)

(declare-fun res!412409 () Bool)

(assert (=> b!637322 (=> res!412409 e!364683)))

(assert (=> b!637322 (= res!412409 (contains!3112 Nil!12426 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637323 () Bool)

(assert (=> b!637323 (= e!364690 e!364691)))

(declare-fun res!412389 () Bool)

(assert (=> b!637323 (=> (not res!412389) (not e!364691))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!637323 (= res!412389 (= (select (store (arr!18335 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!637323 (= lt!294717 (array!38234 (store (arr!18335 a!2986) i!1108 k!1786) (size!18699 a!2986)))))

(declare-fun b!637324 () Bool)

(declare-fun e!364681 () Bool)

(declare-fun e!364687 () Bool)

(assert (=> b!637324 (= e!364681 e!364687)))

(declare-fun res!412404 () Bool)

(assert (=> b!637324 (=> res!412404 e!364687)))

(declare-fun lt!294720 () (_ BitVec 64))

(declare-fun lt!294715 () (_ BitVec 64))

(assert (=> b!637324 (= res!412404 (or (not (= (select (arr!18335 a!2986) j!136) lt!294720)) (not (= (select (arr!18335 a!2986) j!136) lt!294715)) (bvsge j!136 index!984)))))

(declare-fun b!637325 () Bool)

(declare-fun res!412399 () Bool)

(assert (=> b!637325 (=> (not res!412399) (not e!364690))))

(declare-fun arrayNoDuplicates!0 (array!38233 (_ BitVec 32) List!12429) Bool)

(assert (=> b!637325 (= res!412399 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12426))))

(declare-fun b!637326 () Bool)

(declare-fun Unit!21489 () Unit!21486)

(assert (=> b!637326 (= e!364684 Unit!21489)))

(declare-fun b!637317 () Bool)

(declare-fun e!364689 () Bool)

(assert (=> b!637317 (= e!364687 e!364689)))

(declare-fun res!412392 () Bool)

(assert (=> b!637317 (=> (not res!412392) (not e!364689))))

(assert (=> b!637317 (= res!412392 (arrayContainsKey!0 lt!294717 (select (arr!18335 a!2986) j!136) j!136))))

(declare-fun res!412405 () Bool)

(assert (=> start!57706 (=> (not res!412405) (not e!364686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57706 (= res!412405 (validMask!0 mask!3053))))

(assert (=> start!57706 e!364686))

(assert (=> start!57706 true))

(declare-fun array_inv!14109 (array!38233) Bool)

(assert (=> start!57706 (array_inv!14109 a!2986)))

(declare-fun b!637327 () Bool)

(declare-fun e!364685 () Bool)

(declare-fun lt!294716 () SeekEntryResult!6782)

(assert (=> b!637327 (= e!364685 (= lt!294712 lt!294716))))

(declare-fun b!637328 () Bool)

(assert (=> b!637328 (= e!364689 (arrayContainsKey!0 lt!294717 (select (arr!18335 a!2986) j!136) index!984))))

(declare-fun b!637329 () Bool)

(declare-fun res!412403 () Bool)

(assert (=> b!637329 (=> res!412403 e!364683)))

(assert (=> b!637329 (= res!412403 (contains!3112 Nil!12426 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637330 () Bool)

(declare-fun e!364692 () Bool)

(assert (=> b!637330 (= e!364693 (not e!364692))))

(declare-fun res!412394 () Bool)

(assert (=> b!637330 (=> res!412394 e!364692)))

(declare-fun lt!294719 () SeekEntryResult!6782)

(assert (=> b!637330 (= res!412394 (not (= lt!294719 (Found!6782 index!984))))))

(declare-fun lt!294722 () Unit!21486)

(assert (=> b!637330 (= lt!294722 e!364684)))

(declare-fun c!72830 () Bool)

(assert (=> b!637330 (= c!72830 (= lt!294719 Undefined!6782))))

(assert (=> b!637330 (= lt!294719 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294720 lt!294717 mask!3053))))

(assert (=> b!637330 e!364685))

(declare-fun res!412393 () Bool)

(assert (=> b!637330 (=> (not res!412393) (not e!364685))))

(declare-fun lt!294723 () (_ BitVec 32))

(assert (=> b!637330 (= res!412393 (= lt!294716 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294723 vacantSpotIndex!68 lt!294720 lt!294717 mask!3053)))))

(assert (=> b!637330 (= lt!294716 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294723 vacantSpotIndex!68 (select (arr!18335 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!637330 (= lt!294720 (select (store (arr!18335 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!294714 () Unit!21486)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38233 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21486)

(assert (=> b!637330 (= lt!294714 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294723 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!637330 (= lt!294723 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!637331 () Bool)

(declare-fun res!412398 () Bool)

(assert (=> b!637331 (=> (not res!412398) (not e!364686))))

(assert (=> b!637331 (= res!412398 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!637332 () Bool)

(declare-fun res!412406 () Bool)

(assert (=> b!637332 (=> res!412406 e!364683)))

(declare-fun noDuplicate!387 (List!12429) Bool)

(assert (=> b!637332 (= res!412406 (not (noDuplicate!387 Nil!12426)))))

(declare-fun b!637333 () Bool)

(declare-fun res!412408 () Bool)

(assert (=> b!637333 (=> (not res!412408) (not e!364686))))

(assert (=> b!637333 (= res!412408 (validKeyInArray!0 k!1786))))

(declare-fun b!637334 () Bool)

(assert (=> b!637334 (= e!364686 e!364690)))

(declare-fun res!412395 () Bool)

(assert (=> b!637334 (=> (not res!412395) (not e!364690))))

(declare-fun lt!294713 () SeekEntryResult!6782)

(assert (=> b!637334 (= res!412395 (or (= lt!294713 (MissingZero!6782 i!1108)) (= lt!294713 (MissingVacant!6782 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38233 (_ BitVec 32)) SeekEntryResult!6782)

(assert (=> b!637334 (= lt!294713 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!637335 () Bool)

(assert (=> b!637335 (= e!364692 e!364682)))

(declare-fun res!412396 () Bool)

(assert (=> b!637335 (=> res!412396 e!364682)))

(assert (=> b!637335 (= res!412396 (or (not (= (select (arr!18335 a!2986) j!136) lt!294720)) (not (= (select (arr!18335 a!2986) j!136) lt!294715)) (bvsge j!136 index!984)))))

(assert (=> b!637335 e!364681))

(declare-fun res!412401 () Bool)

(assert (=> b!637335 (=> (not res!412401) (not e!364681))))

(assert (=> b!637335 (= res!412401 (= lt!294715 (select (arr!18335 a!2986) j!136)))))

(assert (=> b!637335 (= lt!294715 (select (store (arr!18335 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!637336 () Bool)

(declare-fun res!412402 () Bool)

(assert (=> b!637336 (=> (not res!412402) (not e!364686))))

(assert (=> b!637336 (= res!412402 (and (= (size!18699 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18699 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18699 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!637337 () Bool)

(declare-fun res!412407 () Bool)

(assert (=> b!637337 (=> (not res!412407) (not e!364690))))

(assert (=> b!637337 (= res!412407 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18335 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!57706 res!412405) b!637336))

(assert (= (and b!637336 res!412402) b!637315))

(assert (= (and b!637315 res!412397) b!637333))

(assert (= (and b!637333 res!412408) b!637331))

(assert (= (and b!637331 res!412398) b!637334))

(assert (= (and b!637334 res!412395) b!637321))

(assert (= (and b!637321 res!412390) b!637325))

(assert (= (and b!637325 res!412399) b!637337))

(assert (= (and b!637337 res!412407) b!637323))

(assert (= (and b!637323 res!412389) b!637316))

(assert (= (and b!637316 res!412391) b!637330))

(assert (= (and b!637330 res!412393) b!637327))

(assert (= (and b!637330 c!72830) b!637319))

(assert (= (and b!637330 (not c!72830)) b!637326))

(assert (= (and b!637330 (not res!412394)) b!637335))

(assert (= (and b!637335 res!412401) b!637324))

(assert (= (and b!637324 (not res!412404)) b!637317))

(assert (= (and b!637317 res!412392) b!637328))

(assert (= (and b!637335 (not res!412396)) b!637320))

(assert (= (and b!637320 (not res!412400)) b!637332))

(assert (= (and b!637332 (not res!412406)) b!637322))

(assert (= (and b!637322 (not res!412409)) b!637329))

(assert (= (and b!637329 (not res!412403)) b!637318))

(declare-fun m!611453 () Bool)

(assert (=> b!637320 m!611453))

(assert (=> b!637320 m!611453))

(declare-fun m!611455 () Bool)

(assert (=> b!637320 m!611455))

(assert (=> b!637320 m!611453))

(declare-fun m!611457 () Bool)

(assert (=> b!637320 m!611457))

(declare-fun m!611459 () Bool)

(assert (=> b!637334 m!611459))

(declare-fun m!611461 () Bool)

(assert (=> b!637316 m!611461))

(assert (=> b!637316 m!611453))

(assert (=> b!637316 m!611453))

(declare-fun m!611463 () Bool)

(assert (=> b!637316 m!611463))

(declare-fun m!611465 () Bool)

(assert (=> b!637321 m!611465))

(assert (=> b!637315 m!611453))

(assert (=> b!637315 m!611453))

(declare-fun m!611467 () Bool)

(assert (=> b!637315 m!611467))

(declare-fun m!611469 () Bool)

(assert (=> b!637333 m!611469))

(assert (=> b!637324 m!611453))

(declare-fun m!611471 () Bool)

(assert (=> b!637331 m!611471))

(declare-fun m!611473 () Bool)

(assert (=> b!637337 m!611473))

(assert (=> b!637317 m!611453))

(assert (=> b!637317 m!611453))

(declare-fun m!611475 () Bool)

(assert (=> b!637317 m!611475))

(declare-fun m!611477 () Bool)

(assert (=> b!637332 m!611477))

(declare-fun m!611479 () Bool)

(assert (=> b!637323 m!611479))

(declare-fun m!611481 () Bool)

(assert (=> b!637323 m!611481))

(assert (=> b!637335 m!611453))

(assert (=> b!637335 m!611479))

(declare-fun m!611483 () Bool)

(assert (=> b!637335 m!611483))

(declare-fun m!611485 () Bool)

(assert (=> b!637318 m!611485))

(declare-fun m!611487 () Bool)

(assert (=> start!57706 m!611487))

(declare-fun m!611489 () Bool)

(assert (=> start!57706 m!611489))

(declare-fun m!611491 () Bool)

(assert (=> b!637329 m!611491))

(declare-fun m!611493 () Bool)

(assert (=> b!637322 m!611493))

(declare-fun m!611495 () Bool)

(assert (=> b!637325 m!611495))

(declare-fun m!611497 () Bool)

(assert (=> b!637330 m!611497))

(declare-fun m!611499 () Bool)

(assert (=> b!637330 m!611499))

(assert (=> b!637330 m!611453))

(declare-fun m!611501 () Bool)

(assert (=> b!637330 m!611501))

(assert (=> b!637330 m!611453))

(declare-fun m!611503 () Bool)

(assert (=> b!637330 m!611503))

(declare-fun m!611505 () Bool)

(assert (=> b!637330 m!611505))

(declare-fun m!611507 () Bool)

(assert (=> b!637330 m!611507))

(assert (=> b!637330 m!611479))

(assert (=> b!637328 m!611453))

(assert (=> b!637328 m!611453))

(declare-fun m!611509 () Bool)

(assert (=> b!637328 m!611509))

(push 1)

