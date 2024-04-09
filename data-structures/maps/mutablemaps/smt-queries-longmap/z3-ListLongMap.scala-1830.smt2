; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33092 () Bool)

(assert start!33092)

(declare-fun b!329109 () Bool)

(declare-fun e!202194 () Bool)

(declare-fun e!202195 () Bool)

(assert (=> b!329109 (= e!202194 e!202195)))

(declare-fun res!181457 () Bool)

(assert (=> b!329109 (=> (not res!181457) (not e!202195))))

(declare-datatypes ((array!16849 0))(
  ( (array!16850 (arr!7967 (Array (_ BitVec 32) (_ BitVec 64))) (size!8319 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16849)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3109 0))(
  ( (MissingZero!3109 (index!14612 (_ BitVec 32))) (Found!3109 (index!14613 (_ BitVec 32))) (Intermediate!3109 (undefined!3921 Bool) (index!14614 (_ BitVec 32)) (x!32845 (_ BitVec 32))) (Undefined!3109) (MissingVacant!3109 (index!14615 (_ BitVec 32))) )
))
(declare-fun lt!158135 () SeekEntryResult!3109)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16849 (_ BitVec 32)) SeekEntryResult!3109)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329109 (= res!181457 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158135))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!329109 (= lt!158135 (Intermediate!3109 false resIndex!58 resX!58))))

(declare-fun b!329110 () Bool)

(declare-fun res!181458 () Bool)

(assert (=> b!329110 (=> (not res!181458) (not e!202194))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16849 (_ BitVec 32)) SeekEntryResult!3109)

(assert (=> b!329110 (= res!181458 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3109 i!1250)))))

(declare-fun b!329111 () Bool)

(declare-fun res!181455 () Bool)

(assert (=> b!329111 (=> (not res!181455) (not e!202194))))

(assert (=> b!329111 (= res!181455 (and (= (size!8319 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8319 a!3305))))))

(declare-fun b!329112 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(get-info :version)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329112 (= e!202195 (not ((_ is Intermediate!3109) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777))))))

(declare-fun b!329113 () Bool)

(declare-fun res!181453 () Bool)

(assert (=> b!329113 (=> (not res!181453) (not e!202194))))

