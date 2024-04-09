; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59602 () Bool)

(assert start!59602)

(declare-fun b!658152 () Bool)

(declare-datatypes ((Unit!22824 0))(
  ( (Unit!22825) )
))
(declare-fun e!378101 () Unit!22824)

(declare-fun Unit!22826 () Unit!22824)

(assert (=> b!658152 (= e!378101 Unit!22826)))

(declare-fun e!378099 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38716 0))(
  ( (array!38717 (arr!18551 (Array (_ BitVec 32) (_ BitVec 64))) (size!18915 (_ BitVec 32))) )
))
(declare-fun lt!307757 () array!38716)

(declare-fun b!658153 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38716)

(declare-fun arrayContainsKey!0 (array!38716 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!658153 (= e!378099 (arrayContainsKey!0 lt!307757 (select (arr!18551 a!2986) j!136) index!984))))

(declare-fun b!658154 () Bool)

(declare-fun e!378109 () Bool)

(assert (=> b!658154 (= e!378109 (not true))))

(declare-fun lt!307749 () Unit!22824)

(declare-fun e!378100 () Unit!22824)

(assert (=> b!658154 (= lt!307749 e!378100)))

(declare-fun c!75994 () Bool)

(declare-datatypes ((SeekEntryResult!6998 0))(
  ( (MissingZero!6998 (index!30356 (_ BitVec 32))) (Found!6998 (index!30357 (_ BitVec 32))) (Intermediate!6998 (undefined!7810 Bool) (index!30358 (_ BitVec 32)) (x!59170 (_ BitVec 32))) (Undefined!6998) (MissingVacant!6998 (index!30359 (_ BitVec 32))) )
))
(declare-fun lt!307753 () SeekEntryResult!6998)

(assert (=> b!658154 (= c!75994 (= lt!307753 (Found!6998 index!984)))))

(declare-fun lt!307758 () Unit!22824)

(declare-fun e!378102 () Unit!22824)

(assert (=> b!658154 (= lt!307758 e!378102)))

(declare-fun c!75995 () Bool)

(assert (=> b!658154 (= c!75995 (= lt!307753 Undefined!6998))))

(declare-fun lt!307752 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38716 (_ BitVec 32)) SeekEntryResult!6998)

(assert (=> b!658154 (= lt!307753 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307752 lt!307757 mask!3053))))

(declare-fun e!378096 () Bool)

(assert (=> b!658154 e!378096))

(declare-fun res!426908 () Bool)

(assert (=> b!658154 (=> (not res!426908) (not e!378096))))

(declare-fun lt!307762 () SeekEntryResult!6998)

(declare-fun lt!307764 () (_ BitVec 32))

(assert (=> b!658154 (= res!426908 (= lt!307762 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307764 vacantSpotIndex!68 lt!307752 lt!307757 mask!3053)))))

