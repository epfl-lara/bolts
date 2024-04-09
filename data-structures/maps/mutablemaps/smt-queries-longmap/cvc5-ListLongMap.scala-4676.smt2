; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65134 () Bool)

(assert start!65134)

(declare-fun b!734861 () Bool)

(declare-fun res!493835 () Bool)

(declare-fun e!411201 () Bool)

(assert (=> b!734861 (=> (not res!493835) (not e!411201))))

(declare-datatypes ((array!41260 0))(
  ( (array!41261 (arr!19740 (Array (_ BitVec 32) (_ BitVec 64))) (size!20161 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41260)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41260 (_ BitVec 32)) Bool)

(assert (=> b!734861 (= res!493835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!493832 () Bool)

(declare-fun e!411207 () Bool)

(assert (=> start!65134 (=> (not res!493832) (not e!411207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65134 (= res!493832 (validMask!0 mask!3328))))

(assert (=> start!65134 e!411207))

(assert (=> start!65134 true))

(declare-fun array_inv!15514 (array!41260) Bool)

(assert (=> start!65134 (array_inv!15514 a!3186)))

(declare-fun b!734862 () Bool)

(declare-fun res!493839 () Bool)

(assert (=> b!734862 (=> (not res!493839) (not e!411207))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!734862 (= res!493839 (validKeyInArray!0 (select (arr!19740 a!3186) j!159)))))

(declare-fun b!734863 () Bool)

(declare-fun e!411198 () Bool)

(declare-fun e!411199 () Bool)

(assert (=> b!734863 (= e!411198 e!411199)))

(declare-fun res!493836 () Bool)

(assert (=> b!734863 (=> res!493836 e!411199)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!734863 (= res!493836 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!325727 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734863 (= lt!325727 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!411202 () Bool)

(declare-fun b!734864 () Bool)

(declare-datatypes ((SeekEntryResult!7347 0))(
  ( (MissingZero!7347 (index!31755 (_ BitVec 32))) (Found!7347 (index!31756 (_ BitVec 32))) (Intermediate!7347 (undefined!8159 Bool) (index!31757 (_ BitVec 32)) (x!62794 (_ BitVec 32))) (Undefined!7347) (MissingVacant!7347 (index!31758 (_ BitVec 32))) )
))
(declare-fun lt!325723 () SeekEntryResult!7347)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41260 (_ BitVec 32)) SeekEntryResult!7347)

(assert (=> b!734864 (= e!411202 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19740 a!3186) j!159) a!3186 mask!3328) lt!325723))))

(declare-fun e!411200 () Bool)

(declare-fun b!734865 () Bool)

(declare-fun lt!325721 () SeekEntryResult!7347)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41260 (_ BitVec 32)) SeekEntryResult!7347)

(assert (=> b!734865 (= e!411200 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19740 a!3186) j!159) a!3186 mask!3328) lt!325721))))

(declare-fun b!734866 () Bool)

(declare-fun res!493845 () Bool)

(declare-fun e!411206 () Bool)

