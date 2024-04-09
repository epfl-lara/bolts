; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66062 () Bool)

(assert start!66062)

(declare-fun b!760827 () Bool)

(declare-fun res!514732 () Bool)

(declare-fun e!424171 () Bool)

(assert (=> b!760827 (=> (not res!514732) (not e!424171))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42046 0))(
  ( (array!42047 (arr!20130 (Array (_ BitVec 32) (_ BitVec 64))) (size!20551 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42046)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!760827 (= res!514732 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20130 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!424174 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!760828 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7737 0))(
  ( (MissingZero!7737 (index!33315 (_ BitVec 32))) (Found!7737 (index!33316 (_ BitVec 32))) (Intermediate!7737 (undefined!8549 Bool) (index!33317 (_ BitVec 32)) (x!64244 (_ BitVec 32))) (Undefined!7737) (MissingVacant!7737 (index!33318 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42046 (_ BitVec 32)) SeekEntryResult!7737)

(assert (=> b!760828 (= e!424174 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20130 a!3186) j!159) a!3186 mask!3328) (Found!7737 j!159)))))

(declare-fun b!760829 () Bool)

(declare-fun e!424169 () Bool)

(assert (=> b!760829 (= e!424171 e!424169)))

(declare-fun res!514729 () Bool)

(assert (=> b!760829 (=> (not res!514729) (not e!424169))))

(declare-fun lt!338991 () SeekEntryResult!7737)

(declare-fun lt!338985 () SeekEntryResult!7737)

(assert (=> b!760829 (= res!514729 (= lt!338991 lt!338985))))

(declare-fun lt!338986 () array!42046)

(declare-fun lt!338989 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42046 (_ BitVec 32)) SeekEntryResult!7737)

