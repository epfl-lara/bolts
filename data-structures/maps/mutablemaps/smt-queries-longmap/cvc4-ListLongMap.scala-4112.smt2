; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56182 () Bool)

(assert start!56182)

(declare-fun b!621543 () Bool)

(declare-fun e!356505 () Bool)

(assert (=> b!621543 (= e!356505 (not true))))

(declare-datatypes ((Unit!20790 0))(
  ( (Unit!20791) )
))
(declare-fun lt!287782 () Unit!20790)

(declare-fun e!356499 () Unit!20790)

(assert (=> b!621543 (= lt!287782 e!356499)))

(declare-fun c!70823 () Bool)

(declare-datatypes ((SeekEntryResult!6497 0))(
  ( (MissingZero!6497 (index!28271 (_ BitVec 32))) (Found!6497 (index!28272 (_ BitVec 32))) (Intermediate!6497 (undefined!7309 Bool) (index!28273 (_ BitVec 32)) (x!57066 (_ BitVec 32))) (Undefined!6497) (MissingVacant!6497 (index!28274 (_ BitVec 32))) )
))
(declare-fun lt!287796 () SeekEntryResult!6497)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!621543 (= c!70823 (= lt!287796 (Found!6497 index!984)))))

(declare-fun lt!287791 () Unit!20790)

(declare-fun e!356507 () Unit!20790)

(assert (=> b!621543 (= lt!287791 e!356507)))

(declare-fun c!70821 () Bool)

(assert (=> b!621543 (= c!70821 (= lt!287796 Undefined!6497))))

(declare-datatypes ((array!37615 0))(
  ( (array!37616 (arr!18050 (Array (_ BitVec 32) (_ BitVec 64))) (size!18414 (_ BitVec 32))) )
))
(declare-fun lt!287792 () array!37615)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!287779 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37615 (_ BitVec 32)) SeekEntryResult!6497)

(assert (=> b!621543 (= lt!287796 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287779 lt!287792 mask!3053))))

(declare-fun e!356506 () Bool)

(assert (=> b!621543 e!356506))

(declare-fun res!400639 () Bool)

(assert (=> b!621543 (=> (not res!400639) (not e!356506))))

(declare-fun lt!287777 () (_ BitVec 32))

(declare-fun lt!287780 () SeekEntryResult!6497)

