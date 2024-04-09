; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65404 () Bool)

(assert start!65404)

(declare-fun b!743717 () Bool)

(declare-fun res!500922 () Bool)

(declare-fun e!415520 () Bool)

(assert (=> b!743717 (=> (not res!500922) (not e!415520))))

(declare-datatypes ((array!41530 0))(
  ( (array!41531 (arr!19875 (Array (_ BitVec 32) (_ BitVec 64))) (size!20296 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41530)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743717 (= res!500922 (validKeyInArray!0 (select (arr!19875 a!3186) j!159)))))

(declare-fun b!743718 () Bool)

(declare-fun res!500915 () Bool)

(assert (=> b!743718 (=> (not res!500915) (not e!415520))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!743718 (= res!500915 (and (= (size!20296 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20296 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20296 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743720 () Bool)

(declare-fun res!500908 () Bool)

(declare-fun e!415517 () Bool)

(assert (=> b!743720 (=> (not res!500908) (not e!415517))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!743720 (= res!500908 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19875 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743721 () Bool)

(declare-fun res!500921 () Bool)

(declare-fun e!415522 () Bool)

(assert (=> b!743721 (=> (not res!500921) (not e!415522))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743721 (= res!500921 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20296 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20296 a!3186))))))

(declare-fun b!743722 () Bool)

(declare-fun e!415516 () Bool)

(declare-fun e!415519 () Bool)

(assert (=> b!743722 (= e!415516 e!415519)))

(declare-fun res!500914 () Bool)

(assert (=> b!743722 (=> (not res!500914) (not e!415519))))

(declare-datatypes ((SeekEntryResult!7482 0))(
  ( (MissingZero!7482 (index!32295 (_ BitVec 32))) (Found!7482 (index!32296 (_ BitVec 32))) (Intermediate!7482 (undefined!8294 Bool) (index!32297 (_ BitVec 32)) (x!63289 (_ BitVec 32))) (Undefined!7482) (MissingVacant!7482 (index!32298 (_ BitVec 32))) )
))
(declare-fun lt!330389 () SeekEntryResult!7482)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41530 (_ BitVec 32)) SeekEntryResult!7482)

(assert (=> b!743722 (= res!500914 (= (seekEntryOrOpen!0 (select (arr!19875 a!3186) j!159) a!3186 mask!3328) lt!330389))))

(assert (=> b!743722 (= lt!330389 (Found!7482 j!159))))

(declare-fun b!743723 () Bool)

(declare-fun e!415521 () Bool)

(assert (=> b!743723 (= e!415517 e!415521)))

(declare-fun res!500912 () Bool)

(assert (=> b!743723 (=> (not res!500912) (not e!415521))))

(declare-fun lt!330391 () SeekEntryResult!7482)

(declare-fun lt!330392 () SeekEntryResult!7482)

(assert (=> b!743723 (= res!500912 (= lt!330391 lt!330392))))

(declare-fun lt!330395 () (_ BitVec 64))

(declare-fun lt!330388 () array!41530)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41530 (_ BitVec 32)) SeekEntryResult!7482)

(assert (=> b!743723 (= lt!330392 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330395 lt!330388 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743723 (= lt!330391 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330395 mask!3328) lt!330395 lt!330388 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!743723 (= lt!330395 (select (store (arr!19875 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!743723 (= lt!330388 (array!41531 (store (arr!19875 a!3186) i!1173 k!2102) (size!20296 a!3186)))))

(declare-fun b!743724 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41530 (_ BitVec 32)) SeekEntryResult!7482)

(assert (=> b!743724 (= e!415519 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19875 a!3186) j!159) a!3186 mask!3328) lt!330389))))

(declare-fun b!743725 () Bool)

(declare-fun res!500920 () Bool)

(assert (=> b!743725 (=> (not res!500920) (not e!415522))))

(declare-datatypes ((List!13930 0))(
  ( (Nil!13927) (Cons!13926 (h!14998 (_ BitVec 64)) (t!20253 List!13930)) )
))
(declare-fun arrayNoDuplicates!0 (array!41530 (_ BitVec 32) List!13930) Bool)

(assert (=> b!743725 (= res!500920 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13927))))

(declare-fun b!743726 () Bool)

(assert (=> b!743726 (= e!415522 e!415517)))

(declare-fun res!500911 () Bool)

(assert (=> b!743726 (=> (not res!500911) (not e!415517))))

(declare-fun lt!330394 () SeekEntryResult!7482)

(assert (=> b!743726 (= res!500911 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19875 a!3186) j!159) mask!3328) (select (arr!19875 a!3186) j!159) a!3186 mask!3328) lt!330394))))

