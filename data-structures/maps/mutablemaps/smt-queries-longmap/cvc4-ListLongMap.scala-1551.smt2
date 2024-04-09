; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29338 () Bool)

(assert start!29338)

(declare-fun b!297102 () Bool)

(declare-fun res!156745 () Bool)

(declare-fun e!187773 () Bool)

(assert (=> b!297102 (=> (not res!156745) (not e!187773))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((array!15048 0))(
  ( (array!15049 (arr!7131 (Array (_ BitVec 32) (_ BitVec 64))) (size!7483 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15048)

(assert (=> b!297102 (= res!156745 (and (= (size!7483 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7483 a!3312))))))

(declare-fun res!156744 () Bool)

(assert (=> start!29338 (=> (not res!156744) (not e!187773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29338 (= res!156744 (validMask!0 mask!3809))))

(assert (=> start!29338 e!187773))

(assert (=> start!29338 true))

(declare-fun array_inv!5085 (array!15048) Bool)

(assert (=> start!29338 (array_inv!5085 a!3312)))

(declare-fun b!297103 () Bool)

(declare-fun res!156743 () Bool)

(declare-fun e!187774 () Bool)

(assert (=> b!297103 (=> (not res!156743) (not e!187774))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15048 (_ BitVec 32)) Bool)

(assert (=> b!297103 (= res!156743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!297104 () Bool)

(declare-fun lt!147704 () Bool)

(declare-datatypes ((SeekEntryResult!2291 0))(
  ( (MissingZero!2291 (index!11334 (_ BitVec 32))) (Found!2291 (index!11335 (_ BitVec 32))) (Intermediate!2291 (undefined!3103 Bool) (index!11336 (_ BitVec 32)) (x!29512 (_ BitVec 32))) (Undefined!2291) (MissingVacant!2291 (index!11337 (_ BitVec 32))) )
))
(declare-fun lt!147706 () SeekEntryResult!2291)

(assert (=> b!297104 (= e!187774 (and lt!147704 (not (is-Intermediate!2291 lt!147706))))))

(declare-fun lt!147705 () (_ BitVec 32))

(declare-fun lt!147703 () SeekEntryResult!2291)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15048 (_ BitVec 32)) SeekEntryResult!2291)

(assert (=> b!297104 (= lt!147703 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147705 k!2524 (array!15049 (store (arr!7131 a!3312) i!1256 k!2524) (size!7483 a!3312)) mask!3809))))

(assert (=> b!297104 (= lt!147706 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147705 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297104 (= lt!147705 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!297105 () Bool)

(assert (=> b!297105 (= e!187773 e!187774)))

(declare-fun res!156747 () Bool)

(assert (=> b!297105 (=> (not res!156747) (not e!187774))))

(declare-fun lt!147707 () SeekEntryResult!2291)

(assert (=> b!297105 (= res!156747 (or lt!147704 (= lt!147707 (MissingVacant!2291 i!1256))))))

(assert (=> b!297105 (= lt!147704 (= lt!147707 (MissingZero!2291 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15048 (_ BitVec 32)) SeekEntryResult!2291)

(assert (=> b!297105 (= lt!147707 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!297106 () Bool)

(declare-fun res!156746 () Bool)

(assert (=> b!297106 (=> (not res!156746) (not e!187773))))

(declare-fun arrayContainsKey!0 (array!15048 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297106 (= res!156746 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297107 () Bool)

(declare-fun res!156742 () Bool)

(assert (=> b!297107 (=> (not res!156742) (not e!187773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297107 (= res!156742 (validKeyInArray!0 k!2524))))

(assert (= (and start!29338 res!156744) b!297102))

(assert (= (and b!297102 res!156745) b!297107))

(assert (= (and b!297107 res!156742) b!297106))

(assert (= (and b!297106 res!156746) b!297105))

(assert (= (and b!297105 res!156747) b!297103))

(assert (= (and b!297103 res!156743) b!297104))

(declare-fun m!309975 () Bool)

(assert (=> b!297105 m!309975))

(declare-fun m!309977 () Bool)

(assert (=> b!297103 m!309977))

(declare-fun m!309979 () Bool)

(assert (=> b!297104 m!309979))

(declare-fun m!309981 () Bool)

(assert (=> b!297104 m!309981))

(declare-fun m!309983 () Bool)

(assert (=> b!297104 m!309983))

(declare-fun m!309985 () Bool)

(assert (=> b!297104 m!309985))

(declare-fun m!309987 () Bool)

(assert (=> b!297107 m!309987))

(declare-fun m!309989 () Bool)

(assert (=> b!297106 m!309989))

(declare-fun m!309991 () Bool)

(assert (=> start!29338 m!309991))

(declare-fun m!309993 () Bool)

(assert (=> start!29338 m!309993))

(push 1)

(assert (not b!297103))

(assert (not b!297105))

(assert (not b!297106))

(assert (not start!29338))

(assert (not b!297104))

(assert (not b!297107))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67049 () Bool)

(declare-fun lt!147729 () SeekEntryResult!2291)

(assert (=> d!67049 (and (or (is-Undefined!2291 lt!147729) (not (is-Found!2291 lt!147729)) (and (bvsge (index!11335 lt!147729) #b00000000000000000000000000000000) (bvslt (index!11335 lt!147729) (size!7483 a!3312)))) (or (is-Undefined!2291 lt!147729) (is-Found!2291 lt!147729) (not (is-MissingZero!2291 lt!147729)) (and (bvsge (index!11334 lt!147729) #b00000000000000000000000000000000) (bvslt (index!11334 lt!147729) (size!7483 a!3312)))) (or (is-Undefined!2291 lt!147729) (is-Found!2291 lt!147729) (is-MissingZero!2291 lt!147729) (not (is-MissingVacant!2291 lt!147729)) (and (bvsge (index!11337 lt!147729) #b00000000000000000000000000000000) (bvslt (index!11337 lt!147729) (size!7483 a!3312)))) (or (is-Undefined!2291 lt!147729) (ite (is-Found!2291 lt!147729) (= (select (arr!7131 a!3312) (index!11335 lt!147729)) k!2524) (ite (is-MissingZero!2291 lt!147729) (= (select (arr!7131 a!3312) (index!11334 lt!147729)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2291 lt!147729) (= (select (arr!7131 a!3312) (index!11337 lt!147729)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!187806 () SeekEntryResult!2291)

(assert (=> d!67049 (= lt!147729 e!187806)))

(declare-fun c!47787 () Bool)

(declare-fun lt!147730 () SeekEntryResult!2291)

(assert (=> d!67049 (= c!47787 (and (is-Intermediate!2291 lt!147730) (undefined!3103 lt!147730)))))

(assert (=> d!67049 (= lt!147730 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67049 (validMask!0 mask!3809)))

(assert (=> d!67049 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!147729)))

(declare-fun b!297165 () Bool)

(declare-fun e!187808 () SeekEntryResult!2291)

(assert (=> b!297165 (= e!187806 e!187808)))

(declare-fun lt!147731 () (_ BitVec 64))

(assert (=> b!297165 (= lt!147731 (select (arr!7131 a!3312) (index!11336 lt!147730)))))

(declare-fun c!47785 () Bool)

(assert (=> b!297165 (= c!47785 (= lt!147731 k!2524))))

(declare-fun b!297166 () Bool)

(assert (=> b!297166 (= e!187808 (Found!2291 (index!11336 lt!147730)))))

(declare-fun b!297167 () Bool)

(declare-fun e!187807 () SeekEntryResult!2291)

(assert (=> b!297167 (= e!187807 (MissingZero!2291 (index!11336 lt!147730)))))

(declare-fun b!297168 () Bool)

(declare-fun c!47786 () Bool)

(assert (=> b!297168 (= c!47786 (= lt!147731 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!297168 (= e!187808 e!187807)))

(declare-fun b!297169 () Bool)

(assert (=> b!297169 (= e!187806 Undefined!2291)))

(declare-fun b!297170 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15048 (_ BitVec 32)) SeekEntryResult!2291)

(assert (=> b!297170 (= e!187807 (seekKeyOrZeroReturnVacant!0 (x!29512 lt!147730) (index!11336 lt!147730) (index!11336 lt!147730) k!2524 a!3312 mask!3809))))

(assert (= (and d!67049 c!47787) b!297169))

(assert (= (and d!67049 (not c!47787)) b!297165))

(assert (= (and b!297165 c!47785) b!297166))

(assert (= (and b!297165 (not c!47785)) b!297168))

(assert (= (and b!297168 c!47786) b!297167))

(assert (= (and b!297168 (not c!47786)) b!297170))

(declare-fun m!310015 () Bool)

(assert (=> d!67049 m!310015))

(declare-fun m!310017 () Bool)

(assert (=> d!67049 m!310017))

(assert (=> d!67049 m!309985))

(declare-fun m!310019 () Bool)

(assert (=> d!67049 m!310019))

(assert (=> d!67049 m!309985))

(declare-fun m!310021 () Bool)

(assert (=> d!67049 m!310021))

(assert (=> d!67049 m!309991))

(declare-fun m!310023 () Bool)

(assert (=> b!297165 m!310023))

(declare-fun m!310025 () Bool)

(assert (=> b!297170 m!310025))

(assert (=> b!297105 d!67049))

(declare-fun b!297216 () Bool)

(declare-fun e!187842 () SeekEntryResult!2291)

(assert (=> b!297216 (= e!187842 (Intermediate!2291 true lt!147705 #b00000000000000000000000000000000))))

(declare-fun b!297217 () Bool)

(declare-fun lt!147753 () SeekEntryResult!2291)

(assert (=> b!297217 (and (bvsge (index!11336 lt!147753) #b00000000000000000000000000000000) (bvslt (index!11336 lt!147753) (size!7483 (array!15049 (store (arr!7131 a!3312) i!1256 k!2524) (size!7483 a!3312)))))))

(declare-fun res!156779 () Bool)

(assert (=> b!297217 (= res!156779 (= (select (arr!7131 (array!15049 (store (arr!7131 a!3312) i!1256 k!2524) (size!7483 a!3312))) (index!11336 lt!147753)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!187841 () Bool)

(assert (=> b!297217 (=> res!156779 e!187841)))

(declare-fun b!297218 () Bool)

(declare-fun e!187840 () Bool)

(declare-fun e!187839 () Bool)

(assert (=> b!297218 (= e!187840 e!187839)))

(declare-fun res!156780 () Bool)

(assert (=> b!297218 (= res!156780 (and (is-Intermediate!2291 lt!147753) (not (undefined!3103 lt!147753)) (bvslt (x!29512 lt!147753) #b01111111111111111111111111111110) (bvsge (x!29512 lt!147753) #b00000000000000000000000000000000) (bvsge (x!29512 lt!147753) #b00000000000000000000000000000000)))))

(assert (=> b!297218 (=> (not res!156780) (not e!187839))))

(declare-fun b!297219 () Bool)

(declare-fun e!187843 () SeekEntryResult!2291)

(assert (=> b!297219 (= e!187842 e!187843)))

(declare-fun c!47802 () Bool)

(declare-fun lt!147754 () (_ BitVec 64))

(assert (=> b!297219 (= c!47802 (or (= lt!147754 k!2524) (= (bvadd lt!147754 lt!147754) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!297220 () Bool)

(assert (=> b!297220 (and (bvsge (index!11336 lt!147753) #b00000000000000000000000000000000) (bvslt (index!11336 lt!147753) (size!7483 (array!15049 (store (arr!7131 a!3312) i!1256 k!2524) (size!7483 a!3312)))))))

(declare-fun res!156781 () Bool)

(assert (=> b!297220 (= res!156781 (= (select (arr!7131 (array!15049 (store (arr!7131 a!3312) i!1256 k!2524) (size!7483 a!3312))) (index!11336 lt!147753)) k!2524))))

(assert (=> b!297220 (=> res!156781 e!187841)))

(assert (=> b!297220 (= e!187839 e!187841)))

(declare-fun b!297221 () Bool)

(assert (=> b!297221 (and (bvsge (index!11336 lt!147753) #b00000000000000000000000000000000) (bvslt (index!11336 lt!147753) (size!7483 (array!15049 (store (arr!7131 a!3312) i!1256 k!2524) (size!7483 a!3312)))))))

(assert (=> b!297221 (= e!187841 (= (select (arr!7131 (array!15049 (store (arr!7131 a!3312) i!1256 k!2524) (size!7483 a!3312))) (index!11336 lt!147753)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!67055 () Bool)

(assert (=> d!67055 e!187840))

(declare-fun c!47800 () Bool)

(assert (=> d!67055 (= c!47800 (and (is-Intermediate!2291 lt!147753) (undefined!3103 lt!147753)))))

(assert (=> d!67055 (= lt!147753 e!187842)))

(declare-fun c!47801 () Bool)

(assert (=> d!67055 (= c!47801 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67055 (= lt!147754 (select (arr!7131 (array!15049 (store (arr!7131 a!3312) i!1256 k!2524) (size!7483 a!3312))) lt!147705))))

(assert (=> d!67055 (validMask!0 mask!3809)))

(assert (=> d!67055 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147705 k!2524 (array!15049 (store (arr!7131 a!3312) i!1256 k!2524) (size!7483 a!3312)) mask!3809) lt!147753)))

(declare-fun b!297222 () Bool)

(assert (=> b!297222 (= e!187843 (Intermediate!2291 false lt!147705 #b00000000000000000000000000000000))))

(declare-fun b!297223 () Bool)

(assert (=> b!297223 (= e!187840 (bvsge (x!29512 lt!147753) #b01111111111111111111111111111110))))

(declare-fun b!297224 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297224 (= e!187843 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147705 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15049 (store (arr!7131 a!3312) i!1256 k!2524) (size!7483 a!3312)) mask!3809))))

(assert (= (and d!67055 c!47801) b!297216))

(assert (= (and d!67055 (not c!47801)) b!297219))

(assert (= (and b!297219 c!47802) b!297222))

(assert (= (and b!297219 (not c!47802)) b!297224))

(assert (= (and d!67055 c!47800) b!297223))

(assert (= (and d!67055 (not c!47800)) b!297218))

(assert (= (and b!297218 res!156780) b!297220))

(assert (= (and b!297220 (not res!156781)) b!297217))

(assert (= (and b!297217 (not res!156779)) b!297221))

(declare-fun m!310047 () Bool)

(assert (=> b!297220 m!310047))

(assert (=> b!297221 m!310047))

(declare-fun m!310049 () Bool)

(assert (=> d!67055 m!310049))

(assert (=> d!67055 m!309991))

(assert (=> b!297217 m!310047))

(declare-fun m!310051 () Bool)

(assert (=> b!297224 m!310051))

(assert (=> b!297224 m!310051))

(declare-fun m!310053 () Bool)

(assert (=> b!297224 m!310053))

(assert (=> b!297104 d!67055))

(declare-fun b!297237 () Bool)

(declare-fun e!187853 () SeekEntryResult!2291)

(assert (=> b!297237 (= e!187853 (Intermediate!2291 true lt!147705 #b00000000000000000000000000000000))))

(declare-fun b!297238 () Bool)

(declare-fun lt!147761 () SeekEntryResult!2291)

(assert (=> b!297238 (and (bvsge (index!11336 lt!147761) #b00000000000000000000000000000000) (bvslt (index!11336 lt!147761) (size!7483 a!3312)))))

(declare-fun res!156782 () Bool)

(assert (=> b!297238 (= res!156782 (= (select (arr!7131 a!3312) (index!11336 lt!147761)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!187852 () Bool)

(assert (=> b!297238 (=> res!156782 e!187852)))

(declare-fun b!297239 () Bool)

(declare-fun e!187851 () Bool)

(declare-fun e!187850 () Bool)

(assert (=> b!297239 (= e!187851 e!187850)))

(declare-fun res!156783 () Bool)

(assert (=> b!297239 (= res!156783 (and (is-Intermediate!2291 lt!147761) (not (undefined!3103 lt!147761)) (bvslt (x!29512 lt!147761) #b01111111111111111111111111111110) (bvsge (x!29512 lt!147761) #b00000000000000000000000000000000) (bvsge (x!29512 lt!147761) #b00000000000000000000000000000000)))))

(assert (=> b!297239 (=> (not res!156783) (not e!187850))))

(declare-fun b!297240 () Bool)

(declare-fun e!187854 () SeekEntryResult!2291)

(assert (=> b!297240 (= e!187853 e!187854)))

(declare-fun c!47811 () Bool)

(declare-fun lt!147762 () (_ BitVec 64))

(assert (=> b!297240 (= c!47811 (or (= lt!147762 k!2524) (= (bvadd lt!147762 lt!147762) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!297241 () Bool)

(assert (=> b!297241 (and (bvsge (index!11336 lt!147761) #b00000000000000000000000000000000) (bvslt (index!11336 lt!147761) (size!7483 a!3312)))))

(declare-fun res!156784 () Bool)

(assert (=> b!297241 (= res!156784 (= (select (arr!7131 a!3312) (index!11336 lt!147761)) k!2524))))

(assert (=> b!297241 (=> res!156784 e!187852)))

(assert (=> b!297241 (= e!187850 e!187852)))

(declare-fun b!297242 () Bool)

(assert (=> b!297242 (and (bvsge (index!11336 lt!147761) #b00000000000000000000000000000000) (bvslt (index!11336 lt!147761) (size!7483 a!3312)))))

(assert (=> b!297242 (= e!187852 (= (select (arr!7131 a!3312) (index!11336 lt!147761)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!67069 () Bool)

(assert (=> d!67069 e!187851))

(declare-fun c!47809 () Bool)

(assert (=> d!67069 (= c!47809 (and (is-Intermediate!2291 lt!147761) (undefined!3103 lt!147761)))))

(assert (=> d!67069 (= lt!147761 e!187853)))

(declare-fun c!47810 () Bool)

(assert (=> d!67069 (= c!47810 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67069 (= lt!147762 (select (arr!7131 a!3312) lt!147705))))

(assert (=> d!67069 (validMask!0 mask!3809)))

(assert (=> d!67069 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147705 k!2524 a!3312 mask!3809) lt!147761)))

(declare-fun b!297243 () Bool)

(assert (=> b!297243 (= e!187854 (Intermediate!2291 false lt!147705 #b00000000000000000000000000000000))))

(declare-fun b!297244 () Bool)

(assert (=> b!297244 (= e!187851 (bvsge (x!29512 lt!147761) #b01111111111111111111111111111110))))

(declare-fun b!297245 () Bool)

(assert (=> b!297245 (= e!187854 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147705 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(assert (= (and d!67069 c!47810) b!297237))

(assert (= (and d!67069 (not c!47810)) b!297240))

(assert (= (and b!297240 c!47811) b!297243))

(assert (= (and b!297240 (not c!47811)) b!297245))

(assert (= (and d!67069 c!47809) b!297244))

(assert (= (and d!67069 (not c!47809)) b!297239))

(assert (= (and b!297239 res!156783) b!297241))

(assert (= (and b!297241 (not res!156784)) b!297238))

(assert (= (and b!297238 (not res!156782)) b!297242))

(declare-fun m!310055 () Bool)

(assert (=> b!297241 m!310055))

(assert (=> b!297242 m!310055))

(declare-fun m!310057 () Bool)

(assert (=> d!67069 m!310057))

(assert (=> d!67069 m!309991))

(assert (=> b!297238 m!310055))

(assert (=> b!297245 m!310051))

(assert (=> b!297245 m!310051))

(declare-fun m!310059 () Bool)

(assert (=> b!297245 m!310059))

(assert (=> b!297104 d!67069))

(declare-fun d!67071 () Bool)

(declare-fun lt!147771 () (_ BitVec 32))

(declare-fun lt!147770 () (_ BitVec 32))

(assert (=> d!67071 (= lt!147771 (bvmul (bvxor lt!147770 (bvlshr lt!147770 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67071 (= lt!147770 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67071 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!156785 (let ((h!5319 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29516 (bvmul (bvxor h!5319 (bvlshr h!5319 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29516 (bvlshr x!29516 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!156785 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!156785 #b00000000000000000000000000000000))))))

