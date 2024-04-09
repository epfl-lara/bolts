; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86638 () Bool)

(assert start!86638)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun b!1004365 () Bool)

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun e!565600 () Bool)

(assert (=> b!1004365 (= e!565600 (and (= index!1507 resIndex!38) (not (= x!1245 resX!38))))))

(declare-fun b!1004366 () Bool)

(declare-fun res!674001 () Bool)

(assert (=> b!1004366 (=> (not res!674001) (not e!565600))))

(declare-datatypes ((SeekEntryResult!9449 0))(
  ( (MissingZero!9449 (index!40166 (_ BitVec 32))) (Found!9449 (index!40167 (_ BitVec 32))) (Intermediate!9449 (undefined!10261 Bool) (index!40168 (_ BitVec 32)) (x!87598 (_ BitVec 32))) (Undefined!9449) (MissingVacant!9449 (index!40169 (_ BitVec 32))) )
))
(declare-fun lt!444149 () SeekEntryResult!9449)

(declare-fun lt!444150 () (_ BitVec 64))

(declare-datatypes ((array!63391 0))(
  ( (array!63392 (arr!30517 (Array (_ BitVec 32) (_ BitVec 64))) (size!31020 (_ BitVec 32))) )
))
(declare-fun lt!444148 () array!63391)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63391 (_ BitVec 32)) SeekEntryResult!9449)

(assert (=> b!1004366 (= res!674001 (not (= lt!444149 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444150 lt!444148 mask!3464))))))

(declare-fun b!1004367 () Bool)

(declare-fun res!674003 () Bool)

(declare-fun e!565604 () Bool)

(assert (=> b!1004367 (=> (not res!674003) (not e!565604))))

