; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59106 () Bool)

(assert start!59106)

(declare-fun b!651523 () Bool)

(declare-fun res!422503 () Bool)

(declare-fun e!373906 () Bool)

(assert (=> b!651523 (=> (not res!422503) (not e!373906))))

(declare-datatypes ((array!38562 0))(
  ( (array!38563 (arr!18480 (Array (_ BitVec 32) (_ BitVec 64))) (size!18844 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38562)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38562 (_ BitVec 32)) Bool)

(assert (=> b!651523 (= res!422503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!651524 () Bool)

(declare-fun e!373901 () Bool)

(declare-fun e!373900 () Bool)

(assert (=> b!651524 (= e!373901 e!373900)))

(declare-fun res!422498 () Bool)

(assert (=> b!651524 (=> (not res!422498) (not e!373900))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!303002 () array!38562)

(declare-fun arrayContainsKey!0 (array!38562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!651524 (= res!422498 (arrayContainsKey!0 lt!303002 (select (arr!18480 a!2986) j!136) j!136))))

(declare-fun b!651525 () Bool)

(declare-fun e!373912 () Bool)

(declare-datatypes ((SeekEntryResult!6927 0))(
  ( (MissingZero!6927 (index!30060 (_ BitVec 32))) (Found!6927 (index!30061 (_ BitVec 32))) (Intermediate!6927 (undefined!7739 Bool) (index!30062 (_ BitVec 32)) (x!58879 (_ BitVec 32))) (Undefined!6927) (MissingVacant!6927 (index!30063 (_ BitVec 32))) )
))
(declare-fun lt!303004 () SeekEntryResult!6927)

(declare-fun lt!303008 () SeekEntryResult!6927)

(assert (=> b!651525 (= e!373912 (= lt!303004 lt!303008))))

(declare-fun b!651526 () Bool)

(declare-fun e!373899 () Bool)

(declare-fun e!373910 () Bool)

(assert (=> b!651526 (= e!373899 e!373910)))

(declare-fun res!422507 () Bool)

(assert (=> b!651526 (=> res!422507 e!373910)))

(declare-fun lt!303007 () (_ BitVec 64))

(declare-fun lt!303006 () (_ BitVec 64))

(assert (=> b!651526 (= res!422507 (or (not (= (select (arr!18480 a!2986) j!136) lt!303007)) (not (= (select (arr!18480 a!2986) j!136) lt!303006))))))

(declare-fun e!373902 () Bool)

(assert (=> b!651526 e!373902))

(declare-fun res!422501 () Bool)

(assert (=> b!651526 (=> (not res!422501) (not e!373902))))

(assert (=> b!651526 (= res!422501 (= lt!303006 (select (arr!18480 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!651526 (= lt!303006 (select (store (arr!18480 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!651527 () Bool)

(declare-fun res!422490 () Bool)

(assert (=> b!651527 (=> (not res!422490) (not e!373906))))

(declare-datatypes ((List!12574 0))(
  ( (Nil!12571) (Cons!12570 (h!13615 (_ BitVec 64)) (t!18810 List!12574)) )
))
(declare-fun arrayNoDuplicates!0 (array!38562 (_ BitVec 32) List!12574) Bool)

(assert (=> b!651527 (= res!422490 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12571))))

(declare-fun b!651528 () Bool)

(declare-fun res!422496 () Bool)

(assert (=> b!651528 (=> (not res!422496) (not e!373906))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!651528 (= res!422496 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18480 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!651529 () Bool)

(assert (=> b!651529 (= e!373902 e!373901)))

(declare-fun res!422489 () Bool)

(assert (=> b!651529 (=> res!422489 e!373901)))

(assert (=> b!651529 (= res!422489 (or (not (= (select (arr!18480 a!2986) j!136) lt!303007)) (not (= (select (arr!18480 a!2986) j!136) lt!303006)) (bvsge j!136 index!984)))))

(declare-fun b!651530 () Bool)

(declare-fun e!373908 () Bool)

(assert (=> b!651530 (= e!373908 (arrayContainsKey!0 lt!303002 (select (arr!18480 a!2986) j!136) index!984))))

(declare-fun b!651531 () Bool)

(declare-fun res!422493 () Bool)

(declare-fun e!373911 () Bool)

(assert (=> b!651531 (=> (not res!422493) (not e!373911))))

(assert (=> b!651531 (= res!422493 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!651532 () Bool)

(declare-fun res!422502 () Bool)

(assert (=> b!651532 (=> (not res!422502) (not e!373911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!651532 (= res!422502 (validKeyInArray!0 k!1786))))

(declare-fun b!651533 () Bool)

(declare-datatypes ((Unit!22234 0))(
  ( (Unit!22235) )
))
(declare-fun e!373905 () Unit!22234)

(declare-fun Unit!22236 () Unit!22234)

(assert (=> b!651533 (= e!373905 Unit!22236)))

(declare-fun b!651534 () Bool)

(declare-fun res!422500 () Bool)

(assert (=> b!651534 (=> (not res!422500) (not e!373911))))

(assert (=> b!651534 (= res!422500 (validKeyInArray!0 (select (arr!18480 a!2986) j!136)))))

(declare-fun b!651536 () Bool)

(assert (=> b!651536 (= e!373900 (arrayContainsKey!0 lt!303002 (select (arr!18480 a!2986) j!136) index!984))))

(declare-fun b!651537 () Bool)

(declare-fun e!373904 () Bool)

(assert (=> b!651537 (= e!373904 (not e!373899))))

(declare-fun res!422494 () Bool)

(assert (=> b!651537 (=> res!422494 e!373899)))

(declare-fun lt!303011 () SeekEntryResult!6927)

(assert (=> b!651537 (= res!422494 (not (= lt!303011 (Found!6927 index!984))))))

(declare-fun lt!303014 () Unit!22234)

(declare-fun e!373903 () Unit!22234)

(assert (=> b!651537 (= lt!303014 e!373903)))

(declare-fun c!74884 () Bool)

(assert (=> b!651537 (= c!74884 (= lt!303011 Undefined!6927))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38562 (_ BitVec 32)) SeekEntryResult!6927)

(assert (=> b!651537 (= lt!303011 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303007 lt!303002 mask!3053))))

(assert (=> b!651537 e!373912))

(declare-fun res!422495 () Bool)

(assert (=> b!651537 (=> (not res!422495) (not e!373912))))

(declare-fun lt!303009 () (_ BitVec 32))

(assert (=> b!651537 (= res!422495 (= lt!303008 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303009 vacantSpotIndex!68 lt!303007 lt!303002 mask!3053)))))

(assert (=> b!651537 (= lt!303008 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303009 vacantSpotIndex!68 (select (arr!18480 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!651537 (= lt!303007 (select (store (arr!18480 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!303001 () Unit!22234)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38562 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22234)

(assert (=> b!651537 (= lt!303001 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303009 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!651537 (= lt!303009 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!651538 () Bool)

(declare-fun res!422499 () Bool)

(assert (=> b!651538 (=> (not res!422499) (not e!373911))))

(assert (=> b!651538 (= res!422499 (and (= (size!18844 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18844 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18844 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!651539 () Bool)

(declare-fun e!373909 () Bool)

(assert (=> b!651539 (= e!373906 e!373909)))

(declare-fun res!422504 () Bool)

(assert (=> b!651539 (=> (not res!422504) (not e!373909))))

(assert (=> b!651539 (= res!422504 (= (select (store (arr!18480 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!651539 (= lt!303002 (array!38563 (store (arr!18480 a!2986) i!1108 k!1786) (size!18844 a!2986)))))

(declare-fun b!651540 () Bool)

(declare-fun Unit!22237 () Unit!22234)

(assert (=> b!651540 (= e!373905 Unit!22237)))

(declare-fun lt!303012 () Unit!22234)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38562 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22234)

(assert (=> b!651540 (= lt!303012 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303002 (select (arr!18480 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!651540 (arrayContainsKey!0 lt!303002 (select (arr!18480 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303003 () Unit!22234)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38562 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12574) Unit!22234)

(assert (=> b!651540 (= lt!303003 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12571))))

(assert (=> b!651540 (arrayNoDuplicates!0 lt!303002 #b00000000000000000000000000000000 Nil!12571)))

(declare-fun lt!303016 () Unit!22234)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38562 (_ BitVec 32) (_ BitVec 32)) Unit!22234)

(assert (=> b!651540 (= lt!303016 (lemmaNoDuplicateFromThenFromBigger!0 lt!303002 #b00000000000000000000000000000000 j!136))))

(assert (=> b!651540 (arrayNoDuplicates!0 lt!303002 j!136 Nil!12571)))

(declare-fun lt!303017 () Unit!22234)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38562 (_ BitVec 64) (_ BitVec 32) List!12574) Unit!22234)

(assert (=> b!651540 (= lt!303017 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303002 (select (arr!18480 a!2986) j!136) j!136 Nil!12571))))

(assert (=> b!651540 false))

(declare-fun b!651541 () Bool)

(declare-fun Unit!22238 () Unit!22234)

(assert (=> b!651541 (= e!373903 Unit!22238)))

(declare-fun b!651542 () Bool)

(declare-fun Unit!22239 () Unit!22234)

(assert (=> b!651542 (= e!373903 Unit!22239)))

(assert (=> b!651542 false))

(declare-fun b!651543 () Bool)

(declare-fun e!373898 () Bool)

(assert (=> b!651543 (= e!373898 true)))

(assert (=> b!651543 (arrayNoDuplicates!0 lt!303002 index!984 Nil!12571)))

(declare-fun lt!303015 () Unit!22234)

(assert (=> b!651543 (= lt!303015 (lemmaNoDuplicateFromThenFromBigger!0 lt!303002 #b00000000000000000000000000000000 index!984))))

(assert (=> b!651543 (arrayNoDuplicates!0 lt!303002 #b00000000000000000000000000000000 Nil!12571)))

(declare-fun lt!303018 () Unit!22234)

(assert (=> b!651543 (= lt!303018 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12571))))

(assert (=> b!651543 (arrayContainsKey!0 lt!303002 (select (arr!18480 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303010 () Unit!22234)

(assert (=> b!651543 (= lt!303010 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303002 (select (arr!18480 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!651543 e!373908))

(declare-fun res!422505 () Bool)

(assert (=> b!651543 (=> (not res!422505) (not e!373908))))

(assert (=> b!651543 (= res!422505 (arrayContainsKey!0 lt!303002 (select (arr!18480 a!2986) j!136) j!136))))

(declare-fun b!651544 () Bool)

(assert (=> b!651544 (= e!373910 e!373898)))

(declare-fun res!422492 () Bool)

(assert (=> b!651544 (=> res!422492 e!373898)))

(assert (=> b!651544 (= res!422492 (bvsge index!984 j!136))))

(declare-fun lt!303005 () Unit!22234)

(assert (=> b!651544 (= lt!303005 e!373905)))

(declare-fun c!74885 () Bool)

(assert (=> b!651544 (= c!74885 (bvslt j!136 index!984))))

(declare-fun b!651545 () Bool)

(assert (=> b!651545 (= e!373909 e!373904)))

(declare-fun res!422497 () Bool)

(assert (=> b!651545 (=> (not res!422497) (not e!373904))))

(assert (=> b!651545 (= res!422497 (and (= lt!303004 (Found!6927 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18480 a!2986) index!984) (select (arr!18480 a!2986) j!136))) (not (= (select (arr!18480 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!651545 (= lt!303004 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18480 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!651535 () Bool)

(assert (=> b!651535 (= e!373911 e!373906)))

(declare-fun res!422506 () Bool)

(assert (=> b!651535 (=> (not res!422506) (not e!373906))))

(declare-fun lt!303013 () SeekEntryResult!6927)

(assert (=> b!651535 (= res!422506 (or (= lt!303013 (MissingZero!6927 i!1108)) (= lt!303013 (MissingVacant!6927 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38562 (_ BitVec 32)) SeekEntryResult!6927)

(assert (=> b!651535 (= lt!303013 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!422491 () Bool)

(assert (=> start!59106 (=> (not res!422491) (not e!373911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59106 (= res!422491 (validMask!0 mask!3053))))

(assert (=> start!59106 e!373911))

(assert (=> start!59106 true))

(declare-fun array_inv!14254 (array!38562) Bool)

(assert (=> start!59106 (array_inv!14254 a!2986)))

(assert (= (and start!59106 res!422491) b!651538))

(assert (= (and b!651538 res!422499) b!651534))

(assert (= (and b!651534 res!422500) b!651532))

(assert (= (and b!651532 res!422502) b!651531))

(assert (= (and b!651531 res!422493) b!651535))

(assert (= (and b!651535 res!422506) b!651523))

(assert (= (and b!651523 res!422503) b!651527))

(assert (= (and b!651527 res!422490) b!651528))

(assert (= (and b!651528 res!422496) b!651539))

(assert (= (and b!651539 res!422504) b!651545))

(assert (= (and b!651545 res!422497) b!651537))

(assert (= (and b!651537 res!422495) b!651525))

(assert (= (and b!651537 c!74884) b!651542))

(assert (= (and b!651537 (not c!74884)) b!651541))

(assert (= (and b!651537 (not res!422494)) b!651526))

(assert (= (and b!651526 res!422501) b!651529))

(assert (= (and b!651529 (not res!422489)) b!651524))

(assert (= (and b!651524 res!422498) b!651536))

(assert (= (and b!651526 (not res!422507)) b!651544))

(assert (= (and b!651544 c!74885) b!651540))

(assert (= (and b!651544 (not c!74885)) b!651533))

(assert (= (and b!651544 (not res!422492)) b!651543))

(assert (= (and b!651543 res!422505) b!651530))

(declare-fun m!624747 () Bool)

(assert (=> b!651539 m!624747))

(declare-fun m!624749 () Bool)

(assert (=> b!651539 m!624749))

(declare-fun m!624751 () Bool)

(assert (=> b!651532 m!624751))

(declare-fun m!624753 () Bool)

(assert (=> b!651535 m!624753))

(declare-fun m!624755 () Bool)

(assert (=> b!651531 m!624755))

(declare-fun m!624757 () Bool)

(assert (=> b!651545 m!624757))

(declare-fun m!624759 () Bool)

(assert (=> b!651545 m!624759))

(assert (=> b!651545 m!624759))

(declare-fun m!624761 () Bool)

(assert (=> b!651545 m!624761))

(assert (=> b!651543 m!624759))

(declare-fun m!624763 () Bool)

(assert (=> b!651543 m!624763))

(declare-fun m!624765 () Bool)

(assert (=> b!651543 m!624765))

(assert (=> b!651543 m!624759))

(declare-fun m!624767 () Bool)

(assert (=> b!651543 m!624767))

(declare-fun m!624769 () Bool)

(assert (=> b!651543 m!624769))

(declare-fun m!624771 () Bool)

(assert (=> b!651543 m!624771))

(declare-fun m!624773 () Bool)

(assert (=> b!651543 m!624773))

(assert (=> b!651543 m!624759))

(declare-fun m!624775 () Bool)

(assert (=> b!651543 m!624775))

(assert (=> b!651543 m!624759))

(assert (=> b!651534 m!624759))

(assert (=> b!651534 m!624759))

(declare-fun m!624777 () Bool)

(assert (=> b!651534 m!624777))

(assert (=> b!651540 m!624759))

(assert (=> b!651540 m!624759))

(declare-fun m!624779 () Bool)

(assert (=> b!651540 m!624779))

(declare-fun m!624781 () Bool)

(assert (=> b!651540 m!624781))

(assert (=> b!651540 m!624759))

(declare-fun m!624783 () Bool)

(assert (=> b!651540 m!624783))

(assert (=> b!651540 m!624769))

(assert (=> b!651540 m!624773))

(assert (=> b!651540 m!624759))

(declare-fun m!624785 () Bool)

(assert (=> b!651540 m!624785))

(declare-fun m!624787 () Bool)

(assert (=> b!651540 m!624787))

(declare-fun m!624789 () Bool)

(assert (=> b!651527 m!624789))

(assert (=> b!651530 m!624759))

(assert (=> b!651530 m!624759))

(declare-fun m!624791 () Bool)

(assert (=> b!651530 m!624791))

(declare-fun m!624793 () Bool)

(assert (=> b!651528 m!624793))

(assert (=> b!651529 m!624759))

(assert (=> b!651536 m!624759))

(assert (=> b!651536 m!624759))

(assert (=> b!651536 m!624791))

(declare-fun m!624795 () Bool)

(assert (=> b!651523 m!624795))

(declare-fun m!624797 () Bool)

(assert (=> start!59106 m!624797))

(declare-fun m!624799 () Bool)

(assert (=> start!59106 m!624799))

(assert (=> b!651526 m!624759))

(assert (=> b!651526 m!624747))

(declare-fun m!624801 () Bool)

(assert (=> b!651526 m!624801))

(assert (=> b!651524 m!624759))

(assert (=> b!651524 m!624759))

(assert (=> b!651524 m!624763))

(declare-fun m!624803 () Bool)

(assert (=> b!651537 m!624803))

(declare-fun m!624805 () Bool)

(assert (=> b!651537 m!624805))

(declare-fun m!624807 () Bool)

(assert (=> b!651537 m!624807))

(assert (=> b!651537 m!624759))

(declare-fun m!624809 () Bool)

(assert (=> b!651537 m!624809))

(declare-fun m!624811 () Bool)

(assert (=> b!651537 m!624811))

(assert (=> b!651537 m!624759))

(assert (=> b!651537 m!624747))

(declare-fun m!624813 () Bool)

(assert (=> b!651537 m!624813))

(push 1)

