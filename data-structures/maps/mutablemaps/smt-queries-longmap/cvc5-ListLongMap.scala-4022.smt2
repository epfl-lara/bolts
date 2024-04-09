; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54846 () Bool)

(assert start!54846)

(declare-fun e!342288 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37044 0))(
  ( (array!37045 (arr!17778 (Array (_ BitVec 32) (_ BitVec 64))) (size!18142 (_ BitVec 32))) )
))
(declare-fun lt!272152 () array!37044)

(declare-fun b!598745 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37044)

(declare-fun arrayContainsKey!0 (array!37044 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!598745 (= e!342288 (arrayContainsKey!0 lt!272152 (select (arr!17778 a!2986) j!136) index!984))))

(declare-fun b!598746 () Bool)

(declare-datatypes ((Unit!18844 0))(
  ( (Unit!18845) )
))
(declare-fun e!342292 () Unit!18844)

(declare-fun Unit!18846 () Unit!18844)

(assert (=> b!598746 (= e!342292 Unit!18846)))

(assert (=> b!598746 false))

(declare-fun b!598747 () Bool)

(declare-fun res!383950 () Bool)

(declare-fun e!342295 () Bool)

(assert (=> b!598747 (=> (not res!383950) (not e!342295))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!598747 (= res!383950 (validKeyInArray!0 k!1786))))

(declare-fun b!598748 () Bool)

(declare-fun e!342289 () Bool)

(declare-fun e!342287 () Bool)

(assert (=> b!598748 (= e!342289 e!342287)))

(declare-fun res!383949 () Bool)

(assert (=> b!598748 (=> (not res!383949) (not e!342287))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6225 0))(
  ( (MissingZero!6225 (index!27156 (_ BitVec 32))) (Found!6225 (index!27157 (_ BitVec 32))) (Intermediate!6225 (undefined!7037 Bool) (index!27158 (_ BitVec 32)) (x!55993 (_ BitVec 32))) (Undefined!6225) (MissingVacant!6225 (index!27159 (_ BitVec 32))) )
))
(declare-fun lt!272153 () SeekEntryResult!6225)

