; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33090 () Bool)

(assert start!33090)

(declare-fun b!329079 () Bool)

(declare-fun res!181427 () Bool)

(declare-fun e!202184 () Bool)

(assert (=> b!329079 (=> (not res!181427) (not e!202184))))

(declare-datatypes ((array!16847 0))(
  ( (array!16848 (arr!7966 (Array (_ BitVec 32) (_ BitVec 64))) (size!8318 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16847)

(declare-datatypes ((SeekEntryResult!3108 0))(
  ( (MissingZero!3108 (index!14608 (_ BitVec 32))) (Found!3108 (index!14609 (_ BitVec 32))) (Intermediate!3108 (undefined!3920 Bool) (index!14610 (_ BitVec 32)) (x!32844 (_ BitVec 32))) (Undefined!3108) (MissingVacant!3108 (index!14611 (_ BitVec 32))) )
))
(declare-fun lt!158132 () SeekEntryResult!3108)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16847 (_ BitVec 32)) SeekEntryResult!3108)

(assert (=> b!329079 (= res!181427 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158132))))

(declare-fun b!329080 () Bool)

(declare-fun res!181429 () Bool)

(declare-fun e!202186 () Bool)

(assert (=> b!329080 (=> (not res!181429) (not e!202186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!329080 (= res!181429 (validKeyInArray!0 k!2497))))

(declare-fun b!329081 () Bool)

(declare-fun res!181425 () Bool)

(assert (=> b!329081 (=> (not res!181425) (not e!202186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16847 (_ BitVec 32)) Bool)

(assert (=> b!329081 (= res!181425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!329082 () Bool)

(declare-fun res!181423 () Bool)

(assert (=> b!329082 (=> (not res!181423) (not e!202184))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!329082 (= res!181423 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7966 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7966 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7966 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!181426 () Bool)

(assert (=> start!33090 (=> (not res!181426) (not e!202186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33090 (= res!181426 (validMask!0 mask!3777))))

(assert (=> start!33090 e!202186))

(declare-fun array_inv!5920 (array!16847) Bool)

(assert (=> start!33090 (array_inv!5920 a!3305)))

(assert (=> start!33090 true))

(declare-fun b!329083 () Bool)

(declare-fun res!181431 () Bool)

(assert (=> b!329083 (=> (not res!181431) (not e!202186))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16847 (_ BitVec 32)) SeekEntryResult!3108)

(assert (=> b!329083 (= res!181431 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3108 i!1250)))))

(declare-fun b!329084 () Bool)

(assert (=> b!329084 (= e!202186 e!202184)))

(declare-fun res!181424 () Bool)

(assert (=> b!329084 (=> (not res!181424) (not e!202184))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329084 (= res!181424 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158132))))

(assert (=> b!329084 (= lt!158132 (Intermediate!3108 false resIndex!58 resX!58))))

(declare-fun b!329085 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329085 (= e!202184 (not (is-Intermediate!3108 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))))

(declare-fun b!329086 () Bool)

(declare-fun res!181422 () Bool)

(assert (=> b!329086 (=> (not res!181422) (not e!202186))))

(declare-fun arrayContainsKey!0 (array!16847 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!329086 (= res!181422 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!329087 () Bool)

(declare-fun res!181430 () Bool)

(assert (=> b!329087 (=> (not res!181430) (not e!202186))))

(assert (=> b!329087 (= res!181430 (and (= (size!8318 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8318 a!3305))))))

(declare-fun b!329088 () Bool)

(declare-fun res!181428 () Bool)

(assert (=> b!329088 (=> (not res!181428) (not e!202184))))

(assert (=> b!329088 (= res!181428 (and (= (select (arr!7966 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8318 a!3305))))))

(assert (= (and start!33090 res!181426) b!329087))

(assert (= (and b!329087 res!181430) b!329080))

(assert (= (and b!329080 res!181429) b!329086))

(assert (= (and b!329086 res!181422) b!329083))

(assert (= (and b!329083 res!181431) b!329081))

(assert (= (and b!329081 res!181425) b!329084))

(assert (= (and b!329084 res!181424) b!329088))

(assert (= (and b!329088 res!181428) b!329079))

(assert (= (and b!329079 res!181427) b!329082))

(assert (= (and b!329082 res!181423) b!329085))

(declare-fun m!334831 () Bool)

(assert (=> start!33090 m!334831))

(declare-fun m!334833 () Bool)

(assert (=> start!33090 m!334833))

(declare-fun m!334835 () Bool)

(assert (=> b!329080 m!334835))

(declare-fun m!334837 () Bool)

(assert (=> b!329086 m!334837))

(declare-fun m!334839 () Bool)

(assert (=> b!329088 m!334839))

(declare-fun m!334841 () Bool)

(assert (=> b!329079 m!334841))

(declare-fun m!334843 () Bool)

(assert (=> b!329081 m!334843))

(declare-fun m!334845 () Bool)

(assert (=> b!329082 m!334845))

(declare-fun m!334847 () Bool)

(assert (=> b!329085 m!334847))

(assert (=> b!329085 m!334847))

(declare-fun m!334849 () Bool)

(assert (=> b!329085 m!334849))

(declare-fun m!334851 () Bool)

(assert (=> b!329083 m!334851))

(declare-fun m!334853 () Bool)

(assert (=> b!329084 m!334853))

(assert (=> b!329084 m!334853))

(declare-fun m!334855 () Bool)

(assert (=> b!329084 m!334855))

(push 1)

(assert (not b!329083))

(assert (not b!329085))

(assert (not b!329080))

(assert (not b!329081))

(assert (not start!33090))

(assert (not b!329086))

(assert (not b!329079))

(assert (not b!329084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!329185 () Bool)

(declare-fun e!202225 () SeekEntryResult!3108)

(assert (=> b!329185 (= e!202225 (Intermediate!3108 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!329186 () Bool)

(declare-fun lt!158148 () SeekEntryResult!3108)

(assert (=> b!329186 (and (bvsge (index!14610 lt!158148) #b00000000000000000000000000000000) (bvslt (index!14610 lt!158148) (size!8318 a!3305)))))

(declare-fun res!181505 () Bool)

(assert (=> b!329186 (= res!181505 (= (select (arr!7966 a!3305) (index!14610 lt!158148)) k!2497))))

(declare-fun e!202228 () Bool)

(assert (=> b!329186 (=> res!181505 e!202228)))

(declare-fun e!202226 () Bool)

(assert (=> b!329186 (= e!202226 e!202228)))

(declare-fun d!70019 () Bool)

(declare-fun e!202227 () Bool)

(assert (=> d!70019 e!202227))

(declare-fun c!51481 () Bool)

(assert (=> d!70019 (= c!51481 (and (is-Intermediate!3108 lt!158148) (undefined!3920 lt!158148)))))

(declare-fun e!202229 () SeekEntryResult!3108)

(assert (=> d!70019 (= lt!158148 e!202229)))

(declare-fun c!51482 () Bool)

(assert (=> d!70019 (= c!51482 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!158147 () (_ BitVec 64))

(assert (=> d!70019 (= lt!158147 (select (arr!7966 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!70019 (validMask!0 mask!3777)))

(assert (=> d!70019 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158148)))

(declare-fun b!329187 () Bool)

(assert (=> b!329187 (and (bvsge (index!14610 lt!158148) #b00000000000000000000000000000000) (bvslt (index!14610 lt!158148) (size!8318 a!3305)))))

(assert (=> b!329187 (= e!202228 (= (select (arr!7966 a!3305) (index!14610 lt!158148)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329188 () Bool)

(assert (=> b!329188 (= e!202227 e!202226)))

(declare-fun res!181504 () Bool)

(assert (=> b!329188 (= res!181504 (and (is-Intermediate!3108 lt!158148) (not (undefined!3920 lt!158148)) (bvslt (x!32844 lt!158148) #b01111111111111111111111111111110) (bvsge (x!32844 lt!158148) #b00000000000000000000000000000000) (bvsge (x!32844 lt!158148) #b00000000000000000000000000000000)))))

(assert (=> b!329188 (=> (not res!181504) (not e!202226))))

(declare-fun b!329189 () Bool)

(assert (=> b!329189 (= e!202229 (Intermediate!3108 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!329190 () Bool)

(assert (=> b!329190 (and (bvsge (index!14610 lt!158148) #b00000000000000000000000000000000) (bvslt (index!14610 lt!158148) (size!8318 a!3305)))))

(declare-fun res!181506 () Bool)

(assert (=> b!329190 (= res!181506 (= (select (arr!7966 a!3305) (index!14610 lt!158148)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329190 (=> res!181506 e!202228)))

(declare-fun b!329191 () Bool)

(assert (=> b!329191 (= e!202229 e!202225)))

(declare-fun c!51480 () Bool)

(assert (=> b!329191 (= c!51480 (or (= lt!158147 k!2497) (= (bvadd lt!158147 lt!158147) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329192 () Bool)

(assert (=> b!329192 (= e!202225 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!329193 () Bool)

(assert (=> b!329193 (= e!202227 (bvsge (x!32844 lt!158148) #b01111111111111111111111111111110))))

(assert (= (and d!70019 c!51482) b!329189))

(assert (= (and d!70019 (not c!51482)) b!329191))

(assert (= (and b!329191 c!51480) b!329185))

(assert (= (and b!329191 (not c!51480)) b!329192))

(assert (= (and d!70019 c!51481) b!329193))

(assert (= (and d!70019 (not c!51481)) b!329188))

(assert (= (and b!329188 res!181504) b!329186))

(assert (= (and b!329186 (not res!181505)) b!329190))

(assert (= (and b!329190 (not res!181506)) b!329187))

(assert (=> d!70019 m!334853))

(declare-fun m!334909 () Bool)

(assert (=> d!70019 m!334909))

(assert (=> d!70019 m!334831))

(assert (=> b!329192 m!334853))

(declare-fun m!334911 () Bool)

(assert (=> b!329192 m!334911))

(assert (=> b!329192 m!334911))

(declare-fun m!334913 () Bool)

(assert (=> b!329192 m!334913))

(declare-fun m!334915 () Bool)

(assert (=> b!329186 m!334915))

(assert (=> b!329187 m!334915))

(assert (=> b!329190 m!334915))

(assert (=> b!329084 d!70019))

(declare-fun d!70029 () Bool)

(declare-fun lt!158158 () (_ BitVec 32))

(declare-fun lt!158157 () (_ BitVec 32))

(assert (=> d!70029 (= lt!158158 (bvmul (bvxor lt!158157 (bvlshr lt!158157 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!70029 (= lt!158157 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!70029 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!181510 (let ((h!5435 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32849 (bvmul (bvxor h!5435 (bvlshr h!5435 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32849 (bvlshr x!32849 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!181510 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!181510 #b00000000000000000000000000000000))))))

(assert (=> d!70029 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!158158 (bvlshr lt!158158 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!329084 d!70029))

(declare-fun b!329203 () Bool)

(declare-fun e!202235 () SeekEntryResult!3108)

(assert (=> b!329203 (= e!202235 (Intermediate!3108 false index!1840 x!1490))))

(declare-fun b!329204 () Bool)

(declare-fun lt!158162 () SeekEntryResult!3108)

(assert (=> b!329204 (and (bvsge (index!14610 lt!158162) #b00000000000000000000000000000000) (bvslt (index!14610 lt!158162) (size!8318 a!3305)))))

(declare-fun res!181513 () Bool)

(assert (=> b!329204 (= res!181513 (= (select (arr!7966 a!3305) (index!14610 lt!158162)) k!2497))))

(declare-fun e!202238 () Bool)

(assert (=> b!329204 (=> res!181513 e!202238)))

(declare-fun e!202236 () Bool)

(assert (=> b!329204 (= e!202236 e!202238)))

(declare-fun d!70033 () Bool)

(declare-fun e!202237 () Bool)

(assert (=> d!70033 e!202237))

(declare-fun c!51487 () Bool)

(assert (=> d!70033 (= c!51487 (and (is-Intermediate!3108 lt!158162) (undefined!3920 lt!158162)))))

(declare-fun e!202239 () SeekEntryResult!3108)

(assert (=> d!70033 (= lt!158162 e!202239)))

(declare-fun c!51488 () Bool)

(assert (=> d!70033 (= c!51488 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!158161 () (_ BitVec 64))

(assert (=> d!70033 (= lt!158161 (select (arr!7966 a!3305) index!1840))))

(assert (=> d!70033 (validMask!0 mask!3777)))

(assert (=> d!70033 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158162)))

(declare-fun b!329205 () Bool)

(assert (=> b!329205 (and (bvsge (index!14610 lt!158162) #b00000000000000000000000000000000) (bvslt (index!14610 lt!158162) (size!8318 a!3305)))))

(assert (=> b!329205 (= e!202238 (= (select (arr!7966 a!3305) (index!14610 lt!158162)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329206 () Bool)

(assert (=> b!329206 (= e!202237 e!202236)))

(declare-fun res!181512 () Bool)

(assert (=> b!329206 (= res!181512 (and (is-Intermediate!3108 lt!158162) (not (undefined!3920 lt!158162)) (bvslt (x!32844 lt!158162) #b01111111111111111111111111111110) (bvsge (x!32844 lt!158162) #b00000000000000000000000000000000) (bvsge (x!32844 lt!158162) x!1490)))))

(assert (=> b!329206 (=> (not res!181512) (not e!202236))))

(declare-fun b!329207 () Bool)

(assert (=> b!329207 (= e!202239 (Intermediate!3108 true index!1840 x!1490))))

(declare-fun b!329208 () Bool)

(assert (=> b!329208 (and (bvsge (index!14610 lt!158162) #b00000000000000000000000000000000) (bvslt (index!14610 lt!158162) (size!8318 a!3305)))))

(declare-fun res!181514 () Bool)

(assert (=> b!329208 (= res!181514 (= (select (arr!7966 a!3305) (index!14610 lt!158162)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329208 (=> res!181514 e!202238)))

(declare-fun b!329209 () Bool)

(assert (=> b!329209 (= e!202239 e!202235)))

(declare-fun c!51486 () Bool)

(assert (=> b!329209 (= c!51486 (or (= lt!158161 k!2497) (= (bvadd lt!158161 lt!158161) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329210 () Bool)

(assert (=> b!329210 (= e!202235 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!329211 () Bool)

(assert (=> b!329211 (= e!202237 (bvsge (x!32844 lt!158162) #b01111111111111111111111111111110))))

(assert (= (and d!70033 c!51488) b!329207))

(assert (= (and d!70033 (not c!51488)) b!329209))

(assert (= (and b!329209 c!51486) b!329203))

(assert (= (and b!329209 (not c!51486)) b!329210))

(assert (= (and d!70033 c!51487) b!329211))

(assert (= (and d!70033 (not c!51487)) b!329206))

(assert (= (and b!329206 res!181512) b!329204))

(assert (= (and b!329204 (not res!181513)) b!329208))

(assert (= (and b!329208 (not res!181514)) b!329205))

(assert (=> d!70033 m!334845))

(assert (=> d!70033 m!334831))

(assert (=> b!329210 m!334847))

(assert (=> b!329210 m!334847))

(declare-fun m!334925 () Bool)

(assert (=> b!329210 m!334925))

(declare-fun m!334927 () Bool)

(assert (=> b!329204 m!334927))

(assert (=> b!329205 m!334927))

(assert (=> b!329208 m!334927))

(assert (=> b!329079 d!70033))

(declare-fun d!70037 () Bool)

(declare-fun lt!158202 () SeekEntryResult!3108)

(assert (=> d!70037 (and (or (is-Undefined!3108 lt!158202) (not (is-Found!3108 lt!158202)) (and (bvsge (index!14609 lt!158202) #b00000000000000000000000000000000) (bvslt (index!14609 lt!158202) (size!8318 a!3305)))) (or (is-Undefined!3108 lt!158202) (is-Found!3108 lt!158202) (not (is-MissingZero!3108 lt!158202)) (and (bvsge (index!14608 lt!158202) #b00000000000000000000000000000000) (bvslt (index!14608 lt!158202) (size!8318 a!3305)))) (or (is-Undefined!3108 lt!158202) (is-Found!3108 lt!158202) (is-MissingZero!3108 lt!158202) (not (is-MissingVacant!3108 lt!158202)) (and (bvsge (index!14611 lt!158202) #b00000000000000000000000000000000) (bvslt (index!14611 lt!158202) (size!8318 a!3305)))) (or (is-Undefined!3108 lt!158202) (ite (is-Found!3108 lt!158202) (= (select (arr!7966 a!3305) (index!14609 lt!158202)) k!2497) (ite (is-MissingZero!3108 lt!158202) (= (select (arr!7966 a!3305) (index!14608 lt!158202)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3108 lt!158202) (= (select (arr!7966 a!3305) (index!14611 lt!158202)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!202292 () SeekEntryResult!3108)

(assert (=> d!70037 (= lt!158202 e!202292)))

(declare-fun c!51518 () Bool)

(declare-fun lt!158203 () SeekEntryResult!3108)

(assert (=> d!70037 (= c!51518 (and (is-Intermediate!3108 lt!158203) (undefined!3920 lt!158203)))))

(assert (=> d!70037 (= lt!158203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!70037 (validMask!0 mask!3777)))

(assert (=> d!70037 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!158202)))

(declare-fun b!329296 () Bool)

(declare-fun e!202291 () SeekEntryResult!3108)

(assert (=> b!329296 (= e!202291 (MissingZero!3108 (index!14610 lt!158203)))))

(declare-fun b!329297 () Bool)

(declare-fun e!202293 () SeekEntryResult!3108)

(assert (=> b!329297 (= e!202292 e!202293)))

(declare-fun lt!158201 () (_ BitVec 64))

(assert (=> b!329297 (= lt!158201 (select (arr!7966 a!3305) (index!14610 lt!158203)))))

(declare-fun c!51516 () Bool)

(assert (=> b!329297 (= c!51516 (= lt!158201 k!2497))))

(declare-fun b!329298 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16847 (_ BitVec 32)) SeekEntryResult!3108)

(assert (=> b!329298 (= e!202291 (seekKeyOrZeroReturnVacant!0 (x!32844 lt!158203) (index!14610 lt!158203) (index!14610 lt!158203) k!2497 a!3305 mask!3777))))

(declare-fun b!329299 () Bool)

(declare-fun c!51517 () Bool)

(assert (=> b!329299 (= c!51517 (= lt!158201 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329299 (= e!202293 e!202291)))

(declare-fun b!329300 () Bool)

(assert (=> b!329300 (= e!202293 (Found!3108 (index!14610 lt!158203)))))

(declare-fun b!329301 () Bool)

(assert (=> b!329301 (= e!202292 Undefined!3108)))

(assert (= (and d!70037 c!51518) b!329301))

(assert (= (and d!70037 (not c!51518)) b!329297))

(assert (= (and b!329297 c!51516) b!329300))

(assert (= (and b!329297 (not c!51516)) b!329299))

(assert (= (and b!329299 c!51517) b!329296))

(assert (= (and b!329299 (not c!51517)) b!329298))

(assert (=> d!70037 m!334853))

(assert (=> d!70037 m!334855))

(declare-fun m!334969 () Bool)

(assert (=> d!70037 m!334969))

(declare-fun m!334971 () Bool)

(assert (=> d!70037 m!334971))

(declare-fun m!334973 () Bool)

(assert (=> d!70037 m!334973))

(assert (=> d!70037 m!334853))

(assert (=> d!70037 m!334831))

(declare-fun m!334975 () Bool)

(assert (=> b!329297 m!334975))

(declare-fun m!334977 () Bool)

(assert (=> b!329298 m!334977))

(assert (=> b!329083 d!70037))

(declare-fun bm!26144 () Bool)

(declare-fun call!26147 () Bool)

(assert (=> bm!26144 (= call!26147 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun d!70057 () Bool)

(declare-fun res!181566 () Bool)

(declare-fun e!202320 () Bool)

(assert (=> d!70057 (=> res!181566 e!202320)))

(assert (=> d!70057 (= res!181566 (bvsge #b00000000000000000000000000000000 (size!8318 a!3305)))))

(assert (=> d!70057 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!202320)))

(declare-fun b!329337 () Bool)

(declare-fun e!202322 () Bool)

(assert (=> b!329337 (= e!202320 e!202322)))

(declare-fun c!51527 () Bool)

(assert (=> b!329337 (= c!51527 (validKeyInArray!0 (select (arr!7966 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!329338 () Bool)

(assert (=> b!329338 (= e!202322 call!26147)))

(declare-fun b!329339 () Bool)

(declare-fun e!202321 () Bool)

(assert (=> b!329339 (= e!202321 call!26147)))

(declare-fun b!329340 () Bool)

(assert (=> b!329340 (= e!202322 e!202321)))

(declare-fun lt!158222 () (_ BitVec 64))

(assert (=> b!329340 (= lt!158222 (select (arr!7966 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10201 0))(
  ( (Unit!10202) )
))
(declare-fun lt!158221 () Unit!10201)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16847 (_ BitVec 64) (_ BitVec 32)) Unit!10201)

(assert (=> b!329340 (= lt!158221 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!158222 #b00000000000000000000000000000000))))

(assert (=> b!329340 (arrayContainsKey!0 a!3305 lt!158222 #b00000000000000000000000000000000)))

(declare-fun lt!158223 () Unit!10201)

(assert (=> b!329340 (= lt!158223 lt!158221)))

(declare-fun res!181565 () Bool)

(assert (=> b!329340 (= res!181565 (= (seekEntryOrOpen!0 (select (arr!7966 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3108 #b00000000000000000000000000000000)))))

(assert (=> b!329340 (=> (not res!181565) (not e!202321))))

(assert (= (and d!70057 (not res!181566)) b!329337))

(assert (= (and b!329337 c!51527) b!329340))

(assert (= (and b!329337 (not c!51527)) b!329338))

(assert (= (and b!329340 res!181565) b!329339))

(assert (= (or b!329339 b!329338) bm!26144))

(declare-fun m!335001 () Bool)

(assert (=> bm!26144 m!335001))

(declare-fun m!335003 () Bool)

(assert (=> b!329337 m!335003))

(assert (=> b!329337 m!335003))

(declare-fun m!335005 () Bool)

(assert (=> b!329337 m!335005))

(assert (=> b!329340 m!335003))

(declare-fun m!335007 () Bool)

(assert (=> b!329340 m!335007))

(declare-fun m!335009 () Bool)

(assert (=> b!329340 m!335009))

(assert (=> b!329340 m!335003))

(declare-fun m!335011 () Bool)

(assert (=> b!329340 m!335011))

(assert (=> b!329081 d!70057))

(declare-fun d!70069 () Bool)

(assert (=> d!70069 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!33090 d!70069))

(declare-fun d!70073 () Bool)

(assert (=> d!70073 (= (array_inv!5920 a!3305) (bvsge (size!8318 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!33090 d!70073))

(declare-fun d!70075 () Bool)

(assert (=> d!70075 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!329080 d!70075))

(declare-fun e!202323 () SeekEntryResult!3108)

(declare-fun b!329341 () Bool)

(assert (=> b!329341 (= e!202323 (Intermediate!3108 false (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!329342 () Bool)

(declare-fun lt!158228 () SeekEntryResult!3108)

(assert (=> b!329342 (and (bvsge (index!14610 lt!158228) #b00000000000000000000000000000000) (bvslt (index!14610 lt!158228) (size!8318 a!3305)))))

(declare-fun res!181568 () Bool)

(assert (=> b!329342 (= res!181568 (= (select (arr!7966 a!3305) (index!14610 lt!158228)) k!2497))))

(declare-fun e!202326 () Bool)

(assert (=> b!329342 (=> res!181568 e!202326)))

(declare-fun e!202324 () Bool)

(assert (=> b!329342 (= e!202324 e!202326)))

(declare-fun d!70077 () Bool)

(declare-fun e!202325 () Bool)

(assert (=> d!70077 e!202325))

(declare-fun c!51529 () Bool)

(assert (=> d!70077 (= c!51529 (and (is-Intermediate!3108 lt!158228) (undefined!3920 lt!158228)))))

(declare-fun e!202327 () SeekEntryResult!3108)

(assert (=> d!70077 (= lt!158228 e!202327)))

(declare-fun c!51530 () Bool)

(assert (=> d!70077 (= c!51530 (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110))))

(declare-fun lt!158227 () (_ BitVec 64))

(assert (=> d!70077 (= lt!158227 (select (arr!7966 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)))))

(assert (=> d!70077 (validMask!0 mask!3777)))

(assert (=> d!70077 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777) lt!158228)))

(declare-fun b!329343 () Bool)

(assert (=> b!329343 (and (bvsge (index!14610 lt!158228) #b00000000000000000000000000000000) (bvslt (index!14610 lt!158228) (size!8318 a!3305)))))

(assert (=> b!329343 (= e!202326 (= (select (arr!7966 a!3305) (index!14610 lt!158228)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329344 () Bool)

(assert (=> b!329344 (= e!202325 e!202324)))

(declare-fun res!181567 () Bool)

(assert (=> b!329344 (= res!181567 (and (is-Intermediate!3108 lt!158228) (not (undefined!3920 lt!158228)) (bvslt (x!32844 lt!158228) #b01111111111111111111111111111110) (bvsge (x!32844 lt!158228) #b00000000000000000000000000000000) (bvsge (x!32844 lt!158228) (bvadd #b00000000000000000000000000000001 x!1490))))))

(assert (=> b!329344 (=> (not res!181567) (not e!202324))))

(declare-fun b!329345 () Bool)

(assert (=> b!329345 (= e!202327 (Intermediate!3108 true (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!329346 () Bool)

(assert (=> b!329346 (and (bvsge (index!14610 lt!158228) #b00000000000000000000000000000000) (bvslt (index!14610 lt!158228) (size!8318 a!3305)))))

(declare-fun res!181569 () Bool)

(assert (=> b!329346 (= res!181569 (= (select (arr!7966 a!3305) (index!14610 lt!158228)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329346 (=> res!181569 e!202326)))

(declare-fun b!329347 () Bool)

(assert (=> b!329347 (= e!202327 e!202323)))

(declare-fun c!51528 () Bool)

(assert (=> b!329347 (= c!51528 (or (= lt!158227 k!2497) (= (bvadd lt!158227 lt!158227) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329348 () Bool)

(assert (=> b!329348 (= e!202323 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490) mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!329349 () Bool)

(assert (=> b!329349 (= e!202325 (bvsge (x!32844 lt!158228) #b01111111111111111111111111111110))))

(assert (= (and d!70077 c!51530) b!329345))

(assert (= (and d!70077 (not c!51530)) b!329347))

(assert (= (and b!329347 c!51528) b!329341))

(assert (= (and b!329347 (not c!51528)) b!329348))

(assert (= (and d!70077 c!51529) b!329349))

(assert (= (and d!70077 (not c!51529)) b!329344))

(assert (= (and b!329344 res!181567) b!329342))

(assert (= (and b!329342 (not res!181568)) b!329346))

(assert (= (and b!329346 (not res!181569)) b!329343))

(assert (=> d!70077 m!334847))

(declare-fun m!335015 () Bool)

(assert (=> d!70077 m!335015))

(assert (=> d!70077 m!334831))

(assert (=> b!329348 m!334847))

(declare-fun m!335017 () Bool)

(assert (=> b!329348 m!335017))

(assert (=> b!329348 m!335017))

(declare-fun m!335019 () Bool)

(assert (=> b!329348 m!335019))

(declare-fun m!335021 () Bool)

(assert (=> b!329342 m!335021))

(assert (=> b!329343 m!335021))

(assert (=> b!329346 m!335021))

(assert (=> b!329085 d!70077))

(declare-fun d!70079 () Bool)

(declare-fun lt!158237 () (_ BitVec 32))

(assert (=> d!70079 (and (bvsge lt!158237 #b00000000000000000000000000000000) (bvslt lt!158237 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70079 (= lt!158237 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!70079 (validMask!0 mask!3777)))

(assert (=> d!70079 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!158237)))

(declare-fun bs!11406 () Bool)

(assert (= bs!11406 d!70079))

(declare-fun m!335023 () Bool)

(assert (=> bs!11406 m!335023))

(assert (=> bs!11406 m!334831))

(assert (=> b!329085 d!70079))

(declare-fun d!70081 () Bool)

(declare-fun res!181574 () Bool)

(declare-fun e!202344 () Bool)

(assert (=> d!70081 (=> res!181574 e!202344)))

(assert (=> d!70081 (= res!181574 (= (select (arr!7966 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!70081 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!202344)))

(declare-fun b!329378 () Bool)

(declare-fun e!202345 () Bool)

(assert (=> b!329378 (= e!202344 e!202345)))

(declare-fun res!181575 () Bool)

(assert (=> b!329378 (=> (not res!181575) (not e!202345))))

(assert (=> b!329378 (= res!181575 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8318 a!3305)))))

(declare-fun b!329379 () Bool)

(assert (=> b!329379 (= e!202345 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70081 (not res!181574)) b!329378))

(assert (= (and b!329378 res!181575) b!329379))

(assert (=> d!70081 m!335003))

(declare-fun m!335025 () Bool)

(assert (=> b!329379 m!335025))

(assert (=> b!329086 d!70081))

(push 1)

(assert (not d!70079))

(assert (not b!329348))

(assert (not bm!26144))

(assert (not d!70033))

(assert (not b!329337))

(assert (not b!329192))

(assert (not b!329379))

(assert (not b!329340))

(assert (not b!329298))

(assert (not d!70019))

(assert (not b!329210))

(assert (not d!70037))

(assert (not d!70077))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

