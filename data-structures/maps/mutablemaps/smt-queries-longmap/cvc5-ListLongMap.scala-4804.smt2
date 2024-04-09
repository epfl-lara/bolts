; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65902 () Bool)

(assert start!65902)

(declare-fun b!759526 () Bool)

(declare-fun res!514148 () Bool)

(declare-fun e!423416 () Bool)

(assert (=> b!759526 (=> (not res!514148) (not e!423416))))

(declare-datatypes ((array!42028 0))(
  ( (array!42029 (arr!20124 (Array (_ BitVec 32) (_ BitVec 64))) (size!20545 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42028)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!759526 (= res!514148 (and (= (size!20545 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20545 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20545 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!423418 () Bool)

(declare-fun b!759527 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7731 0))(
  ( (MissingZero!7731 (index!33291 (_ BitVec 32))) (Found!7731 (index!33292 (_ BitVec 32))) (Intermediate!7731 (undefined!8543 Bool) (index!33293 (_ BitVec 32)) (x!64202 (_ BitVec 32))) (Undefined!7731) (MissingVacant!7731 (index!33294 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42028 (_ BitVec 32)) SeekEntryResult!7731)

(assert (=> b!759527 (= e!423418 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20124 a!3186) j!159) a!3186 mask!3328) (Found!7731 j!159)))))

(declare-fun b!759529 () Bool)

(declare-fun res!514154 () Bool)

(declare-fun e!423417 () Bool)

(assert (=> b!759529 (=> (not res!514154) (not e!423417))))

(declare-datatypes ((List!14179 0))(
  ( (Nil!14176) (Cons!14175 (h!15247 (_ BitVec 64)) (t!20502 List!14179)) )
))
(declare-fun arrayNoDuplicates!0 (array!42028 (_ BitVec 32) List!14179) Bool)

(assert (=> b!759529 (= res!514154 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14176))))

(declare-fun b!759530 () Bool)

(declare-fun e!423419 () Bool)

(declare-fun lt!338448 () SeekEntryResult!7731)

(assert (=> b!759530 (= e!423419 (not (or (not (is-Intermediate!7731 lt!338448)) (bvslt x!1131 (x!64202 lt!338448)) (= x!1131 (x!64202 lt!338448)))))))

(declare-fun e!423420 () Bool)

(assert (=> b!759530 e!423420))

(declare-fun res!514152 () Bool)

(assert (=> b!759530 (=> (not res!514152) (not e!423420))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42028 (_ BitVec 32)) Bool)

(assert (=> b!759530 (= res!514152 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26302 0))(
  ( (Unit!26303) )
))
(declare-fun lt!338443 () Unit!26302)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42028 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26302)

(assert (=> b!759530 (= lt!338443 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!759531 () Bool)

(declare-fun res!514149 () Bool)

(assert (=> b!759531 (=> (not res!514149) (not e!423417))))

(assert (=> b!759531 (= res!514149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!759532 () Bool)

(declare-fun res!514143 () Bool)

(assert (=> b!759532 (=> (not res!514143) (not e!423416))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!759532 (= res!514143 (validKeyInArray!0 k!2102))))

(declare-fun lt!338445 () SeekEntryResult!7731)

(declare-fun b!759533 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42028 (_ BitVec 32)) SeekEntryResult!7731)

(assert (=> b!759533 (= e!423418 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20124 a!3186) j!159) a!3186 mask!3328) lt!338445))))

(declare-fun b!759534 () Bool)

(declare-fun res!514145 () Bool)

(declare-fun e!423423 () Bool)

(assert (=> b!759534 (=> (not res!514145) (not e!423423))))

(assert (=> b!759534 (= res!514145 e!423418)))

(declare-fun c!83073 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!759534 (= c!83073 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!759535 () Bool)

(assert (=> b!759535 (= e!423423 e!423419)))

(declare-fun res!514151 () Bool)

(assert (=> b!759535 (=> (not res!514151) (not e!423419))))

(declare-fun lt!338444 () SeekEntryResult!7731)

(assert (=> b!759535 (= res!514151 (= lt!338444 lt!338448))))

(declare-fun lt!338449 () array!42028)

(declare-fun lt!338450 () (_ BitVec 64))

(assert (=> b!759535 (= lt!338448 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338450 lt!338449 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!759535 (= lt!338444 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338450 mask!3328) lt!338450 lt!338449 mask!3328))))

(assert (=> b!759535 (= lt!338450 (select (store (arr!20124 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!759535 (= lt!338449 (array!42029 (store (arr!20124 a!3186) i!1173 k!2102) (size!20545 a!3186)))))

(declare-fun b!759536 () Bool)

(declare-fun res!514150 () Bool)

(assert (=> b!759536 (=> (not res!514150) (not e!423416))))

(assert (=> b!759536 (= res!514150 (validKeyInArray!0 (select (arr!20124 a!3186) j!159)))))

(declare-fun lt!338446 () SeekEntryResult!7731)

(declare-fun e!423422 () Bool)

(declare-fun b!759537 () Bool)

(assert (=> b!759537 (= e!423422 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20124 a!3186) j!159) a!3186 mask!3328) lt!338446))))

(declare-fun res!514147 () Bool)

(assert (=> start!65902 (=> (not res!514147) (not e!423416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65902 (= res!514147 (validMask!0 mask!3328))))

(assert (=> start!65902 e!423416))

(assert (=> start!65902 true))

(declare-fun array_inv!15898 (array!42028) Bool)

(assert (=> start!65902 (array_inv!15898 a!3186)))

(declare-fun b!759528 () Bool)

(declare-fun res!514144 () Bool)

(assert (=> b!759528 (=> (not res!514144) (not e!423417))))

(assert (=> b!759528 (= res!514144 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20545 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20545 a!3186))))))

(declare-fun b!759538 () Bool)

(declare-fun res!514146 () Bool)

(assert (=> b!759538 (=> (not res!514146) (not e!423416))))

(declare-fun arrayContainsKey!0 (array!42028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!759538 (= res!514146 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!759539 () Bool)

(assert (=> b!759539 (= e!423417 e!423423)))

(declare-fun res!514142 () Bool)

(assert (=> b!759539 (=> (not res!514142) (not e!423423))))

(assert (=> b!759539 (= res!514142 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20124 a!3186) j!159) mask!3328) (select (arr!20124 a!3186) j!159) a!3186 mask!3328) lt!338445))))

