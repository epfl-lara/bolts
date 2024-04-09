; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32546 () Bool)

(assert start!32546)

(declare-datatypes ((array!16681 0))(
  ( (array!16682 (arr!7895 (Array (_ BitVec 32) (_ BitVec 64))) (size!8247 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16681)

(declare-fun e!200494 () Bool)

(declare-fun b!325320 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun lt!156979 () (_ BitVec 32))

(assert (=> b!325320 (= e!200494 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1490) resX!58) (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b00000000000000000000000000000000) (or (bvslt lt!156979 #b00000000000000000000000000000000) (bvsge lt!156979 (size!8247 a!3305)))))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325320 (= lt!156979 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!325321 () Bool)

(declare-fun res!178818 () Bool)

(assert (=> b!325321 (=> (not res!178818) (not e!200494))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!325321 (= res!178818 (and (= (select (arr!7895 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8247 a!3305))))))

(declare-fun b!325322 () Bool)

(declare-fun res!178814 () Bool)

(declare-fun e!200493 () Bool)

(assert (=> b!325322 (=> (not res!178814) (not e!200493))))

(assert (=> b!325322 (= res!178814 (and (= (size!8247 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8247 a!3305))))))

(declare-fun b!325323 () Bool)

(declare-fun res!178811 () Bool)

(assert (=> b!325323 (=> (not res!178811) (not e!200493))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325323 (= res!178811 (validKeyInArray!0 k0!2497))))

(declare-fun b!325324 () Bool)

(declare-fun res!178815 () Bool)

(assert (=> b!325324 (=> (not res!178815) (not e!200494))))

(assert (=> b!325324 (= res!178815 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7895 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun res!178816 () Bool)

(assert (=> start!32546 (=> (not res!178816) (not e!200493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32546 (= res!178816 (validMask!0 mask!3777))))

(assert (=> start!32546 e!200493))

(declare-fun array_inv!5849 (array!16681) Bool)

(assert (=> start!32546 (array_inv!5849 a!3305)))

(assert (=> start!32546 true))

(declare-fun b!325325 () Bool)

(declare-fun res!178810 () Bool)

(assert (=> b!325325 (=> (not res!178810) (not e!200493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16681 (_ BitVec 32)) Bool)

(assert (=> b!325325 (= res!178810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!325326 () Bool)

(declare-fun res!178813 () Bool)

(assert (=> b!325326 (=> (not res!178813) (not e!200493))))

(declare-datatypes ((SeekEntryResult!3037 0))(
  ( (MissingZero!3037 (index!14324 (_ BitVec 32))) (Found!3037 (index!14325 (_ BitVec 32))) (Intermediate!3037 (undefined!3849 Bool) (index!14326 (_ BitVec 32)) (x!32524 (_ BitVec 32))) (Undefined!3037) (MissingVacant!3037 (index!14327 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16681 (_ BitVec 32)) SeekEntryResult!3037)

(assert (=> b!325326 (= res!178813 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3037 i!1250)))))

(declare-fun b!325327 () Bool)

(assert (=> b!325327 (= e!200493 e!200494)))

(declare-fun res!178812 () Bool)

(assert (=> b!325327 (=> (not res!178812) (not e!200494))))

(declare-fun lt!156980 () SeekEntryResult!3037)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16681 (_ BitVec 32)) SeekEntryResult!3037)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325327 (= res!178812 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156980))))

(assert (=> b!325327 (= lt!156980 (Intermediate!3037 false resIndex!58 resX!58))))

(declare-fun b!325328 () Bool)

(declare-fun res!178817 () Bool)

(assert (=> b!325328 (=> (not res!178817) (not e!200494))))

(assert (=> b!325328 (= res!178817 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156980))))

(declare-fun b!325329 () Bool)

(declare-fun res!178809 () Bool)

(assert (=> b!325329 (=> (not res!178809) (not e!200493))))

(declare-fun arrayContainsKey!0 (array!16681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325329 (= res!178809 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32546 res!178816) b!325322))

(assert (= (and b!325322 res!178814) b!325323))

(assert (= (and b!325323 res!178811) b!325329))

(assert (= (and b!325329 res!178809) b!325326))

(assert (= (and b!325326 res!178813) b!325325))

(assert (= (and b!325325 res!178810) b!325327))

(assert (= (and b!325327 res!178812) b!325321))

(assert (= (and b!325321 res!178818) b!325328))

(assert (= (and b!325328 res!178817) b!325324))

(assert (= (and b!325324 res!178815) b!325320))

(declare-fun m!332191 () Bool)

(assert (=> b!325327 m!332191))

(assert (=> b!325327 m!332191))

(declare-fun m!332193 () Bool)

(assert (=> b!325327 m!332193))

(declare-fun m!332195 () Bool)

(assert (=> b!325320 m!332195))

(declare-fun m!332197 () Bool)

(assert (=> b!325323 m!332197))

(declare-fun m!332199 () Bool)

(assert (=> b!325329 m!332199))

(declare-fun m!332201 () Bool)

(assert (=> b!325325 m!332201))

(declare-fun m!332203 () Bool)

(assert (=> start!32546 m!332203))

(declare-fun m!332205 () Bool)

(assert (=> start!32546 m!332205))

(declare-fun m!332207 () Bool)

(assert (=> b!325326 m!332207))

(declare-fun m!332209 () Bool)

(assert (=> b!325328 m!332209))

(declare-fun m!332211 () Bool)

(assert (=> b!325321 m!332211))

(declare-fun m!332213 () Bool)

(assert (=> b!325324 m!332213))

(check-sat (not b!325328) (not b!325329) (not b!325320) (not start!32546) (not b!325326) (not b!325327) (not b!325325) (not b!325323))
(check-sat)
(get-model)

(declare-fun d!69515 () Bool)

(declare-fun res!178853 () Bool)

(declare-fun e!200508 () Bool)

(assert (=> d!69515 (=> res!178853 e!200508)))

(assert (=> d!69515 (= res!178853 (= (select (arr!7895 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!69515 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!200508)))

(declare-fun b!325364 () Bool)

(declare-fun e!200509 () Bool)

(assert (=> b!325364 (= e!200508 e!200509)))

(declare-fun res!178854 () Bool)

(assert (=> b!325364 (=> (not res!178854) (not e!200509))))

(assert (=> b!325364 (= res!178854 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8247 a!3305)))))

(declare-fun b!325365 () Bool)

(assert (=> b!325365 (= e!200509 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69515 (not res!178853)) b!325364))

(assert (= (and b!325364 res!178854) b!325365))

(declare-fun m!332239 () Bool)

(assert (=> d!69515 m!332239))

(declare-fun m!332241 () Bool)

(assert (=> b!325365 m!332241))

(assert (=> b!325329 d!69515))

(declare-fun d!69517 () Bool)

(assert (=> d!69517 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!325323 d!69517))

(declare-fun d!69519 () Bool)

(assert (=> d!69519 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32546 d!69519))

(declare-fun d!69525 () Bool)

(assert (=> d!69525 (= (array_inv!5849 a!3305) (bvsge (size!8247 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32546 d!69525))

(declare-fun b!325411 () Bool)

(declare-fun e!200538 () SeekEntryResult!3037)

(assert (=> b!325411 (= e!200538 (Intermediate!3037 true index!1840 x!1490))))

(declare-fun b!325412 () Bool)

(declare-fun lt!157006 () SeekEntryResult!3037)

(assert (=> b!325412 (and (bvsge (index!14326 lt!157006) #b00000000000000000000000000000000) (bvslt (index!14326 lt!157006) (size!8247 a!3305)))))

(declare-fun res!178873 () Bool)

(assert (=> b!325412 (= res!178873 (= (select (arr!7895 a!3305) (index!14326 lt!157006)) k0!2497))))

(declare-fun e!200536 () Bool)

(assert (=> b!325412 (=> res!178873 e!200536)))

(declare-fun e!200537 () Bool)

(assert (=> b!325412 (= e!200537 e!200536)))

(declare-fun b!325413 () Bool)

(assert (=> b!325413 (and (bvsge (index!14326 lt!157006) #b00000000000000000000000000000000) (bvslt (index!14326 lt!157006) (size!8247 a!3305)))))

(assert (=> b!325413 (= e!200536 (= (select (arr!7895 a!3305) (index!14326 lt!157006)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!325414 () Bool)

(declare-fun e!200535 () SeekEntryResult!3037)

(assert (=> b!325414 (= e!200535 (Intermediate!3037 false index!1840 x!1490))))

(declare-fun b!325415 () Bool)

(declare-fun e!200539 () Bool)

(assert (=> b!325415 (= e!200539 (bvsge (x!32524 lt!157006) #b01111111111111111111111111111110))))

(declare-fun b!325416 () Bool)

(assert (=> b!325416 (= e!200535 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!325417 () Bool)

(assert (=> b!325417 (and (bvsge (index!14326 lt!157006) #b00000000000000000000000000000000) (bvslt (index!14326 lt!157006) (size!8247 a!3305)))))

(declare-fun res!178871 () Bool)

(assert (=> b!325417 (= res!178871 (= (select (arr!7895 a!3305) (index!14326 lt!157006)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325417 (=> res!178871 e!200536)))

(declare-fun b!325418 () Bool)

(assert (=> b!325418 (= e!200538 e!200535)))

(declare-fun c!50900 () Bool)

(declare-fun lt!157007 () (_ BitVec 64))

(assert (=> b!325418 (= c!50900 (or (= lt!157007 k0!2497) (= (bvadd lt!157007 lt!157007) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!69527 () Bool)

(assert (=> d!69527 e!200539))

(declare-fun c!50898 () Bool)

(get-info :version)

(assert (=> d!69527 (= c!50898 (and ((_ is Intermediate!3037) lt!157006) (undefined!3849 lt!157006)))))

(assert (=> d!69527 (= lt!157006 e!200538)))

(declare-fun c!50899 () Bool)

(assert (=> d!69527 (= c!50899 (bvsge x!1490 #b01111111111111111111111111111110))))

(assert (=> d!69527 (= lt!157007 (select (arr!7895 a!3305) index!1840))))

(assert (=> d!69527 (validMask!0 mask!3777)))

(assert (=> d!69527 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157006)))

(declare-fun b!325419 () Bool)

(assert (=> b!325419 (= e!200539 e!200537)))

(declare-fun res!178872 () Bool)

(assert (=> b!325419 (= res!178872 (and ((_ is Intermediate!3037) lt!157006) (not (undefined!3849 lt!157006)) (bvslt (x!32524 lt!157006) #b01111111111111111111111111111110) (bvsge (x!32524 lt!157006) #b00000000000000000000000000000000) (bvsge (x!32524 lt!157006) x!1490)))))

(assert (=> b!325419 (=> (not res!178872) (not e!200537))))

(assert (= (and d!69527 c!50899) b!325411))

(assert (= (and d!69527 (not c!50899)) b!325418))

(assert (= (and b!325418 c!50900) b!325414))

(assert (= (and b!325418 (not c!50900)) b!325416))

(assert (= (and d!69527 c!50898) b!325415))

(assert (= (and d!69527 (not c!50898)) b!325419))

(assert (= (and b!325419 res!178872) b!325412))

(assert (= (and b!325412 (not res!178873)) b!325417))

(assert (= (and b!325417 (not res!178871)) b!325413))

(declare-fun m!332253 () Bool)

(assert (=> b!325413 m!332253))

(assert (=> b!325416 m!332195))

(assert (=> b!325416 m!332195))

(declare-fun m!332255 () Bool)

(assert (=> b!325416 m!332255))

(assert (=> b!325412 m!332253))

(assert (=> b!325417 m!332253))

(assert (=> d!69527 m!332213))

(assert (=> d!69527 m!332203))

(assert (=> b!325328 d!69527))

(declare-fun b!325420 () Bool)

(declare-fun e!200543 () SeekEntryResult!3037)

(assert (=> b!325420 (= e!200543 (Intermediate!3037 true (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!325421 () Bool)

(declare-fun lt!157008 () SeekEntryResult!3037)

(assert (=> b!325421 (and (bvsge (index!14326 lt!157008) #b00000000000000000000000000000000) (bvslt (index!14326 lt!157008) (size!8247 a!3305)))))

(declare-fun res!178876 () Bool)

(assert (=> b!325421 (= res!178876 (= (select (arr!7895 a!3305) (index!14326 lt!157008)) k0!2497))))

(declare-fun e!200541 () Bool)

(assert (=> b!325421 (=> res!178876 e!200541)))

(declare-fun e!200542 () Bool)

(assert (=> b!325421 (= e!200542 e!200541)))

(declare-fun b!325422 () Bool)

(assert (=> b!325422 (and (bvsge (index!14326 lt!157008) #b00000000000000000000000000000000) (bvslt (index!14326 lt!157008) (size!8247 a!3305)))))

(assert (=> b!325422 (= e!200541 (= (select (arr!7895 a!3305) (index!14326 lt!157008)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!325423 () Bool)

(declare-fun e!200540 () SeekEntryResult!3037)

(assert (=> b!325423 (= e!200540 (Intermediate!3037 false (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!325424 () Bool)

(declare-fun e!200544 () Bool)

(assert (=> b!325424 (= e!200544 (bvsge (x!32524 lt!157008) #b01111111111111111111111111111110))))

(declare-fun b!325425 () Bool)

(assert (=> b!325425 (= e!200540 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!325426 () Bool)

(assert (=> b!325426 (and (bvsge (index!14326 lt!157008) #b00000000000000000000000000000000) (bvslt (index!14326 lt!157008) (size!8247 a!3305)))))

(declare-fun res!178874 () Bool)

(assert (=> b!325426 (= res!178874 (= (select (arr!7895 a!3305) (index!14326 lt!157008)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325426 (=> res!178874 e!200541)))

(declare-fun b!325427 () Bool)

(assert (=> b!325427 (= e!200543 e!200540)))

(declare-fun c!50903 () Bool)

(declare-fun lt!157009 () (_ BitVec 64))

(assert (=> b!325427 (= c!50903 (or (= lt!157009 k0!2497) (= (bvadd lt!157009 lt!157009) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!69541 () Bool)

(assert (=> d!69541 e!200544))

(declare-fun c!50901 () Bool)

(assert (=> d!69541 (= c!50901 (and ((_ is Intermediate!3037) lt!157008) (undefined!3849 lt!157008)))))

(assert (=> d!69541 (= lt!157008 e!200543)))

(declare-fun c!50902 () Bool)

(assert (=> d!69541 (= c!50902 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!69541 (= lt!157009 (select (arr!7895 a!3305) (toIndex!0 k0!2497 mask!3777)))))

(assert (=> d!69541 (validMask!0 mask!3777)))

(assert (=> d!69541 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157008)))

(declare-fun b!325428 () Bool)

(assert (=> b!325428 (= e!200544 e!200542)))

(declare-fun res!178875 () Bool)

(assert (=> b!325428 (= res!178875 (and ((_ is Intermediate!3037) lt!157008) (not (undefined!3849 lt!157008)) (bvslt (x!32524 lt!157008) #b01111111111111111111111111111110) (bvsge (x!32524 lt!157008) #b00000000000000000000000000000000) (bvsge (x!32524 lt!157008) #b00000000000000000000000000000000)))))

(assert (=> b!325428 (=> (not res!178875) (not e!200542))))

(assert (= (and d!69541 c!50902) b!325420))

(assert (= (and d!69541 (not c!50902)) b!325427))

(assert (= (and b!325427 c!50903) b!325423))

(assert (= (and b!325427 (not c!50903)) b!325425))

(assert (= (and d!69541 c!50901) b!325424))

(assert (= (and d!69541 (not c!50901)) b!325428))

(assert (= (and b!325428 res!178875) b!325421))

(assert (= (and b!325421 (not res!178876)) b!325426))

(assert (= (and b!325426 (not res!178874)) b!325422))

(declare-fun m!332257 () Bool)

(assert (=> b!325422 m!332257))

(assert (=> b!325425 m!332191))

(declare-fun m!332259 () Bool)

(assert (=> b!325425 m!332259))

(assert (=> b!325425 m!332259))

(declare-fun m!332261 () Bool)

(assert (=> b!325425 m!332261))

(assert (=> b!325421 m!332257))

(assert (=> b!325426 m!332257))

(assert (=> d!69541 m!332191))

(declare-fun m!332263 () Bool)

(assert (=> d!69541 m!332263))

(assert (=> d!69541 m!332203))

(assert (=> b!325327 d!69541))

(declare-fun d!69545 () Bool)

(declare-fun lt!157021 () (_ BitVec 32))

(declare-fun lt!157020 () (_ BitVec 32))

(assert (=> d!69545 (= lt!157021 (bvmul (bvxor lt!157020 (bvlshr lt!157020 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69545 (= lt!157020 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69545 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!178877 (let ((h!5412 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32530 (bvmul (bvxor h!5412 (bvlshr h!5412 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32530 (bvlshr x!32530 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!178877 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!178877 #b00000000000000000000000000000000))))))

(assert (=> d!69545 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!157021 (bvlshr lt!157021 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!325327 d!69545))

(declare-fun b!325519 () Bool)

(declare-fun e!200601 () SeekEntryResult!3037)

(assert (=> b!325519 (= e!200601 Undefined!3037)))

(declare-fun lt!157058 () SeekEntryResult!3037)

(declare-fun e!200603 () SeekEntryResult!3037)

(declare-fun b!325520 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16681 (_ BitVec 32)) SeekEntryResult!3037)

(assert (=> b!325520 (= e!200603 (seekKeyOrZeroReturnVacant!0 (x!32524 lt!157058) (index!14326 lt!157058) (index!14326 lt!157058) k0!2497 a!3305 mask!3777))))

(declare-fun d!69549 () Bool)

(declare-fun lt!157059 () SeekEntryResult!3037)

(assert (=> d!69549 (and (or ((_ is Undefined!3037) lt!157059) (not ((_ is Found!3037) lt!157059)) (and (bvsge (index!14325 lt!157059) #b00000000000000000000000000000000) (bvslt (index!14325 lt!157059) (size!8247 a!3305)))) (or ((_ is Undefined!3037) lt!157059) ((_ is Found!3037) lt!157059) (not ((_ is MissingZero!3037) lt!157059)) (and (bvsge (index!14324 lt!157059) #b00000000000000000000000000000000) (bvslt (index!14324 lt!157059) (size!8247 a!3305)))) (or ((_ is Undefined!3037) lt!157059) ((_ is Found!3037) lt!157059) ((_ is MissingZero!3037) lt!157059) (not ((_ is MissingVacant!3037) lt!157059)) (and (bvsge (index!14327 lt!157059) #b00000000000000000000000000000000) (bvslt (index!14327 lt!157059) (size!8247 a!3305)))) (or ((_ is Undefined!3037) lt!157059) (ite ((_ is Found!3037) lt!157059) (= (select (arr!7895 a!3305) (index!14325 lt!157059)) k0!2497) (ite ((_ is MissingZero!3037) lt!157059) (= (select (arr!7895 a!3305) (index!14324 lt!157059)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3037) lt!157059) (= (select (arr!7895 a!3305) (index!14327 lt!157059)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69549 (= lt!157059 e!200601)))

(declare-fun c!50935 () Bool)

(assert (=> d!69549 (= c!50935 (and ((_ is Intermediate!3037) lt!157058) (undefined!3849 lt!157058)))))

(assert (=> d!69549 (= lt!157058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!69549 (validMask!0 mask!3777)))

(assert (=> d!69549 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!157059)))

(declare-fun b!325521 () Bool)

(declare-fun c!50936 () Bool)

(declare-fun lt!157057 () (_ BitVec 64))

(assert (=> b!325521 (= c!50936 (= lt!157057 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!200602 () SeekEntryResult!3037)

(assert (=> b!325521 (= e!200602 e!200603)))

(declare-fun b!325522 () Bool)

(assert (=> b!325522 (= e!200601 e!200602)))

(assert (=> b!325522 (= lt!157057 (select (arr!7895 a!3305) (index!14326 lt!157058)))))

(declare-fun c!50934 () Bool)

(assert (=> b!325522 (= c!50934 (= lt!157057 k0!2497))))

(declare-fun b!325523 () Bool)

(assert (=> b!325523 (= e!200602 (Found!3037 (index!14326 lt!157058)))))

(declare-fun b!325524 () Bool)

(assert (=> b!325524 (= e!200603 (MissingZero!3037 (index!14326 lt!157058)))))

(assert (= (and d!69549 c!50935) b!325519))

(assert (= (and d!69549 (not c!50935)) b!325522))

(assert (= (and b!325522 c!50934) b!325523))

(assert (= (and b!325522 (not c!50934)) b!325521))

(assert (= (and b!325521 c!50936) b!325524))

(assert (= (and b!325521 (not c!50936)) b!325520))

(declare-fun m!332307 () Bool)

(assert (=> b!325520 m!332307))

(assert (=> d!69549 m!332203))

(declare-fun m!332309 () Bool)

(assert (=> d!69549 m!332309))

(declare-fun m!332311 () Bool)

(assert (=> d!69549 m!332311))

(declare-fun m!332313 () Bool)

(assert (=> d!69549 m!332313))

(assert (=> d!69549 m!332191))

(assert (=> d!69549 m!332193))

(assert (=> d!69549 m!332191))

(declare-fun m!332315 () Bool)

(assert (=> b!325522 m!332315))

(assert (=> b!325326 d!69549))

(declare-fun d!69567 () Bool)

(declare-fun res!178919 () Bool)

(declare-fun e!200619 () Bool)

(assert (=> d!69567 (=> res!178919 e!200619)))

(assert (=> d!69567 (= res!178919 (bvsge #b00000000000000000000000000000000 (size!8247 a!3305)))))

(assert (=> d!69567 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!200619)))

(declare-fun b!325545 () Bool)

(declare-fun e!200620 () Bool)

(declare-fun call!26075 () Bool)

(assert (=> b!325545 (= e!200620 call!26075)))

(declare-fun b!325546 () Bool)

(declare-fun e!200621 () Bool)

(assert (=> b!325546 (= e!200621 e!200620)))

(declare-fun lt!157076 () (_ BitVec 64))

(assert (=> b!325546 (= lt!157076 (select (arr!7895 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10085 0))(
  ( (Unit!10086) )
))
(declare-fun lt!157077 () Unit!10085)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16681 (_ BitVec 64) (_ BitVec 32)) Unit!10085)

(assert (=> b!325546 (= lt!157077 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157076 #b00000000000000000000000000000000))))

(assert (=> b!325546 (arrayContainsKey!0 a!3305 lt!157076 #b00000000000000000000000000000000)))

(declare-fun lt!157075 () Unit!10085)

(assert (=> b!325546 (= lt!157075 lt!157077)))

(declare-fun res!178920 () Bool)

(assert (=> b!325546 (= res!178920 (= (seekEntryOrOpen!0 (select (arr!7895 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3037 #b00000000000000000000000000000000)))))

(assert (=> b!325546 (=> (not res!178920) (not e!200620))))

(declare-fun b!325547 () Bool)

(assert (=> b!325547 (= e!200619 e!200621)))

(declare-fun c!50942 () Bool)

(assert (=> b!325547 (= c!50942 (validKeyInArray!0 (select (arr!7895 a!3305) #b00000000000000000000000000000000)))))

(declare-fun bm!26072 () Bool)

(assert (=> bm!26072 (= call!26075 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!325548 () Bool)

(assert (=> b!325548 (= e!200621 call!26075)))

(assert (= (and d!69567 (not res!178919)) b!325547))

(assert (= (and b!325547 c!50942) b!325546))

(assert (= (and b!325547 (not c!50942)) b!325548))

(assert (= (and b!325546 res!178920) b!325545))

(assert (= (or b!325545 b!325548) bm!26072))

(assert (=> b!325546 m!332239))

(declare-fun m!332327 () Bool)

(assert (=> b!325546 m!332327))

(declare-fun m!332329 () Bool)

(assert (=> b!325546 m!332329))

(assert (=> b!325546 m!332239))

(declare-fun m!332331 () Bool)

(assert (=> b!325546 m!332331))

(assert (=> b!325547 m!332239))

(assert (=> b!325547 m!332239))

(declare-fun m!332333 () Bool)

(assert (=> b!325547 m!332333))

(declare-fun m!332335 () Bool)

(assert (=> bm!26072 m!332335))

(assert (=> b!325325 d!69567))

(declare-fun d!69571 () Bool)

(declare-fun lt!157080 () (_ BitVec 32))

(assert (=> d!69571 (and (bvsge lt!157080 #b00000000000000000000000000000000) (bvslt lt!157080 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69571 (= lt!157080 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!69571 (validMask!0 mask!3777)))

(assert (=> d!69571 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!157080)))

(declare-fun bs!11325 () Bool)

(assert (= bs!11325 d!69571))

(declare-fun m!332337 () Bool)

(assert (=> bs!11325 m!332337))

(assert (=> bs!11325 m!332203))

(assert (=> b!325320 d!69571))

(check-sat (not d!69549) (not d!69541) (not b!325520) (not b!325546) (not b!325425) (not d!69571) (not b!325365) (not d!69527) (not b!325547) (not b!325416) (not bm!26072))
(check-sat)
