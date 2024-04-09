; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56232 () Bool)

(assert start!56232)

(declare-fun b!623324 () Bool)

(declare-fun res!401836 () Bool)

(declare-fun e!357534 () Bool)

(assert (=> b!623324 (=> (not res!401836) (not e!357534))))

(declare-datatypes ((array!37665 0))(
  ( (array!37666 (arr!18075 (Array (_ BitVec 32) (_ BitVec 64))) (size!18439 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37665)

(declare-datatypes ((List!12169 0))(
  ( (Nil!12166) (Cons!12165 (h!13210 (_ BitVec 64)) (t!18405 List!12169)) )
))
(declare-fun arrayNoDuplicates!0 (array!37665 (_ BitVec 32) List!12169) Bool)

(assert (=> b!623324 (= res!401836 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12166))))

(declare-fun b!623325 () Bool)

(declare-fun res!401838 () Bool)

(assert (=> b!623325 (=> (not res!401838) (not e!357534))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6522 0))(
  ( (MissingZero!6522 (index!28371 (_ BitVec 32))) (Found!6522 (index!28372 (_ BitVec 32))) (Intermediate!6522 (undefined!7334 Bool) (index!28373 (_ BitVec 32)) (x!57163 (_ BitVec 32))) (Undefined!6522) (MissingVacant!6522 (index!28374 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37665 (_ BitVec 32)) SeekEntryResult!6522)

(assert (=> b!623325 (= res!401838 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18075 a!2986) j!136) a!2986 mask!3053) (Found!6522 j!136)))))

(declare-fun b!623326 () Bool)

(declare-fun res!401841 () Bool)

(declare-fun e!357535 () Bool)

(assert (=> b!623326 (=> (not res!401841) (not e!357535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623326 (= res!401841 (validKeyInArray!0 (select (arr!18075 a!2986) j!136)))))

(declare-fun b!623327 () Bool)

(assert (=> b!623327 (= e!357535 e!357534)))

(declare-fun res!401834 () Bool)

(assert (=> b!623327 (=> (not res!401834) (not e!357534))))

(declare-fun lt!289239 () SeekEntryResult!6522)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!623327 (= res!401834 (or (= lt!289239 (MissingZero!6522 i!1108)) (= lt!289239 (MissingVacant!6522 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37665 (_ BitVec 32)) SeekEntryResult!6522)

(assert (=> b!623327 (= lt!289239 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!623328 () Bool)

(assert (=> b!623328 (= e!357534 (and (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!18075 a!2986) index!984) (select (arr!18075 a!2986) j!136)) (not (= index!984 j!136))))))

(declare-fun b!623329 () Bool)

(declare-fun res!401839 () Bool)

(assert (=> b!623329 (=> (not res!401839) (not e!357535))))

(assert (=> b!623329 (= res!401839 (and (= (size!18439 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18439 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18439 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!401837 () Bool)

(assert (=> start!56232 (=> (not res!401837) (not e!357535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56232 (= res!401837 (validMask!0 mask!3053))))

(assert (=> start!56232 e!357535))

(assert (=> start!56232 true))

(declare-fun array_inv!13849 (array!37665) Bool)

(assert (=> start!56232 (array_inv!13849 a!2986)))

(declare-fun b!623330 () Bool)

(declare-fun res!401842 () Bool)

(assert (=> b!623330 (=> (not res!401842) (not e!357535))))

(assert (=> b!623330 (= res!401842 (validKeyInArray!0 k!1786))))

(declare-fun b!623331 () Bool)

(declare-fun res!401840 () Bool)

(assert (=> b!623331 (=> (not res!401840) (not e!357534))))

(assert (=> b!623331 (= res!401840 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18075 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18075 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623332 () Bool)

(declare-fun res!401843 () Bool)

(assert (=> b!623332 (=> (not res!401843) (not e!357535))))

(declare-fun arrayContainsKey!0 (array!37665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623332 (= res!401843 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623333 () Bool)

(declare-fun res!401835 () Bool)

(assert (=> b!623333 (=> (not res!401835) (not e!357534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37665 (_ BitVec 32)) Bool)

(assert (=> b!623333 (= res!401835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56232 res!401837) b!623329))

(assert (= (and b!623329 res!401839) b!623326))

(assert (= (and b!623326 res!401841) b!623330))

(assert (= (and b!623330 res!401842) b!623332))

(assert (= (and b!623332 res!401843) b!623327))

(assert (= (and b!623327 res!401834) b!623333))

(assert (= (and b!623333 res!401835) b!623324))

(assert (= (and b!623324 res!401836) b!623331))

(assert (= (and b!623331 res!401840) b!623325))

(assert (= (and b!623325 res!401838) b!623328))

(declare-fun m!599235 () Bool)

(assert (=> b!623332 m!599235))

(declare-fun m!599237 () Bool)

(assert (=> b!623328 m!599237))

(declare-fun m!599239 () Bool)

(assert (=> b!623328 m!599239))

(assert (=> b!623326 m!599239))

(assert (=> b!623326 m!599239))

(declare-fun m!599241 () Bool)

(assert (=> b!623326 m!599241))

(declare-fun m!599243 () Bool)

(assert (=> b!623324 m!599243))

(assert (=> b!623325 m!599239))

(assert (=> b!623325 m!599239))

(declare-fun m!599245 () Bool)

(assert (=> b!623325 m!599245))

(declare-fun m!599247 () Bool)

(assert (=> b!623330 m!599247))

(declare-fun m!599249 () Bool)

(assert (=> b!623331 m!599249))

(declare-fun m!599251 () Bool)

(assert (=> b!623331 m!599251))

(declare-fun m!599253 () Bool)

(assert (=> b!623331 m!599253))

(declare-fun m!599255 () Bool)

(assert (=> start!56232 m!599255))

(declare-fun m!599257 () Bool)

(assert (=> start!56232 m!599257))

(declare-fun m!599259 () Bool)

(assert (=> b!623333 m!599259))

(declare-fun m!599261 () Bool)

(assert (=> b!623327 m!599261))

(push 1)

(assert (not start!56232))

(assert (not b!623333))

(assert (not b!623327))

(assert (not b!623332))

(assert (not b!623330))

(assert (not b!623325))

(assert (not b!623324))

(assert (not b!623326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!88553 () Bool)

(declare-fun res!401917 () Bool)

(declare-fun e!357570 () Bool)

(assert (=> d!88553 (=> res!401917 e!357570)))

(assert (=> d!88553 (= res!401917 (= (select (arr!18075 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!88553 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!357570)))

(declare-fun b!623413 () Bool)

(declare-fun e!357571 () Bool)

(assert (=> b!623413 (= e!357570 e!357571)))

(declare-fun res!401918 () Bool)

(assert (=> b!623413 (=> (not res!401918) (not e!357571))))

(assert (=> b!623413 (= res!401918 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18439 a!2986)))))

(declare-fun b!623414 () Bool)

(assert (=> b!623414 (= e!357571 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88553 (not res!401917)) b!623413))

(assert (= (and b!623413 res!401918) b!623414))

(declare-fun m!599327 () Bool)

(assert (=> d!88553 m!599327))

(declare-fun m!599329 () Bool)

(assert (=> b!623414 m!599329))

(assert (=> b!623332 d!88553))

(declare-fun b!623445 () Bool)

(declare-fun e!357589 () SeekEntryResult!6522)

(assert (=> b!623445 (= e!357589 Undefined!6522)))

(declare-fun b!623446 () Bool)

(declare-fun e!357587 () SeekEntryResult!6522)

(assert (=> b!623446 (= e!357589 e!357587)))

(declare-fun lt!289262 () (_ BitVec 64))

(declare-fun lt!289261 () SeekEntryResult!6522)

(assert (=> b!623446 (= lt!289262 (select (arr!18075 a!2986) (index!28373 lt!289261)))))

(declare-fun c!71132 () Bool)

(assert (=> b!623446 (= c!71132 (= lt!289262 k!1786))))

(declare-fun b!623447 () Bool)

(declare-fun e!357588 () SeekEntryResult!6522)

(assert (=> b!623447 (= e!357588 (MissingZero!6522 (index!28373 lt!289261)))))

(declare-fun b!623448 () Bool)

(assert (=> b!623448 (= e!357588 (seekKeyOrZeroReturnVacant!0 (x!57163 lt!289261) (index!28373 lt!289261) (index!28373 lt!289261) k!1786 a!2986 mask!3053))))

(declare-fun d!88555 () Bool)

(declare-fun lt!289263 () SeekEntryResult!6522)

(assert (=> d!88555 (and (or (is-Undefined!6522 lt!289263) (not (is-Found!6522 lt!289263)) (and (bvsge (index!28372 lt!289263) #b00000000000000000000000000000000) (bvslt (index!28372 lt!289263) (size!18439 a!2986)))) (or (is-Undefined!6522 lt!289263) (is-Found!6522 lt!289263) (not (is-MissingZero!6522 lt!289263)) (and (bvsge (index!28371 lt!289263) #b00000000000000000000000000000000) (bvslt (index!28371 lt!289263) (size!18439 a!2986)))) (or (is-Undefined!6522 lt!289263) (is-Found!6522 lt!289263) (is-MissingZero!6522 lt!289263) (not (is-MissingVacant!6522 lt!289263)) (and (bvsge (index!28374 lt!289263) #b00000000000000000000000000000000) (bvslt (index!28374 lt!289263) (size!18439 a!2986)))) (or (is-Undefined!6522 lt!289263) (ite (is-Found!6522 lt!289263) (= (select (arr!18075 a!2986) (index!28372 lt!289263)) k!1786) (ite (is-MissingZero!6522 lt!289263) (= (select (arr!18075 a!2986) (index!28371 lt!289263)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6522 lt!289263) (= (select (arr!18075 a!2986) (index!28374 lt!289263)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!88555 (= lt!289263 e!357589)))

(declare-fun c!71131 () Bool)

(assert (=> d!88555 (= c!71131 (and (is-Intermediate!6522 lt!289261) (undefined!7334 lt!289261)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37665 (_ BitVec 32)) SeekEntryResult!6522)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88555 (= lt!289261 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!88555 (validMask!0 mask!3053)))

(assert (=> d!88555 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!289263)))

(declare-fun b!623449 () Bool)

(assert (=> b!623449 (= e!357587 (Found!6522 (index!28373 lt!289261)))))

(declare-fun b!623450 () Bool)

(declare-fun c!71130 () Bool)

(assert (=> b!623450 (= c!71130 (= lt!289262 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!623450 (= e!357587 e!357588)))

(assert (= (and d!88555 c!71131) b!623445))

(assert (= (and d!88555 (not c!71131)) b!623446))

(assert (= (and b!623446 c!71132) b!623449))

(assert (= (and b!623446 (not c!71132)) b!623450))

(assert (= (and b!623450 c!71130) b!623447))

(assert (= (and b!623450 (not c!71130)) b!623448))

(declare-fun m!599345 () Bool)

(assert (=> b!623446 m!599345))

(declare-fun m!599347 () Bool)

(assert (=> b!623448 m!599347))

(declare-fun m!599349 () Bool)

(assert (=> d!88555 m!599349))

(declare-fun m!599351 () Bool)

(assert (=> d!88555 m!599351))

(assert (=> d!88555 m!599255))

(declare-fun m!599353 () Bool)

(assert (=> d!88555 m!599353))

(assert (=> d!88555 m!599353))

(declare-fun m!599355 () Bool)

(assert (=> d!88555 m!599355))

(declare-fun m!599357 () Bool)

(assert (=> d!88555 m!599357))

(assert (=> b!623327 d!88555))

(declare-fun d!88565 () Bool)

(assert (=> d!88565 (= (validKeyInArray!0 (select (arr!18075 a!2986) j!136)) (and (not (= (select (arr!18075 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18075 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!623326 d!88565))

(declare-fun d!88567 () Bool)

(assert (=> d!88567 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!623330 d!88567))

(declare-fun b!623499 () Bool)

(declare-fun c!71155 () Bool)

(declare-fun lt!289281 () (_ BitVec 64))

(assert (=> b!623499 (= c!71155 (= lt!289281 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!357618 () SeekEntryResult!6522)

(declare-fun e!357619 () SeekEntryResult!6522)

(assert (=> b!623499 (= e!357618 e!357619)))

(declare-fun b!623500 () Bool)

(declare-fun e!357617 () SeekEntryResult!6522)

(assert (=> b!623500 (= e!357617 e!357618)))

(declare-fun c!71154 () Bool)

(assert (=> b!623500 (= c!71154 (= lt!289281 (select (arr!18075 a!2986) j!136)))))

(declare-fun b!623501 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!623501 (= e!357619 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18075 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!623503 () Bool)

(assert (=> b!623503 (= e!357619 (MissingVacant!6522 vacantSpotIndex!68))))

(declare-fun b!623504 () Bool)

(assert (=> b!623504 (= e!357617 Undefined!6522)))

(declare-fun b!623502 () Bool)

(assert (=> b!623502 (= e!357618 (Found!6522 index!984))))

(declare-fun d!88569 () Bool)

(declare-fun lt!289282 () SeekEntryResult!6522)

(assert (=> d!88569 (and (or (is-Undefined!6522 lt!289282) (not (is-Found!6522 lt!289282)) (and (bvsge (index!28372 lt!289282) #b00000000000000000000000000000000) (bvslt (index!28372 lt!289282) (size!18439 a!2986)))) (or (is-Undefined!6522 lt!289282) (is-Found!6522 lt!289282) (not (is-MissingVacant!6522 lt!289282)) (not (= (index!28374 lt!289282) vacantSpotIndex!68)) (and (bvsge (index!28374 lt!289282) #b00000000000000000000000000000000) (bvslt (index!28374 lt!289282) (size!18439 a!2986)))) (or (is-Undefined!6522 lt!289282) (ite (is-Found!6522 lt!289282) (= (select (arr!18075 a!2986) (index!28372 lt!289282)) (select (arr!18075 a!2986) j!136)) (and (is-MissingVacant!6522 lt!289282) (= (index!28374 lt!289282) vacantSpotIndex!68) (= (select (arr!18075 a!2986) (index!28374 lt!289282)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88569 (= lt!289282 e!357617)))

(declare-fun c!71156 () Bool)

(assert (=> d!88569 (= c!71156 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88569 (= lt!289281 (select (arr!18075 a!2986) index!984))))

(assert (=> d!88569 (validMask!0 mask!3053)))

(assert (=> d!88569 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18075 a!2986) j!136) a!2986 mask!3053) lt!289282)))

(assert (= (and d!88569 c!71156) b!623504))

(assert (= (and d!88569 (not c!71156)) b!623500))

(assert (= (and b!623500 c!71154) b!623502))

(assert (= (and b!623500 (not c!71154)) b!623499))

(assert (= (and b!623499 c!71155) b!623503))

(assert (= (and b!623499 (not c!71155)) b!623501))

(declare-fun m!599375 () Bool)

(assert (=> b!623501 m!599375))

(assert (=> b!623501 m!599375))

(assert (=> b!623501 m!599239))

(declare-fun m!599377 () Bool)

(assert (=> b!623501 m!599377))

(declare-fun m!599379 () Bool)

(assert (=> d!88569 m!599379))

(declare-fun m!599381 () Bool)

(assert (=> d!88569 m!599381))

(assert (=> d!88569 m!599237))

(assert (=> d!88569 m!599255))

(assert (=> b!623325 d!88569))

(declare-fun d!88577 () Bool)

(assert (=> d!88577 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56232 d!88577))

