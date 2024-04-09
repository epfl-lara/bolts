; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54844 () Bool)

(assert start!54844)

(declare-fun b!598688 () Bool)

(declare-fun e!342260 () Bool)

(declare-fun e!342254 () Bool)

(assert (=> b!598688 (= e!342260 e!342254)))

(declare-fun res!383912 () Bool)

(assert (=> b!598688 (=> (not res!383912) (not e!342254))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37042 0))(
  ( (array!37043 (arr!17777 (Array (_ BitVec 32) (_ BitVec 64))) (size!18141 (_ BitVec 32))) )
))
(declare-fun lt!272113 () array!37042)

(declare-fun a!2986 () array!37042)

(declare-fun arrayContainsKey!0 (array!37042 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!598688 (= res!383912 (arrayContainsKey!0 lt!272113 (select (arr!17777 a!2986) j!136) j!136))))

(declare-fun b!598689 () Bool)

(declare-fun e!342259 () Bool)

(assert (=> b!598689 (= e!342259 true)))

(declare-datatypes ((List!11871 0))(
  ( (Nil!11868) (Cons!11867 (h!12912 (_ BitVec 64)) (t!18107 List!11871)) )
))
(declare-fun arrayNoDuplicates!0 (array!37042 (_ BitVec 32) List!11871) Bool)

(assert (=> b!598689 (arrayNoDuplicates!0 lt!272113 #b00000000000000000000000000000000 Nil!11868)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((Unit!18840 0))(
  ( (Unit!18841) )
))
(declare-fun lt!272117 () Unit!18840)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37042 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11871) Unit!18840)

(assert (=> b!598689 (= lt!272117 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11868))))

