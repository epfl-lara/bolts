; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65534 () Bool)

(assert start!65534)

(declare-fun res!504087 () Bool)

(declare-fun e!417271 () Bool)

(assert (=> start!65534 (=> (not res!504087) (not e!417271))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65534 (= res!504087 (validMask!0 mask!3328))))

(assert (=> start!65534 e!417271))

(assert (=> start!65534 true))

(declare-datatypes ((array!41660 0))(
  ( (array!41661 (arr!19940 (Array (_ BitVec 32) (_ BitVec 64))) (size!20361 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41660)

(declare-fun array_inv!15714 (array!41660) Bool)

(assert (=> start!65534 (array_inv!15714 a!3186)))

(declare-fun b!747339 () Bool)

(declare-fun res!504100 () Bool)

(declare-fun e!417279 () Bool)

(assert (=> b!747339 (=> (not res!504100) (not e!417279))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!747339 (= res!504100 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19940 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747340 () Bool)

(declare-fun e!417278 () Bool)

(assert (=> b!747340 (= e!417278 true)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!747340 (= (select (store (arr!19940 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!25590 0))(
  ( (Unit!25591) )
))
(declare-fun lt!332213 () Unit!25590)

(declare-fun e!417272 () Unit!25590)

(assert (=> b!747340 (= lt!332213 e!417272)))

(declare-fun c!82007 () Bool)

(assert (=> b!747340 (= c!82007 (= (select (store (arr!19940 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!747341 () Bool)

(declare-fun res!504096 () Bool)

(assert (=> b!747341 (=> (not res!504096) (not e!417271))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747341 (= res!504096 (validKeyInArray!0 (select (arr!19940 a!3186) j!159)))))

(declare-fun b!747342 () Bool)

(declare-fun e!417277 () Bool)

(assert (=> b!747342 (= e!417271 e!417277)))

(declare-fun res!504089 () Bool)

(assert (=> b!747342 (=> (not res!504089) (not e!417277))))

(declare-datatypes ((SeekEntryResult!7547 0))(
  ( (MissingZero!7547 (index!32555 (_ BitVec 32))) (Found!7547 (index!32556 (_ BitVec 32))) (Intermediate!7547 (undefined!8359 Bool) (index!32557 (_ BitVec 32)) (x!63522 (_ BitVec 32))) (Undefined!7547) (MissingVacant!7547 (index!32558 (_ BitVec 32))) )
))
(declare-fun lt!332212 () SeekEntryResult!7547)

(assert (=> b!747342 (= res!504089 (or (= lt!332212 (MissingZero!7547 i!1173)) (= lt!332212 (MissingVacant!7547 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41660 (_ BitVec 32)) SeekEntryResult!7547)

(assert (=> b!747342 (= lt!332212 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!747343 () Bool)

(assert (=> b!747343 (= e!417277 e!417279)))

(declare-fun res!504091 () Bool)

(assert (=> b!747343 (=> (not res!504091) (not e!417279))))

(declare-fun lt!332215 () SeekEntryResult!7547)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41660 (_ BitVec 32)) SeekEntryResult!7547)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747343 (= res!504091 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19940 a!3186) j!159) mask!3328) (select (arr!19940 a!3186) j!159) a!3186 mask!3328) lt!332215))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747343 (= lt!332215 (Intermediate!7547 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747344 () Bool)

(declare-fun e!417273 () Bool)

(assert (=> b!747344 (= e!417279 e!417273)))

(declare-fun res!504102 () Bool)

(assert (=> b!747344 (=> (not res!504102) (not e!417273))))

(declare-fun lt!332216 () SeekEntryResult!7547)

(declare-fun lt!332210 () SeekEntryResult!7547)

(assert (=> b!747344 (= res!504102 (= lt!332216 lt!332210))))

(declare-fun lt!332208 () array!41660)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!332207 () (_ BitVec 64))

(assert (=> b!747344 (= lt!332210 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332207 lt!332208 mask!3328))))

(assert (=> b!747344 (= lt!332216 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332207 mask!3328) lt!332207 lt!332208 mask!3328))))

(assert (=> b!747344 (= lt!332207 (select (store (arr!19940 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!747344 (= lt!332208 (array!41661 (store (arr!19940 a!3186) i!1173 k!2102) (size!20361 a!3186)))))

(declare-fun e!417276 () Bool)

(declare-fun b!747345 () Bool)

(assert (=> b!747345 (= e!417276 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19940 a!3186) j!159) a!3186 mask!3328) lt!332215))))

(declare-fun b!747346 () Bool)

(declare-fun res!504086 () Bool)

(assert (=> b!747346 (=> (not res!504086) (not e!417277))))

(assert (=> b!747346 (= res!504086 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20361 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20361 a!3186))))))

(declare-fun b!747347 () Bool)

(declare-fun Unit!25592 () Unit!25590)

(assert (=> b!747347 (= e!417272 Unit!25592)))

(assert (=> b!747347 false))

(declare-fun b!747348 () Bool)

(declare-fun res!504090 () Bool)

(assert (=> b!747348 (=> (not res!504090) (not e!417271))))

(assert (=> b!747348 (= res!504090 (and (= (size!20361 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20361 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20361 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!747349 () Bool)

(declare-fun res!504092 () Bool)

(assert (=> b!747349 (=> (not res!504092) (not e!417277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41660 (_ BitVec 32)) Bool)

(assert (=> b!747349 (= res!504092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747350 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41660 (_ BitVec 32)) SeekEntryResult!7547)

(assert (=> b!747350 (= e!417276 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19940 a!3186) j!159) a!3186 mask!3328) (Found!7547 j!159)))))

(declare-fun b!747351 () Bool)

(declare-fun Unit!25593 () Unit!25590)

(assert (=> b!747351 (= e!417272 Unit!25593)))

(declare-fun b!747352 () Bool)

(declare-fun res!504095 () Bool)

(assert (=> b!747352 (=> res!504095 e!417278)))

(assert (=> b!747352 (= res!504095 (= (select (store (arr!19940 a!3186) i!1173 k!2102) index!1321) lt!332207))))

(declare-fun b!747353 () Bool)

(declare-fun res!504099 () Bool)

(assert (=> b!747353 (=> res!504099 e!417278)))

(declare-fun lt!332209 () SeekEntryResult!7547)

(assert (=> b!747353 (= res!504099 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19940 a!3186) j!159) a!3186 mask!3328) lt!332209)))))

(declare-fun b!747354 () Bool)

(declare-fun res!504093 () Bool)

(assert (=> b!747354 (=> (not res!504093) (not e!417277))))

(declare-datatypes ((List!13995 0))(
  ( (Nil!13992) (Cons!13991 (h!15063 (_ BitVec 64)) (t!20318 List!13995)) )
))
(declare-fun arrayNoDuplicates!0 (array!41660 (_ BitVec 32) List!13995) Bool)

(assert (=> b!747354 (= res!504093 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13992))))

(declare-fun b!747355 () Bool)

(declare-fun res!504088 () Bool)

(assert (=> b!747355 (=> (not res!504088) (not e!417271))))

(assert (=> b!747355 (= res!504088 (validKeyInArray!0 k!2102))))

(declare-fun b!747356 () Bool)

(assert (=> b!747356 (= e!417273 (not e!417278))))

(declare-fun res!504097 () Bool)

(assert (=> b!747356 (=> res!504097 e!417278)))

(assert (=> b!747356 (= res!504097 (or (not (is-Intermediate!7547 lt!332210)) (bvslt x!1131 (x!63522 lt!332210)) (not (= x!1131 (x!63522 lt!332210))) (not (= index!1321 (index!32557 lt!332210)))))))

(declare-fun e!417274 () Bool)

(assert (=> b!747356 e!417274))

(declare-fun res!504094 () Bool)

(assert (=> b!747356 (=> (not res!504094) (not e!417274))))

(declare-fun lt!332214 () SeekEntryResult!7547)

(assert (=> b!747356 (= res!504094 (= lt!332214 lt!332209))))

(assert (=> b!747356 (= lt!332209 (Found!7547 j!159))))

(assert (=> b!747356 (= lt!332214 (seekEntryOrOpen!0 (select (arr!19940 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!747356 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332211 () Unit!25590)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41660 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25590)

(assert (=> b!747356 (= lt!332211 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747357 () Bool)

(declare-fun res!504098 () Bool)

(assert (=> b!747357 (=> (not res!504098) (not e!417279))))

(assert (=> b!747357 (= res!504098 e!417276)))

(declare-fun c!82008 () Bool)

(assert (=> b!747357 (= c!82008 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!747358 () Bool)

(declare-fun res!504101 () Bool)

(assert (=> b!747358 (=> (not res!504101) (not e!417271))))

(declare-fun arrayContainsKey!0 (array!41660 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747358 (= res!504101 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747359 () Bool)

(assert (=> b!747359 (= e!417274 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19940 a!3186) j!159) a!3186 mask!3328) lt!332209))))

(assert (= (and start!65534 res!504087) b!747348))

(assert (= (and b!747348 res!504090) b!747341))

(assert (= (and b!747341 res!504096) b!747355))

(assert (= (and b!747355 res!504088) b!747358))

(assert (= (and b!747358 res!504101) b!747342))

(assert (= (and b!747342 res!504089) b!747349))

(assert (= (and b!747349 res!504092) b!747354))

(assert (= (and b!747354 res!504093) b!747346))

(assert (= (and b!747346 res!504086) b!747343))

(assert (= (and b!747343 res!504091) b!747339))

(assert (= (and b!747339 res!504100) b!747357))

(assert (= (and b!747357 c!82008) b!747345))

(assert (= (and b!747357 (not c!82008)) b!747350))

(assert (= (and b!747357 res!504098) b!747344))

(assert (= (and b!747344 res!504102) b!747356))

(assert (= (and b!747356 res!504094) b!747359))

(assert (= (and b!747356 (not res!504097)) b!747353))

(assert (= (and b!747353 (not res!504099)) b!747352))

(assert (= (and b!747352 (not res!504095)) b!747340))

(assert (= (and b!747340 c!82007) b!747347))

(assert (= (and b!747340 (not c!82007)) b!747351))

(declare-fun m!697513 () Bool)

(assert (=> b!747352 m!697513))

(declare-fun m!697515 () Bool)

(assert (=> b!747352 m!697515))

(declare-fun m!697517 () Bool)

(assert (=> b!747339 m!697517))

(declare-fun m!697519 () Bool)

(assert (=> b!747344 m!697519))

(assert (=> b!747344 m!697519))

(declare-fun m!697521 () Bool)

(assert (=> b!747344 m!697521))

(assert (=> b!747344 m!697513))

(declare-fun m!697523 () Bool)

(assert (=> b!747344 m!697523))

(declare-fun m!697525 () Bool)

(assert (=> b!747344 m!697525))

(declare-fun m!697527 () Bool)

(assert (=> b!747355 m!697527))

(assert (=> b!747340 m!697513))

(assert (=> b!747340 m!697515))

(declare-fun m!697529 () Bool)

(assert (=> b!747353 m!697529))

(assert (=> b!747353 m!697529))

(declare-fun m!697531 () Bool)

(assert (=> b!747353 m!697531))

(declare-fun m!697533 () Bool)

(assert (=> b!747342 m!697533))

(declare-fun m!697535 () Bool)

(assert (=> start!65534 m!697535))

(declare-fun m!697537 () Bool)

(assert (=> start!65534 m!697537))

(declare-fun m!697539 () Bool)

(assert (=> b!747349 m!697539))

(assert (=> b!747341 m!697529))

(assert (=> b!747341 m!697529))

(declare-fun m!697541 () Bool)

(assert (=> b!747341 m!697541))

(assert (=> b!747345 m!697529))

(assert (=> b!747345 m!697529))

(declare-fun m!697543 () Bool)

(assert (=> b!747345 m!697543))

(declare-fun m!697545 () Bool)

(assert (=> b!747354 m!697545))

(assert (=> b!747350 m!697529))

(assert (=> b!747350 m!697529))

(assert (=> b!747350 m!697531))

(declare-fun m!697547 () Bool)

(assert (=> b!747358 m!697547))

(assert (=> b!747356 m!697529))

(assert (=> b!747356 m!697529))

(declare-fun m!697549 () Bool)

(assert (=> b!747356 m!697549))

(declare-fun m!697551 () Bool)

(assert (=> b!747356 m!697551))

(declare-fun m!697553 () Bool)

(assert (=> b!747356 m!697553))

(assert (=> b!747359 m!697529))

(assert (=> b!747359 m!697529))

(declare-fun m!697555 () Bool)

(assert (=> b!747359 m!697555))

(assert (=> b!747343 m!697529))

(assert (=> b!747343 m!697529))

(declare-fun m!697557 () Bool)

(assert (=> b!747343 m!697557))

(assert (=> b!747343 m!697557))

(assert (=> b!747343 m!697529))

(declare-fun m!697559 () Bool)

(assert (=> b!747343 m!697559))

(push 1)

(assert (not b!747353))

(assert (not b!747342))

(assert (not b!747341))

(assert (not b!747359))

(assert (not b!747356))

(assert (not b!747343))

(assert (not b!747355))

(assert (not b!747349))

(assert (not b!747350))

(assert (not b!747345))

(assert (not start!65534))

(assert (not b!747344))

(assert (not b!747354))

(assert (not b!747358))

(check-sat)

(pop 1)

(push 1)

(check-sat)