(declare-fun arrayContainsKey!0 (array!16849 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!329113 (= res!181453 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!329114 () Bool)

(declare-fun res!181461 () Bool)

(assert (=> b!329114 (=> (not res!181461) (not e!202194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16849 (_ BitVec 32)) Bool)

(assert (=> b!329114 (= res!181461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!329115 () Bool)

(declare-fun res!181460 () Bool)

(assert (=> b!329115 (=> (not res!181460) (not e!202195))))

(assert (=> b!329115 (= res!181460 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!158135))))

(declare-fun b!329116 () Bool)

(declare-fun res!181456 () Bool)

(assert (=> b!329116 (=> (not res!181456) (not e!202195))))

(assert (=> b!329116 (= res!181456 (and (= (select (arr!7967 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8319 a!3305))))))

(declare-fun res!181459 () Bool)

(assert (=> start!33092 (=> (not res!181459) (not e!202194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33092 (= res!181459 (validMask!0 mask!3777))))

(assert (=> start!33092 e!202194))

(declare-fun array_inv!5921 (array!16849) Bool)

(assert (=> start!33092 (array_inv!5921 a!3305)))

(assert (=> start!33092 true))

(declare-fun b!329117 () Bool)

(declare-fun res!181452 () Bool)

(assert (=> b!329117 (=> (not res!181452) (not e!202194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!329117 (= res!181452 (validKeyInArray!0 k0!2497))))

(declare-fun b!329118 () Bool)

(declare-fun res!181454 () Bool)

(assert (=> b!329118 (=> (not res!181454) (not e!202195))))

(assert (=> b!329118 (= res!181454 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7967 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7967 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7967 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!33092 res!181459) b!329111))

(assert (= (and b!329111 res!181455) b!329117))

(assert (= (and b!329117 res!181452) b!329113))

(assert (= (and b!329113 res!181453) b!329110))

(assert (= (and b!329110 res!181458) b!329114))

(assert (= (and b!329114 res!181461) b!329109))

(assert (= (and b!329109 res!181457) b!329116))

(assert (= (and b!329116 res!181456) b!329115))

(assert (= (and b!329115 res!181460) b!329118))

(assert (= (and b!329118 res!181454) b!329112))

(declare-fun m!334857 () Bool)

(assert (=> b!329116 m!334857))

(declare-fun m!334859 () Bool)

(assert (=> b!329113 m!334859))

(declare-fun m!334861 () Bool)

(assert (=> b!329109 m!334861))

(assert (=> b!329109 m!334861))

(declare-fun m!334863 () Bool)

(assert (=> b!329109 m!334863))

(declare-fun m!334865 () Bool)

(assert (=> start!33092 m!334865))

(declare-fun m!334867 () Bool)

(assert (=> start!33092 m!334867))

(declare-fun m!334869 () Bool)

(assert (=> b!329114 m!334869))

(declare-fun m!334871 () Bool)

(assert (=> b!329112 m!334871))

(assert (=> b!329112 m!334871))

(declare-fun m!334873 () Bool)

(assert (=> b!329112 m!334873))

(declare-fun m!334875 () Bool)

(assert (=> b!329118 m!334875))

(declare-fun m!334877 () Bool)

(assert (=> b!329110 m!334877))

(declare-fun m!334879 () Bool)

(assert (=> b!329117 m!334879))

(declare-fun m!334881 () Bool)

(assert (=> b!329115 m!334881))

(check-sat (not start!33092) (not b!329114) (not b!329113) (not b!329117) (not b!329110) (not b!329109) (not b!329115) (not b!329112))
(check-sat)
(get-model)

(declare-fun d!70021 () Bool)

(declare-fun e!202234 () Bool)

(assert (=> d!70021 e!202234))

(declare-fun c!51485 () Bool)

(declare-fun lt!158150 () SeekEntryResult!3109)

(assert (=> d!70021 (= c!51485 (and ((_ is Intermediate!3109) lt!158150) (undefined!3921 lt!158150)))))

(declare-fun e!202230 () SeekEntryResult!3109)

(assert (=> d!70021 (= lt!158150 e!202230)))

(declare-fun c!51483 () Bool)

(assert (=> d!70021 (= c!51483 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!158149 () (_ BitVec 64))

(assert (=> d!70021 (= lt!158149 (select (arr!7967 a!3305) (toIndex!0 k0!2497 mask!3777)))))

(assert (=> d!70021 (validMask!0 mask!3777)))

(assert (=> d!70021 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158150)))

(declare-fun e!202231 () SeekEntryResult!3109)

(declare-fun b!329194 () Bool)

(assert (=> b!329194 (= e!202231 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!329195 () Bool)

(declare-fun e!202233 () Bool)

(assert (=> b!329195 (= e!202234 e!202233)))

(declare-fun res!181507 () Bool)

(assert (=> b!329195 (= res!181507 (and ((_ is Intermediate!3109) lt!158150) (not (undefined!3921 lt!158150)) (bvslt (x!32845 lt!158150) #b01111111111111111111111111111110) (bvsge (x!32845 lt!158150) #b00000000000000000000000000000000) (bvsge (x!32845 lt!158150) #b00000000000000000000000000000000)))))

(assert (=> b!329195 (=> (not res!181507) (not e!202233))))

(declare-fun b!329196 () Bool)

(assert (=> b!329196 (= e!202230 e!202231)))

(declare-fun c!51484 () Bool)

(assert (=> b!329196 (= c!51484 (or (= lt!158149 k0!2497) (= (bvadd lt!158149 lt!158149) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329197 () Bool)

(assert (=> b!329197 (= e!202234 (bvsge (x!32845 lt!158150) #b01111111111111111111111111111110))))

(declare-fun b!329198 () Bool)

(assert (=> b!329198 (and (bvsge (index!14614 lt!158150) #b00000000000000000000000000000000) (bvslt (index!14614 lt!158150) (size!8319 a!3305)))))

(declare-fun res!181509 () Bool)

(assert (=> b!329198 (= res!181509 (= (select (arr!7967 a!3305) (index!14614 lt!158150)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!202232 () Bool)

(assert (=> b!329198 (=> res!181509 e!202232)))

(declare-fun b!329199 () Bool)

(assert (=> b!329199 (and (bvsge (index!14614 lt!158150) #b00000000000000000000000000000000) (bvslt (index!14614 lt!158150) (size!8319 a!3305)))))

(assert (=> b!329199 (= e!202232 (= (select (arr!7967 a!3305) (index!14614 lt!158150)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329200 () Bool)

(assert (=> b!329200 (= e!202231 (Intermediate!3109 false (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!329201 () Bool)

(assert (=> b!329201 (and (bvsge (index!14614 lt!158150) #b00000000000000000000000000000000) (bvslt (index!14614 lt!158150) (size!8319 a!3305)))))

(declare-fun res!181508 () Bool)

(assert (=> b!329201 (= res!181508 (= (select (arr!7967 a!3305) (index!14614 lt!158150)) k0!2497))))

(assert (=> b!329201 (=> res!181508 e!202232)))

(assert (=> b!329201 (= e!202233 e!202232)))

(declare-fun b!329202 () Bool)

(assert (=> b!329202 (= e!202230 (Intermediate!3109 true (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(assert (= (and d!70021 c!51483) b!329202))

(assert (= (and d!70021 (not c!51483)) b!329196))

(assert (= (and b!329196 c!51484) b!329200))

(assert (= (and b!329196 (not c!51484)) b!329194))

(assert (= (and d!70021 c!51485) b!329197))

(assert (= (and d!70021 (not c!51485)) b!329195))

(assert (= (and b!329195 res!181507) b!329201))

(assert (= (and b!329201 (not res!181508)) b!329198))

(assert (= (and b!329198 (not res!181509)) b!329199))

(declare-fun m!334917 () Bool)

(assert (=> b!329198 m!334917))

(assert (=> b!329199 m!334917))

(assert (=> b!329201 m!334917))

(assert (=> d!70021 m!334861))

(declare-fun m!334919 () Bool)

(assert (=> d!70021 m!334919))

(assert (=> d!70021 m!334865))

(assert (=> b!329194 m!334861))

(declare-fun m!334921 () Bool)

(assert (=> b!329194 m!334921))

(assert (=> b!329194 m!334921))

(declare-fun m!334923 () Bool)

(assert (=> b!329194 m!334923))

(assert (=> b!329109 d!70021))

(declare-fun d!70031 () Bool)

(declare-fun lt!158164 () (_ BitVec 32))

(declare-fun lt!158163 () (_ BitVec 32))

(assert (=> d!70031 (= lt!158164 (bvmul (bvxor lt!158163 (bvlshr lt!158163 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!70031 (= lt!158163 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!70031 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!181511 (let ((h!5436 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32850 (bvmul (bvxor h!5436 (bvlshr h!5436 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32850 (bvlshr x!32850 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!181511 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!181511 #b00000000000000000000000000000000))))))

(assert (=> d!70031 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!158164 (bvlshr lt!158164 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!329109 d!70031))

(declare-fun b!329247 () Bool)

(declare-fun e!202261 () Bool)

(declare-fun call!26141 () Bool)

(assert (=> b!329247 (= e!202261 call!26141)))

(declare-fun b!329248 () Bool)

(declare-fun e!202263 () Bool)

(assert (=> b!329248 (= e!202263 call!26141)))

(declare-fun bm!26138 () Bool)

(assert (=> bm!26138 (= call!26141 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!329249 () Bool)

(assert (=> b!329249 (= e!202263 e!202261)))

(declare-fun lt!158177 () (_ BitVec 64))

(assert (=> b!329249 (= lt!158177 (select (arr!7967 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10199 0))(
  ( (Unit!10200) )
))
(declare-fun lt!158178 () Unit!10199)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16849 (_ BitVec 64) (_ BitVec 32)) Unit!10199)

(assert (=> b!329249 (= lt!158178 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!158177 #b00000000000000000000000000000000))))

(assert (=> b!329249 (arrayContainsKey!0 a!3305 lt!158177 #b00000000000000000000000000000000)))

(declare-fun lt!158179 () Unit!10199)

(assert (=> b!329249 (= lt!158179 lt!158178)))

(declare-fun res!181528 () Bool)

(assert (=> b!329249 (= res!181528 (= (seekEntryOrOpen!0 (select (arr!7967 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3109 #b00000000000000000000000000000000)))))

(assert (=> b!329249 (=> (not res!181528) (not e!202261))))

(declare-fun d!70035 () Bool)

(declare-fun res!181529 () Bool)

(declare-fun e!202262 () Bool)

(assert (=> d!70035 (=> res!181529 e!202262)))

(assert (=> d!70035 (= res!181529 (bvsge #b00000000000000000000000000000000 (size!8319 a!3305)))))

(assert (=> d!70035 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!202262)))

(declare-fun b!329250 () Bool)

(assert (=> b!329250 (= e!202262 e!202263)))

(declare-fun c!51500 () Bool)

(assert (=> b!329250 (= c!51500 (validKeyInArray!0 (select (arr!7967 a!3305) #b00000000000000000000000000000000)))))

(assert (= (and d!70035 (not res!181529)) b!329250))

(assert (= (and b!329250 c!51500) b!329249))

(assert (= (and b!329250 (not c!51500)) b!329248))

(assert (= (and b!329249 res!181528) b!329247))

(assert (= (or b!329247 b!329248) bm!26138))

(declare-fun m!334931 () Bool)

(assert (=> bm!26138 m!334931))

(declare-fun m!334933 () Bool)

(assert (=> b!329249 m!334933))

(declare-fun m!334935 () Bool)

(assert (=> b!329249 m!334935))

(declare-fun m!334937 () Bool)

(assert (=> b!329249 m!334937))

(assert (=> b!329249 m!334933))

(declare-fun m!334941 () Bool)

(assert (=> b!329249 m!334941))

(assert (=> b!329250 m!334933))

(assert (=> b!329250 m!334933))

(declare-fun m!334943 () Bool)

(assert (=> b!329250 m!334943))

(assert (=> b!329114 d!70035))

(declare-fun d!70041 () Bool)

(declare-fun e!202268 () Bool)

(assert (=> d!70041 e!202268))

(declare-fun c!51503 () Bool)

(declare-fun lt!158181 () SeekEntryResult!3109)

(assert (=> d!70041 (= c!51503 (and ((_ is Intermediate!3109) lt!158181) (undefined!3921 lt!158181)))))

(declare-fun e!202264 () SeekEntryResult!3109)

(assert (=> d!70041 (= lt!158181 e!202264)))

(declare-fun c!51501 () Bool)

(assert (=> d!70041 (= c!51501 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!158180 () (_ BitVec 64))

(assert (=> d!70041 (= lt!158180 (select (arr!7967 a!3305) index!1840))))

(assert (=> d!70041 (validMask!0 mask!3777)))

(assert (=> d!70041 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!158181)))

(declare-fun b!329251 () Bool)

(declare-fun e!202265 () SeekEntryResult!3109)

(assert (=> b!329251 (= e!202265 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!329252 () Bool)

(declare-fun e!202267 () Bool)

(assert (=> b!329252 (= e!202268 e!202267)))

(declare-fun res!181530 () Bool)

(assert (=> b!329252 (= res!181530 (and ((_ is Intermediate!3109) lt!158181) (not (undefined!3921 lt!158181)) (bvslt (x!32845 lt!158181) #b01111111111111111111111111111110) (bvsge (x!32845 lt!158181) #b00000000000000000000000000000000) (bvsge (x!32845 lt!158181) x!1490)))))

(assert (=> b!329252 (=> (not res!181530) (not e!202267))))

(declare-fun b!329253 () Bool)

(assert (=> b!329253 (= e!202264 e!202265)))

(declare-fun c!51502 () Bool)

(assert (=> b!329253 (= c!51502 (or (= lt!158180 k0!2497) (= (bvadd lt!158180 lt!158180) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329254 () Bool)

(assert (=> b!329254 (= e!202268 (bvsge (x!32845 lt!158181) #b01111111111111111111111111111110))))

(declare-fun b!329255 () Bool)

(assert (=> b!329255 (and (bvsge (index!14614 lt!158181) #b00000000000000000000000000000000) (bvslt (index!14614 lt!158181) (size!8319 a!3305)))))

(declare-fun res!181532 () Bool)

(assert (=> b!329255 (= res!181532 (= (select (arr!7967 a!3305) (index!14614 lt!158181)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!202266 () Bool)

(assert (=> b!329255 (=> res!181532 e!202266)))

(declare-fun b!329256 () Bool)

(assert (=> b!329256 (and (bvsge (index!14614 lt!158181) #b00000000000000000000000000000000) (bvslt (index!14614 lt!158181) (size!8319 a!3305)))))

(assert (=> b!329256 (= e!202266 (= (select (arr!7967 a!3305) (index!14614 lt!158181)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329257 () Bool)

(assert (=> b!329257 (= e!202265 (Intermediate!3109 false index!1840 x!1490))))

(declare-fun b!329258 () Bool)

(assert (=> b!329258 (and (bvsge (index!14614 lt!158181) #b00000000000000000000000000000000) (bvslt (index!14614 lt!158181) (size!8319 a!3305)))))

(declare-fun res!181531 () Bool)

(assert (=> b!329258 (= res!181531 (= (select (arr!7967 a!3305) (index!14614 lt!158181)) k0!2497))))

(assert (=> b!329258 (=> res!181531 e!202266)))

(assert (=> b!329258 (= e!202267 e!202266)))

(declare-fun b!329259 () Bool)

(assert (=> b!329259 (= e!202264 (Intermediate!3109 true index!1840 x!1490))))

(assert (= (and d!70041 c!51501) b!329259))

(assert (= (and d!70041 (not c!51501)) b!329253))

(assert (= (and b!329253 c!51502) b!329257))

(assert (= (and b!329253 (not c!51502)) b!329251))

(assert (= (and d!70041 c!51503) b!329254))

(assert (= (and d!70041 (not c!51503)) b!329252))

(assert (= (and b!329252 res!181530) b!329258))

(assert (= (and b!329258 (not res!181531)) b!329255))

(assert (= (and b!329255 (not res!181532)) b!329256))

(declare-fun m!334945 () Bool)

(assert (=> b!329255 m!334945))

(assert (=> b!329256 m!334945))

(assert (=> b!329258 m!334945))

(assert (=> d!70041 m!334875))

(assert (=> d!70041 m!334865))

(assert (=> b!329251 m!334871))

(assert (=> b!329251 m!334871))

(declare-fun m!334953 () Bool)

(assert (=> b!329251 m!334953))

(assert (=> b!329115 d!70041))

(declare-fun d!70043 () Bool)

(declare-fun res!181541 () Bool)

(declare-fun e!202278 () Bool)

(assert (=> d!70043 (=> res!181541 e!202278)))

(assert (=> d!70043 (= res!181541 (= (select (arr!7967 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!70043 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!202278)))

(declare-fun b!329273 () Bool)

(declare-fun e!202279 () Bool)

(assert (=> b!329273 (= e!202278 e!202279)))

(declare-fun res!181542 () Bool)

(assert (=> b!329273 (=> (not res!181542) (not e!202279))))

(assert (=> b!329273 (= res!181542 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8319 a!3305)))))

(declare-fun b!329274 () Bool)

(assert (=> b!329274 (= e!202279 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70043 (not res!181541)) b!329273))

(assert (= (and b!329273 res!181542) b!329274))

(assert (=> d!70043 m!334933))

(declare-fun m!334957 () Bool)

(assert (=> b!329274 m!334957))

(assert (=> b!329113 d!70043))

(declare-fun d!70047 () Bool)

(assert (=> d!70047 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!329117 d!70047))

(declare-fun d!70049 () Bool)

(declare-fun e!202284 () Bool)

(assert (=> d!70049 e!202284))

(declare-fun c!51509 () Bool)

(declare-fun lt!158189 () SeekEntryResult!3109)

(assert (=> d!70049 (= c!51509 (and ((_ is Intermediate!3109) lt!158189) (undefined!3921 lt!158189)))))

(declare-fun e!202280 () SeekEntryResult!3109)

(assert (=> d!70049 (= lt!158189 e!202280)))

(declare-fun c!51507 () Bool)

(assert (=> d!70049 (= c!51507 (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110))))

(declare-fun lt!158188 () (_ BitVec 64))

(assert (=> d!70049 (= lt!158188 (select (arr!7967 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)))))

(assert (=> d!70049 (validMask!0 mask!3777)))

(assert (=> d!70049 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777) lt!158189)))

(declare-fun e!202281 () SeekEntryResult!3109)

(declare-fun b!329275 () Bool)

(assert (=> b!329275 (= e!202281 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490) mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!329276 () Bool)

(declare-fun e!202283 () Bool)

(assert (=> b!329276 (= e!202284 e!202283)))

(declare-fun res!181543 () Bool)

(assert (=> b!329276 (= res!181543 (and ((_ is Intermediate!3109) lt!158189) (not (undefined!3921 lt!158189)) (bvslt (x!32845 lt!158189) #b01111111111111111111111111111110) (bvsge (x!32845 lt!158189) #b00000000000000000000000000000000) (bvsge (x!32845 lt!158189) (bvadd #b00000000000000000000000000000001 x!1490))))))

(assert (=> b!329276 (=> (not res!181543) (not e!202283))))

(declare-fun b!329277 () Bool)

(assert (=> b!329277 (= e!202280 e!202281)))

(declare-fun c!51508 () Bool)

(assert (=> b!329277 (= c!51508 (or (= lt!158188 k0!2497) (= (bvadd lt!158188 lt!158188) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329278 () Bool)

(assert (=> b!329278 (= e!202284 (bvsge (x!32845 lt!158189) #b01111111111111111111111111111110))))

(declare-fun b!329279 () Bool)

(assert (=> b!329279 (and (bvsge (index!14614 lt!158189) #b00000000000000000000000000000000) (bvslt (index!14614 lt!158189) (size!8319 a!3305)))))

(declare-fun res!181545 () Bool)

(assert (=> b!329279 (= res!181545 (= (select (arr!7967 a!3305) (index!14614 lt!158189)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!202282 () Bool)

(assert (=> b!329279 (=> res!181545 e!202282)))

(declare-fun b!329280 () Bool)

(assert (=> b!329280 (and (bvsge (index!14614 lt!158189) #b00000000000000000000000000000000) (bvslt (index!14614 lt!158189) (size!8319 a!3305)))))

(assert (=> b!329280 (= e!202282 (= (select (arr!7967 a!3305) (index!14614 lt!158189)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329281 () Bool)

(assert (=> b!329281 (= e!202281 (Intermediate!3109 false (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!329282 () Bool)

(assert (=> b!329282 (and (bvsge (index!14614 lt!158189) #b00000000000000000000000000000000) (bvslt (index!14614 lt!158189) (size!8319 a!3305)))))

(declare-fun res!181544 () Bool)

(assert (=> b!329282 (= res!181544 (= (select (arr!7967 a!3305) (index!14614 lt!158189)) k0!2497))))

(assert (=> b!329282 (=> res!181544 e!202282)))

(assert (=> b!329282 (= e!202283 e!202282)))

(declare-fun b!329283 () Bool)

(assert (=> b!329283 (= e!202280 (Intermediate!3109 true (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(assert (= (and d!70049 c!51507) b!329283))

(assert (= (and d!70049 (not c!51507)) b!329277))

(assert (= (and b!329277 c!51508) b!329281))

(assert (= (and b!329277 (not c!51508)) b!329275))

(assert (= (and d!70049 c!51509) b!329278))

(assert (= (and d!70049 (not c!51509)) b!329276))

(assert (= (and b!329276 res!181543) b!329282))

(assert (= (and b!329282 (not res!181544)) b!329279))

(assert (= (and b!329279 (not res!181545)) b!329280))

(declare-fun m!334959 () Bool)

(assert (=> b!329279 m!334959))

(assert (=> b!329280 m!334959))

(assert (=> b!329282 m!334959))

(assert (=> d!70049 m!334871))

(declare-fun m!334961 () Bool)

(assert (=> d!70049 m!334961))

(assert (=> d!70049 m!334865))

(assert (=> b!329275 m!334871))

(declare-fun m!334963 () Bool)

(assert (=> b!329275 m!334963))

(assert (=> b!329275 m!334963))

(declare-fun m!334965 () Bool)

(assert (=> b!329275 m!334965))

(assert (=> b!329112 d!70049))

(declare-fun d!70053 () Bool)

(declare-fun lt!158200 () (_ BitVec 32))

(assert (=> d!70053 (and (bvsge lt!158200 #b00000000000000000000000000000000) (bvslt lt!158200 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70053 (= lt!158200 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!70053 (validMask!0 mask!3777)))

(assert (=> d!70053 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!158200)))

(declare-fun bs!11404 () Bool)

(assert (= bs!11404 d!70053))

(declare-fun m!334967 () Bool)

(assert (=> bs!11404 m!334967))

(assert (=> bs!11404 m!334865))

(assert (=> b!329112 d!70053))

(declare-fun d!70055 () Bool)

(assert (=> d!70055 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!33092 d!70055))

(declare-fun d!70063 () Bool)

(assert (=> d!70063 (= (array_inv!5921 a!3305) (bvsge (size!8319 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!33092 d!70063))

(declare-fun b!329380 () Bool)

(declare-fun c!51543 () Bool)

(declare-fun lt!158246 () (_ BitVec 64))

(assert (=> b!329380 (= c!51543 (= lt!158246 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!202348 () SeekEntryResult!3109)

(declare-fun e!202347 () SeekEntryResult!3109)

(assert (=> b!329380 (= e!202348 e!202347)))

(declare-fun b!329381 () Bool)

(declare-fun lt!158244 () SeekEntryResult!3109)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16849 (_ BitVec 32)) SeekEntryResult!3109)

(assert (=> b!329381 (= e!202347 (seekKeyOrZeroReturnVacant!0 (x!32845 lt!158244) (index!14614 lt!158244) (index!14614 lt!158244) k0!2497 a!3305 mask!3777))))

(declare-fun b!329382 () Bool)

(assert (=> b!329382 (= e!202348 (Found!3109 (index!14614 lt!158244)))))

(declare-fun b!329383 () Bool)

(assert (=> b!329383 (= e!202347 (MissingZero!3109 (index!14614 lt!158244)))))

(declare-fun b!329384 () Bool)

(declare-fun e!202346 () SeekEntryResult!3109)

(assert (=> b!329384 (= e!202346 e!202348)))

(assert (=> b!329384 (= lt!158246 (select (arr!7967 a!3305) (index!14614 lt!158244)))))

(declare-fun c!51545 () Bool)

(assert (=> b!329384 (= c!51545 (= lt!158246 k0!2497))))

(declare-fun d!70065 () Bool)

(declare-fun lt!158245 () SeekEntryResult!3109)

(assert (=> d!70065 (and (or ((_ is Undefined!3109) lt!158245) (not ((_ is Found!3109) lt!158245)) (and (bvsge (index!14613 lt!158245) #b00000000000000000000000000000000) (bvslt (index!14613 lt!158245) (size!8319 a!3305)))) (or ((_ is Undefined!3109) lt!158245) ((_ is Found!3109) lt!158245) (not ((_ is MissingZero!3109) lt!158245)) (and (bvsge (index!14612 lt!158245) #b00000000000000000000000000000000) (bvslt (index!14612 lt!158245) (size!8319 a!3305)))) (or ((_ is Undefined!3109) lt!158245) ((_ is Found!3109) lt!158245) ((_ is MissingZero!3109) lt!158245) (not ((_ is MissingVacant!3109) lt!158245)) (and (bvsge (index!14615 lt!158245) #b00000000000000000000000000000000) (bvslt (index!14615 lt!158245) (size!8319 a!3305)))) (or ((_ is Undefined!3109) lt!158245) (ite ((_ is Found!3109) lt!158245) (= (select (arr!7967 a!3305) (index!14613 lt!158245)) k0!2497) (ite ((_ is MissingZero!3109) lt!158245) (= (select (arr!7967 a!3305) (index!14612 lt!158245)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3109) lt!158245) (= (select (arr!7967 a!3305) (index!14615 lt!158245)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70065 (= lt!158245 e!202346)))

(declare-fun c!51544 () Bool)

(assert (=> d!70065 (= c!51544 (and ((_ is Intermediate!3109) lt!158244) (undefined!3921 lt!158244)))))

(assert (=> d!70065 (= lt!158244 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!70065 (validMask!0 mask!3777)))

(assert (=> d!70065 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!158245)))

(declare-fun b!329385 () Bool)

(assert (=> b!329385 (= e!202346 Undefined!3109)))

(assert (= (and d!70065 c!51544) b!329385))

(assert (= (and d!70065 (not c!51544)) b!329384))

(assert (= (and b!329384 c!51545) b!329382))

(assert (= (and b!329384 (not c!51545)) b!329380))

(assert (= (and b!329380 c!51543) b!329383))

(assert (= (and b!329380 (not c!51543)) b!329381))

(declare-fun m!335027 () Bool)

(assert (=> b!329381 m!335027))

(declare-fun m!335029 () Bool)

(assert (=> b!329384 m!335029))

(declare-fun m!335031 () Bool)

(assert (=> d!70065 m!335031))

(declare-fun m!335033 () Bool)

(assert (=> d!70065 m!335033))

(assert (=> d!70065 m!334861))

(assert (=> d!70065 m!334863))

(assert (=> d!70065 m!334865))

(assert (=> d!70065 m!334861))

(declare-fun m!335035 () Bool)

(assert (=> d!70065 m!335035))

(assert (=> b!329110 d!70065))

(check-sat (not b!329274) (not d!70041) (not b!329275) (not bm!26138) (not d!70049) (not d!70065) (not b!329250) (not b!329249) (not b!329194) (not b!329381) (not d!70053) (not b!329251) (not d!70021))
