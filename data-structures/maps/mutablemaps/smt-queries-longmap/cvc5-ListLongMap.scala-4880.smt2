; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67276 () Bool)

(assert start!67276)

(declare-fun b!777548 () Bool)

(declare-fun res!526124 () Bool)

(declare-fun e!432666 () Bool)

(assert (=> b!777548 (=> res!526124 e!432666)))

(declare-datatypes ((SeekEntryResult!7959 0))(
  ( (MissingZero!7959 (index!34203 (_ BitVec 32))) (Found!7959 (index!34204 (_ BitVec 32))) (Intermediate!7959 (undefined!8771 Bool) (index!34205 (_ BitVec 32)) (x!65176 (_ BitVec 32))) (Undefined!7959) (MissingVacant!7959 (index!34206 (_ BitVec 32))) )
))
(declare-fun lt!346437 () SeekEntryResult!7959)

(declare-datatypes ((array!42523 0))(
  ( (array!42524 (arr!20352 (Array (_ BitVec 32) (_ BitVec 64))) (size!20773 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42523)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun lt!346434 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!777548 (= res!526124 (or (not (= (select (store (arr!20352 a!3186) i!1173 k!2102) index!1321) lt!346434)) (undefined!8771 lt!346437)))))

(declare-fun b!777549 () Bool)

(assert (=> b!777549 (= e!432666 true)))

(declare-fun lt!346439 () array!42523)

(declare-fun lt!346440 () SeekEntryResult!7959)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42523 (_ BitVec 32)) SeekEntryResult!7959)

(assert (=> b!777549 (= lt!346440 (seekEntryOrOpen!0 lt!346434 lt!346439 mask!3328))))

(declare-fun b!777551 () Bool)

(declare-fun e!432663 () Bool)

(declare-fun e!432662 () Bool)

(assert (=> b!777551 (= e!432663 e!432662)))

(declare-fun res!526133 () Bool)

(assert (=> b!777551 (=> (not res!526133) (not e!432662))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!346433 () SeekEntryResult!7959)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42523 (_ BitVec 32)) SeekEntryResult!7959)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!777551 (= res!526133 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20352 a!3186) j!159) mask!3328) (select (arr!20352 a!3186) j!159) a!3186 mask!3328) lt!346433))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!777551 (= lt!346433 (Intermediate!7959 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!777552 () Bool)

(declare-fun e!432661 () Bool)

(assert (=> b!777552 (= e!432661 (not e!432666))))

(declare-fun res!526125 () Bool)

(assert (=> b!777552 (=> res!526125 e!432666)))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!777552 (= res!526125 (or (not (is-Intermediate!7959 lt!346437)) (bvslt x!1131 (x!65176 lt!346437)) (not (= x!1131 (x!65176 lt!346437))) (not (= index!1321 (index!34205 lt!346437)))))))

(declare-fun e!432660 () Bool)

(assert (=> b!777552 e!432660))

(declare-fun res!526137 () Bool)

(assert (=> b!777552 (=> (not res!526137) (not e!432660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42523 (_ BitVec 32)) Bool)

(assert (=> b!777552 (= res!526137 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26812 0))(
  ( (Unit!26813) )
))
(declare-fun lt!346435 () Unit!26812)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42523 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26812)

(assert (=> b!777552 (= lt!346435 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!777553 () Bool)

(assert (=> b!777553 (= e!432662 e!432661)))

(declare-fun res!526135 () Bool)

(assert (=> b!777553 (=> (not res!526135) (not e!432661))))

(declare-fun lt!346436 () SeekEntryResult!7959)

(assert (=> b!777553 (= res!526135 (= lt!346436 lt!346437))))

(assert (=> b!777553 (= lt!346437 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346434 lt!346439 mask!3328))))

(assert (=> b!777553 (= lt!346436 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346434 mask!3328) lt!346434 lt!346439 mask!3328))))

