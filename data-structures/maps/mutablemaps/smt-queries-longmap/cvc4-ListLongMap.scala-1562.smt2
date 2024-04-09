; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29716 () Bool)

(assert start!29716)

(declare-fun res!157906 () Bool)

(declare-fun e!189139 () Bool)

(assert (=> start!29716 (=> (not res!157906) (not e!189139))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29716 (= res!157906 (validMask!0 mask!3809))))

(assert (=> start!29716 e!189139))

(assert (=> start!29716 true))

(declare-datatypes ((array!15132 0))(
  ( (array!15133 (arr!7164 (Array (_ BitVec 32) (_ BitVec 64))) (size!7516 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15132)

(declare-fun array_inv!5118 (array!15132) Bool)

(assert (=> start!29716 (array_inv!5118 a!3312)))

(declare-fun b!299434 () Bool)

(declare-fun res!157908 () Bool)

(assert (=> b!299434 (=> (not res!157908) (not e!189139))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!299434 (= res!157908 (validKeyInArray!0 k!2524))))

(declare-fun b!299435 () Bool)

(declare-fun res!157910 () Bool)

(assert (=> b!299435 (=> (not res!157910) (not e!189139))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!299435 (= res!157910 (and (= (size!7516 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7516 a!3312))))))

(declare-fun b!299436 () Bool)

(declare-fun e!189138 () Bool)

(assert (=> b!299436 (= e!189139 e!189138)))

(declare-fun res!157907 () Bool)

(assert (=> b!299436 (=> (not res!157907) (not e!189138))))

(declare-fun lt!148985 () Bool)

(declare-datatypes ((SeekEntryResult!2324 0))(
  ( (MissingZero!2324 (index!11472 (_ BitVec 32))) (Found!2324 (index!11473 (_ BitVec 32))) (Intermediate!2324 (undefined!3136 Bool) (index!11474 (_ BitVec 32)) (x!29679 (_ BitVec 32))) (Undefined!2324) (MissingVacant!2324 (index!11475 (_ BitVec 32))) )
))
(declare-fun lt!148987 () SeekEntryResult!2324)

(assert (=> b!299436 (= res!157907 (or lt!148985 (= lt!148987 (MissingVacant!2324 i!1256))))))

(assert (=> b!299436 (= lt!148985 (= lt!148987 (MissingZero!2324 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15132 (_ BitVec 32)) SeekEntryResult!2324)

(assert (=> b!299436 (= lt!148987 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!299437 () Bool)

(declare-fun res!157911 () Bool)

(assert (=> b!299437 (=> (not res!157911) (not e!189138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15132 (_ BitVec 32)) Bool)

(assert (=> b!299437 (= res!157911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!299438 () Bool)

(declare-fun res!157909 () Bool)

(assert (=> b!299438 (=> (not res!157909) (not e!189139))))

(declare-fun arrayContainsKey!0 (array!15132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!299438 (= res!157909 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!299439 () Bool)

(declare-fun lt!148986 () SeekEntryResult!2324)

(assert (=> b!299439 (= e!189138 (and (not lt!148985) (= lt!148987 (MissingVacant!2324 i!1256)) (let ((bdg!6446 (not (is-Intermediate!2324 lt!148986)))) (and (or bdg!6446 (not (undefined!3136 lt!148986))) (or bdg!6446 (not (= (select (arr!7164 a!3312) (index!11474 lt!148986)) #b1000000000000000000000000000000000000000000000000000000000000000))) (not bdg!6446) (or (bvslt (index!11474 lt!148986) #b00000000000000000000000000000000) (bvsge (index!11474 lt!148986) (size!7516 a!3312)))))))))

(declare-fun lt!148984 () SeekEntryResult!2324)

(declare-fun lt!148988 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15132 (_ BitVec 32)) SeekEntryResult!2324)

(assert (=> b!299439 (= lt!148984 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148988 k!2524 (array!15133 (store (arr!7164 a!3312) i!1256 k!2524) (size!7516 a!3312)) mask!3809))))

(assert (=> b!299439 (= lt!148986 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148988 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299439 (= lt!148988 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!29716 res!157906) b!299435))

(assert (= (and b!299435 res!157910) b!299434))

(assert (= (and b!299434 res!157908) b!299438))

(assert (= (and b!299438 res!157909) b!299436))

(assert (= (and b!299436 res!157907) b!299437))

(assert (= (and b!299437 res!157911) b!299439))

(declare-fun m!311685 () Bool)

(assert (=> b!299436 m!311685))

(declare-fun m!311687 () Bool)

(assert (=> start!29716 m!311687))

(declare-fun m!311689 () Bool)

(assert (=> start!29716 m!311689))

(declare-fun m!311691 () Bool)

(assert (=> b!299439 m!311691))

(declare-fun m!311693 () Bool)

(assert (=> b!299439 m!311693))

(declare-fun m!311695 () Bool)

(assert (=> b!299439 m!311695))

(declare-fun m!311697 () Bool)

(assert (=> b!299439 m!311697))

(declare-fun m!311699 () Bool)

(assert (=> b!299439 m!311699))

(declare-fun m!311701 () Bool)

(assert (=> b!299437 m!311701))

(declare-fun m!311703 () Bool)

(assert (=> b!299434 m!311703))

(declare-fun m!311705 () Bool)

(assert (=> b!299438 m!311705))

(push 1)

(assert (not start!29716))

(assert (not b!299436))

(assert (not b!299437))

(assert (not b!299439))

(assert (not b!299438))

(assert (not b!299434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!299490 () Bool)

(declare-fun e!189172 () Bool)

(declare-fun e!189173 () Bool)

(assert (=> b!299490 (= e!189172 e!189173)))

(declare-fun c!48368 () Bool)

(assert (=> b!299490 (= c!48368 (validKeyInArray!0 (select (arr!7164 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!299491 () Bool)

(declare-fun call!25826 () Bool)

(assert (=> b!299491 (= e!189173 call!25826)))

(declare-fun d!67461 () Bool)

(declare-fun res!157936 () Bool)

(assert (=> d!67461 (=> res!157936 e!189172)))

(assert (=> d!67461 (= res!157936 (bvsge #b00000000000000000000000000000000 (size!7516 a!3312)))))

(assert (=> d!67461 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!189172)))

(declare-fun b!299492 () Bool)

(declare-fun e!189174 () Bool)

(assert (=> b!299492 (= e!189173 e!189174)))

(declare-fun lt!149009 () (_ BitVec 64))

(assert (=> b!299492 (= lt!149009 (select (arr!7164 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9340 0))(
  ( (Unit!9341) )
))
(declare-fun lt!149010 () Unit!9340)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15132 (_ BitVec 64) (_ BitVec 32)) Unit!9340)

(assert (=> b!299492 (= lt!149010 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!149009 #b00000000000000000000000000000000))))

(assert (=> b!299492 (arrayContainsKey!0 a!3312 lt!149009 #b00000000000000000000000000000000)))

(declare-fun lt!149011 () Unit!9340)

(assert (=> b!299492 (= lt!149011 lt!149010)))

(declare-fun res!157935 () Bool)

(assert (=> b!299492 (= res!157935 (= (seekEntryOrOpen!0 (select (arr!7164 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2324 #b00000000000000000000000000000000)))))

(assert (=> b!299492 (=> (not res!157935) (not e!189174))))

(declare-fun bm!25823 () Bool)

(assert (=> bm!25823 (= call!25826 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!299493 () Bool)

(assert (=> b!299493 (= e!189174 call!25826)))

(assert (= (and d!67461 (not res!157936)) b!299490))

(assert (= (and b!299490 c!48368) b!299492))

(assert (= (and b!299490 (not c!48368)) b!299491))

(assert (= (and b!299492 res!157935) b!299493))

(assert (= (or b!299493 b!299491) bm!25823))

(declare-fun m!311725 () Bool)

(assert (=> b!299490 m!311725))

(assert (=> b!299490 m!311725))

(declare-fun m!311727 () Bool)

(assert (=> b!299490 m!311727))

(assert (=> b!299492 m!311725))

(declare-fun m!311729 () Bool)

(assert (=> b!299492 m!311729))

(declare-fun m!311731 () Bool)

(assert (=> b!299492 m!311731))

(assert (=> b!299492 m!311725))

(declare-fun m!311733 () Bool)

(assert (=> b!299492 m!311733))

(declare-fun m!311735 () Bool)

(assert (=> bm!25823 m!311735))

(assert (=> b!299437 d!67461))

(declare-fun b!299554 () Bool)

(declare-fun e!189213 () SeekEntryResult!2324)

(declare-fun e!189212 () SeekEntryResult!2324)

(assert (=> b!299554 (= e!189213 e!189212)))

(declare-fun lt!149044 () (_ BitVec 64))

(declare-fun lt!149043 () SeekEntryResult!2324)

(assert (=> b!299554 (= lt!149044 (select (arr!7164 a!3312) (index!11474 lt!149043)))))

(declare-fun c!48393 () Bool)

(assert (=> b!299554 (= c!48393 (= lt!149044 k!2524))))

(declare-fun b!299555 () Bool)

(declare-fun e!189211 () SeekEntryResult!2324)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15132 (_ BitVec 32)) SeekEntryResult!2324)

(assert (=> b!299555 (= e!189211 (seekKeyOrZeroReturnVacant!0 (x!29679 lt!149043) (index!11474 lt!149043) (index!11474 lt!149043) k!2524 a!3312 mask!3809))))

(declare-fun b!299556 () Bool)

(assert (=> b!299556 (= e!189212 (Found!2324 (index!11474 lt!149043)))))

(declare-fun b!299557 () Bool)

(assert (=> b!299557 (= e!189213 Undefined!2324)))

(declare-fun b!299558 () Bool)

(declare-fun c!48394 () Bool)

(assert (=> b!299558 (= c!48394 (= lt!149044 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299558 (= e!189212 e!189211)))

(declare-fun b!299559 () Bool)

(assert (=> b!299559 (= e!189211 (MissingZero!2324 (index!11474 lt!149043)))))

(declare-fun d!67469 () Bool)

(declare-fun lt!149042 () SeekEntryResult!2324)

(assert (=> d!67469 (and (or (is-Undefined!2324 lt!149042) (not (is-Found!2324 lt!149042)) (and (bvsge (index!11473 lt!149042) #b00000000000000000000000000000000) (bvslt (index!11473 lt!149042) (size!7516 a!3312)))) (or (is-Undefined!2324 lt!149042) (is-Found!2324 lt!149042) (not (is-MissingZero!2324 lt!149042)) (and (bvsge (index!11472 lt!149042) #b00000000000000000000000000000000) (bvslt (index!11472 lt!149042) (size!7516 a!3312)))) (or (is-Undefined!2324 lt!149042) (is-Found!2324 lt!149042) (is-MissingZero!2324 lt!149042) (not (is-MissingVacant!2324 lt!149042)) (and (bvsge (index!11475 lt!149042) #b00000000000000000000000000000000) (bvslt (index!11475 lt!149042) (size!7516 a!3312)))) (or (is-Undefined!2324 lt!149042) (ite (is-Found!2324 lt!149042) (= (select (arr!7164 a!3312) (index!11473 lt!149042)) k!2524) (ite (is-MissingZero!2324 lt!149042) (= (select (arr!7164 a!3312) (index!11472 lt!149042)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2324 lt!149042) (= (select (arr!7164 a!3312) (index!11475 lt!149042)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67469 (= lt!149042 e!189213)))

(declare-fun c!48395 () Bool)

(assert (=> d!67469 (= c!48395 (and (is-Intermediate!2324 lt!149043) (undefined!3136 lt!149043)))))

(assert (=> d!67469 (= lt!149043 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67469 (validMask!0 mask!3809)))

(assert (=> d!67469 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!149042)))

(assert (= (and d!67469 c!48395) b!299557))

(assert (= (and d!67469 (not c!48395)) b!299554))

(assert (= (and b!299554 c!48393) b!299556))

(assert (= (and b!299554 (not c!48393)) b!299558))

(assert (= (and b!299558 c!48394) b!299559))

(assert (= (and b!299558 (not c!48394)) b!299555))

(declare-fun m!311763 () Bool)

(assert (=> b!299554 m!311763))

(declare-fun m!311765 () Bool)

(assert (=> b!299555 m!311765))

(assert (=> d!67469 m!311699))

(declare-fun m!311767 () Bool)

(assert (=> d!67469 m!311767))

(declare-fun m!311769 () Bool)

(assert (=> d!67469 m!311769))

(assert (=> d!67469 m!311699))

(assert (=> d!67469 m!311687))

(declare-fun m!311771 () Bool)

(assert (=> d!67469 m!311771))

(declare-fun m!311773 () Bool)

(assert (=> d!67469 m!311773))

(assert (=> b!299436 d!67469))

(declare-fun b!299596 () Bool)

(declare-fun e!189239 () SeekEntryResult!2324)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299596 (= e!189239 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148988 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15133 (store (arr!7164 a!3312) i!1256 k!2524) (size!7516 a!3312)) mask!3809))))

(declare-fun b!299597 () Bool)

(declare-fun e!189237 () Bool)

(declare-fun e!189236 () Bool)

(assert (=> b!299597 (= e!189237 e!189236)))

(declare-fun res!157962 () Bool)

(declare-fun lt!149062 () SeekEntryResult!2324)

(assert (=> b!299597 (= res!157962 (and (is-Intermediate!2324 lt!149062) (not (undefined!3136 lt!149062)) (bvslt (x!29679 lt!149062) #b01111111111111111111111111111110) (bvsge (x!29679 lt!149062) #b00000000000000000000000000000000) (bvsge (x!29679 lt!149062) #b00000000000000000000000000000000)))))

(assert (=> b!299597 (=> (not res!157962) (not e!189236))))

(declare-fun b!299598 () Bool)

(assert (=> b!299598 (= e!189237 (bvsge (x!29679 lt!149062) #b01111111111111111111111111111110))))

(declare-fun b!299599 () Bool)

(assert (=> b!299599 (and (bvsge (index!11474 lt!149062) #b00000000000000000000000000000000) (bvslt (index!11474 lt!149062) (size!7516 (array!15133 (store (arr!7164 a!3312) i!1256 k!2524) (size!7516 a!3312)))))))

(declare-fun res!157961 () Bool)

(assert (=> b!299599 (= res!157961 (= (select (arr!7164 (array!15133 (store (arr!7164 a!3312) i!1256 k!2524) (size!7516 a!3312))) (index!11474 lt!149062)) k!2524))))

(declare-fun e!189240 () Bool)

(assert (=> b!299599 (=> res!157961 e!189240)))

(assert (=> b!299599 (= e!189236 e!189240)))

(declare-fun b!299600 () Bool)

(declare-fun e!189238 () SeekEntryResult!2324)

(assert (=> b!299600 (= e!189238 (Intermediate!2324 true lt!148988 #b00000000000000000000000000000000))))

(declare-fun d!67481 () Bool)

(assert (=> d!67481 e!189237))

(declare-fun c!48409 () Bool)

(assert (=> d!67481 (= c!48409 (and (is-Intermediate!2324 lt!149062) (undefined!3136 lt!149062)))))

(assert (=> d!67481 (= lt!149062 e!189238)))

(declare-fun c!48410 () Bool)

(assert (=> d!67481 (= c!48410 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!149061 () (_ BitVec 64))

(assert (=> d!67481 (= lt!149061 (select (arr!7164 (array!15133 (store (arr!7164 a!3312) i!1256 k!2524) (size!7516 a!3312))) lt!148988))))

(assert (=> d!67481 (validMask!0 mask!3809)))

(assert (=> d!67481 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148988 k!2524 (array!15133 (store (arr!7164 a!3312) i!1256 k!2524) (size!7516 a!3312)) mask!3809) lt!149062)))

(declare-fun b!299601 () Bool)

(assert (=> b!299601 (= e!189239 (Intermediate!2324 false lt!148988 #b00000000000000000000000000000000))))

(declare-fun b!299602 () Bool)

(assert (=> b!299602 (and (bvsge (index!11474 lt!149062) #b00000000000000000000000000000000) (bvslt (index!11474 lt!149062) (size!7516 (array!15133 (store (arr!7164 a!3312) i!1256 k!2524) (size!7516 a!3312)))))))

(assert (=> b!299602 (= e!189240 (= (select (arr!7164 (array!15133 (store (arr!7164 a!3312) i!1256 k!2524) (size!7516 a!3312))) (index!11474 lt!149062)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!299603 () Bool)

(assert (=> b!299603 (and (bvsge (index!11474 lt!149062) #b00000000000000000000000000000000) (bvslt (index!11474 lt!149062) (size!7516 (array!15133 (store (arr!7164 a!3312) i!1256 k!2524) (size!7516 a!3312)))))))

(declare-fun res!157963 () Bool)

(assert (=> b!299603 (= res!157963 (= (select (arr!7164 (array!15133 (store (arr!7164 a!3312) i!1256 k!2524) (size!7516 a!3312))) (index!11474 lt!149062)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299603 (=> res!157963 e!189240)))

(declare-fun b!299604 () Bool)

(assert (=> b!299604 (= e!189238 e!189239)))

(declare-fun c!48408 () Bool)

(assert (=> b!299604 (= c!48408 (or (= lt!149061 k!2524) (= (bvadd lt!149061 lt!149061) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!67481 c!48410) b!299600))

(assert (= (and d!67481 (not c!48410)) b!299604))

(assert (= (and b!299604 c!48408) b!299601))

(assert (= (and b!299604 (not c!48408)) b!299596))

(assert (= (and d!67481 c!48409) b!299598))

(assert (= (and d!67481 (not c!48409)) b!299597))

(assert (= (and b!299597 res!157962) b!299599))

(assert (= (and b!299599 (not res!157961)) b!299603))

(assert (= (and b!299603 (not res!157963)) b!299602))

(declare-fun m!311797 () Bool)

(assert (=> b!299603 m!311797))

(assert (=> b!299599 m!311797))

(assert (=> b!299602 m!311797))

(declare-fun m!311799 () Bool)

(assert (=> b!299596 m!311799))

(assert (=> b!299596 m!311799))

(declare-fun m!311801 () Bool)

(assert (=> b!299596 m!311801))

(declare-fun m!311803 () Bool)

(assert (=> d!67481 m!311803))

(assert (=> d!67481 m!311687))

(assert (=> b!299439 d!67481))

(declare-fun e!189244 () SeekEntryResult!2324)

(declare-fun b!299605 () Bool)

(assert (=> b!299605 (= e!189244 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148988 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!299606 () Bool)

(declare-fun e!189242 () Bool)

(declare-fun e!189241 () Bool)

(assert (=> b!299606 (= e!189242 e!189241)))

(declare-fun res!157965 () Bool)

(declare-fun lt!149064 () SeekEntryResult!2324)

(assert (=> b!299606 (= res!157965 (and (is-Intermediate!2324 lt!149064) (not (undefined!3136 lt!149064)) (bvslt (x!29679 lt!149064) #b01111111111111111111111111111110) (bvsge (x!29679 lt!149064) #b00000000000000000000000000000000) (bvsge (x!29679 lt!149064) #b00000000000000000000000000000000)))))

(assert (=> b!299606 (=> (not res!157965) (not e!189241))))

(declare-fun b!299607 () Bool)

(assert (=> b!299607 (= e!189242 (bvsge (x!29679 lt!149064) #b01111111111111111111111111111110))))

(declare-fun b!299608 () Bool)

(assert (=> b!299608 (and (bvsge (index!11474 lt!149064) #b00000000000000000000000000000000) (bvslt (index!11474 lt!149064) (size!7516 a!3312)))))

(declare-fun res!157964 () Bool)

(assert (=> b!299608 (= res!157964 (= (select (arr!7164 a!3312) (index!11474 lt!149064)) k!2524))))

(declare-fun e!189245 () Bool)

(assert (=> b!299608 (=> res!157964 e!189245)))

(assert (=> b!299608 (= e!189241 e!189245)))

(declare-fun b!299609 () Bool)

(declare-fun e!189243 () SeekEntryResult!2324)

(assert (=> b!299609 (= e!189243 (Intermediate!2324 true lt!148988 #b00000000000000000000000000000000))))

(declare-fun d!67491 () Bool)

(assert (=> d!67491 e!189242))

(declare-fun c!48412 () Bool)

(assert (=> d!67491 (= c!48412 (and (is-Intermediate!2324 lt!149064) (undefined!3136 lt!149064)))))

(assert (=> d!67491 (= lt!149064 e!189243)))

(declare-fun c!48413 () Bool)

(assert (=> d!67491 (= c!48413 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!149063 () (_ BitVec 64))

(assert (=> d!67491 (= lt!149063 (select (arr!7164 a!3312) lt!148988))))

(assert (=> d!67491 (validMask!0 mask!3809)))

(assert (=> d!67491 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148988 k!2524 a!3312 mask!3809) lt!149064)))

(declare-fun b!299610 () Bool)

(assert (=> b!299610 (= e!189244 (Intermediate!2324 false lt!148988 #b00000000000000000000000000000000))))

(declare-fun b!299611 () Bool)

(assert (=> b!299611 (and (bvsge (index!11474 lt!149064) #b00000000000000000000000000000000) (bvslt (index!11474 lt!149064) (size!7516 a!3312)))))

(assert (=> b!299611 (= e!189245 (= (select (arr!7164 a!3312) (index!11474 lt!149064)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!299612 () Bool)

(assert (=> b!299612 (and (bvsge (index!11474 lt!149064) #b00000000000000000000000000000000) (bvslt (index!11474 lt!149064) (size!7516 a!3312)))))

(declare-fun res!157966 () Bool)

(assert (=> b!299612 (= res!157966 (= (select (arr!7164 a!3312) (index!11474 lt!149064)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299612 (=> res!157966 e!189245)))

(declare-fun b!299613 () Bool)

(assert (=> b!299613 (= e!189243 e!189244)))

(declare-fun c!48411 () Bool)

(assert (=> b!299613 (= c!48411 (or (= lt!149063 k!2524) (= (bvadd lt!149063 lt!149063) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!67491 c!48413) b!299609))

(assert (= (and d!67491 (not c!48413)) b!299613))

(assert (= (and b!299613 c!48411) b!299610))

(assert (= (and b!299613 (not c!48411)) b!299605))

(assert (= (and d!67491 c!48412) b!299607))

(assert (= (and d!67491 (not c!48412)) b!299606))

(assert (= (and b!299606 res!157965) b!299608))

(assert (= (and b!299608 (not res!157964)) b!299612))

(assert (= (and b!299612 (not res!157966)) b!299611))

(declare-fun m!311805 () Bool)

(assert (=> b!299612 m!311805))

(assert (=> b!299608 m!311805))

(assert (=> b!299611 m!311805))

(assert (=> b!299605 m!311799))

(assert (=> b!299605 m!311799))

(declare-fun m!311807 () Bool)

(assert (=> b!299605 m!311807))

(declare-fun m!311809 () Bool)

(assert (=> d!67491 m!311809))

(assert (=> d!67491 m!311687))

(assert (=> b!299439 d!67491))

(declare-fun d!67495 () Bool)

(declare-fun lt!149074 () (_ BitVec 32))

(declare-fun lt!149073 () (_ BitVec 32))

(assert (=> d!67495 (= lt!149074 (bvmul (bvxor lt!149073 (bvlshr lt!149073 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67495 (= lt!149073 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67495 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157967 (let ((h!5337 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29684 (bvmul (bvxor h!5337 (bvlshr h!5337 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29684 (bvlshr x!29684 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157967 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157967 #b00000000000000000000000000000000))))))

(assert (=> d!67495 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!149074 (bvlshr lt!149074 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!299439 d!67495))

(declare-fun d!67497 () Bool)

(assert (=> d!67497 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!299434 d!67497))

(declare-fun d!67499 () Bool)

(assert (=> d!67499 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29716 d!67499))

(declare-fun d!67505 () Bool)

(assert (=> d!67505 (= (array_inv!5118 a!3312) (bvsge (size!7516 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29716 d!67505))

(declare-fun d!67507 () Bool)

(declare-fun res!157985 () Bool)

(declare-fun e!189270 () Bool)

(assert (=> d!67507 (=> res!157985 e!189270)))

(assert (=> d!67507 (= res!157985 (= (select (arr!7164 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67507 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!189270)))

(declare-fun b!299654 () Bool)

(declare-fun e!189271 () Bool)

(assert (=> b!299654 (= e!189270 e!189271)))

(declare-fun res!157986 () Bool)

(assert (=> b!299654 (=> (not res!157986) (not e!189271))))

(assert (=> b!299654 (= res!157986 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7516 a!3312)))))

(declare-fun b!299655 () Bool)

