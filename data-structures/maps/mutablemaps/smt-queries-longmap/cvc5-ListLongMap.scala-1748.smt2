; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32016 () Bool)

(assert start!32016)

(declare-fun b!319405 () Bool)

(declare-fun res!173948 () Bool)

(declare-fun e!198360 () Bool)

(assert (=> b!319405 (=> (not res!173948) (not e!198360))))

(declare-datatypes ((array!16319 0))(
  ( (array!16320 (arr!7720 (Array (_ BitVec 32) (_ BitVec 64))) (size!8072 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16319)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2862 0))(
  ( (MissingZero!2862 (index!13624 (_ BitVec 32))) (Found!2862 (index!13625 (_ BitVec 32))) (Intermediate!2862 (undefined!3674 Bool) (index!13626 (_ BitVec 32)) (x!31867 (_ BitVec 32))) (Undefined!2862) (MissingVacant!2862 (index!13627 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16319 (_ BitVec 32)) SeekEntryResult!2862)

(assert (=> b!319405 (= res!173948 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2862 i!1250)))))

(declare-fun b!319406 () Bool)

(declare-fun res!173951 () Bool)

(assert (=> b!319406 (=> (not res!173951) (not e!198360))))

(declare-fun arrayContainsKey!0 (array!16319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319406 (= res!173951 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319407 () Bool)

(declare-fun res!173947 () Bool)

(assert (=> b!319407 (=> (not res!173947) (not e!198360))))

(assert (=> b!319407 (= res!173947 (and (= (size!8072 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8072 a!3305))))))

(declare-fun b!319408 () Bool)

(declare-fun res!173949 () Bool)

(assert (=> b!319408 (=> (not res!173949) (not e!198360))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319408 (= res!173949 (validKeyInArray!0 k!2497))))

(declare-fun b!319409 () Bool)

(assert (=> b!319409 (= e!198360 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvsgt mask!3777 #b00111111111111111111111111111111)))))

(declare-fun res!173952 () Bool)

(assert (=> start!32016 (=> (not res!173952) (not e!198360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32016 (= res!173952 (validMask!0 mask!3777))))

(assert (=> start!32016 e!198360))

(assert (=> start!32016 true))

(declare-fun array_inv!5674 (array!16319) Bool)

(assert (=> start!32016 (array_inv!5674 a!3305)))

(declare-fun b!319410 () Bool)

(declare-fun res!173950 () Bool)

(assert (=> b!319410 (=> (not res!173950) (not e!198360))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16319 (_ BitVec 32)) Bool)

(assert (=> b!319410 (= res!173950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32016 res!173952) b!319407))

(assert (= (and b!319407 res!173947) b!319408))

(assert (= (and b!319408 res!173949) b!319406))

(assert (= (and b!319406 res!173951) b!319405))

(assert (= (and b!319405 res!173948) b!319410))

(assert (= (and b!319410 res!173950) b!319409))

(declare-fun m!328003 () Bool)

(assert (=> b!319406 m!328003))

(declare-fun m!328005 () Bool)

(assert (=> b!319405 m!328005))

(declare-fun m!328007 () Bool)

(assert (=> b!319410 m!328007))

(declare-fun m!328009 () Bool)

(assert (=> b!319408 m!328009))

(declare-fun m!328011 () Bool)

(assert (=> start!32016 m!328011))

(declare-fun m!328013 () Bool)

(assert (=> start!32016 m!328013))

(push 1)

(assert (not b!319410))

(assert (not b!319406))

(assert (not b!319405))

(assert (not b!319408))

(assert (not start!32016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69215 () Bool)

(assert (=> d!69215 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!319408 d!69215))

(declare-fun b!319483 () Bool)

(declare-fun e!198399 () SeekEntryResult!2862)

(declare-fun lt!155800 () SeekEntryResult!2862)

(assert (=> b!319483 (= e!198399 (Found!2862 (index!13626 lt!155800)))))

(declare-fun e!198400 () SeekEntryResult!2862)

(declare-fun b!319484 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16319 (_ BitVec 32)) SeekEntryResult!2862)

(assert (=> b!319484 (= e!198400 (seekKeyOrZeroReturnVacant!0 (x!31867 lt!155800) (index!13626 lt!155800) (index!13626 lt!155800) k!2497 a!3305 mask!3777))))

(declare-fun b!319485 () Bool)

(assert (=> b!319485 (= e!198400 (MissingZero!2862 (index!13626 lt!155800)))))

(declare-fun b!319486 () Bool)

(declare-fun c!50366 () Bool)

(declare-fun lt!155801 () (_ BitVec 64))

(assert (=> b!319486 (= c!50366 (= lt!155801 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!319486 (= e!198399 e!198400)))

(declare-fun d!69217 () Bool)

(declare-fun lt!155799 () SeekEntryResult!2862)

(assert (=> d!69217 (and (or (is-Undefined!2862 lt!155799) (not (is-Found!2862 lt!155799)) (and (bvsge (index!13625 lt!155799) #b00000000000000000000000000000000) (bvslt (index!13625 lt!155799) (size!8072 a!3305)))) (or (is-Undefined!2862 lt!155799) (is-Found!2862 lt!155799) (not (is-MissingZero!2862 lt!155799)) (and (bvsge (index!13624 lt!155799) #b00000000000000000000000000000000) (bvslt (index!13624 lt!155799) (size!8072 a!3305)))) (or (is-Undefined!2862 lt!155799) (is-Found!2862 lt!155799) (is-MissingZero!2862 lt!155799) (not (is-MissingVacant!2862 lt!155799)) (and (bvsge (index!13627 lt!155799) #b00000000000000000000000000000000) (bvslt (index!13627 lt!155799) (size!8072 a!3305)))) (or (is-Undefined!2862 lt!155799) (ite (is-Found!2862 lt!155799) (= (select (arr!7720 a!3305) (index!13625 lt!155799)) k!2497) (ite (is-MissingZero!2862 lt!155799) (= (select (arr!7720 a!3305) (index!13624 lt!155799)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2862 lt!155799) (= (select (arr!7720 a!3305) (index!13627 lt!155799)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!198398 () SeekEntryResult!2862)

(assert (=> d!69217 (= lt!155799 e!198398)))

(declare-fun c!50365 () Bool)

(assert (=> d!69217 (= c!50365 (and (is-Intermediate!2862 lt!155800) (undefined!3674 lt!155800)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16319 (_ BitVec 32)) SeekEntryResult!2862)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69217 (= lt!155800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69217 (validMask!0 mask!3777)))

(assert (=> d!69217 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!155799)))

(declare-fun b!319487 () Bool)

(assert (=> b!319487 (= e!198398 e!198399)))

(assert (=> b!319487 (= lt!155801 (select (arr!7720 a!3305) (index!13626 lt!155800)))))

(declare-fun c!50364 () Bool)

(assert (=> b!319487 (= c!50364 (= lt!155801 k!2497))))

(declare-fun b!319488 () Bool)

(assert (=> b!319488 (= e!198398 Undefined!2862)))

(assert (= (and d!69217 c!50365) b!319488))

(assert (= (and d!69217 (not c!50365)) b!319487))

(assert (= (and b!319487 c!50364) b!319483))

(assert (= (and b!319487 (not c!50364)) b!319486))

(assert (= (and b!319486 c!50366) b!319485))

(assert (= (and b!319486 (not c!50366)) b!319484))

(declare-fun m!328063 () Bool)

(assert (=> b!319484 m!328063))

(declare-fun m!328065 () Bool)

(assert (=> d!69217 m!328065))

(assert (=> d!69217 m!328065))

(declare-fun m!328067 () Bool)

(assert (=> d!69217 m!328067))

(declare-fun m!328069 () Bool)

(assert (=> d!69217 m!328069))

(declare-fun m!328071 () Bool)

(assert (=> d!69217 m!328071))

(assert (=> d!69217 m!328011))

(declare-fun m!328073 () Bool)

(assert (=> d!69217 m!328073))

(declare-fun m!328075 () Bool)

(assert (=> b!319487 m!328075))

(assert (=> b!319405 d!69217))

(declare-fun b!319497 () Bool)

(declare-fun e!198408 () Bool)

(declare-fun e!198409 () Bool)

(assert (=> b!319497 (= e!198408 e!198409)))

(declare-fun c!50369 () Bool)

(assert (=> b!319497 (= c!50369 (validKeyInArray!0 (select (arr!7720 a!3305) #b00000000000000000000000000000000)))))

(declare-fun bm!26036 () Bool)

(declare-fun call!26039 () Bool)

(assert (=> bm!26036 (= call!26039 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun d!69233 () Bool)

(declare-fun res!174006 () Bool)

(assert (=> d!69233 (=> res!174006 e!198408)))

(assert (=> d!69233 (= res!174006 (bvsge #b00000000000000000000000000000000 (size!8072 a!3305)))))

(assert (=> d!69233 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!198408)))

(declare-fun b!319498 () Bool)

(declare-fun e!198407 () Bool)

(assert (=> b!319498 (= e!198407 call!26039)))

(declare-fun b!319499 () Bool)

(assert (=> b!319499 (= e!198409 e!198407)))

(declare-fun lt!155810 () (_ BitVec 64))

(assert (=> b!319499 (= lt!155810 (select (arr!7720 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9809 0))(
  ( (Unit!9810) )
))
(declare-fun lt!155808 () Unit!9809)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16319 (_ BitVec 64) (_ BitVec 32)) Unit!9809)

(assert (=> b!319499 (= lt!155808 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!155810 #b00000000000000000000000000000000))))

(assert (=> b!319499 (arrayContainsKey!0 a!3305 lt!155810 #b00000000000000000000000000000000)))

(declare-fun lt!155809 () Unit!9809)

(assert (=> b!319499 (= lt!155809 lt!155808)))

(declare-fun res!174005 () Bool)

(assert (=> b!319499 (= res!174005 (= (seekEntryOrOpen!0 (select (arr!7720 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!2862 #b00000000000000000000000000000000)))))

(assert (=> b!319499 (=> (not res!174005) (not e!198407))))

(declare-fun b!319500 () Bool)

(assert (=> b!319500 (= e!198409 call!26039)))

(assert (= (and d!69233 (not res!174006)) b!319497))

(assert (= (and b!319497 c!50369) b!319499))

(assert (= (and b!319497 (not c!50369)) b!319500))

(assert (= (and b!319499 res!174005) b!319498))

(assert (= (or b!319498 b!319500) bm!26036))

(declare-fun m!328077 () Bool)

(assert (=> b!319497 m!328077))

(assert (=> b!319497 m!328077))

(declare-fun m!328079 () Bool)

(assert (=> b!319497 m!328079))

(declare-fun m!328081 () Bool)

(assert (=> bm!26036 m!328081))

(assert (=> b!319499 m!328077))

(declare-fun m!328083 () Bool)

(assert (=> b!319499 m!328083))

(declare-fun m!328085 () Bool)

(assert (=> b!319499 m!328085))

(assert (=> b!319499 m!328077))

(declare-fun m!328087 () Bool)

(assert (=> b!319499 m!328087))

(assert (=> b!319410 d!69233))

(declare-fun d!69235 () Bool)

(declare-fun res!174011 () Bool)

(declare-fun e!198414 () Bool)

(assert (=> d!69235 (=> res!174011 e!198414)))

(assert (=> d!69235 (= res!174011 (= (select (arr!7720 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69235 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!198414)))

(declare-fun b!319505 () Bool)

(declare-fun e!198415 () Bool)

(assert (=> b!319505 (= e!198414 e!198415)))

(declare-fun res!174012 () Bool)

(assert (=> b!319505 (=> (not res!174012) (not e!198415))))

(assert (=> b!319505 (= res!174012 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8072 a!3305)))))

(declare-fun b!319506 () Bool)

(assert (=> b!319506 (= e!198415 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69235 (not res!174011)) b!319505))

(assert (= (and b!319505 res!174012) b!319506))

(assert (=> d!69235 m!328077))

(declare-fun m!328089 () Bool)

(assert (=> b!319506 m!328089))

(assert (=> b!319406 d!69235))

(declare-fun d!69237 () Bool)

(assert (=> d!69237 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32016 d!69237))

(declare-fun d!69243 () Bool)

(assert (=> d!69243 (= (array_inv!5674 a!3305) (bvsge (size!8072 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32016 d!69243))

(push 1)

