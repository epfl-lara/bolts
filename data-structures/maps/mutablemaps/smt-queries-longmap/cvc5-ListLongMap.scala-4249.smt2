; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58896 () Bool)

(assert start!58896)

(declare-fun b!649393 () Bool)

(declare-fun e!372488 () Bool)

(declare-fun e!372487 () Bool)

(assert (=> b!649393 (= e!372488 e!372487)))

(declare-fun res!421054 () Bool)

(assert (=> b!649393 (=> (not res!421054) (not e!372487))))

(declare-datatypes ((SeekEntryResult!6906 0))(
  ( (MissingZero!6906 (index!29970 (_ BitVec 32))) (Found!6906 (index!29971 (_ BitVec 32))) (Intermediate!6906 (undefined!7718 Bool) (index!29972 (_ BitVec 32)) (x!58784 (_ BitVec 32))) (Undefined!6906) (MissingVacant!6906 (index!29973 (_ BitVec 32))) )
))
(declare-fun lt!301624 () SeekEntryResult!6906)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!649393 (= res!421054 (or (= lt!301624 (MissingZero!6906 i!1108)) (= lt!301624 (MissingVacant!6906 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!38514 0))(
  ( (array!38515 (arr!18459 (Array (_ BitVec 32) (_ BitVec 64))) (size!18823 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38514)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38514 (_ BitVec 32)) SeekEntryResult!6906)

(assert (=> b!649393 (= lt!301624 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!649394 () Bool)

(declare-fun res!421037 () Bool)

(assert (=> b!649394 (=> (not res!421037) (not e!372487))))

(declare-datatypes ((List!12553 0))(
  ( (Nil!12550) (Cons!12549 (h!13594 (_ BitVec 64)) (t!18789 List!12553)) )
))
(declare-fun arrayNoDuplicates!0 (array!38514 (_ BitVec 32) List!12553) Bool)

(assert (=> b!649394 (= res!421037 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12550))))

(declare-fun b!649395 () Bool)

(declare-fun res!421045 () Bool)

(assert (=> b!649395 (=> (not res!421045) (not e!372488))))

(declare-fun arrayContainsKey!0 (array!38514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!649395 (= res!421045 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!649397 () Bool)

(declare-fun e!372496 () Bool)

(declare-fun e!372498 () Bool)

(assert (=> b!649397 (= e!372496 e!372498)))

(declare-fun res!421042 () Bool)

(assert (=> b!649397 (=> res!421042 e!372498)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!301627 () (_ BitVec 64))

(declare-fun lt!301636 () (_ BitVec 64))

(assert (=> b!649397 (= res!421042 (or (not (= (select (arr!18459 a!2986) j!136) lt!301636)) (not (= (select (arr!18459 a!2986) j!136) lt!301627))))))

(declare-fun e!372490 () Bool)

(assert (=> b!649397 e!372490))

(declare-fun res!421038 () Bool)

(assert (=> b!649397 (=> (not res!421038) (not e!372490))))

(assert (=> b!649397 (= res!421038 (= lt!301627 (select (arr!18459 a!2986) j!136)))))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!649397 (= lt!301627 (select (store (arr!18459 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!649398 () Bool)

(declare-fun e!372489 () Bool)

(assert (=> b!649398 (= e!372489 (not e!372496))))

(declare-fun res!421044 () Bool)

(assert (=> b!649398 (=> res!421044 e!372496)))

(declare-fun lt!301632 () SeekEntryResult!6906)

(assert (=> b!649398 (= res!421044 (not (= lt!301632 (Found!6906 index!984))))))

(declare-datatypes ((Unit!22108 0))(
  ( (Unit!22109) )
))
(declare-fun lt!301623 () Unit!22108)

(declare-fun e!372485 () Unit!22108)

(assert (=> b!649398 (= lt!301623 e!372485)))

(declare-fun c!74546 () Bool)

(assert (=> b!649398 (= c!74546 (= lt!301632 Undefined!6906))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!301637 () array!38514)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38514 (_ BitVec 32)) SeekEntryResult!6906)

(assert (=> b!649398 (= lt!301632 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301636 lt!301637 mask!3053))))

(declare-fun e!372497 () Bool)

(assert (=> b!649398 e!372497))

(declare-fun res!421043 () Bool)

(assert (=> b!649398 (=> (not res!421043) (not e!372497))))

(declare-fun lt!301629 () SeekEntryResult!6906)

(declare-fun lt!301634 () (_ BitVec 32))

(assert (=> b!649398 (= res!421043 (= lt!301629 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301634 vacantSpotIndex!68 lt!301636 lt!301637 mask!3053)))))

(assert (=> b!649398 (= lt!301629 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301634 vacantSpotIndex!68 (select (arr!18459 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!649398 (= lt!301636 (select (store (arr!18459 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!301626 () Unit!22108)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38514 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22108)

(assert (=> b!649398 (= lt!301626 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301634 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!649398 (= lt!301634 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!649399 () Bool)

(declare-fun e!372499 () Unit!22108)

(declare-fun Unit!22110 () Unit!22108)

(assert (=> b!649399 (= e!372499 Unit!22110)))

(declare-fun lt!301631 () Unit!22108)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38514 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22108)

(assert (=> b!649399 (= lt!301631 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301637 (select (arr!18459 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!649399 (arrayContainsKey!0 lt!301637 (select (arr!18459 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301628 () Unit!22108)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38514 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12553) Unit!22108)

(assert (=> b!649399 (= lt!301628 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12550))))

(assert (=> b!649399 (arrayNoDuplicates!0 lt!301637 #b00000000000000000000000000000000 Nil!12550)))

(declare-fun lt!301635 () Unit!22108)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38514 (_ BitVec 32) (_ BitVec 32)) Unit!22108)

(assert (=> b!649399 (= lt!301635 (lemmaNoDuplicateFromThenFromBigger!0 lt!301637 #b00000000000000000000000000000000 j!136))))

(assert (=> b!649399 (arrayNoDuplicates!0 lt!301637 j!136 Nil!12550)))

(declare-fun lt!301630 () Unit!22108)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38514 (_ BitVec 64) (_ BitVec 32) List!12553) Unit!22108)

(assert (=> b!649399 (= lt!301630 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301637 (select (arr!18459 a!2986) j!136) j!136 Nil!12550))))

(assert (=> b!649399 false))

(declare-fun e!372494 () Bool)

(declare-fun b!649400 () Bool)

(assert (=> b!649400 (= e!372494 (arrayContainsKey!0 lt!301637 (select (arr!18459 a!2986) j!136) index!984))))

(declare-fun b!649401 () Bool)

(declare-fun lt!301638 () SeekEntryResult!6906)

(assert (=> b!649401 (= e!372497 (= lt!301638 lt!301629))))

(declare-fun b!649402 () Bool)

(declare-fun e!372493 () Bool)

(assert (=> b!649402 (= e!372493 e!372489)))

(declare-fun res!421041 () Bool)

(assert (=> b!649402 (=> (not res!421041) (not e!372489))))

(assert (=> b!649402 (= res!421041 (and (= lt!301638 (Found!6906 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18459 a!2986) index!984) (select (arr!18459 a!2986) j!136))) (not (= (select (arr!18459 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!649402 (= lt!301638 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18459 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!649403 () Bool)

(declare-fun res!421047 () Bool)

(assert (=> b!649403 (=> (not res!421047) (not e!372488))))

(assert (=> b!649403 (= res!421047 (and (= (size!18823 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18823 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18823 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!649404 () Bool)

(declare-fun res!421053 () Bool)

(assert (=> b!649404 (=> (not res!421053) (not e!372488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!649404 (= res!421053 (validKeyInArray!0 (select (arr!18459 a!2986) j!136)))))

(declare-fun b!649405 () Bool)

(declare-fun res!421040 () Bool)

(assert (=> b!649405 (=> (not res!421040) (not e!372487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38514 (_ BitVec 32)) Bool)

(assert (=> b!649405 (= res!421040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!649406 () Bool)

(declare-fun res!421052 () Bool)

(assert (=> b!649406 (=> (not res!421052) (not e!372488))))

(assert (=> b!649406 (= res!421052 (validKeyInArray!0 k!1786))))

(declare-fun b!649407 () Bool)

(declare-fun Unit!22111 () Unit!22108)

(assert (=> b!649407 (= e!372485 Unit!22111)))

(assert (=> b!649407 false))

(declare-fun b!649408 () Bool)

(declare-fun Unit!22112 () Unit!22108)

(assert (=> b!649408 (= e!372485 Unit!22112)))

(declare-fun b!649409 () Bool)

(declare-fun Unit!22113 () Unit!22108)

(assert (=> b!649409 (= e!372499 Unit!22113)))

(declare-fun b!649410 () Bool)

(declare-fun e!372491 () Bool)

(assert (=> b!649410 (= e!372491 true)))

(assert (=> b!649410 (arrayNoDuplicates!0 lt!301637 #b00000000000000000000000000000000 Nil!12550)))

(declare-fun lt!301625 () Unit!22108)

(assert (=> b!649410 (= lt!301625 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12550))))

(assert (=> b!649410 (arrayContainsKey!0 lt!301637 (select (arr!18459 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301633 () Unit!22108)

(assert (=> b!649410 (= lt!301633 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301637 (select (arr!18459 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!649410 e!372494))

(declare-fun res!421049 () Bool)

(assert (=> b!649410 (=> (not res!421049) (not e!372494))))

(assert (=> b!649410 (= res!421049 (arrayContainsKey!0 lt!301637 (select (arr!18459 a!2986) j!136) j!136))))

(declare-fun res!421048 () Bool)

(assert (=> start!58896 (=> (not res!421048) (not e!372488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58896 (= res!421048 (validMask!0 mask!3053))))

(assert (=> start!58896 e!372488))

(assert (=> start!58896 true))

(declare-fun array_inv!14233 (array!38514) Bool)

(assert (=> start!58896 (array_inv!14233 a!2986)))

(declare-fun b!649396 () Bool)

(assert (=> b!649396 (= e!372498 e!372491)))

(declare-fun res!421039 () Bool)

(assert (=> b!649396 (=> res!421039 e!372491)))

(assert (=> b!649396 (= res!421039 (bvsge index!984 j!136))))

(declare-fun lt!301622 () Unit!22108)

(assert (=> b!649396 (= lt!301622 e!372499)))

(declare-fun c!74545 () Bool)

(assert (=> b!649396 (= c!74545 (bvslt j!136 index!984))))

(declare-fun b!649411 () Bool)

(declare-fun e!372495 () Bool)

(declare-fun e!372486 () Bool)

(assert (=> b!649411 (= e!372495 e!372486)))

(declare-fun res!421055 () Bool)

(assert (=> b!649411 (=> (not res!421055) (not e!372486))))

(assert (=> b!649411 (= res!421055 (arrayContainsKey!0 lt!301637 (select (arr!18459 a!2986) j!136) j!136))))

(declare-fun b!649412 () Bool)

(assert (=> b!649412 (= e!372487 e!372493)))

(declare-fun res!421046 () Bool)

(assert (=> b!649412 (=> (not res!421046) (not e!372493))))

(assert (=> b!649412 (= res!421046 (= (select (store (arr!18459 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649412 (= lt!301637 (array!38515 (store (arr!18459 a!2986) i!1108 k!1786) (size!18823 a!2986)))))

(declare-fun b!649413 () Bool)

(declare-fun res!421051 () Bool)

(assert (=> b!649413 (=> (not res!421051) (not e!372487))))

(assert (=> b!649413 (= res!421051 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18459 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!649414 () Bool)

(assert (=> b!649414 (= e!372486 (arrayContainsKey!0 lt!301637 (select (arr!18459 a!2986) j!136) index!984))))

(declare-fun b!649415 () Bool)

(assert (=> b!649415 (= e!372490 e!372495)))

(declare-fun res!421050 () Bool)

(assert (=> b!649415 (=> res!421050 e!372495)))

(assert (=> b!649415 (= res!421050 (or (not (= (select (arr!18459 a!2986) j!136) lt!301636)) (not (= (select (arr!18459 a!2986) j!136) lt!301627)) (bvsge j!136 index!984)))))

(assert (= (and start!58896 res!421048) b!649403))

(assert (= (and b!649403 res!421047) b!649404))

(assert (= (and b!649404 res!421053) b!649406))

(assert (= (and b!649406 res!421052) b!649395))

(assert (= (and b!649395 res!421045) b!649393))

(assert (= (and b!649393 res!421054) b!649405))

(assert (= (and b!649405 res!421040) b!649394))

(assert (= (and b!649394 res!421037) b!649413))

(assert (= (and b!649413 res!421051) b!649412))

(assert (= (and b!649412 res!421046) b!649402))

(assert (= (and b!649402 res!421041) b!649398))

(assert (= (and b!649398 res!421043) b!649401))

(assert (= (and b!649398 c!74546) b!649407))

(assert (= (and b!649398 (not c!74546)) b!649408))

(assert (= (and b!649398 (not res!421044)) b!649397))

(assert (= (and b!649397 res!421038) b!649415))

(assert (= (and b!649415 (not res!421050)) b!649411))

(assert (= (and b!649411 res!421055) b!649414))

(assert (= (and b!649397 (not res!421042)) b!649396))

(assert (= (and b!649396 c!74545) b!649399))

(assert (= (and b!649396 (not c!74545)) b!649409))

(assert (= (and b!649396 (not res!421039)) b!649410))

(assert (= (and b!649410 res!421049) b!649400))

(declare-fun m!622707 () Bool)

(assert (=> b!649393 m!622707))

(declare-fun m!622709 () Bool)

(assert (=> b!649413 m!622709))

(declare-fun m!622711 () Bool)

(assert (=> b!649414 m!622711))

(assert (=> b!649414 m!622711))

(declare-fun m!622713 () Bool)

(assert (=> b!649414 m!622713))

(assert (=> b!649411 m!622711))

(assert (=> b!649411 m!622711))

(declare-fun m!622715 () Bool)

(assert (=> b!649411 m!622715))

(assert (=> b!649399 m!622711))

(declare-fun m!622717 () Bool)

(assert (=> b!649399 m!622717))

(assert (=> b!649399 m!622711))

(declare-fun m!622719 () Bool)

(assert (=> b!649399 m!622719))

(assert (=> b!649399 m!622711))

(declare-fun m!622721 () Bool)

(assert (=> b!649399 m!622721))

(declare-fun m!622723 () Bool)

(assert (=> b!649399 m!622723))

(assert (=> b!649399 m!622711))

(declare-fun m!622725 () Bool)

(assert (=> b!649399 m!622725))

(declare-fun m!622727 () Bool)

(assert (=> b!649399 m!622727))

(declare-fun m!622729 () Bool)

(assert (=> b!649399 m!622729))

(assert (=> b!649397 m!622711))

(declare-fun m!622731 () Bool)

(assert (=> b!649397 m!622731))

(declare-fun m!622733 () Bool)

(assert (=> b!649397 m!622733))

(assert (=> b!649412 m!622731))

(declare-fun m!622735 () Bool)

(assert (=> b!649412 m!622735))

(declare-fun m!622737 () Bool)

(assert (=> b!649405 m!622737))

(declare-fun m!622739 () Bool)

(assert (=> b!649402 m!622739))

(assert (=> b!649402 m!622711))

(assert (=> b!649402 m!622711))

(declare-fun m!622741 () Bool)

(assert (=> b!649402 m!622741))

(assert (=> b!649410 m!622727))

(assert (=> b!649410 m!622711))

(declare-fun m!622743 () Bool)

(assert (=> b!649410 m!622743))

(assert (=> b!649410 m!622711))

(declare-fun m!622745 () Bool)

(assert (=> b!649410 m!622745))

(assert (=> b!649410 m!622729))

(assert (=> b!649410 m!622711))

(assert (=> b!649410 m!622711))

(assert (=> b!649410 m!622715))

(declare-fun m!622747 () Bool)

(assert (=> b!649398 m!622747))

(declare-fun m!622749 () Bool)

(assert (=> b!649398 m!622749))

(assert (=> b!649398 m!622711))

(assert (=> b!649398 m!622711))

(declare-fun m!622751 () Bool)

(assert (=> b!649398 m!622751))

(assert (=> b!649398 m!622731))

(declare-fun m!622753 () Bool)

(assert (=> b!649398 m!622753))

(declare-fun m!622755 () Bool)

(assert (=> b!649398 m!622755))

(declare-fun m!622757 () Bool)

(assert (=> b!649398 m!622757))

(assert (=> b!649415 m!622711))

(declare-fun m!622759 () Bool)

(assert (=> b!649394 m!622759))

(declare-fun m!622761 () Bool)

(assert (=> b!649395 m!622761))

(declare-fun m!622763 () Bool)

(assert (=> b!649406 m!622763))

(assert (=> b!649400 m!622711))

(assert (=> b!649400 m!622711))

(assert (=> b!649400 m!622713))

(assert (=> b!649404 m!622711))

(assert (=> b!649404 m!622711))

(declare-fun m!622765 () Bool)

(assert (=> b!649404 m!622765))

(declare-fun m!622767 () Bool)

(assert (=> start!58896 m!622767))

(declare-fun m!622769 () Bool)

(assert (=> start!58896 m!622769))

(push 1)

