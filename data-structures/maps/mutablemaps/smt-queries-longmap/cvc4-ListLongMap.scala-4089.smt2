; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56044 () Bool)

(assert start!56044)

(declare-fun b!616439 () Bool)

(declare-fun res!397199 () Bool)

(declare-fun e!353463 () Bool)

(assert (=> b!616439 (=> (not res!397199) (not e!353463))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!616439 (= res!397199 (validKeyInArray!0 k!1786))))

(declare-fun b!616440 () Bool)

(declare-fun e!353473 () Bool)

(declare-fun e!353464 () Bool)

(assert (=> b!616440 (= e!353473 (not e!353464))))

(declare-fun res!397204 () Bool)

(assert (=> b!616440 (=> res!397204 e!353464)))

(declare-datatypes ((SeekEntryResult!6428 0))(
  ( (MissingZero!6428 (index!27995 (_ BitVec 32))) (Found!6428 (index!27996 (_ BitVec 32))) (Intermediate!6428 (undefined!7240 Bool) (index!27997 (_ BitVec 32)) (x!56813 (_ BitVec 32))) (Undefined!6428) (MissingVacant!6428 (index!27998 (_ BitVec 32))) )
))
(declare-fun lt!283644 () SeekEntryResult!6428)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!616440 (= res!397204 (not (= lt!283644 (MissingVacant!6428 vacantSpotIndex!68))))))

(declare-datatypes ((Unit!20100 0))(
  ( (Unit!20101) )
))
(declare-fun lt!283647 () Unit!20100)

(declare-fun e!353466 () Unit!20100)

(assert (=> b!616440 (= lt!283647 e!353466)))

(declare-fun c!69994 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!616440 (= c!69994 (= lt!283644 (Found!6428 index!984)))))

(declare-fun lt!283637 () Unit!20100)

(declare-fun e!353475 () Unit!20100)

(assert (=> b!616440 (= lt!283637 e!353475)))

(declare-fun c!69993 () Bool)

(assert (=> b!616440 (= c!69993 (= lt!283644 Undefined!6428))))

(declare-fun lt!283649 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!37477 0))(
  ( (array!37478 (arr!17981 (Array (_ BitVec 32) (_ BitVec 64))) (size!18345 (_ BitVec 32))) )
))
(declare-fun lt!283639 () array!37477)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37477 (_ BitVec 32)) SeekEntryResult!6428)

(assert (=> b!616440 (= lt!283644 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283649 lt!283639 mask!3053))))

(declare-fun e!353467 () Bool)

(assert (=> b!616440 e!353467))

(declare-fun res!397194 () Bool)

(assert (=> b!616440 (=> (not res!397194) (not e!353467))))

(declare-fun lt!283656 () (_ BitVec 32))

(declare-fun lt!283648 () SeekEntryResult!6428)

(assert (=> b!616440 (= res!397194 (= lt!283648 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283656 vacantSpotIndex!68 lt!283649 lt!283639 mask!3053)))))

