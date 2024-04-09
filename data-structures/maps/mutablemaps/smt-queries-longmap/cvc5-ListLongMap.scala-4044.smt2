; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55146 () Bool)

(assert start!55146)

(declare-fun b!603727 () Bool)

(declare-fun e!345423 () Bool)

(declare-fun e!345421 () Bool)

(assert (=> b!603727 (= e!345423 e!345421)))

(declare-fun res!387913 () Bool)

(assert (=> b!603727 (=> res!387913 e!345421)))

(declare-fun lt!275279 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!275282 () (_ BitVec 64))

(declare-datatypes ((array!37182 0))(
  ( (array!37183 (arr!17844 (Array (_ BitVec 32) (_ BitVec 64))) (size!18208 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37182)

(assert (=> b!603727 (= res!387913 (or (not (= (select (arr!17844 a!2986) j!136) lt!275282)) (not (= (select (arr!17844 a!2986) j!136) lt!275279))))))

(declare-fun e!345424 () Bool)

(assert (=> b!603727 e!345424))

(declare-fun res!387914 () Bool)

(assert (=> b!603727 (=> (not res!387914) (not e!345424))))

(assert (=> b!603727 (= res!387914 (= lt!275279 (select (arr!17844 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!603727 (= lt!275279 (select (store (arr!17844 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!603728 () Bool)

(declare-fun e!345419 () Bool)

(declare-fun e!345414 () Bool)

(assert (=> b!603728 (= e!345419 e!345414)))

(declare-fun res!387925 () Bool)

(assert (=> b!603728 (=> (not res!387925) (not e!345414))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6291 0))(
  ( (MissingZero!6291 (index!27426 (_ BitVec 32))) (Found!6291 (index!27427 (_ BitVec 32))) (Intermediate!6291 (undefined!7103 Bool) (index!27428 (_ BitVec 32)) (x!56253 (_ BitVec 32))) (Undefined!6291) (MissingVacant!6291 (index!27429 (_ BitVec 32))) )
))
(declare-fun lt!275283 () SeekEntryResult!6291)

(assert (=> b!603728 (= res!387925 (and (= lt!275283 (Found!6291 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17844 a!2986) index!984) (select (arr!17844 a!2986) j!136))) (not (= (select (arr!17844 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37182 (_ BitVec 32)) SeekEntryResult!6291)

(assert (=> b!603728 (= lt!275283 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17844 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!603729 () Bool)

(declare-fun e!345422 () Bool)

(assert (=> b!603729 (= e!345424 e!345422)))

(declare-fun res!387915 () Bool)

(assert (=> b!603729 (=> res!387915 e!345422)))

(assert (=> b!603729 (= res!387915 (or (not (= (select (arr!17844 a!2986) j!136) lt!275282)) (not (= (select (arr!17844 a!2986) j!136) lt!275279)) (bvsge j!136 index!984)))))

(declare-fun b!603730 () Bool)

(declare-fun e!345410 () Bool)

(assert (=> b!603730 (= e!345421 e!345410)))

(declare-fun res!387924 () Bool)

(assert (=> b!603730 (=> res!387924 e!345410)))

(assert (=> b!603730 (= res!387924 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!19174 0))(
  ( (Unit!19175) )
))
(declare-fun lt!275284 () Unit!19174)

(declare-fun e!345412 () Unit!19174)

(assert (=> b!603730 (= lt!275284 e!345412)))

(declare-fun c!68275 () Bool)

(assert (=> b!603730 (= c!68275 (bvslt j!136 index!984))))

(declare-fun b!603731 () Bool)

(assert (=> b!603731 (= e!345414 (not e!345423))))

(declare-fun res!387921 () Bool)

(assert (=> b!603731 (=> res!387921 e!345423)))

(declare-fun lt!275280 () SeekEntryResult!6291)

(assert (=> b!603731 (= res!387921 (not (= lt!275280 (Found!6291 index!984))))))

(declare-fun lt!275276 () Unit!19174)

(declare-fun e!345416 () Unit!19174)

(assert (=> b!603731 (= lt!275276 e!345416)))

(declare-fun c!68276 () Bool)

(assert (=> b!603731 (= c!68276 (= lt!275280 Undefined!6291))))

(declare-fun lt!275273 () array!37182)

(assert (=> b!603731 (= lt!275280 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275282 lt!275273 mask!3053))))

(declare-fun e!345417 () Bool)

(assert (=> b!603731 e!345417))

(declare-fun res!387927 () Bool)

(assert (=> b!603731 (=> (not res!387927) (not e!345417))))

(declare-fun lt!275275 () (_ BitVec 32))

(declare-fun lt!275281 () SeekEntryResult!6291)

(assert (=> b!603731 (= res!387927 (= lt!275281 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275275 vacantSpotIndex!68 lt!275282 lt!275273 mask!3053)))))

(assert (=> b!603731 (= lt!275281 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275275 vacantSpotIndex!68 (select (arr!17844 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!603731 (= lt!275282 (select (store (arr!17844 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!275285 () Unit!19174)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37182 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19174)

(assert (=> b!603731 (= lt!275285 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275275 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!603731 (= lt!275275 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!603732 () Bool)

(declare-fun e!345415 () Bool)

(declare-fun arrayContainsKey!0 (array!37182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!603732 (= e!345415 (arrayContainsKey!0 lt!275273 (select (arr!17844 a!2986) j!136) index!984))))

(declare-fun b!603733 () Bool)

(declare-fun e!345420 () Bool)

(assert (=> b!603733 (= e!345420 (arrayContainsKey!0 lt!275273 (select (arr!17844 a!2986) j!136) index!984))))

(declare-fun b!603734 () Bool)

(assert (=> b!603734 (= e!345422 e!345420)))

(declare-fun res!387923 () Bool)

(assert (=> b!603734 (=> (not res!387923) (not e!345420))))

(assert (=> b!603734 (= res!387923 (arrayContainsKey!0 lt!275273 (select (arr!17844 a!2986) j!136) j!136))))

(declare-fun b!603735 () Bool)

(declare-fun res!387928 () Bool)

(declare-fun e!345418 () Bool)

(assert (=> b!603735 (=> (not res!387928) (not e!345418))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!603735 (= res!387928 (validKeyInArray!0 (select (arr!17844 a!2986) j!136)))))

(declare-fun b!603736 () Bool)

(assert (=> b!603736 (= e!345410 true)))

(assert (=> b!603736 e!345415))

(declare-fun res!387929 () Bool)

(assert (=> b!603736 (=> (not res!387929) (not e!345415))))

(assert (=> b!603736 (= res!387929 (arrayContainsKey!0 lt!275273 (select (arr!17844 a!2986) j!136) j!136))))

(declare-fun b!603737 () Bool)

(declare-fun Unit!19176 () Unit!19174)

(assert (=> b!603737 (= e!345412 Unit!19176)))

(declare-fun lt!275286 () Unit!19174)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37182 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19174)

(assert (=> b!603737 (= lt!275286 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275273 (select (arr!17844 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!603737 (arrayContainsKey!0 lt!275273 (select (arr!17844 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275272 () Unit!19174)

(declare-datatypes ((List!11938 0))(
  ( (Nil!11935) (Cons!11934 (h!12979 (_ BitVec 64)) (t!18174 List!11938)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37182 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11938) Unit!19174)

(assert (=> b!603737 (= lt!275272 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11935))))

(declare-fun arrayNoDuplicates!0 (array!37182 (_ BitVec 32) List!11938) Bool)

(assert (=> b!603737 (arrayNoDuplicates!0 lt!275273 #b00000000000000000000000000000000 Nil!11935)))

(declare-fun lt!275277 () Unit!19174)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37182 (_ BitVec 32) (_ BitVec 32)) Unit!19174)

(assert (=> b!603737 (= lt!275277 (lemmaNoDuplicateFromThenFromBigger!0 lt!275273 #b00000000000000000000000000000000 j!136))))

(assert (=> b!603737 (arrayNoDuplicates!0 lt!275273 j!136 Nil!11935)))

(declare-fun lt!275274 () Unit!19174)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37182 (_ BitVec 64) (_ BitVec 32) List!11938) Unit!19174)

(assert (=> b!603737 (= lt!275274 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275273 (select (arr!17844 a!2986) j!136) j!136 Nil!11935))))

(assert (=> b!603737 false))

(declare-fun b!603739 () Bool)

(declare-fun res!387926 () Bool)

(declare-fun e!345413 () Bool)

(assert (=> b!603739 (=> (not res!387926) (not e!345413))))

(assert (=> b!603739 (= res!387926 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17844 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!603740 () Bool)

(declare-fun res!387919 () Bool)

(assert (=> b!603740 (=> (not res!387919) (not e!345418))))

(assert (=> b!603740 (= res!387919 (and (= (size!18208 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18208 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18208 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!603741 () Bool)

(assert (=> b!603741 (= e!345417 (= lt!275283 lt!275281))))

(declare-fun b!603742 () Bool)

(declare-fun Unit!19177 () Unit!19174)

(assert (=> b!603742 (= e!345412 Unit!19177)))

(declare-fun b!603743 () Bool)

(assert (=> b!603743 (= e!345418 e!345413)))

(declare-fun res!387916 () Bool)

(assert (=> b!603743 (=> (not res!387916) (not e!345413))))

(declare-fun lt!275278 () SeekEntryResult!6291)

(assert (=> b!603743 (= res!387916 (or (= lt!275278 (MissingZero!6291 i!1108)) (= lt!275278 (MissingVacant!6291 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37182 (_ BitVec 32)) SeekEntryResult!6291)

(assert (=> b!603743 (= lt!275278 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!603744 () Bool)

(declare-fun res!387911 () Bool)

(assert (=> b!603744 (=> (not res!387911) (not e!345413))))

(assert (=> b!603744 (= res!387911 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11935))))

(declare-fun b!603745 () Bool)

(declare-fun res!387918 () Bool)

(assert (=> b!603745 (=> (not res!387918) (not e!345413))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37182 (_ BitVec 32)) Bool)

(assert (=> b!603745 (= res!387918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!603746 () Bool)

(declare-fun res!387920 () Bool)

(assert (=> b!603746 (=> (not res!387920) (not e!345418))))

(assert (=> b!603746 (= res!387920 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!603747 () Bool)

(declare-fun Unit!19178 () Unit!19174)

(assert (=> b!603747 (= e!345416 Unit!19178)))

(declare-fun res!387912 () Bool)

(assert (=> start!55146 (=> (not res!387912) (not e!345418))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55146 (= res!387912 (validMask!0 mask!3053))))

(assert (=> start!55146 e!345418))

(assert (=> start!55146 true))

(declare-fun array_inv!13618 (array!37182) Bool)

(assert (=> start!55146 (array_inv!13618 a!2986)))

(declare-fun b!603738 () Bool)

(declare-fun Unit!19179 () Unit!19174)

(assert (=> b!603738 (= e!345416 Unit!19179)))

(assert (=> b!603738 false))

(declare-fun b!603748 () Bool)

(declare-fun res!387917 () Bool)

(assert (=> b!603748 (=> (not res!387917) (not e!345418))))

(assert (=> b!603748 (= res!387917 (validKeyInArray!0 k!1786))))

(declare-fun b!603749 () Bool)

(assert (=> b!603749 (= e!345413 e!345419)))

(declare-fun res!387922 () Bool)

(assert (=> b!603749 (=> (not res!387922) (not e!345419))))

(assert (=> b!603749 (= res!387922 (= (select (store (arr!17844 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!603749 (= lt!275273 (array!37183 (store (arr!17844 a!2986) i!1108 k!1786) (size!18208 a!2986)))))

(assert (= (and start!55146 res!387912) b!603740))

(assert (= (and b!603740 res!387919) b!603735))

(assert (= (and b!603735 res!387928) b!603748))

(assert (= (and b!603748 res!387917) b!603746))

(assert (= (and b!603746 res!387920) b!603743))

(assert (= (and b!603743 res!387916) b!603745))

(assert (= (and b!603745 res!387918) b!603744))

(assert (= (and b!603744 res!387911) b!603739))

(assert (= (and b!603739 res!387926) b!603749))

(assert (= (and b!603749 res!387922) b!603728))

(assert (= (and b!603728 res!387925) b!603731))

(assert (= (and b!603731 res!387927) b!603741))

(assert (= (and b!603731 c!68276) b!603738))

(assert (= (and b!603731 (not c!68276)) b!603747))

(assert (= (and b!603731 (not res!387921)) b!603727))

(assert (= (and b!603727 res!387914) b!603729))

(assert (= (and b!603729 (not res!387915)) b!603734))

(assert (= (and b!603734 res!387923) b!603733))

(assert (= (and b!603727 (not res!387913)) b!603730))

(assert (= (and b!603730 c!68275) b!603737))

(assert (= (and b!603730 (not c!68275)) b!603742))

(assert (= (and b!603730 (not res!387924)) b!603736))

(assert (= (and b!603736 res!387929) b!603732))

(declare-fun m!580731 () Bool)

(assert (=> b!603728 m!580731))

(declare-fun m!580733 () Bool)

(assert (=> b!603728 m!580733))

(assert (=> b!603728 m!580733))

(declare-fun m!580735 () Bool)

(assert (=> b!603728 m!580735))

(assert (=> b!603735 m!580733))

(assert (=> b!603735 m!580733))

(declare-fun m!580737 () Bool)

(assert (=> b!603735 m!580737))

(assert (=> b!603727 m!580733))

(declare-fun m!580739 () Bool)

(assert (=> b!603727 m!580739))

(declare-fun m!580741 () Bool)

(assert (=> b!603727 m!580741))

(declare-fun m!580743 () Bool)

(assert (=> b!603748 m!580743))

(assert (=> b!603736 m!580733))

(assert (=> b!603736 m!580733))

(declare-fun m!580745 () Bool)

(assert (=> b!603736 m!580745))

(declare-fun m!580747 () Bool)

(assert (=> start!55146 m!580747))

(declare-fun m!580749 () Bool)

(assert (=> start!55146 m!580749))

(declare-fun m!580751 () Bool)

(assert (=> b!603746 m!580751))

(assert (=> b!603733 m!580733))

(assert (=> b!603733 m!580733))

(declare-fun m!580753 () Bool)

(assert (=> b!603733 m!580753))

(declare-fun m!580755 () Bool)

(assert (=> b!603731 m!580755))

(declare-fun m!580757 () Bool)

(assert (=> b!603731 m!580757))

(assert (=> b!603731 m!580733))

(assert (=> b!603731 m!580739))

(declare-fun m!580759 () Bool)

(assert (=> b!603731 m!580759))

(assert (=> b!603731 m!580733))

(declare-fun m!580761 () Bool)

(assert (=> b!603731 m!580761))

(declare-fun m!580763 () Bool)

(assert (=> b!603731 m!580763))

(declare-fun m!580765 () Bool)

(assert (=> b!603731 m!580765))

(assert (=> b!603732 m!580733))

(assert (=> b!603732 m!580733))

(assert (=> b!603732 m!580753))

(assert (=> b!603729 m!580733))

(assert (=> b!603734 m!580733))

(assert (=> b!603734 m!580733))

(assert (=> b!603734 m!580745))

(declare-fun m!580767 () Bool)

(assert (=> b!603745 m!580767))

(assert (=> b!603737 m!580733))

(declare-fun m!580769 () Bool)

(assert (=> b!603737 m!580769))

(assert (=> b!603737 m!580733))

(assert (=> b!603737 m!580733))

(declare-fun m!580771 () Bool)

(assert (=> b!603737 m!580771))

(declare-fun m!580773 () Bool)

(assert (=> b!603737 m!580773))

(declare-fun m!580775 () Bool)

(assert (=> b!603737 m!580775))

(assert (=> b!603737 m!580733))

(declare-fun m!580777 () Bool)

(assert (=> b!603737 m!580777))

(declare-fun m!580779 () Bool)

(assert (=> b!603737 m!580779))

(declare-fun m!580781 () Bool)

(assert (=> b!603737 m!580781))

(assert (=> b!603749 m!580739))

(declare-fun m!580783 () Bool)

(assert (=> b!603749 m!580783))

(declare-fun m!580785 () Bool)

(assert (=> b!603743 m!580785))

(declare-fun m!580787 () Bool)

(assert (=> b!603744 m!580787))

(declare-fun m!580789 () Bool)

(assert (=> b!603739 m!580789))

(push 1)

