; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32738 () Bool)

(assert start!32738)

(declare-fun b!327043 () Bool)

(declare-fun res!180233 () Bool)

(declare-fun e!201158 () Bool)

(assert (=> b!327043 (=> (not res!180233) (not e!201158))))

(declare-datatypes ((array!16771 0))(
  ( (array!16772 (arr!7937 (Array (_ BitVec 32) (_ BitVec 64))) (size!8289 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16771)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3079 0))(
  ( (MissingZero!3079 (index!14492 (_ BitVec 32))) (Found!3079 (index!14493 (_ BitVec 32))) (Intermediate!3079 (undefined!3891 Bool) (index!14494 (_ BitVec 32)) (x!32696 (_ BitVec 32))) (Undefined!3079) (MissingVacant!3079 (index!14495 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16771 (_ BitVec 32)) SeekEntryResult!3079)

(assert (=> b!327043 (= res!180233 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3079 i!1250)))))

(declare-fun b!327044 () Bool)

(declare-fun res!180236 () Bool)

(declare-fun e!201160 () Bool)

(assert (=> b!327044 (=> (not res!180236) (not e!201160))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!327044 (= res!180236 (and (= (select (arr!7937 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8289 a!3305))))))

(declare-fun b!327045 () Bool)

(declare-fun res!180239 () Bool)

(assert (=> b!327045 (=> (not res!180239) (not e!201158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!327045 (= res!180239 (validKeyInArray!0 k0!2497))))

(declare-fun b!327046 () Bool)

(declare-fun res!180240 () Bool)

(assert (=> b!327046 (=> (not res!180240) (not e!201160))))

(declare-fun lt!157442 () SeekEntryResult!3079)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16771 (_ BitVec 32)) SeekEntryResult!3079)

(assert (=> b!327046 (= res!180240 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157442))))

(declare-fun res!180235 () Bool)

(assert (=> start!32738 (=> (not res!180235) (not e!201158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32738 (= res!180235 (validMask!0 mask!3777))))

(assert (=> start!32738 e!201158))

(declare-fun array_inv!5891 (array!16771) Bool)

(assert (=> start!32738 (array_inv!5891 a!3305)))

(assert (=> start!32738 true))

(declare-fun b!327047 () Bool)

(declare-fun res!180238 () Bool)

(assert (=> b!327047 (=> (not res!180238) (not e!201158))))

(declare-fun arrayContainsKey!0 (array!16771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!327047 (= res!180238 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!327048 () Bool)

(assert (=> b!327048 (= e!201158 e!201160)))

(declare-fun res!180237 () Bool)

(assert (=> b!327048 (=> (not res!180237) (not e!201160))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327048 (= res!180237 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157442))))

(assert (=> b!327048 (= lt!157442 (Intermediate!3079 false resIndex!58 resX!58))))

(declare-fun b!327049 () Bool)

(assert (=> b!327049 (= e!201160 (bvsge resX!58 #b01111111111111111111111111111110))))

(declare-fun b!327050 () Bool)

(declare-fun res!180232 () Bool)

(assert (=> b!327050 (=> (not res!180232) (not e!201158))))

(assert (=> b!327050 (= res!180232 (and (= (size!8289 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8289 a!3305))))))

(declare-fun b!327051 () Bool)

(declare-fun res!180234 () Bool)

(assert (=> b!327051 (=> (not res!180234) (not e!201158))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16771 (_ BitVec 32)) Bool)

(assert (=> b!327051 (= res!180234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32738 res!180235) b!327050))

(assert (= (and b!327050 res!180232) b!327045))

(assert (= (and b!327045 res!180239) b!327047))

(assert (= (and b!327047 res!180238) b!327043))

(assert (= (and b!327043 res!180233) b!327051))

(assert (= (and b!327051 res!180234) b!327048))

(assert (= (and b!327048 res!180237) b!327044))

(assert (= (and b!327044 res!180236) b!327046))

(assert (= (and b!327046 res!180240) b!327049))

(declare-fun m!333525 () Bool)

(assert (=> b!327043 m!333525))

(declare-fun m!333527 () Bool)

(assert (=> b!327048 m!333527))

(assert (=> b!327048 m!333527))

(declare-fun m!333529 () Bool)

(assert (=> b!327048 m!333529))

(declare-fun m!333531 () Bool)

(assert (=> b!327045 m!333531))

(declare-fun m!333533 () Bool)

(assert (=> b!327051 m!333533))

(declare-fun m!333535 () Bool)

(assert (=> b!327044 m!333535))

(declare-fun m!333537 () Bool)

(assert (=> start!32738 m!333537))

(declare-fun m!333539 () Bool)

(assert (=> start!32738 m!333539))

(declare-fun m!333541 () Bool)

(assert (=> b!327047 m!333541))

(declare-fun m!333543 () Bool)

(assert (=> b!327046 m!333543))

(check-sat (not b!327047) (not b!327046) (not b!327048) (not b!327051) (not b!327045) (not start!32738) (not b!327043))
(check-sat)
(get-model)

(declare-fun d!69669 () Bool)

(assert (=> d!69669 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!327045 d!69669))

(declare-fun d!69671 () Bool)

(assert (=> d!69671 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32738 d!69671))

(declare-fun d!69675 () Bool)

(assert (=> d!69675 (= (array_inv!5891 a!3305) (bvsge (size!8289 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32738 d!69675))

(declare-fun lt!157465 () SeekEntryResult!3079)

(declare-fun e!201203 () SeekEntryResult!3079)

(declare-fun b!327133 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16771 (_ BitVec 32)) SeekEntryResult!3079)

(assert (=> b!327133 (= e!201203 (seekKeyOrZeroReturnVacant!0 (x!32696 lt!157465) (index!14494 lt!157465) (index!14494 lt!157465) k0!2497 a!3305 mask!3777))))

(declare-fun b!327134 () Bool)

(declare-fun c!51059 () Bool)

(declare-fun lt!157467 () (_ BitVec 64))

(assert (=> b!327134 (= c!51059 (= lt!157467 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201202 () SeekEntryResult!3079)

(assert (=> b!327134 (= e!201202 e!201203)))

(declare-fun b!327135 () Bool)

(assert (=> b!327135 (= e!201203 (MissingZero!3079 (index!14494 lt!157465)))))

(declare-fun b!327136 () Bool)

(declare-fun e!201201 () SeekEntryResult!3079)

(assert (=> b!327136 (= e!201201 Undefined!3079)))

(declare-fun d!69679 () Bool)

(declare-fun lt!157466 () SeekEntryResult!3079)

(get-info :version)

(assert (=> d!69679 (and (or ((_ is Undefined!3079) lt!157466) (not ((_ is Found!3079) lt!157466)) (and (bvsge (index!14493 lt!157466) #b00000000000000000000000000000000) (bvslt (index!14493 lt!157466) (size!8289 a!3305)))) (or ((_ is Undefined!3079) lt!157466) ((_ is Found!3079) lt!157466) (not ((_ is MissingZero!3079) lt!157466)) (and (bvsge (index!14492 lt!157466) #b00000000000000000000000000000000) (bvslt (index!14492 lt!157466) (size!8289 a!3305)))) (or ((_ is Undefined!3079) lt!157466) ((_ is Found!3079) lt!157466) ((_ is MissingZero!3079) lt!157466) (not ((_ is MissingVacant!3079) lt!157466)) (and (bvsge (index!14495 lt!157466) #b00000000000000000000000000000000) (bvslt (index!14495 lt!157466) (size!8289 a!3305)))) (or ((_ is Undefined!3079) lt!157466) (ite ((_ is Found!3079) lt!157466) (= (select (arr!7937 a!3305) (index!14493 lt!157466)) k0!2497) (ite ((_ is MissingZero!3079) lt!157466) (= (select (arr!7937 a!3305) (index!14492 lt!157466)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3079) lt!157466) (= (select (arr!7937 a!3305) (index!14495 lt!157466)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69679 (= lt!157466 e!201201)))

(declare-fun c!51058 () Bool)

(assert (=> d!69679 (= c!51058 (and ((_ is Intermediate!3079) lt!157465) (undefined!3891 lt!157465)))))

(assert (=> d!69679 (= lt!157465 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!69679 (validMask!0 mask!3777)))

(assert (=> d!69679 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!157466)))

(declare-fun b!327137 () Bool)

(assert (=> b!327137 (= e!201201 e!201202)))

(assert (=> b!327137 (= lt!157467 (select (arr!7937 a!3305) (index!14494 lt!157465)))))

(declare-fun c!51057 () Bool)

(assert (=> b!327137 (= c!51057 (= lt!157467 k0!2497))))

(declare-fun b!327138 () Bool)

(assert (=> b!327138 (= e!201202 (Found!3079 (index!14494 lt!157465)))))

(assert (= (and d!69679 c!51058) b!327136))

(assert (= (and d!69679 (not c!51058)) b!327137))

(assert (= (and b!327137 c!51057) b!327138))

(assert (= (and b!327137 (not c!51057)) b!327134))

(assert (= (and b!327134 c!51059) b!327135))

(assert (= (and b!327134 (not c!51059)) b!327133))

(declare-fun m!333579 () Bool)

(assert (=> b!327133 m!333579))

(declare-fun m!333581 () Bool)

(assert (=> d!69679 m!333581))

(assert (=> d!69679 m!333537))

(declare-fun m!333583 () Bool)

(assert (=> d!69679 m!333583))

(assert (=> d!69679 m!333527))

(assert (=> d!69679 m!333529))

(declare-fun m!333585 () Bool)

(assert (=> d!69679 m!333585))

(assert (=> d!69679 m!333527))

(declare-fun m!333587 () Bool)

(assert (=> b!327137 m!333587))

(assert (=> b!327043 d!69679))

(declare-fun b!327228 () Bool)

(declare-fun e!201264 () Bool)

(declare-fun lt!157510 () SeekEntryResult!3079)

(assert (=> b!327228 (= e!201264 (bvsge (x!32696 lt!157510) #b01111111111111111111111111111110))))

(declare-fun b!327229 () Bool)

(declare-fun e!201262 () SeekEntryResult!3079)

(assert (=> b!327229 (= e!201262 (Intermediate!3079 false (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun d!69689 () Bool)

(assert (=> d!69689 e!201264))

(declare-fun c!51087 () Bool)

(assert (=> d!69689 (= c!51087 (and ((_ is Intermediate!3079) lt!157510) (undefined!3891 lt!157510)))))

(declare-fun e!201263 () SeekEntryResult!3079)

(assert (=> d!69689 (= lt!157510 e!201263)))

(declare-fun c!51088 () Bool)

(assert (=> d!69689 (= c!51088 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!157509 () (_ BitVec 64))

(assert (=> d!69689 (= lt!157509 (select (arr!7937 a!3305) (toIndex!0 k0!2497 mask!3777)))))

(assert (=> d!69689 (validMask!0 mask!3777)))

(assert (=> d!69689 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157510)))

(declare-fun b!327230 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327230 (= e!201262 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!327231 () Bool)

(declare-fun e!201260 () Bool)

(assert (=> b!327231 (= e!201264 e!201260)))

(declare-fun res!180321 () Bool)

(assert (=> b!327231 (= res!180321 (and ((_ is Intermediate!3079) lt!157510) (not (undefined!3891 lt!157510)) (bvslt (x!32696 lt!157510) #b01111111111111111111111111111110) (bvsge (x!32696 lt!157510) #b00000000000000000000000000000000) (bvsge (x!32696 lt!157510) #b00000000000000000000000000000000)))))

(assert (=> b!327231 (=> (not res!180321) (not e!201260))))

(declare-fun b!327232 () Bool)

(assert (=> b!327232 (and (bvsge (index!14494 lt!157510) #b00000000000000000000000000000000) (bvslt (index!14494 lt!157510) (size!8289 a!3305)))))

(declare-fun res!180319 () Bool)

(assert (=> b!327232 (= res!180319 (= (select (arr!7937 a!3305) (index!14494 lt!157510)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201261 () Bool)

(assert (=> b!327232 (=> res!180319 e!201261)))

(declare-fun b!327233 () Bool)

(assert (=> b!327233 (and (bvsge (index!14494 lt!157510) #b00000000000000000000000000000000) (bvslt (index!14494 lt!157510) (size!8289 a!3305)))))

(assert (=> b!327233 (= e!201261 (= (select (arr!7937 a!3305) (index!14494 lt!157510)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!327234 () Bool)

(assert (=> b!327234 (= e!201263 e!201262)))

(declare-fun c!51086 () Bool)

(assert (=> b!327234 (= c!51086 (or (= lt!157509 k0!2497) (= (bvadd lt!157509 lt!157509) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!327235 () Bool)

(assert (=> b!327235 (and (bvsge (index!14494 lt!157510) #b00000000000000000000000000000000) (bvslt (index!14494 lt!157510) (size!8289 a!3305)))))

(declare-fun res!180320 () Bool)

(assert (=> b!327235 (= res!180320 (= (select (arr!7937 a!3305) (index!14494 lt!157510)) k0!2497))))

(assert (=> b!327235 (=> res!180320 e!201261)))

(assert (=> b!327235 (= e!201260 e!201261)))

(declare-fun b!327236 () Bool)

(assert (=> b!327236 (= e!201263 (Intermediate!3079 true (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(assert (= (and d!69689 c!51088) b!327236))

(assert (= (and d!69689 (not c!51088)) b!327234))

(assert (= (and b!327234 c!51086) b!327229))

(assert (= (and b!327234 (not c!51086)) b!327230))

(assert (= (and d!69689 c!51087) b!327228))

(assert (= (and d!69689 (not c!51087)) b!327231))

(assert (= (and b!327231 res!180321) b!327235))

(assert (= (and b!327235 (not res!180320)) b!327232))

(assert (= (and b!327232 (not res!180319)) b!327233))

(declare-fun m!333627 () Bool)

(assert (=> b!327232 m!333627))

(assert (=> d!69689 m!333527))

(declare-fun m!333631 () Bool)

(assert (=> d!69689 m!333631))

(assert (=> d!69689 m!333537))

(assert (=> b!327230 m!333527))

(declare-fun m!333635 () Bool)

(assert (=> b!327230 m!333635))

(assert (=> b!327230 m!333635))

(declare-fun m!333643 () Bool)

(assert (=> b!327230 m!333643))

(assert (=> b!327233 m!333627))

(assert (=> b!327235 m!333627))

(assert (=> b!327048 d!69689))

(declare-fun d!69707 () Bool)

(declare-fun lt!157519 () (_ BitVec 32))

(declare-fun lt!157518 () (_ BitVec 32))

(assert (=> d!69707 (= lt!157519 (bvmul (bvxor lt!157518 (bvlshr lt!157518 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69707 (= lt!157518 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69707 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!180324 (let ((h!5419 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32703 (bvmul (bvxor h!5419 (bvlshr h!5419 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32703 (bvlshr x!32703 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!180324 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!180324 #b00000000000000000000000000000000))))))

(assert (=> d!69707 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!157519 (bvlshr lt!157519 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!327048 d!69707))

(declare-fun d!69709 () Bool)

(declare-fun res!180329 () Bool)

(declare-fun e!201272 () Bool)

(assert (=> d!69709 (=> res!180329 e!201272)))

(assert (=> d!69709 (= res!180329 (= (select (arr!7937 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!69709 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!201272)))

(declare-fun b!327245 () Bool)

(declare-fun e!201273 () Bool)

(assert (=> b!327245 (= e!201272 e!201273)))

(declare-fun res!180330 () Bool)

(assert (=> b!327245 (=> (not res!180330) (not e!201273))))

(assert (=> b!327245 (= res!180330 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8289 a!3305)))))

(declare-fun b!327246 () Bool)

(assert (=> b!327246 (= e!201273 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69709 (not res!180329)) b!327245))

(assert (= (and b!327245 res!180330) b!327246))

(declare-fun m!333645 () Bool)

(assert (=> d!69709 m!333645))

(declare-fun m!333647 () Bool)

(assert (=> b!327246 m!333647))

(assert (=> b!327047 d!69709))

(declare-fun d!69711 () Bool)

(declare-fun res!180336 () Bool)

(declare-fun e!201286 () Bool)

(assert (=> d!69711 (=> res!180336 e!201286)))

(assert (=> d!69711 (= res!180336 (bvsge #b00000000000000000000000000000000 (size!8289 a!3305)))))

(assert (=> d!69711 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!201286)))

(declare-fun b!327267 () Bool)

(declare-fun e!201287 () Bool)

(assert (=> b!327267 (= e!201286 e!201287)))

(declare-fun c!51098 () Bool)

(assert (=> b!327267 (= c!51098 (validKeyInArray!0 (select (arr!7937 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!327268 () Bool)

(declare-fun e!201288 () Bool)

(declare-fun call!26093 () Bool)

(assert (=> b!327268 (= e!201288 call!26093)))

(declare-fun b!327269 () Bool)

(assert (=> b!327269 (= e!201287 e!201288)))

(declare-fun lt!157534 () (_ BitVec 64))

(assert (=> b!327269 (= lt!157534 (select (arr!7937 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10167 0))(
  ( (Unit!10168) )
))
(declare-fun lt!157533 () Unit!10167)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16771 (_ BitVec 64) (_ BitVec 32)) Unit!10167)

(assert (=> b!327269 (= lt!157533 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157534 #b00000000000000000000000000000000))))

(assert (=> b!327269 (arrayContainsKey!0 a!3305 lt!157534 #b00000000000000000000000000000000)))

(declare-fun lt!157532 () Unit!10167)

(assert (=> b!327269 (= lt!157532 lt!157533)))

(declare-fun res!180335 () Bool)

(assert (=> b!327269 (= res!180335 (= (seekEntryOrOpen!0 (select (arr!7937 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3079 #b00000000000000000000000000000000)))))

(assert (=> b!327269 (=> (not res!180335) (not e!201288))))

(declare-fun b!327270 () Bool)

(assert (=> b!327270 (= e!201287 call!26093)))

(declare-fun bm!26090 () Bool)

(assert (=> bm!26090 (= call!26093 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(assert (= (and d!69711 (not res!180336)) b!327267))

(assert (= (and b!327267 c!51098) b!327269))

(assert (= (and b!327267 (not c!51098)) b!327270))

(assert (= (and b!327269 res!180335) b!327268))

(assert (= (or b!327268 b!327270) bm!26090))

(assert (=> b!327267 m!333645))

(assert (=> b!327267 m!333645))

(declare-fun m!333649 () Bool)

(assert (=> b!327267 m!333649))

(assert (=> b!327269 m!333645))

(declare-fun m!333651 () Bool)

(assert (=> b!327269 m!333651))

(declare-fun m!333653 () Bool)

(assert (=> b!327269 m!333653))

(assert (=> b!327269 m!333645))

(declare-fun m!333655 () Bool)

(assert (=> b!327269 m!333655))

(declare-fun m!333659 () Bool)

(assert (=> bm!26090 m!333659))

(assert (=> b!327051 d!69711))

(declare-fun b!327277 () Bool)

(declare-fun e!201296 () Bool)

(declare-fun lt!157539 () SeekEntryResult!3079)

(assert (=> b!327277 (= e!201296 (bvsge (x!32696 lt!157539) #b01111111111111111111111111111110))))

(declare-fun b!327278 () Bool)

(declare-fun e!201294 () SeekEntryResult!3079)

(assert (=> b!327278 (= e!201294 (Intermediate!3079 false index!1840 x!1490))))

(declare-fun d!69713 () Bool)

(assert (=> d!69713 e!201296))

(declare-fun c!51103 () Bool)

(assert (=> d!69713 (= c!51103 (and ((_ is Intermediate!3079) lt!157539) (undefined!3891 lt!157539)))))

(declare-fun e!201295 () SeekEntryResult!3079)

(assert (=> d!69713 (= lt!157539 e!201295)))

(declare-fun c!51104 () Bool)

(assert (=> d!69713 (= c!51104 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!157538 () (_ BitVec 64))

(assert (=> d!69713 (= lt!157538 (select (arr!7937 a!3305) index!1840))))

(assert (=> d!69713 (validMask!0 mask!3777)))

(assert (=> d!69713 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157539)))

(declare-fun b!327279 () Bool)

(assert (=> b!327279 (= e!201294 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!327280 () Bool)

(declare-fun e!201292 () Bool)

(assert (=> b!327280 (= e!201296 e!201292)))

(declare-fun res!180339 () Bool)

(assert (=> b!327280 (= res!180339 (and ((_ is Intermediate!3079) lt!157539) (not (undefined!3891 lt!157539)) (bvslt (x!32696 lt!157539) #b01111111111111111111111111111110) (bvsge (x!32696 lt!157539) #b00000000000000000000000000000000) (bvsge (x!32696 lt!157539) x!1490)))))

(assert (=> b!327280 (=> (not res!180339) (not e!201292))))

(declare-fun b!327281 () Bool)

(assert (=> b!327281 (and (bvsge (index!14494 lt!157539) #b00000000000000000000000000000000) (bvslt (index!14494 lt!157539) (size!8289 a!3305)))))

(declare-fun res!180337 () Bool)

(assert (=> b!327281 (= res!180337 (= (select (arr!7937 a!3305) (index!14494 lt!157539)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201293 () Bool)

(assert (=> b!327281 (=> res!180337 e!201293)))

(declare-fun b!327282 () Bool)

(assert (=> b!327282 (and (bvsge (index!14494 lt!157539) #b00000000000000000000000000000000) (bvslt (index!14494 lt!157539) (size!8289 a!3305)))))

(assert (=> b!327282 (= e!201293 (= (select (arr!7937 a!3305) (index!14494 lt!157539)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!327283 () Bool)

(assert (=> b!327283 (= e!201295 e!201294)))

(declare-fun c!51102 () Bool)

(assert (=> b!327283 (= c!51102 (or (= lt!157538 k0!2497) (= (bvadd lt!157538 lt!157538) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!327284 () Bool)

(assert (=> b!327284 (and (bvsge (index!14494 lt!157539) #b00000000000000000000000000000000) (bvslt (index!14494 lt!157539) (size!8289 a!3305)))))

(declare-fun res!180338 () Bool)

(assert (=> b!327284 (= res!180338 (= (select (arr!7937 a!3305) (index!14494 lt!157539)) k0!2497))))

(assert (=> b!327284 (=> res!180338 e!201293)))

(assert (=> b!327284 (= e!201292 e!201293)))

(declare-fun b!327285 () Bool)

(assert (=> b!327285 (= e!201295 (Intermediate!3079 true index!1840 x!1490))))

(assert (= (and d!69713 c!51104) b!327285))

(assert (= (and d!69713 (not c!51104)) b!327283))

(assert (= (and b!327283 c!51102) b!327278))

(assert (= (and b!327283 (not c!51102)) b!327279))

(assert (= (and d!69713 c!51103) b!327277))

(assert (= (and d!69713 (not c!51103)) b!327280))

(assert (= (and b!327280 res!180339) b!327284))

(assert (= (and b!327284 (not res!180338)) b!327281))

(assert (= (and b!327281 (not res!180337)) b!327282))

(declare-fun m!333669 () Bool)

(assert (=> b!327281 m!333669))

(declare-fun m!333671 () Bool)

(assert (=> d!69713 m!333671))

(assert (=> d!69713 m!333537))

(declare-fun m!333673 () Bool)

(assert (=> b!327279 m!333673))

(assert (=> b!327279 m!333673))

(declare-fun m!333675 () Bool)

(assert (=> b!327279 m!333675))

(assert (=> b!327282 m!333669))

(assert (=> b!327284 m!333669))

(assert (=> b!327046 d!69713))

(check-sat (not bm!26090) (not b!327133) (not b!327246) (not b!327267) (not b!327230) (not d!69713) (not d!69689) (not b!327269) (not b!327279) (not d!69679))
(check-sat)
