; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59350 () Bool)

(assert start!59350)

(declare-fun b!654378 () Bool)

(declare-fun e!375788 () Bool)

(declare-fun e!375797 () Bool)

(assert (=> b!654378 (= e!375788 e!375797)))

(declare-fun res!424552 () Bool)

(assert (=> b!654378 (=> res!424552 e!375797)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!304936 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38626 0))(
  ( (array!38627 (arr!18509 (Array (_ BitVec 32) (_ BitVec 64))) (size!18873 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38626)

(declare-fun lt!304933 () (_ BitVec 64))

(assert (=> b!654378 (= res!424552 (or (not (= (select (arr!18509 a!2986) j!136) lt!304936)) (not (= (select (arr!18509 a!2986) j!136) lt!304933)) (bvsge j!136 index!984)))))

(declare-fun b!654379 () Bool)

(declare-datatypes ((Unit!22412 0))(
  ( (Unit!22413) )
))
(declare-fun e!375795 () Unit!22412)

(declare-fun Unit!22414 () Unit!22412)

(assert (=> b!654379 (= e!375795 Unit!22414)))

(declare-fun b!654380 () Bool)

(declare-fun e!375793 () Unit!22412)

(declare-fun Unit!22415 () Unit!22412)

(assert (=> b!654380 (= e!375793 Unit!22415)))

(declare-fun b!654381 () Bool)

(declare-fun Unit!22416 () Unit!22412)

(assert (=> b!654381 (= e!375795 Unit!22416)))

(declare-fun lt!304928 () array!38626)

(declare-fun lt!304924 () Unit!22412)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38626 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22412)

(assert (=> b!654381 (= lt!304924 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304928 (select (arr!18509 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38626 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!654381 (arrayContainsKey!0 lt!304928 (select (arr!18509 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!304926 () Unit!22412)

(declare-datatypes ((List!12603 0))(
  ( (Nil!12600) (Cons!12599 (h!13644 (_ BitVec 64)) (t!18839 List!12603)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38626 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12603) Unit!22412)

(assert (=> b!654381 (= lt!304926 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12600))))

(declare-fun arrayNoDuplicates!0 (array!38626 (_ BitVec 32) List!12603) Bool)

(assert (=> b!654381 (arrayNoDuplicates!0 lt!304928 #b00000000000000000000000000000000 Nil!12600)))

(declare-fun lt!304922 () Unit!22412)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38626 (_ BitVec 32) (_ BitVec 32)) Unit!22412)

(assert (=> b!654381 (= lt!304922 (lemmaNoDuplicateFromThenFromBigger!0 lt!304928 #b00000000000000000000000000000000 j!136))))

(assert (=> b!654381 (arrayNoDuplicates!0 lt!304928 j!136 Nil!12600)))

(declare-fun lt!304927 () Unit!22412)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38626 (_ BitVec 64) (_ BitVec 32) List!12603) Unit!22412)

(assert (=> b!654381 (= lt!304927 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304928 (select (arr!18509 a!2986) j!136) j!136 Nil!12600))))

(assert (=> b!654381 false))

(declare-fun b!654383 () Bool)

(declare-fun res!424549 () Bool)

(declare-fun e!375802 () Bool)

(assert (=> b!654383 (=> (not res!424549) (not e!375802))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!654383 (= res!424549 (validKeyInArray!0 k!1786))))

(declare-fun b!654384 () Bool)

(declare-fun res!424550 () Bool)

(declare-fun e!375789 () Bool)

(assert (=> b!654384 (=> (not res!424550) (not e!375789))))

(assert (=> b!654384 (= res!424550 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12600))))

(declare-fun b!654385 () Bool)

(declare-fun e!375792 () Unit!22412)

(declare-fun Unit!22417 () Unit!22412)

(assert (=> b!654385 (= e!375792 Unit!22417)))

(declare-fun b!654386 () Bool)

(declare-fun res!424551 () Bool)

(assert (=> b!654386 (=> (not res!424551) (not e!375789))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38626 (_ BitVec 32)) Bool)

(assert (=> b!654386 (= res!424551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!654387 () Bool)

(declare-fun Unit!22418 () Unit!22412)

(assert (=> b!654387 (= e!375792 Unit!22418)))

(assert (=> b!654387 false))

(declare-fun b!654388 () Bool)

(declare-fun e!375791 () Bool)

(declare-fun e!375800 () Bool)

(assert (=> b!654388 (= e!375791 e!375800)))

(declare-fun res!424560 () Bool)

(assert (=> b!654388 (=> (not res!424560) (not e!375800))))

(declare-datatypes ((SeekEntryResult!6956 0))(
  ( (MissingZero!6956 (index!30182 (_ BitVec 32))) (Found!6956 (index!30183 (_ BitVec 32))) (Intermediate!6956 (undefined!7768 Bool) (index!30184 (_ BitVec 32)) (x!58998 (_ BitVec 32))) (Undefined!6956) (MissingVacant!6956 (index!30185 (_ BitVec 32))) )
))
(declare-fun lt!304935 () SeekEntryResult!6956)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!654388 (= res!424560 (and (= lt!304935 (Found!6956 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18509 a!2986) index!984) (select (arr!18509 a!2986) j!136))) (not (= (select (arr!18509 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38626 (_ BitVec 32)) SeekEntryResult!6956)

(assert (=> b!654388 (= lt!304935 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18509 a!2986) j!136) a!2986 mask!3053))))

(declare-fun e!375796 () Bool)

(declare-fun b!654389 () Bool)

(assert (=> b!654389 (= e!375796 (arrayContainsKey!0 lt!304928 (select (arr!18509 a!2986) j!136) index!984))))

(declare-fun b!654390 () Bool)

(declare-fun e!375801 () Bool)

(declare-fun lt!304932 () SeekEntryResult!6956)

(assert (=> b!654390 (= e!375801 (= lt!304935 lt!304932))))

(declare-fun b!654391 () Bool)

(declare-fun Unit!22419 () Unit!22412)

(assert (=> b!654391 (= e!375793 Unit!22419)))

(declare-fun res!424558 () Bool)

(assert (=> b!654391 (= res!424558 (arrayContainsKey!0 lt!304928 (select (arr!18509 a!2986) j!136) j!136))))

(assert (=> b!654391 (=> (not res!424558) (not e!375796))))

(assert (=> b!654391 e!375796))

(declare-fun lt!304925 () Unit!22412)

(assert (=> b!654391 (= lt!304925 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304928 (select (arr!18509 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!654391 (arrayContainsKey!0 lt!304928 (select (arr!18509 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!304941 () Unit!22412)

(assert (=> b!654391 (= lt!304941 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12600))))

(assert (=> b!654391 (arrayNoDuplicates!0 lt!304928 #b00000000000000000000000000000000 Nil!12600)))

(declare-fun lt!304930 () Unit!22412)

(assert (=> b!654391 (= lt!304930 (lemmaNoDuplicateFromThenFromBigger!0 lt!304928 #b00000000000000000000000000000000 index!984))))

(assert (=> b!654391 (arrayNoDuplicates!0 lt!304928 index!984 Nil!12600)))

(declare-fun lt!304934 () Unit!22412)

(assert (=> b!654391 (= lt!304934 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304928 (select (arr!18509 a!2986) j!136) index!984 Nil!12600))))

(assert (=> b!654391 false))

(declare-fun b!654392 () Bool)

(declare-fun res!424556 () Bool)

(assert (=> b!654392 (=> (not res!424556) (not e!375802))))

(assert (=> b!654392 (= res!424556 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!654393 () Bool)

(declare-fun res!424561 () Bool)

(assert (=> b!654393 (=> (not res!424561) (not e!375789))))

(assert (=> b!654393 (= res!424561 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18509 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!654394 () Bool)

(declare-fun e!375790 () Bool)

(assert (=> b!654394 (= e!375797 e!375790)))

(declare-fun res!424557 () Bool)

(assert (=> b!654394 (=> (not res!424557) (not e!375790))))

(assert (=> b!654394 (= res!424557 (arrayContainsKey!0 lt!304928 (select (arr!18509 a!2986) j!136) j!136))))

(declare-fun b!654395 () Bool)

(assert (=> b!654395 (= e!375789 e!375791)))

(declare-fun res!424555 () Bool)

(assert (=> b!654395 (=> (not res!424555) (not e!375791))))

(assert (=> b!654395 (= res!424555 (= (select (store (arr!18509 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!654395 (= lt!304928 (array!38627 (store (arr!18509 a!2986) i!1108 k!1786) (size!18873 a!2986)))))

(declare-fun b!654396 () Bool)

(declare-fun e!375799 () Bool)

(assert (=> b!654396 (= e!375800 (not e!375799))))

(declare-fun res!424559 () Bool)

(assert (=> b!654396 (=> res!424559 e!375799)))

(declare-fun lt!304938 () SeekEntryResult!6956)

(assert (=> b!654396 (= res!424559 (not (= lt!304938 (Found!6956 index!984))))))

(declare-fun lt!304939 () Unit!22412)

(assert (=> b!654396 (= lt!304939 e!375792)))

(declare-fun c!75282 () Bool)

(assert (=> b!654396 (= c!75282 (= lt!304938 Undefined!6956))))

(assert (=> b!654396 (= lt!304938 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!304936 lt!304928 mask!3053))))

(assert (=> b!654396 e!375801))

(declare-fun res!424548 () Bool)

(assert (=> b!654396 (=> (not res!424548) (not e!375801))))

(declare-fun lt!304931 () (_ BitVec 32))

(assert (=> b!654396 (= res!424548 (= lt!304932 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304931 vacantSpotIndex!68 lt!304936 lt!304928 mask!3053)))))

(assert (=> b!654396 (= lt!304932 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304931 vacantSpotIndex!68 (select (arr!18509 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!654396 (= lt!304936 (select (store (arr!18509 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!304929 () Unit!22412)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38626 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22412)

(assert (=> b!654396 (= lt!304929 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!304931 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!654396 (= lt!304931 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!654397 () Bool)

(declare-fun res!424562 () Bool)

(assert (=> b!654397 (=> (not res!424562) (not e!375802))))

(assert (=> b!654397 (= res!424562 (validKeyInArray!0 (select (arr!18509 a!2986) j!136)))))

(declare-fun res!424563 () Bool)

(assert (=> start!59350 (=> (not res!424563) (not e!375802))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59350 (= res!424563 (validMask!0 mask!3053))))

(assert (=> start!59350 e!375802))

(assert (=> start!59350 true))

(declare-fun array_inv!14283 (array!38626) Bool)

(assert (=> start!59350 (array_inv!14283 a!2986)))

(declare-fun b!654382 () Bool)

(assert (=> b!654382 (= e!375802 e!375789)))

(declare-fun res!424565 () Bool)

(assert (=> b!654382 (=> (not res!424565) (not e!375789))))

(declare-fun lt!304923 () SeekEntryResult!6956)

(assert (=> b!654382 (= res!424565 (or (= lt!304923 (MissingZero!6956 i!1108)) (= lt!304923 (MissingVacant!6956 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38626 (_ BitVec 32)) SeekEntryResult!6956)

(assert (=> b!654382 (= lt!304923 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!654398 () Bool)

(declare-fun e!375794 () Bool)

(assert (=> b!654398 (= e!375794 false)))

(declare-fun lt!304940 () Unit!22412)

(assert (=> b!654398 (= lt!304940 e!375793)))

(declare-fun c!75283 () Bool)

(assert (=> b!654398 (= c!75283 (bvslt index!984 j!136))))

(declare-fun lt!304937 () Unit!22412)

(assert (=> b!654398 (= lt!304937 e!375795)))

(declare-fun c!75284 () Bool)

(assert (=> b!654398 (= c!75284 (bvslt j!136 index!984))))

(declare-fun b!654399 () Bool)

(assert (=> b!654399 (= e!375799 e!375794)))

(declare-fun res!424564 () Bool)

(assert (=> b!654399 (=> res!424564 e!375794)))

(assert (=> b!654399 (= res!424564 (or (not (= (select (arr!18509 a!2986) j!136) lt!304936)) (not (= (select (arr!18509 a!2986) j!136) lt!304933))))))

(assert (=> b!654399 e!375788))

(declare-fun res!424554 () Bool)

(assert (=> b!654399 (=> (not res!424554) (not e!375788))))

(assert (=> b!654399 (= res!424554 (= lt!304933 (select (arr!18509 a!2986) j!136)))))

(assert (=> b!654399 (= lt!304933 (select (store (arr!18509 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!654400 () Bool)

(assert (=> b!654400 (= e!375790 (arrayContainsKey!0 lt!304928 (select (arr!18509 a!2986) j!136) index!984))))

(declare-fun b!654401 () Bool)

(declare-fun res!424553 () Bool)

(assert (=> b!654401 (=> (not res!424553) (not e!375802))))

(assert (=> b!654401 (= res!424553 (and (= (size!18873 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18873 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18873 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!59350 res!424563) b!654401))

(assert (= (and b!654401 res!424553) b!654397))

(assert (= (and b!654397 res!424562) b!654383))

(assert (= (and b!654383 res!424549) b!654392))

(assert (= (and b!654392 res!424556) b!654382))

(assert (= (and b!654382 res!424565) b!654386))

(assert (= (and b!654386 res!424551) b!654384))

(assert (= (and b!654384 res!424550) b!654393))

(assert (= (and b!654393 res!424561) b!654395))

(assert (= (and b!654395 res!424555) b!654388))

(assert (= (and b!654388 res!424560) b!654396))

(assert (= (and b!654396 res!424548) b!654390))

(assert (= (and b!654396 c!75282) b!654387))

(assert (= (and b!654396 (not c!75282)) b!654385))

(assert (= (and b!654396 (not res!424559)) b!654399))

(assert (= (and b!654399 res!424554) b!654378))

(assert (= (and b!654378 (not res!424552)) b!654394))

(assert (= (and b!654394 res!424557) b!654400))

(assert (= (and b!654399 (not res!424564)) b!654398))

(assert (= (and b!654398 c!75284) b!654381))

(assert (= (and b!654398 (not c!75284)) b!654379))

(assert (= (and b!654398 c!75283) b!654391))

(assert (= (and b!654398 (not c!75283)) b!654380))

(assert (= (and b!654391 res!424558) b!654389))

(declare-fun m!627551 () Bool)

(assert (=> b!654388 m!627551))

(declare-fun m!627553 () Bool)

(assert (=> b!654388 m!627553))

(assert (=> b!654388 m!627553))

(declare-fun m!627555 () Bool)

(assert (=> b!654388 m!627555))

(assert (=> b!654391 m!627553))

(declare-fun m!627557 () Bool)

(assert (=> b!654391 m!627557))

(assert (=> b!654391 m!627553))

(declare-fun m!627559 () Bool)

(assert (=> b!654391 m!627559))

(assert (=> b!654391 m!627553))

(declare-fun m!627561 () Bool)

(assert (=> b!654391 m!627561))

(assert (=> b!654391 m!627553))

(declare-fun m!627563 () Bool)

(assert (=> b!654391 m!627563))

(declare-fun m!627565 () Bool)

(assert (=> b!654391 m!627565))

(assert (=> b!654391 m!627553))

(declare-fun m!627567 () Bool)

(assert (=> b!654391 m!627567))

(declare-fun m!627569 () Bool)

(assert (=> b!654391 m!627569))

(declare-fun m!627571 () Bool)

(assert (=> b!654391 m!627571))

(declare-fun m!627573 () Bool)

(assert (=> b!654393 m!627573))

(declare-fun m!627575 () Bool)

(assert (=> start!59350 m!627575))

(declare-fun m!627577 () Bool)

(assert (=> start!59350 m!627577))

(assert (=> b!654378 m!627553))

(declare-fun m!627579 () Bool)

(assert (=> b!654392 m!627579))

(declare-fun m!627581 () Bool)

(assert (=> b!654386 m!627581))

(assert (=> b!654394 m!627553))

(assert (=> b!654394 m!627553))

(assert (=> b!654394 m!627563))

(assert (=> b!654381 m!627553))

(assert (=> b!654381 m!627553))

(declare-fun m!627583 () Bool)

(assert (=> b!654381 m!627583))

(declare-fun m!627585 () Bool)

(assert (=> b!654381 m!627585))

(declare-fun m!627587 () Bool)

(assert (=> b!654381 m!627587))

(assert (=> b!654381 m!627553))

(declare-fun m!627589 () Bool)

(assert (=> b!654381 m!627589))

(assert (=> b!654381 m!627565))

(assert (=> b!654381 m!627553))

(declare-fun m!627591 () Bool)

(assert (=> b!654381 m!627591))

(assert (=> b!654381 m!627569))

(declare-fun m!627593 () Bool)

(assert (=> b!654382 m!627593))

(declare-fun m!627595 () Bool)

(assert (=> b!654383 m!627595))

(declare-fun m!627597 () Bool)

(assert (=> b!654384 m!627597))

(assert (=> b!654389 m!627553))

(assert (=> b!654389 m!627553))

(declare-fun m!627599 () Bool)

(assert (=> b!654389 m!627599))

(declare-fun m!627601 () Bool)

(assert (=> b!654396 m!627601))

(declare-fun m!627603 () Bool)

(assert (=> b!654396 m!627603))

(assert (=> b!654396 m!627553))

(declare-fun m!627605 () Bool)

(assert (=> b!654396 m!627605))

(declare-fun m!627607 () Bool)

(assert (=> b!654396 m!627607))

(declare-fun m!627609 () Bool)

(assert (=> b!654396 m!627609))

(assert (=> b!654396 m!627553))

(declare-fun m!627611 () Bool)

(assert (=> b!654396 m!627611))

(declare-fun m!627613 () Bool)

(assert (=> b!654396 m!627613))

(assert (=> b!654399 m!627553))

(assert (=> b!654399 m!627605))

(declare-fun m!627615 () Bool)

(assert (=> b!654399 m!627615))

(assert (=> b!654400 m!627553))

(assert (=> b!654400 m!627553))

(assert (=> b!654400 m!627599))

(assert (=> b!654397 m!627553))

(assert (=> b!654397 m!627553))

(declare-fun m!627617 () Bool)

(assert (=> b!654397 m!627617))

(assert (=> b!654395 m!627605))

(declare-fun m!627619 () Bool)

(assert (=> b!654395 m!627619))

(push 1)

(assert (not b!654389))

(assert (not b!654382))

(assert (not b!654383))

(assert (not b!654388))

(assert (not b!654391))

(assert (not b!654397))

(assert (not b!654381))

(assert (not b!654384))

(assert (not b!654386))

(assert (not b!654392))

(assert (not b!654394))

(assert (not start!59350))

(assert (not b!654400))

(assert (not b!654396))

(check-sat)

(pop 1)

(push 1)

(check-sat)

