; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65400 () Bool)

(assert start!65400)

(declare-fun b!743607 () Bool)

(declare-fun e!415470 () Bool)

(declare-fun e!415462 () Bool)

(assert (=> b!743607 (= e!415470 e!415462)))

(declare-fun res!500814 () Bool)

(assert (=> b!743607 (=> (not res!500814) (not e!415462))))

(declare-datatypes ((array!41526 0))(
  ( (array!41527 (arr!19873 (Array (_ BitVec 32) (_ BitVec 64))) (size!20294 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41526)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7480 0))(
  ( (MissingZero!7480 (index!32287 (_ BitVec 32))) (Found!7480 (index!32288 (_ BitVec 32))) (Intermediate!7480 (undefined!8292 Bool) (index!32289 (_ BitVec 32)) (x!63279 (_ BitVec 32))) (Undefined!7480) (MissingVacant!7480 (index!32290 (_ BitVec 32))) )
))
(declare-fun lt!330344 () SeekEntryResult!7480)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41526 (_ BitVec 32)) SeekEntryResult!7480)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743607 (= res!500814 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19873 a!3186) j!159) mask!3328) (select (arr!19873 a!3186) j!159) a!3186 mask!3328) lt!330344))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743607 (= lt!330344 (Intermediate!7480 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!743608 () Bool)

(declare-fun res!500812 () Bool)

(declare-fun e!415467 () Bool)

(assert (=> b!743608 (=> (not res!500812) (not e!415467))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743608 (= res!500812 (validKeyInArray!0 k0!2102))))

(declare-fun b!743609 () Bool)

(declare-fun res!500819 () Bool)

(assert (=> b!743609 (=> (not res!500819) (not e!415467))))

(assert (=> b!743609 (= res!500819 (validKeyInArray!0 (select (arr!19873 a!3186) j!159)))))

(declare-fun b!743610 () Bool)

(declare-fun e!415464 () Bool)

(declare-fun e!415466 () Bool)

(assert (=> b!743610 (= e!415464 e!415466)))

(declare-fun res!500816 () Bool)

(assert (=> b!743610 (=> (not res!500816) (not e!415466))))

(declare-fun lt!330337 () SeekEntryResult!7480)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41526 (_ BitVec 32)) SeekEntryResult!7480)

(assert (=> b!743610 (= res!500816 (= (seekEntryOrOpen!0 (select (arr!19873 a!3186) j!159) a!3186 mask!3328) lt!330337))))

(assert (=> b!743610 (= lt!330337 (Found!7480 j!159))))

(declare-fun b!743611 () Bool)

(assert (=> b!743611 (= e!415467 e!415470)))

(declare-fun res!500815 () Bool)

(assert (=> b!743611 (=> (not res!500815) (not e!415470))))

(declare-fun lt!330341 () SeekEntryResult!7480)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!743611 (= res!500815 (or (= lt!330341 (MissingZero!7480 i!1173)) (= lt!330341 (MissingVacant!7480 i!1173))))))

(assert (=> b!743611 (= lt!330341 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!743612 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!415468 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!743612 (= e!415468 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19873 a!3186) j!159) a!3186 mask!3328) lt!330344))))

(declare-fun b!743613 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41526 (_ BitVec 32)) SeekEntryResult!7480)

(assert (=> b!743613 (= e!415468 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19873 a!3186) j!159) a!3186 mask!3328) (Found!7480 j!159)))))

(declare-fun b!743614 () Bool)

(declare-fun res!500822 () Bool)

(assert (=> b!743614 (=> (not res!500822) (not e!415462))))

(assert (=> b!743614 (= res!500822 e!415468)))

(declare-fun c!81780 () Bool)

