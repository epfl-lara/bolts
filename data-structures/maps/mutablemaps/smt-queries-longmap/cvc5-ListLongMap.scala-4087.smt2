; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56028 () Bool)

(assert start!56028)

(declare-fun b!615846 () Bool)

(declare-datatypes ((Unit!20020 0))(
  ( (Unit!20021) )
))
(declare-fun e!353114 () Unit!20020)

(declare-fun Unit!20022 () Unit!20020)

(assert (=> b!615846 (= e!353114 Unit!20022)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!396796 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37461 0))(
  ( (array!37462 (arr!17973 (Array (_ BitVec 32) (_ BitVec 64))) (size!18337 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37461)

(assert (=> b!615846 (= res!396796 (= (select (store (arr!17973 a!2986) i!1108 k!1786) index!984) (select (arr!17973 a!2986) j!136)))))

(declare-fun e!353109 () Bool)

(assert (=> b!615846 (=> (not res!396796) (not e!353109))))

(assert (=> b!615846 e!353109))

(declare-fun c!69896 () Bool)

(assert (=> b!615846 (= c!69896 (bvslt j!136 index!984))))

(declare-fun lt!283164 () Unit!20020)

(declare-fun e!353112 () Unit!20020)

(assert (=> b!615846 (= lt!283164 e!353112)))

(declare-fun c!69898 () Bool)

(assert (=> b!615846 (= c!69898 (bvslt index!984 j!136))))

(declare-fun lt!283175 () Unit!20020)

(declare-fun e!353121 () Unit!20020)

(assert (=> b!615846 (= lt!283175 e!353121)))

(assert (=> b!615846 false))

(declare-fun b!615847 () Bool)

(declare-fun res!396791 () Bool)

(assert (=> b!615847 (= res!396791 (bvsge j!136 index!984))))

(declare-fun e!353120 () Bool)

(assert (=> b!615847 (=> res!396791 e!353120)))

(assert (=> b!615847 (= e!353109 e!353120)))

(declare-fun b!615848 () Bool)

(declare-fun e!353119 () Bool)

(declare-fun e!353115 () Bool)

(assert (=> b!615848 (= e!353119 e!353115)))

(declare-fun res!396798 () Bool)

(assert (=> b!615848 (=> (not res!396798) (not e!353115))))

(declare-datatypes ((SeekEntryResult!6420 0))(
  ( (MissingZero!6420 (index!27963 (_ BitVec 32))) (Found!6420 (index!27964 (_ BitVec 32))) (Intermediate!6420 (undefined!7232 Bool) (index!27965 (_ BitVec 32)) (x!56789 (_ BitVec 32))) (Undefined!6420) (MissingVacant!6420 (index!27966 (_ BitVec 32))) )
))
(declare-fun lt!283165 () SeekEntryResult!6420)

(assert (=> b!615848 (= res!396798 (or (= lt!283165 (MissingZero!6420 i!1108)) (= lt!283165 (MissingVacant!6420 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37461 (_ BitVec 32)) SeekEntryResult!6420)

(assert (=> b!615848 (= lt!283165 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!615849 () Bool)

(declare-fun res!396797 () Bool)

(assert (=> b!615849 (=> (not res!396797) (not e!353115))))

(declare-datatypes ((List!12067 0))(
  ( (Nil!12064) (Cons!12063 (h!13108 (_ BitVec 64)) (t!18303 List!12067)) )
))
(declare-fun arrayNoDuplicates!0 (array!37461 (_ BitVec 32) List!12067) Bool)

(assert (=> b!615849 (= res!396797 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12064))))

(declare-fun b!615850 () Bool)

(declare-fun res!396802 () Bool)

(assert (=> b!615850 (=> (not res!396802) (not e!353115))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!615850 (= res!396802 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17973 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!615851 () Bool)

(declare-fun Unit!20023 () Unit!20020)

(assert (=> b!615851 (= e!353121 Unit!20023)))

(declare-fun res!396790 () Bool)

(assert (=> start!56028 (=> (not res!396790) (not e!353119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56028 (= res!396790 (validMask!0 mask!3053))))

(assert (=> start!56028 e!353119))

(assert (=> start!56028 true))

(declare-fun array_inv!13747 (array!37461) Bool)

(assert (=> start!56028 (array_inv!13747 a!2986)))

(declare-fun b!615852 () Bool)

(declare-fun e!353113 () Bool)

(assert (=> b!615852 (= e!353115 e!353113)))

(declare-fun res!396803 () Bool)

(assert (=> b!615852 (=> (not res!396803) (not e!353113))))

(assert (=> b!615852 (= res!396803 (= (select (store (arr!17973 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!283161 () array!37461)

(assert (=> b!615852 (= lt!283161 (array!37462 (store (arr!17973 a!2986) i!1108 k!1786) (size!18337 a!2986)))))

(declare-fun b!615853 () Bool)

(declare-fun e!353111 () Bool)

(declare-fun lt!283158 () SeekEntryResult!6420)

(declare-fun lt!283174 () SeekEntryResult!6420)

(assert (=> b!615853 (= e!353111 (= lt!283158 lt!283174))))

(declare-fun b!615854 () Bool)

(declare-fun e!353122 () Bool)

(assert (=> b!615854 (= e!353122 (not true))))

(declare-fun lt!283167 () Unit!20020)

(assert (=> b!615854 (= lt!283167 e!353114)))

(declare-fun c!69899 () Bool)

(declare-fun lt!283162 () SeekEntryResult!6420)

(assert (=> b!615854 (= c!69899 (= lt!283162 (Found!6420 index!984)))))

(declare-fun lt!283173 () Unit!20020)

(declare-fun e!353116 () Unit!20020)

(assert (=> b!615854 (= lt!283173 e!353116)))

(declare-fun c!69897 () Bool)

(assert (=> b!615854 (= c!69897 (= lt!283162 Undefined!6420))))

(declare-fun lt!283170 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37461 (_ BitVec 32)) SeekEntryResult!6420)

(assert (=> b!615854 (= lt!283162 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283170 lt!283161 mask!3053))))

(assert (=> b!615854 e!353111))

(declare-fun res!396789 () Bool)

(assert (=> b!615854 (=> (not res!396789) (not e!353111))))

(declare-fun lt!283166 () (_ BitVec 32))

(assert (=> b!615854 (= res!396789 (= lt!283174 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283166 vacantSpotIndex!68 lt!283170 lt!283161 mask!3053)))))

(assert (=> b!615854 (= lt!283174 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283166 vacantSpotIndex!68 (select (arr!17973 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!615854 (= lt!283170 (select (store (arr!17973 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!283168 () Unit!20020)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37461 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20020)

(assert (=> b!615854 (= lt!283168 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283166 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!615854 (= lt!283166 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!615855 () Bool)

(declare-fun res!396793 () Bool)

(assert (=> b!615855 (=> (not res!396793) (not e!353119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!615855 (= res!396793 (validKeyInArray!0 (select (arr!17973 a!2986) j!136)))))

(declare-fun res!396800 () Bool)

(declare-fun b!615856 () Bool)

(declare-fun arrayContainsKey!0 (array!37461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!615856 (= res!396800 (arrayContainsKey!0 lt!283161 (select (arr!17973 a!2986) j!136) j!136))))

(declare-fun e!353118 () Bool)

(assert (=> b!615856 (=> (not res!396800) (not e!353118))))

(assert (=> b!615856 (= e!353120 e!353118)))

(declare-fun b!615857 () Bool)

(declare-fun Unit!20024 () Unit!20020)

(assert (=> b!615857 (= e!353114 Unit!20024)))

(declare-fun b!615858 () Bool)

(assert (=> b!615858 false))

(declare-fun lt!283176 () Unit!20020)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37461 (_ BitVec 64) (_ BitVec 32) List!12067) Unit!20020)

(assert (=> b!615858 (= lt!283176 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283161 (select (arr!17973 a!2986) j!136) index!984 Nil!12064))))

(assert (=> b!615858 (arrayNoDuplicates!0 lt!283161 index!984 Nil!12064)))

(declare-fun lt!283159 () Unit!20020)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37461 (_ BitVec 32) (_ BitVec 32)) Unit!20020)

(assert (=> b!615858 (= lt!283159 (lemmaNoDuplicateFromThenFromBigger!0 lt!283161 #b00000000000000000000000000000000 index!984))))

(assert (=> b!615858 (arrayNoDuplicates!0 lt!283161 #b00000000000000000000000000000000 Nil!12064)))

(declare-fun lt!283171 () Unit!20020)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37461 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12067) Unit!20020)

(assert (=> b!615858 (= lt!283171 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12064))))

(assert (=> b!615858 (arrayContainsKey!0 lt!283161 (select (arr!17973 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283169 () Unit!20020)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37461 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20020)

(assert (=> b!615858 (= lt!283169 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283161 (select (arr!17973 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!353110 () Bool)

(assert (=> b!615858 e!353110))

(declare-fun res!396795 () Bool)

(assert (=> b!615858 (=> (not res!396795) (not e!353110))))

(assert (=> b!615858 (= res!396795 (arrayContainsKey!0 lt!283161 (select (arr!17973 a!2986) j!136) j!136))))

(declare-fun Unit!20025 () Unit!20020)

(assert (=> b!615858 (= e!353121 Unit!20025)))

(declare-fun b!615859 () Bool)

(declare-fun res!396794 () Bool)

(assert (=> b!615859 (=> (not res!396794) (not e!353115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37461 (_ BitVec 32)) Bool)

(assert (=> b!615859 (= res!396794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!615860 () Bool)

(assert (=> b!615860 (= e!353118 (arrayContainsKey!0 lt!283161 (select (arr!17973 a!2986) j!136) index!984))))

(declare-fun b!615861 () Bool)

(declare-fun res!396801 () Bool)

(assert (=> b!615861 (=> (not res!396801) (not e!353119))))

(assert (=> b!615861 (= res!396801 (and (= (size!18337 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18337 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18337 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!615862 () Bool)

(assert (=> b!615862 (= e!353113 e!353122)))

(declare-fun res!396788 () Bool)

(assert (=> b!615862 (=> (not res!396788) (not e!353122))))

(assert (=> b!615862 (= res!396788 (and (= lt!283158 (Found!6420 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17973 a!2986) index!984) (select (arr!17973 a!2986) j!136))) (not (= (select (arr!17973 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!615862 (= lt!283158 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17973 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!615863 () Bool)

(declare-fun Unit!20026 () Unit!20020)

(assert (=> b!615863 (= e!353116 Unit!20026)))

(declare-fun b!615864 () Bool)

(declare-fun Unit!20027 () Unit!20020)

(assert (=> b!615864 (= e!353112 Unit!20027)))

(declare-fun b!615865 () Bool)

(declare-fun Unit!20028 () Unit!20020)

(assert (=> b!615865 (= e!353116 Unit!20028)))

(assert (=> b!615865 false))

(declare-fun b!615866 () Bool)

(declare-fun res!396799 () Bool)

(assert (=> b!615866 (=> (not res!396799) (not e!353119))))

(assert (=> b!615866 (= res!396799 (validKeyInArray!0 k!1786))))

(declare-fun b!615867 () Bool)

(assert (=> b!615867 false))

(declare-fun lt!283163 () Unit!20020)

(assert (=> b!615867 (= lt!283163 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283161 (select (arr!17973 a!2986) j!136) j!136 Nil!12064))))

(assert (=> b!615867 (arrayNoDuplicates!0 lt!283161 j!136 Nil!12064)))

(declare-fun lt!283160 () Unit!20020)

(assert (=> b!615867 (= lt!283160 (lemmaNoDuplicateFromThenFromBigger!0 lt!283161 #b00000000000000000000000000000000 j!136))))

(assert (=> b!615867 (arrayNoDuplicates!0 lt!283161 #b00000000000000000000000000000000 Nil!12064)))

(declare-fun lt!283157 () Unit!20020)

(assert (=> b!615867 (= lt!283157 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12064))))

(assert (=> b!615867 (arrayContainsKey!0 lt!283161 (select (arr!17973 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283172 () Unit!20020)

(assert (=> b!615867 (= lt!283172 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283161 (select (arr!17973 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20029 () Unit!20020)

(assert (=> b!615867 (= e!353112 Unit!20029)))

(declare-fun b!615868 () Bool)

(declare-fun res!396792 () Bool)

(assert (=> b!615868 (=> (not res!396792) (not e!353119))))

(assert (=> b!615868 (= res!396792 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!615869 () Bool)

(assert (=> b!615869 (= e!353110 (arrayContainsKey!0 lt!283161 (select (arr!17973 a!2986) j!136) index!984))))

(assert (= (and start!56028 res!396790) b!615861))

(assert (= (and b!615861 res!396801) b!615855))

(assert (= (and b!615855 res!396793) b!615866))

(assert (= (and b!615866 res!396799) b!615868))

(assert (= (and b!615868 res!396792) b!615848))

(assert (= (and b!615848 res!396798) b!615859))

(assert (= (and b!615859 res!396794) b!615849))

(assert (= (and b!615849 res!396797) b!615850))

(assert (= (and b!615850 res!396802) b!615852))

(assert (= (and b!615852 res!396803) b!615862))

(assert (= (and b!615862 res!396788) b!615854))

(assert (= (and b!615854 res!396789) b!615853))

(assert (= (and b!615854 c!69897) b!615865))

(assert (= (and b!615854 (not c!69897)) b!615863))

(assert (= (and b!615854 c!69899) b!615846))

(assert (= (and b!615854 (not c!69899)) b!615857))

(assert (= (and b!615846 res!396796) b!615847))

(assert (= (and b!615847 (not res!396791)) b!615856))

(assert (= (and b!615856 res!396800) b!615860))

(assert (= (and b!615846 c!69896) b!615867))

(assert (= (and b!615846 (not c!69896)) b!615864))

(assert (= (and b!615846 c!69898) b!615858))

(assert (= (and b!615846 (not c!69898)) b!615851))

(assert (= (and b!615858 res!396795) b!615869))

(declare-fun m!592083 () Bool)

(assert (=> b!615858 m!592083))

(assert (=> b!615858 m!592083))

(declare-fun m!592085 () Bool)

(assert (=> b!615858 m!592085))

(declare-fun m!592087 () Bool)

(assert (=> b!615858 m!592087))

(declare-fun m!592089 () Bool)

(assert (=> b!615858 m!592089))

(assert (=> b!615858 m!592083))

(declare-fun m!592091 () Bool)

(assert (=> b!615858 m!592091))

(assert (=> b!615858 m!592083))

(declare-fun m!592093 () Bool)

(assert (=> b!615858 m!592093))

(declare-fun m!592095 () Bool)

(assert (=> b!615858 m!592095))

(declare-fun m!592097 () Bool)

(assert (=> b!615858 m!592097))

(assert (=> b!615858 m!592083))

(declare-fun m!592099 () Bool)

(assert (=> b!615858 m!592099))

(assert (=> b!615867 m!592083))

(declare-fun m!592101 () Bool)

(assert (=> b!615867 m!592101))

(assert (=> b!615867 m!592083))

(declare-fun m!592103 () Bool)

(assert (=> b!615867 m!592103))

(assert (=> b!615867 m!592083))

(declare-fun m!592105 () Bool)

(assert (=> b!615867 m!592105))

(assert (=> b!615867 m!592087))

(assert (=> b!615867 m!592083))

(declare-fun m!592107 () Bool)

(assert (=> b!615867 m!592107))

(declare-fun m!592109 () Bool)

(assert (=> b!615867 m!592109))

(assert (=> b!615867 m!592095))

(declare-fun m!592111 () Bool)

(assert (=> b!615862 m!592111))

(assert (=> b!615862 m!592083))

(assert (=> b!615862 m!592083))

(declare-fun m!592113 () Bool)

(assert (=> b!615862 m!592113))

(declare-fun m!592115 () Bool)

(assert (=> start!56028 m!592115))

(declare-fun m!592117 () Bool)

(assert (=> start!56028 m!592117))

(assert (=> b!615856 m!592083))

(assert (=> b!615856 m!592083))

(assert (=> b!615856 m!592085))

(declare-fun m!592119 () Bool)

(assert (=> b!615848 m!592119))

(declare-fun m!592121 () Bool)

(assert (=> b!615852 m!592121))

(declare-fun m!592123 () Bool)

(assert (=> b!615852 m!592123))

(assert (=> b!615869 m!592083))

(assert (=> b!615869 m!592083))

(declare-fun m!592125 () Bool)

(assert (=> b!615869 m!592125))

(declare-fun m!592127 () Bool)

(assert (=> b!615868 m!592127))

(assert (=> b!615855 m!592083))

(assert (=> b!615855 m!592083))

(declare-fun m!592129 () Bool)

(assert (=> b!615855 m!592129))

(declare-fun m!592131 () Bool)

(assert (=> b!615854 m!592131))

(declare-fun m!592133 () Bool)

(assert (=> b!615854 m!592133))

(declare-fun m!592135 () Bool)

(assert (=> b!615854 m!592135))

(assert (=> b!615854 m!592121))

(declare-fun m!592137 () Bool)

(assert (=> b!615854 m!592137))

(assert (=> b!615854 m!592083))

(declare-fun m!592139 () Bool)

(assert (=> b!615854 m!592139))

(assert (=> b!615854 m!592083))

(declare-fun m!592141 () Bool)

(assert (=> b!615854 m!592141))

(declare-fun m!592143 () Bool)

(assert (=> b!615850 m!592143))

(assert (=> b!615860 m!592083))

(assert (=> b!615860 m!592083))

(assert (=> b!615860 m!592125))

(declare-fun m!592145 () Bool)

(assert (=> b!615849 m!592145))

(declare-fun m!592147 () Bool)

(assert (=> b!615866 m!592147))

(declare-fun m!592149 () Bool)

(assert (=> b!615859 m!592149))

(assert (=> b!615846 m!592121))

(declare-fun m!592151 () Bool)

(assert (=> b!615846 m!592151))

(assert (=> b!615846 m!592083))

(push 1)