(assert (=> b!759539 (= lt!338445 (Intermediate!7731 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!759540 () Bool)

(declare-fun res!514141 () Bool)

(assert (=> b!759540 (=> (not res!514141) (not e!423423))))

(assert (=> b!759540 (= res!514141 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20124 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759541 () Bool)

(assert (=> b!759541 (= e!423420 e!423422)))

(declare-fun res!514155 () Bool)

(assert (=> b!759541 (=> (not res!514155) (not e!423422))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42028 (_ BitVec 32)) SeekEntryResult!7731)

(assert (=> b!759541 (= res!514155 (= (seekEntryOrOpen!0 (select (arr!20124 a!3186) j!159) a!3186 mask!3328) lt!338446))))

(assert (=> b!759541 (= lt!338446 (Found!7731 j!159))))

(declare-fun b!759542 () Bool)

(assert (=> b!759542 (= e!423416 e!423417)))

(declare-fun res!514153 () Bool)

(assert (=> b!759542 (=> (not res!514153) (not e!423417))))

(declare-fun lt!338447 () SeekEntryResult!7731)

(assert (=> b!759542 (= res!514153 (or (= lt!338447 (MissingZero!7731 i!1173)) (= lt!338447 (MissingVacant!7731 i!1173))))))

(assert (=> b!759542 (= lt!338447 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!65902 res!514147) b!759526))

(assert (= (and b!759526 res!514148) b!759536))

(assert (= (and b!759536 res!514150) b!759532))

(assert (= (and b!759532 res!514143) b!759538))

(assert (= (and b!759538 res!514146) b!759542))

(assert (= (and b!759542 res!514153) b!759531))

(assert (= (and b!759531 res!514149) b!759529))

(assert (= (and b!759529 res!514154) b!759528))

(assert (= (and b!759528 res!514144) b!759539))

(assert (= (and b!759539 res!514142) b!759540))

(assert (= (and b!759540 res!514141) b!759534))

(assert (= (and b!759534 c!83073) b!759533))

(assert (= (and b!759534 (not c!83073)) b!759527))

(assert (= (and b!759534 res!514145) b!759535))

(assert (= (and b!759535 res!514151) b!759530))

(assert (= (and b!759530 res!514152) b!759541))

(assert (= (and b!759541 res!514155) b!759537))

(declare-fun m!706963 () Bool)

(assert (=> b!759532 m!706963))

(declare-fun m!706965 () Bool)

(assert (=> b!759529 m!706965))

(declare-fun m!706967 () Bool)

(assert (=> b!759541 m!706967))

(assert (=> b!759541 m!706967))

(declare-fun m!706969 () Bool)

(assert (=> b!759541 m!706969))

(assert (=> b!759537 m!706967))

(assert (=> b!759537 m!706967))

(declare-fun m!706971 () Bool)

(assert (=> b!759537 m!706971))

(declare-fun m!706973 () Bool)

(assert (=> b!759535 m!706973))

(declare-fun m!706975 () Bool)

(assert (=> b!759535 m!706975))

(declare-fun m!706977 () Bool)

(assert (=> b!759535 m!706977))

(declare-fun m!706979 () Bool)

(assert (=> b!759535 m!706979))

(assert (=> b!759535 m!706973))

(declare-fun m!706981 () Bool)

(assert (=> b!759535 m!706981))

(declare-fun m!706983 () Bool)

(assert (=> start!65902 m!706983))

(declare-fun m!706985 () Bool)

(assert (=> start!65902 m!706985))

(declare-fun m!706987 () Bool)

(assert (=> b!759531 m!706987))

(declare-fun m!706989 () Bool)

(assert (=> b!759538 m!706989))

(assert (=> b!759536 m!706967))

(assert (=> b!759536 m!706967))

(declare-fun m!706991 () Bool)

(assert (=> b!759536 m!706991))

(declare-fun m!706993 () Bool)

(assert (=> b!759542 m!706993))

(assert (=> b!759533 m!706967))

(assert (=> b!759533 m!706967))

(declare-fun m!706995 () Bool)

(assert (=> b!759533 m!706995))

(declare-fun m!706997 () Bool)

(assert (=> b!759530 m!706997))

(declare-fun m!706999 () Bool)

(assert (=> b!759530 m!706999))

(declare-fun m!707001 () Bool)

(assert (=> b!759540 m!707001))

(assert (=> b!759539 m!706967))

(assert (=> b!759539 m!706967))

(declare-fun m!707003 () Bool)

(assert (=> b!759539 m!707003))

(assert (=> b!759539 m!707003))

(assert (=> b!759539 m!706967))

(declare-fun m!707005 () Bool)

(assert (=> b!759539 m!707005))

(assert (=> b!759527 m!706967))

(assert (=> b!759527 m!706967))

(declare-fun m!707007 () Bool)

(assert (=> b!759527 m!707007))

(push 1)

(assert (not b!759538))

(assert (not b!759542))

(assert (not b!759537))

(assert (not b!759536))

(assert (not b!759527))

(assert (not start!65902))

(assert (not b!759530))

(assert (not b!759535))

(assert (not b!759533))

(assert (not b!759539))

(assert (not b!759541))

(assert (not b!759531))

(assert (not b!759529))

(assert (not b!759532))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!423539 () SeekEntryResult!7731)

(declare-fun b!759752 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!759752 (= e!423539 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!338450 lt!338449 mask!3328))))

(declare-fun b!759753 () Bool)

(declare-fun lt!338540 () SeekEntryResult!7731)

(assert (=> b!759753 (and (bvsge (index!33293 lt!338540) #b00000000000000000000000000000000) (bvslt (index!33293 lt!338540) (size!20545 lt!338449)))))

(declare-fun res!514287 () Bool)

(assert (=> b!759753 (= res!514287 (= (select (arr!20124 lt!338449) (index!33293 lt!338540)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423540 () Bool)

(assert (=> b!759753 (=> res!514287 e!423540)))

(declare-fun b!759754 () Bool)

(declare-fun e!423538 () Bool)

(assert (=> b!759754 (= e!423538 (bvsge (x!64202 lt!338540) #b01111111111111111111111111111110))))

(declare-fun d!100315 () Bool)

(assert (=> d!100315 e!423538))

(declare-fun c!83115 () Bool)

(assert (=> d!100315 (= c!83115 (and (is-Intermediate!7731 lt!338540) (undefined!8543 lt!338540)))))

(declare-fun e!423537 () SeekEntryResult!7731)

(assert (=> d!100315 (= lt!338540 e!423537)))

(declare-fun c!83116 () Bool)

(assert (=> d!100315 (= c!83116 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!338539 () (_ BitVec 64))

(assert (=> d!100315 (= lt!338539 (select (arr!20124 lt!338449) index!1321))))

(assert (=> d!100315 (validMask!0 mask!3328)))

(assert (=> d!100315 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338450 lt!338449 mask!3328) lt!338540)))

(declare-fun b!759755 () Bool)

(assert (=> b!759755 (and (bvsge (index!33293 lt!338540) #b00000000000000000000000000000000) (bvslt (index!33293 lt!338540) (size!20545 lt!338449)))))

(assert (=> b!759755 (= e!423540 (= (select (arr!20124 lt!338449) (index!33293 lt!338540)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!759756 () Bool)

(assert (=> b!759756 (= e!423537 (Intermediate!7731 true index!1321 x!1131))))

(declare-fun b!759757 () Bool)

(assert (=> b!759757 (= e!423539 (Intermediate!7731 false index!1321 x!1131))))

(declare-fun b!759758 () Bool)

(declare-fun e!423541 () Bool)

(assert (=> b!759758 (= e!423538 e!423541)))

(declare-fun res!514286 () Bool)

(assert (=> b!759758 (= res!514286 (and (is-Intermediate!7731 lt!338540) (not (undefined!8543 lt!338540)) (bvslt (x!64202 lt!338540) #b01111111111111111111111111111110) (bvsge (x!64202 lt!338540) #b00000000000000000000000000000000) (bvsge (x!64202 lt!338540) x!1131)))))

(assert (=> b!759758 (=> (not res!514286) (not e!423541))))

(declare-fun b!759759 () Bool)

(assert (=> b!759759 (= e!423537 e!423539)))

(declare-fun c!83114 () Bool)

(assert (=> b!759759 (= c!83114 (or (= lt!338539 lt!338450) (= (bvadd lt!338539 lt!338539) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759760 () Bool)

(assert (=> b!759760 (and (bvsge (index!33293 lt!338540) #b00000000000000000000000000000000) (bvslt (index!33293 lt!338540) (size!20545 lt!338449)))))

(declare-fun res!514288 () Bool)

(assert (=> b!759760 (= res!514288 (= (select (arr!20124 lt!338449) (index!33293 lt!338540)) lt!338450))))

(assert (=> b!759760 (=> res!514288 e!423540)))

(assert (=> b!759760 (= e!423541 e!423540)))

(assert (= (and d!100315 c!83116) b!759756))

(assert (= (and d!100315 (not c!83116)) b!759759))

(assert (= (and b!759759 c!83114) b!759757))

(assert (= (and b!759759 (not c!83114)) b!759752))

(assert (= (and d!100315 c!83115) b!759754))

(assert (= (and d!100315 (not c!83115)) b!759758))

(assert (= (and b!759758 res!514286) b!759760))

(assert (= (and b!759760 (not res!514288)) b!759753))

(assert (= (and b!759753 (not res!514287)) b!759755))

(declare-fun m!707147 () Bool)

(assert (=> b!759760 m!707147))

(declare-fun m!707149 () Bool)

(assert (=> d!100315 m!707149))

(assert (=> d!100315 m!706983))

(declare-fun m!707151 () Bool)

(assert (=> b!759752 m!707151))

(assert (=> b!759752 m!707151))

(declare-fun m!707153 () Bool)

(assert (=> b!759752 m!707153))

(assert (=> b!759753 m!707147))

(assert (=> b!759755 m!707147))

(assert (=> b!759535 d!100315))

(declare-fun e!423550 () SeekEntryResult!7731)

(declare-fun b!759767 () Bool)

(assert (=> b!759767 (= e!423550 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!338450 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!338450 lt!338449 mask!3328))))

(declare-fun b!759768 () Bool)

(declare-fun lt!338542 () SeekEntryResult!7731)

(assert (=> b!759768 (and (bvsge (index!33293 lt!338542) #b00000000000000000000000000000000) (bvslt (index!33293 lt!338542) (size!20545 lt!338449)))))

(declare-fun res!514294 () Bool)

(assert (=> b!759768 (= res!514294 (= (select (arr!20124 lt!338449) (index!33293 lt!338542)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423551 () Bool)

(assert (=> b!759768 (=> res!514294 e!423551)))

(declare-fun b!759769 () Bool)

(declare-fun e!423549 () Bool)

(assert (=> b!759769 (= e!423549 (bvsge (x!64202 lt!338542) #b01111111111111111111111111111110))))

(declare-fun d!100333 () Bool)

(assert (=> d!100333 e!423549))

(declare-fun c!83120 () Bool)

(assert (=> d!100333 (= c!83120 (and (is-Intermediate!7731 lt!338542) (undefined!8543 lt!338542)))))

(declare-fun e!423548 () SeekEntryResult!7731)

(assert (=> d!100333 (= lt!338542 e!423548)))

(declare-fun c!83121 () Bool)

(assert (=> d!100333 (= c!83121 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!338541 () (_ BitVec 64))

(assert (=> d!100333 (= lt!338541 (select (arr!20124 lt!338449) (toIndex!0 lt!338450 mask!3328)))))

(assert (=> d!100333 (validMask!0 mask!3328)))

(assert (=> d!100333 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338450 mask!3328) lt!338450 lt!338449 mask!3328) lt!338542)))

(declare-fun b!759770 () Bool)

(assert (=> b!759770 (and (bvsge (index!33293 lt!338542) #b00000000000000000000000000000000) (bvslt (index!33293 lt!338542) (size!20545 lt!338449)))))

(assert (=> b!759770 (= e!423551 (= (select (arr!20124 lt!338449) (index!33293 lt!338542)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!759771 () Bool)

(assert (=> b!759771 (= e!423548 (Intermediate!7731 true (toIndex!0 lt!338450 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!759772 () Bool)

(assert (=> b!759772 (= e!423550 (Intermediate!7731 false (toIndex!0 lt!338450 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!759773 () Bool)

(declare-fun e!423552 () Bool)

(assert (=> b!759773 (= e!423549 e!423552)))

(declare-fun res!514293 () Bool)

(assert (=> b!759773 (= res!514293 (and (is-Intermediate!7731 lt!338542) (not (undefined!8543 lt!338542)) (bvslt (x!64202 lt!338542) #b01111111111111111111111111111110) (bvsge (x!64202 lt!338542) #b00000000000000000000000000000000) (bvsge (x!64202 lt!338542) #b00000000000000000000000000000000)))))

(assert (=> b!759773 (=> (not res!514293) (not e!423552))))

(declare-fun b!759774 () Bool)

(assert (=> b!759774 (= e!423548 e!423550)))

(declare-fun c!83119 () Bool)

(assert (=> b!759774 (= c!83119 (or (= lt!338541 lt!338450) (= (bvadd lt!338541 lt!338541) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759775 () Bool)

(assert (=> b!759775 (and (bvsge (index!33293 lt!338542) #b00000000000000000000000000000000) (bvslt (index!33293 lt!338542) (size!20545 lt!338449)))))

(declare-fun res!514295 () Bool)

(assert (=> b!759775 (= res!514295 (= (select (arr!20124 lt!338449) (index!33293 lt!338542)) lt!338450))))

(assert (=> b!759775 (=> res!514295 e!423551)))

(assert (=> b!759775 (= e!423552 e!423551)))

(assert (= (and d!100333 c!83121) b!759771))

(assert (= (and d!100333 (not c!83121)) b!759774))

(assert (= (and b!759774 c!83119) b!759772))

(assert (= (and b!759774 (not c!83119)) b!759767))

(assert (= (and d!100333 c!83120) b!759769))

(assert (= (and d!100333 (not c!83120)) b!759773))

(assert (= (and b!759773 res!514293) b!759775))

(assert (= (and b!759775 (not res!514295)) b!759768))

(assert (= (and b!759768 (not res!514294)) b!759770))

(declare-fun m!707155 () Bool)

(assert (=> b!759775 m!707155))

(assert (=> d!100333 m!706973))

(declare-fun m!707157 () Bool)

(assert (=> d!100333 m!707157))

(assert (=> d!100333 m!706983))

(assert (=> b!759767 m!706973))

(declare-fun m!707159 () Bool)

(assert (=> b!759767 m!707159))

(assert (=> b!759767 m!707159))

(declare-fun m!707161 () Bool)

(assert (=> b!759767 m!707161))

(assert (=> b!759768 m!707155))

(assert (=> b!759770 m!707155))

(assert (=> b!759535 d!100333))

(declare-fun d!100335 () Bool)

(declare-fun lt!338550 () (_ BitVec 32))

(declare-fun lt!338549 () (_ BitVec 32))

(assert (=> d!100335 (= lt!338550 (bvmul (bvxor lt!338549 (bvlshr lt!338549 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100335 (= lt!338549 ((_ extract 31 0) (bvand (bvxor lt!338450 (bvlshr lt!338450 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100335 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514298 (let ((h!15251 ((_ extract 31 0) (bvand (bvxor lt!338450 (bvlshr lt!338450 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64209 (bvmul (bvxor h!15251 (bvlshr h!15251 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64209 (bvlshr x!64209 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514298 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514298 #b00000000000000000000000000000000))))))

(assert (=> d!100335 (= (toIndex!0 lt!338450 mask!3328) (bvand (bvxor lt!338550 (bvlshr lt!338550 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!759535 d!100335))

(declare-fun d!100339 () Bool)

(assert (=> d!100339 (= (validKeyInArray!0 (select (arr!20124 a!3186) j!159)) (and (not (= (select (arr!20124 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20124 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!759536 d!100339))

(declare-fun b!759850 () Bool)

(declare-fun e!423599 () SeekEntryResult!7731)

(assert (=> b!759850 (= e!423599 Undefined!7731)))

(declare-fun b!759851 () Bool)

(declare-fun c!83148 () Bool)

(declare-fun lt!338570 () (_ BitVec 64))

(assert (=> b!759851 (= c!83148 (= lt!338570 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423597 () SeekEntryResult!7731)

(declare-fun e!423598 () SeekEntryResult!7731)

(assert (=> b!759851 (= e!423597 e!423598)))

(declare-fun b!759852 () Bool)

(declare-fun lt!338569 () SeekEntryResult!7731)

(assert (=> b!759852 (= e!423598 (seekKeyOrZeroReturnVacant!0 (x!64202 lt!338569) (index!33293 lt!338569) (index!33293 lt!338569) k!2102 a!3186 mask!3328))))

(declare-fun b!759853 () Bool)

(assert (=> b!759853 (= e!423598 (MissingZero!7731 (index!33293 lt!338569)))))

(declare-fun b!759854 () Bool)

(assert (=> b!759854 (= e!423599 e!423597)))

(assert (=> b!759854 (= lt!338570 (select (arr!20124 a!3186) (index!33293 lt!338569)))))

(declare-fun c!83147 () Bool)

(assert (=> b!759854 (= c!83147 (= lt!338570 k!2102))))

(declare-fun d!100341 () Bool)

(declare-fun lt!338568 () SeekEntryResult!7731)

(assert (=> d!100341 (and (or (is-Undefined!7731 lt!338568) (not (is-Found!7731 lt!338568)) (and (bvsge (index!33292 lt!338568) #b00000000000000000000000000000000) (bvslt (index!33292 lt!338568) (size!20545 a!3186)))) (or (is-Undefined!7731 lt!338568) (is-Found!7731 lt!338568) (not (is-MissingZero!7731 lt!338568)) (and (bvsge (index!33291 lt!338568) #b00000000000000000000000000000000) (bvslt (index!33291 lt!338568) (size!20545 a!3186)))) (or (is-Undefined!7731 lt!338568) (is-Found!7731 lt!338568) (is-MissingZero!7731 lt!338568) (not (is-MissingVacant!7731 lt!338568)) (and (bvsge (index!33294 lt!338568) #b00000000000000000000000000000000) (bvslt (index!33294 lt!338568) (size!20545 a!3186)))) (or (is-Undefined!7731 lt!338568) (ite (is-Found!7731 lt!338568) (= (select (arr!20124 a!3186) (index!33292 lt!338568)) k!2102) (ite (is-MissingZero!7731 lt!338568) (= (select (arr!20124 a!3186) (index!33291 lt!338568)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7731 lt!338568) (= (select (arr!20124 a!3186) (index!33294 lt!338568)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100341 (= lt!338568 e!423599)))

(declare-fun c!83149 () Bool)

(assert (=> d!100341 (= c!83149 (and (is-Intermediate!7731 lt!338569) (undefined!8543 lt!338569)))))

(assert (=> d!100341 (= lt!338569 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!100341 (validMask!0 mask!3328)))

(assert (=> d!100341 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!338568)))

(declare-fun b!759855 () Bool)

(assert (=> b!759855 (= e!423597 (Found!7731 (index!33293 lt!338569)))))

(assert (= (and d!100341 c!83149) b!759850))

(assert (= (and d!100341 (not c!83149)) b!759854))

(assert (= (and b!759854 c!83147) b!759855))

(assert (= (and b!759854 (not c!83147)) b!759851))

(assert (= (and b!759851 c!83148) b!759853))

(assert (= (and b!759851 (not c!83148)) b!759852))

(declare-fun m!707203 () Bool)

(assert (=> b!759852 m!707203))

(declare-fun m!707205 () Bool)

(assert (=> b!759854 m!707205))

(declare-fun m!707207 () Bool)

(assert (=> d!100341 m!707207))

(declare-fun m!707209 () Bool)

(assert (=> d!100341 m!707209))

(assert (=> d!100341 m!706983))

(declare-fun m!707211 () Bool)

(assert (=> d!100341 m!707211))

(assert (=> d!100341 m!707207))

(declare-fun m!707213 () Bool)

(assert (=> d!100341 m!707213))

(declare-fun m!707215 () Bool)

(assert (=> d!100341 m!707215))

(assert (=> b!759542 d!100341))

(declare-fun d!100359 () Bool)

(declare-fun res!514329 () Bool)

(declare-fun e!423617 () Bool)

(assert (=> d!100359 (=> res!514329 e!423617)))

(assert (=> d!100359 (= res!514329 (bvsge #b00000000000000000000000000000000 (size!20545 a!3186)))))

(assert (=> d!100359 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!423617)))

(declare-fun b!759876 () Bool)

(declare-fun e!423615 () Bool)

(assert (=> b!759876 (= e!423617 e!423615)))

(declare-fun c!83155 () Bool)

(assert (=> b!759876 (= c!83155 (validKeyInArray!0 (select (arr!20124 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!759877 () Bool)

(declare-fun e!423616 () Bool)

(assert (=> b!759877 (= e!423615 e!423616)))

(declare-fun lt!338591 () (_ BitVec 64))

(assert (=> b!759877 (= lt!338591 (select (arr!20124 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!338589 () Unit!26302)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42028 (_ BitVec 64) (_ BitVec 32)) Unit!26302)

(assert (=> b!759877 (= lt!338589 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!338591 #b00000000000000000000000000000000))))

(assert (=> b!759877 (arrayContainsKey!0 a!3186 lt!338591 #b00000000000000000000000000000000)))

(declare-fun lt!338590 () Unit!26302)

(assert (=> b!759877 (= lt!338590 lt!338589)))

(declare-fun res!514330 () Bool)

(assert (=> b!759877 (= res!514330 (= (seekEntryOrOpen!0 (select (arr!20124 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7731 #b00000000000000000000000000000000)))))

(assert (=> b!759877 (=> (not res!514330) (not e!423616))))

(declare-fun b!759878 () Bool)

(declare-fun call!34927 () Bool)

(assert (=> b!759878 (= e!423615 call!34927)))

(declare-fun bm!34924 () Bool)

(assert (=> bm!34924 (= call!34927 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!759879 () Bool)

(assert (=> b!759879 (= e!423616 call!34927)))

(assert (= (and d!100359 (not res!514329)) b!759876))

(assert (= (and b!759876 c!83155) b!759877))

(assert (= (and b!759876 (not c!83155)) b!759878))

(assert (= (and b!759877 res!514330) b!759879))

(assert (= (or b!759879 b!759878) bm!34924))

(declare-fun m!707225 () Bool)

(assert (=> b!759876 m!707225))

(assert (=> b!759876 m!707225))

(declare-fun m!707227 () Bool)

(assert (=> b!759876 m!707227))

(assert (=> b!759877 m!707225))

(declare-fun m!707229 () Bool)

(assert (=> b!759877 m!707229))

(declare-fun m!707231 () Bool)

(assert (=> b!759877 m!707231))

(assert (=> b!759877 m!707225))

(declare-fun m!707233 () Bool)

(assert (=> b!759877 m!707233))

(declare-fun m!707235 () Bool)

(assert (=> bm!34924 m!707235))

(assert (=> b!759531 d!100359))

(declare-fun d!100371 () Bool)

(assert (=> d!100371 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!759532 d!100371))

(declare-fun d!100373 () Bool)

(assert (=> d!100373 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!65902 d!100373))

(declare-fun d!100375 () Bool)

(assert (=> d!100375 (= (array_inv!15898 a!3186) (bvsge (size!20545 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!65902 d!100375))

(declare-fun b!759892 () Bool)

(declare-fun e!423626 () SeekEntryResult!7731)

(assert (=> b!759892 (= e!423626 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20124 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!759893 () Bool)

(declare-fun lt!338599 () SeekEntryResult!7731)

(assert (=> b!759893 (and (bvsge (index!33293 lt!338599) #b00000000000000000000000000000000) (bvslt (index!33293 lt!338599) (size!20545 a!3186)))))

(declare-fun res!514332 () Bool)

(assert (=> b!759893 (= res!514332 (= (select (arr!20124 a!3186) (index!33293 lt!338599)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423627 () Bool)

(assert (=> b!759893 (=> res!514332 e!423627)))

(declare-fun b!759894 () Bool)

(declare-fun e!423625 () Bool)

(assert (=> b!759894 (= e!423625 (bvsge (x!64202 lt!338599) #b01111111111111111111111111111110))))

(declare-fun d!100377 () Bool)

(assert (=> d!100377 e!423625))

(declare-fun c!83163 () Bool)

(assert (=> d!100377 (= c!83163 (and (is-Intermediate!7731 lt!338599) (undefined!8543 lt!338599)))))

(declare-fun e!423624 () SeekEntryResult!7731)

(assert (=> d!100377 (= lt!338599 e!423624)))

(declare-fun c!83164 () Bool)

(assert (=> d!100377 (= c!83164 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!338598 () (_ BitVec 64))

(assert (=> d!100377 (= lt!338598 (select (arr!20124 a!3186) index!1321))))

(assert (=> d!100377 (validMask!0 mask!3328)))

(assert (=> d!100377 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20124 a!3186) j!159) a!3186 mask!3328) lt!338599)))

(declare-fun b!759895 () Bool)

(assert (=> b!759895 (and (bvsge (index!33293 lt!338599) #b00000000000000000000000000000000) (bvslt (index!33293 lt!338599) (size!20545 a!3186)))))

(assert (=> b!759895 (= e!423627 (= (select (arr!20124 a!3186) (index!33293 lt!338599)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!759896 () Bool)

(assert (=> b!759896 (= e!423624 (Intermediate!7731 true index!1321 x!1131))))

(declare-fun b!759897 () Bool)

(assert (=> b!759897 (= e!423626 (Intermediate!7731 false index!1321 x!1131))))

(declare-fun b!759898 () Bool)

(declare-fun e!423628 () Bool)

(assert (=> b!759898 (= e!423625 e!423628)))

(declare-fun res!514331 () Bool)

(assert (=> b!759898 (= res!514331 (and (is-Intermediate!7731 lt!338599) (not (undefined!8543 lt!338599)) (bvslt (x!64202 lt!338599) #b01111111111111111111111111111110) (bvsge (x!64202 lt!338599) #b00000000000000000000000000000000) (bvsge (x!64202 lt!338599) x!1131)))))

(assert (=> b!759898 (=> (not res!514331) (not e!423628))))

(declare-fun b!759899 () Bool)

(assert (=> b!759899 (= e!423624 e!423626)))

(declare-fun c!83162 () Bool)

(assert (=> b!759899 (= c!83162 (or (= lt!338598 (select (arr!20124 a!3186) j!159)) (= (bvadd lt!338598 lt!338598) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759900 () Bool)

(assert (=> b!759900 (and (bvsge (index!33293 lt!338599) #b00000000000000000000000000000000) (bvslt (index!33293 lt!338599) (size!20545 a!3186)))))

(declare-fun res!514333 () Bool)

(assert (=> b!759900 (= res!514333 (= (select (arr!20124 a!3186) (index!33293 lt!338599)) (select (arr!20124 a!3186) j!159)))))

(assert (=> b!759900 (=> res!514333 e!423627)))

(assert (=> b!759900 (= e!423628 e!423627)))

(assert (= (and d!100377 c!83164) b!759896))

(assert (= (and d!100377 (not c!83164)) b!759899))

(assert (= (and b!759899 c!83162) b!759897))

(assert (= (and b!759899 (not c!83162)) b!759892))

(assert (= (and d!100377 c!83163) b!759894))

(assert (= (and d!100377 (not c!83163)) b!759898))

(assert (= (and b!759898 res!514331) b!759900))

(assert (= (and b!759900 (not res!514333)) b!759893))

(assert (= (and b!759893 (not res!514332)) b!759895))

(declare-fun m!707237 () Bool)

(assert (=> b!759900 m!707237))

(declare-fun m!707239 () Bool)

(assert (=> d!100377 m!707239))

(assert (=> d!100377 m!706983))

(assert (=> b!759892 m!707151))

(assert (=> b!759892 m!707151))

(assert (=> b!759892 m!706967))

(declare-fun m!707241 () Bool)

(assert (=> b!759892 m!707241))

(assert (=> b!759893 m!707237))

(assert (=> b!759895 m!707237))

(assert (=> b!759533 d!100377))

(declare-fun e!423634 () SeekEntryResult!7731)

(declare-fun b!759907 () Bool)

(assert (=> b!759907 (= e!423634 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20124 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20124 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!759908 () Bool)

(declare-fun lt!338604 () SeekEntryResult!7731)

(assert (=> b!759908 (and (bvsge (index!33293 lt!338604) #b00000000000000000000000000000000) (bvslt (index!33293 lt!338604) (size!20545 a!3186)))))

(declare-fun res!514335 () Bool)

(assert (=> b!759908 (= res!514335 (= (select (arr!20124 a!3186) (index!33293 lt!338604)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423635 () Bool)

(assert (=> b!759908 (=> res!514335 e!423635)))

(declare-fun b!759909 () Bool)

(declare-fun e!423633 () Bool)

(assert (=> b!759909 (= e!423633 (bvsge (x!64202 lt!338604) #b01111111111111111111111111111110))))

(declare-fun d!100379 () Bool)

(assert (=> d!100379 e!423633))

(declare-fun c!83169 () Bool)

(assert (=> d!100379 (= c!83169 (and (is-Intermediate!7731 lt!338604) (undefined!8543 lt!338604)))))

(declare-fun e!423632 () SeekEntryResult!7731)

(assert (=> d!100379 (= lt!338604 e!423632)))

(declare-fun c!83170 () Bool)

(assert (=> d!100379 (= c!83170 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!338603 () (_ BitVec 64))

(assert (=> d!100379 (= lt!338603 (select (arr!20124 a!3186) (toIndex!0 (select (arr!20124 a!3186) j!159) mask!3328)))))

(assert (=> d!100379 (validMask!0 mask!3328)))

(assert (=> d!100379 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20124 a!3186) j!159) mask!3328) (select (arr!20124 a!3186) j!159) a!3186 mask!3328) lt!338604)))

(declare-fun b!759910 () Bool)

(assert (=> b!759910 (and (bvsge (index!33293 lt!338604) #b00000000000000000000000000000000) (bvslt (index!33293 lt!338604) (size!20545 a!3186)))))

(assert (=> b!759910 (= e!423635 (= (select (arr!20124 a!3186) (index!33293 lt!338604)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!759911 () Bool)

(assert (=> b!759911 (= e!423632 (Intermediate!7731 true (toIndex!0 (select (arr!20124 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!759912 () Bool)

(assert (=> b!759912 (= e!423634 (Intermediate!7731 false (toIndex!0 (select (arr!20124 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!759913 () Bool)

(declare-fun e!423636 () Bool)

(assert (=> b!759913 (= e!423633 e!423636)))

(declare-fun res!514334 () Bool)

(assert (=> b!759913 (= res!514334 (and (is-Intermediate!7731 lt!338604) (not (undefined!8543 lt!338604)) (bvslt (x!64202 lt!338604) #b01111111111111111111111111111110) (bvsge (x!64202 lt!338604) #b00000000000000000000000000000000) (bvsge (x!64202 lt!338604) #b00000000000000000000000000000000)))))

(assert (=> b!759913 (=> (not res!514334) (not e!423636))))

(declare-fun b!759914 () Bool)

(assert (=> b!759914 (= e!423632 e!423634)))

(declare-fun c!83168 () Bool)

(assert (=> b!759914 (= c!83168 (or (= lt!338603 (select (arr!20124 a!3186) j!159)) (= (bvadd lt!338603 lt!338603) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759915 () Bool)

(assert (=> b!759915 (and (bvsge (index!33293 lt!338604) #b00000000000000000000000000000000) (bvslt (index!33293 lt!338604) (size!20545 a!3186)))))

(declare-fun res!514336 () Bool)

(assert (=> b!759915 (= res!514336 (= (select (arr!20124 a!3186) (index!33293 lt!338604)) (select (arr!20124 a!3186) j!159)))))

(assert (=> b!759915 (=> res!514336 e!423635)))

(assert (=> b!759915 (= e!423636 e!423635)))

(assert (= (and d!100379 c!83170) b!759911))

(assert (= (and d!100379 (not c!83170)) b!759914))

(assert (= (and b!759914 c!83168) b!759912))

(assert (= (and b!759914 (not c!83168)) b!759907))

(assert (= (and d!100379 c!83169) b!759909))

(assert (= (and d!100379 (not c!83169)) b!759913))

(assert (= (and b!759913 res!514334) b!759915))

(assert (= (and b!759915 (not res!514336)) b!759908))

(assert (= (and b!759908 (not res!514335)) b!759910))

(declare-fun m!707257 () Bool)

(assert (=> b!759915 m!707257))

(assert (=> d!100379 m!707003))

(declare-fun m!707259 () Bool)

(assert (=> d!100379 m!707259))

(assert (=> d!100379 m!706983))

(assert (=> b!759907 m!707003))

(declare-fun m!707261 () Bool)

(assert (=> b!759907 m!707261))

(assert (=> b!759907 m!707261))

(assert (=> b!759907 m!706967))

(declare-fun m!707263 () Bool)

(assert (=> b!759907 m!707263))

(assert (=> b!759908 m!707257))

(assert (=> b!759910 m!707257))

(assert (=> b!759539 d!100379))

(declare-fun d!100383 () Bool)

(declare-fun lt!338609 () (_ BitVec 32))

(declare-fun lt!338608 () (_ BitVec 32))

(assert (=> d!100383 (= lt!338609 (bvmul (bvxor lt!338608 (bvlshr lt!338608 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100383 (= lt!338608 ((_ extract 31 0) (bvand (bvxor (select (arr!20124 a!3186) j!159) (bvlshr (select (arr!20124 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100383 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514298 (let ((h!15251 ((_ extract 31 0) (bvand (bvxor (select (arr!20124 a!3186) j!159) (bvlshr (select (arr!20124 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64209 (bvmul (bvxor h!15251 (bvlshr h!15251 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64209 (bvlshr x!64209 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514298 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514298 #b00000000000000000000000000000000))))))

(assert (=> d!100383 (= (toIndex!0 (select (arr!20124 a!3186) j!159) mask!3328) (bvand (bvxor lt!338609 (bvlshr lt!338609 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!759539 d!100383))

(declare-fun b!759959 () Bool)

(declare-fun e!423664 () Bool)

(declare-fun contains!4065 (List!14179 (_ BitVec 64)) Bool)

(assert (=> b!759959 (= e!423664 (contains!4065 Nil!14176 (select (arr!20124 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!100385 () Bool)

(declare-fun res!514348 () Bool)

(declare-fun e!423663 () Bool)

(assert (=> d!100385 (=> res!514348 e!423663)))

(assert (=> d!100385 (= res!514348 (bvsge #b00000000000000000000000000000000 (size!20545 a!3186)))))

(assert (=> d!100385 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14176) e!423663)))

(declare-fun b!759960 () Bool)

(declare-fun e!423662 () Bool)

(assert (=> b!759960 (= e!423663 e!423662)))

(declare-fun res!514346 () Bool)

(assert (=> b!759960 (=> (not res!514346) (not e!423662))))

(assert (=> b!759960 (= res!514346 (not e!423664))))

(declare-fun res!514347 () Bool)

(assert (=> b!759960 (=> (not res!514347) (not e!423664))))

(assert (=> b!759960 (= res!514347 (validKeyInArray!0 (select (arr!20124 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!759961 () Bool)

(declare-fun e!423665 () Bool)

(declare-fun call!34930 () Bool)

(assert (=> b!759961 (= e!423665 call!34930)))

(declare-fun b!759962 () Bool)

(assert (=> b!759962 (= e!423665 call!34930)))

(declare-fun bm!34927 () Bool)

(declare-fun c!83188 () Bool)

(assert (=> bm!34927 (= call!34930 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!83188 (Cons!14175 (select (arr!20124 a!3186) #b00000000000000000000000000000000) Nil!14176) Nil!14176)))))

(declare-fun b!759963 () Bool)

(assert (=> b!759963 (= e!423662 e!423665)))

(assert (=> b!759963 (= c!83188 (validKeyInArray!0 (select (arr!20124 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!100385 (not res!514348)) b!759960))

(assert (= (and b!759960 res!514347) b!759959))

(assert (= (and b!759960 res!514346) b!759963))

(assert (= (and b!759963 c!83188) b!759961))

(assert (= (and b!759963 (not c!83188)) b!759962))

(assert (= (or b!759961 b!759962) bm!34927))

(assert (=> b!759959 m!707225))

(assert (=> b!759959 m!707225))

(declare-fun m!707289 () Bool)

(assert (=> b!759959 m!707289))

(assert (=> b!759960 m!707225))

(assert (=> b!759960 m!707225))

(assert (=> b!759960 m!707227))

(assert (=> bm!34927 m!707225))

(declare-fun m!707295 () Bool)

(assert (=> bm!34927 m!707295))

(assert (=> b!759963 m!707225))

(assert (=> b!759963 m!707225))

(assert (=> b!759963 m!707227))

(assert (=> b!759529 d!100385))

(declare-fun d!100389 () Bool)

(declare-fun res!514349 () Bool)

(declare-fun e!423668 () Bool)

(assert (=> d!100389 (=> res!514349 e!423668)))

(assert (=> d!100389 (= res!514349 (bvsge j!159 (size!20545 a!3186)))))

(assert (=> d!100389 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!423668)))

(declare-fun b!759964 () Bool)

(declare-fun e!423666 () Bool)

(assert (=> b!759964 (= e!423668 e!423666)))

(declare-fun c!83189 () Bool)

(assert (=> b!759964 (= c!83189 (validKeyInArray!0 (select (arr!20124 a!3186) j!159)))))

(declare-fun b!759965 () Bool)

(declare-fun e!423667 () Bool)

(assert (=> b!759965 (= e!423666 e!423667)))

(declare-fun lt!338623 () (_ BitVec 64))

(assert (=> b!759965 (= lt!338623 (select (arr!20124 a!3186) j!159))))

(declare-fun lt!338621 () Unit!26302)

(assert (=> b!759965 (= lt!338621 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!338623 j!159))))

(assert (=> b!759965 (arrayContainsKey!0 a!3186 lt!338623 #b00000000000000000000000000000000)))

(declare-fun lt!338622 () Unit!26302)

(assert (=> b!759965 (= lt!338622 lt!338621)))

(declare-fun res!514350 () Bool)

(assert (=> b!759965 (= res!514350 (= (seekEntryOrOpen!0 (select (arr!20124 a!3186) j!159) a!3186 mask!3328) (Found!7731 j!159)))))

(assert (=> b!759965 (=> (not res!514350) (not e!423667))))

(declare-fun b!759966 () Bool)

(declare-fun call!34931 () Bool)

(assert (=> b!759966 (= e!423666 call!34931)))

(declare-fun bm!34928 () Bool)

(assert (=> bm!34928 (= call!34931 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!759967 () Bool)

(assert (=> b!759967 (= e!423667 call!34931)))

(assert (= (and d!100389 (not res!514349)) b!759964))

(assert (= (and b!759964 c!83189) b!759965))

(assert (= (and b!759964 (not c!83189)) b!759966))

(assert (= (and b!759965 res!514350) b!759967))

(assert (= (or b!759967 b!759966) bm!34928))

(assert (=> b!759964 m!706967))

(assert (=> b!759964 m!706967))

(assert (=> b!759964 m!706991))

(assert (=> b!759965 m!706967))

(declare-fun m!707301 () Bool)

(assert (=> b!759965 m!707301))

(declare-fun m!707303 () Bool)

(assert (=> b!759965 m!707303))

(assert (=> b!759965 m!706967))

(assert (=> b!759965 m!706969))

(declare-fun m!707305 () Bool)

(assert (=> bm!34928 m!707305))

(assert (=> b!759530 d!100389))

(declare-fun d!100393 () Bool)

(assert (=> d!100393 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!338630 () Unit!26302)

(declare-fun choose!38 (array!42028 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26302)

(assert (=> d!100393 (= lt!338630 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!100393 (validMask!0 mask!3328)))

(assert (=> d!100393 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!338630)))

(declare-fun bs!21376 () Bool)

(assert (= bs!21376 d!100393))

(assert (=> bs!21376 m!706997))

(declare-fun m!707307 () Bool)

(assert (=> bs!21376 m!707307))

(assert (=> bs!21376 m!706983))

(assert (=> b!759530 d!100393))

(declare-fun b!759968 () Bool)

(declare-fun e!423671 () SeekEntryResult!7731)

(assert (=> b!759968 (= e!423671 Undefined!7731)))

(declare-fun b!759969 () Bool)

(declare-fun c!83191 () Bool)

(declare-fun lt!338635 () (_ BitVec 64))

(assert (=> b!759969 (= c!83191 (= lt!338635 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423669 () SeekEntryResult!7731)

(declare-fun e!423670 () SeekEntryResult!7731)

(assert (=> b!759969 (= e!423669 e!423670)))

(declare-fun b!759970 () Bool)

(declare-fun lt!338634 () SeekEntryResult!7731)

(assert (=> b!759970 (= e!423670 (seekKeyOrZeroReturnVacant!0 (x!64202 lt!338634) (index!33293 lt!338634) (index!33293 lt!338634) (select (arr!20124 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!759971 () Bool)

(assert (=> b!759971 (= e!423670 (MissingZero!7731 (index!33293 lt!338634)))))

(declare-fun b!759972 () Bool)

(assert (=> b!759972 (= e!423671 e!423669)))

(assert (=> b!759972 (= lt!338635 (select (arr!20124 a!3186) (index!33293 lt!338634)))))

(declare-fun c!83190 () Bool)

(assert (=> b!759972 (= c!83190 (= lt!338635 (select (arr!20124 a!3186) j!159)))))

(declare-fun d!100395 () Bool)

(declare-fun lt!338633 () SeekEntryResult!7731)

(assert (=> d!100395 (and (or (is-Undefined!7731 lt!338633) (not (is-Found!7731 lt!338633)) (and (bvsge (index!33292 lt!338633) #b00000000000000000000000000000000) (bvslt (index!33292 lt!338633) (size!20545 a!3186)))) (or (is-Undefined!7731 lt!338633) (is-Found!7731 lt!338633) (not (is-MissingZero!7731 lt!338633)) (and (bvsge (index!33291 lt!338633) #b00000000000000000000000000000000) (bvslt (index!33291 lt!338633) (size!20545 a!3186)))) (or (is-Undefined!7731 lt!338633) (is-Found!7731 lt!338633) (is-MissingZero!7731 lt!338633) (not (is-MissingVacant!7731 lt!338633)) (and (bvsge (index!33294 lt!338633) #b00000000000000000000000000000000) (bvslt (index!33294 lt!338633) (size!20545 a!3186)))) (or (is-Undefined!7731 lt!338633) (ite (is-Found!7731 lt!338633) (= (select (arr!20124 a!3186) (index!33292 lt!338633)) (select (arr!20124 a!3186) j!159)) (ite (is-MissingZero!7731 lt!338633) (= (select (arr!20124 a!3186) (index!33291 lt!338633)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7731 lt!338633) (= (select (arr!20124 a!3186) (index!33294 lt!338633)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100395 (= lt!338633 e!423671)))

(declare-fun c!83192 () Bool)

(assert (=> d!100395 (= c!83192 (and (is-Intermediate!7731 lt!338634) (undefined!8543 lt!338634)))))

(assert (=> d!100395 (= lt!338634 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20124 a!3186) j!159) mask!3328) (select (arr!20124 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!100395 (validMask!0 mask!3328)))

(assert (=> d!100395 (= (seekEntryOrOpen!0 (select (arr!20124 a!3186) j!159) a!3186 mask!3328) lt!338633)))

(declare-fun b!759973 () Bool)

(assert (=> b!759973 (= e!423669 (Found!7731 (index!33293 lt!338634)))))

(assert (= (and d!100395 c!83192) b!759968))

(assert (= (and d!100395 (not c!83192)) b!759972))

(assert (= (and b!759972 c!83190) b!759973))

(assert (= (and b!759972 (not c!83190)) b!759969))

(assert (= (and b!759969 c!83191) b!759971))

(assert (= (and b!759969 (not c!83191)) b!759970))

(assert (=> b!759970 m!706967))

(declare-fun m!707309 () Bool)

(assert (=> b!759970 m!707309))

(declare-fun m!707311 () Bool)

(assert (=> b!759972 m!707311))

(assert (=> d!100395 m!707003))

(assert (=> d!100395 m!706967))

(assert (=> d!100395 m!707005))

(assert (=> d!100395 m!706983))

(declare-fun m!707313 () Bool)

(assert (=> d!100395 m!707313))

(assert (=> d!100395 m!706967))

(assert (=> d!100395 m!707003))

(declare-fun m!707315 () Bool)

(assert (=> d!100395 m!707315))

(declare-fun m!707317 () Bool)

(assert (=> d!100395 m!707317))

(assert (=> b!759541 d!100395))

(declare-fun b!760008 () Bool)

(declare-fun e!423691 () SeekEntryResult!7731)

(assert (=> b!760008 (= e!423691 (MissingVacant!7731 resIntermediateIndex!5))))

(declare-fun lt!338649 () SeekEntryResult!7731)

(declare-fun d!100399 () Bool)

(assert (=> d!100399 (and (or (is-Undefined!7731 lt!338649) (not (is-Found!7731 lt!338649)) (and (bvsge (index!33292 lt!338649) #b00000000000000000000000000000000) (bvslt (index!33292 lt!338649) (size!20545 a!3186)))) (or (is-Undefined!7731 lt!338649) (is-Found!7731 lt!338649) (not (is-MissingVacant!7731 lt!338649)) (not (= (index!33294 lt!338649) resIntermediateIndex!5)) (and (bvsge (index!33294 lt!338649) #b00000000000000000000000000000000) (bvslt (index!33294 lt!338649) (size!20545 a!3186)))) (or (is-Undefined!7731 lt!338649) (ite (is-Found!7731 lt!338649) (= (select (arr!20124 a!3186) (index!33292 lt!338649)) (select (arr!20124 a!3186) j!159)) (and (is-MissingVacant!7731 lt!338649) (= (index!33294 lt!338649) resIntermediateIndex!5) (= (select (arr!20124 a!3186) (index!33294 lt!338649)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!423690 () SeekEntryResult!7731)

(assert (=> d!100399 (= lt!338649 e!423690)))

(declare-fun c!83210 () Bool)

(assert (=> d!100399 (= c!83210 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!338650 () (_ BitVec 64))

(assert (=> d!100399 (= lt!338650 (select (arr!20124 a!3186) resIntermediateIndex!5))))

(assert (=> d!100399 (validMask!0 mask!3328)))

(assert (=> d!100399 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20124 a!3186) j!159) a!3186 mask!3328) lt!338649)))

(declare-fun b!760009 () Bool)

(declare-fun c!83209 () Bool)

(assert (=> b!760009 (= c!83209 (= lt!338650 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423692 () SeekEntryResult!7731)

(assert (=> b!760009 (= e!423692 e!423691)))

(declare-fun b!760010 () Bool)

(assert (=> b!760010 (= e!423690 Undefined!7731)))

(declare-fun b!760011 () Bool)

(assert (=> b!760011 (= e!423691 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20124 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760012 () Bool)

(assert (=> b!760012 (= e!423692 (Found!7731 resIntermediateIndex!5))))

(declare-fun b!760013 () Bool)

(assert (=> b!760013 (= e!423690 e!423692)))

(declare-fun c!83211 () Bool)

(assert (=> b!760013 (= c!83211 (= lt!338650 (select (arr!20124 a!3186) j!159)))))

(assert (= (and d!100399 c!83210) b!760010))

(assert (= (and d!100399 (not c!83210)) b!760013))

(assert (= (and b!760013 c!83211) b!760012))

(assert (= (and b!760013 (not c!83211)) b!760009))

(assert (= (and b!760009 c!83209) b!760008))

(assert (= (and b!760009 (not c!83209)) b!760011))

(declare-fun m!707333 () Bool)

(assert (=> d!100399 m!707333))

(declare-fun m!707335 () Bool)

(assert (=> d!100399 m!707335))

(assert (=> d!100399 m!707001))

(assert (=> d!100399 m!706983))

(declare-fun m!707337 () Bool)

(assert (=> b!760011 m!707337))

(assert (=> b!760011 m!707337))

(assert (=> b!760011 m!706967))

(declare-fun m!707339 () Bool)

(assert (=> b!760011 m!707339))

(assert (=> b!759537 d!100399))

(declare-fun d!100405 () Bool)

(declare-fun res!514364 () Bool)

(declare-fun e!423707 () Bool)

(assert (=> d!100405 (=> res!514364 e!423707)))

(assert (=> d!100405 (= res!514364 (= (select (arr!20124 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!100405 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!423707)))

(declare-fun b!760036 () Bool)

(declare-fun e!423708 () Bool)

(assert (=> b!760036 (= e!423707 e!423708)))

(declare-fun res!514365 () Bool)

(assert (=> b!760036 (=> (not res!514365) (not e!423708))))

(assert (=> b!760036 (= res!514365 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20545 a!3186)))))

(declare-fun b!760037 () Bool)

(assert (=> b!760037 (= e!423708 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100405 (not res!514364)) b!760036))

(assert (= (and b!760036 res!514365) b!760037))

(assert (=> d!100405 m!707225))

(declare-fun m!707355 () Bool)

(assert (=> b!760037 m!707355))

(assert (=> b!759538 d!100405))

(declare-fun b!760038 () Bool)

(declare-fun e!423710 () SeekEntryResult!7731)

(assert (=> b!760038 (= e!423710 (MissingVacant!7731 resIntermediateIndex!5))))

(declare-fun lt!338657 () SeekEntryResult!7731)

(declare-fun d!100415 () Bool)

(assert (=> d!100415 (and (or (is-Undefined!7731 lt!338657) (not (is-Found!7731 lt!338657)) (and (bvsge (index!33292 lt!338657) #b00000000000000000000000000000000) (bvslt (index!33292 lt!338657) (size!20545 a!3186)))) (or (is-Undefined!7731 lt!338657) (is-Found!7731 lt!338657) (not (is-MissingVacant!7731 lt!338657)) (not (= (index!33294 lt!338657) resIntermediateIndex!5)) (and (bvsge (index!33294 lt!338657) #b00000000000000000000000000000000) (bvslt (index!33294 lt!338657) (size!20545 a!3186)))) (or (is-Undefined!7731 lt!338657) (ite (is-Found!7731 lt!338657) (= (select (arr!20124 a!3186) (index!33292 lt!338657)) (select (arr!20124 a!3186) j!159)) (and (is-MissingVacant!7731 lt!338657) (= (index!33294 lt!338657) resIntermediateIndex!5) (= (select (arr!20124 a!3186) (index!33294 lt!338657)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!423709 () SeekEntryResult!7731)

(assert (=> d!100415 (= lt!338657 e!423709)))

(declare-fun c!83219 () Bool)

(assert (=> d!100415 (= c!83219 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!338658 () (_ BitVec 64))

(assert (=> d!100415 (= lt!338658 (select (arr!20124 a!3186) index!1321))))

(assert (=> d!100415 (validMask!0 mask!3328)))

(assert (=> d!100415 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20124 a!3186) j!159) a!3186 mask!3328) lt!338657)))

(declare-fun b!760039 () Bool)

(declare-fun c!83218 () Bool)

(assert (=> b!760039 (= c!83218 (= lt!338658 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423711 () SeekEntryResult!7731)

(assert (=> b!760039 (= e!423711 e!423710)))

(declare-fun b!760040 () Bool)

(assert (=> b!760040 (= e!423709 Undefined!7731)))

(declare-fun b!760041 () Bool)

(assert (=> b!760041 (= e!423710 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20124 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760042 () Bool)

(assert (=> b!760042 (= e!423711 (Found!7731 index!1321))))

(declare-fun b!760043 () Bool)

(assert (=> b!760043 (= e!423709 e!423711)))

(declare-fun c!83220 () Bool)

(assert (=> b!760043 (= c!83220 (= lt!338658 (select (arr!20124 a!3186) j!159)))))

(assert (= (and d!100415 c!83219) b!760040))

(assert (= (and d!100415 (not c!83219)) b!760043))

(assert (= (and b!760043 c!83220) b!760042))

(assert (= (and b!760043 (not c!83220)) b!760039))

(assert (= (and b!760039 c!83218) b!760038))

(assert (= (and b!760039 (not c!83218)) b!760041))

(declare-fun m!707357 () Bool)

(assert (=> d!100415 m!707357))

(declare-fun m!707359 () Bool)

(assert (=> d!100415 m!707359))

(assert (=> d!100415 m!707239))

(assert (=> d!100415 m!706983))

(assert (=> b!760041 m!707151))

(assert (=> b!760041 m!707151))

(assert (=> b!760041 m!706967))

(declare-fun m!707361 () Bool)

(assert (=> b!760041 m!707361))

(assert (=> b!759527 d!100415))

(push 1)

(assert (not d!100393))

(assert (not b!759965))

(assert (not b!760041))

(assert (not b!759752))

(assert (not b!760011))

(assert (not d!100377))

(assert (not b!759877))

(assert (not b!759970))

(assert (not d!100341))

(assert (not d!100415))

(assert (not d!100315))

(assert (not b!759963))

(assert (not b!759960))

(assert (not d!100379))

(assert (not d!100395))

(assert (not bm!34927))

(assert (not b!759852))

(assert (not b!759767))

(assert (not b!759959))

(assert (not d!100333))

(assert (not b!760037))

(assert (not b!759964))

(assert (not d!100399))

(assert (not b!759907))

(assert (not bm!34928))

(assert (not b!759892))

(assert (not b!759876))

(assert (not bm!34924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

