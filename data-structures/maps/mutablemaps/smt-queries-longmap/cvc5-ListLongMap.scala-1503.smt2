; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28462 () Bool)

(assert start!28462)

(declare-fun b!291341 () Bool)

(declare-fun e!184362 () Bool)

(declare-fun e!184359 () Bool)

(assert (=> b!291341 (= e!184362 e!184359)))

(declare-fun res!152720 () Bool)

(assert (=> b!291341 (=> (not res!152720) (not e!184359))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2145 0))(
  ( (MissingZero!2145 (index!10750 (_ BitVec 32))) (Found!2145 (index!10751 (_ BitVec 32))) (Intermediate!2145 (undefined!2957 Bool) (index!10752 (_ BitVec 32)) (x!28908 (_ BitVec 32))) (Undefined!2145) (MissingVacant!2145 (index!10753 (_ BitVec 32))) )
))
(declare-fun lt!144178 () SeekEntryResult!2145)

(declare-fun lt!144176 () Bool)

(assert (=> b!291341 (= res!152720 (or lt!144176 (= lt!144178 (MissingVacant!2145 i!1256))))))

(assert (=> b!291341 (= lt!144176 (= lt!144178 (MissingZero!2145 i!1256)))))

(declare-datatypes ((array!14720 0))(
  ( (array!14721 (arr!6985 (Array (_ BitVec 32) (_ BitVec 64))) (size!7337 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14720)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14720 (_ BitVec 32)) SeekEntryResult!2145)

(assert (=> b!291341 (= lt!144178 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!291342 () Bool)

(declare-fun res!152718 () Bool)

(assert (=> b!291342 (=> (not res!152718) (not e!184362))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291342 (= res!152718 (validKeyInArray!0 k!2524))))

(declare-fun b!291343 () Bool)

(declare-fun res!152724 () Bool)

(assert (=> b!291343 (=> (not res!152724) (not e!184362))))

(assert (=> b!291343 (= res!152724 (and (= (size!7337 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7337 a!3312))))))

(declare-fun res!152719 () Bool)

(assert (=> start!28462 (=> (not res!152719) (not e!184362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28462 (= res!152719 (validMask!0 mask!3809))))

(assert (=> start!28462 e!184362))

(assert (=> start!28462 true))

(declare-fun array_inv!4939 (array!14720) Bool)

(assert (=> start!28462 (array_inv!4939 a!3312)))

(declare-fun b!291344 () Bool)

(declare-fun res!152722 () Bool)

(assert (=> b!291344 (=> (not res!152722) (not e!184359))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14720 (_ BitVec 32)) Bool)

(assert (=> b!291344 (= res!152722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291345 () Bool)

(declare-fun res!152721 () Bool)

(assert (=> b!291345 (=> (not res!152721) (not e!184362))))

(declare-fun arrayContainsKey!0 (array!14720 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291345 (= res!152721 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291346 () Bool)

(declare-fun e!184361 () Bool)

(assert (=> b!291346 (= e!184359 e!184361)))

(declare-fun res!152717 () Bool)

(assert (=> b!291346 (=> (not res!152717) (not e!184361))))

(assert (=> b!291346 (= res!152717 (and (not lt!144176) (= lt!144178 (MissingVacant!2145 i!1256))))))

(declare-fun lt!144179 () SeekEntryResult!2145)

(declare-fun lt!144174 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14720 (_ BitVec 32)) SeekEntryResult!2145)

(assert (=> b!291346 (= lt!144179 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144174 k!2524 (array!14721 (store (arr!6985 a!3312) i!1256 k!2524) (size!7337 a!3312)) mask!3809))))

(declare-fun lt!144175 () SeekEntryResult!2145)

(assert (=> b!291346 (= lt!144175 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144174 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291346 (= lt!144174 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!291347 () Bool)

(declare-fun e!184363 () Bool)

(assert (=> b!291347 (= e!184363 (not (or (not (= lt!144175 (Intermediate!2145 false (index!10752 lt!144175) (x!28908 lt!144175)))) (bvsle #b00000000000000000000000000000000 (x!28908 lt!144175)))))))

(assert (=> b!291347 (= (index!10752 lt!144175) i!1256)))

(declare-fun b!291348 () Bool)

(assert (=> b!291348 (= e!184361 e!184363)))

(declare-fun res!152723 () Bool)

(assert (=> b!291348 (=> (not res!152723) (not e!184363))))

(declare-fun lt!144177 () Bool)

(assert (=> b!291348 (= res!152723 (and (or lt!144177 (not (undefined!2957 lt!144175))) (not lt!144177) (= (select (arr!6985 a!3312) (index!10752 lt!144175)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291348 (= lt!144177 (not (is-Intermediate!2145 lt!144175)))))

(assert (= (and start!28462 res!152719) b!291343))

(assert (= (and b!291343 res!152724) b!291342))

(assert (= (and b!291342 res!152718) b!291345))

(assert (= (and b!291345 res!152721) b!291341))

(assert (= (and b!291341 res!152720) b!291344))

(assert (= (and b!291344 res!152722) b!291346))

(assert (= (and b!291346 res!152717) b!291348))

(assert (= (and b!291348 res!152723) b!291347))

(declare-fun m!305323 () Bool)

(assert (=> b!291346 m!305323))

(declare-fun m!305325 () Bool)

(assert (=> b!291346 m!305325))

(declare-fun m!305327 () Bool)

(assert (=> b!291346 m!305327))

(declare-fun m!305329 () Bool)

(assert (=> b!291346 m!305329))

(declare-fun m!305331 () Bool)

(assert (=> b!291342 m!305331))

(declare-fun m!305333 () Bool)

(assert (=> b!291345 m!305333))

(declare-fun m!305335 () Bool)

(assert (=> b!291344 m!305335))

(declare-fun m!305337 () Bool)

(assert (=> b!291341 m!305337))

(declare-fun m!305339 () Bool)

(assert (=> b!291348 m!305339))

(declare-fun m!305341 () Bool)

(assert (=> start!28462 m!305341))

(declare-fun m!305343 () Bool)

(assert (=> start!28462 m!305343))

(push 1)

(assert (not b!291346))

(assert (not b!291344))

(assert (not b!291341))

(assert (not b!291345))

(assert (not b!291342))

(assert (not start!28462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!25640 () Bool)

(declare-fun call!25643 () Bool)

(assert (=> bm!25640 (= call!25643 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!291411 () Bool)

(declare-fun e!184406 () Bool)

(declare-fun e!184407 () Bool)

(assert (=> b!291411 (= e!184406 e!184407)))

(declare-fun lt!144223 () (_ BitVec 64))

(assert (=> b!291411 (= lt!144223 (select (arr!6985 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9135 0))(
  ( (Unit!9136) )
))
(declare-fun lt!144224 () Unit!9135)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14720 (_ BitVec 64) (_ BitVec 32)) Unit!9135)

(assert (=> b!291411 (= lt!144224 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!144223 #b00000000000000000000000000000000))))

(assert (=> b!291411 (arrayContainsKey!0 a!3312 lt!144223 #b00000000000000000000000000000000)))

(declare-fun lt!144222 () Unit!9135)

(assert (=> b!291411 (= lt!144222 lt!144224)))

(declare-fun res!152783 () Bool)

(assert (=> b!291411 (= res!152783 (= (seekEntryOrOpen!0 (select (arr!6985 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2145 #b00000000000000000000000000000000)))))

(assert (=> b!291411 (=> (not res!152783) (not e!184407))))

(declare-fun b!291412 () Bool)

(assert (=> b!291412 (= e!184406 call!25643)))

(declare-fun b!291413 () Bool)

(assert (=> b!291413 (= e!184407 call!25643)))

(declare-fun b!291414 () Bool)

(declare-fun e!184408 () Bool)

(assert (=> b!291414 (= e!184408 e!184406)))

(declare-fun c!46877 () Bool)

(assert (=> b!291414 (= c!46877 (validKeyInArray!0 (select (arr!6985 a!3312) #b00000000000000000000000000000000)))))

(declare-fun d!66279 () Bool)

(declare-fun res!152784 () Bool)

(assert (=> d!66279 (=> res!152784 e!184408)))

(assert (=> d!66279 (= res!152784 (bvsge #b00000000000000000000000000000000 (size!7337 a!3312)))))

(assert (=> d!66279 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!184408)))

(assert (= (and d!66279 (not res!152784)) b!291414))

(assert (= (and b!291414 c!46877) b!291411))

(assert (= (and b!291414 (not c!46877)) b!291412))

(assert (= (and b!291411 res!152783) b!291413))

(assert (= (or b!291413 b!291412) bm!25640))

(declare-fun m!305393 () Bool)

(assert (=> bm!25640 m!305393))

(declare-fun m!305395 () Bool)

(assert (=> b!291411 m!305395))

(declare-fun m!305397 () Bool)

(assert (=> b!291411 m!305397))

(declare-fun m!305399 () Bool)

(assert (=> b!291411 m!305399))

(assert (=> b!291411 m!305395))

(declare-fun m!305401 () Bool)

(assert (=> b!291411 m!305401))

(assert (=> b!291414 m!305395))

(assert (=> b!291414 m!305395))

(declare-fun m!305403 () Bool)

(assert (=> b!291414 m!305403))

(assert (=> b!291344 d!66279))

(declare-fun d!66285 () Bool)

(declare-fun res!152789 () Bool)

(declare-fun e!184413 () Bool)

(assert (=> d!66285 (=> res!152789 e!184413)))

(assert (=> d!66285 (= res!152789 (= (select (arr!6985 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66285 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!184413)))

(declare-fun b!291419 () Bool)

(declare-fun e!184414 () Bool)

(assert (=> b!291419 (= e!184413 e!184414)))

(declare-fun res!152790 () Bool)

(assert (=> b!291419 (=> (not res!152790) (not e!184414))))

(assert (=> b!291419 (= res!152790 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7337 a!3312)))))

(declare-fun b!291420 () Bool)

(assert (=> b!291420 (= e!184414 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66285 (not res!152789)) b!291419))

(assert (= (and b!291419 res!152790) b!291420))

(assert (=> d!66285 m!305395))

(declare-fun m!305405 () Bool)

(assert (=> b!291420 m!305405))

(assert (=> b!291345 d!66285))

(declare-fun b!291475 () Bool)

(declare-fun e!184447 () Bool)

(declare-fun e!184446 () Bool)

(assert (=> b!291475 (= e!184447 e!184446)))

(declare-fun res!152812 () Bool)

(declare-fun lt!144244 () SeekEntryResult!2145)

(assert (=> b!291475 (= res!152812 (and (is-Intermediate!2145 lt!144244) (not (undefined!2957 lt!144244)) (bvslt (x!28908 lt!144244) #b01111111111111111111111111111110) (bvsge (x!28908 lt!144244) #b00000000000000000000000000000000) (bvsge (x!28908 lt!144244) #b00000000000000000000000000000000)))))

(assert (=> b!291475 (=> (not res!152812) (not e!184446))))

(declare-fun b!291477 () Bool)

(assert (=> b!291477 (and (bvsge (index!10752 lt!144244) #b00000000000000000000000000000000) (bvslt (index!10752 lt!144244) (size!7337 (array!14721 (store (arr!6985 a!3312) i!1256 k!2524) (size!7337 a!3312)))))))

(declare-fun res!152810 () Bool)

(assert (=> b!291477 (= res!152810 (= (select (arr!6985 (array!14721 (store (arr!6985 a!3312) i!1256 k!2524) (size!7337 a!3312))) (index!10752 lt!144244)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!184449 () Bool)

(assert (=> b!291477 (=> res!152810 e!184449)))

(declare-fun b!291478 () Bool)

(assert (=> b!291478 (and (bvsge (index!10752 lt!144244) #b00000000000000000000000000000000) (bvslt (index!10752 lt!144244) (size!7337 (array!14721 (store (arr!6985 a!3312) i!1256 k!2524) (size!7337 a!3312)))))))

(declare-fun res!152811 () Bool)

(assert (=> b!291478 (= res!152811 (= (select (arr!6985 (array!14721 (store (arr!6985 a!3312) i!1256 k!2524) (size!7337 a!3312))) (index!10752 lt!144244)) k!2524))))

(assert (=> b!291478 (=> res!152811 e!184449)))

(assert (=> b!291478 (= e!184446 e!184449)))

(declare-fun b!291479 () Bool)

(assert (=> b!291479 (and (bvsge (index!10752 lt!144244) #b00000000000000000000000000000000) (bvslt (index!10752 lt!144244) (size!7337 (array!14721 (store (arr!6985 a!3312) i!1256 k!2524) (size!7337 a!3312)))))))

(assert (=> b!291479 (= e!184449 (= (select (arr!6985 (array!14721 (store (arr!6985 a!3312) i!1256 k!2524) (size!7337 a!3312))) (index!10752 lt!144244)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!291480 () Bool)

(declare-fun e!184448 () SeekEntryResult!2145)

(assert (=> b!291480 (= e!184448 (Intermediate!2145 true lt!144174 #b00000000000000000000000000000000))))

(declare-fun b!291481 () Bool)

(assert (=> b!291481 (= e!184447 (bvsge (x!28908 lt!144244) #b01111111111111111111111111111110))))

(declare-fun b!291482 () Bool)

(declare-fun e!184445 () SeekEntryResult!2145)

(assert (=> b!291482 (= e!184448 e!184445)))

(declare-fun c!46897 () Bool)

(declare-fun lt!144243 () (_ BitVec 64))

(assert (=> b!291482 (= c!46897 (or (= lt!144243 k!2524) (= (bvadd lt!144243 lt!144243) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!291483 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291483 (= e!184445 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!144174 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14721 (store (arr!6985 a!3312) i!1256 k!2524) (size!7337 a!3312)) mask!3809))))

(declare-fun d!66287 () Bool)

(assert (=> d!66287 e!184447))

(declare-fun c!46896 () Bool)

(assert (=> d!66287 (= c!46896 (and (is-Intermediate!2145 lt!144244) (undefined!2957 lt!144244)))))

(assert (=> d!66287 (= lt!144244 e!184448)))

(declare-fun c!46898 () Bool)

(assert (=> d!66287 (= c!46898 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66287 (= lt!144243 (select (arr!6985 (array!14721 (store (arr!6985 a!3312) i!1256 k!2524) (size!7337 a!3312))) lt!144174))))

(assert (=> d!66287 (validMask!0 mask!3809)))

(assert (=> d!66287 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144174 k!2524 (array!14721 (store (arr!6985 a!3312) i!1256 k!2524) (size!7337 a!3312)) mask!3809) lt!144244)))

(declare-fun b!291476 () Bool)

(assert (=> b!291476 (= e!184445 (Intermediate!2145 false lt!144174 #b00000000000000000000000000000000))))

(assert (= (and d!66287 c!46898) b!291480))

(assert (= (and d!66287 (not c!46898)) b!291482))

(assert (= (and b!291482 c!46897) b!291476))

(assert (= (and b!291482 (not c!46897)) b!291483))

(assert (= (and d!66287 c!46896) b!291481))

(assert (= (and d!66287 (not c!46896)) b!291475))

(assert (= (and b!291475 res!152812) b!291478))

(assert (= (and b!291478 (not res!152811)) b!291477))

(assert (= (and b!291477 (not res!152810)) b!291479))

(declare-fun m!305421 () Bool)

(assert (=> b!291478 m!305421))

(assert (=> b!291479 m!305421))

(assert (=> b!291477 m!305421))

(declare-fun m!305423 () Bool)

(assert (=> d!66287 m!305423))

(assert (=> d!66287 m!305341))

(declare-fun m!305425 () Bool)

(assert (=> b!291483 m!305425))

(assert (=> b!291483 m!305425))

(declare-fun m!305427 () Bool)

(assert (=> b!291483 m!305427))

(assert (=> b!291346 d!66287))

(declare-fun b!291484 () Bool)

(declare-fun e!184452 () Bool)

(declare-fun e!184451 () Bool)

(assert (=> b!291484 (= e!184452 e!184451)))

(declare-fun res!152815 () Bool)

(declare-fun lt!144246 () SeekEntryResult!2145)

(assert (=> b!291484 (= res!152815 (and (is-Intermediate!2145 lt!144246) (not (undefined!2957 lt!144246)) (bvslt (x!28908 lt!144246) #b01111111111111111111111111111110) (bvsge (x!28908 lt!144246) #b00000000000000000000000000000000) (bvsge (x!28908 lt!144246) #b00000000000000000000000000000000)))))

(assert (=> b!291484 (=> (not res!152815) (not e!184451))))

(declare-fun b!291486 () Bool)

(assert (=> b!291486 (and (bvsge (index!10752 lt!144246) #b00000000000000000000000000000000) (bvslt (index!10752 lt!144246) (size!7337 a!3312)))))

(declare-fun res!152813 () Bool)

(assert (=> b!291486 (= res!152813 (= (select (arr!6985 a!3312) (index!10752 lt!144246)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!184454 () Bool)

(assert (=> b!291486 (=> res!152813 e!184454)))

(declare-fun b!291487 () Bool)

(assert (=> b!291487 (and (bvsge (index!10752 lt!144246) #b00000000000000000000000000000000) (bvslt (index!10752 lt!144246) (size!7337 a!3312)))))

(declare-fun res!152814 () Bool)

(assert (=> b!291487 (= res!152814 (= (select (arr!6985 a!3312) (index!10752 lt!144246)) k!2524))))

(assert (=> b!291487 (=> res!152814 e!184454)))

(assert (=> b!291487 (= e!184451 e!184454)))

(declare-fun b!291488 () Bool)

(assert (=> b!291488 (and (bvsge (index!10752 lt!144246) #b00000000000000000000000000000000) (bvslt (index!10752 lt!144246) (size!7337 a!3312)))))

(assert (=> b!291488 (= e!184454 (= (select (arr!6985 a!3312) (index!10752 lt!144246)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!291489 () Bool)

(declare-fun e!184453 () SeekEntryResult!2145)

(assert (=> b!291489 (= e!184453 (Intermediate!2145 true lt!144174 #b00000000000000000000000000000000))))

(declare-fun b!291490 () Bool)

(assert (=> b!291490 (= e!184452 (bvsge (x!28908 lt!144246) #b01111111111111111111111111111110))))

(declare-fun b!291491 () Bool)

(declare-fun e!184450 () SeekEntryResult!2145)

(assert (=> b!291491 (= e!184453 e!184450)))

(declare-fun c!46900 () Bool)

(declare-fun lt!144245 () (_ BitVec 64))

(assert (=> b!291491 (= c!46900 (or (= lt!144245 k!2524) (= (bvadd lt!144245 lt!144245) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!291492 () Bool)

(assert (=> b!291492 (= e!184450 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!144174 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun d!66299 () Bool)

(assert (=> d!66299 e!184452))

(declare-fun c!46899 () Bool)

(assert (=> d!66299 (= c!46899 (and (is-Intermediate!2145 lt!144246) (undefined!2957 lt!144246)))))

(assert (=> d!66299 (= lt!144246 e!184453)))

(declare-fun c!46901 () Bool)

(assert (=> d!66299 (= c!46901 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66299 (= lt!144245 (select (arr!6985 a!3312) lt!144174))))

(assert (=> d!66299 (validMask!0 mask!3809)))

(assert (=> d!66299 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144174 k!2524 a!3312 mask!3809) lt!144246)))

(declare-fun b!291485 () Bool)

(assert (=> b!291485 (= e!184450 (Intermediate!2145 false lt!144174 #b00000000000000000000000000000000))))

(assert (= (and d!66299 c!46901) b!291489))

(assert (= (and d!66299 (not c!46901)) b!291491))

(assert (= (and b!291491 c!46900) b!291485))

(assert (= (and b!291491 (not c!46900)) b!291492))

(assert (= (and d!66299 c!46899) b!291490))

(assert (= (and d!66299 (not c!46899)) b!291484))

(assert (= (and b!291484 res!152815) b!291487))

(assert (= (and b!291487 (not res!152814)) b!291486))

(assert (= (and b!291486 (not res!152813)) b!291488))

(declare-fun m!305429 () Bool)

(assert (=> b!291487 m!305429))

(assert (=> b!291488 m!305429))

(assert (=> b!291486 m!305429))

(declare-fun m!305431 () Bool)

(assert (=> d!66299 m!305431))

(assert (=> d!66299 m!305341))

(assert (=> b!291492 m!305425))

(assert (=> b!291492 m!305425))

(declare-fun m!305433 () Bool)

(assert (=> b!291492 m!305433))

(assert (=> b!291346 d!66299))

(declare-fun d!66301 () Bool)

(declare-fun lt!144261 () (_ BitVec 32))

(declare-fun lt!144260 () (_ BitVec 32))

(assert (=> d!66301 (= lt!144261 (bvmul (bvxor lt!144260 (bvlshr lt!144260 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66301 (= lt!144260 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66301 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!152816 (let ((h!5283 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28914 (bvmul (bvxor h!5283 (bvlshr h!5283 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28914 (bvlshr x!28914 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!152816 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!152816 #b00000000000000000000000000000000))))))

(assert (=> d!66301 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!144261 (bvlshr lt!144261 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!291346 d!66301))

(declare-fun lt!144282 () SeekEntryResult!2145)

(declare-fun b!291543 () Bool)

(declare-fun e!184483 () SeekEntryResult!2145)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14720 (_ BitVec 32)) SeekEntryResult!2145)

(assert (=> b!291543 (= e!184483 (seekKeyOrZeroReturnVacant!0 (x!28908 lt!144282) (index!10752 lt!144282) (index!10752 lt!144282) k!2524 a!3312 mask!3809))))

(declare-fun b!291544 () Bool)

(assert (=> b!291544 (= e!184483 (MissingZero!2145 (index!10752 lt!144282)))))

(declare-fun b!291545 () Bool)

(declare-fun e!184484 () SeekEntryResult!2145)

(assert (=> b!291545 (= e!184484 (Found!2145 (index!10752 lt!144282)))))

(declare-fun b!291546 () Bool)

(declare-fun e!184485 () SeekEntryResult!2145)

(assert (=> b!291546 (= e!184485 Undefined!2145)))

(declare-fun b!291549 () Bool)

(assert (=> b!291549 (= e!184485 e!184484)))

(declare-fun lt!144283 () (_ BitVec 64))

(assert (=> b!291549 (= lt!144283 (select (arr!6985 a!3312) (index!10752 lt!144282)))))

(declare-fun c!46926 () Bool)

(assert (=> b!291549 (= c!46926 (= lt!144283 k!2524))))

(declare-fun d!66305 () Bool)

(declare-fun lt!144281 () SeekEntryResult!2145)

(assert (=> d!66305 (and (or (is-Undefined!2145 lt!144281) (not (is-Found!2145 lt!144281)) (and (bvsge (index!10751 lt!144281) #b00000000000000000000000000000000) (bvslt (index!10751 lt!144281) (size!7337 a!3312)))) (or (is-Undefined!2145 lt!144281) (is-Found!2145 lt!144281) (not (is-MissingZero!2145 lt!144281)) (and (bvsge (index!10750 lt!144281) #b00000000000000000000000000000000) (bvslt (index!10750 lt!144281) (size!7337 a!3312)))) (or (is-Undefined!2145 lt!144281) (is-Found!2145 lt!144281) (is-MissingZero!2145 lt!144281) (not (is-MissingVacant!2145 lt!144281)) (and (bvsge (index!10753 lt!144281) #b00000000000000000000000000000000) (bvslt (index!10753 lt!144281) (size!7337 a!3312)))) (or (is-Undefined!2145 lt!144281) (ite (is-Found!2145 lt!144281) (= (select (arr!6985 a!3312) (index!10751 lt!144281)) k!2524) (ite (is-MissingZero!2145 lt!144281) (= (select (arr!6985 a!3312) (index!10750 lt!144281)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2145 lt!144281) (= (select (arr!6985 a!3312) (index!10753 lt!144281)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66305 (= lt!144281 e!184485)))

(declare-fun c!46925 () Bool)

(assert (=> d!66305 (= c!46925 (and (is-Intermediate!2145 lt!144282) (undefined!2957 lt!144282)))))

(assert (=> d!66305 (= lt!144282 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66305 (validMask!0 mask!3809)))

(assert (=> d!66305 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!144281)))

(declare-fun b!291550 () Bool)

(declare-fun c!46924 () Bool)

(assert (=> b!291550 (= c!46924 (= lt!144283 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!291550 (= e!184484 e!184483)))

(assert (= (and d!66305 c!46925) b!291546))

(assert (= (and d!66305 (not c!46925)) b!291549))

(assert (= (and b!291549 c!46926) b!291545))

(assert (= (and b!291549 (not c!46926)) b!291550))

(assert (= (and b!291550 c!46924) b!291544))

(assert (= (and b!291550 (not c!46924)) b!291543))

(declare-fun m!305457 () Bool)

(assert (=> b!291543 m!305457))

(declare-fun m!305459 () Bool)

(assert (=> b!291549 m!305459))

(declare-fun m!305461 () Bool)

(assert (=> d!66305 m!305461))

(assert (=> d!66305 m!305329))

(assert (=> d!66305 m!305341))

(declare-fun m!305463 () Bool)

(assert (=> d!66305 m!305463))

(declare-fun m!305465 () Bool)

(assert (=> d!66305 m!305465))

(assert (=> d!66305 m!305329))

(declare-fun m!305467 () Bool)

(assert (=> d!66305 m!305467))

(assert (=> b!291341 d!66305))

(declare-fun d!66307 () Bool)

(assert (=> d!66307 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28462 d!66307))

(declare-fun d!66313 () Bool)

(assert (=> d!66313 (= (array_inv!4939 a!3312) (bvsge (size!7337 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28462 d!66313))

(declare-fun d!66315 () Bool)

(assert (=> d!66315 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!291342 d!66315))

(push 1)

