; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28972 () Bool)

(assert start!28972)

(declare-fun b!294546 () Bool)

(declare-fun res!154893 () Bool)

(declare-fun e!186205 () Bool)

(assert (=> b!294546 (=> (not res!154893) (not e!186205))))

(declare-datatypes ((array!14907 0))(
  ( (array!14908 (arr!7068 (Array (_ BitVec 32) (_ BitVec 64))) (size!7420 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14907)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14907 (_ BitVec 32)) Bool)

(assert (=> b!294546 (= res!154893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!294547 () Bool)

(declare-fun res!154892 () Bool)

(declare-fun e!186206 () Bool)

(assert (=> b!294547 (=> (not res!154892) (not e!186206))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!294547 (= res!154892 (validKeyInArray!0 k!2524))))

(declare-fun res!154894 () Bool)

(assert (=> start!28972 (=> (not res!154894) (not e!186206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28972 (= res!154894 (validMask!0 mask!3809))))

(assert (=> start!28972 e!186206))

(assert (=> start!28972 true))

(declare-fun array_inv!5022 (array!14907) Bool)

(assert (=> start!28972 (array_inv!5022 a!3312)))

(declare-fun lt!146083 () Bool)

(declare-fun b!294548 () Bool)

(declare-datatypes ((SeekEntryResult!2228 0))(
  ( (MissingZero!2228 (index!11082 (_ BitVec 32))) (Found!2228 (index!11083 (_ BitVec 32))) (Intermediate!2228 (undefined!3040 Bool) (index!11084 (_ BitVec 32)) (x!29251 (_ BitVec 32))) (Undefined!2228) (MissingVacant!2228 (index!11085 (_ BitVec 32))) )
))
(declare-fun lt!146082 () SeekEntryResult!2228)

(assert (=> b!294548 (= e!186205 (and lt!146083 (let ((bdg!6241 (not (is-Intermediate!2228 lt!146082)))) (and (or bdg!6241 (not (undefined!3040 lt!146082))) (or bdg!6241 (not (= (select (arr!7068 a!3312) (index!11084 lt!146082)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or bdg!6241 (not (= (select (arr!7068 a!3312) (index!11084 lt!146082)) k!2524))) (not bdg!6241) (or (bvslt (index!11084 lt!146082) #b00000000000000000000000000000000) (bvsge (index!11084 lt!146082) (size!7420 a!3312)))))))))

(declare-fun lt!146081 () (_ BitVec 32))

(declare-fun lt!146080 () SeekEntryResult!2228)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14907 (_ BitVec 32)) SeekEntryResult!2228)

(assert (=> b!294548 (= lt!146080 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146081 k!2524 (array!14908 (store (arr!7068 a!3312) i!1256 k!2524) (size!7420 a!3312)) mask!3809))))

(assert (=> b!294548 (= lt!146082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146081 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294548 (= lt!146081 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!294549 () Bool)

(declare-fun res!154891 () Bool)

(assert (=> b!294549 (=> (not res!154891) (not e!186206))))

(assert (=> b!294549 (= res!154891 (and (= (size!7420 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7420 a!3312))))))

(declare-fun b!294550 () Bool)

(assert (=> b!294550 (= e!186206 e!186205)))

(declare-fun res!154896 () Bool)

(assert (=> b!294550 (=> (not res!154896) (not e!186205))))

(declare-fun lt!146084 () SeekEntryResult!2228)

(assert (=> b!294550 (= res!154896 (or lt!146083 (= lt!146084 (MissingVacant!2228 i!1256))))))

(assert (=> b!294550 (= lt!146083 (= lt!146084 (MissingZero!2228 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14907 (_ BitVec 32)) SeekEntryResult!2228)

(assert (=> b!294550 (= lt!146084 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!294551 () Bool)

(declare-fun res!154895 () Bool)

(assert (=> b!294551 (=> (not res!154895) (not e!186206))))

(declare-fun arrayContainsKey!0 (array!14907 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!294551 (= res!154895 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28972 res!154894) b!294549))

(assert (= (and b!294549 res!154891) b!294547))

(assert (= (and b!294547 res!154892) b!294551))

(assert (= (and b!294551 res!154895) b!294550))

(assert (= (and b!294550 res!154896) b!294546))

(assert (= (and b!294546 res!154893) b!294548))

(declare-fun m!307969 () Bool)

(assert (=> b!294551 m!307969))

(declare-fun m!307971 () Bool)

(assert (=> b!294546 m!307971))

(declare-fun m!307973 () Bool)

(assert (=> b!294550 m!307973))

(declare-fun m!307975 () Bool)

(assert (=> b!294547 m!307975))

(declare-fun m!307977 () Bool)

(assert (=> start!28972 m!307977))

(declare-fun m!307979 () Bool)

(assert (=> start!28972 m!307979))

(declare-fun m!307981 () Bool)

(assert (=> b!294548 m!307981))

(declare-fun m!307983 () Bool)

(assert (=> b!294548 m!307983))

(declare-fun m!307985 () Bool)

(assert (=> b!294548 m!307985))

(declare-fun m!307987 () Bool)

(assert (=> b!294548 m!307987))

(declare-fun m!307989 () Bool)

(assert (=> b!294548 m!307989))

(push 1)

(assert (not b!294548))

(assert (not b!294550))

(assert (not b!294546))

(assert (not b!294551))

(assert (not start!28972))

(assert (not b!294547))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66735 () Bool)

(assert (=> d!66735 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!294547 d!66735))

(declare-fun d!66737 () Bool)

(declare-fun res!154907 () Bool)

(declare-fun e!186224 () Bool)

(assert (=> d!66737 (=> res!154907 e!186224)))

(assert (=> d!66737 (= res!154907 (= (select (arr!7068 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66737 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!186224)))

(declare-fun b!294576 () Bool)

(declare-fun e!186225 () Bool)

(assert (=> b!294576 (= e!186224 e!186225)))

(declare-fun res!154908 () Bool)

(assert (=> b!294576 (=> (not res!154908) (not e!186225))))

(assert (=> b!294576 (= res!154908 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7420 a!3312)))))

(declare-fun b!294577 () Bool)

(assert (=> b!294577 (= e!186225 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66737 (not res!154907)) b!294576))

(assert (= (and b!294576 res!154908) b!294577))

(declare-fun m!308003 () Bool)

(assert (=> d!66737 m!308003))

(declare-fun m!308005 () Bool)

(assert (=> b!294577 m!308005))

(assert (=> b!294551 d!66737))

(declare-fun b!294614 () Bool)

(declare-fun e!186248 () Bool)

(declare-fun call!25710 () Bool)

(assert (=> b!294614 (= e!186248 call!25710)))

(declare-fun bm!25707 () Bool)

(assert (=> bm!25707 (= call!25710 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!294615 () Bool)

(declare-fun e!186249 () Bool)

(assert (=> b!294615 (= e!186248 e!186249)))

(declare-fun lt!146109 () (_ BitVec 64))

(assert (=> b!294615 (= lt!146109 (select (arr!7068 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9199 0))(
  ( (Unit!9200) )
))
(declare-fun lt!146108 () Unit!9199)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14907 (_ BitVec 64) (_ BitVec 32)) Unit!9199)

(assert (=> b!294615 (= lt!146108 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!146109 #b00000000000000000000000000000000))))

(assert (=> b!294615 (arrayContainsKey!0 a!3312 lt!146109 #b00000000000000000000000000000000)))

(declare-fun lt!146110 () Unit!9199)

(assert (=> b!294615 (= lt!146110 lt!146108)))

(declare-fun res!154926 () Bool)

(assert (=> b!294615 (= res!154926 (= (seekEntryOrOpen!0 (select (arr!7068 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2228 #b00000000000000000000000000000000)))))

(assert (=> b!294615 (=> (not res!154926) (not e!186249))))

(declare-fun b!294616 () Bool)

(assert (=> b!294616 (= e!186249 call!25710)))

(declare-fun d!66741 () Bool)

(declare-fun res!154927 () Bool)

(declare-fun e!186250 () Bool)

(assert (=> d!66741 (=> res!154927 e!186250)))

(assert (=> d!66741 (= res!154927 (bvsge #b00000000000000000000000000000000 (size!7420 a!3312)))))

(assert (=> d!66741 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!186250)))

(declare-fun b!294617 () Bool)

(assert (=> b!294617 (= e!186250 e!186248)))

(declare-fun c!47418 () Bool)

(assert (=> b!294617 (= c!47418 (validKeyInArray!0 (select (arr!7068 a!3312) #b00000000000000000000000000000000)))))

(assert (= (and d!66741 (not res!154927)) b!294617))

(assert (= (and b!294617 c!47418) b!294615))

(assert (= (and b!294617 (not c!47418)) b!294614))

(assert (= (and b!294615 res!154926) b!294616))

(assert (= (or b!294616 b!294614) bm!25707))

(declare-fun m!308021 () Bool)

(assert (=> bm!25707 m!308021))

(assert (=> b!294615 m!308003))

(declare-fun m!308023 () Bool)

(assert (=> b!294615 m!308023))

(declare-fun m!308025 () Bool)

(assert (=> b!294615 m!308025))

(assert (=> b!294615 m!308003))

(declare-fun m!308027 () Bool)

(assert (=> b!294615 m!308027))

(assert (=> b!294617 m!308003))

(assert (=> b!294617 m!308003))

(declare-fun m!308029 () Bool)

(assert (=> b!294617 m!308029))

(assert (=> b!294546 d!66741))

(declare-fun d!66747 () Bool)

(assert (=> d!66747 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28972 d!66747))

(declare-fun d!66751 () Bool)

(assert (=> d!66751 (= (array_inv!5022 a!3312) (bvsge (size!7420 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28972 d!66751))

(declare-fun b!294676 () Bool)

(declare-fun e!186288 () SeekEntryResult!2228)

(assert (=> b!294676 (= e!186288 Undefined!2228)))

(declare-fun d!66753 () Bool)

(declare-fun lt!146138 () SeekEntryResult!2228)

(assert (=> d!66753 (and (or (is-Undefined!2228 lt!146138) (not (is-Found!2228 lt!146138)) (and (bvsge (index!11083 lt!146138) #b00000000000000000000000000000000) (bvslt (index!11083 lt!146138) (size!7420 a!3312)))) (or (is-Undefined!2228 lt!146138) (is-Found!2228 lt!146138) (not (is-MissingZero!2228 lt!146138)) (and (bvsge (index!11082 lt!146138) #b00000000000000000000000000000000) (bvslt (index!11082 lt!146138) (size!7420 a!3312)))) (or (is-Undefined!2228 lt!146138) (is-Found!2228 lt!146138) (is-MissingZero!2228 lt!146138) (not (is-MissingVacant!2228 lt!146138)) (and (bvsge (index!11085 lt!146138) #b00000000000000000000000000000000) (bvslt (index!11085 lt!146138) (size!7420 a!3312)))) (or (is-Undefined!2228 lt!146138) (ite (is-Found!2228 lt!146138) (= (select (arr!7068 a!3312) (index!11083 lt!146138)) k!2524) (ite (is-MissingZero!2228 lt!146138) (= (select (arr!7068 a!3312) (index!11082 lt!146138)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2228 lt!146138) (= (select (arr!7068 a!3312) (index!11085 lt!146138)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66753 (= lt!146138 e!186288)))

(declare-fun c!47439 () Bool)

(declare-fun lt!146137 () SeekEntryResult!2228)

(assert (=> d!66753 (= c!47439 (and (is-Intermediate!2228 lt!146137) (undefined!3040 lt!146137)))))

(assert (=> d!66753 (= lt!146137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66753 (validMask!0 mask!3809)))

(assert (=> d!66753 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!146138)))

(declare-fun b!294677 () Bool)

(declare-fun e!186287 () SeekEntryResult!2228)

(assert (=> b!294677 (= e!186287 (MissingZero!2228 (index!11084 lt!146137)))))

(declare-fun b!294678 () Bool)

(declare-fun e!186289 () SeekEntryResult!2228)

(assert (=> b!294678 (= e!186288 e!186289)))

(declare-fun lt!146139 () (_ BitVec 64))

(assert (=> b!294678 (= lt!146139 (select (arr!7068 a!3312) (index!11084 lt!146137)))))

(declare-fun c!47438 () Bool)

(assert (=> b!294678 (= c!47438 (= lt!146139 k!2524))))

(declare-fun b!294679 () Bool)

(declare-fun c!47437 () Bool)

(assert (=> b!294679 (= c!47437 (= lt!146139 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294679 (= e!186289 e!186287)))

(declare-fun b!294680 () Bool)

(assert (=> b!294680 (= e!186289 (Found!2228 (index!11084 lt!146137)))))

(declare-fun b!294681 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14907 (_ BitVec 32)) SeekEntryResult!2228)

(assert (=> b!294681 (= e!186287 (seekKeyOrZeroReturnVacant!0 (x!29251 lt!146137) (index!11084 lt!146137) (index!11084 lt!146137) k!2524 a!3312 mask!3809))))

(assert (= (and d!66753 c!47439) b!294676))

(assert (= (and d!66753 (not c!47439)) b!294678))

(assert (= (and b!294678 c!47438) b!294680))

(assert (= (and b!294678 (not c!47438)) b!294679))

(assert (= (and b!294679 c!47437) b!294677))

(assert (= (and b!294679 (not c!47437)) b!294681))

(declare-fun m!308047 () Bool)

(assert (=> d!66753 m!308047))

(declare-fun m!308049 () Bool)

(assert (=> d!66753 m!308049))

(declare-fun m!308051 () Bool)

(assert (=> d!66753 m!308051))

(assert (=> d!66753 m!307987))

(assert (=> d!66753 m!307987))

(declare-fun m!308057 () Bool)

(assert (=> d!66753 m!308057))

(assert (=> d!66753 m!307977))

(declare-fun m!308059 () Bool)

(assert (=> b!294678 m!308059))

(declare-fun m!308061 () Bool)

(assert (=> b!294681 m!308061))

(assert (=> b!294550 d!66753))

(declare-fun e!186320 () SeekEntryResult!2228)

(declare-fun b!294732 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294732 (= e!186320 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146081 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14908 (store (arr!7068 a!3312) i!1256 k!2524) (size!7420 a!3312)) mask!3809))))

(declare-fun b!294733 () Bool)

(declare-fun lt!146163 () SeekEntryResult!2228)

(assert (=> b!294733 (and (bvsge (index!11084 lt!146163) #b00000000000000000000000000000000) (bvslt (index!11084 lt!146163) (size!7420 (array!14908 (store (arr!7068 a!3312) i!1256 k!2524) (size!7420 a!3312)))))))

(declare-fun e!186323 () Bool)

(assert (=> b!294733 (= e!186323 (= (select (arr!7068 (array!14908 (store (arr!7068 a!3312) i!1256 k!2524) (size!7420 a!3312))) (index!11084 lt!146163)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!66775 () Bool)

(declare-fun e!186324 () Bool)

(assert (=> d!66775 e!186324))

(declare-fun c!47458 () Bool)

(assert (=> d!66775 (= c!47458 (and (is-Intermediate!2228 lt!146163) (undefined!3040 lt!146163)))))

(declare-fun e!186321 () SeekEntryResult!2228)

(assert (=> d!66775 (= lt!146163 e!186321)))

(declare-fun c!47459 () Bool)

(assert (=> d!66775 (= c!47459 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!146162 () (_ BitVec 64))

(assert (=> d!66775 (= lt!146162 (select (arr!7068 (array!14908 (store (arr!7068 a!3312) i!1256 k!2524) (size!7420 a!3312))) lt!146081))))

(assert (=> d!66775 (validMask!0 mask!3809)))

(assert (=> d!66775 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146081 k!2524 (array!14908 (store (arr!7068 a!3312) i!1256 k!2524) (size!7420 a!3312)) mask!3809) lt!146163)))

(declare-fun b!294734 () Bool)

(assert (=> b!294734 (and (bvsge (index!11084 lt!146163) #b00000000000000000000000000000000) (bvslt (index!11084 lt!146163) (size!7420 (array!14908 (store (arr!7068 a!3312) i!1256 k!2524) (size!7420 a!3312)))))))

(declare-fun res!154967 () Bool)

(assert (=> b!294734 (= res!154967 (= (select (arr!7068 (array!14908 (store (arr!7068 a!3312) i!1256 k!2524) (size!7420 a!3312))) (index!11084 lt!146163)) k!2524))))

(assert (=> b!294734 (=> res!154967 e!186323)))

(declare-fun e!186322 () Bool)

(assert (=> b!294734 (= e!186322 e!186323)))

(declare-fun b!294735 () Bool)

(assert (=> b!294735 (and (bvsge (index!11084 lt!146163) #b00000000000000000000000000000000) (bvslt (index!11084 lt!146163) (size!7420 (array!14908 (store (arr!7068 a!3312) i!1256 k!2524) (size!7420 a!3312)))))))

(declare-fun res!154965 () Bool)

(assert (=> b!294735 (= res!154965 (= (select (arr!7068 (array!14908 (store (arr!7068 a!3312) i!1256 k!2524) (size!7420 a!3312))) (index!11084 lt!146163)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294735 (=> res!154965 e!186323)))

(declare-fun b!294736 () Bool)

(assert (=> b!294736 (= e!186321 e!186320)))

(declare-fun c!47460 () Bool)

(assert (=> b!294736 (= c!47460 (or (= lt!146162 k!2524) (= (bvadd lt!146162 lt!146162) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294737 () Bool)

(assert (=> b!294737 (= e!186320 (Intermediate!2228 false lt!146081 #b00000000000000000000000000000000))))

(declare-fun b!294738 () Bool)

(assert (=> b!294738 (= e!186324 (bvsge (x!29251 lt!146163) #b01111111111111111111111111111110))))

(declare-fun b!294739 () Bool)

(assert (=> b!294739 (= e!186324 e!186322)))

(declare-fun res!154966 () Bool)

(assert (=> b!294739 (= res!154966 (and (is-Intermediate!2228 lt!146163) (not (undefined!3040 lt!146163)) (bvslt (x!29251 lt!146163) #b01111111111111111111111111111110) (bvsge (x!29251 lt!146163) #b00000000000000000000000000000000) (bvsge (x!29251 lt!146163) #b00000000000000000000000000000000)))))

(assert (=> b!294739 (=> (not res!154966) (not e!186322))))

(declare-fun b!294740 () Bool)

(assert (=> b!294740 (= e!186321 (Intermediate!2228 true lt!146081 #b00000000000000000000000000000000))))

(assert (= (and d!66775 c!47459) b!294740))

(assert (= (and d!66775 (not c!47459)) b!294736))

(assert (= (and b!294736 c!47460) b!294737))

(assert (= (and b!294736 (not c!47460)) b!294732))

(assert (= (and d!66775 c!47458) b!294738))

(assert (= (and d!66775 (not c!47458)) b!294739))

(assert (= (and b!294739 res!154966) b!294734))

(assert (= (and b!294734 (not res!154967)) b!294735))

(assert (= (and b!294735 (not res!154965)) b!294733))

(declare-fun m!308085 () Bool)

(assert (=> b!294733 m!308085))

(assert (=> b!294734 m!308085))

(assert (=> b!294735 m!308085))

(declare-fun m!308087 () Bool)

(assert (=> d!66775 m!308087))

(assert (=> d!66775 m!307977))

(declare-fun m!308089 () Bool)

(assert (=> b!294732 m!308089))

(assert (=> b!294732 m!308089))

(declare-fun m!308091 () Bool)

(assert (=> b!294732 m!308091))

(assert (=> b!294548 d!66775))

(declare-fun b!294741 () Bool)

(declare-fun e!186325 () SeekEntryResult!2228)

(assert (=> b!294741 (= e!186325 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146081 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!294742 () Bool)

(declare-fun lt!146165 () SeekEntryResult!2228)

(assert (=> b!294742 (and (bvsge (index!11084 lt!146165) #b00000000000000000000000000000000) (bvslt (index!11084 lt!146165) (size!7420 a!3312)))))

(declare-fun e!186328 () Bool)

(assert (=> b!294742 (= e!186328 (= (select (arr!7068 a!3312) (index!11084 lt!146165)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!66779 () Bool)

(declare-fun e!186329 () Bool)

(assert (=> d!66779 e!186329))

(declare-fun c!47461 () Bool)

(assert (=> d!66779 (= c!47461 (and (is-Intermediate!2228 lt!146165) (undefined!3040 lt!146165)))))

(declare-fun e!186326 () SeekEntryResult!2228)

(assert (=> d!66779 (= lt!146165 e!186326)))

(declare-fun c!47462 () Bool)

(assert (=> d!66779 (= c!47462 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!146164 () (_ BitVec 64))

(assert (=> d!66779 (= lt!146164 (select (arr!7068 a!3312) lt!146081))))

(assert (=> d!66779 (validMask!0 mask!3809)))

(assert (=> d!66779 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146081 k!2524 a!3312 mask!3809) lt!146165)))

(declare-fun b!294743 () Bool)

(assert (=> b!294743 (and (bvsge (index!11084 lt!146165) #b00000000000000000000000000000000) (bvslt (index!11084 lt!146165) (size!7420 a!3312)))))

(declare-fun res!154970 () Bool)

(assert (=> b!294743 (= res!154970 (= (select (arr!7068 a!3312) (index!11084 lt!146165)) k!2524))))

(assert (=> b!294743 (=> res!154970 e!186328)))

(declare-fun e!186327 () Bool)

(assert (=> b!294743 (= e!186327 e!186328)))

(declare-fun b!294744 () Bool)

(assert (=> b!294744 (and (bvsge (index!11084 lt!146165) #b00000000000000000000000000000000) (bvslt (index!11084 lt!146165) (size!7420 a!3312)))))

(declare-fun res!154968 () Bool)

(assert (=> b!294744 (= res!154968 (= (select (arr!7068 a!3312) (index!11084 lt!146165)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294744 (=> res!154968 e!186328)))

(declare-fun b!294745 () Bool)

(assert (=> b!294745 (= e!186326 e!186325)))

(declare-fun c!47463 () Bool)

(assert (=> b!294745 (= c!47463 (or (= lt!146164 k!2524) (= (bvadd lt!146164 lt!146164) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294746 () Bool)

(assert (=> b!294746 (= e!186325 (Intermediate!2228 false lt!146081 #b00000000000000000000000000000000))))

(declare-fun b!294747 () Bool)

(assert (=> b!294747 (= e!186329 (bvsge (x!29251 lt!146165) #b01111111111111111111111111111110))))

(declare-fun b!294748 () Bool)

(assert (=> b!294748 (= e!186329 e!186327)))

(declare-fun res!154969 () Bool)

(assert (=> b!294748 (= res!154969 (and (is-Intermediate!2228 lt!146165) (not (undefined!3040 lt!146165)) (bvslt (x!29251 lt!146165) #b01111111111111111111111111111110) (bvsge (x!29251 lt!146165) #b00000000000000000000000000000000) (bvsge (x!29251 lt!146165) #b00000000000000000000000000000000)))))

(assert (=> b!294748 (=> (not res!154969) (not e!186327))))

(declare-fun b!294749 () Bool)

(assert (=> b!294749 (= e!186326 (Intermediate!2228 true lt!146081 #b00000000000000000000000000000000))))

(assert (= (and d!66779 c!47462) b!294749))

(assert (= (and d!66779 (not c!47462)) b!294745))

(assert (= (and b!294745 c!47463) b!294746))

(assert (= (and b!294745 (not c!47463)) b!294741))

(assert (= (and d!66779 c!47461) b!294747))

(assert (= (and d!66779 (not c!47461)) b!294748))

(assert (= (and b!294748 res!154969) b!294743))

(assert (= (and b!294743 (not res!154970)) b!294744))

(assert (= (and b!294744 (not res!154968)) b!294742))

(declare-fun m!308093 () Bool)

(assert (=> b!294742 m!308093))

(assert (=> b!294743 m!308093))

(assert (=> b!294744 m!308093))

(declare-fun m!308095 () Bool)

(assert (=> d!66779 m!308095))

(assert (=> d!66779 m!307977))

(assert (=> b!294741 m!308089))

(assert (=> b!294741 m!308089))

(declare-fun m!308097 () Bool)

(assert (=> b!294741 m!308097))

(assert (=> b!294548 d!66779))

(declare-fun d!66781 () Bool)

(declare-fun lt!146177 () (_ BitVec 32))

(declare-fun lt!146176 () (_ BitVec 32))

(assert (=> d!66781 (= lt!146177 (bvmul (bvxor lt!146176 (bvlshr lt!146176 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66781 (= lt!146176 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66781 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154971 (let ((h!5305 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29257 (bvmul (bvxor h!5305 (bvlshr h!5305 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29257 (bvlshr x!29257 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154971 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154971 #b00000000000000000000000000000000))))))

(assert (=> d!66781 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!146177 (bvlshr lt!146177 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!294548 d!66781))

(push 1)

(assert (not d!66779))

(assert (not b!294681))

(assert (not d!66753))

(assert (not b!294577))

(assert (not b!294615))

(assert (not b!294617))

(assert (not d!66775))

(assert (not b!294741))

(assert (not b!294732))

(assert (not bm!25707))

(check-sat)

(pop 1)

(push 1)

(check-sat)

