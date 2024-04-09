; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56114 () Bool)

(assert start!56114)

(declare-fun b!619064 () Bool)

(declare-fun e!355038 () Bool)

(declare-fun e!355043 () Bool)

(assert (=> b!619064 (= e!355038 (not e!355043))))

(declare-fun res!398990 () Bool)

(assert (=> b!619064 (=> res!398990 e!355043)))

(declare-datatypes ((SeekEntryResult!6463 0))(
  ( (MissingZero!6463 (index!28135 (_ BitVec 32))) (Found!6463 (index!28136 (_ BitVec 32))) (Intermediate!6463 (undefined!7275 Bool) (index!28137 (_ BitVec 32)) (x!56944 (_ BitVec 32))) (Undefined!6463) (MissingVacant!6463 (index!28138 (_ BitVec 32))) )
))
(declare-fun lt!285746 () SeekEntryResult!6463)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!619064 (= res!398990 (not (= lt!285746 (MissingVacant!6463 vacantSpotIndex!68))))))

(declare-datatypes ((Unit!20450 0))(
  ( (Unit!20451) )
))
(declare-fun lt!285755 () Unit!20450)

(declare-fun e!355051 () Unit!20450)

(assert (=> b!619064 (= lt!285755 e!355051)))

(declare-fun c!70412 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!619064 (= c!70412 (= lt!285746 (Found!6463 index!984)))))

(declare-fun lt!285748 () Unit!20450)

(declare-fun e!355039 () Unit!20450)

(assert (=> b!619064 (= lt!285748 e!355039)))

(declare-fun c!70414 () Bool)

(assert (=> b!619064 (= c!70414 (= lt!285746 Undefined!6463))))

(declare-fun lt!285754 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!37547 0))(
  ( (array!37548 (arr!18016 (Array (_ BitVec 32) (_ BitVec 64))) (size!18380 (_ BitVec 32))) )
))
(declare-fun lt!285742 () array!37547)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37547 (_ BitVec 32)) SeekEntryResult!6463)

(assert (=> b!619064 (= lt!285746 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285754 lt!285742 mask!3053))))

(declare-fun e!355044 () Bool)

(assert (=> b!619064 e!355044))

(declare-fun res!398980 () Bool)

(assert (=> b!619064 (=> (not res!398980) (not e!355044))))

(declare-fun lt!285749 () (_ BitVec 32))

(declare-fun lt!285751 () SeekEntryResult!6463)

