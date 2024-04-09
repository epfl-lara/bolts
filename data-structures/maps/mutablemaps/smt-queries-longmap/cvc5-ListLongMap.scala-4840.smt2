; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66674 () Bool)

(assert start!66674)

(declare-fun b!767831 () Bool)

(declare-fun e!427611 () Bool)

(declare-fun e!427608 () Bool)

(assert (=> b!767831 (= e!427611 e!427608)))

(declare-fun res!519444 () Bool)

(assert (=> b!767831 (=> res!519444 e!427608)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!767831 (= res!519444 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!341589 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767831 (= lt!341589 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!767832 () Bool)

(declare-fun e!427613 () Bool)

(declare-fun e!427606 () Bool)

(assert (=> b!767832 (= e!427613 e!427606)))

(declare-fun res!519456 () Bool)

(assert (=> b!767832 (=> (not res!519456) (not e!427606))))

(declare-datatypes ((SeekEntryResult!7839 0))(
  ( (MissingZero!7839 (index!33723 (_ BitVec 32))) (Found!7839 (index!33724 (_ BitVec 32))) (Intermediate!7839 (undefined!8651 Bool) (index!33725 (_ BitVec 32)) (x!64678 (_ BitVec 32))) (Undefined!7839) (MissingVacant!7839 (index!33726 (_ BitVec 32))) )
))
(declare-fun lt!341594 () SeekEntryResult!7839)

(declare-fun lt!341595 () SeekEntryResult!7839)

(assert (=> b!767832 (= res!519456 (= lt!341594 lt!341595))))

(declare-datatypes ((array!42268 0))(
  ( (array!42269 (arr!20232 (Array (_ BitVec 32) (_ BitVec 64))) (size!20653 (_ BitVec 32))) )
))
(declare-fun lt!341596 () array!42268)

(declare-fun lt!341593 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42268 (_ BitVec 32)) SeekEntryResult!7839)

(assert (=> b!767832 (= lt!341595 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341593 lt!341596 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767832 (= lt!341594 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341593 mask!3328) lt!341593 lt!341596 mask!3328))))

(declare-fun a!3186 () array!42268)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!767832 (= lt!341593 (select (store (arr!20232 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!767832 (= lt!341596 (array!42269 (store (arr!20232 a!3186) i!1173 k!2102) (size!20653 a!3186)))))

(declare-fun res!519446 () Bool)

(declare-fun e!427604 () Bool)

(assert (=> start!66674 (=> (not res!519446) (not e!427604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66674 (= res!519446 (validMask!0 mask!3328))))

(assert (=> start!66674 e!427604))

(assert (=> start!66674 true))

(declare-fun array_inv!16006 (array!42268) Bool)

(assert (=> start!66674 (array_inv!16006 a!3186)))

(declare-fun b!767833 () Bool)

(declare-fun res!519445 () Bool)

(assert (=> b!767833 (=> (not res!519445) (not e!427613))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!767833 (= res!519445 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20232 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!767834 () Bool)

(declare-fun e!427605 () Bool)

(assert (=> b!767834 (= e!427605 e!427613)))

(declare-fun res!519441 () Bool)

(assert (=> b!767834 (=> (not res!519441) (not e!427613))))

(declare-fun lt!341592 () SeekEntryResult!7839)

(assert (=> b!767834 (= res!519441 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20232 a!3186) j!159) mask!3328) (select (arr!20232 a!3186) j!159) a!3186 mask!3328) lt!341592))))

(assert (=> b!767834 (= lt!341592 (Intermediate!7839 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!767835 () Bool)

(assert (=> b!767835 (= e!427608 true)))

(declare-fun lt!341588 () SeekEntryResult!7839)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42268 (_ BitVec 32)) SeekEntryResult!7839)

(assert (=> b!767835 (= lt!341588 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20232 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767836 () Bool)

(declare-fun e!427610 () Bool)

(declare-fun e!427609 () Bool)

(assert (=> b!767836 (= e!427610 e!427609)))

(declare-fun res!519447 () Bool)

(assert (=> b!767836 (=> (not res!519447) (not e!427609))))

(declare-fun lt!341590 () SeekEntryResult!7839)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42268 (_ BitVec 32)) SeekEntryResult!7839)

(assert (=> b!767836 (= res!519447 (= (seekEntryOrOpen!0 (select (arr!20232 a!3186) j!159) a!3186 mask!3328) lt!341590))))

(assert (=> b!767836 (= lt!341590 (Found!7839 j!159))))

(declare-fun b!767837 () Bool)

(declare-fun res!519450 () Bool)

(assert (=> b!767837 (=> (not res!519450) (not e!427605))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42268 (_ BitVec 32)) Bool)

(assert (=> b!767837 (= res!519450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!767838 () Bool)

(declare-fun res!519448 () Bool)

(assert (=> b!767838 (=> (not res!519448) (not e!427604))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!767838 (= res!519448 (validKeyInArray!0 k!2102))))

(declare-fun b!767839 () Bool)

(assert (=> b!767839 (= e!427604 e!427605)))

(declare-fun res!519451 () Bool)

(assert (=> b!767839 (=> (not res!519451) (not e!427605))))

(declare-fun lt!341587 () SeekEntryResult!7839)

(assert (=> b!767839 (= res!519451 (or (= lt!341587 (MissingZero!7839 i!1173)) (= lt!341587 (MissingVacant!7839 i!1173))))))

(assert (=> b!767839 (= lt!341587 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!767840 () Bool)

(declare-fun res!519452 () Bool)

(assert (=> b!767840 (=> (not res!519452) (not e!427604))))

(assert (=> b!767840 (= res!519452 (and (= (size!20653 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20653 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20653 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!767841 () Bool)

(declare-fun res!519454 () Bool)

(assert (=> b!767841 (=> (not res!519454) (not e!427605))))

(assert (=> b!767841 (= res!519454 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20653 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20653 a!3186))))))

(declare-fun b!767842 () Bool)

(declare-fun res!519443 () Bool)

(assert (=> b!767842 (=> (not res!519443) (not e!427604))))

(declare-fun arrayContainsKey!0 (array!42268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!767842 (= res!519443 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!767843 () Bool)

(assert (=> b!767843 (= e!427606 (not e!427611))))

(declare-fun res!519449 () Bool)

(assert (=> b!767843 (=> res!519449 e!427611)))

(assert (=> b!767843 (= res!519449 (or (not (is-Intermediate!7839 lt!341595)) (bvsge x!1131 (x!64678 lt!341595))))))

(assert (=> b!767843 e!427610))

(declare-fun res!519453 () Bool)

(assert (=> b!767843 (=> (not res!519453) (not e!427610))))

(assert (=> b!767843 (= res!519453 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26404 0))(
  ( (Unit!26405) )
))
(declare-fun lt!341591 () Unit!26404)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42268 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26404)

(assert (=> b!767843 (= lt!341591 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun e!427607 () Bool)

(declare-fun b!767844 () Bool)

(assert (=> b!767844 (= e!427607 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20232 a!3186) j!159) a!3186 mask!3328) lt!341592))))

(declare-fun b!767845 () Bool)

(assert (=> b!767845 (= e!427607 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20232 a!3186) j!159) a!3186 mask!3328) (Found!7839 j!159)))))

(declare-fun b!767846 () Bool)

(declare-fun res!519442 () Bool)

(assert (=> b!767846 (=> (not res!519442) (not e!427604))))

(assert (=> b!767846 (= res!519442 (validKeyInArray!0 (select (arr!20232 a!3186) j!159)))))

(declare-fun b!767847 () Bool)

(assert (=> b!767847 (= e!427609 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20232 a!3186) j!159) a!3186 mask!3328) lt!341590))))

