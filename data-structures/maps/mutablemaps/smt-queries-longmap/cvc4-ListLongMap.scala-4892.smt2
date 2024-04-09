; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67484 () Bool)

(assert start!67484)

(declare-datatypes ((array!42605 0))(
  ( (array!42606 (arr!20390 (Array (_ BitVec 32) (_ BitVec 64))) (size!20811 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42605)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7997 0))(
  ( (MissingZero!7997 (index!34355 (_ BitVec 32))) (Found!7997 (index!34356 (_ BitVec 32))) (Intermediate!7997 (undefined!8809 Bool) (index!34357 (_ BitVec 32)) (x!65328 (_ BitVec 32))) (Undefined!7997) (MissingVacant!7997 (index!34358 (_ BitVec 32))) )
))
(declare-fun lt!347861 () SeekEntryResult!7997)

(declare-fun e!434189 () Bool)

(declare-fun b!780544 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42605 (_ BitVec 32)) SeekEntryResult!7997)

(assert (=> b!780544 (= e!434189 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20390 a!3186) j!159) a!3186 mask!3328) lt!347861))))

(declare-fun b!780545 () Bool)

(declare-fun e!434194 () Bool)

(declare-fun e!434192 () Bool)

(assert (=> b!780545 (= e!434194 e!434192)))

(declare-fun res!528257 () Bool)

(assert (=> b!780545 (=> (not res!528257) (not e!434192))))

(declare-fun lt!347864 () SeekEntryResult!7997)

(declare-fun lt!347868 () SeekEntryResult!7997)

(assert (=> b!780545 (= res!528257 (= lt!347864 lt!347868))))

(declare-fun lt!347869 () array!42605)

(declare-fun lt!347866 () (_ BitVec 64))

(assert (=> b!780545 (= lt!347868 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347866 lt!347869 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780545 (= lt!347864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347866 mask!3328) lt!347866 lt!347869 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!780545 (= lt!347866 (select (store (arr!20390 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!780545 (= lt!347869 (array!42606 (store (arr!20390 a!3186) i!1173 k!2102) (size!20811 a!3186)))))

(declare-fun b!780546 () Bool)

(declare-fun res!528256 () Bool)

(assert (=> b!780546 (=> (not res!528256) (not e!434194))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!780546 (= res!528256 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20390 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!780547 () Bool)

(declare-fun res!528271 () Bool)

(declare-fun e!434196 () Bool)

(assert (=> b!780547 (=> (not res!528271) (not e!434196))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!780547 (= res!528271 (validKeyInArray!0 k!2102))))

(declare-fun b!780548 () Bool)

(declare-fun e!434197 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!347862 () SeekEntryResult!7997)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42605 (_ BitVec 32)) SeekEntryResult!7997)

(assert (=> b!780548 (= e!434197 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20390 a!3186) j!159) a!3186 mask!3328) lt!347862))))

(declare-fun b!780549 () Bool)

(assert (=> b!780549 (= e!434189 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20390 a!3186) j!159) a!3186 mask!3328) (Found!7997 j!159)))))

(declare-fun b!780550 () Bool)

(declare-datatypes ((Unit!26898 0))(
  ( (Unit!26899) )
))
(declare-fun e!434193 () Unit!26898)

(declare-fun Unit!26900 () Unit!26898)

(assert (=> b!780550 (= e!434193 Unit!26900)))

(declare-fun b!780551 () Bool)

(declare-fun res!528269 () Bool)

(declare-fun e!434190 () Bool)

(assert (=> b!780551 (=> res!528269 e!434190)))

(assert (=> b!780551 (= res!528269 (= (select (store (arr!20390 a!3186) i!1173 k!2102) index!1321) lt!347866))))

(declare-fun b!780552 () Bool)

(declare-fun res!528258 () Bool)

(declare-fun e!434191 () Bool)

(assert (=> b!780552 (=> (not res!528258) (not e!434191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42605 (_ BitVec 32)) Bool)

(assert (=> b!780552 (= res!528258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!780553 () Bool)

(assert (=> b!780553 (= e!434191 e!434194)))

(declare-fun res!528265 () Bool)

(assert (=> b!780553 (=> (not res!528265) (not e!434194))))

(assert (=> b!780553 (= res!528265 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20390 a!3186) j!159) mask!3328) (select (arr!20390 a!3186) j!159) a!3186 mask!3328) lt!347861))))

