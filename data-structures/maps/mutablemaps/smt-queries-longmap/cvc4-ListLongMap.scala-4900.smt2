; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67598 () Bool)

(assert start!67598)

(declare-fun b!782473 () Bool)

(declare-fun res!529608 () Bool)

(declare-fun e!435098 () Bool)

(assert (=> b!782473 (=> (not res!529608) (not e!435098))))

(declare-datatypes ((array!42656 0))(
  ( (array!42657 (arr!20414 (Array (_ BitVec 32) (_ BitVec 64))) (size!20835 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42656)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42656 (_ BitVec 32)) Bool)

(assert (=> b!782473 (= res!529608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!782474 () Bool)

(declare-fun res!529614 () Bool)

(declare-fun e!435106 () Bool)

(assert (=> b!782474 (=> res!529614 e!435106)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8021 0))(
  ( (MissingZero!8021 (index!34451 (_ BitVec 32))) (Found!8021 (index!34452 (_ BitVec 32))) (Intermediate!8021 (undefined!8833 Bool) (index!34453 (_ BitVec 32)) (x!65425 (_ BitVec 32))) (Undefined!8021) (MissingVacant!8021 (index!34454 (_ BitVec 32))) )
))
(declare-fun lt!348754 () SeekEntryResult!8021)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42656 (_ BitVec 32)) SeekEntryResult!8021)

(assert (=> b!782474 (= res!529614 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20414 a!3186) j!159) a!3186 mask!3328) lt!348754)))))

(declare-fun b!782475 () Bool)

(declare-fun res!529617 () Bool)

(assert (=> b!782475 (=> (not res!529617) (not e!435098))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!782475 (= res!529617 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20835 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20835 a!3186))))))

(declare-fun b!782476 () Bool)

(declare-fun e!435101 () Bool)

(assert (=> b!782476 (= e!435098 e!435101)))

(declare-fun res!529610 () Bool)

(assert (=> b!782476 (=> (not res!529610) (not e!435101))))

(declare-fun lt!348761 () SeekEntryResult!8021)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42656 (_ BitVec 32)) SeekEntryResult!8021)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!782476 (= res!529610 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20414 a!3186) j!159) mask!3328) (select (arr!20414 a!3186) j!159) a!3186 mask!3328) lt!348761))))

