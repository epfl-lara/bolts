; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66812 () Bool)

(assert start!66812)

(declare-fun b!770105 () Bool)

(declare-fun e!428806 () Bool)

(declare-fun e!428804 () Bool)

(assert (=> b!770105 (= e!428806 (not e!428804))))

(declare-fun res!521027 () Bool)

(assert (=> b!770105 (=> res!521027 e!428804)))

(declare-datatypes ((SeekEntryResult!7868 0))(
  ( (MissingZero!7868 (index!33839 (_ BitVec 32))) (Found!7868 (index!33840 (_ BitVec 32))) (Intermediate!7868 (undefined!8680 Bool) (index!33841 (_ BitVec 32)) (x!64792 (_ BitVec 32))) (Undefined!7868) (MissingVacant!7868 (index!33842 (_ BitVec 32))) )
))
(declare-fun lt!342759 () SeekEntryResult!7868)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!770105 (= res!521027 (or (not (is-Intermediate!7868 lt!342759)) (bvsge x!1131 (x!64792 lt!342759))))))

(declare-fun e!428807 () Bool)

(assert (=> b!770105 e!428807))

(declare-fun res!521028 () Bool)

(assert (=> b!770105 (=> (not res!521028) (not e!428807))))

(declare-datatypes ((array!42329 0))(
  ( (array!42330 (arr!20261 (Array (_ BitVec 32) (_ BitVec 64))) (size!20682 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42329)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42329 (_ BitVec 32)) Bool)

(assert (=> b!770105 (= res!521028 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26508 0))(
  ( (Unit!26509) )
))
(declare-fun lt!342751 () Unit!26508)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42329 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26508)

(assert (=> b!770105 (= lt!342751 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!770106 () Bool)

(declare-fun res!521029 () Bool)

(declare-fun e!428801 () Bool)

(assert (=> b!770106 (=> (not res!521029) (not e!428801))))

(declare-fun e!428800 () Bool)

(assert (=> b!770106 (= res!521029 e!428800)))

(declare-fun c!84939 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!770106 (= c!84939 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!770108 () Bool)

(declare-fun res!521034 () Bool)

(declare-fun e!428802 () Bool)

(assert (=> b!770108 (=> (not res!521034) (not e!428802))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770108 (= res!521034 (validKeyInArray!0 (select (arr!20261 a!3186) j!159)))))

(declare-fun b!770109 () Bool)

(declare-fun e!428805 () Bool)

(assert (=> b!770109 (= e!428807 e!428805)))

(declare-fun res!521026 () Bool)

(assert (=> b!770109 (=> (not res!521026) (not e!428805))))

(declare-fun lt!342754 () SeekEntryResult!7868)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42329 (_ BitVec 32)) SeekEntryResult!7868)

(assert (=> b!770109 (= res!521026 (= (seekEntryOrOpen!0 (select (arr!20261 a!3186) j!159) a!3186 mask!3328) lt!342754))))

(assert (=> b!770109 (= lt!342754 (Found!7868 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!770110 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42329 (_ BitVec 32)) SeekEntryResult!7868)

(assert (=> b!770110 (= e!428805 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20261 a!3186) j!159) a!3186 mask!3328) lt!342754))))

(declare-fun b!770111 () Bool)

(assert (=> b!770111 (= e!428801 e!428806)))

(declare-fun res!521025 () Bool)

(assert (=> b!770111 (=> (not res!521025) (not e!428806))))

(declare-fun lt!342752 () SeekEntryResult!7868)

(assert (=> b!770111 (= res!521025 (= lt!342752 lt!342759))))

(declare-fun lt!342753 () array!42329)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!342757 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42329 (_ BitVec 32)) SeekEntryResult!7868)

(assert (=> b!770111 (= lt!342759 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342757 lt!342753 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770111 (= lt!342752 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342757 mask!3328) lt!342757 lt!342753 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!770111 (= lt!342757 (select (store (arr!20261 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!770111 (= lt!342753 (array!42330 (store (arr!20261 a!3186) i!1173 k!2102) (size!20682 a!3186)))))

(declare-fun b!770112 () Bool)

(declare-fun res!521022 () Bool)

(declare-fun e!428803 () Bool)

(assert (=> b!770112 (=> (not res!521022) (not e!428803))))

(assert (=> b!770112 (= res!521022 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20682 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20682 a!3186))))))

(declare-fun b!770113 () Bool)

(declare-fun e!428808 () Unit!26508)

(declare-fun Unit!26510 () Unit!26508)

(assert (=> b!770113 (= e!428808 Unit!26510)))

(declare-fun lt!342756 () SeekEntryResult!7868)

(declare-fun lt!342750 () (_ BitVec 32))

(assert (=> b!770113 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342750 (select (arr!20261 a!3186) j!159) a!3186 mask!3328) lt!342756)))

