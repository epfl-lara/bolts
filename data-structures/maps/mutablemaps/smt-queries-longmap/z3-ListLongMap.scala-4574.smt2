; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63798 () Bool)

(assert start!63798)

(declare-fun b!717379 () Bool)

(declare-fun res!480233 () Bool)

(declare-fun e!402780 () Bool)

(assert (=> b!717379 (=> (not res!480233) (not e!402780))))

(declare-datatypes ((array!40614 0))(
  ( (array!40615 (arr!19435 (Array (_ BitVec 32) (_ BitVec 64))) (size!19856 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40614)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717379 (= res!480233 (and (= (size!19856 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19856 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19856 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717380 () Bool)

(declare-fun e!402778 () Bool)

(declare-datatypes ((List!13490 0))(
  ( (Nil!13487) (Cons!13486 (h!14531 (_ BitVec 64)) (t!19813 List!13490)) )
))
(declare-fun noDuplicate!1280 (List!13490) Bool)

(assert (=> b!717380 (= e!402778 (not (noDuplicate!1280 Nil!13487)))))

(declare-fun b!717381 () Bool)

(declare-fun res!480237 () Bool)

(assert (=> b!717381 (=> (not res!480237) (not e!402780))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717381 (= res!480237 (validKeyInArray!0 (select (arr!19435 a!3186) j!159)))))

(declare-fun b!717382 () Bool)

(declare-fun res!480236 () Bool)

(assert (=> b!717382 (=> (not res!480236) (not e!402780))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!717382 (= res!480236 (validKeyInArray!0 k0!2102))))

(declare-fun res!480238 () Bool)

(assert (=> start!63798 (=> (not res!480238) (not e!402780))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63798 (= res!480238 (validMask!0 mask!3328))))

(assert (=> start!63798 e!402780))

(declare-fun array_inv!15209 (array!40614) Bool)

(assert (=> start!63798 (array_inv!15209 a!3186)))

(assert (=> start!63798 true))

(declare-fun b!717383 () Bool)

(declare-fun res!480240 () Bool)

(assert (=> b!717383 (=> (not res!480240) (not e!402778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40614 (_ BitVec 32)) Bool)

(assert (=> b!717383 (= res!480240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!717384 () Bool)

(declare-fun res!480239 () Bool)

(assert (=> b!717384 (=> (not res!480239) (not e!402780))))

(declare-fun arrayContainsKey!0 (array!40614 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717384 (= res!480239 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717385 () Bool)

(assert (=> b!717385 (= e!402780 e!402778)))

(declare-fun res!480234 () Bool)

(assert (=> b!717385 (=> (not res!480234) (not e!402778))))

(declare-datatypes ((SeekEntryResult!7042 0))(
  ( (MissingZero!7042 (index!30535 (_ BitVec 32))) (Found!7042 (index!30536 (_ BitVec 32))) (Intermediate!7042 (undefined!7854 Bool) (index!30537 (_ BitVec 32)) (x!61583 (_ BitVec 32))) (Undefined!7042) (MissingVacant!7042 (index!30538 (_ BitVec 32))) )
))
(declare-fun lt!319067 () SeekEntryResult!7042)

(assert (=> b!717385 (= res!480234 (or (= lt!319067 (MissingZero!7042 i!1173)) (= lt!319067 (MissingVacant!7042 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40614 (_ BitVec 32)) SeekEntryResult!7042)

(assert (=> b!717385 (= lt!319067 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!717386 () Bool)

(declare-fun res!480235 () Bool)

(assert (=> b!717386 (=> (not res!480235) (not e!402778))))

(assert (=> b!717386 (= res!480235 (and (bvsle #b00000000000000000000000000000000 (size!19856 a!3186)) (bvslt (size!19856 a!3186) #b01111111111111111111111111111111)))))

(assert (= (and start!63798 res!480238) b!717379))

(assert (= (and b!717379 res!480233) b!717381))

(assert (= (and b!717381 res!480237) b!717382))

(assert (= (and b!717382 res!480236) b!717384))

(assert (= (and b!717384 res!480239) b!717385))

(assert (= (and b!717385 res!480234) b!717383))

(assert (= (and b!717383 res!480240) b!717386))

(assert (= (and b!717386 res!480235) b!717380))

(declare-fun m!673377 () Bool)

(assert (=> b!717381 m!673377))

(assert (=> b!717381 m!673377))

(declare-fun m!673379 () Bool)

(assert (=> b!717381 m!673379))

(declare-fun m!673381 () Bool)

(assert (=> b!717383 m!673381))

(declare-fun m!673383 () Bool)

(assert (=> start!63798 m!673383))

(declare-fun m!673385 () Bool)

(assert (=> start!63798 m!673385))

(declare-fun m!673387 () Bool)

(assert (=> b!717384 m!673387))

(declare-fun m!673389 () Bool)

(assert (=> b!717382 m!673389))

(declare-fun m!673391 () Bool)

(assert (=> b!717385 m!673391))

(declare-fun m!673393 () Bool)

(assert (=> b!717380 m!673393))

(check-sat (not b!717385) (not start!63798) (not b!717382) (not b!717383) (not b!717381) (not b!717384) (not b!717380))
(check-sat)
(get-model)

(declare-fun bm!34695 () Bool)

(declare-fun call!34698 () Bool)

(assert (=> bm!34695 (= call!34698 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!717419 () Bool)

(declare-fun e!402796 () Bool)

(assert (=> b!717419 (= e!402796 call!34698)))

(declare-fun d!98779 () Bool)

(declare-fun res!480269 () Bool)

(declare-fun e!402798 () Bool)

(assert (=> d!98779 (=> res!480269 e!402798)))

(assert (=> d!98779 (= res!480269 (bvsge #b00000000000000000000000000000000 (size!19856 a!3186)))))

(assert (=> d!98779 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!402798)))

(declare-fun b!717420 () Bool)

(declare-fun e!402797 () Bool)

(assert (=> b!717420 (= e!402797 e!402796)))

(declare-fun lt!319079 () (_ BitVec 64))

(assert (=> b!717420 (= lt!319079 (select (arr!19435 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24628 0))(
  ( (Unit!24629) )
))
(declare-fun lt!319077 () Unit!24628)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40614 (_ BitVec 64) (_ BitVec 32)) Unit!24628)

(assert (=> b!717420 (= lt!319077 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319079 #b00000000000000000000000000000000))))

(assert (=> b!717420 (arrayContainsKey!0 a!3186 lt!319079 #b00000000000000000000000000000000)))

(declare-fun lt!319078 () Unit!24628)

(assert (=> b!717420 (= lt!319078 lt!319077)))

(declare-fun res!480270 () Bool)

(assert (=> b!717420 (= res!480270 (= (seekEntryOrOpen!0 (select (arr!19435 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7042 #b00000000000000000000000000000000)))))

(assert (=> b!717420 (=> (not res!480270) (not e!402796))))

(declare-fun b!717421 () Bool)

(assert (=> b!717421 (= e!402798 e!402797)))

(declare-fun c!78942 () Bool)

(assert (=> b!717421 (= c!78942 (validKeyInArray!0 (select (arr!19435 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!717422 () Bool)

(assert (=> b!717422 (= e!402797 call!34698)))

(assert (= (and d!98779 (not res!480269)) b!717421))

(assert (= (and b!717421 c!78942) b!717420))

(assert (= (and b!717421 (not c!78942)) b!717422))

(assert (= (and b!717420 res!480270) b!717419))

(assert (= (or b!717419 b!717422) bm!34695))

(declare-fun m!673413 () Bool)

(assert (=> bm!34695 m!673413))

(declare-fun m!673415 () Bool)

(assert (=> b!717420 m!673415))

(declare-fun m!673417 () Bool)

(assert (=> b!717420 m!673417))

(declare-fun m!673419 () Bool)

(assert (=> b!717420 m!673419))

(assert (=> b!717420 m!673415))

(declare-fun m!673421 () Bool)

(assert (=> b!717420 m!673421))

(assert (=> b!717421 m!673415))

(assert (=> b!717421 m!673415))

(declare-fun m!673423 () Bool)

(assert (=> b!717421 m!673423))

(assert (=> b!717383 d!98779))

(declare-fun d!98783 () Bool)

(assert (=> d!98783 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717382 d!98783))

(declare-fun d!98787 () Bool)

(declare-fun res!480275 () Bool)

(declare-fun e!402803 () Bool)

(assert (=> d!98787 (=> res!480275 e!402803)))

(get-info :version)

(assert (=> d!98787 (= res!480275 ((_ is Nil!13487) Nil!13487))))

(assert (=> d!98787 (= (noDuplicate!1280 Nil!13487) e!402803)))

(declare-fun b!717427 () Bool)

(declare-fun e!402804 () Bool)

(assert (=> b!717427 (= e!402803 e!402804)))

(declare-fun res!480276 () Bool)

(assert (=> b!717427 (=> (not res!480276) (not e!402804))))

(declare-fun contains!4032 (List!13490 (_ BitVec 64)) Bool)

(assert (=> b!717427 (= res!480276 (not (contains!4032 (t!19813 Nil!13487) (h!14531 Nil!13487))))))

(declare-fun b!717428 () Bool)

(assert (=> b!717428 (= e!402804 (noDuplicate!1280 (t!19813 Nil!13487)))))

(assert (= (and d!98787 (not res!480275)) b!717427))

(assert (= (and b!717427 res!480276) b!717428))

(declare-fun m!673425 () Bool)

(assert (=> b!717427 m!673425))

(declare-fun m!673427 () Bool)

(assert (=> b!717428 m!673427))

(assert (=> b!717380 d!98787))

(declare-fun d!98789 () Bool)

(assert (=> d!98789 (= (validKeyInArray!0 (select (arr!19435 a!3186) j!159)) (and (not (= (select (arr!19435 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19435 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717381 d!98789))

(declare-fun d!98791 () Bool)

(declare-fun res!480281 () Bool)

(declare-fun e!402809 () Bool)

(assert (=> d!98791 (=> res!480281 e!402809)))

(assert (=> d!98791 (= res!480281 (= (select (arr!19435 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!98791 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!402809)))

(declare-fun b!717433 () Bool)

(declare-fun e!402810 () Bool)

(assert (=> b!717433 (= e!402809 e!402810)))

(declare-fun res!480282 () Bool)

(assert (=> b!717433 (=> (not res!480282) (not e!402810))))

(assert (=> b!717433 (= res!480282 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19856 a!3186)))))

(declare-fun b!717434 () Bool)

(assert (=> b!717434 (= e!402810 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!98791 (not res!480281)) b!717433))

(assert (= (and b!717433 res!480282) b!717434))

(assert (=> d!98791 m!673415))

(declare-fun m!673429 () Bool)

(assert (=> b!717434 m!673429))

(assert (=> b!717384 d!98791))

(declare-fun d!98793 () Bool)

(assert (=> d!98793 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!63798 d!98793))

(declare-fun d!98797 () Bool)

(assert (=> d!98797 (= (array_inv!15209 a!3186) (bvsge (size!19856 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!63798 d!98797))

(declare-fun e!402849 () SeekEntryResult!7042)

(declare-fun b!717489 () Bool)

(declare-fun lt!319106 () SeekEntryResult!7042)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40614 (_ BitVec 32)) SeekEntryResult!7042)

(assert (=> b!717489 (= e!402849 (seekKeyOrZeroReturnVacant!0 (x!61583 lt!319106) (index!30537 lt!319106) (index!30537 lt!319106) k0!2102 a!3186 mask!3328))))

(declare-fun b!717490 () Bool)

(declare-fun e!402848 () SeekEntryResult!7042)

(assert (=> b!717490 (= e!402848 Undefined!7042)))

(declare-fun b!717491 () Bool)

(declare-fun e!402847 () SeekEntryResult!7042)

(assert (=> b!717491 (= e!402847 (Found!7042 (index!30537 lt!319106)))))

(declare-fun b!717492 () Bool)

(declare-fun c!78962 () Bool)

(declare-fun lt!319104 () (_ BitVec 64))

(assert (=> b!717492 (= c!78962 (= lt!319104 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!717492 (= e!402847 e!402849)))

(declare-fun d!98799 () Bool)

(declare-fun lt!319105 () SeekEntryResult!7042)

(assert (=> d!98799 (and (or ((_ is Undefined!7042) lt!319105) (not ((_ is Found!7042) lt!319105)) (and (bvsge (index!30536 lt!319105) #b00000000000000000000000000000000) (bvslt (index!30536 lt!319105) (size!19856 a!3186)))) (or ((_ is Undefined!7042) lt!319105) ((_ is Found!7042) lt!319105) (not ((_ is MissingZero!7042) lt!319105)) (and (bvsge (index!30535 lt!319105) #b00000000000000000000000000000000) (bvslt (index!30535 lt!319105) (size!19856 a!3186)))) (or ((_ is Undefined!7042) lt!319105) ((_ is Found!7042) lt!319105) ((_ is MissingZero!7042) lt!319105) (not ((_ is MissingVacant!7042) lt!319105)) (and (bvsge (index!30538 lt!319105) #b00000000000000000000000000000000) (bvslt (index!30538 lt!319105) (size!19856 a!3186)))) (or ((_ is Undefined!7042) lt!319105) (ite ((_ is Found!7042) lt!319105) (= (select (arr!19435 a!3186) (index!30536 lt!319105)) k0!2102) (ite ((_ is MissingZero!7042) lt!319105) (= (select (arr!19435 a!3186) (index!30535 lt!319105)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7042) lt!319105) (= (select (arr!19435 a!3186) (index!30538 lt!319105)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!98799 (= lt!319105 e!402848)))

(declare-fun c!78961 () Bool)

(assert (=> d!98799 (= c!78961 (and ((_ is Intermediate!7042) lt!319106) (undefined!7854 lt!319106)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40614 (_ BitVec 32)) SeekEntryResult!7042)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!98799 (= lt!319106 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!98799 (validMask!0 mask!3328)))

(assert (=> d!98799 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!319105)))

(declare-fun b!717493 () Bool)

(assert (=> b!717493 (= e!402849 (MissingZero!7042 (index!30537 lt!319106)))))

(declare-fun b!717494 () Bool)

(assert (=> b!717494 (= e!402848 e!402847)))

(assert (=> b!717494 (= lt!319104 (select (arr!19435 a!3186) (index!30537 lt!319106)))))

(declare-fun c!78963 () Bool)

(assert (=> b!717494 (= c!78963 (= lt!319104 k0!2102))))

(assert (= (and d!98799 c!78961) b!717490))

(assert (= (and d!98799 (not c!78961)) b!717494))

(assert (= (and b!717494 c!78963) b!717491))

(assert (= (and b!717494 (not c!78963)) b!717492))

(assert (= (and b!717492 c!78962) b!717493))

(assert (= (and b!717492 (not c!78962)) b!717489))

(declare-fun m!673463 () Bool)

(assert (=> b!717489 m!673463))

(declare-fun m!673465 () Bool)

(assert (=> d!98799 m!673465))

(assert (=> d!98799 m!673383))

(declare-fun m!673467 () Bool)

(assert (=> d!98799 m!673467))

(declare-fun m!673469 () Bool)

(assert (=> d!98799 m!673469))

(declare-fun m!673471 () Bool)

(assert (=> d!98799 m!673471))

(assert (=> d!98799 m!673467))

(declare-fun m!673473 () Bool)

(assert (=> d!98799 m!673473))

(declare-fun m!673475 () Bool)

(assert (=> b!717494 m!673475))

(assert (=> b!717385 d!98799))

(check-sat (not b!717428) (not b!717420) (not b!717427) (not b!717434) (not b!717421) (not bm!34695) (not d!98799) (not b!717489))
(check-sat)
