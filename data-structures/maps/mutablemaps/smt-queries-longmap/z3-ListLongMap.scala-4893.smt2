; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67488 () Bool)

(assert start!67488)

(declare-datatypes ((array!42609 0))(
  ( (array!42610 (arr!20392 (Array (_ BitVec 32) (_ BitVec 64))) (size!20813 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42609)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!434245 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7999 0))(
  ( (MissingZero!7999 (index!34363 (_ BitVec 32))) (Found!7999 (index!34364 (_ BitVec 32))) (Intermediate!7999 (undefined!8811 Bool) (index!34365 (_ BitVec 32)) (x!65338 (_ BitVec 32))) (Undefined!7999) (MissingVacant!7999 (index!34366 (_ BitVec 32))) )
))
(declare-fun lt!347926 () SeekEntryResult!7999)

(declare-fun b!780670 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42609 (_ BitVec 32)) SeekEntryResult!7999)

(assert (=> b!780670 (= e!434245 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20392 a!3186) j!159) a!3186 mask!3328) lt!347926))))

(declare-fun b!780671 () Bool)

(declare-fun res!528368 () Bool)

(declare-fun e!434247 () Bool)

(assert (=> b!780671 (=> (not res!528368) (not e!434247))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!780671 (= res!528368 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20392 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!780672 () Bool)

(declare-fun res!528370 () Bool)

(declare-fun e!434249 () Bool)

(assert (=> b!780672 (=> (not res!528370) (not e!434249))))

(declare-datatypes ((List!14447 0))(
  ( (Nil!14444) (Cons!14443 (h!15560 (_ BitVec 64)) (t!20770 List!14447)) )
))
(declare-fun arrayNoDuplicates!0 (array!42609 (_ BitVec 32) List!14447) Bool)

(assert (=> b!780672 (= res!528370 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14444))))

(declare-fun b!780673 () Bool)

(declare-fun res!528360 () Bool)

(declare-fun e!434250 () Bool)

(assert (=> b!780673 (=> res!528360 e!434250)))

(declare-fun lt!347925 () SeekEntryResult!7999)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42609 (_ BitVec 32)) SeekEntryResult!7999)

(assert (=> b!780673 (= res!528360 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20392 a!3186) j!159) a!3186 mask!3328) lt!347925)))))

(declare-fun b!780674 () Bool)

(assert (=> b!780674 (= e!434245 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20392 a!3186) j!159) a!3186 mask!3328) (Found!7999 j!159)))))

(declare-fun b!780675 () Bool)

(assert (=> b!780675 (= e!434249 e!434247)))

(declare-fun res!528369 () Bool)

(assert (=> b!780675 (=> (not res!528369) (not e!434247))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780675 (= res!528369 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20392 a!3186) j!159) mask!3328) (select (arr!20392 a!3186) j!159) a!3186 mask!3328) lt!347926))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!780675 (= lt!347926 (Intermediate!7999 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!780676 () Bool)

(declare-fun e!434244 () Bool)

(assert (=> b!780676 (= e!434244 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20392 a!3186) j!159) a!3186 mask!3328) lt!347925))))

(declare-fun b!780677 () Bool)

(declare-fun res!528366 () Bool)

(assert (=> b!780677 (=> (not res!528366) (not e!434247))))

(assert (=> b!780677 (= res!528366 e!434245)))

(declare-fun c!86562 () Bool)

