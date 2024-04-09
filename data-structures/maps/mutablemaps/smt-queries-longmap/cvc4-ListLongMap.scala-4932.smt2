; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67922 () Bool)

(assert start!67922)

(declare-fun b!789948 () Bool)

(declare-fun res!535281 () Bool)

(declare-fun e!439077 () Bool)

(assert (=> b!789948 (=> (not res!535281) (not e!439077))))

(declare-datatypes ((array!42854 0))(
  ( (array!42855 (arr!20510 (Array (_ BitVec 32) (_ BitVec 64))) (size!20931 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42854)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789948 (= res!535281 (validKeyInArray!0 (select (arr!20510 a!3186) j!159)))))

(declare-fun b!789949 () Bool)

(declare-fun res!535287 () Bool)

(declare-fun e!439075 () Bool)

(assert (=> b!789949 (=> (not res!535287) (not e!439075))))

(declare-datatypes ((List!14565 0))(
  ( (Nil!14562) (Cons!14561 (h!15687 (_ BitVec 64)) (t!20888 List!14565)) )
))
(declare-fun arrayNoDuplicates!0 (array!42854 (_ BitVec 32) List!14565) Bool)

(assert (=> b!789949 (= res!535287 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14562))))

(declare-fun b!789950 () Bool)

(declare-datatypes ((Unit!27378 0))(
  ( (Unit!27379) )
))
(declare-fun e!439078 () Unit!27378)

(declare-fun Unit!27380 () Unit!27378)

(assert (=> b!789950 (= e!439078 Unit!27380)))

(declare-fun b!789951 () Bool)

(declare-fun res!535288 () Bool)

(assert (=> b!789951 (=> (not res!535288) (not e!439075))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42854 (_ BitVec 32)) Bool)

(assert (=> b!789951 (= res!535288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!789952 () Bool)

(assert (=> b!789952 (= e!439077 e!439075)))

(declare-fun res!535275 () Bool)

(assert (=> b!789952 (=> (not res!535275) (not e!439075))))

(declare-datatypes ((SeekEntryResult!8117 0))(
  ( (MissingZero!8117 (index!34835 (_ BitVec 32))) (Found!8117 (index!34836 (_ BitVec 32))) (Intermediate!8117 (undefined!8929 Bool) (index!34837 (_ BitVec 32)) (x!65795 (_ BitVec 32))) (Undefined!8117) (MissingVacant!8117 (index!34838 (_ BitVec 32))) )
))
(declare-fun lt!352633 () SeekEntryResult!8117)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!789952 (= res!535275 (or (= lt!352633 (MissingZero!8117 i!1173)) (= lt!352633 (MissingVacant!8117 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42854 (_ BitVec 32)) SeekEntryResult!8117)

(assert (=> b!789952 (= lt!352633 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!789954 () Bool)

(declare-fun Unit!27381 () Unit!27378)

(assert (=> b!789954 (= e!439078 Unit!27381)))

(assert (=> b!789954 false))

(declare-fun b!789955 () Bool)

(declare-fun res!535289 () Bool)

(assert (=> b!789955 (=> (not res!535289) (not e!439077))))

(assert (=> b!789955 (= res!535289 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!352639 () SeekEntryResult!8117)

(declare-fun e!439073 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!789956 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42854 (_ BitVec 32)) SeekEntryResult!8117)

(assert (=> b!789956 (= e!439073 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20510 a!3186) j!159) a!3186 mask!3328) lt!352639))))

(declare-fun b!789957 () Bool)

(declare-fun res!535276 () Bool)

(assert (=> b!789957 (=> (not res!535276) (not e!439075))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!789957 (= res!535276 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20931 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20931 a!3186))))))

(declare-fun b!789958 () Bool)

(declare-fun e!439076 () Bool)

(assert (=> b!789958 (= e!439076 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20510 a!3186) j!159) a!3186 mask!3328) (Found!8117 j!159)))))

(declare-fun b!789959 () Bool)

(declare-fun e!439084 () Bool)

(declare-fun e!439083 () Bool)

(assert (=> b!789959 (= e!439084 (not e!439083))))

(declare-fun res!535284 () Bool)

(assert (=> b!789959 (=> res!535284 e!439083)))

(declare-fun lt!352640 () SeekEntryResult!8117)

(assert (=> b!789959 (= res!535284 (or (not (is-Intermediate!8117 lt!352640)) (bvslt x!1131 (x!65795 lt!352640)) (not (= x!1131 (x!65795 lt!352640))) (not (= index!1321 (index!34837 lt!352640)))))))

(assert (=> b!789959 e!439073))

(declare-fun res!535274 () Bool)

(assert (=> b!789959 (=> (not res!535274) (not e!439073))))

(declare-fun lt!352631 () SeekEntryResult!8117)

(assert (=> b!789959 (= res!535274 (= lt!352631 lt!352639))))

(assert (=> b!789959 (= lt!352639 (Found!8117 j!159))))

