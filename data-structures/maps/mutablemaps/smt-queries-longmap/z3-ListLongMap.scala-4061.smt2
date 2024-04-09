; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55604 () Bool)

(assert start!55604)

(declare-fun b!609087 () Bool)

(declare-fun res!391829 () Bool)

(declare-fun e!348848 () Bool)

(assert (=> b!609087 (=> res!391829 e!348848)))

(declare-datatypes ((List!11990 0))(
  ( (Nil!11987) (Cons!11986 (h!13031 (_ BitVec 64)) (t!18226 List!11990)) )
))
(declare-fun noDuplicate!338 (List!11990) Bool)

(assert (=> b!609087 (= res!391829 (not (noDuplicate!338 Nil!11987)))))

(declare-fun b!609088 () Bool)

(declare-fun res!391818 () Bool)

(declare-fun e!348840 () Bool)

(assert (=> b!609088 (=> (not res!391818) (not e!348840))))

(declare-datatypes ((array!37298 0))(
  ( (array!37299 (arr!17896 (Array (_ BitVec 32) (_ BitVec 64))) (size!18260 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37298)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!609088 (= res!391818 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!609089 () Bool)

(declare-fun e!348839 () Bool)

(declare-fun e!348845 () Bool)

(assert (=> b!609089 (= e!348839 e!348845)))

(declare-fun res!391824 () Bool)

(assert (=> b!609089 (=> res!391824 e!348845)))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!609089 (= res!391824 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!19486 0))(
  ( (Unit!19487) )
))
(declare-fun lt!278456 () Unit!19486)

(declare-fun e!348842 () Unit!19486)

(assert (=> b!609089 (= lt!278456 e!348842)))

(declare-fun c!69008 () Bool)

(assert (=> b!609089 (= c!69008 (bvslt j!136 index!984))))

(declare-fun b!609090 () Bool)

(declare-fun e!348849 () Bool)

(assert (=> b!609090 (= e!348840 e!348849)))

(declare-fun res!391814 () Bool)

(assert (=> b!609090 (=> (not res!391814) (not e!348849))))

(declare-datatypes ((SeekEntryResult!6343 0))(
  ( (MissingZero!6343 (index!27646 (_ BitVec 32))) (Found!6343 (index!27647 (_ BitVec 32))) (Intermediate!6343 (undefined!7155 Bool) (index!27648 (_ BitVec 32)) (x!56477 (_ BitVec 32))) (Undefined!6343) (MissingVacant!6343 (index!27649 (_ BitVec 32))) )
))
(declare-fun lt!278459 () SeekEntryResult!6343)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!609090 (= res!391814 (or (= lt!278459 (MissingZero!6343 i!1108)) (= lt!278459 (MissingVacant!6343 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37298 (_ BitVec 32)) SeekEntryResult!6343)

(assert (=> b!609090 (= lt!278459 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!391811 () Bool)

(assert (=> start!55604 (=> (not res!391811) (not e!348840))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55604 (= res!391811 (validMask!0 mask!3053))))

(assert (=> start!55604 e!348840))

(assert (=> start!55604 true))

(declare-fun array_inv!13670 (array!37298) Bool)

(assert (=> start!55604 (array_inv!13670 a!2986)))

(declare-fun b!609091 () Bool)

(declare-fun e!348837 () Bool)

(declare-fun lt!278457 () SeekEntryResult!6343)

(declare-fun lt!278454 () SeekEntryResult!6343)

(assert (=> b!609091 (= e!348837 (= lt!278457 lt!278454))))

(declare-fun b!609092 () Bool)

(declare-fun e!348835 () Unit!19486)

(declare-fun Unit!19488 () Unit!19486)

(assert (=> b!609092 (= e!348835 Unit!19488)))

(assert (=> b!609092 false))

(declare-fun b!609093 () Bool)

(declare-fun e!348838 () Bool)

(declare-fun lt!278458 () array!37298)

(assert (=> b!609093 (= e!348838 (arrayContainsKey!0 lt!278458 (select (arr!17896 a!2986) j!136) index!984))))

(declare-fun b!609094 () Bool)

(declare-fun res!391822 () Bool)

(assert (=> b!609094 (=> res!391822 e!348848)))

(declare-fun contains!3036 (List!11990 (_ BitVec 64)) Bool)

(assert (=> b!609094 (= res!391822 (contains!3036 Nil!11987 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!609095 () Bool)

(assert (=> b!609095 (= e!348845 e!348848)))

(declare-fun res!391812 () Bool)

(assert (=> b!609095 (=> res!391812 e!348848)))

(assert (=> b!609095 (= res!391812 (or (bvsge (size!18260 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18260 a!2986))))))

(assert (=> b!609095 (arrayContainsKey!0 lt!278458 (select (arr!17896 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278460 () Unit!19486)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37298 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19486)

(assert (=> b!609095 (= lt!278460 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278458 (select (arr!17896 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!609095 e!348838))

(declare-fun res!391826 () Bool)

(assert (=> b!609095 (=> (not res!391826) (not e!348838))))

(assert (=> b!609095 (= res!391826 (arrayContainsKey!0 lt!278458 (select (arr!17896 a!2986) j!136) j!136))))

(declare-fun b!609096 () Bool)

(declare-fun Unit!19489 () Unit!19486)

(assert (=> b!609096 (= e!348842 Unit!19489)))

(declare-fun lt!278447 () Unit!19486)

(assert (=> b!609096 (= lt!278447 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278458 (select (arr!17896 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!609096 (arrayContainsKey!0 lt!278458 (select (arr!17896 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278452 () Unit!19486)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37298 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11990) Unit!19486)

(assert (=> b!609096 (= lt!278452 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11987))))

(declare-fun arrayNoDuplicates!0 (array!37298 (_ BitVec 32) List!11990) Bool)

(assert (=> b!609096 (arrayNoDuplicates!0 lt!278458 #b00000000000000000000000000000000 Nil!11987)))

(declare-fun lt!278455 () Unit!19486)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37298 (_ BitVec 32) (_ BitVec 32)) Unit!19486)

(assert (=> b!609096 (= lt!278455 (lemmaNoDuplicateFromThenFromBigger!0 lt!278458 #b00000000000000000000000000000000 j!136))))

(assert (=> b!609096 (arrayNoDuplicates!0 lt!278458 j!136 Nil!11987)))

(declare-fun lt!278463 () Unit!19486)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37298 (_ BitVec 64) (_ BitVec 32) List!11990) Unit!19486)

(assert (=> b!609096 (= lt!278463 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278458 (select (arr!17896 a!2986) j!136) j!136 Nil!11987))))

(assert (=> b!609096 false))

(declare-fun b!609097 () Bool)

(declare-fun e!348836 () Bool)

(assert (=> b!609097 (= e!348836 e!348839)))

(declare-fun res!391813 () Bool)

(assert (=> b!609097 (=> res!391813 e!348839)))

(declare-fun lt!278453 () (_ BitVec 64))

(declare-fun lt!278450 () (_ BitVec 64))

(assert (=> b!609097 (= res!391813 (or (not (= (select (arr!17896 a!2986) j!136) lt!278453)) (not (= (select (arr!17896 a!2986) j!136) lt!278450))))))

(declare-fun e!348843 () Bool)

(assert (=> b!609097 e!348843))

(declare-fun res!391809 () Bool)

(assert (=> b!609097 (=> (not res!391809) (not e!348843))))

(assert (=> b!609097 (= res!391809 (= lt!278450 (select (arr!17896 a!2986) j!136)))))

(assert (=> b!609097 (= lt!278450 (select (store (arr!17896 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!609098 () Bool)

(declare-fun e!348850 () Bool)

(assert (=> b!609098 (= e!348850 (not e!348836))))

(declare-fun res!391808 () Bool)

(assert (=> b!609098 (=> res!391808 e!348836)))

(declare-fun lt!278451 () SeekEntryResult!6343)

(assert (=> b!609098 (= res!391808 (not (= lt!278451 (Found!6343 index!984))))))

(declare-fun lt!278449 () Unit!19486)

(assert (=> b!609098 (= lt!278449 e!348835)))

(declare-fun c!69007 () Bool)

(assert (=> b!609098 (= c!69007 (= lt!278451 Undefined!6343))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37298 (_ BitVec 32)) SeekEntryResult!6343)

(assert (=> b!609098 (= lt!278451 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278453 lt!278458 mask!3053))))

(assert (=> b!609098 e!348837))

(declare-fun res!391828 () Bool)

(assert (=> b!609098 (=> (not res!391828) (not e!348837))))

(declare-fun lt!278461 () (_ BitVec 32))

(assert (=> b!609098 (= res!391828 (= lt!278454 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278461 vacantSpotIndex!68 lt!278453 lt!278458 mask!3053)))))

(assert (=> b!609098 (= lt!278454 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278461 vacantSpotIndex!68 (select (arr!17896 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!609098 (= lt!278453 (select (store (arr!17896 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!278448 () Unit!19486)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37298 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19486)

(assert (=> b!609098 (= lt!278448 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278461 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!609098 (= lt!278461 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!609099 () Bool)

(declare-fun res!391807 () Bool)

(assert (=> b!609099 (=> (not res!391807) (not e!348849))))

(assert (=> b!609099 (= res!391807 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17896 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!609100 () Bool)

(declare-fun res!391823 () Bool)

(assert (=> b!609100 (=> res!391823 e!348848)))

(assert (=> b!609100 (= res!391823 (contains!3036 Nil!11987 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!609101 () Bool)

(declare-fun res!391825 () Bool)

(assert (=> b!609101 (=> (not res!391825) (not e!348849))))

(assert (=> b!609101 (= res!391825 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11987))))

(declare-fun b!609102 () Bool)

(assert (=> b!609102 (= e!348848 true)))

(declare-fun lt!278462 () Bool)

(assert (=> b!609102 (= lt!278462 (contains!3036 Nil!11987 k0!1786))))

(declare-fun b!609103 () Bool)

(declare-fun res!391827 () Bool)

(assert (=> b!609103 (=> (not res!391827) (not e!348840))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!609103 (= res!391827 (validKeyInArray!0 k0!1786))))

(declare-fun b!609104 () Bool)

(declare-fun res!391816 () Bool)

(assert (=> b!609104 (=> (not res!391816) (not e!348849))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37298 (_ BitVec 32)) Bool)

(assert (=> b!609104 (= res!391816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!609105 () Bool)

(declare-fun e!348844 () Bool)

(declare-fun e!348846 () Bool)

(assert (=> b!609105 (= e!348844 e!348846)))

(declare-fun res!391815 () Bool)

(assert (=> b!609105 (=> (not res!391815) (not e!348846))))

(assert (=> b!609105 (= res!391815 (arrayContainsKey!0 lt!278458 (select (arr!17896 a!2986) j!136) j!136))))

(declare-fun b!609106 () Bool)

(assert (=> b!609106 (= e!348843 e!348844)))

(declare-fun res!391819 () Bool)

(assert (=> b!609106 (=> res!391819 e!348844)))

(assert (=> b!609106 (= res!391819 (or (not (= (select (arr!17896 a!2986) j!136) lt!278453)) (not (= (select (arr!17896 a!2986) j!136) lt!278450)) (bvsge j!136 index!984)))))

(declare-fun b!609107 () Bool)

(declare-fun e!348847 () Bool)

(assert (=> b!609107 (= e!348849 e!348847)))

(declare-fun res!391820 () Bool)

(assert (=> b!609107 (=> (not res!391820) (not e!348847))))

(assert (=> b!609107 (= res!391820 (= (select (store (arr!17896 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!609107 (= lt!278458 (array!37299 (store (arr!17896 a!2986) i!1108 k0!1786) (size!18260 a!2986)))))

(declare-fun b!609108 () Bool)

(declare-fun res!391817 () Bool)

(assert (=> b!609108 (=> (not res!391817) (not e!348840))))

(assert (=> b!609108 (= res!391817 (validKeyInArray!0 (select (arr!17896 a!2986) j!136)))))

(declare-fun b!609109 () Bool)

(assert (=> b!609109 (= e!348847 e!348850)))

(declare-fun res!391810 () Bool)

(assert (=> b!609109 (=> (not res!391810) (not e!348850))))

(assert (=> b!609109 (= res!391810 (and (= lt!278457 (Found!6343 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17896 a!2986) index!984) (select (arr!17896 a!2986) j!136))) (not (= (select (arr!17896 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!609109 (= lt!278457 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17896 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!609110 () Bool)

(declare-fun res!391821 () Bool)

(assert (=> b!609110 (=> (not res!391821) (not e!348840))))

(assert (=> b!609110 (= res!391821 (and (= (size!18260 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18260 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18260 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!609111 () Bool)

(assert (=> b!609111 (= e!348846 (arrayContainsKey!0 lt!278458 (select (arr!17896 a!2986) j!136) index!984))))

(declare-fun b!609112 () Bool)

(declare-fun Unit!19490 () Unit!19486)

(assert (=> b!609112 (= e!348835 Unit!19490)))

(declare-fun b!609113 () Bool)

(declare-fun Unit!19491 () Unit!19486)

(assert (=> b!609113 (= e!348842 Unit!19491)))

(assert (= (and start!55604 res!391811) b!609110))

(assert (= (and b!609110 res!391821) b!609108))

(assert (= (and b!609108 res!391817) b!609103))

(assert (= (and b!609103 res!391827) b!609088))

(assert (= (and b!609088 res!391818) b!609090))

(assert (= (and b!609090 res!391814) b!609104))

(assert (= (and b!609104 res!391816) b!609101))

(assert (= (and b!609101 res!391825) b!609099))

(assert (= (and b!609099 res!391807) b!609107))

(assert (= (and b!609107 res!391820) b!609109))

(assert (= (and b!609109 res!391810) b!609098))

(assert (= (and b!609098 res!391828) b!609091))

(assert (= (and b!609098 c!69007) b!609092))

(assert (= (and b!609098 (not c!69007)) b!609112))

(assert (= (and b!609098 (not res!391808)) b!609097))

(assert (= (and b!609097 res!391809) b!609106))

(assert (= (and b!609106 (not res!391819)) b!609105))

(assert (= (and b!609105 res!391815) b!609111))

(assert (= (and b!609097 (not res!391813)) b!609089))

(assert (= (and b!609089 c!69008) b!609096))

(assert (= (and b!609089 (not c!69008)) b!609113))

(assert (= (and b!609089 (not res!391824)) b!609095))

(assert (= (and b!609095 res!391826) b!609093))

(assert (= (and b!609095 (not res!391812)) b!609087))

(assert (= (and b!609087 (not res!391829)) b!609094))

(assert (= (and b!609094 (not res!391822)) b!609100))

(assert (= (and b!609100 (not res!391823)) b!609102))

(declare-fun m!585669 () Bool)

(assert (=> b!609111 m!585669))

(assert (=> b!609111 m!585669))

(declare-fun m!585671 () Bool)

(assert (=> b!609111 m!585671))

(declare-fun m!585673 () Bool)

(assert (=> b!609109 m!585673))

(assert (=> b!609109 m!585669))

(assert (=> b!609109 m!585669))

(declare-fun m!585675 () Bool)

(assert (=> b!609109 m!585675))

(assert (=> b!609106 m!585669))

(declare-fun m!585677 () Bool)

(assert (=> b!609099 m!585677))

(declare-fun m!585679 () Bool)

(assert (=> start!55604 m!585679))

(declare-fun m!585681 () Bool)

(assert (=> start!55604 m!585681))

(declare-fun m!585683 () Bool)

(assert (=> b!609088 m!585683))

(assert (=> b!609097 m!585669))

(declare-fun m!585685 () Bool)

(assert (=> b!609097 m!585685))

(declare-fun m!585687 () Bool)

(assert (=> b!609097 m!585687))

(assert (=> b!609105 m!585669))

(assert (=> b!609105 m!585669))

(declare-fun m!585689 () Bool)

(assert (=> b!609105 m!585689))

(declare-fun m!585691 () Bool)

(assert (=> b!609103 m!585691))

(assert (=> b!609096 m!585669))

(declare-fun m!585693 () Bool)

(assert (=> b!609096 m!585693))

(assert (=> b!609096 m!585669))

(declare-fun m!585695 () Bool)

(assert (=> b!609096 m!585695))

(assert (=> b!609096 m!585669))

(declare-fun m!585697 () Bool)

(assert (=> b!609096 m!585697))

(assert (=> b!609096 m!585669))

(declare-fun m!585699 () Bool)

(assert (=> b!609096 m!585699))

(declare-fun m!585701 () Bool)

(assert (=> b!609096 m!585701))

(declare-fun m!585703 () Bool)

(assert (=> b!609096 m!585703))

(declare-fun m!585705 () Bool)

(assert (=> b!609096 m!585705))

(declare-fun m!585707 () Bool)

(assert (=> b!609087 m!585707))

(declare-fun m!585709 () Bool)

(assert (=> b!609101 m!585709))

(assert (=> b!609108 m!585669))

(assert (=> b!609108 m!585669))

(declare-fun m!585711 () Bool)

(assert (=> b!609108 m!585711))

(declare-fun m!585713 () Bool)

(assert (=> b!609098 m!585713))

(declare-fun m!585715 () Bool)

(assert (=> b!609098 m!585715))

(assert (=> b!609098 m!585669))

(assert (=> b!609098 m!585685))

(declare-fun m!585717 () Bool)

(assert (=> b!609098 m!585717))

(declare-fun m!585719 () Bool)

(assert (=> b!609098 m!585719))

(assert (=> b!609098 m!585669))

(declare-fun m!585721 () Bool)

(assert (=> b!609098 m!585721))

(declare-fun m!585723 () Bool)

(assert (=> b!609098 m!585723))

(assert (=> b!609095 m!585669))

(assert (=> b!609095 m!585669))

(declare-fun m!585725 () Bool)

(assert (=> b!609095 m!585725))

(assert (=> b!609095 m!585669))

(declare-fun m!585727 () Bool)

(assert (=> b!609095 m!585727))

(assert (=> b!609095 m!585669))

(assert (=> b!609095 m!585689))

(declare-fun m!585729 () Bool)

(assert (=> b!609094 m!585729))

(declare-fun m!585731 () Bool)

(assert (=> b!609090 m!585731))

(declare-fun m!585733 () Bool)

(assert (=> b!609102 m!585733))

(declare-fun m!585735 () Bool)

(assert (=> b!609104 m!585735))

(declare-fun m!585737 () Bool)

(assert (=> b!609100 m!585737))

(assert (=> b!609107 m!585685))

(declare-fun m!585739 () Bool)

(assert (=> b!609107 m!585739))

(assert (=> b!609093 m!585669))

(assert (=> b!609093 m!585669))

(assert (=> b!609093 m!585671))

(check-sat (not b!609087) (not b!609105) (not b!609093) (not b!609103) (not b!609088) (not b!609090) (not b!609098) (not b!609101) (not b!609094) (not b!609104) (not b!609111) (not b!609108) (not b!609109) (not b!609102) (not b!609095) (not b!609096) (not b!609100) (not start!55604))
(check-sat)