(declare-fun a!3219 () array!63391)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1004367 (= res!674003 (and (= (size!31020 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31020 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31020 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!674008 () Bool)

(assert (=> start!86638 (=> (not res!674008) (not e!565604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86638 (= res!674008 (validMask!0 mask!3464))))

(assert (=> start!86638 e!565604))

(declare-fun array_inv!23507 (array!63391) Bool)

(assert (=> start!86638 (array_inv!23507 a!3219)))

(assert (=> start!86638 true))

(declare-fun b!1004368 () Bool)

(declare-fun res!674006 () Bool)

(declare-fun e!565599 () Bool)

(assert (=> b!1004368 (=> (not res!674006) (not e!565599))))

(assert (=> b!1004368 (= res!674006 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31020 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31020 a!3219))))))

(declare-fun b!1004369 () Bool)

(declare-fun res!674004 () Bool)

(assert (=> b!1004369 (=> (not res!674004) (not e!565604))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63391 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1004369 (= res!674004 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1004370 () Bool)

(declare-fun res!674000 () Bool)

(assert (=> b!1004370 (=> (not res!674000) (not e!565604))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1004370 (= res!674000 (validKeyInArray!0 k!2224))))

(declare-fun b!1004371 () Bool)

(declare-fun e!565603 () Bool)

(declare-fun e!565601 () Bool)

(assert (=> b!1004371 (= e!565603 e!565601)))

(declare-fun res!674011 () Bool)

(assert (=> b!1004371 (=> (not res!674011) (not e!565601))))

(declare-fun lt!444152 () SeekEntryResult!9449)

(assert (=> b!1004371 (= res!674011 (= lt!444149 lt!444152))))

(assert (=> b!1004371 (= lt!444149 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30517 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004372 () Bool)

(assert (=> b!1004372 (= e!565601 e!565600)))

(declare-fun res!673999 () Bool)

(assert (=> b!1004372 (=> (not res!673999) (not e!565600))))

(declare-fun lt!444153 () SeekEntryResult!9449)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004372 (= res!673999 (not (= lt!444153 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444150 mask!3464) lt!444150 lt!444148 mask!3464))))))

(assert (=> b!1004372 (= lt!444150 (select (store (arr!30517 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1004372 (= lt!444148 (array!63392 (store (arr!30517 a!3219) i!1194 k!2224) (size!31020 a!3219)))))

(declare-fun b!1004373 () Bool)

(declare-fun res!674009 () Bool)

(assert (=> b!1004373 (=> (not res!674009) (not e!565604))))

(assert (=> b!1004373 (= res!674009 (validKeyInArray!0 (select (arr!30517 a!3219) j!170)))))

(declare-fun b!1004374 () Bool)

(assert (=> b!1004374 (= e!565599 e!565603)))

(declare-fun res!674002 () Bool)

(assert (=> b!1004374 (=> (not res!674002) (not e!565603))))

(assert (=> b!1004374 (= res!674002 (= lt!444153 lt!444152))))

(assert (=> b!1004374 (= lt!444152 (Intermediate!9449 false resIndex!38 resX!38))))

(assert (=> b!1004374 (= lt!444153 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30517 a!3219) j!170) mask!3464) (select (arr!30517 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004375 () Bool)

(assert (=> b!1004375 (= e!565604 e!565599)))

(declare-fun res!674005 () Bool)

(assert (=> b!1004375 (=> (not res!674005) (not e!565599))))

(declare-fun lt!444151 () SeekEntryResult!9449)

(assert (=> b!1004375 (= res!674005 (or (= lt!444151 (MissingVacant!9449 i!1194)) (= lt!444151 (MissingZero!9449 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63391 (_ BitVec 32)) SeekEntryResult!9449)

(assert (=> b!1004375 (= lt!444151 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1004376 () Bool)

(declare-fun res!674010 () Bool)

(assert (=> b!1004376 (=> (not res!674010) (not e!565599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63391 (_ BitVec 32)) Bool)

(assert (=> b!1004376 (= res!674010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1004377 () Bool)

(declare-fun res!674007 () Bool)

(assert (=> b!1004377 (=> (not res!674007) (not e!565599))))

(declare-datatypes ((List!21319 0))(
  ( (Nil!21316) (Cons!21315 (h!22492 (_ BitVec 64)) (t!30328 List!21319)) )
))
(declare-fun arrayNoDuplicates!0 (array!63391 (_ BitVec 32) List!21319) Bool)

(assert (=> b!1004377 (= res!674007 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21316))))

(assert (= (and start!86638 res!674008) b!1004367))

(assert (= (and b!1004367 res!674003) b!1004373))

(assert (= (and b!1004373 res!674009) b!1004370))

(assert (= (and b!1004370 res!674000) b!1004369))

(assert (= (and b!1004369 res!674004) b!1004375))

(assert (= (and b!1004375 res!674005) b!1004376))

(assert (= (and b!1004376 res!674010) b!1004377))

(assert (= (and b!1004377 res!674007) b!1004368))

(assert (= (and b!1004368 res!674006) b!1004374))

(assert (= (and b!1004374 res!674002) b!1004371))

(assert (= (and b!1004371 res!674011) b!1004372))

(assert (= (and b!1004372 res!673999) b!1004366))

(assert (= (and b!1004366 res!674001) b!1004365))

(declare-fun m!930021 () Bool)

(assert (=> b!1004372 m!930021))

(assert (=> b!1004372 m!930021))

(declare-fun m!930023 () Bool)

(assert (=> b!1004372 m!930023))

(declare-fun m!930025 () Bool)

(assert (=> b!1004372 m!930025))

(declare-fun m!930027 () Bool)

(assert (=> b!1004372 m!930027))

(declare-fun m!930029 () Bool)

(assert (=> b!1004376 m!930029))

(declare-fun m!930031 () Bool)

(assert (=> b!1004375 m!930031))

(declare-fun m!930033 () Bool)

(assert (=> b!1004374 m!930033))

(assert (=> b!1004374 m!930033))

(declare-fun m!930035 () Bool)

(assert (=> b!1004374 m!930035))

(assert (=> b!1004374 m!930035))

(assert (=> b!1004374 m!930033))

(declare-fun m!930037 () Bool)

(assert (=> b!1004374 m!930037))

(declare-fun m!930039 () Bool)

(assert (=> b!1004366 m!930039))

(assert (=> b!1004373 m!930033))

(assert (=> b!1004373 m!930033))

(declare-fun m!930041 () Bool)

(assert (=> b!1004373 m!930041))

(declare-fun m!930043 () Bool)

(assert (=> b!1004370 m!930043))

(declare-fun m!930045 () Bool)

(assert (=> b!1004369 m!930045))

(declare-fun m!930047 () Bool)

(assert (=> start!86638 m!930047))

(declare-fun m!930049 () Bool)

(assert (=> start!86638 m!930049))

(declare-fun m!930051 () Bool)

(assert (=> b!1004377 m!930051))

(assert (=> b!1004371 m!930033))

(assert (=> b!1004371 m!930033))

(declare-fun m!930053 () Bool)

(assert (=> b!1004371 m!930053))

(push 1)

(assert (not b!1004377))

(assert (not b!1004371))

(assert (not b!1004373))

(assert (not b!1004372))

(assert (not b!1004374))

(assert (not b!1004366))

(assert (not b!1004376))

(assert (not b!1004370))

(assert (not b!1004369))

(assert (not start!86638))

(assert (not b!1004375))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1004552 () Bool)

(declare-fun e!565703 () SeekEntryResult!9449)

(declare-fun e!565705 () SeekEntryResult!9449)

(assert (=> b!1004552 (= e!565703 e!565705)))

(declare-fun c!101363 () Bool)

(declare-fun lt!444218 () (_ BitVec 64))

(assert (=> b!1004552 (= c!101363 (or (= lt!444218 lt!444150) (= (bvadd lt!444218 lt!444218) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1004553 () Bool)

(declare-fun e!565706 () Bool)

(declare-fun e!565702 () Bool)

(assert (=> b!1004553 (= e!565706 e!565702)))

(declare-fun res!674128 () Bool)

(declare-fun lt!444219 () SeekEntryResult!9449)

(assert (=> b!1004553 (= res!674128 (and (is-Intermediate!9449 lt!444219) (not (undefined!10261 lt!444219)) (bvslt (x!87598 lt!444219) #b01111111111111111111111111111110) (bvsge (x!87598 lt!444219) #b00000000000000000000000000000000) (bvsge (x!87598 lt!444219) #b00000000000000000000000000000000)))))

(assert (=> b!1004553 (=> (not res!674128) (not e!565702))))

(declare-fun b!1004554 () Bool)

(assert (=> b!1004554 (and (bvsge (index!40168 lt!444219) #b00000000000000000000000000000000) (bvslt (index!40168 lt!444219) (size!31020 lt!444148)))))

(declare-fun res!674126 () Bool)

(assert (=> b!1004554 (= res!674126 (= (select (arr!30517 lt!444148) (index!40168 lt!444219)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!565704 () Bool)

(assert (=> b!1004554 (=> res!674126 e!565704)))

(declare-fun b!1004555 () Bool)

(assert (=> b!1004555 (and (bvsge (index!40168 lt!444219) #b00000000000000000000000000000000) (bvslt (index!40168 lt!444219) (size!31020 lt!444148)))))

(assert (=> b!1004555 (= e!565704 (= (select (arr!30517 lt!444148) (index!40168 lt!444219)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1004557 () Bool)

(assert (=> b!1004557 (= e!565705 (Intermediate!9449 false (toIndex!0 lt!444150 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1004558 () Bool)

(assert (=> b!1004558 (and (bvsge (index!40168 lt!444219) #b00000000000000000000000000000000) (bvslt (index!40168 lt!444219) (size!31020 lt!444148)))))

(declare-fun res!674127 () Bool)

(assert (=> b!1004558 (= res!674127 (= (select (arr!30517 lt!444148) (index!40168 lt!444219)) lt!444150))))

(assert (=> b!1004558 (=> res!674127 e!565704)))

(assert (=> b!1004558 (= e!565702 e!565704)))

(declare-fun b!1004559 () Bool)

(assert (=> b!1004559 (= e!565703 (Intermediate!9449 true (toIndex!0 lt!444150 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1004560 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004560 (= e!565705 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!444150 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!444150 lt!444148 mask!3464))))

(declare-fun b!1004556 () Bool)

(assert (=> b!1004556 (= e!565706 (bvsge (x!87598 lt!444219) #b01111111111111111111111111111110))))

(declare-fun d!119357 () Bool)

(assert (=> d!119357 e!565706))

(declare-fun c!101362 () Bool)

(assert (=> d!119357 (= c!101362 (and (is-Intermediate!9449 lt!444219) (undefined!10261 lt!444219)))))

(assert (=> d!119357 (= lt!444219 e!565703)))

(declare-fun c!101364 () Bool)

(assert (=> d!119357 (= c!101364 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119357 (= lt!444218 (select (arr!30517 lt!444148) (toIndex!0 lt!444150 mask!3464)))))

(assert (=> d!119357 (validMask!0 mask!3464)))

(assert (=> d!119357 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444150 mask!3464) lt!444150 lt!444148 mask!3464) lt!444219)))

(assert (= (and d!119357 c!101364) b!1004559))

(assert (= (and d!119357 (not c!101364)) b!1004552))

(assert (= (and b!1004552 c!101363) b!1004557))

(assert (= (and b!1004552 (not c!101363)) b!1004560))

(assert (= (and d!119357 c!101362) b!1004556))

(assert (= (and d!119357 (not c!101362)) b!1004553))

(assert (= (and b!1004553 res!674128) b!1004558))

(assert (= (and b!1004558 (not res!674127)) b!1004554))

(assert (= (and b!1004554 (not res!674126)) b!1004555))

(assert (=> d!119357 m!930021))

(declare-fun m!930167 () Bool)

(assert (=> d!119357 m!930167))

(assert (=> d!119357 m!930047))

(declare-fun m!930169 () Bool)

(assert (=> b!1004554 m!930169))

(assert (=> b!1004555 m!930169))

(assert (=> b!1004560 m!930021))

(declare-fun m!930171 () Bool)

(assert (=> b!1004560 m!930171))

(assert (=> b!1004560 m!930171))

(declare-fun m!930173 () Bool)

(assert (=> b!1004560 m!930173))

(assert (=> b!1004558 m!930169))

(assert (=> b!1004372 d!119357))

(declare-fun d!119373 () Bool)

(declare-fun lt!444227 () (_ BitVec 32))

(declare-fun lt!444226 () (_ BitVec 32))

(assert (=> d!119373 (= lt!444227 (bvmul (bvxor lt!444226 (bvlshr lt!444226 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119373 (= lt!444226 ((_ extract 31 0) (bvand (bvxor lt!444150 (bvlshr lt!444150 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119373 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!674133 (let ((h!22495 ((_ extract 31 0) (bvand (bvxor lt!444150 (bvlshr lt!444150 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87603 (bvmul (bvxor h!22495 (bvlshr h!22495 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87603 (bvlshr x!87603 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!674133 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!674133 #b00000000000000000000000000000000))))))

(assert (=> d!119373 (= (toIndex!0 lt!444150 mask!3464) (bvand (bvxor lt!444227 (bvlshr lt!444227 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1004372 d!119373))

(declare-fun d!119379 () Bool)

(declare-fun res!674160 () Bool)

(declare-fun e!565749 () Bool)

(assert (=> d!119379 (=> res!674160 e!565749)))

(assert (=> d!119379 (= res!674160 (bvsge #b00000000000000000000000000000000 (size!31020 a!3219)))))

(assert (=> d!119379 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21316) e!565749)))

(declare-fun b!1004622 () Bool)

(declare-fun e!565746 () Bool)

(declare-fun contains!5889 (List!21319 (_ BitVec 64)) Bool)

(assert (=> b!1004622 (= e!565746 (contains!5889 Nil!21316 (select (arr!30517 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1004623 () Bool)

(declare-fun e!565747 () Bool)

(assert (=> b!1004623 (= e!565749 e!565747)))

(declare-fun res!674158 () Bool)

(assert (=> b!1004623 (=> (not res!674158) (not e!565747))))

(assert (=> b!1004623 (= res!674158 (not e!565746))))

(declare-fun res!674159 () Bool)

(assert (=> b!1004623 (=> (not res!674159) (not e!565746))))

(assert (=> b!1004623 (= res!674159 (validKeyInArray!0 (select (arr!30517 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1004624 () Bool)

(declare-fun e!565748 () Bool)

(assert (=> b!1004624 (= e!565747 e!565748)))

(declare-fun c!101382 () Bool)

(assert (=> b!1004624 (= c!101382 (validKeyInArray!0 (select (arr!30517 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1004625 () Bool)

(declare-fun call!42322 () Bool)

(assert (=> b!1004625 (= e!565748 call!42322)))

(declare-fun b!1004626 () Bool)

(assert (=> b!1004626 (= e!565748 call!42322)))

(declare-fun bm!42319 () Bool)

(assert (=> bm!42319 (= call!42322 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101382 (Cons!21315 (select (arr!30517 a!3219) #b00000000000000000000000000000000) Nil!21316) Nil!21316)))))

(assert (= (and d!119379 (not res!674160)) b!1004623))

(assert (= (and b!1004623 res!674159) b!1004622))

(assert (= (and b!1004623 res!674158) b!1004624))

(assert (= (and b!1004624 c!101382) b!1004625))

(assert (= (and b!1004624 (not c!101382)) b!1004626))

(assert (= (or b!1004625 b!1004626) bm!42319))

(declare-fun m!930199 () Bool)

(assert (=> b!1004622 m!930199))

(assert (=> b!1004622 m!930199))

(declare-fun m!930201 () Bool)

(assert (=> b!1004622 m!930201))

(assert (=> b!1004623 m!930199))

(assert (=> b!1004623 m!930199))

(declare-fun m!930203 () Bool)

(assert (=> b!1004623 m!930203))

(assert (=> b!1004624 m!930199))

(assert (=> b!1004624 m!930199))

(assert (=> b!1004624 m!930203))

(assert (=> bm!42319 m!930199))

(declare-fun m!930205 () Bool)

(assert (=> bm!42319 m!930205))

(assert (=> b!1004377 d!119379))

(declare-fun d!119389 () Bool)

(assert (=> d!119389 (= (validKeyInArray!0 (select (arr!30517 a!3219) j!170)) (and (not (= (select (arr!30517 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30517 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1004373 d!119389))

(declare-fun b!1004627 () Bool)

(declare-fun e!565751 () SeekEntryResult!9449)

(declare-fun e!565753 () SeekEntryResult!9449)

(assert (=> b!1004627 (= e!565751 e!565753)))

(declare-fun c!101384 () Bool)

(declare-fun lt!444244 () (_ BitVec 64))

(assert (=> b!1004627 (= c!101384 (or (= lt!444244 (select (arr!30517 a!3219) j!170)) (= (bvadd lt!444244 lt!444244) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1004628 () Bool)

(declare-fun e!565754 () Bool)

(declare-fun e!565750 () Bool)

(assert (=> b!1004628 (= e!565754 e!565750)))

(declare-fun res!674163 () Bool)

(declare-fun lt!444245 () SeekEntryResult!9449)

(assert (=> b!1004628 (= res!674163 (and (is-Intermediate!9449 lt!444245) (not (undefined!10261 lt!444245)) (bvslt (x!87598 lt!444245) #b01111111111111111111111111111110) (bvsge (x!87598 lt!444245) #b00000000000000000000000000000000) (bvsge (x!87598 lt!444245) #b00000000000000000000000000000000)))))

(assert (=> b!1004628 (=> (not res!674163) (not e!565750))))

(declare-fun b!1004629 () Bool)

(assert (=> b!1004629 (and (bvsge (index!40168 lt!444245) #b00000000000000000000000000000000) (bvslt (index!40168 lt!444245) (size!31020 a!3219)))))

(declare-fun res!674161 () Bool)

(assert (=> b!1004629 (= res!674161 (= (select (arr!30517 a!3219) (index!40168 lt!444245)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!565752 () Bool)

(assert (=> b!1004629 (=> res!674161 e!565752)))

(declare-fun b!1004630 () Bool)

(assert (=> b!1004630 (and (bvsge (index!40168 lt!444245) #b00000000000000000000000000000000) (bvslt (index!40168 lt!444245) (size!31020 a!3219)))))

(assert (=> b!1004630 (= e!565752 (= (select (arr!30517 a!3219) (index!40168 lt!444245)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1004632 () Bool)

(assert (=> b!1004632 (= e!565753 (Intermediate!9449 false (toIndex!0 (select (arr!30517 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1004633 () Bool)

(assert (=> b!1004633 (and (bvsge (index!40168 lt!444245) #b00000000000000000000000000000000) (bvslt (index!40168 lt!444245) (size!31020 a!3219)))))

(declare-fun res!674162 () Bool)

(assert (=> b!1004633 (= res!674162 (= (select (arr!30517 a!3219) (index!40168 lt!444245)) (select (arr!30517 a!3219) j!170)))))

(assert (=> b!1004633 (=> res!674162 e!565752)))

(assert (=> b!1004633 (= e!565750 e!565752)))

(declare-fun b!1004634 () Bool)

(assert (=> b!1004634 (= e!565751 (Intermediate!9449 true (toIndex!0 (select (arr!30517 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1004635 () Bool)

(assert (=> b!1004635 (= e!565753 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30517 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30517 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004631 () Bool)

(assert (=> b!1004631 (= e!565754 (bvsge (x!87598 lt!444245) #b01111111111111111111111111111110))))

(declare-fun d!119391 () Bool)

(assert (=> d!119391 e!565754))

(declare-fun c!101383 () Bool)

(assert (=> d!119391 (= c!101383 (and (is-Intermediate!9449 lt!444245) (undefined!10261 lt!444245)))))

(assert (=> d!119391 (= lt!444245 e!565751)))

(declare-fun c!101385 () Bool)

(assert (=> d!119391 (= c!101385 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119391 (= lt!444244 (select (arr!30517 a!3219) (toIndex!0 (select (arr!30517 a!3219) j!170) mask!3464)))))

(assert (=> d!119391 (validMask!0 mask!3464)))

(assert (=> d!119391 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30517 a!3219) j!170) mask!3464) (select (arr!30517 a!3219) j!170) a!3219 mask!3464) lt!444245)))

(assert (= (and d!119391 c!101385) b!1004634))

(assert (= (and d!119391 (not c!101385)) b!1004627))

(assert (= (and b!1004627 c!101384) b!1004632))

(assert (= (and b!1004627 (not c!101384)) b!1004635))

(assert (= (and d!119391 c!101383) b!1004631))

(assert (= (and d!119391 (not c!101383)) b!1004628))

(assert (= (and b!1004628 res!674163) b!1004633))

(assert (= (and b!1004633 (not res!674162)) b!1004629))

(assert (= (and b!1004629 (not res!674161)) b!1004630))

(assert (=> d!119391 m!930035))

(declare-fun m!930207 () Bool)

(assert (=> d!119391 m!930207))

(assert (=> d!119391 m!930047))

(declare-fun m!930209 () Bool)

(assert (=> b!1004629 m!930209))

(assert (=> b!1004630 m!930209))

(assert (=> b!1004635 m!930035))

(declare-fun m!930211 () Bool)

(assert (=> b!1004635 m!930211))

(assert (=> b!1004635 m!930211))

(assert (=> b!1004635 m!930033))

(declare-fun m!930213 () Bool)

(assert (=> b!1004635 m!930213))

(assert (=> b!1004633 m!930209))

(assert (=> b!1004374 d!119391))

(declare-fun d!119393 () Bool)

(declare-fun lt!444249 () (_ BitVec 32))

(declare-fun lt!444248 () (_ BitVec 32))

(assert (=> d!119393 (= lt!444249 (bvmul (bvxor lt!444248 (bvlshr lt!444248 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119393 (= lt!444248 ((_ extract 31 0) (bvand (bvxor (select (arr!30517 a!3219) j!170) (bvlshr (select (arr!30517 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119393 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!674133 (let ((h!22495 ((_ extract 31 0) (bvand (bvxor (select (arr!30517 a!3219) j!170) (bvlshr (select (arr!30517 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87603 (bvmul (bvxor h!22495 (bvlshr h!22495 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87603 (bvlshr x!87603 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!674133 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!674133 #b00000000000000000000000000000000))))))

(assert (=> d!119393 (= (toIndex!0 (select (arr!30517 a!3219) j!170) mask!3464) (bvand (bvxor lt!444249 (bvlshr lt!444249 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1004374 d!119393))

(declare-fun d!119395 () Bool)

(assert (=> d!119395 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86638 d!119395))

(declare-fun d!119407 () Bool)

(assert (=> d!119407 (= (array_inv!23507 a!3219) (bvsge (size!31020 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86638 d!119407))

(declare-fun d!119409 () Bool)

(declare-fun res!674184 () Bool)

(declare-fun e!565781 () Bool)

(assert (=> d!119409 (=> res!674184 e!565781)))

(assert (=> d!119409 (= res!674184 (= (select (arr!30517 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119409 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!565781)))

(declare-fun b!1004673 () Bool)

(declare-fun e!565782 () Bool)

(assert (=> b!1004673 (= e!565781 e!565782)))

(declare-fun res!674185 () Bool)

(assert (=> b!1004673 (=> (not res!674185) (not e!565782))))

(assert (=> b!1004673 (= res!674185 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31020 a!3219)))))

(declare-fun b!1004674 () Bool)

(assert (=> b!1004674 (= e!565782 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119409 (not res!674184)) b!1004673))

(assert (= (and b!1004673 res!674185) b!1004674))

(assert (=> d!119409 m!930199))

(declare-fun m!930235 () Bool)

(assert (=> b!1004674 m!930235))

(assert (=> b!1004369 d!119409))

(declare-fun d!119413 () Bool)

(assert (=> d!119413 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1004370 d!119413))

(declare-fun b!1004705 () Bool)

(declare-fun e!565799 () SeekEntryResult!9449)

(declare-fun e!565798 () SeekEntryResult!9449)

(assert (=> b!1004705 (= e!565799 e!565798)))

(declare-fun lt!444275 () (_ BitVec 64))

(declare-fun lt!444273 () SeekEntryResult!9449)

(assert (=> b!1004705 (= lt!444275 (select (arr!30517 a!3219) (index!40168 lt!444273)))))

(declare-fun c!101411 () Bool)

(assert (=> b!1004705 (= c!101411 (= lt!444275 k!2224))))

(declare-fun b!1004706 () Bool)

(declare-fun c!101412 () Bool)

(assert (=> b!1004706 (= c!101412 (= lt!444275 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!565800 () SeekEntryResult!9449)

(assert (=> b!1004706 (= e!565798 e!565800)))

(declare-fun b!1004707 () Bool)

(assert (=> b!1004707 (= e!565800 (MissingZero!9449 (index!40168 lt!444273)))))

(declare-fun b!1004708 () Bool)

(assert (=> b!1004708 (= e!565799 Undefined!9449)))

(declare-fun d!119415 () Bool)

(declare-fun lt!444274 () SeekEntryResult!9449)

(assert (=> d!119415 (and (or (is-Undefined!9449 lt!444274) (not (is-Found!9449 lt!444274)) (and (bvsge (index!40167 lt!444274) #b00000000000000000000000000000000) (bvslt (index!40167 lt!444274) (size!31020 a!3219)))) (or (is-Undefined!9449 lt!444274) (is-Found!9449 lt!444274) (not (is-MissingZero!9449 lt!444274)) (and (bvsge (index!40166 lt!444274) #b00000000000000000000000000000000) (bvslt (index!40166 lt!444274) (size!31020 a!3219)))) (or (is-Undefined!9449 lt!444274) (is-Found!9449 lt!444274) (is-MissingZero!9449 lt!444274) (not (is-MissingVacant!9449 lt!444274)) (and (bvsge (index!40169 lt!444274) #b00000000000000000000000000000000) (bvslt (index!40169 lt!444274) (size!31020 a!3219)))) (or (is-Undefined!9449 lt!444274) (ite (is-Found!9449 lt!444274) (= (select (arr!30517 a!3219) (index!40167 lt!444274)) k!2224) (ite (is-MissingZero!9449 lt!444274) (= (select (arr!30517 a!3219) (index!40166 lt!444274)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9449 lt!444274) (= (select (arr!30517 a!3219) (index!40169 lt!444274)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119415 (= lt!444274 e!565799)))

(declare-fun c!101410 () Bool)

(assert (=> d!119415 (= c!101410 (and (is-Intermediate!9449 lt!444273) (undefined!10261 lt!444273)))))

(assert (=> d!119415 (= lt!444273 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119415 (validMask!0 mask!3464)))

(assert (=> d!119415 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!444274)))

(declare-fun b!1004709 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63391 (_ BitVec 32)) SeekEntryResult!9449)

(assert (=> b!1004709 (= e!565800 (seekKeyOrZeroReturnVacant!0 (x!87598 lt!444273) (index!40168 lt!444273) (index!40168 lt!444273) k!2224 a!3219 mask!3464))))

(declare-fun b!1004710 () Bool)

(assert (=> b!1004710 (= e!565798 (Found!9449 (index!40168 lt!444273)))))

(assert (= (and d!119415 c!101410) b!1004708))

(assert (= (and d!119415 (not c!101410)) b!1004705))

(assert (= (and b!1004705 c!101411) b!1004710))

(assert (= (and b!1004705 (not c!101411)) b!1004706))

(assert (= (and b!1004706 c!101412) b!1004707))

(assert (= (and b!1004706 (not c!101412)) b!1004709))

(declare-fun m!930251 () Bool)

(assert (=> b!1004705 m!930251))

(assert (=> d!119415 m!930047))

(declare-fun m!930253 () Bool)

(assert (=> d!119415 m!930253))

(declare-fun m!930255 () Bool)

(assert (=> d!119415 m!930255))

(declare-fun m!930257 () Bool)

(assert (=> d!119415 m!930257))

(assert (=> d!119415 m!930257))

(declare-fun m!930259 () Bool)

(assert (=> d!119415 m!930259))

(declare-fun m!930261 () Bool)

(assert (=> d!119415 m!930261))

(declare-fun m!930263 () Bool)

(assert (=> b!1004709 m!930263))

(assert (=> b!1004375 d!119415))

(declare-fun b!1004740 () Bool)

(declare-fun e!565822 () Bool)

(declare-fun e!565821 () Bool)

(assert (=> b!1004740 (= e!565822 e!565821)))

(declare-fun lt!444296 () (_ BitVec 64))

(assert (=> b!1004740 (= lt!444296 (select (arr!30517 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32944 0))(
  ( (Unit!32945) )
))
(declare-fun lt!444297 () Unit!32944)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63391 (_ BitVec 64) (_ BitVec 32)) Unit!32944)

(assert (=> b!1004740 (= lt!444297 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!444296 #b00000000000000000000000000000000))))

(assert (=> b!1004740 (arrayContainsKey!0 a!3219 lt!444296 #b00000000000000000000000000000000)))

(declare-fun lt!444295 () Unit!32944)

(assert (=> b!1004740 (= lt!444295 lt!444297)))

(declare-fun res!674200 () Bool)

(assert (=> b!1004740 (= res!674200 (= (seekEntryOrOpen!0 (select (arr!30517 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9449 #b00000000000000000000000000000000)))))

(assert (=> b!1004740 (=> (not res!674200) (not e!565821))))

(declare-fun b!1004741 () Bool)

(declare-fun call!42331 () Bool)

(assert (=> b!1004741 (= e!565821 call!42331)))

(declare-fun b!1004742 () Bool)

(declare-fun e!565823 () Bool)

(assert (=> b!1004742 (= e!565823 e!565822)))

(declare-fun c!101421 () Bool)

(assert (=> b!1004742 (= c!101421 (validKeyInArray!0 (select (arr!30517 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42328 () Bool)

(assert (=> bm!42328 (= call!42331 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun d!119419 () Bool)

(declare-fun res!674199 () Bool)

(assert (=> d!119419 (=> res!674199 e!565823)))

(assert (=> d!119419 (= res!674199 (bvsge #b00000000000000000000000000000000 (size!31020 a!3219)))))

(assert (=> d!119419 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!565823)))

(declare-fun b!1004743 () Bool)

(assert (=> b!1004743 (= e!565822 call!42331)))

(assert (= (and d!119419 (not res!674199)) b!1004742))

(assert (= (and b!1004742 c!101421) b!1004740))

(assert (= (and b!1004742 (not c!101421)) b!1004743))

(assert (= (and b!1004740 res!674200) b!1004741))

(assert (= (or b!1004741 b!1004743) bm!42328))

(assert (=> b!1004740 m!930199))

(declare-fun m!930281 () Bool)

(assert (=> b!1004740 m!930281))

(declare-fun m!930283 () Bool)

(assert (=> b!1004740 m!930283))

(assert (=> b!1004740 m!930199))

(declare-fun m!930285 () Bool)

(assert (=> b!1004740 m!930285))

(assert (=> b!1004742 m!930199))

(assert (=> b!1004742 m!930199))

(assert (=> b!1004742 m!930203))

(declare-fun m!930287 () Bool)

(assert (=> bm!42328 m!930287))

(assert (=> b!1004376 d!119419))

(declare-fun b!1004753 () Bool)

(declare-fun e!565830 () SeekEntryResult!9449)

(declare-fun e!565832 () SeekEntryResult!9449)

(assert (=> b!1004753 (= e!565830 e!565832)))

(declare-fun c!101426 () Bool)

(declare-fun lt!444300 () (_ BitVec 64))

(assert (=> b!1004753 (= c!101426 (or (= lt!444300 lt!444150) (= (bvadd lt!444300 lt!444300) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1004754 () Bool)

(declare-fun e!565833 () Bool)

(declare-fun e!565829 () Bool)

(assert (=> b!1004754 (= e!565833 e!565829)))

(declare-fun res!674206 () Bool)

(declare-fun lt!444301 () SeekEntryResult!9449)

(assert (=> b!1004754 (= res!674206 (and (is-Intermediate!9449 lt!444301) (not (undefined!10261 lt!444301)) (bvslt (x!87598 lt!444301) #b01111111111111111111111111111110) (bvsge (x!87598 lt!444301) #b00000000000000000000000000000000) (bvsge (x!87598 lt!444301) x!1245)))))

(assert (=> b!1004754 (=> (not res!674206) (not e!565829))))

(declare-fun b!1004755 () Bool)

(assert (=> b!1004755 (and (bvsge (index!40168 lt!444301) #b00000000000000000000000000000000) (bvslt (index!40168 lt!444301) (size!31020 lt!444148)))))

(declare-fun res!674204 () Bool)

(assert (=> b!1004755 (= res!674204 (= (select (arr!30517 lt!444148) (index!40168 lt!444301)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!565831 () Bool)

(assert (=> b!1004755 (=> res!674204 e!565831)))

(declare-fun b!1004756 () Bool)

(assert (=> b!1004756 (and (bvsge (index!40168 lt!444301) #b00000000000000000000000000000000) (bvslt (index!40168 lt!444301) (size!31020 lt!444148)))))

(assert (=> b!1004756 (= e!565831 (= (select (arr!30517 lt!444148) (index!40168 lt!444301)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1004758 () Bool)

(assert (=> b!1004758 (= e!565832 (Intermediate!9449 false index!1507 x!1245))))

(declare-fun b!1004759 () Bool)

(assert (=> b!1004759 (and (bvsge (index!40168 lt!444301) #b00000000000000000000000000000000) (bvslt (index!40168 lt!444301) (size!31020 lt!444148)))))

(declare-fun res!674205 () Bool)

(assert (=> b!1004759 (= res!674205 (= (select (arr!30517 lt!444148) (index!40168 lt!444301)) lt!444150))))

(assert (=> b!1004759 (=> res!674205 e!565831)))

(assert (=> b!1004759 (= e!565829 e!565831)))

(declare-fun b!1004760 () Bool)

(assert (=> b!1004760 (= e!565830 (Intermediate!9449 true index!1507 x!1245))))

(declare-fun b!1004761 () Bool)

(assert (=> b!1004761 (= e!565832 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!444150 lt!444148 mask!3464))))

(declare-fun b!1004757 () Bool)

(assert (=> b!1004757 (= e!565833 (bvsge (x!87598 lt!444301) #b01111111111111111111111111111110))))

(declare-fun d!119427 () Bool)

(assert (=> d!119427 e!565833))

(declare-fun c!101425 () Bool)

(assert (=> d!119427 (= c!101425 (and (is-Intermediate!9449 lt!444301) (undefined!10261 lt!444301)))))

(assert (=> d!119427 (= lt!444301 e!565830)))

(declare-fun c!101427 () Bool)

(assert (=> d!119427 (= c!101427 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119427 (= lt!444300 (select (arr!30517 lt!444148) index!1507))))

(assert (=> d!119427 (validMask!0 mask!3464)))

(assert (=> d!119427 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444150 lt!444148 mask!3464) lt!444301)))

(assert (= (and d!119427 c!101427) b!1004760))

(assert (= (and d!119427 (not c!101427)) b!1004753))

(assert (= (and b!1004753 c!101426) b!1004758))

(assert (= (and b!1004753 (not c!101426)) b!1004761))

(assert (= (and d!119427 c!101425) b!1004757))

(assert (= (and d!119427 (not c!101425)) b!1004754))

(assert (= (and b!1004754 res!674206) b!1004759))

(assert (= (and b!1004759 (not res!674205)) b!1004755))

(assert (= (and b!1004755 (not res!674204)) b!1004756))

(declare-fun m!930295 () Bool)

(assert (=> d!119427 m!930295))

(assert (=> d!119427 m!930047))

(declare-fun m!930297 () Bool)

(assert (=> b!1004755 m!930297))

(assert (=> b!1004756 m!930297))

(declare-fun m!930299 () Bool)

(assert (=> b!1004761 m!930299))

(assert (=> b!1004761 m!930299))

(declare-fun m!930301 () Bool)

(assert (=> b!1004761 m!930301))

(assert (=> b!1004759 m!930297))

(assert (=> b!1004366 d!119427))

(declare-fun b!1004762 () Bool)

(declare-fun e!565835 () SeekEntryResult!9449)

(declare-fun e!565837 () SeekEntryResult!9449)

(assert (=> b!1004762 (= e!565835 e!565837)))

(declare-fun c!101429 () Bool)

(declare-fun lt!444302 () (_ BitVec 64))

(assert (=> b!1004762 (= c!101429 (or (= lt!444302 (select (arr!30517 a!3219) j!170)) (= (bvadd lt!444302 lt!444302) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1004763 () Bool)

(declare-fun e!565838 () Bool)

(declare-fun e!565834 () Bool)

(assert (=> b!1004763 (= e!565838 e!565834)))

(declare-fun res!674209 () Bool)

(declare-fun lt!444303 () SeekEntryResult!9449)

(assert (=> b!1004763 (= res!674209 (and (is-Intermediate!9449 lt!444303) (not (undefined!10261 lt!444303)) (bvslt (x!87598 lt!444303) #b01111111111111111111111111111110) (bvsge (x!87598 lt!444303) #b00000000000000000000000000000000) (bvsge (x!87598 lt!444303) x!1245)))))

(assert (=> b!1004763 (=> (not res!674209) (not e!565834))))

(declare-fun b!1004764 () Bool)

(assert (=> b!1004764 (and (bvsge (index!40168 lt!444303) #b00000000000000000000000000000000) (bvslt (index!40168 lt!444303) (size!31020 a!3219)))))

(declare-fun res!674207 () Bool)

(assert (=> b!1004764 (= res!674207 (= (select (arr!30517 a!3219) (index!40168 lt!444303)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!565836 () Bool)

(assert (=> b!1004764 (=> res!674207 e!565836)))

(declare-fun b!1004765 () Bool)

(assert (=> b!1004765 (and (bvsge (index!40168 lt!444303) #b00000000000000000000000000000000) (bvslt (index!40168 lt!444303) (size!31020 a!3219)))))

(assert (=> b!1004765 (= e!565836 (= (select (arr!30517 a!3219) (index!40168 lt!444303)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1004767 () Bool)

(assert (=> b!1004767 (= e!565837 (Intermediate!9449 false index!1507 x!1245))))

(declare-fun b!1004768 () Bool)

(assert (=> b!1004768 (and (bvsge (index!40168 lt!444303) #b00000000000000000000000000000000) (bvslt (index!40168 lt!444303) (size!31020 a!3219)))))

(declare-fun res!674208 () Bool)

(assert (=> b!1004768 (= res!674208 (= (select (arr!30517 a!3219) (index!40168 lt!444303)) (select (arr!30517 a!3219) j!170)))))

(assert (=> b!1004768 (=> res!674208 e!565836)))

(assert (=> b!1004768 (= e!565834 e!565836)))

(declare-fun b!1004769 () Bool)

(assert (=> b!1004769 (= e!565835 (Intermediate!9449 true index!1507 x!1245))))

(declare-fun b!1004770 () Bool)

(assert (=> b!1004770 (= e!565837 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30517 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004766 () Bool)

(assert (=> b!1004766 (= e!565838 (bvsge (x!87598 lt!444303) #b01111111111111111111111111111110))))

(declare-fun d!119429 () Bool)

(assert (=> d!119429 e!565838))

(declare-fun c!101428 () Bool)

(assert (=> d!119429 (= c!101428 (and (is-Intermediate!9449 lt!444303) (undefined!10261 lt!444303)))))

(assert (=> d!119429 (= lt!444303 e!565835)))

(declare-fun c!101430 () Bool)

(assert (=> d!119429 (= c!101430 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119429 (= lt!444302 (select (arr!30517 a!3219) index!1507))))

(assert (=> d!119429 (validMask!0 mask!3464)))

(assert (=> d!119429 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30517 a!3219) j!170) a!3219 mask!3464) lt!444303)))

(assert (= (and d!119429 c!101430) b!1004769))

(assert (= (and d!119429 (not c!101430)) b!1004762))

(assert (= (and b!1004762 c!101429) b!1004767))

(assert (= (and b!1004762 (not c!101429)) b!1004770))

(assert (= (and d!119429 c!101428) b!1004766))

(assert (= (and d!119429 (not c!101428)) b!1004763))

(assert (= (and b!1004763 res!674209) b!1004768))

(assert (= (and b!1004768 (not res!674208)) b!1004764))

(assert (= (and b!1004764 (not res!674207)) b!1004765))

(declare-fun m!930303 () Bool)

(assert (=> d!119429 m!930303))

(assert (=> d!119429 m!930047))

(declare-fun m!930305 () Bool)

(assert (=> b!1004764 m!930305))

(assert (=> b!1004765 m!930305))

(assert (=> b!1004770 m!930299))

(assert (=> b!1004770 m!930299))

(assert (=> b!1004770 m!930033))

(declare-fun m!930307 () Bool)

(assert (=> b!1004770 m!930307))

(assert (=> b!1004768 m!930305))

(assert (=> b!1004371 d!119429))

(push 1)

(assert (not bm!42319))

(assert (not d!119391))

(assert (not b!1004740))

(assert (not bm!42328))

(assert (not d!119429))

(assert (not b!1004709))

(assert (not b!1004635))

(assert (not b!1004622))

(assert (not d!119415))

(assert (not b!1004674))

(assert (not b!1004623))

(assert (not b!1004770))

(assert (not b!1004560))

(assert (not b!1004624))

(assert (not b!1004742))

(assert (not b!1004761))

(assert (not d!119357))

(assert (not d!119427))

(check-sat)

(pop 1)

(push 1)

(check-sat)

