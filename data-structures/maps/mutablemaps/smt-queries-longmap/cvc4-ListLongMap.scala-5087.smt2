; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69056 () Bool)

(assert start!69056)

(declare-fun b!805314 () Bool)

(declare-fun res!550009 () Bool)

(declare-fun e!445999 () Bool)

(assert (=> b!805314 (=> (not res!550009) (not e!445999))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43797 0))(
  ( (array!43798 (arr!20975 (Array (_ BitVec 32) (_ BitVec 64))) (size!21396 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43797)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805314 (= res!550009 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21396 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20975 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21396 a!3170)) (= (select (arr!20975 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805315 () Bool)

(declare-fun res!550011 () Bool)

(assert (=> b!805315 (=> (not res!550011) (not e!445999))))

(declare-datatypes ((List!14991 0))(
  ( (Nil!14988) (Cons!14987 (h!16116 (_ BitVec 64)) (t!21314 List!14991)) )
))
(declare-fun arrayNoDuplicates!0 (array!43797 (_ BitVec 32) List!14991) Bool)

(assert (=> b!805315 (= res!550011 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14988))))

(declare-fun res!550006 () Bool)

(declare-fun e!446001 () Bool)

(assert (=> start!69056 (=> (not res!550006) (not e!446001))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69056 (= res!550006 (validMask!0 mask!3266))))

(assert (=> start!69056 e!446001))

(assert (=> start!69056 true))

(declare-fun array_inv!16749 (array!43797) Bool)

(assert (=> start!69056 (array_inv!16749 a!3170)))

(declare-fun b!805316 () Bool)

(declare-fun res!550005 () Bool)

(assert (=> b!805316 (=> (not res!550005) (not e!445999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43797 (_ BitVec 32)) Bool)

(assert (=> b!805316 (= res!550005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805317 () Bool)

(declare-fun res!550012 () Bool)

(assert (=> b!805317 (=> (not res!550012) (not e!446001))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!805317 (= res!550012 (and (= (size!21396 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21396 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21396 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805318 () Bool)

(declare-fun e!446002 () Bool)

(assert (=> b!805318 (= e!445999 e!446002)))

(declare-fun res!550003 () Bool)

(assert (=> b!805318 (=> (not res!550003) (not e!446002))))

(declare-datatypes ((SeekEntryResult!8573 0))(
  ( (MissingZero!8573 (index!36659 (_ BitVec 32))) (Found!8573 (index!36660 (_ BitVec 32))) (Intermediate!8573 (undefined!9385 Bool) (index!36661 (_ BitVec 32)) (x!67500 (_ BitVec 32))) (Undefined!8573) (MissingVacant!8573 (index!36662 (_ BitVec 32))) )
))
(declare-fun lt!360607 () SeekEntryResult!8573)

(declare-fun lt!360611 () SeekEntryResult!8573)

(assert (=> b!805318 (= res!550003 (= lt!360607 lt!360611))))

(declare-fun lt!360612 () array!43797)

(declare-fun lt!360610 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43797 (_ BitVec 32)) SeekEntryResult!8573)

(assert (=> b!805318 (= lt!360611 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360610 lt!360612 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43797 (_ BitVec 32)) SeekEntryResult!8573)

(assert (=> b!805318 (= lt!360607 (seekEntryOrOpen!0 lt!360610 lt!360612 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!805318 (= lt!360610 (select (store (arr!20975 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805318 (= lt!360612 (array!43798 (store (arr!20975 a!3170) i!1163 k!2044) (size!21396 a!3170)))))

(declare-fun b!805319 () Bool)

(declare-fun res!550004 () Bool)

(assert (=> b!805319 (=> (not res!550004) (not e!446001))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805319 (= res!550004 (validKeyInArray!0 k!2044))))

(declare-fun lt!360609 () SeekEntryResult!8573)

(declare-fun lt!360608 () SeekEntryResult!8573)

(declare-fun b!805320 () Bool)

(assert (=> b!805320 (= e!446002 (and (= lt!360609 lt!360608) (= lt!360608 (Found!8573 j!153)) (= (select (arr!20975 a!3170) index!1236) (select (arr!20975 a!3170) j!153)) (not (= lt!360611 (Found!8573 index!1236)))))))

(assert (=> b!805320 (= lt!360608 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20975 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!805320 (= lt!360609 (seekEntryOrOpen!0 (select (arr!20975 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805321 () Bool)

(assert (=> b!805321 (= e!446001 e!445999)))

(declare-fun res!550007 () Bool)

(assert (=> b!805321 (=> (not res!550007) (not e!445999))))

(declare-fun lt!360613 () SeekEntryResult!8573)

(assert (=> b!805321 (= res!550007 (or (= lt!360613 (MissingZero!8573 i!1163)) (= lt!360613 (MissingVacant!8573 i!1163))))))

(assert (=> b!805321 (= lt!360613 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!805322 () Bool)

(declare-fun res!550010 () Bool)

(assert (=> b!805322 (=> (not res!550010) (not e!446001))))

(declare-fun arrayContainsKey!0 (array!43797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805322 (= res!550010 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805323 () Bool)

(declare-fun res!550008 () Bool)

(assert (=> b!805323 (=> (not res!550008) (not e!446001))))

(assert (=> b!805323 (= res!550008 (validKeyInArray!0 (select (arr!20975 a!3170) j!153)))))

(assert (= (and start!69056 res!550006) b!805317))

(assert (= (and b!805317 res!550012) b!805323))

(assert (= (and b!805323 res!550008) b!805319))

(assert (= (and b!805319 res!550004) b!805322))

(assert (= (and b!805322 res!550010) b!805321))

(assert (= (and b!805321 res!550007) b!805316))

(assert (= (and b!805316 res!550005) b!805315))

(assert (= (and b!805315 res!550011) b!805314))

(assert (= (and b!805314 res!550009) b!805318))

(assert (= (and b!805318 res!550003) b!805320))

(declare-fun m!747367 () Bool)

(assert (=> b!805322 m!747367))

(declare-fun m!747369 () Bool)

(assert (=> b!805323 m!747369))

(assert (=> b!805323 m!747369))

(declare-fun m!747371 () Bool)

(assert (=> b!805323 m!747371))

(declare-fun m!747373 () Bool)

(assert (=> b!805318 m!747373))

(declare-fun m!747375 () Bool)

(assert (=> b!805318 m!747375))

(declare-fun m!747377 () Bool)

(assert (=> b!805318 m!747377))

(declare-fun m!747379 () Bool)

(assert (=> b!805318 m!747379))

(declare-fun m!747381 () Bool)

(assert (=> start!69056 m!747381))

(declare-fun m!747383 () Bool)

(assert (=> start!69056 m!747383))

(declare-fun m!747385 () Bool)

(assert (=> b!805315 m!747385))

(declare-fun m!747387 () Bool)

(assert (=> b!805316 m!747387))

(declare-fun m!747389 () Bool)

(assert (=> b!805320 m!747389))

(assert (=> b!805320 m!747369))

(assert (=> b!805320 m!747369))

(declare-fun m!747391 () Bool)

(assert (=> b!805320 m!747391))

(assert (=> b!805320 m!747369))

(declare-fun m!747393 () Bool)

(assert (=> b!805320 m!747393))

(declare-fun m!747395 () Bool)

(assert (=> b!805319 m!747395))

(declare-fun m!747397 () Bool)

(assert (=> b!805321 m!747397))

(declare-fun m!747399 () Bool)

(assert (=> b!805314 m!747399))

(declare-fun m!747401 () Bool)

(assert (=> b!805314 m!747401))

(push 1)

(assert (not b!805322))

(assert (not b!805323))

(assert (not b!805319))

(assert (not b!805316))

(assert (not b!805320))

(assert (not start!69056))

(assert (not b!805315))

(assert (not b!805321))

(assert (not b!805318))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!805358 () Bool)

(declare-fun e!446029 () Bool)

(declare-fun contains!4122 (List!14991 (_ BitVec 64)) Bool)

(assert (=> b!805358 (= e!446029 (contains!4122 Nil!14988 (select (arr!20975 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!805359 () Bool)

(declare-fun e!446026 () Bool)

(declare-fun e!446027 () Bool)

(assert (=> b!805359 (= e!446026 e!446027)))

(declare-fun res!550026 () Bool)

(assert (=> b!805359 (=> (not res!550026) (not e!446027))))

(assert (=> b!805359 (= res!550026 (not e!446029))))

(declare-fun res!550027 () Bool)

(assert (=> b!805359 (=> (not res!550027) (not e!446029))))

(assert (=> b!805359 (= res!550027 (validKeyInArray!0 (select (arr!20975 a!3170) #b00000000000000000000000000000000)))))

(declare-fun bm!35346 () Bool)

(declare-fun call!35349 () Bool)

(declare-fun c!88077 () Bool)

(assert (=> bm!35346 (= call!35349 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88077 (Cons!14987 (select (arr!20975 a!3170) #b00000000000000000000000000000000) Nil!14988) Nil!14988)))))

(declare-fun b!805360 () Bool)

(declare-fun e!446028 () Bool)

(assert (=> b!805360 (= e!446028 call!35349)))

(declare-fun b!805361 () Bool)

(assert (=> b!805361 (= e!446028 call!35349)))

(declare-fun d!103479 () Bool)

(declare-fun res!550025 () Bool)

(assert (=> d!103479 (=> res!550025 e!446026)))

(assert (=> d!103479 (= res!550025 (bvsge #b00000000000000000000000000000000 (size!21396 a!3170)))))

(assert (=> d!103479 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14988) e!446026)))

(declare-fun b!805362 () Bool)

(assert (=> b!805362 (= e!446027 e!446028)))

(assert (=> b!805362 (= c!88077 (validKeyInArray!0 (select (arr!20975 a!3170) #b00000000000000000000000000000000)))))

(assert (= (and d!103479 (not res!550025)) b!805359))

(assert (= (and b!805359 res!550027) b!805358))

(assert (= (and b!805359 res!550026) b!805362))

(assert (= (and b!805362 c!88077) b!805360))

(assert (= (and b!805362 (not c!88077)) b!805361))

(assert (= (or b!805360 b!805361) bm!35346))

(declare-fun m!747417 () Bool)

(assert (=> b!805358 m!747417))

(assert (=> b!805358 m!747417))

(declare-fun m!747419 () Bool)

(assert (=> b!805358 m!747419))

(assert (=> b!805359 m!747417))

(assert (=> b!805359 m!747417))

(declare-fun m!747421 () Bool)

(assert (=> b!805359 m!747421))

(assert (=> bm!35346 m!747417))

(declare-fun m!747423 () Bool)

(assert (=> bm!35346 m!747423))

(assert (=> b!805362 m!747417))

(assert (=> b!805362 m!747417))

(assert (=> b!805362 m!747421))

(assert (=> b!805315 d!103479))

(declare-fun d!103481 () Bool)

(assert (=> d!103481 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69056 d!103481))

(declare-fun d!103483 () Bool)

(assert (=> d!103483 (= (array_inv!16749 a!3170) (bvsge (size!21396 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69056 d!103483))

(declare-fun b!805426 () Bool)

(declare-fun e!446066 () SeekEntryResult!8573)

(declare-fun lt!360644 () SeekEntryResult!8573)

(assert (=> b!805426 (= e!446066 (MissingZero!8573 (index!36661 lt!360644)))))

(declare-fun b!805427 () Bool)

(declare-fun c!88107 () Bool)

(declare-fun lt!360646 () (_ BitVec 64))

(assert (=> b!805427 (= c!88107 (= lt!360646 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446068 () SeekEntryResult!8573)

(assert (=> b!805427 (= e!446068 e!446066)))

(declare-fun d!103485 () Bool)

(declare-fun lt!360645 () SeekEntryResult!8573)

(assert (=> d!103485 (and (or (is-Undefined!8573 lt!360645) (not (is-Found!8573 lt!360645)) (and (bvsge (index!36660 lt!360645) #b00000000000000000000000000000000) (bvslt (index!36660 lt!360645) (size!21396 a!3170)))) (or (is-Undefined!8573 lt!360645) (is-Found!8573 lt!360645) (not (is-MissingZero!8573 lt!360645)) (and (bvsge (index!36659 lt!360645) #b00000000000000000000000000000000) (bvslt (index!36659 lt!360645) (size!21396 a!3170)))) (or (is-Undefined!8573 lt!360645) (is-Found!8573 lt!360645) (is-MissingZero!8573 lt!360645) (not (is-MissingVacant!8573 lt!360645)) (and (bvsge (index!36662 lt!360645) #b00000000000000000000000000000000) (bvslt (index!36662 lt!360645) (size!21396 a!3170)))) (or (is-Undefined!8573 lt!360645) (ite (is-Found!8573 lt!360645) (= (select (arr!20975 a!3170) (index!36660 lt!360645)) k!2044) (ite (is-MissingZero!8573 lt!360645) (= (select (arr!20975 a!3170) (index!36659 lt!360645)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8573 lt!360645) (= (select (arr!20975 a!3170) (index!36662 lt!360645)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!446067 () SeekEntryResult!8573)

(assert (=> d!103485 (= lt!360645 e!446067)))

(declare-fun c!88105 () Bool)

(assert (=> d!103485 (= c!88105 (and (is-Intermediate!8573 lt!360644) (undefined!9385 lt!360644)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43797 (_ BitVec 32)) SeekEntryResult!8573)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103485 (= lt!360644 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!103485 (validMask!0 mask!3266)))

(assert (=> d!103485 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!360645)))

(declare-fun b!805428 () Bool)

(assert (=> b!805428 (= e!446067 e!446068)))

(assert (=> b!805428 (= lt!360646 (select (arr!20975 a!3170) (index!36661 lt!360644)))))

(declare-fun c!88106 () Bool)

(assert (=> b!805428 (= c!88106 (= lt!360646 k!2044))))

(declare-fun b!805429 () Bool)

(assert (=> b!805429 (= e!446067 Undefined!8573)))

(declare-fun b!805430 () Bool)

(assert (=> b!805430 (= e!446066 (seekKeyOrZeroReturnVacant!0 (x!67500 lt!360644) (index!36661 lt!360644) (index!36661 lt!360644) k!2044 a!3170 mask!3266))))

(declare-fun b!805431 () Bool)

(assert (=> b!805431 (= e!446068 (Found!8573 (index!36661 lt!360644)))))

(assert (= (and d!103485 c!88105) b!805429))

(assert (= (and d!103485 (not c!88105)) b!805428))

(assert (= (and b!805428 c!88106) b!805431))

(assert (= (and b!805428 (not c!88106)) b!805427))

(assert (= (and b!805427 c!88107) b!805426))

(assert (= (and b!805427 (not c!88107)) b!805430))

(declare-fun m!747459 () Bool)

(assert (=> d!103485 m!747459))

(declare-fun m!747461 () Bool)

(assert (=> d!103485 m!747461))

(assert (=> d!103485 m!747461))

(declare-fun m!747463 () Bool)

(assert (=> d!103485 m!747463))

(declare-fun m!747465 () Bool)

(assert (=> d!103485 m!747465))

(declare-fun m!747467 () Bool)

(assert (=> d!103485 m!747467))

(assert (=> d!103485 m!747381))

(declare-fun m!747469 () Bool)

(assert (=> b!805428 m!747469))

(declare-fun m!747471 () Bool)

(assert (=> b!805430 m!747471))

(assert (=> b!805321 d!103485))

(declare-fun b!805441 () Bool)

(declare-fun e!446075 () Bool)

(declare-fun call!35355 () Bool)

(assert (=> b!805441 (= e!446075 call!35355)))

(declare-fun b!805442 () Bool)

(declare-fun e!446076 () Bool)

(assert (=> b!805442 (= e!446075 e!446076)))

(declare-fun lt!360653 () (_ BitVec 64))

(assert (=> b!805442 (= lt!360653 (select (arr!20975 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27582 0))(
  ( (Unit!27583) )
))
(declare-fun lt!360655 () Unit!27582)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!43797 (_ BitVec 64) (_ BitVec 32)) Unit!27582)

(assert (=> b!805442 (= lt!360655 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!360653 #b00000000000000000000000000000000))))

(assert (=> b!805442 (arrayContainsKey!0 a!3170 lt!360653 #b00000000000000000000000000000000)))

(declare-fun lt!360654 () Unit!27582)

(assert (=> b!805442 (= lt!360654 lt!360655)))

(declare-fun res!550042 () Bool)

(assert (=> b!805442 (= res!550042 (= (seekEntryOrOpen!0 (select (arr!20975 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8573 #b00000000000000000000000000000000)))))

(assert (=> b!805442 (=> (not res!550042) (not e!446076))))

(declare-fun d!103493 () Bool)

(declare-fun res!550041 () Bool)

(declare-fun e!446077 () Bool)

(assert (=> d!103493 (=> res!550041 e!446077)))

(assert (=> d!103493 (= res!550041 (bvsge #b00000000000000000000000000000000 (size!21396 a!3170)))))

(assert (=> d!103493 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!446077)))

(declare-fun b!805440 () Bool)

(assert (=> b!805440 (= e!446077 e!446075)))

(declare-fun c!88110 () Bool)

(assert (=> b!805440 (= c!88110 (validKeyInArray!0 (select (arr!20975 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!805443 () Bool)

(assert (=> b!805443 (= e!446076 call!35355)))

(declare-fun bm!35352 () Bool)

(assert (=> bm!35352 (= call!35355 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(assert (= (and d!103493 (not res!550041)) b!805440))

(assert (= (and b!805440 c!88110) b!805442))

(assert (= (and b!805440 (not c!88110)) b!805441))

(assert (= (and b!805442 res!550042) b!805443))

(assert (= (or b!805443 b!805441) bm!35352))

(assert (=> b!805442 m!747417))

(declare-fun m!747473 () Bool)

(assert (=> b!805442 m!747473))

(declare-fun m!747475 () Bool)

(assert (=> b!805442 m!747475))

(assert (=> b!805442 m!747417))

(declare-fun m!747477 () Bool)

(assert (=> b!805442 m!747477))

(assert (=> b!805440 m!747417))

(assert (=> b!805440 m!747417))

(assert (=> b!805440 m!747421))

(declare-fun m!747479 () Bool)

(assert (=> bm!35352 m!747479))

(assert (=> b!805316 d!103493))

(declare-fun d!103495 () Bool)

(declare-fun res!550047 () Bool)

(declare-fun e!446082 () Bool)

(assert (=> d!103495 (=> res!550047 e!446082)))

(assert (=> d!103495 (= res!550047 (= (select (arr!20975 a!3170) #b00000000000000000000000000000000) k!2044))))

(assert (=> d!103495 (= (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000) e!446082)))

(declare-fun b!805448 () Bool)

(declare-fun e!446083 () Bool)

(assert (=> b!805448 (= e!446082 e!446083)))

(declare-fun res!550048 () Bool)

(assert (=> b!805448 (=> (not res!550048) (not e!446083))))

(assert (=> b!805448 (= res!550048 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21396 a!3170)))))

(declare-fun b!805449 () Bool)

(assert (=> b!805449 (= e!446083 (arrayContainsKey!0 a!3170 k!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103495 (not res!550047)) b!805448))

(assert (= (and b!805448 res!550048) b!805449))

(assert (=> d!103495 m!747417))

(declare-fun m!747481 () Bool)

(assert (=> b!805449 m!747481))

(assert (=> b!805322 d!103495))

(declare-fun d!103497 () Bool)

(assert (=> d!103497 (= (validKeyInArray!0 (select (arr!20975 a!3170) j!153)) (and (not (= (select (arr!20975 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20975 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!805323 d!103497))

(declare-fun b!805506 () Bool)

(declare-fun c!88136 () Bool)

(declare-fun lt!360679 () (_ BitVec 64))

(assert (=> b!805506 (= c!88136 (= lt!360679 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446119 () SeekEntryResult!8573)

(declare-fun e!446118 () SeekEntryResult!8573)

(assert (=> b!805506 (= e!446119 e!446118)))

(declare-fun b!805507 () Bool)

(declare-fun e!446117 () SeekEntryResult!8573)

(assert (=> b!805507 (= e!446117 e!446119)))

(declare-fun c!88134 () Bool)

(assert (=> b!805507 (= c!88134 (= lt!360679 lt!360610))))

(declare-fun d!103499 () Bool)

(declare-fun lt!360678 () SeekEntryResult!8573)

(assert (=> d!103499 (and (or (is-Undefined!8573 lt!360678) (not (is-Found!8573 lt!360678)) (and (bvsge (index!36660 lt!360678) #b00000000000000000000000000000000) (bvslt (index!36660 lt!360678) (size!21396 lt!360612)))) (or (is-Undefined!8573 lt!360678) (is-Found!8573 lt!360678) (not (is-MissingVacant!8573 lt!360678)) (not (= (index!36662 lt!360678) vacantAfter!23)) (and (bvsge (index!36662 lt!360678) #b00000000000000000000000000000000) (bvslt (index!36662 lt!360678) (size!21396 lt!360612)))) (or (is-Undefined!8573 lt!360678) (ite (is-Found!8573 lt!360678) (= (select (arr!20975 lt!360612) (index!36660 lt!360678)) lt!360610) (and (is-MissingVacant!8573 lt!360678) (= (index!36662 lt!360678) vacantAfter!23) (= (select (arr!20975 lt!360612) (index!36662 lt!360678)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103499 (= lt!360678 e!446117)))

(declare-fun c!88135 () Bool)

(assert (=> d!103499 (= c!88135 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103499 (= lt!360679 (select (arr!20975 lt!360612) index!1236))))

(assert (=> d!103499 (validMask!0 mask!3266)))

(assert (=> d!103499 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360610 lt!360612 mask!3266) lt!360678)))

(declare-fun b!805508 () Bool)

(assert (=> b!805508 (= e!446118 (MissingVacant!8573 vacantAfter!23))))

(declare-fun b!805509 () Bool)

(assert (=> b!805509 (= e!446119 (Found!8573 index!1236))))

(declare-fun b!805510 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!805510 (= e!446118 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!360610 lt!360612 mask!3266))))

(declare-fun b!805511 () Bool)

(assert (=> b!805511 (= e!446117 Undefined!8573)))

(assert (= (and d!103499 c!88135) b!805511))

(assert (= (and d!103499 (not c!88135)) b!805507))

(assert (= (and b!805507 c!88134) b!805509))

(assert (= (and b!805507 (not c!88134)) b!805506))

(assert (= (and b!805506 c!88136) b!805508))

(assert (= (and b!805506 (not c!88136)) b!805510))

(declare-fun m!747523 () Bool)

(assert (=> d!103499 m!747523))

(declare-fun m!747525 () Bool)

(assert (=> d!103499 m!747525))

(declare-fun m!747527 () Bool)

(assert (=> d!103499 m!747527))

(assert (=> d!103499 m!747381))

(declare-fun m!747529 () Bool)

(assert (=> b!805510 m!747529))

(assert (=> b!805510 m!747529))

(declare-fun m!747531 () Bool)

(assert (=> b!805510 m!747531))

(assert (=> b!805318 d!103499))

(declare-fun b!805512 () Bool)

(declare-fun e!446120 () SeekEntryResult!8573)

(declare-fun lt!360680 () SeekEntryResult!8573)

(assert (=> b!805512 (= e!446120 (MissingZero!8573 (index!36661 lt!360680)))))

(declare-fun b!805513 () Bool)

(declare-fun c!88139 () Bool)

(declare-fun lt!360682 () (_ BitVec 64))

(assert (=> b!805513 (= c!88139 (= lt!360682 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446122 () SeekEntryResult!8573)

(assert (=> b!805513 (= e!446122 e!446120)))

(declare-fun d!103515 () Bool)

(declare-fun lt!360681 () SeekEntryResult!8573)

(assert (=> d!103515 (and (or (is-Undefined!8573 lt!360681) (not (is-Found!8573 lt!360681)) (and (bvsge (index!36660 lt!360681) #b00000000000000000000000000000000) (bvslt (index!36660 lt!360681) (size!21396 lt!360612)))) (or (is-Undefined!8573 lt!360681) (is-Found!8573 lt!360681) (not (is-MissingZero!8573 lt!360681)) (and (bvsge (index!36659 lt!360681) #b00000000000000000000000000000000) (bvslt (index!36659 lt!360681) (size!21396 lt!360612)))) (or (is-Undefined!8573 lt!360681) (is-Found!8573 lt!360681) (is-MissingZero!8573 lt!360681) (not (is-MissingVacant!8573 lt!360681)) (and (bvsge (index!36662 lt!360681) #b00000000000000000000000000000000) (bvslt (index!36662 lt!360681) (size!21396 lt!360612)))) (or (is-Undefined!8573 lt!360681) (ite (is-Found!8573 lt!360681) (= (select (arr!20975 lt!360612) (index!36660 lt!360681)) lt!360610) (ite (is-MissingZero!8573 lt!360681) (= (select (arr!20975 lt!360612) (index!36659 lt!360681)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8573 lt!360681) (= (select (arr!20975 lt!360612) (index!36662 lt!360681)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!446121 () SeekEntryResult!8573)

(assert (=> d!103515 (= lt!360681 e!446121)))

(declare-fun c!88137 () Bool)

(assert (=> d!103515 (= c!88137 (and (is-Intermediate!8573 lt!360680) (undefined!9385 lt!360680)))))

(assert (=> d!103515 (= lt!360680 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!360610 mask!3266) lt!360610 lt!360612 mask!3266))))

(assert (=> d!103515 (validMask!0 mask!3266)))

(assert (=> d!103515 (= (seekEntryOrOpen!0 lt!360610 lt!360612 mask!3266) lt!360681)))

(declare-fun b!805514 () Bool)

(assert (=> b!805514 (= e!446121 e!446122)))

(assert (=> b!805514 (= lt!360682 (select (arr!20975 lt!360612) (index!36661 lt!360680)))))

(declare-fun c!88138 () Bool)

(assert (=> b!805514 (= c!88138 (= lt!360682 lt!360610))))

(declare-fun b!805515 () Bool)

(assert (=> b!805515 (= e!446121 Undefined!8573)))

(declare-fun b!805516 () Bool)

(assert (=> b!805516 (= e!446120 (seekKeyOrZeroReturnVacant!0 (x!67500 lt!360680) (index!36661 lt!360680) (index!36661 lt!360680) lt!360610 lt!360612 mask!3266))))

(declare-fun b!805517 () Bool)

(assert (=> b!805517 (= e!446122 (Found!8573 (index!36661 lt!360680)))))

(assert (= (and d!103515 c!88137) b!805515))

(assert (= (and d!103515 (not c!88137)) b!805514))

(assert (= (and b!805514 c!88138) b!805517))

(assert (= (and b!805514 (not c!88138)) b!805513))

(assert (= (and b!805513 c!88139) b!805512))

(assert (= (and b!805513 (not c!88139)) b!805516))

(declare-fun m!747533 () Bool)

(assert (=> d!103515 m!747533))

(declare-fun m!747535 () Bool)

(assert (=> d!103515 m!747535))

(assert (=> d!103515 m!747535))

(declare-fun m!747537 () Bool)

(assert (=> d!103515 m!747537))

(declare-fun m!747539 () Bool)

(assert (=> d!103515 m!747539))

(declare-fun m!747541 () Bool)

(assert (=> d!103515 m!747541))

(assert (=> d!103515 m!747381))

(declare-fun m!747543 () Bool)

(assert (=> b!805514 m!747543))

(declare-fun m!747545 () Bool)

(assert (=> b!805516 m!747545))

(assert (=> b!805318 d!103515))

(declare-fun d!103517 () Bool)

(assert (=> d!103517 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!805319 d!103517))

(declare-fun b!805518 () Bool)

(declare-fun c!88142 () Bool)

(declare-fun lt!360684 () (_ BitVec 64))

(assert (=> b!805518 (= c!88142 (= lt!360684 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446125 () SeekEntryResult!8573)

(declare-fun e!446124 () SeekEntryResult!8573)

(assert (=> b!805518 (= e!446125 e!446124)))

(declare-fun b!805519 () Bool)

(declare-fun e!446123 () SeekEntryResult!8573)

(assert (=> b!805519 (= e!446123 e!446125)))

(declare-fun c!88140 () Bool)

(assert (=> b!805519 (= c!88140 (= lt!360684 (select (arr!20975 a!3170) j!153)))))

(declare-fun lt!360683 () SeekEntryResult!8573)

(declare-fun d!103519 () Bool)

(assert (=> d!103519 (and (or (is-Undefined!8573 lt!360683) (not (is-Found!8573 lt!360683)) (and (bvsge (index!36660 lt!360683) #b00000000000000000000000000000000) (bvslt (index!36660 lt!360683) (size!21396 a!3170)))) (or (is-Undefined!8573 lt!360683) (is-Found!8573 lt!360683) (not (is-MissingVacant!8573 lt!360683)) (not (= (index!36662 lt!360683) vacantBefore!23)) (and (bvsge (index!36662 lt!360683) #b00000000000000000000000000000000) (bvslt (index!36662 lt!360683) (size!21396 a!3170)))) (or (is-Undefined!8573 lt!360683) (ite (is-Found!8573 lt!360683) (= (select (arr!20975 a!3170) (index!36660 lt!360683)) (select (arr!20975 a!3170) j!153)) (and (is-MissingVacant!8573 lt!360683) (= (index!36662 lt!360683) vacantBefore!23) (= (select (arr!20975 a!3170) (index!36662 lt!360683)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103519 (= lt!360683 e!446123)))

(declare-fun c!88141 () Bool)

(assert (=> d!103519 (= c!88141 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103519 (= lt!360684 (select (arr!20975 a!3170) index!1236))))

(assert (=> d!103519 (validMask!0 mask!3266)))

(assert (=> d!103519 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20975 a!3170) j!153) a!3170 mask!3266) lt!360683)))

(declare-fun b!805520 () Bool)

(assert (=> b!805520 (= e!446124 (MissingVacant!8573 vacantBefore!23))))

(declare-fun b!805521 () Bool)

(assert (=> b!805521 (= e!446125 (Found!8573 index!1236))))

(declare-fun b!805522 () Bool)

(assert (=> b!805522 (= e!446124 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!20975 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805523 () Bool)

(assert (=> b!805523 (= e!446123 Undefined!8573)))

(assert (= (and d!103519 c!88141) b!805523))

(assert (= (and d!103519 (not c!88141)) b!805519))

(assert (= (and b!805519 c!88140) b!805521))

(assert (= (and b!805519 (not c!88140)) b!805518))

(assert (= (and b!805518 c!88142) b!805520))

(assert (= (and b!805518 (not c!88142)) b!805522))

(declare-fun m!747547 () Bool)

(assert (=> d!103519 m!747547))

(declare-fun m!747549 () Bool)

(assert (=> d!103519 m!747549))

(assert (=> d!103519 m!747389))

(assert (=> d!103519 m!747381))

(assert (=> b!805522 m!747529))

(assert (=> b!805522 m!747529))

(assert (=> b!805522 m!747369))

(declare-fun m!747551 () Bool)

(assert (=> b!805522 m!747551))

(assert (=> b!805320 d!103519))

(declare-fun b!805524 () Bool)

(declare-fun e!446126 () SeekEntryResult!8573)

(declare-fun lt!360685 () SeekEntryResult!8573)

(assert (=> b!805524 (= e!446126 (MissingZero!8573 (index!36661 lt!360685)))))

(declare-fun b!805525 () Bool)

(declare-fun c!88145 () Bool)

(declare-fun lt!360687 () (_ BitVec 64))

(assert (=> b!805525 (= c!88145 (= lt!360687 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446128 () SeekEntryResult!8573)

(assert (=> b!805525 (= e!446128 e!446126)))

(declare-fun d!103521 () Bool)

(declare-fun lt!360686 () SeekEntryResult!8573)

(assert (=> d!103521 (and (or (is-Undefined!8573 lt!360686) (not (is-Found!8573 lt!360686)) (and (bvsge (index!36660 lt!360686) #b00000000000000000000000000000000) (bvslt (index!36660 lt!360686) (size!21396 a!3170)))) (or (is-Undefined!8573 lt!360686) (is-Found!8573 lt!360686) (not (is-MissingZero!8573 lt!360686)) (and (bvsge (index!36659 lt!360686) #b00000000000000000000000000000000) (bvslt (index!36659 lt!360686) (size!21396 a!3170)))) (or (is-Undefined!8573 lt!360686) (is-Found!8573 lt!360686) (is-MissingZero!8573 lt!360686) (not (is-MissingVacant!8573 lt!360686)) (and (bvsge (index!36662 lt!360686) #b00000000000000000000000000000000) (bvslt (index!36662 lt!360686) (size!21396 a!3170)))) (or (is-Undefined!8573 lt!360686) (ite (is-Found!8573 lt!360686) (= (select (arr!20975 a!3170) (index!36660 lt!360686)) (select (arr!20975 a!3170) j!153)) (ite (is-MissingZero!8573 lt!360686) (= (select (arr!20975 a!3170) (index!36659 lt!360686)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8573 lt!360686) (= (select (arr!20975 a!3170) (index!36662 lt!360686)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!446127 () SeekEntryResult!8573)

(assert (=> d!103521 (= lt!360686 e!446127)))

(declare-fun c!88143 () Bool)

(assert (=> d!103521 (= c!88143 (and (is-Intermediate!8573 lt!360685) (undefined!9385 lt!360685)))))

(assert (=> d!103521 (= lt!360685 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20975 a!3170) j!153) mask!3266) (select (arr!20975 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103521 (validMask!0 mask!3266)))

(assert (=> d!103521 (= (seekEntryOrOpen!0 (select (arr!20975 a!3170) j!153) a!3170 mask!3266) lt!360686)))

(declare-fun b!805526 () Bool)

(assert (=> b!805526 (= e!446127 e!446128)))

(assert (=> b!805526 (= lt!360687 (select (arr!20975 a!3170) (index!36661 lt!360685)))))

(declare-fun c!88144 () Bool)

(assert (=> b!805526 (= c!88144 (= lt!360687 (select (arr!20975 a!3170) j!153)))))

(declare-fun b!805527 () Bool)

(assert (=> b!805527 (= e!446127 Undefined!8573)))

(declare-fun b!805528 () Bool)

(assert (=> b!805528 (= e!446126 (seekKeyOrZeroReturnVacant!0 (x!67500 lt!360685) (index!36661 lt!360685) (index!36661 lt!360685) (select (arr!20975 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805529 () Bool)

(assert (=> b!805529 (= e!446128 (Found!8573 (index!36661 lt!360685)))))

(assert (= (and d!103521 c!88143) b!805527))

(assert (= (and d!103521 (not c!88143)) b!805526))

(assert (= (and b!805526 c!88144) b!805529))

(assert (= (and b!805526 (not c!88144)) b!805525))

(assert (= (and b!805525 c!88145) b!805524))

(assert (= (and b!805525 (not c!88145)) b!805528))

(declare-fun m!747553 () Bool)

(assert (=> d!103521 m!747553))

(assert (=> d!103521 m!747369))

(declare-fun m!747555 () Bool)

(assert (=> d!103521 m!747555))

(assert (=> d!103521 m!747555))

(assert (=> d!103521 m!747369))

(declare-fun m!747557 () Bool)

(assert (=> d!103521 m!747557))

(declare-fun m!747559 () Bool)

(assert (=> d!103521 m!747559))

(declare-fun m!747561 () Bool)

(assert (=> d!103521 m!747561))

(assert (=> d!103521 m!747381))

(declare-fun m!747563 () Bool)

(assert (=> b!805526 m!747563))

(assert (=> b!805528 m!747369))

(declare-fun m!747565 () Bool)

(assert (=> b!805528 m!747565))

(assert (=> b!805320 d!103521))

(push 1)