(assert (=> b!743726 (= lt!330394 (Intermediate!7482 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!500916 () Bool)

(assert (=> start!65404 (=> (not res!500916) (not e!415520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65404 (= res!500916 (validMask!0 mask!3328))))

(assert (=> start!65404 e!415520))

(assert (=> start!65404 true))

(declare-fun array_inv!15649 (array!41530) Bool)

(assert (=> start!65404 (array_inv!15649 a!3186)))

(declare-fun b!743719 () Bool)

(declare-fun res!500918 () Bool)

(assert (=> b!743719 (=> (not res!500918) (not e!415522))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41530 (_ BitVec 32)) Bool)

(assert (=> b!743719 (= res!500918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!743727 () Bool)

(declare-fun e!415523 () Bool)

(assert (=> b!743727 (= e!415523 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19875 a!3186) j!159) a!3186 mask!3328) lt!330394))))

(declare-fun b!743728 () Bool)

(declare-fun e!415524 () Bool)

(assert (=> b!743728 (= e!415521 (not e!415524))))

(declare-fun res!500907 () Bool)

(assert (=> b!743728 (=> res!500907 e!415524)))

(assert (=> b!743728 (= res!500907 (or (not (is-Intermediate!7482 lt!330392)) (bvslt x!1131 (x!63289 lt!330392)) (not (= x!1131 (x!63289 lt!330392))) (not (= index!1321 (index!32297 lt!330392)))))))

(assert (=> b!743728 e!415516))

(declare-fun res!500910 () Bool)

(assert (=> b!743728 (=> (not res!500910) (not e!415516))))

(assert (=> b!743728 (= res!500910 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25444 0))(
  ( (Unit!25445) )
))
(declare-fun lt!330393 () Unit!25444)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41530 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25444)

(assert (=> b!743728 (= lt!330393 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743729 () Bool)

(declare-fun res!500909 () Bool)

(assert (=> b!743729 (=> (not res!500909) (not e!415520))))

(assert (=> b!743729 (= res!500909 (validKeyInArray!0 k!2102))))

(declare-fun b!743730 () Bool)

(assert (=> b!743730 (= e!415524 (or (= (select (store (arr!19875 a!3186) i!1173 k!2102) index!1321) lt!330395) (not (= (select (store (arr!19875 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!743731 () Bool)

(assert (=> b!743731 (= e!415520 e!415522)))

(declare-fun res!500917 () Bool)

(assert (=> b!743731 (=> (not res!500917) (not e!415522))))

(declare-fun lt!330390 () SeekEntryResult!7482)

(assert (=> b!743731 (= res!500917 (or (= lt!330390 (MissingZero!7482 i!1173)) (= lt!330390 (MissingVacant!7482 i!1173))))))

(assert (=> b!743731 (= lt!330390 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!743732 () Bool)

(declare-fun res!500919 () Bool)

(assert (=> b!743732 (=> res!500919 e!415524)))

(assert (=> b!743732 (= res!500919 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19875 a!3186) j!159) a!3186 mask!3328) (Found!7482 j!159))))))

(declare-fun b!743733 () Bool)

(declare-fun res!500913 () Bool)

(assert (=> b!743733 (=> (not res!500913) (not e!415520))))

(declare-fun arrayContainsKey!0 (array!41530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743733 (= res!500913 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!743734 () Bool)

(assert (=> b!743734 (= e!415523 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19875 a!3186) j!159) a!3186 mask!3328) (Found!7482 j!159)))))

(declare-fun b!743735 () Bool)

(declare-fun res!500906 () Bool)

(assert (=> b!743735 (=> (not res!500906) (not e!415517))))

(assert (=> b!743735 (= res!500906 e!415523)))

(declare-fun c!81786 () Bool)

(assert (=> b!743735 (= c!81786 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65404 res!500916) b!743718))

(assert (= (and b!743718 res!500915) b!743717))

(assert (= (and b!743717 res!500922) b!743729))

(assert (= (and b!743729 res!500909) b!743733))

(assert (= (and b!743733 res!500913) b!743731))

(assert (= (and b!743731 res!500917) b!743719))

(assert (= (and b!743719 res!500918) b!743725))

(assert (= (and b!743725 res!500920) b!743721))

(assert (= (and b!743721 res!500921) b!743726))

(assert (= (and b!743726 res!500911) b!743720))

(assert (= (and b!743720 res!500908) b!743735))

(assert (= (and b!743735 c!81786) b!743727))

(assert (= (and b!743735 (not c!81786)) b!743734))

(assert (= (and b!743735 res!500906) b!743723))

(assert (= (and b!743723 res!500912) b!743728))

(assert (= (and b!743728 res!500910) b!743722))

(assert (= (and b!743722 res!500914) b!743724))

(assert (= (and b!743728 (not res!500907)) b!743732))

(assert (= (and b!743732 (not res!500919)) b!743730))

(declare-fun m!694435 () Bool)

(assert (=> b!743722 m!694435))

(assert (=> b!743722 m!694435))

(declare-fun m!694437 () Bool)

(assert (=> b!743722 m!694437))

(declare-fun m!694439 () Bool)

(assert (=> b!743730 m!694439))

(declare-fun m!694441 () Bool)

(assert (=> b!743730 m!694441))

(declare-fun m!694443 () Bool)

(assert (=> b!743720 m!694443))

(assert (=> b!743727 m!694435))

(assert (=> b!743727 m!694435))

(declare-fun m!694445 () Bool)

(assert (=> b!743727 m!694445))

(declare-fun m!694447 () Bool)

(assert (=> b!743725 m!694447))

(assert (=> b!743724 m!694435))

(assert (=> b!743724 m!694435))

(declare-fun m!694449 () Bool)

(assert (=> b!743724 m!694449))

(declare-fun m!694451 () Bool)

(assert (=> b!743728 m!694451))

(declare-fun m!694453 () Bool)

(assert (=> b!743728 m!694453))

(assert (=> b!743734 m!694435))

(assert (=> b!743734 m!694435))

(declare-fun m!694455 () Bool)

(assert (=> b!743734 m!694455))

(declare-fun m!694457 () Bool)

(assert (=> b!743729 m!694457))

(declare-fun m!694459 () Bool)

(assert (=> b!743731 m!694459))

(declare-fun m!694461 () Bool)

(assert (=> b!743723 m!694461))

(declare-fun m!694463 () Bool)

(assert (=> b!743723 m!694463))

(assert (=> b!743723 m!694439))

(assert (=> b!743723 m!694461))

(declare-fun m!694465 () Bool)

(assert (=> b!743723 m!694465))

(declare-fun m!694467 () Bool)

(assert (=> b!743723 m!694467))

(declare-fun m!694469 () Bool)

(assert (=> b!743733 m!694469))

(assert (=> b!743732 m!694435))

(assert (=> b!743732 m!694435))

(assert (=> b!743732 m!694455))

(declare-fun m!694471 () Bool)

(assert (=> b!743719 m!694471))

(assert (=> b!743726 m!694435))

(assert (=> b!743726 m!694435))

(declare-fun m!694473 () Bool)

(assert (=> b!743726 m!694473))

(assert (=> b!743726 m!694473))

(assert (=> b!743726 m!694435))

(declare-fun m!694475 () Bool)

(assert (=> b!743726 m!694475))

(assert (=> b!743717 m!694435))

(assert (=> b!743717 m!694435))

(declare-fun m!694477 () Bool)

(assert (=> b!743717 m!694477))

(declare-fun m!694479 () Bool)

(assert (=> start!65404 m!694479))

(declare-fun m!694481 () Bool)

(assert (=> start!65404 m!694481))

(push 1)

