; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67468 () Bool)

(assert start!67468)

(declare-fun res!527862 () Bool)

(declare-fun e!433980 () Bool)

(assert (=> start!67468 (=> (not res!527862) (not e!433980))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67468 (= res!527862 (validMask!0 mask!3328))))

(assert (=> start!67468 e!433980))

(assert (=> start!67468 true))

(declare-datatypes ((array!42589 0))(
  ( (array!42590 (arr!20382 (Array (_ BitVec 32) (_ BitVec 64))) (size!20803 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42589)

(declare-fun array_inv!16156 (array!42589) Bool)

(assert (=> start!67468 (array_inv!16156 a!3186)))

(declare-fun b!780061 () Bool)

(declare-fun res!527856 () Bool)

(declare-fun e!433974 () Bool)

(assert (=> b!780061 (=> (not res!527856) (not e!433974))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42589 (_ BitVec 32)) Bool)

(assert (=> b!780061 (= res!527856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!780062 () Bool)

(declare-fun res!527861 () Bool)

(assert (=> b!780062 (=> (not res!527861) (not e!433974))))

(declare-datatypes ((List!14437 0))(
  ( (Nil!14434) (Cons!14433 (h!15550 (_ BitVec 64)) (t!20760 List!14437)) )
))
(declare-fun arrayNoDuplicates!0 (array!42589 (_ BitVec 32) List!14437) Bool)

(assert (=> b!780062 (= res!527861 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14434))))

(declare-fun b!780063 () Bool)

(declare-fun e!433976 () Bool)

(assert (=> b!780063 (= e!433974 e!433976)))

(declare-fun res!527865 () Bool)

(assert (=> b!780063 (=> (not res!527865) (not e!433976))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7989 0))(
  ( (MissingZero!7989 (index!34323 (_ BitVec 32))) (Found!7989 (index!34324 (_ BitVec 32))) (Intermediate!7989 (undefined!8801 Bool) (index!34325 (_ BitVec 32)) (x!65304 (_ BitVec 32))) (Undefined!7989) (MissingVacant!7989 (index!34326 (_ BitVec 32))) )
))
(declare-fun lt!347621 () SeekEntryResult!7989)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42589 (_ BitVec 32)) SeekEntryResult!7989)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780063 (= res!527865 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20382 a!3186) j!159) mask!3328) (select (arr!20382 a!3186) j!159) a!3186 mask!3328) lt!347621))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!780063 (= lt!347621 (Intermediate!7989 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!780064 () Bool)

(declare-fun res!527860 () Bool)

(assert (=> b!780064 (=> (not res!527860) (not e!433980))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!780064 (= res!527860 (validKeyInArray!0 k!2102))))

(declare-fun b!780065 () Bool)

(declare-fun res!527855 () Bool)

(assert (=> b!780065 (=> (not res!527855) (not e!433976))))

(declare-fun e!433977 () Bool)

(assert (=> b!780065 (= res!527855 e!433977)))

(declare-fun c!86508 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!780065 (= c!86508 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!780066 () Bool)

(declare-fun e!433979 () Bool)

(assert (=> b!780066 (= e!433976 e!433979)))

(declare-fun res!527867 () Bool)

(assert (=> b!780066 (=> (not res!527867) (not e!433979))))

(declare-fun lt!347626 () SeekEntryResult!7989)

(declare-fun lt!347623 () SeekEntryResult!7989)

(assert (=> b!780066 (= res!527867 (= lt!347626 lt!347623))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!347625 () (_ BitVec 64))

(declare-fun lt!347624 () array!42589)

(assert (=> b!780066 (= lt!347623 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347625 lt!347624 mask!3328))))

(assert (=> b!780066 (= lt!347626 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347625 mask!3328) lt!347625 lt!347624 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!780066 (= lt!347625 (select (store (arr!20382 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!780066 (= lt!347624 (array!42590 (store (arr!20382 a!3186) i!1173 k!2102) (size!20803 a!3186)))))

(declare-fun b!780067 () Bool)

(declare-fun res!527866 () Bool)

(assert (=> b!780067 (=> (not res!527866) (not e!433980))))

(assert (=> b!780067 (= res!527866 (validKeyInArray!0 (select (arr!20382 a!3186) j!159)))))

(declare-fun b!780068 () Bool)

(declare-fun res!527864 () Bool)

(assert (=> b!780068 (=> (not res!527864) (not e!433980))))

(declare-fun arrayContainsKey!0 (array!42589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!780068 (= res!527864 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!780069 () Bool)

(declare-fun res!527859 () Bool)

(assert (=> b!780069 (=> (not res!527859) (not e!433974))))

(assert (=> b!780069 (= res!527859 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20803 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20803 a!3186))))))

(declare-fun b!780070 () Bool)

(declare-fun res!527863 () Bool)

(assert (=> b!780070 (=> (not res!527863) (not e!433976))))

(assert (=> b!780070 (= res!527863 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20382 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!780071 () Bool)

(declare-fun e!433973 () Bool)

(assert (=> b!780071 (= e!433973 false)))

(declare-fun lt!347620 () SeekEntryResult!7989)

(declare-fun lt!347622 () SeekEntryResult!7989)

(assert (=> b!780071 (and (= lt!347620 lt!347622) (= lt!347622 (MissingVacant!7989 resIntermediateIndex!5)))))

(declare-fun lt!347629 () SeekEntryResult!7989)

(declare-fun e!433978 () Bool)

(declare-fun b!780072 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42589 (_ BitVec 32)) SeekEntryResult!7989)

(assert (=> b!780072 (= e!433978 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20382 a!3186) j!159) a!3186 mask!3328) lt!347629))))

(declare-fun b!780073 () Bool)

(declare-fun e!433981 () Bool)

(assert (=> b!780073 (= e!433979 (not e!433981))))

(declare-fun res!527858 () Bool)

(assert (=> b!780073 (=> res!527858 e!433981)))

(assert (=> b!780073 (= res!527858 (or (not (is-Intermediate!7989 lt!347623)) (bvslt x!1131 (x!65304 lt!347623)) (not (= x!1131 (x!65304 lt!347623))) (not (= index!1321 (index!34325 lt!347623)))))))

(assert (=> b!780073 e!433978))

(declare-fun res!527857 () Bool)

(assert (=> b!780073 (=> (not res!527857) (not e!433978))))

(assert (=> b!780073 (= res!527857 (= lt!347620 lt!347629))))

(assert (=> b!780073 (= lt!347629 (Found!7989 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42589 (_ BitVec 32)) SeekEntryResult!7989)

(assert (=> b!780073 (= lt!347620 (seekEntryOrOpen!0 (select (arr!20382 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!780073 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26872 0))(
  ( (Unit!26873) )
))
(declare-fun lt!347628 () Unit!26872)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42589 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26872)

(assert (=> b!780073 (= lt!347628 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!780074 () Bool)

(assert (=> b!780074 (= e!433977 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20382 a!3186) j!159) a!3186 mask!3328) lt!347621))))

(declare-fun b!780075 () Bool)

(assert (=> b!780075 (= e!433980 e!433974)))

(declare-fun res!527854 () Bool)

(assert (=> b!780075 (=> (not res!527854) (not e!433974))))

(declare-fun lt!347627 () SeekEntryResult!7989)

(assert (=> b!780075 (= res!527854 (or (= lt!347627 (MissingZero!7989 i!1173)) (= lt!347627 (MissingVacant!7989 i!1173))))))

(assert (=> b!780075 (= lt!347627 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!780076 () Bool)

(declare-fun res!527868 () Bool)

(assert (=> b!780076 (=> (not res!527868) (not e!433980))))

(assert (=> b!780076 (= res!527868 (and (= (size!20803 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20803 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20803 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!780077 () Bool)

(assert (=> b!780077 (= e!433977 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20382 a!3186) j!159) a!3186 mask!3328) (Found!7989 j!159)))))

(declare-fun b!780078 () Bool)

(assert (=> b!780078 (= e!433981 e!433973)))

(declare-fun res!527869 () Bool)

(assert (=> b!780078 (=> res!527869 e!433973)))

(assert (=> b!780078 (= res!527869 (or (not (= lt!347622 lt!347629)) (= (select (store (arr!20382 a!3186) i!1173 k!2102) index!1321) lt!347625) (not (= (select (store (arr!20382 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!780078 (= lt!347622 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20382 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!67468 res!527862) b!780076))

(assert (= (and b!780076 res!527868) b!780067))

(assert (= (and b!780067 res!527866) b!780064))

(assert (= (and b!780064 res!527860) b!780068))

(assert (= (and b!780068 res!527864) b!780075))

(assert (= (and b!780075 res!527854) b!780061))

(assert (= (and b!780061 res!527856) b!780062))

(assert (= (and b!780062 res!527861) b!780069))

(assert (= (and b!780069 res!527859) b!780063))

(assert (= (and b!780063 res!527865) b!780070))

(assert (= (and b!780070 res!527863) b!780065))

(assert (= (and b!780065 c!86508) b!780074))

(assert (= (and b!780065 (not c!86508)) b!780077))

(assert (= (and b!780065 res!527855) b!780066))

(assert (= (and b!780066 res!527867) b!780073))

(assert (= (and b!780073 res!527857) b!780072))

(assert (= (and b!780073 (not res!527858)) b!780078))

(assert (= (and b!780078 (not res!527869)) b!780071))

(declare-fun m!723481 () Bool)

(assert (=> b!780070 m!723481))

(declare-fun m!723483 () Bool)

(assert (=> start!67468 m!723483))

(declare-fun m!723485 () Bool)

(assert (=> start!67468 m!723485))

(declare-fun m!723487 () Bool)

(assert (=> b!780067 m!723487))

(assert (=> b!780067 m!723487))

(declare-fun m!723489 () Bool)

(assert (=> b!780067 m!723489))

(assert (=> b!780072 m!723487))

(assert (=> b!780072 m!723487))

(declare-fun m!723491 () Bool)

(assert (=> b!780072 m!723491))

(assert (=> b!780074 m!723487))

(assert (=> b!780074 m!723487))

(declare-fun m!723493 () Bool)

(assert (=> b!780074 m!723493))

(declare-fun m!723495 () Bool)

(assert (=> b!780078 m!723495))

(declare-fun m!723497 () Bool)

(assert (=> b!780078 m!723497))

(assert (=> b!780078 m!723487))

(assert (=> b!780078 m!723487))

(declare-fun m!723499 () Bool)

(assert (=> b!780078 m!723499))

(declare-fun m!723501 () Bool)

(assert (=> b!780075 m!723501))

(declare-fun m!723503 () Bool)

(assert (=> b!780061 m!723503))

(assert (=> b!780077 m!723487))

(assert (=> b!780077 m!723487))

(assert (=> b!780077 m!723499))

(assert (=> b!780063 m!723487))

(assert (=> b!780063 m!723487))

(declare-fun m!723505 () Bool)

(assert (=> b!780063 m!723505))

(assert (=> b!780063 m!723505))

(assert (=> b!780063 m!723487))

(declare-fun m!723507 () Bool)

(assert (=> b!780063 m!723507))

(declare-fun m!723509 () Bool)

(assert (=> b!780064 m!723509))

(declare-fun m!723511 () Bool)

(assert (=> b!780062 m!723511))

(declare-fun m!723513 () Bool)

(assert (=> b!780068 m!723513))

(declare-fun m!723515 () Bool)

(assert (=> b!780066 m!723515))

(assert (=> b!780066 m!723495))

(declare-fun m!723517 () Bool)

(assert (=> b!780066 m!723517))

(assert (=> b!780066 m!723515))

(declare-fun m!723519 () Bool)

(assert (=> b!780066 m!723519))

(declare-fun m!723521 () Bool)

(assert (=> b!780066 m!723521))

(assert (=> b!780073 m!723487))

(assert (=> b!780073 m!723487))

(declare-fun m!723523 () Bool)

(assert (=> b!780073 m!723523))

(declare-fun m!723525 () Bool)

(assert (=> b!780073 m!723525))

(declare-fun m!723527 () Bool)

(assert (=> b!780073 m!723527))

(push 1)

