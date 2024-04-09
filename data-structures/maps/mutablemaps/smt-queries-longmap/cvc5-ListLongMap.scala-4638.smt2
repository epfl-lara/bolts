; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64546 () Bool)

(assert start!64546)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41017 0))(
  ( (array!41018 (arr!19626 (Array (_ BitVec 32) (_ BitVec 64))) (size!20047 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41017)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!406730 () Bool)

(declare-fun b!726418 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7233 0))(
  ( (MissingZero!7233 (index!31299 (_ BitVec 32))) (Found!7233 (index!31300 (_ BitVec 32))) (Intermediate!7233 (undefined!8045 Bool) (index!31301 (_ BitVec 32)) (x!62316 (_ BitVec 32))) (Undefined!7233) (MissingVacant!7233 (index!31302 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41017 (_ BitVec 32)) SeekEntryResult!7233)

(assert (=> b!726418 (= e!406730 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19626 a!3186) j!159) a!3186 mask!3328) (Found!7233 j!159)))))

(declare-fun b!726420 () Bool)

(declare-fun res!487540 () Bool)

(declare-fun e!406731 () Bool)

(assert (=> b!726420 (=> (not res!487540) (not e!406731))))

(assert (=> b!726420 (= res!487540 e!406730)))

(declare-fun c!79818 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!726420 (= c!79818 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726421 () Bool)

(declare-fun e!406733 () Bool)

(assert (=> b!726421 (= e!406733 e!406731)))

(declare-fun res!487537 () Bool)

(assert (=> b!726421 (=> (not res!487537) (not e!406731))))

(declare-fun lt!321729 () SeekEntryResult!7233)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41017 (_ BitVec 32)) SeekEntryResult!7233)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726421 (= res!487537 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19626 a!3186) j!159) mask!3328) (select (arr!19626 a!3186) j!159) a!3186 mask!3328) lt!321729))))

