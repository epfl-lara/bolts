; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64372 () Bool)

(assert start!64372)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40906 0))(
  ( (array!40907 (arr!19572 (Array (_ BitVec 32) (_ BitVec 64))) (size!19993 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40906)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!723342 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!405273 () Bool)

(declare-datatypes ((SeekEntryResult!7179 0))(
  ( (MissingZero!7179 (index!31083 (_ BitVec 32))) (Found!7179 (index!31084 (_ BitVec 32))) (Intermediate!7179 (undefined!7991 Bool) (index!31085 (_ BitVec 32)) (x!62109 (_ BitVec 32))) (Undefined!7179) (MissingVacant!7179 (index!31086 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40906 (_ BitVec 32)) SeekEntryResult!7179)

(assert (=> b!723342 (= e!405273 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19572 a!3186) j!159) a!3186 mask!3328) (Found!7179 j!159)))))

(declare-fun lt!320643 () SeekEntryResult!7179)

(declare-fun b!723343 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40906 (_ BitVec 32)) SeekEntryResult!7179)

(assert (=> b!723343 (= e!405273 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19572 a!3186) j!159) a!3186 mask!3328) lt!320643))))

(declare-fun b!723344 () Bool)

(declare-fun res!485055 () Bool)

(declare-fun e!405268 () Bool)

(assert (=> b!723344 (=> (not res!485055) (not e!405268))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723344 (= res!485055 (validKeyInArray!0 (select (arr!19572 a!3186) j!159)))))

(declare-fun b!723345 () Bool)

(declare-fun res!485059 () Bool)

