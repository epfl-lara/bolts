; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29024 () Bool)

(assert start!29024)

(declare-fun b!294798 () Bool)

(declare-fun e!186354 () Bool)

(declare-fun e!186355 () Bool)

(assert (=> b!294798 (= e!186354 e!186355)))

(declare-fun res!155005 () Bool)

(assert (=> b!294798 (=> (not res!155005) (not e!186355))))

(declare-fun lt!146207 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2230 0))(
  ( (MissingZero!2230 (index!11090 (_ BitVec 32))) (Found!2230 (index!11091 (_ BitVec 32))) (Intermediate!2230 (undefined!3042 Bool) (index!11092 (_ BitVec 32)) (x!29267 (_ BitVec 32))) (Undefined!2230) (MissingVacant!2230 (index!11093 (_ BitVec 32))) )
))
(declare-fun lt!146210 () SeekEntryResult!2230)

(assert (=> b!294798 (= res!155005 (or lt!146207 (= lt!146210 (MissingVacant!2230 i!1256))))))

(assert (=> b!294798 (= lt!146207 (= lt!146210 (MissingZero!2230 i!1256)))))

(declare-datatypes ((array!14914 0))(
  ( (array!14915 (arr!7070 (Array (_ BitVec 32) (_ BitVec 64))) (size!7422 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14914)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14914 (_ BitVec 32)) SeekEntryResult!2230)

(assert (=> b!294798 (= lt!146210 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!155002 () Bool)

(assert (=> start!29024 (=> (not res!155002) (not e!186354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29024 (= res!155002 (validMask!0 mask!3809))))

(assert (=> start!29024 e!186354))

(assert (=> start!29024 true))

(declare-fun array_inv!5024 (array!14914) Bool)

(assert (=> start!29024 (array_inv!5024 a!3312)))

(declare-fun b!294799 () Bool)

(declare-fun lt!146206 () SeekEntryResult!2230)

(get-info :version)

(assert (=> b!294799 (= e!186355 (and lt!146207 (let ((bdg!6247 (not ((_ is Intermediate!2230) lt!146206)))) (and (or bdg!6247 (not (undefined!3042 lt!146206))) (or bdg!6247 (not (= (select (arr!7070 a!3312) (index!11092 lt!146206)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or bdg!6247 (not (= (select (arr!7070 a!3312) (index!11092 lt!146206)) k0!2524))) (not bdg!6247) (not (= (select (arr!7070 a!3312) (index!11092 lt!146206)) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!146209 () SeekEntryResult!2230)

(declare-fun lt!146208 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14914 (_ BitVec 32)) SeekEntryResult!2230)

(assert (=> b!294799 (= lt!146209 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146208 k0!2524 (array!14915 (store (arr!7070 a!3312) i!1256 k0!2524) (size!7422 a!3312)) mask!3809))))

(assert (=> b!294799 (= lt!146206 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146208 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294799 (= lt!146208 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!294800 () Bool)

(declare-fun res!155007 () Bool)

(assert (=> b!294800 (=> (not res!155007) (not e!186354))))

(assert (=> b!294800 (= res!155007 (and (= (size!7422 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7422 a!3312))))))

(declare-fun b!294801 () Bool)

(declare-fun res!155003 () Bool)

(assert (=> b!294801 (=> (not res!155003) (not e!186354))))

(declare-fun arrayContainsKey!0 (array!14914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!294801 (= res!155003 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!294802 () Bool)

(declare-fun res!155004 () Bool)

(assert (=> b!294802 (=> (not res!155004) (not e!186355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14914 (_ BitVec 32)) Bool)

(assert (=> b!294802 (= res!155004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!294803 () Bool)

(declare-fun res!155006 () Bool)

(assert (=> b!294803 (=> (not res!155006) (not e!186354))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!294803 (= res!155006 (validKeyInArray!0 k0!2524))))

(assert (= (and start!29024 res!155002) b!294800))

(assert (= (and b!294800 res!155007) b!294803))

(assert (= (and b!294803 res!155006) b!294801))

(assert (= (and b!294801 res!155003) b!294798))

(assert (= (and b!294798 res!155005) b!294802))

(assert (= (and b!294802 res!155004) b!294799))

(declare-fun m!308133 () Bool)

(assert (=> b!294801 m!308133))

(declare-fun m!308135 () Bool)

(assert (=> b!294798 m!308135))

(declare-fun m!308137 () Bool)

(assert (=> start!29024 m!308137))

(declare-fun m!308139 () Bool)

(assert (=> start!29024 m!308139))

(declare-fun m!308141 () Bool)

(assert (=> b!294803 m!308141))

(declare-fun m!308143 () Bool)

(assert (=> b!294802 m!308143))

(declare-fun m!308145 () Bool)

(assert (=> b!294799 m!308145))

(declare-fun m!308147 () Bool)

(assert (=> b!294799 m!308147))

(declare-fun m!308149 () Bool)

(assert (=> b!294799 m!308149))

(declare-fun m!308151 () Bool)

(assert (=> b!294799 m!308151))

(declare-fun m!308153 () Bool)

(assert (=> b!294799 m!308153))

(check-sat (not b!294801) (not b!294803) (not b!294799) (not start!29024) (not b!294802) (not b!294798))
(check-sat)
(get-model)

(declare-fun b!294830 () Bool)

(declare-fun e!186374 () Bool)

(declare-fun call!25716 () Bool)

(assert (=> b!294830 (= e!186374 call!25716)))

(declare-fun bm!25713 () Bool)

(assert (=> bm!25713 (= call!25716 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!294831 () Bool)

(declare-fun e!186372 () Bool)

(assert (=> b!294831 (= e!186372 call!25716)))

(declare-fun d!66785 () Bool)

(declare-fun res!155031 () Bool)

(declare-fun e!186373 () Bool)

(assert (=> d!66785 (=> res!155031 e!186373)))

(assert (=> d!66785 (= res!155031 (bvsge #b00000000000000000000000000000000 (size!7422 a!3312)))))

(assert (=> d!66785 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!186373)))

(declare-fun b!294832 () Bool)

(assert (=> b!294832 (= e!186373 e!186374)))

(declare-fun c!47475 () Bool)

(assert (=> b!294832 (= c!47475 (validKeyInArray!0 (select (arr!7070 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!294833 () Bool)

(assert (=> b!294833 (= e!186374 e!186372)))

(declare-fun lt!146233 () (_ BitVec 64))

(assert (=> b!294833 (= lt!146233 (select (arr!7070 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9203 0))(
  ( (Unit!9204) )
))
(declare-fun lt!146232 () Unit!9203)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14914 (_ BitVec 64) (_ BitVec 32)) Unit!9203)

(assert (=> b!294833 (= lt!146232 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!146233 #b00000000000000000000000000000000))))

(assert (=> b!294833 (arrayContainsKey!0 a!3312 lt!146233 #b00000000000000000000000000000000)))

(declare-fun lt!146234 () Unit!9203)

(assert (=> b!294833 (= lt!146234 lt!146232)))

(declare-fun res!155030 () Bool)

(assert (=> b!294833 (= res!155030 (= (seekEntryOrOpen!0 (select (arr!7070 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2230 #b00000000000000000000000000000000)))))

(assert (=> b!294833 (=> (not res!155030) (not e!186372))))

(assert (= (and d!66785 (not res!155031)) b!294832))

(assert (= (and b!294832 c!47475) b!294833))

(assert (= (and b!294832 (not c!47475)) b!294830))

(assert (= (and b!294833 res!155030) b!294831))

(assert (= (or b!294831 b!294830) bm!25713))

(declare-fun m!308177 () Bool)

(assert (=> bm!25713 m!308177))

(declare-fun m!308179 () Bool)

(assert (=> b!294832 m!308179))

(assert (=> b!294832 m!308179))

(declare-fun m!308181 () Bool)

(assert (=> b!294832 m!308181))

(assert (=> b!294833 m!308179))

(declare-fun m!308183 () Bool)

(assert (=> b!294833 m!308183))

(declare-fun m!308185 () Bool)

(assert (=> b!294833 m!308185))

(assert (=> b!294833 m!308179))

(declare-fun m!308187 () Bool)

(assert (=> b!294833 m!308187))

(assert (=> b!294802 d!66785))

(declare-fun d!66787 () Bool)

(assert (=> d!66787 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!294803 d!66787))

(declare-fun d!66789 () Bool)

(declare-fun res!155036 () Bool)

(declare-fun e!186379 () Bool)

(assert (=> d!66789 (=> res!155036 e!186379)))

(assert (=> d!66789 (= res!155036 (= (select (arr!7070 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!66789 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!186379)))

(declare-fun b!294838 () Bool)

(declare-fun e!186380 () Bool)

(assert (=> b!294838 (= e!186379 e!186380)))

(declare-fun res!155037 () Bool)

(assert (=> b!294838 (=> (not res!155037) (not e!186380))))

(assert (=> b!294838 (= res!155037 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7422 a!3312)))))

(declare-fun b!294839 () Bool)

(assert (=> b!294839 (= e!186380 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66789 (not res!155036)) b!294838))

(assert (= (and b!294838 res!155037) b!294839))

(assert (=> d!66789 m!308179))

(declare-fun m!308189 () Bool)

(assert (=> b!294839 m!308189))

(assert (=> b!294801 d!66789))

(declare-fun d!66791 () Bool)

(assert (=> d!66791 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29024 d!66791))

(declare-fun d!66797 () Bool)

(assert (=> d!66797 (= (array_inv!5024 a!3312) (bvsge (size!7422 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29024 d!66797))

(declare-fun d!66803 () Bool)

(declare-fun lt!146248 () SeekEntryResult!2230)

(assert (=> d!66803 (and (or ((_ is Undefined!2230) lt!146248) (not ((_ is Found!2230) lt!146248)) (and (bvsge (index!11091 lt!146248) #b00000000000000000000000000000000) (bvslt (index!11091 lt!146248) (size!7422 a!3312)))) (or ((_ is Undefined!2230) lt!146248) ((_ is Found!2230) lt!146248) (not ((_ is MissingZero!2230) lt!146248)) (and (bvsge (index!11090 lt!146248) #b00000000000000000000000000000000) (bvslt (index!11090 lt!146248) (size!7422 a!3312)))) (or ((_ is Undefined!2230) lt!146248) ((_ is Found!2230) lt!146248) ((_ is MissingZero!2230) lt!146248) (not ((_ is MissingVacant!2230) lt!146248)) (and (bvsge (index!11093 lt!146248) #b00000000000000000000000000000000) (bvslt (index!11093 lt!146248) (size!7422 a!3312)))) (or ((_ is Undefined!2230) lt!146248) (ite ((_ is Found!2230) lt!146248) (= (select (arr!7070 a!3312) (index!11091 lt!146248)) k0!2524) (ite ((_ is MissingZero!2230) lt!146248) (= (select (arr!7070 a!3312) (index!11090 lt!146248)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2230) lt!146248) (= (select (arr!7070 a!3312) (index!11093 lt!146248)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!186406 () SeekEntryResult!2230)

(assert (=> d!66803 (= lt!146248 e!186406)))

(declare-fun c!47491 () Bool)

(declare-fun lt!146247 () SeekEntryResult!2230)

(assert (=> d!66803 (= c!47491 (and ((_ is Intermediate!2230) lt!146247) (undefined!3042 lt!146247)))))

(assert (=> d!66803 (= lt!146247 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!66803 (validMask!0 mask!3809)))

(assert (=> d!66803 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!146248)))

(declare-fun b!294876 () Bool)

(assert (=> b!294876 (= e!186406 Undefined!2230)))

(declare-fun b!294877 () Bool)

(declare-fun c!47489 () Bool)

(declare-fun lt!146245 () (_ BitVec 64))

(assert (=> b!294877 (= c!47489 (= lt!146245 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!186403 () SeekEntryResult!2230)

(declare-fun e!186408 () SeekEntryResult!2230)

(assert (=> b!294877 (= e!186403 e!186408)))

(declare-fun b!294878 () Bool)

(assert (=> b!294878 (= e!186406 e!186403)))

(assert (=> b!294878 (= lt!146245 (select (arr!7070 a!3312) (index!11092 lt!146247)))))

(declare-fun c!47488 () Bool)

(assert (=> b!294878 (= c!47488 (= lt!146245 k0!2524))))

(declare-fun b!294879 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14914 (_ BitVec 32)) SeekEntryResult!2230)

(assert (=> b!294879 (= e!186408 (seekKeyOrZeroReturnVacant!0 (x!29267 lt!146247) (index!11092 lt!146247) (index!11092 lt!146247) k0!2524 a!3312 mask!3809))))

(declare-fun b!294880 () Bool)

(assert (=> b!294880 (= e!186403 (Found!2230 (index!11092 lt!146247)))))

(declare-fun b!294881 () Bool)

(assert (=> b!294881 (= e!186408 (MissingZero!2230 (index!11092 lt!146247)))))

(assert (= (and d!66803 c!47491) b!294876))

(assert (= (and d!66803 (not c!47491)) b!294878))

(assert (= (and b!294878 c!47488) b!294880))

(assert (= (and b!294878 (not c!47488)) b!294877))

(assert (= (and b!294877 c!47489) b!294881))

(assert (= (and b!294877 (not c!47489)) b!294879))

(declare-fun m!308195 () Bool)

(assert (=> d!66803 m!308195))

(assert (=> d!66803 m!308153))

(declare-fun m!308197 () Bool)

(assert (=> d!66803 m!308197))

(assert (=> d!66803 m!308153))

(declare-fun m!308199 () Bool)

(assert (=> d!66803 m!308199))

(declare-fun m!308203 () Bool)

(assert (=> d!66803 m!308203))

(assert (=> d!66803 m!308137))

(declare-fun m!308205 () Bool)

(assert (=> b!294878 m!308205))

(declare-fun m!308209 () Bool)

(assert (=> b!294879 m!308209))

(assert (=> b!294798 d!66803))

(declare-fun b!294966 () Bool)

(declare-fun e!186459 () SeekEntryResult!2230)

(declare-fun e!186458 () SeekEntryResult!2230)

(assert (=> b!294966 (= e!186459 e!186458)))

(declare-fun c!47519 () Bool)

(declare-fun lt!146286 () (_ BitVec 64))

(assert (=> b!294966 (= c!47519 (or (= lt!146286 k0!2524) (= (bvadd lt!146286 lt!146286) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294967 () Bool)

(declare-fun e!186457 () Bool)

(declare-fun lt!146285 () SeekEntryResult!2230)

(assert (=> b!294967 (= e!186457 (bvsge (x!29267 lt!146285) #b01111111111111111111111111111110))))

(declare-fun b!294968 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294968 (= e!186458 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146208 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!14915 (store (arr!7070 a!3312) i!1256 k0!2524) (size!7422 a!3312)) mask!3809))))

(declare-fun d!66811 () Bool)

(assert (=> d!66811 e!186457))

(declare-fun c!47518 () Bool)

(assert (=> d!66811 (= c!47518 (and ((_ is Intermediate!2230) lt!146285) (undefined!3042 lt!146285)))))

(assert (=> d!66811 (= lt!146285 e!186459)))

(declare-fun c!47520 () Bool)

(assert (=> d!66811 (= c!47520 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66811 (= lt!146286 (select (arr!7070 (array!14915 (store (arr!7070 a!3312) i!1256 k0!2524) (size!7422 a!3312))) lt!146208))))

(assert (=> d!66811 (validMask!0 mask!3809)))

(assert (=> d!66811 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146208 k0!2524 (array!14915 (store (arr!7070 a!3312) i!1256 k0!2524) (size!7422 a!3312)) mask!3809) lt!146285)))

(declare-fun b!294969 () Bool)

(assert (=> b!294969 (= e!186459 (Intermediate!2230 true lt!146208 #b00000000000000000000000000000000))))

(declare-fun b!294970 () Bool)

(assert (=> b!294970 (and (bvsge (index!11092 lt!146285) #b00000000000000000000000000000000) (bvslt (index!11092 lt!146285) (size!7422 (array!14915 (store (arr!7070 a!3312) i!1256 k0!2524) (size!7422 a!3312)))))))

(declare-fun e!186456 () Bool)

(assert (=> b!294970 (= e!186456 (= (select (arr!7070 (array!14915 (store (arr!7070 a!3312) i!1256 k0!2524) (size!7422 a!3312))) (index!11092 lt!146285)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294971 () Bool)

(assert (=> b!294971 (= e!186458 (Intermediate!2230 false lt!146208 #b00000000000000000000000000000000))))

(declare-fun b!294972 () Bool)

(declare-fun e!186455 () Bool)

(assert (=> b!294972 (= e!186457 e!186455)))

(declare-fun res!155083 () Bool)

(assert (=> b!294972 (= res!155083 (and ((_ is Intermediate!2230) lt!146285) (not (undefined!3042 lt!146285)) (bvslt (x!29267 lt!146285) #b01111111111111111111111111111110) (bvsge (x!29267 lt!146285) #b00000000000000000000000000000000) (bvsge (x!29267 lt!146285) #b00000000000000000000000000000000)))))

(assert (=> b!294972 (=> (not res!155083) (not e!186455))))

(declare-fun b!294973 () Bool)

(assert (=> b!294973 (and (bvsge (index!11092 lt!146285) #b00000000000000000000000000000000) (bvslt (index!11092 lt!146285) (size!7422 (array!14915 (store (arr!7070 a!3312) i!1256 k0!2524) (size!7422 a!3312)))))))

(declare-fun res!155082 () Bool)

(assert (=> b!294973 (= res!155082 (= (select (arr!7070 (array!14915 (store (arr!7070 a!3312) i!1256 k0!2524) (size!7422 a!3312))) (index!11092 lt!146285)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294973 (=> res!155082 e!186456)))

(declare-fun b!294974 () Bool)

(assert (=> b!294974 (and (bvsge (index!11092 lt!146285) #b00000000000000000000000000000000) (bvslt (index!11092 lt!146285) (size!7422 (array!14915 (store (arr!7070 a!3312) i!1256 k0!2524) (size!7422 a!3312)))))))

(declare-fun res!155084 () Bool)

(assert (=> b!294974 (= res!155084 (= (select (arr!7070 (array!14915 (store (arr!7070 a!3312) i!1256 k0!2524) (size!7422 a!3312))) (index!11092 lt!146285)) k0!2524))))

(assert (=> b!294974 (=> res!155084 e!186456)))

(assert (=> b!294974 (= e!186455 e!186456)))

(assert (= (and d!66811 c!47520) b!294969))

(assert (= (and d!66811 (not c!47520)) b!294966))

(assert (= (and b!294966 c!47519) b!294971))

(assert (= (and b!294966 (not c!47519)) b!294968))

(assert (= (and d!66811 c!47518) b!294967))

(assert (= (and d!66811 (not c!47518)) b!294972))

(assert (= (and b!294972 res!155083) b!294974))

(assert (= (and b!294974 (not res!155084)) b!294973))

(assert (= (and b!294973 (not res!155082)) b!294970))

(declare-fun m!308247 () Bool)

(assert (=> b!294974 m!308247))

(declare-fun m!308249 () Bool)

(assert (=> d!66811 m!308249))

(assert (=> d!66811 m!308137))

(declare-fun m!308251 () Bool)

(assert (=> b!294968 m!308251))

(assert (=> b!294968 m!308251))

(declare-fun m!308253 () Bool)

(assert (=> b!294968 m!308253))

(assert (=> b!294973 m!308247))

(assert (=> b!294970 m!308247))

(assert (=> b!294799 d!66811))

(declare-fun b!294975 () Bool)

(declare-fun e!186464 () SeekEntryResult!2230)

(declare-fun e!186463 () SeekEntryResult!2230)

(assert (=> b!294975 (= e!186464 e!186463)))

(declare-fun c!47522 () Bool)

(declare-fun lt!146288 () (_ BitVec 64))

(assert (=> b!294975 (= c!47522 (or (= lt!146288 k0!2524) (= (bvadd lt!146288 lt!146288) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294976 () Bool)

(declare-fun e!186462 () Bool)

(declare-fun lt!146287 () SeekEntryResult!2230)

(assert (=> b!294976 (= e!186462 (bvsge (x!29267 lt!146287) #b01111111111111111111111111111110))))

(declare-fun b!294977 () Bool)

(assert (=> b!294977 (= e!186463 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146208 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun d!66827 () Bool)

(assert (=> d!66827 e!186462))

(declare-fun c!47521 () Bool)

(assert (=> d!66827 (= c!47521 (and ((_ is Intermediate!2230) lt!146287) (undefined!3042 lt!146287)))))

(assert (=> d!66827 (= lt!146287 e!186464)))

(declare-fun c!47523 () Bool)

(assert (=> d!66827 (= c!47523 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66827 (= lt!146288 (select (arr!7070 a!3312) lt!146208))))

(assert (=> d!66827 (validMask!0 mask!3809)))

(assert (=> d!66827 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146208 k0!2524 a!3312 mask!3809) lt!146287)))

(declare-fun b!294978 () Bool)

(assert (=> b!294978 (= e!186464 (Intermediate!2230 true lt!146208 #b00000000000000000000000000000000))))

(declare-fun b!294979 () Bool)

(assert (=> b!294979 (and (bvsge (index!11092 lt!146287) #b00000000000000000000000000000000) (bvslt (index!11092 lt!146287) (size!7422 a!3312)))))

(declare-fun e!186461 () Bool)

(assert (=> b!294979 (= e!186461 (= (select (arr!7070 a!3312) (index!11092 lt!146287)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294980 () Bool)

(assert (=> b!294980 (= e!186463 (Intermediate!2230 false lt!146208 #b00000000000000000000000000000000))))

(declare-fun b!294981 () Bool)

(declare-fun e!186460 () Bool)

(assert (=> b!294981 (= e!186462 e!186460)))

(declare-fun res!155086 () Bool)

(assert (=> b!294981 (= res!155086 (and ((_ is Intermediate!2230) lt!146287) (not (undefined!3042 lt!146287)) (bvslt (x!29267 lt!146287) #b01111111111111111111111111111110) (bvsge (x!29267 lt!146287) #b00000000000000000000000000000000) (bvsge (x!29267 lt!146287) #b00000000000000000000000000000000)))))

(assert (=> b!294981 (=> (not res!155086) (not e!186460))))

(declare-fun b!294982 () Bool)

(assert (=> b!294982 (and (bvsge (index!11092 lt!146287) #b00000000000000000000000000000000) (bvslt (index!11092 lt!146287) (size!7422 a!3312)))))

(declare-fun res!155085 () Bool)

(assert (=> b!294982 (= res!155085 (= (select (arr!7070 a!3312) (index!11092 lt!146287)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294982 (=> res!155085 e!186461)))

(declare-fun b!294983 () Bool)

(assert (=> b!294983 (and (bvsge (index!11092 lt!146287) #b00000000000000000000000000000000) (bvslt (index!11092 lt!146287) (size!7422 a!3312)))))

(declare-fun res!155087 () Bool)

(assert (=> b!294983 (= res!155087 (= (select (arr!7070 a!3312) (index!11092 lt!146287)) k0!2524))))

(assert (=> b!294983 (=> res!155087 e!186461)))

(assert (=> b!294983 (= e!186460 e!186461)))

(assert (= (and d!66827 c!47523) b!294978))

(assert (= (and d!66827 (not c!47523)) b!294975))

(assert (= (and b!294975 c!47522) b!294980))

(assert (= (and b!294975 (not c!47522)) b!294977))

(assert (= (and d!66827 c!47521) b!294976))

(assert (= (and d!66827 (not c!47521)) b!294981))

(assert (= (and b!294981 res!155086) b!294983))

(assert (= (and b!294983 (not res!155087)) b!294982))

(assert (= (and b!294982 (not res!155085)) b!294979))

(declare-fun m!308255 () Bool)

(assert (=> b!294983 m!308255))

(declare-fun m!308257 () Bool)

(assert (=> d!66827 m!308257))

(assert (=> d!66827 m!308137))

(assert (=> b!294977 m!308251))

(assert (=> b!294977 m!308251))

(declare-fun m!308259 () Bool)

(assert (=> b!294977 m!308259))

(assert (=> b!294982 m!308255))

(assert (=> b!294979 m!308255))

(assert (=> b!294799 d!66827))

(declare-fun d!66829 () Bool)

(declare-fun lt!146303 () (_ BitVec 32))

(declare-fun lt!146302 () (_ BitVec 32))

(assert (=> d!66829 (= lt!146303 (bvmul (bvxor lt!146302 (bvlshr lt!146302 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66829 (= lt!146302 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66829 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!155090 (let ((h!5308 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29274 (bvmul (bvxor h!5308 (bvlshr h!5308 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29274 (bvlshr x!29274 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!155090 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!155090 #b00000000000000000000000000000000))))))

(assert (=> d!66829 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!146303 (bvlshr lt!146303 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!294799 d!66829))

(check-sat (not d!66811) (not b!294977) (not b!294968) (not bm!25713) (not b!294832) (not b!294833) (not b!294879) (not d!66827) (not b!294839) (not d!66803))
(check-sat)