(assert (=> b!780553 (= lt!347861 (Intermediate!7997 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!780554 () Bool)

(assert (=> b!780554 (= e!434190 true)))

(declare-fun lt!347860 () Unit!26898)

(assert (=> b!780554 (= lt!347860 e!434193)))

(declare-fun c!86550 () Bool)

(assert (=> b!780554 (= c!86550 (= (select (store (arr!20390 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!528266 () Bool)

(assert (=> start!67484 (=> (not res!528266) (not e!434196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67484 (= res!528266 (validMask!0 mask!3328))))

(assert (=> start!67484 e!434196))

(assert (=> start!67484 true))

(declare-fun array_inv!16164 (array!42605) Bool)

(assert (=> start!67484 (array_inv!16164 a!3186)))

(declare-fun b!780555 () Bool)

(declare-fun res!528262 () Bool)

(assert (=> b!780555 (=> res!528262 e!434190)))

(assert (=> b!780555 (= res!528262 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20390 a!3186) j!159) a!3186 mask!3328) lt!347862)))))

(declare-fun b!780556 () Bool)

(declare-fun res!528268 () Bool)

(assert (=> b!780556 (=> (not res!528268) (not e!434196))))

(assert (=> b!780556 (= res!528268 (validKeyInArray!0 (select (arr!20390 a!3186) j!159)))))

(declare-fun b!780557 () Bool)

(declare-fun res!528259 () Bool)

(assert (=> b!780557 (=> (not res!528259) (not e!434191))))

(assert (=> b!780557 (= res!528259 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20811 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20811 a!3186))))))

(declare-fun b!780558 () Bool)

(declare-fun res!528270 () Bool)

(assert (=> b!780558 (=> (not res!528270) (not e!434194))))

(assert (=> b!780558 (= res!528270 e!434189)))

(declare-fun c!86549 () Bool)

(assert (=> b!780558 (= c!86549 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!780559 () Bool)

(declare-fun res!528255 () Bool)

(assert (=> b!780559 (=> (not res!528255) (not e!434196))))

(declare-fun arrayContainsKey!0 (array!42605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!780559 (= res!528255 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!780560 () Bool)

(assert (=> b!780560 (= e!434192 (not e!434190))))

(declare-fun res!528260 () Bool)

(assert (=> b!780560 (=> res!528260 e!434190)))

(assert (=> b!780560 (= res!528260 (or (not (is-Intermediate!7997 lt!347868)) (bvslt x!1131 (x!65328 lt!347868)) (not (= x!1131 (x!65328 lt!347868))) (not (= index!1321 (index!34357 lt!347868)))))))

(assert (=> b!780560 e!434197))

(declare-fun res!528261 () Bool)

(assert (=> b!780560 (=> (not res!528261) (not e!434197))))

(declare-fun lt!347863 () SeekEntryResult!7997)

(assert (=> b!780560 (= res!528261 (= lt!347863 lt!347862))))

(assert (=> b!780560 (= lt!347862 (Found!7997 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42605 (_ BitVec 32)) SeekEntryResult!7997)

(assert (=> b!780560 (= lt!347863 (seekEntryOrOpen!0 (select (arr!20390 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!780560 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!347867 () Unit!26898)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42605 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26898)

(assert (=> b!780560 (= lt!347867 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!780561 () Bool)

(declare-fun Unit!26901 () Unit!26898)

(assert (=> b!780561 (= e!434193 Unit!26901)))

(assert (=> b!780561 false))

(declare-fun b!780562 () Bool)

(declare-fun res!528267 () Bool)

(assert (=> b!780562 (=> (not res!528267) (not e!434191))))

(declare-datatypes ((List!14445 0))(
  ( (Nil!14442) (Cons!14441 (h!15558 (_ BitVec 64)) (t!20768 List!14445)) )
))
(declare-fun arrayNoDuplicates!0 (array!42605 (_ BitVec 32) List!14445) Bool)

(assert (=> b!780562 (= res!528267 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14442))))

(declare-fun b!780563 () Bool)

(assert (=> b!780563 (= e!434196 e!434191)))

(declare-fun res!528263 () Bool)

(assert (=> b!780563 (=> (not res!528263) (not e!434191))))

(declare-fun lt!347865 () SeekEntryResult!7997)

(assert (=> b!780563 (= res!528263 (or (= lt!347865 (MissingZero!7997 i!1173)) (= lt!347865 (MissingVacant!7997 i!1173))))))

(assert (=> b!780563 (= lt!347865 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!780564 () Bool)

(declare-fun res!528264 () Bool)

(assert (=> b!780564 (=> (not res!528264) (not e!434196))))

(assert (=> b!780564 (= res!528264 (and (= (size!20811 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20811 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20811 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!67484 res!528266) b!780564))

(assert (= (and b!780564 res!528264) b!780556))

(assert (= (and b!780556 res!528268) b!780547))

(assert (= (and b!780547 res!528271) b!780559))

(assert (= (and b!780559 res!528255) b!780563))

(assert (= (and b!780563 res!528263) b!780552))

(assert (= (and b!780552 res!528258) b!780562))

(assert (= (and b!780562 res!528267) b!780557))

(assert (= (and b!780557 res!528259) b!780553))

(assert (= (and b!780553 res!528265) b!780546))

(assert (= (and b!780546 res!528256) b!780558))

(assert (= (and b!780558 c!86549) b!780544))

(assert (= (and b!780558 (not c!86549)) b!780549))

(assert (= (and b!780558 res!528270) b!780545))

(assert (= (and b!780545 res!528257) b!780560))

(assert (= (and b!780560 res!528261) b!780548))

(assert (= (and b!780560 (not res!528260)) b!780555))

(assert (= (and b!780555 (not res!528262)) b!780551))

(assert (= (and b!780551 (not res!528269)) b!780554))

(assert (= (and b!780554 c!86550) b!780561))

(assert (= (and b!780554 (not c!86550)) b!780550))

(declare-fun m!723865 () Bool)

(assert (=> b!780554 m!723865))

(declare-fun m!723867 () Bool)

(assert (=> b!780554 m!723867))

(declare-fun m!723869 () Bool)

(assert (=> b!780555 m!723869))

(assert (=> b!780555 m!723869))

(declare-fun m!723871 () Bool)

(assert (=> b!780555 m!723871))

(assert (=> b!780556 m!723869))

(assert (=> b!780556 m!723869))

(declare-fun m!723873 () Bool)

(assert (=> b!780556 m!723873))

(assert (=> b!780551 m!723865))

(assert (=> b!780551 m!723867))

(assert (=> b!780548 m!723869))

(assert (=> b!780548 m!723869))

(declare-fun m!723875 () Bool)

(assert (=> b!780548 m!723875))

(assert (=> b!780560 m!723869))

(assert (=> b!780560 m!723869))

(declare-fun m!723877 () Bool)

(assert (=> b!780560 m!723877))

(declare-fun m!723879 () Bool)

(assert (=> b!780560 m!723879))

(declare-fun m!723881 () Bool)

(assert (=> b!780560 m!723881))

(declare-fun m!723883 () Bool)

(assert (=> b!780546 m!723883))

(declare-fun m!723885 () Bool)

(assert (=> b!780563 m!723885))

(declare-fun m!723887 () Bool)

(assert (=> start!67484 m!723887))

(declare-fun m!723889 () Bool)

(assert (=> start!67484 m!723889))

(assert (=> b!780545 m!723865))

(declare-fun m!723891 () Bool)

(assert (=> b!780545 m!723891))

(declare-fun m!723893 () Bool)

(assert (=> b!780545 m!723893))

(declare-fun m!723895 () Bool)

(assert (=> b!780545 m!723895))

(assert (=> b!780545 m!723893))

(declare-fun m!723897 () Bool)

(assert (=> b!780545 m!723897))

(declare-fun m!723899 () Bool)

(assert (=> b!780547 m!723899))

(declare-fun m!723901 () Bool)

(assert (=> b!780559 m!723901))

(assert (=> b!780544 m!723869))

(assert (=> b!780544 m!723869))

(declare-fun m!723903 () Bool)

(assert (=> b!780544 m!723903))

(declare-fun m!723905 () Bool)

(assert (=> b!780562 m!723905))

(assert (=> b!780549 m!723869))

(assert (=> b!780549 m!723869))

(assert (=> b!780549 m!723871))

(assert (=> b!780553 m!723869))

(assert (=> b!780553 m!723869))

(declare-fun m!723907 () Bool)

(assert (=> b!780553 m!723907))

(assert (=> b!780553 m!723907))

(assert (=> b!780553 m!723869))

(declare-fun m!723909 () Bool)

(assert (=> b!780553 m!723909))

(declare-fun m!723911 () Bool)

(assert (=> b!780552 m!723911))

(push 1)

