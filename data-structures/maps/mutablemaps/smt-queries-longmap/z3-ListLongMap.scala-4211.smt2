; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57728 () Bool)

(assert start!57728)

(declare-fun b!638074 () Bool)

(declare-fun res!413099 () Bool)

(declare-fun e!365114 () Bool)

(assert (=> b!638074 (=> (not res!413099) (not e!365114))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38255 0))(
  ( (array!38256 (arr!18346 (Array (_ BitVec 32) (_ BitVec 64))) (size!18710 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38255)

(assert (=> b!638074 (= res!413099 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18346 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!638075 () Bool)

(declare-fun e!365119 () Bool)

(declare-fun e!365112 () Bool)

(assert (=> b!638075 (= e!365119 e!365112)))

(declare-fun res!413082 () Bool)

(assert (=> b!638075 (=> (not res!413082) (not e!365112))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!295108 () array!38255)

(declare-fun arrayContainsKey!0 (array!38255 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!638075 (= res!413082 (arrayContainsKey!0 lt!295108 (select (arr!18346 a!2986) j!136) j!136))))

(declare-fun b!638076 () Bool)

(declare-datatypes ((Unit!21530 0))(
  ( (Unit!21531) )
))
(declare-fun e!365121 () Unit!21530)

(declare-fun Unit!21532 () Unit!21530)

(assert (=> b!638076 (= e!365121 Unit!21532)))

(assert (=> b!638076 false))

(declare-fun b!638077 () Bool)

(declare-fun res!413083 () Bool)

(declare-fun e!365117 () Bool)

(assert (=> b!638077 (=> (not res!413083) (not e!365117))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!638077 (= res!413083 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!638079 () Bool)

(declare-fun res!413098 () Bool)

(assert (=> b!638079 (=> (not res!413098) (not e!365117))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!638079 (= res!413098 (and (= (size!18710 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18710 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18710 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!638080 () Bool)

(declare-fun e!365115 () Bool)

(declare-fun e!365116 () Bool)

(assert (=> b!638080 (= e!365115 (not e!365116))))

(declare-fun res!413097 () Bool)

(assert (=> b!638080 (=> res!413097 e!365116)))

(declare-datatypes ((SeekEntryResult!6793 0))(
  ( (MissingZero!6793 (index!29485 (_ BitVec 32))) (Found!6793 (index!29486 (_ BitVec 32))) (Intermediate!6793 (undefined!7605 Bool) (index!29487 (_ BitVec 32)) (x!58268 (_ BitVec 32))) (Undefined!6793) (MissingVacant!6793 (index!29488 (_ BitVec 32))) )
))
(declare-fun lt!295114 () SeekEntryResult!6793)

(assert (=> b!638080 (= res!413097 (not (= lt!295114 (Found!6793 index!984))))))

(declare-fun lt!295118 () Unit!21530)

(assert (=> b!638080 (= lt!295118 e!365121)))

(declare-fun c!72863 () Bool)

(assert (=> b!638080 (= c!72863 (= lt!295114 Undefined!6793))))

(declare-fun lt!295113 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38255 (_ BitVec 32)) SeekEntryResult!6793)

(assert (=> b!638080 (= lt!295114 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295113 lt!295108 mask!3053))))

(declare-fun e!365110 () Bool)

(assert (=> b!638080 e!365110))

(declare-fun res!413086 () Bool)

(assert (=> b!638080 (=> (not res!413086) (not e!365110))))

(declare-fun lt!295115 () SeekEntryResult!6793)

(declare-fun lt!295119 () (_ BitVec 32))

(assert (=> b!638080 (= res!413086 (= lt!295115 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295119 vacantSpotIndex!68 lt!295113 lt!295108 mask!3053)))))

(assert (=> b!638080 (= lt!295115 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295119 vacantSpotIndex!68 (select (arr!18346 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!638080 (= lt!295113 (select (store (arr!18346 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!295116 () Unit!21530)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38255 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21530)

(assert (=> b!638080 (= lt!295116 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295119 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!638080 (= lt!295119 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!638081 () Bool)

(declare-fun res!413091 () Bool)

(declare-fun e!365122 () Bool)

(assert (=> b!638081 (=> res!413091 e!365122)))

(declare-datatypes ((List!12440 0))(
  ( (Nil!12437) (Cons!12436 (h!13481 (_ BitVec 64)) (t!18676 List!12440)) )
))
(declare-fun contains!3123 (List!12440 (_ BitVec 64)) Bool)

(assert (=> b!638081 (= res!413091 (contains!3123 Nil!12437 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!638082 () Bool)

(declare-fun res!413089 () Bool)

(assert (=> b!638082 (=> (not res!413089) (not e!365114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38255 (_ BitVec 32)) Bool)

(assert (=> b!638082 (= res!413089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!638083 () Bool)

(declare-fun e!365118 () Bool)

(assert (=> b!638083 (= e!365116 e!365118)))

(declare-fun res!413094 () Bool)

(assert (=> b!638083 (=> res!413094 e!365118)))

(declare-fun lt!295117 () (_ BitVec 64))

(assert (=> b!638083 (= res!413094 (or (not (= (select (arr!18346 a!2986) j!136) lt!295113)) (not (= (select (arr!18346 a!2986) j!136) lt!295117)) (bvsge j!136 index!984)))))

(declare-fun e!365113 () Bool)

(assert (=> b!638083 e!365113))

(declare-fun res!413093 () Bool)

(assert (=> b!638083 (=> (not res!413093) (not e!365113))))

(assert (=> b!638083 (= res!413093 (= lt!295117 (select (arr!18346 a!2986) j!136)))))

(assert (=> b!638083 (= lt!295117 (select (store (arr!18346 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!638084 () Bool)

(declare-fun res!413096 () Bool)

(assert (=> b!638084 (=> (not res!413096) (not e!365117))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!638084 (= res!413096 (validKeyInArray!0 (select (arr!18346 a!2986) j!136)))))

(declare-fun b!638085 () Bool)

(declare-fun e!365111 () Bool)

(assert (=> b!638085 (= e!365114 e!365111)))

(declare-fun res!413087 () Bool)

(assert (=> b!638085 (=> (not res!413087) (not e!365111))))

(assert (=> b!638085 (= res!413087 (= (select (store (arr!18346 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638085 (= lt!295108 (array!38256 (store (arr!18346 a!2986) i!1108 k0!1786) (size!18710 a!2986)))))

(declare-fun b!638086 () Bool)

(declare-fun res!413102 () Bool)

(assert (=> b!638086 (=> (not res!413102) (not e!365114))))

(declare-fun arrayNoDuplicates!0 (array!38255 (_ BitVec 32) List!12440) Bool)

(assert (=> b!638086 (= res!413102 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12437))))

(declare-fun b!638087 () Bool)

(declare-fun lt!295112 () SeekEntryResult!6793)

(assert (=> b!638087 (= e!365110 (= lt!295112 lt!295115))))

(declare-fun b!638088 () Bool)

(assert (=> b!638088 (= e!365122 true)))

(declare-fun lt!295111 () Bool)

(assert (=> b!638088 (= lt!295111 (contains!3123 Nil!12437 k0!1786))))

(declare-fun b!638089 () Bool)

(declare-fun res!413090 () Bool)

(assert (=> b!638089 (=> res!413090 e!365122)))

(declare-fun noDuplicate!398 (List!12440) Bool)

(assert (=> b!638089 (= res!413090 (not (noDuplicate!398 Nil!12437)))))

(declare-fun b!638090 () Bool)

(assert (=> b!638090 (= e!365112 (arrayContainsKey!0 lt!295108 (select (arr!18346 a!2986) j!136) index!984))))

(declare-fun b!638091 () Bool)

(assert (=> b!638091 (= e!365111 e!365115)))

(declare-fun res!413085 () Bool)

(assert (=> b!638091 (=> (not res!413085) (not e!365115))))

(assert (=> b!638091 (= res!413085 (and (= lt!295112 (Found!6793 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18346 a!2986) index!984) (select (arr!18346 a!2986) j!136))) (not (= (select (arr!18346 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!638091 (= lt!295112 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18346 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638092 () Bool)

(declare-fun Unit!21533 () Unit!21530)

(assert (=> b!638092 (= e!365121 Unit!21533)))

(declare-fun b!638078 () Bool)

(assert (=> b!638078 (= e!365118 e!365122)))

(declare-fun res!413101 () Bool)

(assert (=> b!638078 (=> res!413101 e!365122)))

(assert (=> b!638078 (= res!413101 (or (bvsge (size!18710 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18710 a!2986))))))

(assert (=> b!638078 (arrayContainsKey!0 lt!295108 (select (arr!18346 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295109 () Unit!21530)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38255 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21530)

(assert (=> b!638078 (= lt!295109 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295108 (select (arr!18346 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun res!413084 () Bool)

(assert (=> start!57728 (=> (not res!413084) (not e!365117))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57728 (= res!413084 (validMask!0 mask!3053))))

(assert (=> start!57728 e!365117))

(assert (=> start!57728 true))

(declare-fun array_inv!14120 (array!38255) Bool)

(assert (=> start!57728 (array_inv!14120 a!2986)))

(declare-fun b!638093 () Bool)

(assert (=> b!638093 (= e!365117 e!365114)))

(declare-fun res!413100 () Bool)

(assert (=> b!638093 (=> (not res!413100) (not e!365114))))

(declare-fun lt!295110 () SeekEntryResult!6793)

(assert (=> b!638093 (= res!413100 (or (= lt!295110 (MissingZero!6793 i!1108)) (= lt!295110 (MissingVacant!6793 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38255 (_ BitVec 32)) SeekEntryResult!6793)

(assert (=> b!638093 (= lt!295110 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!638094 () Bool)

(assert (=> b!638094 (= e!365113 e!365119)))

(declare-fun res!413088 () Bool)

(assert (=> b!638094 (=> res!413088 e!365119)))

(assert (=> b!638094 (= res!413088 (or (not (= (select (arr!18346 a!2986) j!136) lt!295113)) (not (= (select (arr!18346 a!2986) j!136) lt!295117)) (bvsge j!136 index!984)))))

(declare-fun b!638095 () Bool)

(declare-fun res!413092 () Bool)

(assert (=> b!638095 (=> (not res!413092) (not e!365117))))

(assert (=> b!638095 (= res!413092 (validKeyInArray!0 k0!1786))))

(declare-fun b!638096 () Bool)

(declare-fun res!413095 () Bool)

(assert (=> b!638096 (=> res!413095 e!365122)))

(assert (=> b!638096 (= res!413095 (contains!3123 Nil!12437 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!57728 res!413084) b!638079))

(assert (= (and b!638079 res!413098) b!638084))

(assert (= (and b!638084 res!413096) b!638095))

(assert (= (and b!638095 res!413092) b!638077))

(assert (= (and b!638077 res!413083) b!638093))

(assert (= (and b!638093 res!413100) b!638082))

(assert (= (and b!638082 res!413089) b!638086))

(assert (= (and b!638086 res!413102) b!638074))

(assert (= (and b!638074 res!413099) b!638085))

(assert (= (and b!638085 res!413087) b!638091))

(assert (= (and b!638091 res!413085) b!638080))

(assert (= (and b!638080 res!413086) b!638087))

(assert (= (and b!638080 c!72863) b!638076))

(assert (= (and b!638080 (not c!72863)) b!638092))

(assert (= (and b!638080 (not res!413097)) b!638083))

(assert (= (and b!638083 res!413093) b!638094))

(assert (= (and b!638094 (not res!413088)) b!638075))

(assert (= (and b!638075 res!413082) b!638090))

(assert (= (and b!638083 (not res!413094)) b!638078))

(assert (= (and b!638078 (not res!413101)) b!638089))

(assert (= (and b!638089 (not res!413090)) b!638081))

(assert (= (and b!638081 (not res!413091)) b!638096))

(assert (= (and b!638096 (not res!413095)) b!638088))

(declare-fun m!612091 () Bool)

(assert (=> b!638077 m!612091))

(declare-fun m!612093 () Bool)

(assert (=> b!638086 m!612093))

(declare-fun m!612095 () Bool)

(assert (=> b!638083 m!612095))

(declare-fun m!612097 () Bool)

(assert (=> b!638083 m!612097))

(declare-fun m!612099 () Bool)

(assert (=> b!638083 m!612099))

(assert (=> b!638085 m!612097))

(declare-fun m!612101 () Bool)

(assert (=> b!638085 m!612101))

(declare-fun m!612103 () Bool)

(assert (=> b!638093 m!612103))

(declare-fun m!612105 () Bool)

(assert (=> b!638096 m!612105))

(declare-fun m!612107 () Bool)

(assert (=> b!638088 m!612107))

(declare-fun m!612109 () Bool)

(assert (=> b!638074 m!612109))

(declare-fun m!612111 () Bool)

(assert (=> b!638091 m!612111))

(assert (=> b!638091 m!612095))

(assert (=> b!638091 m!612095))

(declare-fun m!612113 () Bool)

(assert (=> b!638091 m!612113))

(declare-fun m!612115 () Bool)

(assert (=> b!638081 m!612115))

(declare-fun m!612117 () Bool)

(assert (=> b!638080 m!612117))

(declare-fun m!612119 () Bool)

(assert (=> b!638080 m!612119))

(assert (=> b!638080 m!612095))

(assert (=> b!638080 m!612097))

(assert (=> b!638080 m!612095))

(declare-fun m!612121 () Bool)

(assert (=> b!638080 m!612121))

(declare-fun m!612123 () Bool)

(assert (=> b!638080 m!612123))

(declare-fun m!612125 () Bool)

(assert (=> b!638080 m!612125))

(declare-fun m!612127 () Bool)

(assert (=> b!638080 m!612127))

(assert (=> b!638094 m!612095))

(assert (=> b!638090 m!612095))

(assert (=> b!638090 m!612095))

(declare-fun m!612129 () Bool)

(assert (=> b!638090 m!612129))

(declare-fun m!612131 () Bool)

(assert (=> b!638095 m!612131))

(declare-fun m!612133 () Bool)

(assert (=> b!638082 m!612133))

(assert (=> b!638084 m!612095))

(assert (=> b!638084 m!612095))

(declare-fun m!612135 () Bool)

(assert (=> b!638084 m!612135))

(assert (=> b!638075 m!612095))

(assert (=> b!638075 m!612095))

(declare-fun m!612137 () Bool)

(assert (=> b!638075 m!612137))

(assert (=> b!638078 m!612095))

(assert (=> b!638078 m!612095))

(declare-fun m!612139 () Bool)

(assert (=> b!638078 m!612139))

(assert (=> b!638078 m!612095))

(declare-fun m!612141 () Bool)

(assert (=> b!638078 m!612141))

(declare-fun m!612143 () Bool)

(assert (=> start!57728 m!612143))

(declare-fun m!612145 () Bool)

(assert (=> start!57728 m!612145))

(declare-fun m!612147 () Bool)

(assert (=> b!638089 m!612147))

(check-sat (not b!638078) (not b!638096) (not b!638088) (not b!638081) (not b!638095) (not b!638075) (not b!638091) (not b!638077) (not b!638090) (not start!57728) (not b!638082) (not b!638084) (not b!638089) (not b!638086) (not b!638080) (not b!638093))
(check-sat)