(assert (=> b!789959 (= lt!352631 (seekEntryOrOpen!0 (select (arr!20510 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!789959 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352629 () Unit!27378)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42854 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27378)

(assert (=> b!789959 (= lt!352629 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!789960 () Bool)

(declare-fun lt!352636 () SeekEntryResult!8117)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42854 (_ BitVec 32)) SeekEntryResult!8117)

(assert (=> b!789960 (= e!439076 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20510 a!3186) j!159) a!3186 mask!3328) lt!352636))))

(declare-fun b!789961 () Bool)

(declare-fun e!439079 () Bool)

(declare-fun e!439074 () Bool)

(assert (=> b!789961 (= e!439079 e!439074)))

(declare-fun res!535279 () Bool)

(assert (=> b!789961 (=> res!535279 e!439074)))

(declare-fun lt!352642 () (_ BitVec 64))

(declare-fun lt!352638 () (_ BitVec 64))

(assert (=> b!789961 (= res!535279 (= lt!352642 lt!352638))))

(assert (=> b!789961 (= lt!352642 (select (store (arr!20510 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!789962 () Bool)

(assert (=> b!789962 (= e!439083 e!439079)))

(declare-fun res!535282 () Bool)

(assert (=> b!789962 (=> res!535282 e!439079)))

(declare-fun lt!352637 () SeekEntryResult!8117)

(assert (=> b!789962 (= res!535282 (not (= lt!352637 lt!352639)))))

(assert (=> b!789962 (= lt!352637 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20510 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!789963 () Bool)

(declare-fun res!535278 () Bool)

(assert (=> b!789963 (=> (not res!535278) (not e!439077))))

(assert (=> b!789963 (= res!535278 (and (= (size!20931 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20931 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20931 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!789964 () Bool)

(declare-fun e!439080 () Bool)

(assert (=> b!789964 (= e!439075 e!439080)))

(declare-fun res!535277 () Bool)

(assert (=> b!789964 (=> (not res!535277) (not e!439080))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789964 (= res!535277 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20510 a!3186) j!159) mask!3328) (select (arr!20510 a!3186) j!159) a!3186 mask!3328) lt!352636))))

(assert (=> b!789964 (= lt!352636 (Intermediate!8117 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!789965 () Bool)

(declare-fun e!439082 () Bool)

(assert (=> b!789965 (= e!439082 true)))

(declare-fun lt!352635 () SeekEntryResult!8117)

(assert (=> b!789965 (= lt!352635 lt!352637)))

(declare-fun lt!352630 () Unit!27378)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!42854 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27378)

(assert (=> b!789965 (= lt!352630 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!789953 () Bool)

(declare-fun res!535286 () Bool)

(assert (=> b!789953 (=> (not res!535286) (not e!439080))))

(assert (=> b!789953 (= res!535286 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20510 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!535290 () Bool)

(assert (=> start!67922 (=> (not res!535290) (not e!439077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67922 (= res!535290 (validMask!0 mask!3328))))

(assert (=> start!67922 e!439077))

(assert (=> start!67922 true))

(declare-fun array_inv!16284 (array!42854) Bool)

(assert (=> start!67922 (array_inv!16284 a!3186)))

(declare-fun b!789966 () Bool)

(declare-fun res!535283 () Bool)

(assert (=> b!789966 (=> (not res!535283) (not e!439080))))

(assert (=> b!789966 (= res!535283 e!439076)))

(declare-fun c!87746 () Bool)

(assert (=> b!789966 (= c!87746 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789967 () Bool)

(declare-fun res!535285 () Bool)

(assert (=> b!789967 (=> (not res!535285) (not e!439077))))

(declare-fun arrayContainsKey!0 (array!42854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789967 (= res!535285 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789968 () Bool)

(assert (=> b!789968 (= e!439080 e!439084)))

(declare-fun res!535291 () Bool)

(assert (=> b!789968 (=> (not res!535291) (not e!439084))))

(declare-fun lt!352634 () SeekEntryResult!8117)

(assert (=> b!789968 (= res!535291 (= lt!352634 lt!352640))))

(declare-fun lt!352632 () array!42854)

(assert (=> b!789968 (= lt!352640 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352638 lt!352632 mask!3328))))

(assert (=> b!789968 (= lt!352634 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352638 mask!3328) lt!352638 lt!352632 mask!3328))))

(assert (=> b!789968 (= lt!352638 (select (store (arr!20510 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!789968 (= lt!352632 (array!42855 (store (arr!20510 a!3186) i!1173 k!2102) (size!20931 a!3186)))))

(declare-fun b!789969 () Bool)

(assert (=> b!789969 (= e!439074 e!439082)))

(declare-fun res!535280 () Bool)

(assert (=> b!789969 (=> res!535280 e!439082)))

(assert (=> b!789969 (= res!535280 (or (not (= (select (arr!20510 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!352641 () SeekEntryResult!8117)

(assert (=> b!789969 (and (= lt!352641 lt!352635) (= lt!352631 lt!352637))))

(assert (=> b!789969 (= lt!352635 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352638 lt!352632 mask!3328))))

(assert (=> b!789969 (= lt!352641 (seekEntryOrOpen!0 lt!352638 lt!352632 mask!3328))))

(assert (=> b!789969 (= lt!352642 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!352628 () Unit!27378)

(assert (=> b!789969 (= lt!352628 e!439078)))

(declare-fun c!87747 () Bool)

(assert (=> b!789969 (= c!87747 (= lt!352642 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!67922 res!535290) b!789963))

(assert (= (and b!789963 res!535278) b!789948))

(assert (= (and b!789948 res!535281) b!789955))

(assert (= (and b!789955 res!535289) b!789967))

(assert (= (and b!789967 res!535285) b!789952))

(assert (= (and b!789952 res!535275) b!789951))

(assert (= (and b!789951 res!535288) b!789949))

(assert (= (and b!789949 res!535287) b!789957))

(assert (= (and b!789957 res!535276) b!789964))

(assert (= (and b!789964 res!535277) b!789953))

(assert (= (and b!789953 res!535286) b!789966))

(assert (= (and b!789966 c!87746) b!789960))

(assert (= (and b!789966 (not c!87746)) b!789958))

(assert (= (and b!789966 res!535283) b!789968))

(assert (= (and b!789968 res!535291) b!789959))

(assert (= (and b!789959 res!535274) b!789956))

(assert (= (and b!789959 (not res!535284)) b!789962))

(assert (= (and b!789962 (not res!535282)) b!789961))

(assert (= (and b!789961 (not res!535279)) b!789969))

(assert (= (and b!789969 c!87747) b!789954))

(assert (= (and b!789969 (not c!87747)) b!789950))

(assert (= (and b!789969 (not res!535280)) b!789965))

(declare-fun m!730997 () Bool)

(assert (=> start!67922 m!730997))

(declare-fun m!730999 () Bool)

(assert (=> start!67922 m!730999))

(declare-fun m!731001 () Bool)

(assert (=> b!789958 m!731001))

(assert (=> b!789958 m!731001))

(declare-fun m!731003 () Bool)

(assert (=> b!789958 m!731003))

(declare-fun m!731005 () Bool)

(assert (=> b!789969 m!731005))

(declare-fun m!731007 () Bool)

(assert (=> b!789969 m!731007))

(declare-fun m!731009 () Bool)

(assert (=> b!789969 m!731009))

(assert (=> b!789948 m!731001))

(assert (=> b!789948 m!731001))

(declare-fun m!731011 () Bool)

(assert (=> b!789948 m!731011))

(declare-fun m!731013 () Bool)

(assert (=> b!789968 m!731013))

(declare-fun m!731015 () Bool)

(assert (=> b!789968 m!731015))

(declare-fun m!731017 () Bool)

(assert (=> b!789968 m!731017))

(declare-fun m!731019 () Bool)

(assert (=> b!789968 m!731019))

(declare-fun m!731021 () Bool)

(assert (=> b!789968 m!731021))

(assert (=> b!789968 m!731015))

(declare-fun m!731023 () Bool)

(assert (=> b!789953 m!731023))

(declare-fun m!731025 () Bool)

(assert (=> b!789951 m!731025))

(declare-fun m!731027 () Bool)

(assert (=> b!789949 m!731027))

(assert (=> b!789956 m!731001))

(assert (=> b!789956 m!731001))

(declare-fun m!731029 () Bool)

(assert (=> b!789956 m!731029))

(assert (=> b!789964 m!731001))

(assert (=> b!789964 m!731001))

(declare-fun m!731031 () Bool)

(assert (=> b!789964 m!731031))

(assert (=> b!789964 m!731031))

(assert (=> b!789964 m!731001))

(declare-fun m!731033 () Bool)

(assert (=> b!789964 m!731033))

(assert (=> b!789960 m!731001))

(assert (=> b!789960 m!731001))

(declare-fun m!731035 () Bool)

(assert (=> b!789960 m!731035))

(declare-fun m!731037 () Bool)

(assert (=> b!789955 m!731037))

(assert (=> b!789962 m!731001))

(assert (=> b!789962 m!731001))

(assert (=> b!789962 m!731003))

(declare-fun m!731039 () Bool)

(assert (=> b!789952 m!731039))

(assert (=> b!789959 m!731001))

(assert (=> b!789959 m!731001))

(declare-fun m!731041 () Bool)

(assert (=> b!789959 m!731041))

(declare-fun m!731043 () Bool)

(assert (=> b!789959 m!731043))

(declare-fun m!731045 () Bool)

(assert (=> b!789959 m!731045))

(assert (=> b!789961 m!731013))

(declare-fun m!731047 () Bool)

(assert (=> b!789961 m!731047))

(declare-fun m!731049 () Bool)

(assert (=> b!789967 m!731049))

(declare-fun m!731051 () Bool)

(assert (=> b!789965 m!731051))

(push 1)