(declare-fun b!770114 () Bool)

(assert (=> b!770114 (= e!428803 e!428801)))

(declare-fun res!521023 () Bool)

(assert (=> b!770114 (=> (not res!521023) (not e!428801))))

(assert (=> b!770114 (= res!521023 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20261 a!3186) j!159) mask!3328) (select (arr!20261 a!3186) j!159) a!3186 mask!3328) lt!342756))))

(assert (=> b!770114 (= lt!342756 (Intermediate!7868 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770115 () Bool)

(declare-fun res!521030 () Bool)

(assert (=> b!770115 (=> (not res!521030) (not e!428802))))

(assert (=> b!770115 (= res!521030 (validKeyInArray!0 k!2102))))

(declare-fun b!770116 () Bool)

(assert (=> b!770116 (= e!428800 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20261 a!3186) j!159) a!3186 mask!3328) (Found!7868 j!159)))))

(declare-fun b!770117 () Bool)

(assert (=> b!770117 (= e!428800 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20261 a!3186) j!159) a!3186 mask!3328) lt!342756))))

(declare-fun res!521021 () Bool)

(assert (=> start!66812 (=> (not res!521021) (not e!428802))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66812 (= res!521021 (validMask!0 mask!3328))))

(assert (=> start!66812 e!428802))

(assert (=> start!66812 true))

(declare-fun array_inv!16035 (array!42329) Bool)

(assert (=> start!66812 (array_inv!16035 a!3186)))

(declare-fun b!770107 () Bool)

(declare-fun Unit!26511 () Unit!26508)

(assert (=> b!770107 (= e!428808 Unit!26511)))

(declare-fun lt!342758 () SeekEntryResult!7868)

(assert (=> b!770107 (= lt!342758 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20261 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!770107 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342750 resIntermediateIndex!5 (select (arr!20261 a!3186) j!159) a!3186 mask!3328) (Found!7868 j!159))))

(declare-fun b!770118 () Bool)

(assert (=> b!770118 (= e!428802 e!428803)))

(declare-fun res!521031 () Bool)

(assert (=> b!770118 (=> (not res!521031) (not e!428803))))

(declare-fun lt!342755 () SeekEntryResult!7868)

(assert (=> b!770118 (= res!521031 (or (= lt!342755 (MissingZero!7868 i!1173)) (= lt!342755 (MissingVacant!7868 i!1173))))))

