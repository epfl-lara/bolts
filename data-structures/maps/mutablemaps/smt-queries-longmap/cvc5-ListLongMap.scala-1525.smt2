; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28690 () Bool)

(assert start!28690)

(declare-fun b!293101 () Bool)

(declare-fun res!154199 () Bool)

(declare-fun e!185357 () Bool)

(assert (=> b!293101 (=> (not res!154199) (not e!185357))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293101 (= res!154199 (validKeyInArray!0 k!2524))))

(declare-fun b!293102 () Bool)

(declare-fun res!154197 () Bool)

(declare-fun e!185359 () Bool)

(assert (=> b!293102 (=> (not res!154197) (not e!185359))))

(declare-datatypes ((array!14858 0))(
  ( (array!14859 (arr!7051 (Array (_ BitVec 32) (_ BitVec 64))) (size!7403 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14858)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14858 (_ BitVec 32)) Bool)

(assert (=> b!293102 (= res!154197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!154196 () Bool)

(assert (=> start!28690 (=> (not res!154196) (not e!185357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28690 (= res!154196 (validMask!0 mask!3809))))

(assert (=> start!28690 e!185357))

(assert (=> start!28690 true))

(declare-fun array_inv!5005 (array!14858) Bool)

(assert (=> start!28690 (array_inv!5005 a!3312)))

(declare-fun b!293103 () Bool)

(assert (=> b!293103 (= e!185357 e!185359)))

(declare-fun res!154195 () Bool)

(assert (=> b!293103 (=> (not res!154195) (not e!185359))))

(declare-fun lt!145322 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2211 0))(
  ( (MissingZero!2211 (index!11014 (_ BitVec 32))) (Found!2211 (index!11015 (_ BitVec 32))) (Intermediate!2211 (undefined!3023 Bool) (index!11016 (_ BitVec 32)) (x!29162 (_ BitVec 32))) (Undefined!2211) (MissingVacant!2211 (index!11017 (_ BitVec 32))) )
))
(declare-fun lt!145321 () SeekEntryResult!2211)

(assert (=> b!293103 (= res!154195 (or lt!145322 (= lt!145321 (MissingVacant!2211 i!1256))))))

(assert (=> b!293103 (= lt!145322 (= lt!145321 (MissingZero!2211 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14858 (_ BitVec 32)) SeekEntryResult!2211)

(assert (=> b!293103 (= lt!145321 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!293104 () Bool)

(declare-fun res!154198 () Bool)

(assert (=> b!293104 (=> (not res!154198) (not e!185357))))

(declare-fun arrayContainsKey!0 (array!14858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293104 (= res!154198 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!293105 () Bool)

(declare-fun lt!145318 () SeekEntryResult!2211)

(assert (=> b!293105 (= e!185359 (and lt!145322 (is-Intermediate!2211 lt!145318) (undefined!3023 lt!145318)))))

(declare-fun lt!145320 () (_ BitVec 32))

(declare-fun lt!145319 () SeekEntryResult!2211)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14858 (_ BitVec 32)) SeekEntryResult!2211)

(assert (=> b!293105 (= lt!145319 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145320 k!2524 (array!14859 (store (arr!7051 a!3312) i!1256 k!2524) (size!7403 a!3312)) mask!3809))))

(assert (=> b!293105 (= lt!145318 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145320 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293105 (= lt!145320 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!293106 () Bool)

(declare-fun res!154200 () Bool)

(assert (=> b!293106 (=> (not res!154200) (not e!185357))))

(assert (=> b!293106 (= res!154200 (and (= (size!7403 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7403 a!3312))))))

(assert (= (and start!28690 res!154196) b!293106))

(assert (= (and b!293106 res!154200) b!293101))

(assert (= (and b!293101 res!154199) b!293104))

(assert (= (and b!293104 res!154198) b!293103))

(assert (= (and b!293103 res!154195) b!293102))

(assert (= (and b!293102 res!154197) b!293105))

(declare-fun m!306943 () Bool)

(assert (=> start!28690 m!306943))

(declare-fun m!306945 () Bool)

(assert (=> start!28690 m!306945))

(declare-fun m!306947 () Bool)

(assert (=> b!293103 m!306947))

(declare-fun m!306949 () Bool)

(assert (=> b!293101 m!306949))

(declare-fun m!306951 () Bool)

(assert (=> b!293104 m!306951))

(declare-fun m!306953 () Bool)

(assert (=> b!293105 m!306953))

(declare-fun m!306955 () Bool)

(assert (=> b!293105 m!306955))

(declare-fun m!306957 () Bool)

(assert (=> b!293105 m!306957))

(declare-fun m!306959 () Bool)

(assert (=> b!293105 m!306959))

(declare-fun m!306961 () Bool)

(assert (=> b!293102 m!306961))

(push 1)

(assert (not b!293102))

(assert (not start!28690))

(assert (not b!293103))

(assert (not b!293105))

(assert (not b!293101))

(assert (not b!293104))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66427 () Bool)

(declare-fun res!154241 () Bool)

(declare-fun e!185382 () Bool)

(assert (=> d!66427 (=> res!154241 e!185382)))

(assert (=> d!66427 (= res!154241 (= (select (arr!7051 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66427 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!185382)))

(declare-fun b!293147 () Bool)

(declare-fun e!185383 () Bool)

(assert (=> b!293147 (= e!185382 e!185383)))

(declare-fun res!154242 () Bool)

(assert (=> b!293147 (=> (not res!154242) (not e!185383))))

(assert (=> b!293147 (= res!154242 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7403 a!3312)))))

(declare-fun b!293148 () Bool)

(assert (=> b!293148 (= e!185383 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66427 (not res!154241)) b!293147))

(assert (= (and b!293147 res!154242) b!293148))

(declare-fun m!307003 () Bool)

(assert (=> d!66427 m!307003))

(declare-fun m!307005 () Bool)

(assert (=> b!293148 m!307005))

(assert (=> b!293104 d!66427))

(declare-fun d!66429 () Bool)

(declare-fun res!154263 () Bool)

(declare-fun e!185418 () Bool)

(assert (=> d!66429 (=> res!154263 e!185418)))

(assert (=> d!66429 (= res!154263 (bvsge #b00000000000000000000000000000000 (size!7403 a!3312)))))

(assert (=> d!66429 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!185418)))

(declare-fun b!293201 () Bool)

(declare-fun e!185416 () Bool)

(declare-fun call!25663 () Bool)

(assert (=> b!293201 (= e!185416 call!25663)))

(declare-fun bm!25660 () Bool)

(assert (=> bm!25660 (= call!25663 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!293202 () Bool)

(assert (=> b!293202 (= e!185418 e!185416)))

(declare-fun c!47035 () Bool)

(assert (=> b!293202 (= c!47035 (validKeyInArray!0 (select (arr!7051 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!293203 () Bool)

(declare-fun e!185417 () Bool)

(assert (=> b!293203 (= e!185417 call!25663)))

(declare-fun b!293204 () Bool)

(assert (=> b!293204 (= e!185416 e!185417)))

(declare-fun lt!145374 () (_ BitVec 64))

(assert (=> b!293204 (= lt!145374 (select (arr!7051 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9169 0))(
  ( (Unit!9170) )
))
(declare-fun lt!145373 () Unit!9169)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14858 (_ BitVec 64) (_ BitVec 32)) Unit!9169)

(assert (=> b!293204 (= lt!145373 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145374 #b00000000000000000000000000000000))))

(assert (=> b!293204 (arrayContainsKey!0 a!3312 lt!145374 #b00000000000000000000000000000000)))

(declare-fun lt!145375 () Unit!9169)

(assert (=> b!293204 (= lt!145375 lt!145373)))

(declare-fun res!154264 () Bool)

(assert (=> b!293204 (= res!154264 (= (seekEntryOrOpen!0 (select (arr!7051 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2211 #b00000000000000000000000000000000)))))

(assert (=> b!293204 (=> (not res!154264) (not e!185417))))

(assert (= (and d!66429 (not res!154263)) b!293202))

(assert (= (and b!293202 c!47035) b!293204))

(assert (= (and b!293202 (not c!47035)) b!293201))

(assert (= (and b!293204 res!154264) b!293203))

(assert (= (or b!293203 b!293201) bm!25660))

(declare-fun m!307021 () Bool)

(assert (=> bm!25660 m!307021))

(assert (=> b!293202 m!307003))

(assert (=> b!293202 m!307003))

(declare-fun m!307023 () Bool)

(assert (=> b!293202 m!307023))

(assert (=> b!293204 m!307003))

(declare-fun m!307025 () Bool)

(assert (=> b!293204 m!307025))

(declare-fun m!307027 () Bool)

(assert (=> b!293204 m!307027))

(assert (=> b!293204 m!307003))

(declare-fun m!307029 () Bool)

(assert (=> b!293204 m!307029))

(assert (=> b!293102 d!66429))

(declare-fun lt!145396 () SeekEntryResult!2211)

(declare-fun b!293239 () Bool)

(declare-fun e!185440 () SeekEntryResult!2211)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14858 (_ BitVec 32)) SeekEntryResult!2211)

(assert (=> b!293239 (= e!185440 (seekKeyOrZeroReturnVacant!0 (x!29162 lt!145396) (index!11016 lt!145396) (index!11016 lt!145396) k!2524 a!3312 mask!3809))))

(declare-fun d!66437 () Bool)

(declare-fun lt!145397 () SeekEntryResult!2211)

(assert (=> d!66437 (and (or (is-Undefined!2211 lt!145397) (not (is-Found!2211 lt!145397)) (and (bvsge (index!11015 lt!145397) #b00000000000000000000000000000000) (bvslt (index!11015 lt!145397) (size!7403 a!3312)))) (or (is-Undefined!2211 lt!145397) (is-Found!2211 lt!145397) (not (is-MissingZero!2211 lt!145397)) (and (bvsge (index!11014 lt!145397) #b00000000000000000000000000000000) (bvslt (index!11014 lt!145397) (size!7403 a!3312)))) (or (is-Undefined!2211 lt!145397) (is-Found!2211 lt!145397) (is-MissingZero!2211 lt!145397) (not (is-MissingVacant!2211 lt!145397)) (and (bvsge (index!11017 lt!145397) #b00000000000000000000000000000000) (bvslt (index!11017 lt!145397) (size!7403 a!3312)))) (or (is-Undefined!2211 lt!145397) (ite (is-Found!2211 lt!145397) (= (select (arr!7051 a!3312) (index!11015 lt!145397)) k!2524) (ite (is-MissingZero!2211 lt!145397) (= (select (arr!7051 a!3312) (index!11014 lt!145397)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2211 lt!145397) (= (select (arr!7051 a!3312) (index!11017 lt!145397)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!185438 () SeekEntryResult!2211)

(assert (=> d!66437 (= lt!145397 e!185438)))

(declare-fun c!47051 () Bool)

(assert (=> d!66437 (= c!47051 (and (is-Intermediate!2211 lt!145396) (undefined!3023 lt!145396)))))

(assert (=> d!66437 (= lt!145396 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66437 (validMask!0 mask!3809)))

(assert (=> d!66437 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!145397)))

(declare-fun b!293240 () Bool)

(declare-fun e!185439 () SeekEntryResult!2211)

(assert (=> b!293240 (= e!185439 (Found!2211 (index!11016 lt!145396)))))

(declare-fun b!293241 () Bool)

(assert (=> b!293241 (= e!185438 Undefined!2211)))

(declare-fun b!293242 () Bool)

(assert (=> b!293242 (= e!185440 (MissingZero!2211 (index!11016 lt!145396)))))

(declare-fun b!293243 () Bool)

(declare-fun c!47049 () Bool)

(declare-fun lt!145395 () (_ BitVec 64))

(assert (=> b!293243 (= c!47049 (= lt!145395 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293243 (= e!185439 e!185440)))

(declare-fun b!293244 () Bool)

(assert (=> b!293244 (= e!185438 e!185439)))

(assert (=> b!293244 (= lt!145395 (select (arr!7051 a!3312) (index!11016 lt!145396)))))

(declare-fun c!47050 () Bool)

(assert (=> b!293244 (= c!47050 (= lt!145395 k!2524))))

(assert (= (and d!66437 c!47051) b!293241))

(assert (= (and d!66437 (not c!47051)) b!293244))

(assert (= (and b!293244 c!47050) b!293240))

(assert (= (and b!293244 (not c!47050)) b!293243))

(assert (= (and b!293243 c!47049) b!293242))

(assert (= (and b!293243 (not c!47049)) b!293239))

(declare-fun m!307043 () Bool)

(assert (=> b!293239 m!307043))

(assert (=> d!66437 m!306943))

(declare-fun m!307045 () Bool)

(assert (=> d!66437 m!307045))

(assert (=> d!66437 m!306959))

(declare-fun m!307047 () Bool)

(assert (=> d!66437 m!307047))

(declare-fun m!307049 () Bool)

(assert (=> d!66437 m!307049))

(assert (=> d!66437 m!306959))

(declare-fun m!307051 () Bool)

(assert (=> d!66437 m!307051))

(declare-fun m!307053 () Bool)

(assert (=> b!293244 m!307053))

(assert (=> b!293103 d!66437))

(declare-fun d!66447 () Bool)

(assert (=> d!66447 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!293101 d!66447))

(declare-fun d!66449 () Bool)

(assert (=> d!66449 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28690 d!66449))

(declare-fun d!66457 () Bool)

(assert (=> d!66457 (= (array_inv!5005 a!3312) (bvsge (size!7403 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28690 d!66457))

(declare-fun b!293339 () Bool)

(declare-fun e!185501 () Bool)

(declare-fun e!185499 () Bool)

(assert (=> b!293339 (= e!185501 e!185499)))

(declare-fun res!154305 () Bool)

(declare-fun lt!145440 () SeekEntryResult!2211)

(assert (=> b!293339 (= res!154305 (and (is-Intermediate!2211 lt!145440) (not (undefined!3023 lt!145440)) (bvslt (x!29162 lt!145440) #b01111111111111111111111111111110) (bvsge (x!29162 lt!145440) #b00000000000000000000000000000000) (bvsge (x!29162 lt!145440) #b00000000000000000000000000000000)))))

(assert (=> b!293339 (=> (not res!154305) (not e!185499))))

(declare-fun b!293340 () Bool)

(assert (=> b!293340 (and (bvsge (index!11016 lt!145440) #b00000000000000000000000000000000) (bvslt (index!11016 lt!145440) (size!7403 (array!14859 (store (arr!7051 a!3312) i!1256 k!2524) (size!7403 a!3312)))))))

(declare-fun res!154304 () Bool)

(assert (=> b!293340 (= res!154304 (= (select (arr!7051 (array!14859 (store (arr!7051 a!3312) i!1256 k!2524) (size!7403 a!3312))) (index!11016 lt!145440)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185502 () Bool)

(assert (=> b!293340 (=> res!154304 e!185502)))

(declare-fun b!293341 () Bool)

(declare-fun e!185498 () SeekEntryResult!2211)

(assert (=> b!293341 (= e!185498 (Intermediate!2211 true lt!145320 #b00000000000000000000000000000000))))

(declare-fun b!293342 () Bool)

(assert (=> b!293342 (and (bvsge (index!11016 lt!145440) #b00000000000000000000000000000000) (bvslt (index!11016 lt!145440) (size!7403 (array!14859 (store (arr!7051 a!3312) i!1256 k!2524) (size!7403 a!3312)))))))

(assert (=> b!293342 (= e!185502 (= (select (arr!7051 (array!14859 (store (arr!7051 a!3312) i!1256 k!2524) (size!7403 a!3312))) (index!11016 lt!145440)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!293343 () Bool)

(declare-fun e!185500 () SeekEntryResult!2211)

(assert (=> b!293343 (= e!185500 (Intermediate!2211 false lt!145320 #b00000000000000000000000000000000))))

(declare-fun d!66459 () Bool)

(assert (=> d!66459 e!185501))

(declare-fun c!47085 () Bool)

(assert (=> d!66459 (= c!47085 (and (is-Intermediate!2211 lt!145440) (undefined!3023 lt!145440)))))

(assert (=> d!66459 (= lt!145440 e!185498)))

(declare-fun c!47087 () Bool)

(assert (=> d!66459 (= c!47087 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!145439 () (_ BitVec 64))

(assert (=> d!66459 (= lt!145439 (select (arr!7051 (array!14859 (store (arr!7051 a!3312) i!1256 k!2524) (size!7403 a!3312))) lt!145320))))

(assert (=> d!66459 (validMask!0 mask!3809)))

(assert (=> d!66459 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145320 k!2524 (array!14859 (store (arr!7051 a!3312) i!1256 k!2524) (size!7403 a!3312)) mask!3809) lt!145440)))

(declare-fun b!293344 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293344 (= e!185500 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145320 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14859 (store (arr!7051 a!3312) i!1256 k!2524) (size!7403 a!3312)) mask!3809))))

(declare-fun b!293345 () Bool)

(assert (=> b!293345 (= e!185501 (bvsge (x!29162 lt!145440) #b01111111111111111111111111111110))))

(declare-fun b!293346 () Bool)

(assert (=> b!293346 (and (bvsge (index!11016 lt!145440) #b00000000000000000000000000000000) (bvslt (index!11016 lt!145440) (size!7403 (array!14859 (store (arr!7051 a!3312) i!1256 k!2524) (size!7403 a!3312)))))))

(declare-fun res!154303 () Bool)

(assert (=> b!293346 (= res!154303 (= (select (arr!7051 (array!14859 (store (arr!7051 a!3312) i!1256 k!2524) (size!7403 a!3312))) (index!11016 lt!145440)) k!2524))))

(assert (=> b!293346 (=> res!154303 e!185502)))

(assert (=> b!293346 (= e!185499 e!185502)))

(declare-fun b!293347 () Bool)

(assert (=> b!293347 (= e!185498 e!185500)))

(declare-fun c!47086 () Bool)

(assert (=> b!293347 (= c!47086 (or (= lt!145439 k!2524) (= (bvadd lt!145439 lt!145439) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!66459 c!47087) b!293341))

(assert (= (and d!66459 (not c!47087)) b!293347))

(assert (= (and b!293347 c!47086) b!293343))

(assert (= (and b!293347 (not c!47086)) b!293344))

(assert (= (and d!66459 c!47085) b!293345))

(assert (= (and d!66459 (not c!47085)) b!293339))

(assert (= (and b!293339 res!154305) b!293346))

(assert (= (and b!293346 (not res!154303)) b!293340))

(assert (= (and b!293340 (not res!154304)) b!293342))

(declare-fun m!307107 () Bool)

(assert (=> b!293340 m!307107))

(assert (=> b!293342 m!307107))

(declare-fun m!307109 () Bool)

(assert (=> d!66459 m!307109))

(assert (=> d!66459 m!306943))

(assert (=> b!293346 m!307107))

(declare-fun m!307111 () Bool)

(assert (=> b!293344 m!307111))

(assert (=> b!293344 m!307111))

(declare-fun m!307115 () Bool)

(assert (=> b!293344 m!307115))

(assert (=> b!293105 d!66459))

(declare-fun b!293350 () Bool)

(declare-fun e!185508 () Bool)

(declare-fun e!185506 () Bool)

(assert (=> b!293350 (= e!185508 e!185506)))

(declare-fun res!154310 () Bool)

(declare-fun lt!145442 () SeekEntryResult!2211)

(assert (=> b!293350 (= res!154310 (and (is-Intermediate!2211 lt!145442) (not (undefined!3023 lt!145442)) (bvslt (x!29162 lt!145442) #b01111111111111111111111111111110) (bvsge (x!29162 lt!145442) #b00000000000000000000000000000000) (bvsge (x!29162 lt!145442) #b00000000000000000000000000000000)))))

(assert (=> b!293350 (=> (not res!154310) (not e!185506))))

(declare-fun b!293351 () Bool)

(assert (=> b!293351 (and (bvsge (index!11016 lt!145442) #b00000000000000000000000000000000) (bvslt (index!11016 lt!145442) (size!7403 a!3312)))))

(declare-fun res!154309 () Bool)

(assert (=> b!293351 (= res!154309 (= (select (arr!7051 a!3312) (index!11016 lt!145442)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185509 () Bool)

(assert (=> b!293351 (=> res!154309 e!185509)))

(declare-fun b!293352 () Bool)

(declare-fun e!185505 () SeekEntryResult!2211)

(assert (=> b!293352 (= e!185505 (Intermediate!2211 true lt!145320 #b00000000000000000000000000000000))))

(declare-fun b!293353 () Bool)

(assert (=> b!293353 (and (bvsge (index!11016 lt!145442) #b00000000000000000000000000000000) (bvslt (index!11016 lt!145442) (size!7403 a!3312)))))

(assert (=> b!293353 (= e!185509 (= (select (arr!7051 a!3312) (index!11016 lt!145442)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!293354 () Bool)

(declare-fun e!185507 () SeekEntryResult!2211)

(assert (=> b!293354 (= e!185507 (Intermediate!2211 false lt!145320 #b00000000000000000000000000000000))))

(declare-fun d!66471 () Bool)

(assert (=> d!66471 e!185508))

(declare-fun c!47088 () Bool)

(assert (=> d!66471 (= c!47088 (and (is-Intermediate!2211 lt!145442) (undefined!3023 lt!145442)))))

(assert (=> d!66471 (= lt!145442 e!185505)))

(declare-fun c!47090 () Bool)

(assert (=> d!66471 (= c!47090 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!145441 () (_ BitVec 64))

(assert (=> d!66471 (= lt!145441 (select (arr!7051 a!3312) lt!145320))))

(assert (=> d!66471 (validMask!0 mask!3809)))

(assert (=> d!66471 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145320 k!2524 a!3312 mask!3809) lt!145442)))

(declare-fun b!293355 () Bool)

(assert (=> b!293355 (= e!185507 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145320 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!293356 () Bool)

(assert (=> b!293356 (= e!185508 (bvsge (x!29162 lt!145442) #b01111111111111111111111111111110))))

(declare-fun b!293357 () Bool)

(assert (=> b!293357 (and (bvsge (index!11016 lt!145442) #b00000000000000000000000000000000) (bvslt (index!11016 lt!145442) (size!7403 a!3312)))))

(declare-fun res!154308 () Bool)

(assert (=> b!293357 (= res!154308 (= (select (arr!7051 a!3312) (index!11016 lt!145442)) k!2524))))

(assert (=> b!293357 (=> res!154308 e!185509)))

(assert (=> b!293357 (= e!185506 e!185509)))

(declare-fun b!293358 () Bool)

(assert (=> b!293358 (= e!185505 e!185507)))

(declare-fun c!47089 () Bool)

(assert (=> b!293358 (= c!47089 (or (= lt!145441 k!2524) (= (bvadd lt!145441 lt!145441) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!66471 c!47090) b!293352))

(assert (= (and d!66471 (not c!47090)) b!293358))

(assert (= (and b!293358 c!47089) b!293354))

(assert (= (and b!293358 (not c!47089)) b!293355))

(assert (= (and d!66471 c!47088) b!293356))

(assert (= (and d!66471 (not c!47088)) b!293350))

