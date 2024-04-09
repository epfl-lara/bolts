; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27830 () Bool)

(assert start!27830)

(declare-fun b!286333 () Bool)

(declare-fun e!181436 () Bool)

(declare-fun e!181437 () Bool)

(assert (=> b!286333 (= e!181436 e!181437)))

(declare-fun res!148522 () Bool)

(assert (=> b!286333 (=> (not res!148522) (not e!181437))))

(declare-datatypes ((SeekEntryResult!1964 0))(
  ( (MissingZero!1964 (index!10026 (_ BitVec 32))) (Found!1964 (index!10027 (_ BitVec 32))) (Intermediate!1964 (undefined!2776 Bool) (index!10028 (_ BitVec 32)) (x!28212 (_ BitVec 32))) (Undefined!1964) (MissingVacant!1964 (index!10029 (_ BitVec 32))) )
))
(declare-fun lt!141089 () SeekEntryResult!1964)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286333 (= res!148522 (or (= lt!141089 (MissingZero!1964 i!1256)) (= lt!141089 (MissingVacant!1964 i!1256))))))

(declare-datatypes ((array!14340 0))(
  ( (array!14341 (arr!6804 (Array (_ BitVec 32) (_ BitVec 64))) (size!7156 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14340)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14340 (_ BitVec 32)) SeekEntryResult!1964)

(assert (=> b!286333 (= lt!141089 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286334 () Bool)

(declare-fun res!148523 () Bool)

(assert (=> b!286334 (=> (not res!148523) (not e!181436))))

(declare-fun arrayContainsKey!0 (array!14340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286334 (= res!148523 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286335 () Bool)

(declare-fun res!148526 () Bool)

(assert (=> b!286335 (=> (not res!148526) (not e!181437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14340 (_ BitVec 32)) Bool)

(assert (=> b!286335 (= res!148526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!148524 () Bool)

(assert (=> start!27830 (=> (not res!148524) (not e!181436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27830 (= res!148524 (validMask!0 mask!3809))))

(assert (=> start!27830 e!181436))

(assert (=> start!27830 true))

(declare-fun array_inv!4758 (array!14340) Bool)

(assert (=> start!27830 (array_inv!4758 a!3312)))

(declare-fun b!286336 () Bool)

(declare-fun res!148525 () Bool)

(assert (=> b!286336 (=> (not res!148525) (not e!181436))))

(assert (=> b!286336 (= res!148525 (and (= (size!7156 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7156 a!3312))))))

(declare-fun b!286337 () Bool)

(declare-fun res!148527 () Bool)

(assert (=> b!286337 (=> (not res!148527) (not e!181436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286337 (= res!148527 (validKeyInArray!0 k!2524))))

(declare-fun b!286338 () Bool)

(assert (=> b!286338 (= e!181437 (and (bvsge mask!3809 #b00000000000000000000000000000000) (bvsgt mask!3809 #b00111111111111111111111111111111)))))

(assert (= (and start!27830 res!148524) b!286336))

(assert (= (and b!286336 res!148525) b!286337))

(assert (= (and b!286337 res!148527) b!286334))

(assert (= (and b!286334 res!148523) b!286333))

(assert (= (and b!286333 res!148522) b!286335))

(assert (= (and b!286335 res!148526) b!286338))

(declare-fun m!301063 () Bool)

(assert (=> b!286337 m!301063))

(declare-fun m!301065 () Bool)

(assert (=> b!286333 m!301065))

(declare-fun m!301067 () Bool)

(assert (=> b!286335 m!301067))

(declare-fun m!301069 () Bool)

(assert (=> b!286334 m!301069))

(declare-fun m!301071 () Bool)

(assert (=> start!27830 m!301071))

(declare-fun m!301073 () Bool)

(assert (=> start!27830 m!301073))

(push 1)

(assert (not b!286333))

(assert (not start!27830))

(assert (not b!286335))

(assert (not b!286334))

(assert (not b!286337))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65871 () Bool)

(assert (=> d!65871 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!286337 d!65871))

(declare-fun b!286353 () Bool)

(declare-fun e!181453 () Bool)

(declare-fun call!25589 () Bool)

(assert (=> b!286353 (= e!181453 call!25589)))

(declare-fun b!286354 () Bool)

(declare-fun e!181451 () Bool)

(assert (=> b!286354 (= e!181453 e!181451)))

(declare-fun lt!141096 () (_ BitVec 64))

(assert (=> b!286354 (= lt!141096 (select (arr!6804 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9049 0))(
  ( (Unit!9050) )
))
(declare-fun lt!141098 () Unit!9049)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14340 (_ BitVec 64) (_ BitVec 32)) Unit!9049)

(assert (=> b!286354 (= lt!141098 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!141096 #b00000000000000000000000000000000))))

(assert (=> b!286354 (arrayContainsKey!0 a!3312 lt!141096 #b00000000000000000000000000000000)))

(declare-fun lt!141097 () Unit!9049)

(assert (=> b!286354 (= lt!141097 lt!141098)))

(declare-fun res!148538 () Bool)

(assert (=> b!286354 (= res!148538 (= (seekEntryOrOpen!0 (select (arr!6804 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!1964 #b00000000000000000000000000000000)))))

(assert (=> b!286354 (=> (not res!148538) (not e!181451))))

(declare-fun d!65873 () Bool)

(declare-fun res!148539 () Bool)

(declare-fun e!181452 () Bool)

(assert (=> d!65873 (=> res!148539 e!181452)))

(assert (=> d!65873 (= res!148539 (bvsge #b00000000000000000000000000000000 (size!7156 a!3312)))))

(assert (=> d!65873 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!181452)))

(declare-fun bm!25586 () Bool)

(assert (=> bm!25586 (= call!25589 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!286355 () Bool)

(assert (=> b!286355 (= e!181451 call!25589)))

(declare-fun b!286356 () Bool)

(assert (=> b!286356 (= e!181452 e!181453)))

(declare-fun c!46463 () Bool)

(assert (=> b!286356 (= c!46463 (validKeyInArray!0 (select (arr!6804 a!3312) #b00000000000000000000000000000000)))))

(assert (= (and d!65873 (not res!148539)) b!286356))

(assert (= (and b!286356 c!46463) b!286354))

(assert (= (and b!286356 (not c!46463)) b!286353))

(assert (= (and b!286354 res!148538) b!286355))

(assert (= (or b!286355 b!286353) bm!25586))

(declare-fun m!301079 () Bool)

(assert (=> b!286354 m!301079))

(declare-fun m!301081 () Bool)

(assert (=> b!286354 m!301081))

(declare-fun m!301083 () Bool)

(assert (=> b!286354 m!301083))

(assert (=> b!286354 m!301079))

(declare-fun m!301085 () Bool)

(assert (=> b!286354 m!301085))

(declare-fun m!301087 () Bool)

(assert (=> bm!25586 m!301087))

(assert (=> b!286356 m!301079))

(assert (=> b!286356 m!301079))

(declare-fun m!301089 () Bool)

(assert (=> b!286356 m!301089))

(assert (=> b!286335 d!65873))

(declare-fun d!65879 () Bool)

(declare-fun res!148544 () Bool)

(declare-fun e!181458 () Bool)

(assert (=> d!65879 (=> res!148544 e!181458)))

(assert (=> d!65879 (= res!148544 (= (select (arr!6804 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!65879 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!181458)))

(declare-fun b!286361 () Bool)

(declare-fun e!181459 () Bool)

(assert (=> b!286361 (= e!181458 e!181459)))

(declare-fun res!148545 () Bool)

(assert (=> b!286361 (=> (not res!148545) (not e!181459))))

(assert (=> b!286361 (= res!148545 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7156 a!3312)))))

(declare-fun b!286362 () Bool)

(assert (=> b!286362 (= e!181459 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65879 (not res!148544)) b!286361))

(assert (= (and b!286361 res!148545) b!286362))

(assert (=> d!65879 m!301079))

(declare-fun m!301091 () Bool)

(assert (=> b!286362 m!301091))

(assert (=> b!286334 d!65879))

(declare-fun d!65881 () Bool)

(assert (=> d!65881 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!27830 d!65881))

(declare-fun d!65887 () Bool)

(assert (=> d!65887 (= (array_inv!4758 a!3312) (bvsge (size!7156 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!27830 d!65887))

(declare-fun b!286429 () Bool)

(declare-fun c!46493 () Bool)

(declare-fun lt!141133 () (_ BitVec 64))

(assert (=> b!286429 (= c!46493 (= lt!141133 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!181499 () SeekEntryResult!1964)

(declare-fun e!181501 () SeekEntryResult!1964)

(assert (=> b!286429 (= e!181499 e!181501)))

(declare-fun b!286430 () Bool)

(declare-fun lt!141132 () SeekEntryResult!1964)

(assert (=> b!286430 (= e!181501 (MissingZero!1964 (index!10028 lt!141132)))))

(declare-fun b!286431 () Bool)

(assert (=> b!286431 (= e!181499 (Found!1964 (index!10028 lt!141132)))))

(declare-fun d!65889 () Bool)

(declare-fun lt!141134 () SeekEntryResult!1964)

(assert (=> d!65889 (and (or (is-Undefined!1964 lt!141134) (not (is-Found!1964 lt!141134)) (and (bvsge (index!10027 lt!141134) #b00000000000000000000000000000000) (bvslt (index!10027 lt!141134) (size!7156 a!3312)))) (or (is-Undefined!1964 lt!141134) (is-Found!1964 lt!141134) (not (is-MissingZero!1964 lt!141134)) (and (bvsge (index!10026 lt!141134) #b00000000000000000000000000000000) (bvslt (index!10026 lt!141134) (size!7156 a!3312)))) (or (is-Undefined!1964 lt!141134) (is-Found!1964 lt!141134) (is-MissingZero!1964 lt!141134) (not (is-MissingVacant!1964 lt!141134)) (and (bvsge (index!10029 lt!141134) #b00000000000000000000000000000000) (bvslt (index!10029 lt!141134) (size!7156 a!3312)))) (or (is-Undefined!1964 lt!141134) (ite (is-Found!1964 lt!141134) (= (select (arr!6804 a!3312) (index!10027 lt!141134)) k!2524) (ite (is-MissingZero!1964 lt!141134) (= (select (arr!6804 a!3312) (index!10026 lt!141134)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1964 lt!141134) (= (select (arr!6804 a!3312) (index!10029 lt!141134)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!181500 () SeekEntryResult!1964)

(assert (=> d!65889 (= lt!141134 e!181500)))

(declare-fun c!46491 () Bool)

(assert (=> d!65889 (= c!46491 (and (is-Intermediate!1964 lt!141132) (undefined!2776 lt!141132)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14340 (_ BitVec 32)) SeekEntryResult!1964)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65889 (= lt!141132 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