(assert (=> b!726421 (= lt!321729 (Intermediate!7233 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726422 () Bool)

(declare-fun e!406737 () Bool)

(assert (=> b!726422 (= e!406737 (not true))))

(declare-fun e!406735 () Bool)

(assert (=> b!726422 e!406735))

(declare-fun res!487536 () Bool)

(assert (=> b!726422 (=> (not res!487536) (not e!406735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41017 (_ BitVec 32)) Bool)

(assert (=> b!726422 (= res!487536 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24784 0))(
  ( (Unit!24785) )
))
(declare-fun lt!321732 () Unit!24784)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41017 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24784)

(assert (=> b!726422 (= lt!321732 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726423 () Bool)

(declare-fun res!487528 () Bool)

(assert (=> b!726423 (=> (not res!487528) (not e!406733))))

(assert (=> b!726423 (= res!487528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726424 () Bool)

(declare-fun e!406734 () Bool)

(assert (=> b!726424 (= e!406734 e!406733)))

(declare-fun res!487542 () Bool)

(assert (=> b!726424 (=> (not res!487542) (not e!406733))))

(declare-fun lt!321734 () SeekEntryResult!7233)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726424 (= res!487542 (or (= lt!321734 (MissingZero!7233 i!1173)) (= lt!321734 (MissingVacant!7233 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41017 (_ BitVec 32)) SeekEntryResult!7233)

(assert (=> b!726424 (= lt!321734 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!726425 () Bool)

(declare-fun res!487529 () Bool)

(assert (=> b!726425 (=> (not res!487529) (not e!406733))))

(assert (=> b!726425 (= res!487529 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20047 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20047 a!3186))))))

(declare-fun b!726426 () Bool)

(declare-fun res!487532 () Bool)

(assert (=> b!726426 (=> (not res!487532) (not e!406731))))

(assert (=> b!726426 (= res!487532 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19626 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726427 () Bool)

(declare-fun res!487530 () Bool)

(assert (=> b!726427 (=> (not res!487530) (not e!406733))))

(declare-datatypes ((List!13681 0))(
  ( (Nil!13678) (Cons!13677 (h!14734 (_ BitVec 64)) (t!20004 List!13681)) )
))
(declare-fun arrayNoDuplicates!0 (array!41017 (_ BitVec 32) List!13681) Bool)

(assert (=> b!726427 (= res!487530 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13678))))

(declare-fun b!726428 () Bool)

(declare-fun res!487538 () Bool)

(assert (=> b!726428 (=> (not res!487538) (not e!406734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726428 (= res!487538 (validKeyInArray!0 k!2102))))

(declare-fun b!726429 () Bool)

(assert (=> b!726429 (= e!406731 e!406737)))

(declare-fun res!487539 () Bool)

(assert (=> b!726429 (=> (not res!487539) (not e!406737))))

(declare-fun lt!321731 () array!41017)

(declare-fun lt!321733 () (_ BitVec 64))

(assert (=> b!726429 (= res!487539 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321733 mask!3328) lt!321733 lt!321731 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321733 lt!321731 mask!3328)))))

(assert (=> b!726429 (= lt!321733 (select (store (arr!19626 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!726429 (= lt!321731 (array!41018 (store (arr!19626 a!3186) i!1173 k!2102) (size!20047 a!3186)))))

(declare-fun b!726430 () Bool)

(assert (=> b!726430 (= e!406730 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19626 a!3186) j!159) a!3186 mask!3328) lt!321729))))

(declare-fun b!726431 () Bool)

(declare-fun e!406736 () Bool)

(assert (=> b!726431 (= e!406735 e!406736)))

(declare-fun res!487535 () Bool)

(assert (=> b!726431 (=> (not res!487535) (not e!406736))))

(declare-fun lt!321730 () SeekEntryResult!7233)

(assert (=> b!726431 (= res!487535 (= (seekEntryOrOpen!0 (select (arr!19626 a!3186) j!159) a!3186 mask!3328) lt!321730))))

(assert (=> b!726431 (= lt!321730 (Found!7233 j!159))))

(declare-fun b!726432 () Bool)

(declare-fun res!487533 () Bool)

(assert (=> b!726432 (=> (not res!487533) (not e!406734))))

(declare-fun arrayContainsKey!0 (array!41017 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726432 (= res!487533 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!726419 () Bool)

(declare-fun res!487531 () Bool)

(assert (=> b!726419 (=> (not res!487531) (not e!406734))))

(assert (=> b!726419 (= res!487531 (validKeyInArray!0 (select (arr!19626 a!3186) j!159)))))

(declare-fun res!487534 () Bool)

(assert (=> start!64546 (=> (not res!487534) (not e!406734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64546 (= res!487534 (validMask!0 mask!3328))))

(assert (=> start!64546 e!406734))

(assert (=> start!64546 true))

(declare-fun array_inv!15400 (array!41017) Bool)

(assert (=> start!64546 (array_inv!15400 a!3186)))

(declare-fun b!726433 () Bool)

(assert (=> b!726433 (= e!406736 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19626 a!3186) j!159) a!3186 mask!3328) lt!321730))))

(declare-fun b!726434 () Bool)

(declare-fun res!487541 () Bool)

(assert (=> b!726434 (=> (not res!487541) (not e!406734))))

(assert (=> b!726434 (= res!487541 (and (= (size!20047 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20047 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20047 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64546 res!487534) b!726434))

(assert (= (and b!726434 res!487541) b!726419))

(assert (= (and b!726419 res!487531) b!726428))

(assert (= (and b!726428 res!487538) b!726432))

(assert (= (and b!726432 res!487533) b!726424))

(assert (= (and b!726424 res!487542) b!726423))

(assert (= (and b!726423 res!487528) b!726427))

(assert (= (and b!726427 res!487530) b!726425))

(assert (= (and b!726425 res!487529) b!726421))

(assert (= (and b!726421 res!487537) b!726426))

(assert (= (and b!726426 res!487532) b!726420))

(assert (= (and b!726420 c!79818) b!726430))

(assert (= (and b!726420 (not c!79818)) b!726418))

(assert (= (and b!726420 res!487540) b!726429))

(assert (= (and b!726429 res!487539) b!726422))

(assert (= (and b!726422 res!487536) b!726431))

(assert (= (and b!726431 res!487535) b!726433))

(declare-fun m!680569 () Bool)

(assert (=> b!726426 m!680569))

(declare-fun m!680571 () Bool)

(assert (=> b!726428 m!680571))

(declare-fun m!680573 () Bool)

(assert (=> b!726424 m!680573))

(declare-fun m!680575 () Bool)

(assert (=> b!726427 m!680575))

(declare-fun m!680577 () Bool)

(assert (=> b!726421 m!680577))

(assert (=> b!726421 m!680577))

(declare-fun m!680579 () Bool)

(assert (=> b!726421 m!680579))

(assert (=> b!726421 m!680579))

(assert (=> b!726421 m!680577))

(declare-fun m!680581 () Bool)

(assert (=> b!726421 m!680581))

(assert (=> b!726430 m!680577))

(assert (=> b!726430 m!680577))

(declare-fun m!680583 () Bool)

(assert (=> b!726430 m!680583))

(declare-fun m!680585 () Bool)

(assert (=> b!726429 m!680585))

(declare-fun m!680587 () Bool)

(assert (=> b!726429 m!680587))

(declare-fun m!680589 () Bool)

(assert (=> b!726429 m!680589))

(assert (=> b!726429 m!680587))

(declare-fun m!680591 () Bool)

(assert (=> b!726429 m!680591))

(declare-fun m!680593 () Bool)

(assert (=> b!726429 m!680593))

(declare-fun m!680595 () Bool)

(assert (=> start!64546 m!680595))

(declare-fun m!680597 () Bool)

(assert (=> start!64546 m!680597))

(assert (=> b!726418 m!680577))

(assert (=> b!726418 m!680577))

(declare-fun m!680599 () Bool)

(assert (=> b!726418 m!680599))

(declare-fun m!680601 () Bool)

(assert (=> b!726432 m!680601))

(assert (=> b!726419 m!680577))

(assert (=> b!726419 m!680577))

(declare-fun m!680603 () Bool)

(assert (=> b!726419 m!680603))

(declare-fun m!680605 () Bool)

(assert (=> b!726423 m!680605))

(assert (=> b!726433 m!680577))

(assert (=> b!726433 m!680577))

(declare-fun m!680607 () Bool)

(assert (=> b!726433 m!680607))

(assert (=> b!726431 m!680577))

(assert (=> b!726431 m!680577))

(declare-fun m!680609 () Bool)

(assert (=> b!726431 m!680609))

(declare-fun m!680611 () Bool)

(assert (=> b!726422 m!680611))

(declare-fun m!680613 () Bool)

(assert (=> b!726422 m!680613))

(push 1)

