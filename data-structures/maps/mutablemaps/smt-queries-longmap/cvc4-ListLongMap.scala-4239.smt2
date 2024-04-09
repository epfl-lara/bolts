; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58558 () Bool)

(assert start!58558)

(declare-fun b!646102 () Bool)

(declare-datatypes ((Unit!21940 0))(
  ( (Unit!21941) )
))
(declare-fun e!370354 () Unit!21940)

(declare-fun Unit!21942 () Unit!21940)

(assert (=> b!646102 (= e!370354 Unit!21942)))

(declare-fun b!646103 () Bool)

(declare-fun res!418722 () Bool)

(declare-fun e!370364 () Bool)

(assert (=> b!646103 (=> (not res!418722) (not e!370364))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!646103 (= res!418722 (validKeyInArray!0 k!1786))))

(declare-fun b!646104 () Bool)

(declare-fun e!370359 () Bool)

(declare-fun e!370361 () Bool)

(assert (=> b!646104 (= e!370359 e!370361)))

(declare-fun res!418713 () Bool)

(assert (=> b!646104 (=> res!418713 e!370361)))

(declare-fun lt!299771 () (_ BitVec 64))

(declare-datatypes ((array!38449 0))(
  ( (array!38450 (arr!18431 (Array (_ BitVec 32) (_ BitVec 64))) (size!18795 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38449)

(declare-fun lt!299770 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!646104 (= res!418713 (or (not (= (select (arr!18431 a!2986) j!136) lt!299770)) (not (= (select (arr!18431 a!2986) j!136) lt!299771))))))

(declare-fun e!370355 () Bool)

(assert (=> b!646104 e!370355))

(declare-fun res!418714 () Bool)

(assert (=> b!646104 (=> (not res!418714) (not e!370355))))

(assert (=> b!646104 (= res!418714 (= lt!299771 (select (arr!18431 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!646104 (= lt!299771 (select (store (arr!18431 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!646105 () Bool)

(declare-fun res!418729 () Bool)

(declare-fun e!370357 () Bool)

(assert (=> b!646105 (=> (not res!418729) (not e!370357))))

(declare-datatypes ((List!12525 0))(
  ( (Nil!12522) (Cons!12521 (h!13566 (_ BitVec 64)) (t!18761 List!12525)) )
))
(declare-fun arrayNoDuplicates!0 (array!38449 (_ BitVec 32) List!12525) Bool)

(assert (=> b!646105 (= res!418729 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12522))))

(declare-fun res!418719 () Bool)

(assert (=> start!58558 (=> (not res!418719) (not e!370364))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58558 (= res!418719 (validMask!0 mask!3053))))

(assert (=> start!58558 e!370364))

(assert (=> start!58558 true))

(declare-fun array_inv!14205 (array!38449) Bool)

(assert (=> start!58558 (array_inv!14205 a!2986)))

(declare-fun b!646106 () Bool)

(declare-fun Unit!21943 () Unit!21940)

(assert (=> b!646106 (= e!370354 Unit!21943)))

(declare-fun lt!299764 () Unit!21940)

(declare-fun lt!299773 () array!38449)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38449 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21940)

(assert (=> b!646106 (= lt!299764 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299773 (select (arr!18431 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38449 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!646106 (arrayContainsKey!0 lt!299773 (select (arr!18431 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299775 () Unit!21940)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38449 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12525) Unit!21940)

(assert (=> b!646106 (= lt!299775 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12522))))

(assert (=> b!646106 (arrayNoDuplicates!0 lt!299773 #b00000000000000000000000000000000 Nil!12522)))

(declare-fun lt!299767 () Unit!21940)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38449 (_ BitVec 32) (_ BitVec 32)) Unit!21940)

(assert (=> b!646106 (= lt!299767 (lemmaNoDuplicateFromThenFromBigger!0 lt!299773 #b00000000000000000000000000000000 j!136))))

(assert (=> b!646106 (arrayNoDuplicates!0 lt!299773 j!136 Nil!12522)))

(declare-fun lt!299772 () Unit!21940)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38449 (_ BitVec 64) (_ BitVec 32) List!12525) Unit!21940)

(assert (=> b!646106 (= lt!299772 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299773 (select (arr!18431 a!2986) j!136) j!136 Nil!12522))))

(assert (=> b!646106 false))

(declare-fun b!646107 () Bool)

(declare-fun e!370363 () Bool)

(declare-datatypes ((SeekEntryResult!6878 0))(
  ( (MissingZero!6878 (index!29849 (_ BitVec 32))) (Found!6878 (index!29850 (_ BitVec 32))) (Intermediate!6878 (undefined!7690 Bool) (index!29851 (_ BitVec 32)) (x!58649 (_ BitVec 32))) (Undefined!6878) (MissingVacant!6878 (index!29852 (_ BitVec 32))) )
))
(declare-fun lt!299776 () SeekEntryResult!6878)

(declare-fun lt!299774 () SeekEntryResult!6878)

(assert (=> b!646107 (= e!370363 (= lt!299776 lt!299774))))

(declare-fun b!646108 () Bool)

(declare-fun e!370356 () Bool)

(assert (=> b!646108 (= e!370356 (not e!370359))))

(declare-fun res!418728 () Bool)

(assert (=> b!646108 (=> res!418728 e!370359)))

(declare-fun lt!299768 () SeekEntryResult!6878)

(assert (=> b!646108 (= res!418728 (not (= lt!299768 (Found!6878 index!984))))))

(declare-fun lt!299765 () Unit!21940)

(declare-fun e!370362 () Unit!21940)

(assert (=> b!646108 (= lt!299765 e!370362)))

(declare-fun c!74062 () Bool)

(assert (=> b!646108 (= c!74062 (= lt!299768 Undefined!6878))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38449 (_ BitVec 32)) SeekEntryResult!6878)

(assert (=> b!646108 (= lt!299768 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299770 lt!299773 mask!3053))))

(assert (=> b!646108 e!370363))

(declare-fun res!418720 () Bool)

(assert (=> b!646108 (=> (not res!418720) (not e!370363))))

(declare-fun lt!299778 () (_ BitVec 32))

(assert (=> b!646108 (= res!418720 (= lt!299774 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299778 vacantSpotIndex!68 lt!299770 lt!299773 mask!3053)))))

(assert (=> b!646108 (= lt!299774 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299778 vacantSpotIndex!68 (select (arr!18431 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!646108 (= lt!299770 (select (store (arr!18431 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!299777 () Unit!21940)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38449 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21940)

(assert (=> b!646108 (= lt!299777 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299778 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!646108 (= lt!299778 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!646109 () Bool)

(declare-fun res!418718 () Bool)

(assert (=> b!646109 (=> (not res!418718) (not e!370364))))

(assert (=> b!646109 (= res!418718 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!646110 () Bool)

(declare-fun e!370352 () Bool)

(assert (=> b!646110 (= e!370352 true)))

(assert (=> b!646110 (arrayContainsKey!0 lt!299773 (select (arr!18431 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299763 () Unit!21940)

(assert (=> b!646110 (= lt!299763 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299773 (select (arr!18431 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!370353 () Bool)

(assert (=> b!646110 e!370353))

(declare-fun res!418716 () Bool)

(assert (=> b!646110 (=> (not res!418716) (not e!370353))))

(assert (=> b!646110 (= res!418716 (arrayContainsKey!0 lt!299773 (select (arr!18431 a!2986) j!136) j!136))))

(declare-fun b!646111 () Bool)

(declare-fun Unit!21944 () Unit!21940)

(assert (=> b!646111 (= e!370362 Unit!21944)))

(assert (=> b!646111 false))

(declare-fun b!646112 () Bool)

(assert (=> b!646112 (= e!370353 (arrayContainsKey!0 lt!299773 (select (arr!18431 a!2986) j!136) index!984))))

(declare-fun b!646113 () Bool)

(declare-fun Unit!21945 () Unit!21940)

(assert (=> b!646113 (= e!370362 Unit!21945)))

(declare-fun b!646114 () Bool)

(declare-fun res!418712 () Bool)

(assert (=> b!646114 (=> (not res!418712) (not e!370364))))

(assert (=> b!646114 (= res!418712 (validKeyInArray!0 (select (arr!18431 a!2986) j!136)))))

(declare-fun b!646115 () Bool)

(assert (=> b!646115 (= e!370364 e!370357)))

(declare-fun res!418715 () Bool)

(assert (=> b!646115 (=> (not res!418715) (not e!370357))))

(declare-fun lt!299766 () SeekEntryResult!6878)

(assert (=> b!646115 (= res!418715 (or (= lt!299766 (MissingZero!6878 i!1108)) (= lt!299766 (MissingVacant!6878 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38449 (_ BitVec 32)) SeekEntryResult!6878)

(assert (=> b!646115 (= lt!299766 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!646116 () Bool)

(declare-fun e!370358 () Bool)

(assert (=> b!646116 (= e!370355 e!370358)))

(declare-fun res!418724 () Bool)

(assert (=> b!646116 (=> res!418724 e!370358)))

(assert (=> b!646116 (= res!418724 (or (not (= (select (arr!18431 a!2986) j!136) lt!299770)) (not (= (select (arr!18431 a!2986) j!136) lt!299771)) (bvsge j!136 index!984)))))

(declare-fun b!646117 () Bool)

(declare-fun res!418725 () Bool)

(assert (=> b!646117 (=> (not res!418725) (not e!370357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38449 (_ BitVec 32)) Bool)

(assert (=> b!646117 (= res!418725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!646118 () Bool)

(declare-fun e!370366 () Bool)

(assert (=> b!646118 (= e!370358 e!370366)))

(declare-fun res!418727 () Bool)

(assert (=> b!646118 (=> (not res!418727) (not e!370366))))

(assert (=> b!646118 (= res!418727 (arrayContainsKey!0 lt!299773 (select (arr!18431 a!2986) j!136) j!136))))

(declare-fun b!646119 () Bool)

(declare-fun e!370360 () Bool)

(assert (=> b!646119 (= e!370357 e!370360)))

(declare-fun res!418717 () Bool)

(assert (=> b!646119 (=> (not res!418717) (not e!370360))))

(assert (=> b!646119 (= res!418717 (= (select (store (arr!18431 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646119 (= lt!299773 (array!38450 (store (arr!18431 a!2986) i!1108 k!1786) (size!18795 a!2986)))))

(declare-fun b!646120 () Bool)

(declare-fun res!418726 () Bool)

(assert (=> b!646120 (=> (not res!418726) (not e!370357))))

(assert (=> b!646120 (= res!418726 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18431 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!646121 () Bool)

(assert (=> b!646121 (= e!370360 e!370356)))

(declare-fun res!418721 () Bool)

(assert (=> b!646121 (=> (not res!418721) (not e!370356))))

(assert (=> b!646121 (= res!418721 (and (= lt!299776 (Found!6878 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18431 a!2986) index!984) (select (arr!18431 a!2986) j!136))) (not (= (select (arr!18431 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!646121 (= lt!299776 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18431 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!646122 () Bool)

(assert (=> b!646122 (= e!370361 e!370352)))

(declare-fun res!418730 () Bool)

(assert (=> b!646122 (=> res!418730 e!370352)))

(assert (=> b!646122 (= res!418730 (bvsge index!984 j!136))))

(declare-fun lt!299769 () Unit!21940)

(assert (=> b!646122 (= lt!299769 e!370354)))

(declare-fun c!74063 () Bool)

(assert (=> b!646122 (= c!74063 (bvslt j!136 index!984))))

(declare-fun b!646123 () Bool)

(declare-fun res!418723 () Bool)

(assert (=> b!646123 (=> (not res!418723) (not e!370364))))

(assert (=> b!646123 (= res!418723 (and (= (size!18795 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18795 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18795 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!646124 () Bool)

(assert (=> b!646124 (= e!370366 (arrayContainsKey!0 lt!299773 (select (arr!18431 a!2986) j!136) index!984))))

(assert (= (and start!58558 res!418719) b!646123))

(assert (= (and b!646123 res!418723) b!646114))

(assert (= (and b!646114 res!418712) b!646103))

(assert (= (and b!646103 res!418722) b!646109))

(assert (= (and b!646109 res!418718) b!646115))

(assert (= (and b!646115 res!418715) b!646117))

(assert (= (and b!646117 res!418725) b!646105))

(assert (= (and b!646105 res!418729) b!646120))

(assert (= (and b!646120 res!418726) b!646119))

(assert (= (and b!646119 res!418717) b!646121))

(assert (= (and b!646121 res!418721) b!646108))

(assert (= (and b!646108 res!418720) b!646107))

(assert (= (and b!646108 c!74062) b!646111))

(assert (= (and b!646108 (not c!74062)) b!646113))

(assert (= (and b!646108 (not res!418728)) b!646104))

(assert (= (and b!646104 res!418714) b!646116))

(assert (= (and b!646116 (not res!418724)) b!646118))

(assert (= (and b!646118 res!418727) b!646124))

(assert (= (and b!646104 (not res!418713)) b!646122))

(assert (= (and b!646122 c!74063) b!646106))

(assert (= (and b!646122 (not c!74063)) b!646102))

(assert (= (and b!646122 (not res!418730)) b!646110))

(assert (= (and b!646110 res!418716) b!646112))

(declare-fun m!619649 () Bool)

(assert (=> b!646119 m!619649))

(declare-fun m!619651 () Bool)

(assert (=> b!646119 m!619651))

(declare-fun m!619653 () Bool)

(assert (=> b!646114 m!619653))

(assert (=> b!646114 m!619653))

(declare-fun m!619655 () Bool)

(assert (=> b!646114 m!619655))

(assert (=> b!646116 m!619653))

(declare-fun m!619657 () Bool)

(assert (=> b!646117 m!619657))

(declare-fun m!619659 () Bool)

(assert (=> b!646109 m!619659))

(declare-fun m!619661 () Bool)

(assert (=> b!646121 m!619661))

(assert (=> b!646121 m!619653))

(assert (=> b!646121 m!619653))

(declare-fun m!619663 () Bool)

(assert (=> b!646121 m!619663))

(assert (=> b!646104 m!619653))

(assert (=> b!646104 m!619649))

(declare-fun m!619665 () Bool)

(assert (=> b!646104 m!619665))

(declare-fun m!619667 () Bool)

(assert (=> b!646105 m!619667))

(assert (=> b!646124 m!619653))

(assert (=> b!646124 m!619653))

(declare-fun m!619669 () Bool)

(assert (=> b!646124 m!619669))

(assert (=> b!646110 m!619653))

(assert (=> b!646110 m!619653))

(declare-fun m!619671 () Bool)

(assert (=> b!646110 m!619671))

(assert (=> b!646110 m!619653))

(declare-fun m!619673 () Bool)

(assert (=> b!646110 m!619673))

(assert (=> b!646110 m!619653))

(declare-fun m!619675 () Bool)

(assert (=> b!646110 m!619675))

(declare-fun m!619677 () Bool)

(assert (=> b!646108 m!619677))

(declare-fun m!619679 () Bool)

(assert (=> b!646108 m!619679))

(assert (=> b!646108 m!619653))

(assert (=> b!646108 m!619653))

(declare-fun m!619681 () Bool)

(assert (=> b!646108 m!619681))

(declare-fun m!619683 () Bool)

(assert (=> b!646108 m!619683))

(declare-fun m!619685 () Bool)

(assert (=> b!646108 m!619685))

(declare-fun m!619687 () Bool)

(assert (=> b!646108 m!619687))

(assert (=> b!646108 m!619649))

(assert (=> b!646118 m!619653))

(assert (=> b!646118 m!619653))

(assert (=> b!646118 m!619675))

(assert (=> b!646112 m!619653))

(assert (=> b!646112 m!619653))

(assert (=> b!646112 m!619669))

(assert (=> b!646106 m!619653))

(declare-fun m!619689 () Bool)

(assert (=> b!646106 m!619689))

(assert (=> b!646106 m!619653))

(declare-fun m!619691 () Bool)

(assert (=> b!646106 m!619691))

(assert (=> b!646106 m!619653))

(declare-fun m!619693 () Bool)

(assert (=> b!646106 m!619693))

(declare-fun m!619695 () Bool)

(assert (=> b!646106 m!619695))

(assert (=> b!646106 m!619653))

(declare-fun m!619697 () Bool)

(assert (=> b!646106 m!619697))

(declare-fun m!619699 () Bool)

(assert (=> b!646106 m!619699))

(declare-fun m!619701 () Bool)

(assert (=> b!646106 m!619701))

(declare-fun m!619703 () Bool)

(assert (=> b!646120 m!619703))

(declare-fun m!619705 () Bool)

(assert (=> b!646115 m!619705))

(declare-fun m!619707 () Bool)

(assert (=> start!58558 m!619707))

(declare-fun m!619709 () Bool)

(assert (=> start!58558 m!619709))

(declare-fun m!619711 () Bool)

(assert (=> b!646103 m!619711))

(push 1)

