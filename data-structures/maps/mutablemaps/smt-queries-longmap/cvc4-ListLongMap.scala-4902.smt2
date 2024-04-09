; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67676 () Bool)

(assert start!67676)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42671 0))(
  ( (array!42672 (arr!20420 (Array (_ BitVec 32) (_ BitVec 64))) (size!20841 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42671)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!783321 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!435573 () Bool)

(declare-datatypes ((SeekEntryResult!8027 0))(
  ( (MissingZero!8027 (index!34475 (_ BitVec 32))) (Found!8027 (index!34476 (_ BitVec 32))) (Intermediate!8027 (undefined!8839 Bool) (index!34477 (_ BitVec 32)) (x!65456 (_ BitVec 32))) (Undefined!8027) (MissingVacant!8027 (index!34478 (_ BitVec 32))) )
))
(declare-fun lt!349131 () SeekEntryResult!8027)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42671 (_ BitVec 32)) SeekEntryResult!8027)

(assert (=> b!783321 (= e!435573 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20420 a!3186) j!159) a!3186 mask!3328) lt!349131))))

(declare-fun b!783322 () Bool)

(declare-datatypes ((Unit!27018 0))(
  ( (Unit!27019) )
))
(declare-fun e!435572 () Unit!27018)

(declare-fun Unit!27020 () Unit!27018)

(assert (=> b!783322 (= e!435572 Unit!27020)))

(declare-fun lt!349139 () SeekEntryResult!8027)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!435566 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!783323 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42671 (_ BitVec 32)) SeekEntryResult!8027)

(assert (=> b!783323 (= e!435566 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20420 a!3186) j!159) a!3186 mask!3328) lt!349139))))

(declare-fun b!783324 () Bool)

(declare-fun res!530069 () Bool)

(declare-fun e!435568 () Bool)

(assert (=> b!783324 (=> (not res!530069) (not e!435568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42671 (_ BitVec 32)) Bool)

(assert (=> b!783324 (= res!530069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!783325 () Bool)

(declare-fun res!530070 () Bool)

(assert (=> b!783325 (=> (not res!530070) (not e!435568))))

(assert (=> b!783325 (= res!530070 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20841 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20841 a!3186))))))

(declare-fun b!783326 () Bool)

(declare-fun e!435571 () Bool)

(assert (=> b!783326 (= e!435568 e!435571)))

(declare-fun res!530071 () Bool)

(assert (=> b!783326 (=> (not res!530071) (not e!435571))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783326 (= res!530071 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20420 a!3186) j!159) mask!3328) (select (arr!20420 a!3186) j!159) a!3186 mask!3328) lt!349139))))

