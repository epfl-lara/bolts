; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57938 () Bool)

(assert start!57938)

(declare-fun b!640439 () Bool)

(declare-fun res!414854 () Bool)

(declare-fun e!366635 () Bool)

(assert (=> b!640439 (=> (not res!414854) (not e!366635))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38321 0))(
  ( (array!38322 (arr!18376 (Array (_ BitVec 32) (_ BitVec 64))) (size!18740 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38321)

(assert (=> b!640439 (= res!414854 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18376 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640441 () Bool)

(declare-datatypes ((Unit!21650 0))(
  ( (Unit!21651) )
))
(declare-fun e!366629 () Unit!21650)

(declare-fun Unit!21652 () Unit!21650)

(assert (=> b!640441 (= e!366629 Unit!21652)))

(declare-fun b!640442 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!366634 () Bool)

(declare-fun lt!296488 () array!38321)

(declare-fun arrayContainsKey!0 (array!38321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640442 (= e!366634 (arrayContainsKey!0 lt!296488 (select (arr!18376 a!2986) j!136) index!984))))

(declare-fun b!640443 () Bool)

(declare-fun Unit!21653 () Unit!21650)

(assert (=> b!640443 (= e!366629 Unit!21653)))

(assert (=> b!640443 false))

(declare-fun b!640444 () Bool)

(declare-fun e!366631 () Bool)

(declare-fun e!366636 () Bool)

(assert (=> b!640444 (= e!366631 e!366636)))

(declare-fun res!414868 () Bool)

(assert (=> b!640444 (=> (not res!414868) (not e!366636))))

(declare-datatypes ((SeekEntryResult!6823 0))(
  ( (MissingZero!6823 (index!29611 (_ BitVec 32))) (Found!6823 (index!29612 (_ BitVec 32))) (Intermediate!6823 (undefined!7635 Bool) (index!29613 (_ BitVec 32)) (x!58396 (_ BitVec 32))) (Undefined!6823) (MissingVacant!6823 (index!29614 (_ BitVec 32))) )
))
(declare-fun lt!296483 () SeekEntryResult!6823)

(assert (=> b!640444 (= res!414868 (and (= lt!296483 (Found!6823 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18376 a!2986) index!984) (select (arr!18376 a!2986) j!136))) (not (= (select (arr!18376 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38321 (_ BitVec 32)) SeekEntryResult!6823)

(assert (=> b!640444 (= lt!296483 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18376 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!640445 () Bool)

(declare-fun e!366627 () Bool)

(assert (=> b!640445 (= e!366627 e!366634)))

(declare-fun res!414857 () Bool)

(assert (=> b!640445 (=> (not res!414857) (not e!366634))))

(assert (=> b!640445 (= res!414857 (arrayContainsKey!0 lt!296488 (select (arr!18376 a!2986) j!136) j!136))))

(declare-fun b!640446 () Bool)

(declare-fun res!414858 () Bool)

(assert (=> b!640446 (=> (not res!414858) (not e!366635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38321 (_ BitVec 32)) Bool)

(assert (=> b!640446 (= res!414858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!640447 () Bool)

(declare-fun e!366632 () Bool)

(declare-fun e!366630 () Bool)

(assert (=> b!640447 (= e!366632 e!366630)))

(declare-fun res!414853 () Bool)

(assert (=> b!640447 (=> res!414853 e!366630)))

(declare-fun lt!296489 () (_ BitVec 64))

(declare-fun lt!296492 () (_ BitVec 64))

(assert (=> b!640447 (= res!414853 (or (not (= (select (arr!18376 a!2986) j!136) lt!296492)) (not (= (select (arr!18376 a!2986) j!136) lt!296489)) (bvsge j!136 index!984)))))

(declare-fun e!366628 () Bool)

(assert (=> b!640447 e!366628))

(declare-fun res!414859 () Bool)

(assert (=> b!640447 (=> (not res!414859) (not e!366628))))

(assert (=> b!640447 (= res!414859 (= lt!296489 (select (arr!18376 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!640447 (= lt!296489 (select (store (arr!18376 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!640448 () Bool)

(declare-fun e!366633 () Bool)

(assert (=> b!640448 (= e!366633 e!366635)))

(declare-fun res!414861 () Bool)

(assert (=> b!640448 (=> (not res!414861) (not e!366635))))

(declare-fun lt!296482 () SeekEntryResult!6823)

(assert (=> b!640448 (= res!414861 (or (= lt!296482 (MissingZero!6823 i!1108)) (= lt!296482 (MissingVacant!6823 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38321 (_ BitVec 32)) SeekEntryResult!6823)

(assert (=> b!640448 (= lt!296482 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!640449 () Bool)

(declare-fun res!414869 () Bool)

(assert (=> b!640449 (=> (not res!414869) (not e!366633))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640449 (= res!414869 (validKeyInArray!0 k0!1786))))

(declare-fun b!640440 () Bool)

(declare-fun res!414867 () Bool)

(assert (=> b!640440 (=> (not res!414867) (not e!366635))))

(declare-datatypes ((List!12470 0))(
  ( (Nil!12467) (Cons!12466 (h!13511 (_ BitVec 64)) (t!18706 List!12470)) )
))
(declare-fun arrayNoDuplicates!0 (array!38321 (_ BitVec 32) List!12470) Bool)

(assert (=> b!640440 (= res!414867 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12467))))

(declare-fun res!414866 () Bool)

(assert (=> start!57938 (=> (not res!414866) (not e!366633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57938 (= res!414866 (validMask!0 mask!3053))))

(assert (=> start!57938 e!366633))

(assert (=> start!57938 true))

(declare-fun array_inv!14150 (array!38321) Bool)

(assert (=> start!57938 (array_inv!14150 a!2986)))

(declare-fun b!640450 () Bool)

(declare-fun res!414863 () Bool)

(assert (=> b!640450 (=> (not res!414863) (not e!366633))))

(assert (=> b!640450 (= res!414863 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!640451 () Bool)

(declare-fun res!414860 () Bool)

(assert (=> b!640451 (=> (not res!414860) (not e!366633))))

(assert (=> b!640451 (= res!414860 (and (= (size!18740 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18740 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18740 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!640452 () Bool)

(assert (=> b!640452 (= e!366630 (or (bvsge (size!18740 a!2986) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 j!136) (size!18740 a!2986))))))

(assert (=> b!640452 (arrayNoDuplicates!0 lt!296488 j!136 Nil!12467)))

(declare-fun lt!296485 () Unit!21650)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38321 (_ BitVec 32) (_ BitVec 32)) Unit!21650)

(assert (=> b!640452 (= lt!296485 (lemmaNoDuplicateFromThenFromBigger!0 lt!296488 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640452 (arrayNoDuplicates!0 lt!296488 #b00000000000000000000000000000000 Nil!12467)))

(declare-fun lt!296493 () Unit!21650)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38321 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12470) Unit!21650)

(assert (=> b!640452 (= lt!296493 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12467))))

(assert (=> b!640452 (arrayContainsKey!0 lt!296488 (select (arr!18376 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296491 () Unit!21650)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38321 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21650)

(assert (=> b!640452 (= lt!296491 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296488 (select (arr!18376 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!640453 () Bool)

(declare-fun e!366626 () Bool)

(declare-fun lt!296490 () SeekEntryResult!6823)

(assert (=> b!640453 (= e!366626 (= lt!296483 lt!296490))))

(declare-fun b!640454 () Bool)

(assert (=> b!640454 (= e!366628 e!366627)))

(declare-fun res!414855 () Bool)

(assert (=> b!640454 (=> res!414855 e!366627)))

(assert (=> b!640454 (= res!414855 (or (not (= (select (arr!18376 a!2986) j!136) lt!296492)) (not (= (select (arr!18376 a!2986) j!136) lt!296489)) (bvsge j!136 index!984)))))

(declare-fun b!640455 () Bool)

(assert (=> b!640455 (= e!366636 (not e!366632))))

(declare-fun res!414864 () Bool)

(assert (=> b!640455 (=> res!414864 e!366632)))

(declare-fun lt!296486 () SeekEntryResult!6823)

(assert (=> b!640455 (= res!414864 (not (= lt!296486 (Found!6823 index!984))))))

(declare-fun lt!296484 () Unit!21650)

(assert (=> b!640455 (= lt!296484 e!366629)))

(declare-fun c!73160 () Bool)

(assert (=> b!640455 (= c!73160 (= lt!296486 Undefined!6823))))

(assert (=> b!640455 (= lt!296486 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296492 lt!296488 mask!3053))))

(assert (=> b!640455 e!366626))

(declare-fun res!414856 () Bool)

(assert (=> b!640455 (=> (not res!414856) (not e!366626))))

(declare-fun lt!296481 () (_ BitVec 32))

(assert (=> b!640455 (= res!414856 (= lt!296490 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296481 vacantSpotIndex!68 lt!296492 lt!296488 mask!3053)))))

(assert (=> b!640455 (= lt!296490 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296481 vacantSpotIndex!68 (select (arr!18376 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!640455 (= lt!296492 (select (store (arr!18376 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!296487 () Unit!21650)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38321 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21650)

(assert (=> b!640455 (= lt!296487 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296481 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640455 (= lt!296481 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!640456 () Bool)

(assert (=> b!640456 (= e!366635 e!366631)))

(declare-fun res!414862 () Bool)

(assert (=> b!640456 (=> (not res!414862) (not e!366631))))

(assert (=> b!640456 (= res!414862 (= (select (store (arr!18376 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640456 (= lt!296488 (array!38322 (store (arr!18376 a!2986) i!1108 k0!1786) (size!18740 a!2986)))))

(declare-fun b!640457 () Bool)

(declare-fun res!414865 () Bool)

(assert (=> b!640457 (=> (not res!414865) (not e!366633))))

(assert (=> b!640457 (= res!414865 (validKeyInArray!0 (select (arr!18376 a!2986) j!136)))))

(assert (= (and start!57938 res!414866) b!640451))

(assert (= (and b!640451 res!414860) b!640457))

(assert (= (and b!640457 res!414865) b!640449))

(assert (= (and b!640449 res!414869) b!640450))

(assert (= (and b!640450 res!414863) b!640448))

(assert (= (and b!640448 res!414861) b!640446))

(assert (= (and b!640446 res!414858) b!640440))

(assert (= (and b!640440 res!414867) b!640439))

(assert (= (and b!640439 res!414854) b!640456))

(assert (= (and b!640456 res!414862) b!640444))

(assert (= (and b!640444 res!414868) b!640455))

(assert (= (and b!640455 res!414856) b!640453))

(assert (= (and b!640455 c!73160) b!640443))

(assert (= (and b!640455 (not c!73160)) b!640441))

(assert (= (and b!640455 (not res!414864)) b!640447))

(assert (= (and b!640447 res!414859) b!640454))

(assert (= (and b!640454 (not res!414855)) b!640445))

(assert (= (and b!640445 res!414857) b!640442))

(assert (= (and b!640447 (not res!414853)) b!640452))

(declare-fun m!614347 () Bool)

(assert (=> b!640445 m!614347))

(assert (=> b!640445 m!614347))

(declare-fun m!614349 () Bool)

(assert (=> b!640445 m!614349))

(declare-fun m!614351 () Bool)

(assert (=> b!640452 m!614351))

(assert (=> b!640452 m!614347))

(declare-fun m!614353 () Bool)

(assert (=> b!640452 m!614353))

(assert (=> b!640452 m!614347))

(declare-fun m!614355 () Bool)

(assert (=> b!640452 m!614355))

(declare-fun m!614357 () Bool)

(assert (=> b!640452 m!614357))

(assert (=> b!640452 m!614347))

(declare-fun m!614359 () Bool)

(assert (=> b!640452 m!614359))

(declare-fun m!614361 () Bool)

(assert (=> b!640452 m!614361))

(declare-fun m!614363 () Bool)

(assert (=> b!640446 m!614363))

(assert (=> b!640447 m!614347))

(declare-fun m!614365 () Bool)

(assert (=> b!640447 m!614365))

(declare-fun m!614367 () Bool)

(assert (=> b!640447 m!614367))

(assert (=> b!640457 m!614347))

(assert (=> b!640457 m!614347))

(declare-fun m!614369 () Bool)

(assert (=> b!640457 m!614369))

(assert (=> b!640456 m!614365))

(declare-fun m!614371 () Bool)

(assert (=> b!640456 m!614371))

(declare-fun m!614373 () Bool)

(assert (=> b!640450 m!614373))

(declare-fun m!614375 () Bool)

(assert (=> b!640440 m!614375))

(declare-fun m!614377 () Bool)

(assert (=> b!640448 m!614377))

(declare-fun m!614379 () Bool)

(assert (=> b!640439 m!614379))

(declare-fun m!614381 () Bool)

(assert (=> b!640455 m!614381))

(declare-fun m!614383 () Bool)

(assert (=> b!640455 m!614383))

(assert (=> b!640455 m!614347))

(declare-fun m!614385 () Bool)

(assert (=> b!640455 m!614385))

(assert (=> b!640455 m!614347))

(declare-fun m!614387 () Bool)

(assert (=> b!640455 m!614387))

(declare-fun m!614389 () Bool)

(assert (=> b!640455 m!614389))

(declare-fun m!614391 () Bool)

(assert (=> b!640455 m!614391))

(assert (=> b!640455 m!614365))

(assert (=> b!640454 m!614347))

(declare-fun m!614393 () Bool)

(assert (=> b!640444 m!614393))

(assert (=> b!640444 m!614347))

(assert (=> b!640444 m!614347))

(declare-fun m!614395 () Bool)

(assert (=> b!640444 m!614395))

(declare-fun m!614397 () Bool)

(assert (=> b!640449 m!614397))

(declare-fun m!614399 () Bool)

(assert (=> start!57938 m!614399))

(declare-fun m!614401 () Bool)

(assert (=> start!57938 m!614401))

(assert (=> b!640442 m!614347))

(assert (=> b!640442 m!614347))

(declare-fun m!614403 () Bool)

(assert (=> b!640442 m!614403))

(check-sat (not b!640446) (not b!640448) (not b!640449) (not b!640455) (not b!640444) (not b!640452) (not b!640445) (not b!640457) (not b!640450) (not b!640442) (not b!640440) (not start!57938))
(check-sat)
