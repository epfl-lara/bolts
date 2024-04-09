; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65488 () Bool)

(assert start!65488)

(declare-fun b!746019 () Bool)

(declare-fun e!416651 () Bool)

(declare-fun e!416653 () Bool)

(assert (=> b!746019 (= e!416651 e!416653)))

(declare-fun res!502970 () Bool)

(assert (=> b!746019 (=> (not res!502970) (not e!416653))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41614 0))(
  ( (array!41615 (arr!19917 (Array (_ BitVec 32) (_ BitVec 64))) (size!20338 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41614)

(declare-datatypes ((SeekEntryResult!7524 0))(
  ( (MissingZero!7524 (index!32463 (_ BitVec 32))) (Found!7524 (index!32464 (_ BitVec 32))) (Intermediate!7524 (undefined!8336 Bool) (index!32465 (_ BitVec 32)) (x!63443 (_ BitVec 32))) (Undefined!7524) (MissingVacant!7524 (index!32466 (_ BitVec 32))) )
))
(declare-fun lt!331522 () SeekEntryResult!7524)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41614 (_ BitVec 32)) SeekEntryResult!7524)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746019 (= res!502970 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19917 a!3186) j!159) mask!3328) (select (arr!19917 a!3186) j!159) a!3186 mask!3328) lt!331522))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!746019 (= lt!331522 (Intermediate!7524 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746020 () Bool)

(declare-fun e!416652 () Bool)

(declare-fun e!416657 () Bool)

(assert (=> b!746020 (= e!416652 e!416657)))

(declare-fun res!502962 () Bool)

(assert (=> b!746020 (=> res!502962 e!416657)))

(declare-fun lt!331520 () SeekEntryResult!7524)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun lt!331518 () SeekEntryResult!7524)

(declare-fun lt!331517 () (_ BitVec 64))

