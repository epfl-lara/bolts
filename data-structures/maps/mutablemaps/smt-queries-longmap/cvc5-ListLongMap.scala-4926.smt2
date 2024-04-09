; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67816 () Bool)

(assert start!67816)

(declare-fun res!534035 () Bool)

(declare-fun e!438094 () Bool)

(assert (=> start!67816 (=> (not res!534035) (not e!438094))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67816 (= res!534035 (validMask!0 mask!3328))))

(assert (=> start!67816 e!438094))

(assert (=> start!67816 true))

(declare-datatypes ((array!42811 0))(
  ( (array!42812 (arr!20490 (Array (_ BitVec 32) (_ BitVec 64))) (size!20911 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42811)

(declare-fun array_inv!16264 (array!42811) Bool)

(assert (=> start!67816 (array_inv!16264 a!3186)))

(declare-fun b!788141 () Bool)

(declare-fun res!534045 () Bool)

(assert (=> b!788141 (=> (not res!534045) (not e!438094))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42811 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!788141 (= res!534045 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!788142 () Bool)

(declare-fun res!534044 () Bool)

(assert (=> b!788142 (=> (not res!534044) (not e!438094))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!788142 (= res!534044 (validKeyInArray!0 (select (arr!20490 a!3186) j!159)))))

(declare-fun b!788143 () Bool)

(declare-fun res!534049 () Bool)

(assert (=> b!788143 (=> (not res!534049) (not e!438094))))

(assert (=> b!788143 (= res!534049 (validKeyInArray!0 k!2102))))

(declare-fun b!788144 () Bool)

(declare-fun e!438085 () Bool)

(declare-fun e!438089 () Bool)

(assert (=> b!788144 (= e!438085 e!438089)))

(declare-fun res!534034 () Bool)

(assert (=> b!788144 (=> (not res!534034) (not e!438089))))

(declare-datatypes ((SeekEntryResult!8097 0))(
  ( (MissingZero!8097 (index!34755 (_ BitVec 32))) (Found!8097 (index!34756 (_ BitVec 32))) (Intermediate!8097 (undefined!8909 Bool) (index!34757 (_ BitVec 32)) (x!65718 (_ BitVec 32))) (Undefined!8097) (MissingVacant!8097 (index!34758 (_ BitVec 32))) )
))
(declare-fun lt!351658 () SeekEntryResult!8097)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42811 (_ BitVec 32)) SeekEntryResult!8097)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!788144 (= res!534034 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20490 a!3186) j!159) mask!3328) (select (arr!20490 a!3186) j!159) a!3186 mask!3328) lt!351658))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!788144 (= lt!351658 (Intermediate!8097 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!788145 () Bool)

(declare-fun e!438086 () Bool)

(assert (=> b!788145 (= e!438089 e!438086)))

(declare-fun res!534043 () Bool)

(assert (=> b!788145 (=> (not res!534043) (not e!438086))))

(declare-fun lt!351655 () SeekEntryResult!8097)

(declare-fun lt!351650 () SeekEntryResult!8097)

(assert (=> b!788145 (= res!534043 (= lt!351655 lt!351650))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!351656 () array!42811)

(declare-fun lt!351654 () (_ BitVec 64))

(assert (=> b!788145 (= lt!351650 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351654 lt!351656 mask!3328))))

(assert (=> b!788145 (= lt!351655 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351654 mask!3328) lt!351654 lt!351656 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!788145 (= lt!351654 (select (store (arr!20490 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!788145 (= lt!351656 (array!42812 (store (arr!20490 a!3186) i!1173 k!2102) (size!20911 a!3186)))))

(declare-fun e!438087 () Bool)

(declare-fun b!788146 () Bool)

(assert (=> b!788146 (= e!438087 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20490 a!3186) j!159) a!3186 mask!3328) lt!351658))))

(declare-fun b!788147 () Bool)

(declare-datatypes ((Unit!27298 0))(
  ( (Unit!27299) )
))
(declare-fun e!438083 () Unit!27298)

(declare-fun Unit!27300 () Unit!27298)

(assert (=> b!788147 (= e!438083 Unit!27300)))

(declare-fun e!438090 () Bool)

(declare-fun b!788148 () Bool)

(assert (=> b!788148 (= e!438090 (or (not (= (select (arr!20490 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= index!1321 resIntermediateIndex!5))))))

(declare-fun e!438092 () Bool)

(assert (=> b!788148 e!438092))

(declare-fun res!534048 () Bool)

(assert (=> b!788148 (=> (not res!534048) (not e!438092))))

(declare-fun lt!351660 () (_ BitVec 64))

(assert (=> b!788148 (= res!534048 (= lt!351660 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351657 () Unit!27298)

(assert (=> b!788148 (= lt!351657 e!438083)))

(declare-fun c!87462 () Bool)

(assert (=> b!788148 (= c!87462 (= lt!351660 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788149 () Bool)

(declare-fun e!438093 () Bool)

(declare-fun e!438088 () Bool)

(assert (=> b!788149 (= e!438093 e!438088)))

(declare-fun res!534036 () Bool)

(assert (=> b!788149 (=> res!534036 e!438088)))

(declare-fun lt!351661 () SeekEntryResult!8097)

(declare-fun lt!351652 () SeekEntryResult!8097)

(assert (=> b!788149 (= res!534036 (not (= lt!351661 lt!351652)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42811 (_ BitVec 32)) SeekEntryResult!8097)

(assert (=> b!788149 (= lt!351661 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20490 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788150 () Bool)

(declare-fun res!534037 () Bool)

(assert (=> b!788150 (=> (not res!534037) (not e!438092))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42811 (_ BitVec 32)) SeekEntryResult!8097)

(assert (=> b!788150 (= res!534037 (= (seekEntryOrOpen!0 lt!351654 lt!351656 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351654 lt!351656 mask!3328)))))

(declare-fun b!788151 () Bool)

(declare-fun Unit!27301 () Unit!27298)

(assert (=> b!788151 (= e!438083 Unit!27301)))

(assert (=> b!788151 false))

(declare-fun b!788152 () Bool)

(declare-fun res!534041 () Bool)

(assert (=> b!788152 (=> (not res!534041) (not e!438089))))

(assert (=> b!788152 (= res!534041 e!438087)))

(declare-fun c!87461 () Bool)

(assert (=> b!788152 (= c!87461 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!788153 () Bool)

(declare-fun lt!351651 () SeekEntryResult!8097)

(assert (=> b!788153 (= e!438092 (= lt!351651 lt!351661))))

(declare-fun b!788154 () Bool)

(assert (=> b!788154 (= e!438086 (not e!438093))))

(declare-fun res!534052 () Bool)

(assert (=> b!788154 (=> res!534052 e!438093)))

(assert (=> b!788154 (= res!534052 (or (not (is-Intermediate!8097 lt!351650)) (bvslt x!1131 (x!65718 lt!351650)) (not (= x!1131 (x!65718 lt!351650))) (not (= index!1321 (index!34757 lt!351650)))))))

(declare-fun e!438084 () Bool)

(assert (=> b!788154 e!438084))

(declare-fun res!534042 () Bool)

(assert (=> b!788154 (=> (not res!534042) (not e!438084))))

(assert (=> b!788154 (= res!534042 (= lt!351651 lt!351652))))

(assert (=> b!788154 (= lt!351652 (Found!8097 j!159))))

(assert (=> b!788154 (= lt!351651 (seekEntryOrOpen!0 (select (arr!20490 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42811 (_ BitVec 32)) Bool)

(assert (=> b!788154 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351659 () Unit!27298)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27298)

(assert (=> b!788154 (= lt!351659 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!788155 () Bool)

(declare-fun res!534038 () Bool)

(assert (=> b!788155 (=> (not res!534038) (not e!438085))))

(declare-datatypes ((List!14545 0))(
  ( (Nil!14542) (Cons!14541 (h!15664 (_ BitVec 64)) (t!20868 List!14545)) )
))
(declare-fun arrayNoDuplicates!0 (array!42811 (_ BitVec 32) List!14545) Bool)

(assert (=> b!788155 (= res!534038 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14542))))

(declare-fun b!788156 () Bool)

(declare-fun res!534050 () Bool)

(assert (=> b!788156 (=> (not res!534050) (not e!438094))))

(assert (=> b!788156 (= res!534050 (and (= (size!20911 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20911 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20911 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!788157 () Bool)

(assert (=> b!788157 (= e!438087 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20490 a!3186) j!159) a!3186 mask!3328) (Found!8097 j!159)))))

(declare-fun b!788158 () Bool)

(declare-fun res!534039 () Bool)

(assert (=> b!788158 (=> (not res!534039) (not e!438085))))

(assert (=> b!788158 (= res!534039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!788159 () Bool)

(assert (=> b!788159 (= e!438088 e!438090)))

(declare-fun res!534047 () Bool)

(assert (=> b!788159 (=> res!534047 e!438090)))

(assert (=> b!788159 (= res!534047 (= lt!351660 lt!351654))))

(assert (=> b!788159 (= lt!351660 (select (store (arr!20490 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!788160 () Bool)

(declare-fun res!534051 () Bool)

(assert (=> b!788160 (=> (not res!534051) (not e!438085))))

(assert (=> b!788160 (= res!534051 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20911 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20911 a!3186))))))

(declare-fun b!788161 () Bool)

(assert (=> b!788161 (= e!438094 e!438085)))

(declare-fun res!534040 () Bool)

(assert (=> b!788161 (=> (not res!534040) (not e!438085))))

(declare-fun lt!351653 () SeekEntryResult!8097)

(assert (=> b!788161 (= res!534040 (or (= lt!351653 (MissingZero!8097 i!1173)) (= lt!351653 (MissingVacant!8097 i!1173))))))

(assert (=> b!788161 (= lt!351653 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!788162 () Bool)

(declare-fun res!534046 () Bool)

(assert (=> b!788162 (=> (not res!534046) (not e!438089))))

(assert (=> b!788162 (= res!534046 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20490 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788163 () Bool)

(assert (=> b!788163 (= e!438084 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20490 a!3186) j!159) a!3186 mask!3328) lt!351652))))

(assert (= (and start!67816 res!534035) b!788156))

(assert (= (and b!788156 res!534050) b!788142))

(assert (= (and b!788142 res!534044) b!788143))

(assert (= (and b!788143 res!534049) b!788141))

(assert (= (and b!788141 res!534045) b!788161))

(assert (= (and b!788161 res!534040) b!788158))

(assert (= (and b!788158 res!534039) b!788155))

(assert (= (and b!788155 res!534038) b!788160))

(assert (= (and b!788160 res!534051) b!788144))

(assert (= (and b!788144 res!534034) b!788162))

(assert (= (and b!788162 res!534046) b!788152))

(assert (= (and b!788152 c!87461) b!788146))

(assert (= (and b!788152 (not c!87461)) b!788157))

(assert (= (and b!788152 res!534041) b!788145))

(assert (= (and b!788145 res!534043) b!788154))

(assert (= (and b!788154 res!534042) b!788163))

(assert (= (and b!788154 (not res!534052)) b!788149))

(assert (= (and b!788149 (not res!534036)) b!788159))

(assert (= (and b!788159 (not res!534047)) b!788148))

(assert (= (and b!788148 c!87462) b!788151))

(assert (= (and b!788148 (not c!87462)) b!788147))

(assert (= (and b!788148 res!534048) b!788150))

(assert (= (and b!788150 res!534037) b!788153))

(declare-fun m!729595 () Bool)

(assert (=> b!788161 m!729595))

(declare-fun m!729597 () Bool)

(assert (=> b!788149 m!729597))

(assert (=> b!788149 m!729597))

(declare-fun m!729599 () Bool)

(assert (=> b!788149 m!729599))

(declare-fun m!729601 () Bool)

(assert (=> b!788143 m!729601))

(declare-fun m!729603 () Bool)

(assert (=> b!788158 m!729603))

(declare-fun m!729605 () Bool)

(assert (=> b!788145 m!729605))

(declare-fun m!729607 () Bool)

(assert (=> b!788145 m!729607))

(declare-fun m!729609 () Bool)

(assert (=> b!788145 m!729609))

(assert (=> b!788145 m!729605))

(declare-fun m!729611 () Bool)

(assert (=> b!788145 m!729611))

(declare-fun m!729613 () Bool)

(assert (=> b!788145 m!729613))

(assert (=> b!788159 m!729607))

(declare-fun m!729615 () Bool)

(assert (=> b!788159 m!729615))

(declare-fun m!729617 () Bool)

(assert (=> start!67816 m!729617))

(declare-fun m!729619 () Bool)

(assert (=> start!67816 m!729619))

(declare-fun m!729621 () Bool)

(assert (=> b!788150 m!729621))

(declare-fun m!729623 () Bool)

(assert (=> b!788150 m!729623))

(declare-fun m!729625 () Bool)

(assert (=> b!788141 m!729625))

(assert (=> b!788157 m!729597))

(assert (=> b!788157 m!729597))

(assert (=> b!788157 m!729599))

(assert (=> b!788154 m!729597))

(assert (=> b!788154 m!729597))

(declare-fun m!729627 () Bool)

(assert (=> b!788154 m!729627))

(declare-fun m!729629 () Bool)

(assert (=> b!788154 m!729629))

(declare-fun m!729631 () Bool)

(assert (=> b!788154 m!729631))

(assert (=> b!788142 m!729597))

(assert (=> b!788142 m!729597))

(declare-fun m!729633 () Bool)

(assert (=> b!788142 m!729633))

(declare-fun m!729635 () Bool)

(assert (=> b!788162 m!729635))

(declare-fun m!729637 () Bool)

(assert (=> b!788148 m!729637))

(declare-fun m!729639 () Bool)

(assert (=> b!788155 m!729639))

(assert (=> b!788163 m!729597))

(assert (=> b!788163 m!729597))

(declare-fun m!729641 () Bool)

(assert (=> b!788163 m!729641))

(assert (=> b!788144 m!729597))

(assert (=> b!788144 m!729597))

(declare-fun m!729643 () Bool)

(assert (=> b!788144 m!729643))

(assert (=> b!788144 m!729643))

(assert (=> b!788144 m!729597))

(declare-fun m!729645 () Bool)

(assert (=> b!788144 m!729645))

(assert (=> b!788146 m!729597))

(assert (=> b!788146 m!729597))

(declare-fun m!729647 () Bool)

(assert (=> b!788146 m!729647))

(push 1)

(assert (not b!788149))

(assert (not b!788157))

(assert (not start!67816))

(assert (not b!788154))

(assert (not b!788141))

(assert (not b!788145))

(assert (not b!788142))

(assert (not b!788158))

(assert (not b!788143))

(assert (not b!788163))

(assert (not b!788161))

(assert (not b!788150))

(assert (not b!788144))

(assert (not b!788146))

(assert (not b!788155))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!102751 () Bool)

(declare-fun lt!351763 () SeekEntryResult!8097)

(assert (=> d!102751 (and (or (is-Undefined!8097 lt!351763) (not (is-Found!8097 lt!351763)) (and (bvsge (index!34756 lt!351763) #b00000000000000000000000000000000) (bvslt (index!34756 lt!351763) (size!20911 a!3186)))) (or (is-Undefined!8097 lt!351763) (is-Found!8097 lt!351763) (not (is-MissingZero!8097 lt!351763)) (and (bvsge (index!34755 lt!351763) #b00000000000000000000000000000000) (bvslt (index!34755 lt!351763) (size!20911 a!3186)))) (or (is-Undefined!8097 lt!351763) (is-Found!8097 lt!351763) (is-MissingZero!8097 lt!351763) (not (is-MissingVacant!8097 lt!351763)) (and (bvsge (index!34758 lt!351763) #b00000000000000000000000000000000) (bvslt (index!34758 lt!351763) (size!20911 a!3186)))) (or (is-Undefined!8097 lt!351763) (ite (is-Found!8097 lt!351763) (= (select (arr!20490 a!3186) (index!34756 lt!351763)) (select (arr!20490 a!3186) j!159)) (ite (is-MissingZero!8097 lt!351763) (= (select (arr!20490 a!3186) (index!34755 lt!351763)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8097 lt!351763) (= (select (arr!20490 a!3186) (index!34758 lt!351763)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!438216 () SeekEntryResult!8097)

(assert (=> d!102751 (= lt!351763 e!438216)))

(declare-fun c!87504 () Bool)

(declare-fun lt!351762 () SeekEntryResult!8097)

(assert (=> d!102751 (= c!87504 (and (is-Intermediate!8097 lt!351762) (undefined!8909 lt!351762)))))

(assert (=> d!102751 (= lt!351762 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20490 a!3186) j!159) mask!3328) (select (arr!20490 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102751 (validMask!0 mask!3328)))

(assert (=> d!102751 (= (seekEntryOrOpen!0 (select (arr!20490 a!3186) j!159) a!3186 mask!3328) lt!351763)))

(declare-fun b!788377 () Bool)

(declare-fun e!438215 () SeekEntryResult!8097)

(assert (=> b!788377 (= e!438215 (MissingZero!8097 (index!34757 lt!351762)))))

(declare-fun b!788378 () Bool)

(assert (=> b!788378 (= e!438216 Undefined!8097)))

(declare-fun b!788379 () Bool)

(declare-fun e!438217 () SeekEntryResult!8097)

(assert (=> b!788379 (= e!438217 (Found!8097 (index!34757 lt!351762)))))

(declare-fun b!788380 () Bool)

(assert (=> b!788380 (= e!438216 e!438217)))

(declare-fun lt!351761 () (_ BitVec 64))

(assert (=> b!788380 (= lt!351761 (select (arr!20490 a!3186) (index!34757 lt!351762)))))

(declare-fun c!87503 () Bool)

(assert (=> b!788380 (= c!87503 (= lt!351761 (select (arr!20490 a!3186) j!159)))))

(declare-fun b!788381 () Bool)

(declare-fun c!87502 () Bool)

(assert (=> b!788381 (= c!87502 (= lt!351761 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!788381 (= e!438217 e!438215)))

(declare-fun b!788382 () Bool)

(assert (=> b!788382 (= e!438215 (seekKeyOrZeroReturnVacant!0 (x!65718 lt!351762) (index!34757 lt!351762) (index!34757 lt!351762) (select (arr!20490 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!102751 c!87504) b!788378))

(assert (= (and d!102751 (not c!87504)) b!788380))

(assert (= (and b!788380 c!87503) b!788379))

(assert (= (and b!788380 (not c!87503)) b!788381))

(assert (= (and b!788381 c!87502) b!788377))

(assert (= (and b!788381 (not c!87502)) b!788382))

(declare-fun m!729783 () Bool)

(assert (=> d!102751 m!729783))

(assert (=> d!102751 m!729617))

(assert (=> d!102751 m!729643))

(assert (=> d!102751 m!729597))

(assert (=> d!102751 m!729645))

(declare-fun m!729785 () Bool)

(assert (=> d!102751 m!729785))

(declare-fun m!729787 () Bool)

(assert (=> d!102751 m!729787))

(assert (=> d!102751 m!729597))

(assert (=> d!102751 m!729643))

(declare-fun m!729789 () Bool)

(assert (=> b!788380 m!729789))

(assert (=> b!788382 m!729597))

(declare-fun m!729791 () Bool)

(assert (=> b!788382 m!729791))

(assert (=> b!788154 d!102751))

(declare-fun b!788413 () Bool)

(declare-fun e!438238 () Bool)

(declare-fun call!35287 () Bool)

(assert (=> b!788413 (= e!438238 call!35287)))

(declare-fun b!788414 () Bool)

(declare-fun e!438237 () Bool)

(assert (=> b!788414 (= e!438237 call!35287)))

(declare-fun d!102757 () Bool)

(declare-fun res!534195 () Bool)

(declare-fun e!438236 () Bool)

(assert (=> d!102757 (=> res!534195 e!438236)))

(assert (=> d!102757 (= res!534195 (bvsge j!159 (size!20911 a!3186)))))

(assert (=> d!102757 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!438236)))

(declare-fun bm!35284 () Bool)

(assert (=> bm!35284 (= call!35287 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!788415 () Bool)

(assert (=> b!788415 (= e!438238 e!438237)))

(declare-fun lt!351784 () (_ BitVec 64))

(assert (=> b!788415 (= lt!351784 (select (arr!20490 a!3186) j!159))))

(declare-fun lt!351786 () Unit!27298)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42811 (_ BitVec 64) (_ BitVec 32)) Unit!27298)

(assert (=> b!788415 (= lt!351786 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!351784 j!159))))

(assert (=> b!788415 (arrayContainsKey!0 a!3186 lt!351784 #b00000000000000000000000000000000)))

(declare-fun lt!351785 () Unit!27298)

(assert (=> b!788415 (= lt!351785 lt!351786)))

(declare-fun res!534194 () Bool)

(assert (=> b!788415 (= res!534194 (= (seekEntryOrOpen!0 (select (arr!20490 a!3186) j!159) a!3186 mask!3328) (Found!8097 j!159)))))

(assert (=> b!788415 (=> (not res!534194) (not e!438237))))

(declare-fun b!788416 () Bool)

(assert (=> b!788416 (= e!438236 e!438238)))

(declare-fun c!87517 () Bool)

(assert (=> b!788416 (= c!87517 (validKeyInArray!0 (select (arr!20490 a!3186) j!159)))))

(assert (= (and d!102757 (not res!534195)) b!788416))

(assert (= (and b!788416 c!87517) b!788415))

(assert (= (and b!788416 (not c!87517)) b!788413))

(assert (= (and b!788415 res!534194) b!788414))

(assert (= (or b!788414 b!788413) bm!35284))

(declare-fun m!729829 () Bool)

(assert (=> bm!35284 m!729829))

(assert (=> b!788415 m!729597))

(declare-fun m!729831 () Bool)

(assert (=> b!788415 m!729831))

(declare-fun m!729833 () Bool)

(assert (=> b!788415 m!729833))

(assert (=> b!788415 m!729597))

(assert (=> b!788415 m!729627))

(assert (=> b!788416 m!729597))

(assert (=> b!788416 m!729597))

(assert (=> b!788416 m!729633))

(assert (=> b!788154 d!102757))

(declare-fun d!102769 () Bool)

(assert (=> d!102769 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351793 () Unit!27298)

(declare-fun choose!38 (array!42811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27298)

(assert (=> d!102769 (= lt!351793 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102769 (validMask!0 mask!3328)))

(assert (=> d!102769 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!351793)))

(declare-fun bs!21827 () Bool)

(assert (= bs!21827 d!102769))

(assert (=> bs!21827 m!729629))

(declare-fun m!729835 () Bool)

(assert (=> bs!21827 m!729835))

(assert (=> bs!21827 m!729617))

(assert (=> b!788154 d!102769))

(declare-fun d!102771 () Bool)

(assert (=> d!102771 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!788143 d!102771))

(declare-fun e!438286 () SeekEntryResult!8097)

(declare-fun b!788495 () Bool)

(assert (=> b!788495 (= e!438286 (Intermediate!8097 false (toIndex!0 (select (arr!20490 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!788496 () Bool)

(declare-fun lt!351814 () SeekEntryResult!8097)

(assert (=> b!788496 (and (bvsge (index!34757 lt!351814) #b00000000000000000000000000000000) (bvslt (index!34757 lt!351814) (size!20911 a!3186)))))

(declare-fun res!534221 () Bool)

(assert (=> b!788496 (= res!534221 (= (select (arr!20490 a!3186) (index!34757 lt!351814)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438283 () Bool)

(assert (=> b!788496 (=> res!534221 e!438283)))

(declare-fun b!788497 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!788497 (= e!438286 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20490 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20490 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!102773 () Bool)

(declare-fun e!438284 () Bool)

(assert (=> d!102773 e!438284))

(declare-fun c!87546 () Bool)

(assert (=> d!102773 (= c!87546 (and (is-Intermediate!8097 lt!351814) (undefined!8909 lt!351814)))))

(declare-fun e!438285 () SeekEntryResult!8097)

(assert (=> d!102773 (= lt!351814 e!438285)))

(declare-fun c!87545 () Bool)

(assert (=> d!102773 (= c!87545 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!351815 () (_ BitVec 64))

(assert (=> d!102773 (= lt!351815 (select (arr!20490 a!3186) (toIndex!0 (select (arr!20490 a!3186) j!159) mask!3328)))))

(assert (=> d!102773 (validMask!0 mask!3328)))

(assert (=> d!102773 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20490 a!3186) j!159) mask!3328) (select (arr!20490 a!3186) j!159) a!3186 mask!3328) lt!351814)))

(declare-fun b!788498 () Bool)

(assert (=> b!788498 (and (bvsge (index!34757 lt!351814) #b00000000000000000000000000000000) (bvslt (index!34757 lt!351814) (size!20911 a!3186)))))

(declare-fun res!534223 () Bool)

(assert (=> b!788498 (= res!534223 (= (select (arr!20490 a!3186) (index!34757 lt!351814)) (select (arr!20490 a!3186) j!159)))))

(assert (=> b!788498 (=> res!534223 e!438283)))

(declare-fun e!438282 () Bool)

(assert (=> b!788498 (= e!438282 e!438283)))

(declare-fun b!788499 () Bool)

(assert (=> b!788499 (= e!438285 e!438286)))

(declare-fun c!87547 () Bool)

(assert (=> b!788499 (= c!87547 (or (= lt!351815 (select (arr!20490 a!3186) j!159)) (= (bvadd lt!351815 lt!351815) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788500 () Bool)

(assert (=> b!788500 (= e!438284 e!438282)))

(declare-fun res!534222 () Bool)

(assert (=> b!788500 (= res!534222 (and (is-Intermediate!8097 lt!351814) (not (undefined!8909 lt!351814)) (bvslt (x!65718 lt!351814) #b01111111111111111111111111111110) (bvsge (x!65718 lt!351814) #b00000000000000000000000000000000) (bvsge (x!65718 lt!351814) #b00000000000000000000000000000000)))))

(assert (=> b!788500 (=> (not res!534222) (not e!438282))))

(declare-fun b!788501 () Bool)

(assert (=> b!788501 (= e!438284 (bvsge (x!65718 lt!351814) #b01111111111111111111111111111110))))

(declare-fun b!788502 () Bool)

(assert (=> b!788502 (and (bvsge (index!34757 lt!351814) #b00000000000000000000000000000000) (bvslt (index!34757 lt!351814) (size!20911 a!3186)))))

(assert (=> b!788502 (= e!438283 (= (select (arr!20490 a!3186) (index!34757 lt!351814)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788503 () Bool)

(assert (=> b!788503 (= e!438285 (Intermediate!8097 true (toIndex!0 (select (arr!20490 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!102773 c!87545) b!788503))

(assert (= (and d!102773 (not c!87545)) b!788499))

(assert (= (and b!788499 c!87547) b!788495))

(assert (= (and b!788499 (not c!87547)) b!788497))

(assert (= (and d!102773 c!87546) b!788501))

(assert (= (and d!102773 (not c!87546)) b!788500))

(assert (= (and b!788500 res!534222) b!788498))

(assert (= (and b!788498 (not res!534223)) b!788496))

(assert (= (and b!788496 (not res!534221)) b!788502))

(declare-fun m!729857 () Bool)

(assert (=> b!788496 m!729857))

(assert (=> b!788498 m!729857))

(assert (=> b!788502 m!729857))

(assert (=> b!788497 m!729643))

(declare-fun m!729859 () Bool)

(assert (=> b!788497 m!729859))

(assert (=> b!788497 m!729859))

(assert (=> b!788497 m!729597))

(declare-fun m!729861 () Bool)

(assert (=> b!788497 m!729861))

(assert (=> d!102773 m!729643))

(declare-fun m!729863 () Bool)

(assert (=> d!102773 m!729863))

(assert (=> d!102773 m!729617))

(assert (=> b!788144 d!102773))

(declare-fun d!102783 () Bool)

(declare-fun lt!351829 () (_ BitVec 32))

(declare-fun lt!351828 () (_ BitVec 32))

(assert (=> d!102783 (= lt!351829 (bvmul (bvxor lt!351828 (bvlshr lt!351828 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102783 (= lt!351828 ((_ extract 31 0) (bvand (bvxor (select (arr!20490 a!3186) j!159) (bvlshr (select (arr!20490 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102783 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!534224 (let ((h!15668 ((_ extract 31 0) (bvand (bvxor (select (arr!20490 a!3186) j!159) (bvlshr (select (arr!20490 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65727 (bvmul (bvxor h!15668 (bvlshr h!15668 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65727 (bvlshr x!65727 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!534224 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!534224 #b00000000000000000000000000000000))))))

(assert (=> d!102783 (= (toIndex!0 (select (arr!20490 a!3186) j!159) mask!3328) (bvand (bvxor lt!351829 (bvlshr lt!351829 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!788144 d!102783))

(declare-fun b!788556 () Bool)

(declare-fun e!438320 () Bool)

(declare-fun e!438319 () Bool)

(assert (=> b!788556 (= e!438320 e!438319)))

(declare-fun c!87568 () Bool)

(assert (=> b!788556 (= c!87568 (validKeyInArray!0 (select (arr!20490 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!788557 () Bool)

(declare-fun e!438318 () Bool)

(assert (=> b!788557 (= e!438318 e!438320)))

(declare-fun res!534238 () Bool)

(assert (=> b!788557 (=> (not res!534238) (not e!438320))))

(declare-fun e!438317 () Bool)

(assert (=> b!788557 (= res!534238 (not e!438317))))

(declare-fun res!534240 () Bool)

(assert (=> b!788557 (=> (not res!534240) (not e!438317))))

(assert (=> b!788557 (= res!534240 (validKeyInArray!0 (select (arr!20490 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35287 () Bool)

(declare-fun call!35290 () Bool)

(assert (=> bm!35287 (= call!35290 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!87568 (Cons!14541 (select (arr!20490 a!3186) #b00000000000000000000000000000000) Nil!14542) Nil!14542)))))

(declare-fun b!788558 () Bool)

(assert (=> b!788558 (= e!438319 call!35290)))

(declare-fun d!102789 () Bool)

(declare-fun res!534239 () Bool)

(assert (=> d!102789 (=> res!534239 e!438318)))

(assert (=> d!102789 (= res!534239 (bvsge #b00000000000000000000000000000000 (size!20911 a!3186)))))

(assert (=> d!102789 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14542) e!438318)))

(declare-fun b!788559 () Bool)

(declare-fun contains!4112 (List!14545 (_ BitVec 64)) Bool)

(assert (=> b!788559 (= e!438317 (contains!4112 Nil!14542 (select (arr!20490 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!788560 () Bool)

(assert (=> b!788560 (= e!438319 call!35290)))

(assert (= (and d!102789 (not res!534239)) b!788557))

(assert (= (and b!788557 res!534240) b!788559))

(assert (= (and b!788557 res!534238) b!788556))

(assert (= (and b!788556 c!87568) b!788558))

(assert (= (and b!788556 (not c!87568)) b!788560))

(assert (= (or b!788558 b!788560) bm!35287))

(declare-fun m!729899 () Bool)

(assert (=> b!788556 m!729899))

(assert (=> b!788556 m!729899))

(declare-fun m!729901 () Bool)

(assert (=> b!788556 m!729901))

(assert (=> b!788557 m!729899))

(assert (=> b!788557 m!729899))

(assert (=> b!788557 m!729901))

(assert (=> bm!35287 m!729899))

(declare-fun m!729903 () Bool)

(assert (=> bm!35287 m!729903))

(assert (=> b!788559 m!729899))

(assert (=> b!788559 m!729899))

(declare-fun m!729905 () Bool)

(assert (=> b!788559 m!729905))

(assert (=> b!788155 d!102789))

(declare-fun d!102805 () Bool)

(declare-fun lt!351845 () SeekEntryResult!8097)

(assert (=> d!102805 (and (or (is-Undefined!8097 lt!351845) (not (is-Found!8097 lt!351845)) (and (bvsge (index!34756 lt!351845) #b00000000000000000000000000000000) (bvslt (index!34756 lt!351845) (size!20911 a!3186)))) (or (is-Undefined!8097 lt!351845) (is-Found!8097 lt!351845) (not (is-MissingZero!8097 lt!351845)) (and (bvsge (index!34755 lt!351845) #b00000000000000000000000000000000) (bvslt (index!34755 lt!351845) (size!20911 a!3186)))) (or (is-Undefined!8097 lt!351845) (is-Found!8097 lt!351845) (is-MissingZero!8097 lt!351845) (not (is-MissingVacant!8097 lt!351845)) (and (bvsge (index!34758 lt!351845) #b00000000000000000000000000000000) (bvslt (index!34758 lt!351845) (size!20911 a!3186)))) (or (is-Undefined!8097 lt!351845) (ite (is-Found!8097 lt!351845) (= (select (arr!20490 a!3186) (index!34756 lt!351845)) k!2102) (ite (is-MissingZero!8097 lt!351845) (= (select (arr!20490 a!3186) (index!34755 lt!351845)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8097 lt!351845) (= (select (arr!20490 a!3186) (index!34758 lt!351845)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!438327 () SeekEntryResult!8097)

(assert (=> d!102805 (= lt!351845 e!438327)))

(declare-fun c!87574 () Bool)

(declare-fun lt!351844 () SeekEntryResult!8097)

(assert (=> d!102805 (= c!87574 (and (is-Intermediate!8097 lt!351844) (undefined!8909 lt!351844)))))

(assert (=> d!102805 (= lt!351844 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!102805 (validMask!0 mask!3328)))

(assert (=> d!102805 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!351845)))

(declare-fun b!788570 () Bool)

(declare-fun e!438326 () SeekEntryResult!8097)

(assert (=> b!788570 (= e!438326 (MissingZero!8097 (index!34757 lt!351844)))))

(declare-fun b!788571 () Bool)

(assert (=> b!788571 (= e!438327 Undefined!8097)))

(declare-fun b!788572 () Bool)

(declare-fun e!438328 () SeekEntryResult!8097)

(assert (=> b!788572 (= e!438328 (Found!8097 (index!34757 lt!351844)))))

(declare-fun b!788573 () Bool)

(assert (=> b!788573 (= e!438327 e!438328)))

(declare-fun lt!351843 () (_ BitVec 64))

(assert (=> b!788573 (= lt!351843 (select (arr!20490 a!3186) (index!34757 lt!351844)))))

(declare-fun c!87573 () Bool)

(assert (=> b!788573 (= c!87573 (= lt!351843 k!2102))))

(declare-fun b!788574 () Bool)

(declare-fun c!87572 () Bool)

(assert (=> b!788574 (= c!87572 (= lt!351843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!788574 (= e!438328 e!438326)))

(declare-fun b!788575 () Bool)

(assert (=> b!788575 (= e!438326 (seekKeyOrZeroReturnVacant!0 (x!65718 lt!351844) (index!34757 lt!351844) (index!34757 lt!351844) k!2102 a!3186 mask!3328))))

(assert (= (and d!102805 c!87574) b!788571))

(assert (= (and d!102805 (not c!87574)) b!788573))

(assert (= (and b!788573 c!87573) b!788572))

(assert (= (and b!788573 (not c!87573)) b!788574))

(assert (= (and b!788574 c!87572) b!788570))

(assert (= (and b!788574 (not c!87572)) b!788575))

(declare-fun m!729911 () Bool)

(assert (=> d!102805 m!729911))

(assert (=> d!102805 m!729617))

(declare-fun m!729913 () Bool)

(assert (=> d!102805 m!729913))

(declare-fun m!729915 () Bool)

(assert (=> d!102805 m!729915))

(declare-fun m!729917 () Bool)

(assert (=> d!102805 m!729917))

(declare-fun m!729919 () Bool)

(assert (=> d!102805 m!729919))

(assert (=> d!102805 m!729913))

(declare-fun m!729921 () Bool)

(assert (=> b!788573 m!729921))

(declare-fun m!729923 () Bool)

(assert (=> b!788575 m!729923))

(assert (=> b!788161 d!102805))

(declare-fun d!102809 () Bool)

(assert (=> d!102809 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67816 d!102809))

(declare-fun d!102813 () Bool)

(assert (=> d!102813 (= (array_inv!16264 a!3186) (bvsge (size!20911 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67816 d!102813))

(declare-fun d!102815 () Bool)

(declare-fun res!534251 () Bool)

(declare-fun e!438347 () Bool)

(assert (=> d!102815 (=> res!534251 e!438347)))

(assert (=> d!102815 (= res!534251 (= (select (arr!20490 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!102815 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!438347)))

(declare-fun b!788607 () Bool)

(declare-fun e!438348 () Bool)

(assert (=> b!788607 (= e!438347 e!438348)))

(declare-fun res!534252 () Bool)

(assert (=> b!788607 (=> (not res!534252) (not e!438348))))

(assert (=> b!788607 (= res!534252 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20911 a!3186)))))

(declare-fun b!788608 () Bool)

(assert (=> b!788608 (= e!438348 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102815 (not res!534251)) b!788607))

(assert (= (and b!788607 res!534252) b!788608))

(assert (=> d!102815 m!729899))

(declare-fun m!729943 () Bool)

(assert (=> b!788608 m!729943))

(assert (=> b!788141 d!102815))

(declare-fun d!102819 () Bool)

(assert (=> d!102819 (= (validKeyInArray!0 (select (arr!20490 a!3186) j!159)) (and (not (= (select (arr!20490 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20490 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!788142 d!102819))

(declare-fun b!788643 () Bool)

(declare-fun e!438372 () SeekEntryResult!8097)

(assert (=> b!788643 (= e!438372 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20490 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788644 () Bool)

(declare-fun e!438373 () SeekEntryResult!8097)

(assert (=> b!788644 (= e!438373 Undefined!8097)))

(declare-fun b!788645 () Bool)

(declare-fun e!438374 () SeekEntryResult!8097)

(assert (=> b!788645 (= e!438374 (Found!8097 resIntermediateIndex!5))))

(declare-fun b!788646 () Bool)

(assert (=> b!788646 (= e!438372 (MissingVacant!8097 resIntermediateIndex!5))))

(declare-fun d!102821 () Bool)

(declare-fun lt!351875 () SeekEntryResult!8097)

(assert (=> d!102821 (and (or (is-Undefined!8097 lt!351875) (not (is-Found!8097 lt!351875)) (and (bvsge (index!34756 lt!351875) #b00000000000000000000000000000000) (bvslt (index!34756 lt!351875) (size!20911 a!3186)))) (or (is-Undefined!8097 lt!351875) (is-Found!8097 lt!351875) (not (is-MissingVacant!8097 lt!351875)) (not (= (index!34758 lt!351875) resIntermediateIndex!5)) (and (bvsge (index!34758 lt!351875) #b00000000000000000000000000000000) (bvslt (index!34758 lt!351875) (size!20911 a!3186)))) (or (is-Undefined!8097 lt!351875) (ite (is-Found!8097 lt!351875) (= (select (arr!20490 a!3186) (index!34756 lt!351875)) (select (arr!20490 a!3186) j!159)) (and (is-MissingVacant!8097 lt!351875) (= (index!34758 lt!351875) resIntermediateIndex!5) (= (select (arr!20490 a!3186) (index!34758 lt!351875)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102821 (= lt!351875 e!438373)))

(declare-fun c!87599 () Bool)

(assert (=> d!102821 (= c!87599 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!351876 () (_ BitVec 64))

(assert (=> d!102821 (= lt!351876 (select (arr!20490 a!3186) resIntermediateIndex!5))))

(assert (=> d!102821 (validMask!0 mask!3328)))

(assert (=> d!102821 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20490 a!3186) j!159) a!3186 mask!3328) lt!351875)))

(declare-fun b!788647 () Bool)

(assert (=> b!788647 (= e!438373 e!438374)))

(declare-fun c!87600 () Bool)

(assert (=> b!788647 (= c!87600 (= lt!351876 (select (arr!20490 a!3186) j!159)))))

(declare-fun b!788648 () Bool)

(declare-fun c!87598 () Bool)

(assert (=> b!788648 (= c!87598 (= lt!351876 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!788648 (= e!438374 e!438372)))

(assert (= (and d!102821 c!87599) b!788644))

(assert (= (and d!102821 (not c!87599)) b!788647))

(assert (= (and b!788647 c!87600) b!788645))

(assert (= (and b!788647 (not c!87600)) b!788648))

(assert (= (and b!788648 c!87598) b!788646))

(assert (= (and b!788648 (not c!87598)) b!788643))

(declare-fun m!729953 () Bool)

(assert (=> b!788643 m!729953))

(assert (=> b!788643 m!729953))

(assert (=> b!788643 m!729597))

(declare-fun m!729955 () Bool)

(assert (=> b!788643 m!729955))

(declare-fun m!729957 () Bool)

(assert (=> d!102821 m!729957))

(declare-fun m!729959 () Bool)

(assert (=> d!102821 m!729959))

(assert (=> d!102821 m!729635))

(assert (=> d!102821 m!729617))

(assert (=> b!788163 d!102821))

(declare-fun b!788649 () Bool)

(declare-fun e!438375 () SeekEntryResult!8097)

(assert (=> b!788649 (= e!438375 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20490 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788650 () Bool)

(declare-fun e!438376 () SeekEntryResult!8097)

(assert (=> b!788650 (= e!438376 Undefined!8097)))

(declare-fun b!788651 () Bool)

(declare-fun e!438377 () SeekEntryResult!8097)

(assert (=> b!788651 (= e!438377 (Found!8097 index!1321))))

(declare-fun b!788652 () Bool)

(assert (=> b!788652 (= e!438375 (MissingVacant!8097 resIntermediateIndex!5))))

(declare-fun d!102827 () Bool)

(declare-fun lt!351877 () SeekEntryResult!8097)

(assert (=> d!102827 (and (or (is-Undefined!8097 lt!351877) (not (is-Found!8097 lt!351877)) (and (bvsge (index!34756 lt!351877) #b00000000000000000000000000000000) (bvslt (index!34756 lt!351877) (size!20911 a!3186)))) (or (is-Undefined!8097 lt!351877) (is-Found!8097 lt!351877) (not (is-MissingVacant!8097 lt!351877)) (not (= (index!34758 lt!351877) resIntermediateIndex!5)) (and (bvsge (index!34758 lt!351877) #b00000000000000000000000000000000) (bvslt (index!34758 lt!351877) (size!20911 a!3186)))) (or (is-Undefined!8097 lt!351877) (ite (is-Found!8097 lt!351877) (= (select (arr!20490 a!3186) (index!34756 lt!351877)) (select (arr!20490 a!3186) j!159)) (and (is-MissingVacant!8097 lt!351877) (= (index!34758 lt!351877) resIntermediateIndex!5) (= (select (arr!20490 a!3186) (index!34758 lt!351877)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102827 (= lt!351877 e!438376)))

(declare-fun c!87602 () Bool)

(assert (=> d!102827 (= c!87602 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!351878 () (_ BitVec 64))

(assert (=> d!102827 (= lt!351878 (select (arr!20490 a!3186) index!1321))))

(assert (=> d!102827 (validMask!0 mask!3328)))

(assert (=> d!102827 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20490 a!3186) j!159) a!3186 mask!3328) lt!351877)))

(declare-fun b!788653 () Bool)

(assert (=> b!788653 (= e!438376 e!438377)))

(declare-fun c!87603 () Bool)

(assert (=> b!788653 (= c!87603 (= lt!351878 (select (arr!20490 a!3186) j!159)))))

(declare-fun b!788654 () Bool)

(declare-fun c!87601 () Bool)

(assert (=> b!788654 (= c!87601 (= lt!351878 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!788654 (= e!438377 e!438375)))

(assert (= (and d!102827 c!87602) b!788650))

(assert (= (and d!102827 (not c!87602)) b!788653))

(assert (= (and b!788653 c!87603) b!788651))

(assert (= (and b!788653 (not c!87603)) b!788654))

(assert (= (and b!788654 c!87601) b!788652))

(assert (= (and b!788654 (not c!87601)) b!788649))

(declare-fun m!729961 () Bool)

(assert (=> b!788649 m!729961))

(assert (=> b!788649 m!729961))

(assert (=> b!788649 m!729597))

(declare-fun m!729963 () Bool)

(assert (=> b!788649 m!729963))

(declare-fun m!729965 () Bool)

(assert (=> d!102827 m!729965))

(declare-fun m!729967 () Bool)

(assert (=> d!102827 m!729967))

(assert (=> d!102827 m!729637))

(assert (=> d!102827 m!729617))

(assert (=> b!788149 d!102827))

(declare-fun d!102829 () Bool)

(declare-fun lt!351881 () SeekEntryResult!8097)

(assert (=> d!102829 (and (or (is-Undefined!8097 lt!351881) (not (is-Found!8097 lt!351881)) (and (bvsge (index!34756 lt!351881) #b00000000000000000000000000000000) (bvslt (index!34756 lt!351881) (size!20911 lt!351656)))) (or (is-Undefined!8097 lt!351881) (is-Found!8097 lt!351881) (not (is-MissingZero!8097 lt!351881)) (and (bvsge (index!34755 lt!351881) #b00000000000000000000000000000000) (bvslt (index!34755 lt!351881) (size!20911 lt!351656)))) (or (is-Undefined!8097 lt!351881) (is-Found!8097 lt!351881) (is-MissingZero!8097 lt!351881) (not (is-MissingVacant!8097 lt!351881)) (and (bvsge (index!34758 lt!351881) #b00000000000000000000000000000000) (bvslt (index!34758 lt!351881) (size!20911 lt!351656)))) (or (is-Undefined!8097 lt!351881) (ite (is-Found!8097 lt!351881) (= (select (arr!20490 lt!351656) (index!34756 lt!351881)) lt!351654) (ite (is-MissingZero!8097 lt!351881) (= (select (arr!20490 lt!351656) (index!34755 lt!351881)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8097 lt!351881) (= (select (arr!20490 lt!351656) (index!34758 lt!351881)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!438383 () SeekEntryResult!8097)

(assert (=> d!102829 (= lt!351881 e!438383)))

(declare-fun c!87607 () Bool)

(declare-fun lt!351880 () SeekEntryResult!8097)

(assert (=> d!102829 (= c!87607 (and (is-Intermediate!8097 lt!351880) (undefined!8909 lt!351880)))))

(assert (=> d!102829 (= lt!351880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351654 mask!3328) lt!351654 lt!351656 mask!3328))))

(assert (=> d!102829 (validMask!0 mask!3328)))

(assert (=> d!102829 (= (seekEntryOrOpen!0 lt!351654 lt!351656 mask!3328) lt!351881)))

(declare-fun b!788660 () Bool)

(declare-fun e!438382 () SeekEntryResult!8097)

(assert (=> b!788660 (= e!438382 (MissingZero!8097 (index!34757 lt!351880)))))

(declare-fun b!788661 () Bool)

(assert (=> b!788661 (= e!438383 Undefined!8097)))

(declare-fun b!788662 () Bool)

(declare-fun e!438384 () SeekEntryResult!8097)

(assert (=> b!788662 (= e!438384 (Found!8097 (index!34757 lt!351880)))))

(declare-fun b!788663 () Bool)

(assert (=> b!788663 (= e!438383 e!438384)))

(declare-fun lt!351879 () (_ BitVec 64))

(assert (=> b!788663 (= lt!351879 (select (arr!20490 lt!351656) (index!34757 lt!351880)))))

(declare-fun c!87606 () Bool)

(assert (=> b!788663 (= c!87606 (= lt!351879 lt!351654))))

(declare-fun b!788664 () Bool)

(declare-fun c!87605 () Bool)

(assert (=> b!788664 (= c!87605 (= lt!351879 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!788664 (= e!438384 e!438382)))

(declare-fun b!788665 () Bool)

(assert (=> b!788665 (= e!438382 (seekKeyOrZeroReturnVacant!0 (x!65718 lt!351880) (index!34757 lt!351880) (index!34757 lt!351880) lt!351654 lt!351656 mask!3328))))

(assert (= (and d!102829 c!87607) b!788661))

(assert (= (and d!102829 (not c!87607)) b!788663))

(assert (= (and b!788663 c!87606) b!788662))

(assert (= (and b!788663 (not c!87606)) b!788664))

(assert (= (and b!788664 c!87605) b!788660))

(assert (= (and b!788664 (not c!87605)) b!788665))

(declare-fun m!729977 () Bool)

(assert (=> d!102829 m!729977))

(assert (=> d!102829 m!729617))

(assert (=> d!102829 m!729605))

(assert (=> d!102829 m!729611))

(declare-fun m!729979 () Bool)

(assert (=> d!102829 m!729979))

(declare-fun m!729981 () Bool)

(assert (=> d!102829 m!729981))

(assert (=> d!102829 m!729605))

(declare-fun m!729983 () Bool)

(assert (=> b!788663 m!729983))

(declare-fun m!729985 () Bool)

(assert (=> b!788665 m!729985))

(assert (=> b!788150 d!102829))

(declare-fun b!788672 () Bool)

(declare-fun e!438388 () SeekEntryResult!8097)

(assert (=> b!788672 (= e!438388 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) index!1321 lt!351654 lt!351656 mask!3328))))

(declare-fun b!788673 () Bool)

(declare-fun e!438389 () SeekEntryResult!8097)

(assert (=> b!788673 (= e!438389 Undefined!8097)))

(declare-fun b!788674 () Bool)

(declare-fun e!438390 () SeekEntryResult!8097)

(assert (=> b!788674 (= e!438390 (Found!8097 index!1321))))

(declare-fun b!788675 () Bool)

(assert (=> b!788675 (= e!438388 (MissingVacant!8097 index!1321))))

(declare-fun lt!351885 () SeekEntryResult!8097)

(declare-fun d!102835 () Bool)

(assert (=> d!102835 (and (or (is-Undefined!8097 lt!351885) (not (is-Found!8097 lt!351885)) (and (bvsge (index!34756 lt!351885) #b00000000000000000000000000000000) (bvslt (index!34756 lt!351885) (size!20911 lt!351656)))) (or (is-Undefined!8097 lt!351885) (is-Found!8097 lt!351885) (not (is-MissingVacant!8097 lt!351885)) (not (= (index!34758 lt!351885) index!1321)) (and (bvsge (index!34758 lt!351885) #b00000000000000000000000000000000) (bvslt (index!34758 lt!351885) (size!20911 lt!351656)))) (or (is-Undefined!8097 lt!351885) (ite (is-Found!8097 lt!351885) (= (select (arr!20490 lt!351656) (index!34756 lt!351885)) lt!351654) (and (is-MissingVacant!8097 lt!351885) (= (index!34758 lt!351885) index!1321) (= (select (arr!20490 lt!351656) (index!34758 lt!351885)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102835 (= lt!351885 e!438389)))

(declare-fun c!87612 () Bool)

(assert (=> d!102835 (= c!87612 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!351886 () (_ BitVec 64))

(assert (=> d!102835 (= lt!351886 (select (arr!20490 lt!351656) index!1321))))

(assert (=> d!102835 (validMask!0 mask!3328)))

(assert (=> d!102835 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351654 lt!351656 mask!3328) lt!351885)))

(declare-fun b!788676 () Bool)

(assert (=> b!788676 (= e!438389 e!438390)))

(declare-fun c!87613 () Bool)

(assert (=> b!788676 (= c!87613 (= lt!351886 lt!351654))))

(declare-fun b!788677 () Bool)

(declare-fun c!87611 () Bool)

(assert (=> b!788677 (= c!87611 (= lt!351886 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!788677 (= e!438390 e!438388)))

(assert (= (and d!102835 c!87612) b!788673))

(assert (= (and d!102835 (not c!87612)) b!788676))

(assert (= (and b!788676 c!87613) b!788674))

(assert (= (and b!788676 (not c!87613)) b!788677))

(assert (= (and b!788677 c!87611) b!788675))

(assert (= (and b!788677 (not c!87611)) b!788672))

(assert (=> b!788672 m!729961))

(assert (=> b!788672 m!729961))

(declare-fun m!730001 () Bool)

(assert (=> b!788672 m!730001))

(declare-fun m!730003 () Bool)

(assert (=> d!102835 m!730003))

(declare-fun m!730005 () Bool)

(assert (=> d!102835 m!730005))

(declare-fun m!730007 () Bool)

(assert (=> d!102835 m!730007))

(assert (=> d!102835 m!729617))

(assert (=> b!788150 d!102835))

(declare-fun b!788684 () Bool)

(declare-fun e!438398 () SeekEntryResult!8097)

(assert (=> b!788684 (= e!438398 (Intermediate!8097 false index!1321 x!1131))))

(declare-fun b!788685 () Bool)

(declare-fun lt!351890 () SeekEntryResult!8097)

(assert (=> b!788685 (and (bvsge (index!34757 lt!351890) #b00000000000000000000000000000000) (bvslt (index!34757 lt!351890) (size!20911 lt!351656)))))

(declare-fun res!534268 () Bool)

(assert (=> b!788685 (= res!534268 (= (select (arr!20490 lt!351656) (index!34757 lt!351890)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438395 () Bool)

(assert (=> b!788685 (=> res!534268 e!438395)))

(declare-fun b!788686 () Bool)

(assert (=> b!788686 (= e!438398 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!351654 lt!351656 mask!3328))))

(declare-fun d!102839 () Bool)

(declare-fun e!438396 () Bool)

(assert (=> d!102839 e!438396))

(declare-fun c!87618 () Bool)

(assert (=> d!102839 (= c!87618 (and (is-Intermediate!8097 lt!351890) (undefined!8909 lt!351890)))))

(declare-fun e!438397 () SeekEntryResult!8097)

(assert (=> d!102839 (= lt!351890 e!438397)))

(declare-fun c!87617 () Bool)

(assert (=> d!102839 (= c!87617 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!351891 () (_ BitVec 64))

(assert (=> d!102839 (= lt!351891 (select (arr!20490 lt!351656) index!1321))))

(assert (=> d!102839 (validMask!0 mask!3328)))

(assert (=> d!102839 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351654 lt!351656 mask!3328) lt!351890)))

(declare-fun b!788687 () Bool)

(assert (=> b!788687 (and (bvsge (index!34757 lt!351890) #b00000000000000000000000000000000) (bvslt (index!34757 lt!351890) (size!20911 lt!351656)))))

(declare-fun res!534270 () Bool)

(assert (=> b!788687 (= res!534270 (= (select (arr!20490 lt!351656) (index!34757 lt!351890)) lt!351654))))

(assert (=> b!788687 (=> res!534270 e!438395)))

(declare-fun e!438394 () Bool)

(assert (=> b!788687 (= e!438394 e!438395)))

(declare-fun b!788688 () Bool)

(assert (=> b!788688 (= e!438397 e!438398)))

(declare-fun c!87619 () Bool)

(assert (=> b!788688 (= c!87619 (or (= lt!351891 lt!351654) (= (bvadd lt!351891 lt!351891) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788689 () Bool)

(assert (=> b!788689 (= e!438396 e!438394)))

(declare-fun res!534269 () Bool)

(assert (=> b!788689 (= res!534269 (and (is-Intermediate!8097 lt!351890) (not (undefined!8909 lt!351890)) (bvslt (x!65718 lt!351890) #b01111111111111111111111111111110) (bvsge (x!65718 lt!351890) #b00000000000000000000000000000000) (bvsge (x!65718 lt!351890) x!1131)))))

(assert (=> b!788689 (=> (not res!534269) (not e!438394))))

(declare-fun b!788690 () Bool)

(assert (=> b!788690 (= e!438396 (bvsge (x!65718 lt!351890) #b01111111111111111111111111111110))))

(declare-fun b!788691 () Bool)

(assert (=> b!788691 (and (bvsge (index!34757 lt!351890) #b00000000000000000000000000000000) (bvslt (index!34757 lt!351890) (size!20911 lt!351656)))))

(assert (=> b!788691 (= e!438395 (= (select (arr!20490 lt!351656) (index!34757 lt!351890)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788692 () Bool)

(assert (=> b!788692 (= e!438397 (Intermediate!8097 true index!1321 x!1131))))

(assert (= (and d!102839 c!87617) b!788692))

(assert (= (and d!102839 (not c!87617)) b!788688))

(assert (= (and b!788688 c!87619) b!788684))

(assert (= (and b!788688 (not c!87619)) b!788686))

(assert (= (and d!102839 c!87618) b!788690))

(assert (= (and d!102839 (not c!87618)) b!788689))

(assert (= (and b!788689 res!534269) b!788687))

(assert (= (and b!788687 (not res!534270)) b!788685))

(assert (= (and b!788685 (not res!534268)) b!788691))

(declare-fun m!730019 () Bool)

(assert (=> b!788685 m!730019))

(assert (=> b!788687 m!730019))

(assert (=> b!788691 m!730019))

(assert (=> b!788686 m!729961))

(assert (=> b!788686 m!729961))

(declare-fun m!730023 () Bool)

(assert (=> b!788686 m!730023))

(assert (=> d!102839 m!730007))

(assert (=> d!102839 m!729617))

(assert (=> b!788145 d!102839))

(declare-fun b!788703 () Bool)

(declare-fun e!438409 () SeekEntryResult!8097)

(assert (=> b!788703 (= e!438409 (Intermediate!8097 false (toIndex!0 lt!351654 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!788704 () Bool)

(declare-fun lt!351897 () SeekEntryResult!8097)

(assert (=> b!788704 (and (bvsge (index!34757 lt!351897) #b00000000000000000000000000000000) (bvslt (index!34757 lt!351897) (size!20911 lt!351656)))))

(declare-fun res!534273 () Bool)

(assert (=> b!788704 (= res!534273 (= (select (arr!20490 lt!351656) (index!34757 lt!351897)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438406 () Bool)

(assert (=> b!788704 (=> res!534273 e!438406)))

(declare-fun b!788705 () Bool)

(assert (=> b!788705 (= e!438409 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!351654 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!351654 lt!351656 mask!3328))))

(declare-fun d!102843 () Bool)

(declare-fun e!438407 () Bool)

(assert (=> d!102843 e!438407))

(declare-fun c!87625 () Bool)

(assert (=> d!102843 (= c!87625 (and (is-Intermediate!8097 lt!351897) (undefined!8909 lt!351897)))))

(declare-fun e!438408 () SeekEntryResult!8097)

(assert (=> d!102843 (= lt!351897 e!438408)))

(declare-fun c!87624 () Bool)

(assert (=> d!102843 (= c!87624 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!351898 () (_ BitVec 64))

(assert (=> d!102843 (= lt!351898 (select (arr!20490 lt!351656) (toIndex!0 lt!351654 mask!3328)))))

(assert (=> d!102843 (validMask!0 mask!3328)))

(assert (=> d!102843 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351654 mask!3328) lt!351654 lt!351656 mask!3328) lt!351897)))

(declare-fun b!788706 () Bool)

(assert (=> b!788706 (and (bvsge (index!34757 lt!351897) #b00000000000000000000000000000000) (bvslt (index!34757 lt!351897) (size!20911 lt!351656)))))

(declare-fun res!534275 () Bool)

(assert (=> b!788706 (= res!534275 (= (select (arr!20490 lt!351656) (index!34757 lt!351897)) lt!351654))))

(assert (=> b!788706 (=> res!534275 e!438406)))

(declare-fun e!438405 () Bool)

(assert (=> b!788706 (= e!438405 e!438406)))

(declare-fun b!788707 () Bool)

(assert (=> b!788707 (= e!438408 e!438409)))

(declare-fun c!87626 () Bool)

(assert (=> b!788707 (= c!87626 (or (= lt!351898 lt!351654) (= (bvadd lt!351898 lt!351898) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788708 () Bool)

(assert (=> b!788708 (= e!438407 e!438405)))

(declare-fun res!534274 () Bool)

(assert (=> b!788708 (= res!534274 (and (is-Intermediate!8097 lt!351897) (not (undefined!8909 lt!351897)) (bvslt (x!65718 lt!351897) #b01111111111111111111111111111110) (bvsge (x!65718 lt!351897) #b00000000000000000000000000000000) (bvsge (x!65718 lt!351897) #b00000000000000000000000000000000)))))

(assert (=> b!788708 (=> (not res!534274) (not e!438405))))

(declare-fun b!788709 () Bool)

(assert (=> b!788709 (= e!438407 (bvsge (x!65718 lt!351897) #b01111111111111111111111111111110))))

(declare-fun b!788710 () Bool)

(assert (=> b!788710 (and (bvsge (index!34757 lt!351897) #b00000000000000000000000000000000) (bvslt (index!34757 lt!351897) (size!20911 lt!351656)))))

(assert (=> b!788710 (= e!438406 (= (select (arr!20490 lt!351656) (index!34757 lt!351897)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788711 () Bool)

(assert (=> b!788711 (= e!438408 (Intermediate!8097 true (toIndex!0 lt!351654 mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!102843 c!87624) b!788711))

(assert (= (and d!102843 (not c!87624)) b!788707))

(assert (= (and b!788707 c!87626) b!788703))

(assert (= (and b!788707 (not c!87626)) b!788705))

(assert (= (and d!102843 c!87625) b!788709))

(assert (= (and d!102843 (not c!87625)) b!788708))

(assert (= (and b!788708 res!534274) b!788706))

(assert (= (and b!788706 (not res!534275)) b!788704))

(assert (= (and b!788704 (not res!534273)) b!788710))

(declare-fun m!730039 () Bool)

(assert (=> b!788704 m!730039))

(assert (=> b!788706 m!730039))

(assert (=> b!788710 m!730039))

(assert (=> b!788705 m!729605))

(declare-fun m!730041 () Bool)

(assert (=> b!788705 m!730041))

(assert (=> b!788705 m!730041))

(declare-fun m!730043 () Bool)

(assert (=> b!788705 m!730043))

(assert (=> d!102843 m!729605))

(declare-fun m!730045 () Bool)

(assert (=> d!102843 m!730045))

(assert (=> d!102843 m!729617))

(assert (=> b!788145 d!102843))

(declare-fun d!102849 () Bool)

(declare-fun lt!351902 () (_ BitVec 32))

(declare-fun lt!351901 () (_ BitVec 32))

(assert (=> d!102849 (= lt!351902 (bvmul (bvxor lt!351901 (bvlshr lt!351901 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102849 (= lt!351901 ((_ extract 31 0) (bvand (bvxor lt!351654 (bvlshr lt!351654 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102849 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!534224 (let ((h!15668 ((_ extract 31 0) (bvand (bvxor lt!351654 (bvlshr lt!351654 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65727 (bvmul (bvxor h!15668 (bvlshr h!15668 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65727 (bvlshr x!65727 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!534224 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!534224 #b00000000000000000000000000000000))))))

(assert (=> d!102849 (= (toIndex!0 lt!351654 mask!3328) (bvand (bvxor lt!351902 (bvlshr lt!351902 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!788145 d!102849))

(declare-fun b!788727 () Bool)

(declare-fun e!438422 () SeekEntryResult!8097)

(assert (=> b!788727 (= e!438422 (Intermediate!8097 false index!1321 x!1131))))

(declare-fun b!788728 () Bool)

(declare-fun lt!351905 () SeekEntryResult!8097)

(assert (=> b!788728 (and (bvsge (index!34757 lt!351905) #b00000000000000000000000000000000) (bvslt (index!34757 lt!351905) (size!20911 a!3186)))))

(declare-fun res!534279 () Bool)

(assert (=> b!788728 (= res!534279 (= (select (arr!20490 a!3186) (index!34757 lt!351905)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438419 () Bool)

(assert (=> b!788728 (=> res!534279 e!438419)))

(declare-fun b!788729 () Bool)

(assert (=> b!788729 (= e!438422 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20490 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!102853 () Bool)

(declare-fun e!438420 () Bool)

(assert (=> d!102853 e!438420))

(declare-fun c!87634 () Bool)

(assert (=> d!102853 (= c!87634 (and (is-Intermediate!8097 lt!351905) (undefined!8909 lt!351905)))))

(declare-fun e!438421 () SeekEntryResult!8097)

(assert (=> d!102853 (= lt!351905 e!438421)))

(declare-fun c!87633 () Bool)

(assert (=> d!102853 (= c!87633 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!351906 () (_ BitVec 64))

(assert (=> d!102853 (= lt!351906 (select (arr!20490 a!3186) index!1321))))

(assert (=> d!102853 (validMask!0 mask!3328)))

(assert (=> d!102853 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20490 a!3186) j!159) a!3186 mask!3328) lt!351905)))

(declare-fun b!788730 () Bool)

(assert (=> b!788730 (and (bvsge (index!34757 lt!351905) #b00000000000000000000000000000000) (bvslt (index!34757 lt!351905) (size!20911 a!3186)))))

(declare-fun res!534281 () Bool)

(assert (=> b!788730 (= res!534281 (= (select (arr!20490 a!3186) (index!34757 lt!351905)) (select (arr!20490 a!3186) j!159)))))

(assert (=> b!788730 (=> res!534281 e!438419)))

(declare-fun e!438418 () Bool)

(assert (=> b!788730 (= e!438418 e!438419)))

(declare-fun b!788731 () Bool)

(assert (=> b!788731 (= e!438421 e!438422)))

(declare-fun c!87635 () Bool)

(assert (=> b!788731 (= c!87635 (or (= lt!351906 (select (arr!20490 a!3186) j!159)) (= (bvadd lt!351906 lt!351906) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788732 () Bool)

(assert (=> b!788732 (= e!438420 e!438418)))

(declare-fun res!534280 () Bool)

(assert (=> b!788732 (= res!534280 (and (is-Intermediate!8097 lt!351905) (not (undefined!8909 lt!351905)) (bvslt (x!65718 lt!351905) #b01111111111111111111111111111110) (bvsge (x!65718 lt!351905) #b00000000000000000000000000000000) (bvsge (x!65718 lt!351905) x!1131)))))

(assert (=> b!788732 (=> (not res!534280) (not e!438418))))

(declare-fun b!788733 () Bool)

(assert (=> b!788733 (= e!438420 (bvsge (x!65718 lt!351905) #b01111111111111111111111111111110))))

(declare-fun b!788734 () Bool)

(assert (=> b!788734 (and (bvsge (index!34757 lt!351905) #b00000000000000000000000000000000) (bvslt (index!34757 lt!351905) (size!20911 a!3186)))))

(assert (=> b!788734 (= e!438419 (= (select (arr!20490 a!3186) (index!34757 lt!351905)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788735 () Bool)

(assert (=> b!788735 (= e!438421 (Intermediate!8097 true index!1321 x!1131))))

(assert (= (and d!102853 c!87633) b!788735))

(assert (= (and d!102853 (not c!87633)) b!788731))

(assert (= (and b!788731 c!87635) b!788727))

(assert (= (and b!788731 (not c!87635)) b!788729))

(assert (= (and d!102853 c!87634) b!788733))

(assert (= (and d!102853 (not c!87634)) b!788732))

(assert (= (and b!788732 res!534280) b!788730))

(assert (= (and b!788730 (not res!534281)) b!788728))

(assert (= (and b!788728 (not res!534279)) b!788734))

(declare-fun m!730059 () Bool)

(assert (=> b!788728 m!730059))

(assert (=> b!788730 m!730059))

(assert (=> b!788734 m!730059))

(assert (=> b!788729 m!729961))

(assert (=> b!788729 m!729961))

(assert (=> b!788729 m!729597))

(declare-fun m!730061 () Bool)

(assert (=> b!788729 m!730061))

(assert (=> d!102853 m!729637))

(assert (=> d!102853 m!729617))

(assert (=> b!788146 d!102853))

(assert (=> b!788157 d!102827))

(declare-fun b!788745 () Bool)

(declare-fun e!438430 () Bool)

(declare-fun call!35298 () Bool)

(assert (=> b!788745 (= e!438430 call!35298)))

(declare-fun b!788746 () Bool)

(declare-fun e!438429 () Bool)

(assert (=> b!788746 (= e!438429 call!35298)))

(declare-fun d!102857 () Bool)

(declare-fun res!534286 () Bool)

(declare-fun e!438428 () Bool)

(assert (=> d!102857 (=> res!534286 e!438428)))

(assert (=> d!102857 (= res!534286 (bvsge #b00000000000000000000000000000000 (size!20911 a!3186)))))

(assert (=> d!102857 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!438428)))

(declare-fun bm!35295 () Bool)

(assert (=> bm!35295 (= call!35298 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!788747 () Bool)

(assert (=> b!788747 (= e!438430 e!438429)))

(declare-fun lt!351909 () (_ BitVec 64))

(assert (=> b!788747 (= lt!351909 (select (arr!20490 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!351911 () Unit!27298)

(assert (=> b!788747 (= lt!351911 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!351909 #b00000000000000000000000000000000))))

(assert (=> b!788747 (arrayContainsKey!0 a!3186 lt!351909 #b00000000000000000000000000000000)))

(declare-fun lt!351910 () Unit!27298)

(assert (=> b!788747 (= lt!351910 lt!351911)))

(declare-fun res!534285 () Bool)

(assert (=> b!788747 (= res!534285 (= (seekEntryOrOpen!0 (select (arr!20490 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!8097 #b00000000000000000000000000000000)))))

(assert (=> b!788747 (=> (not res!534285) (not e!438429))))

(declare-fun b!788748 () Bool)

(assert (=> b!788748 (= e!438428 e!438430)))

(declare-fun c!87639 () Bool)

(assert (=> b!788748 (= c!87639 (validKeyInArray!0 (select (arr!20490 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!102857 (not res!534286)) b!788748))

(assert (= (and b!788748 c!87639) b!788747))

