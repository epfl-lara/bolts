; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29078 () Bool)

(assert start!29078)

(declare-fun b!295078 () Bool)

(declare-fun res!155141 () Bool)

(declare-fun e!186527 () Bool)

(assert (=> b!295078 (=> (not res!155141) (not e!186527))))

(declare-datatypes ((array!14923 0))(
  ( (array!14924 (arr!7073 (Array (_ BitVec 32) (_ BitVec 64))) (size!7425 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14923)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14923 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295078 (= res!155141 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295079 () Bool)

(declare-fun res!155143 () Bool)

(assert (=> b!295079 (=> (not res!155143) (not e!186527))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295079 (= res!155143 (validKeyInArray!0 k0!2524))))

(declare-fun b!295080 () Bool)

(declare-fun res!155146 () Bool)

(assert (=> b!295080 (=> (not res!155146) (not e!186527))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!295080 (= res!155146 (and (= (size!7425 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7425 a!3312))))))

(declare-fun b!295081 () Bool)

(declare-fun e!186523 () Bool)

(declare-datatypes ((SeekEntryResult!2233 0))(
  ( (MissingZero!2233 (index!11102 (_ BitVec 32))) (Found!2233 (index!11103 (_ BitVec 32))) (Intermediate!2233 (undefined!3045 Bool) (index!11104 (_ BitVec 32)) (x!29284 (_ BitVec 32))) (Undefined!2233) (MissingVacant!2233 (index!11105 (_ BitVec 32))) )
))
(declare-fun lt!146353 () SeekEntryResult!2233)

(assert (=> b!295081 (= e!186523 (not (= (index!11104 lt!146353) i!1256)))))

(assert (=> b!295081 (= (select (arr!7073 a!3312) (index!11104 lt!146353)) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!295082 () Bool)

(declare-fun e!186525 () Bool)

(declare-fun e!186524 () Bool)

(assert (=> b!295082 (= e!186525 e!186524)))

(declare-fun res!155142 () Bool)

(assert (=> b!295082 (=> (not res!155142) (not e!186524))))

(declare-fun lt!146357 () Bool)

(assert (=> b!295082 (= res!155142 lt!146357)))

(declare-fun lt!146354 () SeekEntryResult!2233)

(declare-fun lt!146356 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14923 (_ BitVec 32)) SeekEntryResult!2233)

(assert (=> b!295082 (= lt!146354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146356 k0!2524 (array!14924 (store (arr!7073 a!3312) i!1256 k0!2524) (size!7425 a!3312)) mask!3809))))

(assert (=> b!295082 (= lt!146353 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146356 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295082 (= lt!146356 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!155145 () Bool)

(assert (=> start!29078 (=> (not res!155145) (not e!186527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29078 (= res!155145 (validMask!0 mask!3809))))

(assert (=> start!29078 e!186527))

(assert (=> start!29078 true))

(declare-fun array_inv!5027 (array!14923) Bool)

(assert (=> start!29078 (array_inv!5027 a!3312)))

(declare-fun b!295083 () Bool)

(declare-fun res!155144 () Bool)

(assert (=> b!295083 (=> (not res!155144) (not e!186525))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14923 (_ BitVec 32)) Bool)

(assert (=> b!295083 (= res!155144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295084 () Bool)

(assert (=> b!295084 (= e!186527 e!186525)))

(declare-fun res!155148 () Bool)

(assert (=> b!295084 (=> (not res!155148) (not e!186525))))

(declare-fun lt!146355 () SeekEntryResult!2233)

(assert (=> b!295084 (= res!155148 (or lt!146357 (= lt!146355 (MissingVacant!2233 i!1256))))))

(assert (=> b!295084 (= lt!146357 (= lt!146355 (MissingZero!2233 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14923 (_ BitVec 32)) SeekEntryResult!2233)

(assert (=> b!295084 (= lt!146355 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!295085 () Bool)

(assert (=> b!295085 (= e!186524 e!186523)))

(declare-fun res!155147 () Bool)

(assert (=> b!295085 (=> (not res!155147) (not e!186523))))

(declare-fun lt!146352 () Bool)

(assert (=> b!295085 (= res!155147 (and (or lt!146352 (not (undefined!3045 lt!146353))) (or lt!146352 (not (= (select (arr!7073 a!3312) (index!11104 lt!146353)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146352 (not (= (select (arr!7073 a!3312) (index!11104 lt!146353)) k0!2524))) (not lt!146352)))))

(get-info :version)

(assert (=> b!295085 (= lt!146352 (not ((_ is Intermediate!2233) lt!146353)))))

(assert (= (and start!29078 res!155145) b!295080))

(assert (= (and b!295080 res!155146) b!295079))

(assert (= (and b!295079 res!155143) b!295078))

(assert (= (and b!295078 res!155141) b!295084))

(assert (= (and b!295084 res!155148) b!295083))

(assert (= (and b!295083 res!155144) b!295082))

(assert (= (and b!295082 res!155142) b!295085))

(assert (= (and b!295085 res!155147) b!295081))

(declare-fun m!308319 () Bool)

(assert (=> b!295081 m!308319))

(declare-fun m!308321 () Bool)

(assert (=> b!295084 m!308321))

(declare-fun m!308323 () Bool)

(assert (=> b!295079 m!308323))

(declare-fun m!308325 () Bool)

(assert (=> b!295083 m!308325))

(declare-fun m!308327 () Bool)

(assert (=> start!29078 m!308327))

(declare-fun m!308329 () Bool)

(assert (=> start!29078 m!308329))

(assert (=> b!295085 m!308319))

(declare-fun m!308331 () Bool)

(assert (=> b!295082 m!308331))

(declare-fun m!308333 () Bool)

(assert (=> b!295082 m!308333))

(declare-fun m!308335 () Bool)

(assert (=> b!295082 m!308335))

(declare-fun m!308337 () Bool)

(assert (=> b!295082 m!308337))

(declare-fun m!308339 () Bool)

(assert (=> b!295078 m!308339))

(check-sat (not b!295079) (not start!29078) (not b!295084) (not b!295083) (not b!295082) (not b!295078))
(check-sat)
(get-model)

(declare-fun b!295118 () Bool)

(declare-fun e!186550 () Bool)

(declare-fun call!25725 () Bool)

(assert (=> b!295118 (= e!186550 call!25725)))

(declare-fun b!295119 () Bool)

(declare-fun e!186551 () Bool)

(assert (=> b!295119 (= e!186551 call!25725)))

(declare-fun d!66841 () Bool)

(declare-fun res!155177 () Bool)

(declare-fun e!186549 () Bool)

(assert (=> d!66841 (=> res!155177 e!186549)))

(assert (=> d!66841 (= res!155177 (bvsge #b00000000000000000000000000000000 (size!7425 a!3312)))))

(assert (=> d!66841 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!186549)))

(declare-fun bm!25722 () Bool)

(assert (=> bm!25722 (= call!25725 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!295120 () Bool)

(assert (=> b!295120 (= e!186551 e!186550)))

(declare-fun lt!146382 () (_ BitVec 64))

(assert (=> b!295120 (= lt!146382 (select (arr!7073 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9209 0))(
  ( (Unit!9210) )
))
(declare-fun lt!146384 () Unit!9209)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14923 (_ BitVec 64) (_ BitVec 32)) Unit!9209)

(assert (=> b!295120 (= lt!146384 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!146382 #b00000000000000000000000000000000))))

(assert (=> b!295120 (arrayContainsKey!0 a!3312 lt!146382 #b00000000000000000000000000000000)))

(declare-fun lt!146383 () Unit!9209)

(assert (=> b!295120 (= lt!146383 lt!146384)))

(declare-fun res!155178 () Bool)

(assert (=> b!295120 (= res!155178 (= (seekEntryOrOpen!0 (select (arr!7073 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2233 #b00000000000000000000000000000000)))))

(assert (=> b!295120 (=> (not res!155178) (not e!186550))))

(declare-fun b!295121 () Bool)

(assert (=> b!295121 (= e!186549 e!186551)))

(declare-fun c!47547 () Bool)

(assert (=> b!295121 (= c!47547 (validKeyInArray!0 (select (arr!7073 a!3312) #b00000000000000000000000000000000)))))

(assert (= (and d!66841 (not res!155177)) b!295121))

(assert (= (and b!295121 c!47547) b!295120))

(assert (= (and b!295121 (not c!47547)) b!295119))

(assert (= (and b!295120 res!155178) b!295118))

(assert (= (or b!295118 b!295119) bm!25722))

(declare-fun m!308363 () Bool)

(assert (=> bm!25722 m!308363))

(declare-fun m!308365 () Bool)

(assert (=> b!295120 m!308365))

(declare-fun m!308367 () Bool)

(assert (=> b!295120 m!308367))

(declare-fun m!308369 () Bool)

(assert (=> b!295120 m!308369))

(assert (=> b!295120 m!308365))

(declare-fun m!308371 () Bool)

(assert (=> b!295120 m!308371))

(assert (=> b!295121 m!308365))

(assert (=> b!295121 m!308365))

(declare-fun m!308373 () Bool)

(assert (=> b!295121 m!308373))

(assert (=> b!295083 d!66841))

(declare-fun d!66843 () Bool)

(declare-fun e!186584 () Bool)

(assert (=> d!66843 e!186584))

(declare-fun c!47564 () Bool)

(declare-fun lt!146401 () SeekEntryResult!2233)

(assert (=> d!66843 (= c!47564 (and ((_ is Intermediate!2233) lt!146401) (undefined!3045 lt!146401)))))

(declare-fun e!186580 () SeekEntryResult!2233)

(assert (=> d!66843 (= lt!146401 e!186580)))

(declare-fun c!47562 () Bool)

(assert (=> d!66843 (= c!47562 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!146402 () (_ BitVec 64))

(assert (=> d!66843 (= lt!146402 (select (arr!7073 (array!14924 (store (arr!7073 a!3312) i!1256 k0!2524) (size!7425 a!3312))) lt!146356))))

(assert (=> d!66843 (validMask!0 mask!3809)))

(assert (=> d!66843 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146356 k0!2524 (array!14924 (store (arr!7073 a!3312) i!1256 k0!2524) (size!7425 a!3312)) mask!3809) lt!146401)))

(declare-fun b!295166 () Bool)

(declare-fun e!186583 () SeekEntryResult!2233)

(assert (=> b!295166 (= e!186580 e!186583)))

(declare-fun c!47563 () Bool)

(assert (=> b!295166 (= c!47563 (or (= lt!146402 k0!2524) (= (bvadd lt!146402 lt!146402) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!295167 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295167 (= e!186583 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146356 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!14924 (store (arr!7073 a!3312) i!1256 k0!2524) (size!7425 a!3312)) mask!3809))))

(declare-fun b!295168 () Bool)

(declare-fun e!186581 () Bool)

(assert (=> b!295168 (= e!186584 e!186581)))

(declare-fun res!155195 () Bool)

(assert (=> b!295168 (= res!155195 (and ((_ is Intermediate!2233) lt!146401) (not (undefined!3045 lt!146401)) (bvslt (x!29284 lt!146401) #b01111111111111111111111111111110) (bvsge (x!29284 lt!146401) #b00000000000000000000000000000000) (bvsge (x!29284 lt!146401) #b00000000000000000000000000000000)))))

(assert (=> b!295168 (=> (not res!155195) (not e!186581))))

(declare-fun b!295169 () Bool)

(assert (=> b!295169 (= e!186580 (Intermediate!2233 true lt!146356 #b00000000000000000000000000000000))))

(declare-fun b!295170 () Bool)

(assert (=> b!295170 (and (bvsge (index!11104 lt!146401) #b00000000000000000000000000000000) (bvslt (index!11104 lt!146401) (size!7425 (array!14924 (store (arr!7073 a!3312) i!1256 k0!2524) (size!7425 a!3312)))))))

(declare-fun e!186582 () Bool)

(assert (=> b!295170 (= e!186582 (= (select (arr!7073 (array!14924 (store (arr!7073 a!3312) i!1256 k0!2524) (size!7425 a!3312))) (index!11104 lt!146401)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!295171 () Bool)

(assert (=> b!295171 (= e!186584 (bvsge (x!29284 lt!146401) #b01111111111111111111111111111110))))

(declare-fun b!295172 () Bool)

(assert (=> b!295172 (and (bvsge (index!11104 lt!146401) #b00000000000000000000000000000000) (bvslt (index!11104 lt!146401) (size!7425 (array!14924 (store (arr!7073 a!3312) i!1256 k0!2524) (size!7425 a!3312)))))))

(declare-fun res!155196 () Bool)

(assert (=> b!295172 (= res!155196 (= (select (arr!7073 (array!14924 (store (arr!7073 a!3312) i!1256 k0!2524) (size!7425 a!3312))) (index!11104 lt!146401)) k0!2524))))

(assert (=> b!295172 (=> res!155196 e!186582)))

(assert (=> b!295172 (= e!186581 e!186582)))

(declare-fun b!295173 () Bool)

(assert (=> b!295173 (and (bvsge (index!11104 lt!146401) #b00000000000000000000000000000000) (bvslt (index!11104 lt!146401) (size!7425 (array!14924 (store (arr!7073 a!3312) i!1256 k0!2524) (size!7425 a!3312)))))))

(declare-fun res!155197 () Bool)

(assert (=> b!295173 (= res!155197 (= (select (arr!7073 (array!14924 (store (arr!7073 a!3312) i!1256 k0!2524) (size!7425 a!3312))) (index!11104 lt!146401)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!295173 (=> res!155197 e!186582)))

(declare-fun b!295174 () Bool)

(assert (=> b!295174 (= e!186583 (Intermediate!2233 false lt!146356 #b00000000000000000000000000000000))))

(assert (= (and d!66843 c!47562) b!295169))

(assert (= (and d!66843 (not c!47562)) b!295166))

(assert (= (and b!295166 c!47563) b!295174))

(assert (= (and b!295166 (not c!47563)) b!295167))

(assert (= (and d!66843 c!47564) b!295171))

(assert (= (and d!66843 (not c!47564)) b!295168))

(assert (= (and b!295168 res!155195) b!295172))

(assert (= (and b!295172 (not res!155196)) b!295173))

(assert (= (and b!295173 (not res!155197)) b!295170))

(declare-fun m!308379 () Bool)

(assert (=> b!295167 m!308379))

(assert (=> b!295167 m!308379))

(declare-fun m!308381 () Bool)

(assert (=> b!295167 m!308381))

(declare-fun m!308383 () Bool)

(assert (=> b!295170 m!308383))

(assert (=> b!295172 m!308383))

(assert (=> b!295173 m!308383))

(declare-fun m!308385 () Bool)

(assert (=> d!66843 m!308385))

(assert (=> d!66843 m!308327))

(assert (=> b!295082 d!66843))

(declare-fun d!66851 () Bool)

(declare-fun e!186589 () Bool)

(assert (=> d!66851 e!186589))

(declare-fun c!47567 () Bool)

(declare-fun lt!146403 () SeekEntryResult!2233)

(assert (=> d!66851 (= c!47567 (and ((_ is Intermediate!2233) lt!146403) (undefined!3045 lt!146403)))))

(declare-fun e!186585 () SeekEntryResult!2233)

(assert (=> d!66851 (= lt!146403 e!186585)))

(declare-fun c!47565 () Bool)

(assert (=> d!66851 (= c!47565 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!146404 () (_ BitVec 64))

(assert (=> d!66851 (= lt!146404 (select (arr!7073 a!3312) lt!146356))))

(assert (=> d!66851 (validMask!0 mask!3809)))

(assert (=> d!66851 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146356 k0!2524 a!3312 mask!3809) lt!146403)))

(declare-fun b!295175 () Bool)

(declare-fun e!186588 () SeekEntryResult!2233)

(assert (=> b!295175 (= e!186585 e!186588)))

(declare-fun c!47566 () Bool)

(assert (=> b!295175 (= c!47566 (or (= lt!146404 k0!2524) (= (bvadd lt!146404 lt!146404) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!295176 () Bool)

(assert (=> b!295176 (= e!186588 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146356 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!295177 () Bool)

(declare-fun e!186586 () Bool)

(assert (=> b!295177 (= e!186589 e!186586)))

(declare-fun res!155198 () Bool)

(assert (=> b!295177 (= res!155198 (and ((_ is Intermediate!2233) lt!146403) (not (undefined!3045 lt!146403)) (bvslt (x!29284 lt!146403) #b01111111111111111111111111111110) (bvsge (x!29284 lt!146403) #b00000000000000000000000000000000) (bvsge (x!29284 lt!146403) #b00000000000000000000000000000000)))))

(assert (=> b!295177 (=> (not res!155198) (not e!186586))))

(declare-fun b!295178 () Bool)

(assert (=> b!295178 (= e!186585 (Intermediate!2233 true lt!146356 #b00000000000000000000000000000000))))

(declare-fun b!295179 () Bool)

(assert (=> b!295179 (and (bvsge (index!11104 lt!146403) #b00000000000000000000000000000000) (bvslt (index!11104 lt!146403) (size!7425 a!3312)))))

(declare-fun e!186587 () Bool)

(assert (=> b!295179 (= e!186587 (= (select (arr!7073 a!3312) (index!11104 lt!146403)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!295180 () Bool)

(assert (=> b!295180 (= e!186589 (bvsge (x!29284 lt!146403) #b01111111111111111111111111111110))))

(declare-fun b!295181 () Bool)

(assert (=> b!295181 (and (bvsge (index!11104 lt!146403) #b00000000000000000000000000000000) (bvslt (index!11104 lt!146403) (size!7425 a!3312)))))

(declare-fun res!155199 () Bool)

(assert (=> b!295181 (= res!155199 (= (select (arr!7073 a!3312) (index!11104 lt!146403)) k0!2524))))

(assert (=> b!295181 (=> res!155199 e!186587)))

(assert (=> b!295181 (= e!186586 e!186587)))

(declare-fun b!295182 () Bool)

(assert (=> b!295182 (and (bvsge (index!11104 lt!146403) #b00000000000000000000000000000000) (bvslt (index!11104 lt!146403) (size!7425 a!3312)))))

(declare-fun res!155200 () Bool)

(assert (=> b!295182 (= res!155200 (= (select (arr!7073 a!3312) (index!11104 lt!146403)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!295182 (=> res!155200 e!186587)))

(declare-fun b!295183 () Bool)

(assert (=> b!295183 (= e!186588 (Intermediate!2233 false lt!146356 #b00000000000000000000000000000000))))

(assert (= (and d!66851 c!47565) b!295178))

(assert (= (and d!66851 (not c!47565)) b!295175))

(assert (= (and b!295175 c!47566) b!295183))

(assert (= (and b!295175 (not c!47566)) b!295176))

(assert (= (and d!66851 c!47567) b!295180))

(assert (= (and d!66851 (not c!47567)) b!295177))

(assert (= (and b!295177 res!155198) b!295181))

(assert (= (and b!295181 (not res!155199)) b!295182))

(assert (= (and b!295182 (not res!155200)) b!295179))

(assert (=> b!295176 m!308379))

(assert (=> b!295176 m!308379))

(declare-fun m!308387 () Bool)

(assert (=> b!295176 m!308387))

(declare-fun m!308389 () Bool)

(assert (=> b!295179 m!308389))

(assert (=> b!295181 m!308389))

(assert (=> b!295182 m!308389))

(declare-fun m!308391 () Bool)

(assert (=> d!66851 m!308391))

(assert (=> d!66851 m!308327))

(assert (=> b!295082 d!66851))

(declare-fun d!66853 () Bool)

(declare-fun lt!146416 () (_ BitVec 32))

(declare-fun lt!146415 () (_ BitVec 32))

(assert (=> d!66853 (= lt!146416 (bvmul (bvxor lt!146415 (bvlshr lt!146415 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66853 (= lt!146415 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66853 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!155203 (let ((h!5309 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29287 (bvmul (bvxor h!5309 (bvlshr h!5309 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29287 (bvlshr x!29287 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!155203 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!155203 #b00000000000000000000000000000000))))))

(assert (=> d!66853 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!146416 (bvlshr lt!146416 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!295082 d!66853))

(declare-fun d!66863 () Bool)

(assert (=> d!66863 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!295079 d!66863))

(declare-fun b!295230 () Bool)

(declare-fun e!186619 () SeekEntryResult!2233)

(assert (=> b!295230 (= e!186619 Undefined!2233)))

(declare-fun b!295231 () Bool)

(declare-fun e!186618 () SeekEntryResult!2233)

(declare-fun lt!146433 () SeekEntryResult!2233)

(assert (=> b!295231 (= e!186618 (MissingZero!2233 (index!11104 lt!146433)))))

(declare-fun b!295232 () Bool)

(declare-fun c!47587 () Bool)

(declare-fun lt!146432 () (_ BitVec 64))

(assert (=> b!295232 (= c!47587 (= lt!146432 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!186617 () SeekEntryResult!2233)

(assert (=> b!295232 (= e!186617 e!186618)))

(declare-fun b!295233 () Bool)

(assert (=> b!295233 (= e!186619 e!186617)))

(assert (=> b!295233 (= lt!146432 (select (arr!7073 a!3312) (index!11104 lt!146433)))))

(declare-fun c!47589 () Bool)

(assert (=> b!295233 (= c!47589 (= lt!146432 k0!2524))))

(declare-fun b!295234 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14923 (_ BitVec 32)) SeekEntryResult!2233)

(assert (=> b!295234 (= e!186618 (seekKeyOrZeroReturnVacant!0 (x!29284 lt!146433) (index!11104 lt!146433) (index!11104 lt!146433) k0!2524 a!3312 mask!3809))))

(declare-fun b!295235 () Bool)

(assert (=> b!295235 (= e!186617 (Found!2233 (index!11104 lt!146433)))))

(declare-fun d!66865 () Bool)

(declare-fun lt!146434 () SeekEntryResult!2233)

(assert (=> d!66865 (and (or ((_ is Undefined!2233) lt!146434) (not ((_ is Found!2233) lt!146434)) (and (bvsge (index!11103 lt!146434) #b00000000000000000000000000000000) (bvslt (index!11103 lt!146434) (size!7425 a!3312)))) (or ((_ is Undefined!2233) lt!146434) ((_ is Found!2233) lt!146434) (not ((_ is MissingZero!2233) lt!146434)) (and (bvsge (index!11102 lt!146434) #b00000000000000000000000000000000) (bvslt (index!11102 lt!146434) (size!7425 a!3312)))) (or ((_ is Undefined!2233) lt!146434) ((_ is Found!2233) lt!146434) ((_ is MissingZero!2233) lt!146434) (not ((_ is MissingVacant!2233) lt!146434)) (and (bvsge (index!11105 lt!146434) #b00000000000000000000000000000000) (bvslt (index!11105 lt!146434) (size!7425 a!3312)))) (or ((_ is Undefined!2233) lt!146434) (ite ((_ is Found!2233) lt!146434) (= (select (arr!7073 a!3312) (index!11103 lt!146434)) k0!2524) (ite ((_ is MissingZero!2233) lt!146434) (= (select (arr!7073 a!3312) (index!11102 lt!146434)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2233) lt!146434) (= (select (arr!7073 a!3312) (index!11105 lt!146434)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66865 (= lt!146434 e!186619)))

(declare-fun c!47588 () Bool)

(assert (=> d!66865 (= c!47588 (and ((_ is Intermediate!2233) lt!146433) (undefined!3045 lt!146433)))))

(assert (=> d!66865 (= lt!146433 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!66865 (validMask!0 mask!3809)))

(assert (=> d!66865 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!146434)))

(assert (= (and d!66865 c!47588) b!295230))

(assert (= (and d!66865 (not c!47588)) b!295233))

(assert (= (and b!295233 c!47589) b!295235))

(assert (= (and b!295233 (not c!47589)) b!295232))

(assert (= (and b!295232 c!47587) b!295231))

(assert (= (and b!295232 (not c!47587)) b!295234))

(declare-fun m!308431 () Bool)

(assert (=> b!295233 m!308431))

(declare-fun m!308433 () Bool)

(assert (=> b!295234 m!308433))

(assert (=> d!66865 m!308337))

(declare-fun m!308435 () Bool)

(assert (=> d!66865 m!308435))

(assert (=> d!66865 m!308337))

(declare-fun m!308437 () Bool)

(assert (=> d!66865 m!308437))

(assert (=> d!66865 m!308327))

(declare-fun m!308439 () Bool)

(assert (=> d!66865 m!308439))

(declare-fun m!308441 () Bool)

(assert (=> d!66865 m!308441))

(assert (=> b!295084 d!66865))

(declare-fun d!66873 () Bool)

(assert (=> d!66873 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29078 d!66873))

(declare-fun d!66875 () Bool)

(assert (=> d!66875 (= (array_inv!5027 a!3312) (bvsge (size!7425 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29078 d!66875))

(declare-fun d!66879 () Bool)

(declare-fun res!155233 () Bool)

(declare-fun e!186654 () Bool)

(assert (=> d!66879 (=> res!155233 e!186654)))

(assert (=> d!66879 (= res!155233 (= (select (arr!7073 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!66879 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!186654)))

(declare-fun b!295294 () Bool)

(declare-fun e!186655 () Bool)

(assert (=> b!295294 (= e!186654 e!186655)))

(declare-fun res!155234 () Bool)

(assert (=> b!295294 (=> (not res!155234) (not e!186655))))

(assert (=> b!295294 (= res!155234 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7425 a!3312)))))

(declare-fun b!295295 () Bool)

(assert (=> b!295295 (= e!186655 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66879 (not res!155233)) b!295294))

(assert (= (and b!295294 res!155234) b!295295))

(assert (=> d!66879 m!308365))

(declare-fun m!308457 () Bool)

(assert (=> b!295295 m!308457))

(assert (=> b!295078 d!66879))

(check-sat (not b!295234) (not bm!25722) (not d!66851) (not d!66843) (not b!295120) (not d!66865) (not b!295121) (not b!295167) (not b!295295) (not b!295176))
(check-sat)