(assert (=> b!777553 (= lt!346434 (select (store (arr!20352 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!777553 (= lt!346439 (array!42524 (store (arr!20352 a!3186) i!1173 k!2102) (size!20773 a!3186)))))

(declare-fun b!777554 () Bool)

(declare-fun res!526129 () Bool)

(declare-fun e!432667 () Bool)

(assert (=> b!777554 (=> (not res!526129) (not e!432667))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!777554 (= res!526129 (validKeyInArray!0 (select (arr!20352 a!3186) j!159)))))

(declare-fun b!777555 () Bool)

(declare-fun res!526138 () Bool)

(assert (=> b!777555 (=> (not res!526138) (not e!432667))))

(assert (=> b!777555 (= res!526138 (validKeyInArray!0 k!2102))))

(declare-fun b!777556 () Bool)

(declare-fun e!432659 () Bool)

(assert (=> b!777556 (= e!432659 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20352 a!3186) j!159) a!3186 mask!3328) lt!346433))))

(declare-fun b!777557 () Bool)

(declare-fun res!526126 () Bool)

(assert (=> b!777557 (=> (not res!526126) (not e!432667))))

(assert (=> b!777557 (= res!526126 (and (= (size!20773 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20773 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20773 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!777558 () Bool)

(declare-fun res!526136 () Bool)

(assert (=> b!777558 (=> res!526136 e!432666)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42523 (_ BitVec 32)) SeekEntryResult!7959)

(assert (=> b!777558 (= res!526136 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20352 a!3186) j!159) a!3186 mask!3328) (Found!7959 j!159))))))

(declare-fun res!526131 () Bool)

(assert (=> start!67276 (=> (not res!526131) (not e!432667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67276 (= res!526131 (validMask!0 mask!3328))))

(assert (=> start!67276 e!432667))

(assert (=> start!67276 true))

(declare-fun array_inv!16126 (array!42523) Bool)

(assert (=> start!67276 (array_inv!16126 a!3186)))

(declare-fun b!777550 () Bool)

(declare-fun e!432664 () Bool)

(declare-fun lt!346441 () SeekEntryResult!7959)

(assert (=> b!777550 (= e!432664 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20352 a!3186) j!159) a!3186 mask!3328) lt!346441))))

(declare-fun b!777559 () Bool)

(declare-fun res!526121 () Bool)

(assert (=> b!777559 (=> (not res!526121) (not e!432663))))

(assert (=> b!777559 (= res!526121 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20773 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20773 a!3186))))))

(declare-fun b!777560 () Bool)

(declare-fun res!526122 () Bool)

(assert (=> b!777560 (=> (not res!526122) (not e!432663))))

