; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67376 () Bool)

(assert start!67376)

(declare-fun b!778951 () Bool)

(declare-fun res!527116 () Bool)

(declare-fun e!433385 () Bool)

(assert (=> b!778951 (=> (not res!527116) (not e!433385))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!778951 (= res!527116 (validKeyInArray!0 k!2102))))

(declare-fun b!778952 () Bool)

(declare-fun res!527114 () Bool)

(declare-fun e!433384 () Bool)

(assert (=> b!778952 (=> (not res!527114) (not e!433384))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42560 0))(
  ( (array!42561 (arr!20369 (Array (_ BitVec 32) (_ BitVec 64))) (size!20790 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42560)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!778952 (= res!527114 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20369 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778953 () Bool)

(declare-fun res!527121 () Bool)

(assert (=> b!778953 (=> (not res!527121) (not e!433385))))

(declare-fun arrayContainsKey!0 (array!42560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!778953 (= res!527121 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!527118 () Bool)

(assert (=> start!67376 (=> (not res!527118) (not e!433385))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67376 (= res!527118 (validMask!0 mask!3328))))

(assert (=> start!67376 e!433385))

(assert (=> start!67376 true))

(declare-fun array_inv!16143 (array!42560) Bool)

(assert (=> start!67376 (array_inv!16143 a!3186)))

(declare-fun b!778954 () Bool)

(declare-fun res!527113 () Bool)

(declare-fun e!433381 () Bool)

(assert (=> b!778954 (=> (not res!527113) (not e!433381))))

(declare-datatypes ((List!14424 0))(
  ( (Nil!14421) (Cons!14420 (h!15534 (_ BitVec 64)) (t!20747 List!14424)) )
))
(declare-fun arrayNoDuplicates!0 (array!42560 (_ BitVec 32) List!14424) Bool)

(assert (=> b!778954 (= res!527113 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14421))))

(declare-fun b!778955 () Bool)

(declare-fun e!433380 () Bool)

(assert (=> b!778955 (= e!433380 true)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7976 0))(
  ( (MissingZero!7976 (index!34271 (_ BitVec 32))) (Found!7976 (index!34272 (_ BitVec 32))) (Intermediate!7976 (undefined!8788 Bool) (index!34273 (_ BitVec 32)) (x!65242 (_ BitVec 32))) (Undefined!7976) (MissingVacant!7976 (index!34274 (_ BitVec 32))) )
))
(declare-fun lt!347075 () SeekEntryResult!7976)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42560 (_ BitVec 32)) SeekEntryResult!7976)

(assert (=> b!778955 (= lt!347075 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20369 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778956 () Bool)

(declare-fun e!433379 () Bool)

(assert (=> b!778956 (= e!433384 e!433379)))

(declare-fun res!527119 () Bool)

(assert (=> b!778956 (=> (not res!527119) (not e!433379))))

(declare-fun lt!347081 () SeekEntryResult!7976)

(declare-fun lt!347080 () SeekEntryResult!7976)

(assert (=> b!778956 (= res!527119 (= lt!347081 lt!347080))))

(declare-fun lt!347077 () array!42560)

(declare-fun lt!347078 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42560 (_ BitVec 32)) SeekEntryResult!7976)

(assert (=> b!778956 (= lt!347080 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347078 lt!347077 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!778956 (= lt!347081 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347078 mask!3328) lt!347078 lt!347077 mask!3328))))

(assert (=> b!778956 (= lt!347078 (select (store (arr!20369 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!778956 (= lt!347077 (array!42561 (store (arr!20369 a!3186) i!1173 k!2102) (size!20790 a!3186)))))

(declare-fun b!778957 () Bool)

(declare-fun res!527126 () Bool)

(assert (=> b!778957 (=> (not res!527126) (not e!433381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42560 (_ BitVec 32)) Bool)

(assert (=> b!778957 (= res!527126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!778958 () Bool)

(declare-fun res!527127 () Bool)

(assert (=> b!778958 (=> (not res!527127) (not e!433385))))

(assert (=> b!778958 (= res!527127 (and (= (size!20790 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20790 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20790 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!778959 () Bool)

(declare-fun res!527128 () Bool)

(assert (=> b!778959 (=> (not res!527128) (not e!433385))))

(assert (=> b!778959 (= res!527128 (validKeyInArray!0 (select (arr!20369 a!3186) j!159)))))

(declare-fun b!778960 () Bool)

(assert (=> b!778960 (= e!433379 (not e!433380))))

(declare-fun res!527125 () Bool)

(assert (=> b!778960 (=> res!527125 e!433380)))

(assert (=> b!778960 (= res!527125 (or (not (is-Intermediate!7976 lt!347080)) (bvslt x!1131 (x!65242 lt!347080)) (not (= x!1131 (x!65242 lt!347080))) (not (= index!1321 (index!34273 lt!347080)))))))

(declare-fun e!433383 () Bool)

(assert (=> b!778960 e!433383))

(declare-fun res!527122 () Bool)

(assert (=> b!778960 (=> (not res!527122) (not e!433383))))

(assert (=> b!778960 (= res!527122 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26846 0))(
  ( (Unit!26847) )
))
(declare-fun lt!347082 () Unit!26846)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42560 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26846)

(assert (=> b!778960 (= lt!347082 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!778961 () Bool)

(declare-fun e!433386 () Bool)

(assert (=> b!778961 (= e!433386 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20369 a!3186) j!159) a!3186 mask!3328) (Found!7976 j!159)))))

(declare-fun b!778962 () Bool)

(declare-fun e!433387 () Bool)

(assert (=> b!778962 (= e!433383 e!433387)))

(declare-fun res!527124 () Bool)

(assert (=> b!778962 (=> (not res!527124) (not e!433387))))

(declare-fun lt!347076 () SeekEntryResult!7976)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42560 (_ BitVec 32)) SeekEntryResult!7976)

(assert (=> b!778962 (= res!527124 (= (seekEntryOrOpen!0 (select (arr!20369 a!3186) j!159) a!3186 mask!3328) lt!347076))))

(assert (=> b!778962 (= lt!347076 (Found!7976 j!159))))

(declare-fun b!778963 () Bool)

(declare-fun lt!347079 () SeekEntryResult!7976)

(assert (=> b!778963 (= e!433386 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20369 a!3186) j!159) a!3186 mask!3328) lt!347079))))

(declare-fun b!778964 () Bool)

(assert (=> b!778964 (= e!433385 e!433381)))

(declare-fun res!527120 () Bool)

(assert (=> b!778964 (=> (not res!527120) (not e!433381))))

(declare-fun lt!347083 () SeekEntryResult!7976)

(assert (=> b!778964 (= res!527120 (or (= lt!347083 (MissingZero!7976 i!1173)) (= lt!347083 (MissingVacant!7976 i!1173))))))

(assert (=> b!778964 (= lt!347083 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!778965 () Bool)

(declare-fun res!527115 () Bool)

(assert (=> b!778965 (=> (not res!527115) (not e!433384))))

(assert (=> b!778965 (= res!527115 e!433386)))

(declare-fun c!86322 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!778965 (= c!86322 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!778966 () Bool)

(declare-fun res!527123 () Bool)

(assert (=> b!778966 (=> (not res!527123) (not e!433381))))

(assert (=> b!778966 (= res!527123 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20790 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20790 a!3186))))))

(declare-fun b!778967 () Bool)

(assert (=> b!778967 (= e!433381 e!433384)))

(declare-fun res!527117 () Bool)

(assert (=> b!778967 (=> (not res!527117) (not e!433384))))

(assert (=> b!778967 (= res!527117 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20369 a!3186) j!159) mask!3328) (select (arr!20369 a!3186) j!159) a!3186 mask!3328) lt!347079))))

