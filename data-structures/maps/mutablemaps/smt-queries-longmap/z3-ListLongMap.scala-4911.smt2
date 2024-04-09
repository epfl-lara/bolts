; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67728 () Bool)

(assert start!67728)

(declare-fun b!785105 () Bool)

(declare-fun e!436503 () Bool)

(declare-fun e!436507 () Bool)

(assert (=> b!785105 (= e!436503 e!436507)))

(declare-fun res!531535 () Bool)

(assert (=> b!785105 (=> (not res!531535) (not e!436507))))

(declare-datatypes ((SeekEntryResult!8053 0))(
  ( (MissingZero!8053 (index!34579 (_ BitVec 32))) (Found!8053 (index!34580 (_ BitVec 32))) (Intermediate!8053 (undefined!8865 Bool) (index!34581 (_ BitVec 32)) (x!65554 (_ BitVec 32))) (Undefined!8053) (MissingVacant!8053 (index!34582 (_ BitVec 32))) )
))
(declare-fun lt!350074 () SeekEntryResult!8053)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!785105 (= res!531535 (or (= lt!350074 (MissingZero!8053 i!1173)) (= lt!350074 (MissingVacant!8053 i!1173))))))

(declare-datatypes ((array!42723 0))(
  ( (array!42724 (arr!20446 (Array (_ BitVec 32) (_ BitVec 64))) (size!20867 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42723)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42723 (_ BitVec 32)) SeekEntryResult!8053)

(assert (=> b!785105 (= lt!350074 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!531542 () Bool)

(assert (=> start!67728 (=> (not res!531542) (not e!436503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67728 (= res!531542 (validMask!0 mask!3328))))

(assert (=> start!67728 e!436503))

(assert (=> start!67728 true))

(declare-fun array_inv!16220 (array!42723) Bool)

(assert (=> start!67728 (array_inv!16220 a!3186)))

(declare-fun b!785106 () Bool)

(declare-datatypes ((Unit!27122 0))(
  ( (Unit!27123) )
))
(declare-fun e!436500 () Unit!27122)

(declare-fun Unit!27124 () Unit!27122)

(assert (=> b!785106 (= e!436500 Unit!27124)))

(assert (=> b!785106 false))

(declare-fun b!785107 () Bool)

(declare-fun res!531541 () Bool)

(declare-fun e!436506 () Bool)

(assert (=> b!785107 (=> (not res!531541) (not e!436506))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!350068 () array!42723)

(declare-fun lt!350077 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42723 (_ BitVec 32)) SeekEntryResult!8053)

(assert (=> b!785107 (= res!531541 (= (seekEntryOrOpen!0 lt!350077 lt!350068 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350077 lt!350068 mask!3328)))))

(declare-fun b!785108 () Bool)

(declare-fun Unit!27125 () Unit!27122)

(assert (=> b!785108 (= e!436500 Unit!27125)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!436510 () Bool)

(declare-fun b!785109 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!785109 (= e!436510 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20446 a!3186) j!159) a!3186 mask!3328) (Found!8053 j!159)))))

(declare-fun b!785110 () Bool)

(declare-fun res!531531 () Bool)

(declare-fun e!436504 () Bool)

(assert (=> b!785110 (=> (not res!531531) (not e!436504))))

(assert (=> b!785110 (= res!531531 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20446 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!785111 () Bool)

(declare-fun res!531529 () Bool)

(assert (=> b!785111 (=> (not res!531529) (not e!436507))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42723 (_ BitVec 32)) Bool)

(assert (=> b!785111 (= res!531529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!785112 () Bool)

(declare-fun res!531539 () Bool)

(assert (=> b!785112 (=> (not res!531539) (not e!436503))))

(declare-fun arrayContainsKey!0 (array!42723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!785112 (= res!531539 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!785113 () Bool)

(declare-fun res!531532 () Bool)

(assert (=> b!785113 (=> (not res!531532) (not e!436503))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!785113 (= res!531532 (validKeyInArray!0 k0!2102))))

(declare-fun b!785114 () Bool)

(declare-fun res!531528 () Bool)

(assert (=> b!785114 (=> (not res!531528) (not e!436503))))

(assert (=> b!785114 (= res!531528 (and (= (size!20867 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20867 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20867 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!785115 () Bool)

(declare-fun e!436499 () Bool)

(declare-fun e!436508 () Bool)

(assert (=> b!785115 (= e!436499 (not e!436508))))

(declare-fun res!531543 () Bool)

(assert (=> b!785115 (=> res!531543 e!436508)))

(declare-fun lt!350075 () SeekEntryResult!8053)

(get-info :version)

(assert (=> b!785115 (= res!531543 (or (not ((_ is Intermediate!8053) lt!350075)) (bvslt x!1131 (x!65554 lt!350075)) (not (= x!1131 (x!65554 lt!350075))) (not (= index!1321 (index!34581 lt!350075)))))))

(declare-fun e!436509 () Bool)

(assert (=> b!785115 e!436509))

(declare-fun res!531540 () Bool)

(assert (=> b!785115 (=> (not res!531540) (not e!436509))))

(declare-fun lt!350073 () SeekEntryResult!8053)

(declare-fun lt!350076 () SeekEntryResult!8053)

(assert (=> b!785115 (= res!531540 (= lt!350073 lt!350076))))

(assert (=> b!785115 (= lt!350076 (Found!8053 j!159))))

(assert (=> b!785115 (= lt!350073 (seekEntryOrOpen!0 (select (arr!20446 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!785115 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350069 () Unit!27122)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42723 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27122)

(assert (=> b!785115 (= lt!350069 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!785116 () Bool)

(assert (=> b!785116 (= e!436509 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20446 a!3186) j!159) a!3186 mask!3328) lt!350076))))

(declare-fun b!785117 () Bool)

(declare-fun lt!350067 () SeekEntryResult!8053)

(assert (=> b!785117 (= e!436506 (= lt!350073 lt!350067))))

(declare-fun b!785118 () Bool)

(declare-fun e!436502 () Bool)

(assert (=> b!785118 (= e!436508 e!436502)))

(declare-fun res!531544 () Bool)

(assert (=> b!785118 (=> res!531544 e!436502)))

(assert (=> b!785118 (= res!531544 (not (= lt!350067 lt!350076)))))

(assert (=> b!785118 (= lt!350067 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20446 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!785119 () Bool)

(declare-fun res!531527 () Bool)

(assert (=> b!785119 (=> (not res!531527) (not e!436504))))

(assert (=> b!785119 (= res!531527 e!436510)))

(declare-fun c!87197 () Bool)

(assert (=> b!785119 (= c!87197 (bvsle x!1131 resIntermediateX!5))))

(declare-fun lt!350070 () SeekEntryResult!8053)

(declare-fun b!785120 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42723 (_ BitVec 32)) SeekEntryResult!8053)

(assert (=> b!785120 (= e!436510 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20446 a!3186) j!159) a!3186 mask!3328) lt!350070))))

(declare-fun b!785121 () Bool)

(declare-fun res!531537 () Bool)

(assert (=> b!785121 (=> (not res!531537) (not e!436507))))

(declare-datatypes ((List!14501 0))(
  ( (Nil!14498) (Cons!14497 (h!15620 (_ BitVec 64)) (t!20824 List!14501)) )
))
(declare-fun arrayNoDuplicates!0 (array!42723 (_ BitVec 32) List!14501) Bool)

(assert (=> b!785121 (= res!531537 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14498))))

(declare-fun b!785122 () Bool)

(declare-fun e!436501 () Bool)

(assert (=> b!785122 (= e!436502 e!436501)))

(declare-fun res!531526 () Bool)

(assert (=> b!785122 (=> res!531526 e!436501)))

(declare-fun lt!350071 () (_ BitVec 64))

(assert (=> b!785122 (= res!531526 (= lt!350071 lt!350077))))

(assert (=> b!785122 (= lt!350071 (select (store (arr!20446 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!785123 () Bool)

(assert (=> b!785123 (= e!436504 e!436499)))

(declare-fun res!531533 () Bool)

(assert (=> b!785123 (=> (not res!531533) (not e!436499))))

(declare-fun lt!350066 () SeekEntryResult!8053)

(assert (=> b!785123 (= res!531533 (= lt!350066 lt!350075))))

(assert (=> b!785123 (= lt!350075 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350077 lt!350068 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!785123 (= lt!350066 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350077 mask!3328) lt!350077 lt!350068 mask!3328))))

(assert (=> b!785123 (= lt!350077 (select (store (arr!20446 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!785123 (= lt!350068 (array!42724 (store (arr!20446 a!3186) i!1173 k0!2102) (size!20867 a!3186)))))

(declare-fun b!785124 () Bool)

(assert (=> b!785124 (= e!436507 e!436504)))

(declare-fun res!531534 () Bool)

(assert (=> b!785124 (=> (not res!531534) (not e!436504))))

(assert (=> b!785124 (= res!531534 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20446 a!3186) j!159) mask!3328) (select (arr!20446 a!3186) j!159) a!3186 mask!3328) lt!350070))))

(assert (=> b!785124 (= lt!350070 (Intermediate!8053 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!785125 () Bool)

(declare-fun res!531530 () Bool)

(assert (=> b!785125 (=> (not res!531530) (not e!436503))))

(assert (=> b!785125 (= res!531530 (validKeyInArray!0 (select (arr!20446 a!3186) j!159)))))

(declare-fun b!785126 () Bool)

(declare-fun res!531536 () Bool)

(assert (=> b!785126 (=> (not res!531536) (not e!436507))))

(assert (=> b!785126 (= res!531536 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20867 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20867 a!3186))))))

(declare-fun b!785127 () Bool)

(assert (=> b!785127 (= e!436501 true)))

(assert (=> b!785127 e!436506))

(declare-fun res!531538 () Bool)

(assert (=> b!785127 (=> (not res!531538) (not e!436506))))

(assert (=> b!785127 (= res!531538 (= lt!350071 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350072 () Unit!27122)

(assert (=> b!785127 (= lt!350072 e!436500)))

(declare-fun c!87198 () Bool)

(assert (=> b!785127 (= c!87198 (= lt!350071 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!67728 res!531542) b!785114))

(assert (= (and b!785114 res!531528) b!785125))

(assert (= (and b!785125 res!531530) b!785113))

(assert (= (and b!785113 res!531532) b!785112))

(assert (= (and b!785112 res!531539) b!785105))

(assert (= (and b!785105 res!531535) b!785111))

(assert (= (and b!785111 res!531529) b!785121))

(assert (= (and b!785121 res!531537) b!785126))

(assert (= (and b!785126 res!531536) b!785124))

(assert (= (and b!785124 res!531534) b!785110))

(assert (= (and b!785110 res!531531) b!785119))

(assert (= (and b!785119 c!87197) b!785120))

(assert (= (and b!785119 (not c!87197)) b!785109))

(assert (= (and b!785119 res!531527) b!785123))

(assert (= (and b!785123 res!531533) b!785115))

(assert (= (and b!785115 res!531540) b!785116))

(assert (= (and b!785115 (not res!531543)) b!785118))

(assert (= (and b!785118 (not res!531544)) b!785122))

(assert (= (and b!785122 (not res!531526)) b!785127))

(assert (= (and b!785127 c!87198) b!785106))

(assert (= (and b!785127 (not c!87198)) b!785108))

(assert (= (and b!785127 res!531538) b!785107))

(assert (= (and b!785107 res!531541) b!785117))

(declare-fun m!727301 () Bool)

(assert (=> b!785125 m!727301))

(assert (=> b!785125 m!727301))

(declare-fun m!727303 () Bool)

(assert (=> b!785125 m!727303))

(assert (=> b!785115 m!727301))

(assert (=> b!785115 m!727301))

(declare-fun m!727305 () Bool)

(assert (=> b!785115 m!727305))

(declare-fun m!727307 () Bool)

(assert (=> b!785115 m!727307))

(declare-fun m!727309 () Bool)

(assert (=> b!785115 m!727309))

(declare-fun m!727311 () Bool)

(assert (=> b!785111 m!727311))

(assert (=> b!785120 m!727301))

(assert (=> b!785120 m!727301))

(declare-fun m!727313 () Bool)

(assert (=> b!785120 m!727313))

(declare-fun m!727315 () Bool)

(assert (=> b!785110 m!727315))

(declare-fun m!727317 () Bool)

(assert (=> b!785112 m!727317))

(declare-fun m!727319 () Bool)

(assert (=> b!785113 m!727319))

(declare-fun m!727321 () Bool)

(assert (=> b!785122 m!727321))

(declare-fun m!727323 () Bool)

(assert (=> b!785122 m!727323))

(assert (=> b!785118 m!727301))

(assert (=> b!785118 m!727301))

(declare-fun m!727325 () Bool)

(assert (=> b!785118 m!727325))

(assert (=> b!785109 m!727301))

(assert (=> b!785109 m!727301))

(assert (=> b!785109 m!727325))

(declare-fun m!727327 () Bool)

(assert (=> b!785123 m!727327))

(declare-fun m!727329 () Bool)

(assert (=> b!785123 m!727329))

(declare-fun m!727331 () Bool)

(assert (=> b!785123 m!727331))

(assert (=> b!785123 m!727321))

(assert (=> b!785123 m!727327))

(declare-fun m!727333 () Bool)

(assert (=> b!785123 m!727333))

(assert (=> b!785116 m!727301))

(assert (=> b!785116 m!727301))

(declare-fun m!727335 () Bool)

(assert (=> b!785116 m!727335))

(assert (=> b!785124 m!727301))

(assert (=> b!785124 m!727301))

(declare-fun m!727337 () Bool)

(assert (=> b!785124 m!727337))

(assert (=> b!785124 m!727337))

(assert (=> b!785124 m!727301))

(declare-fun m!727339 () Bool)

(assert (=> b!785124 m!727339))

(declare-fun m!727341 () Bool)

(assert (=> start!67728 m!727341))

(declare-fun m!727343 () Bool)

(assert (=> start!67728 m!727343))

(declare-fun m!727345 () Bool)

(assert (=> b!785107 m!727345))

(declare-fun m!727347 () Bool)

(assert (=> b!785107 m!727347))

(declare-fun m!727349 () Bool)

(assert (=> b!785121 m!727349))

(declare-fun m!727351 () Bool)

(assert (=> b!785105 m!727351))

(check-sat (not b!785124) (not start!67728) (not b!785123) (not b!785105) (not b!785116) (not b!785107) (not b!785111) (not b!785118) (not b!785109) (not b!785120) (not b!785121) (not b!785125) (not b!785112) (not b!785115) (not b!785113))
(check-sat)