(assert (=> b!598689 (arrayContainsKey!0 lt!272113 (select (arr!17777 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272118 () Unit!18840)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37042 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18840)

(assert (=> b!598689 (= lt!272118 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272113 (select (arr!17777 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!598690 () Bool)

(declare-fun e!342258 () Unit!18840)

(declare-fun Unit!18842 () Unit!18840)

(assert (=> b!598690 (= e!342258 Unit!18842)))

(declare-fun b!598691 () Bool)

(declare-fun e!342253 () Bool)

(declare-fun e!342262 () Bool)

(assert (=> b!598691 (= e!342253 (not e!342262))))

(declare-fun res!383897 () Bool)

(assert (=> b!598691 (=> res!383897 e!342262)))

(declare-datatypes ((SeekEntryResult!6224 0))(
  ( (MissingZero!6224 (index!27152 (_ BitVec 32))) (Found!6224 (index!27153 (_ BitVec 32))) (Intermediate!6224 (undefined!7036 Bool) (index!27154 (_ BitVec 32)) (x!55984 (_ BitVec 32))) (Undefined!6224) (MissingVacant!6224 (index!27155 (_ BitVec 32))) )
))
(declare-fun lt!272112 () SeekEntryResult!6224)

(assert (=> b!598691 (= res!383897 (not (= lt!272112 (Found!6224 index!984))))))

(declare-fun lt!272116 () Unit!18840)

(assert (=> b!598691 (= lt!272116 e!342258)))

(declare-fun c!67763 () Bool)

(assert (=> b!598691 (= c!67763 (= lt!272112 Undefined!6224))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!272107 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37042 (_ BitVec 32)) SeekEntryResult!6224)

(assert (=> b!598691 (= lt!272112 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272107 lt!272113 mask!3053))))

(declare-fun e!342257 () Bool)

(assert (=> b!598691 e!342257))

(declare-fun res!383907 () Bool)

(assert (=> b!598691 (=> (not res!383907) (not e!342257))))

(declare-fun lt!272114 () SeekEntryResult!6224)

(declare-fun lt!272110 () (_ BitVec 32))

(assert (=> b!598691 (= res!383907 (= lt!272114 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272110 vacantSpotIndex!68 lt!272107 lt!272113 mask!3053)))))

(assert (=> b!598691 (= lt!272114 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272110 vacantSpotIndex!68 (select (arr!17777 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!598691 (= lt!272107 (select (store (arr!17777 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272108 () Unit!18840)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37042 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18840)

(assert (=> b!598691 (= lt!272108 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272110 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!598691 (= lt!272110 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!598692 () Bool)

(assert (=> b!598692 (= e!342254 (arrayContainsKey!0 lt!272113 (select (arr!17777 a!2986) j!136) index!984))))

(declare-fun b!598693 () Bool)

(declare-fun lt!272109 () SeekEntryResult!6224)

(assert (=> b!598693 (= e!342257 (= lt!272109 lt!272114))))

(declare-fun b!598694 () Bool)

(declare-fun res!383899 () Bool)

(declare-fun e!342251 () Bool)

(assert (=> b!598694 (=> (not res!383899) (not e!342251))))

(assert (=> b!598694 (= res!383899 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!598695 () Bool)

(declare-fun Unit!18843 () Unit!18840)

(assert (=> b!598695 (= e!342258 Unit!18843)))

(assert (=> b!598695 false))

(declare-fun b!598697 () Bool)

(declare-fun e!342256 () Bool)

(assert (=> b!598697 (= e!342256 e!342260)))

(declare-fun res!383908 () Bool)

(assert (=> b!598697 (=> res!383908 e!342260)))

(declare-fun lt!272115 () (_ BitVec 64))

(assert (=> b!598697 (= res!383908 (or (not (= (select (arr!17777 a!2986) j!136) lt!272107)) (not (= (select (arr!17777 a!2986) j!136) lt!272115)) (bvsge j!136 index!984)))))

(declare-fun b!598698 () Bool)

(declare-fun res!383904 () Bool)

(declare-fun e!342255 () Bool)

(assert (=> b!598698 (=> (not res!383904) (not e!342255))))

(assert (=> b!598698 (= res!383904 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11868))))

(declare-fun b!598699 () Bool)

(declare-fun e!342252 () Bool)

(assert (=> b!598699 (= e!342255 e!342252)))

(declare-fun res!383909 () Bool)

(assert (=> b!598699 (=> (not res!383909) (not e!342252))))

(assert (=> b!598699 (= res!383909 (= (select (store (arr!17777 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!598699 (= lt!272113 (array!37043 (store (arr!17777 a!2986) i!1108 k!1786) (size!18141 a!2986)))))

(declare-fun b!598700 () Bool)

(declare-fun res!383900 () Bool)

(assert (=> b!598700 (=> (not res!383900) (not e!342255))))

(assert (=> b!598700 (= res!383900 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17777 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!598701 () Bool)

(declare-fun res!383896 () Bool)

(assert (=> b!598701 (=> (not res!383896) (not e!342251))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!598701 (= res!383896 (validKeyInArray!0 (select (arr!17777 a!2986) j!136)))))

(declare-fun b!598702 () Bool)

(declare-fun res!383906 () Bool)

(assert (=> b!598702 (=> (not res!383906) (not e!342251))))

(assert (=> b!598702 (= res!383906 (validKeyInArray!0 k!1786))))

(declare-fun b!598703 () Bool)

(declare-fun res!383898 () Bool)

(assert (=> b!598703 (=> (not res!383898) (not e!342255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37042 (_ BitVec 32)) Bool)

(assert (=> b!598703 (= res!383898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!598704 () Bool)

(declare-fun res!383901 () Bool)

(assert (=> b!598704 (=> (not res!383901) (not e!342251))))

(assert (=> b!598704 (= res!383901 (and (= (size!18141 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18141 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18141 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!383911 () Bool)

(assert (=> start!54844 (=> (not res!383911) (not e!342251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54844 (= res!383911 (validMask!0 mask!3053))))

(assert (=> start!54844 e!342251))

(assert (=> start!54844 true))

(declare-fun array_inv!13551 (array!37042) Bool)

(assert (=> start!54844 (array_inv!13551 a!2986)))

(declare-fun b!598696 () Bool)

(assert (=> b!598696 (= e!342251 e!342255)))

(declare-fun res!383902 () Bool)

(assert (=> b!598696 (=> (not res!383902) (not e!342255))))

(declare-fun lt!272111 () SeekEntryResult!6224)

(assert (=> b!598696 (= res!383902 (or (= lt!272111 (MissingZero!6224 i!1108)) (= lt!272111 (MissingVacant!6224 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37042 (_ BitVec 32)) SeekEntryResult!6224)

(assert (=> b!598696 (= lt!272111 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!598705 () Bool)

(assert (=> b!598705 (= e!342262 e!342259)))

(declare-fun res!383905 () Bool)

(assert (=> b!598705 (=> res!383905 e!342259)))

(assert (=> b!598705 (= res!383905 (or (not (= (select (arr!17777 a!2986) j!136) lt!272107)) (not (= (select (arr!17777 a!2986) j!136) lt!272115)) (bvsge j!136 index!984)))))

(assert (=> b!598705 e!342256))

(declare-fun res!383903 () Bool)

(assert (=> b!598705 (=> (not res!383903) (not e!342256))))

(assert (=> b!598705 (= res!383903 (= lt!272115 (select (arr!17777 a!2986) j!136)))))

(assert (=> b!598705 (= lt!272115 (select (store (arr!17777 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!598706 () Bool)

(assert (=> b!598706 (= e!342252 e!342253)))

(declare-fun res!383910 () Bool)

(assert (=> b!598706 (=> (not res!383910) (not e!342253))))

(assert (=> b!598706 (= res!383910 (and (= lt!272109 (Found!6224 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17777 a!2986) index!984) (select (arr!17777 a!2986) j!136))) (not (= (select (arr!17777 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!598706 (= lt!272109 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17777 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!54844 res!383911) b!598704))

(assert (= (and b!598704 res!383901) b!598701))

(assert (= (and b!598701 res!383896) b!598702))

(assert (= (and b!598702 res!383906) b!598694))

(assert (= (and b!598694 res!383899) b!598696))

(assert (= (and b!598696 res!383902) b!598703))

(assert (= (and b!598703 res!383898) b!598698))

(assert (= (and b!598698 res!383904) b!598700))

(assert (= (and b!598700 res!383900) b!598699))

(assert (= (and b!598699 res!383909) b!598706))

(assert (= (and b!598706 res!383910) b!598691))

(assert (= (and b!598691 res!383907) b!598693))

(assert (= (and b!598691 c!67763) b!598695))

(assert (= (and b!598691 (not c!67763)) b!598690))

(assert (= (and b!598691 (not res!383897)) b!598705))

(assert (= (and b!598705 res!383903) b!598697))

(assert (= (and b!598697 (not res!383908)) b!598688))

(assert (= (and b!598688 res!383912) b!598692))

(assert (= (and b!598705 (not res!383905)) b!598689))

(declare-fun m!576021 () Bool)

(assert (=> b!598688 m!576021))

(assert (=> b!598688 m!576021))

(declare-fun m!576023 () Bool)

(assert (=> b!598688 m!576023))

(assert (=> b!598697 m!576021))

(declare-fun m!576025 () Bool)

(assert (=> b!598696 m!576025))

(assert (=> b!598701 m!576021))

(assert (=> b!598701 m!576021))

(declare-fun m!576027 () Bool)

(assert (=> b!598701 m!576027))

(declare-fun m!576029 () Bool)

(assert (=> b!598691 m!576029))

(declare-fun m!576031 () Bool)

(assert (=> b!598691 m!576031))

(declare-fun m!576033 () Bool)

(assert (=> b!598691 m!576033))

(assert (=> b!598691 m!576021))

(declare-fun m!576035 () Bool)

(assert (=> b!598691 m!576035))

(declare-fun m!576037 () Bool)

(assert (=> b!598691 m!576037))

(declare-fun m!576039 () Bool)

(assert (=> b!598691 m!576039))

(assert (=> b!598691 m!576021))

(declare-fun m!576041 () Bool)

(assert (=> b!598691 m!576041))

(declare-fun m!576043 () Bool)

(assert (=> b!598702 m!576043))

(declare-fun m!576045 () Bool)

(assert (=> start!54844 m!576045))

(declare-fun m!576047 () Bool)

(assert (=> start!54844 m!576047))

(assert (=> b!598705 m!576021))

(assert (=> b!598705 m!576035))

(declare-fun m!576049 () Bool)

(assert (=> b!598705 m!576049))

(declare-fun m!576051 () Bool)

(assert (=> b!598698 m!576051))

(assert (=> b!598699 m!576035))

(declare-fun m!576053 () Bool)

(assert (=> b!598699 m!576053))

(declare-fun m!576055 () Bool)

(assert (=> b!598703 m!576055))

(declare-fun m!576057 () Bool)

(assert (=> b!598706 m!576057))

(assert (=> b!598706 m!576021))

(assert (=> b!598706 m!576021))

(declare-fun m!576059 () Bool)

(assert (=> b!598706 m!576059))

(declare-fun m!576061 () Bool)

(assert (=> b!598694 m!576061))

(assert (=> b!598692 m!576021))

(assert (=> b!598692 m!576021))

(declare-fun m!576063 () Bool)

(assert (=> b!598692 m!576063))

(declare-fun m!576065 () Bool)

(assert (=> b!598700 m!576065))

(assert (=> b!598689 m!576021))

(declare-fun m!576067 () Bool)

(assert (=> b!598689 m!576067))

(declare-fun m!576069 () Bool)

(assert (=> b!598689 m!576069))

(assert (=> b!598689 m!576021))

(declare-fun m!576071 () Bool)

(assert (=> b!598689 m!576071))

(assert (=> b!598689 m!576021))

(declare-fun m!576073 () Bool)

(assert (=> b!598689 m!576073))

(push 1)

