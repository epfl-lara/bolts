; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29200 () Bool)

(assert start!29200)

(declare-fun b!296182 () Bool)

(declare-fun e!187214 () Bool)

(declare-fun e!187212 () Bool)

(assert (=> b!296182 (= e!187214 e!187212)))

(declare-fun res!156107 () Bool)

(assert (=> b!296182 (=> (not res!156107) (not e!187212))))

(declare-fun lt!147114 () Bool)

(assert (=> b!296182 (= res!156107 lt!147114)))

(declare-datatypes ((SeekEntryResult!2270 0))(
  ( (MissingZero!2270 (index!11250 (_ BitVec 32))) (Found!2270 (index!11251 (_ BitVec 32))) (Intermediate!2270 (undefined!3082 Bool) (index!11252 (_ BitVec 32)) (x!29423 (_ BitVec 32))) (Undefined!2270) (MissingVacant!2270 (index!11253 (_ BitVec 32))) )
))
(declare-fun lt!147119 () SeekEntryResult!2270)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!147117 () (_ BitVec 32))

(declare-datatypes ((array!15000 0))(
  ( (array!15001 (arr!7110 (Array (_ BitVec 32) (_ BitVec 64))) (size!7462 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15000)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15000 (_ BitVec 32)) SeekEntryResult!2270)

(assert (=> b!296182 (= lt!147119 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147117 k!2524 (array!15001 (store (arr!7110 a!3312) i!1256 k!2524) (size!7462 a!3312)) mask!3809))))

(declare-fun lt!147115 () SeekEntryResult!2270)

(assert (=> b!296182 (= lt!147115 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147117 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296182 (= lt!147117 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296183 () Bool)

(declare-fun res!156110 () Bool)

(assert (=> b!296183 (=> (not res!156110) (not e!187214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15000 (_ BitVec 32)) Bool)

(assert (=> b!296183 (= res!156110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!296184 () Bool)

(declare-fun res!156106 () Bool)

(declare-fun e!187210 () Bool)

(assert (=> b!296184 (=> (not res!156106) (not e!187210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296184 (= res!156106 (validKeyInArray!0 k!2524))))

(declare-fun b!296185 () Bool)

(declare-fun res!156105 () Bool)

(assert (=> b!296185 (=> (not res!156105) (not e!187210))))

(assert (=> b!296185 (= res!156105 (and (= (size!7462 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7462 a!3312))))))

(declare-fun b!296186 () Bool)

(assert (=> b!296186 (= e!187210 e!187214)))

(declare-fun res!156109 () Bool)

(assert (=> b!296186 (=> (not res!156109) (not e!187214))))

(declare-fun lt!147118 () SeekEntryResult!2270)

(assert (=> b!296186 (= res!156109 (or lt!147114 (= lt!147118 (MissingVacant!2270 i!1256))))))

(assert (=> b!296186 (= lt!147114 (= lt!147118 (MissingZero!2270 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15000 (_ BitVec 32)) SeekEntryResult!2270)

(assert (=> b!296186 (= lt!147118 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!156111 () Bool)

(assert (=> start!29200 (=> (not res!156111) (not e!187210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29200 (= res!156111 (validMask!0 mask!3809))))

(assert (=> start!29200 e!187210))

(assert (=> start!29200 true))

(declare-fun array_inv!5064 (array!15000) Bool)

(assert (=> start!29200 (array_inv!5064 a!3312)))

(declare-fun b!296187 () Bool)

(declare-fun e!187213 () Bool)

(assert (=> b!296187 (= e!187212 e!187213)))

(declare-fun res!156104 () Bool)

(assert (=> b!296187 (=> (not res!156104) (not e!187213))))

(declare-fun lt!147116 () Bool)

(assert (=> b!296187 (= res!156104 (and (or lt!147116 (not (undefined!3082 lt!147115))) (or lt!147116 (not (= (select (arr!7110 a!3312) (index!11252 lt!147115)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147116 (not (= (select (arr!7110 a!3312) (index!11252 lt!147115)) k!2524))) (not lt!147116)))))

(assert (=> b!296187 (= lt!147116 (not (is-Intermediate!2270 lt!147115)))))

(declare-fun b!296188 () Bool)

(declare-fun res!156108 () Bool)

(assert (=> b!296188 (=> (not res!156108) (not e!187210))))

(declare-fun arrayContainsKey!0 (array!15000 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296188 (= res!156108 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296189 () Bool)

(assert (=> b!296189 (= e!187213 (not (or (not (= lt!147115 (Intermediate!2270 false (index!11252 lt!147115) (x!29423 lt!147115)))) (bvsle #b00000000000000000000000000000000 (x!29423 lt!147115)))))))

(assert (=> b!296189 (and (= (select (arr!7110 a!3312) (index!11252 lt!147115)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11252 lt!147115) i!1256))))

(assert (= (and start!29200 res!156111) b!296185))

(assert (= (and b!296185 res!156105) b!296184))

(assert (= (and b!296184 res!156106) b!296188))

(assert (= (and b!296188 res!156108) b!296186))

(assert (= (and b!296186 res!156109) b!296183))

(assert (= (and b!296183 res!156110) b!296182))

(assert (= (and b!296182 res!156107) b!296187))

(assert (= (and b!296187 res!156104) b!296189))

(declare-fun m!309253 () Bool)

(assert (=> b!296182 m!309253))

(declare-fun m!309255 () Bool)

(assert (=> b!296182 m!309255))

(declare-fun m!309257 () Bool)

(assert (=> b!296182 m!309257))

(declare-fun m!309259 () Bool)

(assert (=> b!296182 m!309259))

(declare-fun m!309261 () Bool)

(assert (=> b!296189 m!309261))

(declare-fun m!309263 () Bool)

(assert (=> b!296186 m!309263))

(declare-fun m!309265 () Bool)

(assert (=> b!296184 m!309265))

(declare-fun m!309267 () Bool)

(assert (=> start!29200 m!309267))

(declare-fun m!309269 () Bool)

(assert (=> start!29200 m!309269))

(declare-fun m!309271 () Bool)

(assert (=> b!296188 m!309271))

(declare-fun m!309273 () Bool)

(assert (=> b!296183 m!309273))

(assert (=> b!296187 m!309261))

(push 1)

(assert (not b!296184))

(assert (not b!296183))

(assert (not b!296188))

(assert (not b!296186))

(assert (not b!296182))

(assert (not start!29200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66927 () Bool)

(assert (=> d!66927 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!296184 d!66927))

(declare-fun d!66933 () Bool)

(assert (=> d!66933 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29200 d!66933))

(declare-fun d!66937 () Bool)

(assert (=> d!66937 (= (array_inv!5064 a!3312) (bvsge (size!7462 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29200 d!66937))

(declare-fun d!66939 () Bool)

(declare-fun res!156128 () Bool)

(declare-fun e!187243 () Bool)

(assert (=> d!66939 (=> res!156128 e!187243)))

(assert (=> d!66939 (= res!156128 (= (select (arr!7110 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66939 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!187243)))

(declare-fun b!296230 () Bool)

(declare-fun e!187244 () Bool)

(assert (=> b!296230 (= e!187243 e!187244)))

(declare-fun res!156129 () Bool)

(assert (=> b!296230 (=> (not res!156129) (not e!187244))))

(assert (=> b!296230 (= res!156129 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7462 a!3312)))))

(declare-fun b!296231 () Bool)

(assert (=> b!296231 (= e!187244 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66939 (not res!156128)) b!296230))

(assert (= (and b!296230 res!156129) b!296231))

(declare-fun m!309301 () Bool)

(assert (=> d!66939 m!309301))

(declare-fun m!309303 () Bool)

(assert (=> b!296231 m!309303))

(assert (=> b!296188 d!66939))

(declare-fun b!296282 () Bool)

(declare-fun e!187277 () Bool)

(declare-fun call!25737 () Bool)

(assert (=> b!296282 (= e!187277 call!25737)))

(declare-fun bm!25734 () Bool)

(assert (=> bm!25734 (= call!25737 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!296283 () Bool)

(declare-fun e!187279 () Bool)

(assert (=> b!296283 (= e!187279 call!25737)))

(declare-fun b!296284 () Bool)

(assert (=> b!296284 (= e!187277 e!187279)))

(declare-fun lt!147153 () (_ BitVec 64))

(assert (=> b!296284 (= lt!147153 (select (arr!7110 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9219 0))(
  ( (Unit!9220) )
))
(declare-fun lt!147154 () Unit!9219)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15000 (_ BitVec 64) (_ BitVec 32)) Unit!9219)

(assert (=> b!296284 (= lt!147154 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!147153 #b00000000000000000000000000000000))))

(assert (=> b!296284 (arrayContainsKey!0 a!3312 lt!147153 #b00000000000000000000000000000000)))

(declare-fun lt!147152 () Unit!9219)

(assert (=> b!296284 (= lt!147152 lt!147154)))

(declare-fun res!156153 () Bool)

(assert (=> b!296284 (= res!156153 (= (seekEntryOrOpen!0 (select (arr!7110 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2270 #b00000000000000000000000000000000)))))

(assert (=> b!296284 (=> (not res!156153) (not e!187279))))

(declare-fun b!296285 () Bool)

(declare-fun e!187278 () Bool)

(assert (=> b!296285 (= e!187278 e!187277)))

(declare-fun c!47643 () Bool)

(assert (=> b!296285 (= c!47643 (validKeyInArray!0 (select (arr!7110 a!3312) #b00000000000000000000000000000000)))))

(declare-fun d!66941 () Bool)

(declare-fun res!156152 () Bool)

(assert (=> d!66941 (=> res!156152 e!187278)))

(assert (=> d!66941 (= res!156152 (bvsge #b00000000000000000000000000000000 (size!7462 a!3312)))))

(assert (=> d!66941 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!187278)))

(assert (= (and d!66941 (not res!156152)) b!296285))

(assert (= (and b!296285 c!47643) b!296284))

(assert (= (and b!296285 (not c!47643)) b!296282))

(assert (= (and b!296284 res!156153) b!296283))

(assert (= (or b!296283 b!296282) bm!25734))

(declare-fun m!309323 () Bool)

(assert (=> bm!25734 m!309323))

(assert (=> b!296284 m!309301))

(declare-fun m!309325 () Bool)

(assert (=> b!296284 m!309325))

(declare-fun m!309327 () Bool)

(assert (=> b!296284 m!309327))

(assert (=> b!296284 m!309301))

(declare-fun m!309329 () Bool)

(assert (=> b!296284 m!309329))

(assert (=> b!296285 m!309301))

(assert (=> b!296285 m!309301))

(declare-fun m!309331 () Bool)

(assert (=> b!296285 m!309331))

(assert (=> b!296183 d!66941))

(declare-fun b!296316 () Bool)

(declare-fun lt!147179 () SeekEntryResult!2270)

(assert (=> b!296316 (and (bvsge (index!11252 lt!147179) #b00000000000000000000000000000000) (bvslt (index!11252 lt!147179) (size!7462 (array!15001 (store (arr!7110 a!3312) i!1256 k!2524) (size!7462 a!3312)))))))

(declare-fun res!156168 () Bool)

(assert (=> b!296316 (= res!156168 (= (select (arr!7110 (array!15001 (store (arr!7110 a!3312) i!1256 k!2524) (size!7462 a!3312))) (index!11252 lt!147179)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!187303 () Bool)

(assert (=> b!296316 (=> res!156168 e!187303)))

(declare-fun b!296317 () Bool)

(assert (=> b!296317 (and (bvsge (index!11252 lt!147179) #b00000000000000000000000000000000) (bvslt (index!11252 lt!147179) (size!7462 (array!15001 (store (arr!7110 a!3312) i!1256 k!2524) (size!7462 a!3312)))))))

(assert (=> b!296317 (= e!187303 (= (select (arr!7110 (array!15001 (store (arr!7110 a!3312) i!1256 k!2524) (size!7462 a!3312))) (index!11252 lt!147179)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!296318 () Bool)

(assert (=> b!296318 (and (bvsge (index!11252 lt!147179) #b00000000000000000000000000000000) (bvslt (index!11252 lt!147179) (size!7462 (array!15001 (store (arr!7110 a!3312) i!1256 k!2524) (size!7462 a!3312)))))))

(declare-fun res!156169 () Bool)

(assert (=> b!296318 (= res!156169 (= (select (arr!7110 (array!15001 (store (arr!7110 a!3312) i!1256 k!2524) (size!7462 a!3312))) (index!11252 lt!147179)) k!2524))))

(assert (=> b!296318 (=> res!156169 e!187303)))

(declare-fun e!187302 () Bool)

(assert (=> b!296318 (= e!187302 e!187303)))

(declare-fun b!296319 () Bool)

(declare-fun e!187300 () Bool)

(assert (=> b!296319 (= e!187300 e!187302)))

(declare-fun res!156167 () Bool)

(assert (=> b!296319 (= res!156167 (and (is-Intermediate!2270 lt!147179) (not (undefined!3082 lt!147179)) (bvslt (x!29423 lt!147179) #b01111111111111111111111111111110) (bvsge (x!29423 lt!147179) #b00000000000000000000000000000000) (bvsge (x!29423 lt!147179) #b00000000000000000000000000000000)))))

(assert (=> b!296319 (=> (not res!156167) (not e!187302))))

(declare-fun b!296320 () Bool)

(declare-fun e!187301 () SeekEntryResult!2270)

(declare-fun e!187299 () SeekEntryResult!2270)

(assert (=> b!296320 (= e!187301 e!187299)))

(declare-fun c!47654 () Bool)

(declare-fun lt!147178 () (_ BitVec 64))

(assert (=> b!296320 (= c!47654 (or (= lt!147178 k!2524) (= (bvadd lt!147178 lt!147178) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!296321 () Bool)

(assert (=> b!296321 (= e!187300 (bvsge (x!29423 lt!147179) #b01111111111111111111111111111110))))

(declare-fun b!296322 () Bool)

(assert (=> b!296322 (= e!187301 (Intermediate!2270 true lt!147117 #b00000000000000000000000000000000))))

(declare-fun d!66953 () Bool)

(assert (=> d!66953 e!187300))

(declare-fun c!47655 () Bool)

(assert (=> d!66953 (= c!47655 (and (is-Intermediate!2270 lt!147179) (undefined!3082 lt!147179)))))

(assert (=> d!66953 (= lt!147179 e!187301)))

(declare-fun c!47653 () Bool)

(assert (=> d!66953 (= c!47653 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66953 (= lt!147178 (select (arr!7110 (array!15001 (store (arr!7110 a!3312) i!1256 k!2524) (size!7462 a!3312))) lt!147117))))

(assert (=> d!66953 (validMask!0 mask!3809)))

(assert (=> d!66953 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147117 k!2524 (array!15001 (store (arr!7110 a!3312) i!1256 k!2524) (size!7462 a!3312)) mask!3809) lt!147179)))

(declare-fun b!296323 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296323 (= e!187299 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147117 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15001 (store (arr!7110 a!3312) i!1256 k!2524) (size!7462 a!3312)) mask!3809))))

(declare-fun b!296324 () Bool)

(assert (=> b!296324 (= e!187299 (Intermediate!2270 false lt!147117 #b00000000000000000000000000000000))))

(assert (= (and d!66953 c!47653) b!296322))

(assert (= (and d!66953 (not c!47653)) b!296320))

(assert (= (and b!296320 c!47654) b!296324))

(assert (= (and b!296320 (not c!47654)) b!296323))

(assert (= (and d!66953 c!47655) b!296321))

(assert (= (and d!66953 (not c!47655)) b!296319))

(assert (= (and b!296319 res!156167) b!296318))

(assert (= (and b!296318 (not res!156169)) b!296316))

(assert (= (and b!296316 (not res!156168)) b!296317))

(declare-fun m!309343 () Bool)

(assert (=> b!296316 m!309343))

(declare-fun m!309345 () Bool)

(assert (=> b!296323 m!309345))

(assert (=> b!296323 m!309345))

(declare-fun m!309347 () Bool)

(assert (=> b!296323 m!309347))

(assert (=> b!296318 m!309343))

(declare-fun m!309349 () Bool)

(assert (=> d!66953 m!309349))

(assert (=> d!66953 m!309267))

(assert (=> b!296317 m!309343))

(assert (=> b!296182 d!66953))

(declare-fun b!296337 () Bool)

(declare-fun lt!147183 () SeekEntryResult!2270)

(assert (=> b!296337 (and (bvsge (index!11252 lt!147183) #b00000000000000000000000000000000) (bvslt (index!11252 lt!147183) (size!7462 a!3312)))))

(declare-fun res!156171 () Bool)

(assert (=> b!296337 (= res!156171 (= (select (arr!7110 a!3312) (index!11252 lt!147183)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!187314 () Bool)

(assert (=> b!296337 (=> res!156171 e!187314)))

(declare-fun b!296338 () Bool)

(assert (=> b!296338 (and (bvsge (index!11252 lt!147183) #b00000000000000000000000000000000) (bvslt (index!11252 lt!147183) (size!7462 a!3312)))))

(assert (=> b!296338 (= e!187314 (= (select (arr!7110 a!3312) (index!11252 lt!147183)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!296339 () Bool)

(assert (=> b!296339 (and (bvsge (index!11252 lt!147183) #b00000000000000000000000000000000) (bvslt (index!11252 lt!147183) (size!7462 a!3312)))))

(declare-fun res!156172 () Bool)

(assert (=> b!296339 (= res!156172 (= (select (arr!7110 a!3312) (index!11252 lt!147183)) k!2524))))

(assert (=> b!296339 (=> res!156172 e!187314)))

(declare-fun e!187313 () Bool)

(assert (=> b!296339 (= e!187313 e!187314)))

(declare-fun b!296340 () Bool)

(declare-fun e!187311 () Bool)

(assert (=> b!296340 (= e!187311 e!187313)))

(declare-fun res!156170 () Bool)

(assert (=> b!296340 (= res!156170 (and (is-Intermediate!2270 lt!147183) (not (undefined!3082 lt!147183)) (bvslt (x!29423 lt!147183) #b01111111111111111111111111111110) (bvsge (x!29423 lt!147183) #b00000000000000000000000000000000) (bvsge (x!29423 lt!147183) #b00000000000000000000000000000000)))))

(assert (=> b!296340 (=> (not res!156170) (not e!187313))))

(declare-fun b!296341 () Bool)

(declare-fun e!187312 () SeekEntryResult!2270)

(declare-fun e!187310 () SeekEntryResult!2270)

(assert (=> b!296341 (= e!187312 e!187310)))

(declare-fun c!47663 () Bool)

(declare-fun lt!147182 () (_ BitVec 64))

(assert (=> b!296341 (= c!47663 (or (= lt!147182 k!2524) (= (bvadd lt!147182 lt!147182) #b0000000000000000000000000000000000000000000000000000000000000000)))))