(assert (=> b!770118 (= lt!342755 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!770119 () Bool)

(assert (=> b!770119 (= e!428804 true)))

(declare-fun lt!342760 () Unit!26508)

(assert (=> b!770119 (= lt!342760 e!428808)))

(declare-fun c!84938 () Bool)

(assert (=> b!770119 (= c!84938 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770119 (= lt!342750 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!770120 () Bool)

(declare-fun res!521024 () Bool)

(assert (=> b!770120 (=> (not res!521024) (not e!428803))))

(declare-datatypes ((List!14316 0))(
  ( (Nil!14313) (Cons!14312 (h!15411 (_ BitVec 64)) (t!20639 List!14316)) )
))
(declare-fun arrayNoDuplicates!0 (array!42329 (_ BitVec 32) List!14316) Bool)

(assert (=> b!770120 (= res!521024 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14313))))

(declare-fun b!770121 () Bool)

(declare-fun res!521020 () Bool)

(assert (=> b!770121 (=> (not res!521020) (not e!428802))))

(assert (=> b!770121 (= res!521020 (and (= (size!20682 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20682 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20682 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!770122 () Bool)

(declare-fun res!521035 () Bool)

(assert (=> b!770122 (=> (not res!521035) (not e!428802))))

(declare-fun arrayContainsKey!0 (array!42329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770122 (= res!521035 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!770123 () Bool)

(declare-fun res!521033 () Bool)

(assert (=> b!770123 (=> (not res!521033) (not e!428801))))

(assert (=> b!770123 (= res!521033 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20261 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770124 () Bool)

(declare-fun res!521032 () Bool)

(assert (=> b!770124 (=> (not res!521032) (not e!428803))))

(assert (=> b!770124 (= res!521032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!66812 res!521021) b!770121))

(assert (= (and b!770121 res!521020) b!770108))

(assert (= (and b!770108 res!521034) b!770115))

(assert (= (and b!770115 res!521030) b!770122))

(assert (= (and b!770122 res!521035) b!770118))

(assert (= (and b!770118 res!521031) b!770124))

(assert (= (and b!770124 res!521032) b!770120))

(assert (= (and b!770120 res!521024) b!770112))

(assert (= (and b!770112 res!521022) b!770114))

(assert (= (and b!770114 res!521023) b!770123))

(assert (= (and b!770123 res!521033) b!770106))

(assert (= (and b!770106 c!84939) b!770117))

(assert (= (and b!770106 (not c!84939)) b!770116))

(assert (= (and b!770106 res!521029) b!770111))

(assert (= (and b!770111 res!521025) b!770105))

(assert (= (and b!770105 res!521028) b!770109))

(assert (= (and b!770109 res!521026) b!770110))

(assert (= (and b!770105 (not res!521027)) b!770119))

(assert (= (and b!770119 c!84938) b!770113))

(assert (= (and b!770119 (not c!84938)) b!770107))

(declare-fun m!715491 () Bool)

(assert (=> b!770124 m!715491))

(declare-fun m!715493 () Bool)

(assert (=> start!66812 m!715493))

(declare-fun m!715495 () Bool)

(assert (=> start!66812 m!715495))

(declare-fun m!715497 () Bool)

(assert (=> b!770108 m!715497))

(assert (=> b!770108 m!715497))

(declare-fun m!715499 () Bool)

(assert (=> b!770108 m!715499))

(assert (=> b!770107 m!715497))

(assert (=> b!770107 m!715497))

(declare-fun m!715501 () Bool)

(assert (=> b!770107 m!715501))

(assert (=> b!770107 m!715497))

(declare-fun m!715503 () Bool)

(assert (=> b!770107 m!715503))

(assert (=> b!770117 m!715497))

(assert (=> b!770117 m!715497))

(declare-fun m!715505 () Bool)

(assert (=> b!770117 m!715505))

(declare-fun m!715507 () Bool)

(assert (=> b!770120 m!715507))

(assert (=> b!770113 m!715497))

(assert (=> b!770113 m!715497))

(declare-fun m!715509 () Bool)

(assert (=> b!770113 m!715509))

(declare-fun m!715511 () Bool)

(assert (=> b!770123 m!715511))

(declare-fun m!715513 () Bool)

(assert (=> b!770122 m!715513))

(declare-fun m!715515 () Bool)

(assert (=> b!770118 m!715515))

(assert (=> b!770110 m!715497))

(assert (=> b!770110 m!715497))

(declare-fun m!715517 () Bool)

(assert (=> b!770110 m!715517))

(assert (=> b!770109 m!715497))

(assert (=> b!770109 m!715497))

(declare-fun m!715519 () Bool)

(assert (=> b!770109 m!715519))

(assert (=> b!770114 m!715497))

(assert (=> b!770114 m!715497))

(declare-fun m!715521 () Bool)

(assert (=> b!770114 m!715521))

(assert (=> b!770114 m!715521))

(assert (=> b!770114 m!715497))

(declare-fun m!715523 () Bool)

(assert (=> b!770114 m!715523))

(assert (=> b!770116 m!715497))

(assert (=> b!770116 m!715497))

(assert (=> b!770116 m!715501))

(declare-fun m!715525 () Bool)

(assert (=> b!770105 m!715525))

(declare-fun m!715527 () Bool)

(assert (=> b!770105 m!715527))

(declare-fun m!715529 () Bool)

(assert (=> b!770111 m!715529))

(declare-fun m!715531 () Bool)

(assert (=> b!770111 m!715531))

(assert (=> b!770111 m!715531))

(declare-fun m!715533 () Bool)

(assert (=> b!770111 m!715533))

(declare-fun m!715535 () Bool)

(assert (=> b!770111 m!715535))

(declare-fun m!715537 () Bool)

(assert (=> b!770111 m!715537))

(declare-fun m!715539 () Bool)

(assert (=> b!770119 m!715539))

(declare-fun m!715541 () Bool)

(assert (=> b!770115 m!715541))

(push 1)

(assert (not b!770118))

(assert (not b!770122))

(assert (not b!770120))

(assert (not start!66812))

(assert (not b!770119))

(assert (not b!770113))

(assert (not b!770105))

(assert (not b!770117))

(assert (not b!770114))

(assert (not b!770107))

(assert (not b!770110))

(assert (not b!770111))

(assert (not b!770109))

(assert (not b!770115))

(assert (not b!770116))

(assert (not b!770108))

(assert (not b!770124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

