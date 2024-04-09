; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67818 () Bool)

(assert start!67818)

(declare-fun b!788210 () Bool)

(declare-datatypes ((Unit!27302 0))(
  ( (Unit!27303) )
))
(declare-fun e!438126 () Unit!27302)

(declare-fun Unit!27304 () Unit!27302)

(assert (=> b!788210 (= e!438126 Unit!27304)))

(assert (=> b!788210 false))

(declare-fun b!788211 () Bool)

(declare-fun res!534099 () Bool)

(declare-fun e!438120 () Bool)

(assert (=> b!788211 (=> (not res!534099) (not e!438120))))

(declare-datatypes ((array!42813 0))(
  ( (array!42814 (arr!20491 (Array (_ BitVec 32) (_ BitVec 64))) (size!20912 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42813)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42813 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!788211 (= res!534099 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!788212 () Bool)

(declare-fun res!534094 () Bool)

(declare-fun e!438125 () Bool)

(assert (=> b!788212 (=> (not res!534094) (not e!438125))))

(declare-datatypes ((List!14546 0))(
  ( (Nil!14543) (Cons!14542 (h!15665 (_ BitVec 64)) (t!20869 List!14546)) )
))
(declare-fun arrayNoDuplicates!0 (array!42813 (_ BitVec 32) List!14546) Bool)

(assert (=> b!788212 (= res!534094 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14543))))

(declare-fun b!788213 () Bool)

(declare-fun e!438129 () Bool)

(declare-fun e!438119 () Bool)

(assert (=> b!788213 (= e!438129 (not e!438119))))

(declare-fun res!534097 () Bool)

(assert (=> b!788213 (=> res!534097 e!438119)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8098 0))(
  ( (MissingZero!8098 (index!34759 (_ BitVec 32))) (Found!8098 (index!34760 (_ BitVec 32))) (Intermediate!8098 (undefined!8910 Bool) (index!34761 (_ BitVec 32)) (x!65719 (_ BitVec 32))) (Undefined!8098) (MissingVacant!8098 (index!34762 (_ BitVec 32))) )
))
(declare-fun lt!351694 () SeekEntryResult!8098)

(declare-fun index!1321 () (_ BitVec 32))

(get-info :version)

(assert (=> b!788213 (= res!534097 (or (not ((_ is Intermediate!8098) lt!351694)) (bvslt x!1131 (x!65719 lt!351694)) (not (= x!1131 (x!65719 lt!351694))) (not (= index!1321 (index!34761 lt!351694)))))))

(declare-fun e!438122 () Bool)

(assert (=> b!788213 e!438122))

(declare-fun res!534101 () Bool)

(assert (=> b!788213 (=> (not res!534101) (not e!438122))))

(declare-fun lt!351688 () SeekEntryResult!8098)

(declare-fun lt!351693 () SeekEntryResult!8098)

(assert (=> b!788213 (= res!534101 (= lt!351688 lt!351693))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!788213 (= lt!351693 (Found!8098 j!159))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42813 (_ BitVec 32)) SeekEntryResult!8098)

(assert (=> b!788213 (= lt!351688 (seekEntryOrOpen!0 (select (arr!20491 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42813 (_ BitVec 32)) Bool)

(assert (=> b!788213 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351696 () Unit!27302)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27302)

(assert (=> b!788213 (= lt!351696 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!788214 () Bool)

(declare-fun Unit!27305 () Unit!27302)

(assert (=> b!788214 (= e!438126 Unit!27305)))

(declare-fun b!788215 () Bool)

(declare-fun res!534093 () Bool)

(assert (=> b!788215 (=> (not res!534093) (not e!438125))))

(assert (=> b!788215 (= res!534093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!788216 () Bool)

(assert (=> b!788216 (= e!438120 e!438125)))

(declare-fun res!534109 () Bool)

(assert (=> b!788216 (=> (not res!534109) (not e!438125))))

(declare-fun lt!351695 () SeekEntryResult!8098)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!788216 (= res!534109 (or (= lt!351695 (MissingZero!8098 i!1173)) (= lt!351695 (MissingVacant!8098 i!1173))))))

(assert (=> b!788216 (= lt!351695 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!788217 () Bool)

(declare-fun res!534108 () Bool)

(declare-fun e!438121 () Bool)

(assert (=> b!788217 (=> (not res!534108) (not e!438121))))

(declare-fun e!438127 () Bool)

(assert (=> b!788217 (= res!534108 e!438127)))

(declare-fun c!87467 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!788217 (= c!87467 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!788218 () Bool)

(declare-fun e!438130 () Bool)

(assert (=> b!788218 (= e!438119 e!438130)))

(declare-fun res!534107 () Bool)

(assert (=> b!788218 (=> res!534107 e!438130)))

(declare-fun lt!351689 () SeekEntryResult!8098)

(assert (=> b!788218 (= res!534107 (not (= lt!351689 lt!351693)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42813 (_ BitVec 32)) SeekEntryResult!8098)

(assert (=> b!788218 (= lt!351689 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20491 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788220 () Bool)

(assert (=> b!788220 (= e!438122 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20491 a!3186) j!159) a!3186 mask!3328) lt!351693))))

(declare-fun b!788221 () Bool)

(declare-fun res!534106 () Bool)

(assert (=> b!788221 (=> (not res!534106) (not e!438120))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!788221 (= res!534106 (validKeyInArray!0 k0!2102))))

(declare-fun b!788222 () Bool)

(declare-fun res!534096 () Bool)

(assert (=> b!788222 (=> (not res!534096) (not e!438120))))

(assert (=> b!788222 (= res!534096 (validKeyInArray!0 (select (arr!20491 a!3186) j!159)))))

(declare-fun b!788223 () Bool)

(declare-fun res!534102 () Bool)

(assert (=> b!788223 (=> (not res!534102) (not e!438120))))

(assert (=> b!788223 (= res!534102 (and (= (size!20912 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20912 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20912 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!788224 () Bool)

(declare-fun e!438123 () Bool)

(assert (=> b!788224 (= e!438130 e!438123)))

(declare-fun res!534095 () Bool)

(assert (=> b!788224 (=> res!534095 e!438123)))

(declare-fun lt!351690 () (_ BitVec 64))

(declare-fun lt!351692 () (_ BitVec 64))

(assert (=> b!788224 (= res!534095 (= lt!351690 lt!351692))))

(assert (=> b!788224 (= lt!351690 (select (store (arr!20491 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!788225 () Bool)

(declare-fun res!534098 () Bool)

(assert (=> b!788225 (=> (not res!534098) (not e!438125))))

(assert (=> b!788225 (= res!534098 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20912 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20912 a!3186))))))

(declare-fun b!788226 () Bool)

(assert (=> b!788226 (= e!438127 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20491 a!3186) j!159) a!3186 mask!3328) (Found!8098 j!159)))))

(declare-fun b!788227 () Bool)

(assert (=> b!788227 (= e!438123 (or (not (= (select (arr!20491 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= index!1321 resIntermediateIndex!5))))))

(declare-fun e!438124 () Bool)

(assert (=> b!788227 e!438124))

(declare-fun res!534100 () Bool)

(assert (=> b!788227 (=> (not res!534100) (not e!438124))))

(assert (=> b!788227 (= res!534100 (= lt!351690 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351697 () Unit!27302)

(assert (=> b!788227 (= lt!351697 e!438126)))

(declare-fun c!87468 () Bool)

(assert (=> b!788227 (= c!87468 (= lt!351690 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788228 () Bool)

(declare-fun res!534091 () Bool)

(assert (=> b!788228 (=> (not res!534091) (not e!438121))))

(assert (=> b!788228 (= res!534091 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20491 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788229 () Bool)

(assert (=> b!788229 (= e!438121 e!438129)))

(declare-fun res!534103 () Bool)

(assert (=> b!788229 (=> (not res!534103) (not e!438129))))

(declare-fun lt!351687 () SeekEntryResult!8098)

(assert (=> b!788229 (= res!534103 (= lt!351687 lt!351694))))

(declare-fun lt!351686 () array!42813)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42813 (_ BitVec 32)) SeekEntryResult!8098)

(assert (=> b!788229 (= lt!351694 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351692 lt!351686 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!788229 (= lt!351687 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351692 mask!3328) lt!351692 lt!351686 mask!3328))))

(assert (=> b!788229 (= lt!351692 (select (store (arr!20491 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!788229 (= lt!351686 (array!42814 (store (arr!20491 a!3186) i!1173 k0!2102) (size!20912 a!3186)))))

(declare-fun b!788230 () Bool)

(declare-fun lt!351691 () SeekEntryResult!8098)

(assert (=> b!788230 (= e!438127 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20491 a!3186) j!159) a!3186 mask!3328) lt!351691))))

(declare-fun b!788219 () Bool)

(declare-fun res!534104 () Bool)

(assert (=> b!788219 (=> (not res!534104) (not e!438124))))

(assert (=> b!788219 (= res!534104 (= (seekEntryOrOpen!0 lt!351692 lt!351686 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351692 lt!351686 mask!3328)))))

(declare-fun res!534092 () Bool)

(assert (=> start!67818 (=> (not res!534092) (not e!438120))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67818 (= res!534092 (validMask!0 mask!3328))))

(assert (=> start!67818 e!438120))

(assert (=> start!67818 true))

(declare-fun array_inv!16265 (array!42813) Bool)

(assert (=> start!67818 (array_inv!16265 a!3186)))

(declare-fun b!788231 () Bool)

(assert (=> b!788231 (= e!438125 e!438121)))

(declare-fun res!534105 () Bool)

(assert (=> b!788231 (=> (not res!534105) (not e!438121))))

(assert (=> b!788231 (= res!534105 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20491 a!3186) j!159) mask!3328) (select (arr!20491 a!3186) j!159) a!3186 mask!3328) lt!351691))))

(assert (=> b!788231 (= lt!351691 (Intermediate!8098 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!788232 () Bool)

(assert (=> b!788232 (= e!438124 (= lt!351688 lt!351689))))

(assert (= (and start!67818 res!534092) b!788223))

(assert (= (and b!788223 res!534102) b!788222))

(assert (= (and b!788222 res!534096) b!788221))

(assert (= (and b!788221 res!534106) b!788211))

(assert (= (and b!788211 res!534099) b!788216))

(assert (= (and b!788216 res!534109) b!788215))

(assert (= (and b!788215 res!534093) b!788212))

(assert (= (and b!788212 res!534094) b!788225))

(assert (= (and b!788225 res!534098) b!788231))

(assert (= (and b!788231 res!534105) b!788228))

(assert (= (and b!788228 res!534091) b!788217))

(assert (= (and b!788217 c!87467) b!788230))

(assert (= (and b!788217 (not c!87467)) b!788226))

(assert (= (and b!788217 res!534108) b!788229))

(assert (= (and b!788229 res!534103) b!788213))

(assert (= (and b!788213 res!534101) b!788220))

(assert (= (and b!788213 (not res!534097)) b!788218))

(assert (= (and b!788218 (not res!534107)) b!788224))

(assert (= (and b!788224 (not res!534095)) b!788227))

(assert (= (and b!788227 c!87468) b!788210))

(assert (= (and b!788227 (not c!87468)) b!788214))

(assert (= (and b!788227 res!534100) b!788219))

(assert (= (and b!788219 res!534104) b!788232))

(declare-fun m!729649 () Bool)

(assert (=> b!788230 m!729649))

(assert (=> b!788230 m!729649))

(declare-fun m!729651 () Bool)

(assert (=> b!788230 m!729651))

(assert (=> b!788231 m!729649))

(assert (=> b!788231 m!729649))

(declare-fun m!729653 () Bool)

(assert (=> b!788231 m!729653))

(assert (=> b!788231 m!729653))

(assert (=> b!788231 m!729649))

(declare-fun m!729655 () Bool)

(assert (=> b!788231 m!729655))

(declare-fun m!729657 () Bool)

(assert (=> b!788224 m!729657))

(declare-fun m!729659 () Bool)

(assert (=> b!788224 m!729659))

(assert (=> b!788222 m!729649))

(assert (=> b!788222 m!729649))

(declare-fun m!729661 () Bool)

(assert (=> b!788222 m!729661))

(declare-fun m!729663 () Bool)

(assert (=> b!788227 m!729663))

(declare-fun m!729665 () Bool)

(assert (=> b!788216 m!729665))

(assert (=> b!788220 m!729649))

(assert (=> b!788220 m!729649))

(declare-fun m!729667 () Bool)

(assert (=> b!788220 m!729667))

(declare-fun m!729669 () Bool)

(assert (=> b!788229 m!729669))

(declare-fun m!729671 () Bool)

(assert (=> b!788229 m!729671))

(declare-fun m!729673 () Bool)

(assert (=> b!788229 m!729673))

(assert (=> b!788229 m!729671))

(declare-fun m!729675 () Bool)

(assert (=> b!788229 m!729675))

(assert (=> b!788229 m!729657))

(assert (=> b!788218 m!729649))

(assert (=> b!788218 m!729649))

(declare-fun m!729677 () Bool)

(assert (=> b!788218 m!729677))

(declare-fun m!729679 () Bool)

(assert (=> b!788215 m!729679))

(declare-fun m!729681 () Bool)

(assert (=> b!788219 m!729681))

(declare-fun m!729683 () Bool)

(assert (=> b!788219 m!729683))

(assert (=> b!788226 m!729649))

(assert (=> b!788226 m!729649))

(assert (=> b!788226 m!729677))

(declare-fun m!729685 () Bool)

(assert (=> b!788211 m!729685))

(declare-fun m!729687 () Bool)

(assert (=> b!788221 m!729687))

(declare-fun m!729689 () Bool)

(assert (=> start!67818 m!729689))

(declare-fun m!729691 () Bool)

(assert (=> start!67818 m!729691))

(assert (=> b!788213 m!729649))

(assert (=> b!788213 m!729649))

(declare-fun m!729693 () Bool)

(assert (=> b!788213 m!729693))

(declare-fun m!729695 () Bool)

(assert (=> b!788213 m!729695))

(declare-fun m!729697 () Bool)

(assert (=> b!788213 m!729697))

(declare-fun m!729699 () Bool)

(assert (=> b!788212 m!729699))

(declare-fun m!729701 () Bool)

(assert (=> b!788228 m!729701))

(check-sat (not b!788219) (not b!788215) (not b!788229) (not b!788211) (not b!788231) (not b!788221) (not b!788226) (not b!788213) (not b!788220) (not start!67818) (not b!788218) (not b!788212) (not b!788222) (not b!788216) (not b!788230))
(check-sat)
(get-model)

(declare-fun b!788310 () Bool)

(declare-fun e!438173 () Bool)

(declare-fun e!438174 () Bool)

(assert (=> b!788310 (= e!438173 e!438174)))

(declare-fun lt!351741 () (_ BitVec 64))

(assert (=> b!788310 (= lt!351741 (select (arr!20491 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!351742 () Unit!27302)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42813 (_ BitVec 64) (_ BitVec 32)) Unit!27302)

(assert (=> b!788310 (= lt!351742 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!351741 #b00000000000000000000000000000000))))

(assert (=> b!788310 (arrayContainsKey!0 a!3186 lt!351741 #b00000000000000000000000000000000)))

(declare-fun lt!351740 () Unit!27302)

(assert (=> b!788310 (= lt!351740 lt!351742)))

(declare-fun res!534171 () Bool)

(assert (=> b!788310 (= res!534171 (= (seekEntryOrOpen!0 (select (arr!20491 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!8098 #b00000000000000000000000000000000)))))

(assert (=> b!788310 (=> (not res!534171) (not e!438174))))

(declare-fun b!788311 () Bool)

(declare-fun e!438175 () Bool)

(assert (=> b!788311 (= e!438175 e!438173)))

(declare-fun c!87477 () Bool)

(assert (=> b!788311 (= c!87477 (validKeyInArray!0 (select (arr!20491 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!788312 () Bool)

(declare-fun call!35280 () Bool)

(assert (=> b!788312 (= e!438174 call!35280)))

(declare-fun bm!35277 () Bool)

(assert (=> bm!35277 (= call!35280 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!102741 () Bool)

(declare-fun res!534172 () Bool)

(assert (=> d!102741 (=> res!534172 e!438175)))

(assert (=> d!102741 (= res!534172 (bvsge #b00000000000000000000000000000000 (size!20912 a!3186)))))

(assert (=> d!102741 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!438175)))

(declare-fun b!788313 () Bool)

(assert (=> b!788313 (= e!438173 call!35280)))

(assert (= (and d!102741 (not res!534172)) b!788311))

(assert (= (and b!788311 c!87477) b!788310))

(assert (= (and b!788311 (not c!87477)) b!788313))

(assert (= (and b!788310 res!534171) b!788312))

(assert (= (or b!788312 b!788313) bm!35277))

(declare-fun m!729757 () Bool)

(assert (=> b!788310 m!729757))

(declare-fun m!729759 () Bool)

(assert (=> b!788310 m!729759))

(declare-fun m!729761 () Bool)

(assert (=> b!788310 m!729761))

(assert (=> b!788310 m!729757))

(declare-fun m!729763 () Bool)

(assert (=> b!788310 m!729763))

(assert (=> b!788311 m!729757))

(assert (=> b!788311 m!729757))

(declare-fun m!729765 () Bool)

(assert (=> b!788311 m!729765))

(declare-fun m!729767 () Bool)

(assert (=> bm!35277 m!729767))

(assert (=> b!788215 d!102741))

(declare-fun e!438183 () SeekEntryResult!8098)

(declare-fun b!788326 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!788326 (= e!438183 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20491 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788327 () Bool)

(declare-fun e!438182 () SeekEntryResult!8098)

(assert (=> b!788327 (= e!438182 Undefined!8098)))

(declare-fun b!788328 () Bool)

(declare-fun c!87485 () Bool)

(declare-fun lt!351747 () (_ BitVec 64))

(assert (=> b!788328 (= c!87485 (= lt!351747 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438184 () SeekEntryResult!8098)

(assert (=> b!788328 (= e!438184 e!438183)))

(declare-fun b!788329 () Bool)

(assert (=> b!788329 (= e!438184 (Found!8098 index!1321))))

(declare-fun lt!351748 () SeekEntryResult!8098)

(declare-fun d!102743 () Bool)

(assert (=> d!102743 (and (or ((_ is Undefined!8098) lt!351748) (not ((_ is Found!8098) lt!351748)) (and (bvsge (index!34760 lt!351748) #b00000000000000000000000000000000) (bvslt (index!34760 lt!351748) (size!20912 a!3186)))) (or ((_ is Undefined!8098) lt!351748) ((_ is Found!8098) lt!351748) (not ((_ is MissingVacant!8098) lt!351748)) (not (= (index!34762 lt!351748) resIntermediateIndex!5)) (and (bvsge (index!34762 lt!351748) #b00000000000000000000000000000000) (bvslt (index!34762 lt!351748) (size!20912 a!3186)))) (or ((_ is Undefined!8098) lt!351748) (ite ((_ is Found!8098) lt!351748) (= (select (arr!20491 a!3186) (index!34760 lt!351748)) (select (arr!20491 a!3186) j!159)) (and ((_ is MissingVacant!8098) lt!351748) (= (index!34762 lt!351748) resIntermediateIndex!5) (= (select (arr!20491 a!3186) (index!34762 lt!351748)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102743 (= lt!351748 e!438182)))

(declare-fun c!87486 () Bool)

(assert (=> d!102743 (= c!87486 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102743 (= lt!351747 (select (arr!20491 a!3186) index!1321))))

(assert (=> d!102743 (validMask!0 mask!3328)))

(assert (=> d!102743 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20491 a!3186) j!159) a!3186 mask!3328) lt!351748)))

(declare-fun b!788330 () Bool)

(assert (=> b!788330 (= e!438182 e!438184)))

(declare-fun c!87484 () Bool)

(assert (=> b!788330 (= c!87484 (= lt!351747 (select (arr!20491 a!3186) j!159)))))

(declare-fun b!788331 () Bool)

(assert (=> b!788331 (= e!438183 (MissingVacant!8098 resIntermediateIndex!5))))

(assert (= (and d!102743 c!87486) b!788327))

(assert (= (and d!102743 (not c!87486)) b!788330))

(assert (= (and b!788330 c!87484) b!788329))

(assert (= (and b!788330 (not c!87484)) b!788328))

(assert (= (and b!788328 c!87485) b!788331))

(assert (= (and b!788328 (not c!87485)) b!788326))

(declare-fun m!729769 () Bool)

(assert (=> b!788326 m!729769))

(assert (=> b!788326 m!729769))

(assert (=> b!788326 m!729649))

(declare-fun m!729771 () Bool)

(assert (=> b!788326 m!729771))

(declare-fun m!729773 () Bool)

(assert (=> d!102743 m!729773))

(declare-fun m!729775 () Bool)

(assert (=> d!102743 m!729775))

(assert (=> d!102743 m!729663))

(assert (=> d!102743 m!729689))

(assert (=> b!788226 d!102743))

(declare-fun d!102745 () Bool)

(declare-fun res!534177 () Bool)

(declare-fun e!438189 () Bool)

(assert (=> d!102745 (=> res!534177 e!438189)))

(assert (=> d!102745 (= res!534177 (= (select (arr!20491 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!102745 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!438189)))

(declare-fun b!788336 () Bool)

(declare-fun e!438190 () Bool)

(assert (=> b!788336 (= e!438189 e!438190)))

(declare-fun res!534178 () Bool)

(assert (=> b!788336 (=> (not res!534178) (not e!438190))))

(assert (=> b!788336 (= res!534178 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20912 a!3186)))))

(declare-fun b!788337 () Bool)

(assert (=> b!788337 (= e!438190 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102745 (not res!534177)) b!788336))

(assert (= (and b!788336 res!534178) b!788337))

(assert (=> d!102745 m!729757))

(declare-fun m!729777 () Bool)

(assert (=> b!788337 m!729777))

(assert (=> b!788211 d!102745))

(declare-fun d!102747 () Bool)

(assert (=> d!102747 (= (validKeyInArray!0 (select (arr!20491 a!3186) j!159)) (and (not (= (select (arr!20491 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20491 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!788222 d!102747))

(declare-fun b!788348 () Bool)

(declare-fun e!438199 () Bool)

(declare-fun call!35283 () Bool)

(assert (=> b!788348 (= e!438199 call!35283)))

(declare-fun b!788349 () Bool)

(assert (=> b!788349 (= e!438199 call!35283)))

(declare-fun b!788350 () Bool)

(declare-fun e!438202 () Bool)

(assert (=> b!788350 (= e!438202 e!438199)))

(declare-fun c!87489 () Bool)

(assert (=> b!788350 (= c!87489 (validKeyInArray!0 (select (arr!20491 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35280 () Bool)

(assert (=> bm!35280 (= call!35283 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!87489 (Cons!14542 (select (arr!20491 a!3186) #b00000000000000000000000000000000) Nil!14543) Nil!14543)))))

(declare-fun b!788351 () Bool)

(declare-fun e!438200 () Bool)

(declare-fun contains!4111 (List!14546 (_ BitVec 64)) Bool)

(assert (=> b!788351 (= e!438200 (contains!4111 Nil!14543 (select (arr!20491 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!788352 () Bool)

(declare-fun e!438201 () Bool)

(assert (=> b!788352 (= e!438201 e!438202)))

(declare-fun res!534187 () Bool)

(assert (=> b!788352 (=> (not res!534187) (not e!438202))))

(assert (=> b!788352 (= res!534187 (not e!438200))))

(declare-fun res!534186 () Bool)

(assert (=> b!788352 (=> (not res!534186) (not e!438200))))

(assert (=> b!788352 (= res!534186 (validKeyInArray!0 (select (arr!20491 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!102749 () Bool)

(declare-fun res!534185 () Bool)

(assert (=> d!102749 (=> res!534185 e!438201)))

(assert (=> d!102749 (= res!534185 (bvsge #b00000000000000000000000000000000 (size!20912 a!3186)))))

(assert (=> d!102749 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14543) e!438201)))

(assert (= (and d!102749 (not res!534185)) b!788352))

(assert (= (and b!788352 res!534186) b!788351))

(assert (= (and b!788352 res!534187) b!788350))

(assert (= (and b!788350 c!87489) b!788348))

(assert (= (and b!788350 (not c!87489)) b!788349))

(assert (= (or b!788348 b!788349) bm!35280))

(assert (=> b!788350 m!729757))

(assert (=> b!788350 m!729757))

(assert (=> b!788350 m!729765))

(assert (=> bm!35280 m!729757))

(declare-fun m!729779 () Bool)

(assert (=> bm!35280 m!729779))

(assert (=> b!788351 m!729757))

(assert (=> b!788351 m!729757))

(declare-fun m!729781 () Bool)

(assert (=> b!788351 m!729781))

(assert (=> b!788352 m!729757))

(assert (=> b!788352 m!729757))

(assert (=> b!788352 m!729765))

(assert (=> b!788212 d!102749))

(declare-fun b!788383 () Bool)

(declare-fun e!438219 () SeekEntryResult!8098)

(declare-fun lt!351765 () SeekEntryResult!8098)

(assert (=> b!788383 (= e!438219 (Found!8098 (index!34761 lt!351765)))))

(declare-fun b!788384 () Bool)

(declare-fun c!87506 () Bool)

(declare-fun lt!351766 () (_ BitVec 64))

(assert (=> b!788384 (= c!87506 (= lt!351766 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438218 () SeekEntryResult!8098)

(assert (=> b!788384 (= e!438219 e!438218)))

(declare-fun b!788385 () Bool)

(declare-fun e!438220 () SeekEntryResult!8098)

(assert (=> b!788385 (= e!438220 e!438219)))

(assert (=> b!788385 (= lt!351766 (select (arr!20491 a!3186) (index!34761 lt!351765)))))

(declare-fun c!87505 () Bool)

(assert (=> b!788385 (= c!87505 (= lt!351766 (select (arr!20491 a!3186) j!159)))))

(declare-fun b!788386 () Bool)

(assert (=> b!788386 (= e!438218 (MissingZero!8098 (index!34761 lt!351765)))))

(declare-fun b!788387 () Bool)

(assert (=> b!788387 (= e!438218 (seekKeyOrZeroReturnVacant!0 (x!65719 lt!351765) (index!34761 lt!351765) (index!34761 lt!351765) (select (arr!20491 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788388 () Bool)

(assert (=> b!788388 (= e!438220 Undefined!8098)))

(declare-fun d!102753 () Bool)

(declare-fun lt!351764 () SeekEntryResult!8098)

(assert (=> d!102753 (and (or ((_ is Undefined!8098) lt!351764) (not ((_ is Found!8098) lt!351764)) (and (bvsge (index!34760 lt!351764) #b00000000000000000000000000000000) (bvslt (index!34760 lt!351764) (size!20912 a!3186)))) (or ((_ is Undefined!8098) lt!351764) ((_ is Found!8098) lt!351764) (not ((_ is MissingZero!8098) lt!351764)) (and (bvsge (index!34759 lt!351764) #b00000000000000000000000000000000) (bvslt (index!34759 lt!351764) (size!20912 a!3186)))) (or ((_ is Undefined!8098) lt!351764) ((_ is Found!8098) lt!351764) ((_ is MissingZero!8098) lt!351764) (not ((_ is MissingVacant!8098) lt!351764)) (and (bvsge (index!34762 lt!351764) #b00000000000000000000000000000000) (bvslt (index!34762 lt!351764) (size!20912 a!3186)))) (or ((_ is Undefined!8098) lt!351764) (ite ((_ is Found!8098) lt!351764) (= (select (arr!20491 a!3186) (index!34760 lt!351764)) (select (arr!20491 a!3186) j!159)) (ite ((_ is MissingZero!8098) lt!351764) (= (select (arr!20491 a!3186) (index!34759 lt!351764)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8098) lt!351764) (= (select (arr!20491 a!3186) (index!34762 lt!351764)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102753 (= lt!351764 e!438220)))

(declare-fun c!87507 () Bool)

(assert (=> d!102753 (= c!87507 (and ((_ is Intermediate!8098) lt!351765) (undefined!8910 lt!351765)))))

(assert (=> d!102753 (= lt!351765 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20491 a!3186) j!159) mask!3328) (select (arr!20491 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102753 (validMask!0 mask!3328)))

(assert (=> d!102753 (= (seekEntryOrOpen!0 (select (arr!20491 a!3186) j!159) a!3186 mask!3328) lt!351764)))

(assert (= (and d!102753 c!87507) b!788388))

(assert (= (and d!102753 (not c!87507)) b!788385))

(assert (= (and b!788385 c!87505) b!788383))

(assert (= (and b!788385 (not c!87505)) b!788384))

(assert (= (and b!788384 c!87506) b!788386))

(assert (= (and b!788384 (not c!87506)) b!788387))

(declare-fun m!729793 () Bool)

(assert (=> b!788385 m!729793))

(assert (=> b!788387 m!729649))

(declare-fun m!729795 () Bool)

(assert (=> b!788387 m!729795))

(assert (=> d!102753 m!729649))

(assert (=> d!102753 m!729653))

(assert (=> d!102753 m!729653))

(assert (=> d!102753 m!729649))

(assert (=> d!102753 m!729655))

(declare-fun m!729797 () Bool)

(assert (=> d!102753 m!729797))

(declare-fun m!729799 () Bool)

(assert (=> d!102753 m!729799))

(declare-fun m!729801 () Bool)

(assert (=> d!102753 m!729801))

(assert (=> d!102753 m!729689))

(assert (=> b!788213 d!102753))

(declare-fun b!788389 () Bool)

(declare-fun e!438221 () Bool)

(declare-fun e!438222 () Bool)

(assert (=> b!788389 (= e!438221 e!438222)))

(declare-fun lt!351768 () (_ BitVec 64))

(assert (=> b!788389 (= lt!351768 (select (arr!20491 a!3186) j!159))))

(declare-fun lt!351769 () Unit!27302)

(assert (=> b!788389 (= lt!351769 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!351768 j!159))))

(assert (=> b!788389 (arrayContainsKey!0 a!3186 lt!351768 #b00000000000000000000000000000000)))

(declare-fun lt!351767 () Unit!27302)

(assert (=> b!788389 (= lt!351767 lt!351769)))

(declare-fun res!534188 () Bool)

(assert (=> b!788389 (= res!534188 (= (seekEntryOrOpen!0 (select (arr!20491 a!3186) j!159) a!3186 mask!3328) (Found!8098 j!159)))))

(assert (=> b!788389 (=> (not res!534188) (not e!438222))))

(declare-fun b!788390 () Bool)

(declare-fun e!438223 () Bool)

(assert (=> b!788390 (= e!438223 e!438221)))

(declare-fun c!87508 () Bool)

(assert (=> b!788390 (= c!87508 (validKeyInArray!0 (select (arr!20491 a!3186) j!159)))))

(declare-fun b!788391 () Bool)

(declare-fun call!35284 () Bool)

(assert (=> b!788391 (= e!438222 call!35284)))

(declare-fun bm!35281 () Bool)

(assert (=> bm!35281 (= call!35284 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!102759 () Bool)

(declare-fun res!534189 () Bool)

(assert (=> d!102759 (=> res!534189 e!438223)))

(assert (=> d!102759 (= res!534189 (bvsge j!159 (size!20912 a!3186)))))

(assert (=> d!102759 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!438223)))

(declare-fun b!788392 () Bool)

(assert (=> b!788392 (= e!438221 call!35284)))

(assert (= (and d!102759 (not res!534189)) b!788390))

(assert (= (and b!788390 c!87508) b!788389))

(assert (= (and b!788390 (not c!87508)) b!788392))

(assert (= (and b!788389 res!534188) b!788391))

(assert (= (or b!788391 b!788392) bm!35281))

(assert (=> b!788389 m!729649))

(declare-fun m!729803 () Bool)

(assert (=> b!788389 m!729803))

(declare-fun m!729805 () Bool)

(assert (=> b!788389 m!729805))

(assert (=> b!788389 m!729649))

(assert (=> b!788389 m!729693))

(assert (=> b!788390 m!729649))

(assert (=> b!788390 m!729649))

(assert (=> b!788390 m!729661))

(declare-fun m!729807 () Bool)

(assert (=> bm!35281 m!729807))

(assert (=> b!788213 d!102759))

(declare-fun d!102761 () Bool)

(assert (=> d!102761 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351778 () Unit!27302)

(declare-fun choose!38 (array!42813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27302)

(assert (=> d!102761 (= lt!351778 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102761 (validMask!0 mask!3328)))

(assert (=> d!102761 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!351778)))

(declare-fun bs!21826 () Bool)

(assert (= bs!21826 d!102761))

(assert (=> bs!21826 m!729695))

(declare-fun m!729809 () Bool)

(assert (=> bs!21826 m!729809))

(assert (=> bs!21826 m!729689))

(assert (=> b!788213 d!102761))

(declare-fun b!788401 () Bool)

(declare-fun e!438231 () SeekEntryResult!8098)

(declare-fun lt!351780 () SeekEntryResult!8098)

(assert (=> b!788401 (= e!438231 (Found!8098 (index!34761 lt!351780)))))

(declare-fun b!788402 () Bool)

(declare-fun c!87512 () Bool)

(declare-fun lt!351781 () (_ BitVec 64))

(assert (=> b!788402 (= c!87512 (= lt!351781 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438230 () SeekEntryResult!8098)

(assert (=> b!788402 (= e!438231 e!438230)))

(declare-fun b!788403 () Bool)

(declare-fun e!438232 () SeekEntryResult!8098)

(assert (=> b!788403 (= e!438232 e!438231)))

(assert (=> b!788403 (= lt!351781 (select (arr!20491 lt!351686) (index!34761 lt!351780)))))

(declare-fun c!87511 () Bool)

(assert (=> b!788403 (= c!87511 (= lt!351781 lt!351692))))

(declare-fun b!788404 () Bool)

(assert (=> b!788404 (= e!438230 (MissingZero!8098 (index!34761 lt!351780)))))

(declare-fun b!788405 () Bool)

(assert (=> b!788405 (= e!438230 (seekKeyOrZeroReturnVacant!0 (x!65719 lt!351780) (index!34761 lt!351780) (index!34761 lt!351780) lt!351692 lt!351686 mask!3328))))

(declare-fun b!788406 () Bool)

(assert (=> b!788406 (= e!438232 Undefined!8098)))

(declare-fun d!102763 () Bool)

(declare-fun lt!351779 () SeekEntryResult!8098)

(assert (=> d!102763 (and (or ((_ is Undefined!8098) lt!351779) (not ((_ is Found!8098) lt!351779)) (and (bvsge (index!34760 lt!351779) #b00000000000000000000000000000000) (bvslt (index!34760 lt!351779) (size!20912 lt!351686)))) (or ((_ is Undefined!8098) lt!351779) ((_ is Found!8098) lt!351779) (not ((_ is MissingZero!8098) lt!351779)) (and (bvsge (index!34759 lt!351779) #b00000000000000000000000000000000) (bvslt (index!34759 lt!351779) (size!20912 lt!351686)))) (or ((_ is Undefined!8098) lt!351779) ((_ is Found!8098) lt!351779) ((_ is MissingZero!8098) lt!351779) (not ((_ is MissingVacant!8098) lt!351779)) (and (bvsge (index!34762 lt!351779) #b00000000000000000000000000000000) (bvslt (index!34762 lt!351779) (size!20912 lt!351686)))) (or ((_ is Undefined!8098) lt!351779) (ite ((_ is Found!8098) lt!351779) (= (select (arr!20491 lt!351686) (index!34760 lt!351779)) lt!351692) (ite ((_ is MissingZero!8098) lt!351779) (= (select (arr!20491 lt!351686) (index!34759 lt!351779)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8098) lt!351779) (= (select (arr!20491 lt!351686) (index!34762 lt!351779)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102763 (= lt!351779 e!438232)))

(declare-fun c!87513 () Bool)

(assert (=> d!102763 (= c!87513 (and ((_ is Intermediate!8098) lt!351780) (undefined!8910 lt!351780)))))

(assert (=> d!102763 (= lt!351780 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351692 mask!3328) lt!351692 lt!351686 mask!3328))))

(assert (=> d!102763 (validMask!0 mask!3328)))

(assert (=> d!102763 (= (seekEntryOrOpen!0 lt!351692 lt!351686 mask!3328) lt!351779)))

(assert (= (and d!102763 c!87513) b!788406))

(assert (= (and d!102763 (not c!87513)) b!788403))

(assert (= (and b!788403 c!87511) b!788401))

(assert (= (and b!788403 (not c!87511)) b!788402))

(assert (= (and b!788402 c!87512) b!788404))

(assert (= (and b!788402 (not c!87512)) b!788405))

(declare-fun m!729811 () Bool)

(assert (=> b!788403 m!729811))

(declare-fun m!729813 () Bool)

(assert (=> b!788405 m!729813))

(assert (=> d!102763 m!729671))

(assert (=> d!102763 m!729671))

(assert (=> d!102763 m!729675))

(declare-fun m!729815 () Bool)

(assert (=> d!102763 m!729815))

(declare-fun m!729817 () Bool)

(assert (=> d!102763 m!729817))

(declare-fun m!729819 () Bool)

(assert (=> d!102763 m!729819))

(assert (=> d!102763 m!729689))

(assert (=> b!788219 d!102763))

(declare-fun e!438234 () SeekEntryResult!8098)

(declare-fun b!788407 () Bool)

(assert (=> b!788407 (= e!438234 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) index!1321 lt!351692 lt!351686 mask!3328))))

(declare-fun b!788408 () Bool)

(declare-fun e!438233 () SeekEntryResult!8098)

(assert (=> b!788408 (= e!438233 Undefined!8098)))

(declare-fun b!788409 () Bool)

(declare-fun c!87515 () Bool)

(declare-fun lt!351782 () (_ BitVec 64))

(assert (=> b!788409 (= c!87515 (= lt!351782 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438235 () SeekEntryResult!8098)

(assert (=> b!788409 (= e!438235 e!438234)))

(declare-fun b!788410 () Bool)

(assert (=> b!788410 (= e!438235 (Found!8098 index!1321))))

(declare-fun d!102765 () Bool)

(declare-fun lt!351783 () SeekEntryResult!8098)

(assert (=> d!102765 (and (or ((_ is Undefined!8098) lt!351783) (not ((_ is Found!8098) lt!351783)) (and (bvsge (index!34760 lt!351783) #b00000000000000000000000000000000) (bvslt (index!34760 lt!351783) (size!20912 lt!351686)))) (or ((_ is Undefined!8098) lt!351783) ((_ is Found!8098) lt!351783) (not ((_ is MissingVacant!8098) lt!351783)) (not (= (index!34762 lt!351783) index!1321)) (and (bvsge (index!34762 lt!351783) #b00000000000000000000000000000000) (bvslt (index!34762 lt!351783) (size!20912 lt!351686)))) (or ((_ is Undefined!8098) lt!351783) (ite ((_ is Found!8098) lt!351783) (= (select (arr!20491 lt!351686) (index!34760 lt!351783)) lt!351692) (and ((_ is MissingVacant!8098) lt!351783) (= (index!34762 lt!351783) index!1321) (= (select (arr!20491 lt!351686) (index!34762 lt!351783)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102765 (= lt!351783 e!438233)))

(declare-fun c!87516 () Bool)

(assert (=> d!102765 (= c!87516 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102765 (= lt!351782 (select (arr!20491 lt!351686) index!1321))))

(assert (=> d!102765 (validMask!0 mask!3328)))

(assert (=> d!102765 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351692 lt!351686 mask!3328) lt!351783)))

(declare-fun b!788411 () Bool)

(assert (=> b!788411 (= e!438233 e!438235)))

(declare-fun c!87514 () Bool)

(assert (=> b!788411 (= c!87514 (= lt!351782 lt!351692))))

(declare-fun b!788412 () Bool)

(assert (=> b!788412 (= e!438234 (MissingVacant!8098 index!1321))))

(assert (= (and d!102765 c!87516) b!788408))

(assert (= (and d!102765 (not c!87516)) b!788411))

(assert (= (and b!788411 c!87514) b!788410))

(assert (= (and b!788411 (not c!87514)) b!788409))

(assert (= (and b!788409 c!87515) b!788412))

(assert (= (and b!788409 (not c!87515)) b!788407))

(assert (=> b!788407 m!729769))

(assert (=> b!788407 m!729769))

(declare-fun m!729821 () Bool)

(assert (=> b!788407 m!729821))

(declare-fun m!729823 () Bool)

(assert (=> d!102765 m!729823))

(declare-fun m!729825 () Bool)

(assert (=> d!102765 m!729825))

(declare-fun m!729827 () Bool)

(assert (=> d!102765 m!729827))

(assert (=> d!102765 m!729689))

(assert (=> b!788219 d!102765))

(declare-fun b!788462 () Bool)

(declare-fun e!438266 () Bool)

(declare-fun lt!351806 () SeekEntryResult!8098)

(assert (=> b!788462 (= e!438266 (bvsge (x!65719 lt!351806) #b01111111111111111111111111111110))))

(declare-fun b!788463 () Bool)

(declare-fun e!438265 () SeekEntryResult!8098)

(assert (=> b!788463 (= e!438265 (Intermediate!8098 false index!1321 x!1131))))

(declare-fun b!788464 () Bool)

(assert (=> b!788464 (= e!438265 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20491 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788465 () Bool)

(assert (=> b!788465 (and (bvsge (index!34761 lt!351806) #b00000000000000000000000000000000) (bvslt (index!34761 lt!351806) (size!20912 a!3186)))))

(declare-fun res!534214 () Bool)

(assert (=> b!788465 (= res!534214 (= (select (arr!20491 a!3186) (index!34761 lt!351806)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438264 () Bool)

(assert (=> b!788465 (=> res!534214 e!438264)))

(declare-fun b!788466 () Bool)

(declare-fun e!438268 () SeekEntryResult!8098)

(assert (=> b!788466 (= e!438268 e!438265)))

(declare-fun lt!351807 () (_ BitVec 64))

(declare-fun c!87534 () Bool)

(assert (=> b!788466 (= c!87534 (or (= lt!351807 (select (arr!20491 a!3186) j!159)) (= (bvadd lt!351807 lt!351807) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788467 () Bool)

(assert (=> b!788467 (and (bvsge (index!34761 lt!351806) #b00000000000000000000000000000000) (bvslt (index!34761 lt!351806) (size!20912 a!3186)))))

(assert (=> b!788467 (= e!438264 (= (select (arr!20491 a!3186) (index!34761 lt!351806)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788468 () Bool)

(declare-fun e!438267 () Bool)

(assert (=> b!788468 (= e!438266 e!438267)))

(declare-fun res!534212 () Bool)

(assert (=> b!788468 (= res!534212 (and ((_ is Intermediate!8098) lt!351806) (not (undefined!8910 lt!351806)) (bvslt (x!65719 lt!351806) #b01111111111111111111111111111110) (bvsge (x!65719 lt!351806) #b00000000000000000000000000000000) (bvsge (x!65719 lt!351806) x!1131)))))

(assert (=> b!788468 (=> (not res!534212) (not e!438267))))

(declare-fun b!788470 () Bool)

(assert (=> b!788470 (= e!438268 (Intermediate!8098 true index!1321 x!1131))))

(declare-fun d!102767 () Bool)

(assert (=> d!102767 e!438266))

(declare-fun c!87535 () Bool)

(assert (=> d!102767 (= c!87535 (and ((_ is Intermediate!8098) lt!351806) (undefined!8910 lt!351806)))))

(assert (=> d!102767 (= lt!351806 e!438268)))

(declare-fun c!87533 () Bool)

(assert (=> d!102767 (= c!87533 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102767 (= lt!351807 (select (arr!20491 a!3186) index!1321))))

(assert (=> d!102767 (validMask!0 mask!3328)))

(assert (=> d!102767 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20491 a!3186) j!159) a!3186 mask!3328) lt!351806)))

(declare-fun b!788469 () Bool)

(assert (=> b!788469 (and (bvsge (index!34761 lt!351806) #b00000000000000000000000000000000) (bvslt (index!34761 lt!351806) (size!20912 a!3186)))))

(declare-fun res!534213 () Bool)

(assert (=> b!788469 (= res!534213 (= (select (arr!20491 a!3186) (index!34761 lt!351806)) (select (arr!20491 a!3186) j!159)))))

(assert (=> b!788469 (=> res!534213 e!438264)))

(assert (=> b!788469 (= e!438267 e!438264)))

(assert (= (and d!102767 c!87533) b!788470))

(assert (= (and d!102767 (not c!87533)) b!788466))

(assert (= (and b!788466 c!87534) b!788463))

(assert (= (and b!788466 (not c!87534)) b!788464))

(assert (= (and d!102767 c!87535) b!788462))

(assert (= (and d!102767 (not c!87535)) b!788468))

(assert (= (and b!788468 res!534212) b!788469))

(assert (= (and b!788469 (not res!534213)) b!788465))

(assert (= (and b!788465 (not res!534214)) b!788467))

(assert (=> d!102767 m!729663))

(assert (=> d!102767 m!729689))

(declare-fun m!729845 () Bool)

(assert (=> b!788467 m!729845))

(assert (=> b!788465 m!729845))

(assert (=> b!788464 m!729769))

(assert (=> b!788464 m!729769))

(assert (=> b!788464 m!729649))

(declare-fun m!729847 () Bool)

(assert (=> b!788464 m!729847))

(assert (=> b!788469 m!729845))

(assert (=> b!788230 d!102767))

(declare-fun e!438270 () SeekEntryResult!8098)

(declare-fun b!788471 () Bool)

(assert (=> b!788471 (= e!438270 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20491 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788472 () Bool)

(declare-fun e!438269 () SeekEntryResult!8098)

(assert (=> b!788472 (= e!438269 Undefined!8098)))

(declare-fun b!788473 () Bool)

(declare-fun c!87537 () Bool)

(declare-fun lt!351808 () (_ BitVec 64))

(assert (=> b!788473 (= c!87537 (= lt!351808 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438271 () SeekEntryResult!8098)

(assert (=> b!788473 (= e!438271 e!438270)))

(declare-fun b!788474 () Bool)

(assert (=> b!788474 (= e!438271 (Found!8098 resIntermediateIndex!5))))

(declare-fun lt!351809 () SeekEntryResult!8098)

(declare-fun d!102779 () Bool)

(assert (=> d!102779 (and (or ((_ is Undefined!8098) lt!351809) (not ((_ is Found!8098) lt!351809)) (and (bvsge (index!34760 lt!351809) #b00000000000000000000000000000000) (bvslt (index!34760 lt!351809) (size!20912 a!3186)))) (or ((_ is Undefined!8098) lt!351809) ((_ is Found!8098) lt!351809) (not ((_ is MissingVacant!8098) lt!351809)) (not (= (index!34762 lt!351809) resIntermediateIndex!5)) (and (bvsge (index!34762 lt!351809) #b00000000000000000000000000000000) (bvslt (index!34762 lt!351809) (size!20912 a!3186)))) (or ((_ is Undefined!8098) lt!351809) (ite ((_ is Found!8098) lt!351809) (= (select (arr!20491 a!3186) (index!34760 lt!351809)) (select (arr!20491 a!3186) j!159)) (and ((_ is MissingVacant!8098) lt!351809) (= (index!34762 lt!351809) resIntermediateIndex!5) (= (select (arr!20491 a!3186) (index!34762 lt!351809)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102779 (= lt!351809 e!438269)))

(declare-fun c!87538 () Bool)

(assert (=> d!102779 (= c!87538 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!102779 (= lt!351808 (select (arr!20491 a!3186) resIntermediateIndex!5))))

(assert (=> d!102779 (validMask!0 mask!3328)))

(assert (=> d!102779 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20491 a!3186) j!159) a!3186 mask!3328) lt!351809)))

(declare-fun b!788475 () Bool)

(assert (=> b!788475 (= e!438269 e!438271)))

(declare-fun c!87536 () Bool)

(assert (=> b!788475 (= c!87536 (= lt!351808 (select (arr!20491 a!3186) j!159)))))

(declare-fun b!788476 () Bool)

(assert (=> b!788476 (= e!438270 (MissingVacant!8098 resIntermediateIndex!5))))

(assert (= (and d!102779 c!87538) b!788472))

(assert (= (and d!102779 (not c!87538)) b!788475))

(assert (= (and b!788475 c!87536) b!788474))

(assert (= (and b!788475 (not c!87536)) b!788473))

(assert (= (and b!788473 c!87537) b!788476))

(assert (= (and b!788473 (not c!87537)) b!788471))

(declare-fun m!729849 () Bool)

(assert (=> b!788471 m!729849))

(assert (=> b!788471 m!729849))

(assert (=> b!788471 m!729649))

(declare-fun m!729851 () Bool)

(assert (=> b!788471 m!729851))

(declare-fun m!729853 () Bool)

(assert (=> d!102779 m!729853))

(declare-fun m!729855 () Bool)

(assert (=> d!102779 m!729855))

(assert (=> d!102779 m!729701))

(assert (=> d!102779 m!729689))

(assert (=> b!788220 d!102779))

(declare-fun d!102781 () Bool)

(assert (=> d!102781 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67818 d!102781))

(declare-fun d!102785 () Bool)

(assert (=> d!102785 (= (array_inv!16265 a!3186) (bvsge (size!20912 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67818 d!102785))

(declare-fun b!788522 () Bool)

(declare-fun e!438298 () Bool)

(declare-fun lt!351826 () SeekEntryResult!8098)

(assert (=> b!788522 (= e!438298 (bvsge (x!65719 lt!351826) #b01111111111111111111111111111110))))

(declare-fun b!788523 () Bool)

(declare-fun e!438297 () SeekEntryResult!8098)

(assert (=> b!788523 (= e!438297 (Intermediate!8098 false (toIndex!0 (select (arr!20491 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!788524 () Bool)

(assert (=> b!788524 (= e!438297 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20491 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20491 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788525 () Bool)

(assert (=> b!788525 (and (bvsge (index!34761 lt!351826) #b00000000000000000000000000000000) (bvslt (index!34761 lt!351826) (size!20912 a!3186)))))

(declare-fun res!534227 () Bool)

(assert (=> b!788525 (= res!534227 (= (select (arr!20491 a!3186) (index!34761 lt!351826)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438296 () Bool)

(assert (=> b!788525 (=> res!534227 e!438296)))

(declare-fun b!788526 () Bool)

(declare-fun e!438300 () SeekEntryResult!8098)

(assert (=> b!788526 (= e!438300 e!438297)))

(declare-fun c!87558 () Bool)

(declare-fun lt!351827 () (_ BitVec 64))

(assert (=> b!788526 (= c!87558 (or (= lt!351827 (select (arr!20491 a!3186) j!159)) (= (bvadd lt!351827 lt!351827) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788527 () Bool)

(assert (=> b!788527 (and (bvsge (index!34761 lt!351826) #b00000000000000000000000000000000) (bvslt (index!34761 lt!351826) (size!20912 a!3186)))))

(assert (=> b!788527 (= e!438296 (= (select (arr!20491 a!3186) (index!34761 lt!351826)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788528 () Bool)

(declare-fun e!438299 () Bool)

(assert (=> b!788528 (= e!438298 e!438299)))

(declare-fun res!534225 () Bool)

(assert (=> b!788528 (= res!534225 (and ((_ is Intermediate!8098) lt!351826) (not (undefined!8910 lt!351826)) (bvslt (x!65719 lt!351826) #b01111111111111111111111111111110) (bvsge (x!65719 lt!351826) #b00000000000000000000000000000000) (bvsge (x!65719 lt!351826) #b00000000000000000000000000000000)))))

(assert (=> b!788528 (=> (not res!534225) (not e!438299))))

(declare-fun b!788530 () Bool)

(assert (=> b!788530 (= e!438300 (Intermediate!8098 true (toIndex!0 (select (arr!20491 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!102787 () Bool)

(assert (=> d!102787 e!438298))

(declare-fun c!87559 () Bool)

(assert (=> d!102787 (= c!87559 (and ((_ is Intermediate!8098) lt!351826) (undefined!8910 lt!351826)))))

(assert (=> d!102787 (= lt!351826 e!438300)))

(declare-fun c!87557 () Bool)

(assert (=> d!102787 (= c!87557 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102787 (= lt!351827 (select (arr!20491 a!3186) (toIndex!0 (select (arr!20491 a!3186) j!159) mask!3328)))))

(assert (=> d!102787 (validMask!0 mask!3328)))

(assert (=> d!102787 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20491 a!3186) j!159) mask!3328) (select (arr!20491 a!3186) j!159) a!3186 mask!3328) lt!351826)))

(declare-fun b!788529 () Bool)

(assert (=> b!788529 (and (bvsge (index!34761 lt!351826) #b00000000000000000000000000000000) (bvslt (index!34761 lt!351826) (size!20912 a!3186)))))

(declare-fun res!534226 () Bool)

(assert (=> b!788529 (= res!534226 (= (select (arr!20491 a!3186) (index!34761 lt!351826)) (select (arr!20491 a!3186) j!159)))))

(assert (=> b!788529 (=> res!534226 e!438296)))

(assert (=> b!788529 (= e!438299 e!438296)))

(assert (= (and d!102787 c!87557) b!788530))

(assert (= (and d!102787 (not c!87557)) b!788526))

(assert (= (and b!788526 c!87558) b!788523))

(assert (= (and b!788526 (not c!87558)) b!788524))

(assert (= (and d!102787 c!87559) b!788522))

(assert (= (and d!102787 (not c!87559)) b!788528))

(assert (= (and b!788528 res!534225) b!788529))

(assert (= (and b!788529 (not res!534226)) b!788525))

(assert (= (and b!788525 (not res!534227)) b!788527))

(assert (=> d!102787 m!729653))

(declare-fun m!729873 () Bool)

(assert (=> d!102787 m!729873))

(assert (=> d!102787 m!729689))

(declare-fun m!729875 () Bool)

(assert (=> b!788527 m!729875))

(assert (=> b!788525 m!729875))

(assert (=> b!788524 m!729653))

(declare-fun m!729877 () Bool)

(assert (=> b!788524 m!729877))

(assert (=> b!788524 m!729877))

(assert (=> b!788524 m!729649))

(declare-fun m!729879 () Bool)

(assert (=> b!788524 m!729879))

(assert (=> b!788529 m!729875))

(assert (=> b!788231 d!102787))

(declare-fun d!102793 () Bool)

(declare-fun lt!351837 () (_ BitVec 32))

(declare-fun lt!351836 () (_ BitVec 32))

(assert (=> d!102793 (= lt!351837 (bvmul (bvxor lt!351836 (bvlshr lt!351836 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102793 (= lt!351836 ((_ extract 31 0) (bvand (bvxor (select (arr!20491 a!3186) j!159) (bvlshr (select (arr!20491 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102793 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!534230 (let ((h!15669 ((_ extract 31 0) (bvand (bvxor (select (arr!20491 a!3186) j!159) (bvlshr (select (arr!20491 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65728 (bvmul (bvxor h!15669 (bvlshr h!15669 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65728 (bvlshr x!65728 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!534230 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!534230 #b00000000000000000000000000000000))))))

(assert (=> d!102793 (= (toIndex!0 (select (arr!20491 a!3186) j!159) mask!3328) (bvand (bvxor lt!351837 (bvlshr lt!351837 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!788231 d!102793))

(declare-fun d!102799 () Bool)

(assert (=> d!102799 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!788221 d!102799))

(declare-fun b!788550 () Bool)

(declare-fun e!438315 () SeekEntryResult!8098)

(declare-fun lt!351839 () SeekEntryResult!8098)

(assert (=> b!788550 (= e!438315 (Found!8098 (index!34761 lt!351839)))))

(declare-fun b!788551 () Bool)

(declare-fun c!87566 () Bool)

(declare-fun lt!351840 () (_ BitVec 64))

(assert (=> b!788551 (= c!87566 (= lt!351840 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438314 () SeekEntryResult!8098)

(assert (=> b!788551 (= e!438315 e!438314)))

(declare-fun b!788552 () Bool)

(declare-fun e!438316 () SeekEntryResult!8098)

(assert (=> b!788552 (= e!438316 e!438315)))

(assert (=> b!788552 (= lt!351840 (select (arr!20491 a!3186) (index!34761 lt!351839)))))

(declare-fun c!87565 () Bool)

(assert (=> b!788552 (= c!87565 (= lt!351840 k0!2102))))

(declare-fun b!788553 () Bool)

(assert (=> b!788553 (= e!438314 (MissingZero!8098 (index!34761 lt!351839)))))

(declare-fun b!788554 () Bool)

(assert (=> b!788554 (= e!438314 (seekKeyOrZeroReturnVacant!0 (x!65719 lt!351839) (index!34761 lt!351839) (index!34761 lt!351839) k0!2102 a!3186 mask!3328))))

(declare-fun b!788555 () Bool)

(assert (=> b!788555 (= e!438316 Undefined!8098)))

(declare-fun d!102801 () Bool)

(declare-fun lt!351838 () SeekEntryResult!8098)

(assert (=> d!102801 (and (or ((_ is Undefined!8098) lt!351838) (not ((_ is Found!8098) lt!351838)) (and (bvsge (index!34760 lt!351838) #b00000000000000000000000000000000) (bvslt (index!34760 lt!351838) (size!20912 a!3186)))) (or ((_ is Undefined!8098) lt!351838) ((_ is Found!8098) lt!351838) (not ((_ is MissingZero!8098) lt!351838)) (and (bvsge (index!34759 lt!351838) #b00000000000000000000000000000000) (bvslt (index!34759 lt!351838) (size!20912 a!3186)))) (or ((_ is Undefined!8098) lt!351838) ((_ is Found!8098) lt!351838) ((_ is MissingZero!8098) lt!351838) (not ((_ is MissingVacant!8098) lt!351838)) (and (bvsge (index!34762 lt!351838) #b00000000000000000000000000000000) (bvslt (index!34762 lt!351838) (size!20912 a!3186)))) (or ((_ is Undefined!8098) lt!351838) (ite ((_ is Found!8098) lt!351838) (= (select (arr!20491 a!3186) (index!34760 lt!351838)) k0!2102) (ite ((_ is MissingZero!8098) lt!351838) (= (select (arr!20491 a!3186) (index!34759 lt!351838)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8098) lt!351838) (= (select (arr!20491 a!3186) (index!34762 lt!351838)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102801 (= lt!351838 e!438316)))

(declare-fun c!87567 () Bool)

(assert (=> d!102801 (= c!87567 (and ((_ is Intermediate!8098) lt!351839) (undefined!8910 lt!351839)))))

(assert (=> d!102801 (= lt!351839 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!102801 (validMask!0 mask!3328)))

(assert (=> d!102801 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!351838)))

(assert (= (and d!102801 c!87567) b!788555))

(assert (= (and d!102801 (not c!87567)) b!788552))

(assert (= (and b!788552 c!87565) b!788550))

(assert (= (and b!788552 (not c!87565)) b!788551))

(assert (= (and b!788551 c!87566) b!788553))

(assert (= (and b!788551 (not c!87566)) b!788554))

(declare-fun m!729885 () Bool)

(assert (=> b!788552 m!729885))

(declare-fun m!729887 () Bool)

(assert (=> b!788554 m!729887))

(declare-fun m!729889 () Bool)

(assert (=> d!102801 m!729889))

(assert (=> d!102801 m!729889))

(declare-fun m!729891 () Bool)

(assert (=> d!102801 m!729891))

(declare-fun m!729893 () Bool)

(assert (=> d!102801 m!729893))

(declare-fun m!729895 () Bool)

(assert (=> d!102801 m!729895))

(declare-fun m!729897 () Bool)

(assert (=> d!102801 m!729897))

(assert (=> d!102801 m!729689))

(assert (=> b!788216 d!102801))

(assert (=> b!788218 d!102743))

(declare-fun b!788561 () Bool)

(declare-fun e!438323 () Bool)

(declare-fun lt!351841 () SeekEntryResult!8098)

(assert (=> b!788561 (= e!438323 (bvsge (x!65719 lt!351841) #b01111111111111111111111111111110))))

(declare-fun b!788562 () Bool)

(declare-fun e!438322 () SeekEntryResult!8098)

(assert (=> b!788562 (= e!438322 (Intermediate!8098 false index!1321 x!1131))))

(declare-fun b!788563 () Bool)

(assert (=> b!788563 (= e!438322 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!351692 lt!351686 mask!3328))))

(declare-fun b!788564 () Bool)

(assert (=> b!788564 (and (bvsge (index!34761 lt!351841) #b00000000000000000000000000000000) (bvslt (index!34761 lt!351841) (size!20912 lt!351686)))))

(declare-fun res!534243 () Bool)

(assert (=> b!788564 (= res!534243 (= (select (arr!20491 lt!351686) (index!34761 lt!351841)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438321 () Bool)

(assert (=> b!788564 (=> res!534243 e!438321)))

(declare-fun b!788565 () Bool)

(declare-fun e!438325 () SeekEntryResult!8098)

(assert (=> b!788565 (= e!438325 e!438322)))

(declare-fun c!87570 () Bool)

(declare-fun lt!351842 () (_ BitVec 64))

(assert (=> b!788565 (= c!87570 (or (= lt!351842 lt!351692) (= (bvadd lt!351842 lt!351842) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788566 () Bool)

(assert (=> b!788566 (and (bvsge (index!34761 lt!351841) #b00000000000000000000000000000000) (bvslt (index!34761 lt!351841) (size!20912 lt!351686)))))

(assert (=> b!788566 (= e!438321 (= (select (arr!20491 lt!351686) (index!34761 lt!351841)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788567 () Bool)

(declare-fun e!438324 () Bool)

(assert (=> b!788567 (= e!438323 e!438324)))

(declare-fun res!534241 () Bool)

(assert (=> b!788567 (= res!534241 (and ((_ is Intermediate!8098) lt!351841) (not (undefined!8910 lt!351841)) (bvslt (x!65719 lt!351841) #b01111111111111111111111111111110) (bvsge (x!65719 lt!351841) #b00000000000000000000000000000000) (bvsge (x!65719 lt!351841) x!1131)))))

(assert (=> b!788567 (=> (not res!534241) (not e!438324))))

(declare-fun b!788569 () Bool)

(assert (=> b!788569 (= e!438325 (Intermediate!8098 true index!1321 x!1131))))

(declare-fun d!102803 () Bool)

(assert (=> d!102803 e!438323))

(declare-fun c!87571 () Bool)

(assert (=> d!102803 (= c!87571 (and ((_ is Intermediate!8098) lt!351841) (undefined!8910 lt!351841)))))

(assert (=> d!102803 (= lt!351841 e!438325)))

(declare-fun c!87569 () Bool)

(assert (=> d!102803 (= c!87569 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102803 (= lt!351842 (select (arr!20491 lt!351686) index!1321))))

(assert (=> d!102803 (validMask!0 mask!3328)))

(assert (=> d!102803 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351692 lt!351686 mask!3328) lt!351841)))

(declare-fun b!788568 () Bool)

(assert (=> b!788568 (and (bvsge (index!34761 lt!351841) #b00000000000000000000000000000000) (bvslt (index!34761 lt!351841) (size!20912 lt!351686)))))

(declare-fun res!534242 () Bool)

(assert (=> b!788568 (= res!534242 (= (select (arr!20491 lt!351686) (index!34761 lt!351841)) lt!351692))))

(assert (=> b!788568 (=> res!534242 e!438321)))

(assert (=> b!788568 (= e!438324 e!438321)))

(assert (= (and d!102803 c!87569) b!788569))

(assert (= (and d!102803 (not c!87569)) b!788565))

(assert (= (and b!788565 c!87570) b!788562))

(assert (= (and b!788565 (not c!87570)) b!788563))

(assert (= (and d!102803 c!87571) b!788561))

(assert (= (and d!102803 (not c!87571)) b!788567))

(assert (= (and b!788567 res!534241) b!788568))

(assert (= (and b!788568 (not res!534242)) b!788564))

(assert (= (and b!788564 (not res!534243)) b!788566))

(assert (=> d!102803 m!729827))

(assert (=> d!102803 m!729689))

(declare-fun m!729907 () Bool)

(assert (=> b!788566 m!729907))

(assert (=> b!788564 m!729907))

(assert (=> b!788563 m!729769))

(assert (=> b!788563 m!729769))

(declare-fun m!729909 () Bool)

(assert (=> b!788563 m!729909))

(assert (=> b!788568 m!729907))

(assert (=> b!788229 d!102803))

(declare-fun b!788576 () Bool)

(declare-fun e!438331 () Bool)

(declare-fun lt!351846 () SeekEntryResult!8098)

(assert (=> b!788576 (= e!438331 (bvsge (x!65719 lt!351846) #b01111111111111111111111111111110))))

(declare-fun b!788577 () Bool)

(declare-fun e!438330 () SeekEntryResult!8098)

(assert (=> b!788577 (= e!438330 (Intermediate!8098 false (toIndex!0 lt!351692 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!788578 () Bool)

(assert (=> b!788578 (= e!438330 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!351692 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!351692 lt!351686 mask!3328))))

(declare-fun b!788579 () Bool)

(assert (=> b!788579 (and (bvsge (index!34761 lt!351846) #b00000000000000000000000000000000) (bvslt (index!34761 lt!351846) (size!20912 lt!351686)))))

(declare-fun res!534246 () Bool)

(assert (=> b!788579 (= res!534246 (= (select (arr!20491 lt!351686) (index!34761 lt!351846)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438329 () Bool)

(assert (=> b!788579 (=> res!534246 e!438329)))

(declare-fun b!788580 () Bool)

(declare-fun e!438333 () SeekEntryResult!8098)

(assert (=> b!788580 (= e!438333 e!438330)))

(declare-fun c!87576 () Bool)

(declare-fun lt!351847 () (_ BitVec 64))

(assert (=> b!788580 (= c!87576 (or (= lt!351847 lt!351692) (= (bvadd lt!351847 lt!351847) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788581 () Bool)

(assert (=> b!788581 (and (bvsge (index!34761 lt!351846) #b00000000000000000000000000000000) (bvslt (index!34761 lt!351846) (size!20912 lt!351686)))))

(assert (=> b!788581 (= e!438329 (= (select (arr!20491 lt!351686) (index!34761 lt!351846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788582 () Bool)

(declare-fun e!438332 () Bool)

(assert (=> b!788582 (= e!438331 e!438332)))

(declare-fun res!534244 () Bool)

(assert (=> b!788582 (= res!534244 (and ((_ is Intermediate!8098) lt!351846) (not (undefined!8910 lt!351846)) (bvslt (x!65719 lt!351846) #b01111111111111111111111111111110) (bvsge (x!65719 lt!351846) #b00000000000000000000000000000000) (bvsge (x!65719 lt!351846) #b00000000000000000000000000000000)))))

(assert (=> b!788582 (=> (not res!534244) (not e!438332))))

(declare-fun b!788584 () Bool)

(assert (=> b!788584 (= e!438333 (Intermediate!8098 true (toIndex!0 lt!351692 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!102807 () Bool)

(assert (=> d!102807 e!438331))

(declare-fun c!87577 () Bool)

(assert (=> d!102807 (= c!87577 (and ((_ is Intermediate!8098) lt!351846) (undefined!8910 lt!351846)))))

(assert (=> d!102807 (= lt!351846 e!438333)))

(declare-fun c!87575 () Bool)

(assert (=> d!102807 (= c!87575 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102807 (= lt!351847 (select (arr!20491 lt!351686) (toIndex!0 lt!351692 mask!3328)))))

(assert (=> d!102807 (validMask!0 mask!3328)))

(assert (=> d!102807 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351692 mask!3328) lt!351692 lt!351686 mask!3328) lt!351846)))

(declare-fun b!788583 () Bool)

(assert (=> b!788583 (and (bvsge (index!34761 lt!351846) #b00000000000000000000000000000000) (bvslt (index!34761 lt!351846) (size!20912 lt!351686)))))

(declare-fun res!534245 () Bool)

(assert (=> b!788583 (= res!534245 (= (select (arr!20491 lt!351686) (index!34761 lt!351846)) lt!351692))))

(assert (=> b!788583 (=> res!534245 e!438329)))

(assert (=> b!788583 (= e!438332 e!438329)))

(assert (= (and d!102807 c!87575) b!788584))

(assert (= (and d!102807 (not c!87575)) b!788580))

(assert (= (and b!788580 c!87576) b!788577))

(assert (= (and b!788580 (not c!87576)) b!788578))

(assert (= (and d!102807 c!87577) b!788576))

(assert (= (and d!102807 (not c!87577)) b!788582))

(assert (= (and b!788582 res!534244) b!788583))

(assert (= (and b!788583 (not res!534245)) b!788579))

(assert (= (and b!788579 (not res!534246)) b!788581))

(assert (=> d!102807 m!729671))

(declare-fun m!729925 () Bool)

(assert (=> d!102807 m!729925))

(assert (=> d!102807 m!729689))

(declare-fun m!729927 () Bool)

(assert (=> b!788581 m!729927))

(assert (=> b!788579 m!729927))

(assert (=> b!788578 m!729671))

(declare-fun m!729929 () Bool)

(assert (=> b!788578 m!729929))

(assert (=> b!788578 m!729929))

(declare-fun m!729931 () Bool)

(assert (=> b!788578 m!729931))

(assert (=> b!788583 m!729927))

(assert (=> b!788229 d!102807))

(declare-fun d!102811 () Bool)

(declare-fun lt!351849 () (_ BitVec 32))

(declare-fun lt!351848 () (_ BitVec 32))

(assert (=> d!102811 (= lt!351849 (bvmul (bvxor lt!351848 (bvlshr lt!351848 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102811 (= lt!351848 ((_ extract 31 0) (bvand (bvxor lt!351692 (bvlshr lt!351692 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102811 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!534230 (let ((h!15669 ((_ extract 31 0) (bvand (bvxor lt!351692 (bvlshr lt!351692 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65728 (bvmul (bvxor h!15669 (bvlshr h!15669 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65728 (bvlshr x!65728 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!534230 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!534230 #b00000000000000000000000000000000))))))

(assert (=> d!102811 (= (toIndex!0 lt!351692 mask!3328) (bvand (bvxor lt!351849 (bvlshr lt!351849 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!788229 d!102811))

(check-sat (not d!102761) (not b!788578) (not b!788563) (not bm!35281) (not d!102807) (not b!788310) (not d!102779) (not b!788326) (not b!788350) (not b!788387) (not b!788524) (not b!788389) (not b!788471) (not b!788464) (not d!102753) (not b!788337) (not d!102765) (not d!102787) (not b!788407) (not b!788554) (not d!102743) (not b!788352) (not b!788351) (not b!788405) (not b!788311) (not d!102767) (not d!102803) (not d!102763) (not d!102801) (not bm!35280) (not b!788390) (not bm!35277))
(check-sat)
