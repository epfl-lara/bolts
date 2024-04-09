; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59480 () Bool)

(assert start!59480)

(declare-fun b!656387 () Bool)

(declare-fun e!377011 () Bool)

(declare-fun e!377013 () Bool)

(assert (=> b!656387 (= e!377011 (not e!377013))))

(declare-fun res!425816 () Bool)

(assert (=> b!656387 (=> res!425816 e!377013)))

(declare-datatypes ((SeekEntryResult!6979 0))(
  ( (MissingZero!6979 (index!30277 (_ BitVec 32))) (Found!6979 (index!30278 (_ BitVec 32))) (Intermediate!6979 (undefined!7791 Bool) (index!30279 (_ BitVec 32)) (x!59094 (_ BitVec 32))) (Undefined!6979) (MissingVacant!6979 (index!30280 (_ BitVec 32))) )
))
(declare-fun lt!306461 () SeekEntryResult!6979)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!656387 (= res!425816 (not (= lt!306461 (MissingVacant!6979 vacantSpotIndex!68))))))

(declare-datatypes ((Unit!22634 0))(
  ( (Unit!22635) )
))
(declare-fun lt!306468 () Unit!22634)

(declare-fun e!377017 () Unit!22634)

(assert (=> b!656387 (= lt!306468 e!377017)))

(declare-fun c!75657 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!656387 (= c!75657 (= lt!306461 (Found!6979 index!984)))))

(declare-fun lt!306472 () Unit!22634)

(declare-fun e!377022 () Unit!22634)

(assert (=> b!656387 (= lt!306472 e!377022)))

(declare-fun c!75658 () Bool)

(assert (=> b!656387 (= c!75658 (= lt!306461 Undefined!6979))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!38675 0))(
  ( (array!38676 (arr!18532 (Array (_ BitVec 32) (_ BitVec 64))) (size!18896 (_ BitVec 32))) )
))
(declare-fun lt!306459 () array!38675)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!306469 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38675 (_ BitVec 32)) SeekEntryResult!6979)

(assert (=> b!656387 (= lt!306461 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!306469 lt!306459 mask!3053))))

(declare-fun e!377019 () Bool)

(assert (=> b!656387 e!377019))

(declare-fun res!425810 () Bool)

(assert (=> b!656387 (=> (not res!425810) (not e!377019))))

(declare-fun lt!306455 () (_ BitVec 32))

(declare-fun lt!306463 () SeekEntryResult!6979)

