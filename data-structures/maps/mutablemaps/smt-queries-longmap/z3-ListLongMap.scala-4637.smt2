; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64542 () Bool)

(assert start!64542)

(declare-fun b!726316 () Bool)

(declare-fun e!406685 () Bool)

(declare-fun e!406683 () Bool)

(assert (=> b!726316 (= e!406685 e!406683)))

(declare-fun res!487441 () Bool)

(assert (=> b!726316 (=> (not res!487441) (not e!406683))))

(declare-datatypes ((SeekEntryResult!7231 0))(
  ( (MissingZero!7231 (index!31291 (_ BitVec 32))) (Found!7231 (index!31292 (_ BitVec 32))) (Intermediate!7231 (undefined!8043 Bool) (index!31293 (_ BitVec 32)) (x!62306 (_ BitVec 32))) (Undefined!7231) (MissingVacant!7231 (index!31294 (_ BitVec 32))) )
))
(declare-fun lt!321687 () SeekEntryResult!7231)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726316 (= res!487441 (or (= lt!321687 (MissingZero!7231 i!1173)) (= lt!321687 (MissingVacant!7231 i!1173))))))

(declare-datatypes ((array!41013 0))(
  ( (array!41014 (arr!19624 (Array (_ BitVec 32) (_ BitVec 64))) (size!20045 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41013)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41013 (_ BitVec 32)) SeekEntryResult!7231)

(assert (=> b!726316 (= lt!321687 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!726317 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!406687 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41013 (_ BitVec 32)) SeekEntryResult!7231)

(assert (=> b!726317 (= e!406687 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19624 a!3186) j!159) a!3186 mask!3328) (Found!7231 j!159)))))

(declare-fun b!726318 () Bool)

(declare-fun res!487451 () Bool)

(assert (=> b!726318 (=> (not res!487451) (not e!406683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41013 (_ BitVec 32)) Bool)

(assert (=> b!726318 (= res!487451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726319 () Bool)

(declare-fun e!406682 () Bool)

(declare-fun e!406684 () Bool)

(assert (=> b!726319 (= e!406682 e!406684)))

(declare-fun res!487450 () Bool)

(assert (=> b!726319 (=> (not res!487450) (not e!406684))))

(declare-fun lt!321691 () SeekEntryResult!7231)

(declare-fun lt!321685 () SeekEntryResult!7231)

(assert (=> b!726319 (= res!487450 (= lt!321691 lt!321685))))

(declare-fun lt!321690 () (_ BitVec 64))

(declare-fun lt!321689 () array!41013)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41013 (_ BitVec 32)) SeekEntryResult!7231)

(assert (=> b!726319 (= lt!321685 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321690 lt!321689 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726319 (= lt!321691 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321690 mask!3328) lt!321690 lt!321689 mask!3328))))

(assert (=> b!726319 (= lt!321690 (select (store (arr!19624 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!726319 (= lt!321689 (array!41014 (store (arr!19624 a!3186) i!1173 k0!2102) (size!20045 a!3186)))))

(declare-fun res!487440 () Bool)

(assert (=> start!64542 (=> (not res!487440) (not e!406685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64542 (= res!487440 (validMask!0 mask!3328))))

(assert (=> start!64542 e!406685))

(assert (=> start!64542 true))

(declare-fun array_inv!15398 (array!41013) Bool)

(assert (=> start!64542 (array_inv!15398 a!3186)))

(declare-fun b!726320 () Bool)

(declare-fun res!487448 () Bool)

(assert (=> b!726320 (=> (not res!487448) (not e!406685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726320 (= res!487448 (validKeyInArray!0 k0!2102))))

(declare-fun lt!321688 () SeekEntryResult!7231)

(declare-fun b!726321 () Bool)

(assert (=> b!726321 (= e!406687 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19624 a!3186) j!159) a!3186 mask!3328) lt!321688))))

(declare-fun e!406686 () Bool)

(declare-fun b!726322 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!321692 () SeekEntryResult!7231)

(assert (=> b!726322 (= e!406686 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19624 a!3186) j!159) a!3186 mask!3328) lt!321692))))

(declare-fun b!726323 () Bool)

(declare-fun e!406688 () Bool)

(assert (=> b!726323 (= e!406688 e!406686)))

(declare-fun res!487447 () Bool)

(assert (=> b!726323 (=> (not res!487447) (not e!406686))))

(assert (=> b!726323 (= res!487447 (= (seekEntryOrOpen!0 (select (arr!19624 a!3186) j!159) a!3186 mask!3328) lt!321692))))

(assert (=> b!726323 (= lt!321692 (Found!7231 j!159))))

(declare-fun b!726324 () Bool)

(declare-fun res!487438 () Bool)

(assert (=> b!726324 (=> (not res!487438) (not e!406683))))

(assert (=> b!726324 (= res!487438 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20045 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20045 a!3186))))))

(declare-fun b!726325 () Bool)

(declare-fun res!487443 () Bool)

(assert (=> b!726325 (=> (not res!487443) (not e!406682))))

(assert (=> b!726325 (= res!487443 e!406687)))

(declare-fun c!79812 () Bool)