(declare-fun a!2986 () array!37477)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!616440 (= lt!283648 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283656 vacantSpotIndex!68 (select (arr!17981 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!616440 (= lt!283649 (select (store (arr!17981 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!283653 () Unit!20100)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37477 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20100)

(assert (=> b!616440 (= lt!283653 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283656 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!616440 (= lt!283656 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!616441 () Bool)

(declare-fun res!397197 () Bool)

(assert (=> b!616441 (=> (not res!397197) (not e!353463))))

(assert (=> b!616441 (= res!397197 (and (= (size!18345 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18345 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18345 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!616442 () Bool)

(declare-fun res!397195 () Bool)

(declare-fun e!353474 () Bool)

(assert (=> b!616442 (=> (not res!397195) (not e!353474))))

(declare-datatypes ((List!12075 0))(
  ( (Nil!12072) (Cons!12071 (h!13116 (_ BitVec 64)) (t!18311 List!12075)) )
))
(declare-fun arrayNoDuplicates!0 (array!37477 (_ BitVec 32) List!12075) Bool)

(assert (=> b!616442 (= res!397195 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12072))))

(declare-fun b!616443 () Bool)

(assert (=> b!616443 false))

(declare-fun lt!283645 () Unit!20100)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37477 (_ BitVec 64) (_ BitVec 32) List!12075) Unit!20100)

(assert (=> b!616443 (= lt!283645 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283639 (select (arr!17981 a!2986) j!136) j!136 Nil!12072))))

(assert (=> b!616443 (arrayNoDuplicates!0 lt!283639 j!136 Nil!12072)))

(declare-fun lt!283643 () Unit!20100)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37477 (_ BitVec 32) (_ BitVec 32)) Unit!20100)

(assert (=> b!616443 (= lt!283643 (lemmaNoDuplicateFromThenFromBigger!0 lt!283639 #b00000000000000000000000000000000 j!136))))

(assert (=> b!616443 (arrayNoDuplicates!0 lt!283639 #b00000000000000000000000000000000 Nil!12072)))

(declare-fun lt!283641 () Unit!20100)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37477 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12075) Unit!20100)

(assert (=> b!616443 (= lt!283641 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12072))))

(declare-fun arrayContainsKey!0 (array!37477 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!616443 (arrayContainsKey!0 lt!283639 (select (arr!17981 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283652 () Unit!20100)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37477 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20100)

(assert (=> b!616443 (= lt!283652 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283639 (select (arr!17981 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!353470 () Unit!20100)

(declare-fun Unit!20102 () Unit!20100)

(assert (=> b!616443 (= e!353470 Unit!20102)))

(declare-fun b!616444 () Bool)

(declare-fun res!397203 () Bool)

(assert (=> b!616444 (=> (not res!397203) (not e!353474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37477 (_ BitVec 32)) Bool)

(assert (=> b!616444 (= res!397203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!616445 () Bool)

(declare-fun lt!283646 () SeekEntryResult!6428)

(assert (=> b!616445 (= e!353467 (= lt!283646 lt!283648))))

(declare-fun res!397191 () Bool)

(assert (=> start!56044 (=> (not res!397191) (not e!353463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56044 (= res!397191 (validMask!0 mask!3053))))

(assert (=> start!56044 e!353463))

(assert (=> start!56044 true))

(declare-fun array_inv!13755 (array!37477) Bool)

(assert (=> start!56044 (array_inv!13755 a!2986)))

(declare-fun b!616446 () Bool)

(declare-fun Unit!20103 () Unit!20100)

(assert (=> b!616446 (= e!353475 Unit!20103)))

(assert (=> b!616446 false))

(declare-fun b!616447 () Bool)

(declare-fun res!397189 () Bool)

(assert (=> b!616447 (=> (not res!397189) (not e!353474))))

(assert (=> b!616447 (= res!397189 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17981 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!353472 () Bool)

(declare-fun b!616448 () Bool)

(assert (=> b!616448 (= e!353472 (arrayContainsKey!0 lt!283639 (select (arr!17981 a!2986) j!136) index!984))))

(declare-fun b!616449 () Bool)

(declare-fun Unit!20104 () Unit!20100)

(assert (=> b!616449 (= e!353475 Unit!20104)))

(declare-fun b!616450 () Bool)

(declare-fun res!397200 () Bool)

(assert (=> b!616450 (=> (not res!397200) (not e!353463))))

(assert (=> b!616450 (= res!397200 (validKeyInArray!0 (select (arr!17981 a!2986) j!136)))))

(declare-fun b!616451 () Bool)

(declare-fun e!353471 () Unit!20100)

(declare-fun Unit!20105 () Unit!20100)

(assert (=> b!616451 (= e!353471 Unit!20105)))

(declare-fun b!616452 () Bool)

(assert (=> b!616452 (= e!353464 true)))

(assert (=> b!616452 (= (select (store (arr!17981 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!616453 () Bool)

(assert (=> b!616453 (= e!353463 e!353474)))

(declare-fun res!397202 () Bool)

(assert (=> b!616453 (=> (not res!397202) (not e!353474))))

(declare-fun lt!283654 () SeekEntryResult!6428)

(assert (=> b!616453 (= res!397202 (or (= lt!283654 (MissingZero!6428 i!1108)) (= lt!283654 (MissingVacant!6428 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37477 (_ BitVec 32)) SeekEntryResult!6428)

(assert (=> b!616453 (= lt!283654 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!616454 () Bool)

(assert (=> b!616454 false))

(declare-fun lt!283655 () Unit!20100)

(assert (=> b!616454 (= lt!283655 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283639 (select (arr!17981 a!2986) j!136) index!984 Nil!12072))))

(assert (=> b!616454 (arrayNoDuplicates!0 lt!283639 index!984 Nil!12072)))

(declare-fun lt!283642 () Unit!20100)

(assert (=> b!616454 (= lt!283642 (lemmaNoDuplicateFromThenFromBigger!0 lt!283639 #b00000000000000000000000000000000 index!984))))

(assert (=> b!616454 (arrayNoDuplicates!0 lt!283639 #b00000000000000000000000000000000 Nil!12072)))

(declare-fun lt!283650 () Unit!20100)

(assert (=> b!616454 (= lt!283650 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12072))))

(assert (=> b!616454 (arrayContainsKey!0 lt!283639 (select (arr!17981 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283640 () Unit!20100)

(assert (=> b!616454 (= lt!283640 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283639 (select (arr!17981 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!616454 e!353472))

(declare-fun res!397201 () Bool)

(assert (=> b!616454 (=> (not res!397201) (not e!353472))))

(assert (=> b!616454 (= res!397201 (arrayContainsKey!0 lt!283639 (select (arr!17981 a!2986) j!136) j!136))))

(declare-fun Unit!20106 () Unit!20100)

(assert (=> b!616454 (= e!353471 Unit!20106)))

(declare-fun b!616455 () Bool)

(declare-fun res!397192 () Bool)

(assert (=> b!616455 (=> (not res!397192) (not e!353463))))

(assert (=> b!616455 (= res!397192 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!616456 () Bool)

(declare-fun e!353465 () Bool)

(assert (=> b!616456 (= e!353465 e!353473)))

(declare-fun res!397205 () Bool)

(assert (=> b!616456 (=> (not res!397205) (not e!353473))))

(assert (=> b!616456 (= res!397205 (and (= lt!283646 (Found!6428 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17981 a!2986) index!984) (select (arr!17981 a!2986) j!136))) (not (= (select (arr!17981 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!616456 (= lt!283646 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17981 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!397198 () Bool)

(declare-fun b!616457 () Bool)

(assert (=> b!616457 (= res!397198 (arrayContainsKey!0 lt!283639 (select (arr!17981 a!2986) j!136) j!136))))

(declare-fun e!353468 () Bool)

(assert (=> b!616457 (=> (not res!397198) (not e!353468))))

(declare-fun e!353462 () Bool)

(assert (=> b!616457 (= e!353462 e!353468)))

(declare-fun b!616458 () Bool)

(declare-fun Unit!20107 () Unit!20100)

(assert (=> b!616458 (= e!353466 Unit!20107)))

(declare-fun b!616459 () Bool)

(assert (=> b!616459 (= e!353474 e!353465)))

(declare-fun res!397190 () Bool)

(assert (=> b!616459 (=> (not res!397190) (not e!353465))))

(assert (=> b!616459 (= res!397190 (= (select (store (arr!17981 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!616459 (= lt!283639 (array!37478 (store (arr!17981 a!2986) i!1108 k!1786) (size!18345 a!2986)))))

(declare-fun b!616460 () Bool)

(assert (=> b!616460 (= e!353468 (arrayContainsKey!0 lt!283639 (select (arr!17981 a!2986) j!136) index!984))))

(declare-fun b!616461 () Bool)

(declare-fun Unit!20108 () Unit!20100)

(assert (=> b!616461 (= e!353466 Unit!20108)))

(declare-fun res!397196 () Bool)

(assert (=> b!616461 (= res!397196 (= (select (store (arr!17981 a!2986) i!1108 k!1786) index!984) (select (arr!17981 a!2986) j!136)))))

(declare-fun e!353476 () Bool)

(assert (=> b!616461 (=> (not res!397196) (not e!353476))))

(assert (=> b!616461 e!353476))

(declare-fun c!69995 () Bool)

(assert (=> b!616461 (= c!69995 (bvslt j!136 index!984))))

(declare-fun lt!283638 () Unit!20100)

(assert (=> b!616461 (= lt!283638 e!353470)))

(declare-fun c!69992 () Bool)

(assert (=> b!616461 (= c!69992 (bvslt index!984 j!136))))

(declare-fun lt!283651 () Unit!20100)

(assert (=> b!616461 (= lt!283651 e!353471)))

(assert (=> b!616461 false))

(declare-fun b!616462 () Bool)

(declare-fun res!397193 () Bool)

(assert (=> b!616462 (= res!397193 (bvsge j!136 index!984))))

(assert (=> b!616462 (=> res!397193 e!353462)))

(assert (=> b!616462 (= e!353476 e!353462)))

(declare-fun b!616463 () Bool)

(declare-fun Unit!20109 () Unit!20100)

(assert (=> b!616463 (= e!353470 Unit!20109)))

(assert (= (and start!56044 res!397191) b!616441))

(assert (= (and b!616441 res!397197) b!616450))

(assert (= (and b!616450 res!397200) b!616439))

(assert (= (and b!616439 res!397199) b!616455))

(assert (= (and b!616455 res!397192) b!616453))

(assert (= (and b!616453 res!397202) b!616444))

(assert (= (and b!616444 res!397203) b!616442))

(assert (= (and b!616442 res!397195) b!616447))

(assert (= (and b!616447 res!397189) b!616459))

(assert (= (and b!616459 res!397190) b!616456))

(assert (= (and b!616456 res!397205) b!616440))

(assert (= (and b!616440 res!397194) b!616445))

(assert (= (and b!616440 c!69993) b!616446))

(assert (= (and b!616440 (not c!69993)) b!616449))

(assert (= (and b!616440 c!69994) b!616461))

(assert (= (and b!616440 (not c!69994)) b!616458))

(assert (= (and b!616461 res!397196) b!616462))

(assert (= (and b!616462 (not res!397193)) b!616457))

(assert (= (and b!616457 res!397198) b!616460))

(assert (= (and b!616461 c!69995) b!616443))

(assert (= (and b!616461 (not c!69995)) b!616463))

(assert (= (and b!616461 c!69992) b!616454))

(assert (= (and b!616461 (not c!69992)) b!616451))

(assert (= (and b!616454 res!397201) b!616448))

(assert (= (and b!616440 (not res!397204)) b!616452))

(declare-fun m!592649 () Bool)

(assert (=> b!616459 m!592649))

(declare-fun m!592651 () Bool)

(assert (=> b!616459 m!592651))

(assert (=> b!616461 m!592649))

(declare-fun m!592653 () Bool)

(assert (=> b!616461 m!592653))

(declare-fun m!592655 () Bool)

(assert (=> b!616461 m!592655))

(declare-fun m!592657 () Bool)

(assert (=> b!616439 m!592657))

(declare-fun m!592659 () Bool)

(assert (=> b!616456 m!592659))

(assert (=> b!616456 m!592655))

(assert (=> b!616456 m!592655))

(declare-fun m!592661 () Bool)

(assert (=> b!616456 m!592661))

(declare-fun m!592663 () Bool)

(assert (=> b!616455 m!592663))

(declare-fun m!592665 () Bool)

(assert (=> b!616442 m!592665))

(declare-fun m!592667 () Bool)

(assert (=> start!56044 m!592667))

(declare-fun m!592669 () Bool)

(assert (=> start!56044 m!592669))

(declare-fun m!592671 () Bool)

(assert (=> b!616440 m!592671))

(declare-fun m!592673 () Bool)

(assert (=> b!616440 m!592673))

(assert (=> b!616440 m!592655))

(declare-fun m!592675 () Bool)

(assert (=> b!616440 m!592675))

(assert (=> b!616440 m!592649))

(assert (=> b!616440 m!592655))

(declare-fun m!592677 () Bool)

(assert (=> b!616440 m!592677))

(declare-fun m!592679 () Bool)

(assert (=> b!616440 m!592679))

(declare-fun m!592681 () Bool)

(assert (=> b!616440 m!592681))

(assert (=> b!616448 m!592655))

(assert (=> b!616448 m!592655))

(declare-fun m!592683 () Bool)

(assert (=> b!616448 m!592683))

(assert (=> b!616454 m!592655))

(declare-fun m!592685 () Bool)

(assert (=> b!616454 m!592685))

(declare-fun m!592687 () Bool)

(assert (=> b!616454 m!592687))

(assert (=> b!616454 m!592655))

(declare-fun m!592689 () Bool)

(assert (=> b!616454 m!592689))

(assert (=> b!616454 m!592655))

(declare-fun m!592691 () Bool)

(assert (=> b!616454 m!592691))

(declare-fun m!592693 () Bool)

(assert (=> b!616454 m!592693))

(assert (=> b!616454 m!592655))

(declare-fun m!592695 () Bool)

(assert (=> b!616454 m!592695))

(declare-fun m!592697 () Bool)

(assert (=> b!616454 m!592697))

(assert (=> b!616454 m!592655))

(declare-fun m!592699 () Bool)

(assert (=> b!616454 m!592699))

(assert (=> b!616457 m!592655))

(assert (=> b!616457 m!592655))

(assert (=> b!616457 m!592689))

(assert (=> b!616450 m!592655))

(assert (=> b!616450 m!592655))

(declare-fun m!592701 () Bool)

(assert (=> b!616450 m!592701))

(assert (=> b!616460 m!592655))

(assert (=> b!616460 m!592655))

(assert (=> b!616460 m!592683))

(assert (=> b!616443 m!592693))

(assert (=> b!616443 m!592655))

(declare-fun m!592703 () Bool)

(assert (=> b!616443 m!592703))

(assert (=> b!616443 m!592655))

(declare-fun m!592705 () Bool)

(assert (=> b!616443 m!592705))

(assert (=> b!616443 m!592697))

(assert (=> b!616443 m!592655))

(declare-fun m!592707 () Bool)

(assert (=> b!616443 m!592707))

(assert (=> b!616443 m!592655))

(declare-fun m!592709 () Bool)

(assert (=> b!616443 m!592709))

(declare-fun m!592711 () Bool)

(assert (=> b!616443 m!592711))

(declare-fun m!592713 () Bool)

(assert (=> b!616453 m!592713))

(assert (=> b!616452 m!592649))

(assert (=> b!616452 m!592653))

(declare-fun m!592715 () Bool)

(assert (=> b!616447 m!592715))

(declare-fun m!592717 () Bool)

(assert (=> b!616444 m!592717))

(push 1)

