; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28692 () Bool)

(assert start!28692)

(declare-fun res!154218 () Bool)

(declare-fun e!185368 () Bool)

(assert (=> start!28692 (=> (not res!154218) (not e!185368))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28692 (= res!154218 (validMask!0 mask!3809))))

(assert (=> start!28692 e!185368))

(assert (=> start!28692 true))

(declare-datatypes ((array!14860 0))(
  ( (array!14861 (arr!7052 (Array (_ BitVec 32) (_ BitVec 64))) (size!7404 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14860)

(declare-fun array_inv!5006 (array!14860) Bool)

(assert (=> start!28692 (array_inv!5006 a!3312)))

(declare-fun b!293119 () Bool)

(declare-fun res!154215 () Bool)

(assert (=> b!293119 (=> (not res!154215) (not e!185368))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!293119 (= res!154215 (and (= (size!7404 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7404 a!3312))))))

(declare-fun b!293120 () Bool)

(declare-fun res!154214 () Bool)

(declare-fun e!185367 () Bool)

(assert (=> b!293120 (=> (not res!154214) (not e!185367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14860 (_ BitVec 32)) Bool)

(assert (=> b!293120 (= res!154214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!293121 () Bool)

(declare-fun res!154213 () Bool)

(assert (=> b!293121 (=> (not res!154213) (not e!185368))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293121 (= res!154213 (validKeyInArray!0 k0!2524))))

(declare-fun b!293122 () Bool)

(declare-fun res!154217 () Bool)

(assert (=> b!293122 (=> (not res!154217) (not e!185368))))

(declare-fun arrayContainsKey!0 (array!14860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293122 (= res!154217 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!293123 () Bool)

(assert (=> b!293123 (= e!185368 e!185367)))

(declare-fun res!154216 () Bool)

(assert (=> b!293123 (=> (not res!154216) (not e!185367))))

(declare-fun lt!145335 () Bool)

(declare-datatypes ((SeekEntryResult!2212 0))(
  ( (MissingZero!2212 (index!11018 (_ BitVec 32))) (Found!2212 (index!11019 (_ BitVec 32))) (Intermediate!2212 (undefined!3024 Bool) (index!11020 (_ BitVec 32)) (x!29163 (_ BitVec 32))) (Undefined!2212) (MissingVacant!2212 (index!11021 (_ BitVec 32))) )
))
(declare-fun lt!145337 () SeekEntryResult!2212)

(assert (=> b!293123 (= res!154216 (or lt!145335 (= lt!145337 (MissingVacant!2212 i!1256))))))

(assert (=> b!293123 (= lt!145335 (= lt!145337 (MissingZero!2212 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14860 (_ BitVec 32)) SeekEntryResult!2212)

(assert (=> b!293123 (= lt!145337 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!293124 () Bool)

(declare-fun lt!145334 () SeekEntryResult!2212)

(get-info :version)

(assert (=> b!293124 (= e!185367 (and lt!145335 ((_ is Intermediate!2212) lt!145334) (undefined!3024 lt!145334)))))

(declare-fun lt!145336 () SeekEntryResult!2212)

(declare-fun lt!145333 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14860 (_ BitVec 32)) SeekEntryResult!2212)

(assert (=> b!293124 (= lt!145336 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145333 k0!2524 (array!14861 (store (arr!7052 a!3312) i!1256 k0!2524) (size!7404 a!3312)) mask!3809))))

(assert (=> b!293124 (= lt!145334 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145333 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293124 (= lt!145333 (toIndex!0 k0!2524 mask!3809))))

(assert (= (and start!28692 res!154218) b!293119))

(assert (= (and b!293119 res!154215) b!293121))

(assert (= (and b!293121 res!154213) b!293122))

(assert (= (and b!293122 res!154217) b!293123))

(assert (= (and b!293123 res!154216) b!293120))

(assert (= (and b!293120 res!154214) b!293124))

(declare-fun m!306963 () Bool)

(assert (=> b!293123 m!306963))

(declare-fun m!306965 () Bool)

(assert (=> b!293120 m!306965))

(declare-fun m!306967 () Bool)

(assert (=> start!28692 m!306967))

(declare-fun m!306969 () Bool)

(assert (=> start!28692 m!306969))

(declare-fun m!306971 () Bool)

(assert (=> b!293121 m!306971))

(declare-fun m!306973 () Bool)

(assert (=> b!293124 m!306973))

(declare-fun m!306975 () Bool)

(assert (=> b!293124 m!306975))

(declare-fun m!306977 () Bool)

(assert (=> b!293124 m!306977))

(declare-fun m!306979 () Bool)

(assert (=> b!293124 m!306979))

(declare-fun m!306981 () Bool)

(assert (=> b!293122 m!306981))

(check-sat (not start!28692) (not b!293124) (not b!293120) (not b!293122) (not b!293123) (not b!293121))
(check-sat)
(get-model)

(declare-fun b!293175 () Bool)

(declare-fun e!185401 () SeekEntryResult!2212)

(declare-fun e!185404 () SeekEntryResult!2212)

(assert (=> b!293175 (= e!185401 e!185404)))

(declare-fun c!47028 () Bool)

(declare-fun lt!145363 () (_ BitVec 64))

(assert (=> b!293175 (= c!47028 (or (= lt!145363 k0!2524) (= (bvadd lt!145363 lt!145363) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293176 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293176 (= e!185404 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145333 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!14861 (store (arr!7052 a!3312) i!1256 k0!2524) (size!7404 a!3312)) mask!3809))))

(declare-fun b!293177 () Bool)

(declare-fun e!185400 () Bool)

(declare-fun lt!145364 () SeekEntryResult!2212)

(assert (=> b!293177 (= e!185400 (bvsge (x!29163 lt!145364) #b01111111111111111111111111111110))))

(declare-fun b!293178 () Bool)

(assert (=> b!293178 (and (bvsge (index!11020 lt!145364) #b00000000000000000000000000000000) (bvslt (index!11020 lt!145364) (size!7404 (array!14861 (store (arr!7052 a!3312) i!1256 k0!2524) (size!7404 a!3312)))))))

(declare-fun e!185405 () Bool)

(assert (=> b!293178 (= e!185405 (= (select (arr!7052 (array!14861 (store (arr!7052 a!3312) i!1256 k0!2524) (size!7404 a!3312))) (index!11020 lt!145364)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!66425 () Bool)

(assert (=> d!66425 e!185400))

(declare-fun c!47029 () Bool)

(assert (=> d!66425 (= c!47029 (and ((_ is Intermediate!2212) lt!145364) (undefined!3024 lt!145364)))))

(assert (=> d!66425 (= lt!145364 e!185401)))

(declare-fun c!47027 () Bool)

(assert (=> d!66425 (= c!47027 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66425 (= lt!145363 (select (arr!7052 (array!14861 (store (arr!7052 a!3312) i!1256 k0!2524) (size!7404 a!3312))) lt!145333))))

(assert (=> d!66425 (validMask!0 mask!3809)))

(assert (=> d!66425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145333 k0!2524 (array!14861 (store (arr!7052 a!3312) i!1256 k0!2524) (size!7404 a!3312)) mask!3809) lt!145364)))

(declare-fun b!293179 () Bool)

(assert (=> b!293179 (= e!185401 (Intermediate!2212 true lt!145333 #b00000000000000000000000000000000))))

(declare-fun b!293180 () Bool)

(assert (=> b!293180 (= e!185404 (Intermediate!2212 false lt!145333 #b00000000000000000000000000000000))))

(declare-fun b!293181 () Bool)

(declare-fun e!185406 () Bool)

(assert (=> b!293181 (= e!185400 e!185406)))

(declare-fun res!154253 () Bool)

(assert (=> b!293181 (= res!154253 (and ((_ is Intermediate!2212) lt!145364) (not (undefined!3024 lt!145364)) (bvslt (x!29163 lt!145364) #b01111111111111111111111111111110) (bvsge (x!29163 lt!145364) #b00000000000000000000000000000000) (bvsge (x!29163 lt!145364) #b00000000000000000000000000000000)))))

(assert (=> b!293181 (=> (not res!154253) (not e!185406))))

(declare-fun b!293182 () Bool)

(assert (=> b!293182 (and (bvsge (index!11020 lt!145364) #b00000000000000000000000000000000) (bvslt (index!11020 lt!145364) (size!7404 (array!14861 (store (arr!7052 a!3312) i!1256 k0!2524) (size!7404 a!3312)))))))

(declare-fun res!154256 () Bool)

(assert (=> b!293182 (= res!154256 (= (select (arr!7052 (array!14861 (store (arr!7052 a!3312) i!1256 k0!2524) (size!7404 a!3312))) (index!11020 lt!145364)) k0!2524))))

(assert (=> b!293182 (=> res!154256 e!185405)))

(assert (=> b!293182 (= e!185406 e!185405)))

(declare-fun b!293183 () Bool)

(assert (=> b!293183 (and (bvsge (index!11020 lt!145364) #b00000000000000000000000000000000) (bvslt (index!11020 lt!145364) (size!7404 (array!14861 (store (arr!7052 a!3312) i!1256 k0!2524) (size!7404 a!3312)))))))

(declare-fun res!154257 () Bool)

(assert (=> b!293183 (= res!154257 (= (select (arr!7052 (array!14861 (store (arr!7052 a!3312) i!1256 k0!2524) (size!7404 a!3312))) (index!11020 lt!145364)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293183 (=> res!154257 e!185405)))

(assert (= (and d!66425 c!47027) b!293179))

(assert (= (and d!66425 (not c!47027)) b!293175))

(assert (= (and b!293175 c!47028) b!293180))

(assert (= (and b!293175 (not c!47028)) b!293176))

(assert (= (and d!66425 c!47029) b!293177))

(assert (= (and d!66425 (not c!47029)) b!293181))

(assert (= (and b!293181 res!154253) b!293182))

(assert (= (and b!293182 (not res!154256)) b!293183))

(assert (= (and b!293183 (not res!154257)) b!293178))

(declare-fun m!307007 () Bool)

(assert (=> b!293178 m!307007))

(declare-fun m!307009 () Bool)

(assert (=> b!293176 m!307009))

(assert (=> b!293176 m!307009))

(declare-fun m!307011 () Bool)

(assert (=> b!293176 m!307011))

(assert (=> b!293182 m!307007))

(declare-fun m!307013 () Bool)

(assert (=> d!66425 m!307013))

(assert (=> d!66425 m!306967))

(assert (=> b!293183 m!307007))

(assert (=> b!293124 d!66425))

(declare-fun b!293192 () Bool)

(declare-fun e!185412 () SeekEntryResult!2212)

(declare-fun e!185413 () SeekEntryResult!2212)

(assert (=> b!293192 (= e!185412 e!185413)))

(declare-fun c!47033 () Bool)

(declare-fun lt!145371 () (_ BitVec 64))

(assert (=> b!293192 (= c!47033 (or (= lt!145371 k0!2524) (= (bvadd lt!145371 lt!145371) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293193 () Bool)

(assert (=> b!293193 (= e!185413 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145333 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!293194 () Bool)

(declare-fun e!185411 () Bool)

(declare-fun lt!145372 () SeekEntryResult!2212)

(assert (=> b!293194 (= e!185411 (bvsge (x!29163 lt!145372) #b01111111111111111111111111111110))))

(declare-fun b!293195 () Bool)

(assert (=> b!293195 (and (bvsge (index!11020 lt!145372) #b00000000000000000000000000000000) (bvslt (index!11020 lt!145372) (size!7404 a!3312)))))

(declare-fun e!185414 () Bool)

(assert (=> b!293195 (= e!185414 (= (select (arr!7052 a!3312) (index!11020 lt!145372)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!66433 () Bool)

(assert (=> d!66433 e!185411))

(declare-fun c!47034 () Bool)

(assert (=> d!66433 (= c!47034 (and ((_ is Intermediate!2212) lt!145372) (undefined!3024 lt!145372)))))

(assert (=> d!66433 (= lt!145372 e!185412)))

(declare-fun c!47032 () Bool)

(assert (=> d!66433 (= c!47032 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66433 (= lt!145371 (select (arr!7052 a!3312) lt!145333))))

(assert (=> d!66433 (validMask!0 mask!3809)))

(assert (=> d!66433 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145333 k0!2524 a!3312 mask!3809) lt!145372)))

(declare-fun b!293196 () Bool)

(assert (=> b!293196 (= e!185412 (Intermediate!2212 true lt!145333 #b00000000000000000000000000000000))))

(declare-fun b!293197 () Bool)

(assert (=> b!293197 (= e!185413 (Intermediate!2212 false lt!145333 #b00000000000000000000000000000000))))

(declare-fun b!293198 () Bool)

(declare-fun e!185415 () Bool)

(assert (=> b!293198 (= e!185411 e!185415)))

(declare-fun res!154260 () Bool)

(assert (=> b!293198 (= res!154260 (and ((_ is Intermediate!2212) lt!145372) (not (undefined!3024 lt!145372)) (bvslt (x!29163 lt!145372) #b01111111111111111111111111111110) (bvsge (x!29163 lt!145372) #b00000000000000000000000000000000) (bvsge (x!29163 lt!145372) #b00000000000000000000000000000000)))))

(assert (=> b!293198 (=> (not res!154260) (not e!185415))))

(declare-fun b!293199 () Bool)

(assert (=> b!293199 (and (bvsge (index!11020 lt!145372) #b00000000000000000000000000000000) (bvslt (index!11020 lt!145372) (size!7404 a!3312)))))

(declare-fun res!154261 () Bool)

(assert (=> b!293199 (= res!154261 (= (select (arr!7052 a!3312) (index!11020 lt!145372)) k0!2524))))

(assert (=> b!293199 (=> res!154261 e!185414)))

(assert (=> b!293199 (= e!185415 e!185414)))

(declare-fun b!293200 () Bool)

(assert (=> b!293200 (and (bvsge (index!11020 lt!145372) #b00000000000000000000000000000000) (bvslt (index!11020 lt!145372) (size!7404 a!3312)))))

(declare-fun res!154262 () Bool)

(assert (=> b!293200 (= res!154262 (= (select (arr!7052 a!3312) (index!11020 lt!145372)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293200 (=> res!154262 e!185414)))

(assert (= (and d!66433 c!47032) b!293196))

(assert (= (and d!66433 (not c!47032)) b!293192))

(assert (= (and b!293192 c!47033) b!293197))

(assert (= (and b!293192 (not c!47033)) b!293193))

(assert (= (and d!66433 c!47034) b!293194))

(assert (= (and d!66433 (not c!47034)) b!293198))

(assert (= (and b!293198 res!154260) b!293199))

(assert (= (and b!293199 (not res!154261)) b!293200))

(assert (= (and b!293200 (not res!154262)) b!293195))

(declare-fun m!307015 () Bool)

(assert (=> b!293195 m!307015))

(assert (=> b!293193 m!307009))

(assert (=> b!293193 m!307009))

(declare-fun m!307017 () Bool)

(assert (=> b!293193 m!307017))

(assert (=> b!293199 m!307015))

(declare-fun m!307019 () Bool)

(assert (=> d!66433 m!307019))

(assert (=> d!66433 m!306967))

(assert (=> b!293200 m!307015))

(assert (=> b!293124 d!66433))

(declare-fun d!66435 () Bool)

(declare-fun lt!145384 () (_ BitVec 32))

(declare-fun lt!145383 () (_ BitVec 32))

(assert (=> d!66435 (= lt!145384 (bvmul (bvxor lt!145383 (bvlshr lt!145383 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66435 (= lt!145383 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66435 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154265 (let ((h!5288 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29166 (bvmul (bvxor h!5288 (bvlshr h!5288 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29166 (bvlshr x!29166 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154265 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154265 #b00000000000000000000000000000000))))))

(assert (=> d!66435 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!145384 (bvlshr lt!145384 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!293124 d!66435))

(declare-fun d!66441 () Bool)

(assert (=> d!66441 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28692 d!66441))

(declare-fun d!66443 () Bool)

(assert (=> d!66443 (= (array_inv!5006 a!3312) (bvsge (size!7404 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28692 d!66443))

(declare-fun b!293276 () Bool)

(declare-fun e!185457 () SeekEntryResult!2212)

(declare-fun lt!145414 () SeekEntryResult!2212)

(assert (=> b!293276 (= e!185457 (MissingZero!2212 (index!11020 lt!145414)))))

(declare-fun b!293277 () Bool)

(declare-fun e!185458 () SeekEntryResult!2212)

(declare-fun e!185459 () SeekEntryResult!2212)

(assert (=> b!293277 (= e!185458 e!185459)))

(declare-fun lt!145415 () (_ BitVec 64))

(assert (=> b!293277 (= lt!145415 (select (arr!7052 a!3312) (index!11020 lt!145414)))))

(declare-fun c!47066 () Bool)

(assert (=> b!293277 (= c!47066 (= lt!145415 k0!2524))))

(declare-fun b!293278 () Bool)

(assert (=> b!293278 (= e!185458 Undefined!2212)))

(declare-fun b!293279 () Bool)

(declare-fun c!47065 () Bool)

(assert (=> b!293279 (= c!47065 (= lt!145415 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293279 (= e!185459 e!185457)))

(declare-fun b!293280 () Bool)

(assert (=> b!293280 (= e!185459 (Found!2212 (index!11020 lt!145414)))))

(declare-fun d!66445 () Bool)

(declare-fun lt!145416 () SeekEntryResult!2212)

(assert (=> d!66445 (and (or ((_ is Undefined!2212) lt!145416) (not ((_ is Found!2212) lt!145416)) (and (bvsge (index!11019 lt!145416) #b00000000000000000000000000000000) (bvslt (index!11019 lt!145416) (size!7404 a!3312)))) (or ((_ is Undefined!2212) lt!145416) ((_ is Found!2212) lt!145416) (not ((_ is MissingZero!2212) lt!145416)) (and (bvsge (index!11018 lt!145416) #b00000000000000000000000000000000) (bvslt (index!11018 lt!145416) (size!7404 a!3312)))) (or ((_ is Undefined!2212) lt!145416) ((_ is Found!2212) lt!145416) ((_ is MissingZero!2212) lt!145416) (not ((_ is MissingVacant!2212) lt!145416)) (and (bvsge (index!11021 lt!145416) #b00000000000000000000000000000000) (bvslt (index!11021 lt!145416) (size!7404 a!3312)))) (or ((_ is Undefined!2212) lt!145416) (ite ((_ is Found!2212) lt!145416) (= (select (arr!7052 a!3312) (index!11019 lt!145416)) k0!2524) (ite ((_ is MissingZero!2212) lt!145416) (= (select (arr!7052 a!3312) (index!11018 lt!145416)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2212) lt!145416) (= (select (arr!7052 a!3312) (index!11021 lt!145416)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66445 (= lt!145416 e!185458)))

(declare-fun c!47064 () Bool)

(assert (=> d!66445 (= c!47064 (and ((_ is Intermediate!2212) lt!145414) (undefined!3024 lt!145414)))))

(assert (=> d!66445 (= lt!145414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!66445 (validMask!0 mask!3809)))

(assert (=> d!66445 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!145416)))

(declare-fun b!293275 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14860 (_ BitVec 32)) SeekEntryResult!2212)

(assert (=> b!293275 (= e!185457 (seekKeyOrZeroReturnVacant!0 (x!29163 lt!145414) (index!11020 lt!145414) (index!11020 lt!145414) k0!2524 a!3312 mask!3809))))

(assert (= (and d!66445 c!47064) b!293278))

(assert (= (and d!66445 (not c!47064)) b!293277))

(assert (= (and b!293277 c!47066) b!293280))

(assert (= (and b!293277 (not c!47066)) b!293279))

(assert (= (and b!293279 c!47065) b!293276))

(assert (= (and b!293279 (not c!47065)) b!293275))

(declare-fun m!307069 () Bool)

(assert (=> b!293277 m!307069))

(declare-fun m!307071 () Bool)

(assert (=> d!66445 m!307071))

(declare-fun m!307073 () Bool)

(assert (=> d!66445 m!307073))

(assert (=> d!66445 m!306979))

(declare-fun m!307075 () Bool)

(assert (=> d!66445 m!307075))

(assert (=> d!66445 m!306979))

(declare-fun m!307077 () Bool)

(assert (=> d!66445 m!307077))

(assert (=> d!66445 m!306967))

(declare-fun m!307079 () Bool)

(assert (=> b!293275 m!307079))

(assert (=> b!293123 d!66445))

(declare-fun d!66461 () Bool)

(assert (=> d!66461 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!293121 d!66461))

(declare-fun d!66463 () Bool)

(declare-fun res!154285 () Bool)

(declare-fun e!185464 () Bool)

(assert (=> d!66463 (=> res!154285 e!185464)))

(assert (=> d!66463 (= res!154285 (= (select (arr!7052 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!66463 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!185464)))

(declare-fun b!293285 () Bool)

(declare-fun e!185465 () Bool)

(assert (=> b!293285 (= e!185464 e!185465)))

(declare-fun res!154286 () Bool)

(assert (=> b!293285 (=> (not res!154286) (not e!185465))))

(assert (=> b!293285 (= res!154286 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7404 a!3312)))))

(declare-fun b!293286 () Bool)

(assert (=> b!293286 (= e!185465 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66463 (not res!154285)) b!293285))

(assert (= (and b!293285 res!154286) b!293286))

(declare-fun m!307081 () Bool)

(assert (=> d!66463 m!307081))

(declare-fun m!307083 () Bool)

(assert (=> b!293286 m!307083))

(assert (=> b!293122 d!66463))

(declare-fun b!293319 () Bool)

(declare-fun e!185486 () Bool)

(declare-fun call!25667 () Bool)

(assert (=> b!293319 (= e!185486 call!25667)))

(declare-fun b!293320 () Bool)

(declare-fun e!185484 () Bool)

(declare-fun e!185485 () Bool)

(assert (=> b!293320 (= e!185484 e!185485)))

(declare-fun c!47081 () Bool)

(assert (=> b!293320 (= c!47081 (validKeyInArray!0 (select (arr!7052 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!293321 () Bool)

(assert (=> b!293321 (= e!185485 call!25667)))

(declare-fun d!66465 () Bool)

(declare-fun res!154292 () Bool)

(assert (=> d!66465 (=> res!154292 e!185484)))

(assert (=> d!66465 (= res!154292 (bvsge #b00000000000000000000000000000000 (size!7404 a!3312)))))

(assert (=> d!66465 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!185484)))

(declare-fun b!293322 () Bool)

(assert (=> b!293322 (= e!185485 e!185486)))

(declare-fun lt!145433 () (_ BitVec 64))

(assert (=> b!293322 (= lt!145433 (select (arr!7052 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9173 0))(
  ( (Unit!9174) )
))
(declare-fun lt!145434 () Unit!9173)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14860 (_ BitVec 64) (_ BitVec 32)) Unit!9173)

(assert (=> b!293322 (= lt!145434 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145433 #b00000000000000000000000000000000))))

(assert (=> b!293322 (arrayContainsKey!0 a!3312 lt!145433 #b00000000000000000000000000000000)))

(declare-fun lt!145435 () Unit!9173)

(assert (=> b!293322 (= lt!145435 lt!145434)))

(declare-fun res!154291 () Bool)

(assert (=> b!293322 (= res!154291 (= (seekEntryOrOpen!0 (select (arr!7052 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2212 #b00000000000000000000000000000000)))))

(assert (=> b!293322 (=> (not res!154291) (not e!185486))))

(declare-fun bm!25664 () Bool)

(assert (=> bm!25664 (= call!25667 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!66465 (not res!154292)) b!293320))

(assert (= (and b!293320 c!47081) b!293322))

(assert (= (and b!293320 (not c!47081)) b!293321))

(assert (= (and b!293322 res!154291) b!293319))

(assert (= (or b!293319 b!293321) bm!25664))

(assert (=> b!293320 m!307081))

(assert (=> b!293320 m!307081))

(declare-fun m!307085 () Bool)

(assert (=> b!293320 m!307085))

(assert (=> b!293322 m!307081))

(declare-fun m!307087 () Bool)

(assert (=> b!293322 m!307087))

(declare-fun m!307089 () Bool)

(assert (=> b!293322 m!307089))

(assert (=> b!293322 m!307081))

(declare-fun m!307091 () Bool)

(assert (=> b!293322 m!307091))

(declare-fun m!307093 () Bool)

(assert (=> bm!25664 m!307093))

(assert (=> b!293120 d!66465))

(check-sat (not bm!25664) (not d!66425) (not d!66433) (not b!293176) (not b!293275) (not b!293320) (not b!293322) (not d!66445) (not b!293286) (not b!293193))
(check-sat)
