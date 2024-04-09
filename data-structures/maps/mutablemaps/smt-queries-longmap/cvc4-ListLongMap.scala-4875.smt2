; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67184 () Bool)

(assert start!67184)

(declare-fun b!776371 () Bool)

(declare-fun res!525342 () Bool)

(declare-fun e!432050 () Bool)

(assert (=> b!776371 (=> (not res!525342) (not e!432050))))

(declare-datatypes ((array!42494 0))(
  ( (array!42495 (arr!20339 (Array (_ BitVec 32) (_ BitVec 64))) (size!20760 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42494)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776371 (= res!525342 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!432051 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!776372 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7946 0))(
  ( (MissingZero!7946 (index!34151 (_ BitVec 32))) (Found!7946 (index!34152 (_ BitVec 32))) (Intermediate!7946 (undefined!8758 Bool) (index!34153 (_ BitVec 32)) (x!65114 (_ BitVec 32))) (Undefined!7946) (MissingVacant!7946 (index!34154 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42494 (_ BitVec 32)) SeekEntryResult!7946)

(assert (=> b!776372 (= e!432051 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20339 a!3186) j!159) a!3186 mask!3328) (Found!7946 j!159)))))

(declare-fun b!776373 () Bool)

(declare-fun e!432054 () Bool)

(declare-fun e!432055 () Bool)

(assert (=> b!776373 (= e!432054 e!432055)))

(declare-fun res!525339 () Bool)

(assert (=> b!776373 (=> (not res!525339) (not e!432055))))

(declare-fun lt!345917 () SeekEntryResult!7946)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42494 (_ BitVec 32)) SeekEntryResult!7946)

(assert (=> b!776373 (= res!525339 (= (seekEntryOrOpen!0 (select (arr!20339 a!3186) j!159) a!3186 mask!3328) lt!345917))))

(assert (=> b!776373 (= lt!345917 (Found!7946 j!159))))

(declare-fun b!776374 () Bool)

(declare-fun e!432052 () Bool)

(declare-fun e!432049 () Bool)

(assert (=> b!776374 (= e!432052 (not e!432049))))

(declare-fun res!525346 () Bool)

(assert (=> b!776374 (=> res!525346 e!432049)))

(declare-fun lt!345919 () SeekEntryResult!7946)

(assert (=> b!776374 (= res!525346 (or (not (is-Intermediate!7946 lt!345919)) (bvslt x!1131 (x!65114 lt!345919)) (not (= x!1131 (x!65114 lt!345919))) (not (= index!1321 (index!34153 lt!345919)))))))

(assert (=> b!776374 e!432054))

(declare-fun res!525344 () Bool)

