; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59352 () Bool)

(assert start!59352)

(declare-fun b!654450 () Bool)

(declare-fun e!375839 () Bool)

(declare-fun e!375847 () Bool)

(assert (=> b!654450 (= e!375839 e!375847)))

(declare-fun res!424603 () Bool)

(assert (=> b!654450 (=> (not res!424603) (not e!375847))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38628 0))(
  ( (array!38629 (arr!18510 (Array (_ BitVec 32) (_ BitVec 64))) (size!18874 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38628)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!654450 (= res!424603 (= (select (store (arr!18510 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!305001 () array!38628)

(assert (=> b!654450 (= lt!305001 (array!38629 (store (arr!18510 a!2986) i!1108 k!1786) (size!18874 a!2986)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!375843 () Bool)

(declare-fun b!654451 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38628 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!654451 (= e!375843 (arrayContainsKey!0 lt!305001 (select (arr!18510 a!2986) j!136) index!984))))

(declare-fun b!654452 () Bool)

(declare-datatypes ((Unit!22420 0))(
  ( (Unit!22421) )
))
(declare-fun e!375844 () Unit!22420)

(declare-fun Unit!22422 () Unit!22420)

(assert (=> b!654452 (= e!375844 Unit!22422)))

(declare-fun b!654453 () Bool)

(declare-fun res!424617 () Bool)

(assert (=> b!654453 (=> (not res!424617) (not e!375839))))

(declare-datatypes ((List!12604 0))(
  ( (Nil!12601) (Cons!12600 (h!13645 (_ BitVec 64)) (t!18840 List!12604)) )
))
(declare-fun arrayNoDuplicates!0 (array!38628 (_ BitVec 32) List!12604) Bool)

(assert (=> b!654453 (= res!424617 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12601))))

(declare-fun b!654454 () Bool)

(declare-fun e!375833 () Bool)

(declare-fun e!375838 () Bool)

(assert (=> b!654454 (= e!375833 e!375838)))

(declare-fun res!424602 () Bool)

(assert (=> b!654454 (=> res!424602 e!375838)))

(declare-fun lt!304993 () (_ BitVec 64))

(declare-fun lt!304985 () (_ BitVec 64))

(assert (=> b!654454 (= res!424602 (or (not (= (select (arr!18510 a!2986) j!136) lt!304993)) (not (= (select (arr!18510 a!2986) j!136) lt!304985)) (bvsge j!136 index!984)))))

(declare-fun b!654455 () Bool)

(declare-fun e!375840 () Unit!22420)

(declare-fun Unit!22423 () Unit!22420)

(assert (=> b!654455 (= e!375840 Unit!22423)))

(declare-fun b!654456 () Bool)

(declare-fun e!375837 () Unit!22420)

(declare-fun Unit!22424 () Unit!22420)

(assert (=> b!654456 (= e!375837 Unit!22424)))

(declare-fun lt!304988 () Unit!22420)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38628 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22420)

(assert (=> b!654456 (= lt!304988 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305001 (select (arr!18510 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!654456 (arrayContainsKey!0 lt!305001 (select (arr!18510 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!304982 () Unit!22420)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38628 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12604) Unit!22420)

(assert (=> b!654456 (= lt!304982 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12601))))

(assert (=> b!654456 (arrayNoDuplicates!0 lt!305001 #b00000000000000000000000000000000 Nil!12601)))

(declare-fun lt!304997 () Unit!22420)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38628 (_ BitVec 32) (_ BitVec 32)) Unit!22420)

(assert (=> b!654456 (= lt!304997 (lemmaNoDuplicateFromThenFromBigger!0 lt!305001 #b00000000000000000000000000000000 j!136))))

(assert (=> b!654456 (arrayNoDuplicates!0 lt!305001 j!136 Nil!12601)))

(declare-fun lt!304992 () Unit!22420)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38628 (_ BitVec 64) (_ BitVec 32) List!12604) Unit!22420)

(assert (=> b!654456 (= lt!304992 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305001 (select (arr!18510 a!2986) j!136) j!136 Nil!12601))))

(assert (=> b!654456 false))

(declare-fun b!654457 () Bool)

(declare-fun Unit!22425 () Unit!22420)

(assert (=> b!654457 (= e!375837 Unit!22425)))

(declare-fun b!654458 () Bool)

(declare-fun e!375845 () Bool)

(declare-fun e!375846 () Bool)

(assert (=> b!654458 (= e!375845 (not e!375846))))

(declare-fun res!424619 () Bool)

(assert (=> b!654458 (=> res!424619 e!375846)))

(declare-datatypes ((SeekEntryResult!6957 0))(
  ( (MissingZero!6957 (index!30186 (_ BitVec 32))) (Found!6957 (index!30187 (_ BitVec 32))) (Intermediate!6957 (undefined!7769 Bool) (index!30188 (_ BitVec 32)) (x!59007 (_ BitVec 32))) (Undefined!6957) (MissingVacant!6957 (index!30189 (_ BitVec 32))) )
))
(declare-fun lt!304984 () SeekEntryResult!6957)

(assert (=> b!654458 (= res!424619 (not (= lt!304984 (Found!6957 index!984))))))

(declare-fun lt!304998 () Unit!22420)

(assert (=> b!654458 (= lt!304998 e!375844)))

(declare-fun c!75292 () Bool)

(assert (=> b!654458 (= c!75292 (= lt!304984 Undefined!6957))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38628 (_ BitVec 32)) SeekEntryResult!6957)

(assert (=> b!654458 (= lt!304984 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!304993 lt!305001 mask!3053))))

(declare-fun e!375841 () Bool)

(assert (=> b!654458 e!375841))

(declare-fun res!424604 () Bool)

(assert (=> b!654458 (=> (not res!424604) (not e!375841))))

(declare-fun lt!304990 () (_ BitVec 32))

(declare-fun lt!304983 () SeekEntryResult!6957)

(assert (=> b!654458 (= res!424604 (= lt!304983 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304990 vacantSpotIndex!68 lt!304993 lt!305001 mask!3053)))))

(assert (=> b!654458 (= lt!304983 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304990 vacantSpotIndex!68 (select (arr!18510 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!654458 (= lt!304993 (select (store (arr!18510 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!304991 () Unit!22420)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38628 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22420)

(assert (=> b!654458 (= lt!304991 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!304990 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!654458 (= lt!304990 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!654459 () Bool)

(assert (=> b!654459 (= e!375847 e!375845)))

(declare-fun res!424605 () Bool)

(assert (=> b!654459 (=> (not res!424605) (not e!375845))))

(declare-fun lt!304994 () SeekEntryResult!6957)

(assert (=> b!654459 (= res!424605 (and (= lt!304994 (Found!6957 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18510 a!2986) index!984) (select (arr!18510 a!2986) j!136))) (not (= (select (arr!18510 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!654459 (= lt!304994 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18510 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!654460 () Bool)

(declare-fun e!375835 () Bool)

(assert (=> b!654460 (= e!375835 true)))

(assert (=> b!654460 false))

(declare-fun lt!304999 () Unit!22420)

(assert (=> b!654460 (= lt!304999 e!375840)))

(declare-fun c!75293 () Bool)

(assert (=> b!654460 (= c!75293 (bvslt index!984 j!136))))

(declare-fun lt!304995 () Unit!22420)

(assert (=> b!654460 (= lt!304995 e!375837)))

(declare-fun c!75291 () Bool)

(assert (=> b!654460 (= c!75291 (bvslt j!136 index!984))))

(declare-fun res!424614 () Bool)

(declare-fun e!375834 () Bool)

(assert (=> start!59352 (=> (not res!424614) (not e!375834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59352 (= res!424614 (validMask!0 mask!3053))))

(assert (=> start!59352 e!375834))

(assert (=> start!59352 true))

(declare-fun array_inv!14284 (array!38628) Bool)

(assert (=> start!59352 (array_inv!14284 a!2986)))

(declare-fun b!654461 () Bool)

(declare-fun e!375842 () Bool)

(assert (=> b!654461 (= e!375842 (arrayContainsKey!0 lt!305001 (select (arr!18510 a!2986) j!136) index!984))))

(declare-fun b!654462 () Bool)

(declare-fun res!424616 () Bool)

(assert (=> b!654462 (=> (not res!424616) (not e!375834))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!654462 (= res!424616 (validKeyInArray!0 k!1786))))

(declare-fun b!654463 () Bool)

(assert (=> b!654463 (= e!375838 e!375843)))

(declare-fun res!424608 () Bool)

(assert (=> b!654463 (=> (not res!424608) (not e!375843))))

(assert (=> b!654463 (= res!424608 (arrayContainsKey!0 lt!305001 (select (arr!18510 a!2986) j!136) j!136))))

(declare-fun b!654464 () Bool)

(declare-fun Unit!22426 () Unit!22420)

(assert (=> b!654464 (= e!375844 Unit!22426)))

(assert (=> b!654464 false))

(declare-fun b!654465 () Bool)

(declare-fun res!424613 () Bool)

(assert (=> b!654465 (=> (not res!424613) (not e!375834))))

(assert (=> b!654465 (= res!424613 (and (= (size!18874 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18874 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18874 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!654466 () Bool)

(declare-fun res!424611 () Bool)

(assert (=> b!654466 (=> (not res!424611) (not e!375839))))

(assert (=> b!654466 (= res!424611 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18510 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!654467 () Bool)

(declare-fun res!424612 () Bool)

(assert (=> b!654467 (=> (not res!424612) (not e!375834))))

(assert (=> b!654467 (= res!424612 (validKeyInArray!0 (select (arr!18510 a!2986) j!136)))))

(declare-fun b!654468 () Bool)

(declare-fun Unit!22427 () Unit!22420)

(assert (=> b!654468 (= e!375840 Unit!22427)))

(declare-fun res!424618 () Bool)

(assert (=> b!654468 (= res!424618 (arrayContainsKey!0 lt!305001 (select (arr!18510 a!2986) j!136) j!136))))

(assert (=> b!654468 (=> (not res!424618) (not e!375842))))

(assert (=> b!654468 e!375842))

(declare-fun lt!305000 () Unit!22420)

(assert (=> b!654468 (= lt!305000 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305001 (select (arr!18510 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!654468 (arrayContainsKey!0 lt!305001 (select (arr!18510 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!304986 () Unit!22420)

(assert (=> b!654468 (= lt!304986 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12601))))

(assert (=> b!654468 (arrayNoDuplicates!0 lt!305001 #b00000000000000000000000000000000 Nil!12601)))

(declare-fun lt!304987 () Unit!22420)

(assert (=> b!654468 (= lt!304987 (lemmaNoDuplicateFromThenFromBigger!0 lt!305001 #b00000000000000000000000000000000 index!984))))

(assert (=> b!654468 (arrayNoDuplicates!0 lt!305001 index!984 Nil!12601)))

(declare-fun lt!304989 () Unit!22420)

(assert (=> b!654468 (= lt!304989 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305001 (select (arr!18510 a!2986) j!136) index!984 Nil!12601))))

(assert (=> b!654468 false))

(declare-fun b!654469 () Bool)

(declare-fun res!424607 () Bool)

(assert (=> b!654469 (=> (not res!424607) (not e!375839))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38628 (_ BitVec 32)) Bool)

(assert (=> b!654469 (= res!424607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!654470 () Bool)

(assert (=> b!654470 (= e!375834 e!375839)))

(declare-fun res!424609 () Bool)

(assert (=> b!654470 (=> (not res!424609) (not e!375839))))

(declare-fun lt!304996 () SeekEntryResult!6957)

(assert (=> b!654470 (= res!424609 (or (= lt!304996 (MissingZero!6957 i!1108)) (= lt!304996 (MissingVacant!6957 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38628 (_ BitVec 32)) SeekEntryResult!6957)

(assert (=> b!654470 (= lt!304996 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!654471 () Bool)

(declare-fun res!424610 () Bool)

(assert (=> b!654471 (=> (not res!424610) (not e!375834))))

(assert (=> b!654471 (= res!424610 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!654472 () Bool)

(assert (=> b!654472 (= e!375846 e!375835)))

(declare-fun res!424615 () Bool)

(assert (=> b!654472 (=> res!424615 e!375835)))

(assert (=> b!654472 (= res!424615 (or (not (= (select (arr!18510 a!2986) j!136) lt!304993)) (not (= (select (arr!18510 a!2986) j!136) lt!304985))))))

(assert (=> b!654472 e!375833))

(declare-fun res!424606 () Bool)

(assert (=> b!654472 (=> (not res!424606) (not e!375833))))

(assert (=> b!654472 (= res!424606 (= lt!304985 (select (arr!18510 a!2986) j!136)))))

(assert (=> b!654472 (= lt!304985 (select (store (arr!18510 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!654473 () Bool)

(assert (=> b!654473 (= e!375841 (= lt!304994 lt!304983))))

(assert (= (and start!59352 res!424614) b!654465))

(assert (= (and b!654465 res!424613) b!654467))

(assert (= (and b!654467 res!424612) b!654462))

(assert (= (and b!654462 res!424616) b!654471))

(assert (= (and b!654471 res!424610) b!654470))

(assert (= (and b!654470 res!424609) b!654469))

(assert (= (and b!654469 res!424607) b!654453))

(assert (= (and b!654453 res!424617) b!654466))

(assert (= (and b!654466 res!424611) b!654450))

(assert (= (and b!654450 res!424603) b!654459))

(assert (= (and b!654459 res!424605) b!654458))

(assert (= (and b!654458 res!424604) b!654473))

(assert (= (and b!654458 c!75292) b!654464))

(assert (= (and b!654458 (not c!75292)) b!654452))

(assert (= (and b!654458 (not res!424619)) b!654472))

(assert (= (and b!654472 res!424606) b!654454))

(assert (= (and b!654454 (not res!424602)) b!654463))

(assert (= (and b!654463 res!424608) b!654451))

(assert (= (and b!654472 (not res!424615)) b!654460))

(assert (= (and b!654460 c!75291) b!654456))

(assert (= (and b!654460 (not c!75291)) b!654457))

(assert (= (and b!654460 c!75293) b!654468))

(assert (= (and b!654460 (not c!75293)) b!654455))

(assert (= (and b!654468 res!424618) b!654461))

(declare-fun m!627621 () Bool)

(assert (=> b!654458 m!627621))

(declare-fun m!627623 () Bool)

(assert (=> b!654458 m!627623))

(declare-fun m!627625 () Bool)

(assert (=> b!654458 m!627625))

(declare-fun m!627627 () Bool)

(assert (=> b!654458 m!627627))

(declare-fun m!627629 () Bool)

(assert (=> b!654458 m!627629))

(declare-fun m!627631 () Bool)

(assert (=> b!654458 m!627631))

(declare-fun m!627633 () Bool)

(assert (=> b!654458 m!627633))

(assert (=> b!654458 m!627625))

(declare-fun m!627635 () Bool)

(assert (=> b!654458 m!627635))

(assert (=> b!654468 m!627625))

(assert (=> b!654468 m!627625))

(declare-fun m!627637 () Bool)

(assert (=> b!654468 m!627637))

(declare-fun m!627639 () Bool)

(assert (=> b!654468 m!627639))

(assert (=> b!654468 m!627625))

(declare-fun m!627641 () Bool)

(assert (=> b!654468 m!627641))

(declare-fun m!627643 () Bool)

(assert (=> b!654468 m!627643))

(declare-fun m!627645 () Bool)

(assert (=> b!654468 m!627645))

(declare-fun m!627647 () Bool)

(assert (=> b!654468 m!627647))

(assert (=> b!654468 m!627625))

(declare-fun m!627649 () Bool)

(assert (=> b!654468 m!627649))

(assert (=> b!654468 m!627625))

(declare-fun m!627651 () Bool)

(assert (=> b!654468 m!627651))

(assert (=> b!654451 m!627625))

(assert (=> b!654451 m!627625))

(declare-fun m!627653 () Bool)

(assert (=> b!654451 m!627653))

(declare-fun m!627655 () Bool)

(assert (=> start!59352 m!627655))

(declare-fun m!627657 () Bool)

(assert (=> start!59352 m!627657))

(declare-fun m!627659 () Bool)

(assert (=> b!654459 m!627659))

(assert (=> b!654459 m!627625))

(assert (=> b!654459 m!627625))

(declare-fun m!627661 () Bool)

(assert (=> b!654459 m!627661))

(assert (=> b!654450 m!627627))

(declare-fun m!627663 () Bool)

(assert (=> b!654450 m!627663))

(assert (=> b!654472 m!627625))

(assert (=> b!654472 m!627627))

(declare-fun m!627665 () Bool)

(assert (=> b!654472 m!627665))

(assert (=> b!654461 m!627625))

(assert (=> b!654461 m!627625))

(assert (=> b!654461 m!627653))

(declare-fun m!627667 () Bool)

(assert (=> b!654466 m!627667))

(declare-fun m!627669 () Bool)

(assert (=> b!654453 m!627669))

(assert (=> b!654463 m!627625))

(assert (=> b!654463 m!627625))

(assert (=> b!654463 m!627651))

(declare-fun m!627671 () Bool)

(assert (=> b!654462 m!627671))

(declare-fun m!627673 () Bool)

(assert (=> b!654470 m!627673))

(declare-fun m!627675 () Bool)

(assert (=> b!654471 m!627675))

(assert (=> b!654467 m!627625))

(assert (=> b!654467 m!627625))

(declare-fun m!627677 () Bool)

(assert (=> b!654467 m!627677))

(declare-fun m!627679 () Bool)

(assert (=> b!654469 m!627679))

(assert (=> b!654454 m!627625))

(assert (=> b!654456 m!627639))

(assert (=> b!654456 m!627625))

(declare-fun m!627681 () Bool)

(assert (=> b!654456 m!627681))

(declare-fun m!627683 () Bool)

(assert (=> b!654456 m!627683))

(assert (=> b!654456 m!627647))

(declare-fun m!627685 () Bool)

(assert (=> b!654456 m!627685))

(assert (=> b!654456 m!627625))

(assert (=> b!654456 m!627625))

(declare-fun m!627687 () Bool)

(assert (=> b!654456 m!627687))

(assert (=> b!654456 m!627625))

(declare-fun m!627689 () Bool)

(assert (=> b!654456 m!627689))

(push 1)

