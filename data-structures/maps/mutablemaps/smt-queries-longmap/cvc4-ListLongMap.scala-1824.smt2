; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32962 () Bool)

(assert start!32962)

(declare-fun b!328249 () Bool)

(declare-fun res!180877 () Bool)

(declare-fun e!201794 () Bool)

(assert (=> b!328249 (=> (not res!180877) (not e!201794))))

(declare-datatypes ((array!16809 0))(
  ( (array!16810 (arr!7950 (Array (_ BitVec 32) (_ BitVec 64))) (size!8302 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16809)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!328249 (= res!180877 (and (= (size!8302 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8302 a!3305))))))

(declare-fun b!328250 () Bool)

(declare-fun res!180875 () Bool)

(assert (=> b!328250 (=> (not res!180875) (not e!201794))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16809 (_ BitVec 32)) Bool)

(assert (=> b!328250 (= res!180875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!328251 () Bool)

(declare-fun res!180874 () Bool)

(assert (=> b!328251 (=> (not res!180874) (not e!201794))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16809 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328251 (= res!180874 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!328253 () Bool)

(declare-fun res!180879 () Bool)

(declare-fun e!201796 () Bool)

(assert (=> b!328253 (=> (not res!180879) (not e!201796))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!328253 (= res!180879 (and (= (select (arr!7950 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8302 a!3305))))))

(declare-fun b!328254 () Bool)

(declare-fun res!180876 () Bool)

(assert (=> b!328254 (=> (not res!180876) (not e!201794))))

(declare-datatypes ((SeekEntryResult!3092 0))(
  ( (MissingZero!3092 (index!14544 (_ BitVec 32))) (Found!3092 (index!14545 (_ BitVec 32))) (Intermediate!3092 (undefined!3904 Bool) (index!14546 (_ BitVec 32)) (x!32768 (_ BitVec 32))) (Undefined!3092) (MissingVacant!3092 (index!14547 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16809 (_ BitVec 32)) SeekEntryResult!3092)

(assert (=> b!328254 (= res!180876 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3092 i!1250)))))

(declare-fun b!328255 () Bool)

(assert (=> b!328255 (= e!201796 (bvslt (bvsub #b01111111111111111111111111111110 x!1490) #b00000000000000000000000000000000))))

(declare-fun b!328256 () Bool)

(assert (=> b!328256 (= e!201794 e!201796)))

(declare-fun res!180880 () Bool)

(assert (=> b!328256 (=> (not res!180880) (not e!201796))))

(declare-fun lt!157874 () SeekEntryResult!3092)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16809 (_ BitVec 32)) SeekEntryResult!3092)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328256 (= res!180880 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157874))))

(assert (=> b!328256 (= lt!157874 (Intermediate!3092 false resIndex!58 resX!58))))

(declare-fun b!328257 () Bool)

(declare-fun res!180882 () Bool)

(assert (=> b!328257 (=> (not res!180882) (not e!201794))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328257 (= res!180882 (validKeyInArray!0 k!2497))))

(declare-fun b!328252 () Bool)

(declare-fun res!180881 () Bool)

(assert (=> b!328252 (=> (not res!180881) (not e!201796))))

(assert (=> b!328252 (= res!180881 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157874))))

(declare-fun res!180878 () Bool)

(assert (=> start!32962 (=> (not res!180878) (not e!201794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32962 (= res!180878 (validMask!0 mask!3777))))

(assert (=> start!32962 e!201794))

(declare-fun array_inv!5904 (array!16809) Bool)

(assert (=> start!32962 (array_inv!5904 a!3305)))

(assert (=> start!32962 true))

(assert (= (and start!32962 res!180878) b!328249))

(assert (= (and b!328249 res!180877) b!328257))

(assert (= (and b!328257 res!180882) b!328251))

(assert (= (and b!328251 res!180874) b!328254))

(assert (= (and b!328254 res!180876) b!328250))

(assert (= (and b!328250 res!180875) b!328256))

(assert (= (and b!328256 res!180880) b!328253))

(assert (= (and b!328253 res!180879) b!328252))

(assert (= (and b!328252 res!180881) b!328255))

(declare-fun m!334265 () Bool)

(assert (=> b!328253 m!334265))

(declare-fun m!334267 () Bool)

(assert (=> b!328251 m!334267))

(declare-fun m!334269 () Bool)

(assert (=> b!328252 m!334269))

(declare-fun m!334271 () Bool)

(assert (=> b!328257 m!334271))

(declare-fun m!334273 () Bool)

(assert (=> b!328254 m!334273))

(declare-fun m!334275 () Bool)

(assert (=> start!32962 m!334275))

(declare-fun m!334277 () Bool)

(assert (=> start!32962 m!334277))

(declare-fun m!334279 () Bool)

(assert (=> b!328250 m!334279))

(declare-fun m!334281 () Bool)

(assert (=> b!328256 m!334281))

(assert (=> b!328256 m!334281))

(declare-fun m!334283 () Bool)

(assert (=> b!328256 m!334283))

(push 1)

(assert (not b!328251))

(assert (not b!328256))

(assert (not b!328252))

(assert (not start!32962))

(assert (not b!328250))

(assert (not b!328254))

(assert (not b!328257))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69903 () Bool)

(declare-fun res!180887 () Bool)

(declare-fun e!201801 () Bool)

(assert (=> d!69903 (=> res!180887 e!201801)))

(assert (=> d!69903 (= res!180887 (= (select (arr!7950 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69903 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!201801)))

(declare-fun b!328262 () Bool)

(declare-fun e!201802 () Bool)

(assert (=> b!328262 (= e!201801 e!201802)))

(declare-fun res!180888 () Bool)

(assert (=> b!328262 (=> (not res!180888) (not e!201802))))

(assert (=> b!328262 (= res!180888 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8302 a!3305)))))

(declare-fun b!328263 () Bool)

(assert (=> b!328263 (= e!201802 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69903 (not res!180887)) b!328262))

(assert (= (and b!328262 res!180888) b!328263))

(declare-fun m!334285 () Bool)

(assert (=> d!69903 m!334285))

(declare-fun m!334287 () Bool)

(assert (=> b!328263 m!334287))

(assert (=> b!328251 d!69903))

(declare-fun b!328333 () Bool)

(declare-fun e!201844 () SeekEntryResult!3092)

(declare-fun e!201846 () SeekEntryResult!3092)

(assert (=> b!328333 (= e!201844 e!201846)))

(declare-fun c!51348 () Bool)

(declare-fun lt!157900 () (_ BitVec 64))

(assert (=> b!328333 (= c!51348 (or (= lt!157900 k!2497) (= (bvadd lt!157900 lt!157900) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!328334 () Bool)

(assert (=> b!328334 (= e!201844 (Intermediate!3092 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!328335 () Bool)

(declare-fun e!201847 () Bool)

(declare-fun e!201843 () Bool)

(assert (=> b!328335 (= e!201847 e!201843)))

(declare-fun res!180912 () Bool)

(declare-fun lt!157901 () SeekEntryResult!3092)

(assert (=> b!328335 (= res!180912 (and (is-Intermediate!3092 lt!157901) (not (undefined!3904 lt!157901)) (bvslt (x!32768 lt!157901) #b01111111111111111111111111111110) (bvsge (x!32768 lt!157901) #b00000000000000000000000000000000) (bvsge (x!32768 lt!157901) #b00000000000000000000000000000000)))))

(assert (=> b!328335 (=> (not res!180912) (not e!201843))))

(declare-fun b!328336 () Bool)

(assert (=> b!328336 (and (bvsge (index!14546 lt!157901) #b00000000000000000000000000000000) (bvslt (index!14546 lt!157901) (size!8302 a!3305)))))

(declare-fun e!201845 () Bool)

(assert (=> b!328336 (= e!201845 (= (select (arr!7950 a!3305) (index!14546 lt!157901)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!328337 () Bool)

(assert (=> b!328337 (and (bvsge (index!14546 lt!157901) #b00000000000000000000000000000000) (bvslt (index!14546 lt!157901) (size!8302 a!3305)))))

(declare-fun res!180911 () Bool)

(assert (=> b!328337 (= res!180911 (= (select (arr!7950 a!3305) (index!14546 lt!157901)) k!2497))))

(assert (=> b!328337 (=> res!180911 e!201845)))

(assert (=> b!328337 (= e!201843 e!201845)))

(declare-fun d!69905 () Bool)

(assert (=> d!69905 e!201847))

(declare-fun c!51349 () Bool)

(assert (=> d!69905 (= c!51349 (and (is-Intermediate!3092 lt!157901) (undefined!3904 lt!157901)))))

(assert (=> d!69905 (= lt!157901 e!201844)))

(declare-fun c!51350 () Bool)

(assert (=> d!69905 (= c!51350 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!69905 (= lt!157900 (select (arr!7950 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69905 (validMask!0 mask!3777)))

(assert (=> d!69905 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157901)))

(declare-fun b!328338 () Bool)

(assert (=> b!328338 (and (bvsge (index!14546 lt!157901) #b00000000000000000000000000000000) (bvslt (index!14546 lt!157901) (size!8302 a!3305)))))

(declare-fun res!180913 () Bool)

(assert (=> b!328338 (= res!180913 (= (select (arr!7950 a!3305) (index!14546 lt!157901)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!328338 (=> res!180913 e!201845)))

(declare-fun b!328339 () Bool)

(assert (=> b!328339 (= e!201846 (Intermediate!3092 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!328340 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328340 (= e!201846 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!328341 () Bool)

(assert (=> b!328341 (= e!201847 (bvsge (x!32768 lt!157901) #b01111111111111111111111111111110))))

(assert (= (and d!69905 c!51350) b!328334))

(assert (= (and d!69905 (not c!51350)) b!328333))

(assert (= (and b!328333 c!51348) b!328339))

(assert (= (and b!328333 (not c!51348)) b!328340))

(assert (= (and d!69905 c!51349) b!328341))

(assert (= (and d!69905 (not c!51349)) b!328335))

(assert (= (and b!328335 res!180912) b!328337))

(assert (= (and b!328337 (not res!180911)) b!328338))

(assert (= (and b!328338 (not res!180913)) b!328336))

(assert (=> b!328340 m!334281))

(declare-fun m!334311 () Bool)

(assert (=> b!328340 m!334311))

(assert (=> b!328340 m!334311))

(declare-fun m!334313 () Bool)

(assert (=> b!328340 m!334313))

(declare-fun m!334315 () Bool)

(assert (=> b!328337 m!334315))

(assert (=> b!328336 m!334315))

(assert (=> d!69905 m!334281))

(declare-fun m!334317 () Bool)

(assert (=> d!69905 m!334317))

(assert (=> d!69905 m!334275))

(assert (=> b!328338 m!334315))

(assert (=> b!328256 d!69905))

(declare-fun d!69915 () Bool)

(declare-fun lt!157907 () (_ BitVec 32))

(declare-fun lt!157906 () (_ BitVec 32))

(assert (=> d!69915 (= lt!157907 (bvmul (bvxor lt!157906 (bvlshr lt!157906 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69915 (= lt!157906 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69915 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!180914 (let ((h!5430 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32772 (bvmul (bvxor h!5430 (bvlshr h!5430 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32772 (bvlshr x!32772 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!180914 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!180914 #b00000000000000000000000000000000))))))

(assert (=> d!69915 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!157907 (bvlshr lt!157907 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!328256 d!69915))

(declare-fun d!69917 () Bool)

(assert (=> d!69917 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!328257 d!69917))

(declare-fun b!328350 () Bool)

(declare-fun e!201853 () SeekEntryResult!3092)

(declare-fun e!201855 () SeekEntryResult!3092)

(assert (=> b!328350 (= e!201853 e!201855)))

(declare-fun c!51355 () Bool)

(declare-fun lt!157914 () (_ BitVec 64))

(assert (=> b!328350 (= c!51355 (or (= lt!157914 k!2497) (= (bvadd lt!157914 lt!157914) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!328351 () Bool)

(assert (=> b!328351 (= e!201853 (Intermediate!3092 true index!1840 x!1490))))

(declare-fun b!328352 () Bool)

(declare-fun e!201856 () Bool)

(declare-fun e!201852 () Bool)

(assert (=> b!328352 (= e!201856 e!201852)))

(declare-fun res!180916 () Bool)

(declare-fun lt!157915 () SeekEntryResult!3092)

(assert (=> b!328352 (= res!180916 (and (is-Intermediate!3092 lt!157915) (not (undefined!3904 lt!157915)) (bvslt (x!32768 lt!157915) #b01111111111111111111111111111110) (bvsge (x!32768 lt!157915) #b00000000000000000000000000000000) (bvsge (x!32768 lt!157915) x!1490)))))

(assert (=> b!328352 (=> (not res!180916) (not e!201852))))

(declare-fun b!328353 () Bool)

(assert (=> b!328353 (and (bvsge (index!14546 lt!157915) #b00000000000000000000000000000000) (bvslt (index!14546 lt!157915) (size!8302 a!3305)))))

(declare-fun e!201854 () Bool)

(assert (=> b!328353 (= e!201854 (= (select (arr!7950 a!3305) (index!14546 lt!157915)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!328354 () Bool)

(assert (=> b!328354 (and (bvsge (index!14546 lt!157915) #b00000000000000000000000000000000) (bvslt (index!14546 lt!157915) (size!8302 a!3305)))))

(declare-fun res!180915 () Bool)

(assert (=> b!328354 (= res!180915 (= (select (arr!7950 a!3305) (index!14546 lt!157915)) k!2497))))

(assert (=> b!328354 (=> res!180915 e!201854)))

(assert (=> b!328354 (= e!201852 e!201854)))

(declare-fun d!69919 () Bool)

(assert (=> d!69919 e!201856))

(declare-fun c!51356 () Bool)

(assert (=> d!69919 (= c!51356 (and (is-Intermediate!3092 lt!157915) (undefined!3904 lt!157915)))))

(assert (=> d!69919 (= lt!157915 e!201853)))

(declare-fun c!51357 () Bool)

(assert (=> d!69919 (= c!51357 (bvsge x!1490 #b01111111111111111111111111111110))))

(assert (=> d!69919 (= lt!157914 (select (arr!7950 a!3305) index!1840))))

(assert (=> d!69919 (validMask!0 mask!3777)))

(assert (=> d!69919 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157915)))

(declare-fun b!328355 () Bool)

(assert (=> b!328355 (and (bvsge (index!14546 lt!157915) #b00000000000000000000000000000000) (bvslt (index!14546 lt!157915) (size!8302 a!3305)))))

(declare-fun res!180917 () Bool)

(assert (=> b!328355 (= res!180917 (= (select (arr!7950 a!3305) (index!14546 lt!157915)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!328355 (=> res!180917 e!201854)))

(declare-fun b!328356 () Bool)

(assert (=> b!328356 (= e!201855 (Intermediate!3092 false index!1840 x!1490))))

(declare-fun b!328357 () Bool)

(assert (=> b!328357 (= e!201855 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!328360 () Bool)

(assert (=> b!328360 (= e!201856 (bvsge (x!32768 lt!157915) #b01111111111111111111111111111110))))

(assert (= (and d!69919 c!51357) b!328351))

(assert (= (and d!69919 (not c!51357)) b!328350))

(assert (= (and b!328350 c!51355) b!328356))

(assert (= (and b!328350 (not c!51355)) b!328357))

(assert (= (and d!69919 c!51356) b!328360))

(assert (= (and d!69919 (not c!51356)) b!328352))

(assert (= (and b!328352 res!180916) b!328354))

(assert (= (and b!328354 (not res!180915)) b!328355))

(assert (= (and b!328355 (not res!180917)) b!328353))

(declare-fun m!334319 () Bool)

(assert (=> b!328357 m!334319))

(assert (=> b!328357 m!334319))

(declare-fun m!334321 () Bool)

(assert (=> b!328357 m!334321))

(declare-fun m!334323 () Bool)

(assert (=> b!328354 m!334323))

(assert (=> b!328353 m!334323))

(declare-fun m!334325 () Bool)

(assert (=> d!69919 m!334325))

(assert (=> d!69919 m!334275))

(assert (=> b!328355 m!334323))

(assert (=> b!328252 d!69919))

(declare-fun b!328408 () Bool)

(declare-fun e!201884 () SeekEntryResult!3092)

(assert (=> b!328408 (= e!201884 Undefined!3092)))

(declare-fun d!69921 () Bool)

(declare-fun lt!157932 () SeekEntryResult!3092)

(assert (=> d!69921 (and (or (is-Undefined!3092 lt!157932) (not (is-Found!3092 lt!157932)) (and (bvsge (index!14545 lt!157932) #b00000000000000000000000000000000) (bvslt (index!14545 lt!157932) (size!8302 a!3305)))) (or (is-Undefined!3092 lt!157932) (is-Found!3092 lt!157932) (not (is-MissingZero!3092 lt!157932)) (and (bvsge (index!14544 lt!157932) #b00000000000000000000000000000000) (bvslt (index!14544 lt!157932) (size!8302 a!3305)))) (or (is-Undefined!3092 lt!157932) (is-Found!3092 lt!157932) (is-MissingZero!3092 lt!157932) (not (is-MissingVacant!3092 lt!157932)) (and (bvsge (index!14547 lt!157932) #b00000000000000000000000000000000) (bvslt (index!14547 lt!157932) (size!8302 a!3305)))) (or (is-Undefined!3092 lt!157932) (ite (is-Found!3092 lt!157932) (= (select (arr!7950 a!3305) (index!14545 lt!157932)) k!2497) (ite (is-MissingZero!3092 lt!157932) (= (select (arr!7950 a!3305) (index!14544 lt!157932)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3092 lt!157932) (= (select (arr!7950 a!3305) (index!14547 lt!157932)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69921 (= lt!157932 e!201884)))

(declare-fun c!51378 () Bool)

(declare-fun lt!157933 () SeekEntryResult!3092)

(assert (=> d!69921 (= c!51378 (and (is-Intermediate!3092 lt!157933) (undefined!3904 lt!157933)))))

(assert (=> d!69921 (= lt!157933 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69921 (validMask!0 mask!3777)))

(assert (=> d!69921 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!157932)))

(declare-fun b!328409 () Bool)

(declare-fun e!201883 () SeekEntryResult!3092)

(assert (=> b!328409 (= e!201883 (MissingZero!3092 (index!14546 lt!157933)))))

(declare-fun b!328410 () Bool)

(declare-fun c!51380 () Bool)

(declare-fun lt!157931 () (_ BitVec 64))

(assert (=> b!328410 (= c!51380 (= lt!157931 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201885 () SeekEntryResult!3092)

(assert (=> b!328410 (= e!201885 e!201883)))

(declare-fun b!328411 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16809 (_ BitVec 32)) SeekEntryResult!3092)

(assert (=> b!328411 (= e!201883 (seekKeyOrZeroReturnVacant!0 (x!32768 lt!157933) (index!14546 lt!157933) (index!14546 lt!157933) k!2497 a!3305 mask!3777))))

(declare-fun b!328412 () Bool)

(assert (=> b!328412 (= e!201884 e!201885)))

(assert (=> b!328412 (= lt!157931 (select (arr!7950 a!3305) (index!14546 lt!157933)))))

(declare-fun c!51379 () Bool)

(assert (=> b!328412 (= c!51379 (= lt!157931 k!2497))))

(declare-fun b!328413 () Bool)

(assert (=> b!328413 (= e!201885 (Found!3092 (index!14546 lt!157933)))))

(assert (= (and d!69921 c!51378) b!328408))

(assert (= (and d!69921 (not c!51378)) b!328412))

(assert (= (and b!328412 c!51379) b!328413))

(assert (= (and b!328412 (not c!51379)) b!328410))

(assert (= (and b!328410 c!51380) b!328409))

(assert (= (and b!328410 (not c!51380)) b!328411))

(declare-fun m!334345 () Bool)

(assert (=> d!69921 m!334345))

(declare-fun m!334347 () Bool)

(assert (=> d!69921 m!334347))

(assert (=> d!69921 m!334281))

(assert (=> d!69921 m!334275))

(assert (=> d!69921 m!334281))

(assert (=> d!69921 m!334283))

(declare-fun m!334349 () Bool)

(assert (=> d!69921 m!334349))

(declare-fun m!334351 () Bool)

(assert (=> b!328411 m!334351))

(declare-fun m!334353 () Bool)

(assert (=> b!328412 m!334353))

(assert (=> b!328254 d!69921))

(declare-fun d!69931 () Bool)

(assert (=> d!69931 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32962 d!69931))

(declare-fun d!69949 () Bool)

(assert (=> d!69949 (= (array_inv!5904 a!3305) (bvsge (size!8302 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32962 d!69949))

(declare-fun b!328466 () Bool)

(declare-fun e!201924 () Bool)

(declare-fun e!201925 () Bool)

(assert (=> b!328466 (= e!201924 e!201925)))

(declare-fun lt!157965 () (_ BitVec 64))

(assert (=> b!328466 (= lt!157965 (select (arr!7950 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10191 0))(
  ( (Unit!10192) )
))
(declare-fun lt!157966 () Unit!10191)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16809 (_ BitVec 64) (_ BitVec 32)) Unit!10191)

(assert (=> b!328466 (= lt!157966 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157965 #b00000000000000000000000000000000))))

(assert (=> b!328466 (arrayContainsKey!0 a!3305 lt!157965 #b00000000000000000000000000000000)))

(declare-fun lt!157967 () Unit!10191)

(assert (=> b!328466 (= lt!157967 lt!157966)))

(declare-fun res!180954 () Bool)

(assert (=> b!328466 (= res!180954 (= (seekEntryOrOpen!0 (select (arr!7950 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3092 #b00000000000000000000000000000000)))))

(assert (=> b!328466 (=> (not res!180954) (not e!201925))))

(declare-fun d!69951 () Bool)

(declare-fun res!180955 () Bool)

(declare-fun e!201923 () Bool)

(assert (=> d!69951 (=> res!180955 e!201923)))

(assert (=> d!69951 (= res!180955 (bvsge #b00000000000000000000000000000000 (size!8302 a!3305)))))

(assert (=> d!69951 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!201923)))

(declare-fun b!328467 () Bool)

(assert (=> b!328467 (= e!201923 e!201924)))

(declare-fun c!51394 () Bool)

(assert (=> b!328467 (= c!51394 (validKeyInArray!0 (select (arr!7950 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!328468 () Bool)

(declare-fun call!26128 () Bool)

(assert (=> b!328468 (= e!201925 call!26128)))

(declare-fun b!328469 () Bool)

(assert (=> b!328469 (= e!201924 call!26128)))

(declare-fun bm!26125 () Bool)

(assert (=> bm!26125 (= call!26128 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(assert (= (and d!69951 (not res!180955)) b!328467))

