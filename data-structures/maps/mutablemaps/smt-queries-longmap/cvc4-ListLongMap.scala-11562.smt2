; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134686 () Bool)

(assert start!134686)

(declare-fun mask!4043 () (_ BitVec 32))

(declare-datatypes ((array!104831 0))(
  ( (array!104832 (arr!50589 (Array (_ BitVec 32) (_ BitVec 64))) (size!51140 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104831)

(declare-fun b!1571299 () Bool)

(declare-fun e!876134 () Bool)

(declare-fun k!2731 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13542 0))(
  ( (MissingZero!13542 (index!56565 (_ BitVec 32))) (Found!13542 (index!56566 (_ BitVec 32))) (Intermediate!13542 (undefined!14354 Bool) (index!56567 (_ BitVec 32)) (x!141265 (_ BitVec 32))) (Undefined!13542) (MissingVacant!13542 (index!56568 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!104831 (_ BitVec 32)) SeekEntryResult!13542)

(assert (=> b!1571299 (= e!876134 (is-Found!13542 (seekEntry!0 k!2731 a!3462 mask!4043)))))

(declare-fun b!1571300 () Bool)

(declare-fun res!1073676 () Bool)

(assert (=> b!1571300 (=> (not res!1073676) (not e!876134))))

(assert (=> b!1571300 (= res!1073676 (= (size!51140 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571301 () Bool)

(declare-fun res!1073675 () Bool)

(assert (=> b!1571301 (=> (not res!1073675) (not e!876134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104831 (_ BitVec 32)) Bool)

(assert (=> b!1571301 (= res!1073675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun b!1571302 () Bool)

(declare-fun res!1073674 () Bool)

(assert (=> b!1571302 (=> (not res!1073674) (not e!876134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571302 (= res!1073674 (validKeyInArray!0 k!2731))))

(declare-fun res!1073677 () Bool)

(assert (=> start!134686 (=> (not res!1073677) (not e!876134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134686 (= res!1073677 (validMask!0 mask!4043))))

(assert (=> start!134686 e!876134))

(assert (=> start!134686 true))

(declare-fun array_inv!39234 (array!104831) Bool)

(assert (=> start!134686 (array_inv!39234 a!3462)))

(declare-fun b!1571303 () Bool)

(declare-fun res!1073678 () Bool)

(assert (=> b!1571303 (=> (not res!1073678) (not e!876134))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104831 (_ BitVec 32)) SeekEntryResult!13542)

(assert (=> b!1571303 (= res!1073678 (not (is-Found!13542 (seekEntryOrOpen!0 k!2731 a!3462 mask!4043))))))

(assert (= (and start!134686 res!1073677) b!1571300))

(assert (= (and b!1571300 res!1073676) b!1571301))

(assert (= (and b!1571301 res!1073675) b!1571302))

(assert (= (and b!1571302 res!1073674) b!1571303))

(assert (= (and b!1571303 res!1073678) b!1571299))

(declare-fun m!1445305 () Bool)

(assert (=> b!1571301 m!1445305))

(declare-fun m!1445307 () Bool)

(assert (=> start!134686 m!1445307))

(declare-fun m!1445309 () Bool)

(assert (=> start!134686 m!1445309))

(declare-fun m!1445311 () Bool)

(assert (=> b!1571303 m!1445311))

(declare-fun m!1445313 () Bool)

(assert (=> b!1571299 m!1445313))

(declare-fun m!1445315 () Bool)

(assert (=> b!1571302 m!1445315))

(push 1)

(assert (not b!1571303))

(assert (not start!134686))

(assert (not b!1571302))

(assert (not b!1571301))

(assert (not b!1571299))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1571352 () Bool)

(declare-fun e!876161 () SeekEntryResult!13542)

(assert (=> b!1571352 (= e!876161 Undefined!13542)))

(declare-fun b!1571353 () Bool)

(declare-fun e!876162 () SeekEntryResult!13542)

(declare-fun lt!673512 () SeekEntryResult!13542)

(assert (=> b!1571353 (= e!876162 (MissingZero!13542 (index!56567 lt!673512)))))

(declare-fun b!1571354 () Bool)

(declare-fun e!876160 () SeekEntryResult!13542)

(assert (=> b!1571354 (= e!876161 e!876160)))

(declare-fun lt!673513 () (_ BitVec 64))

(assert (=> b!1571354 (= lt!673513 (select (arr!50589 a!3462) (index!56567 lt!673512)))))

(declare-fun c!145077 () Bool)

(assert (=> b!1571354 (= c!145077 (= lt!673513 k!2731))))

(declare-fun d!164447 () Bool)

(declare-fun lt!673511 () SeekEntryResult!13542)

(assert (=> d!164447 (and (or (is-Undefined!13542 lt!673511) (not (is-Found!13542 lt!673511)) (and (bvsge (index!56566 lt!673511) #b00000000000000000000000000000000) (bvslt (index!56566 lt!673511) (size!51140 a!3462)))) (or (is-Undefined!13542 lt!673511) (is-Found!13542 lt!673511) (not (is-MissingZero!13542 lt!673511)) (and (bvsge (index!56565 lt!673511) #b00000000000000000000000000000000) (bvslt (index!56565 lt!673511) (size!51140 a!3462)))) (or (is-Undefined!13542 lt!673511) (is-Found!13542 lt!673511) (is-MissingZero!13542 lt!673511) (not (is-MissingVacant!13542 lt!673511)) (and (bvsge (index!56568 lt!673511) #b00000000000000000000000000000000) (bvslt (index!56568 lt!673511) (size!51140 a!3462)))) (or (is-Undefined!13542 lt!673511) (ite (is-Found!13542 lt!673511) (= (select (arr!50589 a!3462) (index!56566 lt!673511)) k!2731) (ite (is-MissingZero!13542 lt!673511) (= (select (arr!50589 a!3462) (index!56565 lt!673511)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13542 lt!673511) (= (select (arr!50589 a!3462) (index!56568 lt!673511)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!164447 (= lt!673511 e!876161)))

(declare-fun c!145075 () Bool)

(assert (=> d!164447 (= c!145075 (and (is-Intermediate!13542 lt!673512) (undefined!14354 lt!673512)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104831 (_ BitVec 32)) SeekEntryResult!13542)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!164447 (= lt!673512 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2731 mask!4043) k!2731 a!3462 mask!4043))))

(assert (=> d!164447 (validMask!0 mask!4043)))

(assert (=> d!164447 (= (seekEntryOrOpen!0 k!2731 a!3462 mask!4043) lt!673511)))

(declare-fun b!1571355 () Bool)

(declare-fun c!145076 () Bool)

(assert (=> b!1571355 (= c!145076 (= lt!673513 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1571355 (= e!876160 e!876162)))

(declare-fun b!1571356 () Bool)

(assert (=> b!1571356 (= e!876160 (Found!13542 (index!56567 lt!673512)))))

(declare-fun b!1571357 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104831 (_ BitVec 32)) SeekEntryResult!13542)

(assert (=> b!1571357 (= e!876162 (seekKeyOrZeroReturnVacant!0 (x!141265 lt!673512) (index!56567 lt!673512) (index!56567 lt!673512) k!2731 a!3462 mask!4043))))

(assert (= (and d!164447 c!145075) b!1571352))

(assert (= (and d!164447 (not c!145075)) b!1571354))

(assert (= (and b!1571354 c!145077) b!1571356))

(assert (= (and b!1571354 (not c!145077)) b!1571355))

(assert (= (and b!1571355 c!145076) b!1571353))

(assert (= (and b!1571355 (not c!145076)) b!1571357))

(declare-fun m!1445339 () Bool)

(assert (=> b!1571354 m!1445339))

(declare-fun m!1445343 () Bool)

(assert (=> d!164447 m!1445343))

(declare-fun m!1445345 () Bool)

(assert (=> d!164447 m!1445345))

(assert (=> d!164447 m!1445307))

(declare-fun m!1445347 () Bool)

(assert (=> d!164447 m!1445347))

(declare-fun m!1445349 () Bool)

(assert (=> d!164447 m!1445349))

(assert (=> d!164447 m!1445343))

(declare-fun m!1445351 () Bool)

(assert (=> d!164447 m!1445351))

(declare-fun m!1445353 () Bool)

(assert (=> b!1571357 m!1445353))

(assert (=> b!1571303 d!164447))

(declare-fun bm!72361 () Bool)

(declare-fun call!72364 () Bool)

(assert (=> bm!72361 (= call!72364 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3462 mask!4043))))

(declare-fun b!1571386 () Bool)

(declare-fun e!876181 () Bool)

(assert (=> b!1571386 (= e!876181 call!72364)))

(declare-fun b!1571387 () Bool)

(declare-fun e!876183 () Bool)

(assert (=> b!1571387 (= e!876183 call!72364)))

(declare-fun d!164453 () Bool)

(declare-fun res!1073688 () Bool)

(declare-fun e!876182 () Bool)

(assert (=> d!164453 (=> res!1073688 e!876182)))

(assert (=> d!164453 (= res!1073688 (bvsge #b00000000000000000000000000000000 (size!51140 a!3462)))))

(assert (=> d!164453 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043) e!876182)))

(declare-fun b!1571388 () Bool)

(assert (=> b!1571388 (= e!876181 e!876183)))

(declare-fun lt!673533 () (_ BitVec 64))

(assert (=> b!1571388 (= lt!673533 (select (arr!50589 a!3462) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!52052 0))(
  ( (Unit!52053) )
))
(declare-fun lt!673534 () Unit!52052)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104831 (_ BitVec 64) (_ BitVec 32)) Unit!52052)

(assert (=> b!1571388 (= lt!673534 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3462 lt!673533 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104831 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1571388 (arrayContainsKey!0 a!3462 lt!673533 #b00000000000000000000000000000000)))

(declare-fun lt!673532 () Unit!52052)

(assert (=> b!1571388 (= lt!673532 lt!673534)))

(declare-fun res!1073687 () Bool)

(assert (=> b!1571388 (= res!1073687 (= (seekEntryOrOpen!0 (select (arr!50589 a!3462) #b00000000000000000000000000000000) a!3462 mask!4043) (Found!13542 #b00000000000000000000000000000000)))))

(assert (=> b!1571388 (=> (not res!1073687) (not e!876183))))

(declare-fun b!1571389 () Bool)

(assert (=> b!1571389 (= e!876182 e!876181)))

(declare-fun c!145088 () Bool)

(assert (=> b!1571389 (= c!145088 (validKeyInArray!0 (select (arr!50589 a!3462) #b00000000000000000000000000000000)))))

(assert (= (and d!164453 (not res!1073688)) b!1571389))

(assert (= (and b!1571389 c!145088) b!1571388))

(assert (= (and b!1571389 (not c!145088)) b!1571386))

(assert (= (and b!1571388 res!1073687) b!1571387))

(assert (= (or b!1571387 b!1571386) bm!72361))

(declare-fun m!1445355 () Bool)

(assert (=> bm!72361 m!1445355))

(declare-fun m!1445359 () Bool)

(assert (=> b!1571388 m!1445359))

(declare-fun m!1445363 () Bool)

(assert (=> b!1571388 m!1445363))

(declare-fun m!1445367 () Bool)

(assert (=> b!1571388 m!1445367))

(assert (=> b!1571388 m!1445359))

(declare-fun m!1445370 () Bool)

(assert (=> b!1571388 m!1445370))

(assert (=> b!1571389 m!1445359))

(assert (=> b!1571389 m!1445359))

(declare-fun m!1445375 () Bool)

(assert (=> b!1571389 m!1445375))

(assert (=> b!1571301 d!164453))

(declare-fun d!164455 () Bool)

(assert (=> d!164455 (= (validKeyInArray!0 k!2731) (and (not (= k!2731 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2731 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1571302 d!164455))

(declare-fun d!164459 () Bool)

(declare-fun lt!673561 () SeekEntryResult!13542)

(assert (=> d!164459 (and (or (is-MissingVacant!13542 lt!673561) (not (is-Found!13542 lt!673561)) (and (bvsge (index!56566 lt!673561) #b00000000000000000000000000000000) (bvslt (index!56566 lt!673561) (size!51140 a!3462)))) (not (is-MissingVacant!13542 lt!673561)) (or (not (is-Found!13542 lt!673561)) (= (select (arr!50589 a!3462) (index!56566 lt!673561)) k!2731)))))

(declare-fun e!876207 () SeekEntryResult!13542)

(assert (=> d!164459 (= lt!673561 e!876207)))

(declare-fun c!145104 () Bool)

(declare-fun lt!673560 () SeekEntryResult!13542)

(assert (=> d!164459 (= c!145104 (and (is-Intermediate!13542 lt!673560) (undefined!14354 lt!673560)))))

(assert (=> d!164459 (= lt!673560 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2731 mask!4043) k!2731 a!3462 mask!4043))))

(assert (=> d!164459 (validMask!0 mask!4043)))

(assert (=> d!164459 (= (seekEntry!0 k!2731 a!3462 mask!4043) lt!673561)))

(declare-fun b!1571424 () Bool)

(declare-fun e!876205 () SeekEntryResult!13542)

(declare-fun lt!673558 () SeekEntryResult!13542)

(assert (=> b!1571424 (= e!876205 (ite (is-MissingVacant!13542 lt!673558) (MissingZero!13542 (index!56568 lt!673558)) lt!673558))))

(assert (=> b!1571424 (= lt!673558 (seekKeyOrZeroReturnVacant!0 (x!141265 lt!673560) (index!56567 lt!673560) (index!56567 lt!673560) k!2731 a!3462 mask!4043))))

(declare-fun b!1571425 () Bool)

(assert (=> b!1571425 (= e!876205 (MissingZero!13542 (index!56567 lt!673560)))))

(declare-fun b!1571426 () Bool)

(declare-fun c!145102 () Bool)

(declare-fun lt!673559 () (_ BitVec 64))

(assert (=> b!1571426 (= c!145102 (= lt!673559 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!876206 () SeekEntryResult!13542)

(assert (=> b!1571426 (= e!876206 e!876205)))

(declare-fun b!1571427 () Bool)

(assert (=> b!1571427 (= e!876207 e!876206)))

(assert (=> b!1571427 (= lt!673559 (select (arr!50589 a!3462) (index!56567 lt!673560)))))

(declare-fun c!145103 () Bool)

(assert (=> b!1571427 (= c!145103 (= lt!673559 k!2731))))

(declare-fun b!1571428 () Bool)

(assert (=> b!1571428 (= e!876206 (Found!13542 (index!56567 lt!673560)))))

(declare-fun b!1571429 () Bool)

(assert (=> b!1571429 (= e!876207 Undefined!13542)))

(assert (= (and d!164459 c!145104) b!1571429))

(assert (= (and d!164459 (not c!145104)) b!1571427))

(assert (= (and b!1571427 c!145103) b!1571428))

(assert (= (and b!1571427 (not c!145103)) b!1571426))

(assert (= (and b!1571426 c!145102) b!1571425))

(assert (= (and b!1571426 (not c!145102)) b!1571424))

(declare-fun m!1445401 () Bool)

(assert (=> d!164459 m!1445401))

(assert (=> d!164459 m!1445343))

(assert (=> d!164459 m!1445343))

(assert (=> d!164459 m!1445345))

(assert (=> d!164459 m!1445307))

(declare-fun m!1445403 () Bool)

(assert (=> b!1571424 m!1445403))

(declare-fun m!1445405 () Bool)

(assert (=> b!1571427 m!1445405))

(assert (=> b!1571299 d!164459))

(declare-fun d!164471 () Bool)

(assert (=> d!164471 (= (validMask!0 mask!4043) (and (or (= mask!4043 #b00000000000000000000000000000111) (= mask!4043 #b00000000000000000000000000001111) (= mask!4043 #b00000000000000000000000000011111) (= mask!4043 #b00000000000000000000000000111111) (= mask!4043 #b00000000000000000000000001111111) (= mask!4043 #b00000000000000000000000011111111) (= mask!4043 #b00000000000000000000000111111111) (= mask!4043 #b00000000000000000000001111111111) (= mask!4043 #b00000000000000000000011111111111) (= mask!4043 #b00000000000000000000111111111111) (= mask!4043 #b00000000000000000001111111111111) (= mask!4043 #b00000000000000000011111111111111) (= mask!4043 #b00000000000000000111111111111111) (= mask!4043 #b00000000000000001111111111111111) (= mask!4043 #b00000000000000011111111111111111) (= mask!4043 #b00000000000000111111111111111111) (= mask!4043 #b00000000000001111111111111111111) (= mask!4043 #b00000000000011111111111111111111) (= mask!4043 #b00000000000111111111111111111111) (= mask!4043 #b00000000001111111111111111111111) (= mask!4043 #b00000000011111111111111111111111) (= mask!4043 #b00000000111111111111111111111111) (= mask!4043 #b00000001111111111111111111111111) (= mask!4043 #b00000011111111111111111111111111) (= mask!4043 #b00000111111111111111111111111111) (= mask!4043 #b00001111111111111111111111111111) (= mask!4043 #b00011111111111111111111111111111) (= mask!4043 #b00111111111111111111111111111111)) (bvsle mask!4043 #b00111111111111111111111111111111)))))

(assert (=> start!134686 d!164471))

(declare-fun d!164475 () Bool)

(assert (=> d!164475 (= (array_inv!39234 a!3462) (bvsge (size!51140 a!3462) #b00000000000000000000000000000000))))

(assert (=> start!134686 d!164475))

(push 1)

