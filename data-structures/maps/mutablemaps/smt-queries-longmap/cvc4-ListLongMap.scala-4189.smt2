; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57124 () Bool)

(assert start!57124)

(declare-fun b!632163 () Bool)

(declare-fun res!408948 () Bool)

(declare-fun e!361416 () Bool)

(assert (=> b!632163 (=> (not res!408948) (not e!361416))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38104 0))(
  ( (array!38105 (arr!18281 (Array (_ BitVec 32) (_ BitVec 64))) (size!18645 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38104)

(assert (=> b!632163 (= res!408948 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18281 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!632164 () Bool)

(declare-datatypes ((Unit!21270 0))(
  ( (Unit!21271) )
))
(declare-fun e!361421 () Unit!21270)

(declare-fun Unit!21272 () Unit!21270)

(assert (=> b!632164 (= e!361421 Unit!21272)))

(declare-fun b!632165 () Bool)

(declare-fun e!361418 () Bool)

(declare-fun e!361422 () Bool)

(assert (=> b!632165 (= e!361418 (not e!361422))))

(declare-fun res!408958 () Bool)

(assert (=> b!632165 (=> res!408958 e!361422)))

(declare-datatypes ((SeekEntryResult!6728 0))(
  ( (MissingZero!6728 (index!29204 (_ BitVec 32))) (Found!6728 (index!29205 (_ BitVec 32))) (Intermediate!6728 (undefined!7540 Bool) (index!29206 (_ BitVec 32)) (x!57964 (_ BitVec 32))) (Undefined!6728) (MissingVacant!6728 (index!29207 (_ BitVec 32))) )
))
(declare-fun lt!292209 () SeekEntryResult!6728)

(assert (=> b!632165 (= res!408958 (not (= lt!292209 (Found!6728 index!984))))))

(declare-fun lt!292211 () Unit!21270)

(assert (=> b!632165 (= lt!292211 e!361421)))

(declare-fun c!71975 () Bool)

(assert (=> b!632165 (= c!71975 (= lt!292209 Undefined!6728))))

(declare-fun lt!292205 () (_ BitVec 64))

(declare-fun lt!292206 () array!38104)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38104 (_ BitVec 32)) SeekEntryResult!6728)

(assert (=> b!632165 (= lt!292209 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292205 lt!292206 mask!3053))))

(declare-fun e!361420 () Bool)

(assert (=> b!632165 e!361420))

(declare-fun res!408951 () Bool)

(assert (=> b!632165 (=> (not res!408951) (not e!361420))))

(declare-fun lt!292207 () (_ BitVec 32))

(declare-fun lt!292204 () SeekEntryResult!6728)

(assert (=> b!632165 (= res!408951 (= lt!292204 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292207 vacantSpotIndex!68 lt!292205 lt!292206 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!632165 (= lt!292204 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292207 vacantSpotIndex!68 (select (arr!18281 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!632165 (= lt!292205 (select (store (arr!18281 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292210 () Unit!21270)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38104 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21270)

(assert (=> b!632165 (= lt!292210 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292207 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!632165 (= lt!292207 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!632166 () Bool)

(declare-fun res!408955 () Bool)

(declare-fun e!361419 () Bool)

(assert (=> b!632166 (=> (not res!408955) (not e!361419))))

(declare-fun arrayContainsKey!0 (array!38104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!632166 (= res!408955 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!632167 () Bool)

(declare-fun lt!292212 () SeekEntryResult!6728)

(assert (=> b!632167 (= e!361420 (= lt!292212 lt!292204))))

(declare-fun b!632168 () Bool)

(declare-fun e!361423 () Bool)

(assert (=> b!632168 (= e!361416 e!361423)))

(declare-fun res!408950 () Bool)

(assert (=> b!632168 (=> (not res!408950) (not e!361423))))

(assert (=> b!632168 (= res!408950 (= (select (store (arr!18281 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!632168 (= lt!292206 (array!38105 (store (arr!18281 a!2986) i!1108 k!1786) (size!18645 a!2986)))))

(declare-fun res!408947 () Bool)

(assert (=> start!57124 (=> (not res!408947) (not e!361419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57124 (= res!408947 (validMask!0 mask!3053))))

(assert (=> start!57124 e!361419))

(assert (=> start!57124 true))

(declare-fun array_inv!14055 (array!38104) Bool)

(assert (=> start!57124 (array_inv!14055 a!2986)))

(declare-fun b!632169 () Bool)

(assert (=> b!632169 (= e!361419 e!361416)))

(declare-fun res!408957 () Bool)

(assert (=> b!632169 (=> (not res!408957) (not e!361416))))

(declare-fun lt!292208 () SeekEntryResult!6728)

(assert (=> b!632169 (= res!408957 (or (= lt!292208 (MissingZero!6728 i!1108)) (= lt!292208 (MissingVacant!6728 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38104 (_ BitVec 32)) SeekEntryResult!6728)

(assert (=> b!632169 (= lt!292208 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!632170 () Bool)

(declare-fun res!408949 () Bool)

(assert (=> b!632170 (=> (not res!408949) (not e!361416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38104 (_ BitVec 32)) Bool)

(assert (=> b!632170 (= res!408949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!632171 () Bool)

(declare-fun res!408959 () Bool)

(assert (=> b!632171 (=> (not res!408959) (not e!361419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!632171 (= res!408959 (validKeyInArray!0 (select (arr!18281 a!2986) j!136)))))

(declare-fun b!632172 () Bool)

(assert (=> b!632172 (= e!361423 e!361418)))

(declare-fun res!408954 () Bool)

(assert (=> b!632172 (=> (not res!408954) (not e!361418))))

(assert (=> b!632172 (= res!408954 (and (= lt!292212 (Found!6728 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18281 a!2986) index!984) (select (arr!18281 a!2986) j!136))) (not (= (select (arr!18281 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!632172 (= lt!292212 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18281 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632173 () Bool)

(declare-fun res!408953 () Bool)

(assert (=> b!632173 (=> (not res!408953) (not e!361419))))

(assert (=> b!632173 (= res!408953 (validKeyInArray!0 k!1786))))

(declare-fun b!632174 () Bool)

(declare-fun res!408956 () Bool)

(assert (=> b!632174 (=> (not res!408956) (not e!361419))))

(assert (=> b!632174 (= res!408956 (and (= (size!18645 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18645 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18645 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!632175 () Bool)

(assert (=> b!632175 (= e!361422 true)))

(assert (=> b!632175 (= (select (store (arr!18281 a!2986) i!1108 k!1786) index!984) (select (arr!18281 a!2986) j!136))))

(declare-fun b!632176 () Bool)

(declare-fun res!408952 () Bool)

(assert (=> b!632176 (=> (not res!408952) (not e!361416))))

(declare-datatypes ((List!12375 0))(
  ( (Nil!12372) (Cons!12371 (h!13416 (_ BitVec 64)) (t!18611 List!12375)) )
))
(declare-fun arrayNoDuplicates!0 (array!38104 (_ BitVec 32) List!12375) Bool)

(assert (=> b!632176 (= res!408952 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12372))))

(declare-fun b!632177 () Bool)

(declare-fun Unit!21273 () Unit!21270)

(assert (=> b!632177 (= e!361421 Unit!21273)))

(assert (=> b!632177 false))

(assert (= (and start!57124 res!408947) b!632174))

(assert (= (and b!632174 res!408956) b!632171))

(assert (= (and b!632171 res!408959) b!632173))

(assert (= (and b!632173 res!408953) b!632166))

(assert (= (and b!632166 res!408955) b!632169))

(assert (= (and b!632169 res!408957) b!632170))

(assert (= (and b!632170 res!408949) b!632176))

(assert (= (and b!632176 res!408952) b!632163))

(assert (= (and b!632163 res!408948) b!632168))

(assert (= (and b!632168 res!408950) b!632172))

(assert (= (and b!632172 res!408954) b!632165))

(assert (= (and b!632165 res!408951) b!632167))

(assert (= (and b!632165 c!71975) b!632177))

(assert (= (and b!632165 (not c!71975)) b!632164))

(assert (= (and b!632165 (not res!408958)) b!632175))

(declare-fun m!607053 () Bool)

(assert (=> b!632171 m!607053))

(assert (=> b!632171 m!607053))

(declare-fun m!607055 () Bool)

(assert (=> b!632171 m!607055))

(declare-fun m!607057 () Bool)

(assert (=> b!632170 m!607057))

(declare-fun m!607059 () Bool)

(assert (=> b!632165 m!607059))

(declare-fun m!607061 () Bool)

(assert (=> b!632165 m!607061))

(declare-fun m!607063 () Bool)

(assert (=> b!632165 m!607063))

(assert (=> b!632165 m!607053))

(declare-fun m!607065 () Bool)

(assert (=> b!632165 m!607065))

(declare-fun m!607067 () Bool)

(assert (=> b!632165 m!607067))

(declare-fun m!607069 () Bool)

(assert (=> b!632165 m!607069))

(assert (=> b!632165 m!607053))

(declare-fun m!607071 () Bool)

(assert (=> b!632165 m!607071))

(declare-fun m!607073 () Bool)

(assert (=> start!57124 m!607073))

(declare-fun m!607075 () Bool)

(assert (=> start!57124 m!607075))

(declare-fun m!607077 () Bool)

(assert (=> b!632172 m!607077))

(assert (=> b!632172 m!607053))

(assert (=> b!632172 m!607053))

(declare-fun m!607079 () Bool)

(assert (=> b!632172 m!607079))

(assert (=> b!632175 m!607065))

(declare-fun m!607081 () Bool)

(assert (=> b!632175 m!607081))

(assert (=> b!632175 m!607053))

(declare-fun m!607083 () Bool)

(assert (=> b!632166 m!607083))

(assert (=> b!632168 m!607065))

(declare-fun m!607085 () Bool)

(assert (=> b!632168 m!607085))

(declare-fun m!607087 () Bool)

(assert (=> b!632176 m!607087))

(declare-fun m!607089 () Bool)

(assert (=> b!632173 m!607089))

(declare-fun m!607091 () Bool)

(assert (=> b!632163 m!607091))

(declare-fun m!607093 () Bool)

(assert (=> b!632169 m!607093))

(push 1)

