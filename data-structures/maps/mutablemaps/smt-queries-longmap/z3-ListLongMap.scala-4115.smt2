; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56198 () Bool)

(assert start!56198)

(declare-fun b!622119 () Bool)

(assert (=> b!622119 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((Unit!20870 0))(
  ( (Unit!20871) )
))
(declare-fun lt!288259 () Unit!20870)

(declare-datatypes ((array!37631 0))(
  ( (array!37632 (arr!18058 (Array (_ BitVec 32) (_ BitVec 64))) (size!18422 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37631)

(declare-fun lt!288268 () array!37631)

(declare-datatypes ((List!12152 0))(
  ( (Nil!12149) (Cons!12148 (h!13193 (_ BitVec 64)) (t!18388 List!12152)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37631 (_ BitVec 64) (_ BitVec 32) List!12152) Unit!20870)

(assert (=> b!622119 (= lt!288259 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288268 (select (arr!18058 a!2986) j!136) j!136 Nil!12149))))

(declare-fun arrayNoDuplicates!0 (array!37631 (_ BitVec 32) List!12152) Bool)

(assert (=> b!622119 (arrayNoDuplicates!0 lt!288268 j!136 Nil!12149)))

(declare-fun lt!288258 () Unit!20870)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37631 (_ BitVec 32) (_ BitVec 32)) Unit!20870)

(assert (=> b!622119 (= lt!288258 (lemmaNoDuplicateFromThenFromBigger!0 lt!288268 #b00000000000000000000000000000000 j!136))))

(assert (=> b!622119 (arrayNoDuplicates!0 lt!288268 #b00000000000000000000000000000000 Nil!12149)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!288270 () Unit!20870)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37631 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12152) Unit!20870)

(assert (=> b!622119 (= lt!288270 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12149))))

(declare-fun arrayContainsKey!0 (array!37631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!622119 (arrayContainsKey!0 lt!288268 (select (arr!18058 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288271 () Unit!20870)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37631 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20870)

(assert (=> b!622119 (= lt!288271 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288268 (select (arr!18058 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!356834 () Unit!20870)

(declare-fun Unit!20872 () Unit!20870)

(assert (=> b!622119 (= e!356834 Unit!20872)))

(declare-fun b!622120 () Bool)

(declare-fun e!356843 () Bool)

(declare-fun e!356845 () Bool)

(assert (=> b!622120 (= e!356843 e!356845)))

(declare-fun res!401029 () Bool)

(assert (=> b!622120 (=> (not res!401029) (not e!356845))))

(declare-datatypes ((SeekEntryResult!6505 0))(
  ( (MissingZero!6505 (index!28303 (_ BitVec 32))) (Found!6505 (index!28304 (_ BitVec 32))) (Intermediate!6505 (undefined!7317 Bool) (index!28305 (_ BitVec 32)) (x!57098 (_ BitVec 32))) (Undefined!6505) (MissingVacant!6505 (index!28306 (_ BitVec 32))) )
))
(declare-fun lt!288267 () SeekEntryResult!6505)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!622120 (= res!401029 (and (= lt!288267 (Found!6505 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18058 a!2986) index!984) (select (arr!18058 a!2986) j!136))) (not (= (select (arr!18058 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37631 (_ BitVec 32)) SeekEntryResult!6505)

(assert (=> b!622120 (= lt!288267 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18058 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!622121 () Bool)

(declare-fun res!401034 () Bool)

(declare-fun e!356844 () Bool)

(assert (=> b!622121 (=> (not res!401034) (not e!356844))))

(assert (=> b!622121 (= res!401034 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18058 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!622122 () Bool)

(declare-fun e!356832 () Bool)

(assert (=> b!622122 (= e!356832 (arrayContainsKey!0 lt!288268 (select (arr!18058 a!2986) j!136) index!984))))

(declare-fun b!622123 () Bool)

(assert (=> b!622123 (= e!356844 e!356843)))

(declare-fun res!401023 () Bool)

(assert (=> b!622123 (=> (not res!401023) (not e!356843))))

(assert (=> b!622123 (= res!401023 (= (select (store (arr!18058 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!622123 (= lt!288268 (array!37632 (store (arr!18058 a!2986) i!1108 k0!1786) (size!18422 a!2986)))))

(declare-fun b!622124 () Bool)

(declare-fun res!401022 () Bool)

(declare-fun e!356841 () Bool)

(assert (=> b!622124 (=> (not res!401022) (not e!356841))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!622124 (= res!401022 (validKeyInArray!0 (select (arr!18058 a!2986) j!136)))))

(declare-fun b!622125 () Bool)

(declare-fun e!356836 () Unit!20870)

(declare-fun Unit!20873 () Unit!20870)

(assert (=> b!622125 (= e!356836 Unit!20873)))

(declare-fun b!622126 () Bool)

(declare-fun res!401031 () Bool)

(assert (=> b!622126 (= res!401031 (bvsge j!136 index!984))))

(declare-fun e!356839 () Bool)

(assert (=> b!622126 (=> res!401031 e!356839)))

(declare-fun e!356837 () Bool)

(assert (=> b!622126 (= e!356837 e!356839)))

(declare-fun b!622127 () Bool)

(declare-fun e!356838 () Unit!20870)

(declare-fun Unit!20874 () Unit!20870)

(assert (=> b!622127 (= e!356838 Unit!20874)))

(declare-fun res!401030 () Bool)

(assert (=> b!622127 (= res!401030 (= (select (store (arr!18058 a!2986) i!1108 k0!1786) index!984) (select (arr!18058 a!2986) j!136)))))

(assert (=> b!622127 (=> (not res!401030) (not e!356837))))

(assert (=> b!622127 e!356837))

(declare-fun c!70919 () Bool)

(assert (=> b!622127 (= c!70919 (bvslt j!136 index!984))))

(declare-fun lt!288261 () Unit!20870)

(assert (=> b!622127 (= lt!288261 e!356834)))

(declare-fun c!70917 () Bool)

(assert (=> b!622127 (= c!70917 (bvslt index!984 j!136))))

(declare-fun lt!288269 () Unit!20870)

(declare-fun e!356835 () Unit!20870)

(assert (=> b!622127 (= lt!288269 e!356835)))

(assert (=> b!622127 false))

(declare-fun res!401027 () Bool)

(assert (=> start!56198 (=> (not res!401027) (not e!356841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56198 (= res!401027 (validMask!0 mask!3053))))

(assert (=> start!56198 e!356841))

(assert (=> start!56198 true))

(declare-fun array_inv!13832 (array!37631) Bool)

(assert (=> start!56198 (array_inv!13832 a!2986)))

(declare-fun b!622128 () Bool)

(assert (=> b!622128 (= e!356841 e!356844)))

(declare-fun res!401033 () Bool)

(assert (=> b!622128 (=> (not res!401033) (not e!356844))))

(declare-fun lt!288260 () SeekEntryResult!6505)

(assert (=> b!622128 (= res!401033 (or (= lt!288260 (MissingZero!6505 i!1108)) (= lt!288260 (MissingVacant!6505 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37631 (_ BitVec 32)) SeekEntryResult!6505)

(assert (=> b!622128 (= lt!288260 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!622129 () Bool)

(declare-fun res!401026 () Bool)

(assert (=> b!622129 (=> (not res!401026) (not e!356844))))

(assert (=> b!622129 (= res!401026 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12149))))

(declare-fun b!622130 () Bool)

(declare-fun res!401024 () Bool)

(assert (=> b!622130 (=> (not res!401024) (not e!356841))))

(assert (=> b!622130 (= res!401024 (validKeyInArray!0 k0!1786))))

(declare-fun b!622131 () Bool)

(declare-fun res!401036 () Bool)

(assert (=> b!622131 (=> (not res!401036) (not e!356841))))

(assert (=> b!622131 (= res!401036 (and (= (size!18422 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18422 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18422 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!622132 () Bool)

(declare-fun e!356840 () Bool)

(assert (=> b!622132 (= e!356840 (arrayContainsKey!0 lt!288268 (select (arr!18058 a!2986) j!136) index!984))))

(declare-fun b!622133 () Bool)

(declare-fun Unit!20875 () Unit!20870)

(assert (=> b!622133 (= e!356836 Unit!20875)))

(assert (=> b!622133 false))

(declare-fun b!622134 () Bool)

(declare-fun res!401032 () Bool)

(assert (=> b!622134 (=> (not res!401032) (not e!356844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37631 (_ BitVec 32)) Bool)

(assert (=> b!622134 (= res!401032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!622135 () Bool)

(declare-fun res!401035 () Bool)

(assert (=> b!622135 (=> (not res!401035) (not e!356841))))

(assert (=> b!622135 (= res!401035 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!622136 () Bool)

(assert (=> b!622136 false))

(declare-fun lt!288272 () Unit!20870)

(assert (=> b!622136 (= lt!288272 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288268 (select (arr!18058 a!2986) j!136) index!984 Nil!12149))))

(assert (=> b!622136 (arrayNoDuplicates!0 lt!288268 index!984 Nil!12149)))

(declare-fun lt!288276 () Unit!20870)

(assert (=> b!622136 (= lt!288276 (lemmaNoDuplicateFromThenFromBigger!0 lt!288268 #b00000000000000000000000000000000 index!984))))

(assert (=> b!622136 (arrayNoDuplicates!0 lt!288268 #b00000000000000000000000000000000 Nil!12149)))

(declare-fun lt!288265 () Unit!20870)

(assert (=> b!622136 (= lt!288265 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12149))))

(assert (=> b!622136 (arrayContainsKey!0 lt!288268 (select (arr!18058 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288273 () Unit!20870)

(assert (=> b!622136 (= lt!288273 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288268 (select (arr!18058 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!622136 e!356840))

(declare-fun res!401028 () Bool)

(assert (=> b!622136 (=> (not res!401028) (not e!356840))))

(assert (=> b!622136 (= res!401028 (arrayContainsKey!0 lt!288268 (select (arr!18058 a!2986) j!136) j!136))))

(declare-fun Unit!20876 () Unit!20870)

(assert (=> b!622136 (= e!356835 Unit!20876)))

(declare-fun b!622137 () Bool)

(declare-fun e!356833 () Bool)

(declare-fun lt!288257 () SeekEntryResult!6505)

(assert (=> b!622137 (= e!356833 (= lt!288267 lt!288257))))

(declare-fun b!622138 () Bool)

(assert (=> b!622138 (= e!356845 (not true))))

(declare-fun lt!288263 () Unit!20870)

(assert (=> b!622138 (= lt!288263 e!356838)))

(declare-fun c!70916 () Bool)

(declare-fun lt!288262 () SeekEntryResult!6505)

(assert (=> b!622138 (= c!70916 (= lt!288262 (Found!6505 index!984)))))

(declare-fun lt!288275 () Unit!20870)

(assert (=> b!622138 (= lt!288275 e!356836)))

(declare-fun c!70918 () Bool)

(assert (=> b!622138 (= c!70918 (= lt!288262 Undefined!6505))))

(declare-fun lt!288264 () (_ BitVec 64))

(assert (=> b!622138 (= lt!288262 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288264 lt!288268 mask!3053))))

(assert (=> b!622138 e!356833))

(declare-fun res!401021 () Bool)

(assert (=> b!622138 (=> (not res!401021) (not e!356833))))

(declare-fun lt!288274 () (_ BitVec 32))

(assert (=> b!622138 (= res!401021 (= lt!288257 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288274 vacantSpotIndex!68 lt!288264 lt!288268 mask!3053)))))

(assert (=> b!622138 (= lt!288257 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288274 vacantSpotIndex!68 (select (arr!18058 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!622138 (= lt!288264 (select (store (arr!18058 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!288266 () Unit!20870)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37631 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20870)

(assert (=> b!622138 (= lt!288266 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288274 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!622138 (= lt!288274 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!622139 () Bool)

(declare-fun Unit!20877 () Unit!20870)

(assert (=> b!622139 (= e!356834 Unit!20877)))

(declare-fun b!622140 () Bool)

(declare-fun Unit!20878 () Unit!20870)

(assert (=> b!622140 (= e!356835 Unit!20878)))

(declare-fun b!622141 () Bool)

(declare-fun res!401025 () Bool)

(assert (=> b!622141 (= res!401025 (arrayContainsKey!0 lt!288268 (select (arr!18058 a!2986) j!136) j!136))))

(assert (=> b!622141 (=> (not res!401025) (not e!356832))))

(assert (=> b!622141 (= e!356839 e!356832)))

(declare-fun b!622142 () Bool)

(declare-fun Unit!20879 () Unit!20870)

(assert (=> b!622142 (= e!356838 Unit!20879)))

(assert (= (and start!56198 res!401027) b!622131))

(assert (= (and b!622131 res!401036) b!622124))

(assert (= (and b!622124 res!401022) b!622130))

(assert (= (and b!622130 res!401024) b!622135))

(assert (= (and b!622135 res!401035) b!622128))

(assert (= (and b!622128 res!401033) b!622134))

(assert (= (and b!622134 res!401032) b!622129))

(assert (= (and b!622129 res!401026) b!622121))

(assert (= (and b!622121 res!401034) b!622123))

(assert (= (and b!622123 res!401023) b!622120))

(assert (= (and b!622120 res!401029) b!622138))

(assert (= (and b!622138 res!401021) b!622137))

(assert (= (and b!622138 c!70918) b!622133))

(assert (= (and b!622138 (not c!70918)) b!622125))

(assert (= (and b!622138 c!70916) b!622127))

(assert (= (and b!622138 (not c!70916)) b!622142))

(assert (= (and b!622127 res!401030) b!622126))

(assert (= (and b!622126 (not res!401031)) b!622141))

(assert (= (and b!622141 res!401025) b!622122))

(assert (= (and b!622127 c!70919) b!622119))

(assert (= (and b!622127 (not c!70919)) b!622139))

(assert (= (and b!622127 c!70917) b!622136))

(assert (= (and b!622127 (not c!70917)) b!622140))

(assert (= (and b!622136 res!401028) b!622132))

(declare-fun m!598039 () Bool)

(assert (=> b!622120 m!598039))

(declare-fun m!598041 () Bool)

(assert (=> b!622120 m!598041))

(assert (=> b!622120 m!598041))

(declare-fun m!598043 () Bool)

(assert (=> b!622120 m!598043))

(declare-fun m!598045 () Bool)

(assert (=> start!56198 m!598045))

(declare-fun m!598047 () Bool)

(assert (=> start!56198 m!598047))

(declare-fun m!598049 () Bool)

(assert (=> b!622138 m!598049))

(declare-fun m!598051 () Bool)

(assert (=> b!622138 m!598051))

(assert (=> b!622138 m!598041))

(declare-fun m!598053 () Bool)

(assert (=> b!622138 m!598053))

(assert (=> b!622138 m!598041))

(declare-fun m!598055 () Bool)

(assert (=> b!622138 m!598055))

(declare-fun m!598057 () Bool)

(assert (=> b!622138 m!598057))

(declare-fun m!598059 () Bool)

(assert (=> b!622138 m!598059))

(declare-fun m!598061 () Bool)

(assert (=> b!622138 m!598061))

(assert (=> b!622132 m!598041))

(assert (=> b!622132 m!598041))

(declare-fun m!598063 () Bool)

(assert (=> b!622132 m!598063))

(declare-fun m!598065 () Bool)

(assert (=> b!622128 m!598065))

(declare-fun m!598067 () Bool)

(assert (=> b!622135 m!598067))

(assert (=> b!622141 m!598041))

(assert (=> b!622141 m!598041))

(declare-fun m!598069 () Bool)

(assert (=> b!622141 m!598069))

(declare-fun m!598071 () Bool)

(assert (=> b!622134 m!598071))

(declare-fun m!598073 () Bool)

(assert (=> b!622121 m!598073))

(declare-fun m!598075 () Bool)

(assert (=> b!622136 m!598075))

(declare-fun m!598077 () Bool)

(assert (=> b!622136 m!598077))

(declare-fun m!598079 () Bool)

(assert (=> b!622136 m!598079))

(assert (=> b!622136 m!598041))

(declare-fun m!598081 () Bool)

(assert (=> b!622136 m!598081))

(declare-fun m!598083 () Bool)

(assert (=> b!622136 m!598083))

(assert (=> b!622136 m!598041))

(assert (=> b!622136 m!598069))

(assert (=> b!622136 m!598041))

(declare-fun m!598085 () Bool)

(assert (=> b!622136 m!598085))

(assert (=> b!622136 m!598041))

(declare-fun m!598087 () Bool)

(assert (=> b!622136 m!598087))

(assert (=> b!622136 m!598041))

(assert (=> b!622119 m!598041))

(declare-fun m!598089 () Bool)

(assert (=> b!622119 m!598089))

(assert (=> b!622119 m!598041))

(assert (=> b!622119 m!598077))

(assert (=> b!622119 m!598041))

(declare-fun m!598091 () Bool)

(assert (=> b!622119 m!598091))

(declare-fun m!598093 () Bool)

(assert (=> b!622119 m!598093))

(assert (=> b!622119 m!598083))

(declare-fun m!598095 () Bool)

(assert (=> b!622119 m!598095))

(assert (=> b!622119 m!598041))

(declare-fun m!598097 () Bool)

(assert (=> b!622119 m!598097))

(assert (=> b!622123 m!598053))

(declare-fun m!598099 () Bool)

(assert (=> b!622123 m!598099))

(declare-fun m!598101 () Bool)

(assert (=> b!622129 m!598101))

(assert (=> b!622122 m!598041))

(assert (=> b!622122 m!598041))

(assert (=> b!622122 m!598063))

(assert (=> b!622127 m!598053))

(declare-fun m!598103 () Bool)

(assert (=> b!622127 m!598103))

(assert (=> b!622127 m!598041))

(declare-fun m!598105 () Bool)

(assert (=> b!622130 m!598105))

(assert (=> b!622124 m!598041))

(assert (=> b!622124 m!598041))

(declare-fun m!598107 () Bool)

(assert (=> b!622124 m!598107))

(check-sat (not b!622120) (not b!622130) (not b!622119) (not b!622129) (not b!622136) (not b!622141) (not b!622134) (not b!622138) (not b!622132) (not start!56198) (not b!622128) (not b!622124) (not b!622122) (not b!622135))
(check-sat)