(assert (=> b!658154 (= lt!307762 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307764 vacantSpotIndex!68 (select (arr!18551 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!658154 (= lt!307752 (select (store (arr!18551 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!307761 () Unit!22824)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38716 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22824)

(assert (=> b!658154 (= lt!307761 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307764 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!658154 (= lt!307764 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!426902 () Bool)

(declare-fun b!658155 () Bool)

(assert (=> b!658155 (= res!426902 (arrayContainsKey!0 lt!307757 (select (arr!18551 a!2986) j!136) j!136))))

(declare-fun e!378105 () Bool)

(assert (=> b!658155 (=> (not res!426902) (not e!378105))))

(declare-fun e!378108 () Bool)

(assert (=> b!658155 (= e!378108 e!378105)))

(declare-fun b!658156 () Bool)

(declare-fun Unit!22827 () Unit!22824)

(assert (=> b!658156 (= e!378100 Unit!22827)))

(declare-fun res!426907 () Bool)

(assert (=> b!658156 (= res!426907 (= (select (store (arr!18551 a!2986) i!1108 k!1786) index!984) (select (arr!18551 a!2986) j!136)))))

(declare-fun e!378107 () Bool)

(assert (=> b!658156 (=> (not res!426907) (not e!378107))))

(assert (=> b!658156 e!378107))

(declare-fun c!75993 () Bool)

(assert (=> b!658156 (= c!75993 (bvslt j!136 index!984))))

(declare-fun lt!307754 () Unit!22824)

(assert (=> b!658156 (= lt!307754 e!378101)))

(declare-fun c!75992 () Bool)

(assert (=> b!658156 (= c!75992 (bvslt index!984 j!136))))

(declare-fun lt!307751 () Unit!22824)

(declare-fun e!378098 () Unit!22824)

(assert (=> b!658156 (= lt!307751 e!378098)))

(assert (=> b!658156 false))

(declare-fun b!658157 () Bool)

(declare-fun e!378104 () Bool)

(declare-fun e!378106 () Bool)

(assert (=> b!658157 (= e!378104 e!378106)))

(declare-fun res!426915 () Bool)

(assert (=> b!658157 (=> (not res!426915) (not e!378106))))

(declare-fun lt!307760 () SeekEntryResult!6998)

(assert (=> b!658157 (= res!426915 (or (= lt!307760 (MissingZero!6998 i!1108)) (= lt!307760 (MissingVacant!6998 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38716 (_ BitVec 32)) SeekEntryResult!6998)

(assert (=> b!658157 (= lt!307760 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!658159 () Bool)

(declare-fun res!426917 () Bool)

(assert (=> b!658159 (=> (not res!426917) (not e!378104))))

(assert (=> b!658159 (= res!426917 (and (= (size!18915 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18915 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18915 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!658160 () Bool)

(assert (=> b!658160 false))

(declare-fun lt!307756 () Unit!22824)

(declare-datatypes ((List!12645 0))(
  ( (Nil!12642) (Cons!12641 (h!13686 (_ BitVec 64)) (t!18881 List!12645)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38716 (_ BitVec 64) (_ BitVec 32) List!12645) Unit!22824)

(assert (=> b!658160 (= lt!307756 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307757 (select (arr!18551 a!2986) j!136) index!984 Nil!12642))))

(declare-fun arrayNoDuplicates!0 (array!38716 (_ BitVec 32) List!12645) Bool)

(assert (=> b!658160 (arrayNoDuplicates!0 lt!307757 index!984 Nil!12642)))

(declare-fun lt!307755 () Unit!22824)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38716 (_ BitVec 32) (_ BitVec 32)) Unit!22824)

(assert (=> b!658160 (= lt!307755 (lemmaNoDuplicateFromThenFromBigger!0 lt!307757 #b00000000000000000000000000000000 index!984))))

(assert (=> b!658160 (arrayNoDuplicates!0 lt!307757 #b00000000000000000000000000000000 Nil!12642)))

(declare-fun lt!307765 () Unit!22824)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38716 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12645) Unit!22824)

(assert (=> b!658160 (= lt!307765 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12642))))

(assert (=> b!658160 (arrayContainsKey!0 lt!307757 (select (arr!18551 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307767 () Unit!22824)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38716 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22824)

(assert (=> b!658160 (= lt!307767 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307757 (select (arr!18551 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!658160 e!378099))

(declare-fun res!426912 () Bool)

(assert (=> b!658160 (=> (not res!426912) (not e!378099))))

(assert (=> b!658160 (= res!426912 (arrayContainsKey!0 lt!307757 (select (arr!18551 a!2986) j!136) j!136))))

(declare-fun Unit!22828 () Unit!22824)

(assert (=> b!658160 (= e!378098 Unit!22828)))

(declare-fun b!658161 () Bool)

(declare-fun lt!307748 () SeekEntryResult!6998)

(assert (=> b!658161 (= e!378096 (= lt!307748 lt!307762))))

(declare-fun b!658162 () Bool)

(declare-fun res!426906 () Bool)

(assert (=> b!658162 (=> (not res!426906) (not e!378106))))

(assert (=> b!658162 (= res!426906 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18551 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!658163 () Bool)

(declare-fun e!378103 () Bool)

(assert (=> b!658163 (= e!378106 e!378103)))

(declare-fun res!426910 () Bool)

(assert (=> b!658163 (=> (not res!426910) (not e!378103))))

(assert (=> b!658163 (= res!426910 (= (select (store (arr!18551 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!658163 (= lt!307757 (array!38717 (store (arr!18551 a!2986) i!1108 k!1786) (size!18915 a!2986)))))

(declare-fun b!658164 () Bool)

(declare-fun res!426905 () Bool)

(assert (=> b!658164 (=> (not res!426905) (not e!378106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38716 (_ BitVec 32)) Bool)

(assert (=> b!658164 (= res!426905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!658165 () Bool)

(declare-fun Unit!22829 () Unit!22824)

(assert (=> b!658165 (= e!378098 Unit!22829)))

(declare-fun b!658166 () Bool)

(assert (=> b!658166 (= e!378103 e!378109)))

(declare-fun res!426903 () Bool)

(assert (=> b!658166 (=> (not res!426903) (not e!378109))))

(assert (=> b!658166 (= res!426903 (and (= lt!307748 (Found!6998 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18551 a!2986) index!984) (select (arr!18551 a!2986) j!136))) (not (= (select (arr!18551 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!658166 (= lt!307748 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18551 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!658167 () Bool)

(declare-fun res!426909 () Bool)

(assert (=> b!658167 (=> (not res!426909) (not e!378104))))

(assert (=> b!658167 (= res!426909 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!658168 () Bool)

(declare-fun res!426904 () Bool)

(assert (=> b!658168 (=> (not res!426904) (not e!378104))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!658168 (= res!426904 (validKeyInArray!0 (select (arr!18551 a!2986) j!136)))))

(declare-fun b!658169 () Bool)

(declare-fun Unit!22830 () Unit!22824)

(assert (=> b!658169 (= e!378102 Unit!22830)))

(assert (=> b!658169 false))

(declare-fun b!658170 () Bool)

(declare-fun res!426916 () Bool)

(assert (=> b!658170 (=> (not res!426916) (not e!378104))))

(assert (=> b!658170 (= res!426916 (validKeyInArray!0 k!1786))))

(declare-fun b!658171 () Bool)

(assert (=> b!658171 (= e!378105 (arrayContainsKey!0 lt!307757 (select (arr!18551 a!2986) j!136) index!984))))

(declare-fun b!658172 () Bool)

(declare-fun res!426914 () Bool)

(assert (=> b!658172 (= res!426914 (bvsge j!136 index!984))))

(assert (=> b!658172 (=> res!426914 e!378108)))

(assert (=> b!658172 (= e!378107 e!378108)))

(declare-fun b!658173 () Bool)

(declare-fun res!426911 () Bool)

(assert (=> b!658173 (=> (not res!426911) (not e!378106))))

(assert (=> b!658173 (= res!426911 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12642))))

(declare-fun b!658158 () Bool)

(assert (=> b!658158 false))

(declare-fun lt!307766 () Unit!22824)

(assert (=> b!658158 (= lt!307766 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307757 (select (arr!18551 a!2986) j!136) j!136 Nil!12642))))

(assert (=> b!658158 (arrayNoDuplicates!0 lt!307757 j!136 Nil!12642)))

(declare-fun lt!307750 () Unit!22824)

(assert (=> b!658158 (= lt!307750 (lemmaNoDuplicateFromThenFromBigger!0 lt!307757 #b00000000000000000000000000000000 j!136))))

(assert (=> b!658158 (arrayNoDuplicates!0 lt!307757 #b00000000000000000000000000000000 Nil!12642)))

(declare-fun lt!307763 () Unit!22824)

(assert (=> b!658158 (= lt!307763 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12642))))

(assert (=> b!658158 (arrayContainsKey!0 lt!307757 (select (arr!18551 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307759 () Unit!22824)

(assert (=> b!658158 (= lt!307759 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307757 (select (arr!18551 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22831 () Unit!22824)

(assert (=> b!658158 (= e!378101 Unit!22831)))

(declare-fun res!426913 () Bool)

(assert (=> start!59602 (=> (not res!426913) (not e!378104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59602 (= res!426913 (validMask!0 mask!3053))))

(assert (=> start!59602 e!378104))

(assert (=> start!59602 true))

(declare-fun array_inv!14325 (array!38716) Bool)

(assert (=> start!59602 (array_inv!14325 a!2986)))

(declare-fun b!658174 () Bool)

(declare-fun Unit!22832 () Unit!22824)

(assert (=> b!658174 (= e!378102 Unit!22832)))

(declare-fun b!658175 () Bool)

(declare-fun Unit!22833 () Unit!22824)

(assert (=> b!658175 (= e!378100 Unit!22833)))

(assert (= (and start!59602 res!426913) b!658159))

(assert (= (and b!658159 res!426917) b!658168))

(assert (= (and b!658168 res!426904) b!658170))

(assert (= (and b!658170 res!426916) b!658167))

(assert (= (and b!658167 res!426909) b!658157))

(assert (= (and b!658157 res!426915) b!658164))

(assert (= (and b!658164 res!426905) b!658173))

(assert (= (and b!658173 res!426911) b!658162))

(assert (= (and b!658162 res!426906) b!658163))

(assert (= (and b!658163 res!426910) b!658166))

(assert (= (and b!658166 res!426903) b!658154))

(assert (= (and b!658154 res!426908) b!658161))

(assert (= (and b!658154 c!75995) b!658169))

(assert (= (and b!658154 (not c!75995)) b!658174))

(assert (= (and b!658154 c!75994) b!658156))

(assert (= (and b!658154 (not c!75994)) b!658175))

(assert (= (and b!658156 res!426907) b!658172))

(assert (= (and b!658172 (not res!426914)) b!658155))

(assert (= (and b!658155 res!426902) b!658171))

(assert (= (and b!658156 c!75993) b!658158))

(assert (= (and b!658156 (not c!75993)) b!658152))

(assert (= (and b!658156 c!75992) b!658160))

(assert (= (and b!658156 (not c!75992)) b!658165))

(assert (= (and b!658160 res!426912) b!658153))

(declare-fun m!631211 () Bool)

(assert (=> b!658160 m!631211))

(declare-fun m!631213 () Bool)

(assert (=> b!658160 m!631213))

(assert (=> b!658160 m!631211))

(declare-fun m!631215 () Bool)

(assert (=> b!658160 m!631215))

(assert (=> b!658160 m!631211))

(declare-fun m!631217 () Bool)

(assert (=> b!658160 m!631217))

(declare-fun m!631219 () Bool)

(assert (=> b!658160 m!631219))

(assert (=> b!658160 m!631211))

(declare-fun m!631221 () Bool)

(assert (=> b!658160 m!631221))

(declare-fun m!631223 () Bool)

(assert (=> b!658160 m!631223))

(assert (=> b!658160 m!631211))

(declare-fun m!631225 () Bool)

(assert (=> b!658160 m!631225))

(declare-fun m!631227 () Bool)

(assert (=> b!658160 m!631227))

(declare-fun m!631229 () Bool)

(assert (=> start!59602 m!631229))

(declare-fun m!631231 () Bool)

(assert (=> start!59602 m!631231))

(declare-fun m!631233 () Bool)

(assert (=> b!658164 m!631233))

(assert (=> b!658155 m!631211))

(assert (=> b!658155 m!631211))

(assert (=> b!658155 m!631213))

(assert (=> b!658153 m!631211))

(assert (=> b!658153 m!631211))

(declare-fun m!631235 () Bool)

(assert (=> b!658153 m!631235))

(assert (=> b!658171 m!631211))

(assert (=> b!658171 m!631211))

(assert (=> b!658171 m!631235))

(assert (=> b!658158 m!631211))

(declare-fun m!631237 () Bool)

(assert (=> b!658158 m!631237))

(assert (=> b!658158 m!631211))

(assert (=> b!658158 m!631211))

(declare-fun m!631239 () Bool)

(assert (=> b!658158 m!631239))

(assert (=> b!658158 m!631219))

(assert (=> b!658158 m!631211))

(declare-fun m!631241 () Bool)

(assert (=> b!658158 m!631241))

(declare-fun m!631243 () Bool)

(assert (=> b!658158 m!631243))

(declare-fun m!631245 () Bool)

(assert (=> b!658158 m!631245))

(assert (=> b!658158 m!631227))

(declare-fun m!631247 () Bool)

(assert (=> b!658166 m!631247))

(assert (=> b!658166 m!631211))

(assert (=> b!658166 m!631211))

(declare-fun m!631249 () Bool)

(assert (=> b!658166 m!631249))

(declare-fun m!631251 () Bool)

(assert (=> b!658157 m!631251))

(declare-fun m!631253 () Bool)

(assert (=> b!658163 m!631253))

(declare-fun m!631255 () Bool)

(assert (=> b!658163 m!631255))

(assert (=> b!658168 m!631211))

(assert (=> b!658168 m!631211))

(declare-fun m!631257 () Bool)

(assert (=> b!658168 m!631257))

(declare-fun m!631259 () Bool)

(assert (=> b!658162 m!631259))

(assert (=> b!658154 m!631211))

(declare-fun m!631261 () Bool)

(assert (=> b!658154 m!631261))

(declare-fun m!631263 () Bool)

(assert (=> b!658154 m!631263))

(declare-fun m!631265 () Bool)

(assert (=> b!658154 m!631265))

(assert (=> b!658154 m!631211))

(assert (=> b!658154 m!631253))

(declare-fun m!631267 () Bool)

(assert (=> b!658154 m!631267))

(declare-fun m!631269 () Bool)

(assert (=> b!658154 m!631269))

(declare-fun m!631271 () Bool)

(assert (=> b!658154 m!631271))

(assert (=> b!658156 m!631253))

(declare-fun m!631273 () Bool)

(assert (=> b!658156 m!631273))

(assert (=> b!658156 m!631211))

(declare-fun m!631275 () Bool)

(assert (=> b!658170 m!631275))

(declare-fun m!631277 () Bool)

(assert (=> b!658173 m!631277))

(declare-fun m!631279 () Bool)

(assert (=> b!658167 m!631279))

(push 1)