(assert (=> b!782476 (= lt!348761 (Intermediate!8021 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!782477 () Bool)

(declare-fun res!529615 () Bool)

(assert (=> b!782477 (=> (not res!529615) (not e!435101))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!782477 (= res!529615 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20414 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!782479 () Bool)

(declare-datatypes ((Unit!26994 0))(
  ( (Unit!26995) )
))
(declare-fun e!435099 () Unit!26994)

(declare-fun Unit!26996 () Unit!26994)

(assert (=> b!782479 (= e!435099 Unit!26996)))

(declare-fun b!782480 () Bool)

(declare-fun e!435105 () Bool)

(assert (=> b!782480 (= e!435101 e!435105)))

(declare-fun res!529620 () Bool)

(assert (=> b!782480 (=> (not res!529620) (not e!435105))))

(declare-fun lt!348758 () SeekEntryResult!8021)

(declare-fun lt!348755 () SeekEntryResult!8021)

(assert (=> b!782480 (= res!529620 (= lt!348758 lt!348755))))

(declare-fun lt!348762 () (_ BitVec 64))

(declare-fun lt!348757 () array!42656)

(assert (=> b!782480 (= lt!348755 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348762 lt!348757 mask!3328))))

(assert (=> b!782480 (= lt!348758 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348762 mask!3328) lt!348762 lt!348757 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!782480 (= lt!348762 (select (store (arr!20414 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!782480 (= lt!348757 (array!42657 (store (arr!20414 a!3186) i!1173 k!2102) (size!20835 a!3186)))))

(declare-fun e!435103 () Bool)

(declare-fun b!782481 () Bool)

(assert (=> b!782481 (= e!435103 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20414 a!3186) j!159) a!3186 mask!3328) lt!348761))))

(declare-fun b!782482 () Bool)

(declare-fun Unit!26997 () Unit!26994)

(assert (=> b!782482 (= e!435099 Unit!26997)))

(assert (=> b!782482 false))

(declare-fun b!782483 () Bool)

(declare-fun e!435102 () Bool)

(assert (=> b!782483 (= e!435106 e!435102)))

(declare-fun res!529618 () Bool)

(assert (=> b!782483 (=> res!529618 e!435102)))

(declare-fun lt!348756 () (_ BitVec 64))

(assert (=> b!782483 (= res!529618 (= lt!348756 lt!348762))))

(assert (=> b!782483 (= lt!348756 (select (store (arr!20414 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!782484 () Bool)

(declare-fun res!529605 () Bool)

(declare-fun e!435104 () Bool)

(assert (=> b!782484 (=> (not res!529605) (not e!435104))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!782484 (= res!529605 (validKeyInArray!0 (select (arr!20414 a!3186) j!159)))))

(declare-fun res!529606 () Bool)

(assert (=> start!67598 (=> (not res!529606) (not e!435104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67598 (= res!529606 (validMask!0 mask!3328))))

(assert (=> start!67598 e!435104))

(assert (=> start!67598 true))

(declare-fun array_inv!16188 (array!42656) Bool)

(assert (=> start!67598 (array_inv!16188 a!3186)))

(declare-fun b!782478 () Bool)

(declare-fun res!529607 () Bool)

(assert (=> b!782478 (=> (not res!529607) (not e!435098))))

(declare-datatypes ((List!14469 0))(
  ( (Nil!14466) (Cons!14465 (h!15585 (_ BitVec 64)) (t!20792 List!14469)) )
))
(declare-fun arrayNoDuplicates!0 (array!42656 (_ BitVec 32) List!14469) Bool)

(assert (=> b!782478 (= res!529607 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14466))))

(declare-fun b!782485 () Bool)

(assert (=> b!782485 (= e!435103 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20414 a!3186) j!159) a!3186 mask!3328) (Found!8021 j!159)))))

(declare-fun b!782486 () Bool)

(declare-fun res!529616 () Bool)

(assert (=> b!782486 (=> (not res!529616) (not e!435104))))

(assert (=> b!782486 (= res!529616 (and (= (size!20835 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20835 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20835 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!435100 () Bool)

(declare-fun b!782487 () Bool)

(assert (=> b!782487 (= e!435100 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20414 a!3186) j!159) a!3186 mask!3328) lt!348754))))

(declare-fun b!782488 () Bool)

(assert (=> b!782488 (= e!435105 (not e!435106))))

(declare-fun res!529611 () Bool)

(assert (=> b!782488 (=> res!529611 e!435106)))

(assert (=> b!782488 (= res!529611 (or (not (is-Intermediate!8021 lt!348755)) (bvslt x!1131 (x!65425 lt!348755)) (not (= x!1131 (x!65425 lt!348755))) (not (= index!1321 (index!34453 lt!348755)))))))

(assert (=> b!782488 e!435100))

(declare-fun res!529621 () Bool)

(assert (=> b!782488 (=> (not res!529621) (not e!435100))))

(declare-fun lt!348763 () SeekEntryResult!8021)

(assert (=> b!782488 (= res!529621 (= lt!348763 lt!348754))))

(assert (=> b!782488 (= lt!348754 (Found!8021 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42656 (_ BitVec 32)) SeekEntryResult!8021)

(assert (=> b!782488 (= lt!348763 (seekEntryOrOpen!0 (select (arr!20414 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!782488 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348753 () Unit!26994)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42656 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26994)

(assert (=> b!782488 (= lt!348753 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!782489 () Bool)

(assert (=> b!782489 (= e!435104 e!435098)))

(declare-fun res!529612 () Bool)

(assert (=> b!782489 (=> (not res!529612) (not e!435098))))

(declare-fun lt!348760 () SeekEntryResult!8021)

(assert (=> b!782489 (= res!529612 (or (= lt!348760 (MissingZero!8021 i!1173)) (= lt!348760 (MissingVacant!8021 i!1173))))))

(assert (=> b!782489 (= lt!348760 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!782490 () Bool)

(declare-fun res!529619 () Bool)

(assert (=> b!782490 (=> (not res!529619) (not e!435101))))

(assert (=> b!782490 (= res!529619 e!435103)))

(declare-fun c!86841 () Bool)

(assert (=> b!782490 (= c!86841 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!782491 () Bool)

(declare-fun res!529613 () Bool)

(assert (=> b!782491 (=> (not res!529613) (not e!435104))))

(declare-fun arrayContainsKey!0 (array!42656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!782491 (= res!529613 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!782492 () Bool)

(declare-fun res!529609 () Bool)

(assert (=> b!782492 (=> (not res!529609) (not e!435104))))

(assert (=> b!782492 (= res!529609 (validKeyInArray!0 k!2102))))

(declare-fun b!782493 () Bool)

(assert (=> b!782493 (= e!435102 (= (seekEntryOrOpen!0 lt!348762 lt!348757 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!348762 lt!348757 mask!3328)))))

(assert (=> b!782493 (= lt!348756 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348759 () Unit!26994)

(assert (=> b!782493 (= lt!348759 e!435099)))

(declare-fun c!86840 () Bool)

(assert (=> b!782493 (= c!86840 (= lt!348756 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!67598 res!529606) b!782486))

(assert (= (and b!782486 res!529616) b!782484))

(assert (= (and b!782484 res!529605) b!782492))

(assert (= (and b!782492 res!529609) b!782491))

(assert (= (and b!782491 res!529613) b!782489))

(assert (= (and b!782489 res!529612) b!782473))

(assert (= (and b!782473 res!529608) b!782478))

(assert (= (and b!782478 res!529607) b!782475))

(assert (= (and b!782475 res!529617) b!782476))

(assert (= (and b!782476 res!529610) b!782477))

(assert (= (and b!782477 res!529615) b!782490))

(assert (= (and b!782490 c!86841) b!782481))

(assert (= (and b!782490 (not c!86841)) b!782485))

(assert (= (and b!782490 res!529619) b!782480))

(assert (= (and b!782480 res!529620) b!782488))

(assert (= (and b!782488 res!529621) b!782487))

(assert (= (and b!782488 (not res!529611)) b!782474))

(assert (= (and b!782474 (not res!529614)) b!782483))

(assert (= (and b!782483 (not res!529618)) b!782493))

(assert (= (and b!782493 c!86840) b!782482))

(assert (= (and b!782493 (not c!86840)) b!782479))

(declare-fun m!725307 () Bool)

(assert (=> b!782481 m!725307))

(assert (=> b!782481 m!725307))

(declare-fun m!725309 () Bool)

(assert (=> b!782481 m!725309))

(declare-fun m!725311 () Bool)

(assert (=> b!782492 m!725311))

(declare-fun m!725313 () Bool)

(assert (=> b!782489 m!725313))

(assert (=> b!782484 m!725307))

(assert (=> b!782484 m!725307))

(declare-fun m!725315 () Bool)

(assert (=> b!782484 m!725315))

(declare-fun m!725317 () Bool)

(assert (=> b!782491 m!725317))

(assert (=> b!782488 m!725307))

(assert (=> b!782488 m!725307))

(declare-fun m!725319 () Bool)

(assert (=> b!782488 m!725319))

(declare-fun m!725321 () Bool)

(assert (=> b!782488 m!725321))

(declare-fun m!725323 () Bool)

(assert (=> b!782488 m!725323))

(assert (=> b!782474 m!725307))

(assert (=> b!782474 m!725307))

(declare-fun m!725325 () Bool)

(assert (=> b!782474 m!725325))

(assert (=> b!782487 m!725307))

(assert (=> b!782487 m!725307))

(declare-fun m!725327 () Bool)

(assert (=> b!782487 m!725327))

(assert (=> b!782476 m!725307))

(assert (=> b!782476 m!725307))

(declare-fun m!725329 () Bool)

(assert (=> b!782476 m!725329))

(assert (=> b!782476 m!725329))

(assert (=> b!782476 m!725307))

(declare-fun m!725331 () Bool)

(assert (=> b!782476 m!725331))

(declare-fun m!725333 () Bool)

(assert (=> b!782493 m!725333))

(declare-fun m!725335 () Bool)

(assert (=> b!782493 m!725335))

(declare-fun m!725337 () Bool)

(assert (=> b!782477 m!725337))

(declare-fun m!725339 () Bool)

(assert (=> b!782473 m!725339))

(assert (=> b!782485 m!725307))

(assert (=> b!782485 m!725307))

(assert (=> b!782485 m!725325))

(declare-fun m!725341 () Bool)

(assert (=> b!782483 m!725341))

(declare-fun m!725343 () Bool)

(assert (=> b!782483 m!725343))

(declare-fun m!725345 () Bool)

(assert (=> b!782478 m!725345))

(declare-fun m!725347 () Bool)

(assert (=> b!782480 m!725347))

(declare-fun m!725349 () Bool)

(assert (=> b!782480 m!725349))

(assert (=> b!782480 m!725347))

(assert (=> b!782480 m!725341))

(declare-fun m!725351 () Bool)

(assert (=> b!782480 m!725351))

(declare-fun m!725353 () Bool)

(assert (=> b!782480 m!725353))

(declare-fun m!725355 () Bool)

(assert (=> start!67598 m!725355))

(declare-fun m!725357 () Bool)

(assert (=> start!67598 m!725357))

(push 1)

(assert (not b!782474))

(assert (not b!782488))

(assert (not b!782473))

(assert (not b!782492))

(assert (not b!782491))

(assert (not b!782480))

(assert (not b!782476))

(assert (not b!782484))

(assert (not b!782487))

(assert (not b!782478))

(assert (not b!782493))

(assert (not b!782489))

(assert (not start!67598))

(assert (not b!782481))

(assert (not b!782485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!782572 () Bool)

(declare-fun e!435148 () Bool)

(declare-fun lt!348789 () SeekEntryResult!8021)

(assert (=> b!782572 (= e!435148 (bvsge (x!65425 lt!348789) #b01111111111111111111111111111110))))

(declare-fun d!102573 () Bool)

(assert (=> d!102573 e!435148))

(declare-fun c!86877 () Bool)

(assert (=> d!102573 (= c!86877 (and (is-Intermediate!8021 lt!348789) (undefined!8833 lt!348789)))))

(declare-fun e!435150 () SeekEntryResult!8021)

(assert (=> d!102573 (= lt!348789 e!435150)))

(declare-fun c!86875 () Bool)

(assert (=> d!102573 (= c!86875 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!348790 () (_ BitVec 64))

(assert (=> d!102573 (= lt!348790 (select (arr!20414 a!3186) (toIndex!0 (select (arr!20414 a!3186) j!159) mask!3328)))))

(assert (=> d!102573 (validMask!0 mask!3328)))

(assert (=> d!102573 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20414 a!3186) j!159) mask!3328) (select (arr!20414 a!3186) j!159) a!3186 mask!3328) lt!348789)))

(declare-fun e!435152 () SeekEntryResult!8021)

(declare-fun b!782573 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!782573 (= e!435152 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20414 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20414 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!782574 () Bool)

(declare-fun e!435149 () Bool)

(assert (=> b!782574 (= e!435148 e!435149)))

(declare-fun res!529634 () Bool)

(assert (=> b!782574 (= res!529634 (and (is-Intermediate!8021 lt!348789) (not (undefined!8833 lt!348789)) (bvslt (x!65425 lt!348789) #b01111111111111111111111111111110) (bvsge (x!65425 lt!348789) #b00000000000000000000000000000000) (bvsge (x!65425 lt!348789) #b00000000000000000000000000000000)))))

(assert (=> b!782574 (=> (not res!529634) (not e!435149))))

(declare-fun b!782575 () Bool)

(assert (=> b!782575 (= e!435150 e!435152)))

(declare-fun c!86876 () Bool)

(assert (=> b!782575 (= c!86876 (or (= lt!348790 (select (arr!20414 a!3186) j!159)) (= (bvadd lt!348790 lt!348790) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!782576 () Bool)

(assert (=> b!782576 (and (bvsge (index!34453 lt!348789) #b00000000000000000000000000000000) (bvslt (index!34453 lt!348789) (size!20835 a!3186)))))

(declare-fun res!529636 () Bool)

(assert (=> b!782576 (= res!529636 (= (select (arr!20414 a!3186) (index!34453 lt!348789)) (select (arr!20414 a!3186) j!159)))))

(declare-fun e!435151 () Bool)

(assert (=> b!782576 (=> res!529636 e!435151)))

(assert (=> b!782576 (= e!435149 e!435151)))

(declare-fun b!782577 () Bool)

(assert (=> b!782577 (= e!435152 (Intermediate!8021 false (toIndex!0 (select (arr!20414 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!782578 () Bool)

(assert (=> b!782578 (and (bvsge (index!34453 lt!348789) #b00000000000000000000000000000000) (bvslt (index!34453 lt!348789) (size!20835 a!3186)))))

(assert (=> b!782578 (= e!435151 (= (select (arr!20414 a!3186) (index!34453 lt!348789)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782579 () Bool)

(assert (=> b!782579 (= e!435150 (Intermediate!8021 true (toIndex!0 (select (arr!20414 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!782580 () Bool)

(assert (=> b!782580 (and (bvsge (index!34453 lt!348789) #b00000000000000000000000000000000) (bvslt (index!34453 lt!348789) (size!20835 a!3186)))))

(declare-fun res!529635 () Bool)

(assert (=> b!782580 (= res!529635 (= (select (arr!20414 a!3186) (index!34453 lt!348789)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782580 (=> res!529635 e!435151)))

(assert (= (and d!102573 c!86875) b!782579))

(assert (= (and d!102573 (not c!86875)) b!782575))

(assert (= (and b!782575 c!86876) b!782577))

(assert (= (and b!782575 (not c!86876)) b!782573))

(assert (= (and d!102573 c!86877) b!782572))

(assert (= (and d!102573 (not c!86877)) b!782574))

(assert (= (and b!782574 res!529634) b!782576))

(assert (= (and b!782576 (not res!529636)) b!782580))

(assert (= (and b!782580 (not res!529635)) b!782578))

(assert (=> d!102573 m!725329))

(declare-fun m!725391 () Bool)

(assert (=> d!102573 m!725391))

(assert (=> d!102573 m!725355))

(declare-fun m!725393 () Bool)

(assert (=> b!782580 m!725393))

(assert (=> b!782573 m!725329))

(declare-fun m!725395 () Bool)

(assert (=> b!782573 m!725395))

(assert (=> b!782573 m!725395))

(assert (=> b!782573 m!725307))

(declare-fun m!725397 () Bool)

(assert (=> b!782573 m!725397))

(assert (=> b!782578 m!725393))

(assert (=> b!782576 m!725393))

(assert (=> b!782476 d!102573))

(declare-fun d!102579 () Bool)

(declare-fun lt!348803 () (_ BitVec 32))

(declare-fun lt!348802 () (_ BitVec 32))

(assert (=> d!102579 (= lt!348803 (bvmul (bvxor lt!348802 (bvlshr lt!348802 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102579 (= lt!348802 ((_ extract 31 0) (bvand (bvxor (select (arr!20414 a!3186) j!159) (bvlshr (select (arr!20414 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102579 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!529640 (let ((h!15586 ((_ extract 31 0) (bvand (bvxor (select (arr!20414 a!3186) j!159) (bvlshr (select (arr!20414 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65430 (bvmul (bvxor h!15586 (bvlshr h!15586 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65430 (bvlshr x!65430 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!529640 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!529640 #b00000000000000000000000000000000))))))

(assert (=> d!102579 (= (toIndex!0 (select (arr!20414 a!3186) j!159) mask!3328) (bvand (bvxor lt!348803 (bvlshr lt!348803 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!782476 d!102579))

(declare-fun b!782660 () Bool)

(declare-fun e!435199 () SeekEntryResult!8021)

(assert (=> b!782660 (= e!435199 (MissingVacant!8021 resIntermediateIndex!5))))

(declare-fun d!102583 () Bool)

(declare-fun lt!348829 () SeekEntryResult!8021)

(assert (=> d!102583 (and (or (is-Undefined!8021 lt!348829) (not (is-Found!8021 lt!348829)) (and (bvsge (index!34452 lt!348829) #b00000000000000000000000000000000) (bvslt (index!34452 lt!348829) (size!20835 a!3186)))) (or (is-Undefined!8021 lt!348829) (is-Found!8021 lt!348829) (not (is-MissingVacant!8021 lt!348829)) (not (= (index!34454 lt!348829) resIntermediateIndex!5)) (and (bvsge (index!34454 lt!348829) #b00000000000000000000000000000000) (bvslt (index!34454 lt!348829) (size!20835 a!3186)))) (or (is-Undefined!8021 lt!348829) (ite (is-Found!8021 lt!348829) (= (select (arr!20414 a!3186) (index!34452 lt!348829)) (select (arr!20414 a!3186) j!159)) (and (is-MissingVacant!8021 lt!348829) (= (index!34454 lt!348829) resIntermediateIndex!5) (= (select (arr!20414 a!3186) (index!34454 lt!348829)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!435201 () SeekEntryResult!8021)

(assert (=> d!102583 (= lt!348829 e!435201)))

(declare-fun c!86907 () Bool)

(assert (=> d!102583 (= c!86907 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!348830 () (_ BitVec 64))

(assert (=> d!102583 (= lt!348830 (select (arr!20414 a!3186) resIntermediateIndex!5))))

(assert (=> d!102583 (validMask!0 mask!3328)))

(assert (=> d!102583 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20414 a!3186) j!159) a!3186 mask!3328) lt!348829)))

(declare-fun b!782661 () Bool)

(declare-fun c!86908 () Bool)

(assert (=> b!782661 (= c!86908 (= lt!348830 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!435200 () SeekEntryResult!8021)

(assert (=> b!782661 (= e!435200 e!435199)))

(declare-fun b!782662 () Bool)

(assert (=> b!782662 (= e!435200 (Found!8021 resIntermediateIndex!5))))

(declare-fun b!782663 () Bool)

(assert (=> b!782663 (= e!435201 e!435200)))

(declare-fun c!86906 () Bool)

(assert (=> b!782663 (= c!86906 (= lt!348830 (select (arr!20414 a!3186) j!159)))))

(declare-fun b!782664 () Bool)

(assert (=> b!782664 (= e!435201 Undefined!8021)))

(declare-fun b!782665 () Bool)

(assert (=> b!782665 (= e!435199 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20414 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!102583 c!86907) b!782664))

(assert (= (and d!102583 (not c!86907)) b!782663))

(assert (= (and b!782663 c!86906) b!782662))

(assert (= (and b!782663 (not c!86906)) b!782661))

(assert (= (and b!782661 c!86908) b!782660))

(assert (= (and b!782661 (not c!86908)) b!782665))

(declare-fun m!725449 () Bool)

(assert (=> d!102583 m!725449))

(declare-fun m!725451 () Bool)

(assert (=> d!102583 m!725451))

(assert (=> d!102583 m!725337))

(assert (=> d!102583 m!725355))

(declare-fun m!725453 () Bool)

(assert (=> b!782665 m!725453))

(assert (=> b!782665 m!725453))

(assert (=> b!782665 m!725307))

(declare-fun m!725455 () Bool)

(assert (=> b!782665 m!725455))

(assert (=> b!782487 d!102583))

(declare-fun b!782704 () Bool)

(declare-fun e!435227 () Bool)

(declare-fun e!435228 () Bool)

(assert (=> b!782704 (= e!435227 e!435228)))

(declare-fun c!86922 () Bool)

(assert (=> b!782704 (= c!86922 (validKeyInArray!0 (select (arr!20414 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!782705 () Bool)

(declare-fun call!35265 () Bool)

(assert (=> b!782705 (= e!435228 call!35265)))

(declare-fun b!782706 () Bool)

(assert (=> b!782706 (= e!435228 call!35265)))

(declare-fun b!782707 () Bool)

(declare-fun e!435230 () Bool)

(assert (=> b!782707 (= e!435230 e!435227)))

(declare-fun res!529675 () Bool)

(assert (=> b!782707 (=> (not res!529675) (not e!435227))))

(declare-fun e!435229 () Bool)

(assert (=> b!782707 (= res!529675 (not e!435229))))

(declare-fun res!529676 () Bool)

(assert (=> b!782707 (=> (not res!529676) (not e!435229))))

(assert (=> b!782707 (= res!529676 (validKeyInArray!0 (select (arr!20414 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!782708 () Bool)

(declare-fun contains!4109 (List!14469 (_ BitVec 64)) Bool)

(assert (=> b!782708 (= e!435229 (contains!4109 Nil!14466 (select (arr!20414 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35262 () Bool)

(assert (=> bm!35262 (= call!35265 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!86922 (Cons!14465 (select (arr!20414 a!3186) #b00000000000000000000000000000000) Nil!14466) Nil!14466)))))

(declare-fun d!102597 () Bool)

(declare-fun res!529674 () Bool)

(assert (=> d!102597 (=> res!529674 e!435230)))

(assert (=> d!102597 (= res!529674 (bvsge #b00000000000000000000000000000000 (size!20835 a!3186)))))

(assert (=> d!102597 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14466) e!435230)))

(assert (= (and d!102597 (not res!529674)) b!782707))

(assert (= (and b!782707 res!529676) b!782708))

(assert (= (and b!782707 res!529675) b!782704))

(assert (= (and b!782704 c!86922) b!782706))

(assert (= (and b!782704 (not c!86922)) b!782705))

(assert (= (or b!782706 b!782705) bm!35262))

(declare-fun m!725467 () Bool)

(assert (=> b!782704 m!725467))

(assert (=> b!782704 m!725467))

(declare-fun m!725469 () Bool)

(assert (=> b!782704 m!725469))

(assert (=> b!782707 m!725467))

(assert (=> b!782707 m!725467))

(assert (=> b!782707 m!725469))

(assert (=> b!782708 m!725467))

(assert (=> b!782708 m!725467))

(declare-fun m!725471 () Bool)

(assert (=> b!782708 m!725471))

(assert (=> bm!35262 m!725467))

(declare-fun m!725473 () Bool)

(assert (=> bm!35262 m!725473))

(assert (=> b!782478 d!102597))

(declare-fun lt!348871 () SeekEntryResult!8021)

(declare-fun b!782780 () Bool)

(declare-fun e!435273 () SeekEntryResult!8021)

(assert (=> b!782780 (= e!435273 (seekKeyOrZeroReturnVacant!0 (x!65425 lt!348871) (index!34453 lt!348871) (index!34453 lt!348871) k!2102 a!3186 mask!3328))))

(declare-fun b!782781 () Bool)

(declare-fun c!86952 () Bool)

(declare-fun lt!348870 () (_ BitVec 64))

(assert (=> b!782781 (= c!86952 (= lt!348870 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!435274 () SeekEntryResult!8021)

(assert (=> b!782781 (= e!435274 e!435273)))

(declare-fun b!782782 () Bool)

(declare-fun e!435272 () SeekEntryResult!8021)

(assert (=> b!782782 (= e!435272 e!435274)))

(assert (=> b!782782 (= lt!348870 (select (arr!20414 a!3186) (index!34453 lt!348871)))))

(declare-fun c!86953 () Bool)

(assert (=> b!782782 (= c!86953 (= lt!348870 k!2102))))

(declare-fun b!782783 () Bool)

(assert (=> b!782783 (= e!435274 (Found!8021 (index!34453 lt!348871)))))

(declare-fun b!782784 () Bool)

(assert (=> b!782784 (= e!435272 Undefined!8021)))

(declare-fun d!102603 () Bool)

(declare-fun lt!348869 () SeekEntryResult!8021)

(assert (=> d!102603 (and (or (is-Undefined!8021 lt!348869) (not (is-Found!8021 lt!348869)) (and (bvsge (index!34452 lt!348869) #b00000000000000000000000000000000) (bvslt (index!34452 lt!348869) (size!20835 a!3186)))) (or (is-Undefined!8021 lt!348869) (is-Found!8021 lt!348869) (not (is-MissingZero!8021 lt!348869)) (and (bvsge (index!34451 lt!348869) #b00000000000000000000000000000000) (bvslt (index!34451 lt!348869) (size!20835 a!3186)))) (or (is-Undefined!8021 lt!348869) (is-Found!8021 lt!348869) (is-MissingZero!8021 lt!348869) (not (is-MissingVacant!8021 lt!348869)) (and (bvsge (index!34454 lt!348869) #b00000000000000000000000000000000) (bvslt (index!34454 lt!348869) (size!20835 a!3186)))) (or (is-Undefined!8021 lt!348869) (ite (is-Found!8021 lt!348869) (= (select (arr!20414 a!3186) (index!34452 lt!348869)) k!2102) (ite (is-MissingZero!8021 lt!348869) (= (select (arr!20414 a!3186) (index!34451 lt!348869)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8021 lt!348869) (= (select (arr!20414 a!3186) (index!34454 lt!348869)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102603 (= lt!348869 e!435272)))

(declare-fun c!86951 () Bool)

(assert (=> d!102603 (= c!86951 (and (is-Intermediate!8021 lt!348871) (undefined!8833 lt!348871)))))

(assert (=> d!102603 (= lt!348871 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!102603 (validMask!0 mask!3328)))

(assert (=> d!102603 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!348869)))

(declare-fun b!782785 () Bool)

(assert (=> b!782785 (= e!435273 (MissingZero!8021 (index!34453 lt!348871)))))

(assert (= (and d!102603 c!86951) b!782784))

(assert (= (and d!102603 (not c!86951)) b!782782))

(assert (= (and b!782782 c!86953) b!782783))

(assert (= (and b!782782 (not c!86953)) b!782781))

(assert (= (and b!782781 c!86952) b!782785))

(assert (= (and b!782781 (not c!86952)) b!782780))

(declare-fun m!725519 () Bool)

(assert (=> b!782780 m!725519))

(declare-fun m!725521 () Bool)

(assert (=> b!782782 m!725521))

(assert (=> d!102603 m!725355))

(declare-fun m!725523 () Bool)

(assert (=> d!102603 m!725523))

(declare-fun m!725525 () Bool)

(assert (=> d!102603 m!725525))

(declare-fun m!725527 () Bool)

(assert (=> d!102603 m!725527))

(declare-fun m!725529 () Bool)

(assert (=> d!102603 m!725529))

(assert (=> d!102603 m!725525))

(declare-fun m!725531 () Bool)

(assert (=> d!102603 m!725531))

(assert (=> b!782489 d!102603))

(declare-fun b!782786 () Bool)

(declare-fun e!435276 () SeekEntryResult!8021)

(declare-fun lt!348874 () SeekEntryResult!8021)

(assert (=> b!782786 (= e!435276 (seekKeyOrZeroReturnVacant!0 (x!65425 lt!348874) (index!34453 lt!348874) (index!34453 lt!348874) (select (arr!20414 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!782787 () Bool)

(declare-fun c!86955 () Bool)

(declare-fun lt!348873 () (_ BitVec 64))

(assert (=> b!782787 (= c!86955 (= lt!348873 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!435277 () SeekEntryResult!8021)

(assert (=> b!782787 (= e!435277 e!435276)))

(declare-fun b!782788 () Bool)

(declare-fun e!435275 () SeekEntryResult!8021)

(assert (=> b!782788 (= e!435275 e!435277)))

(assert (=> b!782788 (= lt!348873 (select (arr!20414 a!3186) (index!34453 lt!348874)))))

(declare-fun c!86956 () Bool)

(assert (=> b!782788 (= c!86956 (= lt!348873 (select (arr!20414 a!3186) j!159)))))

(declare-fun b!782789 () Bool)

(assert (=> b!782789 (= e!435277 (Found!8021 (index!34453 lt!348874)))))

(declare-fun b!782790 () Bool)

(assert (=> b!782790 (= e!435275 Undefined!8021)))

(declare-fun d!102625 () Bool)

(declare-fun lt!348872 () SeekEntryResult!8021)

(assert (=> d!102625 (and (or (is-Undefined!8021 lt!348872) (not (is-Found!8021 lt!348872)) (and (bvsge (index!34452 lt!348872) #b00000000000000000000000000000000) (bvslt (index!34452 lt!348872) (size!20835 a!3186)))) (or (is-Undefined!8021 lt!348872) (is-Found!8021 lt!348872) (not (is-MissingZero!8021 lt!348872)) (and (bvsge (index!34451 lt!348872) #b00000000000000000000000000000000) (bvslt (index!34451 lt!348872) (size!20835 a!3186)))) (or (is-Undefined!8021 lt!348872) (is-Found!8021 lt!348872) (is-MissingZero!8021 lt!348872) (not (is-MissingVacant!8021 lt!348872)) (and (bvsge (index!34454 lt!348872) #b00000000000000000000000000000000) (bvslt (index!34454 lt!348872) (size!20835 a!3186)))) (or (is-Undefined!8021 lt!348872) (ite (is-Found!8021 lt!348872) (= (select (arr!20414 a!3186) (index!34452 lt!348872)) (select (arr!20414 a!3186) j!159)) (ite (is-MissingZero!8021 lt!348872) (= (select (arr!20414 a!3186) (index!34451 lt!348872)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8021 lt!348872) (= (select (arr!20414 a!3186) (index!34454 lt!348872)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102625 (= lt!348872 e!435275)))

(declare-fun c!86954 () Bool)

(assert (=> d!102625 (= c!86954 (and (is-Intermediate!8021 lt!348874) (undefined!8833 lt!348874)))))

(assert (=> d!102625 (= lt!348874 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20414 a!3186) j!159) mask!3328) (select (arr!20414 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102625 (validMask!0 mask!3328)))

(assert (=> d!102625 (= (seekEntryOrOpen!0 (select (arr!20414 a!3186) j!159) a!3186 mask!3328) lt!348872)))

(declare-fun b!782791 () Bool)

(assert (=> b!782791 (= e!435276 (MissingZero!8021 (index!34453 lt!348874)))))

(assert (= (and d!102625 c!86954) b!782790))

(assert (= (and d!102625 (not c!86954)) b!782788))

(assert (= (and b!782788 c!86956) b!782789))

(assert (= (and b!782788 (not c!86956)) b!782787))

(assert (= (and b!782787 c!86955) b!782791))

(assert (= (and b!782787 (not c!86955)) b!782786))

(assert (=> b!782786 m!725307))

(declare-fun m!725533 () Bool)

(assert (=> b!782786 m!725533))

(declare-fun m!725535 () Bool)

(assert (=> b!782788 m!725535))

(assert (=> d!102625 m!725355))

(declare-fun m!725537 () Bool)

(assert (=> d!102625 m!725537))

(assert (=> d!102625 m!725329))

(assert (=> d!102625 m!725307))

(assert (=> d!102625 m!725331))

(declare-fun m!725539 () Bool)

(assert (=> d!102625 m!725539))

(assert (=> d!102625 m!725307))

(assert (=> d!102625 m!725329))

(declare-fun m!725541 () Bool)

(assert (=> d!102625 m!725541))

(assert (=> b!782488 d!102625))

(declare-fun call!35269 () Bool)

(declare-fun bm!35266 () Bool)

(assert (=> bm!35266 (= call!35269 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!102627 () Bool)

(declare-fun res!529701 () Bool)

(declare-fun e!435289 () Bool)

(assert (=> d!102627 (=> res!529701 e!435289)))

(assert (=> d!102627 (= res!529701 (bvsge j!159 (size!20835 a!3186)))))

(assert (=> d!102627 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!435289)))

(declare-fun b!782809 () Bool)

(declare-fun e!435291 () Bool)

(assert (=> b!782809 (= e!435291 call!35269)))

(declare-fun b!782810 () Bool)

(declare-fun e!435290 () Bool)

(assert (=> b!782810 (= e!435290 e!435291)))

(declare-fun lt!348883 () (_ BitVec 64))

(assert (=> b!782810 (= lt!348883 (select (arr!20414 a!3186) j!159))))

(declare-fun lt!348885 () Unit!26994)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42656 (_ BitVec 64) (_ BitVec 32)) Unit!26994)

(assert (=> b!782810 (= lt!348885 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!348883 j!159))))

(assert (=> b!782810 (arrayContainsKey!0 a!3186 lt!348883 #b00000000000000000000000000000000)))

(declare-fun lt!348884 () Unit!26994)

(assert (=> b!782810 (= lt!348884 lt!348885)))

(declare-fun res!529700 () Bool)

(assert (=> b!782810 (= res!529700 (= (seekEntryOrOpen!0 (select (arr!20414 a!3186) j!159) a!3186 mask!3328) (Found!8021 j!159)))))

(assert (=> b!782810 (=> (not res!529700) (not e!435291))))

(declare-fun b!782811 () Bool)

(assert (=> b!782811 (= e!435289 e!435290)))

(declare-fun c!86962 () Bool)

(assert (=> b!782811 (= c!86962 (validKeyInArray!0 (select (arr!20414 a!3186) j!159)))))

(declare-fun b!782812 () Bool)

(assert (=> b!782812 (= e!435290 call!35269)))

(assert (= (and d!102627 (not res!529701)) b!782811))

(assert (= (and b!782811 c!86962) b!782810))

(assert (= (and b!782811 (not c!86962)) b!782812))

(assert (= (and b!782810 res!529700) b!782809))

(assert (= (or b!782809 b!782812) bm!35266))

(declare-fun m!725551 () Bool)

(assert (=> bm!35266 m!725551))

(assert (=> b!782810 m!725307))

(declare-fun m!725553 () Bool)

(assert (=> b!782810 m!725553))

(declare-fun m!725555 () Bool)

(assert (=> b!782810 m!725555))

(assert (=> b!782810 m!725307))

(assert (=> b!782810 m!725319))

(assert (=> b!782811 m!725307))

(assert (=> b!782811 m!725307))

(assert (=> b!782811 m!725315))

(assert (=> b!782488 d!102627))

(declare-fun d!102635 () Bool)

(assert (=> d!102635 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348899 () Unit!26994)

(declare-fun choose!38 (array!42656 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26994)

(assert (=> d!102635 (= lt!348899 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102635 (validMask!0 mask!3328)))

(assert (=> d!102635 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!348899)))

(declare-fun bs!21746 () Bool)

(assert (= bs!21746 d!102635))

(assert (=> bs!21746 m!725321))

(declare-fun m!725579 () Bool)

(assert (=> bs!21746 m!725579))

(assert (=> bs!21746 m!725355))

(assert (=> b!782488 d!102635))

(declare-fun d!102643 () Bool)

(assert (=> d!102643 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67598 d!102643))

(declare-fun d!102649 () Bool)

(assert (=> d!102649 (= (array_inv!16188 a!3186) (bvsge (size!20835 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67598 d!102649))

(declare-fun b!782846 () Bool)

(declare-fun e!435316 () Bool)

(declare-fun lt!348900 () SeekEntryResult!8021)

(assert (=> b!782846 (= e!435316 (bvsge (x!65425 lt!348900) #b01111111111111111111111111111110))))

(declare-fun d!102651 () Bool)

(assert (=> d!102651 e!435316))

(declare-fun c!86974 () Bool)

(assert (=> d!102651 (= c!86974 (and (is-Intermediate!8021 lt!348900) (undefined!8833 lt!348900)))))

(declare-fun e!435318 () SeekEntryResult!8021)

(assert (=> d!102651 (= lt!348900 e!435318)))

(declare-fun c!86972 () Bool)

(assert (=> d!102651 (= c!86972 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!348901 () (_ BitVec 64))

(assert (=> d!102651 (= lt!348901 (select (arr!20414 a!3186) index!1321))))

(assert (=> d!102651 (validMask!0 mask!3328)))

(assert (=> d!102651 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20414 a!3186) j!159) a!3186 mask!3328) lt!348900)))

(declare-fun e!435320 () SeekEntryResult!8021)

(declare-fun b!782847 () Bool)

(assert (=> b!782847 (= e!435320 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20414 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!782848 () Bool)

(declare-fun e!435317 () Bool)

(assert (=> b!782848 (= e!435316 e!435317)))

(declare-fun res!529717 () Bool)

(assert (=> b!782848 (= res!529717 (and (is-Intermediate!8021 lt!348900) (not (undefined!8833 lt!348900)) (bvslt (x!65425 lt!348900) #b01111111111111111111111111111110) (bvsge (x!65425 lt!348900) #b00000000000000000000000000000000) (bvsge (x!65425 lt!348900) x!1131)))))

(assert (=> b!782848 (=> (not res!529717) (not e!435317))))

(declare-fun b!782849 () Bool)

(assert (=> b!782849 (= e!435318 e!435320)))

(declare-fun c!86973 () Bool)

(assert (=> b!782849 (= c!86973 (or (= lt!348901 (select (arr!20414 a!3186) j!159)) (= (bvadd lt!348901 lt!348901) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!782850 () Bool)

(assert (=> b!782850 (and (bvsge (index!34453 lt!348900) #b00000000000000000000000000000000) (bvslt (index!34453 lt!348900) (size!20835 a!3186)))))

(declare-fun res!529719 () Bool)

(assert (=> b!782850 (= res!529719 (= (select (arr!20414 a!3186) (index!34453 lt!348900)) (select (arr!20414 a!3186) j!159)))))

(declare-fun e!435319 () Bool)

(assert (=> b!782850 (=> res!529719 e!435319)))

(assert (=> b!782850 (= e!435317 e!435319)))

(declare-fun b!782851 () Bool)

(assert (=> b!782851 (= e!435320 (Intermediate!8021 false index!1321 x!1131))))

(declare-fun b!782852 () Bool)

(assert (=> b!782852 (and (bvsge (index!34453 lt!348900) #b00000000000000000000000000000000) (bvslt (index!34453 lt!348900) (size!20835 a!3186)))))

(assert (=> b!782852 (= e!435319 (= (select (arr!20414 a!3186) (index!34453 lt!348900)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782853 () Bool)

(assert (=> b!782853 (= e!435318 (Intermediate!8021 true index!1321 x!1131))))

(declare-fun b!782854 () Bool)

(assert (=> b!782854 (and (bvsge (index!34453 lt!348900) #b00000000000000000000000000000000) (bvslt (index!34453 lt!348900) (size!20835 a!3186)))))

(declare-fun res!529718 () Bool)

(assert (=> b!782854 (= res!529718 (= (select (arr!20414 a!3186) (index!34453 lt!348900)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782854 (=> res!529718 e!435319)))

(assert (= (and d!102651 c!86972) b!782853))

(assert (= (and d!102651 (not c!86972)) b!782849))

(assert (= (and b!782849 c!86973) b!782851))

(assert (= (and b!782849 (not c!86973)) b!782847))

(assert (= (and d!102651 c!86974) b!782846))

(assert (= (and d!102651 (not c!86974)) b!782848))

(assert (= (and b!782848 res!529717) b!782850))

(assert (= (and b!782850 (not res!529719)) b!782854))

(assert (= (and b!782854 (not res!529718)) b!782852))

(declare-fun m!725591 () Bool)

(assert (=> d!102651 m!725591))

(assert (=> d!102651 m!725355))

(declare-fun m!725593 () Bool)

(assert (=> b!782854 m!725593))

(declare-fun m!725595 () Bool)

(assert (=> b!782847 m!725595))

(assert (=> b!782847 m!725595))

(assert (=> b!782847 m!725307))

(declare-fun m!725597 () Bool)

(assert (=> b!782847 m!725597))

(assert (=> b!782852 m!725593))

(assert (=> b!782850 m!725593))

(assert (=> b!782481 d!102651))

(declare-fun b!782855 () Bool)

(declare-fun e!435321 () Bool)

(declare-fun lt!348902 () SeekEntryResult!8021)

(assert (=> b!782855 (= e!435321 (bvsge (x!65425 lt!348902) #b01111111111111111111111111111110))))

(declare-fun d!102653 () Bool)

(assert (=> d!102653 e!435321))

(declare-fun c!86977 () Bool)

(assert (=> d!102653 (= c!86977 (and (is-Intermediate!8021 lt!348902) (undefined!8833 lt!348902)))))

(declare-fun e!435323 () SeekEntryResult!8021)

(assert (=> d!102653 (= lt!348902 e!435323)))

(declare-fun c!86975 () Bool)

(assert (=> d!102653 (= c!86975 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!348903 () (_ BitVec 64))

(assert (=> d!102653 (= lt!348903 (select (arr!20414 lt!348757) index!1321))))

(assert (=> d!102653 (validMask!0 mask!3328)))

(assert (=> d!102653 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348762 lt!348757 mask!3328) lt!348902)))

(declare-fun e!435325 () SeekEntryResult!8021)

(declare-fun b!782856 () Bool)

(assert (=> b!782856 (= e!435325 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!348762 lt!348757 mask!3328))))

(declare-fun b!782857 () Bool)

(declare-fun e!435322 () Bool)

(assert (=> b!782857 (= e!435321 e!435322)))

(declare-fun res!529720 () Bool)

(assert (=> b!782857 (= res!529720 (and (is-Intermediate!8021 lt!348902) (not (undefined!8833 lt!348902)) (bvslt (x!65425 lt!348902) #b01111111111111111111111111111110) (bvsge (x!65425 lt!348902) #b00000000000000000000000000000000) (bvsge (x!65425 lt!348902) x!1131)))))

(assert (=> b!782857 (=> (not res!529720) (not e!435322))))

(declare-fun b!782858 () Bool)

(assert (=> b!782858 (= e!435323 e!435325)))

(declare-fun c!86976 () Bool)

(assert (=> b!782858 (= c!86976 (or (= lt!348903 lt!348762) (= (bvadd lt!348903 lt!348903) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!782859 () Bool)

(assert (=> b!782859 (and (bvsge (index!34453 lt!348902) #b00000000000000000000000000000000) (bvslt (index!34453 lt!348902) (size!20835 lt!348757)))))

(declare-fun res!529722 () Bool)

(assert (=> b!782859 (= res!529722 (= (select (arr!20414 lt!348757) (index!34453 lt!348902)) lt!348762))))

(declare-fun e!435324 () Bool)

(assert (=> b!782859 (=> res!529722 e!435324)))

(assert (=> b!782859 (= e!435322 e!435324)))

(declare-fun b!782860 () Bool)

(assert (=> b!782860 (= e!435325 (Intermediate!8021 false index!1321 x!1131))))

(declare-fun b!782861 () Bool)

(assert (=> b!782861 (and (bvsge (index!34453 lt!348902) #b00000000000000000000000000000000) (bvslt (index!34453 lt!348902) (size!20835 lt!348757)))))

(assert (=> b!782861 (= e!435324 (= (select (arr!20414 lt!348757) (index!34453 lt!348902)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782862 () Bool)

(assert (=> b!782862 (= e!435323 (Intermediate!8021 true index!1321 x!1131))))

(declare-fun b!782863 () Bool)

(assert (=> b!782863 (and (bvsge (index!34453 lt!348902) #b00000000000000000000000000000000) (bvslt (index!34453 lt!348902) (size!20835 lt!348757)))))

(declare-fun res!529721 () Bool)

(assert (=> b!782863 (= res!529721 (= (select (arr!20414 lt!348757) (index!34453 lt!348902)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782863 (=> res!529721 e!435324)))

(assert (= (and d!102653 c!86975) b!782862))

(assert (= (and d!102653 (not c!86975)) b!782858))

(assert (= (and b!782858 c!86976) b!782860))

(assert (= (and b!782858 (not c!86976)) b!782856))

(assert (= (and d!102653 c!86977) b!782855))

(assert (= (and d!102653 (not c!86977)) b!782857))

(assert (= (and b!782857 res!529720) b!782859))

(assert (= (and b!782859 (not res!529722)) b!782863))

(assert (= (and b!782863 (not res!529721)) b!782861))

(declare-fun m!725599 () Bool)

(assert (=> d!102653 m!725599))

(assert (=> d!102653 m!725355))

(declare-fun m!725601 () Bool)

(assert (=> b!782863 m!725601))

(assert (=> b!782856 m!725595))

(assert (=> b!782856 m!725595))

(declare-fun m!725603 () Bool)

(assert (=> b!782856 m!725603))

(assert (=> b!782861 m!725601))

(assert (=> b!782859 m!725601))

(assert (=> b!782480 d!102653))

(declare-fun b!782864 () Bool)

(declare-fun e!435326 () Bool)

(declare-fun lt!348904 () SeekEntryResult!8021)

(assert (=> b!782864 (= e!435326 (bvsge (x!65425 lt!348904) #b01111111111111111111111111111110))))

(declare-fun d!102655 () Bool)

(assert (=> d!102655 e!435326))

(declare-fun c!86980 () Bool)

(assert (=> d!102655 (= c!86980 (and (is-Intermediate!8021 lt!348904) (undefined!8833 lt!348904)))))

(declare-fun e!435328 () SeekEntryResult!8021)

(assert (=> d!102655 (= lt!348904 e!435328)))

(declare-fun c!86978 () Bool)

(assert (=> d!102655 (= c!86978 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!348905 () (_ BitVec 64))

(assert (=> d!102655 (= lt!348905 (select (arr!20414 lt!348757) (toIndex!0 lt!348762 mask!3328)))))

(assert (=> d!102655 (validMask!0 mask!3328)))

(assert (=> d!102655 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348762 mask!3328) lt!348762 lt!348757 mask!3328) lt!348904)))

(declare-fun e!435330 () SeekEntryResult!8021)

(declare-fun b!782865 () Bool)

(assert (=> b!782865 (= e!435330 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!348762 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!348762 lt!348757 mask!3328))))

