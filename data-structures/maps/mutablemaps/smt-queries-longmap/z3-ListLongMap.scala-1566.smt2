; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29834 () Bool)

(assert start!29834)

(declare-fun lt!149324 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun e!189501 () Bool)

(declare-datatypes ((SeekEntryResult!2335 0))(
  ( (MissingZero!2335 (index!11516 (_ BitVec 32))) (Found!2335 (index!11517 (_ BitVec 32))) (Intermediate!2335 (undefined!3147 Bool) (index!11518 (_ BitVec 32)) (x!29734 (_ BitVec 32))) (Undefined!2335) (MissingVacant!2335 (index!11519 (_ BitVec 32))) )
))
(declare-fun lt!149327 () SeekEntryResult!2335)

(declare-fun lt!149326 () SeekEntryResult!2335)

(declare-datatypes ((array!15160 0))(
  ( (array!15161 (arr!7175 (Array (_ BitVec 32) (_ BitVec 64))) (size!7527 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15160)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun b!300064 () Bool)

(get-info :version)

(assert (=> b!300064 (= e!189501 (and (not lt!149324) (= lt!149326 (MissingVacant!2335 i!1256)) (let ((bdg!6466 (not ((_ is Intermediate!2335) lt!149327)))) (and (or bdg!6466 (not (undefined!3147 lt!149327))) (or bdg!6466 (not (= (select (arr!7175 a!3312) (index!11518 lt!149327)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or bdg!6466 (not (= (select (arr!7175 a!3312) (index!11518 lt!149327)) k0!2524))) (not bdg!6466)))))))

(declare-fun lt!149323 () SeekEntryResult!2335)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!149325 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15160 (_ BitVec 32)) SeekEntryResult!2335)

(assert (=> b!300064 (= lt!149323 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149325 k0!2524 (array!15161 (store (arr!7175 a!3312) i!1256 k0!2524) (size!7527 a!3312)) mask!3809))))

(assert (=> b!300064 (= lt!149327 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149325 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300064 (= lt!149325 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!300065 () Bool)

(declare-fun res!158257 () Bool)

(declare-fun e!189502 () Bool)

(assert (=> b!300065 (=> (not res!158257) (not e!189502))))

(declare-fun arrayContainsKey!0 (array!15160 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300065 (= res!158257 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!300066 () Bool)

(declare-fun res!158259 () Bool)

(assert (=> b!300066 (=> (not res!158259) (not e!189501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15160 (_ BitVec 32)) Bool)

(assert (=> b!300066 (= res!158259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!300067 () Bool)

(declare-fun res!158254 () Bool)

(assert (=> b!300067 (=> (not res!158254) (not e!189502))))

(assert (=> b!300067 (= res!158254 (and (= (size!7527 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7527 a!3312))))))

(declare-fun b!300068 () Bool)

(assert (=> b!300068 (= e!189502 e!189501)))

(declare-fun res!158256 () Bool)

(assert (=> b!300068 (=> (not res!158256) (not e!189501))))

(assert (=> b!300068 (= res!158256 (or lt!149324 (= lt!149326 (MissingVacant!2335 i!1256))))))

(assert (=> b!300068 (= lt!149324 (= lt!149326 (MissingZero!2335 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15160 (_ BitVec 32)) SeekEntryResult!2335)

(assert (=> b!300068 (= lt!149326 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!300069 () Bool)

(declare-fun res!158258 () Bool)

(assert (=> b!300069 (=> (not res!158258) (not e!189502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300069 (= res!158258 (validKeyInArray!0 k0!2524))))

(declare-fun res!158255 () Bool)

(assert (=> start!29834 (=> (not res!158255) (not e!189502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29834 (= res!158255 (validMask!0 mask!3809))))

(assert (=> start!29834 e!189502))

(assert (=> start!29834 true))

(declare-fun array_inv!5129 (array!15160) Bool)

(assert (=> start!29834 (array_inv!5129 a!3312)))

(assert (= (and start!29834 res!158255) b!300067))

(assert (= (and b!300067 res!158254) b!300069))

(assert (= (and b!300069 res!158258) b!300065))

(assert (= (and b!300065 res!158257) b!300068))

(assert (= (and b!300068 res!158256) b!300066))

(assert (= (and b!300066 res!158259) b!300064))

(declare-fun m!312155 () Bool)

(assert (=> start!29834 m!312155))

(declare-fun m!312157 () Bool)

(assert (=> start!29834 m!312157))

(declare-fun m!312159 () Bool)

(assert (=> b!300069 m!312159))

(declare-fun m!312161 () Bool)

(assert (=> b!300064 m!312161))

(declare-fun m!312163 () Bool)

(assert (=> b!300064 m!312163))

(declare-fun m!312165 () Bool)

(assert (=> b!300064 m!312165))

(declare-fun m!312167 () Bool)

(assert (=> b!300064 m!312167))

(declare-fun m!312169 () Bool)

(assert (=> b!300064 m!312169))

(declare-fun m!312171 () Bool)

(assert (=> b!300068 m!312171))

(declare-fun m!312173 () Bool)

(assert (=> b!300065 m!312173))

(declare-fun m!312175 () Bool)

(assert (=> b!300066 m!312175))

(check-sat (not start!29834) (not b!300064) (not b!300069) (not b!300066) (not b!300068) (not b!300065))
(check-sat)
(get-model)

(declare-fun b!300096 () Bool)

(declare-fun e!189520 () Bool)

(declare-fun call!25844 () Bool)

(assert (=> b!300096 (= e!189520 call!25844)))

(declare-fun d!67571 () Bool)

(declare-fun res!158283 () Bool)

(declare-fun e!189519 () Bool)

(assert (=> d!67571 (=> res!158283 e!189519)))

(assert (=> d!67571 (= res!158283 (bvsge #b00000000000000000000000000000000 (size!7527 a!3312)))))

(assert (=> d!67571 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!189519)))

(declare-fun b!300097 () Bool)

(declare-fun e!189518 () Bool)

(assert (=> b!300097 (= e!189518 e!189520)))

(declare-fun lt!149350 () (_ BitVec 64))

(assert (=> b!300097 (= lt!149350 (select (arr!7175 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9352 0))(
  ( (Unit!9353) )
))
(declare-fun lt!149349 () Unit!9352)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15160 (_ BitVec 64) (_ BitVec 32)) Unit!9352)

(assert (=> b!300097 (= lt!149349 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!149350 #b00000000000000000000000000000000))))

(assert (=> b!300097 (arrayContainsKey!0 a!3312 lt!149350 #b00000000000000000000000000000000)))

(declare-fun lt!149351 () Unit!9352)

(assert (=> b!300097 (= lt!149351 lt!149349)))

(declare-fun res!158282 () Bool)

(assert (=> b!300097 (= res!158282 (= (seekEntryOrOpen!0 (select (arr!7175 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2335 #b00000000000000000000000000000000)))))

(assert (=> b!300097 (=> (not res!158282) (not e!189520))))

(declare-fun b!300098 () Bool)

(assert (=> b!300098 (= e!189519 e!189518)))

(declare-fun c!48500 () Bool)

(assert (=> b!300098 (= c!48500 (validKeyInArray!0 (select (arr!7175 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!300099 () Bool)

(assert (=> b!300099 (= e!189518 call!25844)))

(declare-fun bm!25841 () Bool)

(assert (=> bm!25841 (= call!25844 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!67571 (not res!158283)) b!300098))

(assert (= (and b!300098 c!48500) b!300097))

(assert (= (and b!300098 (not c!48500)) b!300099))

(assert (= (and b!300097 res!158282) b!300096))

(assert (= (or b!300096 b!300099) bm!25841))

(declare-fun m!312199 () Bool)

(assert (=> b!300097 m!312199))

(declare-fun m!312201 () Bool)

(assert (=> b!300097 m!312201))

(declare-fun m!312203 () Bool)

(assert (=> b!300097 m!312203))

(assert (=> b!300097 m!312199))

(declare-fun m!312205 () Bool)

(assert (=> b!300097 m!312205))

(assert (=> b!300098 m!312199))

(assert (=> b!300098 m!312199))

(declare-fun m!312207 () Bool)

(assert (=> b!300098 m!312207))

(declare-fun m!312209 () Bool)

(assert (=> bm!25841 m!312209))

(assert (=> b!300066 d!67571))

(declare-fun d!67573 () Bool)

(assert (=> d!67573 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29834 d!67573))

(declare-fun d!67575 () Bool)

(assert (=> d!67575 (= (array_inv!5129 a!3312) (bvsge (size!7527 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29834 d!67575))

(declare-fun d!67577 () Bool)

(declare-fun lt!149358 () SeekEntryResult!2335)

(assert (=> d!67577 (and (or ((_ is Undefined!2335) lt!149358) (not ((_ is Found!2335) lt!149358)) (and (bvsge (index!11517 lt!149358) #b00000000000000000000000000000000) (bvslt (index!11517 lt!149358) (size!7527 a!3312)))) (or ((_ is Undefined!2335) lt!149358) ((_ is Found!2335) lt!149358) (not ((_ is MissingZero!2335) lt!149358)) (and (bvsge (index!11516 lt!149358) #b00000000000000000000000000000000) (bvslt (index!11516 lt!149358) (size!7527 a!3312)))) (or ((_ is Undefined!2335) lt!149358) ((_ is Found!2335) lt!149358) ((_ is MissingZero!2335) lt!149358) (not ((_ is MissingVacant!2335) lt!149358)) (and (bvsge (index!11519 lt!149358) #b00000000000000000000000000000000) (bvslt (index!11519 lt!149358) (size!7527 a!3312)))) (or ((_ is Undefined!2335) lt!149358) (ite ((_ is Found!2335) lt!149358) (= (select (arr!7175 a!3312) (index!11517 lt!149358)) k0!2524) (ite ((_ is MissingZero!2335) lt!149358) (= (select (arr!7175 a!3312) (index!11516 lt!149358)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2335) lt!149358) (= (select (arr!7175 a!3312) (index!11519 lt!149358)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!189531 () SeekEntryResult!2335)

(assert (=> d!67577 (= lt!149358 e!189531)))

(declare-fun c!48509 () Bool)

(declare-fun lt!149360 () SeekEntryResult!2335)

(assert (=> d!67577 (= c!48509 (and ((_ is Intermediate!2335) lt!149360) (undefined!3147 lt!149360)))))

(assert (=> d!67577 (= lt!149360 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!67577 (validMask!0 mask!3809)))

(assert (=> d!67577 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!149358)))

(declare-fun b!300116 () Bool)

(assert (=> b!300116 (= e!189531 Undefined!2335)))

(declare-fun b!300117 () Bool)

(declare-fun e!189533 () SeekEntryResult!2335)

(assert (=> b!300117 (= e!189533 (Found!2335 (index!11518 lt!149360)))))

(declare-fun b!300118 () Bool)

(assert (=> b!300118 (= e!189531 e!189533)))

(declare-fun lt!149359 () (_ BitVec 64))

(assert (=> b!300118 (= lt!149359 (select (arr!7175 a!3312) (index!11518 lt!149360)))))

(declare-fun c!48508 () Bool)

(assert (=> b!300118 (= c!48508 (= lt!149359 k0!2524))))

(declare-fun b!300119 () Bool)

(declare-fun c!48507 () Bool)

(assert (=> b!300119 (= c!48507 (= lt!149359 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!189532 () SeekEntryResult!2335)

(assert (=> b!300119 (= e!189533 e!189532)))

(declare-fun b!300120 () Bool)

(assert (=> b!300120 (= e!189532 (MissingZero!2335 (index!11518 lt!149360)))))

(declare-fun b!300121 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15160 (_ BitVec 32)) SeekEntryResult!2335)

(assert (=> b!300121 (= e!189532 (seekKeyOrZeroReturnVacant!0 (x!29734 lt!149360) (index!11518 lt!149360) (index!11518 lt!149360) k0!2524 a!3312 mask!3809))))

(assert (= (and d!67577 c!48509) b!300116))

(assert (= (and d!67577 (not c!48509)) b!300118))

(assert (= (and b!300118 c!48508) b!300117))

(assert (= (and b!300118 (not c!48508)) b!300119))

(assert (= (and b!300119 c!48507) b!300120))

(assert (= (and b!300119 (not c!48507)) b!300121))

(declare-fun m!312211 () Bool)

(assert (=> d!67577 m!312211))

(assert (=> d!67577 m!312165))

(declare-fun m!312213 () Bool)

(assert (=> d!67577 m!312213))

(declare-fun m!312215 () Bool)

(assert (=> d!67577 m!312215))

(assert (=> d!67577 m!312165))

(declare-fun m!312217 () Bool)

(assert (=> d!67577 m!312217))

(assert (=> d!67577 m!312155))

(declare-fun m!312219 () Bool)

(assert (=> b!300118 m!312219))

(declare-fun m!312221 () Bool)

(assert (=> b!300121 m!312221))

(assert (=> b!300068 d!67577))

(declare-fun d!67585 () Bool)

(assert (=> d!67585 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!300069 d!67585))

(declare-fun b!300178 () Bool)

(declare-fun e!189573 () SeekEntryResult!2335)

(assert (=> b!300178 (= e!189573 (Intermediate!2335 false lt!149325 #b00000000000000000000000000000000))))

(declare-fun lt!149383 () SeekEntryResult!2335)

(declare-fun b!300180 () Bool)

(assert (=> b!300180 (and (bvsge (index!11518 lt!149383) #b00000000000000000000000000000000) (bvslt (index!11518 lt!149383) (size!7527 (array!15161 (store (arr!7175 a!3312) i!1256 k0!2524) (size!7527 a!3312)))))))

(declare-fun res!158309 () Bool)

(assert (=> b!300180 (= res!158309 (= (select (arr!7175 (array!15161 (store (arr!7175 a!3312) i!1256 k0!2524) (size!7527 a!3312))) (index!11518 lt!149383)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!189571 () Bool)

(assert (=> b!300180 (=> res!158309 e!189571)))

(declare-fun b!300181 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300181 (= e!189573 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!149325 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!15161 (store (arr!7175 a!3312) i!1256 k0!2524) (size!7527 a!3312)) mask!3809))))

(declare-fun b!300182 () Bool)

(assert (=> b!300182 (and (bvsge (index!11518 lt!149383) #b00000000000000000000000000000000) (bvslt (index!11518 lt!149383) (size!7527 (array!15161 (store (arr!7175 a!3312) i!1256 k0!2524) (size!7527 a!3312)))))))

(assert (=> b!300182 (= e!189571 (= (select (arr!7175 (array!15161 (store (arr!7175 a!3312) i!1256 k0!2524) (size!7527 a!3312))) (index!11518 lt!149383)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!300183 () Bool)

(assert (=> b!300183 (and (bvsge (index!11518 lt!149383) #b00000000000000000000000000000000) (bvslt (index!11518 lt!149383) (size!7527 (array!15161 (store (arr!7175 a!3312) i!1256 k0!2524) (size!7527 a!3312)))))))

(declare-fun res!158308 () Bool)

(assert (=> b!300183 (= res!158308 (= (select (arr!7175 (array!15161 (store (arr!7175 a!3312) i!1256 k0!2524) (size!7527 a!3312))) (index!11518 lt!149383)) k0!2524))))

(assert (=> b!300183 (=> res!158308 e!189571)))

(declare-fun e!189574 () Bool)

(assert (=> b!300183 (= e!189574 e!189571)))

(declare-fun b!300184 () Bool)

(declare-fun e!189572 () Bool)

(assert (=> b!300184 (= e!189572 (bvsge (x!29734 lt!149383) #b01111111111111111111111111111110))))

(declare-fun b!300185 () Bool)

(declare-fun e!189570 () SeekEntryResult!2335)

(assert (=> b!300185 (= e!189570 e!189573)))

(declare-fun c!48528 () Bool)

(declare-fun lt!149384 () (_ BitVec 64))

(assert (=> b!300185 (= c!48528 (or (= lt!149384 k0!2524) (= (bvadd lt!149384 lt!149384) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!300186 () Bool)

(assert (=> b!300186 (= e!189570 (Intermediate!2335 true lt!149325 #b00000000000000000000000000000000))))

(declare-fun d!67589 () Bool)

(assert (=> d!67589 e!189572))

(declare-fun c!48529 () Bool)

(assert (=> d!67589 (= c!48529 (and ((_ is Intermediate!2335) lt!149383) (undefined!3147 lt!149383)))))

(assert (=> d!67589 (= lt!149383 e!189570)))

(declare-fun c!48530 () Bool)

(assert (=> d!67589 (= c!48530 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67589 (= lt!149384 (select (arr!7175 (array!15161 (store (arr!7175 a!3312) i!1256 k0!2524) (size!7527 a!3312))) lt!149325))))

(assert (=> d!67589 (validMask!0 mask!3809)))

(assert (=> d!67589 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149325 k0!2524 (array!15161 (store (arr!7175 a!3312) i!1256 k0!2524) (size!7527 a!3312)) mask!3809) lt!149383)))

(declare-fun b!300179 () Bool)

(assert (=> b!300179 (= e!189572 e!189574)))

(declare-fun res!158310 () Bool)

(assert (=> b!300179 (= res!158310 (and ((_ is Intermediate!2335) lt!149383) (not (undefined!3147 lt!149383)) (bvslt (x!29734 lt!149383) #b01111111111111111111111111111110) (bvsge (x!29734 lt!149383) #b00000000000000000000000000000000) (bvsge (x!29734 lt!149383) #b00000000000000000000000000000000)))))

(assert (=> b!300179 (=> (not res!158310) (not e!189574))))

(assert (= (and d!67589 c!48530) b!300186))

(assert (= (and d!67589 (not c!48530)) b!300185))

(assert (= (and b!300185 c!48528) b!300178))

(assert (= (and b!300185 (not c!48528)) b!300181))

(assert (= (and d!67589 c!48529) b!300184))

(assert (= (and d!67589 (not c!48529)) b!300179))

(assert (= (and b!300179 res!158310) b!300183))

(assert (= (and b!300183 (not res!158308)) b!300180))

(assert (= (and b!300180 (not res!158309)) b!300182))

(declare-fun m!312253 () Bool)

(assert (=> b!300181 m!312253))

(assert (=> b!300181 m!312253))

(declare-fun m!312255 () Bool)

(assert (=> b!300181 m!312255))

(declare-fun m!312257 () Bool)

(assert (=> b!300182 m!312257))

(assert (=> b!300180 m!312257))

(assert (=> b!300183 m!312257))

(declare-fun m!312259 () Bool)

(assert (=> d!67589 m!312259))

(assert (=> d!67589 m!312155))

(assert (=> b!300064 d!67589))

(declare-fun b!300187 () Bool)

(declare-fun e!189578 () SeekEntryResult!2335)

(assert (=> b!300187 (= e!189578 (Intermediate!2335 false lt!149325 #b00000000000000000000000000000000))))

(declare-fun b!300189 () Bool)

(declare-fun lt!149385 () SeekEntryResult!2335)

(assert (=> b!300189 (and (bvsge (index!11518 lt!149385) #b00000000000000000000000000000000) (bvslt (index!11518 lt!149385) (size!7527 a!3312)))))

(declare-fun res!158312 () Bool)

(assert (=> b!300189 (= res!158312 (= (select (arr!7175 a!3312) (index!11518 lt!149385)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!189576 () Bool)

(assert (=> b!300189 (=> res!158312 e!189576)))

(declare-fun b!300190 () Bool)

(assert (=> b!300190 (= e!189578 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!149325 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!300191 () Bool)

(assert (=> b!300191 (and (bvsge (index!11518 lt!149385) #b00000000000000000000000000000000) (bvslt (index!11518 lt!149385) (size!7527 a!3312)))))

(assert (=> b!300191 (= e!189576 (= (select (arr!7175 a!3312) (index!11518 lt!149385)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!300192 () Bool)

(assert (=> b!300192 (and (bvsge (index!11518 lt!149385) #b00000000000000000000000000000000) (bvslt (index!11518 lt!149385) (size!7527 a!3312)))))

(declare-fun res!158311 () Bool)

(assert (=> b!300192 (= res!158311 (= (select (arr!7175 a!3312) (index!11518 lt!149385)) k0!2524))))

(assert (=> b!300192 (=> res!158311 e!189576)))

(declare-fun e!189579 () Bool)

(assert (=> b!300192 (= e!189579 e!189576)))

(declare-fun b!300193 () Bool)

(declare-fun e!189577 () Bool)

(assert (=> b!300193 (= e!189577 (bvsge (x!29734 lt!149385) #b01111111111111111111111111111110))))

(declare-fun b!300194 () Bool)

(declare-fun e!189575 () SeekEntryResult!2335)

(assert (=> b!300194 (= e!189575 e!189578)))

(declare-fun c!48531 () Bool)

(declare-fun lt!149386 () (_ BitVec 64))

(assert (=> b!300194 (= c!48531 (or (= lt!149386 k0!2524) (= (bvadd lt!149386 lt!149386) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!300195 () Bool)

(assert (=> b!300195 (= e!189575 (Intermediate!2335 true lt!149325 #b00000000000000000000000000000000))))

(declare-fun d!67601 () Bool)

(assert (=> d!67601 e!189577))

(declare-fun c!48532 () Bool)

(assert (=> d!67601 (= c!48532 (and ((_ is Intermediate!2335) lt!149385) (undefined!3147 lt!149385)))))

(assert (=> d!67601 (= lt!149385 e!189575)))

(declare-fun c!48533 () Bool)

(assert (=> d!67601 (= c!48533 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67601 (= lt!149386 (select (arr!7175 a!3312) lt!149325))))

(assert (=> d!67601 (validMask!0 mask!3809)))

(assert (=> d!67601 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149325 k0!2524 a!3312 mask!3809) lt!149385)))

(declare-fun b!300188 () Bool)

(assert (=> b!300188 (= e!189577 e!189579)))

(declare-fun res!158313 () Bool)

(assert (=> b!300188 (= res!158313 (and ((_ is Intermediate!2335) lt!149385) (not (undefined!3147 lt!149385)) (bvslt (x!29734 lt!149385) #b01111111111111111111111111111110) (bvsge (x!29734 lt!149385) #b00000000000000000000000000000000) (bvsge (x!29734 lt!149385) #b00000000000000000000000000000000)))))

(assert (=> b!300188 (=> (not res!158313) (not e!189579))))

(assert (= (and d!67601 c!48533) b!300195))

(assert (= (and d!67601 (not c!48533)) b!300194))

(assert (= (and b!300194 c!48531) b!300187))

(assert (= (and b!300194 (not c!48531)) b!300190))

(assert (= (and d!67601 c!48532) b!300193))

(assert (= (and d!67601 (not c!48532)) b!300188))

(assert (= (and b!300188 res!158313) b!300192))

(assert (= (and b!300192 (not res!158311)) b!300189))

(assert (= (and b!300189 (not res!158312)) b!300191))

(assert (=> b!300190 m!312253))

(assert (=> b!300190 m!312253))

(declare-fun m!312261 () Bool)

(assert (=> b!300190 m!312261))

(declare-fun m!312263 () Bool)

(assert (=> b!300191 m!312263))

(assert (=> b!300189 m!312263))

(assert (=> b!300192 m!312263))

(declare-fun m!312265 () Bool)

(assert (=> d!67601 m!312265))

(assert (=> d!67601 m!312155))

(assert (=> b!300064 d!67601))

(declare-fun d!67603 () Bool)

(declare-fun lt!149392 () (_ BitVec 32))

(declare-fun lt!149391 () (_ BitVec 32))

(assert (=> d!67603 (= lt!149392 (bvmul (bvxor lt!149391 (bvlshr lt!149391 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67603 (= lt!149391 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67603 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!158314 (let ((h!5342 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29737 (bvmul (bvxor h!5342 (bvlshr h!5342 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29737 (bvlshr x!29737 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!158314 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!158314 #b00000000000000000000000000000000))))))

(assert (=> d!67603 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!149392 (bvlshr lt!149392 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!300064 d!67603))

(declare-fun d!67605 () Bool)

(declare-fun res!158319 () Bool)

(declare-fun e!189584 () Bool)

(assert (=> d!67605 (=> res!158319 e!189584)))

(assert (=> d!67605 (= res!158319 (= (select (arr!7175 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!67605 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!189584)))

(declare-fun b!300200 () Bool)

(declare-fun e!189585 () Bool)

(assert (=> b!300200 (= e!189584 e!189585)))

(declare-fun res!158320 () Bool)

(assert (=> b!300200 (=> (not res!158320) (not e!189585))))

(assert (=> b!300200 (= res!158320 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7527 a!3312)))))

(declare-fun b!300201 () Bool)

(assert (=> b!300201 (= e!189585 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67605 (not res!158319)) b!300200))

(assert (= (and b!300200 res!158320) b!300201))

(assert (=> d!67605 m!312199))

(declare-fun m!312267 () Bool)

(assert (=> b!300201 m!312267))

(assert (=> b!300065 d!67605))

(check-sat (not b!300098) (not d!67601) (not b!300181) (not b!300121) (not b!300201) (not b!300097) (not bm!25841) (not b!300190) (not d!67589) (not d!67577))
(check-sat)