(assert (=> b!778967 (= lt!347079 (Intermediate!7976 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!778968 () Bool)

(assert (=> b!778968 (= e!433387 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20369 a!3186) j!159) a!3186 mask!3328) lt!347076))))

(assert (= (and start!67376 res!527118) b!778958))

(assert (= (and b!778958 res!527127) b!778959))

(assert (= (and b!778959 res!527128) b!778951))

(assert (= (and b!778951 res!527116) b!778953))

(assert (= (and b!778953 res!527121) b!778964))

(assert (= (and b!778964 res!527120) b!778957))

(assert (= (and b!778957 res!527126) b!778954))

(assert (= (and b!778954 res!527113) b!778966))

(assert (= (and b!778966 res!527123) b!778967))

(assert (= (and b!778967 res!527117) b!778952))

(assert (= (and b!778952 res!527114) b!778965))

(assert (= (and b!778965 c!86322) b!778963))

(assert (= (and b!778965 (not c!86322)) b!778961))

(assert (= (and b!778965 res!527115) b!778956))

(assert (= (and b!778956 res!527119) b!778960))

(assert (= (and b!778960 res!527122) b!778962))

(assert (= (and b!778962 res!527124) b!778968))

(assert (= (and b!778960 (not res!527125)) b!778955))

(declare-fun m!722583 () Bool)

