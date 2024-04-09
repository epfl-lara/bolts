; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67576 () Bool)

(assert start!67576)

(declare-fun b!781780 () Bool)

(declare-fun e!434792 () Bool)

(assert (=> b!781780 (= e!434792 true)))

(declare-datatypes ((array!42634 0))(
  ( (array!42635 (arr!20403 (Array (_ BitVec 32) (_ BitVec 64))) (size!20824 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42634)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!781780 (= (select (store (arr!20403 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!26950 0))(
  ( (Unit!26951) )
))
(declare-fun lt!348419 () Unit!26950)

(declare-fun e!434797 () Unit!26950)

(assert (=> b!781780 (= lt!348419 e!434797)))

(declare-fun c!86775 () Bool)

(assert (=> b!781780 (= c!86775 (= (select (store (arr!20403 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781781 () Bool)

(declare-fun res!529047 () Bool)

(declare-fun e!434795 () Bool)

(assert (=> b!781781 (=> (not res!529047) (not e!434795))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!781781 (= res!529047 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20403 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781782 () Bool)

(declare-fun res!529045 () Bool)

(declare-fun e!434793 () Bool)

(assert (=> b!781782 (=> (not res!529045) (not e!434793))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!781782 (= res!529045 (and (= (size!20824 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20824 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20824 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!781783 () Bool)

(declare-fun e!434794 () Bool)

(assert (=> b!781783 (= e!434794 (not e!434792))))

(declare-fun res!529046 () Bool)

(assert (=> b!781783 (=> res!529046 e!434792)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8010 0))(
  ( (MissingZero!8010 (index!34407 (_ BitVec 32))) (Found!8010 (index!34408 (_ BitVec 32))) (Intermediate!8010 (undefined!8822 Bool) (index!34409 (_ BitVec 32)) (x!65390 (_ BitVec 32))) (Undefined!8010) (MissingVacant!8010 (index!34410 (_ BitVec 32))) )
))
(declare-fun lt!348423 () SeekEntryResult!8010)

(assert (=> b!781783 (= res!529046 (or (not (is-Intermediate!8010 lt!348423)) (bvslt x!1131 (x!65390 lt!348423)) (not (= x!1131 (x!65390 lt!348423))) (not (= index!1321 (index!34409 lt!348423)))))))

(declare-fun e!434798 () Bool)

(assert (=> b!781783 e!434798))

(declare-fun res!529052 () Bool)

(assert (=> b!781783 (=> (not res!529052) (not e!434798))))

(declare-fun lt!348418 () SeekEntryResult!8010)

(declare-fun lt!348417 () SeekEntryResult!8010)

(assert (=> b!781783 (= res!529052 (= lt!348418 lt!348417))))

(assert (=> b!781783 (= lt!348417 (Found!8010 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42634 (_ BitVec 32)) SeekEntryResult!8010)

(assert (=> b!781783 (= lt!348418 (seekEntryOrOpen!0 (select (arr!20403 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42634 (_ BitVec 32)) Bool)

(assert (=> b!781783 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348416 () Unit!26950)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42634 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26950)

(assert (=> b!781783 (= lt!348416 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!781784 () Bool)

(declare-fun res!529060 () Bool)

(assert (=> b!781784 (=> res!529060 e!434792)))

(declare-fun lt!348424 () (_ BitVec 64))

(assert (=> b!781784 (= res!529060 (= (select (store (arr!20403 a!3186) i!1173 k!2102) index!1321) lt!348424))))

(declare-fun b!781785 () Bool)

(declare-fun e!434799 () Bool)

(assert (=> b!781785 (= e!434799 e!434795)))

(declare-fun res!529044 () Bool)

(assert (=> b!781785 (=> (not res!529044) (not e!434795))))

(declare-fun lt!348420 () SeekEntryResult!8010)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42634 (_ BitVec 32)) SeekEntryResult!8010)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!781785 (= res!529044 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20403 a!3186) j!159) mask!3328) (select (arr!20403 a!3186) j!159) a!3186 mask!3328) lt!348420))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!781785 (= lt!348420 (Intermediate!8010 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!781786 () Bool)

(declare-fun res!529049 () Bool)

(assert (=> b!781786 (=> (not res!529049) (not e!434793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!781786 (= res!529049 (validKeyInArray!0 (select (arr!20403 a!3186) j!159)))))

(declare-fun e!434800 () Bool)

(declare-fun b!781787 () Bool)

(assert (=> b!781787 (= e!434800 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20403 a!3186) j!159) a!3186 mask!3328) lt!348420))))

(declare-fun b!781789 () Bool)

(declare-fun Unit!26952 () Unit!26950)

(assert (=> b!781789 (= e!434797 Unit!26952)))

(declare-fun b!781790 () Bool)

(declare-fun res!529058 () Bool)

(assert (=> b!781790 (=> (not res!529058) (not e!434799))))

(assert (=> b!781790 (= res!529058 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20824 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20824 a!3186))))))

(declare-fun b!781791 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42634 (_ BitVec 32)) SeekEntryResult!8010)

(assert (=> b!781791 (= e!434798 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20403 a!3186) j!159) a!3186 mask!3328) lt!348417))))

(declare-fun b!781792 () Bool)

(declare-fun res!529053 () Bool)

(assert (=> b!781792 (=> res!529053 e!434792)))

(assert (=> b!781792 (= res!529053 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20403 a!3186) j!159) a!3186 mask!3328) lt!348417)))))

(declare-fun b!781793 () Bool)

(assert (=> b!781793 (= e!434793 e!434799)))

(declare-fun res!529055 () Bool)

(assert (=> b!781793 (=> (not res!529055) (not e!434799))))

(declare-fun lt!348415 () SeekEntryResult!8010)

(assert (=> b!781793 (= res!529055 (or (= lt!348415 (MissingZero!8010 i!1173)) (= lt!348415 (MissingVacant!8010 i!1173))))))

(assert (=> b!781793 (= lt!348415 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!781794 () Bool)

(assert (=> b!781794 (= e!434800 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20403 a!3186) j!159) a!3186 mask!3328) (Found!8010 j!159)))))

(declare-fun b!781795 () Bool)

(declare-fun Unit!26953 () Unit!26950)

(assert (=> b!781795 (= e!434797 Unit!26953)))

(assert (=> b!781795 false))

(declare-fun b!781796 () Bool)

(declare-fun res!529057 () Bool)

(assert (=> b!781796 (=> (not res!529057) (not e!434793))))

(assert (=> b!781796 (= res!529057 (validKeyInArray!0 k!2102))))

(declare-fun b!781797 () Bool)

(declare-fun res!529054 () Bool)

(assert (=> b!781797 (=> (not res!529054) (not e!434793))))

(declare-fun arrayContainsKey!0 (array!42634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!781797 (= res!529054 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!781798 () Bool)

(declare-fun res!529050 () Bool)

(assert (=> b!781798 (=> (not res!529050) (not e!434799))))

(assert (=> b!781798 (= res!529050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!529059 () Bool)

(assert (=> start!67576 (=> (not res!529059) (not e!434793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67576 (= res!529059 (validMask!0 mask!3328))))

(assert (=> start!67576 e!434793))

(assert (=> start!67576 true))

(declare-fun array_inv!16177 (array!42634) Bool)

(assert (=> start!67576 (array_inv!16177 a!3186)))

(declare-fun b!781788 () Bool)

(declare-fun res!529056 () Bool)

(assert (=> b!781788 (=> (not res!529056) (not e!434795))))

(assert (=> b!781788 (= res!529056 e!434800)))

(declare-fun c!86774 () Bool)

(assert (=> b!781788 (= c!86774 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!781799 () Bool)

(assert (=> b!781799 (= e!434795 e!434794)))

(declare-fun res!529048 () Bool)

(assert (=> b!781799 (=> (not res!529048) (not e!434794))))

(declare-fun lt!348421 () SeekEntryResult!8010)

(assert (=> b!781799 (= res!529048 (= lt!348421 lt!348423))))

(declare-fun lt!348422 () array!42634)

(assert (=> b!781799 (= lt!348423 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348424 lt!348422 mask!3328))))

(assert (=> b!781799 (= lt!348421 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348424 mask!3328) lt!348424 lt!348422 mask!3328))))

(assert (=> b!781799 (= lt!348424 (select (store (arr!20403 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!781799 (= lt!348422 (array!42635 (store (arr!20403 a!3186) i!1173 k!2102) (size!20824 a!3186)))))

(declare-fun b!781800 () Bool)

(declare-fun res!529051 () Bool)

(assert (=> b!781800 (=> (not res!529051) (not e!434799))))

(declare-datatypes ((List!14458 0))(
  ( (Nil!14455) (Cons!14454 (h!15574 (_ BitVec 64)) (t!20781 List!14458)) )
))
(declare-fun arrayNoDuplicates!0 (array!42634 (_ BitVec 32) List!14458) Bool)

(assert (=> b!781800 (= res!529051 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14455))))

(assert (= (and start!67576 res!529059) b!781782))

(assert (= (and b!781782 res!529045) b!781786))

(assert (= (and b!781786 res!529049) b!781796))

(assert (= (and b!781796 res!529057) b!781797))

(assert (= (and b!781797 res!529054) b!781793))

(assert (= (and b!781793 res!529055) b!781798))

(assert (= (and b!781798 res!529050) b!781800))

(assert (= (and b!781800 res!529051) b!781790))

(assert (= (and b!781790 res!529058) b!781785))

(assert (= (and b!781785 res!529044) b!781781))

(assert (= (and b!781781 res!529047) b!781788))

(assert (= (and b!781788 c!86774) b!781787))

(assert (= (and b!781788 (not c!86774)) b!781794))

(assert (= (and b!781788 res!529056) b!781799))

(assert (= (and b!781799 res!529048) b!781783))

(assert (= (and b!781783 res!529052) b!781791))

(assert (= (and b!781783 (not res!529046)) b!781792))

(assert (= (and b!781792 (not res!529053)) b!781784))

(assert (= (and b!781784 (not res!529060)) b!781780))

(assert (= (and b!781780 c!86775) b!781795))

(assert (= (and b!781780 (not c!86775)) b!781789))

(declare-fun m!724771 () Bool)

(assert (=> b!781796 m!724771))

(declare-fun m!724773 () Bool)

(assert (=> start!67576 m!724773))

(declare-fun m!724775 () Bool)

(assert (=> start!67576 m!724775))

(declare-fun m!724777 () Bool)

(assert (=> b!781780 m!724777))

(declare-fun m!724779 () Bool)

(assert (=> b!781780 m!724779))

(declare-fun m!724781 () Bool)

(assert (=> b!781794 m!724781))

(assert (=> b!781794 m!724781))

(declare-fun m!724783 () Bool)

(assert (=> b!781794 m!724783))

(declare-fun m!724785 () Bool)

(assert (=> b!781798 m!724785))

(declare-fun m!724787 () Bool)

(assert (=> b!781797 m!724787))

(assert (=> b!781785 m!724781))

(assert (=> b!781785 m!724781))

(declare-fun m!724789 () Bool)

(assert (=> b!781785 m!724789))

(assert (=> b!781785 m!724789))

(assert (=> b!781785 m!724781))

(declare-fun m!724791 () Bool)

(assert (=> b!781785 m!724791))

(declare-fun m!724793 () Bool)

(assert (=> b!781800 m!724793))

(declare-fun m!724795 () Bool)

(assert (=> b!781781 m!724795))

(assert (=> b!781786 m!724781))

(assert (=> b!781786 m!724781))

(declare-fun m!724797 () Bool)

(assert (=> b!781786 m!724797))

(declare-fun m!724799 () Bool)

(assert (=> b!781799 m!724799))

(declare-fun m!724801 () Bool)

(assert (=> b!781799 m!724801))

(assert (=> b!781799 m!724799))

(assert (=> b!781799 m!724777))

(declare-fun m!724803 () Bool)

(assert (=> b!781799 m!724803))

(declare-fun m!724805 () Bool)

(assert (=> b!781799 m!724805))

(assert (=> b!781787 m!724781))

(assert (=> b!781787 m!724781))

(declare-fun m!724807 () Bool)

(assert (=> b!781787 m!724807))

(assert (=> b!781784 m!724777))

(assert (=> b!781784 m!724779))

(assert (=> b!781791 m!724781))

(assert (=> b!781791 m!724781))

(declare-fun m!724809 () Bool)

(assert (=> b!781791 m!724809))

(assert (=> b!781792 m!724781))

(assert (=> b!781792 m!724781))

(assert (=> b!781792 m!724783))

(assert (=> b!781783 m!724781))

(assert (=> b!781783 m!724781))

(declare-fun m!724811 () Bool)

(assert (=> b!781783 m!724811))

(declare-fun m!724813 () Bool)

(assert (=> b!781783 m!724813))

(declare-fun m!724815 () Bool)

(assert (=> b!781783 m!724815))

(declare-fun m!724817 () Bool)

(assert (=> b!781793 m!724817))

(push 1)

