; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55156 () Bool)

(assert start!55156)

(declare-fun b!604072 () Bool)

(declare-fun res!388198 () Bool)

(declare-fun e!345645 () Bool)

(assert (=> b!604072 (=> (not res!388198) (not e!345645))))

(declare-datatypes ((array!37192 0))(
  ( (array!37193 (arr!17849 (Array (_ BitVec 32) (_ BitVec 64))) (size!18213 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37192)

(declare-datatypes ((List!11943 0))(
  ( (Nil!11940) (Cons!11939 (h!12984 (_ BitVec 64)) (t!18179 List!11943)) )
))
(declare-fun arrayNoDuplicates!0 (array!37192 (_ BitVec 32) List!11943) Bool)

(assert (=> b!604072 (= res!388198 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11940))))

(declare-fun b!604073 () Bool)

(declare-datatypes ((Unit!19204 0))(
  ( (Unit!19205) )
))
(declare-fun e!345649 () Unit!19204)

(declare-fun Unit!19206 () Unit!19204)

(assert (=> b!604073 (= e!345649 Unit!19206)))

(assert (=> b!604073 false))

(declare-fun b!604074 () Bool)

(declare-fun e!345646 () Bool)

(declare-fun e!345635 () Bool)

(assert (=> b!604074 (= e!345646 e!345635)))

(declare-fun res!388210 () Bool)

(assert (=> b!604074 (=> res!388210 e!345635)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!275512 () (_ BitVec 64))

(declare-fun lt!275510 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!604074 (= res!388210 (or (not (= (select (arr!17849 a!2986) j!136) lt!275510)) (not (= (select (arr!17849 a!2986) j!136) lt!275512)) (bvsge j!136 index!984)))))

(declare-fun b!604075 () Bool)

(declare-fun e!345641 () Bool)

(declare-fun e!345648 () Bool)

(assert (=> b!604075 (= e!345641 e!345648)))

(declare-fun res!388206 () Bool)

(assert (=> b!604075 (=> res!388206 e!345648)))

(assert (=> b!604075 (= res!388206 (or (not (= (select (arr!17849 a!2986) j!136) lt!275510)) (not (= (select (arr!17849 a!2986) j!136) lt!275512))))))

(assert (=> b!604075 e!345646))

(declare-fun res!388197 () Bool)

(assert (=> b!604075 (=> (not res!388197) (not e!345646))))

(assert (=> b!604075 (= res!388197 (= lt!275512 (select (arr!17849 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!604075 (= lt!275512 (select (store (arr!17849 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!604076 () Bool)

(declare-fun Unit!19207 () Unit!19204)

(assert (=> b!604076 (= e!345649 Unit!19207)))

(declare-fun b!604077 () Bool)

(declare-fun e!345639 () Bool)

(assert (=> b!604077 (= e!345645 e!345639)))

(declare-fun res!388214 () Bool)

(assert (=> b!604077 (=> (not res!388214) (not e!345639))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!604077 (= res!388214 (= (select (store (arr!17849 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!275508 () array!37192)

(assert (=> b!604077 (= lt!275508 (array!37193 (store (arr!17849 a!2986) i!1108 k!1786) (size!18213 a!2986)))))

(declare-fun b!604078 () Bool)

(declare-fun res!388208 () Bool)

(assert (=> b!604078 (=> (not res!388208) (not e!345645))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!604078 (= res!388208 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17849 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!604079 () Bool)

(declare-fun res!388205 () Bool)

(declare-fun e!345644 () Bool)

(assert (=> b!604079 (=> (not res!388205) (not e!345644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!604079 (= res!388205 (validKeyInArray!0 k!1786))))

(declare-fun b!604080 () Bool)

(declare-fun e!345636 () Bool)

(assert (=> b!604080 (= e!345648 e!345636)))

(declare-fun res!388212 () Bool)

(assert (=> b!604080 (=> res!388212 e!345636)))

(assert (=> b!604080 (= res!388212 (bvsge index!984 j!136))))

(declare-fun lt!275518 () Unit!19204)

(declare-fun e!345637 () Unit!19204)

(assert (=> b!604080 (= lt!275518 e!345637)))

(declare-fun c!68306 () Bool)

(assert (=> b!604080 (= c!68306 (bvslt j!136 index!984))))

(declare-fun b!604081 () Bool)

(declare-fun e!345643 () Bool)

(assert (=> b!604081 (= e!345635 e!345643)))

(declare-fun res!388196 () Bool)

(assert (=> b!604081 (=> (not res!388196) (not e!345643))))

(declare-fun arrayContainsKey!0 (array!37192 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!604081 (= res!388196 (arrayContainsKey!0 lt!275508 (select (arr!17849 a!2986) j!136) j!136))))

(declare-fun b!604082 () Bool)

(declare-fun res!388202 () Bool)

(assert (=> b!604082 (=> (not res!388202) (not e!345644))))

(assert (=> b!604082 (= res!388202 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!604083 () Bool)

(assert (=> b!604083 (= e!345643 (arrayContainsKey!0 lt!275508 (select (arr!17849 a!2986) j!136) index!984))))

(declare-fun res!388213 () Bool)

(assert (=> start!55156 (=> (not res!388213) (not e!345644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55156 (= res!388213 (validMask!0 mask!3053))))

(assert (=> start!55156 e!345644))

(assert (=> start!55156 true))

(declare-fun array_inv!13623 (array!37192) Bool)

(assert (=> start!55156 (array_inv!13623 a!2986)))

(declare-fun b!604084 () Bool)

(declare-fun e!345647 () Bool)

(assert (=> b!604084 (= e!345647 (not e!345641))))

(declare-fun res!388200 () Bool)

(assert (=> b!604084 (=> res!388200 e!345641)))

(declare-datatypes ((SeekEntryResult!6296 0))(
  ( (MissingZero!6296 (index!27446 (_ BitVec 32))) (Found!6296 (index!27447 (_ BitVec 32))) (Intermediate!6296 (undefined!7108 Bool) (index!27448 (_ BitVec 32)) (x!56266 (_ BitVec 32))) (Undefined!6296) (MissingVacant!6296 (index!27449 (_ BitVec 32))) )
))
(declare-fun lt!275517 () SeekEntryResult!6296)

(assert (=> b!604084 (= res!388200 (not (= lt!275517 (Found!6296 index!984))))))

(declare-fun lt!275516 () Unit!19204)

(assert (=> b!604084 (= lt!275516 e!345649)))

(declare-fun c!68305 () Bool)

(assert (=> b!604084 (= c!68305 (= lt!275517 Undefined!6296))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37192 (_ BitVec 32)) SeekEntryResult!6296)

(assert (=> b!604084 (= lt!275517 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275510 lt!275508 mask!3053))))

(declare-fun e!345638 () Bool)

(assert (=> b!604084 e!345638))

(declare-fun res!388199 () Bool)

(assert (=> b!604084 (=> (not res!388199) (not e!345638))))

(declare-fun lt!275505 () SeekEntryResult!6296)

(declare-fun lt!275514 () (_ BitVec 32))

(assert (=> b!604084 (= res!388199 (= lt!275505 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275514 vacantSpotIndex!68 lt!275510 lt!275508 mask!3053)))))

(assert (=> b!604084 (= lt!275505 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275514 vacantSpotIndex!68 (select (arr!17849 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!604084 (= lt!275510 (select (store (arr!17849 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!275506 () Unit!19204)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37192 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19204)

(assert (=> b!604084 (= lt!275506 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275514 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!604084 (= lt!275514 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!604085 () Bool)

(declare-fun res!388203 () Bool)

(assert (=> b!604085 (=> (not res!388203) (not e!345645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37192 (_ BitVec 32)) Bool)

(assert (=> b!604085 (= res!388203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!604086 () Bool)

(declare-fun e!345642 () Bool)

(assert (=> b!604086 (= e!345642 (arrayContainsKey!0 lt!275508 (select (arr!17849 a!2986) j!136) index!984))))

(declare-fun b!604087 () Bool)

(assert (=> b!604087 (= e!345636 (bvsge (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000))))

(assert (=> b!604087 (arrayContainsKey!0 lt!275508 (select (arr!17849 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!275519 () Unit!19204)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37192 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19204)

(assert (=> b!604087 (= lt!275519 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275508 (select (arr!17849 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!604087 e!345642))

(declare-fun res!388209 () Bool)

(assert (=> b!604087 (=> (not res!388209) (not e!345642))))

(assert (=> b!604087 (= res!388209 (arrayContainsKey!0 lt!275508 (select (arr!17849 a!2986) j!136) j!136))))

(declare-fun b!604088 () Bool)

(declare-fun Unit!19208 () Unit!19204)

(assert (=> b!604088 (= e!345637 Unit!19208)))

(declare-fun lt!275509 () Unit!19204)

(assert (=> b!604088 (= lt!275509 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275508 (select (arr!17849 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!604088 (arrayContainsKey!0 lt!275508 (select (arr!17849 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275513 () Unit!19204)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37192 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11943) Unit!19204)

(assert (=> b!604088 (= lt!275513 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11940))))

(assert (=> b!604088 (arrayNoDuplicates!0 lt!275508 #b00000000000000000000000000000000 Nil!11940)))

(declare-fun lt!275507 () Unit!19204)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37192 (_ BitVec 32) (_ BitVec 32)) Unit!19204)

(assert (=> b!604088 (= lt!275507 (lemmaNoDuplicateFromThenFromBigger!0 lt!275508 #b00000000000000000000000000000000 j!136))))

(assert (=> b!604088 (arrayNoDuplicates!0 lt!275508 j!136 Nil!11940)))

(declare-fun lt!275515 () Unit!19204)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37192 (_ BitVec 64) (_ BitVec 32) List!11943) Unit!19204)

(assert (=> b!604088 (= lt!275515 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275508 (select (arr!17849 a!2986) j!136) j!136 Nil!11940))))

(assert (=> b!604088 false))

(declare-fun b!604089 () Bool)

(declare-fun lt!275511 () SeekEntryResult!6296)

(assert (=> b!604089 (= e!345638 (= lt!275511 lt!275505))))

(declare-fun b!604090 () Bool)

(declare-fun res!388201 () Bool)

(assert (=> b!604090 (=> (not res!388201) (not e!345644))))

(assert (=> b!604090 (= res!388201 (and (= (size!18213 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18213 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18213 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!604091 () Bool)

(assert (=> b!604091 (= e!345639 e!345647)))

(declare-fun res!388211 () Bool)

(assert (=> b!604091 (=> (not res!388211) (not e!345647))))

(assert (=> b!604091 (= res!388211 (and (= lt!275511 (Found!6296 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17849 a!2986) index!984) (select (arr!17849 a!2986) j!136))) (not (= (select (arr!17849 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!604091 (= lt!275511 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17849 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!604092 () Bool)

(declare-fun res!388204 () Bool)

(assert (=> b!604092 (=> (not res!388204) (not e!345644))))

(assert (=> b!604092 (= res!388204 (validKeyInArray!0 (select (arr!17849 a!2986) j!136)))))

(declare-fun b!604093 () Bool)

(assert (=> b!604093 (= e!345644 e!345645)))

(declare-fun res!388207 () Bool)

(assert (=> b!604093 (=> (not res!388207) (not e!345645))))

(declare-fun lt!275520 () SeekEntryResult!6296)

(assert (=> b!604093 (= res!388207 (or (= lt!275520 (MissingZero!6296 i!1108)) (= lt!275520 (MissingVacant!6296 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37192 (_ BitVec 32)) SeekEntryResult!6296)

(assert (=> b!604093 (= lt!275520 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!604094 () Bool)

(declare-fun Unit!19209 () Unit!19204)

(assert (=> b!604094 (= e!345637 Unit!19209)))

(assert (= (and start!55156 res!388213) b!604090))

(assert (= (and b!604090 res!388201) b!604092))

(assert (= (and b!604092 res!388204) b!604079))

(assert (= (and b!604079 res!388205) b!604082))

(assert (= (and b!604082 res!388202) b!604093))

(assert (= (and b!604093 res!388207) b!604085))

(assert (= (and b!604085 res!388203) b!604072))

(assert (= (and b!604072 res!388198) b!604078))

(assert (= (and b!604078 res!388208) b!604077))

(assert (= (and b!604077 res!388214) b!604091))

(assert (= (and b!604091 res!388211) b!604084))

(assert (= (and b!604084 res!388199) b!604089))

(assert (= (and b!604084 c!68305) b!604073))

(assert (= (and b!604084 (not c!68305)) b!604076))

(assert (= (and b!604084 (not res!388200)) b!604075))

(assert (= (and b!604075 res!388197) b!604074))

(assert (= (and b!604074 (not res!388210)) b!604081))

(assert (= (and b!604081 res!388196) b!604083))

(assert (= (and b!604075 (not res!388206)) b!604080))

(assert (= (and b!604080 c!68306) b!604088))

(assert (= (and b!604080 (not c!68306)) b!604094))

(assert (= (and b!604080 (not res!388212)) b!604087))

(assert (= (and b!604087 res!388209) b!604086))

(declare-fun m!581039 () Bool)

(assert (=> b!604079 m!581039))

(declare-fun m!581041 () Bool)

(assert (=> b!604083 m!581041))

(assert (=> b!604083 m!581041))

(declare-fun m!581043 () Bool)

(assert (=> b!604083 m!581043))

(declare-fun m!581045 () Bool)

(assert (=> b!604077 m!581045))

(declare-fun m!581047 () Bool)

(assert (=> b!604077 m!581047))

(declare-fun m!581049 () Bool)

(assert (=> start!55156 m!581049))

(declare-fun m!581051 () Bool)

(assert (=> start!55156 m!581051))

(assert (=> b!604081 m!581041))

(assert (=> b!604081 m!581041))

(declare-fun m!581053 () Bool)

(assert (=> b!604081 m!581053))

(declare-fun m!581055 () Bool)

(assert (=> b!604078 m!581055))

(declare-fun m!581057 () Bool)

(assert (=> b!604093 m!581057))

(declare-fun m!581059 () Bool)

(assert (=> b!604091 m!581059))

(assert (=> b!604091 m!581041))

(assert (=> b!604091 m!581041))

(declare-fun m!581061 () Bool)

(assert (=> b!604091 m!581061))

(declare-fun m!581063 () Bool)

(assert (=> b!604085 m!581063))

(assert (=> b!604087 m!581041))

(assert (=> b!604087 m!581041))

(declare-fun m!581065 () Bool)

(assert (=> b!604087 m!581065))

(assert (=> b!604087 m!581041))

(declare-fun m!581067 () Bool)

(assert (=> b!604087 m!581067))

(assert (=> b!604087 m!581041))

(assert (=> b!604087 m!581053))

(assert (=> b!604075 m!581041))

(assert (=> b!604075 m!581045))

(declare-fun m!581069 () Bool)

(assert (=> b!604075 m!581069))

(declare-fun m!581071 () Bool)

(assert (=> b!604088 m!581071))

(declare-fun m!581073 () Bool)

(assert (=> b!604088 m!581073))

(assert (=> b!604088 m!581041))

(declare-fun m!581075 () Bool)

(assert (=> b!604088 m!581075))

(assert (=> b!604088 m!581041))

(declare-fun m!581077 () Bool)

(assert (=> b!604088 m!581077))

(declare-fun m!581079 () Bool)

(assert (=> b!604088 m!581079))

(assert (=> b!604088 m!581041))

(declare-fun m!581081 () Bool)

(assert (=> b!604088 m!581081))

(assert (=> b!604088 m!581041))

(declare-fun m!581083 () Bool)

(assert (=> b!604088 m!581083))

(declare-fun m!581085 () Bool)

(assert (=> b!604084 m!581085))

(assert (=> b!604084 m!581041))

(declare-fun m!581087 () Bool)

(assert (=> b!604084 m!581087))

(assert (=> b!604084 m!581045))

(assert (=> b!604084 m!581041))

(declare-fun m!581089 () Bool)

(assert (=> b!604084 m!581089))

(declare-fun m!581091 () Bool)

(assert (=> b!604084 m!581091))

(declare-fun m!581093 () Bool)

(assert (=> b!604084 m!581093))

(declare-fun m!581095 () Bool)

(assert (=> b!604084 m!581095))

(declare-fun m!581097 () Bool)

(assert (=> b!604082 m!581097))

(assert (=> b!604092 m!581041))

(assert (=> b!604092 m!581041))

(declare-fun m!581099 () Bool)

(assert (=> b!604092 m!581099))

(assert (=> b!604086 m!581041))

(assert (=> b!604086 m!581041))

(assert (=> b!604086 m!581043))

(declare-fun m!581101 () Bool)

(assert (=> b!604072 m!581101))

(assert (=> b!604074 m!581041))

(push 1)