(assert (=> b!621543 (= res!400639 (= lt!287780 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287777 vacantSpotIndex!68 lt!287779 lt!287792 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37615)

(assert (=> b!621543 (= lt!287780 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287777 vacantSpotIndex!68 (select (arr!18050 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!621543 (= lt!287779 (select (store (arr!18050 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!287784 () Unit!20790)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37615 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20790)

(assert (=> b!621543 (= lt!287784 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287777 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!621543 (= lt!287777 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!621544 () Bool)

(declare-fun res!400637 () Bool)

(declare-fun e!356503 () Bool)

(assert (=> b!621544 (=> (not res!400637) (not e!356503))))

(declare-datatypes ((List!12144 0))(
  ( (Nil!12141) (Cons!12140 (h!13185 (_ BitVec 64)) (t!18380 List!12144)) )
))
(declare-fun arrayNoDuplicates!0 (array!37615 (_ BitVec 32) List!12144) Bool)

(assert (=> b!621544 (= res!400637 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12141))))

(declare-fun b!621545 () Bool)

(declare-fun Unit!20792 () Unit!20790)

(assert (=> b!621545 (= e!356507 Unit!20792)))

(declare-fun b!621547 () Bool)

(declare-fun Unit!20793 () Unit!20790)

(assert (=> b!621547 (= e!356507 Unit!20793)))

(assert (=> b!621547 false))

(declare-fun b!621548 () Bool)

(declare-fun res!400642 () Bool)

(assert (=> b!621548 (=> (not res!400642) (not e!356503))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37615 (_ BitVec 32)) Bool)

(assert (=> b!621548 (= res!400642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!621549 () Bool)

(assert (=> b!621549 false))

(declare-fun lt!287783 () Unit!20790)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37615 (_ BitVec 64) (_ BitVec 32) List!12144) Unit!20790)

(assert (=> b!621549 (= lt!287783 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287792 (select (arr!18050 a!2986) j!136) index!984 Nil!12141))))

(assert (=> b!621549 (arrayNoDuplicates!0 lt!287792 index!984 Nil!12141)))

(declare-fun lt!287778 () Unit!20790)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37615 (_ BitVec 32) (_ BitVec 32)) Unit!20790)

(assert (=> b!621549 (= lt!287778 (lemmaNoDuplicateFromThenFromBigger!0 lt!287792 #b00000000000000000000000000000000 index!984))))

(assert (=> b!621549 (arrayNoDuplicates!0 lt!287792 #b00000000000000000000000000000000 Nil!12141)))

(declare-fun lt!287781 () Unit!20790)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37615 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12144) Unit!20790)

(assert (=> b!621549 (= lt!287781 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12141))))

(declare-fun arrayContainsKey!0 (array!37615 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!621549 (arrayContainsKey!0 lt!287792 (select (arr!18050 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287786 () Unit!20790)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37615 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20790)

(assert (=> b!621549 (= lt!287786 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287792 (select (arr!18050 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!356501 () Bool)

(assert (=> b!621549 e!356501))

(declare-fun res!400640 () Bool)

(assert (=> b!621549 (=> (not res!400640) (not e!356501))))

(assert (=> b!621549 (= res!400640 (arrayContainsKey!0 lt!287792 (select (arr!18050 a!2986) j!136) j!136))))

(declare-fun e!356502 () Unit!20790)

(declare-fun Unit!20794 () Unit!20790)

(assert (=> b!621549 (= e!356502 Unit!20794)))

(declare-fun b!621550 () Bool)

(declare-fun e!356496 () Bool)

(assert (=> b!621550 (= e!356503 e!356496)))

(declare-fun res!400647 () Bool)

(assert (=> b!621550 (=> (not res!400647) (not e!356496))))

(assert (=> b!621550 (= res!400647 (= (select (store (arr!18050 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!621550 (= lt!287792 (array!37616 (store (arr!18050 a!2986) i!1108 k!1786) (size!18414 a!2986)))))

(declare-fun b!621551 () Bool)

(assert (=> b!621551 (= e!356496 e!356505)))

(declare-fun res!400651 () Bool)

(assert (=> b!621551 (=> (not res!400651) (not e!356505))))

(declare-fun lt!287794 () SeekEntryResult!6497)

(assert (=> b!621551 (= res!400651 (and (= lt!287794 (Found!6497 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18050 a!2986) index!984) (select (arr!18050 a!2986) j!136))) (not (= (select (arr!18050 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!621551 (= lt!287794 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18050 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!621552 () Bool)

(declare-fun res!400649 () Bool)

(assert (=> b!621552 (=> (not res!400649) (not e!356503))))

(assert (=> b!621552 (= res!400649 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18050 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!621553 () Bool)

(declare-fun e!356508 () Bool)

(assert (=> b!621553 (= e!356508 (arrayContainsKey!0 lt!287792 (select (arr!18050 a!2986) j!136) index!984))))

(declare-fun b!621554 () Bool)

(declare-fun res!400650 () Bool)

(declare-fun e!356498 () Bool)

(assert (=> b!621554 (=> (not res!400650) (not e!356498))))

(assert (=> b!621554 (= res!400650 (and (= (size!18414 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18414 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18414 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!621555 () Bool)

(assert (=> b!621555 (= e!356506 (= lt!287794 lt!287780))))

(declare-fun res!400643 () Bool)

(assert (=> start!56182 (=> (not res!400643) (not e!356498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56182 (= res!400643 (validMask!0 mask!3053))))

(assert (=> start!56182 e!356498))

(assert (=> start!56182 true))

(declare-fun array_inv!13824 (array!37615) Bool)

(assert (=> start!56182 (array_inv!13824 a!2986)))

(declare-fun b!621546 () Bool)

(declare-fun Unit!20795 () Unit!20790)

(assert (=> b!621546 (= e!356499 Unit!20795)))

(declare-fun b!621556 () Bool)

(assert (=> b!621556 (= e!356498 e!356503)))

(declare-fun res!400652 () Bool)

(assert (=> b!621556 (=> (not res!400652) (not e!356503))))

(declare-fun lt!287790 () SeekEntryResult!6497)

(assert (=> b!621556 (= res!400652 (or (= lt!287790 (MissingZero!6497 i!1108)) (= lt!287790 (MissingVacant!6497 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37615 (_ BitVec 32)) SeekEntryResult!6497)

(assert (=> b!621556 (= lt!287790 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!621557 () Bool)

(declare-fun res!400638 () Bool)

(assert (=> b!621557 (=> (not res!400638) (not e!356498))))

(assert (=> b!621557 (= res!400638 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!621558 () Bool)

(declare-fun res!400641 () Bool)

(assert (=> b!621558 (= res!400641 (arrayContainsKey!0 lt!287792 (select (arr!18050 a!2986) j!136) j!136))))

(assert (=> b!621558 (=> (not res!400641) (not e!356508))))

(declare-fun e!356500 () Bool)

(assert (=> b!621558 (= e!356500 e!356508)))

(declare-fun b!621559 () Bool)

(assert (=> b!621559 (= e!356501 (arrayContainsKey!0 lt!287792 (select (arr!18050 a!2986) j!136) index!984))))

(declare-fun b!621560 () Bool)

(declare-fun res!400645 () Bool)

(assert (=> b!621560 (=> (not res!400645) (not e!356498))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!621560 (= res!400645 (validKeyInArray!0 (select (arr!18050 a!2986) j!136)))))

(declare-fun b!621561 () Bool)

(declare-fun Unit!20796 () Unit!20790)

(assert (=> b!621561 (= e!356499 Unit!20796)))

(declare-fun res!400646 () Bool)

(assert (=> b!621561 (= res!400646 (= (select (store (arr!18050 a!2986) i!1108 k!1786) index!984) (select (arr!18050 a!2986) j!136)))))

(declare-fun e!356509 () Bool)

(assert (=> b!621561 (=> (not res!400646) (not e!356509))))

(assert (=> b!621561 e!356509))

(declare-fun c!70820 () Bool)

(assert (=> b!621561 (= c!70820 (bvslt j!136 index!984))))

(declare-fun lt!287785 () Unit!20790)

(declare-fun e!356497 () Unit!20790)

(assert (=> b!621561 (= lt!287785 e!356497)))

(declare-fun c!70822 () Bool)

(assert (=> b!621561 (= c!70822 (bvslt index!984 j!136))))

(declare-fun lt!287788 () Unit!20790)

(assert (=> b!621561 (= lt!287788 e!356502)))

(assert (=> b!621561 false))

(declare-fun b!621562 () Bool)

(declare-fun res!400648 () Bool)

(assert (=> b!621562 (=> (not res!400648) (not e!356498))))

(assert (=> b!621562 (= res!400648 (validKeyInArray!0 k!1786))))

(declare-fun b!621563 () Bool)

(declare-fun Unit!20797 () Unit!20790)

(assert (=> b!621563 (= e!356497 Unit!20797)))

(declare-fun b!621564 () Bool)

(declare-fun Unit!20798 () Unit!20790)

(assert (=> b!621564 (= e!356502 Unit!20798)))

(declare-fun b!621565 () Bool)

(assert (=> b!621565 false))

(declare-fun lt!287789 () Unit!20790)

(assert (=> b!621565 (= lt!287789 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287792 (select (arr!18050 a!2986) j!136) j!136 Nil!12141))))

(assert (=> b!621565 (arrayNoDuplicates!0 lt!287792 j!136 Nil!12141)))

(declare-fun lt!287787 () Unit!20790)

(assert (=> b!621565 (= lt!287787 (lemmaNoDuplicateFromThenFromBigger!0 lt!287792 #b00000000000000000000000000000000 j!136))))

(assert (=> b!621565 (arrayNoDuplicates!0 lt!287792 #b00000000000000000000000000000000 Nil!12141)))

(declare-fun lt!287793 () Unit!20790)

(assert (=> b!621565 (= lt!287793 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12141))))

(assert (=> b!621565 (arrayContainsKey!0 lt!287792 (select (arr!18050 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287795 () Unit!20790)

(assert (=> b!621565 (= lt!287795 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287792 (select (arr!18050 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20799 () Unit!20790)

(assert (=> b!621565 (= e!356497 Unit!20799)))

(declare-fun b!621566 () Bool)

(declare-fun res!400644 () Bool)

(assert (=> b!621566 (= res!400644 (bvsge j!136 index!984))))

(assert (=> b!621566 (=> res!400644 e!356500)))

(assert (=> b!621566 (= e!356509 e!356500)))

(assert (= (and start!56182 res!400643) b!621554))

(assert (= (and b!621554 res!400650) b!621560))

(assert (= (and b!621560 res!400645) b!621562))

(assert (= (and b!621562 res!400648) b!621557))

(assert (= (and b!621557 res!400638) b!621556))

(assert (= (and b!621556 res!400652) b!621548))

(assert (= (and b!621548 res!400642) b!621544))

(assert (= (and b!621544 res!400637) b!621552))

(assert (= (and b!621552 res!400649) b!621550))

(assert (= (and b!621550 res!400647) b!621551))

(assert (= (and b!621551 res!400651) b!621543))

(assert (= (and b!621543 res!400639) b!621555))

(assert (= (and b!621543 c!70821) b!621547))

(assert (= (and b!621543 (not c!70821)) b!621545))

(assert (= (and b!621543 c!70823) b!621561))

(assert (= (and b!621543 (not c!70823)) b!621546))

(assert (= (and b!621561 res!400646) b!621566))

(assert (= (and b!621566 (not res!400644)) b!621558))

(assert (= (and b!621558 res!400641) b!621553))

(assert (= (and b!621561 c!70820) b!621565))

(assert (= (and b!621561 (not c!70820)) b!621563))

(assert (= (and b!621561 c!70822) b!621549))

(assert (= (and b!621561 (not c!70822)) b!621564))

(assert (= (and b!621549 res!400640) b!621559))

(declare-fun m!597479 () Bool)

(assert (=> b!621551 m!597479))

(declare-fun m!597481 () Bool)

(assert (=> b!621551 m!597481))

(assert (=> b!621551 m!597481))

(declare-fun m!597483 () Bool)

(assert (=> b!621551 m!597483))

(declare-fun m!597485 () Bool)

(assert (=> b!621556 m!597485))

(assert (=> b!621565 m!597481))

(declare-fun m!597487 () Bool)

(assert (=> b!621565 m!597487))

(declare-fun m!597489 () Bool)

(assert (=> b!621565 m!597489))

(declare-fun m!597491 () Bool)

(assert (=> b!621565 m!597491))

(declare-fun m!597493 () Bool)

(assert (=> b!621565 m!597493))

(assert (=> b!621565 m!597481))

(assert (=> b!621565 m!597481))

(declare-fun m!597495 () Bool)

(assert (=> b!621565 m!597495))

(declare-fun m!597497 () Bool)

(assert (=> b!621565 m!597497))

(assert (=> b!621565 m!597481))

(declare-fun m!597499 () Bool)

(assert (=> b!621565 m!597499))

(declare-fun m!597501 () Bool)

(assert (=> b!621544 m!597501))

(declare-fun m!597503 () Bool)

(assert (=> b!621543 m!597503))

(declare-fun m!597505 () Bool)

(assert (=> b!621543 m!597505))

(declare-fun m!597507 () Bool)

(assert (=> b!621543 m!597507))

(assert (=> b!621543 m!597481))

(declare-fun m!597509 () Bool)

(assert (=> b!621543 m!597509))

(declare-fun m!597511 () Bool)

(assert (=> b!621543 m!597511))

(assert (=> b!621543 m!597481))

(declare-fun m!597513 () Bool)

(assert (=> b!621543 m!597513))

(declare-fun m!597515 () Bool)

(assert (=> b!621543 m!597515))

(assert (=> b!621558 m!597481))

(assert (=> b!621558 m!597481))

(declare-fun m!597517 () Bool)

(assert (=> b!621558 m!597517))

(assert (=> b!621549 m!597481))

(assert (=> b!621549 m!597517))

(assert (=> b!621549 m!597481))

(declare-fun m!597519 () Bool)

(assert (=> b!621549 m!597519))

(declare-fun m!597521 () Bool)

(assert (=> b!621549 m!597521))

(assert (=> b!621549 m!597491))

(assert (=> b!621549 m!597493))

(assert (=> b!621549 m!597481))

(declare-fun m!597523 () Bool)

(assert (=> b!621549 m!597523))

(assert (=> b!621549 m!597481))

(declare-fun m!597525 () Bool)

(assert (=> b!621549 m!597525))

(assert (=> b!621549 m!597481))

(declare-fun m!597527 () Bool)

(assert (=> b!621549 m!597527))

(declare-fun m!597529 () Bool)

(assert (=> b!621548 m!597529))

(assert (=> b!621550 m!597509))

(declare-fun m!597531 () Bool)

(assert (=> b!621550 m!597531))

(declare-fun m!597533 () Bool)

(assert (=> b!621552 m!597533))

(assert (=> b!621553 m!597481))

(assert (=> b!621553 m!597481))

(declare-fun m!597535 () Bool)

(assert (=> b!621553 m!597535))

(declare-fun m!597537 () Bool)

(assert (=> b!621562 m!597537))

(assert (=> b!621559 m!597481))

(assert (=> b!621559 m!597481))

(assert (=> b!621559 m!597535))

(assert (=> b!621560 m!597481))

(assert (=> b!621560 m!597481))

(declare-fun m!597539 () Bool)

(assert (=> b!621560 m!597539))

(assert (=> b!621561 m!597509))

(declare-fun m!597541 () Bool)

(assert (=> b!621561 m!597541))

(assert (=> b!621561 m!597481))

(declare-fun m!597543 () Bool)

(assert (=> b!621557 m!597543))

(declare-fun m!597545 () Bool)

(assert (=> start!56182 m!597545))

(declare-fun m!597547 () Bool)

(assert (=> start!56182 m!597547))

(push 1)

