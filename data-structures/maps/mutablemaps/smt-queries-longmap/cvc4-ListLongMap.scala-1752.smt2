; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32080 () Bool)

(assert start!32080)

(declare-fun b!319765 () Bool)

(declare-fun res!174236 () Bool)

(declare-fun e!198517 () Bool)

(assert (=> b!319765 (=> (not res!174236) (not e!198517))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319765 (= res!174236 (validKeyInArray!0 k!2497))))

(declare-fun b!319766 () Bool)

(declare-fun res!174235 () Bool)

(assert (=> b!319766 (=> (not res!174235) (not e!198517))))

(declare-datatypes ((array!16350 0))(
  ( (array!16351 (arr!7734 (Array (_ BitVec 32) (_ BitVec 64))) (size!8086 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16350)

(declare-fun arrayContainsKey!0 (array!16350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319766 (= res!174235 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319767 () Bool)

(declare-fun res!174237 () Bool)

(assert (=> b!319767 (=> (not res!174237) (not e!198517))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2876 0))(
  ( (MissingZero!2876 (index!13680 (_ BitVec 32))) (Found!2876 (index!13681 (_ BitVec 32))) (Intermediate!2876 (undefined!3688 Bool) (index!13682 (_ BitVec 32)) (x!31913 (_ BitVec 32))) (Undefined!2876) (MissingVacant!2876 (index!13683 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16350 (_ BitVec 32)) SeekEntryResult!2876)

(assert (=> b!319767 (= res!174237 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2876 i!1250)))))

(declare-fun res!174239 () Bool)

(assert (=> start!32080 (=> (not res!174239) (not e!198517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32080 (= res!174239 (validMask!0 mask!3777))))

(assert (=> start!32080 e!198517))

(assert (=> start!32080 true))

(declare-fun array_inv!5688 (array!16350) Bool)

(assert (=> start!32080 (array_inv!5688 a!3305)))

(declare-fun b!319768 () Bool)

(declare-fun lt!155864 () (_ BitVec 32))

(assert (=> b!319768 (= e!198517 (and (bvsge mask!3777 #b00000000000000000000000000000000) (or (bvslt lt!155864 #b00000000000000000000000000000000) (bvsge lt!155864 (bvadd #b00000000000000000000000000000001 mask!3777)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319768 (= lt!155864 (toIndex!0 k!2497 mask!3777))))

(declare-fun b!319769 () Bool)

(declare-fun res!174238 () Bool)

(assert (=> b!319769 (=> (not res!174238) (not e!198517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16350 (_ BitVec 32)) Bool)

(assert (=> b!319769 (= res!174238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319770 () Bool)

(declare-fun res!174240 () Bool)

(assert (=> b!319770 (=> (not res!174240) (not e!198517))))

(assert (=> b!319770 (= res!174240 (and (= (size!8086 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8086 a!3305))))))

(assert (= (and start!32080 res!174239) b!319770))

(assert (= (and b!319770 res!174240) b!319765))

(assert (= (and b!319765 res!174236) b!319766))

(assert (= (and b!319766 res!174235) b!319767))

(assert (= (and b!319767 res!174237) b!319769))

(assert (= (and b!319769 res!174238) b!319768))

(declare-fun m!328277 () Bool)

(assert (=> b!319767 m!328277))

(declare-fun m!328279 () Bool)

(assert (=> start!32080 m!328279))

(declare-fun m!328281 () Bool)

(assert (=> start!32080 m!328281))

(declare-fun m!328283 () Bool)

(assert (=> b!319766 m!328283))

(declare-fun m!328285 () Bool)

(assert (=> b!319765 m!328285))

(declare-fun m!328287 () Bool)

(assert (=> b!319768 m!328287))

(declare-fun m!328289 () Bool)

(assert (=> b!319769 m!328289))

(push 1)

(assert (not b!319765))

(assert (not b!319767))

(assert (not start!32080))

(assert (not b!319769))

(assert (not b!319766))

(assert (not b!319768))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69265 () Bool)

(declare-fun res!174252 () Bool)

(declare-fun e!198528 () Bool)

(assert (=> d!69265 (=> res!174252 e!198528)))

(assert (=> d!69265 (= res!174252 (= (select (arr!7734 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69265 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!198528)))

(declare-fun b!319781 () Bool)

(declare-fun e!198529 () Bool)

(assert (=> b!319781 (= e!198528 e!198529)))

(declare-fun res!174253 () Bool)

(assert (=> b!319781 (=> (not res!174253) (not e!198529))))

(assert (=> b!319781 (= res!174253 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8086 a!3305)))))

(declare-fun b!319782 () Bool)

(assert (=> b!319782 (= e!198529 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69265 (not res!174252)) b!319781))

(assert (= (and b!319781 res!174253) b!319782))

(declare-fun m!328295 () Bool)

(assert (=> d!69265 m!328295))

(declare-fun m!328297 () Bool)

(assert (=> b!319782 m!328297))

(assert (=> b!319766 d!69265))

(declare-fun b!319825 () Bool)

(declare-fun e!198562 () SeekEntryResult!2876)

(declare-fun lt!155895 () SeekEntryResult!2876)

(assert (=> b!319825 (= e!198562 (MissingZero!2876 (index!13682 lt!155895)))))

(declare-fun b!319826 () Bool)

(declare-fun e!198561 () SeekEntryResult!2876)

(assert (=> b!319826 (= e!198561 (Found!2876 (index!13682 lt!155895)))))

(declare-fun b!319827 () Bool)

(declare-fun e!198560 () SeekEntryResult!2876)

(assert (=> b!319827 (= e!198560 e!198561)))

(declare-fun lt!155896 () (_ BitVec 64))

(assert (=> b!319827 (= lt!155896 (select (arr!7734 a!3305) (index!13682 lt!155895)))))

(declare-fun c!50402 () Bool)

(assert (=> b!319827 (= c!50402 (= lt!155896 k!2497))))

(declare-fun b!319828 () Bool)

(declare-fun c!50401 () Bool)

(assert (=> b!319828 (= c!50401 (= lt!155896 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!319828 (= e!198561 e!198562)))

(declare-fun d!69269 () Bool)

(declare-fun lt!155897 () SeekEntryResult!2876)

(assert (=> d!69269 (and (or (is-Undefined!2876 lt!155897) (not (is-Found!2876 lt!155897)) (and (bvsge (index!13681 lt!155897) #b00000000000000000000000000000000) (bvslt (index!13681 lt!155897) (size!8086 a!3305)))) (or (is-Undefined!2876 lt!155897) (is-Found!2876 lt!155897) (not (is-MissingZero!2876 lt!155897)) (and (bvsge (index!13680 lt!155897) #b00000000000000000000000000000000) (bvslt (index!13680 lt!155897) (size!8086 a!3305)))) (or (is-Undefined!2876 lt!155897) (is-Found!2876 lt!155897) (is-MissingZero!2876 lt!155897) (not (is-MissingVacant!2876 lt!155897)) (and (bvsge (index!13683 lt!155897) #b00000000000000000000000000000000) (bvslt (index!13683 lt!155897) (size!8086 a!3305)))) (or (is-Undefined!2876 lt!155897) (ite (is-Found!2876 lt!155897) (= (select (arr!7734 a!3305) (index!13681 lt!155897)) k!2497) (ite (is-MissingZero!2876 lt!155897) (= (select (arr!7734 a!3305) (index!13680 lt!155897)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2876 lt!155897) (= (select (arr!7734 a!3305) (index!13683 lt!155897)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69269 (= lt!155897 e!198560)))

(declare-fun c!50400 () Bool)

(assert (=> d!69269 (= c!50400 (and (is-Intermediate!2876 lt!155895) (undefined!3688 lt!155895)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16350 (_ BitVec 32)) SeekEntryResult!2876)

(assert (=> d!69269 (= lt!155895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69269 (validMask!0 mask!3777)))

(assert (=> d!69269 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!155897)))

(declare-fun b!319829 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16350 (_ BitVec 32)) SeekEntryResult!2876)

(assert (=> b!319829 (= e!198562 (seekKeyOrZeroReturnVacant!0 (x!31913 lt!155895) (index!13682 lt!155895) (index!13682 lt!155895) k!2497 a!3305 mask!3777))))

(declare-fun b!319830 () Bool)

(assert (=> b!319830 (= e!198560 Undefined!2876)))

(assert (= (and d!69269 c!50400) b!319830))

(assert (= (and d!69269 (not c!50400)) b!319827))

(assert (= (and b!319827 c!50402) b!319826))

(assert (= (and b!319827 (not c!50402)) b!319828))

(assert (= (and b!319828 c!50401) b!319825))

(assert (= (and b!319828 (not c!50401)) b!319829))

(declare-fun m!328323 () Bool)

(assert (=> b!319827 m!328323))

(declare-fun m!328325 () Bool)

(assert (=> d!69269 m!328325))

(declare-fun m!328327 () Bool)

(assert (=> d!69269 m!328327))

(assert (=> d!69269 m!328287))

(assert (=> d!69269 m!328279))

(assert (=> d!69269 m!328287))

(declare-fun m!328329 () Bool)

(assert (=> d!69269 m!328329))

(declare-fun m!328331 () Bool)

(assert (=> d!69269 m!328331))

(declare-fun m!328333 () Bool)

(assert (=> b!319829 m!328333))

(assert (=> b!319767 d!69269))

(declare-fun d!69283 () Bool)

(assert (=> d!69283 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32080 d!69283))

(declare-fun d!69289 () Bool)

(assert (=> d!69289 (= (array_inv!5688 a!3305) (bvsge (size!8086 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32080 d!69289))

(declare-fun d!69291 () Bool)

(declare-fun lt!155918 () (_ BitVec 32))

(declare-fun lt!155917 () (_ BitVec 32))

(assert (=> d!69291 (= lt!155918 (bvmul (bvxor lt!155917 (bvlshr lt!155917 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69291 (= lt!155917 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69291 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!174273 (let ((h!5404 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31916 (bvmul (bvxor h!5404 (bvlshr h!5404 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31916 (bvlshr x!31916 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!174273 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!174273 #b00000000000000000000000000000000))))))

(assert (=> d!69291 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!155918 (bvlshr lt!155918 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!319768 d!69291))

(declare-fun b!319875 () Bool)

(declare-fun e!198588 () Bool)

(declare-fun e!198589 () Bool)

(assert (=> b!319875 (= e!198588 e!198589)))

(declare-fun c!50423 () Bool)

(assert (=> b!319875 (= c!50423 (validKeyInArray!0 (select (arr!7734 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!319876 () Bool)

(declare-fun call!26048 () Bool)

(assert (=> b!319876 (= e!198589 call!26048)))

(declare-fun b!319877 () Bool)

(declare-fun e!198587 () Bool)

(assert (=> b!319877 (= e!198589 e!198587)))

(declare-fun lt!155935 () (_ BitVec 64))

(assert (=> b!319877 (= lt!155935 (select (arr!7734 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9815 0))(
  ( (Unit!9816) )
))
(declare-fun lt!155934 () Unit!9815)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16350 (_ BitVec 64) (_ BitVec 32)) Unit!9815)

(assert (=> b!319877 (= lt!155934 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!155935 #b00000000000000000000000000000000))))

(assert (=> b!319877 (arrayContainsKey!0 a!3305 lt!155935 #b00000000000000000000000000000000)))

(declare-fun lt!155936 () Unit!9815)

(assert (=> b!319877 (= lt!155936 lt!155934)))

(declare-fun res!174279 () Bool)

(assert (=> b!319877 (= res!174279 (= (seekEntryOrOpen!0 (select (arr!7734 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!2876 #b00000000000000000000000000000000)))))

(assert (=> b!319877 (=> (not res!174279) (not e!198587))))

(declare-fun d!69293 () Bool)

(declare-fun res!174278 () Bool)

(assert (=> d!69293 (=> res!174278 e!198588)))

(assert (=> d!69293 (= res!174278 (bvsge #b00000000000000000000000000000000 (size!8086 a!3305)))))

(assert (=> d!69293 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!198588)))

(declare-fun b!319878 () Bool)

(assert (=> b!319878 (= e!198587 call!26048)))

(declare-fun bm!26045 () Bool)

(assert (=> bm!26045 (= call!26048 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(assert (= (and d!69293 (not res!174278)) b!319875))

(assert (= (and b!319875 c!50423) b!319877))

(assert (= (and b!319875 (not c!50423)) b!319876))

(assert (= (and b!319877 res!174279) b!319878))

(assert (= (or b!319878 b!319876) bm!26045))

(assert (=> b!319875 m!328295))

(assert (=> b!319875 m!328295))

(declare-fun m!328359 () Bool)

(assert (=> b!319875 m!328359))

(assert (=> b!319877 m!328295))

(declare-fun m!328361 () Bool)

(assert (=> b!319877 m!328361))

(declare-fun m!328363 () Bool)

(assert (=> b!319877 m!328363))

(assert (=> b!319877 m!328295))

(declare-fun m!328365 () Bool)

(assert (=> b!319877 m!328365))

(declare-fun m!328367 () Bool)

(assert (=> bm!26045 m!328367))

(assert (=> b!319769 d!69293))

(declare-fun d!69297 () Bool)

(assert (=> d!69297 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!319765 d!69297))

(push 1)

(assert (not b!319875))

(assert (not b!319877))

(assert (not b!319829))

(assert (not d!69269))

(assert (not bm!26045))

(assert (not b!319782))

(check-sat)