(assert (=> b!734866 (=> (not res!493845) (not e!411206))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!734866 (= res!493845 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19740 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!734867 () Bool)

(declare-fun e!411204 () Bool)

(assert (=> b!734867 (= e!411206 e!411204)))

(declare-fun res!493841 () Bool)

(assert (=> b!734867 (=> (not res!493841) (not e!411204))))

(declare-fun lt!325726 () SeekEntryResult!7347)

(declare-fun lt!325730 () SeekEntryResult!7347)

(assert (=> b!734867 (= res!493841 (= lt!325726 lt!325730))))

(declare-fun lt!325722 () array!41260)

(declare-fun lt!325729 () (_ BitVec 64))

(assert (=> b!734867 (= lt!325730 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325729 lt!325722 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734867 (= lt!325726 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325729 mask!3328) lt!325729 lt!325722 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!734867 (= lt!325729 (select (store (arr!19740 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!734867 (= lt!325722 (array!41261 (store (arr!19740 a!3186) i!1173 k!2102) (size!20161 a!3186)))))

(declare-fun b!734868 () Bool)

(declare-fun res!493833 () Bool)

(assert (=> b!734868 (=> (not res!493833) (not e!411207))))

(declare-fun arrayContainsKey!0 (array!41260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!734868 (= res!493833 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!734869 () Bool)

(assert (=> b!734869 (= e!411200 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19740 a!3186) j!159) a!3186 mask!3328) (Found!7347 j!159)))))

(declare-fun b!734870 () Bool)

(declare-fun res!493838 () Bool)

(assert (=> b!734870 (=> (not res!493838) (not e!411201))))

(assert (=> b!734870 (= res!493838 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20161 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20161 a!3186))))))

(declare-fun b!734871 () Bool)

(declare-fun res!493843 () Bool)

(assert (=> b!734871 (=> (not res!493843) (not e!411201))))

(declare-datatypes ((List!13795 0))(
  ( (Nil!13792) (Cons!13791 (h!14863 (_ BitVec 64)) (t!20118 List!13795)) )
))
(declare-fun arrayNoDuplicates!0 (array!41260 (_ BitVec 32) List!13795) Bool)

(assert (=> b!734871 (= res!493843 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13792))))

(declare-fun b!734872 () Bool)

(assert (=> b!734872 (= e!411207 e!411201)))

(declare-fun res!493848 () Bool)

(assert (=> b!734872 (=> (not res!493848) (not e!411201))))

(declare-fun lt!325725 () SeekEntryResult!7347)

(assert (=> b!734872 (= res!493848 (or (= lt!325725 (MissingZero!7347 i!1173)) (= lt!325725 (MissingVacant!7347 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41260 (_ BitVec 32)) SeekEntryResult!7347)

(assert (=> b!734872 (= lt!325725 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!734873 () Bool)

(declare-fun res!493847 () Bool)

(assert (=> b!734873 (=> (not res!493847) (not e!411206))))

(assert (=> b!734873 (= res!493847 e!411200)))

(declare-fun c!80895 () Bool)

(assert (=> b!734873 (= c!80895 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!734874 () Bool)

(declare-fun res!493846 () Bool)

(assert (=> b!734874 (=> (not res!493846) (not e!411207))))

(assert (=> b!734874 (= res!493846 (validKeyInArray!0 k!2102))))

(declare-fun b!734875 () Bool)

(assert (=> b!734875 (= e!411201 e!411206)))

(declare-fun res!493834 () Bool)

(assert (=> b!734875 (=> (not res!493834) (not e!411206))))

(assert (=> b!734875 (= res!493834 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19740 a!3186) j!159) mask!3328) (select (arr!19740 a!3186) j!159) a!3186 mask!3328) lt!325721))))

(assert (=> b!734875 (= lt!325721 (Intermediate!7347 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!734876 () Bool)

(assert (=> b!734876 (= e!411199 true)))

(declare-fun lt!325724 () SeekEntryResult!7347)

(assert (=> b!734876 (= lt!325724 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19740 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734877 () Bool)

(declare-fun e!411203 () Bool)

(assert (=> b!734877 (= e!411203 e!411202)))

(declare-fun res!493842 () Bool)

(assert (=> b!734877 (=> (not res!493842) (not e!411202))))

(assert (=> b!734877 (= res!493842 (= (seekEntryOrOpen!0 (select (arr!19740 a!3186) j!159) a!3186 mask!3328) lt!325723))))

(assert (=> b!734877 (= lt!325723 (Found!7347 j!159))))

(declare-fun b!734878 () Bool)

(declare-fun res!493844 () Bool)

(assert (=> b!734878 (=> (not res!493844) (not e!411207))))

(assert (=> b!734878 (= res!493844 (and (= (size!20161 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20161 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20161 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!734879 () Bool)

(assert (=> b!734879 (= e!411204 (not e!411198))))

(declare-fun res!493837 () Bool)

(assert (=> b!734879 (=> res!493837 e!411198)))

(assert (=> b!734879 (= res!493837 (or (not (is-Intermediate!7347 lt!325730)) (bvsge x!1131 (x!62794 lt!325730))))))

(assert (=> b!734879 e!411203))

(declare-fun res!493840 () Bool)

(assert (=> b!734879 (=> (not res!493840) (not e!411203))))

(assert (=> b!734879 (= res!493840 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25012 0))(
  ( (Unit!25013) )
))
(declare-fun lt!325728 () Unit!25012)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41260 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25012)

(assert (=> b!734879 (= lt!325728 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65134 res!493832) b!734878))

(assert (= (and b!734878 res!493844) b!734862))

(assert (= (and b!734862 res!493839) b!734874))

(assert (= (and b!734874 res!493846) b!734868))

(assert (= (and b!734868 res!493833) b!734872))

(assert (= (and b!734872 res!493848) b!734861))

(assert (= (and b!734861 res!493835) b!734871))

(assert (= (and b!734871 res!493843) b!734870))

(assert (= (and b!734870 res!493838) b!734875))

(assert (= (and b!734875 res!493834) b!734866))

(assert (= (and b!734866 res!493845) b!734873))

(assert (= (and b!734873 c!80895) b!734865))

(assert (= (and b!734873 (not c!80895)) b!734869))

(assert (= (and b!734873 res!493847) b!734867))

(assert (= (and b!734867 res!493841) b!734879))

(assert (= (and b!734879 res!493840) b!734877))

(assert (= (and b!734877 res!493842) b!734864))

(assert (= (and b!734879 (not res!493837)) b!734863))

(assert (= (and b!734863 (not res!493836)) b!734876))

(declare-fun m!687445 () Bool)

(assert (=> b!734871 m!687445))

(declare-fun m!687447 () Bool)

(assert (=> b!734863 m!687447))

(declare-fun m!687449 () Bool)

(assert (=> b!734875 m!687449))

(assert (=> b!734875 m!687449))

(declare-fun m!687451 () Bool)

(assert (=> b!734875 m!687451))

(assert (=> b!734875 m!687451))

(assert (=> b!734875 m!687449))

(declare-fun m!687453 () Bool)

(assert (=> b!734875 m!687453))

(declare-fun m!687455 () Bool)

(assert (=> b!734866 m!687455))

(declare-fun m!687457 () Bool)

(assert (=> b!734867 m!687457))

(assert (=> b!734867 m!687457))

(declare-fun m!687459 () Bool)

(assert (=> b!734867 m!687459))

(declare-fun m!687461 () Bool)

(assert (=> b!734867 m!687461))

(declare-fun m!687463 () Bool)

(assert (=> b!734867 m!687463))

(declare-fun m!687465 () Bool)

(assert (=> b!734867 m!687465))

(assert (=> b!734864 m!687449))

(assert (=> b!734864 m!687449))

(declare-fun m!687467 () Bool)

(assert (=> b!734864 m!687467))

(declare-fun m!687469 () Bool)

(assert (=> b!734861 m!687469))

(assert (=> b!734862 m!687449))

(assert (=> b!734862 m!687449))

(declare-fun m!687471 () Bool)

(assert (=> b!734862 m!687471))

(assert (=> b!734865 m!687449))

(assert (=> b!734865 m!687449))

(declare-fun m!687473 () Bool)

(assert (=> b!734865 m!687473))

(declare-fun m!687475 () Bool)

(assert (=> b!734874 m!687475))

(declare-fun m!687477 () Bool)

(assert (=> b!734872 m!687477))

(declare-fun m!687479 () Bool)

(assert (=> b!734879 m!687479))

(declare-fun m!687481 () Bool)

(assert (=> b!734879 m!687481))

(declare-fun m!687483 () Bool)

(assert (=> b!734868 m!687483))

(assert (=> b!734877 m!687449))

(assert (=> b!734877 m!687449))

(declare-fun m!687485 () Bool)

(assert (=> b!734877 m!687485))

(assert (=> b!734869 m!687449))

(assert (=> b!734869 m!687449))

(declare-fun m!687487 () Bool)

(assert (=> b!734869 m!687487))

(declare-fun m!687489 () Bool)

(assert (=> start!65134 m!687489))

(declare-fun m!687491 () Bool)

(assert (=> start!65134 m!687491))

(assert (=> b!734876 m!687449))

(assert (=> b!734876 m!687449))

(assert (=> b!734876 m!687487))

(push 1)

