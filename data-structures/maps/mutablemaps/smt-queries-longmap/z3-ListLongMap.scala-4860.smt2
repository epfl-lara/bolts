; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67020 () Bool)

(assert start!67020)

(declare-fun b!772949 () Bool)

(declare-fun e!430320 () Bool)

(declare-fun e!430312 () Bool)

(assert (=> b!772949 (= e!430320 e!430312)))

(declare-fun res!522835 () Bool)

(assert (=> b!772949 (=> (not res!522835) (not e!430312))))

(declare-datatypes ((array!42399 0))(
  ( (array!42400 (arr!20293 (Array (_ BitVec 32) (_ BitVec 64))) (size!20714 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42399)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7900 0))(
  ( (MissingZero!7900 (index!33967 (_ BitVec 32))) (Found!7900 (index!33968 (_ BitVec 32))) (Intermediate!7900 (undefined!8712 Bool) (index!33969 (_ BitVec 32)) (x!64936 (_ BitVec 32))) (Undefined!7900) (MissingVacant!7900 (index!33970 (_ BitVec 32))) )
))
(declare-fun lt!344180 () SeekEntryResult!7900)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42399 (_ BitVec 32)) SeekEntryResult!7900)

(assert (=> b!772949 (= res!522835 (= (seekEntryOrOpen!0 (select (arr!20293 a!3186) j!159) a!3186 mask!3328) lt!344180))))

(assert (=> b!772949 (= lt!344180 (Found!7900 j!159))))

(declare-fun b!772951 () Bool)

(declare-fun res!522831 () Bool)

(declare-fun e!430319 () Bool)

(assert (=> b!772951 (=> (not res!522831) (not e!430319))))

(declare-fun e!430316 () Bool)

(assert (=> b!772951 (= res!522831 e!430316)))

(declare-fun c!85460 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!772951 (= c!85460 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!772952 () Bool)

(declare-fun e!430317 () Bool)

(assert (=> b!772952 (= e!430317 e!430319)))

(declare-fun res!522840 () Bool)

(assert (=> b!772952 (=> (not res!522840) (not e!430319))))

(declare-fun lt!344188 () SeekEntryResult!7900)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42399 (_ BitVec 32)) SeekEntryResult!7900)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772952 (= res!522840 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20293 a!3186) j!159) mask!3328) (select (arr!20293 a!3186) j!159) a!3186 mask!3328) lt!344188))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!772952 (= lt!344188 (Intermediate!7900 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!772953 () Bool)

(declare-fun res!522828 () Bool)

(declare-fun e!430321 () Bool)

(assert (=> b!772953 (=> (not res!522828) (not e!430321))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42399 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!772953 (= res!522828 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!772954 () Bool)

(declare-fun res!522836 () Bool)

(assert (=> b!772954 (=> (not res!522836) (not e!430317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42399 (_ BitVec 32)) Bool)

(assert (=> b!772954 (= res!522836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!772955 () Bool)

(declare-datatypes ((Unit!26636 0))(
  ( (Unit!26637) )
))
(declare-fun e!430313 () Unit!26636)

(declare-fun Unit!26638 () Unit!26636)

(assert (=> b!772955 (= e!430313 Unit!26638)))

(declare-fun lt!344184 () SeekEntryResult!7900)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42399 (_ BitVec 32)) SeekEntryResult!7900)

(assert (=> b!772955 (= lt!344184 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20293 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!344178 () (_ BitVec 32))

(assert (=> b!772955 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344178 resIntermediateIndex!5 (select (arr!20293 a!3186) j!159) a!3186 mask!3328) (Found!7900 j!159))))

(declare-fun b!772956 () Bool)

(declare-fun res!522827 () Bool)

(assert (=> b!772956 (=> (not res!522827) (not e!430321))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!772956 (= res!522827 (validKeyInArray!0 (select (arr!20293 a!3186) j!159)))))

(declare-fun b!772957 () Bool)

(assert (=> b!772957 (= e!430312 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20293 a!3186) j!159) a!3186 mask!3328) lt!344180))))

(declare-fun b!772958 () Bool)

(declare-fun res!522829 () Bool)

(assert (=> b!772958 (=> (not res!522829) (not e!430317))))

(assert (=> b!772958 (= res!522829 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20714 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20714 a!3186))))))

(declare-fun b!772959 () Bool)

(declare-fun e!430315 () Bool)

(declare-fun e!430314 () Bool)

(assert (=> b!772959 (= e!430315 (not e!430314))))

(declare-fun res!522837 () Bool)

(assert (=> b!772959 (=> res!522837 e!430314)))

