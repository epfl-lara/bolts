; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56188 () Bool)

(assert start!56188)

(declare-fun b!621759 () Bool)

(declare-fun res!400790 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!621759 (= res!400790 (bvsge j!136 index!984))))

(declare-fun e!356634 () Bool)

(assert (=> b!621759 (=> res!400790 e!356634)))

(declare-fun e!356624 () Bool)

(assert (=> b!621759 (= e!356624 e!356634)))

(declare-fun b!621760 () Bool)

(declare-fun res!400787 () Bool)

(declare-fun e!356629 () Bool)

(assert (=> b!621760 (=> (not res!400787) (not e!356629))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37621 0))(
  ( (array!37622 (arr!18053 (Array (_ BitVec 32) (_ BitVec 64))) (size!18417 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37621)

(assert (=> b!621760 (= res!400787 (and (= (size!18417 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18417 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18417 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!621761 () Bool)

(declare-fun res!400795 () Bool)

(assert (=> b!621761 (=> (not res!400795) (not e!356629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!621761 (= res!400795 (validKeyInArray!0 (select (arr!18053 a!2986) j!136)))))

(declare-fun b!621762 () Bool)

(declare-fun res!400783 () Bool)

(declare-fun e!356623 () Bool)

(assert (=> b!621762 (=> (not res!400783) (not e!356623))))

(declare-datatypes ((List!12147 0))(
  ( (Nil!12144) (Cons!12143 (h!13188 (_ BitVec 64)) (t!18383 List!12147)) )
))
(declare-fun arrayNoDuplicates!0 (array!37621 (_ BitVec 32) List!12147) Bool)

(assert (=> b!621762 (= res!400783 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12144))))

(declare-fun b!621763 () Bool)

(assert (=> b!621763 (= e!356629 e!356623)))

(declare-fun res!400793 () Bool)

(assert (=> b!621763 (=> (not res!400793) (not e!356623))))

(declare-datatypes ((SeekEntryResult!6500 0))(
  ( (MissingZero!6500 (index!28283 (_ BitVec 32))) (Found!6500 (index!28284 (_ BitVec 32))) (Intermediate!6500 (undefined!7312 Bool) (index!28285 (_ BitVec 32)) (x!57077 (_ BitVec 32))) (Undefined!6500) (MissingVacant!6500 (index!28286 (_ BitVec 32))) )
))
(declare-fun lt!287963 () SeekEntryResult!6500)

(assert (=> b!621763 (= res!400793 (or (= lt!287963 (MissingZero!6500 i!1108)) (= lt!287963 (MissingVacant!6500 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37621 (_ BitVec 32)) SeekEntryResult!6500)

(assert (=> b!621763 (= lt!287963 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!621764 () Bool)

(declare-datatypes ((Unit!20820 0))(
  ( (Unit!20821) )
))
(declare-fun e!356626 () Unit!20820)

(declare-fun Unit!20822 () Unit!20820)

(assert (=> b!621764 (= e!356626 Unit!20822)))

(declare-fun b!621765 () Bool)

(declare-fun e!356632 () Unit!20820)

(declare-fun Unit!20823 () Unit!20820)

(assert (=> b!621765 (= e!356632 Unit!20823)))

(declare-fun b!621766 () Bool)

(declare-fun Unit!20824 () Unit!20820)

(assert (=> b!621766 (= e!356632 Unit!20824)))

(declare-fun res!400788 () Bool)

(assert (=> b!621766 (= res!400788 (= (select (store (arr!18053 a!2986) i!1108 k!1786) index!984) (select (arr!18053 a!2986) j!136)))))

(assert (=> b!621766 (=> (not res!400788) (not e!356624))))

(assert (=> b!621766 e!356624))

(declare-fun c!70857 () Bool)

(assert (=> b!621766 (= c!70857 (bvslt j!136 index!984))))

(declare-fun lt!287958 () Unit!20820)

(declare-fun e!356630 () Unit!20820)

(assert (=> b!621766 (= lt!287958 e!356630)))

(declare-fun c!70856 () Bool)

(assert (=> b!621766 (= c!70856 (bvslt index!984 j!136))))

(declare-fun lt!287975 () Unit!20820)

(assert (=> b!621766 (= lt!287975 e!356626)))

(assert (=> b!621766 false))

(declare-fun lt!287960 () array!37621)

(declare-fun b!621767 () Bool)

(declare-fun e!356628 () Bool)

(declare-fun arrayContainsKey!0 (array!37621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!621767 (= e!356628 (arrayContainsKey!0 lt!287960 (select (arr!18053 a!2986) j!136) index!984))))

(declare-fun b!621768 () Bool)

(declare-fun e!356633 () Unit!20820)

(declare-fun Unit!20825 () Unit!20820)

(assert (=> b!621768 (= e!356633 Unit!20825)))

(assert (=> b!621768 false))

(declare-fun b!621769 () Bool)

(declare-fun e!356627 () Bool)

(declare-fun e!356635 () Bool)

(assert (=> b!621769 (= e!356627 e!356635)))

(declare-fun res!400791 () Bool)

(assert (=> b!621769 (=> (not res!400791) (not e!356635))))

(declare-fun lt!287972 () SeekEntryResult!6500)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!621769 (= res!400791 (and (= lt!287972 (Found!6500 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18053 a!2986) index!984) (select (arr!18053 a!2986) j!136))) (not (= (select (arr!18053 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37621 (_ BitVec 32)) SeekEntryResult!6500)

(assert (=> b!621769 (= lt!287972 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18053 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!621770 () Bool)

(assert (=> b!621770 (= e!356623 e!356627)))

(declare-fun res!400794 () Bool)

(assert (=> b!621770 (=> (not res!400794) (not e!356627))))

(assert (=> b!621770 (= res!400794 (= (select (store (arr!18053 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!621770 (= lt!287960 (array!37622 (store (arr!18053 a!2986) i!1108 k!1786) (size!18417 a!2986)))))

(declare-fun b!621771 () Bool)

(assert (=> b!621771 false))

(declare-fun lt!287974 () Unit!20820)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37621 (_ BitVec 64) (_ BitVec 32) List!12147) Unit!20820)

(assert (=> b!621771 (= lt!287974 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287960 (select (arr!18053 a!2986) j!136) index!984 Nil!12144))))

(assert (=> b!621771 (arrayNoDuplicates!0 lt!287960 index!984 Nil!12144)))

(declare-fun lt!287976 () Unit!20820)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37621 (_ BitVec 32) (_ BitVec 32)) Unit!20820)

(assert (=> b!621771 (= lt!287976 (lemmaNoDuplicateFromThenFromBigger!0 lt!287960 #b00000000000000000000000000000000 index!984))))

(assert (=> b!621771 (arrayNoDuplicates!0 lt!287960 #b00000000000000000000000000000000 Nil!12144)))

(declare-fun lt!287966 () Unit!20820)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37621 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12147) Unit!20820)

(assert (=> b!621771 (= lt!287966 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12144))))

(assert (=> b!621771 (arrayContainsKey!0 lt!287960 (select (arr!18053 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287962 () Unit!20820)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37621 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20820)

(assert (=> b!621771 (= lt!287962 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287960 (select (arr!18053 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!621771 e!356628))

(declare-fun res!400786 () Bool)

(assert (=> b!621771 (=> (not res!400786) (not e!356628))))

(assert (=> b!621771 (= res!400786 (arrayContainsKey!0 lt!287960 (select (arr!18053 a!2986) j!136) j!136))))

(declare-fun Unit!20826 () Unit!20820)

(assert (=> b!621771 (= e!356626 Unit!20826)))

(declare-fun res!400789 () Bool)

(assert (=> start!56188 (=> (not res!400789) (not e!356629))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56188 (= res!400789 (validMask!0 mask!3053))))

(assert (=> start!56188 e!356629))

(assert (=> start!56188 true))

(declare-fun array_inv!13827 (array!37621) Bool)

(assert (=> start!56188 (array_inv!13827 a!2986)))

(declare-fun b!621772 () Bool)

(declare-fun Unit!20827 () Unit!20820)

(assert (=> b!621772 (= e!356630 Unit!20827)))

(declare-fun b!621773 () Bool)

(assert (=> b!621773 (= e!356635 (not true))))

(declare-fun lt!287959 () Unit!20820)

(assert (=> b!621773 (= lt!287959 e!356632)))

(declare-fun c!70859 () Bool)

(declare-fun lt!287968 () SeekEntryResult!6500)

(assert (=> b!621773 (= c!70859 (= lt!287968 (Found!6500 index!984)))))

(declare-fun lt!287973 () Unit!20820)

(assert (=> b!621773 (= lt!287973 e!356633)))

(declare-fun c!70858 () Bool)

(assert (=> b!621773 (= c!70858 (= lt!287968 Undefined!6500))))

(declare-fun lt!287964 () (_ BitVec 64))

(assert (=> b!621773 (= lt!287968 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287964 lt!287960 mask!3053))))

(declare-fun e!356625 () Bool)

(assert (=> b!621773 e!356625))

(declare-fun res!400785 () Bool)

(assert (=> b!621773 (=> (not res!400785) (not e!356625))))

(declare-fun lt!287965 () (_ BitVec 32))

(declare-fun lt!287967 () SeekEntryResult!6500)

(assert (=> b!621773 (= res!400785 (= lt!287967 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287965 vacantSpotIndex!68 lt!287964 lt!287960 mask!3053)))))

(assert (=> b!621773 (= lt!287967 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287965 vacantSpotIndex!68 (select (arr!18053 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!621773 (= lt!287964 (select (store (arr!18053 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!287971 () Unit!20820)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37621 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20820)

(assert (=> b!621773 (= lt!287971 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287965 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!621773 (= lt!287965 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!621774 () Bool)

(declare-fun res!400781 () Bool)

(assert (=> b!621774 (= res!400781 (arrayContainsKey!0 lt!287960 (select (arr!18053 a!2986) j!136) j!136))))

(declare-fun e!356622 () Bool)

(assert (=> b!621774 (=> (not res!400781) (not e!356622))))

(assert (=> b!621774 (= e!356634 e!356622)))

(declare-fun b!621775 () Bool)

(declare-fun res!400796 () Bool)

(assert (=> b!621775 (=> (not res!400796) (not e!356629))))

(assert (=> b!621775 (= res!400796 (validKeyInArray!0 k!1786))))

(declare-fun b!621776 () Bool)

(declare-fun Unit!20828 () Unit!20820)

(assert (=> b!621776 (= e!356633 Unit!20828)))

(declare-fun b!621777 () Bool)

(assert (=> b!621777 (= e!356625 (= lt!287972 lt!287967))))

(declare-fun b!621778 () Bool)

(assert (=> b!621778 (= e!356622 (arrayContainsKey!0 lt!287960 (select (arr!18053 a!2986) j!136) index!984))))

(declare-fun b!621779 () Bool)

(assert (=> b!621779 false))

(declare-fun lt!287957 () Unit!20820)

(assert (=> b!621779 (= lt!287957 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287960 (select (arr!18053 a!2986) j!136) j!136 Nil!12144))))

(assert (=> b!621779 (arrayNoDuplicates!0 lt!287960 j!136 Nil!12144)))

(declare-fun lt!287969 () Unit!20820)

(assert (=> b!621779 (= lt!287969 (lemmaNoDuplicateFromThenFromBigger!0 lt!287960 #b00000000000000000000000000000000 j!136))))

(assert (=> b!621779 (arrayNoDuplicates!0 lt!287960 #b00000000000000000000000000000000 Nil!12144)))

(declare-fun lt!287961 () Unit!20820)

(assert (=> b!621779 (= lt!287961 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12144))))

(assert (=> b!621779 (arrayContainsKey!0 lt!287960 (select (arr!18053 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287970 () Unit!20820)

(assert (=> b!621779 (= lt!287970 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287960 (select (arr!18053 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20829 () Unit!20820)

(assert (=> b!621779 (= e!356630 Unit!20829)))

(declare-fun b!621780 () Bool)

(declare-fun res!400782 () Bool)

(assert (=> b!621780 (=> (not res!400782) (not e!356623))))

(assert (=> b!621780 (= res!400782 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18053 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!621781 () Bool)

(declare-fun res!400784 () Bool)

(assert (=> b!621781 (=> (not res!400784) (not e!356623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37621 (_ BitVec 32)) Bool)

(assert (=> b!621781 (= res!400784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!621782 () Bool)

(declare-fun res!400792 () Bool)

(assert (=> b!621782 (=> (not res!400792) (not e!356629))))

(assert (=> b!621782 (= res!400792 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56188 res!400789) b!621760))

(assert (= (and b!621760 res!400787) b!621761))

(assert (= (and b!621761 res!400795) b!621775))

(assert (= (and b!621775 res!400796) b!621782))

(assert (= (and b!621782 res!400792) b!621763))

(assert (= (and b!621763 res!400793) b!621781))

(assert (= (and b!621781 res!400784) b!621762))

(assert (= (and b!621762 res!400783) b!621780))

(assert (= (and b!621780 res!400782) b!621770))

(assert (= (and b!621770 res!400794) b!621769))

(assert (= (and b!621769 res!400791) b!621773))

(assert (= (and b!621773 res!400785) b!621777))

(assert (= (and b!621773 c!70858) b!621768))

(assert (= (and b!621773 (not c!70858)) b!621776))

(assert (= (and b!621773 c!70859) b!621766))

(assert (= (and b!621773 (not c!70859)) b!621765))

(assert (= (and b!621766 res!400788) b!621759))

(assert (= (and b!621759 (not res!400790)) b!621774))

(assert (= (and b!621774 res!400781) b!621778))

(assert (= (and b!621766 c!70857) b!621779))

(assert (= (and b!621766 (not c!70857)) b!621772))

(assert (= (and b!621766 c!70856) b!621771))

(assert (= (and b!621766 (not c!70856)) b!621764))

(assert (= (and b!621771 res!400786) b!621767))

(declare-fun m!597689 () Bool)

(assert (=> b!621771 m!597689))

(declare-fun m!597691 () Bool)

(assert (=> b!621771 m!597691))

(assert (=> b!621771 m!597689))

(declare-fun m!597693 () Bool)

(assert (=> b!621771 m!597693))

(declare-fun m!597695 () Bool)

(assert (=> b!621771 m!597695))

(assert (=> b!621771 m!597689))

(declare-fun m!597697 () Bool)

(assert (=> b!621771 m!597697))

(declare-fun m!597699 () Bool)

(assert (=> b!621771 m!597699))

(assert (=> b!621771 m!597689))

(declare-fun m!597701 () Bool)

(assert (=> b!621771 m!597701))

(assert (=> b!621771 m!597689))

(declare-fun m!597703 () Bool)

(assert (=> b!621771 m!597703))

(declare-fun m!597705 () Bool)

(assert (=> b!621771 m!597705))

(assert (=> b!621761 m!597689))

(assert (=> b!621761 m!597689))

(declare-fun m!597707 () Bool)

(assert (=> b!621761 m!597707))

(declare-fun m!597709 () Bool)

(assert (=> b!621769 m!597709))

(assert (=> b!621769 m!597689))

(assert (=> b!621769 m!597689))

(declare-fun m!597711 () Bool)

(assert (=> b!621769 m!597711))

(declare-fun m!597713 () Bool)

(assert (=> b!621763 m!597713))

(declare-fun m!597715 () Bool)

(assert (=> b!621775 m!597715))

(declare-fun m!597717 () Bool)

(assert (=> b!621762 m!597717))

(declare-fun m!597719 () Bool)

(assert (=> b!621770 m!597719))

(declare-fun m!597721 () Bool)

(assert (=> b!621770 m!597721))

(declare-fun m!597723 () Bool)

(assert (=> start!56188 m!597723))

(declare-fun m!597725 () Bool)

(assert (=> start!56188 m!597725))

(assert (=> b!621779 m!597689))

(declare-fun m!597727 () Bool)

(assert (=> b!621779 m!597727))

(assert (=> b!621779 m!597689))

(declare-fun m!597729 () Bool)

(assert (=> b!621779 m!597729))

(assert (=> b!621779 m!597689))

(assert (=> b!621779 m!597693))

(declare-fun m!597731 () Bool)

(assert (=> b!621779 m!597731))

(declare-fun m!597733 () Bool)

(assert (=> b!621779 m!597733))

(assert (=> b!621779 m!597689))

(declare-fun m!597735 () Bool)

(assert (=> b!621779 m!597735))

(assert (=> b!621779 m!597705))

(assert (=> b!621766 m!597719))

(declare-fun m!597737 () Bool)

(assert (=> b!621766 m!597737))

(assert (=> b!621766 m!597689))

(assert (=> b!621767 m!597689))

(assert (=> b!621767 m!597689))

(declare-fun m!597739 () Bool)

(assert (=> b!621767 m!597739))

(assert (=> b!621778 m!597689))

(assert (=> b!621778 m!597689))

(assert (=> b!621778 m!597739))

(declare-fun m!597741 () Bool)

(assert (=> b!621780 m!597741))

(declare-fun m!597743 () Bool)

(assert (=> b!621782 m!597743))

(assert (=> b!621774 m!597689))

(assert (=> b!621774 m!597689))

(assert (=> b!621774 m!597691))

(declare-fun m!597745 () Bool)

(assert (=> b!621773 m!597745))

(declare-fun m!597747 () Bool)

(assert (=> b!621773 m!597747))

(assert (=> b!621773 m!597689))

(assert (=> b!621773 m!597689))

(declare-fun m!597749 () Bool)

(assert (=> b!621773 m!597749))

(declare-fun m!597751 () Bool)

(assert (=> b!621773 m!597751))

(declare-fun m!597753 () Bool)

(assert (=> b!621773 m!597753))

(declare-fun m!597755 () Bool)

(assert (=> b!621773 m!597755))

(assert (=> b!621773 m!597719))

(declare-fun m!597757 () Bool)

(assert (=> b!621781 m!597757))

(push 1)