(assert (=> b!776374 (=> (not res!525344) (not e!432054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42494 (_ BitVec 32)) Bool)

(assert (=> b!776374 (= res!525344 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26786 0))(
  ( (Unit!26787) )
))
(declare-fun lt!345918 () Unit!26786)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42494 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26786)

(assert (=> b!776374 (= lt!345918 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776375 () Bool)

(declare-fun res!525343 () Bool)

(assert (=> b!776375 (=> (not res!525343) (not e!432050))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!776375 (= res!525343 (and (= (size!20760 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20760 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20760 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!776376 () Bool)

(declare-fun res!525331 () Bool)

(assert (=> b!776376 (=> (not res!525331) (not e!432050))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776376 (= res!525331 (validKeyInArray!0 k!2102))))

(declare-fun res!525338 () Bool)

(assert (=> start!67184 (=> (not res!525338) (not e!432050))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67184 (= res!525338 (validMask!0 mask!3328))))

(assert (=> start!67184 e!432050))

(assert (=> start!67184 true))

(declare-fun array_inv!16113 (array!42494) Bool)

(assert (=> start!67184 (array_inv!16113 a!3186)))

(declare-fun b!776377 () Bool)

(declare-fun e!432047 () Bool)

(assert (=> b!776377 (= e!432050 e!432047)))

(declare-fun res!525334 () Bool)

(assert (=> b!776377 (=> (not res!525334) (not e!432047))))

(declare-fun lt!345923 () SeekEntryResult!7946)

(assert (=> b!776377 (= res!525334 (or (= lt!345923 (MissingZero!7946 i!1173)) (= lt!345923 (MissingVacant!7946 i!1173))))))

(assert (=> b!776377 (= lt!345923 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!776378 () Bool)

(declare-fun res!525341 () Bool)

(declare-fun e!432048 () Bool)

(assert (=> b!776378 (=> (not res!525341) (not e!432048))))

(assert (=> b!776378 (= res!525341 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20339 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776379 () Bool)

(declare-fun lt!345924 () SeekEntryResult!7946)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42494 (_ BitVec 32)) SeekEntryResult!7946)

(assert (=> b!776379 (= e!432051 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20339 a!3186) j!159) a!3186 mask!3328) lt!345924))))

(declare-fun b!776380 () Bool)

(declare-fun res!525332 () Bool)

(assert (=> b!776380 (=> (not res!525332) (not e!432047))))

(declare-datatypes ((List!14394 0))(
  ( (Nil!14391) (Cons!14390 (h!15498 (_ BitVec 64)) (t!20717 List!14394)) )
))
(declare-fun arrayNoDuplicates!0 (array!42494 (_ BitVec 32) List!14394) Bool)

(assert (=> b!776380 (= res!525332 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14391))))

(declare-fun b!776381 () Bool)

(assert (=> b!776381 (= e!432049 true)))

(declare-fun lt!345921 () SeekEntryResult!7946)

(assert (=> b!776381 (= lt!345921 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20339 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!776382 () Bool)

(declare-fun res!525335 () Bool)

(assert (=> b!776382 (=> (not res!525335) (not e!432047))))

(assert (=> b!776382 (= res!525335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!776383 () Bool)

(declare-fun res!525340 () Bool)

(assert (=> b!776383 (=> (not res!525340) (not e!432050))))

(assert (=> b!776383 (= res!525340 (validKeyInArray!0 (select (arr!20339 a!3186) j!159)))))

(declare-fun b!776384 () Bool)

(assert (=> b!776384 (= e!432047 e!432048)))

(declare-fun res!525333 () Bool)

(assert (=> b!776384 (=> (not res!525333) (not e!432048))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776384 (= res!525333 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20339 a!3186) j!159) mask!3328) (select (arr!20339 a!3186) j!159) a!3186 mask!3328) lt!345924))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!776384 (= lt!345924 (Intermediate!7946 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!776385 () Bool)

(declare-fun res!525345 () Bool)

(assert (=> b!776385 (=> (not res!525345) (not e!432047))))

(assert (=> b!776385 (= res!525345 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20760 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20760 a!3186))))))

(declare-fun b!776386 () Bool)

(declare-fun res!525337 () Bool)

(assert (=> b!776386 (=> (not res!525337) (not e!432048))))

(assert (=> b!776386 (= res!525337 e!432051)))

(declare-fun c!85920 () Bool)

(assert (=> b!776386 (= c!85920 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!776387 () Bool)

(assert (=> b!776387 (= e!432048 e!432052)))

(declare-fun res!525336 () Bool)

(assert (=> b!776387 (=> (not res!525336) (not e!432052))))

(declare-fun lt!345925 () SeekEntryResult!7946)

(assert (=> b!776387 (= res!525336 (= lt!345925 lt!345919))))

(declare-fun lt!345920 () array!42494)

(declare-fun lt!345922 () (_ BitVec 64))

(assert (=> b!776387 (= lt!345919 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345922 lt!345920 mask!3328))))

(assert (=> b!776387 (= lt!345925 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345922 mask!3328) lt!345922 lt!345920 mask!3328))))

(assert (=> b!776387 (= lt!345922 (select (store (arr!20339 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!776387 (= lt!345920 (array!42495 (store (arr!20339 a!3186) i!1173 k!2102) (size!20760 a!3186)))))

(declare-fun b!776388 () Bool)

(assert (=> b!776388 (= e!432055 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20339 a!3186) j!159) a!3186 mask!3328) lt!345917))))

(assert (= (and start!67184 res!525338) b!776375))

(assert (= (and b!776375 res!525343) b!776383))

(assert (= (and b!776383 res!525340) b!776376))

(assert (= (and b!776376 res!525331) b!776371))

(assert (= (and b!776371 res!525342) b!776377))

(assert (= (and b!776377 res!525334) b!776382))

(assert (= (and b!776382 res!525335) b!776380))

(assert (= (and b!776380 res!525332) b!776385))

(assert (= (and b!776385 res!525345) b!776384))

(assert (= (and b!776384 res!525333) b!776378))

(assert (= (and b!776378 res!525341) b!776386))

(assert (= (and b!776386 c!85920) b!776379))

(assert (= (and b!776386 (not c!85920)) b!776372))

(assert (= (and b!776386 res!525337) b!776387))

(assert (= (and b!776387 res!525336) b!776374))

(assert (= (and b!776374 res!525344) b!776373))

(assert (= (and b!776373 res!525339) b!776388))

(assert (= (and b!776374 (not res!525346)) b!776381))

(declare-fun m!720519 () Bool)

(assert (=> start!67184 m!720519))

(declare-fun m!720521 () Bool)

(assert (=> start!67184 m!720521))

(declare-fun m!720523 () Bool)

(assert (=> b!776380 m!720523))

(declare-fun m!720525 () Bool)

(assert (=> b!776383 m!720525))

(assert (=> b!776383 m!720525))

(declare-fun m!720527 () Bool)

(assert (=> b!776383 m!720527))

(declare-fun m!720529 () Bool)

(assert (=> b!776377 m!720529))

(assert (=> b!776384 m!720525))

(assert (=> b!776384 m!720525))

(declare-fun m!720531 () Bool)

(assert (=> b!776384 m!720531))

(assert (=> b!776384 m!720531))

(assert (=> b!776384 m!720525))

(declare-fun m!720533 () Bool)

(assert (=> b!776384 m!720533))

(declare-fun m!720535 () Bool)

(assert (=> b!776387 m!720535))

(declare-fun m!720537 () Bool)

(assert (=> b!776387 m!720537))

(declare-fun m!720539 () Bool)

(assert (=> b!776387 m!720539))

(declare-fun m!720541 () Bool)

(assert (=> b!776387 m!720541))

(assert (=> b!776387 m!720537))

(declare-fun m!720543 () Bool)

(assert (=> b!776387 m!720543))

(declare-fun m!720545 () Bool)

(assert (=> b!776382 m!720545))

(assert (=> b!776372 m!720525))

(assert (=> b!776372 m!720525))

(declare-fun m!720547 () Bool)

(assert (=> b!776372 m!720547))

(assert (=> b!776388 m!720525))

(assert (=> b!776388 m!720525))

(declare-fun m!720549 () Bool)

(assert (=> b!776388 m!720549))

(declare-fun m!720551 () Bool)

(assert (=> b!776378 m!720551))

(declare-fun m!720553 () Bool)

(assert (=> b!776376 m!720553))

(assert (=> b!776381 m!720525))

(assert (=> b!776381 m!720525))

(assert (=> b!776381 m!720547))

(declare-fun m!720555 () Bool)

(assert (=> b!776371 m!720555))

(declare-fun m!720557 () Bool)

(assert (=> b!776374 m!720557))

(declare-fun m!720559 () Bool)

(assert (=> b!776374 m!720559))

(assert (=> b!776379 m!720525))

(assert (=> b!776379 m!720525))

(declare-fun m!720561 () Bool)

(assert (=> b!776379 m!720561))

(assert (=> b!776373 m!720525))

(assert (=> b!776373 m!720525))

(declare-fun m!720563 () Bool)

(assert (=> b!776373 m!720563))

(push 1)

