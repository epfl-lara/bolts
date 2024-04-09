; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29766 () Bool)

(assert start!29766)

(declare-fun b!299668 () Bool)

(declare-fun res!158002 () Bool)

(declare-fun e!189279 () Bool)

(assert (=> b!299668 (=> (not res!158002) (not e!189279))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15137 0))(
  ( (array!15138 (arr!7165 (Array (_ BitVec 32) (_ BitVec 64))) (size!7517 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15137)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!299668 (= res!158002 (and (= (size!7517 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7517 a!3312))))))

(declare-fun res!157999 () Bool)

(assert (=> start!29766 (=> (not res!157999) (not e!189279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29766 (= res!157999 (validMask!0 mask!3809))))

(assert (=> start!29766 e!189279))

(assert (=> start!29766 true))

(declare-fun array_inv!5119 (array!15137) Bool)

(assert (=> start!29766 (array_inv!5119 a!3312)))

(declare-fun b!299669 () Bool)

(declare-fun e!189278 () Bool)

(assert (=> b!299669 (= e!189279 e!189278)))

(declare-fun res!158003 () Bool)

(assert (=> b!299669 (=> (not res!158003) (not e!189278))))

(declare-datatypes ((SeekEntryResult!2325 0))(
  ( (MissingZero!2325 (index!11476 (_ BitVec 32))) (Found!2325 (index!11477 (_ BitVec 32))) (Intermediate!2325 (undefined!3137 Bool) (index!11478 (_ BitVec 32)) (x!29694 (_ BitVec 32))) (Undefined!2325) (MissingVacant!2325 (index!11479 (_ BitVec 32))) )
))
(declare-fun lt!149095 () SeekEntryResult!2325)

(declare-fun lt!149096 () Bool)

(assert (=> b!299669 (= res!158003 (or lt!149096 (= lt!149095 (MissingVacant!2325 i!1256))))))

(assert (=> b!299669 (= lt!149096 (= lt!149095 (MissingZero!2325 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15137 (_ BitVec 32)) SeekEntryResult!2325)

(assert (=> b!299669 (= lt!149095 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!299670 () Bool)

(declare-fun res!158000 () Bool)

(assert (=> b!299670 (=> (not res!158000) (not e!189279))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!299670 (= res!158000 (validKeyInArray!0 k!2524))))

(declare-fun lt!149098 () SeekEntryResult!2325)

(declare-fun b!299671 () Bool)

(assert (=> b!299671 (= e!189278 (and (not lt!149096) (= lt!149095 (MissingVacant!2325 i!1256)) (let ((bdg!6452 (not (is-Intermediate!2325 lt!149098)))) (and (or bdg!6452 (not (undefined!3137 lt!149098))) (or bdg!6452 (not (= (select (arr!7165 a!3312) (index!11478 lt!149098)) #b1000000000000000000000000000000000000000000000000000000000000000))) (not bdg!6452) (= (select (arr!7165 a!3312) (index!11478 lt!149098)) k!2524)))))))

(declare-fun lt!149099 () (_ BitVec 32))

(declare-fun lt!149097 () SeekEntryResult!2325)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15137 (_ BitVec 32)) SeekEntryResult!2325)

(assert (=> b!299671 (= lt!149097 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149099 k!2524 (array!15138 (store (arr!7165 a!3312) i!1256 k!2524) (size!7517 a!3312)) mask!3809))))

(assert (=> b!299671 (= lt!149098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149099 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299671 (= lt!149099 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!299672 () Bool)

(declare-fun res!158004 () Bool)

(assert (=> b!299672 (=> (not res!158004) (not e!189278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15137 (_ BitVec 32)) Bool)

(assert (=> b!299672 (= res!158004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!299673 () Bool)

(declare-fun res!158001 () Bool)

(assert (=> b!299673 (=> (not res!158001) (not e!189279))))

(declare-fun arrayContainsKey!0 (array!15137 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!299673 (= res!158001 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!29766 res!157999) b!299668))

(assert (= (and b!299668 res!158002) b!299670))

(assert (= (and b!299670 res!158000) b!299673))

(assert (= (and b!299673 res!158001) b!299669))

(assert (= (and b!299669 res!158003) b!299672))

(assert (= (and b!299672 res!158004) b!299671))

(declare-fun m!311827 () Bool)

(assert (=> b!299670 m!311827))

(declare-fun m!311829 () Bool)

(assert (=> start!29766 m!311829))

(declare-fun m!311831 () Bool)

(assert (=> start!29766 m!311831))

(declare-fun m!311833 () Bool)

(assert (=> b!299673 m!311833))

(declare-fun m!311835 () Bool)

(assert (=> b!299672 m!311835))

(declare-fun m!311837 () Bool)

(assert (=> b!299669 m!311837))

(declare-fun m!311839 () Bool)

(assert (=> b!299671 m!311839))

(declare-fun m!311841 () Bool)

(assert (=> b!299671 m!311841))

(declare-fun m!311843 () Bool)

(assert (=> b!299671 m!311843))

(declare-fun m!311845 () Bool)

(assert (=> b!299671 m!311845))

(declare-fun m!311847 () Bool)

(assert (=> b!299671 m!311847))

(push 1)

(assert (not b!299669))

(assert (not b!299673))

(assert (not b!299672))

(assert (not b!299670))

(assert (not start!29766))

(assert (not b!299671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67517 () Bool)

(declare-fun res!158045 () Bool)

(declare-fun e!189303 () Bool)

(assert (=> d!67517 (=> res!158045 e!189303)))

(assert (=> d!67517 (= res!158045 (= (select (arr!7165 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67517 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!189303)))

(declare-fun b!299714 () Bool)

(declare-fun e!189304 () Bool)

(assert (=> b!299714 (= e!189303 e!189304)))

(declare-fun res!158046 () Bool)

(assert (=> b!299714 (=> (not res!158046) (not e!189304))))

(assert (=> b!299714 (= res!158046 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7517 a!3312)))))

(declare-fun b!299715 () Bool)

(assert (=> b!299715 (= e!189304 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67517 (not res!158045)) b!299714))

(assert (= (and b!299714 res!158046) b!299715))

(declare-fun m!311893 () Bool)

(assert (=> d!67517 m!311893))

(declare-fun m!311895 () Bool)

(assert (=> b!299715 m!311895))

(assert (=> b!299673 d!67517))

(declare-fun b!299784 () Bool)

(declare-fun lt!149165 () SeekEntryResult!2325)

(declare-fun e!189347 () SeekEntryResult!2325)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15137 (_ BitVec 32)) SeekEntryResult!2325)

(assert (=> b!299784 (= e!189347 (seekKeyOrZeroReturnVacant!0 (x!29694 lt!149165) (index!11478 lt!149165) (index!11478 lt!149165) k!2524 a!3312 mask!3809))))

(declare-fun d!67519 () Bool)

(declare-fun lt!149166 () SeekEntryResult!2325)

(assert (=> d!67519 (and (or (is-Undefined!2325 lt!149166) (not (is-Found!2325 lt!149166)) (and (bvsge (index!11477 lt!149166) #b00000000000000000000000000000000) (bvslt (index!11477 lt!149166) (size!7517 a!3312)))) (or (is-Undefined!2325 lt!149166) (is-Found!2325 lt!149166) (not (is-MissingZero!2325 lt!149166)) (and (bvsge (index!11476 lt!149166) #b00000000000000000000000000000000) (bvslt (index!11476 lt!149166) (size!7517 a!3312)))) (or (is-Undefined!2325 lt!149166) (is-Found!2325 lt!149166) (is-MissingZero!2325 lt!149166) (not (is-MissingVacant!2325 lt!149166)) (and (bvsge (index!11479 lt!149166) #b00000000000000000000000000000000) (bvslt (index!11479 lt!149166) (size!7517 a!3312)))) (or (is-Undefined!2325 lt!149166) (ite (is-Found!2325 lt!149166) (= (select (arr!7165 a!3312) (index!11477 lt!149166)) k!2524) (ite (is-MissingZero!2325 lt!149166) (= (select (arr!7165 a!3312) (index!11476 lt!149166)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2325 lt!149166) (= (select (arr!7165 a!3312) (index!11479 lt!149166)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!189346 () SeekEntryResult!2325)

(assert (=> d!67519 (= lt!149166 e!189346)))

(declare-fun c!48450 () Bool)

(assert (=> d!67519 (= c!48450 (and (is-Intermediate!2325 lt!149165) (undefined!3137 lt!149165)))))

(assert (=> d!67519 (= lt!149165 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67519 (validMask!0 mask!3809)))

(assert (=> d!67519 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!149166)))

(declare-fun b!299785 () Bool)

(assert (=> b!299785 (= e!189347 (MissingZero!2325 (index!11478 lt!149165)))))

(declare-fun b!299786 () Bool)

(declare-fun e!189348 () SeekEntryResult!2325)

(assert (=> b!299786 (= e!189348 (Found!2325 (index!11478 lt!149165)))))

(declare-fun b!299787 () Bool)

(assert (=> b!299787 (= e!189346 e!189348)))

(declare-fun lt!149167 () (_ BitVec 64))

(assert (=> b!299787 (= lt!149167 (select (arr!7165 a!3312) (index!11478 lt!149165)))))

(declare-fun c!48451 () Bool)

(assert (=> b!299787 (= c!48451 (= lt!149167 k!2524))))

(declare-fun b!299788 () Bool)

(assert (=> b!299788 (= e!189346 Undefined!2325)))

(declare-fun b!299789 () Bool)

(declare-fun c!48449 () Bool)

(assert (=> b!299789 (= c!48449 (= lt!149167 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299789 (= e!189348 e!189347)))

(assert (= (and d!67519 c!48450) b!299788))

(assert (= (and d!67519 (not c!48450)) b!299787))

(assert (= (and b!299787 c!48451) b!299786))

(assert (= (and b!299787 (not c!48451)) b!299789))

(assert (= (and b!299789 c!48449) b!299785))

(assert (= (and b!299789 (not c!48449)) b!299784))

(declare-fun m!311923 () Bool)

(assert (=> b!299784 m!311923))

(assert (=> d!67519 m!311829))

(declare-fun m!311925 () Bool)

(assert (=> d!67519 m!311925))

(assert (=> d!67519 m!311845))

(declare-fun m!311927 () Bool)

(assert (=> d!67519 m!311927))

(declare-fun m!311929 () Bool)

(assert (=> d!67519 m!311929))

(declare-fun m!311931 () Bool)

(assert (=> d!67519 m!311931))

(assert (=> d!67519 m!311845))

(declare-fun m!311933 () Bool)

(assert (=> b!299787 m!311933))

(assert (=> b!299669 d!67519))

(declare-fun d!67529 () Bool)

(assert (=> d!67529 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!299670 d!67529))

(declare-fun bm!25838 () Bool)

(declare-fun call!25841 () Bool)

(assert (=> bm!25838 (= call!25841 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!299844 () Bool)

(declare-fun e!189386 () Bool)

(assert (=> b!299844 (= e!189386 call!25841)))

(declare-fun b!299846 () Bool)

(declare-fun e!189384 () Bool)

(assert (=> b!299846 (= e!189384 e!189386)))

(declare-fun lt!149186 () (_ BitVec 64))

(assert (=> b!299846 (= lt!149186 (select (arr!7165 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9348 0))(
  ( (Unit!9349) )
))
(declare-fun lt!149185 () Unit!9348)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15137 (_ BitVec 64) (_ BitVec 32)) Unit!9348)

(assert (=> b!299846 (= lt!149185 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!149186 #b00000000000000000000000000000000))))

(assert (=> b!299846 (arrayContainsKey!0 a!3312 lt!149186 #b00000000000000000000000000000000)))

(declare-fun lt!149187 () Unit!9348)

(assert (=> b!299846 (= lt!149187 lt!149185)))

(declare-fun res!158095 () Bool)

(assert (=> b!299846 (= res!158095 (= (seekEntryOrOpen!0 (select (arr!7165 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2325 #b00000000000000000000000000000000)))))

(assert (=> b!299846 (=> (not res!158095) (not e!189386))))

(declare-fun b!299847 () Bool)

(assert (=> b!299847 (= e!189384 call!25841)))

(declare-fun d!67531 () Bool)

(declare-fun res!158096 () Bool)

(declare-fun e!189385 () Bool)

(assert (=> d!67531 (=> res!158096 e!189385)))

(assert (=> d!67531 (= res!158096 (bvsge #b00000000000000000000000000000000 (size!7517 a!3312)))))

(assert (=> d!67531 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!189385)))

(declare-fun b!299845 () Bool)

(assert (=> b!299845 (= e!189385 e!189384)))

(declare-fun c!48467 () Bool)

(assert (=> b!299845 (= c!48467 (validKeyInArray!0 (select (arr!7165 a!3312) #b00000000000000000000000000000000)))))

(assert (= (and d!67531 (not res!158096)) b!299845))

(assert (= (and b!299845 c!48467) b!299846))

(assert (= (and b!299845 (not c!48467)) b!299847))

(assert (= (and b!299846 res!158095) b!299844))

(assert (= (or b!299844 b!299847) bm!25838))

(declare-fun m!311963 () Bool)

(assert (=> bm!25838 m!311963))

(assert (=> b!299846 m!311893))

(declare-fun m!311965 () Bool)

(assert (=> b!299846 m!311965))

(declare-fun m!311967 () Bool)

(assert (=> b!299846 m!311967))

(assert (=> b!299846 m!311893))

(declare-fun m!311969 () Bool)

(assert (=> b!299846 m!311969))

(assert (=> b!299845 m!311893))

(assert (=> b!299845 m!311893))

(declare-fun m!311971 () Bool)

(assert (=> b!299845 m!311971))

(assert (=> b!299672 d!67531))

(declare-fun d!67541 () Bool)

(assert (=> d!67541 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29766 d!67541))

(declare-fun d!67549 () Bool)

(assert (=> d!67549 (= (array_inv!5119 a!3312) (bvsge (size!7517 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29766 d!67549))

(declare-fun d!67551 () Bool)

(declare-fun e!189425 () Bool)

(assert (=> d!67551 e!189425))

(declare-fun c!48493 () Bool)

(declare-fun lt!149217 () SeekEntryResult!2325)

(assert (=> d!67551 (= c!48493 (and (is-Intermediate!2325 lt!149217) (undefined!3137 lt!149217)))))

(declare-fun e!189422 () SeekEntryResult!2325)

(assert (=> d!67551 (= lt!149217 e!189422)))

(declare-fun c!48492 () Bool)

(assert (=> d!67551 (= c!48492 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!149216 () (_ BitVec 64))

(assert (=> d!67551 (= lt!149216 (select (arr!7165 (array!15138 (store (arr!7165 a!3312) i!1256 k!2524) (size!7517 a!3312))) lt!149099))))

(assert (=> d!67551 (validMask!0 mask!3809)))

(assert (=> d!67551 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149099 k!2524 (array!15138 (store (arr!7165 a!3312) i!1256 k!2524) (size!7517 a!3312)) mask!3809) lt!149217)))

(declare-fun b!299908 () Bool)

(declare-fun e!189423 () SeekEntryResult!2325)

(assert (=> b!299908 (= e!189423 (Intermediate!2325 false lt!149099 #b00000000000000000000000000000000))))

(declare-fun b!299909 () Bool)

(assert (=> b!299909 (= e!189422 e!189423)))

(declare-fun c!48494 () Bool)

(assert (=> b!299909 (= c!48494 (or (= lt!149216 k!2524) (= (bvadd lt!149216 lt!149216) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!299910 () Bool)

(assert (=> b!299910 (and (bvsge (index!11478 lt!149217) #b00000000000000000000000000000000) (bvslt (index!11478 lt!149217) (size!7517 (array!15138 (store (arr!7165 a!3312) i!1256 k!2524) (size!7517 a!3312)))))))

(declare-fun res!158109 () Bool)

(assert (=> b!299910 (= res!158109 (= (select (arr!7165 (array!15138 (store (arr!7165 a!3312) i!1256 k!2524) (size!7517 a!3312))) (index!11478 lt!149217)) k!2524))))

(declare-fun e!189421 () Bool)

(assert (=> b!299910 (=> res!158109 e!189421)))

(declare-fun e!189424 () Bool)

(assert (=> b!299910 (= e!189424 e!189421)))

(declare-fun b!299911 () Bool)

(assert (=> b!299911 (= e!189425 (bvsge (x!29694 lt!149217) #b01111111111111111111111111111110))))

(declare-fun b!299912 () Bool)

(assert (=> b!299912 (= e!189425 e!189424)))

(declare-fun res!158110 () Bool)

(assert (=> b!299912 (= res!158110 (and (is-Intermediate!2325 lt!149217) (not (undefined!3137 lt!149217)) (bvslt (x!29694 lt!149217) #b01111111111111111111111111111110) (bvsge (x!29694 lt!149217) #b00000000000000000000000000000000) (bvsge (x!29694 lt!149217) #b00000000000000000000000000000000)))))

(assert (=> b!299912 (=> (not res!158110) (not e!189424))))

(declare-fun b!299913 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299913 (= e!189423 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!149099 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15138 (store (arr!7165 a!3312) i!1256 k!2524) (size!7517 a!3312)) mask!3809))))

(declare-fun b!299914 () Bool)

(assert (=> b!299914 (= e!189422 (Intermediate!2325 true lt!149099 #b00000000000000000000000000000000))))

(declare-fun b!299915 () Bool)

(assert (=> b!299915 (and (bvsge (index!11478 lt!149217) #b00000000000000000000000000000000) (bvslt (index!11478 lt!149217) (size!7517 (array!15138 (store (arr!7165 a!3312) i!1256 k!2524) (size!7517 a!3312)))))))

(declare-fun res!158111 () Bool)

(assert (=> b!299915 (= res!158111 (= (select (arr!7165 (array!15138 (store (arr!7165 a!3312) i!1256 k!2524) (size!7517 a!3312))) (index!11478 lt!149217)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299915 (=> res!158111 e!189421)))

(declare-fun b!299916 () Bool)

(assert (=> b!299916 (and (bvsge (index!11478 lt!149217) #b00000000000000000000000000000000) (bvslt (index!11478 lt!149217) (size!7517 (array!15138 (store (arr!7165 a!3312) i!1256 k!2524) (size!7517 a!3312)))))))

(assert (=> b!299916 (= e!189421 (= (select (arr!7165 (array!15138 (store (arr!7165 a!3312) i!1256 k!2524) (size!7517 a!3312))) (index!11478 lt!149217)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!67551 c!48492) b!299914))

(assert (= (and d!67551 (not c!48492)) b!299909))

(assert (= (and b!299909 c!48494) b!299908))

(assert (= (and b!299909 (not c!48494)) b!299913))

(assert (= (and d!67551 c!48493) b!299911))

(assert (= (and d!67551 (not c!48493)) b!299912))

(assert (= (and b!299912 res!158110) b!299910))

(assert (= (and b!299910 (not res!158109)) b!299915))

(assert (= (and b!299915 (not res!158111)) b!299916))

(declare-fun m!311999 () Bool)

(assert (=> b!299913 m!311999))

(assert (=> b!299913 m!311999))

(declare-fun m!312001 () Bool)

(assert (=> b!299913 m!312001))

(declare-fun m!312003 () Bool)

(assert (=> b!299915 m!312003))

(assert (=> b!299910 m!312003))

(declare-fun m!312005 () Bool)

(assert (=> d!67551 m!312005))

(assert (=> d!67551 m!311829))

(assert (=> b!299916 m!312003))

(assert (=> b!299671 d!67551))

(declare-fun d!67559 () Bool)

(declare-fun e!189430 () Bool)

(assert (=> d!67559 e!189430))

(declare-fun c!48496 () Bool)

(declare-fun lt!149219 () SeekEntryResult!2325)

(assert (=> d!67559 (= c!48496 (and (is-Intermediate!2325 lt!149219) (undefined!3137 lt!149219)))))

(declare-fun e!189427 () SeekEntryResult!2325)

(assert (=> d!67559 (= lt!149219 e!189427)))

(declare-fun c!48495 () Bool)

(assert (=> d!67559 (= c!48495 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!149218 () (_ BitVec 64))

(assert (=> d!67559 (= lt!149218 (select (arr!7165 a!3312) lt!149099))))

(assert (=> d!67559 (validMask!0 mask!3809)))

(assert (=> d!67559 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149099 k!2524 a!3312 mask!3809) lt!149219)))

(declare-fun b!299917 () Bool)

(declare-fun e!189428 () SeekEntryResult!2325)

(assert (=> b!299917 (= e!189428 (Intermediate!2325 false lt!149099 #b00000000000000000000000000000000))))

(declare-fun b!299918 () Bool)

(assert (=> b!299918 (= e!189427 e!189428)))

(declare-fun c!48497 () Bool)

(assert (=> b!299918 (= c!48497 (or (= lt!149218 k!2524) (= (bvadd lt!149218 lt!149218) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!299919 () Bool)

(assert (=> b!299919 (and (bvsge (index!11478 lt!149219) #b00000000000000000000000000000000) (bvslt (index!11478 lt!149219) (size!7517 a!3312)))))

(declare-fun res!158112 () Bool)

(assert (=> b!299919 (= res!158112 (= (select (arr!7165 a!3312) (index!11478 lt!149219)) k!2524))))

(declare-fun e!189426 () Bool)

(assert (=> b!299919 (=> res!158112 e!189426)))

(declare-fun e!189429 () Bool)

(assert (=> b!299919 (= e!189429 e!189426)))

(declare-fun b!299920 () Bool)

(assert (=> b!299920 (= e!189430 (bvsge (x!29694 lt!149219) #b01111111111111111111111111111110))))

(declare-fun b!299921 () Bool)

(assert (=> b!299921 (= e!189430 e!189429)))

(declare-fun res!158113 () Bool)

(assert (=> b!299921 (= res!158113 (and (is-Intermediate!2325 lt!149219) (not (undefined!3137 lt!149219)) (bvslt (x!29694 lt!149219) #b01111111111111111111111111111110) (bvsge (x!29694 lt!149219) #b00000000000000000000000000000000) (bvsge (x!29694 lt!149219) #b00000000000000000000000000000000)))))

(assert (=> b!299921 (=> (not res!158113) (not e!189429))))

(declare-fun b!299922 () Bool)

(assert (=> b!299922 (= e!189428 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!149099 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!299923 () Bool)

(assert (=> b!299923 (= e!189427 (Intermediate!2325 true lt!149099 #b00000000000000000000000000000000))))

(declare-fun b!299924 () Bool)

(assert (=> b!299924 (and (bvsge (index!11478 lt!149219) #b00000000000000000000000000000000) (bvslt (index!11478 lt!149219) (size!7517 a!3312)))))

(declare-fun res!158114 () Bool)

(assert (=> b!299924 (= res!158114 (= (select (arr!7165 a!3312) (index!11478 lt!149219)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299924 (=> res!158114 e!189426)))

(declare-fun b!299925 () Bool)

(assert (=> b!299925 (and (bvsge (index!11478 lt!149219) #b00000000000000000000000000000000) (bvslt (index!11478 lt!149219) (size!7517 a!3312)))))

(assert (=> b!299925 (= e!189426 (= (select (arr!7165 a!3312) (index!11478 lt!149219)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!67559 c!48495) b!299923))

(assert (= (and d!67559 (not c!48495)) b!299918))

(assert (= (and b!299918 c!48497) b!299917))

(assert (= (and b!299918 (not c!48497)) b!299922))

(assert (= (and d!67559 c!48496) b!299920))

(assert (= (and d!67559 (not c!48496)) b!299921))

(assert (= (and b!299921 res!158113) b!299919))

(assert (= (and b!299919 (not res!158112)) b!299924))

(assert (= (and b!299924 (not res!158114)) b!299925))

(assert (=> b!299922 m!311999))

(assert (=> b!299922 m!311999))

(declare-fun m!312007 () Bool)

(assert (=> b!299922 m!312007))

(declare-fun m!312009 () Bool)

(assert (=> b!299924 m!312009))

(assert (=> b!299919 m!312009))

(declare-fun m!312011 () Bool)

(assert (=> d!67559 m!312011))

(assert (=> d!67559 m!311829))

(assert (=> b!299925 m!312009))

(assert (=> b!299671 d!67559))

(declare-fun d!67561 () Bool)

(declare-fun lt!149225 () (_ BitVec 32))

(declare-fun lt!149224 () (_ BitVec 32))

(assert (=> d!67561 (= lt!149225 (bvmul (bvxor lt!149224 (bvlshr lt!149224 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67561 (= lt!149224 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67561 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!158115 (let ((h!5341 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29702 (bvmul (bvxor h!5341 (bvlshr h!5341 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29702 (bvlshr x!29702 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!158115 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!158115 #b00000000000000000000000000000000))))))

(assert (=> d!67561 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!149225 (bvlshr lt!149225 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!299671 d!67561))

(push 1)