(assert (=> b!619064 (= res!398980 (= lt!285751 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285749 vacantSpotIndex!68 lt!285754 lt!285742 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37547)

(assert (=> b!619064 (= lt!285751 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285749 vacantSpotIndex!68 (select (arr!18016 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!619064 (= lt!285754 (select (store (arr!18016 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!285737 () Unit!20450)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37547 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20450)

(assert (=> b!619064 (= lt!285737 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285749 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!619064 (= lt!285749 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!619065 () Bool)

(assert (=> b!619065 (= e!355043 true)))

(assert (=> b!619065 (= (select (store (arr!18016 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!619066 () Bool)

(declare-fun res!398974 () Bool)

(declare-fun e!355049 () Bool)

(assert (=> b!619066 (=> (not res!398974) (not e!355049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!619066 (= res!398974 (validKeyInArray!0 k0!1786))))

(declare-fun b!619067 () Bool)

(declare-fun res!398987 () Bool)

(declare-fun arrayContainsKey!0 (array!37547 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!619067 (= res!398987 (arrayContainsKey!0 lt!285742 (select (arr!18016 a!2986) j!136) j!136))))

(declare-fun e!355042 () Bool)

(assert (=> b!619067 (=> (not res!398987) (not e!355042))))

(declare-fun e!355048 () Bool)

(assert (=> b!619067 (= e!355048 e!355042)))

(declare-fun b!619068 () Bool)

(declare-fun res!398983 () Bool)

(declare-fun e!355037 () Bool)

(assert (=> b!619068 (=> (not res!398983) (not e!355037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37547 (_ BitVec 32)) Bool)

(assert (=> b!619068 (= res!398983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!619069 () Bool)

(declare-fun e!355041 () Bool)

(assert (=> b!619069 (= e!355041 (arrayContainsKey!0 lt!285742 (select (arr!18016 a!2986) j!136) index!984))))

(declare-fun b!619070 () Bool)

(declare-fun e!355045 () Bool)

(assert (=> b!619070 (= e!355045 e!355038)))

(declare-fun res!398984 () Bool)

(assert (=> b!619070 (=> (not res!398984) (not e!355038))))

(declare-fun lt!285739 () SeekEntryResult!6463)

(assert (=> b!619070 (= res!398984 (and (= lt!285739 (Found!6463 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18016 a!2986) index!984) (select (arr!18016 a!2986) j!136))) (not (= (select (arr!18016 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!619070 (= lt!285739 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18016 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!619071 () Bool)

(declare-fun res!398977 () Bool)

(assert (=> b!619071 (=> (not res!398977) (not e!355037))))

(assert (=> b!619071 (= res!398977 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18016 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!619072 () Bool)

(assert (=> b!619072 (= e!355044 (= lt!285739 lt!285751))))

(declare-fun b!619073 () Bool)

(declare-fun res!398982 () Bool)

(assert (=> b!619073 (=> (not res!398982) (not e!355049))))

(assert (=> b!619073 (= res!398982 (and (= (size!18380 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18380 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18380 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!619074 () Bool)

(assert (=> b!619074 false))

(declare-fun lt!285753 () Unit!20450)

(declare-datatypes ((List!12110 0))(
  ( (Nil!12107) (Cons!12106 (h!13151 (_ BitVec 64)) (t!18346 List!12110)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37547 (_ BitVec 64) (_ BitVec 32) List!12110) Unit!20450)

(assert (=> b!619074 (= lt!285753 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285742 (select (arr!18016 a!2986) j!136) index!984 Nil!12107))))

(declare-fun arrayNoDuplicates!0 (array!37547 (_ BitVec 32) List!12110) Bool)

(assert (=> b!619074 (arrayNoDuplicates!0 lt!285742 index!984 Nil!12107)))

(declare-fun lt!285740 () Unit!20450)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37547 (_ BitVec 32) (_ BitVec 32)) Unit!20450)

(assert (=> b!619074 (= lt!285740 (lemmaNoDuplicateFromThenFromBigger!0 lt!285742 #b00000000000000000000000000000000 index!984))))

(assert (=> b!619074 (arrayNoDuplicates!0 lt!285742 #b00000000000000000000000000000000 Nil!12107)))

(declare-fun lt!285752 () Unit!20450)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37547 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12110) Unit!20450)

(assert (=> b!619074 (= lt!285752 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12107))))

(assert (=> b!619074 (arrayContainsKey!0 lt!285742 (select (arr!18016 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285743 () Unit!20450)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37547 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20450)

(assert (=> b!619074 (= lt!285743 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285742 (select (arr!18016 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!619074 e!355041))

(declare-fun res!398981 () Bool)

(assert (=> b!619074 (=> (not res!398981) (not e!355041))))

(assert (=> b!619074 (= res!398981 (arrayContainsKey!0 lt!285742 (select (arr!18016 a!2986) j!136) j!136))))

(declare-fun e!355046 () Unit!20450)

(declare-fun Unit!20452 () Unit!20450)

(assert (=> b!619074 (= e!355046 Unit!20452)))

(declare-fun b!619075 () Bool)

(declare-fun e!355050 () Unit!20450)

(declare-fun Unit!20453 () Unit!20450)

(assert (=> b!619075 (= e!355050 Unit!20453)))

(declare-fun b!619076 () Bool)

(assert (=> b!619076 false))

(declare-fun lt!285744 () Unit!20450)

(assert (=> b!619076 (= lt!285744 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285742 (select (arr!18016 a!2986) j!136) j!136 Nil!12107))))

(assert (=> b!619076 (arrayNoDuplicates!0 lt!285742 j!136 Nil!12107)))

(declare-fun lt!285741 () Unit!20450)

(assert (=> b!619076 (= lt!285741 (lemmaNoDuplicateFromThenFromBigger!0 lt!285742 #b00000000000000000000000000000000 j!136))))

(assert (=> b!619076 (arrayNoDuplicates!0 lt!285742 #b00000000000000000000000000000000 Nil!12107)))

(declare-fun lt!285745 () Unit!20450)

(assert (=> b!619076 (= lt!285745 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12107))))

(assert (=> b!619076 (arrayContainsKey!0 lt!285742 (select (arr!18016 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285738 () Unit!20450)

(assert (=> b!619076 (= lt!285738 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285742 (select (arr!18016 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20454 () Unit!20450)

(assert (=> b!619076 (= e!355050 Unit!20454)))

(declare-fun b!619077 () Bool)

(declare-fun res!398988 () Bool)

(assert (=> b!619077 (= res!398988 (bvsge j!136 index!984))))

(assert (=> b!619077 (=> res!398988 e!355048)))

(declare-fun e!355047 () Bool)

(assert (=> b!619077 (= e!355047 e!355048)))

(declare-fun b!619078 () Bool)

(declare-fun res!398989 () Bool)

(assert (=> b!619078 (=> (not res!398989) (not e!355037))))

(assert (=> b!619078 (= res!398989 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12107))))

(declare-fun b!619079 () Bool)

(declare-fun Unit!20455 () Unit!20450)

(assert (=> b!619079 (= e!355039 Unit!20455)))

(assert (=> b!619079 false))

(declare-fun b!619080 () Bool)

(assert (=> b!619080 (= e!355037 e!355045)))

(declare-fun res!398986 () Bool)

(assert (=> b!619080 (=> (not res!398986) (not e!355045))))

(assert (=> b!619080 (= res!398986 (= (select (store (arr!18016 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!619080 (= lt!285742 (array!37548 (store (arr!18016 a!2986) i!1108 k0!1786) (size!18380 a!2986)))))

(declare-fun b!619081 () Bool)

(assert (=> b!619081 (= e!355049 e!355037)))

(declare-fun res!398985 () Bool)

(assert (=> b!619081 (=> (not res!398985) (not e!355037))))

(declare-fun lt!285750 () SeekEntryResult!6463)

(assert (=> b!619081 (= res!398985 (or (= lt!285750 (MissingZero!6463 i!1108)) (= lt!285750 (MissingVacant!6463 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37547 (_ BitVec 32)) SeekEntryResult!6463)

(assert (=> b!619081 (= lt!285750 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!619082 () Bool)

(declare-fun Unit!20456 () Unit!20450)

(assert (=> b!619082 (= e!355046 Unit!20456)))

(declare-fun b!619083 () Bool)

(declare-fun Unit!20457 () Unit!20450)

(assert (=> b!619083 (= e!355051 Unit!20457)))

(declare-fun b!619084 () Bool)

(assert (=> b!619084 (= e!355042 (arrayContainsKey!0 lt!285742 (select (arr!18016 a!2986) j!136) index!984))))

(declare-fun b!619085 () Bool)

(declare-fun Unit!20458 () Unit!20450)

(assert (=> b!619085 (= e!355051 Unit!20458)))

(declare-fun res!398979 () Bool)

(assert (=> b!619085 (= res!398979 (= (select (store (arr!18016 a!2986) i!1108 k0!1786) index!984) (select (arr!18016 a!2986) j!136)))))

(assert (=> b!619085 (=> (not res!398979) (not e!355047))))

(assert (=> b!619085 e!355047))

(declare-fun c!70413 () Bool)

(assert (=> b!619085 (= c!70413 (bvslt j!136 index!984))))

(declare-fun lt!285756 () Unit!20450)

(assert (=> b!619085 (= lt!285756 e!355050)))

(declare-fun c!70415 () Bool)

(assert (=> b!619085 (= c!70415 (bvslt index!984 j!136))))

(declare-fun lt!285747 () Unit!20450)

(assert (=> b!619085 (= lt!285747 e!355046)))

(assert (=> b!619085 false))

(declare-fun b!619086 () Bool)

(declare-fun Unit!20459 () Unit!20450)

(assert (=> b!619086 (= e!355039 Unit!20459)))

(declare-fun b!619087 () Bool)

(declare-fun res!398976 () Bool)

(assert (=> b!619087 (=> (not res!398976) (not e!355049))))

(assert (=> b!619087 (= res!398976 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!398975 () Bool)

(assert (=> start!56114 (=> (not res!398975) (not e!355049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56114 (= res!398975 (validMask!0 mask!3053))))

(assert (=> start!56114 e!355049))

(assert (=> start!56114 true))

(declare-fun array_inv!13790 (array!37547) Bool)

(assert (=> start!56114 (array_inv!13790 a!2986)))

(declare-fun b!619088 () Bool)

(declare-fun res!398978 () Bool)

(assert (=> b!619088 (=> (not res!398978) (not e!355049))))

(assert (=> b!619088 (= res!398978 (validKeyInArray!0 (select (arr!18016 a!2986) j!136)))))

(assert (= (and start!56114 res!398975) b!619073))

(assert (= (and b!619073 res!398982) b!619088))

(assert (= (and b!619088 res!398978) b!619066))

(assert (= (and b!619066 res!398974) b!619087))

(assert (= (and b!619087 res!398976) b!619081))

(assert (= (and b!619081 res!398985) b!619068))

(assert (= (and b!619068 res!398983) b!619078))

(assert (= (and b!619078 res!398989) b!619071))

(assert (= (and b!619071 res!398977) b!619080))

(assert (= (and b!619080 res!398986) b!619070))

(assert (= (and b!619070 res!398984) b!619064))

(assert (= (and b!619064 res!398980) b!619072))

(assert (= (and b!619064 c!70414) b!619079))

(assert (= (and b!619064 (not c!70414)) b!619086))

(assert (= (and b!619064 c!70412) b!619085))

(assert (= (and b!619064 (not c!70412)) b!619083))

(assert (= (and b!619085 res!398979) b!619077))

(assert (= (and b!619077 (not res!398988)) b!619067))

(assert (= (and b!619067 res!398987) b!619084))

(assert (= (and b!619085 c!70413) b!619076))

(assert (= (and b!619085 (not c!70413)) b!619075))

(assert (= (and b!619085 c!70415) b!619074))

(assert (= (and b!619085 (not c!70415)) b!619082))

(assert (= (and b!619074 res!398981) b!619069))

(assert (= (and b!619064 (not res!398990)) b!619065))

(declare-fun m!595099 () Bool)

(assert (=> b!619066 m!595099))

(declare-fun m!595101 () Bool)

(assert (=> b!619078 m!595101))

(declare-fun m!595103 () Bool)

(assert (=> b!619081 m!595103))

(declare-fun m!595105 () Bool)

(assert (=> b!619076 m!595105))

(declare-fun m!595107 () Bool)

(assert (=> b!619076 m!595107))

(assert (=> b!619076 m!595105))

(declare-fun m!595109 () Bool)

(assert (=> b!619076 m!595109))

(assert (=> b!619076 m!595105))

(declare-fun m!595111 () Bool)

(assert (=> b!619076 m!595111))

(assert (=> b!619076 m!595105))

(declare-fun m!595113 () Bool)

(assert (=> b!619076 m!595113))

(declare-fun m!595115 () Bool)

(assert (=> b!619076 m!595115))

(declare-fun m!595117 () Bool)

(assert (=> b!619076 m!595117))

(declare-fun m!595119 () Bool)

(assert (=> b!619076 m!595119))

(declare-fun m!595121 () Bool)

(assert (=> b!619080 m!595121))

(declare-fun m!595123 () Bool)

(assert (=> b!619080 m!595123))

(declare-fun m!595125 () Bool)

(assert (=> b!619087 m!595125))

(assert (=> b!619085 m!595121))

(declare-fun m!595127 () Bool)

(assert (=> b!619085 m!595127))

(assert (=> b!619085 m!595105))

(assert (=> b!619065 m!595121))

(assert (=> b!619065 m!595127))

(assert (=> b!619074 m!595105))

(declare-fun m!595129 () Bool)

(assert (=> b!619074 m!595129))

(assert (=> b!619074 m!595105))

(assert (=> b!619074 m!595115))

(declare-fun m!595131 () Bool)

(assert (=> b!619074 m!595131))

(assert (=> b!619074 m!595105))

(declare-fun m!595133 () Bool)

(assert (=> b!619074 m!595133))

(assert (=> b!619074 m!595105))

(declare-fun m!595135 () Bool)

(assert (=> b!619074 m!595135))

(assert (=> b!619074 m!595105))

(declare-fun m!595137 () Bool)

(assert (=> b!619074 m!595137))

(declare-fun m!595139 () Bool)

(assert (=> b!619074 m!595139))

(assert (=> b!619074 m!595119))

(assert (=> b!619067 m!595105))

(assert (=> b!619067 m!595105))

(assert (=> b!619067 m!595133))

(assert (=> b!619069 m!595105))

(assert (=> b!619069 m!595105))

(declare-fun m!595141 () Bool)

(assert (=> b!619069 m!595141))

(declare-fun m!595143 () Bool)

(assert (=> start!56114 m!595143))

(declare-fun m!595145 () Bool)

(assert (=> start!56114 m!595145))

(declare-fun m!595147 () Bool)

(assert (=> b!619068 m!595147))

(assert (=> b!619088 m!595105))

(assert (=> b!619088 m!595105))

(declare-fun m!595149 () Bool)

(assert (=> b!619088 m!595149))

(assert (=> b!619084 m!595105))

(assert (=> b!619084 m!595105))

(assert (=> b!619084 m!595141))

(declare-fun m!595151 () Bool)

(assert (=> b!619070 m!595151))

(assert (=> b!619070 m!595105))

(assert (=> b!619070 m!595105))

(declare-fun m!595153 () Bool)

(assert (=> b!619070 m!595153))

(declare-fun m!595155 () Bool)

(assert (=> b!619064 m!595155))

(declare-fun m!595157 () Bool)

(assert (=> b!619064 m!595157))

(assert (=> b!619064 m!595105))

(assert (=> b!619064 m!595121))

(declare-fun m!595159 () Bool)

(assert (=> b!619064 m!595159))

(declare-fun m!595161 () Bool)

(assert (=> b!619064 m!595161))

(assert (=> b!619064 m!595105))

(declare-fun m!595163 () Bool)

(assert (=> b!619064 m!595163))

(declare-fun m!595165 () Bool)

(assert (=> b!619064 m!595165))

(declare-fun m!595167 () Bool)

(assert (=> b!619071 m!595167))

(check-sat (not b!619088) (not b!619081) (not b!619069) (not b!619087) (not b!619076) (not b!619078) (not b!619066) (not b!619064) (not b!619070) (not b!619068) (not start!56114) (not b!619084) (not b!619074) (not b!619067))
(check-sat)
