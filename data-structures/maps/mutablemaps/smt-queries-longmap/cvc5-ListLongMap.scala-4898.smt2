; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67582 () Bool)

(assert start!67582)

(declare-fun b!781969 () Bool)

(declare-fun res!529204 () Bool)

(declare-fun e!434879 () Bool)

(assert (=> b!781969 (=> (not res!529204) (not e!434879))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42640 0))(
  ( (array!42641 (arr!20406 (Array (_ BitVec 32) (_ BitVec 64))) (size!20827 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42640)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!781969 (= res!529204 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20406 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!781970 () Bool)

(declare-fun e!434875 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8013 0))(
  ( (MissingZero!8013 (index!34419 (_ BitVec 32))) (Found!8013 (index!34420 (_ BitVec 32))) (Intermediate!8013 (undefined!8825 Bool) (index!34421 (_ BitVec 32)) (x!65401 (_ BitVec 32))) (Undefined!8013) (MissingVacant!8013 (index!34422 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42640 (_ BitVec 32)) SeekEntryResult!8013)

(assert (=> b!781970 (= e!434875 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20406 a!3186) j!159) a!3186 mask!3328) (Found!8013 j!159)))))

(declare-fun b!781972 () Bool)

(declare-fun res!529209 () Bool)

(declare-fun e!434878 () Bool)

(assert (=> b!781972 (=> (not res!529209) (not e!434878))))

