; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32020 () Bool)

(assert start!32020)

(declare-fun b!319441 () Bool)

(declare-fun e!198373 () Bool)

(declare-fun mask!3777 () (_ BitVec 32))

(assert (=> b!319441 (= e!198373 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvsgt mask!3777 #b00111111111111111111111111111111)))))

(declare-fun b!319442 () Bool)

(declare-fun res!173986 () Bool)

(assert (=> b!319442 (=> (not res!173986) (not e!198373))))

(declare-datatypes ((array!16323 0))(
  ( (array!16324 (arr!7722 (Array (_ BitVec 32) (_ BitVec 64))) (size!8074 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16323)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16323 (_ BitVec 32)) Bool)

(assert (=> b!319442 (= res!173986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!173983 () Bool)

(assert (=> start!32020 (=> (not res!173983) (not e!198373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32020 (= res!173983 (validMask!0 mask!3777))))

(assert (=> start!32020 e!198373))

(assert (=> start!32020 true))

(declare-fun array_inv!5676 (array!16323) Bool)

(assert (=> start!32020 (array_inv!5676 a!3305)))

(declare-fun b!319443 () Bool)

(declare-fun res!173985 () Bool)

(assert (=> b!319443 (=> (not res!173985) (not e!198373))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2864 0))(
  ( (MissingZero!2864 (index!13632 (_ BitVec 32))) (Found!2864 (index!13633 (_ BitVec 32))) (Intermediate!2864 (undefined!3676 Bool) (index!13634 (_ BitVec 32)) (x!31869 (_ BitVec 32))) (Undefined!2864) (MissingVacant!2864 (index!13635 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16323 (_ BitVec 32)) SeekEntryResult!2864)

(assert (=> b!319443 (= res!173985 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2864 i!1250)))))

(declare-fun b!319444 () Bool)

(declare-fun res!173984 () Bool)

(assert (=> b!319444 (=> (not res!173984) (not e!198373))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319444 (= res!173984 (validKeyInArray!0 k!2497))))

(declare-fun b!319445 () Bool)

(declare-fun res!173987 () Bool)

(assert (=> b!319445 (=> (not res!173987) (not e!198373))))

(declare-fun arrayContainsKey!0 (array!16323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319445 (= res!173987 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319446 () Bool)

(declare-fun res!173988 () Bool)

(assert (=> b!319446 (=> (not res!173988) (not e!198373))))

(assert (=> b!319446 (= res!173988 (and (= (size!8074 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8074 a!3305))))))

(assert (= (and start!32020 res!173983) b!319446))

(assert (= (and b!319446 res!173988) b!319444))

(assert (= (and b!319444 res!173984) b!319445))

(assert (= (and b!319445 res!173987) b!319443))

(assert (= (and b!319443 res!173985) b!319442))

(assert (= (and b!319442 res!173986) b!319441))

(declare-fun m!328027 () Bool)

(assert (=> b!319445 m!328027))

(declare-fun m!328029 () Bool)

(assert (=> b!319442 m!328029))

(declare-fun m!328031 () Bool)

(assert (=> b!319444 m!328031))

(declare-fun m!328033 () Bool)

(assert (=> b!319443 m!328033))

(declare-fun m!328035 () Bool)

(assert (=> start!32020 m!328035))

(declare-fun m!328037 () Bool)

(assert (=> start!32020 m!328037))

(push 1)

(assert (not b!319442))

(assert (not start!32020))

(assert (not b!319444))

(assert (not b!319443))

(assert (not b!319445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!319467 () Bool)

(declare-fun e!198391 () Bool)

(declare-fun e!198389 () Bool)

(assert (=> b!319467 (= e!198391 e!198389)))

(declare-fun lt!155791 () (_ BitVec 64))

(assert (=> b!319467 (= lt!155791 (select (arr!7722 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9805 0))(
  ( (Unit!9806) )
))
(declare-fun lt!155790 () Unit!9805)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16323 (_ BitVec 64) (_ BitVec 32)) Unit!9805)

(assert (=> b!319467 (= lt!155790 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!155791 #b00000000000000000000000000000000))))

(assert (=> b!319467 (arrayContainsKey!0 a!3305 lt!155791 #b00000000000000000000000000000000)))

(declare-fun lt!155792 () Unit!9805)

(assert (=> b!319467 (= lt!155792 lt!155790)))

(declare-fun res!174000 () Bool)

(assert (=> b!319467 (= res!174000 (= (seekEntryOrOpen!0 (select (arr!7722 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!2864 #b00000000000000000000000000000000)))))

(assert (=> b!319467 (=> (not res!174000) (not e!198389))))

(declare-fun b!319468 () Bool)

(declare-fun e!198390 () Bool)

(assert (=> b!319468 (= e!198390 e!198391)))

(declare-fun c!50357 () Bool)

(assert (=> b!319468 (= c!50357 (validKeyInArray!0 (select (arr!7722 a!3305) #b00000000000000000000000000000000)))))

(declare-fun d!69219 () Bool)

(declare-fun res!173999 () Bool)

(assert (=> d!69219 (=> res!173999 e!198390)))

(assert (=> d!69219 (= res!173999 (bvsge #b00000000000000000000000000000000 (size!8074 a!3305)))))

(assert (=> d!69219 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!198390)))

(declare-fun b!319469 () Bool)

(declare-fun call!26036 () Bool)

(assert (=> b!319469 (= e!198389 call!26036)))

(declare-fun bm!26033 () Bool)

(assert (=> bm!26033 (= call!26036 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!319470 () Bool)

(assert (=> b!319470 (= e!198391 call!26036)))

(assert (= (and d!69219 (not res!173999)) b!319468))

(assert (= (and b!319468 c!50357) b!319467))

(assert (= (and b!319468 (not c!50357)) b!319470))

(assert (= (and b!319467 res!174000) b!319469))

(assert (= (or b!319469 b!319470) bm!26033))

(declare-fun m!328051 () Bool)

(assert (=> b!319467 m!328051))

(declare-fun m!328053 () Bool)

(assert (=> b!319467 m!328053))

(declare-fun m!328055 () Bool)

(assert (=> b!319467 m!328055))

(assert (=> b!319467 m!328051))

(declare-fun m!328057 () Bool)

(assert (=> b!319467 m!328057))

(assert (=> b!319468 m!328051))

(assert (=> b!319468 m!328051))

(declare-fun m!328059 () Bool)

(assert (=> b!319468 m!328059))

(declare-fun m!328061 () Bool)

(assert (=> bm!26033 m!328061))

(assert (=> b!319442 d!69219))

(declare-fun d!69223 () Bool)

(assert (=> d!69223 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32020 d!69223))

(declare-fun d!69229 () Bool)

(assert (=> d!69229 (= (array_inv!5676 a!3305) (bvsge (size!8074 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32020 d!69229))

(declare-fun b!319537 () Bool)

(declare-fun e!198432 () SeekEntryResult!2864)

(declare-fun lt!155827 () SeekEntryResult!2864)

(assert (=> b!319537 (= e!198432 (Found!2864 (index!13634 lt!155827)))))

(declare-fun b!319538 () Bool)

(declare-fun e!198433 () SeekEntryResult!2864)

(assert (=> b!319538 (= e!198433 e!198432)))

(declare-fun lt!155828 () (_ BitVec 64))

(assert (=> b!319538 (= lt!155828 (select (arr!7722 a!3305) (index!13634 lt!155827)))))

(declare-fun c!50387 () Bool)

(assert (=> b!319538 (= c!50387 (= lt!155828 k!2497))))

(declare-fun d!69231 () Bool)

(declare-fun lt!155826 () SeekEntryResult!2864)

(assert (=> d!69231 (and (or (is-Undefined!2864 lt!155826) (not (is-Found!2864 lt!155826)) (and (bvsge (index!13633 lt!155826) #b00000000000000000000000000000000) (bvslt (index!13633 lt!155826) (size!8074 a!3305)))) (or (is-Undefined!2864 lt!155826) (is-Found!2864 lt!155826) (not (is-MissingZero!2864 lt!155826)) (and (bvsge (index!13632 lt!155826) #b00000000000000000000000000000000) (bvslt (index!13632 lt!155826) (size!8074 a!3305)))) (or (is-Undefined!2864 lt!155826) (is-Found!2864 lt!155826) (is-MissingZero!2864 lt!155826) (not (is-MissingVacant!2864 lt!155826)) (and (bvsge (index!13635 lt!155826) #b00000000000000000000000000000000) (bvslt (index!13635 lt!155826) (size!8074 a!3305)))) (or (is-Undefined!2864 lt!155826) (ite (is-Found!2864 lt!155826) (= (select (arr!7722 a!3305) (index!13633 lt!155826)) k!2497) (ite (is-MissingZero!2864 lt!155826) (= (select (arr!7722 a!3305) (index!13632 lt!155826)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2864 lt!155826) (= (select (arr!7722 a!3305) (index!13635 lt!155826)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69231 (= lt!155826 e!198433)))

(declare-fun c!50386 () Bool)

(assert (=> d!69231 (= c!50386 (and (is-Intermediate!2864 lt!155827) (undefined!3676 lt!155827)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16323 (_ BitVec 32)) SeekEntryResult!2864)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69231 (= lt!155827 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69231 (validMask!0 mask!3777)))

(assert (=> d!69231 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!155826)))

(declare-fun e!198431 () SeekEntryResult!2864)

(declare-fun b!319539 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16323 (_ BitVec 32)) SeekEntryResult!2864)

(assert (=> b!319539 (= e!198431 (seekKeyOrZeroReturnVacant!0 (x!31869 lt!155827) (index!13634 lt!155827) (index!13634 lt!155827) k!2497 a!3305 mask!3777))))

(declare-fun b!319540 () Bool)

(declare-fun c!50385 () Bool)

(assert (=> b!319540 (= c!50385 (= lt!155828 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!319540 (= e!198432 e!198431)))

(declare-fun b!319541 () Bool)

(assert (=> b!319541 (= e!198433 Undefined!2864)))

(declare-fun b!319542 () Bool)

(assert (=> b!319542 (= e!198431 (MissingZero!2864 (index!13634 lt!155827)))))

(assert (= (and d!69231 c!50386) b!319541))

(assert (= (and d!69231 (not c!50386)) b!319538))

(assert (= (and b!319538 c!50387) b!319537))

(assert (= (and b!319538 (not c!50387)) b!319540))

(assert (= (and b!319540 c!50385) b!319542))

(assert (= (and b!319540 (not c!50385)) b!319539))

(declare-fun m!328105 () Bool)

(assert (=> b!319538 m!328105))

(declare-fun m!328107 () Bool)

(assert (=> d!69231 m!328107))

(declare-fun m!328109 () Bool)

(assert (=> d!69231 m!328109))

(declare-fun m!328111 () Bool)

(assert (=> d!69231 m!328111))

(declare-fun m!328113 () Bool)

(assert (=> d!69231 m!328113))

(assert (=> d!69231 m!328035))

(assert (=> d!69231 m!328111))

(declare-fun m!328115 () Bool)

(assert (=> d!69231 m!328115))

(declare-fun m!328117 () Bool)

(assert (=> b!319539 m!328117))

(assert (=> b!319443 d!69231))

(declare-fun d!69241 () Bool)

(assert (=> d!69241 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!319444 d!69241))

(declare-fun d!69247 () Bool)

(declare-fun res!174023 () Bool)

(declare-fun e!198444 () Bool)

(assert (=> d!69247 (=> res!174023 e!198444)))

(assert (=> d!69247 (= res!174023 (= (select (arr!7722 a!3305) #b00000000000000000000000000000000) k!2497))))

