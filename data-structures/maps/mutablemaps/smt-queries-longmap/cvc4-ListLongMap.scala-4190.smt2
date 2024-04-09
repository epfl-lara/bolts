; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57130 () Bool)

(assert start!57130)

(declare-fun res!409074 () Bool)

(declare-fun e!361495 () Bool)

(assert (=> start!57130 (=> (not res!409074) (not e!361495))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57130 (= res!409074 (validMask!0 mask!3053))))

(assert (=> start!57130 e!361495))

(assert (=> start!57130 true))

(declare-datatypes ((array!38110 0))(
  ( (array!38111 (arr!18284 (Array (_ BitVec 32) (_ BitVec 64))) (size!18648 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38110)

(declare-fun array_inv!14058 (array!38110) Bool)

(assert (=> start!57130 (array_inv!14058 a!2986)))

(declare-fun b!632298 () Bool)

(declare-fun res!409073 () Bool)

(declare-fun e!361490 () Bool)

(assert (=> b!632298 (=> (not res!409073) (not e!361490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38110 (_ BitVec 32)) Bool)

(assert (=> b!632298 (= res!409073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!632299 () Bool)

(declare-fun res!409068 () Bool)

(assert (=> b!632299 (=> (not res!409068) (not e!361490))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!632299 (= res!409068 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18284 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!632300 () Bool)

(declare-datatypes ((Unit!21282 0))(
  ( (Unit!21283) )
))
(declare-fun e!361493 () Unit!21282)

(declare-fun Unit!21284 () Unit!21282)

(assert (=> b!632300 (= e!361493 Unit!21284)))

(declare-fun b!632301 () Bool)

(declare-fun res!409064 () Bool)

(assert (=> b!632301 (=> (not res!409064) (not e!361495))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!632301 (= res!409064 (validKeyInArray!0 (select (arr!18284 a!2986) j!136)))))

(declare-fun b!632302 () Bool)

(declare-fun res!409075 () Bool)

(assert (=> b!632302 (=> (not res!409075) (not e!361495))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!632302 (= res!409075 (and (= (size!18648 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18648 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18648 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!632303 () Bool)

(declare-fun res!409067 () Bool)

(assert (=> b!632303 (=> (not res!409067) (not e!361495))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!632303 (= res!409067 (validKeyInArray!0 k!1786))))

(declare-fun b!632304 () Bool)

(declare-fun res!409065 () Bool)

(assert (=> b!632304 (=> (not res!409065) (not e!361495))))

(declare-fun arrayContainsKey!0 (array!38110 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!632304 (= res!409065 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!632305 () Bool)

(declare-fun e!361489 () Bool)

(declare-fun e!361492 () Bool)

(assert (=> b!632305 (= e!361489 e!361492)))

(declare-fun res!409069 () Bool)

(assert (=> b!632305 (=> (not res!409069) (not e!361492))))

(declare-datatypes ((SeekEntryResult!6731 0))(
  ( (MissingZero!6731 (index!29216 (_ BitVec 32))) (Found!6731 (index!29217 (_ BitVec 32))) (Intermediate!6731 (undefined!7543 Bool) (index!29218 (_ BitVec 32)) (x!57975 (_ BitVec 32))) (Undefined!6731) (MissingVacant!6731 (index!29219 (_ BitVec 32))) )
))
(declare-fun lt!292291 () SeekEntryResult!6731)

(assert (=> b!632305 (= res!409069 (and (= lt!292291 (Found!6731 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18284 a!2986) index!984) (select (arr!18284 a!2986) j!136))) (not (= (select (arr!18284 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38110 (_ BitVec 32)) SeekEntryResult!6731)

(assert (=> b!632305 (= lt!292291 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18284 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632306 () Bool)

(declare-fun res!409072 () Bool)

(assert (=> b!632306 (=> (not res!409072) (not e!361490))))

(declare-datatypes ((List!12378 0))(
  ( (Nil!12375) (Cons!12374 (h!13419 (_ BitVec 64)) (t!18614 List!12378)) )
))
(declare-fun arrayNoDuplicates!0 (array!38110 (_ BitVec 32) List!12378) Bool)

(assert (=> b!632306 (= res!409072 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12375))))

(declare-fun b!632307 () Bool)

(declare-fun e!361488 () Bool)

(declare-fun lt!292286 () (_ BitVec 64))

(assert (=> b!632307 (= e!361488 (or (not (= (select (arr!18284 a!2986) j!136) lt!292286)) (bvslt index!984 (size!18648 a!2986))))))

(assert (=> b!632307 (= (select (store (arr!18284 a!2986) i!1108 k!1786) index!984) (select (arr!18284 a!2986) j!136))))

(declare-fun b!632308 () Bool)

(declare-fun e!361494 () Bool)

(declare-fun lt!292293 () SeekEntryResult!6731)

(assert (=> b!632308 (= e!361494 (= lt!292291 lt!292293))))

(declare-fun b!632309 () Bool)

(declare-fun Unit!21285 () Unit!21282)

(assert (=> b!632309 (= e!361493 Unit!21285)))

(assert (=> b!632309 false))

(declare-fun b!632310 () Bool)

(assert (=> b!632310 (= e!361495 e!361490)))

(declare-fun res!409070 () Bool)

(assert (=> b!632310 (=> (not res!409070) (not e!361490))))

(declare-fun lt!292288 () SeekEntryResult!6731)

(assert (=> b!632310 (= res!409070 (or (= lt!292288 (MissingZero!6731 i!1108)) (= lt!292288 (MissingVacant!6731 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38110 (_ BitVec 32)) SeekEntryResult!6731)

(assert (=> b!632310 (= lt!292288 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!632311 () Bool)

(assert (=> b!632311 (= e!361492 (not e!361488))))

(declare-fun res!409066 () Bool)

(assert (=> b!632311 (=> res!409066 e!361488)))

(declare-fun lt!292287 () SeekEntryResult!6731)

(assert (=> b!632311 (= res!409066 (not (= lt!292287 (Found!6731 index!984))))))

(declare-fun lt!292285 () Unit!21282)

(assert (=> b!632311 (= lt!292285 e!361493)))

(declare-fun c!71984 () Bool)

(assert (=> b!632311 (= c!71984 (= lt!292287 Undefined!6731))))

(declare-fun lt!292292 () array!38110)

(assert (=> b!632311 (= lt!292287 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292286 lt!292292 mask!3053))))

(assert (=> b!632311 e!361494))

(declare-fun res!409076 () Bool)

(assert (=> b!632311 (=> (not res!409076) (not e!361494))))

(declare-fun lt!292289 () (_ BitVec 32))

(assert (=> b!632311 (= res!409076 (= lt!292293 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292289 vacantSpotIndex!68 lt!292286 lt!292292 mask!3053)))))

(assert (=> b!632311 (= lt!292293 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292289 vacantSpotIndex!68 (select (arr!18284 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!632311 (= lt!292286 (select (store (arr!18284 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292290 () Unit!21282)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38110 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21282)

(assert (=> b!632311 (= lt!292290 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292289 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!632311 (= lt!292289 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!632312 () Bool)

(assert (=> b!632312 (= e!361490 e!361489)))

(declare-fun res!409071 () Bool)

(assert (=> b!632312 (=> (not res!409071) (not e!361489))))

(assert (=> b!632312 (= res!409071 (= (select (store (arr!18284 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!632312 (= lt!292292 (array!38111 (store (arr!18284 a!2986) i!1108 k!1786) (size!18648 a!2986)))))

(assert (= (and start!57130 res!409074) b!632302))

(assert (= (and b!632302 res!409075) b!632301))

(assert (= (and b!632301 res!409064) b!632303))

(assert (= (and b!632303 res!409067) b!632304))

(assert (= (and b!632304 res!409065) b!632310))

(assert (= (and b!632310 res!409070) b!632298))

(assert (= (and b!632298 res!409073) b!632306))

(assert (= (and b!632306 res!409072) b!632299))

(assert (= (and b!632299 res!409068) b!632312))

(assert (= (and b!632312 res!409071) b!632305))

(assert (= (and b!632305 res!409069) b!632311))

(assert (= (and b!632311 res!409076) b!632308))

(assert (= (and b!632311 c!71984) b!632309))

(assert (= (and b!632311 (not c!71984)) b!632300))

(assert (= (and b!632311 (not res!409066)) b!632307))

(declare-fun m!607179 () Bool)

(assert (=> start!57130 m!607179))

(declare-fun m!607181 () Bool)

(assert (=> start!57130 m!607181))

(declare-fun m!607183 () Bool)

(assert (=> b!632301 m!607183))

(assert (=> b!632301 m!607183))

(declare-fun m!607185 () Bool)

(assert (=> b!632301 m!607185))

(declare-fun m!607187 () Bool)

(assert (=> b!632305 m!607187))

(assert (=> b!632305 m!607183))

(assert (=> b!632305 m!607183))

(declare-fun m!607189 () Bool)

(assert (=> b!632305 m!607189))

(declare-fun m!607191 () Bool)

(assert (=> b!632311 m!607191))

(assert (=> b!632311 m!607183))

(declare-fun m!607193 () Bool)

(assert (=> b!632311 m!607193))

(declare-fun m!607195 () Bool)

(assert (=> b!632311 m!607195))

(declare-fun m!607197 () Bool)

(assert (=> b!632311 m!607197))

(assert (=> b!632311 m!607183))

(declare-fun m!607199 () Bool)

(assert (=> b!632311 m!607199))

(declare-fun m!607201 () Bool)

(assert (=> b!632311 m!607201))

(declare-fun m!607203 () Bool)

(assert (=> b!632311 m!607203))

(declare-fun m!607205 () Bool)

(assert (=> b!632303 m!607205))

(declare-fun m!607207 () Bool)

(assert (=> b!632304 m!607207))

(assert (=> b!632312 m!607193))

(declare-fun m!607209 () Bool)

(assert (=> b!632312 m!607209))

(declare-fun m!607211 () Bool)

(assert (=> b!632306 m!607211))

(declare-fun m!607213 () Bool)

(assert (=> b!632310 m!607213))

(declare-fun m!607215 () Bool)

(assert (=> b!632299 m!607215))

(declare-fun m!607217 () Bool)

(assert (=> b!632298 m!607217))

(assert (=> b!632307 m!607183))

(assert (=> b!632307 m!607193))

(declare-fun m!607219 () Bool)

(assert (=> b!632307 m!607219))

(push 1)

(assert (not start!57130))

(assert (not b!632303))

(assert (not b!632298))

(assert (not b!632311))

(assert (not b!632310))

(assert (not b!632304))

(assert (not b!632306))

(assert (not b!632305))

(assert (not b!632301))

(check-sat)

(pop 1)

(push 1)

(check-sat)

