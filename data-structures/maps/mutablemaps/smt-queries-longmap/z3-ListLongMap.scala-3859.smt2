; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53058 () Bool)

(assert start!53058)

(declare-fun b!577310 () Bool)

(declare-fun e!332047 () Bool)

(declare-fun e!332045 () Bool)

(assert (=> b!577310 (= e!332047 e!332045)))

(declare-fun res!365492 () Bool)

(assert (=> b!577310 (=> (not res!365492) (not e!332045))))

(declare-datatypes ((SeekEntryResult!5737 0))(
  ( (MissingZero!5737 (index!25175 (_ BitVec 32))) (Found!5737 (index!25176 (_ BitVec 32))) (Intermediate!5737 (undefined!6549 Bool) (index!25177 (_ BitVec 32)) (x!54113 (_ BitVec 32))) (Undefined!5737) (MissingVacant!5737 (index!25178 (_ BitVec 32))) )
))
(declare-fun lt!263936 () SeekEntryResult!5737)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577310 (= res!365492 (or (= lt!263936 (MissingZero!5737 i!1108)) (= lt!263936 (MissingVacant!5737 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!36030 0))(
  ( (array!36031 (arr!17290 (Array (_ BitVec 32) (_ BitVec 64))) (size!17654 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36030)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36030 (_ BitVec 32)) SeekEntryResult!5737)

(assert (=> b!577310 (= lt!263936 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!577311 () Bool)

(declare-fun res!365494 () Bool)

(assert (=> b!577311 (=> (not res!365494) (not e!332047))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!577311 (= res!365494 (and (= (size!17654 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17654 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17654 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577312 () Bool)

(declare-fun res!365498 () Bool)

(assert (=> b!577312 (=> (not res!365498) (not e!332047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577312 (= res!365498 (validKeyInArray!0 k0!1786))))

(declare-fun b!577313 () Bool)

(declare-fun res!365495 () Bool)

(assert (=> b!577313 (=> (not res!365495) (not e!332047))))

(assert (=> b!577313 (= res!365495 (validKeyInArray!0 (select (arr!17290 a!2986) j!136)))))

(declare-fun res!365497 () Bool)

(assert (=> start!53058 (=> (not res!365497) (not e!332047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53058 (= res!365497 (validMask!0 mask!3053))))

(assert (=> start!53058 e!332047))

(assert (=> start!53058 true))

(declare-fun array_inv!13064 (array!36030) Bool)

(assert (=> start!53058 (array_inv!13064 a!2986)))

(declare-fun b!577314 () Bool)

(declare-fun res!365496 () Bool)

(assert (=> b!577314 (=> (not res!365496) (not e!332045))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36030 (_ BitVec 32)) Bool)

(assert (=> b!577314 (= res!365496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!577315 () Bool)

(assert (=> b!577315 (= e!332045 (and (bvsle #b00000000000000000000000000000000 (size!17654 a!2986)) (bvsge (size!17654 a!2986) #b01111111111111111111111111111111)))))

(declare-fun b!577316 () Bool)

(declare-fun res!365493 () Bool)

(assert (=> b!577316 (=> (not res!365493) (not e!332047))))

(declare-fun arrayContainsKey!0 (array!36030 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577316 (= res!365493 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53058 res!365497) b!577311))

(assert (= (and b!577311 res!365494) b!577313))

(assert (= (and b!577313 res!365495) b!577312))

(assert (= (and b!577312 res!365498) b!577316))

(assert (= (and b!577316 res!365493) b!577310))

(assert (= (and b!577310 res!365492) b!577314))

(assert (= (and b!577314 res!365496) b!577315))

(declare-fun m!556217 () Bool)

(assert (=> b!577310 m!556217))

(declare-fun m!556219 () Bool)

(assert (=> start!53058 m!556219))

(declare-fun m!556221 () Bool)

(assert (=> start!53058 m!556221))

(declare-fun m!556223 () Bool)

(assert (=> b!577316 m!556223))

(declare-fun m!556225 () Bool)

(assert (=> b!577312 m!556225))

(declare-fun m!556227 () Bool)

(assert (=> b!577313 m!556227))

(assert (=> b!577313 m!556227))

(declare-fun m!556229 () Bool)

(assert (=> b!577313 m!556229))

(declare-fun m!556231 () Bool)

(assert (=> b!577314 m!556231))

(check-sat (not b!577316) (not start!53058) (not b!577312) (not b!577310) (not b!577314) (not b!577313))
(check-sat)
(get-model)

(declare-fun d!85431 () Bool)

(assert (=> d!85431 (= (validKeyInArray!0 (select (arr!17290 a!2986) j!136)) (and (not (= (select (arr!17290 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17290 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!577313 d!85431))

(declare-fun d!85433 () Bool)

(assert (=> d!85433 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!577312 d!85433))

(declare-fun d!85435 () Bool)

(declare-fun res!365524 () Bool)

(declare-fun e!332061 () Bool)

(assert (=> d!85435 (=> res!365524 e!332061)))

(assert (=> d!85435 (= res!365524 (= (select (arr!17290 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!85435 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!332061)))

(declare-fun b!577342 () Bool)

(declare-fun e!332062 () Bool)

(assert (=> b!577342 (= e!332061 e!332062)))

(declare-fun res!365525 () Bool)

(assert (=> b!577342 (=> (not res!365525) (not e!332062))))

(assert (=> b!577342 (= res!365525 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17654 a!2986)))))

(declare-fun b!577343 () Bool)

(assert (=> b!577343 (= e!332062 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85435 (not res!365524)) b!577342))

(assert (= (and b!577342 res!365525) b!577343))

(declare-fun m!556249 () Bool)

(assert (=> d!85435 m!556249))

(declare-fun m!556251 () Bool)

(assert (=> b!577343 m!556251))

(assert (=> b!577316 d!85435))

(declare-fun d!85437 () Bool)

(assert (=> d!85437 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!53058 d!85437))

(declare-fun d!85441 () Bool)

(assert (=> d!85441 (= (array_inv!13064 a!2986) (bvsge (size!17654 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!53058 d!85441))

(declare-fun d!85445 () Bool)

(declare-fun lt!263968 () SeekEntryResult!5737)

(get-info :version)

(assert (=> d!85445 (and (or ((_ is Undefined!5737) lt!263968) (not ((_ is Found!5737) lt!263968)) (and (bvsge (index!25176 lt!263968) #b00000000000000000000000000000000) (bvslt (index!25176 lt!263968) (size!17654 a!2986)))) (or ((_ is Undefined!5737) lt!263968) ((_ is Found!5737) lt!263968) (not ((_ is MissingZero!5737) lt!263968)) (and (bvsge (index!25175 lt!263968) #b00000000000000000000000000000000) (bvslt (index!25175 lt!263968) (size!17654 a!2986)))) (or ((_ is Undefined!5737) lt!263968) ((_ is Found!5737) lt!263968) ((_ is MissingZero!5737) lt!263968) (not ((_ is MissingVacant!5737) lt!263968)) (and (bvsge (index!25178 lt!263968) #b00000000000000000000000000000000) (bvslt (index!25178 lt!263968) (size!17654 a!2986)))) (or ((_ is Undefined!5737) lt!263968) (ite ((_ is Found!5737) lt!263968) (= (select (arr!17290 a!2986) (index!25176 lt!263968)) k0!1786) (ite ((_ is MissingZero!5737) lt!263968) (= (select (arr!17290 a!2986) (index!25175 lt!263968)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5737) lt!263968) (= (select (arr!17290 a!2986) (index!25178 lt!263968)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!332091 () SeekEntryResult!5737)

(assert (=> d!85445 (= lt!263968 e!332091)))

(declare-fun c!66297 () Bool)

(declare-fun lt!263969 () SeekEntryResult!5737)

(assert (=> d!85445 (= c!66297 (and ((_ is Intermediate!5737) lt!263969) (undefined!6549 lt!263969)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36030 (_ BitVec 32)) SeekEntryResult!5737)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85445 (= lt!263969 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!85445 (validMask!0 mask!3053)))

(assert (=> d!85445 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!263968)))

(declare-fun b!577392 () Bool)

(declare-fun c!66298 () Bool)

(declare-fun lt!263967 () (_ BitVec 64))

(assert (=> b!577392 (= c!66298 (= lt!263967 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!332090 () SeekEntryResult!5737)

(declare-fun e!332092 () SeekEntryResult!5737)

(assert (=> b!577392 (= e!332090 e!332092)))

(declare-fun b!577393 () Bool)

(assert (=> b!577393 (= e!332091 Undefined!5737)))

(declare-fun b!577394 () Bool)

(assert (=> b!577394 (= e!332091 e!332090)))

(assert (=> b!577394 (= lt!263967 (select (arr!17290 a!2986) (index!25177 lt!263969)))))

(declare-fun c!66299 () Bool)

(assert (=> b!577394 (= c!66299 (= lt!263967 k0!1786))))

(declare-fun b!577395 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36030 (_ BitVec 32)) SeekEntryResult!5737)

(assert (=> b!577395 (= e!332092 (seekKeyOrZeroReturnVacant!0 (x!54113 lt!263969) (index!25177 lt!263969) (index!25177 lt!263969) k0!1786 a!2986 mask!3053))))

(declare-fun b!577396 () Bool)

(assert (=> b!577396 (= e!332092 (MissingZero!5737 (index!25177 lt!263969)))))

(declare-fun b!577397 () Bool)

(assert (=> b!577397 (= e!332090 (Found!5737 (index!25177 lt!263969)))))

(assert (= (and d!85445 c!66297) b!577393))

(assert (= (and d!85445 (not c!66297)) b!577394))

(assert (= (and b!577394 c!66299) b!577397))

(assert (= (and b!577394 (not c!66299)) b!577392))

(assert (= (and b!577392 c!66298) b!577396))

(assert (= (and b!577392 (not c!66298)) b!577395))

(declare-fun m!556265 () Bool)

(assert (=> d!85445 m!556265))

(declare-fun m!556267 () Bool)

(assert (=> d!85445 m!556267))

(declare-fun m!556269 () Bool)

(assert (=> d!85445 m!556269))

(assert (=> d!85445 m!556219))

(assert (=> d!85445 m!556265))

(declare-fun m!556275 () Bool)

(assert (=> d!85445 m!556275))

(declare-fun m!556277 () Bool)

(assert (=> d!85445 m!556277))

(declare-fun m!556281 () Bool)

(assert (=> b!577394 m!556281))

(declare-fun m!556287 () Bool)

(assert (=> b!577395 m!556287))

(assert (=> b!577310 d!85445))

(declare-fun d!85451 () Bool)

(declare-fun res!365542 () Bool)

(declare-fun e!332113 () Bool)

(assert (=> d!85451 (=> res!365542 e!332113)))

(assert (=> d!85451 (= res!365542 (bvsge #b00000000000000000000000000000000 (size!17654 a!2986)))))

(assert (=> d!85451 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!332113)))

(declare-fun b!577424 () Bool)

(declare-fun e!332112 () Bool)

(declare-fun e!332111 () Bool)

(assert (=> b!577424 (= e!332112 e!332111)))

(declare-fun lt!263982 () (_ BitVec 64))

(assert (=> b!577424 (= lt!263982 (select (arr!17290 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!18122 0))(
  ( (Unit!18123) )
))
(declare-fun lt!263983 () Unit!18122)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36030 (_ BitVec 64) (_ BitVec 32)) Unit!18122)

(assert (=> b!577424 (= lt!263983 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!263982 #b00000000000000000000000000000000))))

(assert (=> b!577424 (arrayContainsKey!0 a!2986 lt!263982 #b00000000000000000000000000000000)))

(declare-fun lt!263984 () Unit!18122)

(assert (=> b!577424 (= lt!263984 lt!263983)))

(declare-fun res!365543 () Bool)

(assert (=> b!577424 (= res!365543 (= (seekEntryOrOpen!0 (select (arr!17290 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!5737 #b00000000000000000000000000000000)))))

(assert (=> b!577424 (=> (not res!365543) (not e!332111))))

(declare-fun b!577425 () Bool)

(declare-fun call!32753 () Bool)

(assert (=> b!577425 (= e!332112 call!32753)))

(declare-fun b!577426 () Bool)

(assert (=> b!577426 (= e!332111 call!32753)))

(declare-fun b!577427 () Bool)

(assert (=> b!577427 (= e!332113 e!332112)))

(declare-fun c!66308 () Bool)

(assert (=> b!577427 (= c!66308 (validKeyInArray!0 (select (arr!17290 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32750 () Bool)

(assert (=> bm!32750 (= call!32753 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(assert (= (and d!85451 (not res!365542)) b!577427))

(assert (= (and b!577427 c!66308) b!577424))

(assert (= (and b!577427 (not c!66308)) b!577425))

(assert (= (and b!577424 res!365543) b!577426))

(assert (= (or b!577426 b!577425) bm!32750))

(assert (=> b!577424 m!556249))

(declare-fun m!556311 () Bool)

(assert (=> b!577424 m!556311))

(declare-fun m!556313 () Bool)

(assert (=> b!577424 m!556313))

(assert (=> b!577424 m!556249))

(declare-fun m!556315 () Bool)

(assert (=> b!577424 m!556315))

(assert (=> b!577427 m!556249))

(assert (=> b!577427 m!556249))

(declare-fun m!556317 () Bool)

(assert (=> b!577427 m!556317))

(declare-fun m!556319 () Bool)

(assert (=> bm!32750 m!556319))

(assert (=> b!577314 d!85451))

(check-sat (not b!577427) (not bm!32750) (not b!577424) (not d!85445) (not b!577395) (not b!577343))
(check-sat)
