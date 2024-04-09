; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28746 () Bool)

(assert start!28746)

(declare-fun b!293389 () Bool)

(declare-fun e!185525 () Bool)

(declare-fun e!185526 () Bool)

(assert (=> b!293389 (= e!185525 e!185526)))

(declare-fun res!154346 () Bool)

(assert (=> b!293389 (=> (not res!154346) (not e!185526))))

(declare-fun lt!145477 () Bool)

(declare-datatypes ((SeekEntryResult!2215 0))(
  ( (MissingZero!2215 (index!11030 (_ BitVec 32))) (Found!2215 (index!11031 (_ BitVec 32))) (Intermediate!2215 (undefined!3027 Bool) (index!11032 (_ BitVec 32)) (x!29180 (_ BitVec 32))) (Undefined!2215) (MissingVacant!2215 (index!11033 (_ BitVec 32))) )
))
(declare-fun lt!145478 () SeekEntryResult!2215)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!293389 (= res!154346 (or lt!145477 (= lt!145478 (MissingVacant!2215 i!1256))))))

(assert (=> b!293389 (= lt!145477 (= lt!145478 (MissingZero!2215 i!1256)))))

(declare-datatypes ((array!14869 0))(
  ( (array!14870 (arr!7055 (Array (_ BitVec 32) (_ BitVec 64))) (size!7407 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14869)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14869 (_ BitVec 32)) SeekEntryResult!2215)

(assert (=> b!293389 (= lt!145478 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun lt!145474 () SeekEntryResult!2215)

(declare-fun b!293390 () Bool)

(get-info :version)

(assert (=> b!293390 (= e!185526 (and lt!145477 (let ((bdg!6217 (not ((_ is Intermediate!2215) lt!145474)))) (and (or bdg!6217 (not (undefined!3027 lt!145474))) (not bdg!6217) (or (bvslt (index!11032 lt!145474) #b00000000000000000000000000000000) (bvsge (index!11032 lt!145474) (size!7407 a!3312)))))))))

(declare-fun lt!145476 () (_ BitVec 32))

(declare-fun lt!145475 () SeekEntryResult!2215)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14869 (_ BitVec 32)) SeekEntryResult!2215)

(assert (=> b!293390 (= lt!145475 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145476 k0!2524 (array!14870 (store (arr!7055 a!3312) i!1256 k0!2524) (size!7407 a!3312)) mask!3809))))

(assert (=> b!293390 (= lt!145474 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145476 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293390 (= lt!145476 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!293391 () Bool)

(declare-fun res!154347 () Bool)

(assert (=> b!293391 (=> (not res!154347) (not e!185525))))

(declare-fun arrayContainsKey!0 (array!14869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293391 (= res!154347 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun res!154345 () Bool)

(assert (=> start!28746 (=> (not res!154345) (not e!185525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28746 (= res!154345 (validMask!0 mask!3809))))

(assert (=> start!28746 e!185525))

(assert (=> start!28746 true))

(declare-fun array_inv!5009 (array!14869) Bool)

(assert (=> start!28746 (array_inv!5009 a!3312)))

(declare-fun b!293392 () Bool)

(declare-fun res!154344 () Bool)

(assert (=> b!293392 (=> (not res!154344) (not e!185526))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14869 (_ BitVec 32)) Bool)

(assert (=> b!293392 (= res!154344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!293393 () Bool)

(declare-fun res!154342 () Bool)

(assert (=> b!293393 (=> (not res!154342) (not e!185525))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293393 (= res!154342 (validKeyInArray!0 k0!2524))))

(declare-fun b!293394 () Bool)

(declare-fun res!154343 () Bool)

(assert (=> b!293394 (=> (not res!154343) (not e!185525))))

(assert (=> b!293394 (= res!154343 (and (= (size!7407 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7407 a!3312))))))

(assert (= (and start!28746 res!154345) b!293394))

(assert (= (and b!293394 res!154343) b!293393))

(assert (= (and b!293393 res!154342) b!293391))

(assert (= (and b!293391 res!154347) b!293389))

(assert (= (and b!293389 res!154346) b!293392))

(assert (= (and b!293392 res!154344) b!293390))

(declare-fun m!307143 () Bool)

(assert (=> b!293390 m!307143))

(declare-fun m!307145 () Bool)

(assert (=> b!293390 m!307145))

(declare-fun m!307147 () Bool)

(assert (=> b!293390 m!307147))

(declare-fun m!307149 () Bool)

(assert (=> b!293390 m!307149))

(declare-fun m!307151 () Bool)

(assert (=> start!28746 m!307151))

(declare-fun m!307153 () Bool)

(assert (=> start!28746 m!307153))

(declare-fun m!307155 () Bool)

(assert (=> b!293393 m!307155))

(declare-fun m!307157 () Bool)

(assert (=> b!293389 m!307157))

(declare-fun m!307159 () Bool)

(assert (=> b!293391 m!307159))

(declare-fun m!307161 () Bool)

(assert (=> b!293392 m!307161))

(check-sat (not b!293391) (not start!28746) (not b!293389) (not b!293390) (not b!293393) (not b!293392))
(check-sat)
(get-model)

(declare-fun d!66481 () Bool)

(assert (=> d!66481 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28746 d!66481))

(declare-fun d!66485 () Bool)

(assert (=> d!66485 (= (array_inv!5009 a!3312) (bvsge (size!7407 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28746 d!66485))

(declare-fun bm!25670 () Bool)

(declare-fun call!25673 () Bool)

(assert (=> bm!25670 (= call!25673 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!293443 () Bool)

(declare-fun e!185563 () Bool)

(declare-fun e!185564 () Bool)

(assert (=> b!293443 (= e!185563 e!185564)))

(declare-fun lt!145509 () (_ BitVec 64))

(assert (=> b!293443 (= lt!145509 (select (arr!7055 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9175 0))(
  ( (Unit!9176) )
))
(declare-fun lt!145511 () Unit!9175)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14869 (_ BitVec 64) (_ BitVec 32)) Unit!9175)

(assert (=> b!293443 (= lt!145511 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145509 #b00000000000000000000000000000000))))

(assert (=> b!293443 (arrayContainsKey!0 a!3312 lt!145509 #b00000000000000000000000000000000)))

(declare-fun lt!145510 () Unit!9175)

(assert (=> b!293443 (= lt!145510 lt!145511)))

(declare-fun res!154387 () Bool)

(assert (=> b!293443 (= res!154387 (= (seekEntryOrOpen!0 (select (arr!7055 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2215 #b00000000000000000000000000000000)))))

(assert (=> b!293443 (=> (not res!154387) (not e!185564))))

(declare-fun b!293444 () Bool)

(declare-fun e!185562 () Bool)

(assert (=> b!293444 (= e!185562 e!185563)))

(declare-fun c!47096 () Bool)

(assert (=> b!293444 (= c!47096 (validKeyInArray!0 (select (arr!7055 a!3312) #b00000000000000000000000000000000)))))

(declare-fun d!66487 () Bool)

(declare-fun res!154386 () Bool)

(assert (=> d!66487 (=> res!154386 e!185562)))

(assert (=> d!66487 (= res!154386 (bvsge #b00000000000000000000000000000000 (size!7407 a!3312)))))

(assert (=> d!66487 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!185562)))

(declare-fun b!293445 () Bool)

(assert (=> b!293445 (= e!185563 call!25673)))

(declare-fun b!293446 () Bool)

(assert (=> b!293446 (= e!185564 call!25673)))

(assert (= (and d!66487 (not res!154386)) b!293444))

(assert (= (and b!293444 c!47096) b!293443))

(assert (= (and b!293444 (not c!47096)) b!293445))

(assert (= (and b!293443 res!154387) b!293446))

(assert (= (or b!293446 b!293445) bm!25670))

(declare-fun m!307197 () Bool)

(assert (=> bm!25670 m!307197))

(declare-fun m!307199 () Bool)

(assert (=> b!293443 m!307199))

(declare-fun m!307201 () Bool)

(assert (=> b!293443 m!307201))

(declare-fun m!307203 () Bool)

(assert (=> b!293443 m!307203))

(assert (=> b!293443 m!307199))

(declare-fun m!307205 () Bool)

(assert (=> b!293443 m!307205))

(assert (=> b!293444 m!307199))

(assert (=> b!293444 m!307199))

(declare-fun m!307207 () Bool)

(assert (=> b!293444 m!307207))

(assert (=> b!293392 d!66487))

(declare-fun d!66495 () Bool)

(assert (=> d!66495 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!293393 d!66495))

(declare-fun b!293485 () Bool)

(declare-fun e!185591 () SeekEntryResult!2215)

(assert (=> b!293485 (= e!185591 (Intermediate!2215 false lt!145476 #b00000000000000000000000000000000))))

(declare-fun b!293486 () Bool)

(declare-fun e!185588 () Bool)

(declare-fun lt!145521 () SeekEntryResult!2215)

(assert (=> b!293486 (= e!185588 (bvsge (x!29180 lt!145521) #b01111111111111111111111111111110))))

(declare-fun b!293487 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293487 (= e!185591 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145476 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!14870 (store (arr!7055 a!3312) i!1256 k0!2524) (size!7407 a!3312)) mask!3809))))

(declare-fun d!66499 () Bool)

(assert (=> d!66499 e!185588))

(declare-fun c!47110 () Bool)

(assert (=> d!66499 (= c!47110 (and ((_ is Intermediate!2215) lt!145521) (undefined!3027 lt!145521)))))

(declare-fun e!185590 () SeekEntryResult!2215)

(assert (=> d!66499 (= lt!145521 e!185590)))

(declare-fun c!47109 () Bool)

(assert (=> d!66499 (= c!47109 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!145520 () (_ BitVec 64))

(assert (=> d!66499 (= lt!145520 (select (arr!7055 (array!14870 (store (arr!7055 a!3312) i!1256 k0!2524) (size!7407 a!3312))) lt!145476))))

(assert (=> d!66499 (validMask!0 mask!3809)))

(assert (=> d!66499 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145476 k0!2524 (array!14870 (store (arr!7055 a!3312) i!1256 k0!2524) (size!7407 a!3312)) mask!3809) lt!145521)))

(declare-fun b!293488 () Bool)

(declare-fun e!185587 () Bool)

(assert (=> b!293488 (= e!185588 e!185587)))

(declare-fun res!154402 () Bool)

(assert (=> b!293488 (= res!154402 (and ((_ is Intermediate!2215) lt!145521) (not (undefined!3027 lt!145521)) (bvslt (x!29180 lt!145521) #b01111111111111111111111111111110) (bvsge (x!29180 lt!145521) #b00000000000000000000000000000000) (bvsge (x!29180 lt!145521) #b00000000000000000000000000000000)))))

(assert (=> b!293488 (=> (not res!154402) (not e!185587))))

(declare-fun b!293489 () Bool)

(assert (=> b!293489 (and (bvsge (index!11032 lt!145521) #b00000000000000000000000000000000) (bvslt (index!11032 lt!145521) (size!7407 (array!14870 (store (arr!7055 a!3312) i!1256 k0!2524) (size!7407 a!3312)))))))

(declare-fun res!154404 () Bool)

(assert (=> b!293489 (= res!154404 (= (select (arr!7055 (array!14870 (store (arr!7055 a!3312) i!1256 k0!2524) (size!7407 a!3312))) (index!11032 lt!145521)) k0!2524))))

(declare-fun e!185589 () Bool)

(assert (=> b!293489 (=> res!154404 e!185589)))

(assert (=> b!293489 (= e!185587 e!185589)))

(declare-fun b!293490 () Bool)

(assert (=> b!293490 (and (bvsge (index!11032 lt!145521) #b00000000000000000000000000000000) (bvslt (index!11032 lt!145521) (size!7407 (array!14870 (store (arr!7055 a!3312) i!1256 k0!2524) (size!7407 a!3312)))))))

(assert (=> b!293490 (= e!185589 (= (select (arr!7055 (array!14870 (store (arr!7055 a!3312) i!1256 k0!2524) (size!7407 a!3312))) (index!11032 lt!145521)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!293491 () Bool)

(assert (=> b!293491 (= e!185590 (Intermediate!2215 true lt!145476 #b00000000000000000000000000000000))))

(declare-fun b!293492 () Bool)

(assert (=> b!293492 (= e!185590 e!185591)))

(declare-fun c!47111 () Bool)

(assert (=> b!293492 (= c!47111 (or (= lt!145520 k0!2524) (= (bvadd lt!145520 lt!145520) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293493 () Bool)

(assert (=> b!293493 (and (bvsge (index!11032 lt!145521) #b00000000000000000000000000000000) (bvslt (index!11032 lt!145521) (size!7407 (array!14870 (store (arr!7055 a!3312) i!1256 k0!2524) (size!7407 a!3312)))))))

(declare-fun res!154403 () Bool)

(assert (=> b!293493 (= res!154403 (= (select (arr!7055 (array!14870 (store (arr!7055 a!3312) i!1256 k0!2524) (size!7407 a!3312))) (index!11032 lt!145521)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293493 (=> res!154403 e!185589)))

(assert (= (and d!66499 c!47109) b!293491))

(assert (= (and d!66499 (not c!47109)) b!293492))

(assert (= (and b!293492 c!47111) b!293485))

(assert (= (and b!293492 (not c!47111)) b!293487))

(assert (= (and d!66499 c!47110) b!293486))

(assert (= (and d!66499 (not c!47110)) b!293488))

(assert (= (and b!293488 res!154402) b!293489))

(assert (= (and b!293489 (not res!154404)) b!293493))

(assert (= (and b!293493 (not res!154403)) b!293490))

(declare-fun m!307213 () Bool)

(assert (=> d!66499 m!307213))

(assert (=> d!66499 m!307151))

(declare-fun m!307217 () Bool)

(assert (=> b!293489 m!307217))

(assert (=> b!293493 m!307217))

(assert (=> b!293490 m!307217))

(declare-fun m!307221 () Bool)

(assert (=> b!293487 m!307221))

(assert (=> b!293487 m!307221))

(declare-fun m!307225 () Bool)

(assert (=> b!293487 m!307225))

(assert (=> b!293390 d!66499))

(declare-fun b!293503 () Bool)

(declare-fun e!185601 () SeekEntryResult!2215)

(assert (=> b!293503 (= e!185601 (Intermediate!2215 false lt!145476 #b00000000000000000000000000000000))))

(declare-fun b!293504 () Bool)

(declare-fun e!185598 () Bool)

(declare-fun lt!145525 () SeekEntryResult!2215)

(assert (=> b!293504 (= e!185598 (bvsge (x!29180 lt!145525) #b01111111111111111111111111111110))))

(declare-fun b!293505 () Bool)

(assert (=> b!293505 (= e!185601 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145476 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun d!66507 () Bool)

(assert (=> d!66507 e!185598))

(declare-fun c!47116 () Bool)

(assert (=> d!66507 (= c!47116 (and ((_ is Intermediate!2215) lt!145525) (undefined!3027 lt!145525)))))

(declare-fun e!185600 () SeekEntryResult!2215)

(assert (=> d!66507 (= lt!145525 e!185600)))

(declare-fun c!47115 () Bool)

(assert (=> d!66507 (= c!47115 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!145524 () (_ BitVec 64))

(assert (=> d!66507 (= lt!145524 (select (arr!7055 a!3312) lt!145476))))

(assert (=> d!66507 (validMask!0 mask!3809)))

(assert (=> d!66507 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145476 k0!2524 a!3312 mask!3809) lt!145525)))

(declare-fun b!293506 () Bool)

(declare-fun e!185597 () Bool)

(assert (=> b!293506 (= e!185598 e!185597)))

(declare-fun res!154408 () Bool)

(assert (=> b!293506 (= res!154408 (and ((_ is Intermediate!2215) lt!145525) (not (undefined!3027 lt!145525)) (bvslt (x!29180 lt!145525) #b01111111111111111111111111111110) (bvsge (x!29180 lt!145525) #b00000000000000000000000000000000) (bvsge (x!29180 lt!145525) #b00000000000000000000000000000000)))))

(assert (=> b!293506 (=> (not res!154408) (not e!185597))))

(declare-fun b!293507 () Bool)

(assert (=> b!293507 (and (bvsge (index!11032 lt!145525) #b00000000000000000000000000000000) (bvslt (index!11032 lt!145525) (size!7407 a!3312)))))

(declare-fun res!154410 () Bool)

(assert (=> b!293507 (= res!154410 (= (select (arr!7055 a!3312) (index!11032 lt!145525)) k0!2524))))

(declare-fun e!185599 () Bool)

(assert (=> b!293507 (=> res!154410 e!185599)))

(assert (=> b!293507 (= e!185597 e!185599)))

(declare-fun b!293508 () Bool)

(assert (=> b!293508 (and (bvsge (index!11032 lt!145525) #b00000000000000000000000000000000) (bvslt (index!11032 lt!145525) (size!7407 a!3312)))))

(assert (=> b!293508 (= e!185599 (= (select (arr!7055 a!3312) (index!11032 lt!145525)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!293509 () Bool)

(assert (=> b!293509 (= e!185600 (Intermediate!2215 true lt!145476 #b00000000000000000000000000000000))))

(declare-fun b!293510 () Bool)

(assert (=> b!293510 (= e!185600 e!185601)))

(declare-fun c!47117 () Bool)

(assert (=> b!293510 (= c!47117 (or (= lt!145524 k0!2524) (= (bvadd lt!145524 lt!145524) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293511 () Bool)

(assert (=> b!293511 (and (bvsge (index!11032 lt!145525) #b00000000000000000000000000000000) (bvslt (index!11032 lt!145525) (size!7407 a!3312)))))

(declare-fun res!154409 () Bool)

(assert (=> b!293511 (= res!154409 (= (select (arr!7055 a!3312) (index!11032 lt!145525)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293511 (=> res!154409 e!185599)))

(assert (= (and d!66507 c!47115) b!293509))

(assert (= (and d!66507 (not c!47115)) b!293510))

(assert (= (and b!293510 c!47117) b!293503))

(assert (= (and b!293510 (not c!47117)) b!293505))

(assert (= (and d!66507 c!47116) b!293504))

(assert (= (and d!66507 (not c!47116)) b!293506))

(assert (= (and b!293506 res!154408) b!293507))

(assert (= (and b!293507 (not res!154410)) b!293511))

(assert (= (and b!293511 (not res!154409)) b!293508))

(declare-fun m!307229 () Bool)

(assert (=> d!66507 m!307229))

(assert (=> d!66507 m!307151))

(declare-fun m!307233 () Bool)

(assert (=> b!293507 m!307233))

(assert (=> b!293511 m!307233))

(assert (=> b!293508 m!307233))

(assert (=> b!293505 m!307221))

(assert (=> b!293505 m!307221))

(declare-fun m!307237 () Bool)

(assert (=> b!293505 m!307237))

(assert (=> b!293390 d!66507))

(declare-fun d!66511 () Bool)

(declare-fun lt!145546 () (_ BitVec 32))

(declare-fun lt!145545 () (_ BitVec 32))

(assert (=> d!66511 (= lt!145546 (bvmul (bvxor lt!145545 (bvlshr lt!145545 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66511 (= lt!145545 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66511 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154414 (let ((h!5291 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29184 (bvmul (bvxor h!5291 (bvlshr h!5291 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29184 (bvlshr x!29184 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154414 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154414 #b00000000000000000000000000000000))))))

(assert (=> d!66511 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!145546 (bvlshr lt!145546 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!293390 d!66511))

(declare-fun b!293581 () Bool)

(declare-fun c!47147 () Bool)

(declare-fun lt!145568 () (_ BitVec 64))

(assert (=> b!293581 (= c!47147 (= lt!145568 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185643 () SeekEntryResult!2215)

(declare-fun e!185642 () SeekEntryResult!2215)

(assert (=> b!293581 (= e!185643 e!185642)))

(declare-fun b!293582 () Bool)

(declare-fun lt!145570 () SeekEntryResult!2215)

(assert (=> b!293582 (= e!185643 (Found!2215 (index!11032 lt!145570)))))

(declare-fun b!293583 () Bool)

(assert (=> b!293583 (= e!185642 (MissingZero!2215 (index!11032 lt!145570)))))

(declare-fun b!293585 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14869 (_ BitVec 32)) SeekEntryResult!2215)

(assert (=> b!293585 (= e!185642 (seekKeyOrZeroReturnVacant!0 (x!29180 lt!145570) (index!11032 lt!145570) (index!11032 lt!145570) k0!2524 a!3312 mask!3809))))

(declare-fun b!293586 () Bool)

(declare-fun e!185641 () SeekEntryResult!2215)

(assert (=> b!293586 (= e!185641 e!185643)))

(assert (=> b!293586 (= lt!145568 (select (arr!7055 a!3312) (index!11032 lt!145570)))))

(declare-fun c!47145 () Bool)

(assert (=> b!293586 (= c!47145 (= lt!145568 k0!2524))))

(declare-fun d!66515 () Bool)

(declare-fun lt!145569 () SeekEntryResult!2215)

(assert (=> d!66515 (and (or ((_ is Undefined!2215) lt!145569) (not ((_ is Found!2215) lt!145569)) (and (bvsge (index!11031 lt!145569) #b00000000000000000000000000000000) (bvslt (index!11031 lt!145569) (size!7407 a!3312)))) (or ((_ is Undefined!2215) lt!145569) ((_ is Found!2215) lt!145569) (not ((_ is MissingZero!2215) lt!145569)) (and (bvsge (index!11030 lt!145569) #b00000000000000000000000000000000) (bvslt (index!11030 lt!145569) (size!7407 a!3312)))) (or ((_ is Undefined!2215) lt!145569) ((_ is Found!2215) lt!145569) ((_ is MissingZero!2215) lt!145569) (not ((_ is MissingVacant!2215) lt!145569)) (and (bvsge (index!11033 lt!145569) #b00000000000000000000000000000000) (bvslt (index!11033 lt!145569) (size!7407 a!3312)))) (or ((_ is Undefined!2215) lt!145569) (ite ((_ is Found!2215) lt!145569) (= (select (arr!7055 a!3312) (index!11031 lt!145569)) k0!2524) (ite ((_ is MissingZero!2215) lt!145569) (= (select (arr!7055 a!3312) (index!11030 lt!145569)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2215) lt!145569) (= (select (arr!7055 a!3312) (index!11033 lt!145569)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66515 (= lt!145569 e!185641)))

(declare-fun c!47146 () Bool)

(assert (=> d!66515 (= c!47146 (and ((_ is Intermediate!2215) lt!145570) (undefined!3027 lt!145570)))))

(assert (=> d!66515 (= lt!145570 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!66515 (validMask!0 mask!3809)))

(assert (=> d!66515 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!145569)))

(declare-fun b!293584 () Bool)

(assert (=> b!293584 (= e!185641 Undefined!2215)))

(assert (= (and d!66515 c!47146) b!293584))

(assert (= (and d!66515 (not c!47146)) b!293586))

(assert (= (and b!293586 c!47145) b!293582))

(assert (= (and b!293586 (not c!47145)) b!293581))

(assert (= (and b!293581 c!47147) b!293583))

(assert (= (and b!293581 (not c!47147)) b!293585))

(declare-fun m!307263 () Bool)

(assert (=> b!293585 m!307263))

(declare-fun m!307265 () Bool)

(assert (=> b!293586 m!307265))

(declare-fun m!307267 () Bool)

(assert (=> d!66515 m!307267))

(assert (=> d!66515 m!307149))

(declare-fun m!307269 () Bool)

(assert (=> d!66515 m!307269))

(declare-fun m!307271 () Bool)

(assert (=> d!66515 m!307271))

(declare-fun m!307273 () Bool)

(assert (=> d!66515 m!307273))

(assert (=> d!66515 m!307151))

(assert (=> d!66515 m!307149))

(assert (=> b!293389 d!66515))

(declare-fun d!66525 () Bool)

(declare-fun res!154438 () Bool)

(declare-fun e!185658 () Bool)

(assert (=> d!66525 (=> res!154438 e!185658)))

(assert (=> d!66525 (= res!154438 (= (select (arr!7055 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!66525 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!185658)))

(declare-fun b!293609 () Bool)

(declare-fun e!185659 () Bool)

(assert (=> b!293609 (= e!185658 e!185659)))

(declare-fun res!154439 () Bool)

(assert (=> b!293609 (=> (not res!154439) (not e!185659))))

(assert (=> b!293609 (= res!154439 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7407 a!3312)))))

(declare-fun b!293610 () Bool)

(assert (=> b!293610 (= e!185659 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66525 (not res!154438)) b!293609))

(assert (= (and b!293609 res!154439) b!293610))

(assert (=> d!66525 m!307199))

(declare-fun m!307289 () Bool)

(assert (=> b!293610 m!307289))

(assert (=> b!293391 d!66525))

(check-sat (not b!293444) (not b!293505) (not b!293487) (not d!66507) (not b!293585) (not d!66515) (not bm!25670) (not b!293443) (not b!293610) (not d!66499))
(check-sat)
