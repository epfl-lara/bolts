; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28744 () Bool)

(assert start!28744)

(declare-fun b!293371 () Bool)

(declare-fun e!185518 () Bool)

(declare-fun e!185516 () Bool)

(assert (=> b!293371 (= e!185518 e!185516)))

(declare-fun res!154328 () Bool)

(assert (=> b!293371 (=> (not res!154328) (not e!185516))))

(declare-datatypes ((SeekEntryResult!2214 0))(
  ( (MissingZero!2214 (index!11026 (_ BitVec 32))) (Found!2214 (index!11027 (_ BitVec 32))) (Intermediate!2214 (undefined!3026 Bool) (index!11028 (_ BitVec 32)) (x!29179 (_ BitVec 32))) (Undefined!2214) (MissingVacant!2214 (index!11029 (_ BitVec 32))) )
))
(declare-fun lt!145459 () SeekEntryResult!2214)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!145460 () Bool)

(assert (=> b!293371 (= res!154328 (or lt!145460 (= lt!145459 (MissingVacant!2214 i!1256))))))

(assert (=> b!293371 (= lt!145460 (= lt!145459 (MissingZero!2214 i!1256)))))

(declare-datatypes ((array!14867 0))(
  ( (array!14868 (arr!7054 (Array (_ BitVec 32) (_ BitVec 64))) (size!7406 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14867)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14867 (_ BitVec 32)) SeekEntryResult!2214)

(assert (=> b!293371 (= lt!145459 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!293372 () Bool)

(declare-fun res!154327 () Bool)

(assert (=> b!293372 (=> (not res!154327) (not e!185518))))

(assert (=> b!293372 (= res!154327 (and (= (size!7406 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7406 a!3312))))))

(declare-fun res!154325 () Bool)

(assert (=> start!28744 (=> (not res!154325) (not e!185518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28744 (= res!154325 (validMask!0 mask!3809))))

(assert (=> start!28744 e!185518))

(assert (=> start!28744 true))

(declare-fun array_inv!5008 (array!14867) Bool)

(assert (=> start!28744 (array_inv!5008 a!3312)))

(declare-fun b!293373 () Bool)

(declare-fun res!154324 () Bool)

(assert (=> b!293373 (=> (not res!154324) (not e!185516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14867 (_ BitVec 32)) Bool)

(assert (=> b!293373 (= res!154324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!293374 () Bool)

(declare-fun res!154329 () Bool)

(assert (=> b!293374 (=> (not res!154329) (not e!185518))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293374 (= res!154329 (validKeyInArray!0 k!2524))))

(declare-fun b!293375 () Bool)

(declare-fun res!154326 () Bool)

(assert (=> b!293375 (=> (not res!154326) (not e!185518))))

(declare-fun arrayContainsKey!0 (array!14867 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293375 (= res!154326 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!293376 () Bool)

(declare-fun lt!145462 () SeekEntryResult!2214)

(assert (=> b!293376 (= e!185516 (and lt!145460 (let ((bdg!6217 (not (is-Intermediate!2214 lt!145462)))) (and (or bdg!6217 (not (undefined!3026 lt!145462))) (not bdg!6217) (or (bvslt (index!11028 lt!145462) #b00000000000000000000000000000000) (bvsge (index!11028 lt!145462) (size!7406 a!3312)))))))))

(declare-fun lt!145463 () (_ BitVec 32))

(declare-fun lt!145461 () SeekEntryResult!2214)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14867 (_ BitVec 32)) SeekEntryResult!2214)

(assert (=> b!293376 (= lt!145461 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145463 k!2524 (array!14868 (store (arr!7054 a!3312) i!1256 k!2524) (size!7406 a!3312)) mask!3809))))

(assert (=> b!293376 (= lt!145462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145463 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293376 (= lt!145463 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28744 res!154325) b!293372))

(assert (= (and b!293372 res!154327) b!293374))

(assert (= (and b!293374 res!154329) b!293375))

(assert (= (and b!293375 res!154326) b!293371))

(assert (= (and b!293371 res!154328) b!293373))

(assert (= (and b!293373 res!154324) b!293376))

(declare-fun m!307123 () Bool)

(assert (=> b!293376 m!307123))

(declare-fun m!307125 () Bool)

(assert (=> b!293376 m!307125))

(declare-fun m!307127 () Bool)

(assert (=> b!293376 m!307127))

(declare-fun m!307129 () Bool)

(assert (=> b!293376 m!307129))

(declare-fun m!307131 () Bool)

(assert (=> b!293375 m!307131))

(declare-fun m!307133 () Bool)

(assert (=> b!293371 m!307133))

(declare-fun m!307135 () Bool)

(assert (=> b!293373 m!307135))

(declare-fun m!307137 () Bool)

(assert (=> start!28744 m!307137))

(declare-fun m!307139 () Bool)

(assert (=> start!28744 m!307139))

(declare-fun m!307141 () Bool)

(assert (=> b!293374 m!307141))

(push 1)

(assert (not b!293374))

(assert (not b!293375))

(assert (not b!293376))

(assert (not start!28744))

(assert (not b!293373))

(assert (not b!293371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!293421 () Bool)

(declare-fun e!185544 () Bool)

(declare-fun call!25670 () Bool)

(assert (=> b!293421 (= e!185544 call!25670)))

(declare-fun b!293422 () Bool)

(declare-fun e!185545 () Bool)

(assert (=> b!293422 (= e!185545 call!25670)))

(declare-fun bm!25667 () Bool)

(assert (=> bm!25667 (= call!25670 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun d!66483 () Bool)

(declare-fun res!154370 () Bool)

(declare-fun e!185543 () Bool)

(assert (=> d!66483 (=> res!154370 e!185543)))

(assert (=> d!66483 (= res!154370 (bvsge #b00000000000000000000000000000000 (size!7406 a!3312)))))

(assert (=> d!66483 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!185543)))

(declare-fun b!293423 () Bool)

(assert (=> b!293423 (= e!185543 e!185544)))

(declare-fun c!47093 () Bool)

(assert (=> b!293423 (= c!47093 (validKeyInArray!0 (select (arr!7054 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!293424 () Bool)

(assert (=> b!293424 (= e!185544 e!185545)))

(declare-fun lt!145501 () (_ BitVec 64))

(assert (=> b!293424 (= lt!145501 (select (arr!7054 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9177 0))(
  ( (Unit!9178) )
))
(declare-fun lt!145500 () Unit!9177)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14867 (_ BitVec 64) (_ BitVec 32)) Unit!9177)

(assert (=> b!293424 (= lt!145500 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145501 #b00000000000000000000000000000000))))

(assert (=> b!293424 (arrayContainsKey!0 a!3312 lt!145501 #b00000000000000000000000000000000)))

(declare-fun lt!145502 () Unit!9177)

(assert (=> b!293424 (= lt!145502 lt!145500)))

(declare-fun res!154371 () Bool)

(assert (=> b!293424 (= res!154371 (= (seekEntryOrOpen!0 (select (arr!7054 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2214 #b00000000000000000000000000000000)))))

(assert (=> b!293424 (=> (not res!154371) (not e!185545))))

(assert (= (and d!66483 (not res!154370)) b!293423))

(assert (= (and b!293423 c!47093) b!293424))

(assert (= (and b!293423 (not c!47093)) b!293421))

(assert (= (and b!293424 res!154371) b!293422))

(assert (= (or b!293422 b!293421) bm!25667))

(declare-fun m!307183 () Bool)

(assert (=> bm!25667 m!307183))

(declare-fun m!307185 () Bool)

(assert (=> b!293423 m!307185))

(assert (=> b!293423 m!307185))

(declare-fun m!307187 () Bool)

(assert (=> b!293423 m!307187))

(assert (=> b!293424 m!307185))

(declare-fun m!307189 () Bool)

(assert (=> b!293424 m!307189))

(declare-fun m!307191 () Bool)

(assert (=> b!293424 m!307191))

(assert (=> b!293424 m!307185))

(declare-fun m!307193 () Bool)

(assert (=> b!293424 m!307193))

(assert (=> b!293373 d!66483))

(declare-fun d!66489 () Bool)

(declare-fun res!154380 () Bool)

(declare-fun e!185556 () Bool)

(assert (=> d!66489 (=> res!154380 e!185556)))

(assert (=> d!66489 (= res!154380 (= (select (arr!7054 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66489 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!185556)))

(declare-fun b!293437 () Bool)

(declare-fun e!185557 () Bool)

(assert (=> b!293437 (= e!185556 e!185557)))

(declare-fun res!154381 () Bool)

(assert (=> b!293437 (=> (not res!154381) (not e!185557))))

(assert (=> b!293437 (= res!154381 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7406 a!3312)))))

(declare-fun b!293438 () Bool)

(assert (=> b!293438 (= e!185557 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66489 (not res!154380)) b!293437))

(assert (= (and b!293437 res!154381) b!293438))

(assert (=> d!66489 m!307185))

(declare-fun m!307195 () Bool)

(assert (=> b!293438 m!307195))

(assert (=> b!293375 d!66489))

(declare-fun d!66493 () Bool)

(assert (=> d!66493 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28744 d!66493))

(declare-fun d!66501 () Bool)

(assert (=> d!66501 (= (array_inv!5008 a!3312) (bvsge (size!7406 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28744 d!66501))

(declare-fun d!66503 () Bool)

(assert (=> d!66503 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!293374 d!66503))

(declare-fun d!66505 () Bool)

(declare-fun lt!145543 () SeekEntryResult!2214)

(assert (=> d!66505 (and (or (is-Undefined!2214 lt!145543) (not (is-Found!2214 lt!145543)) (and (bvsge (index!11027 lt!145543) #b00000000000000000000000000000000) (bvslt (index!11027 lt!145543) (size!7406 a!3312)))) (or (is-Undefined!2214 lt!145543) (is-Found!2214 lt!145543) (not (is-MissingZero!2214 lt!145543)) (and (bvsge (index!11026 lt!145543) #b00000000000000000000000000000000) (bvslt (index!11026 lt!145543) (size!7406 a!3312)))) (or (is-Undefined!2214 lt!145543) (is-Found!2214 lt!145543) (is-MissingZero!2214 lt!145543) (not (is-MissingVacant!2214 lt!145543)) (and (bvsge (index!11029 lt!145543) #b00000000000000000000000000000000) (bvslt (index!11029 lt!145543) (size!7406 a!3312)))) (or (is-Undefined!2214 lt!145543) (ite (is-Found!2214 lt!145543) (= (select (arr!7054 a!3312) (index!11027 lt!145543)) k!2524) (ite (is-MissingZero!2214 lt!145543) (= (select (arr!7054 a!3312) (index!11026 lt!145543)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2214 lt!145543) (= (select (arr!7054 a!3312) (index!11029 lt!145543)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!185614 () SeekEntryResult!2214)

(assert (=> d!66505 (= lt!145543 e!185614)))

(declare-fun c!47129 () Bool)

(declare-fun lt!145542 () SeekEntryResult!2214)

(assert (=> d!66505 (= c!47129 (and (is-Intermediate!2214 lt!145542) (undefined!3026 lt!145542)))))

(assert (=> d!66505 (= lt!145542 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66505 (validMask!0 mask!3809)))

(assert (=> d!66505 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!145543)))

(declare-fun b!293533 () Bool)

(assert (=> b!293533 (= e!185614 Undefined!2214)))

(declare-fun b!293534 () Bool)

(declare-fun e!185613 () SeekEntryResult!2214)

(assert (=> b!293534 (= e!185613 (MissingZero!2214 (index!11028 lt!145542)))))

(declare-fun b!293535 () Bool)

(declare-fun e!185615 () SeekEntryResult!2214)

(assert (=> b!293535 (= e!185614 e!185615)))

(declare-fun lt!145544 () (_ BitVec 64))

(assert (=> b!293535 (= lt!145544 (select (arr!7054 a!3312) (index!11028 lt!145542)))))

(declare-fun c!47128 () Bool)

(assert (=> b!293535 (= c!47128 (= lt!145544 k!2524))))

(declare-fun b!293536 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14867 (_ BitVec 32)) SeekEntryResult!2214)

(assert (=> b!293536 (= e!185613 (seekKeyOrZeroReturnVacant!0 (x!29179 lt!145542) (index!11028 lt!145542) (index!11028 lt!145542) k!2524 a!3312 mask!3809))))

(declare-fun b!293537 () Bool)

(assert (=> b!293537 (= e!185615 (Found!2214 (index!11028 lt!145542)))))

(declare-fun b!293538 () Bool)

(declare-fun c!47127 () Bool)

(assert (=> b!293538 (= c!47127 (= lt!145544 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293538 (= e!185615 e!185613)))

(assert (= (and d!66505 c!47129) b!293533))

(assert (= (and d!66505 (not c!47129)) b!293535))

(assert (= (and b!293535 c!47128) b!293537))

(assert (= (and b!293535 (not c!47128)) b!293538))

(assert (= (and b!293538 c!47127) b!293534))

(assert (= (and b!293538 (not c!47127)) b!293536))

(declare-fun m!307241 () Bool)

(assert (=> d!66505 m!307241))

(assert (=> d!66505 m!307129))

(declare-fun m!307243 () Bool)

(assert (=> d!66505 m!307243))

(assert (=> d!66505 m!307137))

(assert (=> d!66505 m!307129))

(declare-fun m!307245 () Bool)

(assert (=> d!66505 m!307245))

(declare-fun m!307247 () Bool)

(assert (=> d!66505 m!307247))

(declare-fun m!307249 () Bool)

(assert (=> b!293535 m!307249))

(declare-fun m!307251 () Bool)

(assert (=> b!293536 m!307251))

(assert (=> b!293371 d!66505))

(declare-fun b!293587 () Bool)

(declare-fun e!185644 () SeekEntryResult!2214)

(assert (=> b!293587 (= e!185644 (Intermediate!2214 true lt!145463 #b00000000000000000000000000000000))))

(declare-fun lt!145571 () SeekEntryResult!2214)

(declare-fun b!293588 () Bool)

(assert (=> b!293588 (and (bvsge (index!11028 lt!145571) #b00000000000000000000000000000000) (bvslt (index!11028 lt!145571) (size!7406 (array!14868 (store (arr!7054 a!3312) i!1256 k!2524) (size!7406 a!3312)))))))

(declare-fun res!154430 () Bool)

(assert (=> b!293588 (= res!154430 (= (select (arr!7054 (array!14868 (store (arr!7054 a!3312) i!1256 k!2524) (size!7406 a!3312))) (index!11028 lt!145571)) k!2524))))

(declare-fun e!185647 () Bool)

(assert (=> b!293588 (=> res!154430 e!185647)))

(declare-fun e!185648 () Bool)

(assert (=> b!293588 (= e!185648 e!185647)))

(declare-fun b!293589 () Bool)

(declare-fun e!185646 () Bool)

(assert (=> b!293589 (= e!185646 e!185648)))

(declare-fun res!154429 () Bool)

(assert (=> b!293589 (= res!154429 (and (is-Intermediate!2214 lt!145571) (not (undefined!3026 lt!145571)) (bvslt (x!29179 lt!145571) #b01111111111111111111111111111110) (bvsge (x!29179 lt!145571) #b00000000000000000000000000000000) (bvsge (x!29179 lt!145571) #b00000000000000000000000000000000)))))

(assert (=> b!293589 (=> (not res!154429) (not e!185648))))

(declare-fun b!293590 () Bool)

(declare-fun e!185645 () SeekEntryResult!2214)

(assert (=> b!293590 (= e!185644 e!185645)))

(declare-fun c!47148 () Bool)

(declare-fun lt!145572 () (_ BitVec 64))

(assert (=> b!293590 (= c!47148 (or (= lt!145572 k!2524) (= (bvadd lt!145572 lt!145572) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293591 () Bool)

(assert (=> b!293591 (and (bvsge (index!11028 lt!145571) #b00000000000000000000000000000000) (bvslt (index!11028 lt!145571) (size!7406 (array!14868 (store (arr!7054 a!3312) i!1256 k!2524) (size!7406 a!3312)))))))

(declare-fun res!154428 () Bool)

(assert (=> b!293591 (= res!154428 (= (select (arr!7054 (array!14868 (store (arr!7054 a!3312) i!1256 k!2524) (size!7406 a!3312))) (index!11028 lt!145571)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293591 (=> res!154428 e!185647)))

(declare-fun b!293592 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293592 (= e!185645 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145463 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14868 (store (arr!7054 a!3312) i!1256 k!2524) (size!7406 a!3312)) mask!3809))))

(declare-fun d!66519 () Bool)

(assert (=> d!66519 e!185646))

(declare-fun c!47150 () Bool)

(assert (=> d!66519 (= c!47150 (and (is-Intermediate!2214 lt!145571) (undefined!3026 lt!145571)))))

(assert (=> d!66519 (= lt!145571 e!185644)))

(declare-fun c!47149 () Bool)

(assert (=> d!66519 (= c!47149 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66519 (= lt!145572 (select (arr!7054 (array!14868 (store (arr!7054 a!3312) i!1256 k!2524) (size!7406 a!3312))) lt!145463))))

(assert (=> d!66519 (validMask!0 mask!3809)))

(assert (=> d!66519 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145463 k!2524 (array!14868 (store (arr!7054 a!3312) i!1256 k!2524) (size!7406 a!3312)) mask!3809) lt!145571)))

(declare-fun b!293593 () Bool)

(assert (=> b!293593 (and (bvsge (index!11028 lt!145571) #b00000000000000000000000000000000) (bvslt (index!11028 lt!145571) (size!7406 (array!14868 (store (arr!7054 a!3312) i!1256 k!2524) (size!7406 a!3312)))))))

(assert (=> b!293593 (= e!185647 (= (select (arr!7054 (array!14868 (store (arr!7054 a!3312) i!1256 k!2524) (size!7406 a!3312))) (index!11028 lt!145571)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!293594 () Bool)

(assert (=> b!293594 (= e!185645 (Intermediate!2214 false lt!145463 #b00000000000000000000000000000000))))

(declare-fun b!293595 () Bool)

(assert (=> b!293595 (= e!185646 (bvsge (x!29179 lt!145571) #b01111111111111111111111111111110))))

(assert (= (and d!66519 c!47149) b!293587))

(assert (= (and d!66519 (not c!47149)) b!293590))

(assert (= (and b!293590 c!47148) b!293594))

(assert (= (and b!293590 (not c!47148)) b!293592))

(assert (= (and d!66519 c!47150) b!293595))

(assert (= (and d!66519 (not c!47150)) b!293589))

(assert (= (and b!293589 res!154429) b!293588))

(assert (= (and b!293588 (not res!154430)) b!293591))

(assert (= (and b!293591 (not res!154428)) b!293593))

(declare-fun m!307275 () Bool)

(assert (=> b!293588 m!307275))

(assert (=> b!293591 m!307275))

(assert (=> b!293593 m!307275))

(declare-fun m!307277 () Bool)

(assert (=> b!293592 m!307277))

(assert (=> b!293592 m!307277))

(declare-fun m!307279 () Bool)

(assert (=> b!293592 m!307279))

(declare-fun m!307281 () Bool)

(assert (=> d!66519 m!307281))

(assert (=> d!66519 m!307137))

(assert (=> b!293376 d!66519))

(declare-fun b!293596 () Bool)

(declare-fun e!185649 () SeekEntryResult!2214)

(assert (=> b!293596 (= e!185649 (Intermediate!2214 true lt!145463 #b00000000000000000000000000000000))))

(declare-fun b!293597 () Bool)

(declare-fun lt!145573 () SeekEntryResult!2214)

(assert (=> b!293597 (and (bvsge (index!11028 lt!145573) #b00000000000000000000000000000000) (bvslt (index!11028 lt!145573) (size!7406 a!3312)))))

(declare-fun res!154433 () Bool)

(assert (=> b!293597 (= res!154433 (= (select (arr!7054 a!3312) (index!11028 lt!145573)) k!2524))))

(declare-fun e!185652 () Bool)

(assert (=> b!293597 (=> res!154433 e!185652)))

(declare-fun e!185653 () Bool)

(assert (=> b!293597 (= e!185653 e!185652)))

(declare-fun b!293598 () Bool)

(declare-fun e!185651 () Bool)

(assert (=> b!293598 (= e!185651 e!185653)))

(declare-fun res!154432 () Bool)

(assert (=> b!293598 (= res!154432 (and (is-Intermediate!2214 lt!145573) (not (undefined!3026 lt!145573)) (bvslt (x!29179 lt!145573) #b01111111111111111111111111111110) (bvsge (x!29179 lt!145573) #b00000000000000000000000000000000) (bvsge (x!29179 lt!145573) #b00000000000000000000000000000000)))))

(assert (=> b!293598 (=> (not res!154432) (not e!185653))))

(declare-fun b!293599 () Bool)

(declare-fun e!185650 () SeekEntryResult!2214)

(assert (=> b!293599 (= e!185649 e!185650)))

(declare-fun c!47151 () Bool)

(declare-fun lt!145574 () (_ BitVec 64))

(assert (=> b!293599 (= c!47151 (or (= lt!145574 k!2524) (= (bvadd lt!145574 lt!145574) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293600 () Bool)

(assert (=> b!293600 (and (bvsge (index!11028 lt!145573) #b00000000000000000000000000000000) (bvslt (index!11028 lt!145573) (size!7406 a!3312)))))

(declare-fun res!154431 () Bool)

(assert (=> b!293600 (= res!154431 (= (select (arr!7054 a!3312) (index!11028 lt!145573)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293600 (=> res!154431 e!185652)))

(declare-fun b!293601 () Bool)

(assert (=> b!293601 (= e!185650 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145463 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun d!66527 () Bool)

(assert (=> d!66527 e!185651))

(declare-fun c!47153 () Bool)

(assert (=> d!66527 (= c!47153 (and (is-Intermediate!2214 lt!145573) (undefined!3026 lt!145573)))))

(assert (=> d!66527 (= lt!145573 e!185649)))

(declare-fun c!47152 () Bool)

(assert (=> d!66527 (= c!47152 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66527 (= lt!145574 (select (arr!7054 a!3312) lt!145463))))

(assert (=> d!66527 (validMask!0 mask!3809)))

(assert (=> d!66527 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145463 k!2524 a!3312 mask!3809) lt!145573)))

(declare-fun b!293602 () Bool)

(assert (=> b!293602 (and (bvsge (index!11028 lt!145573) #b00000000000000000000000000000000) (bvslt (index!11028 lt!145573) (size!7406 a!3312)))))

(assert (=> b!293602 (= e!185652 (= (select (arr!7054 a!3312) (index!11028 lt!145573)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!293603 () Bool)

(assert (=> b!293603 (= e!185650 (Intermediate!2214 false lt!145463 #b00000000000000000000000000000000))))

(declare-fun b!293604 () Bool)

(assert (=> b!293604 (= e!185651 (bvsge (x!29179 lt!145573) #b01111111111111111111111111111110))))

(assert (= (and d!66527 c!47152) b!293596))

(assert (= (and d!66527 (not c!47152)) b!293599))

(assert (= (and b!293599 c!47151) b!293603))

(assert (= (and b!293599 (not c!47151)) b!293601))

(assert (= (and d!66527 c!47153) b!293604))

(assert (= (and d!66527 (not c!47153)) b!293598))

(assert (= (and b!293598 res!154432) b!293597))

(assert (= (and b!293597 (not res!154433)) b!293600))

(assert (= (and b!293600 (not res!154431)) b!293602))

(declare-fun m!307283 () Bool)

(assert (=> b!293597 m!307283))

(assert (=> b!293600 m!307283))

(assert (=> b!293602 m!307283))

(assert (=> b!293601 m!307277))

(assert (=> b!293601 m!307277))

(declare-fun m!307285 () Bool)

(assert (=> b!293601 m!307285))

(declare-fun m!307287 () Bool)

(assert (=> d!66527 m!307287))

(assert (=> d!66527 m!307137))

(assert (=> b!293376 d!66527))

(declare-fun d!66529 () Bool)

(declare-fun lt!145586 () (_ BitVec 32))

(declare-fun lt!145585 () (_ BitVec 32))

(assert (=> d!66529 (= lt!145586 (bvmul (bvxor lt!145585 (bvlshr lt!145585 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66529 (= lt!145585 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66529 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154440 (let ((h!5293 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29187 (bvmul (bvxor h!5293 (bvlshr h!5293 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29187 (bvlshr x!29187 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154440 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154440 #b00000000000000000000000000000000))))))

(assert (=> d!66529 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!145586 (bvlshr lt!145586 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!293376 d!66529))

(push 1)

(assert (not d!66505))

(assert (not b!293423))

(assert (not b!293438))

(assert (not d!66519))

(assert (not b!293601))

(assert (not b!293424))

(assert (not b!293592))

(assert (not d!66527))

(assert (not b!293536))

(assert (not bm!25667))

(check-sat)

(pop 1)

(push 1)

(check-sat)

