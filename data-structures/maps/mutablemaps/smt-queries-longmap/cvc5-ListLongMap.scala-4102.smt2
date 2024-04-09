; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56118 () Bool)

(assert start!56118)

(declare-fun b!619214 () Bool)

(declare-fun res!399086 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!619214 (= res!399086 (bvsge j!136 index!984))))

(declare-fun e!355132 () Bool)

(assert (=> b!619214 (=> res!399086 e!355132)))

(declare-fun e!355130 () Bool)

(assert (=> b!619214 (= e!355130 e!355132)))

(declare-fun b!619215 () Bool)

(declare-datatypes ((Unit!20470 0))(
  ( (Unit!20471) )
))
(declare-fun e!355136 () Unit!20470)

(declare-fun Unit!20472 () Unit!20470)

(assert (=> b!619215 (= e!355136 Unit!20472)))

(declare-fun b!619216 () Bool)

(declare-fun res!399076 () Bool)

(declare-fun e!355137 () Bool)

(assert (=> b!619216 (=> (not res!399076) (not e!355137))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!37551 0))(
  ( (array!37552 (arr!18018 (Array (_ BitVec 32) (_ BitVec 64))) (size!18382 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37551)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!619216 (= res!399076 (and (= (size!18382 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18382 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18382 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!619217 () Bool)

(declare-fun res!399090 () Bool)

(assert (=> b!619217 (=> (not res!399090) (not e!355137))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!619217 (= res!399090 (validKeyInArray!0 k!1786))))

(declare-fun lt!285865 () array!37551)

(declare-fun b!619218 () Bool)

(declare-fun e!355138 () Bool)

(declare-fun arrayContainsKey!0 (array!37551 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!619218 (= e!355138 (arrayContainsKey!0 lt!285865 (select (arr!18018 a!2986) j!136) index!984))))

(declare-fun b!619219 () Bool)

(declare-fun e!355129 () Bool)

(assert (=> b!619219 (= e!355137 e!355129)))

(declare-fun res!399078 () Bool)

(assert (=> b!619219 (=> (not res!399078) (not e!355129))))

(declare-datatypes ((SeekEntryResult!6465 0))(
  ( (MissingZero!6465 (index!28143 (_ BitVec 32))) (Found!6465 (index!28144 (_ BitVec 32))) (Intermediate!6465 (undefined!7277 Bool) (index!28145 (_ BitVec 32)) (x!56954 (_ BitVec 32))) (Undefined!6465) (MissingVacant!6465 (index!28146 (_ BitVec 32))) )
))
(declare-fun lt!285875 () SeekEntryResult!6465)

(assert (=> b!619219 (= res!399078 (or (= lt!285875 (MissingZero!6465 i!1108)) (= lt!285875 (MissingVacant!6465 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37551 (_ BitVec 32)) SeekEntryResult!6465)

(assert (=> b!619219 (= lt!285875 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!619220 () Bool)

(declare-fun e!355139 () Bool)

(assert (=> b!619220 (= e!355129 e!355139)))

(declare-fun res!399089 () Bool)

(assert (=> b!619220 (=> (not res!399089) (not e!355139))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!619220 (= res!399089 (= (select (store (arr!18018 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!619220 (= lt!285865 (array!37552 (store (arr!18018 a!2986) i!1108 k!1786) (size!18382 a!2986)))))

(declare-fun res!399081 () Bool)

(declare-fun b!619221 () Bool)

(assert (=> b!619221 (= res!399081 (arrayContainsKey!0 lt!285865 (select (arr!18018 a!2986) j!136) j!136))))

(declare-fun e!355128 () Bool)

(assert (=> b!619221 (=> (not res!399081) (not e!355128))))

(assert (=> b!619221 (= e!355132 e!355128)))

(declare-fun b!619222 () Bool)

(declare-fun res!399092 () Bool)

(assert (=> b!619222 (=> (not res!399092) (not e!355129))))

(declare-datatypes ((List!12112 0))(
  ( (Nil!12109) (Cons!12108 (h!13153 (_ BitVec 64)) (t!18348 List!12112)) )
))
(declare-fun arrayNoDuplicates!0 (array!37551 (_ BitVec 32) List!12112) Bool)

(assert (=> b!619222 (= res!399092 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12109))))

(declare-fun b!619223 () Bool)

(declare-fun e!355133 () Unit!20470)

(declare-fun Unit!20473 () Unit!20470)

(assert (=> b!619223 (= e!355133 Unit!20473)))

(declare-fun b!619225 () Bool)

(declare-fun e!355141 () Unit!20470)

(declare-fun Unit!20474 () Unit!20470)

(assert (=> b!619225 (= e!355141 Unit!20474)))

(declare-fun b!619226 () Bool)

(declare-fun e!355135 () Bool)

(declare-fun lt!285868 () SeekEntryResult!6465)

(declare-fun lt!285857 () SeekEntryResult!6465)

(assert (=> b!619226 (= e!355135 (= lt!285868 lt!285857))))

(declare-fun b!619227 () Bool)

(declare-fun e!355134 () Bool)

(assert (=> b!619227 (= e!355134 true)))

(assert (=> b!619227 (= (select (store (arr!18018 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!619228 () Bool)

(assert (=> b!619228 (= e!355128 (arrayContainsKey!0 lt!285865 (select (arr!18018 a!2986) j!136) index!984))))

(declare-fun b!619229 () Bool)

(declare-fun Unit!20475 () Unit!20470)

(assert (=> b!619229 (= e!355133 Unit!20475)))

(assert (=> b!619229 false))

(declare-fun b!619230 () Bool)

(declare-fun res!399085 () Bool)

(assert (=> b!619230 (=> (not res!399085) (not e!355129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37551 (_ BitVec 32)) Bool)

(assert (=> b!619230 (= res!399085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!619231 () Bool)

(declare-fun res!399091 () Bool)

(assert (=> b!619231 (=> (not res!399091) (not e!355137))))

(assert (=> b!619231 (= res!399091 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!619232 () Bool)

(assert (=> b!619232 false))

(declare-fun lt!285859 () Unit!20470)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37551 (_ BitVec 64) (_ BitVec 32) List!12112) Unit!20470)

(assert (=> b!619232 (= lt!285859 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285865 (select (arr!18018 a!2986) j!136) j!136 Nil!12109))))

(assert (=> b!619232 (arrayNoDuplicates!0 lt!285865 j!136 Nil!12109)))

(declare-fun lt!285873 () Unit!20470)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37551 (_ BitVec 32) (_ BitVec 32)) Unit!20470)

(assert (=> b!619232 (= lt!285873 (lemmaNoDuplicateFromThenFromBigger!0 lt!285865 #b00000000000000000000000000000000 j!136))))

(assert (=> b!619232 (arrayNoDuplicates!0 lt!285865 #b00000000000000000000000000000000 Nil!12109)))

(declare-fun lt!285862 () Unit!20470)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37551 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12112) Unit!20470)

(assert (=> b!619232 (= lt!285862 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12109))))

(assert (=> b!619232 (arrayContainsKey!0 lt!285865 (select (arr!18018 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285869 () Unit!20470)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37551 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20470)

(assert (=> b!619232 (= lt!285869 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285865 (select (arr!18018 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20476 () Unit!20470)

(assert (=> b!619232 (= e!355136 Unit!20476)))

(declare-fun b!619233 () Bool)

(declare-fun Unit!20477 () Unit!20470)

(assert (=> b!619233 (= e!355141 Unit!20477)))

(declare-fun res!399080 () Bool)

(assert (=> b!619233 (= res!399080 (= (select (store (arr!18018 a!2986) i!1108 k!1786) index!984) (select (arr!18018 a!2986) j!136)))))

(assert (=> b!619233 (=> (not res!399080) (not e!355130))))

(assert (=> b!619233 e!355130))

(declare-fun c!70438 () Bool)

(assert (=> b!619233 (= c!70438 (bvslt j!136 index!984))))

(declare-fun lt!285870 () Unit!20470)

(assert (=> b!619233 (= lt!285870 e!355136)))

(declare-fun c!70439 () Bool)

(assert (=> b!619233 (= c!70439 (bvslt index!984 j!136))))

(declare-fun lt!285861 () Unit!20470)

(declare-fun e!355140 () Unit!20470)

(assert (=> b!619233 (= lt!285861 e!355140)))

(assert (=> b!619233 false))

(declare-fun b!619234 () Bool)

(declare-fun e!355127 () Bool)

(assert (=> b!619234 (= e!355139 e!355127)))

(declare-fun res!399083 () Bool)

(assert (=> b!619234 (=> (not res!399083) (not e!355127))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!619234 (= res!399083 (and (= lt!285868 (Found!6465 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18018 a!2986) index!984) (select (arr!18018 a!2986) j!136))) (not (= (select (arr!18018 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37551 (_ BitVec 32)) SeekEntryResult!6465)

(assert (=> b!619234 (= lt!285868 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18018 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!619224 () Bool)

(assert (=> b!619224 (= e!355127 (not e!355134))))

(declare-fun res!399079 () Bool)

(assert (=> b!619224 (=> res!399079 e!355134)))

(declare-fun lt!285863 () SeekEntryResult!6465)

(assert (=> b!619224 (= res!399079 (not (= lt!285863 (MissingVacant!6465 vacantSpotIndex!68))))))

(declare-fun lt!285864 () Unit!20470)

(assert (=> b!619224 (= lt!285864 e!355141)))

(declare-fun c!70436 () Bool)

(assert (=> b!619224 (= c!70436 (= lt!285863 (Found!6465 index!984)))))

(declare-fun lt!285876 () Unit!20470)

(assert (=> b!619224 (= lt!285876 e!355133)))

(declare-fun c!70437 () Bool)

(assert (=> b!619224 (= c!70437 (= lt!285863 Undefined!6465))))

(declare-fun lt!285860 () (_ BitVec 64))

(assert (=> b!619224 (= lt!285863 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285860 lt!285865 mask!3053))))

(assert (=> b!619224 e!355135))

(declare-fun res!399087 () Bool)

(assert (=> b!619224 (=> (not res!399087) (not e!355135))))

(declare-fun lt!285867 () (_ BitVec 32))

(assert (=> b!619224 (= res!399087 (= lt!285857 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285867 vacantSpotIndex!68 lt!285860 lt!285865 mask!3053)))))

(assert (=> b!619224 (= lt!285857 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285867 vacantSpotIndex!68 (select (arr!18018 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!619224 (= lt!285860 (select (store (arr!18018 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!285871 () Unit!20470)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37551 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20470)

(assert (=> b!619224 (= lt!285871 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285867 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!619224 (= lt!285867 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!399088 () Bool)

(assert (=> start!56118 (=> (not res!399088) (not e!355137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56118 (= res!399088 (validMask!0 mask!3053))))

(assert (=> start!56118 e!355137))

(assert (=> start!56118 true))

(declare-fun array_inv!13792 (array!37551) Bool)

(assert (=> start!56118 (array_inv!13792 a!2986)))

(declare-fun b!619235 () Bool)

(assert (=> b!619235 false))

(declare-fun lt!285858 () Unit!20470)

(assert (=> b!619235 (= lt!285858 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285865 (select (arr!18018 a!2986) j!136) index!984 Nil!12109))))

(assert (=> b!619235 (arrayNoDuplicates!0 lt!285865 index!984 Nil!12109)))

(declare-fun lt!285866 () Unit!20470)

(assert (=> b!619235 (= lt!285866 (lemmaNoDuplicateFromThenFromBigger!0 lt!285865 #b00000000000000000000000000000000 index!984))))

(assert (=> b!619235 (arrayNoDuplicates!0 lt!285865 #b00000000000000000000000000000000 Nil!12109)))

(declare-fun lt!285874 () Unit!20470)

(assert (=> b!619235 (= lt!285874 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12109))))

(assert (=> b!619235 (arrayContainsKey!0 lt!285865 (select (arr!18018 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285872 () Unit!20470)

(assert (=> b!619235 (= lt!285872 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285865 (select (arr!18018 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!619235 e!355138))

(declare-fun res!399084 () Bool)

(assert (=> b!619235 (=> (not res!399084) (not e!355138))))

(assert (=> b!619235 (= res!399084 (arrayContainsKey!0 lt!285865 (select (arr!18018 a!2986) j!136) j!136))))

(declare-fun Unit!20478 () Unit!20470)

(assert (=> b!619235 (= e!355140 Unit!20478)))

(declare-fun b!619236 () Bool)

(declare-fun res!399077 () Bool)

(assert (=> b!619236 (=> (not res!399077) (not e!355129))))

(assert (=> b!619236 (= res!399077 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18018 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!619237 () Bool)

(declare-fun res!399082 () Bool)

(assert (=> b!619237 (=> (not res!399082) (not e!355137))))

(assert (=> b!619237 (= res!399082 (validKeyInArray!0 (select (arr!18018 a!2986) j!136)))))

(declare-fun b!619238 () Bool)

(declare-fun Unit!20479 () Unit!20470)

(assert (=> b!619238 (= e!355140 Unit!20479)))

(assert (= (and start!56118 res!399088) b!619216))

(assert (= (and b!619216 res!399076) b!619237))

(assert (= (and b!619237 res!399082) b!619217))

(assert (= (and b!619217 res!399090) b!619231))

(assert (= (and b!619231 res!399091) b!619219))

(assert (= (and b!619219 res!399078) b!619230))

(assert (= (and b!619230 res!399085) b!619222))

(assert (= (and b!619222 res!399092) b!619236))

(assert (= (and b!619236 res!399077) b!619220))

(assert (= (and b!619220 res!399089) b!619234))

(assert (= (and b!619234 res!399083) b!619224))

(assert (= (and b!619224 res!399087) b!619226))

(assert (= (and b!619224 c!70437) b!619229))

(assert (= (and b!619224 (not c!70437)) b!619223))

(assert (= (and b!619224 c!70436) b!619233))

(assert (= (and b!619224 (not c!70436)) b!619225))

(assert (= (and b!619233 res!399080) b!619214))

(assert (= (and b!619214 (not res!399086)) b!619221))

(assert (= (and b!619221 res!399081) b!619228))

(assert (= (and b!619233 c!70438) b!619232))

(assert (= (and b!619233 (not c!70438)) b!619215))

(assert (= (and b!619233 c!70439) b!619235))

(assert (= (and b!619233 (not c!70439)) b!619238))

(assert (= (and b!619235 res!399084) b!619218))

(assert (= (and b!619224 (not res!399079)) b!619227))

(declare-fun m!595239 () Bool)

(assert (=> b!619233 m!595239))

(declare-fun m!595241 () Bool)

(assert (=> b!619233 m!595241))

(declare-fun m!595243 () Bool)

(assert (=> b!619233 m!595243))

(declare-fun m!595245 () Bool)

(assert (=> b!619230 m!595245))

(declare-fun m!595247 () Bool)

(assert (=> b!619234 m!595247))

(assert (=> b!619234 m!595243))

(assert (=> b!619234 m!595243))

(declare-fun m!595249 () Bool)

(assert (=> b!619234 m!595249))

(assert (=> b!619220 m!595239))

(declare-fun m!595251 () Bool)

(assert (=> b!619220 m!595251))

(assert (=> b!619228 m!595243))

(assert (=> b!619228 m!595243))

(declare-fun m!595253 () Bool)

(assert (=> b!619228 m!595253))

(assert (=> b!619227 m!595239))

(assert (=> b!619227 m!595241))

(declare-fun m!595255 () Bool)

(assert (=> b!619231 m!595255))

(declare-fun m!595257 () Bool)

(assert (=> b!619219 m!595257))

(assert (=> b!619237 m!595243))

(assert (=> b!619237 m!595243))

(declare-fun m!595259 () Bool)

(assert (=> b!619237 m!595259))

(assert (=> b!619218 m!595243))

(assert (=> b!619218 m!595243))

(assert (=> b!619218 m!595253))

(declare-fun m!595261 () Bool)

(assert (=> b!619236 m!595261))

(assert (=> b!619235 m!595243))

(declare-fun m!595263 () Bool)

(assert (=> b!619235 m!595263))

(assert (=> b!619235 m!595243))

(assert (=> b!619235 m!595243))

(declare-fun m!595265 () Bool)

(assert (=> b!619235 m!595265))

(declare-fun m!595267 () Bool)

(assert (=> b!619235 m!595267))

(declare-fun m!595269 () Bool)

(assert (=> b!619235 m!595269))

(assert (=> b!619235 m!595243))

(declare-fun m!595271 () Bool)

(assert (=> b!619235 m!595271))

(assert (=> b!619235 m!595243))

(declare-fun m!595273 () Bool)

(assert (=> b!619235 m!595273))

(declare-fun m!595275 () Bool)

(assert (=> b!619235 m!595275))

(declare-fun m!595277 () Bool)

(assert (=> b!619235 m!595277))

(declare-fun m!595279 () Bool)

(assert (=> b!619217 m!595279))

(declare-fun m!595281 () Bool)

(assert (=> start!56118 m!595281))

(declare-fun m!595283 () Bool)

(assert (=> start!56118 m!595283))

(assert (=> b!619232 m!595243))

(assert (=> b!619232 m!595243))

(declare-fun m!595285 () Bool)

(assert (=> b!619232 m!595285))

(assert (=> b!619232 m!595267))

(declare-fun m!595287 () Bool)

(assert (=> b!619232 m!595287))

(assert (=> b!619232 m!595243))

(declare-fun m!595289 () Bool)

(assert (=> b!619232 m!595289))

(assert (=> b!619232 m!595277))

(declare-fun m!595291 () Bool)

(assert (=> b!619232 m!595291))

(assert (=> b!619232 m!595243))

(declare-fun m!595293 () Bool)

(assert (=> b!619232 m!595293))

(assert (=> b!619221 m!595243))

(assert (=> b!619221 m!595243))

(assert (=> b!619221 m!595271))

(declare-fun m!595295 () Bool)

(assert (=> b!619222 m!595295))

(declare-fun m!595297 () Bool)

(assert (=> b!619224 m!595297))

(declare-fun m!595299 () Bool)

(assert (=> b!619224 m!595299))

(declare-fun m!595301 () Bool)

(assert (=> b!619224 m!595301))

(assert (=> b!619224 m!595243))

(declare-fun m!595303 () Bool)

(assert (=> b!619224 m!595303))

(assert (=> b!619224 m!595239))

(assert (=> b!619224 m!595243))

(declare-fun m!595305 () Bool)

(assert (=> b!619224 m!595305))

(declare-fun m!595307 () Bool)

(assert (=> b!619224 m!595307))

(push 1)

