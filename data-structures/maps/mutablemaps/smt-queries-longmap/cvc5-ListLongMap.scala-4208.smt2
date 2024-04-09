; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57708 () Bool)

(assert start!57708)

(declare-fun b!637384 () Bool)

(declare-fun e!364723 () Bool)

(declare-fun e!364720 () Bool)

(assert (=> b!637384 (= e!364723 e!364720)))

(declare-fun res!412469 () Bool)

(assert (=> b!637384 (=> (not res!412469) (not e!364720))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38235 0))(
  ( (array!38236 (arr!18336 (Array (_ BitVec 32) (_ BitVec 64))) (size!18700 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38235)

(declare-fun lt!294759 () array!38235)

(declare-fun arrayContainsKey!0 (array!38235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!637384 (= res!412469 (arrayContainsKey!0 lt!294759 (select (arr!18336 a!2986) j!136) j!136))))

(declare-fun b!637385 () Bool)

(declare-fun res!412472 () Bool)

(declare-fun e!364721 () Bool)

(assert (=> b!637385 (=> res!412472 e!364721)))

(declare-datatypes ((List!12430 0))(
  ( (Nil!12427) (Cons!12426 (h!13471 (_ BitVec 64)) (t!18666 List!12430)) )
))
(declare-fun noDuplicate!388 (List!12430) Bool)

(assert (=> b!637385 (= res!412472 (not (noDuplicate!388 Nil!12427)))))

(declare-fun b!637386 () Bool)

(declare-fun res!412452 () Bool)

(assert (=> b!637386 (=> res!412452 e!364721)))

(declare-fun contains!3113 (List!12430 (_ BitVec 64)) Bool)

(assert (=> b!637386 (= res!412452 (contains!3113 Nil!12427 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637387 () Bool)

(declare-datatypes ((Unit!21490 0))(
  ( (Unit!21491) )
))
(declare-fun e!364722 () Unit!21490)

(declare-fun Unit!21492 () Unit!21490)

(assert (=> b!637387 (= e!364722 Unit!21492)))

(declare-fun b!637388 () Bool)

(declare-fun res!412462 () Bool)

(assert (=> b!637388 (=> res!412462 e!364721)))

(assert (=> b!637388 (= res!412462 (contains!3113 Nil!12427 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!412457 () Bool)

(declare-fun e!364728 () Bool)

(assert (=> start!57708 (=> (not res!412457) (not e!364728))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57708 (= res!412457 (validMask!0 mask!3053))))

(assert (=> start!57708 e!364728))

(assert (=> start!57708 true))

(declare-fun array_inv!14110 (array!38235) Bool)

(assert (=> start!57708 (array_inv!14110 a!2986)))

(declare-fun b!637389 () Bool)

(declare-fun e!364724 () Bool)

(declare-fun e!364726 () Bool)

(assert (=> b!637389 (= e!364724 e!364726)))

(declare-fun res!412468 () Bool)

(assert (=> b!637389 (=> (not res!412468) (not e!364726))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!637389 (= res!412468 (= (select (store (arr!18336 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!637389 (= lt!294759 (array!38236 (store (arr!18336 a!2986) i!1108 k!1786) (size!18700 a!2986)))))

(declare-fun b!637390 () Bool)

(declare-fun res!412465 () Bool)

(assert (=> b!637390 (=> (not res!412465) (not e!364724))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!637390 (= res!412465 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18336 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!637391 () Bool)

(declare-fun res!412470 () Bool)

(assert (=> b!637391 (=> (not res!412470) (not e!364728))))

(assert (=> b!637391 (= res!412470 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!637392 () Bool)

(declare-fun Unit!21493 () Unit!21490)

(assert (=> b!637392 (= e!364722 Unit!21493)))

(assert (=> b!637392 false))

(declare-fun b!637393 () Bool)

(assert (=> b!637393 (= e!364720 (arrayContainsKey!0 lt!294759 (select (arr!18336 a!2986) j!136) index!984))))

(declare-fun b!637394 () Bool)

(declare-fun res!412463 () Bool)

(assert (=> b!637394 (=> (not res!412463) (not e!364728))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!637394 (= res!412463 (validKeyInArray!0 (select (arr!18336 a!2986) j!136)))))

(declare-fun b!637395 () Bool)

(assert (=> b!637395 (= e!364721 true)))

(declare-fun lt!294751 () Bool)

(assert (=> b!637395 (= lt!294751 (contains!3113 Nil!12427 k!1786))))

(declare-fun b!637396 () Bool)

(declare-fun res!412456 () Bool)

(assert (=> b!637396 (=> (not res!412456) (not e!364728))))

(assert (=> b!637396 (= res!412456 (validKeyInArray!0 k!1786))))

(declare-fun b!637397 () Bool)

(declare-fun res!412467 () Bool)

(assert (=> b!637397 (=> (not res!412467) (not e!364724))))

(declare-fun arrayNoDuplicates!0 (array!38235 (_ BitVec 32) List!12430) Bool)

(assert (=> b!637397 (= res!412467 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12427))))

(declare-fun b!637398 () Bool)

(declare-fun res!412464 () Bool)

(assert (=> b!637398 (=> (not res!412464) (not e!364724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38235 (_ BitVec 32)) Bool)

(assert (=> b!637398 (= res!412464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!637399 () Bool)

(declare-fun res!412459 () Bool)

(assert (=> b!637399 (=> (not res!412459) (not e!364728))))

(assert (=> b!637399 (= res!412459 (and (= (size!18700 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18700 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18700 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!637400 () Bool)

(declare-fun e!364731 () Bool)

(declare-fun e!364730 () Bool)

(assert (=> b!637400 (= e!364731 (not e!364730))))

(declare-fun res!412461 () Bool)

(assert (=> b!637400 (=> res!412461 e!364730)))

(declare-datatypes ((SeekEntryResult!6783 0))(
  ( (MissingZero!6783 (index!29445 (_ BitVec 32))) (Found!6783 (index!29446 (_ BitVec 32))) (Intermediate!6783 (undefined!7595 Bool) (index!29447 (_ BitVec 32)) (x!58234 (_ BitVec 32))) (Undefined!6783) (MissingVacant!6783 (index!29448 (_ BitVec 32))) )
))
(declare-fun lt!294753 () SeekEntryResult!6783)

(assert (=> b!637400 (= res!412461 (not (= lt!294753 (Found!6783 index!984))))))

(declare-fun lt!294754 () Unit!21490)

(assert (=> b!637400 (= lt!294754 e!364722)))

(declare-fun c!72833 () Bool)

(assert (=> b!637400 (= c!72833 (= lt!294753 Undefined!6783))))

(declare-fun lt!294748 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38235 (_ BitVec 32)) SeekEntryResult!6783)

(assert (=> b!637400 (= lt!294753 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294748 lt!294759 mask!3053))))

(declare-fun e!364727 () Bool)

(assert (=> b!637400 e!364727))

(declare-fun res!412466 () Bool)

(assert (=> b!637400 (=> (not res!412466) (not e!364727))))

(declare-fun lt!294755 () SeekEntryResult!6783)

(declare-fun lt!294750 () (_ BitVec 32))

(assert (=> b!637400 (= res!412466 (= lt!294755 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294750 vacantSpotIndex!68 lt!294748 lt!294759 mask!3053)))))

(assert (=> b!637400 (= lt!294755 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294750 vacantSpotIndex!68 (select (arr!18336 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!637400 (= lt!294748 (select (store (arr!18336 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!294749 () Unit!21490)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38235 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21490)

(assert (=> b!637400 (= lt!294749 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294750 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!637400 (= lt!294750 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!637401 () Bool)

(declare-fun lt!294757 () SeekEntryResult!6783)

(assert (=> b!637401 (= e!364727 (= lt!294757 lt!294755))))

(declare-fun b!637402 () Bool)

(declare-fun e!364729 () Bool)

(assert (=> b!637402 (= e!364729 e!364721)))

(declare-fun res!412454 () Bool)

(assert (=> b!637402 (=> res!412454 e!364721)))

(assert (=> b!637402 (= res!412454 (or (bvsge (size!18700 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18700 a!2986))))))

(assert (=> b!637402 (arrayContainsKey!0 lt!294759 (select (arr!18336 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294756 () Unit!21490)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38235 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21490)

(assert (=> b!637402 (= lt!294756 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294759 (select (arr!18336 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!637403 () Bool)

(assert (=> b!637403 (= e!364730 e!364729)))

(declare-fun res!412458 () Bool)

(assert (=> b!637403 (=> res!412458 e!364729)))

(declare-fun lt!294752 () (_ BitVec 64))

(assert (=> b!637403 (= res!412458 (or (not (= (select (arr!18336 a!2986) j!136) lt!294748)) (not (= (select (arr!18336 a!2986) j!136) lt!294752)) (bvsge j!136 index!984)))))

(declare-fun e!364725 () Bool)

(assert (=> b!637403 e!364725))

(declare-fun res!412453 () Bool)

(assert (=> b!637403 (=> (not res!412453) (not e!364725))))

(assert (=> b!637403 (= res!412453 (= lt!294752 (select (arr!18336 a!2986) j!136)))))

(assert (=> b!637403 (= lt!294752 (select (store (arr!18336 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!637404 () Bool)

(assert (=> b!637404 (= e!364725 e!364723)))

(declare-fun res!412455 () Bool)

(assert (=> b!637404 (=> res!412455 e!364723)))

(assert (=> b!637404 (= res!412455 (or (not (= (select (arr!18336 a!2986) j!136) lt!294748)) (not (= (select (arr!18336 a!2986) j!136) lt!294752)) (bvsge j!136 index!984)))))

(declare-fun b!637405 () Bool)

(assert (=> b!637405 (= e!364728 e!364724)))

(declare-fun res!412471 () Bool)

(assert (=> b!637405 (=> (not res!412471) (not e!364724))))

(declare-fun lt!294758 () SeekEntryResult!6783)

(assert (=> b!637405 (= res!412471 (or (= lt!294758 (MissingZero!6783 i!1108)) (= lt!294758 (MissingVacant!6783 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38235 (_ BitVec 32)) SeekEntryResult!6783)

(assert (=> b!637405 (= lt!294758 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!637406 () Bool)

(assert (=> b!637406 (= e!364726 e!364731)))

(declare-fun res!412460 () Bool)

(assert (=> b!637406 (=> (not res!412460) (not e!364731))))

(assert (=> b!637406 (= res!412460 (and (= lt!294757 (Found!6783 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18336 a!2986) index!984) (select (arr!18336 a!2986) j!136))) (not (= (select (arr!18336 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!637406 (= lt!294757 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18336 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!57708 res!412457) b!637399))

(assert (= (and b!637399 res!412459) b!637394))

(assert (= (and b!637394 res!412463) b!637396))

(assert (= (and b!637396 res!412456) b!637391))

(assert (= (and b!637391 res!412470) b!637405))

(assert (= (and b!637405 res!412471) b!637398))

(assert (= (and b!637398 res!412464) b!637397))

(assert (= (and b!637397 res!412467) b!637390))

(assert (= (and b!637390 res!412465) b!637389))

(assert (= (and b!637389 res!412468) b!637406))

(assert (= (and b!637406 res!412460) b!637400))

(assert (= (and b!637400 res!412466) b!637401))

(assert (= (and b!637400 c!72833) b!637392))

(assert (= (and b!637400 (not c!72833)) b!637387))

(assert (= (and b!637400 (not res!412461)) b!637403))

(assert (= (and b!637403 res!412453) b!637404))

(assert (= (and b!637404 (not res!412455)) b!637384))

(assert (= (and b!637384 res!412469) b!637393))

(assert (= (and b!637403 (not res!412458)) b!637402))

(assert (= (and b!637402 (not res!412454)) b!637385))

(assert (= (and b!637385 (not res!412472)) b!637388))

(assert (= (and b!637388 (not res!412462)) b!637386))

(assert (= (and b!637386 (not res!412452)) b!637395))

(declare-fun m!611511 () Bool)

(assert (=> b!637393 m!611511))

(assert (=> b!637393 m!611511))

(declare-fun m!611513 () Bool)

(assert (=> b!637393 m!611513))

(assert (=> b!637394 m!611511))

(assert (=> b!637394 m!611511))

(declare-fun m!611515 () Bool)

(assert (=> b!637394 m!611515))

(declare-fun m!611517 () Bool)

(assert (=> b!637386 m!611517))

(declare-fun m!611519 () Bool)

(assert (=> b!637398 m!611519))

(assert (=> b!637404 m!611511))

(assert (=> b!637403 m!611511))

(declare-fun m!611521 () Bool)

(assert (=> b!637403 m!611521))

(declare-fun m!611523 () Bool)

(assert (=> b!637403 m!611523))

(declare-fun m!611525 () Bool)

(assert (=> b!637397 m!611525))

(assert (=> b!637402 m!611511))

(assert (=> b!637402 m!611511))

(declare-fun m!611527 () Bool)

(assert (=> b!637402 m!611527))

(assert (=> b!637402 m!611511))

(declare-fun m!611529 () Bool)

(assert (=> b!637402 m!611529))

(declare-fun m!611531 () Bool)

(assert (=> b!637388 m!611531))

(declare-fun m!611533 () Bool)

(assert (=> b!637396 m!611533))

(declare-fun m!611535 () Bool)

(assert (=> b!637391 m!611535))

(declare-fun m!611537 () Bool)

(assert (=> b!637395 m!611537))

(declare-fun m!611539 () Bool)

(assert (=> b!637390 m!611539))

(declare-fun m!611541 () Bool)

(assert (=> b!637405 m!611541))

(assert (=> b!637384 m!611511))

(assert (=> b!637384 m!611511))

(declare-fun m!611543 () Bool)

(assert (=> b!637384 m!611543))

(declare-fun m!611545 () Bool)

(assert (=> b!637385 m!611545))

(assert (=> b!637389 m!611521))

(declare-fun m!611547 () Bool)

(assert (=> b!637389 m!611547))

(declare-fun m!611549 () Bool)

(assert (=> b!637406 m!611549))

(assert (=> b!637406 m!611511))

(assert (=> b!637406 m!611511))

(declare-fun m!611551 () Bool)

(assert (=> b!637406 m!611551))

(declare-fun m!611553 () Bool)

(assert (=> b!637400 m!611553))

(declare-fun m!611555 () Bool)

(assert (=> b!637400 m!611555))

(assert (=> b!637400 m!611511))

(assert (=> b!637400 m!611521))

(assert (=> b!637400 m!611511))

(declare-fun m!611557 () Bool)

(assert (=> b!637400 m!611557))

(declare-fun m!611559 () Bool)

(assert (=> b!637400 m!611559))

(declare-fun m!611561 () Bool)

(assert (=> b!637400 m!611561))

(declare-fun m!611563 () Bool)

(assert (=> b!637400 m!611563))

(declare-fun m!611565 () Bool)

(assert (=> start!57708 m!611565))

(declare-fun m!611567 () Bool)

(assert (=> start!57708 m!611567))

(push 1)

