; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69054 () Bool)

(assert start!69054)

(declare-fun res!549975 () Bool)

(declare-fun e!445987 () Bool)

(assert (=> start!69054 (=> (not res!549975) (not e!445987))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69054 (= res!549975 (validMask!0 mask!3266))))

(assert (=> start!69054 e!445987))

(assert (=> start!69054 true))

(declare-datatypes ((array!43795 0))(
  ( (array!43796 (arr!20974 (Array (_ BitVec 32) (_ BitVec 64))) (size!21395 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43795)

(declare-fun array_inv!16748 (array!43795) Bool)

(assert (=> start!69054 (array_inv!16748 a!3170)))

(declare-fun b!805284 () Bool)

(declare-fun e!445988 () Bool)

(declare-fun e!445990 () Bool)

(assert (=> b!805284 (= e!445988 e!445990)))

(declare-fun res!549979 () Bool)

(assert (=> b!805284 (=> (not res!549979) (not e!445990))))

(declare-datatypes ((SeekEntryResult!8572 0))(
  ( (MissingZero!8572 (index!36655 (_ BitVec 32))) (Found!8572 (index!36656 (_ BitVec 32))) (Intermediate!8572 (undefined!9384 Bool) (index!36657 (_ BitVec 32)) (x!67499 (_ BitVec 32))) (Undefined!8572) (MissingVacant!8572 (index!36658 (_ BitVec 32))) )
))
(declare-fun lt!360592 () SeekEntryResult!8572)

(declare-fun lt!360590 () SeekEntryResult!8572)

(assert (=> b!805284 (= res!549979 (= lt!360592 lt!360590))))

(declare-fun lt!360587 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!360589 () array!43795)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43795 (_ BitVec 32)) SeekEntryResult!8572)

(assert (=> b!805284 (= lt!360590 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360587 lt!360589 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43795 (_ BitVec 32)) SeekEntryResult!8572)

(assert (=> b!805284 (= lt!360592 (seekEntryOrOpen!0 lt!360587 lt!360589 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!805284 (= lt!360587 (select (store (arr!20974 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!805284 (= lt!360589 (array!43796 (store (arr!20974 a!3170) i!1163 k0!2044) (size!21395 a!3170)))))

(declare-fun b!805285 () Bool)

(declare-fun res!549978 () Bool)

(assert (=> b!805285 (=> (not res!549978) (not e!445988))))

(declare-datatypes ((List!14990 0))(
  ( (Nil!14987) (Cons!14986 (h!16115 (_ BitVec 64)) (t!21313 List!14990)) )
))
(declare-fun arrayNoDuplicates!0 (array!43795 (_ BitVec 32) List!14990) Bool)

(assert (=> b!805285 (= res!549978 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14987))))

(declare-fun b!805286 () Bool)

(declare-fun res!549974 () Bool)

(assert (=> b!805286 (=> (not res!549974) (not e!445988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43795 (_ BitVec 32)) Bool)

(assert (=> b!805286 (= res!549974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805287 () Bool)

(declare-fun res!549973 () Bool)

(assert (=> b!805287 (=> (not res!549973) (not e!445987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805287 (= res!549973 (validKeyInArray!0 (select (arr!20974 a!3170) j!153)))))

(declare-fun b!805288 () Bool)

(declare-fun res!549976 () Bool)

(assert (=> b!805288 (=> (not res!549976) (not e!445988))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!805288 (= res!549976 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21395 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20974 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21395 a!3170)) (= (select (arr!20974 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805289 () Bool)

(declare-fun res!549982 () Bool)

(assert (=> b!805289 (=> (not res!549982) (not e!445987))))

(declare-fun arrayContainsKey!0 (array!43795 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805289 (= res!549982 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805290 () Bool)

(declare-fun res!549977 () Bool)

(assert (=> b!805290 (=> (not res!549977) (not e!445987))))

(assert (=> b!805290 (= res!549977 (and (= (size!21395 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21395 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21395 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805291 () Bool)

(assert (=> b!805291 (= e!445987 e!445988)))

(declare-fun res!549980 () Bool)

(assert (=> b!805291 (=> (not res!549980) (not e!445988))))

(declare-fun lt!360588 () SeekEntryResult!8572)

(assert (=> b!805291 (= res!549980 (or (= lt!360588 (MissingZero!8572 i!1163)) (= lt!360588 (MissingVacant!8572 i!1163))))))

(assert (=> b!805291 (= lt!360588 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!805292 () Bool)

(declare-fun res!549981 () Bool)

(assert (=> b!805292 (=> (not res!549981) (not e!445987))))

(assert (=> b!805292 (= res!549981 (validKeyInArray!0 k0!2044))))

(declare-fun lt!360586 () SeekEntryResult!8572)

(declare-fun lt!360591 () SeekEntryResult!8572)

(declare-fun b!805293 () Bool)

(assert (=> b!805293 (= e!445990 (and (= lt!360591 lt!360586) (= lt!360586 (Found!8572 j!153)) (= (select (arr!20974 a!3170) index!1236) (select (arr!20974 a!3170) j!153)) (not (= lt!360590 (Found!8572 index!1236)))))))

(assert (=> b!805293 (= lt!360586 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20974 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!805293 (= lt!360591 (seekEntryOrOpen!0 (select (arr!20974 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!69054 res!549975) b!805290))

(assert (= (and b!805290 res!549977) b!805287))

(assert (= (and b!805287 res!549973) b!805292))

(assert (= (and b!805292 res!549981) b!805289))

(assert (= (and b!805289 res!549982) b!805291))

(assert (= (and b!805291 res!549980) b!805286))

(assert (= (and b!805286 res!549974) b!805285))

(assert (= (and b!805285 res!549978) b!805288))

(assert (= (and b!805288 res!549976) b!805284))

(assert (= (and b!805284 res!549979) b!805293))

(declare-fun m!747331 () Bool)

(assert (=> b!805284 m!747331))

(declare-fun m!747333 () Bool)

(assert (=> b!805284 m!747333))

(declare-fun m!747335 () Bool)

(assert (=> b!805284 m!747335))

(declare-fun m!747337 () Bool)

(assert (=> b!805284 m!747337))

(declare-fun m!747339 () Bool)

(assert (=> b!805286 m!747339))

(declare-fun m!747341 () Bool)

(assert (=> b!805285 m!747341))

(declare-fun m!747343 () Bool)

(assert (=> b!805288 m!747343))

(declare-fun m!747345 () Bool)

(assert (=> b!805288 m!747345))

(declare-fun m!747347 () Bool)

(assert (=> b!805289 m!747347))

(declare-fun m!747349 () Bool)

(assert (=> b!805287 m!747349))

(assert (=> b!805287 m!747349))

(declare-fun m!747351 () Bool)

(assert (=> b!805287 m!747351))

(declare-fun m!747353 () Bool)

(assert (=> b!805293 m!747353))

(assert (=> b!805293 m!747349))

(assert (=> b!805293 m!747349))

(declare-fun m!747355 () Bool)

(assert (=> b!805293 m!747355))

(assert (=> b!805293 m!747349))

(declare-fun m!747357 () Bool)

(assert (=> b!805293 m!747357))

(declare-fun m!747359 () Bool)

(assert (=> b!805291 m!747359))

(declare-fun m!747361 () Bool)

(assert (=> start!69054 m!747361))

(declare-fun m!747363 () Bool)

(assert (=> start!69054 m!747363))

(declare-fun m!747365 () Bool)

(assert (=> b!805292 m!747365))

(check-sat (not b!805286) (not b!805287) (not b!805284) (not b!805291) (not start!69054) (not b!805289) (not b!805285) (not b!805292) (not b!805293))
(check-sat)
(get-model)

(declare-fun d!103469 () Bool)

(declare-fun res!550017 () Bool)

(declare-fun e!446007 () Bool)

(assert (=> d!103469 (=> res!550017 e!446007)))

(assert (=> d!103469 (= res!550017 (= (select (arr!20974 a!3170) #b00000000000000000000000000000000) k0!2044))))

(assert (=> d!103469 (= (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000) e!446007)))

(declare-fun b!805328 () Bool)

(declare-fun e!446008 () Bool)

(assert (=> b!805328 (= e!446007 e!446008)))

(declare-fun res!550018 () Bool)

(assert (=> b!805328 (=> (not res!550018) (not e!446008))))

(assert (=> b!805328 (= res!550018 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21395 a!3170)))))

(declare-fun b!805329 () Bool)

(assert (=> b!805329 (= e!446008 (arrayContainsKey!0 a!3170 k0!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103469 (not res!550017)) b!805328))

(assert (= (and b!805328 res!550018) b!805329))

(declare-fun m!747403 () Bool)

(assert (=> d!103469 m!747403))

(declare-fun m!747405 () Bool)

(assert (=> b!805329 m!747405))

(assert (=> b!805289 d!103469))

(declare-fun b!805342 () Bool)

(declare-fun e!446015 () SeekEntryResult!8572)

(assert (=> b!805342 (= e!446015 (Found!8572 index!1236))))

(declare-fun b!805343 () Bool)

(declare-fun e!446017 () SeekEntryResult!8572)

(assert (=> b!805343 (= e!446017 e!446015)))

(declare-fun c!88073 () Bool)

(declare-fun lt!360619 () (_ BitVec 64))

(assert (=> b!805343 (= c!88073 (= lt!360619 lt!360587))))

(declare-fun b!805344 () Bool)

(declare-fun e!446016 () SeekEntryResult!8572)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!805344 (= e!446016 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!360587 lt!360589 mask!3266))))

(declare-fun lt!360618 () SeekEntryResult!8572)

(declare-fun d!103471 () Bool)

(get-info :version)

(assert (=> d!103471 (and (or ((_ is Undefined!8572) lt!360618) (not ((_ is Found!8572) lt!360618)) (and (bvsge (index!36656 lt!360618) #b00000000000000000000000000000000) (bvslt (index!36656 lt!360618) (size!21395 lt!360589)))) (or ((_ is Undefined!8572) lt!360618) ((_ is Found!8572) lt!360618) (not ((_ is MissingVacant!8572) lt!360618)) (not (= (index!36658 lt!360618) vacantAfter!23)) (and (bvsge (index!36658 lt!360618) #b00000000000000000000000000000000) (bvslt (index!36658 lt!360618) (size!21395 lt!360589)))) (or ((_ is Undefined!8572) lt!360618) (ite ((_ is Found!8572) lt!360618) (= (select (arr!20974 lt!360589) (index!36656 lt!360618)) lt!360587) (and ((_ is MissingVacant!8572) lt!360618) (= (index!36658 lt!360618) vacantAfter!23) (= (select (arr!20974 lt!360589) (index!36658 lt!360618)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103471 (= lt!360618 e!446017)))

(declare-fun c!88072 () Bool)

(assert (=> d!103471 (= c!88072 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103471 (= lt!360619 (select (arr!20974 lt!360589) index!1236))))

(assert (=> d!103471 (validMask!0 mask!3266)))

(assert (=> d!103471 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360587 lt!360589 mask!3266) lt!360618)))

(declare-fun b!805345 () Bool)

(assert (=> b!805345 (= e!446016 (MissingVacant!8572 vacantAfter!23))))

(declare-fun b!805346 () Bool)

(assert (=> b!805346 (= e!446017 Undefined!8572)))

(declare-fun b!805347 () Bool)

(declare-fun c!88074 () Bool)

(assert (=> b!805347 (= c!88074 (= lt!360619 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!805347 (= e!446015 e!446016)))

(assert (= (and d!103471 c!88072) b!805346))

(assert (= (and d!103471 (not c!88072)) b!805343))

(assert (= (and b!805343 c!88073) b!805342))

(assert (= (and b!805343 (not c!88073)) b!805347))

(assert (= (and b!805347 c!88074) b!805345))

(assert (= (and b!805347 (not c!88074)) b!805344))

(declare-fun m!747407 () Bool)

(assert (=> b!805344 m!747407))

(assert (=> b!805344 m!747407))

(declare-fun m!747409 () Bool)

(assert (=> b!805344 m!747409))

(declare-fun m!747411 () Bool)

(assert (=> d!103471 m!747411))

(declare-fun m!747413 () Bool)

(assert (=> d!103471 m!747413))

(declare-fun m!747415 () Bool)

(assert (=> d!103471 m!747415))

(assert (=> d!103471 m!747361))

(assert (=> b!805284 d!103471))

(declare-fun b!805377 () Bool)

(declare-fun e!446038 () SeekEntryResult!8572)

(assert (=> b!805377 (= e!446038 Undefined!8572)))

(declare-fun b!805378 () Bool)

(declare-fun c!88085 () Bool)

(declare-fun lt!360630 () (_ BitVec 64))

(assert (=> b!805378 (= c!88085 (= lt!360630 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446036 () SeekEntryResult!8572)

(declare-fun e!446037 () SeekEntryResult!8572)

(assert (=> b!805378 (= e!446036 e!446037)))

(declare-fun b!805379 () Bool)

(declare-fun lt!360632 () SeekEntryResult!8572)

(assert (=> b!805379 (= e!446037 (MissingZero!8572 (index!36657 lt!360632)))))

(declare-fun b!805380 () Bool)

(assert (=> b!805380 (= e!446038 e!446036)))

(assert (=> b!805380 (= lt!360630 (select (arr!20974 lt!360589) (index!36657 lt!360632)))))

(declare-fun c!88084 () Bool)

(assert (=> b!805380 (= c!88084 (= lt!360630 lt!360587))))

(declare-fun d!103473 () Bool)

(declare-fun lt!360631 () SeekEntryResult!8572)

(assert (=> d!103473 (and (or ((_ is Undefined!8572) lt!360631) (not ((_ is Found!8572) lt!360631)) (and (bvsge (index!36656 lt!360631) #b00000000000000000000000000000000) (bvslt (index!36656 lt!360631) (size!21395 lt!360589)))) (or ((_ is Undefined!8572) lt!360631) ((_ is Found!8572) lt!360631) (not ((_ is MissingZero!8572) lt!360631)) (and (bvsge (index!36655 lt!360631) #b00000000000000000000000000000000) (bvslt (index!36655 lt!360631) (size!21395 lt!360589)))) (or ((_ is Undefined!8572) lt!360631) ((_ is Found!8572) lt!360631) ((_ is MissingZero!8572) lt!360631) (not ((_ is MissingVacant!8572) lt!360631)) (and (bvsge (index!36658 lt!360631) #b00000000000000000000000000000000) (bvslt (index!36658 lt!360631) (size!21395 lt!360589)))) (or ((_ is Undefined!8572) lt!360631) (ite ((_ is Found!8572) lt!360631) (= (select (arr!20974 lt!360589) (index!36656 lt!360631)) lt!360587) (ite ((_ is MissingZero!8572) lt!360631) (= (select (arr!20974 lt!360589) (index!36655 lt!360631)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8572) lt!360631) (= (select (arr!20974 lt!360589) (index!36658 lt!360631)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103473 (= lt!360631 e!446038)))

(declare-fun c!88086 () Bool)

(assert (=> d!103473 (= c!88086 (and ((_ is Intermediate!8572) lt!360632) (undefined!9384 lt!360632)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43795 (_ BitVec 32)) SeekEntryResult!8572)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103473 (= lt!360632 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!360587 mask!3266) lt!360587 lt!360589 mask!3266))))

(assert (=> d!103473 (validMask!0 mask!3266)))

(assert (=> d!103473 (= (seekEntryOrOpen!0 lt!360587 lt!360589 mask!3266) lt!360631)))

(declare-fun b!805381 () Bool)

(assert (=> b!805381 (= e!446036 (Found!8572 (index!36657 lt!360632)))))

(declare-fun b!805382 () Bool)

(assert (=> b!805382 (= e!446037 (seekKeyOrZeroReturnVacant!0 (x!67499 lt!360632) (index!36657 lt!360632) (index!36657 lt!360632) lt!360587 lt!360589 mask!3266))))

(assert (= (and d!103473 c!88086) b!805377))

(assert (= (and d!103473 (not c!88086)) b!805380))

(assert (= (and b!805380 c!88084) b!805381))

(assert (= (and b!805380 (not c!88084)) b!805378))

(assert (= (and b!805378 c!88085) b!805379))

(assert (= (and b!805378 (not c!88085)) b!805382))

(declare-fun m!747425 () Bool)

(assert (=> b!805380 m!747425))

(declare-fun m!747427 () Bool)

(assert (=> d!103473 m!747427))

(declare-fun m!747429 () Bool)

(assert (=> d!103473 m!747429))

(assert (=> d!103473 m!747429))

(declare-fun m!747431 () Bool)

(assert (=> d!103473 m!747431))

(declare-fun m!747433 () Bool)

(assert (=> d!103473 m!747433))

(assert (=> d!103473 m!747361))

(declare-fun m!747435 () Bool)

(assert (=> d!103473 m!747435))

(declare-fun m!747437 () Bool)

(assert (=> b!805382 m!747437))

(assert (=> b!805284 d!103473))

(declare-fun b!805421 () Bool)

(declare-fun e!446064 () Bool)

(declare-fun contains!4123 (List!14990 (_ BitVec 64)) Bool)

(assert (=> b!805421 (= e!446064 (contains!4123 Nil!14987 (select (arr!20974 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!805422 () Bool)

(declare-fun e!446063 () Bool)

(declare-fun e!446065 () Bool)

(assert (=> b!805422 (= e!446063 e!446065)))

(declare-fun res!550035 () Bool)

(assert (=> b!805422 (=> (not res!550035) (not e!446065))))

(assert (=> b!805422 (= res!550035 (not e!446064))))

(declare-fun res!550036 () Bool)

(assert (=> b!805422 (=> (not res!550036) (not e!446064))))

(assert (=> b!805422 (= res!550036 (validKeyInArray!0 (select (arr!20974 a!3170) #b00000000000000000000000000000000)))))

(declare-fun bm!35349 () Bool)

(declare-fun call!35352 () Bool)

(declare-fun c!88104 () Bool)

(assert (=> bm!35349 (= call!35352 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88104 (Cons!14986 (select (arr!20974 a!3170) #b00000000000000000000000000000000) Nil!14987) Nil!14987)))))

(declare-fun b!805423 () Bool)

(declare-fun e!446062 () Bool)

(assert (=> b!805423 (= e!446062 call!35352)))

(declare-fun d!103487 () Bool)

(declare-fun res!550034 () Bool)

(assert (=> d!103487 (=> res!550034 e!446063)))

(assert (=> d!103487 (= res!550034 (bvsge #b00000000000000000000000000000000 (size!21395 a!3170)))))

(assert (=> d!103487 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14987) e!446063)))

(declare-fun b!805424 () Bool)

(assert (=> b!805424 (= e!446062 call!35352)))

(declare-fun b!805425 () Bool)

(assert (=> b!805425 (= e!446065 e!446062)))

(assert (=> b!805425 (= c!88104 (validKeyInArray!0 (select (arr!20974 a!3170) #b00000000000000000000000000000000)))))

(assert (= (and d!103487 (not res!550034)) b!805422))

(assert (= (and b!805422 res!550036) b!805421))

(assert (= (and b!805422 res!550035) b!805425))

(assert (= (and b!805425 c!88104) b!805424))

(assert (= (and b!805425 (not c!88104)) b!805423))

(assert (= (or b!805424 b!805423) bm!35349))

(assert (=> b!805421 m!747403))

(assert (=> b!805421 m!747403))

(declare-fun m!747453 () Bool)

(assert (=> b!805421 m!747453))

(assert (=> b!805422 m!747403))

(assert (=> b!805422 m!747403))

(declare-fun m!747455 () Bool)

(assert (=> b!805422 m!747455))

(assert (=> bm!35349 m!747403))

(declare-fun m!747457 () Bool)

(assert (=> bm!35349 m!747457))

(assert (=> b!805425 m!747403))

(assert (=> b!805425 m!747403))

(assert (=> b!805425 m!747455))

(assert (=> b!805285 d!103487))

(declare-fun d!103491 () Bool)

(assert (=> d!103491 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69054 d!103491))

(declare-fun d!103501 () Bool)

(assert (=> d!103501 (= (array_inv!16748 a!3170) (bvsge (size!21395 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69054 d!103501))

(declare-fun b!805462 () Bool)

(declare-fun e!446092 () SeekEntryResult!8572)

(assert (=> b!805462 (= e!446092 Undefined!8572)))

(declare-fun b!805463 () Bool)

(declare-fun c!88118 () Bool)

(declare-fun lt!360660 () (_ BitVec 64))

(assert (=> b!805463 (= c!88118 (= lt!360660 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446090 () SeekEntryResult!8572)

(declare-fun e!446091 () SeekEntryResult!8572)

(assert (=> b!805463 (= e!446090 e!446091)))

(declare-fun b!805464 () Bool)

(declare-fun lt!360662 () SeekEntryResult!8572)

(assert (=> b!805464 (= e!446091 (MissingZero!8572 (index!36657 lt!360662)))))

(declare-fun b!805465 () Bool)

(assert (=> b!805465 (= e!446092 e!446090)))

(assert (=> b!805465 (= lt!360660 (select (arr!20974 a!3170) (index!36657 lt!360662)))))

(declare-fun c!88117 () Bool)

(assert (=> b!805465 (= c!88117 (= lt!360660 k0!2044))))

(declare-fun d!103503 () Bool)

(declare-fun lt!360661 () SeekEntryResult!8572)

(assert (=> d!103503 (and (or ((_ is Undefined!8572) lt!360661) (not ((_ is Found!8572) lt!360661)) (and (bvsge (index!36656 lt!360661) #b00000000000000000000000000000000) (bvslt (index!36656 lt!360661) (size!21395 a!3170)))) (or ((_ is Undefined!8572) lt!360661) ((_ is Found!8572) lt!360661) (not ((_ is MissingZero!8572) lt!360661)) (and (bvsge (index!36655 lt!360661) #b00000000000000000000000000000000) (bvslt (index!36655 lt!360661) (size!21395 a!3170)))) (or ((_ is Undefined!8572) lt!360661) ((_ is Found!8572) lt!360661) ((_ is MissingZero!8572) lt!360661) (not ((_ is MissingVacant!8572) lt!360661)) (and (bvsge (index!36658 lt!360661) #b00000000000000000000000000000000) (bvslt (index!36658 lt!360661) (size!21395 a!3170)))) (or ((_ is Undefined!8572) lt!360661) (ite ((_ is Found!8572) lt!360661) (= (select (arr!20974 a!3170) (index!36656 lt!360661)) k0!2044) (ite ((_ is MissingZero!8572) lt!360661) (= (select (arr!20974 a!3170) (index!36655 lt!360661)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8572) lt!360661) (= (select (arr!20974 a!3170) (index!36658 lt!360661)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103503 (= lt!360661 e!446092)))

(declare-fun c!88119 () Bool)

(assert (=> d!103503 (= c!88119 (and ((_ is Intermediate!8572) lt!360662) (undefined!9384 lt!360662)))))

(assert (=> d!103503 (= lt!360662 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2044 mask!3266) k0!2044 a!3170 mask!3266))))

(assert (=> d!103503 (validMask!0 mask!3266)))

(assert (=> d!103503 (= (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266) lt!360661)))

(declare-fun b!805466 () Bool)

(assert (=> b!805466 (= e!446090 (Found!8572 (index!36657 lt!360662)))))

(declare-fun b!805467 () Bool)

(assert (=> b!805467 (= e!446091 (seekKeyOrZeroReturnVacant!0 (x!67499 lt!360662) (index!36657 lt!360662) (index!36657 lt!360662) k0!2044 a!3170 mask!3266))))

(assert (= (and d!103503 c!88119) b!805462))

(assert (= (and d!103503 (not c!88119)) b!805465))

(assert (= (and b!805465 c!88117) b!805466))

(assert (= (and b!805465 (not c!88117)) b!805463))

(assert (= (and b!805463 c!88118) b!805464))

(assert (= (and b!805463 (not c!88118)) b!805467))

(declare-fun m!747483 () Bool)

(assert (=> b!805465 m!747483))

(declare-fun m!747485 () Bool)

(assert (=> d!103503 m!747485))

(declare-fun m!747487 () Bool)

(assert (=> d!103503 m!747487))

(assert (=> d!103503 m!747487))

(declare-fun m!747489 () Bool)

(assert (=> d!103503 m!747489))

(declare-fun m!747491 () Bool)

(assert (=> d!103503 m!747491))

(assert (=> d!103503 m!747361))

(declare-fun m!747493 () Bool)

(assert (=> d!103503 m!747493))

(declare-fun m!747495 () Bool)

(assert (=> b!805467 m!747495))

(assert (=> b!805291 d!103503))

(declare-fun b!805530 () Bool)

(declare-fun e!446130 () Bool)

(declare-fun call!35358 () Bool)

(assert (=> b!805530 (= e!446130 call!35358)))

(declare-fun d!103505 () Bool)

(declare-fun res!550060 () Bool)

(declare-fun e!446129 () Bool)

(assert (=> d!103505 (=> res!550060 e!446129)))

(assert (=> d!103505 (= res!550060 (bvsge #b00000000000000000000000000000000 (size!21395 a!3170)))))

(assert (=> d!103505 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!446129)))

(declare-fun b!805531 () Bool)

(declare-fun e!446131 () Bool)

(assert (=> b!805531 (= e!446131 e!446130)))

(declare-fun lt!360690 () (_ BitVec 64))

(assert (=> b!805531 (= lt!360690 (select (arr!20974 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27584 0))(
  ( (Unit!27585) )
))
(declare-fun lt!360689 () Unit!27584)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!43795 (_ BitVec 64) (_ BitVec 32)) Unit!27584)

(assert (=> b!805531 (= lt!360689 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!360690 #b00000000000000000000000000000000))))

(assert (=> b!805531 (arrayContainsKey!0 a!3170 lt!360690 #b00000000000000000000000000000000)))

(declare-fun lt!360688 () Unit!27584)

(assert (=> b!805531 (= lt!360688 lt!360689)))

(declare-fun res!550059 () Bool)

(assert (=> b!805531 (= res!550059 (= (seekEntryOrOpen!0 (select (arr!20974 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8572 #b00000000000000000000000000000000)))))

(assert (=> b!805531 (=> (not res!550059) (not e!446130))))

(declare-fun bm!35355 () Bool)

(assert (=> bm!35355 (= call!35358 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!805532 () Bool)

(assert (=> b!805532 (= e!446131 call!35358)))

(declare-fun b!805533 () Bool)

(assert (=> b!805533 (= e!446129 e!446131)))

(declare-fun c!88146 () Bool)

(assert (=> b!805533 (= c!88146 (validKeyInArray!0 (select (arr!20974 a!3170) #b00000000000000000000000000000000)))))

(assert (= (and d!103505 (not res!550060)) b!805533))

(assert (= (and b!805533 c!88146) b!805531))

(assert (= (and b!805533 (not c!88146)) b!805532))

(assert (= (and b!805531 res!550059) b!805530))

(assert (= (or b!805530 b!805532) bm!35355))

(assert (=> b!805531 m!747403))

(declare-fun m!747567 () Bool)

(assert (=> b!805531 m!747567))

(declare-fun m!747569 () Bool)

(assert (=> b!805531 m!747569))

(assert (=> b!805531 m!747403))

(declare-fun m!747571 () Bool)

(assert (=> b!805531 m!747571))

(declare-fun m!747573 () Bool)

(assert (=> bm!35355 m!747573))

(assert (=> b!805533 m!747403))

(assert (=> b!805533 m!747403))

(assert (=> b!805533 m!747455))

(assert (=> b!805286 d!103505))

(declare-fun d!103523 () Bool)

(assert (=> d!103523 (= (validKeyInArray!0 k0!2044) (and (not (= k0!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!805292 d!103523))

(declare-fun d!103525 () Bool)

(assert (=> d!103525 (= (validKeyInArray!0 (select (arr!20974 a!3170) j!153)) (and (not (= (select (arr!20974 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20974 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!805287 d!103525))

(declare-fun b!805534 () Bool)

(declare-fun e!446132 () SeekEntryResult!8572)

(assert (=> b!805534 (= e!446132 (Found!8572 index!1236))))

(declare-fun b!805535 () Bool)

(declare-fun e!446134 () SeekEntryResult!8572)

(assert (=> b!805535 (= e!446134 e!446132)))

(declare-fun lt!360692 () (_ BitVec 64))

(declare-fun c!88148 () Bool)

(assert (=> b!805535 (= c!88148 (= lt!360692 (select (arr!20974 a!3170) j!153)))))

(declare-fun b!805536 () Bool)

(declare-fun e!446133 () SeekEntryResult!8572)

(assert (=> b!805536 (= e!446133 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!20974 a!3170) j!153) a!3170 mask!3266))))

(declare-fun d!103527 () Bool)

(declare-fun lt!360691 () SeekEntryResult!8572)

(assert (=> d!103527 (and (or ((_ is Undefined!8572) lt!360691) (not ((_ is Found!8572) lt!360691)) (and (bvsge (index!36656 lt!360691) #b00000000000000000000000000000000) (bvslt (index!36656 lt!360691) (size!21395 a!3170)))) (or ((_ is Undefined!8572) lt!360691) ((_ is Found!8572) lt!360691) (not ((_ is MissingVacant!8572) lt!360691)) (not (= (index!36658 lt!360691) vacantBefore!23)) (and (bvsge (index!36658 lt!360691) #b00000000000000000000000000000000) (bvslt (index!36658 lt!360691) (size!21395 a!3170)))) (or ((_ is Undefined!8572) lt!360691) (ite ((_ is Found!8572) lt!360691) (= (select (arr!20974 a!3170) (index!36656 lt!360691)) (select (arr!20974 a!3170) j!153)) (and ((_ is MissingVacant!8572) lt!360691) (= (index!36658 lt!360691) vacantBefore!23) (= (select (arr!20974 a!3170) (index!36658 lt!360691)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103527 (= lt!360691 e!446134)))

(declare-fun c!88147 () Bool)

(assert (=> d!103527 (= c!88147 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103527 (= lt!360692 (select (arr!20974 a!3170) index!1236))))

(assert (=> d!103527 (validMask!0 mask!3266)))

(assert (=> d!103527 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20974 a!3170) j!153) a!3170 mask!3266) lt!360691)))

(declare-fun b!805537 () Bool)

(assert (=> b!805537 (= e!446133 (MissingVacant!8572 vacantBefore!23))))

(declare-fun b!805538 () Bool)

(assert (=> b!805538 (= e!446134 Undefined!8572)))

(declare-fun b!805539 () Bool)

(declare-fun c!88149 () Bool)

(assert (=> b!805539 (= c!88149 (= lt!360692 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!805539 (= e!446132 e!446133)))

(assert (= (and d!103527 c!88147) b!805538))

(assert (= (and d!103527 (not c!88147)) b!805535))

(assert (= (and b!805535 c!88148) b!805534))

(assert (= (and b!805535 (not c!88148)) b!805539))

(assert (= (and b!805539 c!88149) b!805537))

(assert (= (and b!805539 (not c!88149)) b!805536))

(assert (=> b!805536 m!747407))

(assert (=> b!805536 m!747407))

(assert (=> b!805536 m!747349))

(declare-fun m!747575 () Bool)

(assert (=> b!805536 m!747575))

(declare-fun m!747577 () Bool)

(assert (=> d!103527 m!747577))

(declare-fun m!747579 () Bool)

(assert (=> d!103527 m!747579))

(assert (=> d!103527 m!747353))

(assert (=> d!103527 m!747361))

(assert (=> b!805293 d!103527))

(declare-fun b!805548 () Bool)

(declare-fun e!446143 () SeekEntryResult!8572)

(assert (=> b!805548 (= e!446143 Undefined!8572)))

(declare-fun b!805549 () Bool)

(declare-fun c!88153 () Bool)

(declare-fun lt!360699 () (_ BitVec 64))

(assert (=> b!805549 (= c!88153 (= lt!360699 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446141 () SeekEntryResult!8572)

(declare-fun e!446142 () SeekEntryResult!8572)

(assert (=> b!805549 (= e!446141 e!446142)))

(declare-fun b!805550 () Bool)

(declare-fun lt!360701 () SeekEntryResult!8572)

(assert (=> b!805550 (= e!446142 (MissingZero!8572 (index!36657 lt!360701)))))

(declare-fun b!805551 () Bool)

(assert (=> b!805551 (= e!446143 e!446141)))

(assert (=> b!805551 (= lt!360699 (select (arr!20974 a!3170) (index!36657 lt!360701)))))

(declare-fun c!88152 () Bool)

(assert (=> b!805551 (= c!88152 (= lt!360699 (select (arr!20974 a!3170) j!153)))))

(declare-fun d!103529 () Bool)

(declare-fun lt!360700 () SeekEntryResult!8572)

(assert (=> d!103529 (and (or ((_ is Undefined!8572) lt!360700) (not ((_ is Found!8572) lt!360700)) (and (bvsge (index!36656 lt!360700) #b00000000000000000000000000000000) (bvslt (index!36656 lt!360700) (size!21395 a!3170)))) (or ((_ is Undefined!8572) lt!360700) ((_ is Found!8572) lt!360700) (not ((_ is MissingZero!8572) lt!360700)) (and (bvsge (index!36655 lt!360700) #b00000000000000000000000000000000) (bvslt (index!36655 lt!360700) (size!21395 a!3170)))) (or ((_ is Undefined!8572) lt!360700) ((_ is Found!8572) lt!360700) ((_ is MissingZero!8572) lt!360700) (not ((_ is MissingVacant!8572) lt!360700)) (and (bvsge (index!36658 lt!360700) #b00000000000000000000000000000000) (bvslt (index!36658 lt!360700) (size!21395 a!3170)))) (or ((_ is Undefined!8572) lt!360700) (ite ((_ is Found!8572) lt!360700) (= (select (arr!20974 a!3170) (index!36656 lt!360700)) (select (arr!20974 a!3170) j!153)) (ite ((_ is MissingZero!8572) lt!360700) (= (select (arr!20974 a!3170) (index!36655 lt!360700)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8572) lt!360700) (= (select (arr!20974 a!3170) (index!36658 lt!360700)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103529 (= lt!360700 e!446143)))

(declare-fun c!88154 () Bool)

(assert (=> d!103529 (= c!88154 (and ((_ is Intermediate!8572) lt!360701) (undefined!9384 lt!360701)))))

(assert (=> d!103529 (= lt!360701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20974 a!3170) j!153) mask!3266) (select (arr!20974 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103529 (validMask!0 mask!3266)))

(assert (=> d!103529 (= (seekEntryOrOpen!0 (select (arr!20974 a!3170) j!153) a!3170 mask!3266) lt!360700)))

(declare-fun b!805552 () Bool)

(assert (=> b!805552 (= e!446141 (Found!8572 (index!36657 lt!360701)))))

(declare-fun b!805553 () Bool)

(assert (=> b!805553 (= e!446142 (seekKeyOrZeroReturnVacant!0 (x!67499 lt!360701) (index!36657 lt!360701) (index!36657 lt!360701) (select (arr!20974 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and d!103529 c!88154) b!805548))

(assert (= (and d!103529 (not c!88154)) b!805551))

(assert (= (and b!805551 c!88152) b!805552))

(assert (= (and b!805551 (not c!88152)) b!805549))

(assert (= (and b!805549 c!88153) b!805550))

(assert (= (and b!805549 (not c!88153)) b!805553))

(declare-fun m!747581 () Bool)

(assert (=> b!805551 m!747581))

(declare-fun m!747583 () Bool)

(assert (=> d!103529 m!747583))

(assert (=> d!103529 m!747349))

(declare-fun m!747585 () Bool)

(assert (=> d!103529 m!747585))

(assert (=> d!103529 m!747585))

(assert (=> d!103529 m!747349))

(declare-fun m!747587 () Bool)

(assert (=> d!103529 m!747587))

(declare-fun m!747589 () Bool)

(assert (=> d!103529 m!747589))

(assert (=> d!103529 m!747361))

(declare-fun m!747591 () Bool)

(assert (=> d!103529 m!747591))

(assert (=> b!805553 m!747349))

(declare-fun m!747593 () Bool)

(assert (=> b!805553 m!747593))

(assert (=> b!805293 d!103529))

(check-sat (not bm!35349) (not d!103471) (not d!103503) (not b!805422) (not d!103527) (not b!805344) (not b!805425) (not b!805533) (not b!805421) (not bm!35355) (not b!805536) (not b!805553) (not b!805467) (not d!103529) (not b!805382) (not b!805329) (not d!103473) (not b!805531))
(check-sat)
