; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32076 () Bool)

(assert start!32076)

(declare-fun b!319729 () Bool)

(declare-fun e!198504 () Bool)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun lt!155858 () (_ BitVec 32))

(assert (=> b!319729 (= e!198504 (and (bvsge mask!3777 #b00000000000000000000000000000000) (or (bvslt lt!155858 #b00000000000000000000000000000000) (bvsge lt!155858 (bvadd #b00000000000000000000000000000001 mask!3777)))))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319729 (= lt!155858 (toIndex!0 k!2497 mask!3777))))

(declare-fun res!174203 () Bool)

(assert (=> start!32076 (=> (not res!174203) (not e!198504))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32076 (= res!174203 (validMask!0 mask!3777))))

(assert (=> start!32076 e!198504))

(assert (=> start!32076 true))

(declare-datatypes ((array!16346 0))(
  ( (array!16347 (arr!7732 (Array (_ BitVec 32) (_ BitVec 64))) (size!8084 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16346)

(declare-fun array_inv!5686 (array!16346) Bool)

(assert (=> start!32076 (array_inv!5686 a!3305)))

(declare-fun b!319730 () Bool)

(declare-fun res!174201 () Bool)

(assert (=> b!319730 (=> (not res!174201) (not e!198504))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2874 0))(
  ( (MissingZero!2874 (index!13672 (_ BitVec 32))) (Found!2874 (index!13673 (_ BitVec 32))) (Intermediate!2874 (undefined!3686 Bool) (index!13674 (_ BitVec 32)) (x!31911 (_ BitVec 32))) (Undefined!2874) (MissingVacant!2874 (index!13675 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16346 (_ BitVec 32)) SeekEntryResult!2874)

(assert (=> b!319730 (= res!174201 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2874 i!1250)))))

(declare-fun b!319731 () Bool)

(declare-fun res!174200 () Bool)

(assert (=> b!319731 (=> (not res!174200) (not e!198504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16346 (_ BitVec 32)) Bool)

(assert (=> b!319731 (= res!174200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319732 () Bool)

(declare-fun res!174202 () Bool)

(assert (=> b!319732 (=> (not res!174202) (not e!198504))))

(assert (=> b!319732 (= res!174202 (and (= (size!8084 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8084 a!3305))))))

(declare-fun b!319733 () Bool)

(declare-fun res!174204 () Bool)

(assert (=> b!319733 (=> (not res!174204) (not e!198504))))

(declare-fun arrayContainsKey!0 (array!16346 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319733 (= res!174204 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319734 () Bool)

(declare-fun res!174199 () Bool)

(assert (=> b!319734 (=> (not res!174199) (not e!198504))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319734 (= res!174199 (validKeyInArray!0 k!2497))))

(assert (= (and start!32076 res!174203) b!319732))

(assert (= (and b!319732 res!174202) b!319734))

(assert (= (and b!319734 res!174199) b!319733))

(assert (= (and b!319733 res!174204) b!319730))

(assert (= (and b!319730 res!174201) b!319731))

(assert (= (and b!319731 res!174200) b!319729))

(declare-fun m!328249 () Bool)

(assert (=> start!32076 m!328249))

(declare-fun m!328251 () Bool)

(assert (=> start!32076 m!328251))

(declare-fun m!328253 () Bool)

(assert (=> b!319730 m!328253))

(declare-fun m!328255 () Bool)

(assert (=> b!319729 m!328255))

(declare-fun m!328257 () Bool)

(assert (=> b!319734 m!328257))

(declare-fun m!328259 () Bool)

(assert (=> b!319731 m!328259))

(declare-fun m!328261 () Bool)

(assert (=> b!319733 m!328261))

(push 1)

(assert (not start!32076))

(assert (not b!319733))

(assert (not b!319729))

(assert (not b!319730))

(assert (not b!319734))

(assert (not b!319731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69261 () Bool)

(assert (=> d!69261 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32076 d!69261))

(declare-fun d!69271 () Bool)

(assert (=> d!69271 (= (array_inv!5686 a!3305) (bvsge (size!8084 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32076 d!69271))

(declare-fun b!319803 () Bool)

(declare-fun e!198546 () Bool)

(declare-fun call!26045 () Bool)

(assert (=> b!319803 (= e!198546 call!26045)))

(declare-fun b!319804 () Bool)

(declare-fun e!198545 () Bool)

(assert (=> b!319804 (= e!198545 e!198546)))

(declare-fun c!50393 () Bool)

(assert (=> b!319804 (= c!50393 (validKeyInArray!0 (select (arr!7732 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!319805 () Bool)

(declare-fun e!198547 () Bool)

(assert (=> b!319805 (= e!198547 call!26045)))

(declare-fun d!69273 () Bool)

(declare-fun res!174265 () Bool)

(assert (=> d!69273 (=> res!174265 e!198545)))

(assert (=> d!69273 (= res!174265 (bvsge #b00000000000000000000000000000000 (size!8084 a!3305)))))

(assert (=> d!69273 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!198545)))

(declare-fun bm!26042 () Bool)

(assert (=> bm!26042 (= call!26045 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!319806 () Bool)

(assert (=> b!319806 (= e!198546 e!198547)))

(declare-fun lt!155888 () (_ BitVec 64))

(assert (=> b!319806 (= lt!155888 (select (arr!7732 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9813 0))(
  ( (Unit!9814) )
))
(declare-fun lt!155887 () Unit!9813)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16346 (_ BitVec 64) (_ BitVec 32)) Unit!9813)

(assert (=> b!319806 (= lt!155887 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!155888 #b00000000000000000000000000000000))))

(assert (=> b!319806 (arrayContainsKey!0 a!3305 lt!155888 #b00000000000000000000000000000000)))

(declare-fun lt!155886 () Unit!9813)

(assert (=> b!319806 (= lt!155886 lt!155887)))

(declare-fun res!174264 () Bool)

(assert (=> b!319806 (= res!174264 (= (seekEntryOrOpen!0 (select (arr!7732 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!2874 #b00000000000000000000000000000000)))))

(assert (=> b!319806 (=> (not res!174264) (not e!198547))))

(assert (= (and d!69273 (not res!174265)) b!319804))

(assert (= (and b!319804 c!50393) b!319806))

(assert (= (and b!319804 (not c!50393)) b!319803))

(assert (= (and b!319806 res!174264) b!319805))

(assert (= (or b!319805 b!319803) bm!26042))

(declare-fun m!328309 () Bool)

(assert (=> b!319804 m!328309))

(assert (=> b!319804 m!328309))

(declare-fun m!328311 () Bool)

(assert (=> b!319804 m!328311))

(declare-fun m!328313 () Bool)

(assert (=> bm!26042 m!328313))

(assert (=> b!319806 m!328309))

(declare-fun m!328315 () Bool)

(assert (=> b!319806 m!328315))

(declare-fun m!328317 () Bool)

(assert (=> b!319806 m!328317))

(assert (=> b!319806 m!328309))

(declare-fun m!328319 () Bool)

(assert (=> b!319806 m!328319))

(assert (=> b!319731 d!69273))

(declare-fun d!69277 () Bool)

(declare-fun res!174270 () Bool)

(declare-fun e!198558 () Bool)

(assert (=> d!69277 (=> res!174270 e!198558)))

(assert (=> d!69277 (= res!174270 (= (select (arr!7732 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69277 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!198558)))

(declare-fun b!319823 () Bool)

(declare-fun e!198559 () Bool)

(assert (=> b!319823 (= e!198558 e!198559)))

(declare-fun res!174271 () Bool)

(assert (=> b!319823 (=> (not res!174271) (not e!198559))))

(assert (=> b!319823 (= res!174271 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8084 a!3305)))))

(declare-fun b!319824 () Bool)

(assert (=> b!319824 (= e!198559 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69277 (not res!174270)) b!319823))

(assert (= (and b!319823 res!174271) b!319824))

(assert (=> d!69277 m!328309))

(declare-fun m!328321 () Bool)

(assert (=> b!319824 m!328321))

(assert (=> b!319733 d!69277))

(declare-fun d!69279 () Bool)

(assert (=> d!69279 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!319734 d!69279))

(declare-fun d!69281 () Bool)

(declare-fun lt!155903 () (_ BitVec 32))

(declare-fun lt!155902 () (_ BitVec 32))

(assert (=> d!69281 (= lt!155903 (bvmul (bvxor lt!155902 (bvlshr lt!155902 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69281 (= lt!155902 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69281 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!174272 (let ((h!5403 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31915 (bvmul (bvxor h!5403 (bvlshr h!5403 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31915 (bvlshr x!31915 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!174272 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!174272 #b00000000000000000000000000000000))))))

(assert (=> d!69281 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!155903 (bvlshr lt!155903 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!319729 d!69281))

(declare-fun b!319869 () Bool)

(declare-fun e!198585 () SeekEntryResult!2874)

(declare-fun lt!155931 () SeekEntryResult!2874)

(assert (=> b!319869 (= e!198585 (Found!2874 (index!13674 lt!155931)))))

(declare-fun b!319870 () Bool)

(declare-fun e!198584 () SeekEntryResult!2874)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16346 (_ BitVec 32)) SeekEntryResult!2874)

(assert (=> b!319870 (= e!198584 (seekKeyOrZeroReturnVacant!0 (x!31911 lt!155931) (index!13674 lt!155931) (index!13674 lt!155931) k!2497 a!3305 mask!3777))))

(declare-fun b!319871 () Bool)

(declare-fun c!50422 () Bool)

(declare-fun lt!155933 () (_ BitVec 64))

(assert (=> b!319871 (= c!50422 (= lt!155933 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!319871 (= e!198585 e!198584)))

(declare-fun d!69285 () Bool)

(declare-fun lt!155932 () SeekEntryResult!2874)

(assert (=> d!69285 (and (or (is-Undefined!2874 lt!155932) (not (is-Found!2874 lt!155932)) (and (bvsge (index!13673 lt!155932) #b00000000000000000000000000000000) (bvslt (index!13673 lt!155932) (size!8084 a!3305)))) (or (is-Undefined!2874 lt!155932) (is-Found!2874 lt!155932) (not (is-MissingZero!2874 lt!155932)) (and (bvsge (index!13672 lt!155932) #b00000000000000000000000000000000) (bvslt (index!13672 lt!155932) (size!8084 a!3305)))) (or (is-Undefined!2874 lt!155932) (is-Found!2874 lt!155932) (is-MissingZero!2874 lt!155932) (not (is-MissingVacant!2874 lt!155932)) (and (bvsge (index!13675 lt!155932) #b00000000000000000000000000000000) (bvslt (index!13675 lt!155932) (size!8084 a!3305)))) (or (is-Undefined!2874 lt!155932) (ite (is-Found!2874 lt!155932) (= (select (arr!7732 a!3305) (index!13673 lt!155932)) k!2497) (ite (is-MissingZero!2874 lt!155932) (= (select (arr!7732 a!3305) (index!13672 lt!155932)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2874 lt!155932) (= (select (arr!7732 a!3305) (index!13675 lt!155932)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!198586 () SeekEntryResult!2874)

(assert (=> d!69285 (= lt!155932 e!198586)))

(declare-fun c!50420 () Bool)

(assert (=> d!69285 (= c!50420 (and (is-Intermediate!2874 lt!155931) (undefined!3686 lt!155931)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16346 (_ BitVec 32)) SeekEntryResult!2874)

(assert (=> d!69285 (= lt!155931 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69285 (validMask!0 mask!3777)))

(assert (=> d!69285 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!155932)))

(declare-fun b!319872 () Bool)

(assert (=> b!319872 (= e!198586 Undefined!2874)))

(declare-fun b!319873 () Bool)

(assert (=> b!319873 (= e!198584 (MissingZero!2874 (index!13674 lt!155931)))))

(declare-fun b!319874 () Bool)

(assert (=> b!319874 (= e!198586 e!198585)))

(assert (=> b!319874 (= lt!155933 (select (arr!7732 a!3305) (index!13674 lt!155931)))))

(declare-fun c!50421 () Bool)

(assert (=> b!319874 (= c!50421 (= lt!155933 k!2497))))

(assert (= (and d!69285 c!50420) b!319872))

(assert (= (and d!69285 (not c!50420)) b!319874))

(assert (= (and b!319874 c!50421) b!319869))

(assert (= (and b!319874 (not c!50421)) b!319871))

(assert (= (and b!319871 c!50422) b!319873))

(assert (= (and b!319871 (not c!50422)) b!319870))

(declare-fun m!328347 () Bool)

(assert (=> b!319870 m!328347))

(declare-fun m!328349 () Bool)

(assert (=> d!69285 m!328349))

(assert (=> d!69285 m!328255))

(declare-fun m!328351 () Bool)

(assert (=> d!69285 m!328351))

(assert (=> d!69285 m!328255))

(declare-fun m!328353 () Bool)

(assert (=> d!69285 m!328353))

(declare-fun m!328355 () Bool)

(assert (=> d!69285 m!328355))

(assert (=> d!69285 m!328249))

(declare-fun m!328357 () Bool)

(assert (=> b!319874 m!328357))

(assert (=> b!319730 d!69285))

(push 1)

(assert (not b!319870))

(assert (not b!319804))

(assert (not d!69285))

(assert (not b!319824))

(assert (not b!319806))

(assert (not bm!26042))

(check-sat)

(pop 1)

(push 1)

(check-sat)