(assert (=> b!783326 (= lt!349139 (Intermediate!8027 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!783327 () Bool)

(declare-fun res!530058 () Bool)

(assert (=> b!783327 (=> (not res!530058) (not e!435571))))

(assert (=> b!783327 (= res!530058 e!435566)))

(declare-fun c!87042 () Bool)

(assert (=> b!783327 (= c!87042 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!783328 () Bool)

(declare-fun res!530059 () Bool)

(declare-fun e!435569 () Bool)

(assert (=> b!783328 (=> (not res!530059) (not e!435569))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!783328 (= res!530059 (and (= (size!20841 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20841 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20841 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!783329 () Bool)

(declare-fun res!530067 () Bool)

(assert (=> b!783329 (=> (not res!530067) (not e!435569))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42671 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783329 (= res!530067 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!783330 () Bool)

(declare-fun e!435574 () Bool)

(declare-fun e!435570 () Bool)

(assert (=> b!783330 (= e!435574 e!435570)))

(declare-fun res!530063 () Bool)

(assert (=> b!783330 (=> res!530063 e!435570)))

(declare-fun lt!349135 () (_ BitVec 64))

(declare-fun lt!349137 () (_ BitVec 64))

(assert (=> b!783330 (= res!530063 (= lt!349135 lt!349137))))

(assert (=> b!783330 (= lt!349135 (select (store (arr!20420 a!3186) i!1173 k!2102) index!1321))))

(declare-fun res!530056 () Bool)

(assert (=> start!67676 (=> (not res!530056) (not e!435569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67676 (= res!530056 (validMask!0 mask!3328))))

(assert (=> start!67676 e!435569))

(assert (=> start!67676 true))

(declare-fun array_inv!16194 (array!42671) Bool)

(assert (=> start!67676 (array_inv!16194 a!3186)))

(declare-fun b!783331 () Bool)

(declare-fun Unit!27021 () Unit!27018)

(assert (=> b!783331 (= e!435572 Unit!27021)))

(assert (=> b!783331 false))

(declare-fun b!783332 () Bool)

(assert (=> b!783332 (= e!435569 e!435568)))

(declare-fun res!530061 () Bool)

(assert (=> b!783332 (=> (not res!530061) (not e!435568))))

(declare-fun lt!349136 () SeekEntryResult!8027)

(assert (=> b!783332 (= res!530061 (or (= lt!349136 (MissingZero!8027 i!1173)) (= lt!349136 (MissingVacant!8027 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42671 (_ BitVec 32)) SeekEntryResult!8027)

(assert (=> b!783332 (= lt!349136 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!783333 () Bool)

(declare-fun res!530054 () Bool)

(assert (=> b!783333 (=> (not res!530054) (not e!435569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!783333 (= res!530054 (validKeyInArray!0 k!2102))))

(declare-fun b!783334 () Bool)

(declare-fun res!530057 () Bool)

(assert (=> b!783334 (=> (not res!530057) (not e!435568))))

(declare-datatypes ((List!14475 0))(
  ( (Nil!14472) (Cons!14471 (h!15594 (_ BitVec 64)) (t!20798 List!14475)) )
))
(declare-fun arrayNoDuplicates!0 (array!42671 (_ BitVec 32) List!14475) Bool)

(assert (=> b!783334 (= res!530057 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14472))))

(declare-fun b!783335 () Bool)

(declare-fun e!435567 () Bool)

(assert (=> b!783335 (= e!435571 e!435567)))

(declare-fun res!530066 () Bool)

(assert (=> b!783335 (=> (not res!530066) (not e!435567))))

(declare-fun lt!349134 () SeekEntryResult!8027)

(declare-fun lt!349140 () SeekEntryResult!8027)

(assert (=> b!783335 (= res!530066 (= lt!349134 lt!349140))))

(declare-fun lt!349132 () array!42671)

(assert (=> b!783335 (= lt!349140 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349137 lt!349132 mask!3328))))

(assert (=> b!783335 (= lt!349134 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349137 mask!3328) lt!349137 lt!349132 mask!3328))))

(assert (=> b!783335 (= lt!349137 (select (store (arr!20420 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!783335 (= lt!349132 (array!42672 (store (arr!20420 a!3186) i!1173 k!2102) (size!20841 a!3186)))))

(declare-fun b!783336 () Bool)

(declare-fun e!435564 () Bool)

(assert (=> b!783336 (= e!435564 (= (seekEntryOrOpen!0 lt!349137 lt!349132 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349137 lt!349132 mask!3328)))))

(declare-fun b!783337 () Bool)

(assert (=> b!783337 (= e!435566 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20420 a!3186) j!159) a!3186 mask!3328) (Found!8027 j!159)))))

(declare-fun b!783338 () Bool)

(declare-fun res!530062 () Bool)

(assert (=> b!783338 (=> res!530062 e!435574)))

(assert (=> b!783338 (= res!530062 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20420 a!3186) j!159) a!3186 mask!3328) lt!349131)))))

(declare-fun b!783339 () Bool)

(declare-fun res!530055 () Bool)

(assert (=> b!783339 (=> (not res!530055) (not e!435569))))

(assert (=> b!783339 (= res!530055 (validKeyInArray!0 (select (arr!20420 a!3186) j!159)))))

(declare-fun b!783340 () Bool)

(declare-fun res!530064 () Bool)

(assert (=> b!783340 (=> (not res!530064) (not e!435571))))

(assert (=> b!783340 (= res!530064 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20420 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!783341 () Bool)

(assert (=> b!783341 (= e!435567 (not e!435574))))

(declare-fun res!530068 () Bool)

(assert (=> b!783341 (=> res!530068 e!435574)))

(assert (=> b!783341 (= res!530068 (or (not (is-Intermediate!8027 lt!349140)) (bvslt x!1131 (x!65456 lt!349140)) (not (= x!1131 (x!65456 lt!349140))) (not (= index!1321 (index!34477 lt!349140)))))))

(assert (=> b!783341 e!435573))

(declare-fun res!530065 () Bool)

(assert (=> b!783341 (=> (not res!530065) (not e!435573))))

(declare-fun lt!349141 () SeekEntryResult!8027)

(assert (=> b!783341 (= res!530065 (= lt!349141 lt!349131))))

(assert (=> b!783341 (= lt!349131 (Found!8027 j!159))))

(assert (=> b!783341 (= lt!349141 (seekEntryOrOpen!0 (select (arr!20420 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!783341 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349133 () Unit!27018)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42671 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27018)

(assert (=> b!783341 (= lt!349133 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!783342 () Bool)

(assert (=> b!783342 (= e!435570 true)))

(assert (=> b!783342 e!435564))

(declare-fun res!530060 () Bool)

(assert (=> b!783342 (=> (not res!530060) (not e!435564))))

(assert (=> b!783342 (= res!530060 (= lt!349135 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349138 () Unit!27018)

(assert (=> b!783342 (= lt!349138 e!435572)))

(declare-fun c!87041 () Bool)

(assert (=> b!783342 (= c!87041 (= lt!349135 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!67676 res!530056) b!783328))

(assert (= (and b!783328 res!530059) b!783339))

(assert (= (and b!783339 res!530055) b!783333))

(assert (= (and b!783333 res!530054) b!783329))

(assert (= (and b!783329 res!530067) b!783332))

(assert (= (and b!783332 res!530061) b!783324))

(assert (= (and b!783324 res!530069) b!783334))

(assert (= (and b!783334 res!530057) b!783325))

(assert (= (and b!783325 res!530070) b!783326))

(assert (= (and b!783326 res!530071) b!783340))

(assert (= (and b!783340 res!530064) b!783327))

(assert (= (and b!783327 c!87042) b!783323))

(assert (= (and b!783327 (not c!87042)) b!783337))

(assert (= (and b!783327 res!530058) b!783335))

(assert (= (and b!783335 res!530066) b!783341))

(assert (= (and b!783341 res!530065) b!783321))

(assert (= (and b!783341 (not res!530068)) b!783338))

(assert (= (and b!783338 (not res!530062)) b!783330))

(assert (= (and b!783330 (not res!530063)) b!783342))

(assert (= (and b!783342 c!87041) b!783331))

(assert (= (and b!783342 (not c!87041)) b!783322))

(assert (= (and b!783342 res!530060) b!783336))

(declare-fun m!725949 () Bool)

(assert (=> b!783323 m!725949))

(assert (=> b!783323 m!725949))

(declare-fun m!725951 () Bool)

(assert (=> b!783323 m!725951))

(assert (=> b!783337 m!725949))

(assert (=> b!783337 m!725949))

(declare-fun m!725953 () Bool)

(assert (=> b!783337 m!725953))

(assert (=> b!783338 m!725949))

(assert (=> b!783338 m!725949))

(assert (=> b!783338 m!725953))

(declare-fun m!725955 () Bool)

(assert (=> b!783335 m!725955))

(declare-fun m!725957 () Bool)

(assert (=> b!783335 m!725957))

(declare-fun m!725959 () Bool)

(assert (=> b!783335 m!725959))

(declare-fun m!725961 () Bool)

(assert (=> b!783335 m!725961))

(assert (=> b!783335 m!725961))

(declare-fun m!725963 () Bool)

(assert (=> b!783335 m!725963))

(declare-fun m!725965 () Bool)

(assert (=> b!783332 m!725965))

(assert (=> b!783339 m!725949))

(assert (=> b!783339 m!725949))

(declare-fun m!725967 () Bool)

(assert (=> b!783339 m!725967))

(declare-fun m!725969 () Bool)

(assert (=> b!783324 m!725969))

(declare-fun m!725971 () Bool)

(assert (=> b!783336 m!725971))

(declare-fun m!725973 () Bool)

(assert (=> b!783336 m!725973))

(assert (=> b!783321 m!725949))

(assert (=> b!783321 m!725949))

(declare-fun m!725975 () Bool)

(assert (=> b!783321 m!725975))

(declare-fun m!725977 () Bool)

(assert (=> start!67676 m!725977))

(declare-fun m!725979 () Bool)

(assert (=> start!67676 m!725979))

(assert (=> b!783330 m!725957))

(declare-fun m!725981 () Bool)

(assert (=> b!783330 m!725981))

(declare-fun m!725983 () Bool)

(assert (=> b!783340 m!725983))

(declare-fun m!725985 () Bool)

(assert (=> b!783333 m!725985))

(assert (=> b!783341 m!725949))

(assert (=> b!783341 m!725949))

(declare-fun m!725987 () Bool)

(assert (=> b!783341 m!725987))

(declare-fun m!725989 () Bool)

(assert (=> b!783341 m!725989))

(declare-fun m!725991 () Bool)

(assert (=> b!783341 m!725991))

(declare-fun m!725993 () Bool)

(assert (=> b!783334 m!725993))

(declare-fun m!725995 () Bool)

(assert (=> b!783329 m!725995))

(assert (=> b!783326 m!725949))

(assert (=> b!783326 m!725949))

(declare-fun m!725997 () Bool)

(assert (=> b!783326 m!725997))

(assert (=> b!783326 m!725997))

(assert (=> b!783326 m!725949))

(declare-fun m!725999 () Bool)

(assert (=> b!783326 m!725999))

(push 1)

