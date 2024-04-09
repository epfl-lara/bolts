; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64292 () Bool)

(assert start!64292)

(declare-fun b!721643 () Bool)

(declare-fun res!483594 () Bool)

(declare-fun e!404641 () Bool)

(assert (=> b!721643 (=> (not res!483594) (not e!404641))))

(declare-datatypes ((array!40826 0))(
  ( (array!40827 (arr!19532 (Array (_ BitVec 32) (_ BitVec 64))) (size!19953 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40826)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721643 (= res!483594 (validKeyInArray!0 (select (arr!19532 a!3186) j!159)))))

(declare-fun b!721644 () Bool)

(declare-fun res!483600 () Bool)

(assert (=> b!721644 (=> (not res!483600) (not e!404641))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721644 (= res!483600 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!721645 () Bool)

(declare-fun e!404639 () Bool)

(assert (=> b!721645 (= e!404639 false)))

(declare-fun lt!320117 () Bool)

(declare-fun e!404643 () Bool)

(assert (=> b!721645 (= lt!320117 e!404643)))

(declare-fun c!79398 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721645 (= c!79398 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721646 () Bool)

(declare-fun e!404642 () Bool)

(assert (=> b!721646 (= e!404642 e!404639)))

(declare-fun res!483599 () Bool)

(assert (=> b!721646 (=> (not res!483599) (not e!404639))))

(declare-datatypes ((SeekEntryResult!7139 0))(
  ( (MissingZero!7139 (index!30923 (_ BitVec 32))) (Found!7139 (index!30924 (_ BitVec 32))) (Intermediate!7139 (undefined!7951 Bool) (index!30925 (_ BitVec 32)) (x!61957 (_ BitVec 32))) (Undefined!7139) (MissingVacant!7139 (index!30926 (_ BitVec 32))) )
))
(declare-fun lt!320115 () SeekEntryResult!7139)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40826 (_ BitVec 32)) SeekEntryResult!7139)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721646 (= res!483599 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19532 a!3186) j!159) mask!3328) (select (arr!19532 a!3186) j!159) a!3186 mask!3328) lt!320115))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!721646 (= lt!320115 (Intermediate!7139 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!721647 () Bool)

(declare-fun res!483590 () Bool)

(assert (=> b!721647 (=> (not res!483590) (not e!404641))))

(assert (=> b!721647 (= res!483590 (validKeyInArray!0 k!2102))))

(declare-fun b!721648 () Bool)

(declare-fun res!483597 () Bool)

(assert (=> b!721648 (=> (not res!483597) (not e!404641))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!721648 (= res!483597 (and (= (size!19953 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19953 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19953 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721649 () Bool)

(assert (=> b!721649 (= e!404641 e!404642)))

(declare-fun res!483591 () Bool)

(assert (=> b!721649 (=> (not res!483591) (not e!404642))))

(declare-fun lt!320116 () SeekEntryResult!7139)

(assert (=> b!721649 (= res!483591 (or (= lt!320116 (MissingZero!7139 i!1173)) (= lt!320116 (MissingVacant!7139 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40826 (_ BitVec 32)) SeekEntryResult!7139)

(assert (=> b!721649 (= lt!320116 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!721650 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40826 (_ BitVec 32)) SeekEntryResult!7139)

(assert (=> b!721650 (= e!404643 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19532 a!3186) j!159) a!3186 mask!3328) (Found!7139 j!159))))))

(declare-fun res!483596 () Bool)

(assert (=> start!64292 (=> (not res!483596) (not e!404641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64292 (= res!483596 (validMask!0 mask!3328))))

(assert (=> start!64292 e!404641))

(assert (=> start!64292 true))

(declare-fun array_inv!15306 (array!40826) Bool)

(assert (=> start!64292 (array_inv!15306 a!3186)))

(declare-fun b!721651 () Bool)

(assert (=> b!721651 (= e!404643 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19532 a!3186) j!159) a!3186 mask!3328) lt!320115)))))

(declare-fun b!721652 () Bool)

(declare-fun res!483598 () Bool)

(assert (=> b!721652 (=> (not res!483598) (not e!404642))))

(assert (=> b!721652 (= res!483598 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19953 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19953 a!3186))))))

(declare-fun b!721653 () Bool)

(declare-fun res!483593 () Bool)

(assert (=> b!721653 (=> (not res!483593) (not e!404639))))

(assert (=> b!721653 (= res!483593 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19532 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721654 () Bool)

(declare-fun res!483595 () Bool)

(assert (=> b!721654 (=> (not res!483595) (not e!404642))))

(declare-datatypes ((List!13587 0))(
  ( (Nil!13584) (Cons!13583 (h!14637 (_ BitVec 64)) (t!19910 List!13587)) )
))
(declare-fun arrayNoDuplicates!0 (array!40826 (_ BitVec 32) List!13587) Bool)

(assert (=> b!721654 (= res!483595 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13584))))

(declare-fun b!721655 () Bool)

(declare-fun res!483592 () Bool)

(assert (=> b!721655 (=> (not res!483592) (not e!404642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40826 (_ BitVec 32)) Bool)

(assert (=> b!721655 (= res!483592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64292 res!483596) b!721648))

(assert (= (and b!721648 res!483597) b!721643))

(assert (= (and b!721643 res!483594) b!721647))

(assert (= (and b!721647 res!483590) b!721644))

(assert (= (and b!721644 res!483600) b!721649))

(assert (= (and b!721649 res!483591) b!721655))

(assert (= (and b!721655 res!483592) b!721654))

(assert (= (and b!721654 res!483595) b!721652))

(assert (= (and b!721652 res!483598) b!721646))

(assert (= (and b!721646 res!483599) b!721653))

(assert (= (and b!721653 res!483593) b!721645))

(assert (= (and b!721645 c!79398) b!721651))

(assert (= (and b!721645 (not c!79398)) b!721650))

(declare-fun m!676467 () Bool)

(assert (=> start!64292 m!676467))

(declare-fun m!676469 () Bool)

(assert (=> start!64292 m!676469))

(declare-fun m!676471 () Bool)

(assert (=> b!721653 m!676471))

(declare-fun m!676473 () Bool)

(assert (=> b!721644 m!676473))

(declare-fun m!676475 () Bool)

(assert (=> b!721655 m!676475))

(declare-fun m!676477 () Bool)

(assert (=> b!721646 m!676477))

(assert (=> b!721646 m!676477))

(declare-fun m!676479 () Bool)

(assert (=> b!721646 m!676479))

(assert (=> b!721646 m!676479))

(assert (=> b!721646 m!676477))

(declare-fun m!676481 () Bool)

(assert (=> b!721646 m!676481))

(declare-fun m!676483 () Bool)

(assert (=> b!721654 m!676483))

(declare-fun m!676485 () Bool)

(assert (=> b!721649 m!676485))

(assert (=> b!721650 m!676477))

(assert (=> b!721650 m!676477))

(declare-fun m!676487 () Bool)

(assert (=> b!721650 m!676487))

(assert (=> b!721643 m!676477))

(assert (=> b!721643 m!676477))

(declare-fun m!676489 () Bool)

(assert (=> b!721643 m!676489))

(declare-fun m!676491 () Bool)

(assert (=> b!721647 m!676491))

(assert (=> b!721651 m!676477))

(assert (=> b!721651 m!676477))

(declare-fun m!676493 () Bool)

(assert (=> b!721651 m!676493))

(push 1)

