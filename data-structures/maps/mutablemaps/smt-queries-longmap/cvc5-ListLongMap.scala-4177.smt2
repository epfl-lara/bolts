; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56928 () Bool)

(assert start!56928)

(declare-fun b!629997 () Bool)

(declare-fun res!407397 () Bool)

(declare-fun e!360243 () Bool)

(assert (=> b!629997 (=> (not res!407397) (not e!360243))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629997 (= res!407397 (validKeyInArray!0 k!1786))))

(declare-fun b!629998 () Bool)

(declare-fun res!407399 () Bool)

(assert (=> b!629998 (=> (not res!407399) (not e!360243))))

(declare-datatypes ((array!38022 0))(
  ( (array!38023 (arr!18243 (Array (_ BitVec 32) (_ BitVec 64))) (size!18607 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38022)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!629998 (= res!407399 (validKeyInArray!0 (select (arr!18243 a!2986) j!136)))))

(declare-fun e!360241 () Bool)

(declare-fun b!629999 () Bool)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!291024 () array!38022)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!291025 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6690 0))(
  ( (MissingZero!6690 (index!29046 (_ BitVec 32))) (Found!6690 (index!29047 (_ BitVec 32))) (Intermediate!6690 (undefined!7502 Bool) (index!29048 (_ BitVec 32)) (x!57812 (_ BitVec 32))) (Undefined!6690) (MissingVacant!6690 (index!29049 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38022 (_ BitVec 32)) SeekEntryResult!6690)

(assert (=> b!629999 (= e!360241 (not (not (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291025 lt!291024 mask!3053) Undefined!6690))))))

(declare-fun e!360244 () Bool)

(assert (=> b!629999 e!360244))

(declare-fun res!407402 () Bool)

(assert (=> b!629999 (=> (not res!407402) (not e!360244))))

(declare-fun lt!291023 () SeekEntryResult!6690)

(declare-fun lt!291021 () (_ BitVec 32))

(assert (=> b!629999 (= res!407402 (= lt!291023 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291021 vacantSpotIndex!68 lt!291025 lt!291024 mask!3053)))))