(assert (=> b!780677 (= c!86562 (bvsle x!1131 resIntermediateX!5))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun b!780678 () Bool)

(assert (=> b!780678 (= e!434250 (= (select (store (arr!20392 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!26906 0))(
  ( (Unit!26907) )
))
(declare-fun lt!347922 () Unit!26906)

(declare-fun e!434251 () Unit!26906)

(assert (=> b!780678 (= lt!347922 e!434251)))

(declare-fun c!86561 () Bool)

(assert (=> b!780678 (= c!86561 (= (select (store (arr!20392 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!780680 () Bool)

(declare-fun res!528358 () Bool)

(declare-fun e!434248 () Bool)

(assert (=> b!780680 (=> (not res!528358) (not e!434248))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!780680 (= res!528358 (validKeyInArray!0 k0!2102))))

(declare-fun b!780681 () Bool)

(assert (=> b!780681 (= e!434248 e!434249)))

(declare-fun res!528357 () Bool)

(assert (=> b!780681 (=> (not res!528357) (not e!434249))))

(declare-fun lt!347928 () SeekEntryResult!7999)

(assert (=> b!780681 (= res!528357 (or (= lt!347928 (MissingZero!7999 i!1173)) (= lt!347928 (MissingVacant!7999 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42609 (_ BitVec 32)) SeekEntryResult!7999)

(assert (=> b!780681 (= lt!347928 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!780682 () Bool)

(declare-fun res!528359 () Bool)

(assert (=> b!780682 (=> (not res!528359) (not e!434248))))

(assert (=> b!780682 (= res!528359 (validKeyInArray!0 (select (arr!20392 a!3186) j!159)))))

(declare-fun b!780683 () Bool)

(declare-fun e!434246 () Bool)

(assert (=> b!780683 (= e!434246 (not e!434250))))

(declare-fun res!528372 () Bool)

(assert (=> b!780683 (=> res!528372 e!434250)))

(declare-fun lt!347920 () SeekEntryResult!7999)

(get-info :version)

(assert (=> b!780683 (= res!528372 (or (not ((_ is Intermediate!7999) lt!347920)) (bvslt x!1131 (x!65338 lt!347920)) (not (= x!1131 (x!65338 lt!347920))) (not (= index!1321 (index!34365 lt!347920)))))))

(assert (=> b!780683 e!434244))

(declare-fun res!528362 () Bool)

(assert (=> b!780683 (=> (not res!528362) (not e!434244))))

(declare-fun lt!347929 () SeekEntryResult!7999)

(assert (=> b!780683 (= res!528362 (= lt!347929 lt!347925))))

(assert (=> b!780683 (= lt!347925 (Found!7999 j!159))))

(assert (=> b!780683 (= lt!347929 (seekEntryOrOpen!0 (select (arr!20392 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42609 (_ BitVec 32)) Bool)

(assert (=> b!780683 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!347927 () Unit!26906)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42609 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26906)

(assert (=> b!780683 (= lt!347927 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!780684 () Bool)

(declare-fun res!528373 () Bool)

(assert (=> b!780684 (=> (not res!528373) (not e!434249))))

(assert (=> b!780684 (= res!528373 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20813 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20813 a!3186))))))

(declare-fun b!780685 () Bool)

(declare-fun res!528363 () Bool)

(assert (=> b!780685 (=> res!528363 e!434250)))

(declare-fun lt!347921 () (_ BitVec 64))

(assert (=> b!780685 (= res!528363 (= (select (store (arr!20392 a!3186) i!1173 k0!2102) index!1321) lt!347921))))

(declare-fun b!780686 () Bool)

(assert (=> b!780686 (= e!434247 e!434246)))

(declare-fun res!528371 () Bool)

(assert (=> b!780686 (=> (not res!528371) (not e!434246))))

(declare-fun lt!347923 () SeekEntryResult!7999)

(assert (=> b!780686 (= res!528371 (= lt!347923 lt!347920))))

(declare-fun lt!347924 () array!42609)

(assert (=> b!780686 (= lt!347920 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347921 lt!347924 mask!3328))))

(assert (=> b!780686 (= lt!347923 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347921 mask!3328) lt!347921 lt!347924 mask!3328))))

(assert (=> b!780686 (= lt!347921 (select (store (arr!20392 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!780686 (= lt!347924 (array!42610 (store (arr!20392 a!3186) i!1173 k0!2102) (size!20813 a!3186)))))

(declare-fun b!780687 () Bool)

(declare-fun Unit!26908 () Unit!26906)

(assert (=> b!780687 (= e!434251 Unit!26908)))

(declare-fun b!780688 () Bool)

(declare-fun res!528364 () Bool)

(assert (=> b!780688 (=> (not res!528364) (not e!434248))))

(assert (=> b!780688 (= res!528364 (and (= (size!20813 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20813 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20813 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!780689 () Bool)

(declare-fun Unit!26909 () Unit!26906)

(assert (=> b!780689 (= e!434251 Unit!26909)))

(assert (=> b!780689 false))

(declare-fun b!780690 () Bool)

(declare-fun res!528361 () Bool)

(assert (=> b!780690 (=> (not res!528361) (not e!434248))))

(declare-fun arrayContainsKey!0 (array!42609 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!780690 (= res!528361 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!780679 () Bool)

(declare-fun res!528367 () Bool)

(assert (=> b!780679 (=> (not res!528367) (not e!434249))))

(assert (=> b!780679 (= res!528367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!528365 () Bool)

(assert (=> start!67488 (=> (not res!528365) (not e!434248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67488 (= res!528365 (validMask!0 mask!3328))))

(assert (=> start!67488 e!434248))

(assert (=> start!67488 true))

(declare-fun array_inv!16166 (array!42609) Bool)

(assert (=> start!67488 (array_inv!16166 a!3186)))

(assert (= (and start!67488 res!528365) b!780688))

(assert (= (and b!780688 res!528364) b!780682))

(assert (= (and b!780682 res!528359) b!780680))

(assert (= (and b!780680 res!528358) b!780690))

(assert (= (and b!780690 res!528361) b!780681))

(assert (= (and b!780681 res!528357) b!780679))

(assert (= (and b!780679 res!528367) b!780672))

(assert (= (and b!780672 res!528370) b!780684))

(assert (= (and b!780684 res!528373) b!780675))

(assert (= (and b!780675 res!528369) b!780671))

(assert (= (and b!780671 res!528368) b!780677))

(assert (= (and b!780677 c!86562) b!780670))

(assert (= (and b!780677 (not c!86562)) b!780674))

(assert (= (and b!780677 res!528366) b!780686))

(assert (= (and b!780686 res!528371) b!780683))

(assert (= (and b!780683 res!528362) b!780676))

(assert (= (and b!780683 (not res!528372)) b!780673))

(assert (= (and b!780673 (not res!528360)) b!780685))

(assert (= (and b!780685 (not res!528363)) b!780678))

(assert (= (and b!780678 c!86561) b!780689))

(assert (= (and b!780678 (not c!86561)) b!780687))

(declare-fun m!723961 () Bool)

(assert (=> b!780680 m!723961))

(declare-fun m!723963 () Bool)

(assert (=> b!780690 m!723963))

(declare-fun m!723965 () Bool)

(assert (=> b!780671 m!723965))

(declare-fun m!723967 () Bool)

(assert (=> b!780683 m!723967))

(assert (=> b!780683 m!723967))

(declare-fun m!723969 () Bool)

(assert (=> b!780683 m!723969))

(declare-fun m!723971 () Bool)

(assert (=> b!780683 m!723971))

(declare-fun m!723973 () Bool)

(assert (=> b!780683 m!723973))

(declare-fun m!723975 () Bool)

(assert (=> start!67488 m!723975))

(declare-fun m!723977 () Bool)

(assert (=> start!67488 m!723977))

(assert (=> b!780674 m!723967))

(assert (=> b!780674 m!723967))

(declare-fun m!723979 () Bool)

(assert (=> b!780674 m!723979))

(declare-fun m!723981 () Bool)

(assert (=> b!780678 m!723981))

(declare-fun m!723983 () Bool)

(assert (=> b!780678 m!723983))

(assert (=> b!780673 m!723967))

(assert (=> b!780673 m!723967))

(assert (=> b!780673 m!723979))

(declare-fun m!723985 () Bool)

(assert (=> b!780681 m!723985))

(assert (=> b!780682 m!723967))

(assert (=> b!780682 m!723967))

(declare-fun m!723987 () Bool)

(assert (=> b!780682 m!723987))

(assert (=> b!780676 m!723967))

(assert (=> b!780676 m!723967))

(declare-fun m!723989 () Bool)

(assert (=> b!780676 m!723989))

(assert (=> b!780670 m!723967))

(assert (=> b!780670 m!723967))

(declare-fun m!723991 () Bool)

(assert (=> b!780670 m!723991))

(declare-fun m!723993 () Bool)

(assert (=> b!780679 m!723993))

(declare-fun m!723995 () Bool)

(assert (=> b!780672 m!723995))

(assert (=> b!780685 m!723981))

(assert (=> b!780685 m!723983))

(assert (=> b!780686 m!723981))

(declare-fun m!723997 () Bool)

(assert (=> b!780686 m!723997))

(declare-fun m!723999 () Bool)

(assert (=> b!780686 m!723999))

(declare-fun m!724001 () Bool)

(assert (=> b!780686 m!724001))

(declare-fun m!724003 () Bool)

(assert (=> b!780686 m!724003))

(assert (=> b!780686 m!724001))

(assert (=> b!780675 m!723967))

(assert (=> b!780675 m!723967))

(declare-fun m!724005 () Bool)

(assert (=> b!780675 m!724005))

(assert (=> b!780675 m!724005))

(assert (=> b!780675 m!723967))

(declare-fun m!724007 () Bool)

(assert (=> b!780675 m!724007))

(check-sat (not b!780686) (not b!780680) (not b!780690) (not b!780679) (not b!780675) (not b!780673) (not b!780681) (not b!780682) (not b!780674) (not b!780672) (not b!780683) (not b!780676) (not start!67488) (not b!780670))
(check-sat)
(get-model)

(declare-fun b!780764 () Bool)

(declare-fun e!434290 () Bool)

(declare-fun call!35238 () Bool)

(assert (=> b!780764 (= e!434290 call!35238)))

(declare-fun b!780765 () Bool)

(declare-fun e!434287 () Bool)

(declare-fun contains!4106 (List!14447 (_ BitVec 64)) Bool)

(assert (=> b!780765 (= e!434287 (contains!4106 Nil!14444 (select (arr!20392 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35235 () Bool)

(declare-fun c!86571 () Bool)

(assert (=> bm!35235 (= call!35238 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!86571 (Cons!14443 (select (arr!20392 a!3186) #b00000000000000000000000000000000) Nil!14444) Nil!14444)))))

(declare-fun b!780766 () Bool)

(assert (=> b!780766 (= e!434290 call!35238)))

(declare-fun d!102435 () Bool)

(declare-fun res!528431 () Bool)

(declare-fun e!434288 () Bool)

(assert (=> d!102435 (=> res!528431 e!434288)))

(assert (=> d!102435 (= res!528431 (bvsge #b00000000000000000000000000000000 (size!20813 a!3186)))))

(assert (=> d!102435 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14444) e!434288)))

(declare-fun b!780767 () Bool)

(declare-fun e!434289 () Bool)

(assert (=> b!780767 (= e!434288 e!434289)))

(declare-fun res!528433 () Bool)

(assert (=> b!780767 (=> (not res!528433) (not e!434289))))

(assert (=> b!780767 (= res!528433 (not e!434287))))

(declare-fun res!528432 () Bool)

(assert (=> b!780767 (=> (not res!528432) (not e!434287))))

(assert (=> b!780767 (= res!528432 (validKeyInArray!0 (select (arr!20392 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!780768 () Bool)

(assert (=> b!780768 (= e!434289 e!434290)))

(assert (=> b!780768 (= c!86571 (validKeyInArray!0 (select (arr!20392 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!102435 (not res!528431)) b!780767))

(assert (= (and b!780767 res!528432) b!780765))

(assert (= (and b!780767 res!528433) b!780768))

(assert (= (and b!780768 c!86571) b!780766))

(assert (= (and b!780768 (not c!86571)) b!780764))

(assert (= (or b!780766 b!780764) bm!35235))

(declare-fun m!724057 () Bool)

(assert (=> b!780765 m!724057))

(assert (=> b!780765 m!724057))

(declare-fun m!724059 () Bool)

(assert (=> b!780765 m!724059))

(assert (=> bm!35235 m!724057))

(declare-fun m!724061 () Bool)

(assert (=> bm!35235 m!724061))

(assert (=> b!780767 m!724057))

(assert (=> b!780767 m!724057))

(declare-fun m!724063 () Bool)

(assert (=> b!780767 m!724063))

(assert (=> b!780768 m!724057))

(assert (=> b!780768 m!724057))

(assert (=> b!780768 m!724063))

(assert (=> b!780672 d!102435))

(declare-fun b!780781 () Bool)

(declare-fun e!434299 () SeekEntryResult!7999)

(assert (=> b!780781 (= e!434299 Undefined!7999)))

(declare-fun d!102437 () Bool)

(declare-fun lt!347968 () SeekEntryResult!7999)

(assert (=> d!102437 (and (or ((_ is Undefined!7999) lt!347968) (not ((_ is Found!7999) lt!347968)) (and (bvsge (index!34364 lt!347968) #b00000000000000000000000000000000) (bvslt (index!34364 lt!347968) (size!20813 a!3186)))) (or ((_ is Undefined!7999) lt!347968) ((_ is Found!7999) lt!347968) (not ((_ is MissingZero!7999) lt!347968)) (and (bvsge (index!34363 lt!347968) #b00000000000000000000000000000000) (bvslt (index!34363 lt!347968) (size!20813 a!3186)))) (or ((_ is Undefined!7999) lt!347968) ((_ is Found!7999) lt!347968) ((_ is MissingZero!7999) lt!347968) (not ((_ is MissingVacant!7999) lt!347968)) (and (bvsge (index!34366 lt!347968) #b00000000000000000000000000000000) (bvslt (index!34366 lt!347968) (size!20813 a!3186)))) (or ((_ is Undefined!7999) lt!347968) (ite ((_ is Found!7999) lt!347968) (= (select (arr!20392 a!3186) (index!34364 lt!347968)) (select (arr!20392 a!3186) j!159)) (ite ((_ is MissingZero!7999) lt!347968) (= (select (arr!20392 a!3186) (index!34363 lt!347968)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7999) lt!347968) (= (select (arr!20392 a!3186) (index!34366 lt!347968)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102437 (= lt!347968 e!434299)))

(declare-fun c!86578 () Bool)

(declare-fun lt!347966 () SeekEntryResult!7999)

(assert (=> d!102437 (= c!86578 (and ((_ is Intermediate!7999) lt!347966) (undefined!8811 lt!347966)))))

(assert (=> d!102437 (= lt!347966 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20392 a!3186) j!159) mask!3328) (select (arr!20392 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102437 (validMask!0 mask!3328)))

(assert (=> d!102437 (= (seekEntryOrOpen!0 (select (arr!20392 a!3186) j!159) a!3186 mask!3328) lt!347968)))

(declare-fun b!780782 () Bool)

(declare-fun e!434297 () SeekEntryResult!7999)

(assert (=> b!780782 (= e!434299 e!434297)))

(declare-fun lt!347967 () (_ BitVec 64))

(assert (=> b!780782 (= lt!347967 (select (arr!20392 a!3186) (index!34365 lt!347966)))))

(declare-fun c!86579 () Bool)

(assert (=> b!780782 (= c!86579 (= lt!347967 (select (arr!20392 a!3186) j!159)))))

(declare-fun e!434298 () SeekEntryResult!7999)

(declare-fun b!780783 () Bool)

(assert (=> b!780783 (= e!434298 (seekKeyOrZeroReturnVacant!0 (x!65338 lt!347966) (index!34365 lt!347966) (index!34365 lt!347966) (select (arr!20392 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!780784 () Bool)

(assert (=> b!780784 (= e!434297 (Found!7999 (index!34365 lt!347966)))))

(declare-fun b!780785 () Bool)

(assert (=> b!780785 (= e!434298 (MissingZero!7999 (index!34365 lt!347966)))))

(declare-fun b!780786 () Bool)

(declare-fun c!86580 () Bool)

(assert (=> b!780786 (= c!86580 (= lt!347967 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!780786 (= e!434297 e!434298)))

(assert (= (and d!102437 c!86578) b!780781))

(assert (= (and d!102437 (not c!86578)) b!780782))

(assert (= (and b!780782 c!86579) b!780784))

(assert (= (and b!780782 (not c!86579)) b!780786))

(assert (= (and b!780786 c!86580) b!780785))

(assert (= (and b!780786 (not c!86580)) b!780783))

(assert (=> d!102437 m!724005))

(assert (=> d!102437 m!723967))

(assert (=> d!102437 m!724007))

(assert (=> d!102437 m!723975))

(assert (=> d!102437 m!723967))

(assert (=> d!102437 m!724005))

(declare-fun m!724065 () Bool)

(assert (=> d!102437 m!724065))

(declare-fun m!724067 () Bool)

(assert (=> d!102437 m!724067))

(declare-fun m!724069 () Bool)

(assert (=> d!102437 m!724069))

(declare-fun m!724071 () Bool)

(assert (=> b!780782 m!724071))

(assert (=> b!780783 m!723967))

(declare-fun m!724073 () Bool)

(assert (=> b!780783 m!724073))

(assert (=> b!780683 d!102437))

(declare-fun bm!35238 () Bool)

(declare-fun call!35241 () Bool)

(assert (=> bm!35238 (= call!35241 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!780801 () Bool)

(declare-fun e!434312 () Bool)

(declare-fun e!434313 () Bool)

(assert (=> b!780801 (= e!434312 e!434313)))

(declare-fun lt!347977 () (_ BitVec 64))

(assert (=> b!780801 (= lt!347977 (select (arr!20392 a!3186) j!159))))

(declare-fun lt!347975 () Unit!26906)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42609 (_ BitVec 64) (_ BitVec 32)) Unit!26906)

(assert (=> b!780801 (= lt!347975 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!347977 j!159))))

(assert (=> b!780801 (arrayContainsKey!0 a!3186 lt!347977 #b00000000000000000000000000000000)))

(declare-fun lt!347976 () Unit!26906)

(assert (=> b!780801 (= lt!347976 lt!347975)))

(declare-fun res!528445 () Bool)

(assert (=> b!780801 (= res!528445 (= (seekEntryOrOpen!0 (select (arr!20392 a!3186) j!159) a!3186 mask!3328) (Found!7999 j!159)))))

(assert (=> b!780801 (=> (not res!528445) (not e!434313))))

(declare-fun d!102439 () Bool)

(declare-fun res!528444 () Bool)

(declare-fun e!434314 () Bool)

(assert (=> d!102439 (=> res!528444 e!434314)))

(assert (=> d!102439 (= res!528444 (bvsge j!159 (size!20813 a!3186)))))

(assert (=> d!102439 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!434314)))

(declare-fun b!780802 () Bool)

(assert (=> b!780802 (= e!434313 call!35241)))

(declare-fun b!780803 () Bool)

(assert (=> b!780803 (= e!434312 call!35241)))

(declare-fun b!780804 () Bool)

(assert (=> b!780804 (= e!434314 e!434312)))

(declare-fun c!86583 () Bool)

(assert (=> b!780804 (= c!86583 (validKeyInArray!0 (select (arr!20392 a!3186) j!159)))))

(assert (= (and d!102439 (not res!528444)) b!780804))

(assert (= (and b!780804 c!86583) b!780801))

(assert (= (and b!780804 (not c!86583)) b!780803))

(assert (= (and b!780801 res!528445) b!780802))

(assert (= (or b!780802 b!780803) bm!35238))

(declare-fun m!724079 () Bool)

(assert (=> bm!35238 m!724079))

(assert (=> b!780801 m!723967))

(declare-fun m!724081 () Bool)

(assert (=> b!780801 m!724081))

(declare-fun m!724083 () Bool)

(assert (=> b!780801 m!724083))

(assert (=> b!780801 m!723967))

(assert (=> b!780801 m!723969))

(assert (=> b!780804 m!723967))

(assert (=> b!780804 m!723967))

(assert (=> b!780804 m!723987))

(assert (=> b!780683 d!102439))

(declare-fun d!102447 () Bool)

(assert (=> d!102447 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!347980 () Unit!26906)

(declare-fun choose!38 (array!42609 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26906)

(assert (=> d!102447 (= lt!347980 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102447 (validMask!0 mask!3328)))

(assert (=> d!102447 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!347980)))

(declare-fun bs!21721 () Bool)

(assert (= bs!21721 d!102447))

(assert (=> bs!21721 m!723971))

(declare-fun m!724085 () Bool)

(assert (=> bs!21721 m!724085))

(assert (=> bs!21721 m!723975))

(assert (=> b!780683 d!102447))

(declare-fun d!102449 () Bool)

(assert (=> d!102449 (= (validKeyInArray!0 (select (arr!20392 a!3186) j!159)) (and (not (= (select (arr!20392 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20392 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!780682 d!102449))

(declare-fun b!780835 () Bool)

(declare-fun e!434332 () SeekEntryResult!7999)

(assert (=> b!780835 (= e!434332 (Found!7999 index!1321))))

(declare-fun b!780836 () Bool)

(declare-fun e!434330 () SeekEntryResult!7999)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780836 (= e!434330 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20392 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!780837 () Bool)

(declare-fun e!434331 () SeekEntryResult!7999)

(assert (=> b!780837 (= e!434331 e!434332)))

(declare-fun lt!347992 () (_ BitVec 64))

(declare-fun c!86599 () Bool)

(assert (=> b!780837 (= c!86599 (= lt!347992 (select (arr!20392 a!3186) j!159)))))

(declare-fun b!780838 () Bool)

(declare-fun c!86600 () Bool)

(assert (=> b!780838 (= c!86600 (= lt!347992 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!780838 (= e!434332 e!434330)))

(declare-fun lt!347991 () SeekEntryResult!7999)

(declare-fun d!102451 () Bool)

(assert (=> d!102451 (and (or ((_ is Undefined!7999) lt!347991) (not ((_ is Found!7999) lt!347991)) (and (bvsge (index!34364 lt!347991) #b00000000000000000000000000000000) (bvslt (index!34364 lt!347991) (size!20813 a!3186)))) (or ((_ is Undefined!7999) lt!347991) ((_ is Found!7999) lt!347991) (not ((_ is MissingVacant!7999) lt!347991)) (not (= (index!34366 lt!347991) resIntermediateIndex!5)) (and (bvsge (index!34366 lt!347991) #b00000000000000000000000000000000) (bvslt (index!34366 lt!347991) (size!20813 a!3186)))) (or ((_ is Undefined!7999) lt!347991) (ite ((_ is Found!7999) lt!347991) (= (select (arr!20392 a!3186) (index!34364 lt!347991)) (select (arr!20392 a!3186) j!159)) (and ((_ is MissingVacant!7999) lt!347991) (= (index!34366 lt!347991) resIntermediateIndex!5) (= (select (arr!20392 a!3186) (index!34366 lt!347991)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102451 (= lt!347991 e!434331)))

(declare-fun c!86601 () Bool)

(assert (=> d!102451 (= c!86601 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102451 (= lt!347992 (select (arr!20392 a!3186) index!1321))))

(assert (=> d!102451 (validMask!0 mask!3328)))

(assert (=> d!102451 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20392 a!3186) j!159) a!3186 mask!3328) lt!347991)))

(declare-fun b!780839 () Bool)

(assert (=> b!780839 (= e!434331 Undefined!7999)))

(declare-fun b!780840 () Bool)

(assert (=> b!780840 (= e!434330 (MissingVacant!7999 resIntermediateIndex!5))))

(assert (= (and d!102451 c!86601) b!780839))

(assert (= (and d!102451 (not c!86601)) b!780837))

(assert (= (and b!780837 c!86599) b!780835))

(assert (= (and b!780837 (not c!86599)) b!780838))

(assert (= (and b!780838 c!86600) b!780840))

(assert (= (and b!780838 (not c!86600)) b!780836))

(declare-fun m!724097 () Bool)

(assert (=> b!780836 m!724097))

(assert (=> b!780836 m!724097))

(assert (=> b!780836 m!723967))

(declare-fun m!724099 () Bool)

(assert (=> b!780836 m!724099))

(declare-fun m!724101 () Bool)

(assert (=> d!102451 m!724101))

(declare-fun m!724103 () Bool)

(assert (=> d!102451 m!724103))

(declare-fun m!724105 () Bool)

(assert (=> d!102451 m!724105))

(assert (=> d!102451 m!723975))

(assert (=> b!780673 d!102451))

(declare-fun d!102457 () Bool)

(assert (=> d!102457 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67488 d!102457))

(declare-fun d!102463 () Bool)

(assert (=> d!102463 (= (array_inv!16166 a!3186) (bvsge (size!20813 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67488 d!102463))

(declare-fun d!102465 () Bool)

(assert (=> d!102465 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!780680 d!102465))

(declare-fun d!102467 () Bool)

(declare-fun res!528463 () Bool)

(declare-fun e!434363 () Bool)

(assert (=> d!102467 (=> res!528463 e!434363)))

(assert (=> d!102467 (= res!528463 (= (select (arr!20392 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!102467 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!434363)))

(declare-fun b!780893 () Bool)

(declare-fun e!434364 () Bool)

(assert (=> b!780893 (= e!434363 e!434364)))

(declare-fun res!528464 () Bool)

(assert (=> b!780893 (=> (not res!528464) (not e!434364))))

(assert (=> b!780893 (= res!528464 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20813 a!3186)))))

(declare-fun b!780894 () Bool)

(assert (=> b!780894 (= e!434364 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102467 (not res!528463)) b!780893))

(assert (= (and b!780893 res!528464) b!780894))

(assert (=> d!102467 m!724057))

(declare-fun m!724123 () Bool)

(assert (=> b!780894 m!724123))

(assert (=> b!780690 d!102467))

(declare-fun b!780958 () Bool)

(declare-fun e!434409 () SeekEntryResult!7999)

(assert (=> b!780958 (= e!434409 (Intermediate!7999 true index!1321 x!1131))))

(declare-fun b!780959 () Bool)

(declare-fun e!434408 () SeekEntryResult!7999)

(assert (=> b!780959 (= e!434409 e!434408)))

(declare-fun c!86642 () Bool)

(declare-fun lt!348036 () (_ BitVec 64))

(assert (=> b!780959 (= c!86642 (or (= lt!348036 (select (arr!20392 a!3186) j!159)) (= (bvadd lt!348036 lt!348036) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!780960 () Bool)

(assert (=> b!780960 (= e!434408 (Intermediate!7999 false index!1321 x!1131))))

(declare-fun d!102469 () Bool)

(declare-fun e!434406 () Bool)

(assert (=> d!102469 e!434406))

(declare-fun c!86643 () Bool)

(declare-fun lt!348035 () SeekEntryResult!7999)

(assert (=> d!102469 (= c!86643 (and ((_ is Intermediate!7999) lt!348035) (undefined!8811 lt!348035)))))

(assert (=> d!102469 (= lt!348035 e!434409)))

(declare-fun c!86641 () Bool)

(assert (=> d!102469 (= c!86641 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102469 (= lt!348036 (select (arr!20392 a!3186) index!1321))))

(assert (=> d!102469 (validMask!0 mask!3328)))

(assert (=> d!102469 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20392 a!3186) j!159) a!3186 mask!3328) lt!348035)))

(declare-fun b!780961 () Bool)

(assert (=> b!780961 (and (bvsge (index!34365 lt!348035) #b00000000000000000000000000000000) (bvslt (index!34365 lt!348035) (size!20813 a!3186)))))

(declare-fun res!528488 () Bool)

(assert (=> b!780961 (= res!528488 (= (select (arr!20392 a!3186) (index!34365 lt!348035)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!434407 () Bool)

(assert (=> b!780961 (=> res!528488 e!434407)))

(declare-fun b!780962 () Bool)

(declare-fun e!434405 () Bool)

(assert (=> b!780962 (= e!434406 e!434405)))

(declare-fun res!528487 () Bool)

(assert (=> b!780962 (= res!528487 (and ((_ is Intermediate!7999) lt!348035) (not (undefined!8811 lt!348035)) (bvslt (x!65338 lt!348035) #b01111111111111111111111111111110) (bvsge (x!65338 lt!348035) #b00000000000000000000000000000000) (bvsge (x!65338 lt!348035) x!1131)))))

(assert (=> b!780962 (=> (not res!528487) (not e!434405))))

(declare-fun b!780963 () Bool)

(assert (=> b!780963 (= e!434408 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20392 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!780964 () Bool)

(assert (=> b!780964 (and (bvsge (index!34365 lt!348035) #b00000000000000000000000000000000) (bvslt (index!34365 lt!348035) (size!20813 a!3186)))))

(assert (=> b!780964 (= e!434407 (= (select (arr!20392 a!3186) (index!34365 lt!348035)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!780965 () Bool)

(assert (=> b!780965 (= e!434406 (bvsge (x!65338 lt!348035) #b01111111111111111111111111111110))))

(declare-fun b!780966 () Bool)

(assert (=> b!780966 (and (bvsge (index!34365 lt!348035) #b00000000000000000000000000000000) (bvslt (index!34365 lt!348035) (size!20813 a!3186)))))

(declare-fun res!528486 () Bool)

(assert (=> b!780966 (= res!528486 (= (select (arr!20392 a!3186) (index!34365 lt!348035)) (select (arr!20392 a!3186) j!159)))))

(assert (=> b!780966 (=> res!528486 e!434407)))

(assert (=> b!780966 (= e!434405 e!434407)))

(assert (= (and d!102469 c!86641) b!780958))

(assert (= (and d!102469 (not c!86641)) b!780959))

(assert (= (and b!780959 c!86642) b!780960))

(assert (= (and b!780959 (not c!86642)) b!780963))

(assert (= (and d!102469 c!86643) b!780965))

(assert (= (and d!102469 (not c!86643)) b!780962))

(assert (= (and b!780962 res!528487) b!780966))

(assert (= (and b!780966 (not res!528486)) b!780961))

(assert (= (and b!780961 (not res!528488)) b!780964))

(declare-fun m!724153 () Bool)

(assert (=> b!780964 m!724153))

(assert (=> b!780966 m!724153))

(assert (=> b!780961 m!724153))

(assert (=> b!780963 m!724097))

(assert (=> b!780963 m!724097))

(assert (=> b!780963 m!723967))

(declare-fun m!724155 () Bool)

(assert (=> b!780963 m!724155))

(assert (=> d!102469 m!724105))

(assert (=> d!102469 m!723975))

(assert (=> b!780670 d!102469))

(declare-fun b!780973 () Bool)

(declare-fun e!434415 () SeekEntryResult!7999)

(assert (=> b!780973 (= e!434415 Undefined!7999)))

(declare-fun d!102481 () Bool)

(declare-fun lt!348042 () SeekEntryResult!7999)

(assert (=> d!102481 (and (or ((_ is Undefined!7999) lt!348042) (not ((_ is Found!7999) lt!348042)) (and (bvsge (index!34364 lt!348042) #b00000000000000000000000000000000) (bvslt (index!34364 lt!348042) (size!20813 a!3186)))) (or ((_ is Undefined!7999) lt!348042) ((_ is Found!7999) lt!348042) (not ((_ is MissingZero!7999) lt!348042)) (and (bvsge (index!34363 lt!348042) #b00000000000000000000000000000000) (bvslt (index!34363 lt!348042) (size!20813 a!3186)))) (or ((_ is Undefined!7999) lt!348042) ((_ is Found!7999) lt!348042) ((_ is MissingZero!7999) lt!348042) (not ((_ is MissingVacant!7999) lt!348042)) (and (bvsge (index!34366 lt!348042) #b00000000000000000000000000000000) (bvslt (index!34366 lt!348042) (size!20813 a!3186)))) (or ((_ is Undefined!7999) lt!348042) (ite ((_ is Found!7999) lt!348042) (= (select (arr!20392 a!3186) (index!34364 lt!348042)) k0!2102) (ite ((_ is MissingZero!7999) lt!348042) (= (select (arr!20392 a!3186) (index!34363 lt!348042)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7999) lt!348042) (= (select (arr!20392 a!3186) (index!34366 lt!348042)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102481 (= lt!348042 e!434415)))

(declare-fun c!86647 () Bool)

(declare-fun lt!348040 () SeekEntryResult!7999)

(assert (=> d!102481 (= c!86647 (and ((_ is Intermediate!7999) lt!348040) (undefined!8811 lt!348040)))))

(assert (=> d!102481 (= lt!348040 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!102481 (validMask!0 mask!3328)))

(assert (=> d!102481 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!348042)))

(declare-fun b!780974 () Bool)

(declare-fun e!434413 () SeekEntryResult!7999)

(assert (=> b!780974 (= e!434415 e!434413)))

(declare-fun lt!348041 () (_ BitVec 64))

(assert (=> b!780974 (= lt!348041 (select (arr!20392 a!3186) (index!34365 lt!348040)))))

(declare-fun c!86648 () Bool)

(assert (=> b!780974 (= c!86648 (= lt!348041 k0!2102))))

(declare-fun e!434414 () SeekEntryResult!7999)

(declare-fun b!780975 () Bool)

(assert (=> b!780975 (= e!434414 (seekKeyOrZeroReturnVacant!0 (x!65338 lt!348040) (index!34365 lt!348040) (index!34365 lt!348040) k0!2102 a!3186 mask!3328))))

(declare-fun b!780976 () Bool)

(assert (=> b!780976 (= e!434413 (Found!7999 (index!34365 lt!348040)))))

(declare-fun b!780977 () Bool)

(assert (=> b!780977 (= e!434414 (MissingZero!7999 (index!34365 lt!348040)))))

(declare-fun b!780978 () Bool)

(declare-fun c!86649 () Bool)

(assert (=> b!780978 (= c!86649 (= lt!348041 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!780978 (= e!434413 e!434414)))

(assert (= (and d!102481 c!86647) b!780973))

(assert (= (and d!102481 (not c!86647)) b!780974))

(assert (= (and b!780974 c!86648) b!780976))

(assert (= (and b!780974 (not c!86648)) b!780978))

(assert (= (and b!780978 c!86649) b!780977))

(assert (= (and b!780978 (not c!86649)) b!780975))

(declare-fun m!724167 () Bool)

(assert (=> d!102481 m!724167))

(declare-fun m!724169 () Bool)

(assert (=> d!102481 m!724169))

(assert (=> d!102481 m!723975))

(assert (=> d!102481 m!724167))

(declare-fun m!724171 () Bool)

(assert (=> d!102481 m!724171))

(declare-fun m!724173 () Bool)

(assert (=> d!102481 m!724173))

(declare-fun m!724175 () Bool)

(assert (=> d!102481 m!724175))

(declare-fun m!724177 () Bool)

(assert (=> b!780974 m!724177))

(declare-fun m!724179 () Bool)

(assert (=> b!780975 m!724179))

(assert (=> b!780681 d!102481))

(declare-fun bm!35245 () Bool)

(declare-fun call!35248 () Bool)

(assert (=> bm!35245 (= call!35248 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!780979 () Bool)

(declare-fun e!434416 () Bool)

(declare-fun e!434417 () Bool)

(assert (=> b!780979 (= e!434416 e!434417)))

(declare-fun lt!348045 () (_ BitVec 64))

(assert (=> b!780979 (= lt!348045 (select (arr!20392 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!348043 () Unit!26906)

(assert (=> b!780979 (= lt!348043 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!348045 #b00000000000000000000000000000000))))

(assert (=> b!780979 (arrayContainsKey!0 a!3186 lt!348045 #b00000000000000000000000000000000)))

(declare-fun lt!348044 () Unit!26906)

(assert (=> b!780979 (= lt!348044 lt!348043)))

(declare-fun res!528490 () Bool)

(assert (=> b!780979 (= res!528490 (= (seekEntryOrOpen!0 (select (arr!20392 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7999 #b00000000000000000000000000000000)))))

(assert (=> b!780979 (=> (not res!528490) (not e!434417))))

(declare-fun d!102485 () Bool)

(declare-fun res!528489 () Bool)

(declare-fun e!434418 () Bool)

(assert (=> d!102485 (=> res!528489 e!434418)))

(assert (=> d!102485 (= res!528489 (bvsge #b00000000000000000000000000000000 (size!20813 a!3186)))))

(assert (=> d!102485 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!434418)))

(declare-fun b!780980 () Bool)

(assert (=> b!780980 (= e!434417 call!35248)))

(declare-fun b!780981 () Bool)

(assert (=> b!780981 (= e!434416 call!35248)))

(declare-fun b!780982 () Bool)

(assert (=> b!780982 (= e!434418 e!434416)))

(declare-fun c!86650 () Bool)

(assert (=> b!780982 (= c!86650 (validKeyInArray!0 (select (arr!20392 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!102485 (not res!528489)) b!780982))

(assert (= (and b!780982 c!86650) b!780979))

(assert (= (and b!780982 (not c!86650)) b!780981))

(assert (= (and b!780979 res!528490) b!780980))

(assert (= (or b!780980 b!780981) bm!35245))

(declare-fun m!724181 () Bool)

(assert (=> bm!35245 m!724181))

(assert (=> b!780979 m!724057))

(declare-fun m!724183 () Bool)

(assert (=> b!780979 m!724183))

(declare-fun m!724185 () Bool)

(assert (=> b!780979 m!724185))

(assert (=> b!780979 m!724057))

(declare-fun m!724187 () Bool)

(assert (=> b!780979 m!724187))

(assert (=> b!780982 m!724057))

(assert (=> b!780982 m!724057))

(assert (=> b!780982 m!724063))

(assert (=> b!780679 d!102485))

(declare-fun b!780983 () Bool)

(declare-fun e!434423 () SeekEntryResult!7999)

(assert (=> b!780983 (= e!434423 (Intermediate!7999 true (toIndex!0 (select (arr!20392 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!780984 () Bool)

(declare-fun e!434422 () SeekEntryResult!7999)

(assert (=> b!780984 (= e!434423 e!434422)))

(declare-fun lt!348047 () (_ BitVec 64))

(declare-fun c!86652 () Bool)

(assert (=> b!780984 (= c!86652 (or (= lt!348047 (select (arr!20392 a!3186) j!159)) (= (bvadd lt!348047 lt!348047) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!780985 () Bool)

(assert (=> b!780985 (= e!434422 (Intermediate!7999 false (toIndex!0 (select (arr!20392 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!102487 () Bool)

(declare-fun e!434420 () Bool)

(assert (=> d!102487 e!434420))

(declare-fun c!86653 () Bool)

(declare-fun lt!348046 () SeekEntryResult!7999)

(assert (=> d!102487 (= c!86653 (and ((_ is Intermediate!7999) lt!348046) (undefined!8811 lt!348046)))))

(assert (=> d!102487 (= lt!348046 e!434423)))

(declare-fun c!86651 () Bool)

(assert (=> d!102487 (= c!86651 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102487 (= lt!348047 (select (arr!20392 a!3186) (toIndex!0 (select (arr!20392 a!3186) j!159) mask!3328)))))

(assert (=> d!102487 (validMask!0 mask!3328)))

(assert (=> d!102487 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20392 a!3186) j!159) mask!3328) (select (arr!20392 a!3186) j!159) a!3186 mask!3328) lt!348046)))

(declare-fun b!780986 () Bool)

(assert (=> b!780986 (and (bvsge (index!34365 lt!348046) #b00000000000000000000000000000000) (bvslt (index!34365 lt!348046) (size!20813 a!3186)))))

(declare-fun res!528493 () Bool)

(assert (=> b!780986 (= res!528493 (= (select (arr!20392 a!3186) (index!34365 lt!348046)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!434421 () Bool)

(assert (=> b!780986 (=> res!528493 e!434421)))

(declare-fun b!780987 () Bool)

(declare-fun e!434419 () Bool)

(assert (=> b!780987 (= e!434420 e!434419)))

(declare-fun res!528492 () Bool)

(assert (=> b!780987 (= res!528492 (and ((_ is Intermediate!7999) lt!348046) (not (undefined!8811 lt!348046)) (bvslt (x!65338 lt!348046) #b01111111111111111111111111111110) (bvsge (x!65338 lt!348046) #b00000000000000000000000000000000) (bvsge (x!65338 lt!348046) #b00000000000000000000000000000000)))))

(assert (=> b!780987 (=> (not res!528492) (not e!434419))))

(declare-fun b!780988 () Bool)

(assert (=> b!780988 (= e!434422 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20392 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20392 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!780989 () Bool)

(assert (=> b!780989 (and (bvsge (index!34365 lt!348046) #b00000000000000000000000000000000) (bvslt (index!34365 lt!348046) (size!20813 a!3186)))))

(assert (=> b!780989 (= e!434421 (= (select (arr!20392 a!3186) (index!34365 lt!348046)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!780990 () Bool)

(assert (=> b!780990 (= e!434420 (bvsge (x!65338 lt!348046) #b01111111111111111111111111111110))))

(declare-fun b!780991 () Bool)

(assert (=> b!780991 (and (bvsge (index!34365 lt!348046) #b00000000000000000000000000000000) (bvslt (index!34365 lt!348046) (size!20813 a!3186)))))

(declare-fun res!528491 () Bool)

(assert (=> b!780991 (= res!528491 (= (select (arr!20392 a!3186) (index!34365 lt!348046)) (select (arr!20392 a!3186) j!159)))))

(assert (=> b!780991 (=> res!528491 e!434421)))

(assert (=> b!780991 (= e!434419 e!434421)))

(assert (= (and d!102487 c!86651) b!780983))

(assert (= (and d!102487 (not c!86651)) b!780984))

(assert (= (and b!780984 c!86652) b!780985))

(assert (= (and b!780984 (not c!86652)) b!780988))

(assert (= (and d!102487 c!86653) b!780990))

(assert (= (and d!102487 (not c!86653)) b!780987))

(assert (= (and b!780987 res!528492) b!780991))

(assert (= (and b!780991 (not res!528491)) b!780986))

(assert (= (and b!780986 (not res!528493)) b!780989))

(declare-fun m!724189 () Bool)

(assert (=> b!780989 m!724189))

(assert (=> b!780991 m!724189))

(assert (=> b!780986 m!724189))

(assert (=> b!780988 m!724005))

(declare-fun m!724191 () Bool)

(assert (=> b!780988 m!724191))

(assert (=> b!780988 m!724191))

(assert (=> b!780988 m!723967))

(declare-fun m!724193 () Bool)

(assert (=> b!780988 m!724193))

(assert (=> d!102487 m!724005))

(declare-fun m!724195 () Bool)

(assert (=> d!102487 m!724195))

(assert (=> d!102487 m!723975))

(assert (=> b!780675 d!102487))

(declare-fun d!102489 () Bool)

(declare-fun lt!348059 () (_ BitVec 32))

(declare-fun lt!348058 () (_ BitVec 32))

(assert (=> d!102489 (= lt!348059 (bvmul (bvxor lt!348058 (bvlshr lt!348058 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102489 (= lt!348058 ((_ extract 31 0) (bvand (bvxor (select (arr!20392 a!3186) j!159) (bvlshr (select (arr!20392 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102489 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!528494 (let ((h!15563 ((_ extract 31 0) (bvand (bvxor (select (arr!20392 a!3186) j!159) (bvlshr (select (arr!20392 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65345 (bvmul (bvxor h!15563 (bvlshr h!15563 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65345 (bvlshr x!65345 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!528494 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!528494 #b00000000000000000000000000000000))))))

(assert (=> d!102489 (= (toIndex!0 (select (arr!20392 a!3186) j!159) mask!3328) (bvand (bvxor lt!348059 (bvlshr lt!348059 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!780675 d!102489))

(assert (=> b!780674 d!102451))

(declare-fun b!781000 () Bool)

(declare-fun e!434432 () SeekEntryResult!7999)

(assert (=> b!781000 (= e!434432 (Found!7999 resIntermediateIndex!5))))

(declare-fun e!434430 () SeekEntryResult!7999)

(declare-fun b!781001 () Bool)

(assert (=> b!781001 (= e!434430 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20392 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!781002 () Bool)

(declare-fun e!434431 () SeekEntryResult!7999)

(assert (=> b!781002 (= e!434431 e!434432)))

(declare-fun c!86656 () Bool)

(declare-fun lt!348061 () (_ BitVec 64))

(assert (=> b!781002 (= c!86656 (= lt!348061 (select (arr!20392 a!3186) j!159)))))

(declare-fun b!781003 () Bool)

(declare-fun c!86657 () Bool)

(assert (=> b!781003 (= c!86657 (= lt!348061 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!781003 (= e!434432 e!434430)))

(declare-fun d!102491 () Bool)

(declare-fun lt!348060 () SeekEntryResult!7999)

(assert (=> d!102491 (and (or ((_ is Undefined!7999) lt!348060) (not ((_ is Found!7999) lt!348060)) (and (bvsge (index!34364 lt!348060) #b00000000000000000000000000000000) (bvslt (index!34364 lt!348060) (size!20813 a!3186)))) (or ((_ is Undefined!7999) lt!348060) ((_ is Found!7999) lt!348060) (not ((_ is MissingVacant!7999) lt!348060)) (not (= (index!34366 lt!348060) resIntermediateIndex!5)) (and (bvsge (index!34366 lt!348060) #b00000000000000000000000000000000) (bvslt (index!34366 lt!348060) (size!20813 a!3186)))) (or ((_ is Undefined!7999) lt!348060) (ite ((_ is Found!7999) lt!348060) (= (select (arr!20392 a!3186) (index!34364 lt!348060)) (select (arr!20392 a!3186) j!159)) (and ((_ is MissingVacant!7999) lt!348060) (= (index!34366 lt!348060) resIntermediateIndex!5) (= (select (arr!20392 a!3186) (index!34366 lt!348060)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102491 (= lt!348060 e!434431)))

(declare-fun c!86658 () Bool)

(assert (=> d!102491 (= c!86658 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!102491 (= lt!348061 (select (arr!20392 a!3186) resIntermediateIndex!5))))

(assert (=> d!102491 (validMask!0 mask!3328)))

(assert (=> d!102491 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20392 a!3186) j!159) a!3186 mask!3328) lt!348060)))

(declare-fun b!781004 () Bool)

(assert (=> b!781004 (= e!434431 Undefined!7999)))

(declare-fun b!781005 () Bool)

(assert (=> b!781005 (= e!434430 (MissingVacant!7999 resIntermediateIndex!5))))

(assert (= (and d!102491 c!86658) b!781004))

(assert (= (and d!102491 (not c!86658)) b!781002))

(assert (= (and b!781002 c!86656) b!781000))

(assert (= (and b!781002 (not c!86656)) b!781003))

(assert (= (and b!781003 c!86657) b!781005))

(assert (= (and b!781003 (not c!86657)) b!781001))

(declare-fun m!724197 () Bool)

(assert (=> b!781001 m!724197))

(assert (=> b!781001 m!724197))

(assert (=> b!781001 m!723967))

(declare-fun m!724199 () Bool)

(assert (=> b!781001 m!724199))

(declare-fun m!724201 () Bool)

(assert (=> d!102491 m!724201))

(declare-fun m!724203 () Bool)

(assert (=> d!102491 m!724203))

(assert (=> d!102491 m!723965))

(assert (=> d!102491 m!723975))

(assert (=> b!780676 d!102491))

(declare-fun b!781006 () Bool)

(declare-fun e!434437 () SeekEntryResult!7999)

(assert (=> b!781006 (= e!434437 (Intermediate!7999 true index!1321 x!1131))))

(declare-fun b!781007 () Bool)

(declare-fun e!434436 () SeekEntryResult!7999)

(assert (=> b!781007 (= e!434437 e!434436)))

(declare-fun c!86660 () Bool)

(declare-fun lt!348063 () (_ BitVec 64))

(assert (=> b!781007 (= c!86660 (or (= lt!348063 lt!347921) (= (bvadd lt!348063 lt!348063) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781008 () Bool)

(assert (=> b!781008 (= e!434436 (Intermediate!7999 false index!1321 x!1131))))

(declare-fun d!102493 () Bool)

(declare-fun e!434434 () Bool)

(assert (=> d!102493 e!434434))

(declare-fun c!86661 () Bool)

(declare-fun lt!348062 () SeekEntryResult!7999)

(assert (=> d!102493 (= c!86661 (and ((_ is Intermediate!7999) lt!348062) (undefined!8811 lt!348062)))))

(assert (=> d!102493 (= lt!348062 e!434437)))

(declare-fun c!86659 () Bool)

(assert (=> d!102493 (= c!86659 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102493 (= lt!348063 (select (arr!20392 lt!347924) index!1321))))

(assert (=> d!102493 (validMask!0 mask!3328)))

(assert (=> d!102493 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347921 lt!347924 mask!3328) lt!348062)))

(declare-fun b!781009 () Bool)

(assert (=> b!781009 (and (bvsge (index!34365 lt!348062) #b00000000000000000000000000000000) (bvslt (index!34365 lt!348062) (size!20813 lt!347924)))))

(declare-fun res!528501 () Bool)

(assert (=> b!781009 (= res!528501 (= (select (arr!20392 lt!347924) (index!34365 lt!348062)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!434435 () Bool)

(assert (=> b!781009 (=> res!528501 e!434435)))

(declare-fun b!781010 () Bool)

(declare-fun e!434433 () Bool)

(assert (=> b!781010 (= e!434434 e!434433)))

(declare-fun res!528500 () Bool)

(assert (=> b!781010 (= res!528500 (and ((_ is Intermediate!7999) lt!348062) (not (undefined!8811 lt!348062)) (bvslt (x!65338 lt!348062) #b01111111111111111111111111111110) (bvsge (x!65338 lt!348062) #b00000000000000000000000000000000) (bvsge (x!65338 lt!348062) x!1131)))))

(assert (=> b!781010 (=> (not res!528500) (not e!434433))))

(declare-fun b!781011 () Bool)

(assert (=> b!781011 (= e!434436 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!347921 lt!347924 mask!3328))))

(declare-fun b!781012 () Bool)

(assert (=> b!781012 (and (bvsge (index!34365 lt!348062) #b00000000000000000000000000000000) (bvslt (index!34365 lt!348062) (size!20813 lt!347924)))))

(assert (=> b!781012 (= e!434435 (= (select (arr!20392 lt!347924) (index!34365 lt!348062)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781013 () Bool)

(assert (=> b!781013 (= e!434434 (bvsge (x!65338 lt!348062) #b01111111111111111111111111111110))))

(declare-fun b!781014 () Bool)

(assert (=> b!781014 (and (bvsge (index!34365 lt!348062) #b00000000000000000000000000000000) (bvslt (index!34365 lt!348062) (size!20813 lt!347924)))))

(declare-fun res!528499 () Bool)

(assert (=> b!781014 (= res!528499 (= (select (arr!20392 lt!347924) (index!34365 lt!348062)) lt!347921))))

(assert (=> b!781014 (=> res!528499 e!434435)))

(assert (=> b!781014 (= e!434433 e!434435)))

(assert (= (and d!102493 c!86659) b!781006))

(assert (= (and d!102493 (not c!86659)) b!781007))

(assert (= (and b!781007 c!86660) b!781008))

(assert (= (and b!781007 (not c!86660)) b!781011))

(assert (= (and d!102493 c!86661) b!781013))

(assert (= (and d!102493 (not c!86661)) b!781010))

(assert (= (and b!781010 res!528500) b!781014))

(assert (= (and b!781014 (not res!528499)) b!781009))

(assert (= (and b!781009 (not res!528501)) b!781012))

(declare-fun m!724207 () Bool)

(assert (=> b!781012 m!724207))

(assert (=> b!781014 m!724207))

(assert (=> b!781009 m!724207))

(assert (=> b!781011 m!724097))

(assert (=> b!781011 m!724097))

(declare-fun m!724213 () Bool)

(assert (=> b!781011 m!724213))

(declare-fun m!724215 () Bool)

(assert (=> d!102493 m!724215))

(assert (=> d!102493 m!723975))

(assert (=> b!780686 d!102493))

(declare-fun b!781019 () Bool)

(declare-fun e!434445 () SeekEntryResult!7999)

(assert (=> b!781019 (= e!434445 (Intermediate!7999 true (toIndex!0 lt!347921 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!781020 () Bool)

(declare-fun e!434444 () SeekEntryResult!7999)

(assert (=> b!781020 (= e!434445 e!434444)))

(declare-fun c!86664 () Bool)

(declare-fun lt!348068 () (_ BitVec 64))

(assert (=> b!781020 (= c!86664 (or (= lt!348068 lt!347921) (= (bvadd lt!348068 lt!348068) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781021 () Bool)

(assert (=> b!781021 (= e!434444 (Intermediate!7999 false (toIndex!0 lt!347921 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!102497 () Bool)

(declare-fun e!434442 () Bool)

(assert (=> d!102497 e!434442))

(declare-fun c!86665 () Bool)

(declare-fun lt!348067 () SeekEntryResult!7999)

(assert (=> d!102497 (= c!86665 (and ((_ is Intermediate!7999) lt!348067) (undefined!8811 lt!348067)))))

(assert (=> d!102497 (= lt!348067 e!434445)))

(declare-fun c!86663 () Bool)

(assert (=> d!102497 (= c!86663 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102497 (= lt!348068 (select (arr!20392 lt!347924) (toIndex!0 lt!347921 mask!3328)))))

(assert (=> d!102497 (validMask!0 mask!3328)))

(assert (=> d!102497 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347921 mask!3328) lt!347921 lt!347924 mask!3328) lt!348067)))

(declare-fun b!781022 () Bool)

(assert (=> b!781022 (and (bvsge (index!34365 lt!348067) #b00000000000000000000000000000000) (bvslt (index!34365 lt!348067) (size!20813 lt!347924)))))

(declare-fun res!528506 () Bool)

(assert (=> b!781022 (= res!528506 (= (select (arr!20392 lt!347924) (index!34365 lt!348067)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!434443 () Bool)

(assert (=> b!781022 (=> res!528506 e!434443)))

(declare-fun b!781023 () Bool)

(declare-fun e!434441 () Bool)

(assert (=> b!781023 (= e!434442 e!434441)))

(declare-fun res!528505 () Bool)

(assert (=> b!781023 (= res!528505 (and ((_ is Intermediate!7999) lt!348067) (not (undefined!8811 lt!348067)) (bvslt (x!65338 lt!348067) #b01111111111111111111111111111110) (bvsge (x!65338 lt!348067) #b00000000000000000000000000000000) (bvsge (x!65338 lt!348067) #b00000000000000000000000000000000)))))

(assert (=> b!781023 (=> (not res!528505) (not e!434441))))

(declare-fun b!781024 () Bool)

(assert (=> b!781024 (= e!434444 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!347921 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!347921 lt!347924 mask!3328))))

(declare-fun b!781025 () Bool)

(assert (=> b!781025 (and (bvsge (index!34365 lt!348067) #b00000000000000000000000000000000) (bvslt (index!34365 lt!348067) (size!20813 lt!347924)))))

(assert (=> b!781025 (= e!434443 (= (select (arr!20392 lt!347924) (index!34365 lt!348067)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781026 () Bool)

(assert (=> b!781026 (= e!434442 (bvsge (x!65338 lt!348067) #b01111111111111111111111111111110))))

(declare-fun b!781027 () Bool)

(assert (=> b!781027 (and (bvsge (index!34365 lt!348067) #b00000000000000000000000000000000) (bvslt (index!34365 lt!348067) (size!20813 lt!347924)))))

(declare-fun res!528504 () Bool)

(assert (=> b!781027 (= res!528504 (= (select (arr!20392 lt!347924) (index!34365 lt!348067)) lt!347921))))

(assert (=> b!781027 (=> res!528504 e!434443)))

(assert (=> b!781027 (= e!434441 e!434443)))

(assert (= (and d!102497 c!86663) b!781019))

(assert (= (and d!102497 (not c!86663)) b!781020))

(assert (= (and b!781020 c!86664) b!781021))

(assert (= (and b!781020 (not c!86664)) b!781024))

(assert (= (and d!102497 c!86665) b!781026))

(assert (= (and d!102497 (not c!86665)) b!781023))

(assert (= (and b!781023 res!528505) b!781027))

(assert (= (and b!781027 (not res!528504)) b!781022))

(assert (= (and b!781022 (not res!528506)) b!781025))

(declare-fun m!724217 () Bool)

(assert (=> b!781025 m!724217))

(assert (=> b!781027 m!724217))

(assert (=> b!781022 m!724217))

(assert (=> b!781024 m!724001))

(declare-fun m!724219 () Bool)

(assert (=> b!781024 m!724219))

(assert (=> b!781024 m!724219))

(declare-fun m!724221 () Bool)

(assert (=> b!781024 m!724221))

(assert (=> d!102497 m!724001))

(declare-fun m!724223 () Bool)

(assert (=> d!102497 m!724223))

(assert (=> d!102497 m!723975))

(assert (=> b!780686 d!102497))

(declare-fun d!102499 () Bool)

(declare-fun lt!348070 () (_ BitVec 32))

(declare-fun lt!348069 () (_ BitVec 32))

(assert (=> d!102499 (= lt!348070 (bvmul (bvxor lt!348069 (bvlshr lt!348069 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102499 (= lt!348069 ((_ extract 31 0) (bvand (bvxor lt!347921 (bvlshr lt!347921 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102499 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!528494 (let ((h!15563 ((_ extract 31 0) (bvand (bvxor lt!347921 (bvlshr lt!347921 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65345 (bvmul (bvxor h!15563 (bvlshr h!15563 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65345 (bvlshr x!65345 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!528494 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!528494 #b00000000000000000000000000000000))))))

(assert (=> d!102499 (= (toIndex!0 lt!347921 mask!3328) (bvand (bvxor lt!348070 (bvlshr lt!348070 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!780686 d!102499))

(check-sat (not b!780975) (not b!781001) (not b!780804) (not d!102481) (not b!780963) (not b!780894) (not d!102469) (not b!780765) (not b!780801) (not b!780982) (not d!102487) (not b!781024) (not d!102491) (not d!102447) (not d!102493) (not b!780768) (not b!780767) (not b!781011) (not bm!35245) (not bm!35238) (not bm!35235) (not b!780783) (not b!780836) (not b!780988) (not b!780979) (not d!102437) (not d!102497) (not d!102451))
(check-sat)
