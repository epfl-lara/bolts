; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29836 () Bool)

(assert start!29836)

(declare-fun b!300083 () Bool)

(declare-fun res!158274 () Bool)

(declare-fun e!189510 () Bool)

(assert (=> b!300083 (=> (not res!158274) (not e!189510))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300083 (= res!158274 (validKeyInArray!0 k!2524))))

(declare-fun b!300084 () Bool)

(declare-fun res!158276 () Bool)

(assert (=> b!300084 (=> (not res!158276) (not e!189510))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((array!15162 0))(
  ( (array!15163 (arr!7176 (Array (_ BitVec 32) (_ BitVec 64))) (size!7528 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15162)

(assert (=> b!300084 (= res!158276 (and (= (size!7528 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7528 a!3312))))))

(declare-fun b!300085 () Bool)

(declare-fun res!158275 () Bool)

(assert (=> b!300085 (=> (not res!158275) (not e!189510))))

(declare-fun arrayContainsKey!0 (array!15162 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300085 (= res!158275 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!300086 () Bool)

(declare-fun res!158273 () Bool)

(declare-fun e!189511 () Bool)

(assert (=> b!300086 (=> (not res!158273) (not e!189511))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15162 (_ BitVec 32)) Bool)

(assert (=> b!300086 (= res!158273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun lt!149339 () Bool)

(declare-datatypes ((SeekEntryResult!2336 0))(
  ( (MissingZero!2336 (index!11520 (_ BitVec 32))) (Found!2336 (index!11521 (_ BitVec 32))) (Intermediate!2336 (undefined!3148 Bool) (index!11522 (_ BitVec 32)) (x!29735 (_ BitVec 32))) (Undefined!2336) (MissingVacant!2336 (index!11523 (_ BitVec 32))) )
))
(declare-fun lt!149342 () SeekEntryResult!2336)

(declare-fun lt!149341 () SeekEntryResult!2336)

(declare-fun b!300087 () Bool)

(assert (=> b!300087 (= e!189511 (and (not lt!149339) (= lt!149341 (MissingVacant!2336 i!1256)) (let ((bdg!6466 (not (is-Intermediate!2336 lt!149342)))) (and (or bdg!6466 (not (undefined!3148 lt!149342))) (or bdg!6466 (not (= (select (arr!7176 a!3312) (index!11522 lt!149342)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or bdg!6466 (not (= (select (arr!7176 a!3312) (index!11522 lt!149342)) k!2524))) (not bdg!6466)))))))

(declare-fun lt!149340 () (_ BitVec 32))

(declare-fun lt!149338 () SeekEntryResult!2336)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15162 (_ BitVec 32)) SeekEntryResult!2336)

(assert (=> b!300087 (= lt!149338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149340 k!2524 (array!15163 (store (arr!7176 a!3312) i!1256 k!2524) (size!7528 a!3312)) mask!3809))))

(assert (=> b!300087 (= lt!149342 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149340 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300087 (= lt!149340 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!158277 () Bool)

(assert (=> start!29836 (=> (not res!158277) (not e!189510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29836 (= res!158277 (validMask!0 mask!3809))))

(assert (=> start!29836 e!189510))

(assert (=> start!29836 true))

(declare-fun array_inv!5130 (array!15162) Bool)

(assert (=> start!29836 (array_inv!5130 a!3312)))

(declare-fun b!300082 () Bool)

(assert (=> b!300082 (= e!189510 e!189511)))

(declare-fun res!158272 () Bool)

(assert (=> b!300082 (=> (not res!158272) (not e!189511))))

(assert (=> b!300082 (= res!158272 (or lt!149339 (= lt!149341 (MissingVacant!2336 i!1256))))))

(assert (=> b!300082 (= lt!149339 (= lt!149341 (MissingZero!2336 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15162 (_ BitVec 32)) SeekEntryResult!2336)

(assert (=> b!300082 (= lt!149341 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!29836 res!158277) b!300084))

(assert (= (and b!300084 res!158276) b!300083))

(assert (= (and b!300083 res!158274) b!300085))

(assert (= (and b!300085 res!158275) b!300082))

(assert (= (and b!300082 res!158272) b!300086))

(assert (= (and b!300086 res!158273) b!300087))

(declare-fun m!312177 () Bool)

(assert (=> start!29836 m!312177))

(declare-fun m!312179 () Bool)

(assert (=> start!29836 m!312179))

(declare-fun m!312181 () Bool)

(assert (=> b!300082 m!312181))

(declare-fun m!312183 () Bool)

(assert (=> b!300086 m!312183))

(declare-fun m!312185 () Bool)

(assert (=> b!300085 m!312185))

(declare-fun m!312187 () Bool)

(assert (=> b!300087 m!312187))

(declare-fun m!312189 () Bool)

(assert (=> b!300087 m!312189))

(declare-fun m!312191 () Bool)

(assert (=> b!300087 m!312191))

(declare-fun m!312193 () Bool)

(assert (=> b!300087 m!312193))

(declare-fun m!312195 () Bool)

(assert (=> b!300087 m!312195))

(declare-fun m!312197 () Bool)

(assert (=> b!300083 m!312197))

(push 1)

(assert (not b!300082))

(assert (not start!29836))

(assert (not b!300083))

(assert (not b!300087))

(assert (not b!300086))

(assert (not b!300085))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67581 () Bool)

(declare-fun res!158288 () Bool)

(declare-fun e!189534 () Bool)

(assert (=> d!67581 (=> res!158288 e!189534)))

(assert (=> d!67581 (= res!158288 (= (select (arr!7176 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67581 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!189534)))

(declare-fun b!300122 () Bool)

(declare-fun e!189535 () Bool)

(assert (=> b!300122 (= e!189534 e!189535)))

(declare-fun res!158289 () Bool)

(assert (=> b!300122 (=> (not res!158289) (not e!189535))))

(assert (=> b!300122 (= res!158289 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7528 a!3312)))))

(declare-fun b!300123 () Bool)

(assert (=> b!300123 (= e!189535 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67581 (not res!158288)) b!300122))

(assert (= (and b!300122 res!158289) b!300123))

(declare-fun m!312223 () Bool)

(assert (=> d!67581 m!312223))

(declare-fun m!312225 () Bool)

(assert (=> b!300123 m!312225))

(assert (=> b!300085 d!67581))

(declare-fun b!300132 () Bool)

(declare-fun e!189543 () Bool)

(declare-fun call!25847 () Bool)

(assert (=> b!300132 (= e!189543 call!25847)))

(declare-fun b!300133 () Bool)

(declare-fun e!189544 () Bool)

(assert (=> b!300133 (= e!189544 e!189543)))

(declare-fun c!48512 () Bool)

(assert (=> b!300133 (= c!48512 (validKeyInArray!0 (select (arr!7176 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!300134 () Bool)

(declare-fun e!189542 () Bool)

(assert (=> b!300134 (= e!189543 e!189542)))

(declare-fun lt!149368 () (_ BitVec 64))

(assert (=> b!300134 (= lt!149368 (select (arr!7176 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9354 0))(
  ( (Unit!9355) )
))
(declare-fun lt!149369 () Unit!9354)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15162 (_ BitVec 64) (_ BitVec 32)) Unit!9354)

(assert (=> b!300134 (= lt!149369 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!149368 #b00000000000000000000000000000000))))

(assert (=> b!300134 (arrayContainsKey!0 a!3312 lt!149368 #b00000000000000000000000000000000)))

(declare-fun lt!149367 () Unit!9354)

(assert (=> b!300134 (= lt!149367 lt!149369)))

(declare-fun res!158294 () Bool)

(assert (=> b!300134 (= res!158294 (= (seekEntryOrOpen!0 (select (arr!7176 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2336 #b00000000000000000000000000000000)))))

(assert (=> b!300134 (=> (not res!158294) (not e!189542))))

(declare-fun d!67587 () Bool)

(declare-fun res!158295 () Bool)

(assert (=> d!67587 (=> res!158295 e!189544)))

(assert (=> d!67587 (= res!158295 (bvsge #b00000000000000000000000000000000 (size!7528 a!3312)))))

(assert (=> d!67587 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!189544)))

(declare-fun b!300135 () Bool)

(assert (=> b!300135 (= e!189542 call!25847)))

(declare-fun bm!25844 () Bool)

(assert (=> bm!25844 (= call!25847 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!67587 (not res!158295)) b!300133))

(assert (= (and b!300133 c!48512) b!300134))

(assert (= (and b!300133 (not c!48512)) b!300132))

(assert (= (and b!300134 res!158294) b!300135))

(assert (= (or b!300135 b!300132) bm!25844))

(assert (=> b!300133 m!312223))

(assert (=> b!300133 m!312223))

(declare-fun m!312227 () Bool)

(assert (=> b!300133 m!312227))

(assert (=> b!300134 m!312223))

(declare-fun m!312229 () Bool)

(assert (=> b!300134 m!312229))

(declare-fun m!312231 () Bool)

(assert (=> b!300134 m!312231))

(assert (=> b!300134 m!312223))

(declare-fun m!312233 () Bool)

(assert (=> b!300134 m!312233))

(declare-fun m!312235 () Bool)

(assert (=> bm!25844 m!312235))

(assert (=> b!300086 d!67587))

(declare-fun d!67591 () Bool)

(assert (=> d!67591 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29836 d!67591))

(declare-fun d!67595 () Bool)

(assert (=> d!67595 (= (array_inv!5130 a!3312) (bvsge (size!7528 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29836 d!67595))

(declare-fun b!300214 () Bool)

(declare-fun c!48541 () Bool)

(declare-fun lt!149399 () (_ BitVec 64))

(assert (=> b!300214 (= c!48541 (= lt!149399 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!189593 () SeekEntryResult!2336)

(declare-fun e!189592 () SeekEntryResult!2336)

(assert (=> b!300214 (= e!189593 e!189592)))

(declare-fun b!300215 () Bool)

(declare-fun lt!149400 () SeekEntryResult!2336)

(assert (=> b!300215 (= e!189592 (MissingZero!2336 (index!11522 lt!149400)))))

(declare-fun d!67597 () Bool)

(declare-fun lt!149401 () SeekEntryResult!2336)

(assert (=> d!67597 (and (or (is-Undefined!2336 lt!149401) (not (is-Found!2336 lt!149401)) (and (bvsge (index!11521 lt!149401) #b00000000000000000000000000000000) (bvslt (index!11521 lt!149401) (size!7528 a!3312)))) (or (is-Undefined!2336 lt!149401) (is-Found!2336 lt!149401) (not (is-MissingZero!2336 lt!149401)) (and (bvsge (index!11520 lt!149401) #b00000000000000000000000000000000) (bvslt (index!11520 lt!149401) (size!7528 a!3312)))) (or (is-Undefined!2336 lt!149401) (is-Found!2336 lt!149401) (is-MissingZero!2336 lt!149401) (not (is-MissingVacant!2336 lt!149401)) (and (bvsge (index!11523 lt!149401) #b00000000000000000000000000000000) (bvslt (index!11523 lt!149401) (size!7528 a!3312)))) (or (is-Undefined!2336 lt!149401) (ite (is-Found!2336 lt!149401) (= (select (arr!7176 a!3312) (index!11521 lt!149401)) k!2524) (ite (is-MissingZero!2336 lt!149401) (= (select (arr!7176 a!3312) (index!11520 lt!149401)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2336 lt!149401) (= (select (arr!7176 a!3312) (index!11523 lt!149401)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!189594 () SeekEntryResult!2336)

(assert (=> d!67597 (= lt!149401 e!189594)))

(declare-fun c!48540 () Bool)

(assert (=> d!67597 (= c!48540 (and (is-Intermediate!2336 lt!149400) (undefined!3148 lt!149400)))))

(assert (=> d!67597 (= lt!149400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67597 (validMask!0 mask!3809)))

(assert (=> d!67597 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!149401)))

(declare-fun b!300216 () Bool)

(assert (=> b!300216 (= e!189593 (Found!2336 (index!11522 lt!149400)))))

(declare-fun b!300217 () Bool)

(assert (=> b!300217 (= e!189594 e!189593)))

(assert (=> b!300217 (= lt!149399 (select (arr!7176 a!3312) (index!11522 lt!149400)))))

(declare-fun c!48542 () Bool)

(assert (=> b!300217 (= c!48542 (= lt!149399 k!2524))))

(declare-fun b!300218 () Bool)

(assert (=> b!300218 (= e!189594 Undefined!2336)))

(declare-fun b!300219 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15162 (_ BitVec 32)) SeekEntryResult!2336)

(assert (=> b!300219 (= e!189592 (seekKeyOrZeroReturnVacant!0 (x!29735 lt!149400) (index!11522 lt!149400) (index!11522 lt!149400) k!2524 a!3312 mask!3809))))

(assert (= (and d!67597 c!48540) b!300218))

(assert (= (and d!67597 (not c!48540)) b!300217))

(assert (= (and b!300217 c!48542) b!300216))

(assert (= (and b!300217 (not c!48542)) b!300214))

(assert (= (and b!300214 c!48541) b!300215))

(assert (= (and b!300214 (not c!48541)) b!300219))

(assert (=> d!67597 m!312177))