(assert (=> b!629999 (= lt!291023 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291021 vacantSpotIndex!68 (select (arr!18243 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!629999 (= lt!291025 (select (store (arr!18243 a!2986) i!1108 k!1786) j!136))))

(declare-datatypes ((Unit!21124 0))(
  ( (Unit!21125) )
))
(declare-fun lt!291026 () Unit!21124)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38022 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21124)

(assert (=> b!629999 (= lt!291026 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291021 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629999 (= lt!291021 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!630000 () Bool)

(declare-fun lt!291027 () SeekEntryResult!6690)

(assert (=> b!630000 (= e!360244 (= lt!291027 lt!291023))))

(declare-fun b!630001 () Bool)

(declare-fun res!407392 () Bool)

(declare-fun e!360242 () Bool)

(assert (=> b!630001 (=> (not res!407392) (not e!360242))))

(declare-datatypes ((List!12337 0))(
  ( (Nil!12334) (Cons!12333 (h!13378 (_ BitVec 64)) (t!18573 List!12337)) )
))
(declare-fun arrayNoDuplicates!0 (array!38022 (_ BitVec 32) List!12337) Bool)

(assert (=> b!630001 (= res!407392 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12334))))

(declare-fun b!630002 () Bool)

(assert (=> b!630002 (= e!360243 e!360242)))

(declare-fun res!407394 () Bool)

(assert (=> b!630002 (=> (not res!407394) (not e!360242))))

(declare-fun lt!291022 () SeekEntryResult!6690)

(assert (=> b!630002 (= res!407394 (or (= lt!291022 (MissingZero!6690 i!1108)) (= lt!291022 (MissingVacant!6690 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38022 (_ BitVec 32)) SeekEntryResult!6690)

(assert (=> b!630002 (= lt!291022 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!630004 () Bool)

(declare-fun res!407401 () Bool)

(assert (=> b!630004 (=> (not res!407401) (not e!360242))))

(assert (=> b!630004 (= res!407401 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18243 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630005 () Bool)

(declare-fun e!360239 () Bool)

(assert (=> b!630005 (= e!360242 e!360239)))

(declare-fun res!407395 () Bool)

(assert (=> b!630005 (=> (not res!407395) (not e!360239))))

(assert (=> b!630005 (= res!407395 (= (select (store (arr!18243 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!630005 (= lt!291024 (array!38023 (store (arr!18243 a!2986) i!1108 k!1786) (size!18607 a!2986)))))

(declare-fun b!630006 () Bool)

(assert (=> b!630006 (= e!360239 e!360241)))

(declare-fun res!407391 () Bool)

(assert (=> b!630006 (=> (not res!407391) (not e!360241))))

(assert (=> b!630006 (= res!407391 (and (= lt!291027 (Found!6690 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18243 a!2986) index!984) (select (arr!18243 a!2986) j!136))) (not (= (select (arr!18243 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!630006 (= lt!291027 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18243 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630007 () Bool)

(declare-fun res!407398 () Bool)

(assert (=> b!630007 (=> (not res!407398) (not e!360243))))

(assert (=> b!630007 (= res!407398 (and (= (size!18607 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18607 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18607 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!630008 () Bool)

(declare-fun res!407400 () Bool)

(assert (=> b!630008 (=> (not res!407400) (not e!360242))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38022 (_ BitVec 32)) Bool)

(assert (=> b!630008 (= res!407400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!407393 () Bool)

(assert (=> start!56928 (=> (not res!407393) (not e!360243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56928 (= res!407393 (validMask!0 mask!3053))))

(assert (=> start!56928 e!360243))

(assert (=> start!56928 true))

(declare-fun array_inv!14017 (array!38022) Bool)

(assert (=> start!56928 (array_inv!14017 a!2986)))

(declare-fun b!630003 () Bool)

(declare-fun res!407396 () Bool)

(assert (=> b!630003 (=> (not res!407396) (not e!360243))))

(declare-fun arrayContainsKey!0 (array!38022 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630003 (= res!407396 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56928 res!407393) b!630007))

(assert (= (and b!630007 res!407398) b!629998))

(assert (= (and b!629998 res!407399) b!629997))

(assert (= (and b!629997 res!407397) b!630003))

(assert (= (and b!630003 res!407396) b!630002))

(assert (= (and b!630002 res!407394) b!630008))

(assert (= (and b!630008 res!407400) b!630001))

(assert (= (and b!630001 res!407392) b!630004))

(assert (= (and b!630004 res!407401) b!630005))

(assert (= (and b!630005 res!407395) b!630006))

(assert (= (and b!630006 res!407391) b!629999))

(assert (= (and b!629999 res!407402) b!630000))

(declare-fun m!605079 () Bool)

(assert (=> b!629998 m!605079))

(assert (=> b!629998 m!605079))

(declare-fun m!605081 () Bool)

(assert (=> b!629998 m!605081))

(declare-fun m!605083 () Bool)

(assert (=> start!56928 m!605083))

(declare-fun m!605085 () Bool)

(assert (=> start!56928 m!605085))

(declare-fun m!605087 () Bool)

(assert (=> b!630003 m!605087))

(declare-fun m!605089 () Bool)

(assert (=> b!629997 m!605089))

(declare-fun m!605091 () Bool)

(assert (=> b!630001 m!605091))

(declare-fun m!605093 () Bool)

(assert (=> b!630005 m!605093))

(declare-fun m!605095 () Bool)

(assert (=> b!630005 m!605095))

(declare-fun m!605097 () Bool)

(assert (=> b!630004 m!605097))

(declare-fun m!605099 () Bool)

(assert (=> b!629999 m!605099))

(declare-fun m!605101 () Bool)

(assert (=> b!629999 m!605101))

(assert (=> b!629999 m!605093))

(assert (=> b!629999 m!605079))

(declare-fun m!605103 () Bool)

(assert (=> b!629999 m!605103))

(declare-fun m!605105 () Bool)

(assert (=> b!629999 m!605105))

(declare-fun m!605107 () Bool)

(assert (=> b!629999 m!605107))

(declare-fun m!605109 () Bool)

(assert (=> b!629999 m!605109))

(assert (=> b!629999 m!605079))

(declare-fun m!605111 () Bool)

(assert (=> b!630006 m!605111))

(assert (=> b!630006 m!605079))

(assert (=> b!630006 m!605079))

(declare-fun m!605113 () Bool)

(assert (=> b!630006 m!605113))

(declare-fun m!605115 () Bool)

(assert (=> b!630002 m!605115))

(declare-fun m!605117 () Bool)

(assert (=> b!630008 m!605117))

(push 1)

(assert (not b!630002))

(assert (not b!630001))

(assert (not b!629999))

(assert (not start!56928))

(assert (not b!630006))

(assert (not b!630003))

(assert (not b!629998))

(assert (not b!629997))

(assert (not b!630008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!630138 () Bool)

(declare-fun e!360315 () SeekEntryResult!6690)

(assert (=> b!630138 (= e!360315 (MissingVacant!6690 vacantSpotIndex!68))))

(declare-fun b!630139 () Bool)

(declare-fun e!360314 () SeekEntryResult!6690)

(assert (=> b!630139 (= e!360314 Undefined!6690)))

(declare-fun b!630140 () Bool)

(declare-fun e!360316 () SeekEntryResult!6690)

(assert (=> b!630140 (= e!360314 e!360316)))

(declare-fun c!71695 () Bool)

(declare-fun lt!291099 () (_ BitVec 64))

(assert (=> b!630140 (= c!71695 (= lt!291099 lt!291025))))

(declare-fun b!630141 () Bool)

(assert (=> b!630141 (= e!360316 (Found!6690 index!984))))

(declare-fun lt!291100 () SeekEntryResult!6690)

(declare-fun d!89093 () Bool)

(assert (=> d!89093 (and (or (is-Undefined!6690 lt!291100) (not (is-Found!6690 lt!291100)) (and (bvsge (index!29047 lt!291100) #b00000000000000000000000000000000) (bvslt (index!29047 lt!291100) (size!18607 lt!291024)))) (or (is-Undefined!6690 lt!291100) (is-Found!6690 lt!291100) (not (is-MissingVacant!6690 lt!291100)) (not (= (index!29049 lt!291100) vacantSpotIndex!68)) (and (bvsge (index!29049 lt!291100) #b00000000000000000000000000000000) (bvslt (index!29049 lt!291100) (size!18607 lt!291024)))) (or (is-Undefined!6690 lt!291100) (ite (is-Found!6690 lt!291100) (= (select (arr!18243 lt!291024) (index!29047 lt!291100)) lt!291025) (and (is-MissingVacant!6690 lt!291100) (= (index!29049 lt!291100) vacantSpotIndex!68) (= (select (arr!18243 lt!291024) (index!29049 lt!291100)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89093 (= lt!291100 e!360314)))

(declare-fun c!71696 () Bool)

(assert (=> d!89093 (= c!71696 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89093 (= lt!291099 (select (arr!18243 lt!291024) index!984))))

(assert (=> d!89093 (validMask!0 mask!3053)))

(assert (=> d!89093 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291025 lt!291024 mask!3053) lt!291100)))

(declare-fun b!630142 () Bool)

(declare-fun c!71694 () Bool)

(assert (=> b!630142 (= c!71694 (= lt!291099 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!630142 (= e!360316 e!360315)))

(declare-fun b!630143 () Bool)

(assert (=> b!630143 (= e!360315 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!291025 lt!291024 mask!3053))))

(assert (= (and d!89093 c!71696) b!630139))

(assert (= (and d!89093 (not c!71696)) b!630140))

(assert (= (and b!630140 c!71695) b!630141))

(assert (= (and b!630140 (not c!71695)) b!630142))

(assert (= (and b!630142 c!71694) b!630138))

(assert (= (and b!630142 (not c!71694)) b!630143))

(declare-fun m!605243 () Bool)

(assert (=> d!89093 m!605243))

(declare-fun m!605245 () Bool)

(assert (=> d!89093 m!605245))

(declare-fun m!605247 () Bool)

(assert (=> d!89093 m!605247))

(assert (=> d!89093 m!605083))

(assert (=> b!630143 m!605099))

(assert (=> b!630143 m!605099))

(declare-fun m!605249 () Bool)

(assert (=> b!630143 m!605249))

(assert (=> b!629999 d!89093))

(declare-fun d!89109 () Bool)

(declare-fun e!360343 () Bool)

(assert (=> d!89109 e!360343))

(declare-fun res!407495 () Bool)

(assert (=> d!89109 (=> (not res!407495) (not e!360343))))

(assert (=> d!89109 (= res!407495 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18607 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18607 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18607 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18607 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18607 a!2986))))))

(declare-fun lt!291111 () Unit!21124)

(declare-fun choose!9 (array!38022 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21124)

(assert (=> d!89109 (= lt!291111 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291021 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89109 (validMask!0 mask!3053)))

(assert (=> d!89109 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291021 vacantSpotIndex!68 mask!3053) lt!291111)))

(declare-fun b!630185 () Bool)

(assert (=> b!630185 (= e!360343 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291021 vacantSpotIndex!68 (select (arr!18243 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291021 vacantSpotIndex!68 (select (store (arr!18243 a!2986) i!1108 k!1786) j!136) (array!38023 (store (arr!18243 a!2986) i!1108 k!1786) (size!18607 a!2986)) mask!3053)))))

(assert (= (and d!89109 res!407495) b!630185))

(declare-fun m!605267 () Bool)

(assert (=> d!89109 m!605267))

(assert (=> d!89109 m!605083))

(assert (=> b!630185 m!605105))

(assert (=> b!630185 m!605079))

(assert (=> b!630185 m!605103))

(assert (=> b!630185 m!605093))

(assert (=> b!630185 m!605079))

(assert (=> b!630185 m!605105))

(declare-fun m!605269 () Bool)

(assert (=> b!630185 m!605269))

(assert (=> b!629999 d!89109))

(declare-fun b!630190 () Bool)

(declare-fun e!360349 () SeekEntryResult!6690)

(assert (=> b!630190 (= e!360349 (MissingVacant!6690 vacantSpotIndex!68))))

(declare-fun b!630191 () Bool)

(declare-fun e!360348 () SeekEntryResult!6690)

(assert (=> b!630191 (= e!360348 Undefined!6690)))

(declare-fun b!630192 () Bool)

(declare-fun e!360350 () SeekEntryResult!6690)

(assert (=> b!630192 (= e!360348 e!360350)))

(declare-fun c!71713 () Bool)

(declare-fun lt!291112 () (_ BitVec 64))

(assert (=> b!630192 (= c!71713 (= lt!291112 lt!291025))))

(declare-fun b!630193 () Bool)

(assert (=> b!630193 (= e!360350 (Found!6690 lt!291021))))

(declare-fun d!89121 () Bool)

(declare-fun lt!291113 () SeekEntryResult!6690)

(assert (=> d!89121 (and (or (is-Undefined!6690 lt!291113) (not (is-Found!6690 lt!291113)) (and (bvsge (index!29047 lt!291113) #b00000000000000000000000000000000) (bvslt (index!29047 lt!291113) (size!18607 lt!291024)))) (or (is-Undefined!6690 lt!291113) (is-Found!6690 lt!291113) (not (is-MissingVacant!6690 lt!291113)) (not (= (index!29049 lt!291113) vacantSpotIndex!68)) (and (bvsge (index!29049 lt!291113) #b00000000000000000000000000000000) (bvslt (index!29049 lt!291113) (size!18607 lt!291024)))) (or (is-Undefined!6690 lt!291113) (ite (is-Found!6690 lt!291113) (= (select (arr!18243 lt!291024) (index!29047 lt!291113)) lt!291025) (and (is-MissingVacant!6690 lt!291113) (= (index!29049 lt!291113) vacantSpotIndex!68) (= (select (arr!18243 lt!291024) (index!29049 lt!291113)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89121 (= lt!291113 e!360348)))

(declare-fun c!71714 () Bool)

(assert (=> d!89121 (= c!71714 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89121 (= lt!291112 (select (arr!18243 lt!291024) lt!291021))))

(assert (=> d!89121 (validMask!0 mask!3053)))

(assert (=> d!89121 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291021 vacantSpotIndex!68 lt!291025 lt!291024 mask!3053) lt!291113)))

(declare-fun b!630194 () Bool)

(declare-fun c!71712 () Bool)

(assert (=> b!630194 (= c!71712 (= lt!291112 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!630194 (= e!360350 e!360349)))

(declare-fun b!630195 () Bool)

(assert (=> b!630195 (= e!360349 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!291021 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!291025 lt!291024 mask!3053))))

(assert (= (and d!89121 c!71714) b!630191))

(assert (= (and d!89121 (not c!71714)) b!630192))

(assert (= (and b!630192 c!71713) b!630193))

(assert (= (and b!630192 (not c!71713)) b!630194))

(assert (= (and b!630194 c!71712) b!630190))

(assert (= (and b!630194 (not c!71712)) b!630195))

(declare-fun m!605271 () Bool)

(assert (=> d!89121 m!605271))

(declare-fun m!605273 () Bool)

(assert (=> d!89121 m!605273))

(declare-fun m!605275 () Bool)

(assert (=> d!89121 m!605275))

(assert (=> d!89121 m!605083))

(declare-fun m!605277 () Bool)

(assert (=> b!630195 m!605277))

(assert (=> b!630195 m!605277))

(declare-fun m!605281 () Bool)

(assert (=> b!630195 m!605281))

(assert (=> b!629999 d!89121))

(declare-fun d!89125 () Bool)

(declare-fun lt!291118 () (_ BitVec 32))

(assert (=> d!89125 (and (bvsge lt!291118 #b00000000000000000000000000000000) (bvslt lt!291118 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89125 (= lt!291118 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89125 (validMask!0 mask!3053)))

(assert (=> d!89125 (= (nextIndex!0 index!984 x!910 mask!3053) lt!291118)))

(declare-fun bs!18999 () Bool)

(assert (= bs!18999 d!89125))

(declare-fun m!605291 () Bool)

(assert (=> bs!18999 m!605291))

(assert (=> bs!18999 m!605083))

(assert (=> b!629999 d!89125))

(declare-fun b!630204 () Bool)

(declare-fun e!360357 () SeekEntryResult!6690)

(assert (=> b!630204 (= e!360357 (MissingVacant!6690 vacantSpotIndex!68))))

(declare-fun b!630205 () Bool)

(declare-fun e!360356 () SeekEntryResult!6690)

(assert (=> b!630205 (= e!360356 Undefined!6690)))

(declare-fun b!630206 () Bool)

(declare-fun e!360358 () SeekEntryResult!6690)

(assert (=> b!630206 (= e!360356 e!360358)))

(declare-fun lt!291119 () (_ BitVec 64))

(declare-fun c!71719 () Bool)

(assert (=> b!630206 (= c!71719 (= lt!291119 (select (arr!18243 a!2986) j!136)))))

(declare-fun b!630207 () Bool)

(assert (=> b!630207 (= e!360358 (Found!6690 lt!291021))))

(declare-fun lt!291120 () SeekEntryResult!6690)

(declare-fun d!89135 () Bool)

(assert (=> d!89135 (and (or (is-Undefined!6690 lt!291120) (not (is-Found!6690 lt!291120)) (and (bvsge (index!29047 lt!291120) #b00000000000000000000000000000000) (bvslt (index!29047 lt!291120) (size!18607 a!2986)))) (or (is-Undefined!6690 lt!291120) (is-Found!6690 lt!291120) (not (is-MissingVacant!6690 lt!291120)) (not (= (index!29049 lt!291120) vacantSpotIndex!68)) (and (bvsge (index!29049 lt!291120) #b00000000000000000000000000000000) (bvslt (index!29049 lt!291120) (size!18607 a!2986)))) (or (is-Undefined!6690 lt!291120) (ite (is-Found!6690 lt!291120) (= (select (arr!18243 a!2986) (index!29047 lt!291120)) (select (arr!18243 a!2986) j!136)) (and (is-MissingVacant!6690 lt!291120) (= (index!29049 lt!291120) vacantSpotIndex!68) (= (select (arr!18243 a!2986) (index!29049 lt!291120)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89135 (= lt!291120 e!360356)))

(declare-fun c!71720 () Bool)

(assert (=> d!89135 (= c!71720 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89135 (= lt!291119 (select (arr!18243 a!2986) lt!291021))))

(assert (=> d!89135 (validMask!0 mask!3053)))

(assert (=> d!89135 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291021 vacantSpotIndex!68 (select (arr!18243 a!2986) j!136) a!2986 mask!3053) lt!291120)))

(declare-fun b!630208 () Bool)

(declare-fun c!71718 () Bool)

(assert (=> b!630208 (= c!71718 (= lt!291119 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!630208 (= e!360358 e!360357)))

(declare-fun b!630209 () Bool)

(assert (=> b!630209 (= e!360357 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!291021 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18243 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!89135 c!71720) b!630205))

(assert (= (and d!89135 (not c!71720)) b!630206))

(assert (= (and b!630206 c!71719) b!630207))

(assert (= (and b!630206 (not c!71719)) b!630208))

(assert (= (and b!630208 c!71718) b!630204))

(assert (= (and b!630208 (not c!71718)) b!630209))

(declare-fun m!605293 () Bool)

(assert (=> d!89135 m!605293))

(declare-fun m!605295 () Bool)

(assert (=> d!89135 m!605295))

(declare-fun m!605297 () Bool)

(assert (=> d!89135 m!605297))

(assert (=> d!89135 m!605083))

(assert (=> b!630209 m!605277))

(assert (=> b!630209 m!605277))

(assert (=> b!630209 m!605079))

(declare-fun m!605299 () Bool)

(assert (=> b!630209 m!605299))

(assert (=> b!629999 d!89135))

(declare-fun d!89137 () Bool)

(assert (=> d!89137 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56928 d!89137))

(declare-fun d!89139 () Bool)

(assert (=> d!89139 (= (array_inv!14017 a!2986) (bvsge (size!18607 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56928 d!89139))

(declare-fun d!89141 () Bool)

(assert (=> d!89141 (= (validKeyInArray!0 (select (arr!18243 a!2986) j!136)) (and (not (= (select (arr!18243 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18243 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!629998 d!89141))

(declare-fun b!630253 () Bool)

(declare-fun e!360388 () Bool)

(declare-fun e!360387 () Bool)

(assert (=> b!630253 (= e!360388 e!360387)))

(declare-fun c!71738 () Bool)

(assert (=> b!630253 (= c!71738 (validKeyInArray!0 (select (arr!18243 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!630254 () Bool)

(declare-fun e!360385 () Bool)

(declare-fun contains!3091 (List!12337 (_ BitVec 64)) Bool)

(assert (=> b!630254 (= e!360385 (contains!3091 Nil!12334 (select (arr!18243 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33308 () Bool)

(declare-fun call!33311 () Bool)

(assert (=> bm!33308 (= call!33311 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71738 (Cons!12333 (select (arr!18243 a!2986) #b00000000000000000000000000000000) Nil!12334) Nil!12334)))))

(declare-fun b!630256 () Bool)

(assert (=> b!630256 (= e!360387 call!33311)))

(declare-fun b!630257 () Bool)

(assert (=> b!630257 (= e!360387 call!33311)))

(declare-fun b!630255 () Bool)

(declare-fun e!360386 () Bool)

(assert (=> b!630255 (= e!360386 e!360388)))

(declare-fun res!407512 () Bool)

(assert (=> b!630255 (=> (not res!407512) (not e!360388))))

(assert (=> b!630255 (= res!407512 (not e!360385))))

(declare-fun res!407511 () Bool)

(assert (=> b!630255 (=> (not res!407511) (not e!360385))))

(assert (=> b!630255 (= res!407511 (validKeyInArray!0 (select (arr!18243 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!89143 () Bool)

(declare-fun res!407513 () Bool)

(assert (=> d!89143 (=> res!407513 e!360386)))

(assert (=> d!89143 (= res!407513 (bvsge #b00000000000000000000000000000000 (size!18607 a!2986)))))

(assert (=> d!89143 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12334) e!360386)))

(assert (= (and d!89143 (not res!407513)) b!630255))

(assert (= (and b!630255 res!407511) b!630254))

(assert (= (and b!630255 res!407512) b!630253))

(assert (= (and b!630253 c!71738) b!630256))

(assert (= (and b!630253 (not c!71738)) b!630257))

(assert (= (or b!630256 b!630257) bm!33308))

(declare-fun m!605335 () Bool)

(assert (=> b!630253 m!605335))

(assert (=> b!630253 m!605335))

(declare-fun m!605339 () Bool)

(assert (=> b!630253 m!605339))

(assert (=> b!630254 m!605335))

(assert (=> b!630254 m!605335))

(declare-fun m!605343 () Bool)

(assert (=> b!630254 m!605343))

(assert (=> bm!33308 m!605335))

(declare-fun m!605345 () Bool)

(assert (=> bm!33308 m!605345))

(assert (=> b!630255 m!605335))

(assert (=> b!630255 m!605335))

(assert (=> b!630255 m!605339))

(assert (=> b!630001 d!89143))

(declare-fun b!630258 () Bool)

(declare-fun e!360390 () SeekEntryResult!6690)

(assert (=> b!630258 (= e!360390 (MissingVacant!6690 vacantSpotIndex!68))))

(declare-fun b!630259 () Bool)

(declare-fun e!360389 () SeekEntryResult!6690)

(assert (=> b!630259 (= e!360389 Undefined!6690)))

(declare-fun b!630260 () Bool)

(declare-fun e!360391 () SeekEntryResult!6690)

(assert (=> b!630260 (= e!360389 e!360391)))

(declare-fun c!71740 () Bool)

(declare-fun lt!291140 () (_ BitVec 64))

(assert (=> b!630260 (= c!71740 (= lt!291140 (select (arr!18243 a!2986) j!136)))))

(declare-fun b!630261 () Bool)

(assert (=> b!630261 (= e!360391 (Found!6690 index!984))))

(declare-fun lt!291141 () SeekEntryResult!6690)

(declare-fun d!89155 () Bool)

(assert (=> d!89155 (and (or (is-Undefined!6690 lt!291141) (not (is-Found!6690 lt!291141)) (and (bvsge (index!29047 lt!291141) #b00000000000000000000000000000000) (bvslt (index!29047 lt!291141) (size!18607 a!2986)))) (or (is-Undefined!6690 lt!291141) (is-Found!6690 lt!291141) (not (is-MissingVacant!6690 lt!291141)) (not (= (index!29049 lt!291141) vacantSpotIndex!68)) (and (bvsge (index!29049 lt!291141) #b00000000000000000000000000000000) (bvslt (index!29049 lt!291141) (size!18607 a!2986)))) (or (is-Undefined!6690 lt!291141) (ite (is-Found!6690 lt!291141) (= (select (arr!18243 a!2986) (index!29047 lt!291141)) (select (arr!18243 a!2986) j!136)) (and (is-MissingVacant!6690 lt!291141) (= (index!29049 lt!291141) vacantSpotIndex!68) (= (select (arr!18243 a!2986) (index!29049 lt!291141)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89155 (= lt!291141 e!360389)))

(declare-fun c!71741 () Bool)

(assert (=> d!89155 (= c!71741 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89155 (= lt!291140 (select (arr!18243 a!2986) index!984))))

(assert (=> d!89155 (validMask!0 mask!3053)))

(assert (=> d!89155 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18243 a!2986) j!136) a!2986 mask!3053) lt!291141)))

(declare-fun b!630262 () Bool)

(declare-fun c!71739 () Bool)

(assert (=> b!630262 (= c!71739 (= lt!291140 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!630262 (= e!360391 e!360390)))

(declare-fun b!630263 () Bool)

(assert (=> b!630263 (= e!360390 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18243 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!89155 c!71741) b!630259))

(assert (= (and d!89155 (not c!71741)) b!630260))

(assert (= (and b!630260 c!71740) b!630261))

(assert (= (and b!630260 (not c!71740)) b!630262))

(assert (= (and b!630262 c!71739) b!630258))

(assert (= (and b!630262 (not c!71739)) b!630263))

(declare-fun m!605347 () Bool)

(assert (=> d!89155 m!605347))

(declare-fun m!605349 () Bool)

(assert (=> d!89155 m!605349))

(assert (=> d!89155 m!605111))

(assert (=> d!89155 m!605083))

(assert (=> b!630263 m!605099))

(assert (=> b!630263 m!605099))

(assert (=> b!630263 m!605079))

(declare-fun m!605351 () Bool)

(assert (=> b!630263 m!605351))

(assert (=> b!630006 d!89155))

(declare-fun d!89157 () Bool)

(declare-fun res!407524 () Bool)

(declare-fun e!360404 () Bool)

(assert (=> d!89157 (=> res!407524 e!360404)))

(assert (=> d!89157 (= res!407524 (= (select (arr!18243 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!89157 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!360404)))

(declare-fun b!630278 () Bool)

(declare-fun e!360405 () Bool)

(assert (=> b!630278 (= e!360404 e!360405)))

(declare-fun res!407525 () Bool)

(assert (=> b!630278 (=> (not res!407525) (not e!360405))))

(assert (=> b!630278 (= res!407525 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18607 a!2986)))))

(declare-fun b!630279 () Bool)

(assert (=> b!630279 (= e!360405 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89157 (not res!407524)) b!630278))

(assert (= (and b!630278 res!407525) b!630279))

(assert (=> d!89157 m!605335))

(declare-fun m!605353 () Bool)

(assert (=> b!630279 m!605353))

(assert (=> b!630003 d!89157))

(declare-fun b!630293 () Bool)

(declare-fun e!360417 () Bool)

(declare-fun e!360418 () Bool)

(assert (=> b!630293 (= e!360417 e!360418)))

(declare-fun c!71747 () Bool)

(assert (=> b!630293 (= c!71747 (validKeyInArray!0 (select (arr!18243 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!89159 () Bool)

(declare-fun res!407533 () Bool)

(assert (=> d!89159 (=> res!407533 e!360417)))

(assert (=> d!89159 (= res!407533 (bvsge #b00000000000000000000000000000000 (size!18607 a!2986)))))

(assert (=> d!89159 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!360417)))

(declare-fun bm!33314 () Bool)

(declare-fun call!33317 () Bool)

(assert (=> bm!33314 (= call!33317 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!630294 () Bool)

(declare-fun e!360416 () Bool)

(assert (=> b!630294 (= e!360418 e!360416)))

(declare-fun lt!291148 () (_ BitVec 64))

(assert (=> b!630294 (= lt!291148 (select (arr!18243 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!291150 () Unit!21124)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38022 (_ BitVec 64) (_ BitVec 32)) Unit!21124)

(assert (=> b!630294 (= lt!291150 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!291148 #b00000000000000000000000000000000))))

(assert (=> b!630294 (arrayContainsKey!0 a!2986 lt!291148 #b00000000000000000000000000000000)))

(declare-fun lt!291149 () Unit!21124)

(assert (=> b!630294 (= lt!291149 lt!291150)))

(declare-fun res!407534 () Bool)

(assert (=> b!630294 (= res!407534 (= (seekEntryOrOpen!0 (select (arr!18243 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6690 #b00000000000000000000000000000000)))))

(assert (=> b!630294 (=> (not res!407534) (not e!360416))))

(declare-fun b!630295 () Bool)

(assert (=> b!630295 (= e!360416 call!33317)))

(declare-fun b!630296 () Bool)

(assert (=> b!630296 (= e!360418 call!33317)))

(assert (= (and d!89159 (not res!407533)) b!630293))

(assert (= (and b!630293 c!71747) b!630294))

(assert (= (and b!630293 (not c!71747)) b!630296))

(assert (= (and b!630294 res!407534) b!630295))

(assert (= (or b!630295 b!630296) bm!33314))

(assert (=> b!630293 m!605335))

(assert (=> b!630293 m!605335))

(assert (=> b!630293 m!605339))

(declare-fun m!605363 () Bool)

(assert (=> bm!33314 m!605363))

(assert (=> b!630294 m!605335))

(declare-fun m!605365 () Bool)

(assert (=> b!630294 m!605365))

(declare-fun m!605367 () Bool)

(assert (=> b!630294 m!605367))

(assert (=> b!630294 m!605335))

(declare-fun m!605369 () Bool)

(assert (=> b!630294 m!605369))

(assert (=> b!630008 d!89159))

(declare-fun d!89163 () Bool)

(assert (=> d!89163 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!629997 d!89163))

(declare-fun lt!291173 () SeekEntryResult!6690)

(declare-fun b!630335 () Bool)

(declare-fun e!360440 () SeekEntryResult!6690)

(assert (=> b!630335 (= e!360440 (seekKeyOrZeroReturnVacant!0 (x!57812 lt!291173) (index!29048 lt!291173) (index!29048 lt!291173) k!1786 a!2986 mask!3053))))

(declare-fun b!630336 () Bool)

(declare-fun e!360442 () SeekEntryResult!6690)

(assert (=> b!630336 (= e!360442 (Found!6690 (index!29048 lt!291173)))))

(declare-fun b!630337 () Bool)

(assert (=> b!630337 (= e!360440 (MissingZero!6690 (index!29048 lt!291173)))))

(declare-fun b!630338 () Bool)

(declare-fun c!71765 () Bool)

(declare-fun lt!291174 () (_ BitVec 64))

(assert (=> b!630338 (= c!71765 (= lt!291174 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!630338 (= e!360442 e!360440)))

(declare-fun d!89165 () Bool)

(declare-fun lt!291172 () SeekEntryResult!6690)

(assert (=> d!89165 (and (or (is-Undefined!6690 lt!291172) (not (is-Found!6690 lt!291172)) (and (bvsge (index!29047 lt!291172) #b00000000000000000000000000000000) (bvslt (index!29047 lt!291172) (size!18607 a!2986)))) (or (is-Undefined!6690 lt!291172) (is-Found!6690 lt!291172) (not (is-MissingZero!6690 lt!291172)) (and (bvsge (index!29046 lt!291172) #b00000000000000000000000000000000) (bvslt (index!29046 lt!291172) (size!18607 a!2986)))) (or (is-Undefined!6690 lt!291172) (is-Found!6690 lt!291172) (is-MissingZero!6690 lt!291172) (not (is-MissingVacant!6690 lt!291172)) (and (bvsge (index!29049 lt!291172) #b00000000000000000000000000000000) (bvslt (index!29049 lt!291172) (size!18607 a!2986)))) (or (is-Undefined!6690 lt!291172) (ite (is-Found!6690 lt!291172) (= (select (arr!18243 a!2986) (index!29047 lt!291172)) k!1786) (ite (is-MissingZero!6690 lt!291172) (= (select (arr!18243 a!2986) (index!29046 lt!291172)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6690 lt!291172) (= (select (arr!18243 a!2986) (index!29049 lt!291172)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!360441 () SeekEntryResult!6690)

(assert (=> d!89165 (= lt!291172 e!360441)))

(declare-fun c!71767 () Bool)

(assert (=> d!89165 (= c!71767 (and (is-Intermediate!6690 lt!291173) (undefined!7502 lt!291173)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38022 (_ BitVec 32)) SeekEntryResult!6690)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89165 (= lt!291173 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!89165 (validMask!0 mask!3053)))

(assert (=> d!89165 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!291172)))

(declare-fun b!630339 () Bool)

(assert (=> b!630339 (= e!360441 Undefined!6690)))

(declare-fun b!630340 () Bool)

(assert (=> b!630340 (= e!360441 e!360442)))

(assert (=> b!630340 (= lt!291174 (select (arr!18243 a!2986) (index!29048 lt!291173)))))

(declare-fun c!71766 () Bool)

(assert (=> b!630340 (= c!71766 (= lt!291174 k!1786))))

(assert (= (and d!89165 c!71767) b!630339))

(assert (= (and d!89165 (not c!71767)) b!630340))

(assert (= (and b!630340 c!71766) b!630336))

(assert (= (and b!630340 (not c!71766)) b!630338))

(assert (= (and b!630338 c!71765) b!630337))

(assert (= (and b!630338 (not c!71765)) b!630335))

(declare-fun m!605385 () Bool)

(assert (=> b!630335 m!605385))

(declare-fun m!605387 () Bool)

(assert (=> d!89165 m!605387))

(declare-fun m!605389 () Bool)

(assert (=> d!89165 m!605389))

(declare-fun m!605391 () Bool)

(assert (=> d!89165 m!605391))

(declare-fun m!605393 () Bool)

(assert (=> d!89165 m!605393))

(assert (=> d!89165 m!605083))

(assert (=> d!89165 m!605391))

(declare-fun m!605395 () Bool)

(assert (=> d!89165 m!605395))

(declare-fun m!605397 () Bool)

(assert (=> b!630340 m!605397))

(assert (=> b!630002 d!89165))

(push 1)

(assert (not b!630253))

(assert (not d!89109))

(assert (not d!89135))

(assert (not d!89165))

(assert (not b!630279))

(assert (not b!630294))

(assert (not b!630255))

(assert (not d!89125))

(assert (not d!89121))

(assert (not d!89155))

(assert (not bm!33314))

(assert (not b!630195))

(assert (not b!630293))

(assert (not b!630209))

(assert (not b!630254))

(assert (not b!630335))

(assert (not b!630263))

(assert (not b!630143))

(assert (not d!89093))

(assert (not bm!33308))

(assert (not b!630185))

(check-sat)

(pop 1)

(push 1)

(check-sat)

