; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64398 () Bool)

(assert start!64398)

(declare-fun b!723959 () Bool)

(declare-fun res!485599 () Bool)

(declare-fun e!405539 () Bool)

(assert (=> b!723959 (=> (not res!485599) (not e!405539))))

(declare-datatypes ((array!40932 0))(
  ( (array!40933 (arr!19585 (Array (_ BitVec 32) (_ BitVec 64))) (size!20006 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40932)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723959 (= res!485599 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723960 () Bool)

(declare-fun res!485597 () Bool)

(assert (=> b!723960 (=> (not res!485597) (not e!405539))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723960 (= res!485597 (validKeyInArray!0 (select (arr!19585 a!3186) j!159)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!723962 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!405536 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7192 0))(
  ( (MissingZero!7192 (index!31135 (_ BitVec 32))) (Found!7192 (index!31136 (_ BitVec 32))) (Intermediate!7192 (undefined!8004 Bool) (index!31137 (_ BitVec 32)) (x!62154 (_ BitVec 32))) (Undefined!7192) (MissingVacant!7192 (index!31138 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40932 (_ BitVec 32)) SeekEntryResult!7192)

(assert (=> b!723962 (= e!405536 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19585 a!3186) j!159) a!3186 mask!3328) (Found!7192 j!159)))))

(declare-fun b!723963 () Bool)

(declare-fun res!485591 () Bool)

(assert (=> b!723963 (=> (not res!485591) (not e!405539))))

(assert (=> b!723963 (= res!485591 (validKeyInArray!0 k0!2102))))

(declare-fun b!723964 () Bool)

(declare-fun res!485595 () Bool)

(declare-fun e!405538 () Bool)

(assert (=> b!723964 (=> (not res!485595) (not e!405538))))

(assert (=> b!723964 (= res!485595 e!405536)))

(declare-fun c!79557 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723964 (= c!79557 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723965 () Bool)

(declare-fun res!485600 () Bool)

(declare-fun e!405534 () Bool)

(assert (=> b!723965 (=> (not res!485600) (not e!405534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40932 (_ BitVec 32)) Bool)

(assert (=> b!723965 (= res!485600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!320837 () SeekEntryResult!7192)

(declare-fun b!723966 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40932 (_ BitVec 32)) SeekEntryResult!7192)

(assert (=> b!723966 (= e!405536 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19585 a!3186) j!159) a!3186 mask!3328) lt!320837))))

(declare-fun b!723967 () Bool)

(declare-fun res!485590 () Bool)

(assert (=> b!723967 (=> (not res!485590) (not e!405539))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723967 (= res!485590 (and (= (size!20006 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20006 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20006 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723968 () Bool)

(declare-fun res!485594 () Bool)

(assert (=> b!723968 (=> (not res!485594) (not e!405534))))

(assert (=> b!723968 (= res!485594 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20006 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20006 a!3186))))))

(declare-fun b!723969 () Bool)

(declare-fun e!405540 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40932 (_ BitVec 32)) SeekEntryResult!7192)

(assert (=> b!723969 (= e!405540 (= (seekEntryOrOpen!0 (select (arr!19585 a!3186) j!159) a!3186 mask!3328) (Found!7192 j!159)))))

(declare-fun b!723970 () Bool)

(assert (=> b!723970 (= e!405534 e!405538)))

(declare-fun res!485601 () Bool)

(assert (=> b!723970 (=> (not res!485601) (not e!405538))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723970 (= res!485601 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19585 a!3186) j!159) mask!3328) (select (arr!19585 a!3186) j!159) a!3186 mask!3328) lt!320837))))