(assert (=> b!746020 (= res!502962 (or (not (= lt!331518 lt!331520)) (= (select (store (arr!19917 a!3186) i!1173 k!2102) index!1321) lt!331517) (not (= (select (store (arr!19917 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41614 (_ BitVec 32)) SeekEntryResult!7524)

(assert (=> b!746020 (= lt!331518 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19917 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!746021 () Bool)

(declare-fun res!502956 () Bool)

(declare-fun e!416658 () Bool)

(assert (=> b!746021 (=> (not res!502956) (not e!416658))))

(assert (=> b!746021 (= res!502956 (and (= (size!20338 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20338 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20338 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746022 () Bool)

(declare-fun res!502967 () Bool)

(assert (=> b!746022 (=> (not res!502967) (not e!416658))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746022 (= res!502967 (validKeyInArray!0 (select (arr!19917 a!3186) j!159)))))

(declare-fun b!746023 () Bool)

(assert (=> b!746023 (= e!416658 e!416651)))

(declare-fun res!502957 () Bool)

(assert (=> b!746023 (=> (not res!502957) (not e!416651))))

(declare-fun lt!331519 () SeekEntryResult!7524)

(assert (=> b!746023 (= res!502957 (or (= lt!331519 (MissingZero!7524 i!1173)) (= lt!331519 (MissingVacant!7524 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41614 (_ BitVec 32)) SeekEntryResult!7524)

(assert (=> b!746023 (= lt!331519 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!746024 () Bool)

(assert (=> b!746024 (= e!416657 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun lt!331521 () SeekEntryResult!7524)

(assert (=> b!746024 (= lt!331521 lt!331518)))

(declare-fun b!746025 () Bool)

(declare-fun res!502966 () Bool)

(assert (=> b!746025 (=> (not res!502966) (not e!416651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41614 (_ BitVec 32)) Bool)

(assert (=> b!746025 (= res!502966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746026 () Bool)

(declare-fun e!416650 () Bool)

(assert (=> b!746026 (= e!416650 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19917 a!3186) j!159) a!3186 mask!3328) (Found!7524 j!159)))))

(declare-fun b!746028 () Bool)

(declare-fun res!502958 () Bool)

(assert (=> b!746028 (=> (not res!502958) (not e!416653))))

(assert (=> b!746028 (= res!502958 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19917 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!746029 () Bool)

(declare-fun res!502969 () Bool)

(assert (=> b!746029 (=> (not res!502969) (not e!416658))))

(declare-fun arrayContainsKey!0 (array!41614 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746029 (= res!502969 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746030 () Bool)

(declare-fun res!502968 () Bool)

(assert (=> b!746030 (=> (not res!502968) (not e!416651))))

(assert (=> b!746030 (= res!502968 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20338 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20338 a!3186))))))

(declare-fun b!746031 () Bool)

(declare-fun res!502961 () Bool)

(assert (=> b!746031 (=> (not res!502961) (not e!416653))))

(assert (=> b!746031 (= res!502961 e!416650)))

(declare-fun c!81912 () Bool)

(assert (=> b!746031 (= c!81912 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746032 () Bool)

(declare-fun e!416654 () Bool)

(assert (=> b!746032 (= e!416653 e!416654)))

(declare-fun res!502971 () Bool)

(assert (=> b!746032 (=> (not res!502971) (not e!416654))))

(declare-fun lt!331525 () SeekEntryResult!7524)

(declare-fun lt!331526 () SeekEntryResult!7524)

(assert (=> b!746032 (= res!502971 (= lt!331525 lt!331526))))

(declare-fun lt!331523 () array!41614)

(assert (=> b!746032 (= lt!331526 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331517 lt!331523 mask!3328))))

(assert (=> b!746032 (= lt!331525 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331517 mask!3328) lt!331517 lt!331523 mask!3328))))

(assert (=> b!746032 (= lt!331517 (select (store (arr!19917 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!746032 (= lt!331523 (array!41615 (store (arr!19917 a!3186) i!1173 k!2102) (size!20338 a!3186)))))

(declare-fun res!502960 () Bool)

(assert (=> start!65488 (=> (not res!502960) (not e!416658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65488 (= res!502960 (validMask!0 mask!3328))))

(assert (=> start!65488 e!416658))

(assert (=> start!65488 true))

(declare-fun array_inv!15691 (array!41614) Bool)

(assert (=> start!65488 (array_inv!15691 a!3186)))

(declare-fun b!746027 () Bool)

(assert (=> b!746027 (= e!416650 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19917 a!3186) j!159) a!3186 mask!3328) lt!331522))))

(declare-fun b!746033 () Bool)

(assert (=> b!746033 (= e!416654 (not e!416652))))

(declare-fun res!502959 () Bool)

(assert (=> b!746033 (=> res!502959 e!416652)))

(assert (=> b!746033 (= res!502959 (or (not (is-Intermediate!7524 lt!331526)) (bvslt x!1131 (x!63443 lt!331526)) (not (= x!1131 (x!63443 lt!331526))) (not (= index!1321 (index!32465 lt!331526)))))))

(declare-fun e!416656 () Bool)

(assert (=> b!746033 e!416656))

(declare-fun res!502964 () Bool)

(assert (=> b!746033 (=> (not res!502964) (not e!416656))))

(assert (=> b!746033 (= res!502964 (= lt!331521 lt!331520))))

(assert (=> b!746033 (= lt!331520 (Found!7524 j!159))))

(assert (=> b!746033 (= lt!331521 (seekEntryOrOpen!0 (select (arr!19917 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!746033 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25528 0))(
  ( (Unit!25529) )
))
(declare-fun lt!331524 () Unit!25528)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41614 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25528)

(assert (=> b!746033 (= lt!331524 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!746034 () Bool)

(declare-fun res!502963 () Bool)

(assert (=> b!746034 (=> (not res!502963) (not e!416658))))

(assert (=> b!746034 (= res!502963 (validKeyInArray!0 k!2102))))

(declare-fun b!746035 () Bool)

(assert (=> b!746035 (= e!416656 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19917 a!3186) j!159) a!3186 mask!3328) lt!331520))))

(declare-fun b!746036 () Bool)

(declare-fun res!502965 () Bool)

(assert (=> b!746036 (=> (not res!502965) (not e!416651))))

(declare-datatypes ((List!13972 0))(
  ( (Nil!13969) (Cons!13968 (h!15040 (_ BitVec 64)) (t!20295 List!13972)) )
))
(declare-fun arrayNoDuplicates!0 (array!41614 (_ BitVec 32) List!13972) Bool)

(assert (=> b!746036 (= res!502965 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13969))))

(assert (= (and start!65488 res!502960) b!746021))

(assert (= (and b!746021 res!502956) b!746022))

(assert (= (and b!746022 res!502967) b!746034))

(assert (= (and b!746034 res!502963) b!746029))

(assert (= (and b!746029 res!502969) b!746023))

(assert (= (and b!746023 res!502957) b!746025))

(assert (= (and b!746025 res!502966) b!746036))

(assert (= (and b!746036 res!502965) b!746030))

(assert (= (and b!746030 res!502968) b!746019))

(assert (= (and b!746019 res!502970) b!746028))

(assert (= (and b!746028 res!502958) b!746031))

(assert (= (and b!746031 c!81912) b!746027))

(assert (= (and b!746031 (not c!81912)) b!746026))

(assert (= (and b!746031 res!502961) b!746032))

(assert (= (and b!746032 res!502971) b!746033))

(assert (= (and b!746033 res!502964) b!746035))

(assert (= (and b!746033 (not res!502959)) b!746020))

(assert (= (and b!746020 (not res!502962)) b!746024))

(declare-fun m!696409 () Bool)

(assert (=> b!746025 m!696409))

(declare-fun m!696411 () Bool)

(assert (=> b!746026 m!696411))

(assert (=> b!746026 m!696411))

(declare-fun m!696413 () Bool)

(assert (=> b!746026 m!696413))

(declare-fun m!696415 () Bool)

(assert (=> b!746034 m!696415))

(declare-fun m!696417 () Bool)

(assert (=> b!746020 m!696417))

(declare-fun m!696419 () Bool)

(assert (=> b!746020 m!696419))

(assert (=> b!746020 m!696411))

(assert (=> b!746020 m!696411))

(assert (=> b!746020 m!696413))

(declare-fun m!696421 () Bool)

(assert (=> start!65488 m!696421))

(declare-fun m!696423 () Bool)

(assert (=> start!65488 m!696423))

(assert (=> b!746019 m!696411))

(assert (=> b!746019 m!696411))

(declare-fun m!696425 () Bool)

(assert (=> b!746019 m!696425))

(assert (=> b!746019 m!696425))

(assert (=> b!746019 m!696411))

(declare-fun m!696427 () Bool)

(assert (=> b!746019 m!696427))

(declare-fun m!696429 () Bool)

(assert (=> b!746036 m!696429))

(assert (=> b!746033 m!696411))

(assert (=> b!746033 m!696411))

(declare-fun m!696431 () Bool)

(assert (=> b!746033 m!696431))

(declare-fun m!696433 () Bool)

(assert (=> b!746033 m!696433))

(declare-fun m!696435 () Bool)

(assert (=> b!746033 m!696435))

(assert (=> b!746027 m!696411))

(assert (=> b!746027 m!696411))

(declare-fun m!696437 () Bool)

(assert (=> b!746027 m!696437))

(assert (=> b!746022 m!696411))

(assert (=> b!746022 m!696411))

(declare-fun m!696439 () Bool)

(assert (=> b!746022 m!696439))

(declare-fun m!696441 () Bool)

(assert (=> b!746029 m!696441))

(declare-fun m!696443 () Bool)

(assert (=> b!746032 m!696443))

(declare-fun m!696445 () Bool)

(assert (=> b!746032 m!696445))

(declare-fun m!696447 () Bool)

(assert (=> b!746032 m!696447))

(assert (=> b!746032 m!696417))

(declare-fun m!696449 () Bool)

(assert (=> b!746032 m!696449))

(assert (=> b!746032 m!696445))

(assert (=> b!746035 m!696411))

(assert (=> b!746035 m!696411))

(declare-fun m!696451 () Bool)

(assert (=> b!746035 m!696451))

(declare-fun m!696453 () Bool)

(assert (=> b!746028 m!696453))

(declare-fun m!696455 () Bool)

(assert (=> b!746023 m!696455))

(push 1)

(assert (not b!746025))

(assert (not b!746029))

(assert (not b!746033))

(assert (not b!746035))

(assert (not b!746036))

(assert (not b!746023))

(assert (not b!746032))

(assert (not b!746019))

(assert (not b!746034))

(assert (not start!65488))

(assert (not b!746022))

(assert (not b!746020))

(assert (not b!746026))

(assert (not b!746027))

(check-sat)

(pop 1)

(push 1)

(check-sat)

