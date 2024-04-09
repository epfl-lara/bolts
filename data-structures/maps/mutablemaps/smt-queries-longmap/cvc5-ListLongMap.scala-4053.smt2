; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55554 () Bool)

(assert start!55554)

(declare-fun b!607062 () Bool)

(declare-datatypes ((Unit!19336 0))(
  ( (Unit!19337) )
))
(declare-fun e!347647 () Unit!19336)

(declare-fun Unit!19338 () Unit!19336)

(assert (=> b!607062 (= e!347647 Unit!19338)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37248 0))(
  ( (array!37249 (arr!17871 (Array (_ BitVec 32) (_ BitVec 64))) (size!18235 (_ BitVec 32))) )
))
(declare-fun lt!277172 () array!37248)

(declare-fun lt!277181 () Unit!19336)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37248)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37248 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19336)

(assert (=> b!607062 (= lt!277181 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277172 (select (arr!17871 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!607062 (arrayContainsKey!0 lt!277172 (select (arr!17871 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!277179 () Unit!19336)

(declare-datatypes ((List!11965 0))(
  ( (Nil!11962) (Cons!11961 (h!13006 (_ BitVec 64)) (t!18201 List!11965)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37248 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11965) Unit!19336)

(assert (=> b!607062 (= lt!277179 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11962))))

(declare-fun arrayNoDuplicates!0 (array!37248 (_ BitVec 32) List!11965) Bool)

(assert (=> b!607062 (arrayNoDuplicates!0 lt!277172 #b00000000000000000000000000000000 Nil!11962)))

(declare-fun lt!277180 () Unit!19336)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37248 (_ BitVec 32) (_ BitVec 32)) Unit!19336)

(assert (=> b!607062 (= lt!277180 (lemmaNoDuplicateFromThenFromBigger!0 lt!277172 #b00000000000000000000000000000000 j!136))))

(assert (=> b!607062 (arrayNoDuplicates!0 lt!277172 j!136 Nil!11962)))

(declare-fun lt!277185 () Unit!19336)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37248 (_ BitVec 64) (_ BitVec 32) List!11965) Unit!19336)

(assert (=> b!607062 (= lt!277185 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277172 (select (arr!17871 a!2986) j!136) j!136 Nil!11962))))

(assert (=> b!607062 false))

(declare-fun b!607063 () Bool)

(declare-fun e!347638 () Bool)

(declare-fun e!347650 () Bool)

(assert (=> b!607063 (= e!347638 (not e!347650))))

(declare-fun res!390091 () Bool)

(assert (=> b!607063 (=> res!390091 e!347650)))

(declare-datatypes ((SeekEntryResult!6318 0))(
  ( (MissingZero!6318 (index!27546 (_ BitVec 32))) (Found!6318 (index!27547 (_ BitVec 32))) (Intermediate!6318 (undefined!7130 Bool) (index!27548 (_ BitVec 32)) (x!56388 (_ BitVec 32))) (Undefined!6318) (MissingVacant!6318 (index!27549 (_ BitVec 32))) )
))
(declare-fun lt!277178 () SeekEntryResult!6318)

(assert (=> b!607063 (= res!390091 (not (= lt!277178 (Found!6318 index!984))))))

(declare-fun lt!277183 () Unit!19336)

(declare-fun e!347649 () Unit!19336)

(assert (=> b!607063 (= lt!277183 e!347649)))

(declare-fun c!68857 () Bool)

(assert (=> b!607063 (= c!68857 (= lt!277178 Undefined!6318))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!277177 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37248 (_ BitVec 32)) SeekEntryResult!6318)

(assert (=> b!607063 (= lt!277178 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277177 lt!277172 mask!3053))))

(declare-fun e!347643 () Bool)

(assert (=> b!607063 e!347643))

(declare-fun res!390086 () Bool)

(assert (=> b!607063 (=> (not res!390086) (not e!347643))))

(declare-fun lt!277176 () SeekEntryResult!6318)

(declare-fun lt!277182 () (_ BitVec 32))

(assert (=> b!607063 (= res!390086 (= lt!277176 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277182 vacantSpotIndex!68 lt!277177 lt!277172 mask!3053)))))

(assert (=> b!607063 (= lt!277176 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277182 vacantSpotIndex!68 (select (arr!17871 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!607063 (= lt!277177 (select (store (arr!17871 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!277187 () Unit!19336)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37248 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19336)

(assert (=> b!607063 (= lt!277187 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277182 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!607063 (= lt!277182 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun e!347637 () Bool)

(declare-fun b!607064 () Bool)

(assert (=> b!607064 (= e!347637 (arrayContainsKey!0 lt!277172 (select (arr!17871 a!2986) j!136) index!984))))

(declare-fun b!607065 () Bool)

(declare-fun res!390087 () Bool)

(declare-fun e!347644 () Bool)

(assert (=> b!607065 (=> (not res!390087) (not e!347644))))

(assert (=> b!607065 (= res!390087 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!607066 () Bool)

(declare-fun lt!277184 () SeekEntryResult!6318)

(assert (=> b!607066 (= e!347643 (= lt!277184 lt!277176))))

(declare-fun b!607067 () Bool)

(declare-fun res!390089 () Bool)

(declare-fun e!347641 () Bool)

(assert (=> b!607067 (=> (not res!390089) (not e!347641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37248 (_ BitVec 32)) Bool)

(assert (=> b!607067 (= res!390089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!607068 () Bool)

(declare-fun res!390090 () Bool)

(declare-fun e!347645 () Bool)

(assert (=> b!607068 (=> res!390090 e!347645)))

(declare-fun contains!3011 (List!11965 (_ BitVec 64)) Bool)

(assert (=> b!607068 (= res!390090 (contains!3011 Nil!11962 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607069 () Bool)

(declare-fun e!347640 () Bool)

(assert (=> b!607069 (= e!347640 e!347638)))

(declare-fun res!390088 () Bool)

(assert (=> b!607069 (=> (not res!390088) (not e!347638))))

(assert (=> b!607069 (= res!390088 (and (= lt!277184 (Found!6318 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17871 a!2986) index!984) (select (arr!17871 a!2986) j!136))) (not (= (select (arr!17871 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!607069 (= lt!277184 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17871 a!2986) j!136) a!2986 mask!3053))))

(declare-fun e!347648 () Bool)

(declare-fun b!607070 () Bool)

(assert (=> b!607070 (= e!347648 (arrayContainsKey!0 lt!277172 (select (arr!17871 a!2986) j!136) index!984))))

(declare-fun b!607071 () Bool)

(declare-fun res!390095 () Bool)

(assert (=> b!607071 (=> (not res!390095) (not e!347641))))

(assert (=> b!607071 (= res!390095 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17871 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!607072 () Bool)

(declare-fun e!347636 () Bool)

(assert (=> b!607072 (= e!347650 e!347636)))

(declare-fun res!390104 () Bool)

(assert (=> b!607072 (=> res!390104 e!347636)))

(declare-fun lt!277186 () (_ BitVec 64))

(assert (=> b!607072 (= res!390104 (or (not (= (select (arr!17871 a!2986) j!136) lt!277177)) (not (= (select (arr!17871 a!2986) j!136) lt!277186))))))

(declare-fun e!347635 () Bool)

(assert (=> b!607072 e!347635))

(declare-fun res!390098 () Bool)

(assert (=> b!607072 (=> (not res!390098) (not e!347635))))

(assert (=> b!607072 (= res!390098 (= lt!277186 (select (arr!17871 a!2986) j!136)))))

(assert (=> b!607072 (= lt!277186 (select (store (arr!17871 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!607073 () Bool)

(declare-fun e!347639 () Bool)

(assert (=> b!607073 (= e!347635 e!347639)))

(declare-fun res!390092 () Bool)

(assert (=> b!607073 (=> res!390092 e!347639)))

(assert (=> b!607073 (= res!390092 (or (not (= (select (arr!17871 a!2986) j!136) lt!277177)) (not (= (select (arr!17871 a!2986) j!136) lt!277186)) (bvsge j!136 index!984)))))

(declare-fun b!607074 () Bool)

(assert (=> b!607074 (= e!347644 e!347641)))

(declare-fun res!390101 () Bool)

(assert (=> b!607074 (=> (not res!390101) (not e!347641))))

(declare-fun lt!277175 () SeekEntryResult!6318)

(assert (=> b!607074 (= res!390101 (or (= lt!277175 (MissingZero!6318 i!1108)) (= lt!277175 (MissingVacant!6318 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37248 (_ BitVec 32)) SeekEntryResult!6318)

(assert (=> b!607074 (= lt!277175 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!607075 () Bool)

(declare-fun e!347642 () Bool)

(assert (=> b!607075 (= e!347636 e!347642)))

(declare-fun res!390096 () Bool)

(assert (=> b!607075 (=> res!390096 e!347642)))

(assert (=> b!607075 (= res!390096 (bvsge index!984 j!136))))

(declare-fun lt!277188 () Unit!19336)

(assert (=> b!607075 (= lt!277188 e!347647)))

(declare-fun c!68858 () Bool)

(assert (=> b!607075 (= c!68858 (bvslt j!136 index!984))))

(declare-fun b!607076 () Bool)

(declare-fun res!390097 () Bool)

(assert (=> b!607076 (=> (not res!390097) (not e!347644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!607076 (= res!390097 (validKeyInArray!0 (select (arr!17871 a!2986) j!136)))))

(declare-fun b!607077 () Bool)

(assert (=> b!607077 (= e!347642 e!347645)))

(declare-fun res!390093 () Bool)

(assert (=> b!607077 (=> res!390093 e!347645)))

(assert (=> b!607077 (= res!390093 (or (bvsge (size!18235 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18235 a!2986))))))

(assert (=> b!607077 (arrayContainsKey!0 lt!277172 (select (arr!17871 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277174 () Unit!19336)

(assert (=> b!607077 (= lt!277174 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277172 (select (arr!17871 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!607077 e!347648))

(declare-fun res!390102 () Bool)

(assert (=> b!607077 (=> (not res!390102) (not e!347648))))

(assert (=> b!607077 (= res!390102 (arrayContainsKey!0 lt!277172 (select (arr!17871 a!2986) j!136) j!136))))

(declare-fun b!607078 () Bool)

(declare-fun res!390094 () Bool)

(assert (=> b!607078 (=> (not res!390094) (not e!347644))))

(assert (=> b!607078 (= res!390094 (and (= (size!18235 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18235 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18235 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!607079 () Bool)

(declare-fun res!390100 () Bool)

(assert (=> b!607079 (=> (not res!390100) (not e!347644))))

(assert (=> b!607079 (= res!390100 (validKeyInArray!0 k!1786))))

(declare-fun b!607080 () Bool)

(declare-fun Unit!19339 () Unit!19336)

(assert (=> b!607080 (= e!347649 Unit!19339)))

(declare-fun b!607081 () Bool)

(assert (=> b!607081 (= e!347639 e!347637)))

(declare-fun res!390103 () Bool)

(assert (=> b!607081 (=> (not res!390103) (not e!347637))))

(assert (=> b!607081 (= res!390103 (arrayContainsKey!0 lt!277172 (select (arr!17871 a!2986) j!136) j!136))))

(declare-fun b!607082 () Bool)

(declare-fun res!390085 () Bool)

(assert (=> b!607082 (=> res!390085 e!347645)))

(assert (=> b!607082 (= res!390085 (contains!3011 Nil!11962 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607083 () Bool)

(declare-fun Unit!19340 () Unit!19336)

(assert (=> b!607083 (= e!347647 Unit!19340)))

(declare-fun b!607084 () Bool)

(assert (=> b!607084 (= e!347645 true)))

(declare-fun lt!277173 () Bool)

(assert (=> b!607084 (= lt!277173 (contains!3011 Nil!11962 k!1786))))

(declare-fun b!607085 () Bool)

(declare-fun res!390083 () Bool)

(assert (=> b!607085 (=> res!390083 e!347645)))

(declare-fun noDuplicate!313 (List!11965) Bool)

(assert (=> b!607085 (= res!390083 (not (noDuplicate!313 Nil!11962)))))

(declare-fun b!607086 () Bool)

(declare-fun Unit!19341 () Unit!19336)

(assert (=> b!607086 (= e!347649 Unit!19341)))

(assert (=> b!607086 false))

(declare-fun b!607087 () Bool)

(assert (=> b!607087 (= e!347641 e!347640)))

(declare-fun res!390099 () Bool)

(assert (=> b!607087 (=> (not res!390099) (not e!347640))))

(assert (=> b!607087 (= res!390099 (= (select (store (arr!17871 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!607087 (= lt!277172 (array!37249 (store (arr!17871 a!2986) i!1108 k!1786) (size!18235 a!2986)))))

(declare-fun b!607088 () Bool)

(declare-fun res!390082 () Bool)

(assert (=> b!607088 (=> (not res!390082) (not e!347641))))

(assert (=> b!607088 (= res!390082 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11962))))

(declare-fun res!390084 () Bool)

(assert (=> start!55554 (=> (not res!390084) (not e!347644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55554 (= res!390084 (validMask!0 mask!3053))))

(assert (=> start!55554 e!347644))

(assert (=> start!55554 true))

(declare-fun array_inv!13645 (array!37248) Bool)

(assert (=> start!55554 (array_inv!13645 a!2986)))

(assert (= (and start!55554 res!390084) b!607078))

(assert (= (and b!607078 res!390094) b!607076))

(assert (= (and b!607076 res!390097) b!607079))

(assert (= (and b!607079 res!390100) b!607065))

(assert (= (and b!607065 res!390087) b!607074))

(assert (= (and b!607074 res!390101) b!607067))

(assert (= (and b!607067 res!390089) b!607088))

(assert (= (and b!607088 res!390082) b!607071))

(assert (= (and b!607071 res!390095) b!607087))

(assert (= (and b!607087 res!390099) b!607069))

(assert (= (and b!607069 res!390088) b!607063))

(assert (= (and b!607063 res!390086) b!607066))

(assert (= (and b!607063 c!68857) b!607086))

(assert (= (and b!607063 (not c!68857)) b!607080))

(assert (= (and b!607063 (not res!390091)) b!607072))

(assert (= (and b!607072 res!390098) b!607073))

(assert (= (and b!607073 (not res!390092)) b!607081))

(assert (= (and b!607081 res!390103) b!607064))

(assert (= (and b!607072 (not res!390104)) b!607075))

(assert (= (and b!607075 c!68858) b!607062))

(assert (= (and b!607075 (not c!68858)) b!607083))

(assert (= (and b!607075 (not res!390096)) b!607077))

(assert (= (and b!607077 res!390102) b!607070))

(assert (= (and b!607077 (not res!390093)) b!607085))

(assert (= (and b!607085 (not res!390083)) b!607068))

(assert (= (and b!607068 (not res!390090)) b!607082))

(assert (= (and b!607082 (not res!390085)) b!607084))

(declare-fun m!583869 () Bool)

(assert (=> b!607076 m!583869))

(assert (=> b!607076 m!583869))

(declare-fun m!583871 () Bool)

(assert (=> b!607076 m!583871))

(declare-fun m!583873 () Bool)

(assert (=> b!607085 m!583873))

(declare-fun m!583875 () Bool)

(assert (=> b!607088 m!583875))

(assert (=> b!607081 m!583869))

(assert (=> b!607081 m!583869))

(declare-fun m!583877 () Bool)

(assert (=> b!607081 m!583877))

(declare-fun m!583879 () Bool)

(assert (=> b!607065 m!583879))

(declare-fun m!583881 () Bool)

(assert (=> b!607087 m!583881))

(declare-fun m!583883 () Bool)

(assert (=> b!607087 m!583883))

(assert (=> b!607072 m!583869))

(assert (=> b!607072 m!583881))

(declare-fun m!583885 () Bool)

(assert (=> b!607072 m!583885))

(declare-fun m!583887 () Bool)

(assert (=> b!607079 m!583887))

(declare-fun m!583889 () Bool)

(assert (=> b!607063 m!583889))

(declare-fun m!583891 () Bool)

(assert (=> b!607063 m!583891))

(assert (=> b!607063 m!583869))

(declare-fun m!583893 () Bool)

(assert (=> b!607063 m!583893))

(assert (=> b!607063 m!583881))

(declare-fun m!583895 () Bool)

(assert (=> b!607063 m!583895))

(declare-fun m!583897 () Bool)

(assert (=> b!607063 m!583897))

(assert (=> b!607063 m!583869))

(declare-fun m!583899 () Bool)

(assert (=> b!607063 m!583899))

(declare-fun m!583901 () Bool)

(assert (=> b!607071 m!583901))

(declare-fun m!583903 () Bool)

(assert (=> b!607082 m!583903))

(declare-fun m!583905 () Bool)

(assert (=> b!607074 m!583905))

(declare-fun m!583907 () Bool)

(assert (=> b!607067 m!583907))

(declare-fun m!583909 () Bool)

(assert (=> start!55554 m!583909))

(declare-fun m!583911 () Bool)

(assert (=> start!55554 m!583911))

(assert (=> b!607073 m!583869))

(assert (=> b!607062 m!583869))

(declare-fun m!583913 () Bool)

(assert (=> b!607062 m!583913))

(assert (=> b!607062 m!583869))

(declare-fun m!583915 () Bool)

(assert (=> b!607062 m!583915))

(assert (=> b!607062 m!583869))

(declare-fun m!583917 () Bool)

(assert (=> b!607062 m!583917))

(declare-fun m!583919 () Bool)

(assert (=> b!607062 m!583919))

(assert (=> b!607062 m!583869))

(declare-fun m!583921 () Bool)

(assert (=> b!607062 m!583921))

(declare-fun m!583923 () Bool)

(assert (=> b!607062 m!583923))

(declare-fun m!583925 () Bool)

(assert (=> b!607062 m!583925))

(declare-fun m!583927 () Bool)

(assert (=> b!607084 m!583927))

(declare-fun m!583929 () Bool)

(assert (=> b!607069 m!583929))

(assert (=> b!607069 m!583869))

(assert (=> b!607069 m!583869))

(declare-fun m!583931 () Bool)

(assert (=> b!607069 m!583931))

(assert (=> b!607077 m!583869))

(assert (=> b!607077 m!583869))

(declare-fun m!583933 () Bool)

(assert (=> b!607077 m!583933))

(assert (=> b!607077 m!583869))

(declare-fun m!583935 () Bool)

(assert (=> b!607077 m!583935))

(assert (=> b!607077 m!583869))

(assert (=> b!607077 m!583877))

(assert (=> b!607070 m!583869))

(assert (=> b!607070 m!583869))

(declare-fun m!583937 () Bool)

(assert (=> b!607070 m!583937))

(assert (=> b!607064 m!583869))

(assert (=> b!607064 m!583869))

(assert (=> b!607064 m!583937))

(declare-fun m!583939 () Bool)

(assert (=> b!607068 m!583939))

(push 1)

