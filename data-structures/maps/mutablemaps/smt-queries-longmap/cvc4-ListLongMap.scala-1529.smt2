; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28918 () Bool)

(assert start!28918)

(declare-fun b!294276 () Bool)

(declare-fun e!186045 () Bool)

(declare-fun e!186046 () Bool)

(assert (=> b!294276 (= e!186045 e!186046)))

(declare-fun res!154767 () Bool)

(assert (=> b!294276 (=> (not res!154767) (not e!186046))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!145940 () Bool)

(declare-datatypes ((SeekEntryResult!2225 0))(
  ( (MissingZero!2225 (index!11070 (_ BitVec 32))) (Found!2225 (index!11071 (_ BitVec 32))) (Intermediate!2225 (undefined!3037 Bool) (index!11072 (_ BitVec 32)) (x!29234 (_ BitVec 32))) (Undefined!2225) (MissingVacant!2225 (index!11073 (_ BitVec 32))) )
))
(declare-fun lt!145939 () SeekEntryResult!2225)

(assert (=> b!294276 (= res!154767 (or lt!145940 (= lt!145939 (MissingVacant!2225 i!1256))))))

(assert (=> b!294276 (= lt!145940 (= lt!145939 (MissingZero!2225 i!1256)))))

(declare-datatypes ((array!14898 0))(
  ( (array!14899 (arr!7065 (Array (_ BitVec 32) (_ BitVec 64))) (size!7417 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14898)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14898 (_ BitVec 32)) SeekEntryResult!2225)

(assert (=> b!294276 (= lt!145939 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!294277 () Bool)

(declare-fun res!154765 () Bool)

(assert (=> b!294277 (=> (not res!154765) (not e!186045))))

(assert (=> b!294277 (= res!154765 (and (= (size!7417 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7417 a!3312))))))

(declare-fun b!294278 () Bool)

(declare-fun res!154763 () Bool)

(assert (=> b!294278 (=> (not res!154763) (not e!186045))))

(declare-fun arrayContainsKey!0 (array!14898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!294278 (= res!154763 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!294279 () Bool)

(declare-fun res!154762 () Bool)

(assert (=> b!294279 (=> (not res!154762) (not e!186046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14898 (_ BitVec 32)) Bool)

(assert (=> b!294279 (= res!154762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!294280 () Bool)

(declare-fun lt!145943 () SeekEntryResult!2225)

(assert (=> b!294280 (= e!186046 (and lt!145940 (let ((bdg!6235 (not (is-Intermediate!2225 lt!145943)))) (and (or bdg!6235 (not (undefined!3037 lt!145943))) (or bdg!6235 (not (= (select (arr!7065 a!3312) (index!11072 lt!145943)) #b1000000000000000000000000000000000000000000000000000000000000000))) (not bdg!6235) (= (select (arr!7065 a!3312) (index!11072 lt!145943)) k!2524)))))))

(declare-fun lt!145941 () SeekEntryResult!2225)

(declare-fun lt!145942 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14898 (_ BitVec 32)) SeekEntryResult!2225)

(assert (=> b!294280 (= lt!145941 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145942 k!2524 (array!14899 (store (arr!7065 a!3312) i!1256 k!2524) (size!7417 a!3312)) mask!3809))))

(assert (=> b!294280 (= lt!145943 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145942 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294280 (= lt!145942 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!154766 () Bool)

(assert (=> start!28918 (=> (not res!154766) (not e!186045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28918 (= res!154766 (validMask!0 mask!3809))))

(assert (=> start!28918 e!186045))

(assert (=> start!28918 true))

(declare-fun array_inv!5019 (array!14898) Bool)

(assert (=> start!28918 (array_inv!5019 a!3312)))

(declare-fun b!294281 () Bool)

(declare-fun res!154764 () Bool)

(assert (=> b!294281 (=> (not res!154764) (not e!186045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!294281 (= res!154764 (validKeyInArray!0 k!2524))))

(assert (= (and start!28918 res!154766) b!294277))

(assert (= (and b!294277 res!154765) b!294281))

(assert (= (and b!294281 res!154764) b!294278))

(assert (= (and b!294278 res!154763) b!294276))

(assert (= (and b!294276 res!154767) b!294279))

(assert (= (and b!294279 res!154762) b!294280))

(declare-fun m!307783 () Bool)

(assert (=> b!294279 m!307783))

(declare-fun m!307785 () Bool)

(assert (=> start!28918 m!307785))

(declare-fun m!307787 () Bool)

(assert (=> start!28918 m!307787))

(declare-fun m!307789 () Bool)

(assert (=> b!294278 m!307789))

(declare-fun m!307791 () Bool)

(assert (=> b!294280 m!307791))

(declare-fun m!307793 () Bool)

(assert (=> b!294280 m!307793))

(declare-fun m!307795 () Bool)

(assert (=> b!294280 m!307795))

(declare-fun m!307797 () Bool)

(assert (=> b!294280 m!307797))

(declare-fun m!307799 () Bool)

(assert (=> b!294280 m!307799))

(declare-fun m!307801 () Bool)

(assert (=> b!294281 m!307801))

(declare-fun m!307803 () Bool)

(assert (=> b!294276 m!307803))

(push 1)

(assert (not b!294281))

(assert (not b!294276))

(assert (not b!294278))

(assert (not b!294280))

(assert (not b!294279))

(assert (not start!28918))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!294348 () Bool)

(declare-fun e!186092 () SeekEntryResult!2225)

(assert (=> b!294348 (= e!186092 Undefined!2225)))

(declare-fun e!186090 () SeekEntryResult!2225)

(declare-fun b!294349 () Bool)

(declare-fun lt!145975 () SeekEntryResult!2225)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14898 (_ BitVec 32)) SeekEntryResult!2225)

(assert (=> b!294349 (= e!186090 (seekKeyOrZeroReturnVacant!0 (x!29234 lt!145975) (index!11072 lt!145975) (index!11072 lt!145975) k!2524 a!3312 mask!3809))))

(declare-fun b!294350 () Bool)

(declare-fun e!186091 () SeekEntryResult!2225)

(assert (=> b!294350 (= e!186092 e!186091)))

(declare-fun lt!145976 () (_ BitVec 64))

(assert (=> b!294350 (= lt!145976 (select (arr!7065 a!3312) (index!11072 lt!145975)))))

(declare-fun c!47353 () Bool)

(assert (=> b!294350 (= c!47353 (= lt!145976 k!2524))))

(declare-fun d!66679 () Bool)

(declare-fun lt!145974 () SeekEntryResult!2225)

(assert (=> d!66679 (and (or (is-Undefined!2225 lt!145974) (not (is-Found!2225 lt!145974)) (and (bvsge (index!11071 lt!145974) #b00000000000000000000000000000000) (bvslt (index!11071 lt!145974) (size!7417 a!3312)))) (or (is-Undefined!2225 lt!145974) (is-Found!2225 lt!145974) (not (is-MissingZero!2225 lt!145974)) (and (bvsge (index!11070 lt!145974) #b00000000000000000000000000000000) (bvslt (index!11070 lt!145974) (size!7417 a!3312)))) (or (is-Undefined!2225 lt!145974) (is-Found!2225 lt!145974) (is-MissingZero!2225 lt!145974) (not (is-MissingVacant!2225 lt!145974)) (and (bvsge (index!11073 lt!145974) #b00000000000000000000000000000000) (bvslt (index!11073 lt!145974) (size!7417 a!3312)))) (or (is-Undefined!2225 lt!145974) (ite (is-Found!2225 lt!145974) (= (select (arr!7065 a!3312) (index!11071 lt!145974)) k!2524) (ite (is-MissingZero!2225 lt!145974) (= (select (arr!7065 a!3312) (index!11070 lt!145974)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2225 lt!145974) (= (select (arr!7065 a!3312) (index!11073 lt!145974)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66679 (= lt!145974 e!186092)))

(declare-fun c!47355 () Bool)

(assert (=> d!66679 (= c!47355 (and (is-Intermediate!2225 lt!145975) (undefined!3037 lt!145975)))))

(assert (=> d!66679 (= lt!145975 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66679 (validMask!0 mask!3809)))

(assert (=> d!66679 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!145974)))

(declare-fun b!294351 () Bool)

(assert (=> b!294351 (= e!186090 (MissingZero!2225 (index!11072 lt!145975)))))

(declare-fun b!294352 () Bool)

(assert (=> b!294352 (= e!186091 (Found!2225 (index!11072 lt!145975)))))

(declare-fun b!294353 () Bool)

(declare-fun c!47354 () Bool)

(assert (=> b!294353 (= c!47354 (= lt!145976 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294353 (= e!186091 e!186090)))

(assert (= (and d!66679 c!47355) b!294348))

(assert (= (and d!66679 (not c!47355)) b!294350))

(assert (= (and b!294350 c!47353) b!294352))

(assert (= (and b!294350 (not c!47353)) b!294353))

(assert (= (and b!294353 c!47354) b!294351))

(assert (= (and b!294353 (not c!47354)) b!294349))

(declare-fun m!307835 () Bool)

(assert (=> b!294349 m!307835))

(declare-fun m!307837 () Bool)

(assert (=> b!294350 m!307837))

(assert (=> d!66679 m!307785))

(declare-fun m!307839 () Bool)

(assert (=> d!66679 m!307839))

(assert (=> d!66679 m!307795))

(declare-fun m!307841 () Bool)

(assert (=> d!66679 m!307841))

(declare-fun m!307843 () Bool)

(assert (=> d!66679 m!307843))

(declare-fun m!307845 () Bool)

(assert (=> d!66679 m!307845))

(assert (=> d!66679 m!307795))

(assert (=> b!294276 d!66679))

(declare-fun d!66687 () Bool)

(assert (=> d!66687 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!294281 d!66687))

(declare-fun d!66689 () Bool)

(declare-fun e!186116 () Bool)

(assert (=> d!66689 e!186116))

(declare-fun c!47372 () Bool)

(declare-fun lt!145988 () SeekEntryResult!2225)

(assert (=> d!66689 (= c!47372 (and (is-Intermediate!2225 lt!145988) (undefined!3037 lt!145988)))))

(declare-fun e!186119 () SeekEntryResult!2225)

(assert (=> d!66689 (= lt!145988 e!186119)))

(declare-fun c!47373 () Bool)

(assert (=> d!66689 (= c!47373 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!145989 () (_ BitVec 64))

(assert (=> d!66689 (= lt!145989 (select (arr!7065 (array!14899 (store (arr!7065 a!3312) i!1256 k!2524) (size!7417 a!3312))) lt!145942))))

(assert (=> d!66689 (validMask!0 mask!3809)))

(assert (=> d!66689 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145942 k!2524 (array!14899 (store (arr!7065 a!3312) i!1256 k!2524) (size!7417 a!3312)) mask!3809) lt!145988)))

(declare-fun b!294396 () Bool)

(assert (=> b!294396 (and (bvsge (index!11072 lt!145988) #b00000000000000000000000000000000) (bvslt (index!11072 lt!145988) (size!7417 (array!14899 (store (arr!7065 a!3312) i!1256 k!2524) (size!7417 a!3312)))))))

(declare-fun e!186120 () Bool)

(assert (=> b!294396 (= e!186120 (= (select (arr!7065 (array!14899 (store (arr!7065 a!3312) i!1256 k!2524) (size!7417 a!3312))) (index!11072 lt!145988)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294397 () Bool)

(assert (=> b!294397 (and (bvsge (index!11072 lt!145988) #b00000000000000000000000000000000) (bvslt (index!11072 lt!145988) (size!7417 (array!14899 (store (arr!7065 a!3312) i!1256 k!2524) (size!7417 a!3312)))))))

(declare-fun res!154800 () Bool)

(assert (=> b!294397 (= res!154800 (= (select (arr!7065 (array!14899 (store (arr!7065 a!3312) i!1256 k!2524) (size!7417 a!3312))) (index!11072 lt!145988)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294397 (=> res!154800 e!186120)))

(declare-fun b!294398 () Bool)

(assert (=> b!294398 (and (bvsge (index!11072 lt!145988) #b00000000000000000000000000000000) (bvslt (index!11072 lt!145988) (size!7417 (array!14899 (store (arr!7065 a!3312) i!1256 k!2524) (size!7417 a!3312)))))))

(declare-fun res!154799 () Bool)

(assert (=> b!294398 (= res!154799 (= (select (arr!7065 (array!14899 (store (arr!7065 a!3312) i!1256 k!2524) (size!7417 a!3312))) (index!11072 lt!145988)) k!2524))))

(assert (=> b!294398 (=> res!154799 e!186120)))

(declare-fun e!186117 () Bool)

(assert (=> b!294398 (= e!186117 e!186120)))

(declare-fun b!294399 () Bool)

(declare-fun e!186118 () SeekEntryResult!2225)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294399 (= e!186118 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145942 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14899 (store (arr!7065 a!3312) i!1256 k!2524) (size!7417 a!3312)) mask!3809))))

(declare-fun b!294400 () Bool)

(assert (=> b!294400 (= e!186116 (bvsge (x!29234 lt!145988) #b01111111111111111111111111111110))))

(declare-fun b!294401 () Bool)

(assert (=> b!294401 (= e!186118 (Intermediate!2225 false lt!145942 #b00000000000000000000000000000000))))

(declare-fun b!294402 () Bool)

(assert (=> b!294402 (= e!186119 (Intermediate!2225 true lt!145942 #b00000000000000000000000000000000))))

(declare-fun b!294403 () Bool)

(assert (=> b!294403 (= e!186119 e!186118)))

(declare-fun c!47371 () Bool)

(assert (=> b!294403 (= c!47371 (or (= lt!145989 k!2524) (= (bvadd lt!145989 lt!145989) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294404 () Bool)

(assert (=> b!294404 (= e!186116 e!186117)))

(declare-fun res!154798 () Bool)

(assert (=> b!294404 (= res!154798 (and (is-Intermediate!2225 lt!145988) (not (undefined!3037 lt!145988)) (bvslt (x!29234 lt!145988) #b01111111111111111111111111111110) (bvsge (x!29234 lt!145988) #b00000000000000000000000000000000) (bvsge (x!29234 lt!145988) #b00000000000000000000000000000000)))))

(assert (=> b!294404 (=> (not res!154798) (not e!186117))))

(assert (= (and d!66689 c!47373) b!294402))

(assert (= (and d!66689 (not c!47373)) b!294403))

(assert (= (and b!294403 c!47371) b!294401))

(assert (= (and b!294403 (not c!47371)) b!294399))

(assert (= (and d!66689 c!47372) b!294400))

(assert (= (and d!66689 (not c!47372)) b!294404))

(assert (= (and b!294404 res!154798) b!294398))

(assert (= (and b!294398 (not res!154799)) b!294397))

(assert (= (and b!294397 (not res!154800)) b!294396))

(declare-fun m!307859 () Bool)

(assert (=> b!294397 m!307859))

(assert (=> b!294396 m!307859))

(declare-fun m!307861 () Bool)

(assert (=> d!66689 m!307861))

(assert (=> d!66689 m!307785))

(assert (=> b!294398 m!307859))

(declare-fun m!307863 () Bool)

(assert (=> b!294399 m!307863))

(assert (=> b!294399 m!307863))

(declare-fun m!307865 () Bool)

(assert (=> b!294399 m!307865))

(assert (=> b!294280 d!66689))

(declare-fun d!66703 () Bool)

(declare-fun e!186121 () Bool)

(assert (=> d!66703 e!186121))

(declare-fun c!47375 () Bool)

(declare-fun lt!145990 () SeekEntryResult!2225)

(assert (=> d!66703 (= c!47375 (and (is-Intermediate!2225 lt!145990) (undefined!3037 lt!145990)))))

(declare-fun e!186124 () SeekEntryResult!2225)

(assert (=> d!66703 (= lt!145990 e!186124)))

(declare-fun c!47376 () Bool)

(assert (=> d!66703 (= c!47376 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!145991 () (_ BitVec 64))

(assert (=> d!66703 (= lt!145991 (select (arr!7065 a!3312) lt!145942))))

(assert (=> d!66703 (validMask!0 mask!3809)))

(assert (=> d!66703 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145942 k!2524 a!3312 mask!3809) lt!145990)))

(declare-fun b!294405 () Bool)

(assert (=> b!294405 (and (bvsge (index!11072 lt!145990) #b00000000000000000000000000000000) (bvslt (index!11072 lt!145990) (size!7417 a!3312)))))

(declare-fun e!186125 () Bool)

(assert (=> b!294405 (= e!186125 (= (select (arr!7065 a!3312) (index!11072 lt!145990)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294406 () Bool)

(assert (=> b!294406 (and (bvsge (index!11072 lt!145990) #b00000000000000000000000000000000) (bvslt (index!11072 lt!145990) (size!7417 a!3312)))))

(declare-fun res!154803 () Bool)

(assert (=> b!294406 (= res!154803 (= (select (arr!7065 a!3312) (index!11072 lt!145990)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294406 (=> res!154803 e!186125)))

(declare-fun b!294407 () Bool)

(assert (=> b!294407 (and (bvsge (index!11072 lt!145990) #b00000000000000000000000000000000) (bvslt (index!11072 lt!145990) (size!7417 a!3312)))))

(declare-fun res!154802 () Bool)

(assert (=> b!294407 (= res!154802 (= (select (arr!7065 a!3312) (index!11072 lt!145990)) k!2524))))

(assert (=> b!294407 (=> res!154802 e!186125)))

(declare-fun e!186122 () Bool)

(assert (=> b!294407 (= e!186122 e!186125)))

(declare-fun e!186123 () SeekEntryResult!2225)

(declare-fun b!294408 () Bool)

(assert (=> b!294408 (= e!186123 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145942 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!294409 () Bool)

(assert (=> b!294409 (= e!186121 (bvsge (x!29234 lt!145990) #b01111111111111111111111111111110))))

(declare-fun b!294410 () Bool)

(assert (=> b!294410 (= e!186123 (Intermediate!2225 false lt!145942 #b00000000000000000000000000000000))))

(declare-fun b!294411 () Bool)

(assert (=> b!294411 (= e!186124 (Intermediate!2225 true lt!145942 #b00000000000000000000000000000000))))

(declare-fun b!294412 () Bool)

(assert (=> b!294412 (= e!186124 e!186123)))

(declare-fun c!47374 () Bool)

(assert (=> b!294412 (= c!47374 (or (= lt!145991 k!2524) (= (bvadd lt!145991 lt!145991) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294413 () Bool)

(assert (=> b!294413 (= e!186121 e!186122)))

(declare-fun res!154801 () Bool)

(assert (=> b!294413 (= res!154801 (and (is-Intermediate!2225 lt!145990) (not (undefined!3037 lt!145990)) (bvslt (x!29234 lt!145990) #b01111111111111111111111111111110) (bvsge (x!29234 lt!145990) #b00000000000000000000000000000000) (bvsge (x!29234 lt!145990) #b00000000000000000000000000000000)))))

(assert (=> b!294413 (=> (not res!154801) (not e!186122))))

(assert (= (and d!66703 c!47376) b!294411))

(assert (= (and d!66703 (not c!47376)) b!294412))

(assert (= (and b!294412 c!47374) b!294410))

(assert (= (and b!294412 (not c!47374)) b!294408))

(assert (= (and d!66703 c!47375) b!294409))

(assert (= (and d!66703 (not c!47375)) b!294413))

(assert (= (and b!294413 res!154801) b!294407))

(assert (= (and b!294407 (not res!154802)) b!294406))

(assert (= (and b!294406 (not res!154803)) b!294405))

(declare-fun m!307867 () Bool)

(assert (=> b!294406 m!307867))

(assert (=> b!294405 m!307867))

(declare-fun m!307869 () Bool)

(assert (=> d!66703 m!307869))

(assert (=> d!66703 m!307785))

(assert (=> b!294407 m!307867))

(assert (=> b!294408 m!307863))

(assert (=> b!294408 m!307863))

(declare-fun m!307871 () Bool)

(assert (=> b!294408 m!307871))

(assert (=> b!294280 d!66703))

(declare-fun d!66705 () Bool)

(declare-fun lt!146001 () (_ BitVec 32))

(declare-fun lt!146000 () (_ BitVec 32))

(assert (=> d!66705 (= lt!146001 (bvmul (bvxor lt!146000 (bvlshr lt!146000 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66705 (= lt!146000 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66705 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154807 (let ((h!5300 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29237 (bvmul (bvxor h!5300 (bvlshr h!5300 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29237 (bvlshr x!29237 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154807 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154807 #b00000000000000000000000000000000))))))

(assert (=> d!66705 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!146001 (bvlshr lt!146001 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!294280 d!66705))

(declare-fun d!66711 () Bool)

(assert (=> d!66711 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

