; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28970 () Bool)

(assert start!28970)

(declare-fun b!294528 () Bool)

(declare-fun res!154876 () Bool)

(declare-fun e!186197 () Bool)

(assert (=> b!294528 (=> (not res!154876) (not e!186197))))

(declare-datatypes ((array!14905 0))(
  ( (array!14906 (arr!7067 (Array (_ BitVec 32) (_ BitVec 64))) (size!7419 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14905)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14905 (_ BitVec 32)) Bool)

(assert (=> b!294528 (= res!154876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!294529 () Bool)

(declare-fun res!154873 () Bool)

(declare-fun e!186195 () Bool)

(assert (=> b!294529 (=> (not res!154873) (not e!186195))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!294529 (= res!154873 (validKeyInArray!0 k0!2524))))

(declare-fun b!294530 () Bool)

(assert (=> b!294530 (= e!186195 e!186197)))

(declare-fun res!154874 () Bool)

(assert (=> b!294530 (=> (not res!154874) (not e!186197))))

(declare-datatypes ((SeekEntryResult!2227 0))(
  ( (MissingZero!2227 (index!11078 (_ BitVec 32))) (Found!2227 (index!11079 (_ BitVec 32))) (Intermediate!2227 (undefined!3039 Bool) (index!11080 (_ BitVec 32)) (x!29250 (_ BitVec 32))) (Undefined!2227) (MissingVacant!2227 (index!11081 (_ BitVec 32))) )
))
(declare-fun lt!146069 () SeekEntryResult!2227)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!146068 () Bool)

(assert (=> b!294530 (= res!154874 (or lt!146068 (= lt!146069 (MissingVacant!2227 i!1256))))))

(assert (=> b!294530 (= lt!146068 (= lt!146069 (MissingZero!2227 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14905 (_ BitVec 32)) SeekEntryResult!2227)

(assert (=> b!294530 (= lt!146069 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!154875 () Bool)

(assert (=> start!28970 (=> (not res!154875) (not e!186195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28970 (= res!154875 (validMask!0 mask!3809))))

(assert (=> start!28970 e!186195))

(assert (=> start!28970 true))

(declare-fun array_inv!5021 (array!14905) Bool)

(assert (=> start!28970 (array_inv!5021 a!3312)))

(declare-fun b!294531 () Bool)

(declare-fun res!154878 () Bool)

(assert (=> b!294531 (=> (not res!154878) (not e!186195))))

(declare-fun arrayContainsKey!0 (array!14905 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!294531 (= res!154878 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun lt!146067 () SeekEntryResult!2227)

(declare-fun b!294532 () Bool)

(get-info :version)

(assert (=> b!294532 (= e!186197 (and lt!146068 (let ((bdg!6241 (not ((_ is Intermediate!2227) lt!146067)))) (and (or bdg!6241 (not (undefined!3039 lt!146067))) (or bdg!6241 (not (= (select (arr!7067 a!3312) (index!11080 lt!146067)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or bdg!6241 (not (= (select (arr!7067 a!3312) (index!11080 lt!146067)) k0!2524))) (not bdg!6241) (or (bvslt (index!11080 lt!146067) #b00000000000000000000000000000000) (bvsge (index!11080 lt!146067) (size!7419 a!3312)))))))))

(declare-fun lt!146065 () (_ BitVec 32))

(declare-fun lt!146066 () SeekEntryResult!2227)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14905 (_ BitVec 32)) SeekEntryResult!2227)

(assert (=> b!294532 (= lt!146066 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146065 k0!2524 (array!14906 (store (arr!7067 a!3312) i!1256 k0!2524) (size!7419 a!3312)) mask!3809))))

(assert (=> b!294532 (= lt!146067 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146065 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294532 (= lt!146065 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!294533 () Bool)

(declare-fun res!154877 () Bool)

(assert (=> b!294533 (=> (not res!154877) (not e!186195))))

(assert (=> b!294533 (= res!154877 (and (= (size!7419 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7419 a!3312))))))

(assert (= (and start!28970 res!154875) b!294533))

(assert (= (and b!294533 res!154877) b!294529))

(assert (= (and b!294529 res!154873) b!294531))

(assert (= (and b!294531 res!154878) b!294530))

(assert (= (and b!294530 res!154874) b!294528))

(assert (= (and b!294528 res!154876) b!294532))

(declare-fun m!307947 () Bool)

(assert (=> b!294528 m!307947))

(declare-fun m!307949 () Bool)

(assert (=> start!28970 m!307949))

(declare-fun m!307951 () Bool)

(assert (=> start!28970 m!307951))

(declare-fun m!307953 () Bool)

(assert (=> b!294532 m!307953))

(declare-fun m!307955 () Bool)

(assert (=> b!294532 m!307955))

(declare-fun m!307957 () Bool)

(assert (=> b!294532 m!307957))

(declare-fun m!307959 () Bool)

(assert (=> b!294532 m!307959))

(declare-fun m!307961 () Bool)

(assert (=> b!294532 m!307961))

(declare-fun m!307963 () Bool)

(assert (=> b!294531 m!307963))

(declare-fun m!307965 () Bool)

(assert (=> b!294530 m!307965))

(declare-fun m!307967 () Bool)

(assert (=> b!294529 m!307967))

(check-sat (not b!294532) (not b!294528) (not b!294530) (not start!28970) (not b!294531) (not b!294529))
(check-sat)
(get-model)

(declare-fun d!66729 () Bool)

(assert (=> d!66729 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!294529 d!66729))

(declare-fun d!66731 () Bool)

(declare-fun res!154901 () Bool)

(declare-fun e!186213 () Bool)

(assert (=> d!66731 (=> res!154901 e!186213)))

(assert (=> d!66731 (= res!154901 (bvsge #b00000000000000000000000000000000 (size!7419 a!3312)))))

(assert (=> d!66731 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!186213)))

(declare-fun b!294560 () Bool)

(declare-fun e!186215 () Bool)

(declare-fun call!25707 () Bool)

(assert (=> b!294560 (= e!186215 call!25707)))

(declare-fun bm!25704 () Bool)

(assert (=> bm!25704 (= call!25707 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!294561 () Bool)

(assert (=> b!294561 (= e!186213 e!186215)))

(declare-fun c!47403 () Bool)

(assert (=> b!294561 (= c!47403 (validKeyInArray!0 (select (arr!7067 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!294562 () Bool)

(declare-fun e!186214 () Bool)

(assert (=> b!294562 (= e!186214 call!25707)))

(declare-fun b!294563 () Bool)

(assert (=> b!294563 (= e!186215 e!186214)))

(declare-fun lt!146092 () (_ BitVec 64))

(assert (=> b!294563 (= lt!146092 (select (arr!7067 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9197 0))(
  ( (Unit!9198) )
))
(declare-fun lt!146091 () Unit!9197)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14905 (_ BitVec 64) (_ BitVec 32)) Unit!9197)

(assert (=> b!294563 (= lt!146091 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!146092 #b00000000000000000000000000000000))))

(assert (=> b!294563 (arrayContainsKey!0 a!3312 lt!146092 #b00000000000000000000000000000000)))

(declare-fun lt!146093 () Unit!9197)

(assert (=> b!294563 (= lt!146093 lt!146091)))

(declare-fun res!154902 () Bool)

(assert (=> b!294563 (= res!154902 (= (seekEntryOrOpen!0 (select (arr!7067 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2227 #b00000000000000000000000000000000)))))

(assert (=> b!294563 (=> (not res!154902) (not e!186214))))

(assert (= (and d!66731 (not res!154901)) b!294561))

(assert (= (and b!294561 c!47403) b!294563))

(assert (= (and b!294561 (not c!47403)) b!294560))

(assert (= (and b!294563 res!154902) b!294562))

(assert (= (or b!294562 b!294560) bm!25704))

(declare-fun m!307991 () Bool)

(assert (=> bm!25704 m!307991))

(declare-fun m!307993 () Bool)

(assert (=> b!294561 m!307993))

(assert (=> b!294561 m!307993))

(declare-fun m!307995 () Bool)

(assert (=> b!294561 m!307995))

(assert (=> b!294563 m!307993))

(declare-fun m!307997 () Bool)

(assert (=> b!294563 m!307997))

(declare-fun m!307999 () Bool)

(assert (=> b!294563 m!307999))

(assert (=> b!294563 m!307993))

(declare-fun m!308001 () Bool)

(assert (=> b!294563 m!308001))

(assert (=> b!294528 d!66731))

(declare-fun b!294588 () Bool)

(declare-fun e!186236 () SeekEntryResult!2227)

(declare-fun e!186233 () SeekEntryResult!2227)

(assert (=> b!294588 (= e!186236 e!186233)))

(declare-fun c!47410 () Bool)

(declare-fun lt!146098 () (_ BitVec 64))

(assert (=> b!294588 (= c!47410 (or (= lt!146098 k0!2524) (= (bvadd lt!146098 lt!146098) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294589 () Bool)

(declare-fun lt!146099 () SeekEntryResult!2227)

(assert (=> b!294589 (and (bvsge (index!11080 lt!146099) #b00000000000000000000000000000000) (bvslt (index!11080 lt!146099) (size!7419 (array!14906 (store (arr!7067 a!3312) i!1256 k0!2524) (size!7419 a!3312)))))))

(declare-fun res!154917 () Bool)

(assert (=> b!294589 (= res!154917 (= (select (arr!7067 (array!14906 (store (arr!7067 a!3312) i!1256 k0!2524) (size!7419 a!3312))) (index!11080 lt!146099)) k0!2524))))

(declare-fun e!186235 () Bool)

(assert (=> b!294589 (=> res!154917 e!186235)))

(declare-fun e!186232 () Bool)

(assert (=> b!294589 (= e!186232 e!186235)))

(declare-fun b!294590 () Bool)

(assert (=> b!294590 (= e!186236 (Intermediate!2227 true lt!146065 #b00000000000000000000000000000000))))

(declare-fun b!294591 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294591 (= e!186233 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146065 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!14906 (store (arr!7067 a!3312) i!1256 k0!2524) (size!7419 a!3312)) mask!3809))))

(declare-fun b!294592 () Bool)

(assert (=> b!294592 (= e!186233 (Intermediate!2227 false lt!146065 #b00000000000000000000000000000000))))

(declare-fun d!66733 () Bool)

(declare-fun e!186234 () Bool)

(assert (=> d!66733 e!186234))

(declare-fun c!47411 () Bool)

(assert (=> d!66733 (= c!47411 (and ((_ is Intermediate!2227) lt!146099) (undefined!3039 lt!146099)))))

(assert (=> d!66733 (= lt!146099 e!186236)))

(declare-fun c!47412 () Bool)

(assert (=> d!66733 (= c!47412 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66733 (= lt!146098 (select (arr!7067 (array!14906 (store (arr!7067 a!3312) i!1256 k0!2524) (size!7419 a!3312))) lt!146065))))

(assert (=> d!66733 (validMask!0 mask!3809)))

(assert (=> d!66733 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146065 k0!2524 (array!14906 (store (arr!7067 a!3312) i!1256 k0!2524) (size!7419 a!3312)) mask!3809) lt!146099)))

(declare-fun b!294593 () Bool)

(assert (=> b!294593 (and (bvsge (index!11080 lt!146099) #b00000000000000000000000000000000) (bvslt (index!11080 lt!146099) (size!7419 (array!14906 (store (arr!7067 a!3312) i!1256 k0!2524) (size!7419 a!3312)))))))

(assert (=> b!294593 (= e!186235 (= (select (arr!7067 (array!14906 (store (arr!7067 a!3312) i!1256 k0!2524) (size!7419 a!3312))) (index!11080 lt!146099)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294594 () Bool)

(assert (=> b!294594 (= e!186234 e!186232)))

(declare-fun res!154915 () Bool)

(assert (=> b!294594 (= res!154915 (and ((_ is Intermediate!2227) lt!146099) (not (undefined!3039 lt!146099)) (bvslt (x!29250 lt!146099) #b01111111111111111111111111111110) (bvsge (x!29250 lt!146099) #b00000000000000000000000000000000) (bvsge (x!29250 lt!146099) #b00000000000000000000000000000000)))))

(assert (=> b!294594 (=> (not res!154915) (not e!186232))))

(declare-fun b!294595 () Bool)

(assert (=> b!294595 (and (bvsge (index!11080 lt!146099) #b00000000000000000000000000000000) (bvslt (index!11080 lt!146099) (size!7419 (array!14906 (store (arr!7067 a!3312) i!1256 k0!2524) (size!7419 a!3312)))))))

(declare-fun res!154916 () Bool)

(assert (=> b!294595 (= res!154916 (= (select (arr!7067 (array!14906 (store (arr!7067 a!3312) i!1256 k0!2524) (size!7419 a!3312))) (index!11080 lt!146099)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294595 (=> res!154916 e!186235)))

(declare-fun b!294596 () Bool)

(assert (=> b!294596 (= e!186234 (bvsge (x!29250 lt!146099) #b01111111111111111111111111111110))))

(assert (= (and d!66733 c!47412) b!294590))

(assert (= (and d!66733 (not c!47412)) b!294588))

(assert (= (and b!294588 c!47410) b!294592))

(assert (= (and b!294588 (not c!47410)) b!294591))

(assert (= (and d!66733 c!47411) b!294596))

(assert (= (and d!66733 (not c!47411)) b!294594))

(assert (= (and b!294594 res!154915) b!294589))

(assert (= (and b!294589 (not res!154917)) b!294595))

(assert (= (and b!294595 (not res!154916)) b!294593))

(declare-fun m!308007 () Bool)

(assert (=> b!294591 m!308007))

(assert (=> b!294591 m!308007))

(declare-fun m!308009 () Bool)

(assert (=> b!294591 m!308009))

(declare-fun m!308011 () Bool)

(assert (=> b!294593 m!308011))

(declare-fun m!308013 () Bool)

(assert (=> d!66733 m!308013))

(assert (=> d!66733 m!307949))

(assert (=> b!294595 m!308011))

(assert (=> b!294589 m!308011))

(assert (=> b!294532 d!66733))

(declare-fun b!294605 () Bool)

(declare-fun e!186247 () SeekEntryResult!2227)

(declare-fun e!186244 () SeekEntryResult!2227)

(assert (=> b!294605 (= e!186247 e!186244)))

(declare-fun c!47415 () Bool)

(declare-fun lt!146106 () (_ BitVec 64))

(assert (=> b!294605 (= c!47415 (or (= lt!146106 k0!2524) (= (bvadd lt!146106 lt!146106) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294606 () Bool)

(declare-fun lt!146107 () SeekEntryResult!2227)

(assert (=> b!294606 (and (bvsge (index!11080 lt!146107) #b00000000000000000000000000000000) (bvslt (index!11080 lt!146107) (size!7419 a!3312)))))

(declare-fun res!154924 () Bool)

(assert (=> b!294606 (= res!154924 (= (select (arr!7067 a!3312) (index!11080 lt!146107)) k0!2524))))

(declare-fun e!186246 () Bool)

(assert (=> b!294606 (=> res!154924 e!186246)))

(declare-fun e!186243 () Bool)

(assert (=> b!294606 (= e!186243 e!186246)))

(declare-fun b!294607 () Bool)

(assert (=> b!294607 (= e!186247 (Intermediate!2227 true lt!146065 #b00000000000000000000000000000000))))

(declare-fun b!294608 () Bool)

(assert (=> b!294608 (= e!186244 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146065 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!294609 () Bool)

(assert (=> b!294609 (= e!186244 (Intermediate!2227 false lt!146065 #b00000000000000000000000000000000))))

(declare-fun d!66743 () Bool)

(declare-fun e!186245 () Bool)

(assert (=> d!66743 e!186245))

(declare-fun c!47416 () Bool)

(assert (=> d!66743 (= c!47416 (and ((_ is Intermediate!2227) lt!146107) (undefined!3039 lt!146107)))))

(assert (=> d!66743 (= lt!146107 e!186247)))

(declare-fun c!47417 () Bool)

(assert (=> d!66743 (= c!47417 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66743 (= lt!146106 (select (arr!7067 a!3312) lt!146065))))

(assert (=> d!66743 (validMask!0 mask!3809)))

(assert (=> d!66743 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146065 k0!2524 a!3312 mask!3809) lt!146107)))

(declare-fun b!294610 () Bool)

(assert (=> b!294610 (and (bvsge (index!11080 lt!146107) #b00000000000000000000000000000000) (bvslt (index!11080 lt!146107) (size!7419 a!3312)))))

(assert (=> b!294610 (= e!186246 (= (select (arr!7067 a!3312) (index!11080 lt!146107)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294611 () Bool)

(assert (=> b!294611 (= e!186245 e!186243)))

(declare-fun res!154922 () Bool)

(assert (=> b!294611 (= res!154922 (and ((_ is Intermediate!2227) lt!146107) (not (undefined!3039 lt!146107)) (bvslt (x!29250 lt!146107) #b01111111111111111111111111111110) (bvsge (x!29250 lt!146107) #b00000000000000000000000000000000) (bvsge (x!29250 lt!146107) #b00000000000000000000000000000000)))))

(assert (=> b!294611 (=> (not res!154922) (not e!186243))))

(declare-fun b!294612 () Bool)

(assert (=> b!294612 (and (bvsge (index!11080 lt!146107) #b00000000000000000000000000000000) (bvslt (index!11080 lt!146107) (size!7419 a!3312)))))

(declare-fun res!154923 () Bool)

(assert (=> b!294612 (= res!154923 (= (select (arr!7067 a!3312) (index!11080 lt!146107)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294612 (=> res!154923 e!186246)))

(declare-fun b!294613 () Bool)

(assert (=> b!294613 (= e!186245 (bvsge (x!29250 lt!146107) #b01111111111111111111111111111110))))

(assert (= (and d!66743 c!47417) b!294607))

(assert (= (and d!66743 (not c!47417)) b!294605))

(assert (= (and b!294605 c!47415) b!294609))

(assert (= (and b!294605 (not c!47415)) b!294608))

(assert (= (and d!66743 c!47416) b!294613))

(assert (= (and d!66743 (not c!47416)) b!294611))

(assert (= (and b!294611 res!154922) b!294606))

(assert (= (and b!294606 (not res!154924)) b!294612))

(assert (= (and b!294612 (not res!154923)) b!294610))

(assert (=> b!294608 m!308007))

(assert (=> b!294608 m!308007))

(declare-fun m!308015 () Bool)

(assert (=> b!294608 m!308015))

(declare-fun m!308017 () Bool)

(assert (=> b!294610 m!308017))

(declare-fun m!308019 () Bool)

(assert (=> d!66743 m!308019))

(assert (=> d!66743 m!307949))

(assert (=> b!294612 m!308017))

(assert (=> b!294606 m!308017))

(assert (=> b!294532 d!66743))

(declare-fun d!66745 () Bool)

(declare-fun lt!146116 () (_ BitVec 32))

(declare-fun lt!146115 () (_ BitVec 32))

(assert (=> d!66745 (= lt!146116 (bvmul (bvxor lt!146115 (bvlshr lt!146115 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66745 (= lt!146115 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66745 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154925 (let ((h!5303 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29253 (bvmul (bvxor h!5303 (bvlshr h!5303 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29253 (bvlshr x!29253 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154925 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154925 #b00000000000000000000000000000000))))))

(assert (=> d!66745 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!146116 (bvlshr lt!146116 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!294532 d!66745))

(declare-fun d!66749 () Bool)

(assert (=> d!66749 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28970 d!66749))

(declare-fun d!66759 () Bool)

(assert (=> d!66759 (= (array_inv!5021 a!3312) (bvsge (size!7419 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28970 d!66759))

(declare-fun d!66761 () Bool)

(declare-fun res!154945 () Bool)

(declare-fun e!186275 () Bool)

(assert (=> d!66761 (=> res!154945 e!186275)))

(assert (=> d!66761 (= res!154945 (= (select (arr!7067 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!66761 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!186275)))

(declare-fun b!294658 () Bool)

(declare-fun e!186276 () Bool)

(assert (=> b!294658 (= e!186275 e!186276)))

(declare-fun res!154946 () Bool)

(assert (=> b!294658 (=> (not res!154946) (not e!186276))))

(assert (=> b!294658 (= res!154946 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7419 a!3312)))))

(declare-fun b!294659 () Bool)

(assert (=> b!294659 (= e!186276 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66761 (not res!154945)) b!294658))

(assert (= (and b!294658 res!154946) b!294659))

(assert (=> d!66761 m!307993))

(declare-fun m!308045 () Bool)

(assert (=> b!294659 m!308045))

(assert (=> b!294531 d!66761))

(declare-fun b!294696 () Bool)

(declare-fun e!186298 () SeekEntryResult!2227)

(assert (=> b!294696 (= e!186298 Undefined!2227)))

(declare-fun b!294697 () Bool)

(declare-fun e!186299 () SeekEntryResult!2227)

(declare-fun lt!146148 () SeekEntryResult!2227)

(assert (=> b!294697 (= e!186299 (MissingZero!2227 (index!11080 lt!146148)))))

(declare-fun b!294698 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14905 (_ BitVec 32)) SeekEntryResult!2227)

(assert (=> b!294698 (= e!186299 (seekKeyOrZeroReturnVacant!0 (x!29250 lt!146148) (index!11080 lt!146148) (index!11080 lt!146148) k0!2524 a!3312 mask!3809))))

(declare-fun b!294699 () Bool)

(declare-fun e!186300 () SeekEntryResult!2227)

(assert (=> b!294699 (= e!186300 (Found!2227 (index!11080 lt!146148)))))

(declare-fun b!294700 () Bool)

(assert (=> b!294700 (= e!186298 e!186300)))

(declare-fun lt!146146 () (_ BitVec 64))

(assert (=> b!294700 (= lt!146146 (select (arr!7067 a!3312) (index!11080 lt!146148)))))

(declare-fun c!47446 () Bool)

(assert (=> b!294700 (= c!47446 (= lt!146146 k0!2524))))

(declare-fun b!294701 () Bool)

(declare-fun c!47448 () Bool)

(assert (=> b!294701 (= c!47448 (= lt!146146 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294701 (= e!186300 e!186299)))

(declare-fun d!66763 () Bool)

(declare-fun lt!146147 () SeekEntryResult!2227)

(assert (=> d!66763 (and (or ((_ is Undefined!2227) lt!146147) (not ((_ is Found!2227) lt!146147)) (and (bvsge (index!11079 lt!146147) #b00000000000000000000000000000000) (bvslt (index!11079 lt!146147) (size!7419 a!3312)))) (or ((_ is Undefined!2227) lt!146147) ((_ is Found!2227) lt!146147) (not ((_ is MissingZero!2227) lt!146147)) (and (bvsge (index!11078 lt!146147) #b00000000000000000000000000000000) (bvslt (index!11078 lt!146147) (size!7419 a!3312)))) (or ((_ is Undefined!2227) lt!146147) ((_ is Found!2227) lt!146147) ((_ is MissingZero!2227) lt!146147) (not ((_ is MissingVacant!2227) lt!146147)) (and (bvsge (index!11081 lt!146147) #b00000000000000000000000000000000) (bvslt (index!11081 lt!146147) (size!7419 a!3312)))) (or ((_ is Undefined!2227) lt!146147) (ite ((_ is Found!2227) lt!146147) (= (select (arr!7067 a!3312) (index!11079 lt!146147)) k0!2524) (ite ((_ is MissingZero!2227) lt!146147) (= (select (arr!7067 a!3312) (index!11078 lt!146147)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2227) lt!146147) (= (select (arr!7067 a!3312) (index!11081 lt!146147)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66763 (= lt!146147 e!186298)))

(declare-fun c!47447 () Bool)

(assert (=> d!66763 (= c!47447 (and ((_ is Intermediate!2227) lt!146148) (undefined!3039 lt!146148)))))

(assert (=> d!66763 (= lt!146148 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!66763 (validMask!0 mask!3809)))

(assert (=> d!66763 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!146147)))

(assert (= (and d!66763 c!47447) b!294696))

(assert (= (and d!66763 (not c!47447)) b!294700))

(assert (= (and b!294700 c!47446) b!294699))

(assert (= (and b!294700 (not c!47446)) b!294701))

(assert (= (and b!294701 c!47448) b!294697))

(assert (= (and b!294701 (not c!47448)) b!294698))

(declare-fun m!308063 () Bool)

(assert (=> b!294698 m!308063))

(declare-fun m!308065 () Bool)

(assert (=> b!294700 m!308065))

(assert (=> d!66763 m!307961))

(declare-fun m!308067 () Bool)

(assert (=> d!66763 m!308067))

(declare-fun m!308069 () Bool)

(assert (=> d!66763 m!308069))

(assert (=> d!66763 m!307949))

(declare-fun m!308071 () Bool)

(assert (=> d!66763 m!308071))

(assert (=> d!66763 m!307961))

(declare-fun m!308073 () Bool)

(assert (=> d!66763 m!308073))

(assert (=> b!294530 d!66763))

(check-sat (not b!294563) (not b!294608) (not d!66763) (not b!294698) (not d!66743) (not b!294561) (not b!294591) (not d!66733) (not bm!25704) (not b!294659))
(check-sat)