(assert (=> b!656387 (= res!425810 (= lt!306463 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306455 vacantSpotIndex!68 lt!306469 lt!306459 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38675)

(assert (=> b!656387 (= lt!306463 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306455 vacantSpotIndex!68 (select (arr!18532 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!656387 (= lt!306469 (select (store (arr!18532 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!306467 () Unit!22634)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38675 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22634)

(assert (=> b!656387 (= lt!306467 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306455 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!656387 (= lt!306455 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!425819 () Bool)

(declare-fun e!377021 () Bool)

(assert (=> start!59480 (=> (not res!425819) (not e!377021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59480 (= res!425819 (validMask!0 mask!3053))))

(assert (=> start!59480 e!377021))

(assert (=> start!59480 true))

(declare-fun array_inv!14306 (array!38675) Bool)

(assert (=> start!59480 (array_inv!14306 a!2986)))

(declare-fun b!656388 () Bool)

(declare-fun res!425814 () Bool)

(declare-fun e!377010 () Bool)

(assert (=> b!656388 (=> (not res!425814) (not e!377010))))

(declare-datatypes ((List!12626 0))(
  ( (Nil!12623) (Cons!12622 (h!13667 (_ BitVec 64)) (t!18862 List!12626)) )
))
(declare-fun arrayNoDuplicates!0 (array!38675 (_ BitVec 32) List!12626) Bool)

(assert (=> b!656388 (= res!425814 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12623))))

(declare-fun b!656389 () Bool)

(declare-fun Unit!22636 () Unit!22634)

(assert (=> b!656389 (= e!377017 Unit!22636)))

(declare-fun b!656390 () Bool)

(declare-fun Unit!22637 () Unit!22634)

(assert (=> b!656390 (= e!377022 Unit!22637)))

(declare-fun b!656391 () Bool)

(declare-fun res!425820 () Bool)

(assert (=> b!656391 (=> (not res!425820) (not e!377021))))

(declare-fun arrayContainsKey!0 (array!38675 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!656391 (= res!425820 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!656392 () Bool)

(declare-fun res!425812 () Bool)

(assert (=> b!656392 (=> (not res!425812) (not e!377010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38675 (_ BitVec 32)) Bool)

(assert (=> b!656392 (= res!425812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!656393 () Bool)

(declare-fun res!425821 () Bool)

(assert (=> b!656393 (= res!425821 (bvsge j!136 index!984))))

(declare-fun e!377018 () Bool)

(assert (=> b!656393 (=> res!425821 e!377018)))

(declare-fun e!377014 () Bool)

(assert (=> b!656393 (= e!377014 e!377018)))

(declare-fun b!656394 () Bool)

(declare-fun res!425818 () Bool)

(assert (=> b!656394 (=> (not res!425818) (not e!377021))))

(assert (=> b!656394 (= res!425818 (and (= (size!18896 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18896 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18896 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!656395 () Bool)

(declare-fun res!425813 () Bool)

(assert (=> b!656395 (= res!425813 (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) j!136))))

(declare-fun e!377015 () Bool)

(assert (=> b!656395 (=> (not res!425813) (not e!377015))))

(assert (=> b!656395 (= e!377018 e!377015)))

(declare-fun b!656396 () Bool)

(assert (=> b!656396 false))

(declare-fun lt!306473 () Unit!22634)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38675 (_ BitVec 64) (_ BitVec 32) List!12626) Unit!22634)

(assert (=> b!656396 (= lt!306473 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306459 (select (arr!18532 a!2986) j!136) index!984 Nil!12623))))

(assert (=> b!656396 (arrayNoDuplicates!0 lt!306459 index!984 Nil!12623)))

(declare-fun lt!306456 () Unit!22634)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38675 (_ BitVec 32) (_ BitVec 32)) Unit!22634)

(assert (=> b!656396 (= lt!306456 (lemmaNoDuplicateFromThenFromBigger!0 lt!306459 #b00000000000000000000000000000000 index!984))))

(assert (=> b!656396 (arrayNoDuplicates!0 lt!306459 #b00000000000000000000000000000000 Nil!12623)))

(declare-fun lt!306458 () Unit!22634)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38675 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12626) Unit!22634)

(assert (=> b!656396 (= lt!306458 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12623))))

(assert (=> b!656396 (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306465 () Unit!22634)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38675 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22634)

(assert (=> b!656396 (= lt!306465 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306459 (select (arr!18532 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!377023 () Bool)

(assert (=> b!656396 e!377023))

(declare-fun res!425817 () Bool)

(assert (=> b!656396 (=> (not res!425817) (not e!377023))))

(assert (=> b!656396 (= res!425817 (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) j!136))))

(declare-fun e!377012 () Unit!22634)

(declare-fun Unit!22638 () Unit!22634)

(assert (=> b!656396 (= e!377012 Unit!22638)))

(declare-fun b!656397 () Bool)

(assert (=> b!656397 (= e!377023 (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) index!984))))

(declare-fun b!656398 () Bool)

(declare-fun e!377020 () Bool)

(assert (=> b!656398 (= e!377020 e!377011)))

(declare-fun res!425815 () Bool)

(assert (=> b!656398 (=> (not res!425815) (not e!377011))))

(declare-fun lt!306466 () SeekEntryResult!6979)

(assert (=> b!656398 (= res!425815 (and (= lt!306466 (Found!6979 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18532 a!2986) index!984) (select (arr!18532 a!2986) j!136))) (not (= (select (arr!18532 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!656398 (= lt!306466 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18532 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!656399 () Bool)

(assert (=> b!656399 (= e!377021 e!377010)))

(declare-fun res!425824 () Bool)

(assert (=> b!656399 (=> (not res!425824) (not e!377010))))

(declare-fun lt!306471 () SeekEntryResult!6979)

(assert (=> b!656399 (= res!425824 (or (= lt!306471 (MissingZero!6979 i!1108)) (= lt!306471 (MissingVacant!6979 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38675 (_ BitVec 32)) SeekEntryResult!6979)

(assert (=> b!656399 (= lt!306471 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!656400 () Bool)

(declare-fun e!377016 () Unit!22634)

(declare-fun Unit!22639 () Unit!22634)

(assert (=> b!656400 (= e!377016 Unit!22639)))

(declare-fun b!656401 () Bool)

(declare-fun Unit!22640 () Unit!22634)

(assert (=> b!656401 (= e!377017 Unit!22640)))

(declare-fun res!425823 () Bool)

(assert (=> b!656401 (= res!425823 (= (select (store (arr!18532 a!2986) i!1108 k0!1786) index!984) (select (arr!18532 a!2986) j!136)))))

(assert (=> b!656401 (=> (not res!425823) (not e!377014))))

(assert (=> b!656401 e!377014))

(declare-fun c!75659 () Bool)

(assert (=> b!656401 (= c!75659 (bvslt j!136 index!984))))

(declare-fun lt!306457 () Unit!22634)

(assert (=> b!656401 (= lt!306457 e!377016)))

(declare-fun c!75656 () Bool)

(assert (=> b!656401 (= c!75656 (bvslt index!984 j!136))))

(declare-fun lt!306470 () Unit!22634)

(assert (=> b!656401 (= lt!306470 e!377012)))

(assert (=> b!656401 false))

(declare-fun b!656402 () Bool)

(assert (=> b!656402 (= e!377019 (= lt!306466 lt!306463))))

(declare-fun b!656403 () Bool)

(assert (=> b!656403 (= e!377013 false)))

(assert (=> b!656403 (= (select (store (arr!18532 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!656404 () Bool)

(declare-fun res!425811 () Bool)

(assert (=> b!656404 (=> (not res!425811) (not e!377021))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!656404 (= res!425811 (validKeyInArray!0 (select (arr!18532 a!2986) j!136)))))

(declare-fun b!656405 () Bool)

(declare-fun res!425825 () Bool)

(assert (=> b!656405 (=> (not res!425825) (not e!377010))))

(assert (=> b!656405 (= res!425825 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18532 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!656406 () Bool)

(declare-fun Unit!22641 () Unit!22634)

(assert (=> b!656406 (= e!377012 Unit!22641)))

(declare-fun b!656407 () Bool)

(assert (=> b!656407 (= e!377015 (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) index!984))))

(declare-fun b!656408 () Bool)

(declare-fun Unit!22642 () Unit!22634)

(assert (=> b!656408 (= e!377022 Unit!22642)))

(assert (=> b!656408 false))

(declare-fun b!656409 () Bool)

(declare-fun res!425822 () Bool)

(assert (=> b!656409 (=> (not res!425822) (not e!377021))))

(assert (=> b!656409 (= res!425822 (validKeyInArray!0 k0!1786))))

(declare-fun b!656410 () Bool)

(assert (=> b!656410 (= e!377010 e!377020)))

(declare-fun res!425809 () Bool)

(assert (=> b!656410 (=> (not res!425809) (not e!377020))))

(assert (=> b!656410 (= res!425809 (= (select (store (arr!18532 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!656410 (= lt!306459 (array!38676 (store (arr!18532 a!2986) i!1108 k0!1786) (size!18896 a!2986)))))

(declare-fun b!656411 () Bool)

(assert (=> b!656411 false))

(declare-fun lt!306474 () Unit!22634)

(assert (=> b!656411 (= lt!306474 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306459 (select (arr!18532 a!2986) j!136) j!136 Nil!12623))))

(assert (=> b!656411 (arrayNoDuplicates!0 lt!306459 j!136 Nil!12623)))

(declare-fun lt!306462 () Unit!22634)

(assert (=> b!656411 (= lt!306462 (lemmaNoDuplicateFromThenFromBigger!0 lt!306459 #b00000000000000000000000000000000 j!136))))

(assert (=> b!656411 (arrayNoDuplicates!0 lt!306459 #b00000000000000000000000000000000 Nil!12623)))

(declare-fun lt!306464 () Unit!22634)

(assert (=> b!656411 (= lt!306464 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12623))))

(assert (=> b!656411 (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306460 () Unit!22634)

(assert (=> b!656411 (= lt!306460 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306459 (select (arr!18532 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22643 () Unit!22634)

(assert (=> b!656411 (= e!377016 Unit!22643)))

(assert (= (and start!59480 res!425819) b!656394))

(assert (= (and b!656394 res!425818) b!656404))

(assert (= (and b!656404 res!425811) b!656409))

(assert (= (and b!656409 res!425822) b!656391))

(assert (= (and b!656391 res!425820) b!656399))

(assert (= (and b!656399 res!425824) b!656392))

(assert (= (and b!656392 res!425812) b!656388))

(assert (= (and b!656388 res!425814) b!656405))

(assert (= (and b!656405 res!425825) b!656410))

(assert (= (and b!656410 res!425809) b!656398))

(assert (= (and b!656398 res!425815) b!656387))

(assert (= (and b!656387 res!425810) b!656402))

(assert (= (and b!656387 c!75658) b!656408))

(assert (= (and b!656387 (not c!75658)) b!656390))

(assert (= (and b!656387 c!75657) b!656401))

(assert (= (and b!656387 (not c!75657)) b!656389))

(assert (= (and b!656401 res!425823) b!656393))

(assert (= (and b!656393 (not res!425821)) b!656395))

(assert (= (and b!656395 res!425813) b!656407))

(assert (= (and b!656401 c!75659) b!656411))

(assert (= (and b!656401 (not c!75659)) b!656400))

(assert (= (and b!656401 c!75656) b!656396))

(assert (= (and b!656401 (not c!75656)) b!656406))

(assert (= (and b!656396 res!425817) b!656397))

(assert (= (and b!656387 (not res!425816)) b!656403))

(declare-fun m!629521 () Bool)

(assert (=> b!656410 m!629521))

(declare-fun m!629523 () Bool)

(assert (=> b!656410 m!629523))

(declare-fun m!629525 () Bool)

(assert (=> b!656398 m!629525))

(declare-fun m!629527 () Bool)

(assert (=> b!656398 m!629527))

(assert (=> b!656398 m!629527))

(declare-fun m!629529 () Bool)

(assert (=> b!656398 m!629529))

(assert (=> b!656395 m!629527))

(assert (=> b!656395 m!629527))

(declare-fun m!629531 () Bool)

(assert (=> b!656395 m!629531))

(declare-fun m!629533 () Bool)

(assert (=> b!656392 m!629533))

(assert (=> b!656411 m!629527))

(declare-fun m!629535 () Bool)

(assert (=> b!656411 m!629535))

(declare-fun m!629537 () Bool)

(assert (=> b!656411 m!629537))

(assert (=> b!656411 m!629527))

(declare-fun m!629539 () Bool)

(assert (=> b!656411 m!629539))

(assert (=> b!656411 m!629527))

(declare-fun m!629541 () Bool)

(assert (=> b!656411 m!629541))

(declare-fun m!629543 () Bool)

(assert (=> b!656411 m!629543))

(assert (=> b!656411 m!629527))

(declare-fun m!629545 () Bool)

(assert (=> b!656411 m!629545))

(declare-fun m!629547 () Bool)

(assert (=> b!656411 m!629547))

(assert (=> b!656407 m!629527))

(assert (=> b!656407 m!629527))

(declare-fun m!629549 () Bool)

(assert (=> b!656407 m!629549))

(assert (=> b!656404 m!629527))

(assert (=> b!656404 m!629527))

(declare-fun m!629551 () Bool)

(assert (=> b!656404 m!629551))

(declare-fun m!629553 () Bool)

(assert (=> b!656388 m!629553))

(declare-fun m!629555 () Bool)

(assert (=> b!656405 m!629555))

(declare-fun m!629557 () Bool)

(assert (=> b!656409 m!629557))

(declare-fun m!629559 () Bool)

(assert (=> b!656396 m!629559))

(assert (=> b!656396 m!629527))

(declare-fun m!629561 () Bool)

(assert (=> b!656396 m!629561))

(assert (=> b!656396 m!629527))

(declare-fun m!629563 () Bool)

(assert (=> b!656396 m!629563))

(assert (=> b!656396 m!629527))

(declare-fun m!629565 () Bool)

(assert (=> b!656396 m!629565))

(assert (=> b!656396 m!629527))

(declare-fun m!629567 () Bool)

(assert (=> b!656396 m!629567))

(assert (=> b!656396 m!629547))

(assert (=> b!656396 m!629527))

(assert (=> b!656396 m!629531))

(assert (=> b!656396 m!629535))

(declare-fun m!629569 () Bool)

(assert (=> b!656387 m!629569))

(declare-fun m!629571 () Bool)

(assert (=> b!656387 m!629571))

(assert (=> b!656387 m!629527))

(declare-fun m!629573 () Bool)

(assert (=> b!656387 m!629573))

(declare-fun m!629575 () Bool)

(assert (=> b!656387 m!629575))

(declare-fun m!629577 () Bool)

(assert (=> b!656387 m!629577))

(assert (=> b!656387 m!629527))

(declare-fun m!629579 () Bool)

(assert (=> b!656387 m!629579))

(assert (=> b!656387 m!629521))

(declare-fun m!629581 () Bool)

(assert (=> b!656391 m!629581))

(declare-fun m!629583 () Bool)

(assert (=> start!59480 m!629583))

(declare-fun m!629585 () Bool)

(assert (=> start!59480 m!629585))

(assert (=> b!656401 m!629521))

(declare-fun m!629587 () Bool)

(assert (=> b!656401 m!629587))

(assert (=> b!656401 m!629527))

(declare-fun m!629589 () Bool)

(assert (=> b!656399 m!629589))

(assert (=> b!656403 m!629521))

(assert (=> b!656403 m!629587))

(assert (=> b!656397 m!629527))

(assert (=> b!656397 m!629527))

(assert (=> b!656397 m!629549))

(check-sat (not b!656397) (not b!656388) (not b!656411) (not b!656395) (not start!59480) (not b!656392) (not b!656398) (not b!656409) (not b!656404) (not b!656391) (not b!656399) (not b!656387) (not b!656396) (not b!656407))
(check-sat)
(get-model)

(declare-fun d!92639 () Bool)

(declare-fun res!425881 () Bool)

(declare-fun e!377073 () Bool)

(assert (=> d!92639 (=> res!425881 e!377073)))

(assert (=> d!92639 (= res!425881 (= (select (arr!18532 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!92639 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!377073)))

(declare-fun b!656491 () Bool)

(declare-fun e!377074 () Bool)

(assert (=> b!656491 (= e!377073 e!377074)))

(declare-fun res!425882 () Bool)

(assert (=> b!656491 (=> (not res!425882) (not e!377074))))

(assert (=> b!656491 (= res!425882 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18896 a!2986)))))

(declare-fun b!656492 () Bool)

(assert (=> b!656492 (= e!377074 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!92639 (not res!425881)) b!656491))

(assert (= (and b!656491 res!425882) b!656492))

(declare-fun m!629661 () Bool)

(assert (=> d!92639 m!629661))

(declare-fun m!629663 () Bool)

(assert (=> b!656492 m!629663))

(assert (=> b!656391 d!92639))

(declare-fun bm!33857 () Bool)

(declare-fun call!33860 () Bool)

(assert (=> bm!33857 (= call!33860 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!656501 () Bool)

(declare-fun e!377082 () Bool)

(assert (=> b!656501 (= e!377082 call!33860)))

(declare-fun b!656502 () Bool)

(declare-fun e!377081 () Bool)

(declare-fun e!377083 () Bool)

(assert (=> b!656502 (= e!377081 e!377083)))

(declare-fun c!75674 () Bool)

(assert (=> b!656502 (= c!75674 (validKeyInArray!0 (select (arr!18532 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!656503 () Bool)

(assert (=> b!656503 (= e!377083 e!377082)))

(declare-fun lt!306542 () (_ BitVec 64))

(assert (=> b!656503 (= lt!306542 (select (arr!18532 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!306541 () Unit!22634)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38675 (_ BitVec 64) (_ BitVec 32)) Unit!22634)

(assert (=> b!656503 (= lt!306541 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!306542 #b00000000000000000000000000000000))))

(assert (=> b!656503 (arrayContainsKey!0 a!2986 lt!306542 #b00000000000000000000000000000000)))

(declare-fun lt!306543 () Unit!22634)

(assert (=> b!656503 (= lt!306543 lt!306541)))

(declare-fun res!425887 () Bool)

(assert (=> b!656503 (= res!425887 (= (seekEntryOrOpen!0 (select (arr!18532 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6979 #b00000000000000000000000000000000)))))

(assert (=> b!656503 (=> (not res!425887) (not e!377082))))

(declare-fun b!656504 () Bool)

(assert (=> b!656504 (= e!377083 call!33860)))

(declare-fun d!92641 () Bool)

(declare-fun res!425888 () Bool)

(assert (=> d!92641 (=> res!425888 e!377081)))

(assert (=> d!92641 (= res!425888 (bvsge #b00000000000000000000000000000000 (size!18896 a!2986)))))

(assert (=> d!92641 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!377081)))

(assert (= (and d!92641 (not res!425888)) b!656502))

(assert (= (and b!656502 c!75674) b!656503))

(assert (= (and b!656502 (not c!75674)) b!656504))

(assert (= (and b!656503 res!425887) b!656501))

(assert (= (or b!656501 b!656504) bm!33857))

(declare-fun m!629665 () Bool)

(assert (=> bm!33857 m!629665))

(assert (=> b!656502 m!629661))

(assert (=> b!656502 m!629661))

(declare-fun m!629667 () Bool)

(assert (=> b!656502 m!629667))

(assert (=> b!656503 m!629661))

(declare-fun m!629669 () Bool)

(assert (=> b!656503 m!629669))

(declare-fun m!629671 () Bool)

(assert (=> b!656503 m!629671))

(assert (=> b!656503 m!629661))

(declare-fun m!629673 () Bool)

(assert (=> b!656503 m!629673))

(assert (=> b!656392 d!92641))

(declare-fun d!92643 () Bool)

(assert (=> d!92643 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!59480 d!92643))

(declare-fun d!92645 () Bool)

(assert (=> d!92645 (= (array_inv!14306 a!2986) (bvsge (size!18896 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!59480 d!92645))

(declare-fun b!656515 () Bool)

(declare-fun e!377093 () Bool)

(declare-fun e!377092 () Bool)

(assert (=> b!656515 (= e!377093 e!377092)))

(declare-fun c!75677 () Bool)

(assert (=> b!656515 (= c!75677 (validKeyInArray!0 (select (arr!18532 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33860 () Bool)

(declare-fun call!33863 () Bool)

(assert (=> bm!33860 (= call!33863 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75677 (Cons!12622 (select (arr!18532 a!2986) #b00000000000000000000000000000000) Nil!12623) Nil!12623)))))

(declare-fun d!92647 () Bool)

(declare-fun res!425897 () Bool)

(declare-fun e!377095 () Bool)

(assert (=> d!92647 (=> res!425897 e!377095)))

(assert (=> d!92647 (= res!425897 (bvsge #b00000000000000000000000000000000 (size!18896 a!2986)))))

(assert (=> d!92647 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12623) e!377095)))

(declare-fun b!656516 () Bool)

(declare-fun e!377094 () Bool)

(declare-fun contains!3195 (List!12626 (_ BitVec 64)) Bool)

(assert (=> b!656516 (= e!377094 (contains!3195 Nil!12623 (select (arr!18532 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!656517 () Bool)

(assert (=> b!656517 (= e!377092 call!33863)))

(declare-fun b!656518 () Bool)

(assert (=> b!656518 (= e!377095 e!377093)))

(declare-fun res!425895 () Bool)

(assert (=> b!656518 (=> (not res!425895) (not e!377093))))

(assert (=> b!656518 (= res!425895 (not e!377094))))

(declare-fun res!425896 () Bool)

(assert (=> b!656518 (=> (not res!425896) (not e!377094))))

(assert (=> b!656518 (= res!425896 (validKeyInArray!0 (select (arr!18532 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!656519 () Bool)

(assert (=> b!656519 (= e!377092 call!33863)))

(assert (= (and d!92647 (not res!425897)) b!656518))

(assert (= (and b!656518 res!425896) b!656516))

(assert (= (and b!656518 res!425895) b!656515))

(assert (= (and b!656515 c!75677) b!656519))

(assert (= (and b!656515 (not c!75677)) b!656517))

(assert (= (or b!656519 b!656517) bm!33860))

(assert (=> b!656515 m!629661))

(assert (=> b!656515 m!629661))

(assert (=> b!656515 m!629667))

(assert (=> bm!33860 m!629661))

(declare-fun m!629675 () Bool)

(assert (=> bm!33860 m!629675))

(assert (=> b!656516 m!629661))

(assert (=> b!656516 m!629661))

(declare-fun m!629677 () Bool)

(assert (=> b!656516 m!629677))

(assert (=> b!656518 m!629661))

(assert (=> b!656518 m!629661))

(assert (=> b!656518 m!629667))

(assert (=> b!656388 d!92647))

(declare-fun d!92649 () Bool)

(declare-fun lt!306550 () SeekEntryResult!6979)

(get-info :version)

(assert (=> d!92649 (and (or ((_ is Undefined!6979) lt!306550) (not ((_ is Found!6979) lt!306550)) (and (bvsge (index!30278 lt!306550) #b00000000000000000000000000000000) (bvslt (index!30278 lt!306550) (size!18896 a!2986)))) (or ((_ is Undefined!6979) lt!306550) ((_ is Found!6979) lt!306550) (not ((_ is MissingZero!6979) lt!306550)) (and (bvsge (index!30277 lt!306550) #b00000000000000000000000000000000) (bvslt (index!30277 lt!306550) (size!18896 a!2986)))) (or ((_ is Undefined!6979) lt!306550) ((_ is Found!6979) lt!306550) ((_ is MissingZero!6979) lt!306550) (not ((_ is MissingVacant!6979) lt!306550)) (and (bvsge (index!30280 lt!306550) #b00000000000000000000000000000000) (bvslt (index!30280 lt!306550) (size!18896 a!2986)))) (or ((_ is Undefined!6979) lt!306550) (ite ((_ is Found!6979) lt!306550) (= (select (arr!18532 a!2986) (index!30278 lt!306550)) k0!1786) (ite ((_ is MissingZero!6979) lt!306550) (= (select (arr!18532 a!2986) (index!30277 lt!306550)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6979) lt!306550) (= (select (arr!18532 a!2986) (index!30280 lt!306550)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!377102 () SeekEntryResult!6979)

(assert (=> d!92649 (= lt!306550 e!377102)))

(declare-fun c!75685 () Bool)

(declare-fun lt!306552 () SeekEntryResult!6979)

(assert (=> d!92649 (= c!75685 (and ((_ is Intermediate!6979) lt!306552) (undefined!7791 lt!306552)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38675 (_ BitVec 32)) SeekEntryResult!6979)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92649 (= lt!306552 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!92649 (validMask!0 mask!3053)))

(assert (=> d!92649 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!306550)))

(declare-fun b!656532 () Bool)

(declare-fun e!377104 () SeekEntryResult!6979)

(assert (=> b!656532 (= e!377104 (seekKeyOrZeroReturnVacant!0 (x!59094 lt!306552) (index!30279 lt!306552) (index!30279 lt!306552) k0!1786 a!2986 mask!3053))))

(declare-fun b!656533 () Bool)

(declare-fun e!377103 () SeekEntryResult!6979)

(assert (=> b!656533 (= e!377103 (Found!6979 (index!30279 lt!306552)))))

(declare-fun b!656534 () Bool)

(declare-fun c!75684 () Bool)

(declare-fun lt!306551 () (_ BitVec 64))

(assert (=> b!656534 (= c!75684 (= lt!306551 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!656534 (= e!377103 e!377104)))

(declare-fun b!656535 () Bool)

(assert (=> b!656535 (= e!377104 (MissingZero!6979 (index!30279 lt!306552)))))

(declare-fun b!656536 () Bool)

(assert (=> b!656536 (= e!377102 e!377103)))

(assert (=> b!656536 (= lt!306551 (select (arr!18532 a!2986) (index!30279 lt!306552)))))

(declare-fun c!75686 () Bool)

(assert (=> b!656536 (= c!75686 (= lt!306551 k0!1786))))

(declare-fun b!656537 () Bool)

(assert (=> b!656537 (= e!377102 Undefined!6979)))

(assert (= (and d!92649 c!75685) b!656537))

(assert (= (and d!92649 (not c!75685)) b!656536))

(assert (= (and b!656536 c!75686) b!656533))

(assert (= (and b!656536 (not c!75686)) b!656534))

(assert (= (and b!656534 c!75684) b!656535))

(assert (= (and b!656534 (not c!75684)) b!656532))

(assert (=> d!92649 m!629583))

(declare-fun m!629679 () Bool)

(assert (=> d!92649 m!629679))

(declare-fun m!629681 () Bool)

(assert (=> d!92649 m!629681))

(declare-fun m!629683 () Bool)

(assert (=> d!92649 m!629683))

(declare-fun m!629685 () Bool)

(assert (=> d!92649 m!629685))

(assert (=> d!92649 m!629685))

(declare-fun m!629687 () Bool)

(assert (=> d!92649 m!629687))

(declare-fun m!629689 () Bool)

(assert (=> b!656532 m!629689))

(declare-fun m!629691 () Bool)

(assert (=> b!656536 m!629691))

(assert (=> b!656399 d!92649))

(declare-fun d!92655 () Bool)

(assert (=> d!92655 (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306555 () Unit!22634)

(declare-fun choose!114 (array!38675 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22634)

(assert (=> d!92655 (= lt!306555 (choose!114 lt!306459 (select (arr!18532 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!92655 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!92655 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306459 (select (arr!18532 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!306555)))

(declare-fun bs!19544 () Bool)

(assert (= bs!19544 d!92655))

(assert (=> bs!19544 m!629527))

(assert (=> bs!19544 m!629539))

(assert (=> bs!19544 m!629527))

(declare-fun m!629695 () Bool)

(assert (=> bs!19544 m!629695))

(assert (=> b!656411 d!92655))

(declare-fun d!92657 () Bool)

(assert (=> d!92657 (arrayNoDuplicates!0 lt!306459 j!136 Nil!12623)))

(declare-fun lt!306558 () Unit!22634)

(declare-fun choose!39 (array!38675 (_ BitVec 32) (_ BitVec 32)) Unit!22634)

(assert (=> d!92657 (= lt!306558 (choose!39 lt!306459 #b00000000000000000000000000000000 j!136))))

(assert (=> d!92657 (bvslt (size!18896 lt!306459) #b01111111111111111111111111111111)))

(assert (=> d!92657 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!306459 #b00000000000000000000000000000000 j!136) lt!306558)))

(declare-fun bs!19545 () Bool)

(assert (= bs!19545 d!92657))

(assert (=> bs!19545 m!629543))

(declare-fun m!629699 () Bool)

(assert (=> bs!19545 m!629699))

(assert (=> b!656411 d!92657))

(declare-fun d!92663 () Bool)

(assert (=> d!92663 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18896 lt!306459)) (not (= (select (arr!18532 lt!306459) j!136) (select (arr!18532 a!2986) j!136))))))

(declare-fun lt!306561 () Unit!22634)

(declare-fun choose!21 (array!38675 (_ BitVec 64) (_ BitVec 32) List!12626) Unit!22634)

(assert (=> d!92663 (= lt!306561 (choose!21 lt!306459 (select (arr!18532 a!2986) j!136) j!136 Nil!12623))))

(assert (=> d!92663 (bvslt (size!18896 lt!306459) #b01111111111111111111111111111111)))

(assert (=> d!92663 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306459 (select (arr!18532 a!2986) j!136) j!136 Nil!12623) lt!306561)))

(declare-fun bs!19546 () Bool)

(assert (= bs!19546 d!92663))

(declare-fun m!629701 () Bool)

(assert (=> bs!19546 m!629701))

(assert (=> bs!19546 m!629527))

(declare-fun m!629703 () Bool)

(assert (=> bs!19546 m!629703))

(assert (=> b!656411 d!92663))

(declare-fun d!92665 () Bool)

(declare-fun res!425904 () Bool)

(declare-fun e!377111 () Bool)

(assert (=> d!92665 (=> res!425904 e!377111)))

(assert (=> d!92665 (= res!425904 (= (select (arr!18532 lt!306459) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18532 a!2986) j!136)))))

(assert (=> d!92665 (= (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!377111)))

(declare-fun b!656544 () Bool)

(declare-fun e!377112 () Bool)

(assert (=> b!656544 (= e!377111 e!377112)))

(declare-fun res!425905 () Bool)

(assert (=> b!656544 (=> (not res!425905) (not e!377112))))

(assert (=> b!656544 (= res!425905 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18896 lt!306459)))))

(declare-fun b!656545 () Bool)

(assert (=> b!656545 (= e!377112 (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92665 (not res!425904)) b!656544))

(assert (= (and b!656544 res!425905) b!656545))

(declare-fun m!629705 () Bool)

(assert (=> d!92665 m!629705))

(assert (=> b!656545 m!629527))

(declare-fun m!629707 () Bool)

(assert (=> b!656545 m!629707))

(assert (=> b!656411 d!92665))

(declare-fun d!92667 () Bool)

(declare-fun e!377115 () Bool)

(assert (=> d!92667 e!377115))

(declare-fun res!425908 () Bool)

(assert (=> d!92667 (=> (not res!425908) (not e!377115))))

(assert (=> d!92667 (= res!425908 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18896 a!2986))))))

(declare-fun lt!306564 () Unit!22634)

(declare-fun choose!41 (array!38675 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12626) Unit!22634)

(assert (=> d!92667 (= lt!306564 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12623))))

(assert (=> d!92667 (bvslt (size!18896 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!92667 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12623) lt!306564)))

(declare-fun b!656548 () Bool)

(assert (=> b!656548 (= e!377115 (arrayNoDuplicates!0 (array!38676 (store (arr!18532 a!2986) i!1108 k0!1786) (size!18896 a!2986)) #b00000000000000000000000000000000 Nil!12623))))

(assert (= (and d!92667 res!425908) b!656548))

(declare-fun m!629709 () Bool)

(assert (=> d!92667 m!629709))

(assert (=> b!656548 m!629521))

(declare-fun m!629711 () Bool)

(assert (=> b!656548 m!629711))

(assert (=> b!656411 d!92667))

(declare-fun b!656549 () Bool)

(declare-fun e!377117 () Bool)

(declare-fun e!377116 () Bool)

(assert (=> b!656549 (= e!377117 e!377116)))

(declare-fun c!75687 () Bool)

(assert (=> b!656549 (= c!75687 (validKeyInArray!0 (select (arr!18532 lt!306459) j!136)))))

(declare-fun bm!33861 () Bool)

(declare-fun call!33864 () Bool)

(assert (=> bm!33861 (= call!33864 (arrayNoDuplicates!0 lt!306459 (bvadd j!136 #b00000000000000000000000000000001) (ite c!75687 (Cons!12622 (select (arr!18532 lt!306459) j!136) Nil!12623) Nil!12623)))))

(declare-fun d!92669 () Bool)

(declare-fun res!425911 () Bool)

(declare-fun e!377119 () Bool)

(assert (=> d!92669 (=> res!425911 e!377119)))

(assert (=> d!92669 (= res!425911 (bvsge j!136 (size!18896 lt!306459)))))

(assert (=> d!92669 (= (arrayNoDuplicates!0 lt!306459 j!136 Nil!12623) e!377119)))

(declare-fun b!656550 () Bool)

(declare-fun e!377118 () Bool)

(assert (=> b!656550 (= e!377118 (contains!3195 Nil!12623 (select (arr!18532 lt!306459) j!136)))))

(declare-fun b!656551 () Bool)

(assert (=> b!656551 (= e!377116 call!33864)))

(declare-fun b!656552 () Bool)

(assert (=> b!656552 (= e!377119 e!377117)))

(declare-fun res!425909 () Bool)

(assert (=> b!656552 (=> (not res!425909) (not e!377117))))

(assert (=> b!656552 (= res!425909 (not e!377118))))

(declare-fun res!425910 () Bool)

(assert (=> b!656552 (=> (not res!425910) (not e!377118))))

(assert (=> b!656552 (= res!425910 (validKeyInArray!0 (select (arr!18532 lt!306459) j!136)))))

(declare-fun b!656553 () Bool)

(assert (=> b!656553 (= e!377116 call!33864)))

(assert (= (and d!92669 (not res!425911)) b!656552))

(assert (= (and b!656552 res!425910) b!656550))

(assert (= (and b!656552 res!425909) b!656549))

(assert (= (and b!656549 c!75687) b!656553))

(assert (= (and b!656549 (not c!75687)) b!656551))

(assert (= (or b!656553 b!656551) bm!33861))

(assert (=> b!656549 m!629701))

(assert (=> b!656549 m!629701))

(declare-fun m!629713 () Bool)

(assert (=> b!656549 m!629713))

(assert (=> bm!33861 m!629701))

(declare-fun m!629715 () Bool)

(assert (=> bm!33861 m!629715))

(assert (=> b!656550 m!629701))

(assert (=> b!656550 m!629701))

(declare-fun m!629717 () Bool)

(assert (=> b!656550 m!629717))

(assert (=> b!656552 m!629701))

(assert (=> b!656552 m!629701))

(assert (=> b!656552 m!629713))

(assert (=> b!656411 d!92669))

(declare-fun b!656566 () Bool)

(declare-fun e!377127 () Bool)

(declare-fun e!377126 () Bool)

(assert (=> b!656566 (= e!377127 e!377126)))

(declare-fun c!75694 () Bool)

(assert (=> b!656566 (= c!75694 (validKeyInArray!0 (select (arr!18532 lt!306459) #b00000000000000000000000000000000)))))

(declare-fun bm!33862 () Bool)

(declare-fun call!33865 () Bool)

(assert (=> bm!33862 (= call!33865 (arrayNoDuplicates!0 lt!306459 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75694 (Cons!12622 (select (arr!18532 lt!306459) #b00000000000000000000000000000000) Nil!12623) Nil!12623)))))

(declare-fun d!92671 () Bool)

(declare-fun res!425914 () Bool)

(declare-fun e!377129 () Bool)

(assert (=> d!92671 (=> res!425914 e!377129)))

(assert (=> d!92671 (= res!425914 (bvsge #b00000000000000000000000000000000 (size!18896 lt!306459)))))

(assert (=> d!92671 (= (arrayNoDuplicates!0 lt!306459 #b00000000000000000000000000000000 Nil!12623) e!377129)))

(declare-fun b!656567 () Bool)

(declare-fun e!377128 () Bool)

(assert (=> b!656567 (= e!377128 (contains!3195 Nil!12623 (select (arr!18532 lt!306459) #b00000000000000000000000000000000)))))

(declare-fun b!656568 () Bool)

(assert (=> b!656568 (= e!377126 call!33865)))

(declare-fun b!656569 () Bool)

(assert (=> b!656569 (= e!377129 e!377127)))

(declare-fun res!425912 () Bool)

(assert (=> b!656569 (=> (not res!425912) (not e!377127))))

(assert (=> b!656569 (= res!425912 (not e!377128))))

(declare-fun res!425913 () Bool)

(assert (=> b!656569 (=> (not res!425913) (not e!377128))))

(assert (=> b!656569 (= res!425913 (validKeyInArray!0 (select (arr!18532 lt!306459) #b00000000000000000000000000000000)))))

(declare-fun b!656570 () Bool)

(assert (=> b!656570 (= e!377126 call!33865)))

(assert (= (and d!92671 (not res!425914)) b!656569))

(assert (= (and b!656569 res!425913) b!656567))

(assert (= (and b!656569 res!425912) b!656566))

(assert (= (and b!656566 c!75694) b!656570))

(assert (= (and b!656566 (not c!75694)) b!656568))

(assert (= (or b!656570 b!656568) bm!33862))

(declare-fun m!629719 () Bool)

(assert (=> b!656566 m!629719))

(assert (=> b!656566 m!629719))

(declare-fun m!629721 () Bool)

(assert (=> b!656566 m!629721))

(assert (=> bm!33862 m!629719))

(declare-fun m!629723 () Bool)

(assert (=> bm!33862 m!629723))

(assert (=> b!656567 m!629719))

(assert (=> b!656567 m!629719))

(declare-fun m!629725 () Bool)

(assert (=> b!656567 m!629725))

(assert (=> b!656569 m!629719))

(assert (=> b!656569 m!629719))

(assert (=> b!656569 m!629721))

(assert (=> b!656411 d!92671))

(declare-fun d!92673 () Bool)

(declare-fun res!425915 () Bool)

(declare-fun e!377130 () Bool)

(assert (=> d!92673 (=> res!425915 e!377130)))

(assert (=> d!92673 (= res!425915 (= (select (arr!18532 lt!306459) index!984) (select (arr!18532 a!2986) j!136)))))

(assert (=> d!92673 (= (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) index!984) e!377130)))

(declare-fun b!656571 () Bool)

(declare-fun e!377131 () Bool)

(assert (=> b!656571 (= e!377130 e!377131)))

(declare-fun res!425916 () Bool)

(assert (=> b!656571 (=> (not res!425916) (not e!377131))))

(assert (=> b!656571 (= res!425916 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18896 lt!306459)))))

(declare-fun b!656572 () Bool)

(assert (=> b!656572 (= e!377131 (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92673 (not res!425915)) b!656571))

(assert (= (and b!656571 res!425916) b!656572))

(declare-fun m!629727 () Bool)

(assert (=> d!92673 m!629727))

(assert (=> b!656572 m!629527))

(declare-fun m!629729 () Bool)

(assert (=> b!656572 m!629729))

(assert (=> b!656397 d!92673))

(declare-fun d!92675 () Bool)

(assert (=> d!92675 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (size!18896 lt!306459)) (not (= (select (arr!18532 lt!306459) index!984) (select (arr!18532 a!2986) j!136))))))

(declare-fun lt!306569 () Unit!22634)

(assert (=> d!92675 (= lt!306569 (choose!21 lt!306459 (select (arr!18532 a!2986) j!136) index!984 Nil!12623))))

(assert (=> d!92675 (bvslt (size!18896 lt!306459) #b01111111111111111111111111111111)))

(assert (=> d!92675 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306459 (select (arr!18532 a!2986) j!136) index!984 Nil!12623) lt!306569)))

(declare-fun bs!19547 () Bool)

(assert (= bs!19547 d!92675))

(assert (=> bs!19547 m!629727))

(assert (=> bs!19547 m!629527))

(declare-fun m!629731 () Bool)

(assert (=> bs!19547 m!629731))

(assert (=> b!656396 d!92675))

(declare-fun d!92677 () Bool)

(declare-fun res!425917 () Bool)

(declare-fun e!377132 () Bool)

(assert (=> d!92677 (=> res!425917 e!377132)))

(assert (=> d!92677 (= res!425917 (= (select (arr!18532 lt!306459) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18532 a!2986) j!136)))))

(assert (=> d!92677 (= (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!377132)))

(declare-fun b!656573 () Bool)

(declare-fun e!377133 () Bool)

(assert (=> b!656573 (= e!377132 e!377133)))

(declare-fun res!425918 () Bool)

(assert (=> b!656573 (=> (not res!425918) (not e!377133))))

(assert (=> b!656573 (= res!425918 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18896 lt!306459)))))

(declare-fun b!656574 () Bool)

(assert (=> b!656574 (= e!377133 (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92677 (not res!425917)) b!656573))

(assert (= (and b!656573 res!425918) b!656574))

(declare-fun m!629733 () Bool)

(assert (=> d!92677 m!629733))

(assert (=> b!656574 m!629527))

(declare-fun m!629735 () Bool)

(assert (=> b!656574 m!629735))

(assert (=> b!656396 d!92677))

(declare-fun b!656575 () Bool)

(declare-fun e!377135 () Bool)

(declare-fun e!377134 () Bool)

(assert (=> b!656575 (= e!377135 e!377134)))

(declare-fun c!75695 () Bool)

(assert (=> b!656575 (= c!75695 (validKeyInArray!0 (select (arr!18532 lt!306459) index!984)))))

(declare-fun bm!33863 () Bool)

(declare-fun call!33866 () Bool)

(assert (=> bm!33863 (= call!33866 (arrayNoDuplicates!0 lt!306459 (bvadd index!984 #b00000000000000000000000000000001) (ite c!75695 (Cons!12622 (select (arr!18532 lt!306459) index!984) Nil!12623) Nil!12623)))))

(declare-fun d!92679 () Bool)

(declare-fun res!425921 () Bool)

(declare-fun e!377137 () Bool)

(assert (=> d!92679 (=> res!425921 e!377137)))

(assert (=> d!92679 (= res!425921 (bvsge index!984 (size!18896 lt!306459)))))

(assert (=> d!92679 (= (arrayNoDuplicates!0 lt!306459 index!984 Nil!12623) e!377137)))

(declare-fun b!656576 () Bool)

(declare-fun e!377136 () Bool)

(assert (=> b!656576 (= e!377136 (contains!3195 Nil!12623 (select (arr!18532 lt!306459) index!984)))))

(declare-fun b!656577 () Bool)

(assert (=> b!656577 (= e!377134 call!33866)))

(declare-fun b!656578 () Bool)

(assert (=> b!656578 (= e!377137 e!377135)))

(declare-fun res!425919 () Bool)

(assert (=> b!656578 (=> (not res!425919) (not e!377135))))

(assert (=> b!656578 (= res!425919 (not e!377136))))

(declare-fun res!425920 () Bool)

(assert (=> b!656578 (=> (not res!425920) (not e!377136))))

(assert (=> b!656578 (= res!425920 (validKeyInArray!0 (select (arr!18532 lt!306459) index!984)))))

(declare-fun b!656579 () Bool)

(assert (=> b!656579 (= e!377134 call!33866)))

(assert (= (and d!92679 (not res!425921)) b!656578))

(assert (= (and b!656578 res!425920) b!656576))

(assert (= (and b!656578 res!425919) b!656575))

(assert (= (and b!656575 c!75695) b!656579))

(assert (= (and b!656575 (not c!75695)) b!656577))

(assert (= (or b!656579 b!656577) bm!33863))

(assert (=> b!656575 m!629727))

(assert (=> b!656575 m!629727))

(declare-fun m!629737 () Bool)

(assert (=> b!656575 m!629737))

(assert (=> bm!33863 m!629727))

(declare-fun m!629739 () Bool)

(assert (=> bm!33863 m!629739))

(assert (=> b!656576 m!629727))

(assert (=> b!656576 m!629727))

(declare-fun m!629741 () Bool)

(assert (=> b!656576 m!629741))

(assert (=> b!656578 m!629727))

(assert (=> b!656578 m!629727))

(assert (=> b!656578 m!629737))

(assert (=> b!656396 d!92679))

(declare-fun d!92681 () Bool)

(declare-fun res!425922 () Bool)

(declare-fun e!377138 () Bool)

(assert (=> d!92681 (=> res!425922 e!377138)))

(assert (=> d!92681 (= res!425922 (= (select (arr!18532 lt!306459) j!136) (select (arr!18532 a!2986) j!136)))))

(assert (=> d!92681 (= (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) j!136) e!377138)))

(declare-fun b!656580 () Bool)

(declare-fun e!377139 () Bool)

(assert (=> b!656580 (= e!377138 e!377139)))

(declare-fun res!425923 () Bool)

(assert (=> b!656580 (=> (not res!425923) (not e!377139))))

(assert (=> b!656580 (= res!425923 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18896 lt!306459)))))

(declare-fun b!656581 () Bool)

(assert (=> b!656581 (= e!377139 (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92681 (not res!425922)) b!656580))

(assert (= (and b!656580 res!425923) b!656581))

(assert (=> d!92681 m!629701))

(assert (=> b!656581 m!629527))

(declare-fun m!629743 () Bool)

(assert (=> b!656581 m!629743))

(assert (=> b!656396 d!92681))

(assert (=> b!656396 d!92667))

(declare-fun d!92683 () Bool)

(assert (=> d!92683 (arrayNoDuplicates!0 lt!306459 index!984 Nil!12623)))

(declare-fun lt!306570 () Unit!22634)

(assert (=> d!92683 (= lt!306570 (choose!39 lt!306459 #b00000000000000000000000000000000 index!984))))

(assert (=> d!92683 (bvslt (size!18896 lt!306459) #b01111111111111111111111111111111)))

(assert (=> d!92683 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!306459 #b00000000000000000000000000000000 index!984) lt!306570)))

(declare-fun bs!19548 () Bool)

(assert (= bs!19548 d!92683))

(assert (=> bs!19548 m!629563))

(declare-fun m!629745 () Bool)

(assert (=> bs!19548 m!629745))

(assert (=> b!656396 d!92683))

(assert (=> b!656396 d!92671))

(declare-fun d!92685 () Bool)

(assert (=> d!92685 (arrayContainsKey!0 lt!306459 (select (arr!18532 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306573 () Unit!22634)

(assert (=> d!92685 (= lt!306573 (choose!114 lt!306459 (select (arr!18532 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!92685 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!92685 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306459 (select (arr!18532 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!306573)))

(declare-fun bs!19549 () Bool)

(assert (= bs!19549 d!92685))

(assert (=> bs!19549 m!629527))

(assert (=> bs!19549 m!629561))

(assert (=> bs!19549 m!629527))

(declare-fun m!629747 () Bool)

(assert (=> bs!19549 m!629747))

(assert (=> b!656396 d!92685))

(assert (=> b!656407 d!92673))

(declare-fun b!656648 () Bool)

(declare-fun e!377185 () SeekEntryResult!6979)

(assert (=> b!656648 (= e!377185 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18532 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!656649 () Bool)

(declare-fun c!75720 () Bool)

(declare-fun lt!306590 () (_ BitVec 64))

(assert (=> b!656649 (= c!75720 (= lt!306590 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!377184 () SeekEntryResult!6979)

(assert (=> b!656649 (= e!377184 e!377185)))

(declare-fun b!656650 () Bool)

(declare-fun e!377186 () SeekEntryResult!6979)

(assert (=> b!656650 (= e!377186 Undefined!6979)))

(declare-fun b!656651 () Bool)

(assert (=> b!656651 (= e!377185 (MissingVacant!6979 vacantSpotIndex!68))))

(declare-fun b!656653 () Bool)

(assert (=> b!656653 (= e!377184 (Found!6979 index!984))))

(declare-fun b!656652 () Bool)

(assert (=> b!656652 (= e!377186 e!377184)))

(declare-fun c!75719 () Bool)

(assert (=> b!656652 (= c!75719 (= lt!306590 (select (arr!18532 a!2986) j!136)))))

(declare-fun lt!306591 () SeekEntryResult!6979)

(declare-fun d!92687 () Bool)

(assert (=> d!92687 (and (or ((_ is Undefined!6979) lt!306591) (not ((_ is Found!6979) lt!306591)) (and (bvsge (index!30278 lt!306591) #b00000000000000000000000000000000) (bvslt (index!30278 lt!306591) (size!18896 a!2986)))) (or ((_ is Undefined!6979) lt!306591) ((_ is Found!6979) lt!306591) (not ((_ is MissingVacant!6979) lt!306591)) (not (= (index!30280 lt!306591) vacantSpotIndex!68)) (and (bvsge (index!30280 lt!306591) #b00000000000000000000000000000000) (bvslt (index!30280 lt!306591) (size!18896 a!2986)))) (or ((_ is Undefined!6979) lt!306591) (ite ((_ is Found!6979) lt!306591) (= (select (arr!18532 a!2986) (index!30278 lt!306591)) (select (arr!18532 a!2986) j!136)) (and ((_ is MissingVacant!6979) lt!306591) (= (index!30280 lt!306591) vacantSpotIndex!68) (= (select (arr!18532 a!2986) (index!30280 lt!306591)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92687 (= lt!306591 e!377186)))

(declare-fun c!75718 () Bool)

(assert (=> d!92687 (= c!75718 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!92687 (= lt!306590 (select (arr!18532 a!2986) index!984))))

(assert (=> d!92687 (validMask!0 mask!3053)))

(assert (=> d!92687 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18532 a!2986) j!136) a!2986 mask!3053) lt!306591)))

(assert (= (and d!92687 c!75718) b!656650))

(assert (= (and d!92687 (not c!75718)) b!656652))

(assert (= (and b!656652 c!75719) b!656653))

(assert (= (and b!656652 (not c!75719)) b!656649))

(assert (= (and b!656649 c!75720) b!656651))

(assert (= (and b!656649 (not c!75720)) b!656648))

(assert (=> b!656648 m!629569))

(assert (=> b!656648 m!629569))

(assert (=> b!656648 m!629527))

(declare-fun m!629797 () Bool)

(assert (=> b!656648 m!629797))

(declare-fun m!629799 () Bool)

(assert (=> d!92687 m!629799))

(declare-fun m!629801 () Bool)

(assert (=> d!92687 m!629801))

(assert (=> d!92687 m!629525))

(assert (=> d!92687 m!629583))

(assert (=> b!656398 d!92687))

(declare-fun d!92705 () Bool)

(assert (=> d!92705 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!656409 d!92705))

(declare-fun b!656664 () Bool)

(declare-fun e!377196 () SeekEntryResult!6979)

(assert (=> b!656664 (= e!377196 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!306469 lt!306459 mask!3053))))

(declare-fun b!656665 () Bool)

(declare-fun c!75725 () Bool)

(declare-fun lt!306594 () (_ BitVec 64))

(assert (=> b!656665 (= c!75725 (= lt!306594 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!377195 () SeekEntryResult!6979)

(assert (=> b!656665 (= e!377195 e!377196)))

(declare-fun b!656666 () Bool)

(declare-fun e!377197 () SeekEntryResult!6979)

(assert (=> b!656666 (= e!377197 Undefined!6979)))

(declare-fun b!656667 () Bool)

(assert (=> b!656667 (= e!377196 (MissingVacant!6979 vacantSpotIndex!68))))

(declare-fun b!656669 () Bool)

(assert (=> b!656669 (= e!377195 (Found!6979 index!984))))

(declare-fun b!656668 () Bool)

(assert (=> b!656668 (= e!377197 e!377195)))

(declare-fun c!75724 () Bool)

(assert (=> b!656668 (= c!75724 (= lt!306594 lt!306469))))

(declare-fun lt!306595 () SeekEntryResult!6979)

(declare-fun d!92707 () Bool)

(assert (=> d!92707 (and (or ((_ is Undefined!6979) lt!306595) (not ((_ is Found!6979) lt!306595)) (and (bvsge (index!30278 lt!306595) #b00000000000000000000000000000000) (bvslt (index!30278 lt!306595) (size!18896 lt!306459)))) (or ((_ is Undefined!6979) lt!306595) ((_ is Found!6979) lt!306595) (not ((_ is MissingVacant!6979) lt!306595)) (not (= (index!30280 lt!306595) vacantSpotIndex!68)) (and (bvsge (index!30280 lt!306595) #b00000000000000000000000000000000) (bvslt (index!30280 lt!306595) (size!18896 lt!306459)))) (or ((_ is Undefined!6979) lt!306595) (ite ((_ is Found!6979) lt!306595) (= (select (arr!18532 lt!306459) (index!30278 lt!306595)) lt!306469) (and ((_ is MissingVacant!6979) lt!306595) (= (index!30280 lt!306595) vacantSpotIndex!68) (= (select (arr!18532 lt!306459) (index!30280 lt!306595)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92707 (= lt!306595 e!377197)))

(declare-fun c!75723 () Bool)

(assert (=> d!92707 (= c!75723 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!92707 (= lt!306594 (select (arr!18532 lt!306459) index!984))))

(assert (=> d!92707 (validMask!0 mask!3053)))

(assert (=> d!92707 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!306469 lt!306459 mask!3053) lt!306595)))

(assert (= (and d!92707 c!75723) b!656666))

(assert (= (and d!92707 (not c!75723)) b!656668))

(assert (= (and b!656668 c!75724) b!656669))

(assert (= (and b!656668 (not c!75724)) b!656665))

(assert (= (and b!656665 c!75725) b!656667))

(assert (= (and b!656665 (not c!75725)) b!656664))

(assert (=> b!656664 m!629569))

(assert (=> b!656664 m!629569))

(declare-fun m!629803 () Bool)

(assert (=> b!656664 m!629803))

(declare-fun m!629807 () Bool)

(assert (=> d!92707 m!629807))

(declare-fun m!629809 () Bool)

(assert (=> d!92707 m!629809))

(assert (=> d!92707 m!629727))

(assert (=> d!92707 m!629583))

(assert (=> b!656387 d!92707))

(declare-fun b!656670 () Bool)

(declare-fun e!377199 () SeekEntryResult!6979)

(assert (=> b!656670 (= e!377199 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!306455 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18532 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!656671 () Bool)

(declare-fun c!75728 () Bool)

(declare-fun lt!306597 () (_ BitVec 64))

(assert (=> b!656671 (= c!75728 (= lt!306597 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!377198 () SeekEntryResult!6979)

(assert (=> b!656671 (= e!377198 e!377199)))

(declare-fun b!656672 () Bool)

(declare-fun e!377200 () SeekEntryResult!6979)

(assert (=> b!656672 (= e!377200 Undefined!6979)))

(declare-fun b!656673 () Bool)

(assert (=> b!656673 (= e!377199 (MissingVacant!6979 vacantSpotIndex!68))))

(declare-fun b!656675 () Bool)

(assert (=> b!656675 (= e!377198 (Found!6979 lt!306455))))

(declare-fun b!656674 () Bool)

(assert (=> b!656674 (= e!377200 e!377198)))

(declare-fun c!75727 () Bool)

(assert (=> b!656674 (= c!75727 (= lt!306597 (select (arr!18532 a!2986) j!136)))))

(declare-fun d!92711 () Bool)

(declare-fun lt!306598 () SeekEntryResult!6979)

(assert (=> d!92711 (and (or ((_ is Undefined!6979) lt!306598) (not ((_ is Found!6979) lt!306598)) (and (bvsge (index!30278 lt!306598) #b00000000000000000000000000000000) (bvslt (index!30278 lt!306598) (size!18896 a!2986)))) (or ((_ is Undefined!6979) lt!306598) ((_ is Found!6979) lt!306598) (not ((_ is MissingVacant!6979) lt!306598)) (not (= (index!30280 lt!306598) vacantSpotIndex!68)) (and (bvsge (index!30280 lt!306598) #b00000000000000000000000000000000) (bvslt (index!30280 lt!306598) (size!18896 a!2986)))) (or ((_ is Undefined!6979) lt!306598) (ite ((_ is Found!6979) lt!306598) (= (select (arr!18532 a!2986) (index!30278 lt!306598)) (select (arr!18532 a!2986) j!136)) (and ((_ is MissingVacant!6979) lt!306598) (= (index!30280 lt!306598) vacantSpotIndex!68) (= (select (arr!18532 a!2986) (index!30280 lt!306598)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92711 (= lt!306598 e!377200)))

(declare-fun c!75726 () Bool)

(assert (=> d!92711 (= c!75726 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!92711 (= lt!306597 (select (arr!18532 a!2986) lt!306455))))

(assert (=> d!92711 (validMask!0 mask!3053)))

(assert (=> d!92711 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306455 vacantSpotIndex!68 (select (arr!18532 a!2986) j!136) a!2986 mask!3053) lt!306598)))

(assert (= (and d!92711 c!75726) b!656672))

(assert (= (and d!92711 (not c!75726)) b!656674))

(assert (= (and b!656674 c!75727) b!656675))

(assert (= (and b!656674 (not c!75727)) b!656671))

(assert (= (and b!656671 c!75728) b!656673))

(assert (= (and b!656671 (not c!75728)) b!656670))

(declare-fun m!629811 () Bool)

(assert (=> b!656670 m!629811))

(assert (=> b!656670 m!629811))

(assert (=> b!656670 m!629527))

(declare-fun m!629813 () Bool)

(assert (=> b!656670 m!629813))

(declare-fun m!629815 () Bool)

(assert (=> d!92711 m!629815))

(declare-fun m!629817 () Bool)

(assert (=> d!92711 m!629817))

(declare-fun m!629819 () Bool)

(assert (=> d!92711 m!629819))

(assert (=> d!92711 m!629583))

(assert (=> b!656387 d!92711))

(declare-fun d!92713 () Bool)

(declare-fun e!377212 () Bool)

(assert (=> d!92713 e!377212))

(declare-fun res!425962 () Bool)

(assert (=> d!92713 (=> (not res!425962) (not e!377212))))

(assert (=> d!92713 (= res!425962 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18896 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18896 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18896 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18896 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18896 a!2986))))))

(declare-fun lt!306607 () Unit!22634)

(declare-fun choose!9 (array!38675 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22634)

(assert (=> d!92713 (= lt!306607 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306455 vacantSpotIndex!68 mask!3053))))

(assert (=> d!92713 (validMask!0 mask!3053)))

(assert (=> d!92713 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306455 vacantSpotIndex!68 mask!3053) lt!306607)))

(declare-fun b!656688 () Bool)

(assert (=> b!656688 (= e!377212 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306455 vacantSpotIndex!68 (select (arr!18532 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306455 vacantSpotIndex!68 (select (store (arr!18532 a!2986) i!1108 k0!1786) j!136) (array!38676 (store (arr!18532 a!2986) i!1108 k0!1786) (size!18896 a!2986)) mask!3053)))))

(assert (= (and d!92713 res!425962) b!656688))

(declare-fun m!629839 () Bool)

(assert (=> d!92713 m!629839))

(assert (=> d!92713 m!629583))

(assert (=> b!656688 m!629521))

(assert (=> b!656688 m!629527))

(assert (=> b!656688 m!629571))

(assert (=> b!656688 m!629527))

(assert (=> b!656688 m!629579))

(assert (=> b!656688 m!629571))

(declare-fun m!629841 () Bool)

(assert (=> b!656688 m!629841))

(assert (=> b!656387 d!92713))

(declare-fun b!656689 () Bool)

(declare-fun e!377214 () SeekEntryResult!6979)

(assert (=> b!656689 (= e!377214 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!306455 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!306469 lt!306459 mask!3053))))

(declare-fun b!656690 () Bool)

(declare-fun c!75732 () Bool)

(declare-fun lt!306608 () (_ BitVec 64))

(assert (=> b!656690 (= c!75732 (= lt!306608 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!377213 () SeekEntryResult!6979)

(assert (=> b!656690 (= e!377213 e!377214)))

(declare-fun b!656691 () Bool)

(declare-fun e!377215 () SeekEntryResult!6979)

(assert (=> b!656691 (= e!377215 Undefined!6979)))

(declare-fun b!656692 () Bool)

(assert (=> b!656692 (= e!377214 (MissingVacant!6979 vacantSpotIndex!68))))

(declare-fun b!656694 () Bool)

(assert (=> b!656694 (= e!377213 (Found!6979 lt!306455))))

(declare-fun b!656693 () Bool)

(assert (=> b!656693 (= e!377215 e!377213)))

(declare-fun c!75731 () Bool)

(assert (=> b!656693 (= c!75731 (= lt!306608 lt!306469))))

(declare-fun lt!306609 () SeekEntryResult!6979)

(declare-fun d!92723 () Bool)

(assert (=> d!92723 (and (or ((_ is Undefined!6979) lt!306609) (not ((_ is Found!6979) lt!306609)) (and (bvsge (index!30278 lt!306609) #b00000000000000000000000000000000) (bvslt (index!30278 lt!306609) (size!18896 lt!306459)))) (or ((_ is Undefined!6979) lt!306609) ((_ is Found!6979) lt!306609) (not ((_ is MissingVacant!6979) lt!306609)) (not (= (index!30280 lt!306609) vacantSpotIndex!68)) (and (bvsge (index!30280 lt!306609) #b00000000000000000000000000000000) (bvslt (index!30280 lt!306609) (size!18896 lt!306459)))) (or ((_ is Undefined!6979) lt!306609) (ite ((_ is Found!6979) lt!306609) (= (select (arr!18532 lt!306459) (index!30278 lt!306609)) lt!306469) (and ((_ is MissingVacant!6979) lt!306609) (= (index!30280 lt!306609) vacantSpotIndex!68) (= (select (arr!18532 lt!306459) (index!30280 lt!306609)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92723 (= lt!306609 e!377215)))

(declare-fun c!75730 () Bool)

(assert (=> d!92723 (= c!75730 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!92723 (= lt!306608 (select (arr!18532 lt!306459) lt!306455))))

(assert (=> d!92723 (validMask!0 mask!3053)))

(assert (=> d!92723 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306455 vacantSpotIndex!68 lt!306469 lt!306459 mask!3053) lt!306609)))

(assert (= (and d!92723 c!75730) b!656691))

(assert (= (and d!92723 (not c!75730)) b!656693))

(assert (= (and b!656693 c!75731) b!656694))

(assert (= (and b!656693 (not c!75731)) b!656690))

(assert (= (and b!656690 c!75732) b!656692))

(assert (= (and b!656690 (not c!75732)) b!656689))

(assert (=> b!656689 m!629811))

(assert (=> b!656689 m!629811))

(declare-fun m!629843 () Bool)

(assert (=> b!656689 m!629843))

(declare-fun m!629845 () Bool)

(assert (=> d!92723 m!629845))

(declare-fun m!629847 () Bool)

(assert (=> d!92723 m!629847))

(declare-fun m!629849 () Bool)

(assert (=> d!92723 m!629849))

(assert (=> d!92723 m!629583))

(assert (=> b!656387 d!92723))

(declare-fun d!92725 () Bool)

(declare-fun lt!306616 () (_ BitVec 32))

(assert (=> d!92725 (and (bvsge lt!306616 #b00000000000000000000000000000000) (bvslt lt!306616 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92725 (= lt!306616 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!92725 (validMask!0 mask!3053)))

(assert (=> d!92725 (= (nextIndex!0 index!984 x!910 mask!3053) lt!306616)))

(declare-fun bs!19553 () Bool)

(assert (= bs!19553 d!92725))

(declare-fun m!629851 () Bool)

(assert (=> bs!19553 m!629851))

(assert (=> bs!19553 m!629583))

(assert (=> b!656387 d!92725))

(declare-fun d!92727 () Bool)

(assert (=> d!92727 (= (validKeyInArray!0 (select (arr!18532 a!2986) j!136)) (and (not (= (select (arr!18532 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18532 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!656404 d!92727))

(assert (=> b!656395 d!92681))

(check-sat (not d!92649) (not d!92675) (not b!656518) (not b!656532) (not b!656549) (not b!656572) (not b!656648) (not d!92655) (not b!656574) (not d!92713) (not b!656664) (not d!92685) (not d!92725) (not b!656569) (not bm!33861) (not b!656566) (not d!92723) (not b!656689) (not bm!33862) (not b!656548) (not b!656545) (not b!656575) (not d!92711) (not b!656516) (not d!92663) (not b!656688) (not b!656502) (not bm!33857) (not d!92667) (not bm!33860) (not bm!33863) (not b!656550) (not b!656515) (not b!656578) (not d!92657) (not b!656670) (not b!656567) (not b!656576) (not b!656581) (not d!92707) (not b!656552) (not b!656503) (not b!656492) (not d!92683) (not d!92687))
(check-sat)
