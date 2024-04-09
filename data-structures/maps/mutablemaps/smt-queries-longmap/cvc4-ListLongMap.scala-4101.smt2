; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56116 () Bool)

(assert start!56116)

(declare-fun b!619139 () Bool)

(declare-datatypes ((Unit!20460 0))(
  ( (Unit!20461) )
))
(declare-fun e!355084 () Unit!20460)

(declare-fun Unit!20462 () Unit!20460)

(assert (=> b!619139 (= e!355084 Unit!20462)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!399030 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37549 0))(
  ( (array!37550 (arr!18017 (Array (_ BitVec 32) (_ BitVec 64))) (size!18381 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37549)

(assert (=> b!619139 (= res!399030 (= (select (store (arr!18017 a!2986) i!1108 k!1786) index!984) (select (arr!18017 a!2986) j!136)))))

(declare-fun e!355087 () Bool)

(assert (=> b!619139 (=> (not res!399030) (not e!355087))))

(assert (=> b!619139 e!355087))

(declare-fun c!70426 () Bool)

(assert (=> b!619139 (= c!70426 (bvslt j!136 index!984))))

(declare-fun lt!285799 () Unit!20460)

(declare-fun e!355092 () Unit!20460)

(assert (=> b!619139 (= lt!285799 e!355092)))

(declare-fun c!70425 () Bool)

(assert (=> b!619139 (= c!70425 (bvslt index!984 j!136))))

(declare-fun lt!285798 () Unit!20460)

(declare-fun e!355096 () Unit!20460)

(assert (=> b!619139 (= lt!285798 e!355096)))

(assert (=> b!619139 false))

(declare-fun lt!285802 () array!37549)

(declare-fun e!355089 () Bool)

(declare-fun b!619140 () Bool)

(declare-fun arrayContainsKey!0 (array!37549 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!619140 (= e!355089 (arrayContainsKey!0 lt!285802 (select (arr!18017 a!2986) j!136) index!984))))

(declare-fun b!619141 () Bool)

(declare-fun res!399041 () Bool)

(declare-fun e!355083 () Bool)

(assert (=> b!619141 (=> (not res!399041) (not e!355083))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!619141 (= res!399041 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18017 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!619142 () Bool)

(declare-fun Unit!20463 () Unit!20460)

(assert (=> b!619142 (= e!355084 Unit!20463)))

(declare-fun b!619143 () Bool)

(assert (=> b!619143 false))

(declare-fun lt!285808 () Unit!20460)

(declare-datatypes ((List!12111 0))(
  ( (Nil!12108) (Cons!12107 (h!13152 (_ BitVec 64)) (t!18347 List!12111)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37549 (_ BitVec 64) (_ BitVec 32) List!12111) Unit!20460)

(assert (=> b!619143 (= lt!285808 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285802 (select (arr!18017 a!2986) j!136) j!136 Nil!12108))))

(declare-fun arrayNoDuplicates!0 (array!37549 (_ BitVec 32) List!12111) Bool)

(assert (=> b!619143 (arrayNoDuplicates!0 lt!285802 j!136 Nil!12108)))

(declare-fun lt!285803 () Unit!20460)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37549 (_ BitVec 32) (_ BitVec 32)) Unit!20460)

(assert (=> b!619143 (= lt!285803 (lemmaNoDuplicateFromThenFromBigger!0 lt!285802 #b00000000000000000000000000000000 j!136))))

(assert (=> b!619143 (arrayNoDuplicates!0 lt!285802 #b00000000000000000000000000000000 Nil!12108)))

(declare-fun lt!285816 () Unit!20460)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37549 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12111) Unit!20460)

(assert (=> b!619143 (= lt!285816 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12108))))

(assert (=> b!619143 (arrayContainsKey!0 lt!285802 (select (arr!18017 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285809 () Unit!20460)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37549 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20460)

(assert (=> b!619143 (= lt!285809 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285802 (select (arr!18017 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20464 () Unit!20460)

(assert (=> b!619143 (= e!355092 Unit!20464)))

(declare-fun b!619144 () Bool)

(declare-fun e!355093 () Bool)

(declare-fun e!355082 () Bool)

(assert (=> b!619144 (= e!355093 (not e!355082))))

(declare-fun res!399025 () Bool)

(assert (=> b!619144 (=> res!399025 e!355082)))

(declare-datatypes ((SeekEntryResult!6464 0))(
  ( (MissingZero!6464 (index!28139 (_ BitVec 32))) (Found!6464 (index!28140 (_ BitVec 32))) (Intermediate!6464 (undefined!7276 Bool) (index!28141 (_ BitVec 32)) (x!56945 (_ BitVec 32))) (Undefined!6464) (MissingVacant!6464 (index!28142 (_ BitVec 32))) )
))
(declare-fun lt!285810 () SeekEntryResult!6464)

(assert (=> b!619144 (= res!399025 (not (= lt!285810 (MissingVacant!6464 vacantSpotIndex!68))))))

(declare-fun lt!285812 () Unit!20460)

(assert (=> b!619144 (= lt!285812 e!355084)))

(declare-fun c!70427 () Bool)

(assert (=> b!619144 (= c!70427 (= lt!285810 (Found!6464 index!984)))))

(declare-fun lt!285813 () Unit!20460)

(declare-fun e!355091 () Unit!20460)

(assert (=> b!619144 (= lt!285813 e!355091)))

(declare-fun c!70424 () Bool)

(assert (=> b!619144 (= c!70424 (= lt!285810 Undefined!6464))))

(declare-fun lt!285807 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37549 (_ BitVec 32)) SeekEntryResult!6464)

(assert (=> b!619144 (= lt!285810 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285807 lt!285802 mask!3053))))

(declare-fun e!355088 () Bool)

(assert (=> b!619144 e!355088))

(declare-fun res!399027 () Bool)

(assert (=> b!619144 (=> (not res!399027) (not e!355088))))

(declare-fun lt!285805 () (_ BitVec 32))

(declare-fun lt!285804 () SeekEntryResult!6464)

(assert (=> b!619144 (= res!399027 (= lt!285804 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285805 vacantSpotIndex!68 lt!285807 lt!285802 mask!3053)))))

(assert (=> b!619144 (= lt!285804 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285805 vacantSpotIndex!68 (select (arr!18017 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!619144 (= lt!285807 (select (store (arr!18017 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!285814 () Unit!20460)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37549 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20460)

(assert (=> b!619144 (= lt!285814 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285805 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!619144 (= lt!285805 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun e!355086 () Bool)

(declare-fun b!619145 () Bool)

(assert (=> b!619145 (= e!355086 (arrayContainsKey!0 lt!285802 (select (arr!18017 a!2986) j!136) index!984))))

(declare-fun res!399038 () Bool)

(declare-fun b!619146 () Bool)

(assert (=> b!619146 (= res!399038 (arrayContainsKey!0 lt!285802 (select (arr!18017 a!2986) j!136) j!136))))

(assert (=> b!619146 (=> (not res!399038) (not e!355086))))

(declare-fun e!355090 () Bool)

(assert (=> b!619146 (= e!355090 e!355086)))

(declare-fun b!619148 () Bool)

(declare-fun Unit!20465 () Unit!20460)

(assert (=> b!619148 (= e!355091 Unit!20465)))

(assert (=> b!619148 false))

(declare-fun b!619149 () Bool)

(declare-fun res!399034 () Bool)

(declare-fun e!355085 () Bool)

(assert (=> b!619149 (=> (not res!399034) (not e!355085))))

(assert (=> b!619149 (= res!399034 (and (= (size!18381 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18381 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18381 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!619150 () Bool)

(declare-fun e!355094 () Bool)

(assert (=> b!619150 (= e!355094 e!355093)))

(declare-fun res!399037 () Bool)

(assert (=> b!619150 (=> (not res!399037) (not e!355093))))

(declare-fun lt!285800 () SeekEntryResult!6464)

(assert (=> b!619150 (= res!399037 (and (= lt!285800 (Found!6464 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18017 a!2986) index!984) (select (arr!18017 a!2986) j!136))) (not (= (select (arr!18017 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!619150 (= lt!285800 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18017 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!619151 () Bool)

(declare-fun Unit!20466 () Unit!20460)

(assert (=> b!619151 (= e!355092 Unit!20466)))

(declare-fun b!619152 () Bool)

(declare-fun res!399033 () Bool)

(assert (=> b!619152 (=> (not res!399033) (not e!355085))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!619152 (= res!399033 (validKeyInArray!0 (select (arr!18017 a!2986) j!136)))))

(declare-fun b!619153 () Bool)

(assert (=> b!619153 false))

(declare-fun lt!285815 () Unit!20460)

(assert (=> b!619153 (= lt!285815 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285802 (select (arr!18017 a!2986) j!136) index!984 Nil!12108))))

(assert (=> b!619153 (arrayNoDuplicates!0 lt!285802 index!984 Nil!12108)))

(declare-fun lt!285806 () Unit!20460)

(assert (=> b!619153 (= lt!285806 (lemmaNoDuplicateFromThenFromBigger!0 lt!285802 #b00000000000000000000000000000000 index!984))))

(assert (=> b!619153 (arrayNoDuplicates!0 lt!285802 #b00000000000000000000000000000000 Nil!12108)))

(declare-fun lt!285811 () Unit!20460)

(assert (=> b!619153 (= lt!285811 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12108))))

(assert (=> b!619153 (arrayContainsKey!0 lt!285802 (select (arr!18017 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285801 () Unit!20460)

(assert (=> b!619153 (= lt!285801 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285802 (select (arr!18017 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!619153 e!355089))

(declare-fun res!399026 () Bool)

(assert (=> b!619153 (=> (not res!399026) (not e!355089))))

(assert (=> b!619153 (= res!399026 (arrayContainsKey!0 lt!285802 (select (arr!18017 a!2986) j!136) j!136))))

(declare-fun Unit!20467 () Unit!20460)

(assert (=> b!619153 (= e!355096 Unit!20467)))

(declare-fun b!619154 () Bool)

(assert (=> b!619154 (= e!355083 e!355094)))

(declare-fun res!399031 () Bool)

(assert (=> b!619154 (=> (not res!399031) (not e!355094))))

(assert (=> b!619154 (= res!399031 (= (select (store (arr!18017 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!619154 (= lt!285802 (array!37550 (store (arr!18017 a!2986) i!1108 k!1786) (size!18381 a!2986)))))

(declare-fun b!619155 () Bool)

(declare-fun res!399039 () Bool)

(assert (=> b!619155 (=> (not res!399039) (not e!355083))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37549 (_ BitVec 32)) Bool)

(assert (=> b!619155 (= res!399039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!619156 () Bool)

(assert (=> b!619156 (= e!355085 e!355083)))

(declare-fun res!399028 () Bool)

(assert (=> b!619156 (=> (not res!399028) (not e!355083))))

(declare-fun lt!285797 () SeekEntryResult!6464)

(assert (=> b!619156 (= res!399028 (or (= lt!285797 (MissingZero!6464 i!1108)) (= lt!285797 (MissingVacant!6464 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37549 (_ BitVec 32)) SeekEntryResult!6464)

(assert (=> b!619156 (= lt!285797 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!619157 () Bool)

(declare-fun Unit!20468 () Unit!20460)

(assert (=> b!619157 (= e!355096 Unit!20468)))

(declare-fun b!619158 () Bool)

(declare-fun res!399035 () Bool)

(assert (=> b!619158 (=> (not res!399035) (not e!355085))))

(assert (=> b!619158 (= res!399035 (validKeyInArray!0 k!1786))))

(declare-fun b!619159 () Bool)

(assert (=> b!619159 (= e!355088 (= lt!285800 lt!285804))))

(declare-fun b!619160 () Bool)

(assert (=> b!619160 (= e!355082 true)))

(assert (=> b!619160 (= (select (store (arr!18017 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!619161 () Bool)

(declare-fun Unit!20469 () Unit!20460)

(assert (=> b!619161 (= e!355091 Unit!20469)))

(declare-fun b!619162 () Bool)

(declare-fun res!399040 () Bool)

(assert (=> b!619162 (=> (not res!399040) (not e!355085))))

(assert (=> b!619162 (= res!399040 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!619163 () Bool)

(declare-fun res!399032 () Bool)

(assert (=> b!619163 (=> (not res!399032) (not e!355083))))

(assert (=> b!619163 (= res!399032 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12108))))

(declare-fun res!399029 () Bool)

(assert (=> start!56116 (=> (not res!399029) (not e!355085))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56116 (= res!399029 (validMask!0 mask!3053))))

(assert (=> start!56116 e!355085))

(assert (=> start!56116 true))

(declare-fun array_inv!13791 (array!37549) Bool)

(assert (=> start!56116 (array_inv!13791 a!2986)))

(declare-fun b!619147 () Bool)

(declare-fun res!399036 () Bool)

(assert (=> b!619147 (= res!399036 (bvsge j!136 index!984))))

(assert (=> b!619147 (=> res!399036 e!355090)))

(assert (=> b!619147 (= e!355087 e!355090)))

(assert (= (and start!56116 res!399029) b!619149))

(assert (= (and b!619149 res!399034) b!619152))

(assert (= (and b!619152 res!399033) b!619158))

(assert (= (and b!619158 res!399035) b!619162))

(assert (= (and b!619162 res!399040) b!619156))

(assert (= (and b!619156 res!399028) b!619155))

(assert (= (and b!619155 res!399039) b!619163))

(assert (= (and b!619163 res!399032) b!619141))

(assert (= (and b!619141 res!399041) b!619154))

(assert (= (and b!619154 res!399031) b!619150))

(assert (= (and b!619150 res!399037) b!619144))

(assert (= (and b!619144 res!399027) b!619159))

(assert (= (and b!619144 c!70424) b!619148))

(assert (= (and b!619144 (not c!70424)) b!619161))

(assert (= (and b!619144 c!70427) b!619139))

(assert (= (and b!619144 (not c!70427)) b!619142))

(assert (= (and b!619139 res!399030) b!619147))

(assert (= (and b!619147 (not res!399036)) b!619146))

(assert (= (and b!619146 res!399038) b!619145))

(assert (= (and b!619139 c!70426) b!619143))

(assert (= (and b!619139 (not c!70426)) b!619151))

(assert (= (and b!619139 c!70425) b!619153))

(assert (= (and b!619139 (not c!70425)) b!619157))

(assert (= (and b!619153 res!399026) b!619140))

(assert (= (and b!619144 (not res!399025)) b!619160))

(declare-fun m!595169 () Bool)

(assert (=> b!619163 m!595169))

(declare-fun m!595171 () Bool)

(assert (=> b!619158 m!595171))

(declare-fun m!595173 () Bool)

(assert (=> b!619156 m!595173))

(declare-fun m!595175 () Bool)

(assert (=> b!619154 m!595175))

(declare-fun m!595177 () Bool)

(assert (=> b!619154 m!595177))

(declare-fun m!595179 () Bool)

(assert (=> b!619141 m!595179))

(declare-fun m!595181 () Bool)

(assert (=> start!56116 m!595181))

(declare-fun m!595183 () Bool)

(assert (=> start!56116 m!595183))

(declare-fun m!595185 () Bool)

(assert (=> b!619143 m!595185))

(declare-fun m!595187 () Bool)

(assert (=> b!619143 m!595187))

(assert (=> b!619143 m!595187))

(declare-fun m!595189 () Bool)

(assert (=> b!619143 m!595189))

(declare-fun m!595191 () Bool)

(assert (=> b!619143 m!595191))

(assert (=> b!619143 m!595187))

(declare-fun m!595193 () Bool)

(assert (=> b!619143 m!595193))

(declare-fun m!595195 () Bool)

(assert (=> b!619143 m!595195))

(assert (=> b!619143 m!595187))

(declare-fun m!595197 () Bool)

(assert (=> b!619143 m!595197))

(declare-fun m!595199 () Bool)

(assert (=> b!619143 m!595199))

(assert (=> b!619152 m!595187))

(assert (=> b!619152 m!595187))

(declare-fun m!595201 () Bool)

(assert (=> b!619152 m!595201))

(assert (=> b!619145 m!595187))

(assert (=> b!619145 m!595187))

(declare-fun m!595203 () Bool)

(assert (=> b!619145 m!595203))

(assert (=> b!619153 m!595187))

(declare-fun m!595205 () Bool)

(assert (=> b!619153 m!595205))

(assert (=> b!619153 m!595191))

(declare-fun m!595207 () Bool)

(assert (=> b!619153 m!595207))

(assert (=> b!619153 m!595187))

(declare-fun m!595209 () Bool)

(assert (=> b!619153 m!595209))

(assert (=> b!619153 m!595195))

(declare-fun m!595211 () Bool)

(assert (=> b!619153 m!595211))

(assert (=> b!619153 m!595187))

(assert (=> b!619153 m!595187))

(declare-fun m!595213 () Bool)

(assert (=> b!619153 m!595213))

(assert (=> b!619153 m!595187))

(declare-fun m!595215 () Bool)

(assert (=> b!619153 m!595215))

(declare-fun m!595217 () Bool)

(assert (=> b!619162 m!595217))

(declare-fun m!595219 () Bool)

(assert (=> b!619150 m!595219))

(assert (=> b!619150 m!595187))

(assert (=> b!619150 m!595187))

(declare-fun m!595221 () Bool)

(assert (=> b!619150 m!595221))

(declare-fun m!595223 () Bool)

(assert (=> b!619144 m!595223))

(declare-fun m!595225 () Bool)

(assert (=> b!619144 m!595225))

(assert (=> b!619144 m!595187))

(assert (=> b!619144 m!595175))

(assert (=> b!619144 m!595187))

(declare-fun m!595227 () Bool)

(assert (=> b!619144 m!595227))

(declare-fun m!595229 () Bool)

(assert (=> b!619144 m!595229))

(declare-fun m!595231 () Bool)

(assert (=> b!619144 m!595231))

(declare-fun m!595233 () Bool)

(assert (=> b!619144 m!595233))

(assert (=> b!619146 m!595187))

(assert (=> b!619146 m!595187))

(assert (=> b!619146 m!595213))

(assert (=> b!619140 m!595187))

(assert (=> b!619140 m!595187))

(assert (=> b!619140 m!595203))

(declare-fun m!595235 () Bool)

(assert (=> b!619155 m!595235))

(assert (=> b!619139 m!595175))

(declare-fun m!595237 () Bool)

(assert (=> b!619139 m!595237))

(assert (=> b!619139 m!595187))

(assert (=> b!619160 m!595175))

(assert (=> b!619160 m!595237))

(push 1)

