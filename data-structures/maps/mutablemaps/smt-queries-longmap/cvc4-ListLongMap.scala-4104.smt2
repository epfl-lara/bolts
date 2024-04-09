; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56134 () Bool)

(assert start!56134)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!619814 () Bool)

(declare-datatypes ((array!37567 0))(
  ( (array!37568 (arr!18026 (Array (_ BitVec 32) (_ BitVec 64))) (size!18390 (_ BitVec 32))) )
))
(declare-fun lt!286337 () array!37567)

(declare-fun a!2986 () array!37567)

(declare-fun res!399500 () Bool)

(declare-fun arrayContainsKey!0 (array!37567 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!619814 (= res!399500 (arrayContainsKey!0 lt!286337 (select (arr!18026 a!2986) j!136) j!136))))

(declare-fun e!355498 () Bool)

(assert (=> b!619814 (=> (not res!399500) (not e!355498))))

(declare-fun e!355490 () Bool)

(assert (=> b!619814 (= e!355490 e!355498)))

(declare-fun res!399492 () Bool)

(declare-fun e!355493 () Bool)

(assert (=> start!56134 (=> (not res!399492) (not e!355493))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56134 (= res!399492 (validMask!0 mask!3053))))

(assert (=> start!56134 e!355493))

(assert (=> start!56134 true))

(declare-fun array_inv!13800 (array!37567) Bool)

(assert (=> start!56134 (array_inv!13800 a!2986)))

(declare-fun b!619815 () Bool)

(declare-datatypes ((Unit!20550 0))(
  ( (Unit!20551) )
))
(declare-fun e!355501 () Unit!20550)

(declare-fun Unit!20552 () Unit!20550)

(assert (=> b!619815 (= e!355501 Unit!20552)))

(declare-fun b!619816 () Bool)

(declare-fun res!399499 () Bool)

(declare-fun e!355495 () Bool)

(assert (=> b!619816 (=> (not res!399499) (not e!355495))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37567 (_ BitVec 32)) Bool)