(assert (=> b!723345 (=> (not res!485059) (not e!405268))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723345 (= res!485059 (and (= (size!19993 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19993 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19993 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723346 () Bool)

(declare-fun e!405269 () Bool)

(assert (=> b!723346 (= e!405268 e!405269)))

(declare-fun res!485051 () Bool)

(assert (=> b!723346 (=> (not res!485051) (not e!405269))))

(declare-fun lt!320645 () SeekEntryResult!7179)

(assert (=> b!723346 (= res!485051 (or (= lt!320645 (MissingZero!7179 i!1173)) (= lt!320645 (MissingVacant!7179 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40906 (_ BitVec 32)) SeekEntryResult!7179)

(assert (=> b!723346 (= lt!320645 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!723347 () Bool)

(declare-fun e!405272 () Bool)

(assert (=> b!723347 (= e!405269 e!405272)))

(declare-fun res!485053 () Bool)

(assert (=> b!723347 (=> (not res!485053) (not e!405272))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723347 (= res!485053 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19572 a!3186) j!159) mask!3328) (select (arr!19572 a!3186) j!159) a!3186 mask!3328) lt!320643))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723347 (= lt!320643 (Intermediate!7179 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723348 () Bool)

(declare-fun res!485060 () Bool)

(assert (=> b!723348 (=> (not res!485060) (not e!405269))))

(declare-datatypes ((List!13627 0))(
  ( (Nil!13624) (Cons!13623 (h!14677 (_ BitVec 64)) (t!19950 List!13627)) )
))
(declare-fun arrayNoDuplicates!0 (array!40906 (_ BitVec 32) List!13627) Bool)

(assert (=> b!723348 (= res!485060 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13624))))

(declare-fun res!485052 () Bool)

(assert (=> start!64372 (=> (not res!485052) (not e!405268))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64372 (= res!485052 (validMask!0 mask!3328))))

(assert (=> start!64372 e!405268))

(assert (=> start!64372 true))

(declare-fun array_inv!15346 (array!40906) Bool)

(assert (=> start!64372 (array_inv!15346 a!3186)))

(declare-fun b!723349 () Bool)

(declare-fun res!485050 () Bool)

(assert (=> b!723349 (=> (not res!485050) (not e!405272))))

(assert (=> b!723349 (= res!485050 e!405273)))

(declare-fun c!79518 () Bool)

(assert (=> b!723349 (= c!79518 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723350 () Bool)

(declare-fun e!405270 () Bool)

(assert (=> b!723350 (= e!405270 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40906 (_ BitVec 32)) Bool)

(assert (=> b!723350 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!24676 0))(
  ( (Unit!24677) )
))
(declare-fun lt!320642 () Unit!24676)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40906 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24676)

(assert (=> b!723350 (= lt!320642 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!723351 () Bool)

(assert (=> b!723351 (= e!405272 e!405270)))

(declare-fun res!485056 () Bool)

(assert (=> b!723351 (=> (not res!485056) (not e!405270))))

(declare-fun lt!320644 () array!40906)

(declare-fun lt!320641 () (_ BitVec 64))

(assert (=> b!723351 (= res!485056 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320641 mask!3328) lt!320641 lt!320644 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320641 lt!320644 mask!3328)))))

(assert (=> b!723351 (= lt!320641 (select (store (arr!19572 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!723351 (= lt!320644 (array!40907 (store (arr!19572 a!3186) i!1173 k!2102) (size!19993 a!3186)))))

(declare-fun b!723352 () Bool)

(declare-fun res!485057 () Bool)

(assert (=> b!723352 (=> (not res!485057) (not e!405268))))

(declare-fun arrayContainsKey!0 (array!40906 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723352 (= res!485057 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723353 () Bool)

(declare-fun res!485054 () Bool)

(assert (=> b!723353 (=> (not res!485054) (not e!405269))))

(assert (=> b!723353 (= res!485054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723354 () Bool)

(declare-fun res!485058 () Bool)

(assert (=> b!723354 (=> (not res!485058) (not e!405272))))

(assert (=> b!723354 (= res!485058 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19572 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723355 () Bool)

(declare-fun res!485049 () Bool)

(assert (=> b!723355 (=> (not res!485049) (not e!405268))))

(assert (=> b!723355 (= res!485049 (validKeyInArray!0 k!2102))))

(declare-fun b!723356 () Bool)

(declare-fun res!485061 () Bool)

(assert (=> b!723356 (=> (not res!485061) (not e!405269))))

(assert (=> b!723356 (= res!485061 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19993 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19993 a!3186))))))

(assert (= (and start!64372 res!485052) b!723345))

(assert (= (and b!723345 res!485059) b!723344))

(assert (= (and b!723344 res!485055) b!723355))

(assert (= (and b!723355 res!485049) b!723352))

(assert (= (and b!723352 res!485057) b!723346))

(assert (= (and b!723346 res!485051) b!723353))

(assert (= (and b!723353 res!485054) b!723348))

(assert (= (and b!723348 res!485060) b!723356))

(assert (= (and b!723356 res!485061) b!723347))

(assert (= (and b!723347 res!485053) b!723354))

(assert (= (and b!723354 res!485058) b!723349))

(assert (= (and b!723349 c!79518) b!723343))

(assert (= (and b!723349 (not c!79518)) b!723342))

(assert (= (and b!723349 res!485050) b!723351))

(assert (= (and b!723351 res!485056) b!723350))

(declare-fun m!677881 () Bool)

(assert (=> b!723354 m!677881))

(declare-fun m!677883 () Bool)

(assert (=> b!723348 m!677883))

(declare-fun m!677885 () Bool)

(assert (=> b!723350 m!677885))

(declare-fun m!677887 () Bool)

(assert (=> b!723350 m!677887))

(declare-fun m!677889 () Bool)

(assert (=> b!723342 m!677889))

(assert (=> b!723342 m!677889))

(declare-fun m!677891 () Bool)

(assert (=> b!723342 m!677891))

(assert (=> b!723343 m!677889))

(assert (=> b!723343 m!677889))

(declare-fun m!677893 () Bool)

(assert (=> b!723343 m!677893))

(declare-fun m!677895 () Bool)

(assert (=> b!723346 m!677895))

(declare-fun m!677897 () Bool)

(assert (=> b!723355 m!677897))

(declare-fun m!677899 () Bool)

(assert (=> start!64372 m!677899))

(declare-fun m!677901 () Bool)

(assert (=> start!64372 m!677901))

(declare-fun m!677903 () Bool)

(assert (=> b!723352 m!677903))

(declare-fun m!677905 () Bool)

(assert (=> b!723351 m!677905))

(declare-fun m!677907 () Bool)

(assert (=> b!723351 m!677907))

(declare-fun m!677909 () Bool)

(assert (=> b!723351 m!677909))

(declare-fun m!677911 () Bool)

(assert (=> b!723351 m!677911))

(assert (=> b!723351 m!677905))

(declare-fun m!677913 () Bool)

(assert (=> b!723351 m!677913))

(declare-fun m!677915 () Bool)

(assert (=> b!723353 m!677915))

(assert (=> b!723344 m!677889))

(assert (=> b!723344 m!677889))

(declare-fun m!677917 () Bool)

(assert (=> b!723344 m!677917))

(assert (=> b!723347 m!677889))

(assert (=> b!723347 m!677889))

(declare-fun m!677919 () Bool)

(assert (=> b!723347 m!677919))

(assert (=> b!723347 m!677919))

(assert (=> b!723347 m!677889))

(declare-fun m!677921 () Bool)

(assert (=> b!723347 m!677921))

(push 1)