(declare-fun b!767848 () Bool)

(declare-fun res!519455 () Bool)

(assert (=> b!767848 (=> (not res!519455) (not e!427613))))

(assert (=> b!767848 (= res!519455 e!427607)))

(declare-fun c!84588 () Bool)

(assert (=> b!767848 (= c!84588 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!767849 () Bool)

(declare-fun res!519440 () Bool)

(assert (=> b!767849 (=> (not res!519440) (not e!427605))))

(declare-datatypes ((List!14287 0))(
  ( (Nil!14284) (Cons!14283 (h!15379 (_ BitVec 64)) (t!20610 List!14287)) )
))
(declare-fun arrayNoDuplicates!0 (array!42268 (_ BitVec 32) List!14287) Bool)

(assert (=> b!767849 (= res!519440 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14284))))

(assert (= (and start!66674 res!519446) b!767840))

(assert (= (and b!767840 res!519452) b!767846))

(assert (= (and b!767846 res!519442) b!767838))

(assert (= (and b!767838 res!519448) b!767842))

(assert (= (and b!767842 res!519443) b!767839))

(assert (= (and b!767839 res!519451) b!767837))

(assert (= (and b!767837 res!519450) b!767849))

(assert (= (and b!767849 res!519440) b!767841))

(assert (= (and b!767841 res!519454) b!767834))

(assert (= (and b!767834 res!519441) b!767833))

(assert (= (and b!767833 res!519445) b!767848))

(assert (= (and b!767848 c!84588) b!767844))

(assert (= (and b!767848 (not c!84588)) b!767845))

(assert (= (and b!767848 res!519455) b!767832))

(assert (= (and b!767832 res!519456) b!767843))

(assert (= (and b!767843 res!519453) b!767836))

(assert (= (and b!767836 res!519447) b!767847))

(assert (= (and b!767843 (not res!519449)) b!767831))

(assert (= (and b!767831 (not res!519444)) b!767835))

(declare-fun m!713543 () Bool)

(assert (=> b!767838 m!713543))

(declare-fun m!713545 () Bool)

(assert (=> b!767834 m!713545))

(assert (=> b!767834 m!713545))

(declare-fun m!713547 () Bool)

(assert (=> b!767834 m!713547))

(assert (=> b!767834 m!713547))

(assert (=> b!767834 m!713545))

(declare-fun m!713549 () Bool)

(assert (=> b!767834 m!713549))

(assert (=> b!767845 m!713545))

(assert (=> b!767845 m!713545))

(declare-fun m!713551 () Bool)

(assert (=> b!767845 m!713551))

(declare-fun m!713553 () Bool)

(assert (=> b!767849 m!713553))

(declare-fun m!713555 () Bool)

(assert (=> b!767843 m!713555))

(declare-fun m!713557 () Bool)

(assert (=> b!767843 m!713557))

(declare-fun m!713559 () Bool)

(assert (=> b!767842 m!713559))

(assert (=> b!767835 m!713545))

(assert (=> b!767835 m!713545))

(assert (=> b!767835 m!713551))

(declare-fun m!713561 () Bool)

(assert (=> b!767837 m!713561))

(declare-fun m!713563 () Bool)

(assert (=> b!767832 m!713563))

(declare-fun m!713565 () Bool)

(assert (=> b!767832 m!713565))

(declare-fun m!713567 () Bool)

(assert (=> b!767832 m!713567))

(declare-fun m!713569 () Bool)

(assert (=> b!767832 m!713569))

(declare-fun m!713571 () Bool)

(assert (=> b!767832 m!713571))

(assert (=> b!767832 m!713563))

(assert (=> b!767836 m!713545))

(assert (=> b!767836 m!713545))

(declare-fun m!713573 () Bool)

(assert (=> b!767836 m!713573))

(declare-fun m!713575 () Bool)

(assert (=> b!767833 m!713575))

(assert (=> b!767846 m!713545))

(assert (=> b!767846 m!713545))

(declare-fun m!713577 () Bool)

(assert (=> b!767846 m!713577))

(assert (=> b!767844 m!713545))

(assert (=> b!767844 m!713545))

(declare-fun m!713579 () Bool)

(assert (=> b!767844 m!713579))

(declare-fun m!713581 () Bool)

(assert (=> b!767839 m!713581))

(assert (=> b!767847 m!713545))

(assert (=> b!767847 m!713545))

(declare-fun m!713583 () Bool)

(assert (=> b!767847 m!713583))

(declare-fun m!713585 () Bool)

(assert (=> b!767831 m!713585))

(declare-fun m!713587 () Bool)

(assert (=> start!66674 m!713587))

(declare-fun m!713589 () Bool)

(assert (=> start!66674 m!713589))

(push 1)

(assert (not b!767832))

