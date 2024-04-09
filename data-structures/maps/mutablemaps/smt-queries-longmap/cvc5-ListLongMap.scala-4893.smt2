; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67486 () Bool)

(assert start!67486)

(declare-fun b!780607 () Bool)

(declare-fun e!434222 () Bool)

(declare-fun e!434221 () Bool)

(assert (=> b!780607 (= e!434222 e!434221)))

(declare-fun res!528306 () Bool)

(assert (=> b!780607 (=> (not res!528306) (not e!434221))))

(declare-datatypes ((SeekEntryResult!7998 0))(
  ( (MissingZero!7998 (index!34359 (_ BitVec 32))) (Found!7998 (index!34360 (_ BitVec 32))) (Intermediate!7998 (undefined!8810 Bool) (index!34361 (_ BitVec 32)) (x!65337 (_ BitVec 32))) (Undefined!7998) (MissingVacant!7998 (index!34362 (_ BitVec 32))) )
))
(declare-fun lt!347896 () SeekEntryResult!7998)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!780607 (= res!528306 (or (= lt!347896 (MissingZero!7998 i!1173)) (= lt!347896 (MissingVacant!7998 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42607 0))(
  ( (array!42608 (arr!20391 (Array (_ BitVec 32) (_ BitVec 64))) (size!20812 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42607)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42607 (_ BitVec 32)) SeekEntryResult!7998)

(assert (=> b!780607 (= lt!347896 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!780608 () Bool)

(declare-fun e!434217 () Bool)

(declare-fun e!434218 () Bool)

(assert (=> b!780608 (= e!434217 (not e!434218))))

(declare-fun res!528314 () Bool)

(assert (=> b!780608 (=> res!528314 e!434218)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!347897 () SeekEntryResult!7998)

(assert (=> b!780608 (= res!528314 (or (not (is-Intermediate!7998 lt!347897)) (bvslt x!1131 (x!65337 lt!347897)) (not (= x!1131 (x!65337 lt!347897))) (not (= index!1321 (index!34361 lt!347897)))))))

(declare-fun e!434224 () Bool)

(assert (=> b!780608 e!434224))

(declare-fun res!528310 () Bool)

(assert (=> b!780608 (=> (not res!528310) (not e!434224))))

(declare-fun lt!347894 () SeekEntryResult!7998)

(declare-fun lt!347891 () SeekEntryResult!7998)

(assert (=> b!780608 (= res!528310 (= lt!347894 lt!347891))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!780608 (= lt!347891 (Found!7998 j!159))))

(assert (=> b!780608 (= lt!347894 (seekEntryOrOpen!0 (select (arr!20391 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42607 (_ BitVec 32)) Bool)

(assert (=> b!780608 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26902 0))(
  ( (Unit!26903) )
))
(declare-fun lt!347899 () Unit!26902)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42607 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26902)

(assert (=> b!780608 (= lt!347899 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!780609 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42607 (_ BitVec 32)) SeekEntryResult!7998)

(assert (=> b!780609 (= e!434224 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20391 a!3186) j!159) a!3186 mask!3328) lt!347891))))

(declare-fun b!780610 () Bool)

(declare-fun e!434219 () Unit!26902)

(declare-fun Unit!26904 () Unit!26902)

(assert (=> b!780610 (= e!434219 Unit!26904)))

(declare-fun b!780611 () Bool)

(declare-fun res!528318 () Bool)

(assert (=> b!780611 (=> res!528318 e!434218)))

(assert (=> b!780611 (= res!528318 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20391 a!3186) j!159) a!3186 mask!3328) lt!347891)))))

(declare-fun b!780612 () Bool)

(declare-fun res!528307 () Bool)

(assert (=> b!780612 (=> (not res!528307) (not e!434221))))

(declare-datatypes ((List!14446 0))(
  ( (Nil!14443) (Cons!14442 (h!15559 (_ BitVec 64)) (t!20769 List!14446)) )
))
(declare-fun arrayNoDuplicates!0 (array!42607 (_ BitVec 32) List!14446) Bool)

(assert (=> b!780612 (= res!528307 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14443))))

(declare-fun b!780613 () Bool)