(assert (=> b!777560 (= res!526122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!777561 () Bool)

(assert (=> b!777561 (= e!432660 e!432664)))

(declare-fun res!526134 () Bool)

(assert (=> b!777561 (=> (not res!526134) (not e!432664))))

(assert (=> b!777561 (= res!526134 (= (seekEntryOrOpen!0 (select (arr!20352 a!3186) j!159) a!3186 mask!3328) lt!346441))))

(assert (=> b!777561 (= lt!346441 (Found!7959 j!159))))

(declare-fun b!777562 () Bool)

(declare-fun res!526127 () Bool)

(assert (=> b!777562 (=> (not res!526127) (not e!432663))))

(declare-datatypes ((List!14407 0))(
  ( (Nil!14404) (Cons!14403 (h!15514 (_ BitVec 64)) (t!20730 List!14407)) )
))
(declare-fun arrayNoDuplicates!0 (array!42523 (_ BitVec 32) List!14407) Bool)

(assert (=> b!777562 (= res!526127 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14404))))

(declare-fun b!777563 () Bool)

(declare-fun res!526132 () Bool)

(assert (=> b!777563 (=> (not res!526132) (not e!432667))))

(declare-fun arrayContainsKey!0 (array!42523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!777563 (= res!526132 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!777564 () Bool)

(assert (=> b!777564 (= e!432667 e!432663)))

(declare-fun res!526128 () Bool)

(assert (=> b!777564 (=> (not res!526128) (not e!432663))))

(declare-fun lt!346438 () SeekEntryResult!7959)

(assert (=> b!777564 (= res!526128 (or (= lt!346438 (MissingZero!7959 i!1173)) (= lt!346438 (MissingVacant!7959 i!1173))))))

(assert (=> b!777564 (= lt!346438 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!777565 () Bool)

(declare-fun res!526130 () Bool)

(assert (=> b!777565 (=> (not res!526130) (not e!432662))))

(assert (=> b!777565 (= res!526130 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20352 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!777566 () Bool)

(declare-fun res!526123 () Bool)

(assert (=> b!777566 (=> (not res!526123) (not e!432662))))

(assert (=> b!777566 (= res!526123 e!432659)))

(declare-fun c!86115 () Bool)

(assert (=> b!777566 (= c!86115 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!777567 () Bool)

(assert (=> b!777567 (= e!432659 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20352 a!3186) j!159) a!3186 mask!3328) (Found!7959 j!159)))))

(assert (= (and start!67276 res!526131) b!777557))

(assert (= (and b!777557 res!526126) b!777554))

(assert (= (and b!777554 res!526129) b!777555))

(assert (= (and b!777555 res!526138) b!777563))

(assert (= (and b!777563 res!526132) b!777564))

(assert (= (and b!777564 res!526128) b!777560))

(assert (= (and b!777560 res!526122) b!777562))

(assert (= (and b!777562 res!526127) b!777559))

(assert (= (and b!777559 res!526121) b!777551))

(assert (= (and b!777551 res!526133) b!777565))

(assert (= (and b!777565 res!526130) b!777566))

(assert (= (and b!777566 c!86115) b!777556))

(assert (= (and b!777566 (not c!86115)) b!777567))

(assert (= (and b!777566 res!526123) b!777553))

(assert (= (and b!777553 res!526135) b!777552))

(assert (= (and b!777552 res!526137) b!777561))

(assert (= (and b!777561 res!526134) b!777550))

(assert (= (and b!777552 (not res!526125)) b!777558))

(assert (= (and b!777558 (not res!526136)) b!777548))

(assert (= (and b!777548 (not res!526124)) b!777549))

(declare-fun m!721453 () Bool)

(assert (=> b!777567 m!721453))

(assert (=> b!777567 m!721453))

(declare-fun m!721455 () Bool)

(assert (=> b!777567 m!721455))

(declare-fun m!721457 () Bool)

(assert (=> b!777562 m!721457))

(assert (=> b!777554 m!721453))

(assert (=> b!777554 m!721453))

(declare-fun m!721459 () Bool)

(assert (=> b!777554 m!721459))

(declare-fun m!721461 () Bool)

(assert (=> start!67276 m!721461))

(declare-fun m!721463 () Bool)

(assert (=> start!67276 m!721463))

(assert (=> b!777551 m!721453))

(assert (=> b!777551 m!721453))

(declare-fun m!721465 () Bool)

(assert (=> b!777551 m!721465))

(assert (=> b!777551 m!721465))

(assert (=> b!777551 m!721453))

(declare-fun m!721467 () Bool)

(assert (=> b!777551 m!721467))

(assert (=> b!777561 m!721453))

(assert (=> b!777561 m!721453))

(declare-fun m!721469 () Bool)

(assert (=> b!777561 m!721469))

(assert (=> b!777550 m!721453))

(assert (=> b!777550 m!721453))

(declare-fun m!721471 () Bool)

(assert (=> b!777550 m!721471))

(assert (=> b!777558 m!721453))

(assert (=> b!777558 m!721453))

(assert (=> b!777558 m!721455))

(declare-fun m!721473 () Bool)

(assert (=> b!777564 m!721473))

(declare-fun m!721475 () Bool)

(assert (=> b!777552 m!721475))

(declare-fun m!721477 () Bool)

(assert (=> b!777552 m!721477))

(declare-fun m!721479 () Bool)

(assert (=> b!777549 m!721479))

(declare-fun m!721481 () Bool)

(assert (=> b!777560 m!721481))

(declare-fun m!721483 () Bool)

(assert (=> b!777553 m!721483))

(declare-fun m!721485 () Bool)

(assert (=> b!777553 m!721485))

(declare-fun m!721487 () Bool)

(assert (=> b!777553 m!721487))

(assert (=> b!777553 m!721485))

(declare-fun m!721489 () Bool)

(assert (=> b!777553 m!721489))

(declare-fun m!721491 () Bool)

(assert (=> b!777553 m!721491))

(assert (=> b!777556 m!721453))

(assert (=> b!777556 m!721453))

(declare-fun m!721493 () Bool)

(assert (=> b!777556 m!721493))

(declare-fun m!721495 () Bool)

(assert (=> b!777565 m!721495))

(assert (=> b!777548 m!721489))

(declare-fun m!721497 () Bool)

(assert (=> b!777548 m!721497))

(declare-fun m!721499 () Bool)

(assert (=> b!777555 m!721499))

(declare-fun m!721501 () Bool)

(assert (=> b!777563 m!721501))

(push 1)

