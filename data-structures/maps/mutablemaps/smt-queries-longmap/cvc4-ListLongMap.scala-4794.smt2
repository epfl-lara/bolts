; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65846 () Bool)

(assert start!65846)

(declare-fun b!757849 () Bool)

(declare-fun e!422556 () Bool)

(declare-fun e!422553 () Bool)

(assert (=> b!757849 (= e!422556 e!422553)))

(declare-fun res!512726 () Bool)

(assert (=> b!757849 (=> (not res!512726) (not e!422553))))

(declare-datatypes ((SeekEntryResult!7703 0))(
  ( (MissingZero!7703 (index!33179 (_ BitVec 32))) (Found!7703 (index!33180 (_ BitVec 32))) (Intermediate!7703 (undefined!8515 Bool) (index!33181 (_ BitVec 32)) (x!64094 (_ BitVec 32))) (Undefined!7703) (MissingVacant!7703 (index!33182 (_ BitVec 32))) )
))
(declare-fun lt!337557 () SeekEntryResult!7703)

(declare-fun lt!337562 () SeekEntryResult!7703)

(assert (=> b!757849 (= res!512726 (= lt!337557 lt!337562))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!337552 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!41972 0))(
  ( (array!41973 (arr!20096 (Array (_ BitVec 32) (_ BitVec 64))) (size!20517 (_ BitVec 32))) )
))
(declare-fun lt!337551 () array!41972)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41972 (_ BitVec 32)) SeekEntryResult!7703)

(assert (=> b!757849 (= lt!337562 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337552 lt!337551 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757849 (= lt!337557 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337552 mask!3328) lt!337552 lt!337551 mask!3328))))

