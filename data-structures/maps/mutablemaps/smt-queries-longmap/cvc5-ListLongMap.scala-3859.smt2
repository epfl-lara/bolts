; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53056 () Bool)

(assert start!53056)

(declare-fun res!365473 () Bool)

(declare-fun e!332036 () Bool)

(assert (=> start!53056 (=> (not res!365473) (not e!332036))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53056 (= res!365473 (validMask!0 mask!3053))))

(assert (=> start!53056 e!332036))

(assert (=> start!53056 true))

(declare-datatypes ((array!36028 0))(
  ( (array!36029 (arr!17289 (Array (_ BitVec 32) (_ BitVec 64))) (size!17653 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36028)

(declare-fun array_inv!13063 (array!36028) Bool)

(assert (=> start!53056 (array_inv!13063 a!2986)))

(declare-fun b!577289 () Bool)

(declare-fun res!365476 () Bool)

(assert (=> b!577289 (=> (not res!365476) (not e!332036))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577289 (= res!365476 (and (= (size!17653 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17653 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17653 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577290 () Bool)

(declare-fun res!365474 () Bool)

(declare-fun e!332038 () Bool)

(assert (=> b!577290 (=> (not res!365474) (not e!332038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36028 (_ BitVec 32)) Bool)

(assert (=> b!577290 (= res!365474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!577291 () Bool)

(declare-fun res!365472 () Bool)

(assert (=> b!577291 (=> (not res!365472) (not e!332036))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577291 (= res!365472 (validKeyInArray!0 (select (arr!17289 a!2986) j!136)))))

(declare-fun b!577292 () Bool)

(declare-fun res!365475 () Bool)

(assert (=> b!577292 (=> (not res!365475) (not e!332036))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577292 (= res!365475 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577293 () Bool)

(assert (=> b!577293 (= e!332038 (and (bvsle #b00000000000000000000000000000000 (size!17653 a!2986)) (bvsge (size!17653 a!2986) #b01111111111111111111111111111111)))))

(declare-fun b!577294 () Bool)

(assert (=> b!577294 (= e!332036 e!332038)))

(declare-fun res!365471 () Bool)

(assert (=> b!577294 (=> (not res!365471) (not e!332038))))

(declare-datatypes ((SeekEntryResult!5736 0))(
  ( (MissingZero!5736 (index!25171 (_ BitVec 32))) (Found!5736 (index!25172 (_ BitVec 32))) (Intermediate!5736 (undefined!6548 Bool) (index!25173 (_ BitVec 32)) (x!54112 (_ BitVec 32))) (Undefined!5736) (MissingVacant!5736 (index!25174 (_ BitVec 32))) )
))
(declare-fun lt!263933 () SeekEntryResult!5736)

(assert (=> b!577294 (= res!365471 (or (= lt!263933 (MissingZero!5736 i!1108)) (= lt!263933 (MissingVacant!5736 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36028 (_ BitVec 32)) SeekEntryResult!5736)

(assert (=> b!577294 (= lt!263933 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!577295 () Bool)

(declare-fun res!365477 () Bool)

(assert (=> b!577295 (=> (not res!365477) (not e!332036))))

(assert (=> b!577295 (= res!365477 (validKeyInArray!0 k!1786))))

(assert (= (and start!53056 res!365473) b!577289))

(assert (= (and b!577289 res!365476) b!577291))

(assert (= (and b!577291 res!365472) b!577295))

(assert (= (and b!577295 res!365477) b!577292))

(assert (= (and b!577292 res!365475) b!577294))

(assert (= (and b!577294 res!365471) b!577290))

(assert (= (and b!577290 res!365474) b!577293))

(declare-fun m!556201 () Bool)

(assert (=> b!577291 m!556201))

(assert (=> b!577291 m!556201))

(declare-fun m!556203 () Bool)

(assert (=> b!577291 m!556203))

(declare-fun m!556205 () Bool)

(assert (=> b!577295 m!556205))

(declare-fun m!556207 () Bool)

(assert (=> start!53056 m!556207))

(declare-fun m!556209 () Bool)

(assert (=> start!53056 m!556209))

(declare-fun m!556211 () Bool)

(assert (=> b!577292 m!556211))

(declare-fun m!556213 () Bool)

(assert (=> b!577294 m!556213))

(declare-fun m!556215 () Bool)

(assert (=> b!577290 m!556215))

(push 1)

(assert (not b!577292))

(assert (not b!577290))

(assert (not b!577291))

(assert (not b!577294))

(assert (not b!577295))

(assert (not start!53056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!85439 () Bool)

(declare-fun res!365530 () Bool)

(declare-fun e!332070 () Bool)

(assert (=> d!85439 (=> res!365530 e!332070)))

(assert (=> d!85439 (= res!365530 (bvsge #b00000000000000000000000000000000 (size!17653 a!2986)))))

(assert (=> d!85439 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!332070)))

(declare-fun b!577352 () Bool)

(declare-fun e!332071 () Bool)

(declare-fun e!332069 () Bool)

(assert (=> b!577352 (= e!332071 e!332069)))

(declare-fun lt!263948 () (_ BitVec 64))

(assert (=> b!577352 (= lt!263948 (select (arr!17289 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!18120 0))(
  ( (Unit!18121) )
))
(declare-fun lt!263947 () Unit!18120)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36028 (_ BitVec 64) (_ BitVec 32)) Unit!18120)

(assert (=> b!577352 (= lt!263947 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!263948 #b00000000000000000000000000000000))))

(assert (=> b!577352 (arrayContainsKey!0 a!2986 lt!263948 #b00000000000000000000000000000000)))

(declare-fun lt!263946 () Unit!18120)

(assert (=> b!577352 (= lt!263946 lt!263947)))

(declare-fun res!365531 () Bool)

(assert (=> b!577352 (= res!365531 (= (seekEntryOrOpen!0 (select (arr!17289 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!5736 #b00000000000000000000000000000000)))))

(assert (=> b!577352 (=> (not res!365531) (not e!332069))))

(declare-fun b!577353 () Bool)

(assert (=> b!577353 (= e!332070 e!332071)))

(declare-fun c!66278 () Bool)

(assert (=> b!577353 (= c!66278 (validKeyInArray!0 (select (arr!17289 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!577354 () Bool)

(declare-fun call!32750 () Bool)

(assert (=> b!577354 (= e!332071 call!32750)))

(declare-fun bm!32747 () Bool)

(assert (=> bm!32747 (= call!32750 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!577355 () Bool)

(assert (=> b!577355 (= e!332069 call!32750)))

(assert (= (and d!85439 (not res!365530)) b!577353))

(assert (= (and b!577353 c!66278) b!577352))

(assert (= (and b!577353 (not c!66278)) b!577354))

(assert (= (and b!577352 res!365531) b!577355))

(assert (= (or b!577355 b!577354) bm!32747))

(declare-fun m!556253 () Bool)

(assert (=> b!577352 m!556253))

(declare-fun m!556255 () Bool)

(assert (=> b!577352 m!556255))

(declare-fun m!556257 () Bool)

(assert (=> b!577352 m!556257))

(assert (=> b!577352 m!556253))

(declare-fun m!556259 () Bool)

(assert (=> b!577352 m!556259))

(assert (=> b!577353 m!556253))

(assert (=> b!577353 m!556253))

(declare-fun m!556261 () Bool)

(assert (=> b!577353 m!556261))

(declare-fun m!556263 () Bool)

(assert (=> bm!32747 m!556263))

(assert (=> b!577290 d!85439))

(declare-fun d!85447 () Bool)

(assert (=> d!85447 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!577295 d!85447))

(declare-fun b!577408 () Bool)

(declare-fun e!332100 () SeekEntryResult!5736)

(declare-fun e!332101 () SeekEntryResult!5736)

(assert (=> b!577408 (= e!332100 e!332101)))

(declare-fun lt!263975 () (_ BitVec 64))

(declare-fun lt!263973 () SeekEntryResult!5736)

(assert (=> b!577408 (= lt!263975 (select (arr!17289 a!2986) (index!25173 lt!263973)))))

(declare-fun c!66304 () Bool)

(assert (=> b!577408 (= c!66304 (= lt!263975 k!1786))))

(declare-fun e!332102 () SeekEntryResult!5736)

(declare-fun b!577409 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36028 (_ BitVec 32)) SeekEntryResult!5736)

(assert (=> b!577409 (= e!332102 (seekKeyOrZeroReturnVacant!0 (x!54112 lt!263973) (index!25173 lt!263973) (index!25173 lt!263973) k!1786 a!2986 mask!3053))))

(declare-fun b!577410 () Bool)

(declare-fun c!66305 () Bool)

(assert (=> b!577410 (= c!66305 (= lt!263975 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!577410 (= e!332101 e!332102)))

(declare-fun b!577411 () Bool)

(assert (=> b!577411 (= e!332100 Undefined!5736)))

(declare-fun b!577412 () Bool)

(assert (=> b!577412 (= e!332101 (Found!5736 (index!25173 lt!263973)))))

(declare-fun b!577413 () Bool)

(assert (=> b!577413 (= e!332102 (MissingZero!5736 (index!25173 lt!263973)))))

(declare-fun d!85449 () Bool)

(declare-fun lt!263974 () SeekEntryResult!5736)

(assert (=> d!85449 (and (or (is-Undefined!5736 lt!263974) (not (is-Found!5736 lt!263974)) (and (bvsge (index!25172 lt!263974) #b00000000000000000000000000000000) (bvslt (index!25172 lt!263974) (size!17653 a!2986)))) (or (is-Undefined!5736 lt!263974) (is-Found!5736 lt!263974) (not (is-MissingZero!5736 lt!263974)) (and (bvsge (index!25171 lt!263974) #b00000000000000000000000000000000) (bvslt (index!25171 lt!263974) (size!17653 a!2986)))) (or (is-Undefined!5736 lt!263974) (is-Found!5736 lt!263974) (is-MissingZero!5736 lt!263974) (not (is-MissingVacant!5736 lt!263974)) (and (bvsge (index!25174 lt!263974) #b00000000000000000000000000000000) (bvslt (index!25174 lt!263974) (size!17653 a!2986)))) (or (is-Undefined!5736 lt!263974) (ite (is-Found!5736 lt!263974) (= (select (arr!17289 a!2986) (index!25172 lt!263974)) k!1786) (ite (is-MissingZero!5736 lt!263974) (= (select (arr!17289 a!2986) (index!25171 lt!263974)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5736 lt!263974) (= (select (arr!17289 a!2986) (index!25174 lt!263974)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85449 (= lt!263974 e!332100)))

(declare-fun c!66303 () Bool)

(assert (=> d!85449 (= c!66303 (and (is-Intermediate!5736 lt!263973) (undefined!6548 lt!263973)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36028 (_ BitVec 32)) SeekEntryResult!5736)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85449 (= lt!263973 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!85449 (validMask!0 mask!3053)))

(assert (=> d!85449 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!263974)))

(assert (= (and d!85449 c!66303) b!577411))

(assert (= (and d!85449 (not c!66303)) b!577408))

(assert (= (and b!577408 c!66304) b!577412))

(assert (= (and b!577408 (not c!66304)) b!577410))

(assert (= (and b!577410 c!66305) b!577413))

(assert (= (and b!577410 (not c!66305)) b!577409))

(declare-fun m!556293 () Bool)

(assert (=> b!577408 m!556293))

(declare-fun m!556295 () Bool)

(assert (=> b!577409 m!556295))

(declare-fun m!556297 () Bool)

(assert (=> d!85449 m!556297))

(declare-fun m!556299 () Bool)

(assert (=> d!85449 m!556299))

(assert (=> d!85449 m!556297))

(declare-fun m!556301 () Bool)

(assert (=> d!85449 m!556301))

(declare-fun m!556303 () Bool)

(assert (=> d!85449 m!556303))

(assert (=> d!85449 m!556207))

(declare-fun m!556305 () Bool)

(assert (=> d!85449 m!556305))

(assert (=> b!577294 d!85449))

(declare-fun d!85457 () Bool)

(assert (=> d!85457 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!53056 d!85457))

(declare-fun d!85465 () Bool)