(assert (=> b!781972 (= res!529209 (and (= (size!20827 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20827 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20827 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!781973 () Bool)

(declare-fun res!529211 () Bool)

(declare-fun e!434876 () Bool)

(assert (=> b!781973 (=> (not res!529211) (not e!434876))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!781973 (= res!529211 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20827 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20827 a!3186))))))

(declare-fun b!781974 () Bool)

(declare-fun res!529205 () Bool)

(assert (=> b!781974 (=> (not res!529205) (not e!434878))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!781974 (= res!529205 (validKeyInArray!0 (select (arr!20406 a!3186) j!159)))))

(declare-fun b!781975 () Bool)

(declare-fun res!529212 () Bool)

(assert (=> b!781975 (=> (not res!529212) (not e!434878))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!781975 (= res!529212 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!781976 () Bool)

(declare-fun res!529197 () Bool)

(assert (=> b!781976 (=> (not res!529197) (not e!434876))))

(declare-datatypes ((List!14461 0))(
  ( (Nil!14458) (Cons!14457 (h!15577 (_ BitVec 64)) (t!20784 List!14461)) )
))
(declare-fun arrayNoDuplicates!0 (array!42640 (_ BitVec 32) List!14461) Bool)

(assert (=> b!781976 (= res!529197 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14458))))

(declare-fun b!781977 () Bool)

(declare-fun e!434877 () Bool)

(declare-fun e!434881 () Bool)

(assert (=> b!781977 (= e!434877 (not e!434881))))

(declare-fun res!529210 () Bool)

(assert (=> b!781977 (=> res!529210 e!434881)))

(declare-fun lt!348508 () SeekEntryResult!8013)

(assert (=> b!781977 (= res!529210 (or (not (is-Intermediate!8013 lt!348508)) (bvslt x!1131 (x!65401 lt!348508)) (not (= x!1131 (x!65401 lt!348508))) (not (= index!1321 (index!34421 lt!348508)))))))

(declare-fun e!434873 () Bool)

(assert (=> b!781977 e!434873))

(declare-fun res!529198 () Bool)

(assert (=> b!781977 (=> (not res!529198) (not e!434873))))

(declare-fun lt!348510 () SeekEntryResult!8013)

(declare-fun lt!348513 () SeekEntryResult!8013)

(assert (=> b!781977 (= res!529198 (= lt!348510 lt!348513))))

(assert (=> b!781977 (= lt!348513 (Found!8013 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42640 (_ BitVec 32)) SeekEntryResult!8013)

(assert (=> b!781977 (= lt!348510 (seekEntryOrOpen!0 (select (arr!20406 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42640 (_ BitVec 32)) Bool)

(assert (=> b!781977 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26962 0))(
  ( (Unit!26963) )
))
(declare-fun lt!348514 () Unit!26962)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42640 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26962)

(assert (=> b!781977 (= lt!348514 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!781978 () Bool)

(assert (=> b!781978 (= e!434879 e!434877)))

(declare-fun res!529213 () Bool)

(assert (=> b!781978 (=> (not res!529213) (not e!434877))))

(declare-fun lt!348506 () SeekEntryResult!8013)

(assert (=> b!781978 (= res!529213 (= lt!348506 lt!348508))))

(declare-fun lt!348509 () array!42640)

(declare-fun lt!348505 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42640 (_ BitVec 32)) SeekEntryResult!8013)

(assert (=> b!781978 (= lt!348508 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348505 lt!348509 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!781978 (= lt!348506 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348505 mask!3328) lt!348505 lt!348509 mask!3328))))

(assert (=> b!781978 (= lt!348505 (select (store (arr!20406 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!781978 (= lt!348509 (array!42641 (store (arr!20406 a!3186) i!1173 k!2102) (size!20827 a!3186)))))

(declare-fun b!781979 () Bool)

(assert (=> b!781979 (= e!434881 true)))

(assert (=> b!781979 (= (select (store (arr!20406 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348512 () Unit!26962)

(declare-fun e!434874 () Unit!26962)

(assert (=> b!781979 (= lt!348512 e!434874)))

(declare-fun c!86793 () Bool)

(assert (=> b!781979 (= c!86793 (= (select (store (arr!20406 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781980 () Bool)

(declare-fun res!529207 () Bool)

(assert (=> b!781980 (=> res!529207 e!434881)))

(assert (=> b!781980 (= res!529207 (= (select (store (arr!20406 a!3186) i!1173 k!2102) index!1321) lt!348505))))

(declare-fun b!781981 () Bool)

(declare-fun res!529208 () Bool)

(assert (=> b!781981 (=> (not res!529208) (not e!434879))))

(assert (=> b!781981 (= res!529208 e!434875)))

(declare-fun c!86792 () Bool)

(assert (=> b!781981 (= c!86792 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!781982 () Bool)

(declare-fun res!529206 () Bool)

(assert (=> b!781982 (=> res!529206 e!434881)))

(assert (=> b!781982 (= res!529206 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20406 a!3186) j!159) a!3186 mask!3328) lt!348513)))))

(declare-fun b!781983 () Bool)

(declare-fun Unit!26964 () Unit!26962)

(assert (=> b!781983 (= e!434874 Unit!26964)))

(declare-fun b!781984 () Bool)

(declare-fun lt!348511 () SeekEntryResult!8013)

(assert (=> b!781984 (= e!434875 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20406 a!3186) j!159) a!3186 mask!3328) lt!348511))))

(declare-fun b!781985 () Bool)

(declare-fun res!529200 () Bool)

(assert (=> b!781985 (=> (not res!529200) (not e!434878))))

(assert (=> b!781985 (= res!529200 (validKeyInArray!0 k!2102))))

(declare-fun b!781971 () Bool)

(assert (=> b!781971 (= e!434878 e!434876)))

(declare-fun res!529202 () Bool)

(assert (=> b!781971 (=> (not res!529202) (not e!434876))))

(declare-fun lt!348507 () SeekEntryResult!8013)

(assert (=> b!781971 (= res!529202 (or (= lt!348507 (MissingZero!8013 i!1173)) (= lt!348507 (MissingVacant!8013 i!1173))))))

(assert (=> b!781971 (= lt!348507 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!529199 () Bool)

(assert (=> start!67582 (=> (not res!529199) (not e!434878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67582 (= res!529199 (validMask!0 mask!3328))))

(assert (=> start!67582 e!434878))

(assert (=> start!67582 true))

(declare-fun array_inv!16180 (array!42640) Bool)

(assert (=> start!67582 (array_inv!16180 a!3186)))

(declare-fun b!781986 () Bool)

(declare-fun Unit!26965 () Unit!26962)

(assert (=> b!781986 (= e!434874 Unit!26965)))

(assert (=> b!781986 false))

(declare-fun b!781987 () Bool)

(assert (=> b!781987 (= e!434876 e!434879)))

(declare-fun res!529201 () Bool)

(assert (=> b!781987 (=> (not res!529201) (not e!434879))))

(assert (=> b!781987 (= res!529201 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20406 a!3186) j!159) mask!3328) (select (arr!20406 a!3186) j!159) a!3186 mask!3328) lt!348511))))

(assert (=> b!781987 (= lt!348511 (Intermediate!8013 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!781988 () Bool)

(assert (=> b!781988 (= e!434873 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20406 a!3186) j!159) a!3186 mask!3328) lt!348513))))

(declare-fun b!781989 () Bool)

(declare-fun res!529203 () Bool)

(assert (=> b!781989 (=> (not res!529203) (not e!434876))))

(assert (=> b!781989 (= res!529203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!67582 res!529199) b!781972))

(assert (= (and b!781972 res!529209) b!781974))

(assert (= (and b!781974 res!529205) b!781985))

(assert (= (and b!781985 res!529200) b!781975))

(assert (= (and b!781975 res!529212) b!781971))

(assert (= (and b!781971 res!529202) b!781989))

(assert (= (and b!781989 res!529203) b!781976))

(assert (= (and b!781976 res!529197) b!781973))

(assert (= (and b!781973 res!529211) b!781987))

(assert (= (and b!781987 res!529201) b!781969))

(assert (= (and b!781969 res!529204) b!781981))

(assert (= (and b!781981 c!86792) b!781984))

(assert (= (and b!781981 (not c!86792)) b!781970))

(assert (= (and b!781981 res!529208) b!781978))

(assert (= (and b!781978 res!529213) b!781977))

(assert (= (and b!781977 res!529198) b!781988))

(assert (= (and b!781977 (not res!529210)) b!781982))

(assert (= (and b!781982 (not res!529206)) b!781980))

(assert (= (and b!781980 (not res!529207)) b!781979))

(assert (= (and b!781979 c!86793) b!781986))

(assert (= (and b!781979 (not c!86793)) b!781983))

(declare-fun m!724915 () Bool)

(assert (=> b!781974 m!724915))

(assert (=> b!781974 m!724915))

(declare-fun m!724917 () Bool)

(assert (=> b!781974 m!724917))

(declare-fun m!724919 () Bool)

(assert (=> b!781976 m!724919))

(declare-fun m!724921 () Bool)

(assert (=> b!781980 m!724921))

(declare-fun m!724923 () Bool)

(assert (=> b!781980 m!724923))

(declare-fun m!724925 () Bool)

(assert (=> b!781978 m!724925))

(declare-fun m!724927 () Bool)

(assert (=> b!781978 m!724927))

(assert (=> b!781978 m!724927))

(declare-fun m!724929 () Bool)

(assert (=> b!781978 m!724929))

(assert (=> b!781978 m!724921))

(declare-fun m!724931 () Bool)

(assert (=> b!781978 m!724931))

(assert (=> b!781979 m!724921))

(assert (=> b!781979 m!724923))

(declare-fun m!724933 () Bool)

(assert (=> b!781971 m!724933))

(declare-fun m!724935 () Bool)

(assert (=> start!67582 m!724935))

(declare-fun m!724937 () Bool)

(assert (=> start!67582 m!724937))

(assert (=> b!781988 m!724915))

(assert (=> b!781988 m!724915))

(declare-fun m!724939 () Bool)

(assert (=> b!781988 m!724939))

(declare-fun m!724941 () Bool)

(assert (=> b!781975 m!724941))

(assert (=> b!781987 m!724915))

(assert (=> b!781987 m!724915))

(declare-fun m!724943 () Bool)

(assert (=> b!781987 m!724943))

(assert (=> b!781987 m!724943))

(assert (=> b!781987 m!724915))

(declare-fun m!724945 () Bool)

(assert (=> b!781987 m!724945))

(declare-fun m!724947 () Bool)

(assert (=> b!781969 m!724947))

(assert (=> b!781970 m!724915))

(assert (=> b!781970 m!724915))

(declare-fun m!724949 () Bool)

(assert (=> b!781970 m!724949))

(assert (=> b!781977 m!724915))

(assert (=> b!781977 m!724915))

(declare-fun m!724951 () Bool)

(assert (=> b!781977 m!724951))

(declare-fun m!724953 () Bool)

(assert (=> b!781977 m!724953))

(declare-fun m!724955 () Bool)

(assert (=> b!781977 m!724955))

(declare-fun m!724957 () Bool)

(assert (=> b!781989 m!724957))

(declare-fun m!724959 () Bool)

(assert (=> b!781985 m!724959))

(assert (=> b!781982 m!724915))

(assert (=> b!781982 m!724915))

(assert (=> b!781982 m!724949))

(assert (=> b!781984 m!724915))

(assert (=> b!781984 m!724915))

(declare-fun m!724961 () Bool)

(assert (=> b!781984 m!724961))

(push 1)