(assert (=> b!723970 (= lt!320837 (Intermediate!7192 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723971 () Bool)

(assert (=> b!723971 (= e!405539 e!405534)))

(declare-fun res!485593 () Bool)

(assert (=> b!723971 (=> (not res!485593) (not e!405534))))

(declare-fun lt!320839 () SeekEntryResult!7192)

(assert (=> b!723971 (= res!485593 (or (= lt!320839 (MissingZero!7192 i!1173)) (= lt!320839 (MissingVacant!7192 i!1173))))))

(assert (=> b!723971 (= lt!320839 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!723972 () Bool)

(declare-fun e!405537 () Bool)

(assert (=> b!723972 (= e!405537 (not (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(assert (=> b!723972 e!405540))

(declare-fun res!485592 () Bool)

(assert (=> b!723972 (=> (not res!485592) (not e!405540))))

(assert (=> b!723972 (= res!485592 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24702 0))(
  ( (Unit!24703) )
))
(declare-fun lt!320840 () Unit!24702)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40932 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24702)

(assert (=> b!723972 (= lt!320840 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!485589 () Bool)

(assert (=> start!64398 (=> (not res!485589) (not e!405539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64398 (= res!485589 (validMask!0 mask!3328))))

(assert (=> start!64398 e!405539))

(assert (=> start!64398 true))

(declare-fun array_inv!15359 (array!40932) Bool)

(assert (=> start!64398 (array_inv!15359 a!3186)))

(declare-fun b!723961 () Bool)

(declare-fun res!485596 () Bool)

(assert (=> b!723961 (=> (not res!485596) (not e!405538))))

(assert (=> b!723961 (= res!485596 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19585 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723973 () Bool)

(assert (=> b!723973 (= e!405538 e!405537)))

(declare-fun res!485588 () Bool)

(assert (=> b!723973 (=> (not res!485588) (not e!405537))))

(declare-fun lt!320836 () (_ BitVec 64))

(declare-fun lt!320838 () array!40932)

(assert (=> b!723973 (= res!485588 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320836 mask!3328) lt!320836 lt!320838 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320836 lt!320838 mask!3328)))))

(assert (=> b!723973 (= lt!320836 (select (store (arr!19585 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!723973 (= lt!320838 (array!40933 (store (arr!19585 a!3186) i!1173 k0!2102) (size!20006 a!3186)))))

(declare-fun b!723974 () Bool)

(declare-fun res!485598 () Bool)

(assert (=> b!723974 (=> (not res!485598) (not e!405534))))

(declare-datatypes ((List!13640 0))(
  ( (Nil!13637) (Cons!13636 (h!14690 (_ BitVec 64)) (t!19963 List!13640)) )
))
(declare-fun arrayNoDuplicates!0 (array!40932 (_ BitVec 32) List!13640) Bool)

(assert (=> b!723974 (= res!485598 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13637))))

(assert (= (and start!64398 res!485589) b!723967))

(assert (= (and b!723967 res!485590) b!723960))

(assert (= (and b!723960 res!485597) b!723963))

(assert (= (and b!723963 res!485591) b!723959))

(assert (= (and b!723959 res!485599) b!723971))

(assert (= (and b!723971 res!485593) b!723965))

(assert (= (and b!723965 res!485600) b!723974))

(assert (= (and b!723974 res!485598) b!723968))

(assert (= (and b!723968 res!485594) b!723970))

(assert (= (and b!723970 res!485601) b!723961))

(assert (= (and b!723961 res!485596) b!723964))

(assert (= (and b!723964 c!79557) b!723966))

(assert (= (and b!723964 (not c!79557)) b!723962))

(assert (= (and b!723964 res!485595) b!723973))

(assert (= (and b!723973 res!485588) b!723972))

(assert (= (and b!723972 res!485592) b!723969))

(declare-fun m!678447 () Bool)

(assert (=> b!723962 m!678447))

(assert (=> b!723962 m!678447))

(declare-fun m!678449 () Bool)

(assert (=> b!723962 m!678449))

(declare-fun m!678451 () Bool)

(assert (=> start!64398 m!678451))

(declare-fun m!678453 () Bool)

(assert (=> start!64398 m!678453))

(declare-fun m!678455 () Bool)

(assert (=> b!723971 m!678455))

(declare-fun m!678457 () Bool)

(assert (=> b!723959 m!678457))

(declare-fun m!678459 () Bool)

(assert (=> b!723963 m!678459))

(declare-fun m!678461 () Bool)

(assert (=> b!723961 m!678461))

(assert (=> b!723970 m!678447))

(assert (=> b!723970 m!678447))

(declare-fun m!678463 () Bool)

(assert (=> b!723970 m!678463))

(assert (=> b!723970 m!678463))

(assert (=> b!723970 m!678447))

(declare-fun m!678465 () Bool)

(assert (=> b!723970 m!678465))

(declare-fun m!678467 () Bool)

(assert (=> b!723972 m!678467))

(declare-fun m!678469 () Bool)

(assert (=> b!723972 m!678469))

(assert (=> b!723960 m!678447))

(assert (=> b!723960 m!678447))

(declare-fun m!678471 () Bool)

(assert (=> b!723960 m!678471))

(assert (=> b!723966 m!678447))

(assert (=> b!723966 m!678447))

(declare-fun m!678473 () Bool)

(assert (=> b!723966 m!678473))

(declare-fun m!678475 () Bool)

(assert (=> b!723973 m!678475))

(declare-fun m!678477 () Bool)

(assert (=> b!723973 m!678477))

(declare-fun m!678479 () Bool)

(assert (=> b!723973 m!678479))

(declare-fun m!678481 () Bool)

(assert (=> b!723973 m!678481))

(assert (=> b!723973 m!678479))

(declare-fun m!678483 () Bool)

(assert (=> b!723973 m!678483))

(declare-fun m!678485 () Bool)

(assert (=> b!723965 m!678485))

(assert (=> b!723969 m!678447))

(assert (=> b!723969 m!678447))

(declare-fun m!678487 () Bool)

(assert (=> b!723969 m!678487))

(declare-fun m!678489 () Bool)

(assert (=> b!723974 m!678489))

(check-sat (not b!723974) (not b!723960) (not b!723972) (not b!723971) (not b!723973) (not b!723969) (not b!723962) (not b!723966) (not start!64398) (not b!723965) (not b!723959) (not b!723970) (not b!723963))
(check-sat)
