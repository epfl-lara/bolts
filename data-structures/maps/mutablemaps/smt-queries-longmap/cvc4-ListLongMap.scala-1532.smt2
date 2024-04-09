; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29080 () Bool)

(assert start!29080)

(declare-fun b!295102 () Bool)

(declare-fun res!155170 () Bool)

(declare-fun e!186542 () Bool)

(assert (=> b!295102 (=> (not res!155170) (not e!186542))))

(declare-datatypes ((array!14925 0))(
  ( (array!14926 (arr!7074 (Array (_ BitVec 32) (_ BitVec 64))) (size!7426 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14925)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295102 (= res!155170 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295103 () Bool)

(declare-fun e!186540 () Bool)

(declare-fun e!186538 () Bool)

(assert (=> b!295103 (= e!186540 e!186538)))

(declare-fun res!155172 () Bool)

(assert (=> b!295103 (=> (not res!155172) (not e!186538))))

(declare-fun lt!146375 () Bool)

(assert (=> b!295103 (= res!155172 lt!146375)))

(declare-datatypes ((SeekEntryResult!2234 0))(
  ( (MissingZero!2234 (index!11106 (_ BitVec 32))) (Found!2234 (index!11107 (_ BitVec 32))) (Intermediate!2234 (undefined!3046 Bool) (index!11108 (_ BitVec 32)) (x!29285 (_ BitVec 32))) (Undefined!2234) (MissingVacant!2234 (index!11109 (_ BitVec 32))) )
))
(declare-fun lt!146373 () SeekEntryResult!2234)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!146371 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14925 (_ BitVec 32)) SeekEntryResult!2234)

(assert (=> b!295103 (= lt!146373 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146371 k!2524 (array!14926 (store (arr!7074 a!3312) i!1256 k!2524) (size!7426 a!3312)) mask!3809))))

(declare-fun lt!146372 () SeekEntryResult!2234)

(assert (=> b!295103 (= lt!146372 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146371 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295103 (= lt!146371 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295104 () Bool)

(declare-fun e!186541 () Bool)

(assert (=> b!295104 (= e!186541 (not (= (index!11108 lt!146372) i!1256)))))

(assert (=> b!295104 (= (select (arr!7074 a!3312) (index!11108 lt!146372)) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!295105 () Bool)

(assert (=> b!295105 (= e!186538 e!186541)))

(declare-fun res!155168 () Bool)

(assert (=> b!295105 (=> (not res!155168) (not e!186541))))

(declare-fun lt!146374 () Bool)

(assert (=> b!295105 (= res!155168 (and (or lt!146374 (not (undefined!3046 lt!146372))) (or lt!146374 (not (= (select (arr!7074 a!3312) (index!11108 lt!146372)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146374 (not (= (select (arr!7074 a!3312) (index!11108 lt!146372)) k!2524))) (not lt!146374)))))

(assert (=> b!295105 (= lt!146374 (not (is-Intermediate!2234 lt!146372)))))

(declare-fun b!295106 () Bool)

(declare-fun res!155165 () Bool)

(assert (=> b!295106 (=> (not res!155165) (not e!186542))))

(assert (=> b!295106 (= res!155165 (and (= (size!7426 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7426 a!3312))))))

(declare-fun b!295107 () Bool)

(declare-fun res!155166 () Bool)

(assert (=> b!295107 (=> (not res!155166) (not e!186540))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14925 (_ BitVec 32)) Bool)

(assert (=> b!295107 (= res!155166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!155169 () Bool)

(assert (=> start!29080 (=> (not res!155169) (not e!186542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29080 (= res!155169 (validMask!0 mask!3809))))

(assert (=> start!29080 e!186542))

(assert (=> start!29080 true))

(declare-fun array_inv!5028 (array!14925) Bool)

(assert (=> start!29080 (array_inv!5028 a!3312)))

(declare-fun b!295108 () Bool)

(declare-fun res!155171 () Bool)

(assert (=> b!295108 (=> (not res!155171) (not e!186542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295108 (= res!155171 (validKeyInArray!0 k!2524))))

(declare-fun b!295109 () Bool)

(assert (=> b!295109 (= e!186542 e!186540)))

(declare-fun res!155167 () Bool)

(assert (=> b!295109 (=> (not res!155167) (not e!186540))))

(declare-fun lt!146370 () SeekEntryResult!2234)

(assert (=> b!295109 (= res!155167 (or lt!146375 (= lt!146370 (MissingVacant!2234 i!1256))))))

(assert (=> b!295109 (= lt!146375 (= lt!146370 (MissingZero!2234 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14925 (_ BitVec 32)) SeekEntryResult!2234)

(assert (=> b!295109 (= lt!146370 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!29080 res!155169) b!295106))

(assert (= (and b!295106 res!155165) b!295108))

(assert (= (and b!295108 res!155171) b!295102))

(assert (= (and b!295102 res!155170) b!295109))

(assert (= (and b!295109 res!155167) b!295107))

(assert (= (and b!295107 res!155166) b!295103))

(assert (= (and b!295103 res!155172) b!295105))

(assert (= (and b!295105 res!155168) b!295104))

(declare-fun m!308341 () Bool)

(assert (=> b!295109 m!308341))

(declare-fun m!308343 () Bool)

(assert (=> b!295105 m!308343))

(declare-fun m!308345 () Bool)

(assert (=> b!295108 m!308345))

(declare-fun m!308347 () Bool)

(assert (=> b!295103 m!308347))

(declare-fun m!308349 () Bool)

(assert (=> b!295103 m!308349))

(declare-fun m!308351 () Bool)

(assert (=> b!295103 m!308351))

(declare-fun m!308353 () Bool)

(assert (=> b!295103 m!308353))

(declare-fun m!308355 () Bool)

(assert (=> b!295102 m!308355))

(declare-fun m!308357 () Bool)

(assert (=> start!29080 m!308357))

(declare-fun m!308359 () Bool)

(assert (=> start!29080 m!308359))

(declare-fun m!308361 () Bool)

(assert (=> b!295107 m!308361))

(assert (=> b!295104 m!308343))

(push 1)

(assert (not start!29080))

(assert (not b!295108))

(assert (not b!295107))

(assert (not b!295102))

(assert (not b!295109))

(assert (not b!295103))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66847 () Bool)

(declare-fun res!155183 () Bool)

(declare-fun e!186556 () Bool)

(assert (=> d!66847 (=> res!155183 e!186556)))

(assert (=> d!66847 (= res!155183 (= (select (arr!7074 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66847 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!186556)))

(declare-fun b!295126 () Bool)

(declare-fun e!186557 () Bool)

(assert (=> b!295126 (= e!186556 e!186557)))

(declare-fun res!155184 () Bool)

(assert (=> b!295126 (=> (not res!155184) (not e!186557))))

(assert (=> b!295126 (= res!155184 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7426 a!3312)))))

(declare-fun b!295127 () Bool)

(assert (=> b!295127 (= e!186557 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66847 (not res!155183)) b!295126))

(assert (= (and b!295126 res!155184) b!295127))

(declare-fun m!308375 () Bool)

(assert (=> d!66847 m!308375))

(declare-fun m!308377 () Bool)

(assert (=> b!295127 m!308377))

(assert (=> b!295102 d!66847))

(declare-fun d!66849 () Bool)

(declare-fun res!155202 () Bool)

(declare-fun e!186591 () Bool)

(assert (=> d!66849 (=> res!155202 e!186591)))

(assert (=> d!66849 (= res!155202 (bvsge #b00000000000000000000000000000000 (size!7426 a!3312)))))

(assert (=> d!66849 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!186591)))

(declare-fun b!295184 () Bool)

(declare-fun e!186592 () Bool)

(declare-fun call!25728 () Bool)

(assert (=> b!295184 (= e!186592 call!25728)))

(declare-fun bm!25725 () Bool)

(assert (=> bm!25725 (= call!25728 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!295185 () Bool)

(assert (=> b!295185 (= e!186591 e!186592)))

(declare-fun c!47568 () Bool)

(assert (=> b!295185 (= c!47568 (validKeyInArray!0 (select (arr!7074 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!295186 () Bool)

(declare-fun e!186590 () Bool)

(assert (=> b!295186 (= e!186592 e!186590)))

(declare-fun lt!146405 () (_ BitVec 64))

(assert (=> b!295186 (= lt!146405 (select (arr!7074 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9211 0))(
  ( (Unit!9212) )
))
(declare-fun lt!146406 () Unit!9211)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14925 (_ BitVec 64) (_ BitVec 32)) Unit!9211)

(assert (=> b!295186 (= lt!146406 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!146405 #b00000000000000000000000000000000))))

(assert (=> b!295186 (arrayContainsKey!0 a!3312 lt!146405 #b00000000000000000000000000000000)))

(declare-fun lt!146407 () Unit!9211)

(assert (=> b!295186 (= lt!146407 lt!146406)))

(declare-fun res!155201 () Bool)

(assert (=> b!295186 (= res!155201 (= (seekEntryOrOpen!0 (select (arr!7074 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2234 #b00000000000000000000000000000000)))))

(assert (=> b!295186 (=> (not res!155201) (not e!186590))))

(declare-fun b!295187 () Bool)

(assert (=> b!295187 (= e!186590 call!25728)))

(assert (= (and d!66849 (not res!155202)) b!295185))

(assert (= (and b!295185 c!47568) b!295186))

(assert (= (and b!295185 (not c!47568)) b!295184))

(assert (= (and b!295186 res!155201) b!295187))

(assert (= (or b!295187 b!295184) bm!25725))

(declare-fun m!308393 () Bool)

(assert (=> bm!25725 m!308393))

(assert (=> b!295185 m!308375))

(assert (=> b!295185 m!308375))

(declare-fun m!308395 () Bool)

(assert (=> b!295185 m!308395))

(assert (=> b!295186 m!308375))

(declare-fun m!308397 () Bool)

(assert (=> b!295186 m!308397))

(declare-fun m!308399 () Bool)

(assert (=> b!295186 m!308399))

(assert (=> b!295186 m!308375))

(declare-fun m!308401 () Bool)

(assert (=> b!295186 m!308401))

(assert (=> b!295107 d!66849))

(declare-fun b!295212 () Bool)

(declare-fun e!186609 () SeekEntryResult!2234)

(declare-fun lt!146424 () SeekEntryResult!2234)

(assert (=> b!295212 (= e!186609 (Found!2234 (index!11108 lt!146424)))))

(declare-fun d!66855 () Bool)

(declare-fun lt!146423 () SeekEntryResult!2234)

(assert (=> d!66855 (and (or (is-Undefined!2234 lt!146423) (not (is-Found!2234 lt!146423)) (and (bvsge (index!11107 lt!146423) #b00000000000000000000000000000000) (bvslt (index!11107 lt!146423) (size!7426 a!3312)))) (or (is-Undefined!2234 lt!146423) (is-Found!2234 lt!146423) (not (is-MissingZero!2234 lt!146423)) (and (bvsge (index!11106 lt!146423) #b00000000000000000000000000000000) (bvslt (index!11106 lt!146423) (size!7426 a!3312)))) (or (is-Undefined!2234 lt!146423) (is-Found!2234 lt!146423) (is-MissingZero!2234 lt!146423) (not (is-MissingVacant!2234 lt!146423)) (and (bvsge (index!11109 lt!146423) #b00000000000000000000000000000000) (bvslt (index!11109 lt!146423) (size!7426 a!3312)))) (or (is-Undefined!2234 lt!146423) (ite (is-Found!2234 lt!146423) (= (select (arr!7074 a!3312) (index!11107 lt!146423)) k!2524) (ite (is-MissingZero!2234 lt!146423) (= (select (arr!7074 a!3312) (index!11106 lt!146423)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2234 lt!146423) (= (select (arr!7074 a!3312) (index!11109 lt!146423)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!186610 () SeekEntryResult!2234)

(assert (=> d!66855 (= lt!146423 e!186610)))

(declare-fun c!47579 () Bool)

(assert (=> d!66855 (= c!47579 (and (is-Intermediate!2234 lt!146424) (undefined!3046 lt!146424)))))

(assert (=> d!66855 (= lt!146424 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66855 (validMask!0 mask!3809)))

(assert (=> d!66855 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!146423)))

(declare-fun b!295213 () Bool)

(declare-fun c!47580 () Bool)

(declare-fun lt!146425 () (_ BitVec 64))

(assert (=> b!295213 (= c!47580 (= lt!146425 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!186608 () SeekEntryResult!2234)

(assert (=> b!295213 (= e!186609 e!186608)))

(declare-fun b!295214 () Bool)

(assert (=> b!295214 (= e!186610 e!186609)))

(assert (=> b!295214 (= lt!146425 (select (arr!7074 a!3312) (index!11108 lt!146424)))))

(declare-fun c!47578 () Bool)

(assert (=> b!295214 (= c!47578 (= lt!146425 k!2524))))

(declare-fun b!295215 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14925 (_ BitVec 32)) SeekEntryResult!2234)

(assert (=> b!295215 (= e!186608 (seekKeyOrZeroReturnVacant!0 (x!29285 lt!146424) (index!11108 lt!146424) (index!11108 lt!146424) k!2524 a!3312 mask!3809))))

(declare-fun b!295216 () Bool)

(assert (=> b!295216 (= e!186608 (MissingZero!2234 (index!11108 lt!146424)))))

(declare-fun b!295217 () Bool)

(assert (=> b!295217 (= e!186610 Undefined!2234)))

(assert (= (and d!66855 c!47579) b!295217))

(assert (= (and d!66855 (not c!47579)) b!295214))

(assert (= (and b!295214 c!47578) b!295212))

(assert (= (and b!295214 (not c!47578)) b!295213))

(assert (= (and b!295213 c!47580) b!295216))

(assert (= (and b!295213 (not c!47580)) b!295215))

(declare-fun m!308419 () Bool)

(assert (=> d!66855 m!308419))

(declare-fun m!308421 () Bool)

(assert (=> d!66855 m!308421))

(assert (=> d!66855 m!308357))

(assert (=> d!66855 m!308353))

(declare-fun m!308423 () Bool)

(assert (=> d!66855 m!308423))

(assert (=> d!66855 m!308353))

(declare-fun m!308425 () Bool)

(assert (=> d!66855 m!308425))

(declare-fun m!308427 () Bool)

(assert (=> b!295214 m!308427))

(declare-fun m!308429 () Bool)

(assert (=> b!295215 m!308429))

(assert (=> b!295109 d!66855))

(declare-fun b!295296 () Bool)

(declare-fun lt!146447 () SeekEntryResult!2234)

(assert (=> b!295296 (and (bvsge (index!11108 lt!146447) #b00000000000000000000000000000000) (bvslt (index!11108 lt!146447) (size!7426 (array!14926 (store (arr!7074 a!3312) i!1256 k!2524) (size!7426 a!3312)))))))

(declare-fun res!155236 () Bool)

(assert (=> b!295296 (= res!155236 (= (select (arr!7074 (array!14926 (store (arr!7074 a!3312) i!1256 k!2524) (size!7426 a!3312))) (index!11108 lt!146447)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!186657 () Bool)

(assert (=> b!295296 (=> res!155236 e!186657)))

(declare-fun b!295297 () Bool)

(assert (=> b!295297 (and (bvsge (index!11108 lt!146447) #b00000000000000000000000000000000) (bvslt (index!11108 lt!146447) (size!7426 (array!14926 (store (arr!7074 a!3312) i!1256 k!2524) (size!7426 a!3312)))))))

(assert (=> b!295297 (= e!186657 (= (select (arr!7074 (array!14926 (store (arr!7074 a!3312) i!1256 k!2524) (size!7426 a!3312))) (index!11108 lt!146447)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!295298 () Bool)

(declare-fun e!186656 () SeekEntryResult!2234)

(assert (=> b!295298 (= e!186656 (Intermediate!2234 false lt!146371 #b00000000000000000000000000000000))))

(declare-fun b!295299 () Bool)

(assert (=> b!295299 (and (bvsge (index!11108 lt!146447) #b00000000000000000000000000000000) (bvslt (index!11108 lt!146447) (size!7426 (array!14926 (store (arr!7074 a!3312) i!1256 k!2524) (size!7426 a!3312)))))))

(declare-fun res!155235 () Bool)

(assert (=> b!295299 (= res!155235 (= (select (arr!7074 (array!14926 (store (arr!7074 a!3312) i!1256 k!2524) (size!7426 a!3312))) (index!11108 lt!146447)) k!2524))))

(assert (=> b!295299 (=> res!155235 e!186657)))

(declare-fun e!186659 () Bool)

(assert (=> b!295299 (= e!186659 e!186657)))

(declare-fun b!295300 () Bool)

(declare-fun e!186658 () Bool)

(assert (=> b!295300 (= e!186658 e!186659)))

(declare-fun res!155237 () Bool)

(assert (=> b!295300 (= res!155237 (and (is-Intermediate!2234 lt!146447) (not (undefined!3046 lt!146447)) (bvslt (x!29285 lt!146447) #b01111111111111111111111111111110) (bvsge (x!29285 lt!146447) #b00000000000000000000000000000000) (bvsge (x!29285 lt!146447) #b00000000000000000000000000000000)))))

(assert (=> b!295300 (=> (not res!155237) (not e!186659))))

(declare-fun b!295301 () Bool)

(declare-fun e!186660 () SeekEntryResult!2234)

(assert (=> b!295301 (= e!186660 e!186656)))

(declare-fun c!47609 () Bool)

(declare-fun lt!146448 () (_ BitVec 64))

(assert (=> b!295301 (= c!47609 (or (= lt!146448 k!2524) (= (bvadd lt!146448 lt!146448) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!295302 () Bool)

(assert (=> b!295302 (= e!186660 (Intermediate!2234 true lt!146371 #b00000000000000000000000000000000))))

(declare-fun b!295303 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295303 (= e!186656 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146371 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14926 (store (arr!7074 a!3312) i!1256 k!2524) (size!7426 a!3312)) mask!3809))))

(declare-fun b!295304 () Bool)

(assert (=> b!295304 (= e!186658 (bvsge (x!29285 lt!146447) #b01111111111111111111111111111110))))

(declare-fun d!66871 () Bool)

(assert (=> d!66871 e!186658))

(declare-fun c!47608 () Bool)

(assert (=> d!66871 (= c!47608 (and (is-Intermediate!2234 lt!146447) (undefined!3046 lt!146447)))))

(assert (=> d!66871 (= lt!146447 e!186660)))

(declare-fun c!47610 () Bool)

(assert (=> d!66871 (= c!47610 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66871 (= lt!146448 (select (arr!7074 (array!14926 (store (arr!7074 a!3312) i!1256 k!2524) (size!7426 a!3312))) lt!146371))))

(assert (=> d!66871 (validMask!0 mask!3809)))

(assert (=> d!66871 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146371 k!2524 (array!14926 (store (arr!7074 a!3312) i!1256 k!2524) (size!7426 a!3312)) mask!3809) lt!146447)))

(assert (= (and d!66871 c!47610) b!295302))

(assert (= (and d!66871 (not c!47610)) b!295301))

(assert (= (and b!295301 c!47609) b!295298))

(assert (= (and b!295301 (not c!47609)) b!295303))

(assert (= (and d!66871 c!47608) b!295304))

(assert (= (and d!66871 (not c!47608)) b!295300))

(assert (= (and b!295300 res!155237) b!295299))

(assert (= (and b!295299 (not res!155235)) b!295296))