(declare-fun a!3186 () array!41972)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!757849 (= lt!337552 (select (store (arr!20096 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!757849 (= lt!337551 (array!41973 (store (arr!20096 a!3186) i!1173 k!2102) (size!20517 a!3186)))))

(declare-fun b!757850 () Bool)

(declare-fun res!512734 () Bool)

(declare-fun e!422554 () Bool)

(assert (=> b!757850 (=> (not res!512734) (not e!422554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41972 (_ BitVec 32)) Bool)

(assert (=> b!757850 (= res!512734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!757851 () Bool)

(declare-fun res!512727 () Bool)

(declare-fun e!422561 () Bool)

(assert (=> b!757851 (=> (not res!512727) (not e!422561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!757851 (= res!512727 (validKeyInArray!0 k!2102))))

(declare-fun b!757852 () Bool)

(declare-fun e!422551 () Bool)

(declare-fun e!422558 () Bool)

(assert (=> b!757852 (= e!422551 e!422558)))

(declare-fun res!512738 () Bool)

(assert (=> b!757852 (=> res!512738 e!422558)))

(declare-fun lt!337560 () SeekEntryResult!7703)

(declare-fun lt!337561 () SeekEntryResult!7703)

(assert (=> b!757852 (= res!512738 (not (= lt!337560 lt!337561)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41972 (_ BitVec 32)) SeekEntryResult!7703)

(assert (=> b!757852 (= lt!337560 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20096 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!757853 () Bool)

(assert (=> b!757853 (= e!422561 e!422554)))

(declare-fun res!512730 () Bool)

(assert (=> b!757853 (=> (not res!512730) (not e!422554))))

(declare-fun lt!337554 () SeekEntryResult!7703)

(assert (=> b!757853 (= res!512730 (or (= lt!337554 (MissingZero!7703 i!1173)) (= lt!337554 (MissingVacant!7703 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41972 (_ BitVec 32)) SeekEntryResult!7703)

(assert (=> b!757853 (= lt!337554 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!757854 () Bool)

(declare-fun res!512724 () Bool)

(assert (=> b!757854 (=> (not res!512724) (not e!422554))))

(declare-datatypes ((List!14151 0))(
  ( (Nil!14148) (Cons!14147 (h!15219 (_ BitVec 64)) (t!20474 List!14151)) )
))
(declare-fun arrayNoDuplicates!0 (array!41972 (_ BitVec 32) List!14151) Bool)

(assert (=> b!757854 (= res!512724 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14148))))

(declare-fun b!757855 () Bool)

(declare-fun e!422559 () Bool)

(declare-fun lt!337556 () SeekEntryResult!7703)

(assert (=> b!757855 (= e!422559 (= lt!337556 lt!337560))))

(declare-fun b!757856 () Bool)

(assert (=> b!757856 (= e!422554 e!422556)))

(declare-fun res!512742 () Bool)

(assert (=> b!757856 (=> (not res!512742) (not e!422556))))

(declare-fun lt!337558 () SeekEntryResult!7703)

(assert (=> b!757856 (= res!512742 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20096 a!3186) j!159) mask!3328) (select (arr!20096 a!3186) j!159) a!3186 mask!3328) lt!337558))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!757856 (= lt!337558 (Intermediate!7703 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!757857 () Bool)

(declare-datatypes ((Unit!26214 0))(
  ( (Unit!26215) )
))
(declare-fun e!422560 () Unit!26214)

(declare-fun Unit!26216 () Unit!26214)

(assert (=> b!757857 (= e!422560 Unit!26216)))

(assert (=> b!757857 false))

(declare-fun b!757858 () Bool)

(declare-fun e!422552 () Bool)

(assert (=> b!757858 (= e!422552 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20096 a!3186) j!159) a!3186 mask!3328) lt!337561))))

(declare-fun b!757859 () Bool)

(declare-fun e!422555 () Bool)

(assert (=> b!757859 (= e!422555 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20096 a!3186) j!159) a!3186 mask!3328) lt!337558))))

(declare-fun b!757860 () Bool)

(declare-fun res!512736 () Bool)

(assert (=> b!757860 (=> (not res!512736) (not e!422559))))

(assert (=> b!757860 (= res!512736 (= (seekEntryOrOpen!0 lt!337552 lt!337551 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337552 lt!337551 mask!3328)))))

(declare-fun b!757861 () Bool)

(declare-fun res!512725 () Bool)

(assert (=> b!757861 (=> (not res!512725) (not e!422554))))

(assert (=> b!757861 (= res!512725 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20517 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20517 a!3186))))))

(declare-fun res!512729 () Bool)

(assert (=> start!65846 (=> (not res!512729) (not e!422561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65846 (= res!512729 (validMask!0 mask!3328))))

(assert (=> start!65846 e!422561))

(assert (=> start!65846 true))

(declare-fun array_inv!15870 (array!41972) Bool)

(assert (=> start!65846 (array_inv!15870 a!3186)))

(declare-fun b!757862 () Bool)

(declare-fun Unit!26217 () Unit!26214)

(assert (=> b!757862 (= e!422560 Unit!26217)))

(declare-fun b!757863 () Bool)

(declare-fun e!422557 () Bool)

(assert (=> b!757863 (= e!422557 true)))

(assert (=> b!757863 e!422559))

(declare-fun res!512735 () Bool)

(assert (=> b!757863 (=> (not res!512735) (not e!422559))))

(declare-fun lt!337553 () (_ BitVec 64))

(assert (=> b!757863 (= res!512735 (= lt!337553 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!337555 () Unit!26214)

(assert (=> b!757863 (= lt!337555 e!422560)))

(declare-fun c!82944 () Bool)

(assert (=> b!757863 (= c!82944 (= lt!337553 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!757864 () Bool)

(declare-fun res!512741 () Bool)

(assert (=> b!757864 (=> (not res!512741) (not e!422561))))

(declare-fun arrayContainsKey!0 (array!41972 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!757864 (= res!512741 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!757865 () Bool)

(assert (=> b!757865 (= e!422555 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20096 a!3186) j!159) a!3186 mask!3328) (Found!7703 j!159)))))

(declare-fun b!757866 () Bool)

(declare-fun res!512731 () Bool)

(assert (=> b!757866 (=> (not res!512731) (not e!422556))))

(assert (=> b!757866 (= res!512731 e!422555)))

(declare-fun c!82943 () Bool)

(assert (=> b!757866 (= c!82943 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757867 () Bool)

(declare-fun res!512739 () Bool)

(assert (=> b!757867 (=> (not res!512739) (not e!422561))))

(assert (=> b!757867 (= res!512739 (and (= (size!20517 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20517 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20517 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!757868 () Bool)

(assert (=> b!757868 (= e!422558 e!422557)))

(declare-fun res!512728 () Bool)

(assert (=> b!757868 (=> res!512728 e!422557)))

(assert (=> b!757868 (= res!512728 (= lt!337553 lt!337552))))

(assert (=> b!757868 (= lt!337553 (select (store (arr!20096 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!757869 () Bool)

(declare-fun res!512732 () Bool)

(assert (=> b!757869 (=> (not res!512732) (not e!422561))))

(assert (=> b!757869 (= res!512732 (validKeyInArray!0 (select (arr!20096 a!3186) j!159)))))

(declare-fun b!757870 () Bool)

(declare-fun res!512737 () Bool)

(assert (=> b!757870 (=> (not res!512737) (not e!422556))))

(assert (=> b!757870 (= res!512737 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20096 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!757871 () Bool)

(assert (=> b!757871 (= e!422553 (not e!422551))))

(declare-fun res!512733 () Bool)

(assert (=> b!757871 (=> res!512733 e!422551)))

(assert (=> b!757871 (= res!512733 (or (not (is-Intermediate!7703 lt!337562)) (bvslt x!1131 (x!64094 lt!337562)) (not (= x!1131 (x!64094 lt!337562))) (not (= index!1321 (index!33181 lt!337562)))))))

(assert (=> b!757871 e!422552))

(declare-fun res!512740 () Bool)

(assert (=> b!757871 (=> (not res!512740) (not e!422552))))

(assert (=> b!757871 (= res!512740 (= lt!337556 lt!337561))))

(assert (=> b!757871 (= lt!337561 (Found!7703 j!159))))

(assert (=> b!757871 (= lt!337556 (seekEntryOrOpen!0 (select (arr!20096 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!757871 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337559 () Unit!26214)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41972 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26214)

(assert (=> b!757871 (= lt!337559 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65846 res!512729) b!757867))

(assert (= (and b!757867 res!512739) b!757869))

(assert (= (and b!757869 res!512732) b!757851))

(assert (= (and b!757851 res!512727) b!757864))

(assert (= (and b!757864 res!512741) b!757853))

(assert (= (and b!757853 res!512730) b!757850))

(assert (= (and b!757850 res!512734) b!757854))

(assert (= (and b!757854 res!512724) b!757861))

(assert (= (and b!757861 res!512725) b!757856))

(assert (= (and b!757856 res!512742) b!757870))

(assert (= (and b!757870 res!512737) b!757866))

(assert (= (and b!757866 c!82943) b!757859))

(assert (= (and b!757866 (not c!82943)) b!757865))

(assert (= (and b!757866 res!512731) b!757849))

(assert (= (and b!757849 res!512726) b!757871))

(assert (= (and b!757871 res!512740) b!757858))

(assert (= (and b!757871 (not res!512733)) b!757852))

(assert (= (and b!757852 (not res!512738)) b!757868))

(assert (= (and b!757868 (not res!512728)) b!757863))

(assert (= (and b!757863 c!82944) b!757857))

(assert (= (and b!757863 (not c!82944)) b!757862))

(assert (= (and b!757863 res!512735) b!757860))

(assert (= (and b!757860 res!512736) b!757855))

(declare-fun m!705525 () Bool)

(assert (=> b!757868 m!705525))

(declare-fun m!705527 () Bool)

(assert (=> b!757868 m!705527))

(declare-fun m!705529 () Bool)

(assert (=> b!757860 m!705529))

(declare-fun m!705531 () Bool)

(assert (=> b!757860 m!705531))

(declare-fun m!705533 () Bool)

(assert (=> b!757865 m!705533))

(assert (=> b!757865 m!705533))

(declare-fun m!705535 () Bool)

(assert (=> b!757865 m!705535))

(declare-fun m!705537 () Bool)

(assert (=> b!757864 m!705537))

(declare-fun m!705539 () Bool)

(assert (=> b!757853 m!705539))

(assert (=> b!757852 m!705533))

(assert (=> b!757852 m!705533))

(assert (=> b!757852 m!705535))

(assert (=> b!757858 m!705533))

(assert (=> b!757858 m!705533))

(declare-fun m!705541 () Bool)

(assert (=> b!757858 m!705541))

(assert (=> b!757859 m!705533))

(assert (=> b!757859 m!705533))

(declare-fun m!705543 () Bool)

(assert (=> b!757859 m!705543))

(declare-fun m!705545 () Bool)

(assert (=> b!757851 m!705545))

(declare-fun m!705547 () Bool)

(assert (=> b!757850 m!705547))

(assert (=> b!757869 m!705533))

(assert (=> b!757869 m!705533))

(declare-fun m!705549 () Bool)

(assert (=> b!757869 m!705549))

(declare-fun m!705551 () Bool)

(assert (=> b!757870 m!705551))

(declare-fun m!705553 () Bool)

(assert (=> b!757854 m!705553))

(assert (=> b!757871 m!705533))

(assert (=> b!757871 m!705533))

(declare-fun m!705555 () Bool)

(assert (=> b!757871 m!705555))

(declare-fun m!705557 () Bool)

(assert (=> b!757871 m!705557))

(declare-fun m!705559 () Bool)

(assert (=> b!757871 m!705559))

(declare-fun m!705561 () Bool)

(assert (=> b!757849 m!705561))

(declare-fun m!705563 () Bool)

(assert (=> b!757849 m!705563))

(declare-fun m!705565 () Bool)

(assert (=> b!757849 m!705565))

(assert (=> b!757849 m!705525))

(declare-fun m!705567 () Bool)

(assert (=> b!757849 m!705567))

(assert (=> b!757849 m!705561))

(assert (=> b!757856 m!705533))

(assert (=> b!757856 m!705533))

(declare-fun m!705569 () Bool)

(assert (=> b!757856 m!705569))

(assert (=> b!757856 m!705569))

(assert (=> b!757856 m!705533))

(declare-fun m!705571 () Bool)

(assert (=> b!757856 m!705571))

(declare-fun m!705573 () Bool)

(assert (=> start!65846 m!705573))

(declare-fun m!705575 () Bool)

(assert (=> start!65846 m!705575))

(push 1)