(assert (=> b!598748 (= res!383949 (and (= lt!272153 (Found!6225 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17778 a!2986) index!984) (select (arr!17778 a!2986) j!136))) (not (= (select (arr!17778 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37044 (_ BitVec 32)) SeekEntryResult!6225)

(assert (=> b!598748 (= lt!272153 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17778 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!598749 () Bool)

(declare-fun res!383960 () Bool)

(assert (=> b!598749 (=> (not res!383960) (not e!342295))))

(assert (=> b!598749 (= res!383960 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!598750 () Bool)

(declare-fun Unit!18847 () Unit!18844)

(assert (=> b!598750 (= e!342292 Unit!18847)))

(declare-fun b!598751 () Bool)

(declare-fun res!383961 () Bool)

(declare-fun e!342296 () Bool)

(assert (=> b!598751 (=> (not res!383961) (not e!342296))))

(assert (=> b!598751 (= res!383961 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17778 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!598752 () Bool)

(declare-fun res!383956 () Bool)

(assert (=> b!598752 (=> (not res!383956) (not e!342296))))

(declare-datatypes ((List!11872 0))(
  ( (Nil!11869) (Cons!11868 (h!12913 (_ BitVec 64)) (t!18108 List!11872)) )
))
(declare-fun arrayNoDuplicates!0 (array!37044 (_ BitVec 32) List!11872) Bool)

(assert (=> b!598752 (= res!383956 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11869))))

(declare-fun b!598753 () Bool)

(declare-fun res!383963 () Bool)

(assert (=> b!598753 (=> (not res!383963) (not e!342296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37044 (_ BitVec 32)) Bool)

(assert (=> b!598753 (= res!383963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!383958 () Bool)

(assert (=> start!54846 (=> (not res!383958) (not e!342295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54846 (= res!383958 (validMask!0 mask!3053))))

(assert (=> start!54846 e!342295))

(assert (=> start!54846 true))

(declare-fun array_inv!13552 (array!37044) Bool)

(assert (=> start!54846 (array_inv!13552 a!2986)))

(declare-fun b!598754 () Bool)

(declare-fun e!342297 () Bool)

(declare-fun e!342291 () Bool)

(assert (=> b!598754 (= e!342297 e!342291)))

(declare-fun res!383955 () Bool)

(assert (=> b!598754 (=> res!383955 e!342291)))

(declare-fun lt!272150 () (_ BitVec 64))

(declare-fun lt!272147 () (_ BitVec 64))

(assert (=> b!598754 (= res!383955 (or (not (= (select (arr!17778 a!2986) j!136) lt!272147)) (not (= (select (arr!17778 a!2986) j!136) lt!272150)) (bvsge j!136 index!984)))))

(declare-fun e!342290 () Bool)

(assert (=> b!598754 e!342290))

(declare-fun res!383957 () Bool)

(assert (=> b!598754 (=> (not res!383957) (not e!342290))))

(assert (=> b!598754 (= res!383957 (= lt!272150 (select (arr!17778 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!598754 (= lt!272150 (select (store (arr!17778 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!598755 () Bool)

(assert (=> b!598755 (= e!342295 e!342296)))

(declare-fun res!383959 () Bool)

(assert (=> b!598755 (=> (not res!383959) (not e!342296))))

(declare-fun lt!272145 () SeekEntryResult!6225)

(assert (=> b!598755 (= res!383959 (or (= lt!272145 (MissingZero!6225 i!1108)) (= lt!272145 (MissingVacant!6225 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37044 (_ BitVec 32)) SeekEntryResult!6225)

(assert (=> b!598755 (= lt!272145 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!598756 () Bool)

(declare-fun res!383947 () Bool)

(assert (=> b!598756 (=> (not res!383947) (not e!342295))))

(assert (=> b!598756 (= res!383947 (and (= (size!18142 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18142 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18142 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!598757 () Bool)

(assert (=> b!598757 (= e!342296 e!342289)))

(declare-fun res!383962 () Bool)

(assert (=> b!598757 (=> (not res!383962) (not e!342289))))

(assert (=> b!598757 (= res!383962 (= (select (store (arr!17778 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!598757 (= lt!272152 (array!37045 (store (arr!17778 a!2986) i!1108 k!1786) (size!18142 a!2986)))))

(declare-fun b!598758 () Bool)

(assert (=> b!598758 (= e!342291 true)))

(assert (=> b!598758 (arrayNoDuplicates!0 lt!272152 #b00000000000000000000000000000000 Nil!11869)))

(declare-fun lt!272151 () Unit!18844)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37044 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11872) Unit!18844)

(assert (=> b!598758 (= lt!272151 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11869))))

(assert (=> b!598758 (arrayContainsKey!0 lt!272152 (select (arr!17778 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272154 () Unit!18844)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37044 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18844)

(assert (=> b!598758 (= lt!272154 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272152 (select (arr!17778 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!598759 () Bool)

(assert (=> b!598759 (= e!342287 (not e!342297))))

(declare-fun res!383948 () Bool)

(assert (=> b!598759 (=> res!383948 e!342297)))

(declare-fun lt!272149 () SeekEntryResult!6225)

(assert (=> b!598759 (= res!383948 (not (= lt!272149 (Found!6225 index!984))))))

(declare-fun lt!272143 () Unit!18844)

(assert (=> b!598759 (= lt!272143 e!342292)))

(declare-fun c!67766 () Bool)

(assert (=> b!598759 (= c!67766 (= lt!272149 Undefined!6225))))

(assert (=> b!598759 (= lt!272149 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272147 lt!272152 mask!3053))))

(declare-fun e!342298 () Bool)

(assert (=> b!598759 e!342298))

(declare-fun res!383952 () Bool)

(assert (=> b!598759 (=> (not res!383952) (not e!342298))))

(declare-fun lt!272144 () SeekEntryResult!6225)

(declare-fun lt!272146 () (_ BitVec 32))

(assert (=> b!598759 (= res!383952 (= lt!272144 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272146 vacantSpotIndex!68 lt!272147 lt!272152 mask!3053)))))

(assert (=> b!598759 (= lt!272144 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272146 vacantSpotIndex!68 (select (arr!17778 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!598759 (= lt!272147 (select (store (arr!17778 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272148 () Unit!18844)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37044 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18844)

(assert (=> b!598759 (= lt!272148 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272146 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!598759 (= lt!272146 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!598760 () Bool)

(declare-fun res!383951 () Bool)

(assert (=> b!598760 (=> (not res!383951) (not e!342295))))

(assert (=> b!598760 (= res!383951 (validKeyInArray!0 (select (arr!17778 a!2986) j!136)))))

(declare-fun b!598761 () Bool)

(declare-fun e!342293 () Bool)

(assert (=> b!598761 (= e!342290 e!342293)))

(declare-fun res!383953 () Bool)

(assert (=> b!598761 (=> res!383953 e!342293)))

(assert (=> b!598761 (= res!383953 (or (not (= (select (arr!17778 a!2986) j!136) lt!272147)) (not (= (select (arr!17778 a!2986) j!136) lt!272150)) (bvsge j!136 index!984)))))

(declare-fun b!598762 () Bool)

(assert (=> b!598762 (= e!342293 e!342288)))

(declare-fun res!383954 () Bool)

(assert (=> b!598762 (=> (not res!383954) (not e!342288))))

(assert (=> b!598762 (= res!383954 (arrayContainsKey!0 lt!272152 (select (arr!17778 a!2986) j!136) j!136))))

(declare-fun b!598763 () Bool)

(assert (=> b!598763 (= e!342298 (= lt!272153 lt!272144))))

(assert (= (and start!54846 res!383958) b!598756))

(assert (= (and b!598756 res!383947) b!598760))

(assert (= (and b!598760 res!383951) b!598747))

(assert (= (and b!598747 res!383950) b!598749))

(assert (= (and b!598749 res!383960) b!598755))

(assert (= (and b!598755 res!383959) b!598753))

(assert (= (and b!598753 res!383963) b!598752))

(assert (= (and b!598752 res!383956) b!598751))

(assert (= (and b!598751 res!383961) b!598757))

(assert (= (and b!598757 res!383962) b!598748))

(assert (= (and b!598748 res!383949) b!598759))

(assert (= (and b!598759 res!383952) b!598763))

(assert (= (and b!598759 c!67766) b!598746))

(assert (= (and b!598759 (not c!67766)) b!598750))

(assert (= (and b!598759 (not res!383948)) b!598754))

(assert (= (and b!598754 res!383957) b!598761))

(assert (= (and b!598761 (not res!383953)) b!598762))

(assert (= (and b!598762 res!383954) b!598745))

(assert (= (and b!598754 (not res!383955)) b!598758))

(declare-fun m!576075 () Bool)

(assert (=> b!598757 m!576075))

(declare-fun m!576077 () Bool)

(assert (=> b!598757 m!576077))

(declare-fun m!576079 () Bool)

(assert (=> b!598753 m!576079))

(declare-fun m!576081 () Bool)

(assert (=> b!598755 m!576081))

(declare-fun m!576083 () Bool)

(assert (=> start!54846 m!576083))

(declare-fun m!576085 () Bool)

(assert (=> start!54846 m!576085))

(declare-fun m!576087 () Bool)

(assert (=> b!598751 m!576087))

(declare-fun m!576089 () Bool)

(assert (=> b!598758 m!576089))

(assert (=> b!598758 m!576089))

(declare-fun m!576091 () Bool)

(assert (=> b!598758 m!576091))

(declare-fun m!576093 () Bool)

(assert (=> b!598758 m!576093))

(assert (=> b!598758 m!576089))

(declare-fun m!576095 () Bool)

(assert (=> b!598758 m!576095))

(declare-fun m!576097 () Bool)

(assert (=> b!598758 m!576097))

(assert (=> b!598754 m!576089))

(assert (=> b!598754 m!576075))

(declare-fun m!576099 () Bool)

(assert (=> b!598754 m!576099))

(assert (=> b!598762 m!576089))

(assert (=> b!598762 m!576089))

(declare-fun m!576101 () Bool)

(assert (=> b!598762 m!576101))

(assert (=> b!598745 m!576089))

(assert (=> b!598745 m!576089))

(declare-fun m!576103 () Bool)

(assert (=> b!598745 m!576103))

(declare-fun m!576105 () Bool)

(assert (=> b!598747 m!576105))

(declare-fun m!576107 () Bool)

(assert (=> b!598748 m!576107))

(assert (=> b!598748 m!576089))

(assert (=> b!598748 m!576089))

(declare-fun m!576109 () Bool)

(assert (=> b!598748 m!576109))

(declare-fun m!576111 () Bool)

(assert (=> b!598752 m!576111))

(assert (=> b!598760 m!576089))

(assert (=> b!598760 m!576089))

(declare-fun m!576113 () Bool)

(assert (=> b!598760 m!576113))

(assert (=> b!598761 m!576089))

(declare-fun m!576115 () Bool)

(assert (=> b!598749 m!576115))

(declare-fun m!576117 () Bool)

(assert (=> b!598759 m!576117))

(assert (=> b!598759 m!576089))

(assert (=> b!598759 m!576075))

(declare-fun m!576119 () Bool)

(assert (=> b!598759 m!576119))

(declare-fun m!576121 () Bool)

(assert (=> b!598759 m!576121))

(assert (=> b!598759 m!576089))

(declare-fun m!576123 () Bool)

(assert (=> b!598759 m!576123))

(declare-fun m!576125 () Bool)

(assert (=> b!598759 m!576125))

(declare-fun m!576127 () Bool)

(assert (=> b!598759 m!576127))

(push 1)