(assert (=> b!780613 (= e!434218 (= (select (store (arr!20391 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!347898 () Unit!26902)

(assert (=> b!780613 (= lt!347898 e!434219)))

(declare-fun c!86555 () Bool)

(assert (=> b!780613 (= c!86555 (= (select (store (arr!20391 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!780614 () Bool)

(declare-fun res!528321 () Bool)

(assert (=> b!780614 (=> (not res!528321) (not e!434221))))

(assert (=> b!780614 (= res!528321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!780615 () Bool)

(declare-fun res!528312 () Bool)

(assert (=> b!780615 (=> res!528312 e!434218)))

(declare-fun lt!347892 () (_ BitVec 64))

(assert (=> b!780615 (= res!528312 (= (select (store (arr!20391 a!3186) i!1173 k!2102) index!1321) lt!347892))))

(declare-fun b!780616 () Bool)

(declare-fun res!528317 () Bool)

(assert (=> b!780616 (=> (not res!528317) (not e!434222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!780616 (= res!528317 (validKeyInArray!0 k!2102))))

(declare-fun b!780617 () Bool)

(declare-fun res!528316 () Bool)

(assert (=> b!780617 (=> (not res!528316) (not e!434222))))

(declare-fun arrayContainsKey!0 (array!42607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!780617 (= res!528316 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!780618 () Bool)

(declare-fun e!434216 () Bool)

(assert (=> b!780618 (= e!434216 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20391 a!3186) j!159) a!3186 mask!3328) (Found!7998 j!159)))))

(declare-fun b!780619 () Bool)

(declare-fun e!434223 () Bool)

(assert (=> b!780619 (= e!434221 e!434223)))

(declare-fun res!528319 () Bool)

(assert (=> b!780619 (=> (not res!528319) (not e!434223))))

(declare-fun lt!347890 () SeekEntryResult!7998)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42607 (_ BitVec 32)) SeekEntryResult!7998)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780619 (= res!528319 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20391 a!3186) j!159) mask!3328) (select (arr!20391 a!3186) j!159) a!3186 mask!3328) lt!347890))))

(assert (=> b!780619 (= lt!347890 (Intermediate!7998 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!780620 () Bool)

(assert (=> b!780620 (= e!434216 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20391 a!3186) j!159) a!3186 mask!3328) lt!347890))))

(declare-fun res!528308 () Bool)

(assert (=> start!67486 (=> (not res!528308) (not e!434222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67486 (= res!528308 (validMask!0 mask!3328))))

(assert (=> start!67486 e!434222))

(assert (=> start!67486 true))

(declare-fun array_inv!16165 (array!42607) Bool)

(assert (=> start!67486 (array_inv!16165 a!3186)))

(declare-fun b!780621 () Bool)

(declare-fun res!528315 () Bool)

(assert (=> b!780621 (=> (not res!528315) (not e!434223))))

(assert (=> b!780621 (= res!528315 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20391 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!780622 () Bool)

(declare-fun res!528322 () Bool)

(assert (=> b!780622 (=> (not res!528322) (not e!434222))))

(assert (=> b!780622 (= res!528322 (validKeyInArray!0 (select (arr!20391 a!3186) j!159)))))

(declare-fun b!780623 () Bool)

(assert (=> b!780623 (= e!434223 e!434217)))

(declare-fun res!528313 () Bool)

(assert (=> b!780623 (=> (not res!528313) (not e!434217))))

(declare-fun lt!347895 () SeekEntryResult!7998)

(assert (=> b!780623 (= res!528313 (= lt!347895 lt!347897))))

(declare-fun lt!347893 () array!42607)

(assert (=> b!780623 (= lt!347897 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347892 lt!347893 mask!3328))))

(assert (=> b!780623 (= lt!347895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347892 mask!3328) lt!347892 lt!347893 mask!3328))))

(assert (=> b!780623 (= lt!347892 (select (store (arr!20391 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!780623 (= lt!347893 (array!42608 (store (arr!20391 a!3186) i!1173 k!2102) (size!20812 a!3186)))))

(declare-fun b!780624 () Bool)

(declare-fun res!528320 () Bool)

(assert (=> b!780624 (=> (not res!528320) (not e!434222))))

(assert (=> b!780624 (= res!528320 (and (= (size!20812 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20812 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20812 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!780625 () Bool)

(declare-fun res!528311 () Bool)

(assert (=> b!780625 (=> (not res!528311) (not e!434223))))

(assert (=> b!780625 (= res!528311 e!434216)))

(declare-fun c!86556 () Bool)

(assert (=> b!780625 (= c!86556 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!780626 () Bool)

(declare-fun Unit!26905 () Unit!26902)

(assert (=> b!780626 (= e!434219 Unit!26905)))

(assert (=> b!780626 false))

(declare-fun b!780627 () Bool)

(declare-fun res!528309 () Bool)

(assert (=> b!780627 (=> (not res!528309) (not e!434221))))

(assert (=> b!780627 (= res!528309 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20812 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20812 a!3186))))))

(assert (= (and start!67486 res!528308) b!780624))

(assert (= (and b!780624 res!528320) b!780622))

(assert (= (and b!780622 res!528322) b!780616))

(assert (= (and b!780616 res!528317) b!780617))

(assert (= (and b!780617 res!528316) b!780607))

(assert (= (and b!780607 res!528306) b!780614))

(assert (= (and b!780614 res!528321) b!780612))

(assert (= (and b!780612 res!528307) b!780627))

(assert (= (and b!780627 res!528309) b!780619))

(assert (= (and b!780619 res!528319) b!780621))

(assert (= (and b!780621 res!528315) b!780625))

(assert (= (and b!780625 c!86556) b!780620))

(assert (= (and b!780625 (not c!86556)) b!780618))

(assert (= (and b!780625 res!528311) b!780623))

(assert (= (and b!780623 res!528313) b!780608))

(assert (= (and b!780608 res!528310) b!780609))

(assert (= (and b!780608 (not res!528314)) b!780611))

(assert (= (and b!780611 (not res!528318)) b!780615))

(assert (= (and b!780615 (not res!528312)) b!780613))

(assert (= (and b!780613 c!86555) b!780626))

(assert (= (and b!780613 (not c!86555)) b!780610))

(declare-fun m!723913 () Bool)

(assert (=> b!780613 m!723913))

(declare-fun m!723915 () Bool)

(assert (=> b!780613 m!723915))

(declare-fun m!723917 () Bool)

(assert (=> b!780616 m!723917))

(declare-fun m!723919 () Bool)

(assert (=> b!780612 m!723919))

(declare-fun m!723921 () Bool)

(assert (=> b!780618 m!723921))

(assert (=> b!780618 m!723921))

(declare-fun m!723923 () Bool)

(assert (=> b!780618 m!723923))

(assert (=> b!780620 m!723921))

(assert (=> b!780620 m!723921))

(declare-fun m!723925 () Bool)

(assert (=> b!780620 m!723925))

(assert (=> b!780608 m!723921))

(assert (=> b!780608 m!723921))

(declare-fun m!723927 () Bool)

(assert (=> b!780608 m!723927))

(declare-fun m!723929 () Bool)

(assert (=> b!780608 m!723929))

(declare-fun m!723931 () Bool)

(assert (=> b!780608 m!723931))

(assert (=> b!780622 m!723921))

(assert (=> b!780622 m!723921))

(declare-fun m!723933 () Bool)

(assert (=> b!780622 m!723933))

(declare-fun m!723935 () Bool)

(assert (=> b!780617 m!723935))

(assert (=> b!780615 m!723913))

(assert (=> b!780615 m!723915))

(assert (=> b!780611 m!723921))

(assert (=> b!780611 m!723921))

(assert (=> b!780611 m!723923))

(declare-fun m!723937 () Bool)

(assert (=> b!780607 m!723937))

(declare-fun m!723939 () Bool)

(assert (=> b!780621 m!723939))

(declare-fun m!723941 () Bool)

(assert (=> b!780623 m!723941))

(declare-fun m!723943 () Bool)

(assert (=> b!780623 m!723943))

(assert (=> b!780623 m!723941))

(declare-fun m!723945 () Bool)

(assert (=> b!780623 m!723945))

(declare-fun m!723947 () Bool)

(assert (=> b!780623 m!723947))

(assert (=> b!780623 m!723913))

(assert (=> b!780619 m!723921))

(assert (=> b!780619 m!723921))

(declare-fun m!723949 () Bool)

(assert (=> b!780619 m!723949))

(assert (=> b!780619 m!723949))

(assert (=> b!780619 m!723921))

(declare-fun m!723951 () Bool)

(assert (=> b!780619 m!723951))

(declare-fun m!723953 () Bool)

(assert (=> b!780614 m!723953))

(declare-fun m!723955 () Bool)

(assert (=> start!67486 m!723955))

(declare-fun m!723957 () Bool)

(assert (=> start!67486 m!723957))

(assert (=> b!780609 m!723921))

(assert (=> b!780609 m!723921))

(declare-fun m!723959 () Bool)

(assert (=> b!780609 m!723959))

(push 1)

(assert (not b!780612))

(assert (not b!780608))

(assert (not b!780614))

(assert (not b!780620))

(assert (not b!780617))

(assert (not start!67486))

(assert (not b!780607))

(assert (not b!780622))

(assert (not b!780611))

(assert (not b!780616))

(assert (not b!780618))

(assert (not b!780609))

(assert (not b!780619))

(assert (not b!780623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!102441 () Bool)

(declare-fun res!528442 () Bool)

(declare-fun e!434310 () Bool)

(assert (=> d!102441 (=> res!528442 e!434310)))

(assert (=> d!102441 (= res!528442 (= (select (arr!20391 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!102441 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!434310)))

(declare-fun b!780799 () Bool)

(declare-fun e!434311 () Bool)

(assert (=> b!780799 (= e!434310 e!434311)))

(declare-fun res!528443 () Bool)

(assert (=> b!780799 (=> (not res!528443) (not e!434311))))

(assert (=> b!780799 (= res!528443 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20812 a!3186)))))

(declare-fun b!780800 () Bool)

(assert (=> b!780800 (= e!434311 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102441 (not res!528442)) b!780799))

(assert (= (and b!780799 res!528443) b!780800))

(declare-fun m!724075 () Bool)

(assert (=> d!102441 m!724075))

(declare-fun m!724077 () Bool)

(assert (=> b!780800 m!724077))

(assert (=> b!780617 d!102441))

(declare-fun d!102443 () Bool)

(assert (=> d!102443 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!780616 d!102443))

(declare-fun d!102445 () Bool)

(declare-fun lt!347985 () SeekEntryResult!7998)

(assert (=> d!102445 (and (or (is-Undefined!7998 lt!347985) (not (is-Found!7998 lt!347985)) (and (bvsge (index!34360 lt!347985) #b00000000000000000000000000000000) (bvslt (index!34360 lt!347985) (size!20812 a!3186)))) (or (is-Undefined!7998 lt!347985) (is-Found!7998 lt!347985) (not (is-MissingVacant!7998 lt!347985)) (not (= (index!34362 lt!347985) resIntermediateIndex!5)) (and (bvsge (index!34362 lt!347985) #b00000000000000000000000000000000) (bvslt (index!34362 lt!347985) (size!20812 a!3186)))) (or (is-Undefined!7998 lt!347985) (ite (is-Found!7998 lt!347985) (= (select (arr!20391 a!3186) (index!34360 lt!347985)) (select (arr!20391 a!3186) j!159)) (and (is-MissingVacant!7998 lt!347985) (= (index!34362 lt!347985) resIntermediateIndex!5) (= (select (arr!20391 a!3186) (index!34362 lt!347985)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!434323 () SeekEntryResult!7998)

(assert (=> d!102445 (= lt!347985 e!434323)))

(declare-fun c!86590 () Bool)

(assert (=> d!102445 (= c!86590 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!347986 () (_ BitVec 64))

(assert (=> d!102445 (= lt!347986 (select (arr!20391 a!3186) index!1321))))

(assert (=> d!102445 (validMask!0 mask!3328)))

(assert (=> d!102445 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20391 a!3186) j!159) a!3186 mask!3328) lt!347985)))

(declare-fun b!780817 () Bool)

(declare-fun e!434321 () SeekEntryResult!7998)

(assert (=> b!780817 (= e!434321 (Found!7998 index!1321))))

(declare-fun e!434322 () SeekEntryResult!7998)

(declare-fun b!780818 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780818 (= e!434322 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20391 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!780819 () Bool)

(assert (=> b!780819 (= e!434322 (MissingVacant!7998 resIntermediateIndex!5))))

(declare-fun b!780820 () Bool)

(assert (=> b!780820 (= e!434323 Undefined!7998)))

(declare-fun b!780821 () Bool)

(declare-fun c!86591 () Bool)

(assert (=> b!780821 (= c!86591 (= lt!347986 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!780821 (= e!434321 e!434322)))

(declare-fun b!780822 () Bool)

(assert (=> b!780822 (= e!434323 e!434321)))

(declare-fun c!86592 () Bool)

(assert (=> b!780822 (= c!86592 (= lt!347986 (select (arr!20391 a!3186) j!159)))))

(assert (= (and d!102445 c!86590) b!780820))

(assert (= (and d!102445 (not c!86590)) b!780822))

(assert (= (and b!780822 c!86592) b!780817))

(assert (= (and b!780822 (not c!86592)) b!780821))

(assert (= (and b!780821 c!86591) b!780819))

(assert (= (and b!780821 (not c!86591)) b!780818))

(declare-fun m!724087 () Bool)

(assert (=> d!102445 m!724087))

(declare-fun m!724089 () Bool)

(assert (=> d!102445 m!724089))

(declare-fun m!724091 () Bool)

(assert (=> d!102445 m!724091))

(assert (=> d!102445 m!723955))

(declare-fun m!724093 () Bool)

(assert (=> b!780818 m!724093))

(assert (=> b!780818 m!724093))

(assert (=> b!780818 m!723921))

(declare-fun m!724095 () Bool)

(assert (=> b!780818 m!724095))

(assert (=> b!780618 d!102445))

(declare-fun b!780895 () Bool)

(declare-fun e!434367 () SeekEntryResult!7998)

(declare-fun e!434365 () SeekEntryResult!7998)

(assert (=> b!780895 (= e!434367 e!434365)))

(declare-fun lt!348014 () (_ BitVec 64))

(declare-fun lt!348013 () SeekEntryResult!7998)

(assert (=> b!780895 (= lt!348014 (select (arr!20391 a!3186) (index!34361 lt!348013)))))

(declare-fun c!86622 () Bool)

(assert (=> b!780895 (= c!86622 (= lt!348014 k!2102))))

(declare-fun b!780896 () Bool)

(declare-fun c!86621 () Bool)

(assert (=> b!780896 (= c!86621 (= lt!348014 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!434366 () SeekEntryResult!7998)

(assert (=> b!780896 (= e!434365 e!434366)))

(declare-fun b!780897 () Bool)

(assert (=> b!780897 (= e!434366 (MissingZero!7998 (index!34361 lt!348013)))))

(declare-fun b!780898 () Bool)

(assert (=> b!780898 (= e!434366 (seekKeyOrZeroReturnVacant!0 (x!65337 lt!348013) (index!34361 lt!348013) (index!34361 lt!348013) k!2102 a!3186 mask!3328))))

(declare-fun d!102455 () Bool)

(declare-fun lt!348015 () SeekEntryResult!7998)

(assert (=> d!102455 (and (or (is-Undefined!7998 lt!348015) (not (is-Found!7998 lt!348015)) (and (bvsge (index!34360 lt!348015) #b00000000000000000000000000000000) (bvslt (index!34360 lt!348015) (size!20812 a!3186)))) (or (is-Undefined!7998 lt!348015) (is-Found!7998 lt!348015) (not (is-MissingZero!7998 lt!348015)) (and (bvsge (index!34359 lt!348015) #b00000000000000000000000000000000) (bvslt (index!34359 lt!348015) (size!20812 a!3186)))) (or (is-Undefined!7998 lt!348015) (is-Found!7998 lt!348015) (is-MissingZero!7998 lt!348015) (not (is-MissingVacant!7998 lt!348015)) (and (bvsge (index!34362 lt!348015) #b00000000000000000000000000000000) (bvslt (index!34362 lt!348015) (size!20812 a!3186)))) (or (is-Undefined!7998 lt!348015) (ite (is-Found!7998 lt!348015) (= (select (arr!20391 a!3186) (index!34360 lt!348015)) k!2102) (ite (is-MissingZero!7998 lt!348015) (= (select (arr!20391 a!3186) (index!34359 lt!348015)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7998 lt!348015) (= (select (arr!20391 a!3186) (index!34362 lt!348015)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102455 (= lt!348015 e!434367)))

(declare-fun c!86620 () Bool)

(assert (=> d!102455 (= c!86620 (and (is-Intermediate!7998 lt!348013) (undefined!8810 lt!348013)))))

(assert (=> d!102455 (= lt!348013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!102455 (validMask!0 mask!3328)))

(assert (=> d!102455 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!348015)))

(declare-fun b!780899 () Bool)

(assert (=> b!780899 (= e!434367 Undefined!7998)))

(declare-fun b!780900 () Bool)

(assert (=> b!780900 (= e!434365 (Found!7998 (index!34361 lt!348013)))))

(assert (= (and d!102455 c!86620) b!780899))

(assert (= (and d!102455 (not c!86620)) b!780895))

(assert (= (and b!780895 c!86622) b!780900))

(assert (= (and b!780895 (not c!86622)) b!780896))

(assert (= (and b!780896 c!86621) b!780897))

(assert (= (and b!780896 (not c!86621)) b!780898))

(declare-fun m!724125 () Bool)

(assert (=> b!780895 m!724125))

(declare-fun m!724127 () Bool)

(assert (=> b!780898 m!724127))

(declare-fun m!724129 () Bool)

(assert (=> d!102455 m!724129))

(declare-fun m!724131 () Bool)

(assert (=> d!102455 m!724131))

(assert (=> d!102455 m!724131))

(declare-fun m!724133 () Bool)

(assert (=> d!102455 m!724133))

(assert (=> d!102455 m!723955))

(declare-fun m!724135 () Bool)

(assert (=> d!102455 m!724135))

(declare-fun m!724137 () Bool)

(assert (=> d!102455 m!724137))

(assert (=> b!780607 d!102455))

(declare-fun d!102473 () Bool)

(declare-fun res!528469 () Bool)

(declare-fun e!434374 () Bool)

(assert (=> d!102473 (=> res!528469 e!434374)))

(assert (=> d!102473 (= res!528469 (bvsge #b00000000000000000000000000000000 (size!20812 a!3186)))))

(assert (=> d!102473 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!434374)))

(declare-fun b!780909 () Bool)

(declare-fun e!434375 () Bool)

(declare-fun e!434376 () Bool)

(assert (=> b!780909 (= e!434375 e!434376)))

(declare-fun lt!348024 () (_ BitVec 64))

(assert (=> b!780909 (= lt!348024 (select (arr!20391 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!348023 () Unit!26902)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42607 (_ BitVec 64) (_ BitVec 32)) Unit!26902)

(assert (=> b!780909 (= lt!348023 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!348024 #b00000000000000000000000000000000))))

(assert (=> b!780909 (arrayContainsKey!0 a!3186 lt!348024 #b00000000000000000000000000000000)))

(declare-fun lt!348022 () Unit!26902)

(assert (=> b!780909 (= lt!348022 lt!348023)))

(declare-fun res!528470 () Bool)

(assert (=> b!780909 (= res!528470 (= (seekEntryOrOpen!0 (select (arr!20391 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7998 #b00000000000000000000000000000000)))))

(assert (=> b!780909 (=> (not res!528470) (not e!434376))))

(declare-fun b!780910 () Bool)

(declare-fun call!35244 () Bool)

(assert (=> b!780910 (= e!434376 call!35244)))

(declare-fun b!780911 () Bool)

(assert (=> b!780911 (= e!434374 e!434375)))

(declare-fun c!86625 () Bool)

(assert (=> b!780911 (= c!86625 (validKeyInArray!0 (select (arr!20391 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!780912 () Bool)

(assert (=> b!780912 (= e!434375 call!35244)))

(declare-fun bm!35241 () Bool)

(assert (=> bm!35241 (= call!35244 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!102473 (not res!528469)) b!780911))

(assert (= (and b!780911 c!86625) b!780909))

(assert (= (and b!780911 (not c!86625)) b!780912))

(assert (= (and b!780909 res!528470) b!780910))

(assert (= (or b!780910 b!780912) bm!35241))

(assert (=> b!780909 m!724075))

(declare-fun m!724139 () Bool)

(assert (=> b!780909 m!724139))

(declare-fun m!724141 () Bool)

(assert (=> b!780909 m!724141))

(assert (=> b!780909 m!724075))

(declare-fun m!724143 () Bool)

(assert (=> b!780909 m!724143))

(assert (=> b!780911 m!724075))

(assert (=> b!780911 m!724075))

(declare-fun m!724145 () Bool)

(assert (=> b!780911 m!724145))

(declare-fun m!724147 () Bool)

(assert (=> bm!35241 m!724147))

(assert (=> b!780614 d!102473))

(declare-fun d!102475 () Bool)

(assert (=> d!102475 (= (validKeyInArray!0 (select (arr!20391 a!3186) j!159)) (and (not (= (select (arr!20391 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20391 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!780622 d!102475))

(assert (=> b!780611 d!102445))

(declare-fun b!780953 () Bool)

(declare-fun e!434404 () Bool)

(declare-fun e!434402 () Bool)

(assert (=> b!780953 (= e!434404 e!434402)))

(declare-fun res!528483 () Bool)

(assert (=> b!780953 (=> (not res!528483) (not e!434402))))

(declare-fun e!434401 () Bool)

(assert (=> b!780953 (= res!528483 (not e!434401))))

(declare-fun res!528484 () Bool)

(assert (=> b!780953 (=> (not res!528484) (not e!434401))))

(assert (=> b!780953 (= res!528484 (validKeyInArray!0 (select (arr!20391 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!780954 () Bool)

(declare-fun e!434403 () Bool)

(declare-fun call!35247 () Bool)

(assert (=> b!780954 (= e!434403 call!35247)))

(declare-fun bm!35244 () Bool)

(declare-fun c!86640 () Bool)

(assert (=> bm!35244 (= call!35247 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!86640 (Cons!14442 (select (arr!20391 a!3186) #b00000000000000000000000000000000) Nil!14443) Nil!14443)))))

(declare-fun b!780955 () Bool)

(assert (=> b!780955 (= e!434402 e!434403)))

(assert (=> b!780955 (= c!86640 (validKeyInArray!0 (select (arr!20391 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!780957 () Bool)

(declare-fun contains!4107 (List!14446 (_ BitVec 64)) Bool)

(assert (=> b!780957 (= e!434401 (contains!4107 Nil!14443 (select (arr!20391 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!102477 () Bool)

(declare-fun res!528485 () Bool)

(assert (=> d!102477 (=> res!528485 e!434404)))

(assert (=> d!102477 (= res!528485 (bvsge #b00000000000000000000000000000000 (size!20812 a!3186)))))

(assert (=> d!102477 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14443) e!434404)))

(declare-fun b!780956 () Bool)

(assert (=> b!780956 (= e!434403 call!35247)))

(assert (= (and d!102477 (not res!528485)) b!780953))

(assert (= (and b!780953 res!528484) b!780957))

(assert (= (and b!780953 res!528483) b!780955))

(assert (= (and b!780955 c!86640) b!780956))

(assert (= (and b!780955 (not c!86640)) b!780954))

(assert (= (or b!780956 b!780954) bm!35244))

(assert (=> b!780953 m!724075))

(assert (=> b!780953 m!724075))

(assert (=> b!780953 m!724145))

(assert (=> bm!35244 m!724075))

(declare-fun m!724149 () Bool)

(assert (=> bm!35244 m!724149))

(assert (=> b!780955 m!724075))

(assert (=> b!780955 m!724075))

(assert (=> b!780955 m!724145))

(assert (=> b!780957 m!724075))

(assert (=> b!780957 m!724075))

(declare-fun m!724151 () Bool)

(assert (=> b!780957 m!724151))

(assert (=> b!780612 d!102477))

(declare-fun b!781055 () Bool)

(declare-fun e!434462 () SeekEntryResult!7998)

(declare-fun e!434461 () SeekEntryResult!7998)

(assert (=> b!781055 (= e!434462 e!434461)))

(declare-fun c!86676 () Bool)

(declare-fun lt!348083 () (_ BitVec 64))

(assert (=> b!781055 (= c!86676 (or (= lt!348083 lt!347892) (= (bvadd lt!348083 lt!348083) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781056 () Bool)

(declare-fun lt!348082 () SeekEntryResult!7998)

(assert (=> b!781056 (and (bvsge (index!34361 lt!348082) #b00000000000000000000000000000000) (bvslt (index!34361 lt!348082) (size!20812 lt!347893)))))

(declare-fun res!528518 () Bool)

(assert (=> b!781056 (= res!528518 (= (select (arr!20391 lt!347893) (index!34361 lt!348082)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!434463 () Bool)

(assert (=> b!781056 (=> res!528518 e!434463)))

(declare-fun b!781057 () Bool)

(assert (=> b!781057 (and (bvsge (index!34361 lt!348082) #b00000000000000000000000000000000) (bvslt (index!34361 lt!348082) (size!20812 lt!347893)))))

(assert (=> b!781057 (= e!434463 (= (select (arr!20391 lt!347893) (index!34361 lt!348082)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781058 () Bool)

(assert (=> b!781058 (= e!434462 (Intermediate!7998 true index!1321 x!1131))))

(declare-fun b!781059 () Bool)

(declare-fun e!434464 () Bool)

(declare-fun e!434465 () Bool)

(assert (=> b!781059 (= e!434464 e!434465)))

(declare-fun res!528517 () Bool)

(assert (=> b!781059 (= res!528517 (and (is-Intermediate!7998 lt!348082) (not (undefined!8810 lt!348082)) (bvslt (x!65337 lt!348082) #b01111111111111111111111111111110) (bvsge (x!65337 lt!348082) #b00000000000000000000000000000000) (bvsge (x!65337 lt!348082) x!1131)))))

(assert (=> b!781059 (=> (not res!528517) (not e!434465))))

(declare-fun b!781060 () Bool)

(assert (=> b!781060 (and (bvsge (index!34361 lt!348082) #b00000000000000000000000000000000) (bvslt (index!34361 lt!348082) (size!20812 lt!347893)))))

(declare-fun res!528516 () Bool)

(assert (=> b!781060 (= res!528516 (= (select (arr!20391 lt!347893) (index!34361 lt!348082)) lt!347892))))

(assert (=> b!781060 (=> res!528516 e!434463)))

(assert (=> b!781060 (= e!434465 e!434463)))

(declare-fun b!781062 () Bool)

(assert (=> b!781062 (= e!434464 (bvsge (x!65337 lt!348082) #b01111111111111111111111111111110))))

(declare-fun b!781063 () Bool)

(assert (=> b!781063 (= e!434461 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!347892 lt!347893 mask!3328))))

(declare-fun d!102479 () Bool)

(assert (=> d!102479 e!434464))

(declare-fun c!86677 () Bool)

(assert (=> d!102479 (= c!86677 (and (is-Intermediate!7998 lt!348082) (undefined!8810 lt!348082)))))

(assert (=> d!102479 (= lt!348082 e!434462)))

(declare-fun c!86675 () Bool)

(assert (=> d!102479 (= c!86675 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102479 (= lt!348083 (select (arr!20391 lt!347893) index!1321))))

(assert (=> d!102479 (validMask!0 mask!3328)))

(assert (=> d!102479 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347892 lt!347893 mask!3328) lt!348082)))

(declare-fun b!781061 () Bool)

(assert (=> b!781061 (= e!434461 (Intermediate!7998 false index!1321 x!1131))))

(assert (= (and d!102479 c!86675) b!781058))

(assert (= (and d!102479 (not c!86675)) b!781055))

(assert (= (and b!781055 c!86676) b!781061))

(assert (= (and b!781055 (not c!86676)) b!781063))

(assert (= (and d!102479 c!86677) b!781062))

(assert (= (and d!102479 (not c!86677)) b!781059))

(assert (= (and b!781059 res!528517) b!781060))

(assert (= (and b!781060 (not res!528516)) b!781056))

(assert (= (and b!781056 (not res!528518)) b!781057))

(declare-fun m!724235 () Bool)

(assert (=> b!781056 m!724235))

(declare-fun m!724237 () Bool)

(assert (=> d!102479 m!724237))

(assert (=> d!102479 m!723955))

(assert (=> b!781060 m!724235))

(assert (=> b!781063 m!724093))

(assert (=> b!781063 m!724093))

(declare-fun m!724239 () Bool)

(assert (=> b!781063 m!724239))

(assert (=> b!781057 m!724235))

(assert (=> b!780623 d!102479))

(declare-fun b!781064 () Bool)

(declare-fun e!434467 () SeekEntryResult!7998)

(declare-fun e!434466 () SeekEntryResult!7998)

(assert (=> b!781064 (= e!434467 e!434466)))

(declare-fun c!86679 () Bool)

(declare-fun lt!348085 () (_ BitVec 64))

(assert (=> b!781064 (= c!86679 (or (= lt!348085 lt!347892) (= (bvadd lt!348085 lt!348085) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781065 () Bool)

(declare-fun lt!348084 () SeekEntryResult!7998)

(assert (=> b!781065 (and (bvsge (index!34361 lt!348084) #b00000000000000000000000000000000) (bvslt (index!34361 lt!348084) (size!20812 lt!347893)))))

(declare-fun res!528521 () Bool)

(assert (=> b!781065 (= res!528521 (= (select (arr!20391 lt!347893) (index!34361 lt!348084)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!434468 () Bool)

(assert (=> b!781065 (=> res!528521 e!434468)))

(declare-fun b!781066 () Bool)

(assert (=> b!781066 (and (bvsge (index!34361 lt!348084) #b00000000000000000000000000000000) (bvslt (index!34361 lt!348084) (size!20812 lt!347893)))))

(assert (=> b!781066 (= e!434468 (= (select (arr!20391 lt!347893) (index!34361 lt!348084)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781067 () Bool)

(assert (=> b!781067 (= e!434467 (Intermediate!7998 true (toIndex!0 lt!347892 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!781068 () Bool)

(declare-fun e!434469 () Bool)

(declare-fun e!434470 () Bool)

(assert (=> b!781068 (= e!434469 e!434470)))

(declare-fun res!528520 () Bool)

(assert (=> b!781068 (= res!528520 (and (is-Intermediate!7998 lt!348084) (not (undefined!8810 lt!348084)) (bvslt (x!65337 lt!348084) #b01111111111111111111111111111110) (bvsge (x!65337 lt!348084) #b00000000000000000000000000000000) (bvsge (x!65337 lt!348084) #b00000000000000000000000000000000)))))

(assert (=> b!781068 (=> (not res!528520) (not e!434470))))

(declare-fun b!781069 () Bool)

(assert (=> b!781069 (and (bvsge (index!34361 lt!348084) #b00000000000000000000000000000000) (bvslt (index!34361 lt!348084) (size!20812 lt!347893)))))

(declare-fun res!528519 () Bool)

(assert (=> b!781069 (= res!528519 (= (select (arr!20391 lt!347893) (index!34361 lt!348084)) lt!347892))))

(assert (=> b!781069 (=> res!528519 e!434468)))

(assert (=> b!781069 (= e!434470 e!434468)))

(declare-fun b!781071 () Bool)

(assert (=> b!781071 (= e!434469 (bvsge (x!65337 lt!348084) #b01111111111111111111111111111110))))

(declare-fun b!781072 () Bool)

(assert (=> b!781072 (= e!434466 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!347892 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!347892 lt!347893 mask!3328))))

(declare-fun d!102509 () Bool)

(assert (=> d!102509 e!434469))

(declare-fun c!86680 () Bool)

(assert (=> d!102509 (= c!86680 (and (is-Intermediate!7998 lt!348084) (undefined!8810 lt!348084)))))

(assert (=> d!102509 (= lt!348084 e!434467)))

(declare-fun c!86678 () Bool)

(assert (=> d!102509 (= c!86678 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102509 (= lt!348085 (select (arr!20391 lt!347893) (toIndex!0 lt!347892 mask!3328)))))

(assert (=> d!102509 (validMask!0 mask!3328)))

(assert (=> d!102509 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347892 mask!3328) lt!347892 lt!347893 mask!3328) lt!348084)))

(declare-fun b!781070 () Bool)

(assert (=> b!781070 (= e!434466 (Intermediate!7998 false (toIndex!0 lt!347892 mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!102509 c!86678) b!781067))

(assert (= (and d!102509 (not c!86678)) b!781064))

(assert (= (and b!781064 c!86679) b!781070))

(assert (= (and b!781064 (not c!86679)) b!781072))

(assert (= (and d!102509 c!86680) b!781071))

(assert (= (and d!102509 (not c!86680)) b!781068))

(assert (= (and b!781068 res!528520) b!781069))

(assert (= (and b!781069 (not res!528519)) b!781065))

(assert (= (and b!781065 (not res!528521)) b!781066))

(declare-fun m!724241 () Bool)

(assert (=> b!781065 m!724241))

(assert (=> d!102509 m!723941))

(declare-fun m!724243 () Bool)

(assert (=> d!102509 m!724243))

(assert (=> d!102509 m!723955))

(assert (=> b!781069 m!724241))

(assert (=> b!781072 m!723941))

(declare-fun m!724245 () Bool)

(assert (=> b!781072 m!724245))

(assert (=> b!781072 m!724245))

(declare-fun m!724247 () Bool)

(assert (=> b!781072 m!724247))

(assert (=> b!781066 m!724241))

(assert (=> b!780623 d!102509))

(declare-fun d!102511 () Bool)

(declare-fun lt!348091 () (_ BitVec 32))

(declare-fun lt!348090 () (_ BitVec 32))

(assert (=> d!102511 (= lt!348091 (bvmul (bvxor lt!348090 (bvlshr lt!348090 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102511 (= lt!348090 ((_ extract 31 0) (bvand (bvxor lt!347892 (bvlshr lt!347892 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102511 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!528522 (let ((h!15564 ((_ extract 31 0) (bvand (bvxor lt!347892 (bvlshr lt!347892 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65347 (bvmul (bvxor h!15564 (bvlshr h!15564 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65347 (bvlshr x!65347 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!528522 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!528522 #b00000000000000000000000000000000))))))

(assert (=> d!102511 (= (toIndex!0 lt!347892 mask!3328) (bvand (bvxor lt!348091 (bvlshr lt!348091 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!780623 d!102511))

(declare-fun lt!348092 () SeekEntryResult!7998)

(declare-fun d!102513 () Bool)

(assert (=> d!102513 (and (or (is-Undefined!7998 lt!348092) (not (is-Found!7998 lt!348092)) (and (bvsge (index!34360 lt!348092) #b00000000000000000000000000000000) (bvslt (index!34360 lt!348092) (size!20812 a!3186)))) (or (is-Undefined!7998 lt!348092) (is-Found!7998 lt!348092) (not (is-MissingVacant!7998 lt!348092)) (not (= (index!34362 lt!348092) resIntermediateIndex!5)) (and (bvsge (index!34362 lt!348092) #b00000000000000000000000000000000) (bvslt (index!34362 lt!348092) (size!20812 a!3186)))) (or (is-Undefined!7998 lt!348092) (ite (is-Found!7998 lt!348092) (= (select (arr!20391 a!3186) (index!34360 lt!348092)) (select (arr!20391 a!3186) j!159)) (and (is-MissingVacant!7998 lt!348092) (= (index!34362 lt!348092) resIntermediateIndex!5) (= (select (arr!20391 a!3186) (index!34362 lt!348092)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!434473 () SeekEntryResult!7998)

(assert (=> d!102513 (= lt!348092 e!434473)))

(declare-fun c!86681 () Bool)

(assert (=> d!102513 (= c!86681 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!348093 () (_ BitVec 64))

(assert (=> d!102513 (= lt!348093 (select (arr!20391 a!3186) resIntermediateIndex!5))))

(assert (=> d!102513 (validMask!0 mask!3328)))

(assert (=> d!102513 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20391 a!3186) j!159) a!3186 mask!3328) lt!348092)))

(declare-fun b!781073 () Bool)

(declare-fun e!434471 () SeekEntryResult!7998)

(assert (=> b!781073 (= e!434471 (Found!7998 resIntermediateIndex!5))))

(declare-fun b!781074 () Bool)

(declare-fun e!434472 () SeekEntryResult!7998)

(assert (=> b!781074 (= e!434472 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20391 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!781075 () Bool)

(assert (=> b!781075 (= e!434472 (MissingVacant!7998 resIntermediateIndex!5))))

(declare-fun b!781076 () Bool)

(assert (=> b!781076 (= e!434473 Undefined!7998)))

(declare-fun b!781077 () Bool)

(declare-fun c!86682 () Bool)

(assert (=> b!781077 (= c!86682 (= lt!348093 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!781077 (= e!434471 e!434472)))

(declare-fun b!781078 () Bool)

(assert (=> b!781078 (= e!434473 e!434471)))

(declare-fun c!86683 () Bool)

(assert (=> b!781078 (= c!86683 (= lt!348093 (select (arr!20391 a!3186) j!159)))))

(assert (= (and d!102513 c!86681) b!781076))

(assert (= (and d!102513 (not c!86681)) b!781078))

(assert (= (and b!781078 c!86683) b!781073))

(assert (= (and b!781078 (not c!86683)) b!781077))

(assert (= (and b!781077 c!86682) b!781075))

(assert (= (and b!781077 (not c!86682)) b!781074))

(declare-fun m!724249 () Bool)

(assert (=> d!102513 m!724249))

(declare-fun m!724251 () Bool)

(assert (=> d!102513 m!724251))

(assert (=> d!102513 m!723939))

(assert (=> d!102513 m!723955))

(declare-fun m!724253 () Bool)

(assert (=> b!781074 m!724253))

(assert (=> b!781074 m!724253))

(assert (=> b!781074 m!723921))

(declare-fun m!724255 () Bool)

(assert (=> b!781074 m!724255))

(assert (=> b!780609 d!102513))

(declare-fun b!781079 () Bool)

(declare-fun e!434476 () SeekEntryResult!7998)

(declare-fun e!434474 () SeekEntryResult!7998)

(assert (=> b!781079 (= e!434476 e!434474)))

(declare-fun lt!348095 () (_ BitVec 64))

(declare-fun lt!348094 () SeekEntryResult!7998)

(assert (=> b!781079 (= lt!348095 (select (arr!20391 a!3186) (index!34361 lt!348094)))))

(declare-fun c!86686 () Bool)

(assert (=> b!781079 (= c!86686 (= lt!348095 (select (arr!20391 a!3186) j!159)))))

(declare-fun b!781080 () Bool)

(declare-fun c!86685 () Bool)

(assert (=> b!781080 (= c!86685 (= lt!348095 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!434475 () SeekEntryResult!7998)

(assert (=> b!781080 (= e!434474 e!434475)))

(declare-fun b!781081 () Bool)

(assert (=> b!781081 (= e!434475 (MissingZero!7998 (index!34361 lt!348094)))))

(declare-fun b!781082 () Bool)

(assert (=> b!781082 (= e!434475 (seekKeyOrZeroReturnVacant!0 (x!65337 lt!348094) (index!34361 lt!348094) (index!34361 lt!348094) (select (arr!20391 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!102515 () Bool)

(declare-fun lt!348096 () SeekEntryResult!7998)

(assert (=> d!102515 (and (or (is-Undefined!7998 lt!348096) (not (is-Found!7998 lt!348096)) (and (bvsge (index!34360 lt!348096) #b00000000000000000000000000000000) (bvslt (index!34360 lt!348096) (size!20812 a!3186)))) (or (is-Undefined!7998 lt!348096) (is-Found!7998 lt!348096) (not (is-MissingZero!7998 lt!348096)) (and (bvsge (index!34359 lt!348096) #b00000000000000000000000000000000) (bvslt (index!34359 lt!348096) (size!20812 a!3186)))) (or (is-Undefined!7998 lt!348096) (is-Found!7998 lt!348096) (is-MissingZero!7998 lt!348096) (not (is-MissingVacant!7998 lt!348096)) (and (bvsge (index!34362 lt!348096) #b00000000000000000000000000000000) (bvslt (index!34362 lt!348096) (size!20812 a!3186)))) (or (is-Undefined!7998 lt!348096) (ite (is-Found!7998 lt!348096) (= (select (arr!20391 a!3186) (index!34360 lt!348096)) (select (arr!20391 a!3186) j!159)) (ite (is-MissingZero!7998 lt!348096) (= (select (arr!20391 a!3186) (index!34359 lt!348096)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7998 lt!348096) (= (select (arr!20391 a!3186) (index!34362 lt!348096)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102515 (= lt!348096 e!434476)))

(declare-fun c!86684 () Bool)

(assert (=> d!102515 (= c!86684 (and (is-Intermediate!7998 lt!348094) (undefined!8810 lt!348094)))))

(assert (=> d!102515 (= lt!348094 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20391 a!3186) j!159) mask!3328) (select (arr!20391 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102515 (validMask!0 mask!3328)))

(assert (=> d!102515 (= (seekEntryOrOpen!0 (select (arr!20391 a!3186) j!159) a!3186 mask!3328) lt!348096)))

(declare-fun b!781083 () Bool)

(assert (=> b!781083 (= e!434476 Undefined!7998)))

(declare-fun b!781084 () Bool)

(assert (=> b!781084 (= e!434474 (Found!7998 (index!34361 lt!348094)))))

(assert (= (and d!102515 c!86684) b!781083))

(assert (= (and d!102515 (not c!86684)) b!781079))

(assert (= (and b!781079 c!86686) b!781084))

(assert (= (and b!781079 (not c!86686)) b!781080))

(assert (= (and b!781080 c!86685) b!781081))

(assert (= (and b!781080 (not c!86685)) b!781082))

(declare-fun m!724257 () Bool)

(assert (=> b!781079 m!724257))

(assert (=> b!781082 m!723921))

(declare-fun m!724259 () Bool)

(assert (=> b!781082 m!724259))

(declare-fun m!724261 () Bool)

(assert (=> d!102515 m!724261))

(assert (=> d!102515 m!723921))

(assert (=> d!102515 m!723949))

(assert (=> d!102515 m!723949))

(assert (=> d!102515 m!723921))

(assert (=> d!102515 m!723951))

(assert (=> d!102515 m!723955))

(declare-fun m!724263 () Bool)

(assert (=> d!102515 m!724263))

(declare-fun m!724265 () Bool)

(assert (=> d!102515 m!724265))

(assert (=> b!780608 d!102515))

(declare-fun d!102517 () Bool)

(declare-fun res!528523 () Bool)

(declare-fun e!434477 () Bool)

(assert (=> d!102517 (=> res!528523 e!434477)))

(assert (=> d!102517 (= res!528523 (bvsge j!159 (size!20812 a!3186)))))

(assert (=> d!102517 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!434477)))

(declare-fun b!781085 () Bool)

(declare-fun e!434478 () Bool)

(declare-fun e!434479 () Bool)

(assert (=> b!781085 (= e!434478 e!434479)))

(declare-fun lt!348099 () (_ BitVec 64))

(assert (=> b!781085 (= lt!348099 (select (arr!20391 a!3186) j!159))))

(declare-fun lt!348098 () Unit!26902)

(assert (=> b!781085 (= lt!348098 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!348099 j!159))))

(assert (=> b!781085 (arrayContainsKey!0 a!3186 lt!348099 #b00000000000000000000000000000000)))

(declare-fun lt!348097 () Unit!26902)

(assert (=> b!781085 (= lt!348097 lt!348098)))

(declare-fun res!528524 () Bool)

(assert (=> b!781085 (= res!528524 (= (seekEntryOrOpen!0 (select (arr!20391 a!3186) j!159) a!3186 mask!3328) (Found!7998 j!159)))))

(assert (=> b!781085 (=> (not res!528524) (not e!434479))))

(declare-fun b!781086 () Bool)

(declare-fun call!35252 () Bool)

(assert (=> b!781086 (= e!434479 call!35252)))

(declare-fun b!781087 () Bool)

(assert (=> b!781087 (= e!434477 e!434478)))

(declare-fun c!86687 () Bool)

(assert (=> b!781087 (= c!86687 (validKeyInArray!0 (select (arr!20391 a!3186) j!159)))))

(declare-fun b!781088 () Bool)

(assert (=> b!781088 (= e!434478 call!35252)))

(declare-fun bm!35249 () Bool)

(assert (=> bm!35249 (= call!35252 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!102517 (not res!528523)) b!781087))

(assert (= (and b!781087 c!86687) b!781085))

(assert (= (and b!781087 (not c!86687)) b!781088))

(assert (= (and b!781085 res!528524) b!781086))

(assert (= (or b!781086 b!781088) bm!35249))

(assert (=> b!781085 m!723921))

(declare-fun m!724267 () Bool)

(assert (=> b!781085 m!724267))

(declare-fun m!724269 () Bool)

(assert (=> b!781085 m!724269))

(assert (=> b!781085 m!723921))

(assert (=> b!781085 m!723927))

(assert (=> b!781087 m!723921))

(assert (=> b!781087 m!723921))

(assert (=> b!781087 m!723933))

(declare-fun m!724271 () Bool)

(assert (=> bm!35249 m!724271))

(assert (=> b!780608 d!102517))

(declare-fun d!102519 () Bool)

(assert (=> d!102519 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348102 () Unit!26902)

(declare-fun choose!38 (array!42607 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26902)

(assert (=> d!102519 (= lt!348102 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102519 (validMask!0 mask!3328)))

(assert (=> d!102519 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!348102)))

(declare-fun bs!21723 () Bool)

(assert (= bs!21723 d!102519))

(assert (=> bs!21723 m!723929))

(declare-fun m!724273 () Bool)

(assert (=> bs!21723 m!724273))

(assert (=> bs!21723 m!723955))

(assert (=> b!780608 d!102519))

(declare-fun b!781089 () Bool)

(declare-fun e!434481 () SeekEntryResult!7998)

(declare-fun e!434480 () SeekEntryResult!7998)

(assert (=> b!781089 (= e!434481 e!434480)))

(declare-fun lt!348104 () (_ BitVec 64))

(declare-fun c!86689 () Bool)

(assert (=> b!781089 (= c!86689 (or (= lt!348104 (select (arr!20391 a!3186) j!159)) (= (bvadd lt!348104 lt!348104) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781090 () Bool)

(declare-fun lt!348103 () SeekEntryResult!7998)

(assert (=> b!781090 (and (bvsge (index!34361 lt!348103) #b00000000000000000000000000000000) (bvslt (index!34361 lt!348103) (size!20812 a!3186)))))

(declare-fun res!528527 () Bool)

(assert (=> b!781090 (= res!528527 (= (select (arr!20391 a!3186) (index!34361 lt!348103)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!434482 () Bool)

(assert (=> b!781090 (=> res!528527 e!434482)))

(declare-fun b!781091 () Bool)

(assert (=> b!781091 (and (bvsge (index!34361 lt!348103) #b00000000000000000000000000000000) (bvslt (index!34361 lt!348103) (size!20812 a!3186)))))

(assert (=> b!781091 (= e!434482 (= (select (arr!20391 a!3186) (index!34361 lt!348103)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781092 () Bool)

(assert (=> b!781092 (= e!434481 (Intermediate!7998 true (toIndex!0 (select (arr!20391 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!781093 () Bool)

(declare-fun e!434483 () Bool)

(declare-fun e!434484 () Bool)

(assert (=> b!781093 (= e!434483 e!434484)))

(declare-fun res!528526 () Bool)

(assert (=> b!781093 (= res!528526 (and (is-Intermediate!7998 lt!348103) (not (undefined!8810 lt!348103)) (bvslt (x!65337 lt!348103) #b01111111111111111111111111111110) (bvsge (x!65337 lt!348103) #b00000000000000000000000000000000) (bvsge (x!65337 lt!348103) #b00000000000000000000000000000000)))))

(assert (=> b!781093 (=> (not res!528526) (not e!434484))))

(declare-fun b!781094 () Bool)

(assert (=> b!781094 (and (bvsge (index!34361 lt!348103) #b00000000000000000000000000000000) (bvslt (index!34361 lt!348103) (size!20812 a!3186)))))

(declare-fun res!528525 () Bool)

(assert (=> b!781094 (= res!528525 (= (select (arr!20391 a!3186) (index!34361 lt!348103)) (select (arr!20391 a!3186) j!159)))))

(assert (=> b!781094 (=> res!528525 e!434482)))

(assert (=> b!781094 (= e!434484 e!434482)))

(declare-fun b!781096 () Bool)

(assert (=> b!781096 (= e!434483 (bvsge (x!65337 lt!348103) #b01111111111111111111111111111110))))

(declare-fun b!781097 () Bool)

(assert (=> b!781097 (= e!434480 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20391 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20391 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!102521 () Bool)

(assert (=> d!102521 e!434483))

(declare-fun c!86690 () Bool)

(assert (=> d!102521 (= c!86690 (and (is-Intermediate!7998 lt!348103) (undefined!8810 lt!348103)))))

(assert (=> d!102521 (= lt!348103 e!434481)))

(declare-fun c!86688 () Bool)

(assert (=> d!102521 (= c!86688 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102521 (= lt!348104 (select (arr!20391 a!3186) (toIndex!0 (select (arr!20391 a!3186) j!159) mask!3328)))))

(assert (=> d!102521 (validMask!0 mask!3328)))

(assert (=> d!102521 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20391 a!3186) j!159) mask!3328) (select (arr!20391 a!3186) j!159) a!3186 mask!3328) lt!348103)))

(declare-fun b!781095 () Bool)

(assert (=> b!781095 (= e!434480 (Intermediate!7998 false (toIndex!0 (select (arr!20391 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!102521 c!86688) b!781092))

(assert (= (and d!102521 (not c!86688)) b!781089))

(assert (= (and b!781089 c!86689) b!781095))

(assert (= (and b!781089 (not c!86689)) b!781097))

(assert (= (and d!102521 c!86690) b!781096))

(assert (= (and d!102521 (not c!86690)) b!781093))

(assert (= (and b!781093 res!528526) b!781094))

(assert (= (and b!781094 (not res!528525)) b!781090))

(assert (= (and b!781090 (not res!528527)) b!781091))

(declare-fun m!724275 () Bool)

(assert (=> b!781090 m!724275))

(assert (=> d!102521 m!723949))

(declare-fun m!724277 () Bool)

(assert (=> d!102521 m!724277))

(assert (=> d!102521 m!723955))

(assert (=> b!781094 m!724275))

(assert (=> b!781097 m!723949))

(declare-fun m!724279 () Bool)

(assert (=> b!781097 m!724279))

(assert (=> b!781097 m!724279))

(assert (=> b!781097 m!723921))

(declare-fun m!724281 () Bool)

(assert (=> b!781097 m!724281))

(assert (=> b!781091 m!724275))

(assert (=> b!780619 d!102521))

(declare-fun d!102523 () Bool)

(declare-fun lt!348110 () (_ BitVec 32))

(declare-fun lt!348109 () (_ BitVec 32))

(assert (=> d!102523 (= lt!348110 (bvmul (bvxor lt!348109 (bvlshr lt!348109 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102523 (= lt!348109 ((_ extract 31 0) (bvand (bvxor (select (arr!20391 a!3186) j!159) (bvlshr (select (arr!20391 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102523 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!528522 (let ((h!15564 ((_ extract 31 0) (bvand (bvxor (select (arr!20391 a!3186) j!159) (bvlshr (select (arr!20391 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65347 (bvmul (bvxor h!15564 (bvlshr h!15564 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65347 (bvlshr x!65347 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!528522 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!528522 #b00000000000000000000000000000000))))))

(assert (=> d!102523 (= (toIndex!0 (select (arr!20391 a!3186) j!159) mask!3328) (bvand (bvxor lt!348110 (bvlshr lt!348110 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!780619 d!102523))

(declare-fun d!102525 () Bool)

(assert (=> d!102525 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67486 d!102525))

(declare-fun d!102533 () Bool)

(assert (=> d!102533 (= (array_inv!16165 a!3186) (bvsge (size!20812 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67486 d!102533))

(declare-fun b!781126 () Bool)

(declare-fun e!434501 () SeekEntryResult!7998)

(declare-fun e!434500 () SeekEntryResult!7998)

(assert (=> b!781126 (= e!434501 e!434500)))

(declare-fun lt!348120 () (_ BitVec 64))

(declare-fun c!86705 () Bool)

(assert (=> b!781126 (= c!86705 (or (= lt!348120 (select (arr!20391 a!3186) j!159)) (= (bvadd lt!348120 lt!348120) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781127 () Bool)

(declare-fun lt!348119 () SeekEntryResult!7998)

(assert (=> b!781127 (and (bvsge (index!34361 lt!348119) #b00000000000000000000000000000000) (bvslt (index!34361 lt!348119) (size!20812 a!3186)))))

(declare-fun res!528532 () Bool)

(assert (=> b!781127 (= res!528532 (= (select (arr!20391 a!3186) (index!34361 lt!348119)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!434502 () Bool)

(assert (=> b!781127 (=> res!528532 e!434502)))

(declare-fun b!781128 () Bool)

(assert (=> b!781128 (and (bvsge (index!34361 lt!348119) #b00000000000000000000000000000000) (bvslt (index!34361 lt!348119) (size!20812 a!3186)))))

(assert (=> b!781128 (= e!434502 (= (select (arr!20391 a!3186) (index!34361 lt!348119)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781129 () Bool)

(assert (=> b!781129 (= e!434501 (Intermediate!7998 true index!1321 x!1131))))

(declare-fun b!781130 () Bool)

(declare-fun e!434503 () Bool)

(declare-fun e!434504 () Bool)

(assert (=> b!781130 (= e!434503 e!434504)))

(declare-fun res!528531 () Bool)

(assert (=> b!781130 (= res!528531 (and (is-Intermediate!7998 lt!348119) (not (undefined!8810 lt!348119)) (bvslt (x!65337 lt!348119) #b01111111111111111111111111111110) (bvsge (x!65337 lt!348119) #b00000000000000000000000000000000) (bvsge (x!65337 lt!348119) x!1131)))))

(assert (=> b!781130 (=> (not res!528531) (not e!434504))))

(declare-fun b!781131 () Bool)

(assert (=> b!781131 (and (bvsge (index!34361 lt!348119) #b00000000000000000000000000000000) (bvslt (index!34361 lt!348119) (size!20812 a!3186)))))

(declare-fun res!528530 () Bool)

(assert (=> b!781131 (= res!528530 (= (select (arr!20391 a!3186) (index!34361 lt!348119)) (select (arr!20391 a!3186) j!159)))))

(assert (=> b!781131 (=> res!528530 e!434502)))

(assert (=> b!781131 (= e!434504 e!434502)))

(declare-fun b!781133 () Bool)

(assert (=> b!781133 (= e!434503 (bvsge (x!65337 lt!348119) #b01111111111111111111111111111110))))

(declare-fun b!781134 () Bool)

(assert (=> b!781134 (= e!434500 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20391 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!102535 () Bool)

(assert (=> d!102535 e!434503))

(declare-fun c!86706 () Bool)

(assert (=> d!102535 (= c!86706 (and (is-Intermediate!7998 lt!348119) (undefined!8810 lt!348119)))))

(assert (=> d!102535 (= lt!348119 e!434501)))

(declare-fun c!86704 () Bool)

(assert (=> d!102535 (= c!86704 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102535 (= lt!348120 (select (arr!20391 a!3186) index!1321))))

(assert (=> d!102535 (validMask!0 mask!3328)))

(assert (=> d!102535 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20391 a!3186) j!159) a!3186 mask!3328) lt!348119)))

(declare-fun b!781132 () Bool)

(assert (=> b!781132 (= e!434500 (Intermediate!7998 false index!1321 x!1131))))

(assert (= (and d!102535 c!86704) b!781129))

(assert (= (and d!102535 (not c!86704)) b!781126))

(assert (= (and b!781126 c!86705) b!781132))

(assert (= (and b!781126 (not c!86705)) b!781134))

(assert (= (and d!102535 c!86706) b!781133))

(assert (= (and d!102535 (not c!86706)) b!781130))

(assert (= (and b!781130 res!528531) b!781131))

(assert (= (and b!781131 (not res!528530)) b!781127))

(assert (= (and b!781127 (not res!528532)) b!781128))

(declare-fun m!724317 () Bool)

(assert (=> b!781127 m!724317))

(assert (=> d!102535 m!724091))

(assert (=> d!102535 m!723955))

(assert (=> b!781131 m!724317))

(assert (=> b!781134 m!724093))

(assert (=> b!781134 m!724093))

(assert (=> b!781134 m!723921))

(declare-fun m!724319 () Bool)

(assert (=> b!781134 m!724319))

(assert (=> b!781128 m!724317))

(assert (=> b!780620 d!102535))

(push 1)

