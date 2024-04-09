; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67586 () Bool)

(assert start!67586)

(declare-fun b!782095 () Bool)

(declare-fun res!529313 () Bool)

(declare-fun e!434932 () Bool)

(assert (=> b!782095 (=> (not res!529313) (not e!434932))))

(declare-fun e!434930 () Bool)

(assert (=> b!782095 (= res!529313 e!434930)))

(declare-fun c!86805 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!782095 (= c!86805 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!782096 () Bool)

(declare-fun res!529311 () Bool)

(declare-fun e!434935 () Bool)

(assert (=> b!782096 (=> (not res!529311) (not e!434935))))

(declare-datatypes ((array!42644 0))(
  ( (array!42645 (arr!20408 (Array (_ BitVec 32) (_ BitVec 64))) (size!20829 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42644)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!782096 (= res!529311 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!782098 () Bool)

(declare-fun res!529303 () Bool)

(declare-fun e!434931 () Bool)

(assert (=> b!782098 (=> res!529303 e!434931)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!348570 () (_ BitVec 64))

(assert (=> b!782098 (= res!529303 (= (select (store (arr!20408 a!3186) i!1173 k!2102) index!1321) lt!348570))))

(declare-fun b!782099 () Bool)

(declare-fun e!434933 () Bool)

(assert (=> b!782099 (= e!434933 e!434932)))

(declare-fun res!529301 () Bool)

(assert (=> b!782099 (=> (not res!529301) (not e!434932))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8015 0))(
  ( (MissingZero!8015 (index!34427 (_ BitVec 32))) (Found!8015 (index!34428 (_ BitVec 32))) (Intermediate!8015 (undefined!8827 Bool) (index!34429 (_ BitVec 32)) (x!65403 (_ BitVec 32))) (Undefined!8015) (MissingVacant!8015 (index!34430 (_ BitVec 32))) )
))
(declare-fun lt!348574 () SeekEntryResult!8015)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42644 (_ BitVec 32)) SeekEntryResult!8015)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!782099 (= res!529301 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20408 a!3186) j!159) mask!3328) (select (arr!20408 a!3186) j!159) a!3186 mask!3328) lt!348574))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!782099 (= lt!348574 (Intermediate!8015 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!782100 () Bool)

(declare-fun res!529306 () Bool)

(assert (=> b!782100 (=> (not res!529306) (not e!434933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42644 (_ BitVec 32)) Bool)

(assert (=> b!782100 (= res!529306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!782101 () Bool)

(declare-datatypes ((Unit!26970 0))(
  ( (Unit!26971) )
))
(declare-fun e!434934 () Unit!26970)

(declare-fun Unit!26972 () Unit!26970)

(assert (=> b!782101 (= e!434934 Unit!26972)))

(declare-fun b!782102 () Bool)

(declare-fun res!529305 () Bool)

(assert (=> b!782102 (=> (not res!529305) (not e!434935))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!782102 (= res!529305 (validKeyInArray!0 (select (arr!20408 a!3186) j!159)))))

(declare-fun b!782103 () Bool)

(declare-fun res!529314 () Bool)

(assert (=> b!782103 (=> (not res!529314) (not e!434932))))

(assert (=> b!782103 (= res!529314 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20408 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!782104 () Bool)

(declare-fun res!529304 () Bool)

(assert (=> b!782104 (=> (not res!529304) (not e!434935))))

(assert (=> b!782104 (= res!529304 (and (= (size!20829 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20829 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20829 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!782105 () Bool)

(declare-fun res!529307 () Bool)

(assert (=> b!782105 (=> (not res!529307) (not e!434935))))

(assert (=> b!782105 (= res!529307 (validKeyInArray!0 k!2102))))

(declare-fun b!782097 () Bool)

(declare-fun res!529299 () Bool)

(assert (=> b!782097 (=> (not res!529299) (not e!434933))))

(assert (=> b!782097 (= res!529299 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20829 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20829 a!3186))))))

(declare-fun res!529309 () Bool)

(assert (=> start!67586 (=> (not res!529309) (not e!434935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67586 (= res!529309 (validMask!0 mask!3328))))

(assert (=> start!67586 e!434935))

(assert (=> start!67586 true))

(declare-fun array_inv!16182 (array!42644) Bool)

(assert (=> start!67586 (array_inv!16182 a!3186)))

(declare-fun b!782106 () Bool)

(declare-fun e!434929 () Bool)

(assert (=> b!782106 (= e!434929 (not e!434931))))

(declare-fun res!529315 () Bool)

(assert (=> b!782106 (=> res!529315 e!434931)))

(declare-fun lt!348569 () SeekEntryResult!8015)

(assert (=> b!782106 (= res!529315 (or (not (is-Intermediate!8015 lt!348569)) (bvslt x!1131 (x!65403 lt!348569)) (not (= x!1131 (x!65403 lt!348569))) (not (= index!1321 (index!34429 lt!348569)))))))

(declare-fun e!434927 () Bool)

(assert (=> b!782106 e!434927))

(declare-fun res!529310 () Bool)

(assert (=> b!782106 (=> (not res!529310) (not e!434927))))

(declare-fun lt!348572 () SeekEntryResult!8015)

(declare-fun lt!348573 () SeekEntryResult!8015)

(assert (=> b!782106 (= res!529310 (= lt!348572 lt!348573))))

(assert (=> b!782106 (= lt!348573 (Found!8015 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42644 (_ BitVec 32)) SeekEntryResult!8015)

(assert (=> b!782106 (= lt!348572 (seekEntryOrOpen!0 (select (arr!20408 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!782106 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348567 () Unit!26970)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42644 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26970)

(assert (=> b!782106 (= lt!348567 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!782107 () Bool)

(assert (=> b!782107 (= e!434931 true)))

(assert (=> b!782107 (= (select (store (arr!20408 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348568 () Unit!26970)

(assert (=> b!782107 (= lt!348568 e!434934)))

(declare-fun c!86804 () Bool)

(assert (=> b!782107 (= c!86804 (= (select (store (arr!20408 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782108 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42644 (_ BitVec 32)) SeekEntryResult!8015)

(assert (=> b!782108 (= e!434927 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20408 a!3186) j!159) a!3186 mask!3328) lt!348573))))

(declare-fun b!782109 () Bool)

(declare-fun res!529312 () Bool)

(assert (=> b!782109 (=> res!529312 e!434931)))

(assert (=> b!782109 (= res!529312 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20408 a!3186) j!159) a!3186 mask!3328) lt!348573)))))

(declare-fun b!782110 () Bool)

(assert (=> b!782110 (= e!434930 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20408 a!3186) j!159) a!3186 mask!3328) lt!348574))))

(declare-fun b!782111 () Bool)

(assert (=> b!782111 (= e!434930 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20408 a!3186) j!159) a!3186 mask!3328) (Found!8015 j!159)))))

(declare-fun b!782112 () Bool)

(assert (=> b!782112 (= e!434932 e!434929)))

(declare-fun res!529302 () Bool)

(assert (=> b!782112 (=> (not res!529302) (not e!434929))))

(declare-fun lt!348566 () SeekEntryResult!8015)

(assert (=> b!782112 (= res!529302 (= lt!348566 lt!348569))))

(declare-fun lt!348571 () array!42644)

(assert (=> b!782112 (= lt!348569 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348570 lt!348571 mask!3328))))

(assert (=> b!782112 (= lt!348566 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348570 mask!3328) lt!348570 lt!348571 mask!3328))))

(assert (=> b!782112 (= lt!348570 (select (store (arr!20408 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!782112 (= lt!348571 (array!42645 (store (arr!20408 a!3186) i!1173 k!2102) (size!20829 a!3186)))))

(declare-fun b!782113 () Bool)

(declare-fun res!529308 () Bool)

(assert (=> b!782113 (=> (not res!529308) (not e!434933))))

(declare-datatypes ((List!14463 0))(
  ( (Nil!14460) (Cons!14459 (h!15579 (_ BitVec 64)) (t!20786 List!14463)) )
))
(declare-fun arrayNoDuplicates!0 (array!42644 (_ BitVec 32) List!14463) Bool)

(assert (=> b!782113 (= res!529308 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14460))))

(declare-fun b!782114 () Bool)

(declare-fun Unit!26973 () Unit!26970)

(assert (=> b!782114 (= e!434934 Unit!26973)))

(assert (=> b!782114 false))

(declare-fun b!782115 () Bool)

(assert (=> b!782115 (= e!434935 e!434933)))

(declare-fun res!529300 () Bool)

(assert (=> b!782115 (=> (not res!529300) (not e!434933))))

(declare-fun lt!348565 () SeekEntryResult!8015)

(assert (=> b!782115 (= res!529300 (or (= lt!348565 (MissingZero!8015 i!1173)) (= lt!348565 (MissingVacant!8015 i!1173))))))

(assert (=> b!782115 (= lt!348565 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!67586 res!529309) b!782104))

(assert (= (and b!782104 res!529304) b!782102))

(assert (= (and b!782102 res!529305) b!782105))

(assert (= (and b!782105 res!529307) b!782096))

(assert (= (and b!782096 res!529311) b!782115))

(assert (= (and b!782115 res!529300) b!782100))

(assert (= (and b!782100 res!529306) b!782113))

(assert (= (and b!782113 res!529308) b!782097))

(assert (= (and b!782097 res!529299) b!782099))

(assert (= (and b!782099 res!529301) b!782103))

(assert (= (and b!782103 res!529314) b!782095))

(assert (= (and b!782095 c!86805) b!782110))

(assert (= (and b!782095 (not c!86805)) b!782111))

(assert (= (and b!782095 res!529313) b!782112))

(assert (= (and b!782112 res!529302) b!782106))

(assert (= (and b!782106 res!529310) b!782108))

(assert (= (and b!782106 (not res!529315)) b!782109))

(assert (= (and b!782109 (not res!529312)) b!782098))

(assert (= (and b!782098 (not res!529303)) b!782107))

(assert (= (and b!782107 c!86804) b!782114))

(assert (= (and b!782107 (not c!86804)) b!782101))

(declare-fun m!725011 () Bool)

(assert (=> b!782110 m!725011))

(assert (=> b!782110 m!725011))

(declare-fun m!725013 () Bool)

(assert (=> b!782110 m!725013))

(declare-fun m!725015 () Bool)

(assert (=> start!67586 m!725015))

(declare-fun m!725017 () Bool)

(assert (=> start!67586 m!725017))

(declare-fun m!725019 () Bool)

(assert (=> b!782096 m!725019))

(declare-fun m!725021 () Bool)

(assert (=> b!782113 m!725021))

(declare-fun m!725023 () Bool)

(assert (=> b!782115 m!725023))

(declare-fun m!725025 () Bool)

(assert (=> b!782112 m!725025))

(declare-fun m!725027 () Bool)

(assert (=> b!782112 m!725027))

(declare-fun m!725029 () Bool)

(assert (=> b!782112 m!725029))

(declare-fun m!725031 () Bool)

(assert (=> b!782112 m!725031))

(declare-fun m!725033 () Bool)

(assert (=> b!782112 m!725033))

(assert (=> b!782112 m!725029))

(assert (=> b!782102 m!725011))

(assert (=> b!782102 m!725011))

(declare-fun m!725035 () Bool)

(assert (=> b!782102 m!725035))

(assert (=> b!782099 m!725011))

(assert (=> b!782099 m!725011))

(declare-fun m!725037 () Bool)

(assert (=> b!782099 m!725037))

(assert (=> b!782099 m!725037))

(assert (=> b!782099 m!725011))

(declare-fun m!725039 () Bool)

(assert (=> b!782099 m!725039))

(declare-fun m!725041 () Bool)

(assert (=> b!782100 m!725041))

(declare-fun m!725043 () Bool)

(assert (=> b!782105 m!725043))

(assert (=> b!782109 m!725011))

(assert (=> b!782109 m!725011))

(declare-fun m!725045 () Bool)

(assert (=> b!782109 m!725045))

(assert (=> b!782107 m!725025))

(declare-fun m!725047 () Bool)

(assert (=> b!782107 m!725047))

(assert (=> b!782111 m!725011))

(assert (=> b!782111 m!725011))

(assert (=> b!782111 m!725045))

(assert (=> b!782098 m!725025))

(assert (=> b!782098 m!725047))

(assert (=> b!782108 m!725011))

(assert (=> b!782108 m!725011))

(declare-fun m!725049 () Bool)

(assert (=> b!782108 m!725049))

(assert (=> b!782106 m!725011))

(assert (=> b!782106 m!725011))

(declare-fun m!725051 () Bool)

(assert (=> b!782106 m!725051))

(declare-fun m!725053 () Bool)

(assert (=> b!782106 m!725053))

(declare-fun m!725055 () Bool)

(assert (=> b!782106 m!725055))

(declare-fun m!725057 () Bool)

(assert (=> b!782103 m!725057))

(push 1)