(declare-fun lt!344179 () SeekEntryResult!7900)

(get-info :version)

(assert (=> b!772959 (= res!522837 (or (not ((_ is Intermediate!7900) lt!344179)) (bvsge x!1131 (x!64936 lt!344179))))))

(assert (=> b!772959 e!430320))

(declare-fun res!522832 () Bool)

(assert (=> b!772959 (=> (not res!522832) (not e!430320))))

(assert (=> b!772959 (= res!522832 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!344182 () Unit!26636)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42399 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26636)

(assert (=> b!772959 (= lt!344182 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!772960 () Bool)

(declare-fun Unit!26639 () Unit!26636)

(assert (=> b!772960 (= e!430313 Unit!26639)))

(assert (=> b!772960 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344178 (select (arr!20293 a!3186) j!159) a!3186 mask!3328) lt!344188)))

(declare-fun b!772961 () Bool)

(declare-fun res!522833 () Bool)

(assert (=> b!772961 (=> (not res!522833) (not e!430321))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!772961 (= res!522833 (and (= (size!20714 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20714 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20714 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!522839 () Bool)

(assert (=> start!67020 (=> (not res!522839) (not e!430321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67020 (= res!522839 (validMask!0 mask!3328))))

(assert (=> start!67020 e!430321))

(assert (=> start!67020 true))

(declare-fun array_inv!16067 (array!42399) Bool)

(assert (=> start!67020 (array_inv!16067 a!3186)))

(declare-fun b!772950 () Bool)

(assert (=> b!772950 (= e!430316 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20293 a!3186) j!159) a!3186 mask!3328) lt!344188))))

(declare-fun b!772962 () Bool)

(assert (=> b!772962 (= e!430319 e!430315)))

(declare-fun res!522826 () Bool)

(assert (=> b!772962 (=> (not res!522826) (not e!430315))))

(declare-fun lt!344186 () SeekEntryResult!7900)

(assert (=> b!772962 (= res!522826 (= lt!344186 lt!344179))))

(declare-fun lt!344181 () array!42399)

(declare-fun lt!344185 () (_ BitVec 64))

(assert (=> b!772962 (= lt!344179 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344185 lt!344181 mask!3328))))

(assert (=> b!772962 (= lt!344186 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344185 mask!3328) lt!344185 lt!344181 mask!3328))))

(assert (=> b!772962 (= lt!344185 (select (store (arr!20293 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!772962 (= lt!344181 (array!42400 (store (arr!20293 a!3186) i!1173 k0!2102) (size!20714 a!3186)))))

(declare-fun b!772963 () Bool)

(declare-fun res!522841 () Bool)

(assert (=> b!772963 (=> (not res!522841) (not e!430317))))

(declare-datatypes ((List!14348 0))(
  ( (Nil!14345) (Cons!14344 (h!15449 (_ BitVec 64)) (t!20671 List!14348)) )
))
(declare-fun arrayNoDuplicates!0 (array!42399 (_ BitVec 32) List!14348) Bool)

(assert (=> b!772963 (= res!522841 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14345))))

(declare-fun b!772964 () Bool)

(declare-fun res!522838 () Bool)

(assert (=> b!772964 (=> (not res!522838) (not e!430321))))

(assert (=> b!772964 (= res!522838 (validKeyInArray!0 k0!2102))))

(declare-fun b!772965 () Bool)

(assert (=> b!772965 (= e!430314 true)))

(declare-fun lt!344183 () Unit!26636)

(assert (=> b!772965 (= lt!344183 e!430313)))

(declare-fun c!85461 () Bool)

(assert (=> b!772965 (= c!85461 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772965 (= lt!344178 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!772966 () Bool)

(assert (=> b!772966 (= e!430316 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20293 a!3186) j!159) a!3186 mask!3328) (Found!7900 j!159)))))

(declare-fun b!772967 () Bool)

(declare-fun res!522830 () Bool)

(assert (=> b!772967 (=> (not res!522830) (not e!430319))))

(assert (=> b!772967 (= res!522830 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20293 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772968 () Bool)

(assert (=> b!772968 (= e!430321 e!430317)))

(declare-fun res!522834 () Bool)

(assert (=> b!772968 (=> (not res!522834) (not e!430317))))

(declare-fun lt!344187 () SeekEntryResult!7900)

(assert (=> b!772968 (= res!522834 (or (= lt!344187 (MissingZero!7900 i!1173)) (= lt!344187 (MissingVacant!7900 i!1173))))))

(assert (=> b!772968 (= lt!344187 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!67020 res!522839) b!772961))

(assert (= (and b!772961 res!522833) b!772956))

(assert (= (and b!772956 res!522827) b!772964))

(assert (= (and b!772964 res!522838) b!772953))

(assert (= (and b!772953 res!522828) b!772968))

(assert (= (and b!772968 res!522834) b!772954))

(assert (= (and b!772954 res!522836) b!772963))

(assert (= (and b!772963 res!522841) b!772958))

(assert (= (and b!772958 res!522829) b!772952))

(assert (= (and b!772952 res!522840) b!772967))

(assert (= (and b!772967 res!522830) b!772951))

(assert (= (and b!772951 c!85460) b!772950))

(assert (= (and b!772951 (not c!85460)) b!772966))

(assert (= (and b!772951 res!522831) b!772962))

(assert (= (and b!772962 res!522826) b!772959))

(assert (= (and b!772959 res!522832) b!772949))

(assert (= (and b!772949 res!522835) b!772957))

(assert (= (and b!772959 (not res!522837)) b!772965))

(assert (= (and b!772965 c!85461) b!772960))

(assert (= (and b!772965 (not c!85461)) b!772955))

(declare-fun m!717803 () Bool)

(assert (=> b!772967 m!717803))

(declare-fun m!717805 () Bool)

(assert (=> b!772953 m!717805))

(declare-fun m!717807 () Bool)

(assert (=> b!772960 m!717807))

(assert (=> b!772960 m!717807))

(declare-fun m!717809 () Bool)

(assert (=> b!772960 m!717809))

(declare-fun m!717811 () Bool)

(assert (=> b!772965 m!717811))

(declare-fun m!717813 () Bool)

(assert (=> start!67020 m!717813))

(declare-fun m!717815 () Bool)

(assert (=> start!67020 m!717815))

(declare-fun m!717817 () Bool)

(assert (=> b!772968 m!717817))

(assert (=> b!772966 m!717807))

(assert (=> b!772966 m!717807))

(declare-fun m!717819 () Bool)

(assert (=> b!772966 m!717819))

(assert (=> b!772952 m!717807))

(assert (=> b!772952 m!717807))

(declare-fun m!717821 () Bool)

(assert (=> b!772952 m!717821))

(assert (=> b!772952 m!717821))

(assert (=> b!772952 m!717807))

(declare-fun m!717823 () Bool)

(assert (=> b!772952 m!717823))

(assert (=> b!772957 m!717807))

(assert (=> b!772957 m!717807))

(declare-fun m!717825 () Bool)

(assert (=> b!772957 m!717825))

(assert (=> b!772956 m!717807))

(assert (=> b!772956 m!717807))

(declare-fun m!717827 () Bool)

(assert (=> b!772956 m!717827))

(assert (=> b!772950 m!717807))

(assert (=> b!772950 m!717807))

(declare-fun m!717829 () Bool)

(assert (=> b!772950 m!717829))

(assert (=> b!772955 m!717807))

(assert (=> b!772955 m!717807))

(assert (=> b!772955 m!717819))

(assert (=> b!772955 m!717807))

(declare-fun m!717831 () Bool)

(assert (=> b!772955 m!717831))

(declare-fun m!717833 () Bool)

(assert (=> b!772962 m!717833))

(assert (=> b!772962 m!717833))

(declare-fun m!717835 () Bool)

(assert (=> b!772962 m!717835))

(declare-fun m!717837 () Bool)

(assert (=> b!772962 m!717837))

(declare-fun m!717839 () Bool)

(assert (=> b!772962 m!717839))

(declare-fun m!717841 () Bool)

(assert (=> b!772962 m!717841))

(declare-fun m!717843 () Bool)

(assert (=> b!772959 m!717843))

(declare-fun m!717845 () Bool)

(assert (=> b!772959 m!717845))

(assert (=> b!772949 m!717807))

(assert (=> b!772949 m!717807))

(declare-fun m!717847 () Bool)

(assert (=> b!772949 m!717847))

(declare-fun m!717849 () Bool)

(assert (=> b!772954 m!717849))

(declare-fun m!717851 () Bool)

(assert (=> b!772964 m!717851))

(declare-fun m!717853 () Bool)

(assert (=> b!772963 m!717853))

(check-sat (not b!772956) (not b!772963) (not b!772955) (not b!772950) (not b!772959) (not b!772952) (not b!772953) (not b!772954) (not b!772965) (not start!67020) (not b!772968) (not b!772949) (not b!772964) (not b!772966) (not b!772960) (not b!772962) (not b!772957))
(check-sat)