(assert (=> b!778960 m!722583))

(declare-fun m!722585 () Bool)

(assert (=> b!778960 m!722585))

(declare-fun m!722587 () Bool)

(assert (=> start!67376 m!722587))

(declare-fun m!722589 () Bool)

(assert (=> start!67376 m!722589))

(declare-fun m!722591 () Bool)

(assert (=> b!778953 m!722591))

(declare-fun m!722593 () Bool)

(assert (=> b!778959 m!722593))

(assert (=> b!778959 m!722593))

(declare-fun m!722595 () Bool)

(assert (=> b!778959 m!722595))

(assert (=> b!778955 m!722593))

(assert (=> b!778955 m!722593))

(declare-fun m!722597 () Bool)

(assert (=> b!778955 m!722597))

(assert (=> b!778963 m!722593))

(assert (=> b!778963 m!722593))

(declare-fun m!722599 () Bool)

(assert (=> b!778963 m!722599))

(declare-fun m!722601 () Bool)

(assert (=> b!778964 m!722601))

(assert (=> b!778968 m!722593))

(assert (=> b!778968 m!722593))

(declare-fun m!722603 () Bool)

(assert (=> b!778968 m!722603))

(assert (=> b!778967 m!722593))

(assert (=> b!778967 m!722593))

(declare-fun m!722605 () Bool)

(assert (=> b!778967 m!722605))

(assert (=> b!778967 m!722605))

(assert (=> b!778967 m!722593))

(declare-fun m!722607 () Bool)

(assert (=> b!778967 m!722607))

(declare-fun m!722609 () Bool)

(assert (=> b!778956 m!722609))

(declare-fun m!722611 () Bool)

(assert (=> b!778956 m!722611))

(declare-fun m!722613 () Bool)

(assert (=> b!778956 m!722613))

(declare-fun m!722615 () Bool)

(assert (=> b!778956 m!722615))

(assert (=> b!778956 m!722609))

(declare-fun m!722617 () Bool)

(assert (=> b!778956 m!722617))

(declare-fun m!722619 () Bool)

(assert (=> b!778951 m!722619))

(assert (=> b!778962 m!722593))

(assert (=> b!778962 m!722593))

(declare-fun m!722621 () Bool)

(assert (=> b!778962 m!722621))

(assert (=> b!778961 m!722593))

(assert (=> b!778961 m!722593))

(assert (=> b!778961 m!722597))

(declare-fun m!722623 () Bool)

(assert (=> b!778954 m!722623))

(declare-fun m!722625 () Bool)

(assert (=> b!778957 m!722625))

(declare-fun m!722627 () Bool)

(assert (=> b!778952 m!722627))

(push 1)