(assert (=> b!726325 (= c!79812 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726326 () Bool)

(declare-fun res!487449 () Bool)

(assert (=> b!726326 (=> (not res!487449) (not e!406683))))

(declare-datatypes ((List!13679 0))(
  ( (Nil!13676) (Cons!13675 (h!14732 (_ BitVec 64)) (t!20002 List!13679)) )
))
(declare-fun arrayNoDuplicates!0 (array!41013 (_ BitVec 32) List!13679) Bool)

(assert (=> b!726326 (= res!487449 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13676))))

(declare-fun b!726327 () Bool)

(declare-fun res!487439 () Bool)

(assert (=> b!726327 (=> (not res!487439) (not e!406685))))

(declare-fun arrayContainsKey!0 (array!41013 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726327 (= res!487439 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!726328 () Bool)

(declare-fun res!487445 () Bool)

(assert (=> b!726328 (=> (not res!487445) (not e!406685))))

(assert (=> b!726328 (= res!487445 (and (= (size!20045 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20045 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20045 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!726329 () Bool)

(declare-fun res!487446 () Bool)

(assert (=> b!726329 (=> (not res!487446) (not e!406682))))

(assert (=> b!726329 (= res!487446 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19624 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726330 () Bool)

(get-info :version)

(assert (=> b!726330 (= e!406684 (not (or (not ((_ is Intermediate!7231) lt!321685)) (bvsge x!1131 (x!62306 lt!321685)) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(assert (=> b!726330 e!406688))

(declare-fun res!487444 () Bool)

(assert (=> b!726330 (=> (not res!487444) (not e!406688))))

(assert (=> b!726330 (= res!487444 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24780 0))(
  ( (Unit!24781) )
))
(declare-fun lt!321686 () Unit!24780)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41013 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24780)

(assert (=> b!726330 (= lt!321686 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726331 () Bool)

(declare-fun res!487442 () Bool)

(assert (=> b!726331 (=> (not res!487442) (not e!406685))))

(assert (=> b!726331 (= res!487442 (validKeyInArray!0 (select (arr!19624 a!3186) j!159)))))

(declare-fun b!726332 () Bool)

(assert (=> b!726332 (= e!406683 e!406682)))

(declare-fun res!487452 () Bool)

(assert (=> b!726332 (=> (not res!487452) (not e!406682))))

(assert (=> b!726332 (= res!487452 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19624 a!3186) j!159) mask!3328) (select (arr!19624 a!3186) j!159) a!3186 mask!3328) lt!321688))))

(assert (=> b!726332 (= lt!321688 (Intermediate!7231 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!64542 res!487440) b!726328))

(assert (= (and b!726328 res!487445) b!726331))

(assert (= (and b!726331 res!487442) b!726320))

(assert (= (and b!726320 res!487448) b!726327))

(assert (= (and b!726327 res!487439) b!726316))

(assert (= (and b!726316 res!487441) b!726318))

(assert (= (and b!726318 res!487451) b!726326))

(assert (= (and b!726326 res!487449) b!726324))

(assert (= (and b!726324 res!487438) b!726332))

(assert (= (and b!726332 res!487452) b!726329))

(assert (= (and b!726329 res!487446) b!726325))

(assert (= (and b!726325 c!79812) b!726321))

(assert (= (and b!726325 (not c!79812)) b!726317))

(assert (= (and b!726325 res!487443) b!726319))

(assert (= (and b!726319 res!487450) b!726330))

(assert (= (and b!726330 res!487444) b!726323))

(assert (= (and b!726323 res!487447) b!726322))

(declare-fun m!680477 () Bool)

(assert (=> b!726320 m!680477))

(declare-fun m!680479 () Bool)

(assert (=> b!726323 m!680479))

(assert (=> b!726323 m!680479))

(declare-fun m!680481 () Bool)

(assert (=> b!726323 m!680481))

(declare-fun m!680483 () Bool)

(assert (=> b!726318 m!680483))

(assert (=> b!726322 m!680479))

(assert (=> b!726322 m!680479))

(declare-fun m!680485 () Bool)

(assert (=> b!726322 m!680485))

(assert (=> b!726332 m!680479))

(assert (=> b!726332 m!680479))

(declare-fun m!680487 () Bool)

(assert (=> b!726332 m!680487))

(assert (=> b!726332 m!680487))

(assert (=> b!726332 m!680479))

(declare-fun m!680489 () Bool)

(assert (=> b!726332 m!680489))

(declare-fun m!680491 () Bool)

(assert (=> b!726330 m!680491))

(declare-fun m!680493 () Bool)

(assert (=> b!726330 m!680493))

(declare-fun m!680495 () Bool)

(assert (=> b!726329 m!680495))

(declare-fun m!680497 () Bool)

(assert (=> b!726327 m!680497))

(assert (=> b!726321 m!680479))

(assert (=> b!726321 m!680479))

(declare-fun m!680499 () Bool)

(assert (=> b!726321 m!680499))

(declare-fun m!680501 () Bool)

(assert (=> b!726316 m!680501))

(assert (=> b!726331 m!680479))

(assert (=> b!726331 m!680479))

(declare-fun m!680503 () Bool)

(assert (=> b!726331 m!680503))

(assert (=> b!726317 m!680479))

(assert (=> b!726317 m!680479))

(declare-fun m!680505 () Bool)

(assert (=> b!726317 m!680505))

(declare-fun m!680507 () Bool)

(assert (=> b!726319 m!680507))

(declare-fun m!680509 () Bool)

(assert (=> b!726319 m!680509))

(declare-fun m!680511 () Bool)

(assert (=> b!726319 m!680511))

(declare-fun m!680513 () Bool)

(assert (=> b!726319 m!680513))

(assert (=> b!726319 m!680513))

(declare-fun m!680515 () Bool)

(assert (=> b!726319 m!680515))

(declare-fun m!680517 () Bool)

(assert (=> start!64542 m!680517))

(declare-fun m!680519 () Bool)

(assert (=> start!64542 m!680519))

(declare-fun m!680521 () Bool)

(assert (=> b!726326 m!680521))

(check-sat (not b!726332) (not b!726331) (not b!726326) (not start!64542) (not b!726322) (not b!726327) (not b!726317) (not b!726320) (not b!726319) (not b!726321) (not b!726323) (not b!726316) (not b!726318) (not b!726330))
(check-sat)
