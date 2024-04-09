; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32160 () Bool)

(assert start!32160)

(declare-fun res!174637 () Bool)

(declare-fun e!198703 () Bool)

(assert (=> start!32160 (=> (not res!174637) (not e!198703))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32160 (= res!174637 (validMask!0 mask!3777))))

(assert (=> start!32160 e!198703))

(declare-datatypes ((array!16391 0))(
  ( (array!16392 (arr!7753 (Array (_ BitVec 32) (_ BitVec 64))) (size!8105 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16391)

(declare-fun array_inv!5707 (array!16391) Bool)

(assert (=> start!32160 (array_inv!5707 a!3305)))

(assert (=> start!32160 true))

(declare-fun b!320235 () Bool)

(declare-fun res!174642 () Bool)

(assert (=> b!320235 (=> (not res!174642) (not e!198703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16391 (_ BitVec 32)) Bool)

(assert (=> b!320235 (= res!174642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320236 () Bool)

(declare-fun res!174639 () Bool)

(assert (=> b!320236 (=> (not res!174639) (not e!198703))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320236 (= res!174639 (validKeyInArray!0 k!2497))))

(declare-fun b!320237 () Bool)

(declare-fun res!174641 () Bool)

(assert (=> b!320237 (=> (not res!174641) (not e!198703))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320237 (= res!174641 (and (= (size!8105 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8105 a!3305))))))

(declare-fun b!320238 () Bool)

(declare-fun res!174636 () Bool)

(assert (=> b!320238 (=> (not res!174636) (not e!198703))))

(declare-datatypes ((SeekEntryResult!2895 0))(
  ( (MissingZero!2895 (index!13756 (_ BitVec 32))) (Found!2895 (index!13757 (_ BitVec 32))) (Intermediate!2895 (undefined!3707 Bool) (index!13758 (_ BitVec 32)) (x!31991 (_ BitVec 32))) (Undefined!2895) (MissingVacant!2895 (index!13759 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16391 (_ BitVec 32)) SeekEntryResult!2895)

(assert (=> b!320238 (= res!174636 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2895 i!1250)))))

(declare-fun b!320239 () Bool)

(declare-fun res!174638 () Bool)

(assert (=> b!320239 (=> (not res!174638) (not e!198703))))

(declare-fun arrayContainsKey!0 (array!16391 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320239 (= res!174638 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320240 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!320240 (= e!198703 (and (= (select (arr!7753 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8105 a!3305)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-fun b!320241 () Bool)

(declare-fun res!174640 () Bool)

(assert (=> b!320241 (=> (not res!174640) (not e!198703))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16391 (_ BitVec 32)) SeekEntryResult!2895)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320241 (= res!174640 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2895 false resIndex!58 resX!58)))))

(assert (= (and start!32160 res!174637) b!320237))

(assert (= (and b!320237 res!174641) b!320236))

(assert (= (and b!320236 res!174639) b!320239))

(assert (= (and b!320239 res!174638) b!320238))

(assert (= (and b!320238 res!174636) b!320235))

(assert (= (and b!320235 res!174642) b!320241))

(assert (= (and b!320241 res!174640) b!320240))

(declare-fun m!328657 () Bool)

(assert (=> b!320239 m!328657))

(declare-fun m!328659 () Bool)

(assert (=> b!320236 m!328659))

(declare-fun m!328661 () Bool)

(assert (=> b!320235 m!328661))

(declare-fun m!328663 () Bool)

(assert (=> b!320241 m!328663))

(assert (=> b!320241 m!328663))

(declare-fun m!328665 () Bool)

(assert (=> b!320241 m!328665))

(declare-fun m!328667 () Bool)

(assert (=> b!320240 m!328667))

(declare-fun m!328669 () Bool)

(assert (=> b!320238 m!328669))

(declare-fun m!328671 () Bool)

(assert (=> start!32160 m!328671))

(declare-fun m!328673 () Bool)

(assert (=> start!32160 m!328673))

(push 1)

(assert (not b!320239))

(assert (not b!320235))

(assert (not b!320236))

(assert (not start!32160))

(assert (not b!320238))

(assert (not b!320241))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69315 () Bool)

(declare-fun res!174695 () Bool)

(declare-fun e!198729 () Bool)

(assert (=> d!69315 (=> res!174695 e!198729)))

(assert (=> d!69315 (= res!174695 (= (select (arr!7753 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69315 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!198729)))

(declare-fun b!320300 () Bool)

(declare-fun e!198730 () Bool)

(assert (=> b!320300 (= e!198729 e!198730)))

(declare-fun res!174696 () Bool)

(assert (=> b!320300 (=> (not res!174696) (not e!198730))))

(assert (=> b!320300 (= res!174696 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8105 a!3305)))))

(declare-fun b!320301 () Bool)

(assert (=> b!320301 (= e!198730 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69315 (not res!174695)) b!320300))

(assert (= (and b!320300 res!174696) b!320301))

(declare-fun m!328723 () Bool)

(assert (=> d!69315 m!328723))

(declare-fun m!328725 () Bool)

(assert (=> b!320301 m!328725))

(assert (=> b!320239 d!69315))

(declare-fun b!320350 () Bool)

(declare-fun c!50445 () Bool)

(declare-fun lt!156000 () (_ BitVec 64))

(assert (=> b!320350 (= c!50445 (= lt!156000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!198759 () SeekEntryResult!2895)

(declare-fun e!198761 () SeekEntryResult!2895)

(assert (=> b!320350 (= e!198759 e!198761)))

(declare-fun b!320351 () Bool)

(declare-fun lt!155998 () SeekEntryResult!2895)

(assert (=> b!320351 (= e!198759 (Found!2895 (index!13758 lt!155998)))))

(declare-fun d!69321 () Bool)

(declare-fun lt!155999 () SeekEntryResult!2895)

(assert (=> d!69321 (and (or (is-Undefined!2895 lt!155999) (not (is-Found!2895 lt!155999)) (and (bvsge (index!13757 lt!155999) #b00000000000000000000000000000000) (bvslt (index!13757 lt!155999) (size!8105 a!3305)))) (or (is-Undefined!2895 lt!155999) (is-Found!2895 lt!155999) (not (is-MissingZero!2895 lt!155999)) (and (bvsge (index!13756 lt!155999) #b00000000000000000000000000000000) (bvslt (index!13756 lt!155999) (size!8105 a!3305)))) (or (is-Undefined!2895 lt!155999) (is-Found!2895 lt!155999) (is-MissingZero!2895 lt!155999) (not (is-MissingVacant!2895 lt!155999)) (and (bvsge (index!13759 lt!155999) #b00000000000000000000000000000000) (bvslt (index!13759 lt!155999) (size!8105 a!3305)))) (or (is-Undefined!2895 lt!155999) (ite (is-Found!2895 lt!155999) (= (select (arr!7753 a!3305) (index!13757 lt!155999)) k!2497) (ite (is-MissingZero!2895 lt!155999) (= (select (arr!7753 a!3305) (index!13756 lt!155999)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2895 lt!155999) (= (select (arr!7753 a!3305) (index!13759 lt!155999)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!198760 () SeekEntryResult!2895)

(assert (=> d!69321 (= lt!155999 e!198760)))

(declare-fun c!50447 () Bool)

(assert (=> d!69321 (= c!50447 (and (is-Intermediate!2895 lt!155998) (undefined!3707 lt!155998)))))

(assert (=> d!69321 (= lt!155998 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69321 (validMask!0 mask!3777)))

(assert (=> d!69321 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!155999)))

(declare-fun b!320352 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16391 (_ BitVec 32)) SeekEntryResult!2895)

(assert (=> b!320352 (= e!198761 (seekKeyOrZeroReturnVacant!0 (x!31991 lt!155998) (index!13758 lt!155998) (index!13758 lt!155998) k!2497 a!3305 mask!3777))))

(declare-fun b!320353 () Bool)

(assert (=> b!320353 (= e!198760 Undefined!2895)))

(declare-fun b!320354 () Bool)

(assert (=> b!320354 (= e!198761 (MissingZero!2895 (index!13758 lt!155998)))))

(declare-fun b!320355 () Bool)

(assert (=> b!320355 (= e!198760 e!198759)))

(assert (=> b!320355 (= lt!156000 (select (arr!7753 a!3305) (index!13758 lt!155998)))))

(declare-fun c!50446 () Bool)

(assert (=> b!320355 (= c!50446 (= lt!156000 k!2497))))

(assert (= (and d!69321 c!50447) b!320353))

(assert (= (and d!69321 (not c!50447)) b!320355))

(assert (= (and b!320355 c!50446) b!320351))

(assert (= (and b!320355 (not c!50446)) b!320350))

(assert (= (and b!320350 c!50445) b!320354))

(assert (= (and b!320350 (not c!50445)) b!320352))

(declare-fun m!328729 () Bool)

(assert (=> d!69321 m!328729))

(assert (=> d!69321 m!328671))

(assert (=> d!69321 m!328663))

(assert (=> d!69321 m!328663))

(assert (=> d!69321 m!328665))

(declare-fun m!328731 () Bool)

(assert (=> d!69321 m!328731))

(declare-fun m!328733 () Bool)

(assert (=> d!69321 m!328733))

(declare-fun m!328735 () Bool)

(assert (=> b!320352 m!328735))

(declare-fun m!328737 () Bool)

(assert (=> b!320355 m!328737))

(assert (=> b!320238 d!69321))

(declare-fun d!69325 () Bool)

(assert (=> d!69325 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!320236 d!69325))

(declare-fun e!198793 () SeekEntryResult!2895)

(declare-fun b!320401 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320401 (= e!198793 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!320402 () Bool)

(declare-fun lt!156025 () SeekEntryResult!2895)

(assert (=> b!320402 (and (bvsge (index!13758 lt!156025) #b00000000000000000000000000000000) (bvslt (index!13758 lt!156025) (size!8105 a!3305)))))

(declare-fun res!174726 () Bool)

(assert (=> b!320402 (= res!174726 (= (select (arr!7753 a!3305) (index!13758 lt!156025)) k!2497))))

(declare-fun e!198790 () Bool)

(assert (=> b!320402 (=> res!174726 e!198790)))

(declare-fun e!198792 () Bool)

(assert (=> b!320402 (= e!198792 e!198790)))

(declare-fun b!320403 () Bool)

(declare-fun e!198789 () Bool)

(assert (=> b!320403 (= e!198789 (bvsge (x!31991 lt!156025) #b01111111111111111111111111111110))))

(declare-fun b!320404 () Bool)

(declare-fun e!198791 () SeekEntryResult!2895)

(assert (=> b!320404 (= e!198791 e!198793)))

(declare-fun c!50464 () Bool)

(declare-fun lt!156026 () (_ BitVec 64))

(assert (=> b!320404 (= c!50464 (or (= lt!156026 k!2497) (= (bvadd lt!156026 lt!156026) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!320405 () Bool)

(assert (=> b!320405 (and (bvsge (index!13758 lt!156025) #b00000000000000000000000000000000) (bvslt (index!13758 lt!156025) (size!8105 a!3305)))))

(assert (=> b!320405 (= e!198790 (= (select (arr!7753 a!3305) (index!13758 lt!156025)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!69329 () Bool)

(assert (=> d!69329 e!198789))

(declare-fun c!50465 () Bool)

(assert (=> d!69329 (= c!50465 (and (is-Intermediate!2895 lt!156025) (undefined!3707 lt!156025)))))

(assert (=> d!69329 (= lt!156025 e!198791)))

(declare-fun c!50463 () Bool)

(assert (=> d!69329 (= c!50463 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!69329 (= lt!156026 (select (arr!7753 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69329 (validMask!0 mask!3777)))

(assert (=> d!69329 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156025)))

(declare-fun b!320406 () Bool)

(assert (=> b!320406 (= e!198791 (Intermediate!2895 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!320407 () Bool)

(assert (=> b!320407 (= e!198793 (Intermediate!2895 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!320408 () Bool)

(assert (=> b!320408 (= e!198789 e!198792)))

(declare-fun res!174727 () Bool)

(assert (=> b!320408 (= res!174727 (and (is-Intermediate!2895 lt!156025) (not (undefined!3707 lt!156025)) (bvslt (x!31991 lt!156025) #b01111111111111111111111111111110) (bvsge (x!31991 lt!156025) #b00000000000000000000000000000000) (bvsge (x!31991 lt!156025) #b00000000000000000000000000000000)))))

(assert (=> b!320408 (=> (not res!174727) (not e!198792))))

(declare-fun b!320409 () Bool)

(assert (=> b!320409 (and (bvsge (index!13758 lt!156025) #b00000000000000000000000000000000) (bvslt (index!13758 lt!156025) (size!8105 a!3305)))))

(declare-fun res!174725 () Bool)

(assert (=> b!320409 (= res!174725 (= (select (arr!7753 a!3305) (index!13758 lt!156025)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!320409 (=> res!174725 e!198790)))

(assert (= (and d!69329 c!50463) b!320406))

(assert (= (and d!69329 (not c!50463)) b!320404))

(assert (= (and b!320404 c!50464) b!320407))

(assert (= (and b!320404 (not c!50464)) b!320401))

(assert (= (and d!69329 c!50465) b!320403))

(assert (= (and d!69329 (not c!50465)) b!320408))

(assert (= (and b!320408 res!174727) b!320402))

(assert (= (and b!320402 (not res!174726)) b!320409))

(assert (= (and b!320409 (not res!174725)) b!320405))

(declare-fun m!328769 () Bool)

(assert (=> b!320409 m!328769))

(assert (=> b!320402 m!328769))

(assert (=> b!320401 m!328663))

(declare-fun m!328771 () Bool)

(assert (=> b!320401 m!328771))

(assert (=> b!320401 m!328771))

(declare-fun m!328773 () Bool)

(assert (=> b!320401 m!328773))

(assert (=> d!69329 m!328663))

(declare-fun m!328775 () Bool)

(assert (=> d!69329 m!328775))

(assert (=> d!69329 m!328671))

(assert (=> b!320405 m!328769))

(assert (=> b!320241 d!69329))

(declare-fun d!69341 () Bool)

(declare-fun lt!156036 () (_ BitVec 32))

(declare-fun lt!156035 () (_ BitVec 32))

(assert (=> d!69341 (= lt!156036 (bvmul (bvxor lt!156035 (bvlshr lt!156035 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69341 (= lt!156035 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69341 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!174728 (let ((h!5406 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31997 (bvmul (bvxor h!5406 (bvlshr h!5406 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31997 (bvlshr x!31997 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!174728 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!174728 #b00000000000000000000000000000000))))))

(assert (=> d!69341 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!156036 (bvlshr lt!156036 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!320241 d!69341))

(declare-fun d!69343 () Bool)

(assert (=> d!69343 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32160 d!69343))

(declare-fun d!69349 () Bool)

(assert (=> d!69349 (= (array_inv!5707 a!3305) (bvsge (size!8105 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32160 d!69349))

(declare-fun b!320469 () Bool)

(declare-fun e!198832 () Bool)

(declare-fun e!198831 () Bool)

(assert (=> b!320469 (= e!198832 e!198831)))

(declare-fun c!50486 () Bool)

(assert (=> b!320469 (= c!50486 (validKeyInArray!0 (select (arr!7753 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!320470 () Bool)

(declare-fun e!198830 () Bool)

(declare-fun call!26057 () Bool)

(assert (=> b!320470 (= e!198830 call!26057)))

(declare-fun d!69351 () Bool)

(declare-fun res!174749 () Bool)

(assert (=> d!69351 (=> res!174749 e!198832)))

(assert (=> d!69351 (= res!174749 (bvsge #b00000000000000000000000000000000 (size!8105 a!3305)))))

(assert (=> d!69351 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!198832)))

(declare-fun b!320471 () Bool)

(assert (=> b!320471 (= e!198831 e!198830)))

(declare-fun lt!156061 () (_ BitVec 64))

(assert (=> b!320471 (= lt!156061 (select (arr!7753 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9821 0))(
  ( (Unit!9822) )
))
(declare-fun lt!156062 () Unit!9821)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16391 (_ BitVec 64) (_ BitVec 32)) Unit!9821)

(assert (=> b!320471 (= lt!156062 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!156061 #b00000000000000000000000000000000))))

(assert (=> b!320471 (arrayContainsKey!0 a!3305 lt!156061 #b00000000000000000000000000000000)))

(declare-fun lt!156060 () Unit!9821)

(assert (=> b!320471 (= lt!156060 lt!156062)))

(declare-fun res!174750 () Bool)

(assert (=> b!320471 (= res!174750 (= (seekEntryOrOpen!0 (select (arr!7753 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!2895 #b00000000000000000000000000000000)))))

(assert (=> b!320471 (=> (not res!174750) (not e!198830))))

(declare-fun b!320472 () Bool)

(assert (=> b!320472 (= e!198831 call!26057)))

(declare-fun bm!26054 () Bool)

(assert (=> bm!26054 (= call!26057 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(assert (= (and d!69351 (not res!174749)) b!320469))

(assert (= (and b!320469 c!50486) b!320471))

(assert (= (and b!320469 (not c!50486)) b!320472))

(assert (= (and b!320471 res!174750) b!320470))

(assert (= (or b!320470 b!320472) bm!26054))

(assert (=> b!320469 m!328723))

(assert (=> b!320469 m!328723))

(declare-fun m!328797 () Bool)

(assert (=> b!320469 m!328797))

(assert (=> b!320471 m!328723))

(declare-fun m!328799 () Bool)

(assert (=> b!320471 m!328799))

(declare-fun m!328801 () Bool)

(assert (=> b!320471 m!328801))

(assert (=> b!320471 m!328723))

(declare-fun m!328803 () Bool)

(assert (=> b!320471 m!328803))

(declare-fun m!328805 () Bool)

(assert (=> bm!26054 m!328805))

(assert (=> b!320235 d!69351))

(push 1)

(assert (not d!69329))

(assert (not b!320401))

(assert (not bm!26054))

(assert (not b!320301))

(assert (not b!320471))

(assert (not b!320469))

(assert (not b!320352))

(assert (not d!69321))

(check-sat)

