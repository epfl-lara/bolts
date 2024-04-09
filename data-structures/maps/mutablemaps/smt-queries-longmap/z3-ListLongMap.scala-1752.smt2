; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32078 () Bool)

(assert start!32078)

(declare-fun b!319747 () Bool)

(declare-fun res!174221 () Bool)

(declare-fun e!198510 () Bool)

(assert (=> b!319747 (=> (not res!174221) (not e!198510))))

(declare-datatypes ((array!16348 0))(
  ( (array!16349 (arr!7733 (Array (_ BitVec 32) (_ BitVec 64))) (size!8085 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16348)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319747 (= res!174221 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319748 () Bool)

(declare-fun res!174217 () Bool)

(assert (=> b!319748 (=> (not res!174217) (not e!198510))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319748 (= res!174217 (and (= (size!8085 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8085 a!3305))))))

(declare-fun b!319749 () Bool)

(declare-fun res!174219 () Bool)

(assert (=> b!319749 (=> (not res!174219) (not e!198510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16348 (_ BitVec 32)) Bool)

(assert (=> b!319749 (= res!174219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319750 () Bool)

(declare-fun res!174220 () Bool)

(assert (=> b!319750 (=> (not res!174220) (not e!198510))))

(declare-datatypes ((SeekEntryResult!2875 0))(
  ( (MissingZero!2875 (index!13676 (_ BitVec 32))) (Found!2875 (index!13677 (_ BitVec 32))) (Intermediate!2875 (undefined!3687 Bool) (index!13678 (_ BitVec 32)) (x!31912 (_ BitVec 32))) (Undefined!2875) (MissingVacant!2875 (index!13679 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16348 (_ BitVec 32)) SeekEntryResult!2875)

(assert (=> b!319750 (= res!174220 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2875 i!1250)))))

(declare-fun res!174218 () Bool)

(assert (=> start!32078 (=> (not res!174218) (not e!198510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32078 (= res!174218 (validMask!0 mask!3777))))

(assert (=> start!32078 e!198510))

(assert (=> start!32078 true))

(declare-fun array_inv!5687 (array!16348) Bool)

(assert (=> start!32078 (array_inv!5687 a!3305)))

(declare-fun b!319751 () Bool)

(declare-fun res!174222 () Bool)

(assert (=> b!319751 (=> (not res!174222) (not e!198510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319751 (= res!174222 (validKeyInArray!0 k0!2497))))

(declare-fun b!319752 () Bool)

(declare-fun lt!155861 () (_ BitVec 32))

(assert (=> b!319752 (= e!198510 (and (bvsge mask!3777 #b00000000000000000000000000000000) (or (bvslt lt!155861 #b00000000000000000000000000000000) (bvsge lt!155861 (bvadd #b00000000000000000000000000000001 mask!3777)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319752 (= lt!155861 (toIndex!0 k0!2497 mask!3777))))

(assert (= (and start!32078 res!174218) b!319748))

(assert (= (and b!319748 res!174217) b!319751))

(assert (= (and b!319751 res!174222) b!319747))

(assert (= (and b!319747 res!174221) b!319750))

(assert (= (and b!319750 res!174220) b!319749))

(assert (= (and b!319749 res!174219) b!319752))

(declare-fun m!328263 () Bool)

(assert (=> b!319751 m!328263))

(declare-fun m!328265 () Bool)

(assert (=> b!319752 m!328265))

(declare-fun m!328267 () Bool)

(assert (=> start!32078 m!328267))

(declare-fun m!328269 () Bool)

(assert (=> start!32078 m!328269))

(declare-fun m!328271 () Bool)

(assert (=> b!319747 m!328271))

(declare-fun m!328273 () Bool)

(assert (=> b!319750 m!328273))

(declare-fun m!328275 () Bool)

(assert (=> b!319749 m!328275))

(check-sat (not b!319752) (not b!319751) (not b!319747) (not b!319750) (not start!32078) (not b!319749))
(check-sat)
(get-model)

(declare-fun d!69257 () Bool)

(assert (=> d!69257 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!319751 d!69257))

(declare-fun d!69259 () Bool)

(declare-fun lt!155870 () (_ BitVec 32))

(declare-fun lt!155869 () (_ BitVec 32))

(assert (=> d!69259 (= lt!155870 (bvmul (bvxor lt!155869 (bvlshr lt!155869 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69259 (= lt!155869 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69259 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!174241 (let ((h!5402 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31914 (bvmul (bvxor h!5402 (bvlshr h!5402 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31914 (bvlshr x!31914 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!174241 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!174241 #b00000000000000000000000000000000))))))

(assert (=> d!69259 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!155870 (bvlshr lt!155870 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!319752 d!69259))

(declare-fun d!69263 () Bool)

(declare-fun res!174246 () Bool)

(declare-fun e!198522 () Bool)

(assert (=> d!69263 (=> res!174246 e!198522)))

(assert (=> d!69263 (= res!174246 (= (select (arr!7733 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!69263 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!198522)))

(declare-fun b!319775 () Bool)

(declare-fun e!198523 () Bool)

(assert (=> b!319775 (= e!198522 e!198523)))

(declare-fun res!174247 () Bool)

(assert (=> b!319775 (=> (not res!174247) (not e!198523))))

(assert (=> b!319775 (= res!174247 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8085 a!3305)))))

(declare-fun b!319776 () Bool)

(assert (=> b!319776 (= e!198523 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69263 (not res!174246)) b!319775))

(assert (= (and b!319775 res!174247) b!319776))

(declare-fun m!328291 () Bool)

(assert (=> d!69263 m!328291))

(declare-fun m!328293 () Bool)

(assert (=> b!319776 m!328293))

(assert (=> b!319747 d!69263))

(declare-fun bm!26039 () Bool)

(declare-fun call!26042 () Bool)

(assert (=> bm!26039 (= call!26042 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!319791 () Bool)

(declare-fun e!198536 () Bool)

(assert (=> b!319791 (= e!198536 call!26042)))

(declare-fun b!319792 () Bool)

(declare-fun e!198537 () Bool)

(declare-fun e!198538 () Bool)

(assert (=> b!319792 (= e!198537 e!198538)))

(declare-fun c!50390 () Bool)

(assert (=> b!319792 (= c!50390 (validKeyInArray!0 (select (arr!7733 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!319793 () Bool)

(assert (=> b!319793 (= e!198538 e!198536)))

(declare-fun lt!155877 () (_ BitVec 64))

(assert (=> b!319793 (= lt!155877 (select (arr!7733 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9811 0))(
  ( (Unit!9812) )
))
(declare-fun lt!155879 () Unit!9811)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16348 (_ BitVec 64) (_ BitVec 32)) Unit!9811)

(assert (=> b!319793 (= lt!155879 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!155877 #b00000000000000000000000000000000))))

(assert (=> b!319793 (arrayContainsKey!0 a!3305 lt!155877 #b00000000000000000000000000000000)))

(declare-fun lt!155878 () Unit!9811)

(assert (=> b!319793 (= lt!155878 lt!155879)))

(declare-fun res!174258 () Bool)

(assert (=> b!319793 (= res!174258 (= (seekEntryOrOpen!0 (select (arr!7733 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!2875 #b00000000000000000000000000000000)))))

(assert (=> b!319793 (=> (not res!174258) (not e!198536))))

(declare-fun d!69267 () Bool)

(declare-fun res!174259 () Bool)

(assert (=> d!69267 (=> res!174259 e!198537)))

(assert (=> d!69267 (= res!174259 (bvsge #b00000000000000000000000000000000 (size!8085 a!3305)))))

(assert (=> d!69267 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!198537)))

(declare-fun b!319794 () Bool)

(assert (=> b!319794 (= e!198538 call!26042)))

(assert (= (and d!69267 (not res!174259)) b!319792))

(assert (= (and b!319792 c!50390) b!319793))

(assert (= (and b!319792 (not c!50390)) b!319794))

(assert (= (and b!319793 res!174258) b!319791))

(assert (= (or b!319791 b!319794) bm!26039))

(declare-fun m!328299 () Bool)

(assert (=> bm!26039 m!328299))

(assert (=> b!319792 m!328291))

(assert (=> b!319792 m!328291))

(declare-fun m!328301 () Bool)

(assert (=> b!319792 m!328301))

(assert (=> b!319793 m!328291))

(declare-fun m!328303 () Bool)

(assert (=> b!319793 m!328303))

(declare-fun m!328305 () Bool)

(assert (=> b!319793 m!328305))

(assert (=> b!319793 m!328291))

(declare-fun m!328307 () Bool)

(assert (=> b!319793 m!328307))

(assert (=> b!319749 d!69267))

(declare-fun b!319843 () Bool)

(declare-fun e!198571 () SeekEntryResult!2875)

(declare-fun e!198569 () SeekEntryResult!2875)

(assert (=> b!319843 (= e!198571 e!198569)))

(declare-fun lt!155911 () (_ BitVec 64))

(declare-fun lt!155910 () SeekEntryResult!2875)

(assert (=> b!319843 (= lt!155911 (select (arr!7733 a!3305) (index!13678 lt!155910)))))

(declare-fun c!50409 () Bool)

(assert (=> b!319843 (= c!50409 (= lt!155911 k0!2497))))

(declare-fun b!319844 () Bool)

(declare-fun e!198570 () SeekEntryResult!2875)

(assert (=> b!319844 (= e!198570 (MissingZero!2875 (index!13678 lt!155910)))))

(declare-fun b!319845 () Bool)

(assert (=> b!319845 (= e!198569 (Found!2875 (index!13678 lt!155910)))))

(declare-fun b!319846 () Bool)

(declare-fun c!50410 () Bool)

(assert (=> b!319846 (= c!50410 (= lt!155911 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!319846 (= e!198569 e!198570)))

(declare-fun d!69275 () Bool)

(declare-fun lt!155912 () SeekEntryResult!2875)

(get-info :version)

(assert (=> d!69275 (and (or ((_ is Undefined!2875) lt!155912) (not ((_ is Found!2875) lt!155912)) (and (bvsge (index!13677 lt!155912) #b00000000000000000000000000000000) (bvslt (index!13677 lt!155912) (size!8085 a!3305)))) (or ((_ is Undefined!2875) lt!155912) ((_ is Found!2875) lt!155912) (not ((_ is MissingZero!2875) lt!155912)) (and (bvsge (index!13676 lt!155912) #b00000000000000000000000000000000) (bvslt (index!13676 lt!155912) (size!8085 a!3305)))) (or ((_ is Undefined!2875) lt!155912) ((_ is Found!2875) lt!155912) ((_ is MissingZero!2875) lt!155912) (not ((_ is MissingVacant!2875) lt!155912)) (and (bvsge (index!13679 lt!155912) #b00000000000000000000000000000000) (bvslt (index!13679 lt!155912) (size!8085 a!3305)))) (or ((_ is Undefined!2875) lt!155912) (ite ((_ is Found!2875) lt!155912) (= (select (arr!7733 a!3305) (index!13677 lt!155912)) k0!2497) (ite ((_ is MissingZero!2875) lt!155912) (= (select (arr!7733 a!3305) (index!13676 lt!155912)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2875) lt!155912) (= (select (arr!7733 a!3305) (index!13679 lt!155912)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69275 (= lt!155912 e!198571)))

(declare-fun c!50411 () Bool)

(assert (=> d!69275 (= c!50411 (and ((_ is Intermediate!2875) lt!155910) (undefined!3687 lt!155910)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16348 (_ BitVec 32)) SeekEntryResult!2875)

(assert (=> d!69275 (= lt!155910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!69275 (validMask!0 mask!3777)))

(assert (=> d!69275 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!155912)))

(declare-fun b!319847 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16348 (_ BitVec 32)) SeekEntryResult!2875)

(assert (=> b!319847 (= e!198570 (seekKeyOrZeroReturnVacant!0 (x!31912 lt!155910) (index!13678 lt!155910) (index!13678 lt!155910) k0!2497 a!3305 mask!3777))))

(declare-fun b!319848 () Bool)

(assert (=> b!319848 (= e!198571 Undefined!2875)))

(assert (= (and d!69275 c!50411) b!319848))

(assert (= (and d!69275 (not c!50411)) b!319843))

(assert (= (and b!319843 c!50409) b!319845))

(assert (= (and b!319843 (not c!50409)) b!319846))

(assert (= (and b!319846 c!50410) b!319844))

(assert (= (and b!319846 (not c!50410)) b!319847))

(declare-fun m!328335 () Bool)

(assert (=> b!319843 m!328335))

(declare-fun m!328337 () Bool)

(assert (=> d!69275 m!328337))

(assert (=> d!69275 m!328265))

(declare-fun m!328339 () Bool)

(assert (=> d!69275 m!328339))

(assert (=> d!69275 m!328265))

(declare-fun m!328341 () Bool)

(assert (=> d!69275 m!328341))

(declare-fun m!328343 () Bool)

(assert (=> d!69275 m!328343))

(assert (=> d!69275 m!328267))

(declare-fun m!328345 () Bool)

(assert (=> b!319847 m!328345))

(assert (=> b!319750 d!69275))

(declare-fun d!69287 () Bool)

(assert (=> d!69287 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32078 d!69287))

(declare-fun d!69295 () Bool)

(assert (=> d!69295 (= (array_inv!5687 a!3305) (bvsge (size!8085 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32078 d!69295))

(check-sat (not b!319793) (not bm!26039) (not d!69275) (not b!319847) (not b!319792) (not b!319776))
(check-sat)