(assert (=> b!619816 (= res!399499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!619817 () Bool)

(declare-fun res!399485 () Bool)

(assert (=> b!619817 (=> (not res!399485) (not e!355493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!619817 (= res!399485 (validKeyInArray!0 (select (arr!18026 a!2986) j!136)))))

(declare-fun b!619818 () Bool)

(declare-fun e!355499 () Unit!20550)

(declare-fun Unit!20553 () Unit!20550)

(assert (=> b!619818 (= e!355499 Unit!20553)))

(declare-fun b!619819 () Bool)

(declare-fun e!355494 () Bool)

(declare-fun e!355488 () Bool)

(assert (=> b!619819 (= e!355494 e!355488)))

(declare-fun res!399493 () Bool)

(assert (=> b!619819 (=> (not res!399493) (not e!355488))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6473 0))(
  ( (MissingZero!6473 (index!28175 (_ BitVec 32))) (Found!6473 (index!28176 (_ BitVec 32))) (Intermediate!6473 (undefined!7285 Bool) (index!28177 (_ BitVec 32)) (x!56978 (_ BitVec 32))) (Undefined!6473) (MissingVacant!6473 (index!28178 (_ BitVec 32))) )
))
(declare-fun lt!286353 () SeekEntryResult!6473)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!619819 (= res!399493 (and (= lt!286353 (Found!6473 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18026 a!2986) index!984) (select (arr!18026 a!2986) j!136))) (not (= (select (arr!18026 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37567 (_ BitVec 32)) SeekEntryResult!6473)

(assert (=> b!619819 (= lt!286353 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18026 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!619820 () Bool)

(declare-fun e!355496 () Bool)

(assert (=> b!619820 (= e!355496 true)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!619820 (= (select (store (arr!18026 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!619821 () Bool)

(assert (=> b!619821 false))

(declare-fun lt!286354 () Unit!20550)

(declare-datatypes ((List!12120 0))(
  ( (Nil!12117) (Cons!12116 (h!13161 (_ BitVec 64)) (t!18356 List!12120)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37567 (_ BitVec 64) (_ BitVec 32) List!12120) Unit!20550)

(assert (=> b!619821 (= lt!286354 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286337 (select (arr!18026 a!2986) j!136) j!136 Nil!12117))))

(declare-fun arrayNoDuplicates!0 (array!37567 (_ BitVec 32) List!12120) Bool)

(assert (=> b!619821 (arrayNoDuplicates!0 lt!286337 j!136 Nil!12117)))

(declare-fun lt!286350 () Unit!20550)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37567 (_ BitVec 32) (_ BitVec 32)) Unit!20550)

(assert (=> b!619821 (= lt!286350 (lemmaNoDuplicateFromThenFromBigger!0 lt!286337 #b00000000000000000000000000000000 j!136))))

(assert (=> b!619821 (arrayNoDuplicates!0 lt!286337 #b00000000000000000000000000000000 Nil!12117)))

(declare-fun lt!286347 () Unit!20550)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37567 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12120) Unit!20550)

(assert (=> b!619821 (= lt!286347 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12117))))

(assert (=> b!619821 (arrayContainsKey!0 lt!286337 (select (arr!18026 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286343 () Unit!20550)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37567 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20550)

(assert (=> b!619821 (= lt!286343 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286337 (select (arr!18026 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!355487 () Unit!20550)

(declare-fun Unit!20554 () Unit!20550)

(assert (=> b!619821 (= e!355487 Unit!20554)))

(declare-fun b!619822 () Bool)

(assert (=> b!619822 (= e!355488 (not e!355496))))

(declare-fun res!399494 () Bool)

(assert (=> b!619822 (=> res!399494 e!355496)))

(declare-fun lt!286340 () SeekEntryResult!6473)

(assert (=> b!619822 (= res!399494 (not (= lt!286340 (MissingVacant!6473 vacantSpotIndex!68))))))

(declare-fun lt!286341 () Unit!20550)

(assert (=> b!619822 (= lt!286341 e!355501)))

(declare-fun c!70533 () Bool)

(assert (=> b!619822 (= c!70533 (= lt!286340 (Found!6473 index!984)))))

(declare-fun lt!286338 () Unit!20550)

(assert (=> b!619822 (= lt!286338 e!355499)))

(declare-fun c!70532 () Bool)

(assert (=> b!619822 (= c!70532 (= lt!286340 Undefined!6473))))

(declare-fun lt!286356 () (_ BitVec 64))

(assert (=> b!619822 (= lt!286340 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286356 lt!286337 mask!3053))))

(declare-fun e!355497 () Bool)

(assert (=> b!619822 e!355497))

(declare-fun res!399484 () Bool)

(assert (=> b!619822 (=> (not res!399484) (not e!355497))))

(declare-fun lt!286351 () SeekEntryResult!6473)

(declare-fun lt!286352 () (_ BitVec 32))

(assert (=> b!619822 (= res!399484 (= lt!286351 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286352 vacantSpotIndex!68 lt!286356 lt!286337 mask!3053)))))

(assert (=> b!619822 (= lt!286351 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286352 vacantSpotIndex!68 (select (arr!18026 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!619822 (= lt!286356 (select (store (arr!18026 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!286339 () Unit!20550)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37567 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20550)

(assert (=> b!619822 (= lt!286339 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286352 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!619822 (= lt!286352 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!619823 () Bool)

(assert (=> b!619823 false))

(declare-fun lt!286344 () Unit!20550)

(assert (=> b!619823 (= lt!286344 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286337 (select (arr!18026 a!2986) j!136) index!984 Nil!12117))))

(assert (=> b!619823 (arrayNoDuplicates!0 lt!286337 index!984 Nil!12117)))

(declare-fun lt!286342 () Unit!20550)

(assert (=> b!619823 (= lt!286342 (lemmaNoDuplicateFromThenFromBigger!0 lt!286337 #b00000000000000000000000000000000 index!984))))

(assert (=> b!619823 (arrayNoDuplicates!0 lt!286337 #b00000000000000000000000000000000 Nil!12117)))

(declare-fun lt!286348 () Unit!20550)

(assert (=> b!619823 (= lt!286348 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12117))))

(assert (=> b!619823 (arrayContainsKey!0 lt!286337 (select (arr!18026 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286345 () Unit!20550)

(assert (=> b!619823 (= lt!286345 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286337 (select (arr!18026 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!355489 () Bool)

(assert (=> b!619823 e!355489))

(declare-fun res!399491 () Bool)

(assert (=> b!619823 (=> (not res!399491) (not e!355489))))

(assert (=> b!619823 (= res!399491 (arrayContainsKey!0 lt!286337 (select (arr!18026 a!2986) j!136) j!136))))

(declare-fun e!355492 () Unit!20550)

(declare-fun Unit!20555 () Unit!20550)

(assert (=> b!619823 (= e!355492 Unit!20555)))

(declare-fun b!619824 () Bool)

(declare-fun Unit!20556 () Unit!20550)

(assert (=> b!619824 (= e!355487 Unit!20556)))

(declare-fun b!619825 () Bool)

(declare-fun Unit!20557 () Unit!20550)

(assert (=> b!619825 (= e!355499 Unit!20557)))

(assert (=> b!619825 false))

(declare-fun b!619826 () Bool)

(assert (=> b!619826 (= e!355498 (arrayContainsKey!0 lt!286337 (select (arr!18026 a!2986) j!136) index!984))))

(declare-fun b!619827 () Bool)

(assert (=> b!619827 (= e!355497 (= lt!286353 lt!286351))))

(declare-fun b!619828 () Bool)

(assert (=> b!619828 (= e!355489 (arrayContainsKey!0 lt!286337 (select (arr!18026 a!2986) j!136) index!984))))

(declare-fun b!619829 () Bool)

(declare-fun res!399498 () Bool)

(assert (=> b!619829 (=> (not res!399498) (not e!355493))))

(assert (=> b!619829 (= res!399498 (and (= (size!18390 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18390 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18390 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!619830 () Bool)

(declare-fun res!399496 () Bool)

(assert (=> b!619830 (=> (not res!399496) (not e!355493))))

(assert (=> b!619830 (= res!399496 (validKeyInArray!0 k!1786))))

(declare-fun b!619831 () Bool)

(declare-fun res!399486 () Bool)

(assert (=> b!619831 (=> (not res!399486) (not e!355495))))

(assert (=> b!619831 (= res!399486 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18026 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!619832 () Bool)

(declare-fun Unit!20558 () Unit!20550)

(assert (=> b!619832 (= e!355492 Unit!20558)))

(declare-fun b!619833 () Bool)

(declare-fun Unit!20559 () Unit!20550)

(assert (=> b!619833 (= e!355501 Unit!20559)))

(declare-fun res!399490 () Bool)

(assert (=> b!619833 (= res!399490 (= (select (store (arr!18026 a!2986) i!1108 k!1786) index!984) (select (arr!18026 a!2986) j!136)))))

(declare-fun e!355500 () Bool)

(assert (=> b!619833 (=> (not res!399490) (not e!355500))))

(assert (=> b!619833 e!355500))

(declare-fun c!70535 () Bool)

(assert (=> b!619833 (= c!70535 (bvslt j!136 index!984))))

(declare-fun lt!286349 () Unit!20550)

(assert (=> b!619833 (= lt!286349 e!355487)))

(declare-fun c!70534 () Bool)

(assert (=> b!619833 (= c!70534 (bvslt index!984 j!136))))

(declare-fun lt!286346 () Unit!20550)

(assert (=> b!619833 (= lt!286346 e!355492)))

(assert (=> b!619833 false))

(declare-fun b!619834 () Bool)

(declare-fun res!399497 () Bool)

(assert (=> b!619834 (=> (not res!399497) (not e!355495))))

(assert (=> b!619834 (= res!399497 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12117))))

(declare-fun b!619835 () Bool)

(assert (=> b!619835 (= e!355495 e!355494)))

(declare-fun res!399495 () Bool)

(assert (=> b!619835 (=> (not res!399495) (not e!355494))))

(assert (=> b!619835 (= res!399495 (= (select (store (arr!18026 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!619835 (= lt!286337 (array!37568 (store (arr!18026 a!2986) i!1108 k!1786) (size!18390 a!2986)))))

(declare-fun b!619836 () Bool)

(assert (=> b!619836 (= e!355493 e!355495)))

(declare-fun res!399487 () Bool)

(assert (=> b!619836 (=> (not res!399487) (not e!355495))))

(declare-fun lt!286355 () SeekEntryResult!6473)

(assert (=> b!619836 (= res!399487 (or (= lt!286355 (MissingZero!6473 i!1108)) (= lt!286355 (MissingVacant!6473 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37567 (_ BitVec 32)) SeekEntryResult!6473)

(assert (=> b!619836 (= lt!286355 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!619837 () Bool)

(declare-fun res!399489 () Bool)

(assert (=> b!619837 (= res!399489 (bvsge j!136 index!984))))

(assert (=> b!619837 (=> res!399489 e!355490)))

(assert (=> b!619837 (= e!355500 e!355490)))

(declare-fun b!619838 () Bool)

(declare-fun res!399488 () Bool)

(assert (=> b!619838 (=> (not res!399488) (not e!355493))))

(assert (=> b!619838 (= res!399488 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56134 res!399492) b!619829))

(assert (= (and b!619829 res!399498) b!619817))

(assert (= (and b!619817 res!399485) b!619830))

(assert (= (and b!619830 res!399496) b!619838))

(assert (= (and b!619838 res!399488) b!619836))

(assert (= (and b!619836 res!399487) b!619816))

(assert (= (and b!619816 res!399499) b!619834))

(assert (= (and b!619834 res!399497) b!619831))

(assert (= (and b!619831 res!399486) b!619835))

(assert (= (and b!619835 res!399495) b!619819))

(assert (= (and b!619819 res!399493) b!619822))

(assert (= (and b!619822 res!399484) b!619827))

(assert (= (and b!619822 c!70532) b!619825))

(assert (= (and b!619822 (not c!70532)) b!619818))

(assert (= (and b!619822 c!70533) b!619833))

(assert (= (and b!619822 (not c!70533)) b!619815))

(assert (= (and b!619833 res!399490) b!619837))

(assert (= (and b!619837 (not res!399489)) b!619814))

(assert (= (and b!619814 res!399500) b!619826))

(assert (= (and b!619833 c!70535) b!619821))

(assert (= (and b!619833 (not c!70535)) b!619824))

(assert (= (and b!619833 c!70534) b!619823))

(assert (= (and b!619833 (not c!70534)) b!619832))

(assert (= (and b!619823 res!399491) b!619828))

(assert (= (and b!619822 (not res!399494)) b!619820))

(declare-fun m!595799 () Bool)

(assert (=> b!619836 m!595799))

(declare-fun m!595801 () Bool)

(assert (=> b!619831 m!595801))

(declare-fun m!595803 () Bool)

(assert (=> b!619822 m!595803))

(declare-fun m!595805 () Bool)

(assert (=> b!619822 m!595805))

(assert (=> b!619822 m!595805))

(declare-fun m!595807 () Bool)

(assert (=> b!619822 m!595807))

(declare-fun m!595809 () Bool)

(assert (=> b!619822 m!595809))

(declare-fun m!595811 () Bool)

(assert (=> b!619822 m!595811))

(declare-fun m!595813 () Bool)

(assert (=> b!619822 m!595813))

(declare-fun m!595815 () Bool)

(assert (=> b!619822 m!595815))

(declare-fun m!595817 () Bool)

(assert (=> b!619822 m!595817))

(declare-fun m!595819 () Bool)

(assert (=> start!56134 m!595819))

(declare-fun m!595821 () Bool)

(assert (=> start!56134 m!595821))

(declare-fun m!595823 () Bool)

(assert (=> b!619821 m!595823))

(assert (=> b!619821 m!595805))

(declare-fun m!595825 () Bool)

(assert (=> b!619821 m!595825))

(assert (=> b!619821 m!595805))

(declare-fun m!595827 () Bool)

(assert (=> b!619821 m!595827))

(declare-fun m!595829 () Bool)

(assert (=> b!619821 m!595829))

(declare-fun m!595831 () Bool)

(assert (=> b!619821 m!595831))

(assert (=> b!619821 m!595805))

(declare-fun m!595833 () Bool)

(assert (=> b!619821 m!595833))

(assert (=> b!619821 m!595805))

(declare-fun m!595835 () Bool)

(assert (=> b!619821 m!595835))

(declare-fun m!595837 () Bool)

(assert (=> b!619830 m!595837))

(assert (=> b!619817 m!595805))

(assert (=> b!619817 m!595805))

(declare-fun m!595839 () Bool)

(assert (=> b!619817 m!595839))

(assert (=> b!619835 m!595809))

(declare-fun m!595841 () Bool)

(assert (=> b!619835 m!595841))

(assert (=> b!619814 m!595805))

(assert (=> b!619814 m!595805))

(declare-fun m!595843 () Bool)

(assert (=> b!619814 m!595843))

(assert (=> b!619828 m!595805))

(assert (=> b!619828 m!595805))

(declare-fun m!595845 () Bool)

(assert (=> b!619828 m!595845))

(assert (=> b!619826 m!595805))

(assert (=> b!619826 m!595805))

(assert (=> b!619826 m!595845))

(declare-fun m!595847 () Bool)

(assert (=> b!619834 m!595847))

(assert (=> b!619820 m!595809))

(declare-fun m!595849 () Bool)

(assert (=> b!619820 m!595849))

(assert (=> b!619833 m!595809))

(assert (=> b!619833 m!595849))

(assert (=> b!619833 m!595805))

(declare-fun m!595851 () Bool)

(assert (=> b!619838 m!595851))

(assert (=> b!619823 m!595805))

(assert (=> b!619823 m!595843))

(assert (=> b!619823 m!595805))

(declare-fun m!595853 () Bool)

(assert (=> b!619823 m!595853))

(assert (=> b!619823 m!595805))

(declare-fun m!595855 () Bool)

(assert (=> b!619823 m!595855))

(assert (=> b!619823 m!595805))

(declare-fun m!595857 () Bool)

(assert (=> b!619823 m!595857))

(assert (=> b!619823 m!595829))

(declare-fun m!595859 () Bool)

(assert (=> b!619823 m!595859))

(assert (=> b!619823 m!595831))

(assert (=> b!619823 m!595805))

(declare-fun m!595861 () Bool)

(assert (=> b!619823 m!595861))

(declare-fun m!595863 () Bool)

(assert (=> b!619816 m!595863))

(declare-fun m!595865 () Bool)

(assert (=> b!619819 m!595865))

(assert (=> b!619819 m!595805))

(assert (=> b!619819 m!595805))

(declare-fun m!595867 () Bool)

(assert (=> b!619819 m!595867))

(push 1)

