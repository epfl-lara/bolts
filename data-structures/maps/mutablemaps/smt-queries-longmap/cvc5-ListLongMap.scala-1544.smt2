; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29196 () Bool)

(assert start!29196)

(declare-fun res!156060 () Bool)

(declare-fun e!187184 () Bool)

(assert (=> start!29196 (=> (not res!156060) (not e!187184))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29196 (= res!156060 (validMask!0 mask!3809))))

(assert (=> start!29196 e!187184))

(assert (=> start!29196 true))

(declare-datatypes ((array!14996 0))(
  ( (array!14997 (arr!7108 (Array (_ BitVec 32) (_ BitVec 64))) (size!7460 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14996)

(declare-fun array_inv!5062 (array!14996) Bool)

(assert (=> start!29196 (array_inv!5062 a!3312)))

(declare-fun b!296134 () Bool)

(declare-fun res!156058 () Bool)

(declare-fun e!187182 () Bool)

(assert (=> b!296134 (=> (not res!156058) (not e!187182))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14996 (_ BitVec 32)) Bool)

(assert (=> b!296134 (= res!156058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!296135 () Bool)

(declare-fun res!156059 () Bool)

(assert (=> b!296135 (=> (not res!156059) (not e!187184))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14996 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296135 (= res!156059 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296136 () Bool)

(declare-fun e!187183 () Bool)

(assert (=> b!296136 (= e!187182 e!187183)))

(declare-fun res!156057 () Bool)

(assert (=> b!296136 (=> (not res!156057) (not e!187183))))

(declare-fun lt!147079 () Bool)

(assert (=> b!296136 (= res!156057 lt!147079)))

(declare-fun lt!147080 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2268 0))(
  ( (MissingZero!2268 (index!11242 (_ BitVec 32))) (Found!2268 (index!11243 (_ BitVec 32))) (Intermediate!2268 (undefined!3080 Bool) (index!11244 (_ BitVec 32)) (x!29421 (_ BitVec 32))) (Undefined!2268) (MissingVacant!2268 (index!11245 (_ BitVec 32))) )
))
(declare-fun lt!147083 () SeekEntryResult!2268)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14996 (_ BitVec 32)) SeekEntryResult!2268)

(assert (=> b!296136 (= lt!147083 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147080 k!2524 (array!14997 (store (arr!7108 a!3312) i!1256 k!2524) (size!7460 a!3312)) mask!3809))))

(declare-fun lt!147078 () SeekEntryResult!2268)

(assert (=> b!296136 (= lt!147078 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147080 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296136 (= lt!147080 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296137 () Bool)

(declare-fun res!156061 () Bool)

(assert (=> b!296137 (=> (not res!156061) (not e!187184))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296137 (= res!156061 (validKeyInArray!0 k!2524))))

(declare-fun b!296138 () Bool)

(declare-fun e!187181 () Bool)

(assert (=> b!296138 (= e!187181 (not (or (not (= lt!147078 (Intermediate!2268 false (index!11244 lt!147078) (x!29421 lt!147078)))) (bvsle #b00000000000000000000000000000000 (x!29421 lt!147078)))))))

(assert (=> b!296138 (and (= (select (arr!7108 a!3312) (index!11244 lt!147078)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11244 lt!147078) i!1256))))

(declare-fun b!296139 () Bool)

(assert (=> b!296139 (= e!187183 e!187181)))

(declare-fun res!156056 () Bool)

(assert (=> b!296139 (=> (not res!156056) (not e!187181))))

(declare-fun lt!147081 () Bool)

(assert (=> b!296139 (= res!156056 (and (or lt!147081 (not (undefined!3080 lt!147078))) (or lt!147081 (not (= (select (arr!7108 a!3312) (index!11244 lt!147078)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147081 (not (= (select (arr!7108 a!3312) (index!11244 lt!147078)) k!2524))) (not lt!147081)))))

(assert (=> b!296139 (= lt!147081 (not (is-Intermediate!2268 lt!147078)))))

(declare-fun b!296140 () Bool)

(assert (=> b!296140 (= e!187184 e!187182)))

(declare-fun res!156062 () Bool)

(assert (=> b!296140 (=> (not res!156062) (not e!187182))))

(declare-fun lt!147082 () SeekEntryResult!2268)

(assert (=> b!296140 (= res!156062 (or lt!147079 (= lt!147082 (MissingVacant!2268 i!1256))))))

(assert (=> b!296140 (= lt!147079 (= lt!147082 (MissingZero!2268 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14996 (_ BitVec 32)) SeekEntryResult!2268)

(assert (=> b!296140 (= lt!147082 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!296141 () Bool)

(declare-fun res!156063 () Bool)

(assert (=> b!296141 (=> (not res!156063) (not e!187184))))

(assert (=> b!296141 (= res!156063 (and (= (size!7460 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7460 a!3312))))))

(assert (= (and start!29196 res!156060) b!296141))

(assert (= (and b!296141 res!156063) b!296137))

(assert (= (and b!296137 res!156061) b!296135))

(assert (= (and b!296135 res!156059) b!296140))

(assert (= (and b!296140 res!156062) b!296134))

(assert (= (and b!296134 res!156058) b!296136))

(assert (= (and b!296136 res!156057) b!296139))

(assert (= (and b!296139 res!156056) b!296138))

(declare-fun m!309209 () Bool)

(assert (=> b!296134 m!309209))

(declare-fun m!309211 () Bool)

(assert (=> start!29196 m!309211))

(declare-fun m!309213 () Bool)

(assert (=> start!29196 m!309213))

(declare-fun m!309215 () Bool)

(assert (=> b!296138 m!309215))

(declare-fun m!309217 () Bool)

(assert (=> b!296135 m!309217))

(declare-fun m!309219 () Bool)

(assert (=> b!296140 m!309219))

(assert (=> b!296139 m!309215))

(declare-fun m!309221 () Bool)

(assert (=> b!296137 m!309221))

(declare-fun m!309223 () Bool)

(assert (=> b!296136 m!309223))

(declare-fun m!309225 () Bool)

(assert (=> b!296136 m!309225))

(declare-fun m!309227 () Bool)

(assert (=> b!296136 m!309227))

(declare-fun m!309229 () Bool)

(assert (=> b!296136 m!309229))

(push 1)

(assert (not b!296136))

(assert (not b!296137))

(assert (not b!296134))

(assert (not b!296135))

(assert (not start!29196))

(assert (not b!296140))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66923 () Bool)

(declare-fun lt!147137 () SeekEntryResult!2268)

(assert (=> d!66923 (and (or (is-Undefined!2268 lt!147137) (not (is-Found!2268 lt!147137)) (and (bvsge (index!11243 lt!147137) #b00000000000000000000000000000000) (bvslt (index!11243 lt!147137) (size!7460 a!3312)))) (or (is-Undefined!2268 lt!147137) (is-Found!2268 lt!147137) (not (is-MissingZero!2268 lt!147137)) (and (bvsge (index!11242 lt!147137) #b00000000000000000000000000000000) (bvslt (index!11242 lt!147137) (size!7460 a!3312)))) (or (is-Undefined!2268 lt!147137) (is-Found!2268 lt!147137) (is-MissingZero!2268 lt!147137) (not (is-MissingVacant!2268 lt!147137)) (and (bvsge (index!11245 lt!147137) #b00000000000000000000000000000000) (bvslt (index!11245 lt!147137) (size!7460 a!3312)))) (or (is-Undefined!2268 lt!147137) (ite (is-Found!2268 lt!147137) (= (select (arr!7108 a!3312) (index!11243 lt!147137)) k!2524) (ite (is-MissingZero!2268 lt!147137) (= (select (arr!7108 a!3312) (index!11242 lt!147137)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2268 lt!147137) (= (select (arr!7108 a!3312) (index!11245 lt!147137)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!187236 () SeekEntryResult!2268)

(assert (=> d!66923 (= lt!147137 e!187236)))

(declare-fun c!47627 () Bool)

(declare-fun lt!147135 () SeekEntryResult!2268)

(assert (=> d!66923 (= c!47627 (and (is-Intermediate!2268 lt!147135) (undefined!3080 lt!147135)))))

(assert (=> d!66923 (= lt!147135 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66923 (validMask!0 mask!3809)))

(assert (=> d!66923 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!147137)))

(declare-fun b!296220 () Bool)

(assert (=> b!296220 (= e!187236 Undefined!2268)))

(declare-fun b!296221 () Bool)

(declare-fun e!187237 () SeekEntryResult!2268)

(assert (=> b!296221 (= e!187236 e!187237)))

(declare-fun lt!147136 () (_ BitVec 64))

(assert (=> b!296221 (= lt!147136 (select (arr!7108 a!3312) (index!11244 lt!147135)))))

(declare-fun c!47628 () Bool)

(assert (=> b!296221 (= c!47628 (= lt!147136 k!2524))))

(declare-fun b!296222 () Bool)

(assert (=> b!296222 (= e!187237 (Found!2268 (index!11244 lt!147135)))))

(declare-fun e!187238 () SeekEntryResult!2268)

(declare-fun b!296223 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14996 (_ BitVec 32)) SeekEntryResult!2268)

(assert (=> b!296223 (= e!187238 (seekKeyOrZeroReturnVacant!0 (x!29421 lt!147135) (index!11244 lt!147135) (index!11244 lt!147135) k!2524 a!3312 mask!3809))))

(declare-fun b!296224 () Bool)

(assert (=> b!296224 (= e!187238 (MissingZero!2268 (index!11244 lt!147135)))))

(declare-fun b!296225 () Bool)

(declare-fun c!47626 () Bool)

(assert (=> b!296225 (= c!47626 (= lt!147136 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!296225 (= e!187237 e!187238)))

(assert (= (and d!66923 c!47627) b!296220))

(assert (= (and d!66923 (not c!47627)) b!296221))

(assert (= (and b!296221 c!47628) b!296222))

(assert (= (and b!296221 (not c!47628)) b!296225))

(assert (= (and b!296225 c!47626) b!296224))

(assert (= (and b!296225 (not c!47626)) b!296223))

(assert (=> d!66923 m!309229))

(declare-fun m!309289 () Bool)

(assert (=> d!66923 m!309289))

(declare-fun m!309291 () Bool)

(assert (=> d!66923 m!309291))

(assert (=> d!66923 m!309229))

(declare-fun m!309293 () Bool)

(assert (=> d!66923 m!309293))

(assert (=> d!66923 m!309211))

(declare-fun m!309295 () Bool)

(assert (=> d!66923 m!309295))

(declare-fun m!309297 () Bool)

(assert (=> b!296221 m!309297))

(declare-fun m!309299 () Bool)

(assert (=> b!296223 m!309299))

(assert (=> b!296140 d!66923))

(declare-fun d!66935 () Bool)

(assert (=> d!66935 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29196 d!66935))

(declare-fun d!66943 () Bool)

(assert (=> d!66943 (= (array_inv!5062 a!3312) (bvsge (size!7460 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29196 d!66943))

(declare-fun d!66945 () Bool)

(declare-fun res!156150 () Bool)

(declare-fun e!187275 () Bool)

(assert (=> d!66945 (=> res!156150 e!187275)))

(assert (=> d!66945 (= res!156150 (= (select (arr!7108 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66945 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!187275)))

(declare-fun b!296280 () Bool)

(declare-fun e!187276 () Bool)

(assert (=> b!296280 (= e!187275 e!187276)))

(declare-fun res!156151 () Bool)

(assert (=> b!296280 (=> (not res!156151) (not e!187276))))

(assert (=> b!296280 (= res!156151 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7460 a!3312)))))

(declare-fun b!296281 () Bool)

(assert (=> b!296281 (= e!187276 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66945 (not res!156150)) b!296280))

(assert (= (and b!296280 res!156151) b!296281))

(declare-fun m!309319 () Bool)

(assert (=> d!66945 m!309319))

(declare-fun m!309321 () Bool)

(assert (=> b!296281 m!309321))

(assert (=> b!296135 d!66945))

(declare-fun bm!25737 () Bool)

(declare-fun call!25740 () Bool)

(assert (=> bm!25737 (= call!25740 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun d!66951 () Bool)

(declare-fun res!156159 () Bool)

(declare-fun e!187288 () Bool)

(assert (=> d!66951 (=> res!156159 e!187288)))

(assert (=> d!66951 (= res!156159 (bvsge #b00000000000000000000000000000000 (size!7460 a!3312)))))

(assert (=> d!66951 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!187288)))

(declare-fun b!296294 () Bool)

(declare-fun e!187287 () Bool)

(assert (=> b!296294 (= e!187287 call!25740)))

(declare-fun b!296295 () Bool)

(assert (=> b!296295 (= e!187288 e!187287)))

(declare-fun c!47646 () Bool)

(assert (=> b!296295 (= c!47646 (validKeyInArray!0 (select (arr!7108 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!296296 () Bool)

(declare-fun e!187286 () Bool)

(assert (=> b!296296 (= e!187287 e!187286)))

(declare-fun lt!147168 () (_ BitVec 64))

(assert (=> b!296296 (= lt!147168 (select (arr!7108 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9217 0))(
  ( (Unit!9218) )
))
(declare-fun lt!147167 () Unit!9217)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14996 (_ BitVec 64) (_ BitVec 32)) Unit!9217)

(assert (=> b!296296 (= lt!147167 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!147168 #b00000000000000000000000000000000))))

(assert (=> b!296296 (arrayContainsKey!0 a!3312 lt!147168 #b00000000000000000000000000000000)))

(declare-fun lt!147169 () Unit!9217)

(assert (=> b!296296 (= lt!147169 lt!147167)))

(declare-fun res!156160 () Bool)

(assert (=> b!296296 (= res!156160 (= (seekEntryOrOpen!0 (select (arr!7108 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2268 #b00000000000000000000000000000000)))))

(assert (=> b!296296 (=> (not res!156160) (not e!187286))))

(declare-fun b!296297 () Bool)

(assert (=> b!296297 (= e!187286 call!25740)))

(assert (= (and d!66951 (not res!156159)) b!296295))

(assert (= (and b!296295 c!47646) b!296296))

(assert (= (and b!296295 (not c!47646)) b!296294))

(assert (= (and b!296296 res!156160) b!296297))

(assert (= (or b!296297 b!296294) bm!25737))

(declare-fun m!309333 () Bool)

(assert (=> bm!25737 m!309333))

(assert (=> b!296295 m!309319))

(assert (=> b!296295 m!309319))

(declare-fun m!309335 () Bool)

(assert (=> b!296295 m!309335))

(assert (=> b!296296 m!309319))

(declare-fun m!309337 () Bool)

(assert (=> b!296296 m!309337))

(declare-fun m!309339 () Bool)

(assert (=> b!296296 m!309339))

(assert (=> b!296296 m!309319))

(declare-fun m!309341 () Bool)

(assert (=> b!296296 m!309341))

(assert (=> b!296134 d!66951))

(declare-fun d!66959 () Bool)

(assert (=> d!66959 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!296137 d!66959))

(declare-fun b!296370 () Bool)

(declare-fun e!187331 () SeekEntryResult!2268)

(declare-fun e!187332 () SeekEntryResult!2268)

(assert (=> b!296370 (= e!187331 e!187332)))

(declare-fun c!47674 () Bool)

(declare-fun lt!147198 () (_ BitVec 64))

(assert (=> b!296370 (= c!47674 (or (= lt!147198 k!2524) (= (bvadd lt!147198 lt!147198) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!296371 () Bool)

(declare-fun e!187329 () Bool)

(declare-fun e!187328 () Bool)

(assert (=> b!296371 (= e!187329 e!187328)))

(declare-fun res!156181 () Bool)

(declare-fun lt!147197 () SeekEntryResult!2268)

(assert (=> b!296371 (= res!156181 (and (is-Intermediate!2268 lt!147197) (not (undefined!3080 lt!147197)) (bvslt (x!29421 lt!147197) #b01111111111111111111111111111110) (bvsge (x!29421 lt!147197) #b00000000000000000000000000000000) (bvsge (x!29421 lt!147197) #b00000000000000000000000000000000)))))

(assert (=> b!296371 (=> (not res!156181) (not e!187328))))

(declare-fun b!296372 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296372 (= e!187332 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147080 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14997 (store (arr!7108 a!3312) i!1256 k!2524) (size!7460 a!3312)) mask!3809))))

(declare-fun b!296373 () Bool)

(assert (=> b!296373 (= e!187329 (bvsge (x!29421 lt!147197) #b01111111111111111111111111111110))))

(declare-fun b!296374 () Bool)

(assert (=> b!296374 (= e!187331 (Intermediate!2268 true lt!147080 #b00000000000000000000000000000000))))

(declare-fun d!66961 () Bool)

(assert (=> d!66961 e!187329))

(declare-fun c!47676 () Bool)

(assert (=> d!66961 (= c!47676 (and (is-Intermediate!2268 lt!147197) (undefined!3080 lt!147197)))))

(assert (=> d!66961 (= lt!147197 e!187331)))

(declare-fun c!47675 () Bool)

(assert (=> d!66961 (= c!47675 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66961 (= lt!147198 (select (arr!7108 (array!14997 (store (arr!7108 a!3312) i!1256 k!2524) (size!7460 a!3312))) lt!147080))))

(assert (=> d!66961 (validMask!0 mask!3809)))

(assert (=> d!66961 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147080 k!2524 (array!14997 (store (arr!7108 a!3312) i!1256 k!2524) (size!7460 a!3312)) mask!3809) lt!147197)))

(declare-fun b!296375 () Bool)

(assert (=> b!296375 (and (bvsge (index!11244 lt!147197) #b00000000000000000000000000000000) (bvslt (index!11244 lt!147197) (size!7460 (array!14997 (store (arr!7108 a!3312) i!1256 k!2524) (size!7460 a!3312)))))))

(declare-fun res!156182 () Bool)

(assert (=> b!296375 (= res!156182 (= (select (arr!7108 (array!14997 (store (arr!7108 a!3312) i!1256 k!2524) (size!7460 a!3312))) (index!11244 lt!147197)) k!2524))))

(declare-fun e!187330 () Bool)

(assert (=> b!296375 (=> res!156182 e!187330)))

(assert (=> b!296375 (= e!187328 e!187330)))

(declare-fun b!296376 () Bool)

(assert (=> b!296376 (and (bvsge (index!11244 lt!147197) #b00000000000000000000000000000000) (bvslt (index!11244 lt!147197) (size!7460 (array!14997 (store (arr!7108 a!3312) i!1256 k!2524) (size!7460 a!3312)))))))

(declare-fun res!156180 () Bool)

(assert (=> b!296376 (= res!156180 (= (select (arr!7108 (array!14997 (store (arr!7108 a!3312) i!1256 k!2524) (size!7460 a!3312))) (index!11244 lt!147197)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!296376 (=> res!156180 e!187330)))

(declare-fun b!296377 () Bool)

(assert (=> b!296377 (= e!187332 (Intermediate!2268 false lt!147080 #b00000000000000000000000000000000))))

(declare-fun b!296378 () Bool)

(assert (=> b!296378 (and (bvsge (index!11244 lt!147197) #b00000000000000000000000000000000) (bvslt (index!11244 lt!147197) (size!7460 (array!14997 (store (arr!7108 a!3312) i!1256 k!2524) (size!7460 a!3312)))))))

(assert (=> b!296378 (= e!187330 (= (select (arr!7108 (array!14997 (store (arr!7108 a!3312) i!1256 k!2524) (size!7460 a!3312))) (index!11244 lt!147197)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66961 c!47675) b!296374))

(assert (= (and d!66961 (not c!47675)) b!296370))

(assert (= (and b!296370 c!47674) b!296377))

(assert (= (and b!296370 (not c!47674)) b!296372))

(assert (= (and d!66961 c!47676) b!296373))

(assert (= (and d!66961 (not c!47676)) b!296371))

(assert (= (and b!296371 res!156181) b!296375))

(assert (= (and b!296375 (not res!156182)) b!296376))

(assert (= (and b!296376 (not res!156180)) b!296378))

(declare-fun m!309369 () Bool)

(assert (=> b!296375 m!309369))

(assert (=> b!296378 m!309369))

(assert (=> b!296376 m!309369))

(declare-fun m!309371 () Bool)

(assert (=> d!66961 m!309371))

(assert (=> d!66961 m!309211))

(declare-fun m!309373 () Bool)

(assert (=> b!296372 m!309373))

(assert (=> b!296372 m!309373))

(declare-fun m!309375 () Bool)

(assert (=> b!296372 m!309375))

(assert (=> b!296136 d!66961))

(declare-fun b!296379 () Bool)

(declare-fun e!187336 () SeekEntryResult!2268)

(declare-fun e!187337 () SeekEntryResult!2268)

(assert (=> b!296379 (= e!187336 e!187337)))

(declare-fun c!47677 () Bool)

(declare-fun lt!147200 () (_ BitVec 64))

(assert (=> b!296379 (= c!47677 (or (= lt!147200 k!2524) (= (bvadd lt!147200 lt!147200) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!296380 () Bool)

(declare-fun e!187334 () Bool)

(declare-fun e!187333 () Bool)

(assert (=> b!296380 (= e!187334 e!187333)))

(declare-fun res!156184 () Bool)

(declare-fun lt!147199 () SeekEntryResult!2268)

(assert (=> b!296380 (= res!156184 (and (is-Intermediate!2268 lt!147199) (not (undefined!3080 lt!147199)) (bvslt (x!29421 lt!147199) #b01111111111111111111111111111110) (bvsge (x!29421 lt!147199) #b00000000000000000000000000000000) (bvsge (x!29421 lt!147199) #b00000000000000000000000000000000)))))

(assert (=> b!296380 (=> (not res!156184) (not e!187333))))

(declare-fun b!296381 () Bool)

(assert (=> b!296381 (= e!187337 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147080 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!296382 () Bool)

(assert (=> b!296382 (= e!187334 (bvsge (x!29421 lt!147199) #b01111111111111111111111111111110))))

(declare-fun b!296383 () Bool)

(assert (=> b!296383 (= e!187336 (Intermediate!2268 true lt!147080 #b00000000000000000000000000000000))))

(declare-fun d!66969 () Bool)

(assert (=> d!66969 e!187334))

(declare-fun c!47679 () Bool)

(assert (=> d!66969 (= c!47679 (and (is-Intermediate!2268 lt!147199) (undefined!3080 lt!147199)))))

(assert (=> d!66969 (= lt!147199 e!187336)))

(declare-fun c!47678 () Bool)

(assert (=> d!66969 (= c!47678 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66969 (= lt!147200 (select (arr!7108 a!3312) lt!147080))))

(assert (=> d!66969 (validMask!0 mask!3809)))

(assert (=> d!66969 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147080 k!2524 a!3312 mask!3809) lt!147199)))

(declare-fun b!296384 () Bool)

(assert (=> b!296384 (and (bvsge (index!11244 lt!147199) #b00000000000000000000000000000000) (bvslt (index!11244 lt!147199) (size!7460 a!3312)))))

(declare-fun res!156185 () Bool)

(assert (=> b!296384 (= res!156185 (= (select (arr!7108 a!3312) (index!11244 lt!147199)) k!2524))))

(declare-fun e!187335 () Bool)

(assert (=> b!296384 (=> res!156185 e!187335)))

(assert (=> b!296384 (= e!187333 e!187335)))

(declare-fun b!296385 () Bool)

(assert (=> b!296385 (and (bvsge (index!11244 lt!147199) #b00000000000000000000000000000000) (bvslt (index!11244 lt!147199) (size!7460 a!3312)))))

(declare-fun res!156183 () Bool)

(assert (=> b!296385 (= res!156183 (= (select (arr!7108 a!3312) (index!11244 lt!147199)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!296385 (=> res!156183 e!187335)))

(declare-fun b!296386 () Bool)

(assert (=> b!296386 (= e!187337 (Intermediate!2268 false lt!147080 #b00000000000000000000000000000000))))

(declare-fun b!296387 () Bool)

(assert (=> b!296387 (and (bvsge (index!11244 lt!147199) #b00000000000000000000000000000000) (bvslt (index!11244 lt!147199) (size!7460 a!3312)))))

(assert (=> b!296387 (= e!187335 (= (select (arr!7108 a!3312) (index!11244 lt!147199)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66969 c!47678) b!296383))

(assert (= (and d!66969 (not c!47678)) b!296379))

(assert (= (and b!296379 c!47677) b!296386))

(assert (= (and b!296379 (not c!47677)) b!296381))

(assert (= (and d!66969 c!47679) b!296382))

(assert (= (and d!66969 (not c!47679)) b!296380))

(assert (= (and b!296380 res!156184) b!296384))

(assert (= (and b!296384 (not res!156185)) b!296385))

(assert (= (and b!296385 (not res!156183)) b!296387))

(declare-fun m!309377 () Bool)

(assert (=> b!296384 m!309377))

(assert (=> b!296387 m!309377))

(assert (=> b!296385 m!309377))

(declare-fun m!309379 () Bool)

(assert (=> d!66969 m!309379))

(assert (=> d!66969 m!309211))

(assert (=> b!296381 m!309373))

(assert (=> b!296381 m!309373))

(declare-fun m!309381 () Bool)

(assert (=> b!296381 m!309381))

(assert (=> b!296136 d!66969))

(declare-fun d!66971 () Bool)

(declare-fun lt!147206 () (_ BitVec 32))

(declare-fun lt!147205 () (_ BitVec 32))

(assert (=> d!66971 (= lt!147206 (bvmul (bvxor lt!147205 (bvlshr lt!147205 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66971 (= lt!147205 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66971 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!156186 (let ((h!5314 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29429 (bvmul (bvxor h!5314 (bvlshr h!5314 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29429 (bvlshr x!29429 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!156186 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!156186 #b00000000000000000000000000000000))))))