(assert (=> b!743614 (= c!81780 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743615 () Bool)

(declare-fun e!415463 () Bool)

(assert (=> b!743615 (= e!415462 e!415463)))

(declare-fun res!500818 () Bool)

(assert (=> b!743615 (=> (not res!500818) (not e!415463))))

(declare-fun lt!330340 () SeekEntryResult!7480)

(declare-fun lt!330338 () SeekEntryResult!7480)

(assert (=> b!743615 (= res!500818 (= lt!330340 lt!330338))))

(declare-fun lt!330339 () array!41526)

(declare-fun lt!330342 () (_ BitVec 64))

(assert (=> b!743615 (= lt!330338 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330342 lt!330339 mask!3328))))

(assert (=> b!743615 (= lt!330340 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330342 mask!3328) lt!330342 lt!330339 mask!3328))))

(assert (=> b!743615 (= lt!330342 (select (store (arr!19873 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!743615 (= lt!330339 (array!41527 (store (arr!19873 a!3186) i!1173 k0!2102) (size!20294 a!3186)))))

(declare-fun b!743616 () Bool)

(declare-fun res!500810 () Bool)

(assert (=> b!743616 (=> (not res!500810) (not e!415462))))

(assert (=> b!743616 (= res!500810 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19873 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!500823 () Bool)

(assert (=> start!65400 (=> (not res!500823) (not e!415467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65400 (= res!500823 (validMask!0 mask!3328))))

(assert (=> start!65400 e!415467))

(assert (=> start!65400 true))

(declare-fun array_inv!15647 (array!41526) Bool)

(assert (=> start!65400 (array_inv!15647 a!3186)))

(declare-fun b!743617 () Bool)

(declare-fun e!415465 () Bool)

(assert (=> b!743617 (= e!415465 true)))

(declare-fun lt!330343 () SeekEntryResult!7480)

(assert (=> b!743617 (= lt!330343 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19873 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!743618 () Bool)

(declare-fun res!500808 () Bool)

(assert (=> b!743618 (=> (not res!500808) (not e!415470))))

(declare-datatypes ((List!13928 0))(
  ( (Nil!13925) (Cons!13924 (h!14996 (_ BitVec 64)) (t!20251 List!13928)) )
))
(declare-fun arrayNoDuplicates!0 (array!41526 (_ BitVec 32) List!13928) Bool)

(assert (=> b!743618 (= res!500808 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13925))))

(declare-fun b!743619 () Bool)

(declare-fun res!500817 () Bool)

(assert (=> b!743619 (=> (not res!500817) (not e!415470))))

(assert (=> b!743619 (= res!500817 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20294 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20294 a!3186))))))

(declare-fun b!743620 () Bool)

(declare-fun res!500821 () Bool)

(assert (=> b!743620 (=> (not res!500821) (not e!415470))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41526 (_ BitVec 32)) Bool)

(assert (=> b!743620 (= res!500821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!743621 () Bool)

(declare-fun res!500813 () Bool)

(assert (=> b!743621 (=> (not res!500813) (not e!415467))))

(assert (=> b!743621 (= res!500813 (and (= (size!20294 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20294 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20294 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743622 () Bool)

(declare-fun res!500820 () Bool)

(assert (=> b!743622 (=> (not res!500820) (not e!415467))))

(declare-fun arrayContainsKey!0 (array!41526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743622 (= res!500820 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!743623 () Bool)

(assert (=> b!743623 (= e!415466 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19873 a!3186) j!159) a!3186 mask!3328) lt!330337))))

(declare-fun b!743624 () Bool)

(assert (=> b!743624 (= e!415463 (not e!415465))))

(declare-fun res!500809 () Bool)

(assert (=> b!743624 (=> res!500809 e!415465)))

(get-info :version)

(assert (=> b!743624 (= res!500809 (or (not ((_ is Intermediate!7480) lt!330338)) (bvslt x!1131 (x!63279 lt!330338)) (not (= x!1131 (x!63279 lt!330338))) (not (= index!1321 (index!32289 lt!330338)))))))

(assert (=> b!743624 e!415464))

(declare-fun res!500811 () Bool)

(assert (=> b!743624 (=> (not res!500811) (not e!415464))))

(assert (=> b!743624 (= res!500811 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25440 0))(
  ( (Unit!25441) )
))
(declare-fun lt!330336 () Unit!25440)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41526 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25440)

(assert (=> b!743624 (= lt!330336 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65400 res!500823) b!743621))

(assert (= (and b!743621 res!500813) b!743609))

(assert (= (and b!743609 res!500819) b!743608))

(assert (= (and b!743608 res!500812) b!743622))

(assert (= (and b!743622 res!500820) b!743611))

(assert (= (and b!743611 res!500815) b!743620))

(assert (= (and b!743620 res!500821) b!743618))

(assert (= (and b!743618 res!500808) b!743619))

(assert (= (and b!743619 res!500817) b!743607))

(assert (= (and b!743607 res!500814) b!743616))

(assert (= (and b!743616 res!500810) b!743614))

(assert (= (and b!743614 c!81780) b!743612))

(assert (= (and b!743614 (not c!81780)) b!743613))

(assert (= (and b!743614 res!500822) b!743615))

(assert (= (and b!743615 res!500818) b!743624))

(assert (= (and b!743624 res!500811) b!743610))

(assert (= (and b!743610 res!500816) b!743623))

(assert (= (and b!743624 (not res!500809)) b!743617))

(declare-fun m!694343 () Bool)

(assert (=> b!743617 m!694343))

(assert (=> b!743617 m!694343))

(declare-fun m!694345 () Bool)

(assert (=> b!743617 m!694345))

(assert (=> b!743610 m!694343))

(assert (=> b!743610 m!694343))

(declare-fun m!694347 () Bool)

(assert (=> b!743610 m!694347))

(declare-fun m!694349 () Bool)

(assert (=> b!743620 m!694349))

(assert (=> b!743609 m!694343))

(assert (=> b!743609 m!694343))

(declare-fun m!694351 () Bool)

(assert (=> b!743609 m!694351))

(declare-fun m!694353 () Bool)

(assert (=> b!743622 m!694353))

(declare-fun m!694355 () Bool)

(assert (=> b!743624 m!694355))

(declare-fun m!694357 () Bool)

(assert (=> b!743624 m!694357))

(assert (=> b!743607 m!694343))

(assert (=> b!743607 m!694343))

(declare-fun m!694359 () Bool)

(assert (=> b!743607 m!694359))

(assert (=> b!743607 m!694359))

(assert (=> b!743607 m!694343))

(declare-fun m!694361 () Bool)

(assert (=> b!743607 m!694361))

(declare-fun m!694363 () Bool)

(assert (=> b!743615 m!694363))

(declare-fun m!694365 () Bool)

(assert (=> b!743615 m!694365))

(declare-fun m!694367 () Bool)

(assert (=> b!743615 m!694367))

(declare-fun m!694369 () Bool)

(assert (=> b!743615 m!694369))

(assert (=> b!743615 m!694363))

(declare-fun m!694371 () Bool)

(assert (=> b!743615 m!694371))

(assert (=> b!743613 m!694343))

(assert (=> b!743613 m!694343))

(assert (=> b!743613 m!694345))

(declare-fun m!694373 () Bool)

(assert (=> start!65400 m!694373))

(declare-fun m!694375 () Bool)

(assert (=> start!65400 m!694375))

(declare-fun m!694377 () Bool)

(assert (=> b!743611 m!694377))

(declare-fun m!694379 () Bool)

(assert (=> b!743608 m!694379))

(declare-fun m!694381 () Bool)

(assert (=> b!743618 m!694381))

(assert (=> b!743612 m!694343))

(assert (=> b!743612 m!694343))

(declare-fun m!694383 () Bool)

(assert (=> b!743612 m!694383))

(assert (=> b!743623 m!694343))

(assert (=> b!743623 m!694343))

(declare-fun m!694385 () Bool)

(assert (=> b!743623 m!694385))

(declare-fun m!694387 () Bool)

(assert (=> b!743616 m!694387))

(check-sat (not b!743623) (not b!743607) (not b!743612) (not b!743613) (not b!743611) (not b!743609) (not start!65400) (not b!743617) (not b!743618) (not b!743610) (not b!743620) (not b!743615) (not b!743622) (not b!743608) (not b!743624))
(check-sat)
