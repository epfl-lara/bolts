; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64378 () Bool)

(assert start!64378)

(declare-fun b!723479 () Bool)

(declare-fun e!405328 () Bool)

(assert (=> b!723479 (= e!405328 (not true))))

(declare-fun e!405325 () Bool)

(assert (=> b!723479 e!405325))

(declare-fun res!485178 () Bool)

(assert (=> b!723479 (=> (not res!485178) (not e!405325))))

(declare-datatypes ((array!40912 0))(
  ( (array!40913 (arr!19575 (Array (_ BitVec 32) (_ BitVec 64))) (size!19996 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40912)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40912 (_ BitVec 32)) Bool)

(assert (=> b!723479 (= res!485178 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24682 0))(
  ( (Unit!24683) )
))
(declare-fun lt!320689 () Unit!24682)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40912 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24682)

(assert (=> b!723479 (= lt!320689 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!723480 () Bool)

(declare-fun res!485168 () Bool)

(declare-fun e!405324 () Bool)

(assert (=> b!723480 (=> (not res!485168) (not e!405324))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723480 (= res!485168 (and (= (size!19996 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19996 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19996 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!485171 () Bool)

(assert (=> start!64378 (=> (not res!485171) (not e!405324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64378 (= res!485171 (validMask!0 mask!3328))))

(assert (=> start!64378 e!405324))

(assert (=> start!64378 true))

(declare-fun array_inv!15349 (array!40912) Bool)

(assert (=> start!64378 (array_inv!15349 a!3186)))

(declare-fun b!723481 () Bool)

(declare-fun res!485173 () Bool)

(declare-fun e!405330 () Bool)

(assert (=> b!723481 (=> (not res!485173) (not e!405330))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!723481 (= res!485173 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19575 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723482 () Bool)

(declare-fun res!485174 () Bool)

(assert (=> b!723482 (=> (not res!485174) (not e!405324))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723482 (= res!485174 (validKeyInArray!0 k!2102))))

(declare-fun b!723483 () Bool)

(declare-fun e!405329 () Bool)

(assert (=> b!723483 (= e!405324 e!405329)))

(declare-fun res!485177 () Bool)

(assert (=> b!723483 (=> (not res!485177) (not e!405329))))

(declare-datatypes ((SeekEntryResult!7182 0))(
  ( (MissingZero!7182 (index!31095 (_ BitVec 32))) (Found!7182 (index!31096 (_ BitVec 32))) (Intermediate!7182 (undefined!7994 Bool) (index!31097 (_ BitVec 32)) (x!62120 (_ BitVec 32))) (Undefined!7182) (MissingVacant!7182 (index!31098 (_ BitVec 32))) )
))
(declare-fun lt!320687 () SeekEntryResult!7182)

(assert (=> b!723483 (= res!485177 (or (= lt!320687 (MissingZero!7182 i!1173)) (= lt!320687 (MissingVacant!7182 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40912 (_ BitVec 32)) SeekEntryResult!7182)

(assert (=> b!723483 (= lt!320687 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!723484 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!405326 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40912 (_ BitVec 32)) SeekEntryResult!7182)

(assert (=> b!723484 (= e!405326 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19575 a!3186) j!159) a!3186 mask!3328) (Found!7182 j!159)))))

(declare-fun b!723485 () Bool)

(declare-fun res!485181 () Bool)

(assert (=> b!723485 (=> (not res!485181) (not e!405329))))

(declare-datatypes ((List!13630 0))(
  ( (Nil!13627) (Cons!13626 (h!14680 (_ BitVec 64)) (t!19953 List!13630)) )
))
(declare-fun arrayNoDuplicates!0 (array!40912 (_ BitVec 32) List!13630) Bool)

(assert (=> b!723485 (= res!485181 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13627))))

(declare-fun lt!320690 () SeekEntryResult!7182)

(declare-fun b!723486 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40912 (_ BitVec 32)) SeekEntryResult!7182)

(assert (=> b!723486 (= e!405326 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19575 a!3186) j!159) a!3186 mask!3328) lt!320690))))

(declare-fun b!723487 () Bool)

(assert (=> b!723487 (= e!405325 (= (seekEntryOrOpen!0 (select (arr!19575 a!3186) j!159) a!3186 mask!3328) (Found!7182 j!159)))))

(declare-fun b!723488 () Bool)

(declare-fun res!485169 () Bool)

(assert (=> b!723488 (=> (not res!485169) (not e!405324))))

(assert (=> b!723488 (= res!485169 (validKeyInArray!0 (select (arr!19575 a!3186) j!159)))))

(declare-fun b!723489 () Bool)

(declare-fun res!485175 () Bool)

(assert (=> b!723489 (=> (not res!485175) (not e!405324))))

(declare-fun arrayContainsKey!0 (array!40912 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723489 (= res!485175 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723490 () Bool)

(declare-fun res!485172 () Bool)

(assert (=> b!723490 (=> (not res!485172) (not e!405329))))

(assert (=> b!723490 (= res!485172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723491 () Bool)

(assert (=> b!723491 (= e!405330 e!405328)))

(declare-fun res!485176 () Bool)

(assert (=> b!723491 (=> (not res!485176) (not e!405328))))

(declare-fun lt!320688 () (_ BitVec 64))

(declare-fun lt!320686 () array!40912)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723491 (= res!485176 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320688 mask!3328) lt!320688 lt!320686 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320688 lt!320686 mask!3328)))))

(assert (=> b!723491 (= lt!320688 (select (store (arr!19575 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!723491 (= lt!320686 (array!40913 (store (arr!19575 a!3186) i!1173 k!2102) (size!19996 a!3186)))))

(declare-fun b!723492 () Bool)

(declare-fun res!485170 () Bool)

(assert (=> b!723492 (=> (not res!485170) (not e!405329))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723492 (= res!485170 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19996 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19996 a!3186))))))

(declare-fun b!723493 () Bool)

(assert (=> b!723493 (= e!405329 e!405330)))

(declare-fun res!485180 () Bool)

(assert (=> b!723493 (=> (not res!485180) (not e!405330))))

(assert (=> b!723493 (= res!485180 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19575 a!3186) j!159) mask!3328) (select (arr!19575 a!3186) j!159) a!3186 mask!3328) lt!320690))))

(assert (=> b!723493 (= lt!320690 (Intermediate!7182 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723494 () Bool)

(declare-fun res!485179 () Bool)

(assert (=> b!723494 (=> (not res!485179) (not e!405330))))

(assert (=> b!723494 (= res!485179 e!405326)))

(declare-fun c!79527 () Bool)

(assert (=> b!723494 (= c!79527 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!64378 res!485171) b!723480))

(assert (= (and b!723480 res!485168) b!723488))

(assert (= (and b!723488 res!485169) b!723482))

(assert (= (and b!723482 res!485174) b!723489))

(assert (= (and b!723489 res!485175) b!723483))

(assert (= (and b!723483 res!485177) b!723490))

(assert (= (and b!723490 res!485172) b!723485))

(assert (= (and b!723485 res!485181) b!723492))

(assert (= (and b!723492 res!485170) b!723493))

(assert (= (and b!723493 res!485180) b!723481))

(assert (= (and b!723481 res!485173) b!723494))

(assert (= (and b!723494 c!79527) b!723486))

(assert (= (and b!723494 (not c!79527)) b!723484))

(assert (= (and b!723494 res!485179) b!723491))

(assert (= (and b!723491 res!485176) b!723479))

(assert (= (and b!723479 res!485178) b!723487))

(declare-fun m!678007 () Bool)

(assert (=> b!723489 m!678007))

(declare-fun m!678009 () Bool)

(assert (=> b!723484 m!678009))

(assert (=> b!723484 m!678009))

(declare-fun m!678011 () Bool)

(assert (=> b!723484 m!678011))

(assert (=> b!723488 m!678009))

(assert (=> b!723488 m!678009))

(declare-fun m!678013 () Bool)

(assert (=> b!723488 m!678013))

(declare-fun m!678015 () Bool)

(assert (=> b!723483 m!678015))

(assert (=> b!723493 m!678009))

(assert (=> b!723493 m!678009))

(declare-fun m!678017 () Bool)

(assert (=> b!723493 m!678017))

(assert (=> b!723493 m!678017))

(assert (=> b!723493 m!678009))

(declare-fun m!678019 () Bool)

(assert (=> b!723493 m!678019))

(declare-fun m!678021 () Bool)

(assert (=> b!723491 m!678021))

(declare-fun m!678023 () Bool)

(assert (=> b!723491 m!678023))

(declare-fun m!678025 () Bool)

(assert (=> b!723491 m!678025))

(assert (=> b!723491 m!678021))

(declare-fun m!678027 () Bool)

(assert (=> b!723491 m!678027))

(declare-fun m!678029 () Bool)

(assert (=> b!723491 m!678029))

(declare-fun m!678031 () Bool)

(assert (=> b!723490 m!678031))

(declare-fun m!678033 () Bool)

(assert (=> b!723481 m!678033))

(declare-fun m!678035 () Bool)

(assert (=> start!64378 m!678035))

(declare-fun m!678037 () Bool)

(assert (=> start!64378 m!678037))

(declare-fun m!678039 () Bool)

(assert (=> b!723479 m!678039))

(declare-fun m!678041 () Bool)

(assert (=> b!723479 m!678041))

(assert (=> b!723486 m!678009))

(assert (=> b!723486 m!678009))

(declare-fun m!678043 () Bool)

(assert (=> b!723486 m!678043))

(assert (=> b!723487 m!678009))

(assert (=> b!723487 m!678009))

(declare-fun m!678045 () Bool)

(assert (=> b!723487 m!678045))

(declare-fun m!678047 () Bool)

(assert (=> b!723482 m!678047))

(declare-fun m!678049 () Bool)

(assert (=> b!723485 m!678049))

(push 1)