(assert (=> b!760829 (= lt!338985 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338989 lt!338986 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!760829 (= lt!338991 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338989 mask!3328) lt!338989 lt!338986 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!760829 (= lt!338989 (select (store (arr!20130 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!760829 (= lt!338986 (array!42047 (store (arr!20130 a!3186) i!1173 k!2102) (size!20551 a!3186)))))

(declare-fun b!760830 () Bool)

(declare-fun res!514733 () Bool)

(assert (=> b!760830 (=> (not res!514733) (not e!424171))))

(assert (=> b!760830 (= res!514733 e!424174)))

(declare-fun c!83436 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!760830 (= c!83436 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!760831 () Bool)

(declare-fun e!424170 () Bool)

(declare-fun e!424172 () Bool)

(assert (=> b!760831 (= e!424170 e!424172)))

(declare-fun res!514734 () Bool)

(assert (=> b!760831 (=> (not res!514734) (not e!424172))))

(declare-fun lt!338992 () SeekEntryResult!7737)

(assert (=> b!760831 (= res!514734 (or (= lt!338992 (MissingZero!7737 i!1173)) (= lt!338992 (MissingVacant!7737 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42046 (_ BitVec 32)) SeekEntryResult!7737)

(assert (=> b!760831 (= lt!338992 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!760832 () Bool)

(declare-fun res!514727 () Bool)

(assert (=> b!760832 (=> (not res!514727) (not e!424170))))

(declare-fun arrayContainsKey!0 (array!42046 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!760832 (= res!514727 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!760833 () Bool)

(declare-fun res!514724 () Bool)

(assert (=> b!760833 (=> (not res!514724) (not e!424172))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42046 (_ BitVec 32)) Bool)

(assert (=> b!760833 (= res!514724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!424175 () Bool)

(declare-fun b!760834 () Bool)

(declare-fun lt!338990 () SeekEntryResult!7737)

(assert (=> b!760834 (= e!424175 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20130 a!3186) j!159) a!3186 mask!3328) lt!338990))))

(declare-fun b!760835 () Bool)

(declare-fun res!514728 () Bool)

(assert (=> b!760835 (=> (not res!514728) (not e!424170))))

(assert (=> b!760835 (= res!514728 (and (= (size!20551 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20551 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20551 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!514731 () Bool)

(assert (=> start!66062 (=> (not res!514731) (not e!424170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66062 (= res!514731 (validMask!0 mask!3328))))

(assert (=> start!66062 e!424170))

(assert (=> start!66062 true))

(declare-fun array_inv!15904 (array!42046) Bool)

(assert (=> start!66062 (array_inv!15904 a!3186)))

(declare-fun b!760836 () Bool)

(declare-fun res!514726 () Bool)

(assert (=> b!760836 (=> (not res!514726) (not e!424172))))

(assert (=> b!760836 (= res!514726 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20551 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20551 a!3186))))))

(declare-fun b!760837 () Bool)

(declare-fun e!424173 () Bool)

(assert (=> b!760837 (= e!424169 (not e!424173))))

(declare-fun res!514736 () Bool)

(assert (=> b!760837 (=> res!514736 e!424173)))

(assert (=> b!760837 (= res!514736 (or (not (is-Intermediate!7737 lt!338985)) (bvslt x!1131 (x!64244 lt!338985)) (not (= x!1131 (x!64244 lt!338985))) (not (= index!1321 (index!33317 lt!338985)))))))

(declare-fun e!424168 () Bool)

(assert (=> b!760837 e!424168))

(declare-fun res!514725 () Bool)

(assert (=> b!760837 (=> (not res!514725) (not e!424168))))

(assert (=> b!760837 (= res!514725 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26314 0))(
  ( (Unit!26315) )
))
(declare-fun lt!338987 () Unit!26314)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42046 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26314)

(assert (=> b!760837 (= lt!338987 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!760838 () Bool)

(declare-fun res!514737 () Bool)

(assert (=> b!760838 (=> (not res!514737) (not e!424172))))

(declare-datatypes ((List!14185 0))(
  ( (Nil!14182) (Cons!14181 (h!15259 (_ BitVec 64)) (t!20508 List!14185)) )
))
(declare-fun arrayNoDuplicates!0 (array!42046 (_ BitVec 32) List!14185) Bool)

(assert (=> b!760838 (= res!514737 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14182))))

(declare-fun b!760839 () Bool)

(assert (=> b!760839 (= e!424168 e!424175)))

(declare-fun res!514722 () Bool)

(assert (=> b!760839 (=> (not res!514722) (not e!424175))))

(assert (=> b!760839 (= res!514722 (= (seekEntryOrOpen!0 (select (arr!20130 a!3186) j!159) a!3186 mask!3328) lt!338990))))

(assert (=> b!760839 (= lt!338990 (Found!7737 j!159))))

(declare-fun lt!338988 () SeekEntryResult!7737)

(declare-fun b!760840 () Bool)

(assert (=> b!760840 (= e!424174 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20130 a!3186) j!159) a!3186 mask!3328) lt!338988))))

(declare-fun b!760841 () Bool)

(assert (=> b!760841 (= e!424173 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20130 a!3186) j!159) a!3186 mask!3328) (Found!7737 j!159)))))

(declare-fun b!760842 () Bool)

(declare-fun res!514723 () Bool)

(assert (=> b!760842 (=> (not res!514723) (not e!424170))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!760842 (= res!514723 (validKeyInArray!0 (select (arr!20130 a!3186) j!159)))))

(declare-fun b!760843 () Bool)

(declare-fun res!514735 () Bool)

(assert (=> b!760843 (=> (not res!514735) (not e!424170))))

(assert (=> b!760843 (= res!514735 (validKeyInArray!0 k!2102))))

(declare-fun b!760844 () Bool)

(assert (=> b!760844 (= e!424172 e!424171)))

(declare-fun res!514730 () Bool)

(assert (=> b!760844 (=> (not res!514730) (not e!424171))))

(assert (=> b!760844 (= res!514730 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20130 a!3186) j!159) mask!3328) (select (arr!20130 a!3186) j!159) a!3186 mask!3328) lt!338988))))

(assert (=> b!760844 (= lt!338988 (Intermediate!7737 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!66062 res!514731) b!760835))

(assert (= (and b!760835 res!514728) b!760842))

(assert (= (and b!760842 res!514723) b!760843))

(assert (= (and b!760843 res!514735) b!760832))

(assert (= (and b!760832 res!514727) b!760831))

(assert (= (and b!760831 res!514734) b!760833))

(assert (= (and b!760833 res!514724) b!760838))

(assert (= (and b!760838 res!514737) b!760836))

(assert (= (and b!760836 res!514726) b!760844))

(assert (= (and b!760844 res!514730) b!760827))

(assert (= (and b!760827 res!514732) b!760830))

(assert (= (and b!760830 c!83436) b!760840))

(assert (= (and b!760830 (not c!83436)) b!760828))

(assert (= (and b!760830 res!514733) b!760829))

(assert (= (and b!760829 res!514729) b!760837))

(assert (= (and b!760837 res!514725) b!760839))

(assert (= (and b!760839 res!514722) b!760834))

(assert (= (and b!760837 (not res!514736)) b!760841))

(declare-fun m!708017 () Bool)

(assert (=> b!760827 m!708017))

(declare-fun m!708019 () Bool)

(assert (=> b!760831 m!708019))

(declare-fun m!708021 () Bool)

(assert (=> b!760842 m!708021))

(assert (=> b!760842 m!708021))

(declare-fun m!708023 () Bool)

(assert (=> b!760842 m!708023))

(assert (=> b!760828 m!708021))

(assert (=> b!760828 m!708021))

(declare-fun m!708025 () Bool)

(assert (=> b!760828 m!708025))

(declare-fun m!708027 () Bool)

(assert (=> start!66062 m!708027))

(declare-fun m!708029 () Bool)

(assert (=> start!66062 m!708029))

(declare-fun m!708031 () Bool)

(assert (=> b!760843 m!708031))

(assert (=> b!760840 m!708021))

(assert (=> b!760840 m!708021))

(declare-fun m!708033 () Bool)

(assert (=> b!760840 m!708033))

(assert (=> b!760841 m!708021))

(assert (=> b!760841 m!708021))

(assert (=> b!760841 m!708025))

(declare-fun m!708035 () Bool)

(assert (=> b!760838 m!708035))

(declare-fun m!708037 () Bool)

(assert (=> b!760829 m!708037))

(declare-fun m!708039 () Bool)

(assert (=> b!760829 m!708039))

(declare-fun m!708041 () Bool)

(assert (=> b!760829 m!708041))

(declare-fun m!708043 () Bool)

(assert (=> b!760829 m!708043))

(declare-fun m!708045 () Bool)

(assert (=> b!760829 m!708045))

(assert (=> b!760829 m!708039))

(assert (=> b!760834 m!708021))

(assert (=> b!760834 m!708021))

(declare-fun m!708047 () Bool)

(assert (=> b!760834 m!708047))

(assert (=> b!760844 m!708021))

(assert (=> b!760844 m!708021))

(declare-fun m!708049 () Bool)

(assert (=> b!760844 m!708049))

(assert (=> b!760844 m!708049))

(assert (=> b!760844 m!708021))

(declare-fun m!708051 () Bool)

(assert (=> b!760844 m!708051))

(assert (=> b!760839 m!708021))

(assert (=> b!760839 m!708021))

(declare-fun m!708053 () Bool)

(assert (=> b!760839 m!708053))

(declare-fun m!708055 () Bool)

(assert (=> b!760832 m!708055))

(declare-fun m!708057 () Bool)

(assert (=> b!760833 m!708057))

(declare-fun m!708059 () Bool)

(assert (=> b!760837 m!708059))

(declare-fun m!708061 () Bool)

(assert (=> b!760837 m!708061))

(push 1)

(assert (not b!760831))

(assert (not b!760842))

(assert (not b!760843))

(assert (not b!760839))

(assert (not b!760832))

(assert (not b!760833))

(assert (not b!760844))

(assert (not b!760841))

(assert (not start!66062))

(assert (not b!760828))

(assert (not b!760838))

(assert (not b!760829))

(assert (not b!760837))

(assert (not b!760834))

(assert (not b!760840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!100629 () Bool)

(declare-fun res!514848 () Bool)

(declare-fun e!424249 () Bool)

(assert (=> d!100629 (=> res!514848 e!424249)))

(assert (=> d!100629 (= res!514848 (= (select (arr!20130 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!100629 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!424249)))

(declare-fun b!760984 () Bool)

(declare-fun e!424250 () Bool)

(assert (=> b!760984 (= e!424249 e!424250)))

(declare-fun res!514849 () Bool)

(assert (=> b!760984 (=> (not res!514849) (not e!424250))))

(assert (=> b!760984 (= res!514849 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20551 a!3186)))))

(declare-fun b!760985 () Bool)

(assert (=> b!760985 (= e!424250 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100629 (not res!514848)) b!760984))

(assert (= (and b!760984 res!514849) b!760985))

(declare-fun m!708163 () Bool)

(assert (=> d!100629 m!708163))

(declare-fun m!708165 () Bool)

(assert (=> b!760985 m!708165))

(assert (=> b!760832 d!100629))

(declare-fun d!100631 () Bool)

(assert (=> d!100631 (= (validKeyInArray!0 (select (arr!20130 a!3186) j!159)) (and (not (= (select (arr!20130 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20130 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!760842 d!100631))

(declare-fun e!424281 () SeekEntryResult!7737)

(declare-fun b!761034 () Bool)

(declare-fun lt!339075 () SeekEntryResult!7737)

(assert (=> b!761034 (= e!424281 (seekKeyOrZeroReturnVacant!0 (x!64244 lt!339075) (index!33317 lt!339075) (index!33317 lt!339075) k!2102 a!3186 mask!3328))))

(declare-fun d!100633 () Bool)

(declare-fun lt!339074 () SeekEntryResult!7737)

(assert (=> d!100633 (and (or (is-Undefined!7737 lt!339074) (not (is-Found!7737 lt!339074)) (and (bvsge (index!33316 lt!339074) #b00000000000000000000000000000000) (bvslt (index!33316 lt!339074) (size!20551 a!3186)))) (or (is-Undefined!7737 lt!339074) (is-Found!7737 lt!339074) (not (is-MissingZero!7737 lt!339074)) (and (bvsge (index!33315 lt!339074) #b00000000000000000000000000000000) (bvslt (index!33315 lt!339074) (size!20551 a!3186)))) (or (is-Undefined!7737 lt!339074) (is-Found!7737 lt!339074) (is-MissingZero!7737 lt!339074) (not (is-MissingVacant!7737 lt!339074)) (and (bvsge (index!33318 lt!339074) #b00000000000000000000000000000000) (bvslt (index!33318 lt!339074) (size!20551 a!3186)))) (or (is-Undefined!7737 lt!339074) (ite (is-Found!7737 lt!339074) (= (select (arr!20130 a!3186) (index!33316 lt!339074)) k!2102) (ite (is-MissingZero!7737 lt!339074) (= (select (arr!20130 a!3186) (index!33315 lt!339074)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7737 lt!339074) (= (select (arr!20130 a!3186) (index!33318 lt!339074)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!424282 () SeekEntryResult!7737)

(assert (=> d!100633 (= lt!339074 e!424282)))

(declare-fun c!83470 () Bool)

(assert (=> d!100633 (= c!83470 (and (is-Intermediate!7737 lt!339075) (undefined!8549 lt!339075)))))

(assert (=> d!100633 (= lt!339075 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!100633 (validMask!0 mask!3328)))

(assert (=> d!100633 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!339074)))

(declare-fun b!761035 () Bool)

(declare-fun c!83471 () Bool)

(declare-fun lt!339076 () (_ BitVec 64))

(assert (=> b!761035 (= c!83471 (= lt!339076 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424283 () SeekEntryResult!7737)

(assert (=> b!761035 (= e!424283 e!424281)))

(declare-fun b!761036 () Bool)

(assert (=> b!761036 (= e!424283 (Found!7737 (index!33317 lt!339075)))))

(declare-fun b!761037 () Bool)

(assert (=> b!761037 (= e!424282 e!424283)))

(assert (=> b!761037 (= lt!339076 (select (arr!20130 a!3186) (index!33317 lt!339075)))))

(declare-fun c!83472 () Bool)

(assert (=> b!761037 (= c!83472 (= lt!339076 k!2102))))

(declare-fun b!761038 () Bool)

(assert (=> b!761038 (= e!424281 (MissingZero!7737 (index!33317 lt!339075)))))

(declare-fun b!761039 () Bool)

(assert (=> b!761039 (= e!424282 Undefined!7737)))

(assert (= (and d!100633 c!83470) b!761039))

(assert (= (and d!100633 (not c!83470)) b!761037))

(assert (= (and b!761037 c!83472) b!761036))

(assert (= (and b!761037 (not c!83472)) b!761035))

(assert (= (and b!761035 c!83471) b!761038))

(assert (= (and b!761035 (not c!83471)) b!761034))

(declare-fun m!708191 () Bool)

(assert (=> b!761034 m!708191))

(assert (=> d!100633 m!708027))

(declare-fun m!708193 () Bool)

(assert (=> d!100633 m!708193))

(declare-fun m!708195 () Bool)

(assert (=> d!100633 m!708195))

(declare-fun m!708197 () Bool)

(assert (=> d!100633 m!708197))

(assert (=> d!100633 m!708193))

(declare-fun m!708199 () Bool)

(assert (=> d!100633 m!708199))

(declare-fun m!708201 () Bool)

(assert (=> d!100633 m!708201))

(declare-fun m!708203 () Bool)

(assert (=> b!761037 m!708203))

(assert (=> b!760831 d!100633))

(declare-fun b!761119 () Bool)

(declare-fun lt!339097 () SeekEntryResult!7737)

(assert (=> b!761119 (and (bvsge (index!33317 lt!339097) #b00000000000000000000000000000000) (bvslt (index!33317 lt!339097) (size!20551 a!3186)))))

(declare-fun e!424331 () Bool)

(assert (=> b!761119 (= e!424331 (= (select (arr!20130 a!3186) (index!33317 lt!339097)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424335 () SeekEntryResult!7737)

(declare-fun b!761120 () Bool)

(assert (=> b!761120 (= e!424335 (Intermediate!7737 true (toIndex!0 (select (arr!20130 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!761121 () Bool)

(assert (=> b!761121 (and (bvsge (index!33317 lt!339097) #b00000000000000000000000000000000) (bvslt (index!33317 lt!339097) (size!20551 a!3186)))))

(declare-fun res!514884 () Bool)

(assert (=> b!761121 (= res!514884 (= (select (arr!20130 a!3186) (index!33317 lt!339097)) (select (arr!20130 a!3186) j!159)))))

(assert (=> b!761121 (=> res!514884 e!424331)))

(declare-fun e!424333 () Bool)

(assert (=> b!761121 (= e!424333 e!424331)))

(declare-fun d!100645 () Bool)

(declare-fun e!424334 () Bool)

(assert (=> d!100645 e!424334))

(declare-fun c!83505 () Bool)

(assert (=> d!100645 (= c!83505 (and (is-Intermediate!7737 lt!339097) (undefined!8549 lt!339097)))))

(assert (=> d!100645 (= lt!339097 e!424335)))

(declare-fun c!83503 () Bool)

(assert (=> d!100645 (= c!83503 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!339098 () (_ BitVec 64))

(assert (=> d!100645 (= lt!339098 (select (arr!20130 a!3186) (toIndex!0 (select (arr!20130 a!3186) j!159) mask!3328)))))

(assert (=> d!100645 (validMask!0 mask!3328)))

(assert (=> d!100645 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20130 a!3186) j!159) mask!3328) (select (arr!20130 a!3186) j!159) a!3186 mask!3328) lt!339097)))

(declare-fun b!761122 () Bool)

(assert (=> b!761122 (= e!424334 (bvsge (x!64244 lt!339097) #b01111111111111111111111111111110))))

(declare-fun b!761123 () Bool)

(declare-fun e!424332 () SeekEntryResult!7737)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!761123 (= e!424332 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20130 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20130 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761124 () Bool)

(assert (=> b!761124 (= e!424332 (Intermediate!7737 false (toIndex!0 (select (arr!20130 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!761125 () Bool)

(assert (=> b!761125 (= e!424335 e!424332)))

(declare-fun c!83504 () Bool)

(assert (=> b!761125 (= c!83504 (or (= lt!339098 (select (arr!20130 a!3186) j!159)) (= (bvadd lt!339098 lt!339098) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761126 () Bool)

(assert (=> b!761126 (and (bvsge (index!33317 lt!339097) #b00000000000000000000000000000000) (bvslt (index!33317 lt!339097) (size!20551 a!3186)))))

(declare-fun res!514885 () Bool)

(assert (=> b!761126 (= res!514885 (= (select (arr!20130 a!3186) (index!33317 lt!339097)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761126 (=> res!514885 e!424331)))

(declare-fun b!761127 () Bool)

(assert (=> b!761127 (= e!424334 e!424333)))

(declare-fun res!514883 () Bool)

(assert (=> b!761127 (= res!514883 (and (is-Intermediate!7737 lt!339097) (not (undefined!8549 lt!339097)) (bvslt (x!64244 lt!339097) #b01111111111111111111111111111110) (bvsge (x!64244 lt!339097) #b00000000000000000000000000000000) (bvsge (x!64244 lt!339097) #b00000000000000000000000000000000)))))

(assert (=> b!761127 (=> (not res!514883) (not e!424333))))

(assert (= (and d!100645 c!83503) b!761120))

(assert (= (and d!100645 (not c!83503)) b!761125))

(assert (= (and b!761125 c!83504) b!761124))

(assert (= (and b!761125 (not c!83504)) b!761123))

(assert (= (and d!100645 c!83505) b!761122))

(assert (= (and d!100645 (not c!83505)) b!761127))

(assert (= (and b!761127 res!514883) b!761121))

(assert (= (and b!761121 (not res!514884)) b!761126))

(assert (= (and b!761126 (not res!514885)) b!761119))

(assert (=> b!761123 m!708049))

(declare-fun m!708219 () Bool)

(assert (=> b!761123 m!708219))

(assert (=> b!761123 m!708219))

(assert (=> b!761123 m!708021))

(declare-fun m!708221 () Bool)

(assert (=> b!761123 m!708221))

(declare-fun m!708223 () Bool)

(assert (=> b!761121 m!708223))

(assert (=> d!100645 m!708049))

(declare-fun m!708225 () Bool)

(assert (=> d!100645 m!708225))

(assert (=> d!100645 m!708027))

(assert (=> b!761126 m!708223))

(assert (=> b!761119 m!708223))

(assert (=> b!760844 d!100645))

(declare-fun d!100651 () Bool)

(declare-fun lt!339116 () (_ BitVec 32))

(declare-fun lt!339115 () (_ BitVec 32))

(assert (=> d!100651 (= lt!339116 (bvmul (bvxor lt!339115 (bvlshr lt!339115 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100651 (= lt!339115 ((_ extract 31 0) (bvand (bvxor (select (arr!20130 a!3186) j!159) (bvlshr (select (arr!20130 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100651 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514886 (let ((h!15263 ((_ extract 31 0) (bvand (bvxor (select (arr!20130 a!3186) j!159) (bvlshr (select (arr!20130 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64253 (bvmul (bvxor h!15263 (bvlshr h!15263 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64253 (bvlshr x!64253 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514886 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514886 #b00000000000000000000000000000000))))))

(assert (=> d!100651 (= (toIndex!0 (select (arr!20130 a!3186) j!159) mask!3328) (bvand (bvxor lt!339116 (bvlshr lt!339116 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!760844 d!100651))

(declare-fun b!761199 () Bool)

(declare-fun e!424377 () Bool)

(declare-fun e!424378 () Bool)

(assert (=> b!761199 (= e!424377 e!424378)))

(declare-fun c!83530 () Bool)

(assert (=> b!761199 (= c!83530 (validKeyInArray!0 (select (arr!20130 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!761200 () Bool)

(declare-fun e!424376 () Bool)

(assert (=> b!761200 (= e!424378 e!424376)))

(declare-fun lt!339141 () (_ BitVec 64))

(assert (=> b!761200 (= lt!339141 (select (arr!20130 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!339143 () Unit!26314)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42046 (_ BitVec 64) (_ BitVec 32)) Unit!26314)

(assert (=> b!761200 (= lt!339143 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!339141 #b00000000000000000000000000000000))))

(assert (=> b!761200 (arrayContainsKey!0 a!3186 lt!339141 #b00000000000000000000000000000000)))

(declare-fun lt!339142 () Unit!26314)

(assert (=> b!761200 (= lt!339142 lt!339143)))

(declare-fun res!514909 () Bool)

(assert (=> b!761200 (= res!514909 (= (seekEntryOrOpen!0 (select (arr!20130 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7737 #b00000000000000000000000000000000)))))

(assert (=> b!761200 (=> (not res!514909) (not e!424376))))

(declare-fun d!100663 () Bool)

(declare-fun res!514910 () Bool)

(assert (=> d!100663 (=> res!514910 e!424377)))

(assert (=> d!100663 (= res!514910 (bvsge #b00000000000000000000000000000000 (size!20551 a!3186)))))

(assert (=> d!100663 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!424377)))

(declare-fun b!761201 () Bool)

(declare-fun call!34969 () Bool)

(assert (=> b!761201 (= e!424378 call!34969)))

(declare-fun b!761202 () Bool)

(assert (=> b!761202 (= e!424376 call!34969)))

(declare-fun bm!34966 () Bool)

(assert (=> bm!34966 (= call!34969 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!100663 (not res!514910)) b!761199))

(assert (= (and b!761199 c!83530) b!761200))

(assert (= (and b!761199 (not c!83530)) b!761201))

(assert (= (and b!761200 res!514909) b!761202))

(assert (= (or b!761202 b!761201) bm!34966))

(assert (=> b!761199 m!708163))

(assert (=> b!761199 m!708163))

(declare-fun m!708291 () Bool)

(assert (=> b!761199 m!708291))

(assert (=> b!761200 m!708163))

(declare-fun m!708293 () Bool)

(assert (=> b!761200 m!708293))

(declare-fun m!708295 () Bool)

(assert (=> b!761200 m!708295))

(assert (=> b!761200 m!708163))

(declare-fun m!708297 () Bool)

(assert (=> b!761200 m!708297))

(declare-fun m!708299 () Bool)

(assert (=> bm!34966 m!708299))

(assert (=> b!760833 d!100663))

(declare-fun d!100677 () Bool)

(assert (=> d!100677 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!760843 d!100677))

(declare-fun lt!339157 () SeekEntryResult!7737)

(declare-fun d!100679 () Bool)

(assert (=> d!100679 (and (or (is-Undefined!7737 lt!339157) (not (is-Found!7737 lt!339157)) (and (bvsge (index!33316 lt!339157) #b00000000000000000000000000000000) (bvslt (index!33316 lt!339157) (size!20551 a!3186)))) (or (is-Undefined!7737 lt!339157) (is-Found!7737 lt!339157) (not (is-MissingVacant!7737 lt!339157)) (not (= (index!33318 lt!339157) resIntermediateIndex!5)) (and (bvsge (index!33318 lt!339157) #b00000000000000000000000000000000) (bvslt (index!33318 lt!339157) (size!20551 a!3186)))) (or (is-Undefined!7737 lt!339157) (ite (is-Found!7737 lt!339157) (= (select (arr!20130 a!3186) (index!33316 lt!339157)) (select (arr!20130 a!3186) j!159)) (and (is-MissingVacant!7737 lt!339157) (= (index!33318 lt!339157) resIntermediateIndex!5) (= (select (arr!20130 a!3186) (index!33318 lt!339157)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!424395 () SeekEntryResult!7737)

(assert (=> d!100679 (= lt!339157 e!424395)))

(declare-fun c!83547 () Bool)

(assert (=> d!100679 (= c!83547 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!339156 () (_ BitVec 64))

(assert (=> d!100679 (= lt!339156 (select (arr!20130 a!3186) resIntermediateIndex!5))))

(assert (=> d!100679 (validMask!0 mask!3328)))

(assert (=> d!100679 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20130 a!3186) j!159) a!3186 mask!3328) lt!339157)))

(declare-fun b!761233 () Bool)

(declare-fun e!424394 () SeekEntryResult!7737)

(assert (=> b!761233 (= e!424395 e!424394)))

(declare-fun c!83546 () Bool)

(assert (=> b!761233 (= c!83546 (= lt!339156 (select (arr!20130 a!3186) j!159)))))

(declare-fun b!761234 () Bool)

(declare-fun c!83548 () Bool)

(assert (=> b!761234 (= c!83548 (= lt!339156 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424396 () SeekEntryResult!7737)

(assert (=> b!761234 (= e!424394 e!424396)))

(declare-fun b!761235 () Bool)

(assert (=> b!761235 (= e!424395 Undefined!7737)))

(declare-fun b!761236 () Bool)

(assert (=> b!761236 (= e!424396 (MissingVacant!7737 resIntermediateIndex!5))))

(declare-fun b!761237 () Bool)

(assert (=> b!761237 (= e!424394 (Found!7737 resIntermediateIndex!5))))

(declare-fun b!761238 () Bool)

(assert (=> b!761238 (= e!424396 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20130 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!100679 c!83547) b!761235))

(assert (= (and d!100679 (not c!83547)) b!761233))

(assert (= (and b!761233 c!83546) b!761237))

(assert (= (and b!761233 (not c!83546)) b!761234))

(assert (= (and b!761234 c!83548) b!761236))

(assert (= (and b!761234 (not c!83548)) b!761238))

(declare-fun m!708309 () Bool)

(assert (=> d!100679 m!708309))

(declare-fun m!708311 () Bool)

(assert (=> d!100679 m!708311))

(assert (=> d!100679 m!708017))

(assert (=> d!100679 m!708027))

(declare-fun m!708313 () Bool)

(assert (=> b!761238 m!708313))

(assert (=> b!761238 m!708313))

(assert (=> b!761238 m!708021))

(declare-fun m!708315 () Bool)

(assert (=> b!761238 m!708315))

(assert (=> b!760834 d!100679))

(declare-fun b!761245 () Bool)

(declare-fun e!424401 () Bool)

(declare-fun e!424402 () Bool)

(assert (=> b!761245 (= e!424401 e!424402)))

(declare-fun c!83552 () Bool)

(assert (=> b!761245 (= c!83552 (validKeyInArray!0 (select (arr!20130 a!3186) j!159)))))

(declare-fun b!761246 () Bool)

(declare-fun e!424400 () Bool)

(assert (=> b!761246 (= e!424402 e!424400)))

(declare-fun lt!339161 () (_ BitVec 64))

(assert (=> b!761246 (= lt!339161 (select (arr!20130 a!3186) j!159))))

(declare-fun lt!339163 () Unit!26314)

(assert (=> b!761246 (= lt!339163 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!339161 j!159))))

(assert (=> b!761246 (arrayContainsKey!0 a!3186 lt!339161 #b00000000000000000000000000000000)))

(declare-fun lt!339162 () Unit!26314)

(assert (=> b!761246 (= lt!339162 lt!339163)))

(declare-fun res!514911 () Bool)

(assert (=> b!761246 (= res!514911 (= (seekEntryOrOpen!0 (select (arr!20130 a!3186) j!159) a!3186 mask!3328) (Found!7737 j!159)))))

(assert (=> b!761246 (=> (not res!514911) (not e!424400))))

(declare-fun d!100685 () Bool)

(declare-fun res!514912 () Bool)

(assert (=> d!100685 (=> res!514912 e!424401)))

(assert (=> d!100685 (= res!514912 (bvsge j!159 (size!20551 a!3186)))))

(assert (=> d!100685 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!424401)))

(declare-fun b!761247 () Bool)

(declare-fun call!34970 () Bool)

(assert (=> b!761247 (= e!424402 call!34970)))

(declare-fun b!761248 () Bool)

(assert (=> b!761248 (= e!424400 call!34970)))

(declare-fun bm!34967 () Bool)

(assert (=> bm!34967 (= call!34970 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!100685 (not res!514912)) b!761245))

(assert (= (and b!761245 c!83552) b!761246))

(assert (= (and b!761245 (not c!83552)) b!761247))

(assert (= (and b!761246 res!514911) b!761248))

(assert (= (or b!761248 b!761247) bm!34967))

(assert (=> b!761245 m!708021))

(assert (=> b!761245 m!708021))

(assert (=> b!761245 m!708023))

(assert (=> b!761246 m!708021))

(declare-fun m!708329 () Bool)

(assert (=> b!761246 m!708329))

(declare-fun m!708333 () Bool)

(assert (=> b!761246 m!708333))

(assert (=> b!761246 m!708021))

(assert (=> b!761246 m!708053))

(declare-fun m!708335 () Bool)

(assert (=> bm!34967 m!708335))

(assert (=> b!760837 d!100685))

(declare-fun d!100689 () Bool)

(assert (=> d!100689 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!339166 () Unit!26314)

(declare-fun choose!38 (array!42046 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26314)

(assert (=> d!100689 (= lt!339166 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!100689 (validMask!0 mask!3328)))

(assert (=> d!100689 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!339166)))

(declare-fun bs!21397 () Bool)

(assert (= bs!21397 d!100689))

(assert (=> bs!21397 m!708059))

(declare-fun m!708337 () Bool)

(assert (=> bs!21397 m!708337))

(assert (=> bs!21397 m!708027))

(assert (=> b!760837 d!100689))

(declare-fun d!100691 () Bool)

(assert (=> d!100691 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66062 d!100691))

(declare-fun d!100695 () Bool)

(assert (=> d!100695 (= (array_inv!15904 a!3186) (bvsge (size!20551 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66062 d!100695))

(declare-fun lt!339168 () SeekEntryResult!7737)

(declare-fun d!100697 () Bool)

(assert (=> d!100697 (and (or (is-Undefined!7737 lt!339168) (not (is-Found!7737 lt!339168)) (and (bvsge (index!33316 lt!339168) #b00000000000000000000000000000000) (bvslt (index!33316 lt!339168) (size!20551 a!3186)))) (or (is-Undefined!7737 lt!339168) (is-Found!7737 lt!339168) (not (is-MissingVacant!7737 lt!339168)) (not (= (index!33318 lt!339168) resIntermediateIndex!5)) (and (bvsge (index!33318 lt!339168) #b00000000000000000000000000000000) (bvslt (index!33318 lt!339168) (size!20551 a!3186)))) (or (is-Undefined!7737 lt!339168) (ite (is-Found!7737 lt!339168) (= (select (arr!20130 a!3186) (index!33316 lt!339168)) (select (arr!20130 a!3186) j!159)) (and (is-MissingVacant!7737 lt!339168) (= (index!33318 lt!339168) resIntermediateIndex!5) (= (select (arr!20130 a!3186) (index!33318 lt!339168)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!424416 () SeekEntryResult!7737)

(assert (=> d!100697 (= lt!339168 e!424416)))

(declare-fun c!83557 () Bool)

(assert (=> d!100697 (= c!83557 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!339167 () (_ BitVec 64))

(assert (=> d!100697 (= lt!339167 (select (arr!20130 a!3186) index!1321))))

(assert (=> d!100697 (validMask!0 mask!3328)))

(assert (=> d!100697 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20130 a!3186) j!159) a!3186 mask!3328) lt!339168)))

(declare-fun b!761264 () Bool)

(declare-fun e!424415 () SeekEntryResult!7737)

(assert (=> b!761264 (= e!424416 e!424415)))

(declare-fun c!83556 () Bool)

(assert (=> b!761264 (= c!83556 (= lt!339167 (select (arr!20130 a!3186) j!159)))))

(declare-fun b!761265 () Bool)

(declare-fun c!83558 () Bool)

(assert (=> b!761265 (= c!83558 (= lt!339167 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424417 () SeekEntryResult!7737)

(assert (=> b!761265 (= e!424415 e!424417)))

(declare-fun b!761266 () Bool)

(assert (=> b!761266 (= e!424416 Undefined!7737)))

(declare-fun b!761267 () Bool)

(assert (=> b!761267 (= e!424417 (MissingVacant!7737 resIntermediateIndex!5))))

(declare-fun b!761268 () Bool)

(assert (=> b!761268 (= e!424415 (Found!7737 index!1321))))

(declare-fun b!761269 () Bool)

(assert (=> b!761269 (= e!424417 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20130 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!100697 c!83557) b!761266))

(assert (= (and d!100697 (not c!83557)) b!761264))

(assert (= (and b!761264 c!83556) b!761268))

(assert (= (and b!761264 (not c!83556)) b!761265))

(assert (= (and b!761265 c!83558) b!761267))

(assert (= (and b!761265 (not c!83558)) b!761269))

(declare-fun m!708347 () Bool)

(assert (=> d!100697 m!708347))

(declare-fun m!708349 () Bool)

(assert (=> d!100697 m!708349))

(declare-fun m!708351 () Bool)

(assert (=> d!100697 m!708351))

(assert (=> d!100697 m!708027))

(declare-fun m!708353 () Bool)

(assert (=> b!761269 m!708353))

(assert (=> b!761269 m!708353))

(assert (=> b!761269 m!708021))

(declare-fun m!708355 () Bool)

(assert (=> b!761269 m!708355))

(assert (=> b!760828 d!100697))

(declare-fun b!761280 () Bool)

(declare-fun e!424429 () Bool)

(declare-fun contains!4070 (List!14185 (_ BitVec 64)) Bool)

(assert (=> b!761280 (= e!424429 (contains!4070 Nil!14182 (select (arr!20130 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!761281 () Bool)

(declare-fun e!424426 () Bool)

(declare-fun e!424428 () Bool)

(assert (=> b!761281 (= e!424426 e!424428)))

(declare-fun c!83561 () Bool)

(assert (=> b!761281 (= c!83561 (validKeyInArray!0 (select (arr!20130 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34973 () Bool)

(declare-fun call!34976 () Bool)

(assert (=> bm!34973 (= call!34976 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!83561 (Cons!14181 (select (arr!20130 a!3186) #b00000000000000000000000000000000) Nil!14182) Nil!14182)))))

(declare-fun d!100699 () Bool)

(declare-fun res!514928 () Bool)

(declare-fun e!424427 () Bool)

(assert (=> d!100699 (=> res!514928 e!424427)))

(assert (=> d!100699 (= res!514928 (bvsge #b00000000000000000000000000000000 (size!20551 a!3186)))))

(assert (=> d!100699 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14182) e!424427)))

(declare-fun b!761282 () Bool)

(assert (=> b!761282 (= e!424427 e!424426)))

(declare-fun res!514930 () Bool)

(assert (=> b!761282 (=> (not res!514930) (not e!424426))))

(assert (=> b!761282 (= res!514930 (not e!424429))))

(declare-fun res!514929 () Bool)

(assert (=> b!761282 (=> (not res!514929) (not e!424429))))

(assert (=> b!761282 (= res!514929 (validKeyInArray!0 (select (arr!20130 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!761283 () Bool)

(assert (=> b!761283 (= e!424428 call!34976)))

(declare-fun b!761284 () Bool)

(assert (=> b!761284 (= e!424428 call!34976)))

(assert (= (and d!100699 (not res!514928)) b!761282))

(assert (= (and b!761282 res!514929) b!761280))

(assert (= (and b!761282 res!514930) b!761281))

(assert (= (and b!761281 c!83561) b!761283))

(assert (= (and b!761281 (not c!83561)) b!761284))

(assert (= (or b!761283 b!761284) bm!34973))

(assert (=> b!761280 m!708163))

(assert (=> b!761280 m!708163))

(declare-fun m!708357 () Bool)

(assert (=> b!761280 m!708357))

(assert (=> b!761281 m!708163))

(assert (=> b!761281 m!708163))

(assert (=> b!761281 m!708291))

(assert (=> bm!34973 m!708163))

(declare-fun m!708359 () Bool)

(assert (=> bm!34973 m!708359))

(assert (=> b!761282 m!708163))

(assert (=> b!761282 m!708163))

(assert (=> b!761282 m!708291))

(assert (=> b!760838 d!100699))

(declare-fun b!761285 () Bool)

(declare-fun lt!339169 () SeekEntryResult!7737)

(assert (=> b!761285 (and (bvsge (index!33317 lt!339169) #b00000000000000000000000000000000) (bvslt (index!33317 lt!339169) (size!20551 a!3186)))))

(declare-fun e!424430 () Bool)

(assert (=> b!761285 (= e!424430 (= (select (arr!20130 a!3186) (index!33317 lt!339169)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761286 () Bool)

(declare-fun e!424434 () SeekEntryResult!7737)

(assert (=> b!761286 (= e!424434 (Intermediate!7737 true index!1321 x!1131))))

(declare-fun b!761287 () Bool)

(assert (=> b!761287 (and (bvsge (index!33317 lt!339169) #b00000000000000000000000000000000) (bvslt (index!33317 lt!339169) (size!20551 a!3186)))))

(declare-fun res!514932 () Bool)

(assert (=> b!761287 (= res!514932 (= (select (arr!20130 a!3186) (index!33317 lt!339169)) (select (arr!20130 a!3186) j!159)))))

(assert (=> b!761287 (=> res!514932 e!424430)))

(declare-fun e!424432 () Bool)

(assert (=> b!761287 (= e!424432 e!424430)))

(declare-fun d!100705 () Bool)

(declare-fun e!424433 () Bool)

(assert (=> d!100705 e!424433))

(declare-fun c!83564 () Bool)

(assert (=> d!100705 (= c!83564 (and (is-Intermediate!7737 lt!339169) (undefined!8549 lt!339169)))))

(assert (=> d!100705 (= lt!339169 e!424434)))

(declare-fun c!83562 () Bool)

(assert (=> d!100705 (= c!83562 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!339170 () (_ BitVec 64))

(assert (=> d!100705 (= lt!339170 (select (arr!20130 a!3186) index!1321))))

(assert (=> d!100705 (validMask!0 mask!3328)))

(assert (=> d!100705 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20130 a!3186) j!159) a!3186 mask!3328) lt!339169)))

(declare-fun b!761288 () Bool)

(assert (=> b!761288 (= e!424433 (bvsge (x!64244 lt!339169) #b01111111111111111111111111111110))))

(declare-fun b!761289 () Bool)

(declare-fun e!424431 () SeekEntryResult!7737)

(assert (=> b!761289 (= e!424431 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20130 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761290 () Bool)

(assert (=> b!761290 (= e!424431 (Intermediate!7737 false index!1321 x!1131))))

(declare-fun b!761291 () Bool)

(assert (=> b!761291 (= e!424434 e!424431)))

(declare-fun c!83563 () Bool)

(assert (=> b!761291 (= c!83563 (or (= lt!339170 (select (arr!20130 a!3186) j!159)) (= (bvadd lt!339170 lt!339170) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761292 () Bool)

(assert (=> b!761292 (and (bvsge (index!33317 lt!339169) #b00000000000000000000000000000000) (bvslt (index!33317 lt!339169) (size!20551 a!3186)))))

(declare-fun res!514933 () Bool)

(assert (=> b!761292 (= res!514933 (= (select (arr!20130 a!3186) (index!33317 lt!339169)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761292 (=> res!514933 e!424430)))

(declare-fun b!761293 () Bool)

(assert (=> b!761293 (= e!424433 e!424432)))

(declare-fun res!514931 () Bool)

(assert (=> b!761293 (= res!514931 (and (is-Intermediate!7737 lt!339169) (not (undefined!8549 lt!339169)) (bvslt (x!64244 lt!339169) #b01111111111111111111111111111110) (bvsge (x!64244 lt!339169) #b00000000000000000000000000000000) (bvsge (x!64244 lt!339169) x!1131)))))

(assert (=> b!761293 (=> (not res!514931) (not e!424432))))

(assert (= (and d!100705 c!83562) b!761286))

(assert (= (and d!100705 (not c!83562)) b!761291))

(assert (= (and b!761291 c!83563) b!761290))

(assert (= (and b!761291 (not c!83563)) b!761289))

(assert (= (and d!100705 c!83564) b!761288))

(assert (= (and d!100705 (not c!83564)) b!761293))

(assert (= (and b!761293 res!514931) b!761287))

(assert (= (and b!761287 (not res!514932)) b!761292))

(assert (= (and b!761292 (not res!514933)) b!761285))

(assert (=> b!761289 m!708353))

(assert (=> b!761289 m!708353))

(assert (=> b!761289 m!708021))

(declare-fun m!708361 () Bool)

(assert (=> b!761289 m!708361))

(declare-fun m!708363 () Bool)

(assert (=> b!761287 m!708363))

(assert (=> d!100705 m!708351))

(assert (=> d!100705 m!708027))

(assert (=> b!761292 m!708363))

(assert (=> b!761285 m!708363))

(assert (=> b!760840 d!100705))

(declare-fun b!761294 () Bool)

(declare-fun lt!339171 () SeekEntryResult!7737)

(assert (=> b!761294 (and (bvsge (index!33317 lt!339171) #b00000000000000000000000000000000) (bvslt (index!33317 lt!339171) (size!20551 lt!338986)))))

(declare-fun e!424435 () Bool)

(assert (=> b!761294 (= e!424435 (= (select (arr!20130 lt!338986) (index!33317 lt!339171)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761295 () Bool)

(declare-fun e!424439 () SeekEntryResult!7737)

(assert (=> b!761295 (= e!424439 (Intermediate!7737 true index!1321 x!1131))))

(declare-fun b!761296 () Bool)

(assert (=> b!761296 (and (bvsge (index!33317 lt!339171) #b00000000000000000000000000000000) (bvslt (index!33317 lt!339171) (size!20551 lt!338986)))))

(declare-fun res!514935 () Bool)

(assert (=> b!761296 (= res!514935 (= (select (arr!20130 lt!338986) (index!33317 lt!339171)) lt!338989))))

(assert (=> b!761296 (=> res!514935 e!424435)))

(declare-fun e!424437 () Bool)

(assert (=> b!761296 (= e!424437 e!424435)))

(declare-fun d!100707 () Bool)

(declare-fun e!424438 () Bool)

(assert (=> d!100707 e!424438))

(declare-fun c!83567 () Bool)

(assert (=> d!100707 (= c!83567 (and (is-Intermediate!7737 lt!339171) (undefined!8549 lt!339171)))))

(assert (=> d!100707 (= lt!339171 e!424439)))

(declare-fun c!83565 () Bool)

(assert (=> d!100707 (= c!83565 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!339172 () (_ BitVec 64))

(assert (=> d!100707 (= lt!339172 (select (arr!20130 lt!338986) index!1321))))

(assert (=> d!100707 (validMask!0 mask!3328)))

(assert (=> d!100707 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338989 lt!338986 mask!3328) lt!339171)))

(declare-fun b!761297 () Bool)

(assert (=> b!761297 (= e!424438 (bvsge (x!64244 lt!339171) #b01111111111111111111111111111110))))

(declare-fun e!424436 () SeekEntryResult!7737)

(declare-fun b!761298 () Bool)

(assert (=> b!761298 (= e!424436 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!338989 lt!338986 mask!3328))))

(declare-fun b!761299 () Bool)

(assert (=> b!761299 (= e!424436 (Intermediate!7737 false index!1321 x!1131))))

(declare-fun b!761300 () Bool)

(assert (=> b!761300 (= e!424439 e!424436)))

(declare-fun c!83566 () Bool)

(assert (=> b!761300 (= c!83566 (or (= lt!339172 lt!338989) (= (bvadd lt!339172 lt!339172) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761301 () Bool)

(assert (=> b!761301 (and (bvsge (index!33317 lt!339171) #b00000000000000000000000000000000) (bvslt (index!33317 lt!339171) (size!20551 lt!338986)))))

(declare-fun res!514936 () Bool)

(assert (=> b!761301 (= res!514936 (= (select (arr!20130 lt!338986) (index!33317 lt!339171)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761301 (=> res!514936 e!424435)))

(declare-fun b!761302 () Bool)

(assert (=> b!761302 (= e!424438 e!424437)))

(declare-fun res!514934 () Bool)

(assert (=> b!761302 (= res!514934 (and (is-Intermediate!7737 lt!339171) (not (undefined!8549 lt!339171)) (bvslt (x!64244 lt!339171) #b01111111111111111111111111111110) (bvsge (x!64244 lt!339171) #b00000000000000000000000000000000) (bvsge (x!64244 lt!339171) x!1131)))))

(assert (=> b!761302 (=> (not res!514934) (not e!424437))))

(assert (= (and d!100707 c!83565) b!761295))

(assert (= (and d!100707 (not c!83565)) b!761300))

(assert (= (and b!761300 c!83566) b!761299))

(assert (= (and b!761300 (not c!83566)) b!761298))

(assert (= (and d!100707 c!83567) b!761297))

(assert (= (and d!100707 (not c!83567)) b!761302))

(assert (= (and b!761302 res!514934) b!761296))

(assert (= (and b!761296 (not res!514935)) b!761301))

(assert (= (and b!761301 (not res!514936)) b!761294))

(assert (=> b!761298 m!708353))

(assert (=> b!761298 m!708353))

(declare-fun m!708365 () Bool)

(assert (=> b!761298 m!708365))

(declare-fun m!708367 () Bool)

(assert (=> b!761296 m!708367))

(declare-fun m!708369 () Bool)

(assert (=> d!100707 m!708369))

(assert (=> d!100707 m!708027))

(assert (=> b!761301 m!708367))

(assert (=> b!761294 m!708367))

(assert (=> b!760829 d!100707))

(declare-fun b!761303 () Bool)

(declare-fun lt!339173 () SeekEntryResult!7737)

(assert (=> b!761303 (and (bvsge (index!33317 lt!339173) #b00000000000000000000000000000000) (bvslt (index!33317 lt!339173) (size!20551 lt!338986)))))

(declare-fun e!424440 () Bool)

(assert (=> b!761303 (= e!424440 (= (select (arr!20130 lt!338986) (index!33317 lt!339173)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761304 () Bool)

(declare-fun e!424444 () SeekEntryResult!7737)

(assert (=> b!761304 (= e!424444 (Intermediate!7737 true (toIndex!0 lt!338989 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!761305 () Bool)

(assert (=> b!761305 (and (bvsge (index!33317 lt!339173) #b00000000000000000000000000000000) (bvslt (index!33317 lt!339173) (size!20551 lt!338986)))))

(declare-fun res!514938 () Bool)

(assert (=> b!761305 (= res!514938 (= (select (arr!20130 lt!338986) (index!33317 lt!339173)) lt!338989))))

(assert (=> b!761305 (=> res!514938 e!424440)))

(declare-fun e!424442 () Bool)

(assert (=> b!761305 (= e!424442 e!424440)))

(declare-fun d!100709 () Bool)

(declare-fun e!424443 () Bool)

(assert (=> d!100709 e!424443))

(declare-fun c!83570 () Bool)

(assert (=> d!100709 (= c!83570 (and (is-Intermediate!7737 lt!339173) (undefined!8549 lt!339173)))))

(assert (=> d!100709 (= lt!339173 e!424444)))

(declare-fun c!83568 () Bool)

(assert (=> d!100709 (= c!83568 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!339174 () (_ BitVec 64))

(assert (=> d!100709 (= lt!339174 (select (arr!20130 lt!338986) (toIndex!0 lt!338989 mask!3328)))))

(assert (=> d!100709 (validMask!0 mask!3328)))

(assert (=> d!100709 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338989 mask!3328) lt!338989 lt!338986 mask!3328) lt!339173)))

(declare-fun b!761306 () Bool)

(assert (=> b!761306 (= e!424443 (bvsge (x!64244 lt!339173) #b01111111111111111111111111111110))))

(declare-fun e!424441 () SeekEntryResult!7737)

(declare-fun b!761307 () Bool)

(assert (=> b!761307 (= e!424441 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!338989 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!338989 lt!338986 mask!3328))))

(declare-fun b!761308 () Bool)

(assert (=> b!761308 (= e!424441 (Intermediate!7737 false (toIndex!0 lt!338989 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!761309 () Bool)

(assert (=> b!761309 (= e!424444 e!424441)))

(declare-fun c!83569 () Bool)

(assert (=> b!761309 (= c!83569 (or (= lt!339174 lt!338989) (= (bvadd lt!339174 lt!339174) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761310 () Bool)

(assert (=> b!761310 (and (bvsge (index!33317 lt!339173) #b00000000000000000000000000000000) (bvslt (index!33317 lt!339173) (size!20551 lt!338986)))))

(declare-fun res!514939 () Bool)

(assert (=> b!761310 (= res!514939 (= (select (arr!20130 lt!338986) (index!33317 lt!339173)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761310 (=> res!514939 e!424440)))

(declare-fun b!761311 () Bool)

(assert (=> b!761311 (= e!424443 e!424442)))

(declare-fun res!514937 () Bool)

(assert (=> b!761311 (= res!514937 (and (is-Intermediate!7737 lt!339173) (not (undefined!8549 lt!339173)) (bvslt (x!64244 lt!339173) #b01111111111111111111111111111110) (bvsge (x!64244 lt!339173) #b00000000000000000000000000000000) (bvsge (x!64244 lt!339173) #b00000000000000000000000000000000)))))

(assert (=> b!761311 (=> (not res!514937) (not e!424442))))

(assert (= (and d!100709 c!83568) b!761304))

(assert (= (and d!100709 (not c!83568)) b!761309))

(assert (= (and b!761309 c!83569) b!761308))

(assert (= (and b!761309 (not c!83569)) b!761307))

(assert (= (and d!100709 c!83570) b!761306))

(assert (= (and d!100709 (not c!83570)) b!761311))

(assert (= (and b!761311 res!514937) b!761305))

(assert (= (and b!761305 (not res!514938)) b!761310))

(assert (= (and b!761310 (not res!514939)) b!761303))

(assert (=> b!761307 m!708039))

(declare-fun m!708371 () Bool)

(assert (=> b!761307 m!708371))

(assert (=> b!761307 m!708371))

(declare-fun m!708373 () Bool)

(assert (=> b!761307 m!708373))

(declare-fun m!708375 () Bool)

(assert (=> b!761305 m!708375))

(assert (=> d!100709 m!708039))

(declare-fun m!708377 () Bool)

(assert (=> d!100709 m!708377))

(assert (=> d!100709 m!708027))

(assert (=> b!761310 m!708375))

(assert (=> b!761303 m!708375))

(assert (=> b!760829 d!100709))

(declare-fun d!100711 () Bool)

(declare-fun lt!339176 () (_ BitVec 32))

(declare-fun lt!339175 () (_ BitVec 32))

(assert (=> d!100711 (= lt!339176 (bvmul (bvxor lt!339175 (bvlshr lt!339175 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100711 (= lt!339175 ((_ extract 31 0) (bvand (bvxor lt!338989 (bvlshr lt!338989 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100711 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514886 (let ((h!15263 ((_ extract 31 0) (bvand (bvxor lt!338989 (bvlshr lt!338989 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64253 (bvmul (bvxor h!15263 (bvlshr h!15263 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64253 (bvlshr x!64253 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514886 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514886 #b00000000000000000000000000000000))))))

(assert (=> d!100711 (= (toIndex!0 lt!338989 mask!3328) (bvand (bvxor lt!339176 (bvlshr lt!339176 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!760829 d!100711))

(declare-fun b!761312 () Bool)

(declare-fun e!424445 () SeekEntryResult!7737)

(declare-fun lt!339178 () SeekEntryResult!7737)

(assert (=> b!761312 (= e!424445 (seekKeyOrZeroReturnVacant!0 (x!64244 lt!339178) (index!33317 lt!339178) (index!33317 lt!339178) (select (arr!20130 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!100713 () Bool)

(declare-fun lt!339177 () SeekEntryResult!7737)

(assert (=> d!100713 (and (or (is-Undefined!7737 lt!339177) (not (is-Found!7737 lt!339177)) (and (bvsge (index!33316 lt!339177) #b00000000000000000000000000000000) (bvslt (index!33316 lt!339177) (size!20551 a!3186)))) (or (is-Undefined!7737 lt!339177) (is-Found!7737 lt!339177) (not (is-MissingZero!7737 lt!339177)) (and (bvsge (index!33315 lt!339177) #b00000000000000000000000000000000) (bvslt (index!33315 lt!339177) (size!20551 a!3186)))) (or (is-Undefined!7737 lt!339177) (is-Found!7737 lt!339177) (is-MissingZero!7737 lt!339177) (not (is-MissingVacant!7737 lt!339177)) (and (bvsge (index!33318 lt!339177) #b00000000000000000000000000000000) (bvslt (index!33318 lt!339177) (size!20551 a!3186)))) (or (is-Undefined!7737 lt!339177) (ite (is-Found!7737 lt!339177) (= (select (arr!20130 a!3186) (index!33316 lt!339177)) (select (arr!20130 a!3186) j!159)) (ite (is-MissingZero!7737 lt!339177) (= (select (arr!20130 a!3186) (index!33315 lt!339177)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7737 lt!339177) (= (select (arr!20130 a!3186) (index!33318 lt!339177)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!424446 () SeekEntryResult!7737)

(assert (=> d!100713 (= lt!339177 e!424446)))

(declare-fun c!83571 () Bool)

(assert (=> d!100713 (= c!83571 (and (is-Intermediate!7737 lt!339178) (undefined!8549 lt!339178)))))

(assert (=> d!100713 (= lt!339178 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20130 a!3186) j!159) mask!3328) (select (arr!20130 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!100713 (validMask!0 mask!3328)))

(assert (=> d!100713 (= (seekEntryOrOpen!0 (select (arr!20130 a!3186) j!159) a!3186 mask!3328) lt!339177)))

(declare-fun b!761313 () Bool)

(declare-fun c!83572 () Bool)

(declare-fun lt!339179 () (_ BitVec 64))

(assert (=> b!761313 (= c!83572 (= lt!339179 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424447 () SeekEntryResult!7737)

(assert (=> b!761313 (= e!424447 e!424445)))

(declare-fun b!761314 () Bool)

(assert (=> b!761314 (= e!424447 (Found!7737 (index!33317 lt!339178)))))

(declare-fun b!761315 () Bool)

(assert (=> b!761315 (= e!424446 e!424447)))

(assert (=> b!761315 (= lt!339179 (select (arr!20130 a!3186) (index!33317 lt!339178)))))

(declare-fun c!83573 () Bool)

(assert (=> b!761315 (= c!83573 (= lt!339179 (select (arr!20130 a!3186) j!159)))))

(declare-fun b!761316 () Bool)

(assert (=> b!761316 (= e!424445 (MissingZero!7737 (index!33317 lt!339178)))))

(declare-fun b!761317 () Bool)

(assert (=> b!761317 (= e!424446 Undefined!7737)))

(assert (= (and d!100713 c!83571) b!761317))

(assert (= (and d!100713 (not c!83571)) b!761315))

(assert (= (and b!761315 c!83573) b!761314))

(assert (= (and b!761315 (not c!83573)) b!761313))

(assert (= (and b!761313 c!83572) b!761316))

(assert (= (and b!761313 (not c!83572)) b!761312))

(assert (=> b!761312 m!708021))

(declare-fun m!708379 () Bool)

(assert (=> b!761312 m!708379))

(assert (=> d!100713 m!708027))

(assert (=> d!100713 m!708049))

(assert (=> d!100713 m!708021))

(assert (=> d!100713 m!708051))

(declare-fun m!708381 () Bool)

(assert (=> d!100713 m!708381))

(assert (=> d!100713 m!708021))

(assert (=> d!100713 m!708049))

(declare-fun m!708383 () Bool)

(assert (=> d!100713 m!708383))

(declare-fun m!708385 () Bool)

(assert (=> d!100713 m!708385))

(declare-fun m!708387 () Bool)

(assert (=> b!761315 m!708387))

(assert (=> b!760839 d!100713))

(assert (=> b!760841 d!100697))

(push 1)

(assert (not b!761298))

(assert (not b!761034))

(assert (not b!761282))

(assert (not b!761289))

(assert (not b!761280))

(assert (not b!760985))

(assert (not bm!34966))

(assert (not d!100705))

(assert (not d!100713))

(assert (not b!761246))

(assert (not b!761269))

(assert (not b!761123))

(assert (not d!100697))

(assert (not b!761245))

(assert (not d!100679))

(assert (not d!100709))

(assert (not d!100645))

(assert (not b!761200))

(assert (not bm!34973))

(assert (not d!100707))

(assert (not b!761307))

(assert (not b!761312))

(assert (not b!761281))

(assert (not b!761199))

(assert (not b!761238))

(assert (not d!100689))

(assert (not d!100633))

(assert (not bm!34967))

(check-sat)

(pop 1)

(push 1)

(check-sat)

