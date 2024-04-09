; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64288 () Bool)

(assert start!64288)

(declare-fun b!721565 () Bool)

(declare-fun res!483534 () Bool)

(declare-fun e!404613 () Bool)

(assert (=> b!721565 (=> (not res!483534) (not e!404613))))

(declare-datatypes ((array!40822 0))(
  ( (array!40823 (arr!19530 (Array (_ BitVec 32) (_ BitVec 64))) (size!19951 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40822)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!721565 (= res!483534 (and (= (size!19951 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19951 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19951 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721566 () Bool)

(declare-fun res!483530 () Bool)

(declare-fun e!404611 () Bool)

(assert (=> b!721566 (=> (not res!483530) (not e!404611))))

(declare-datatypes ((List!13585 0))(
  ( (Nil!13582) (Cons!13581 (h!14635 (_ BitVec 64)) (t!19908 List!13585)) )
))
(declare-fun arrayNoDuplicates!0 (array!40822 (_ BitVec 32) List!13585) Bool)

(assert (=> b!721566 (= res!483530 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13582))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!721567 () Bool)

(declare-fun e!404612 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7137 0))(
  ( (MissingZero!7137 (index!30915 (_ BitVec 32))) (Found!7137 (index!30916 (_ BitVec 32))) (Intermediate!7137 (undefined!7949 Bool) (index!30917 (_ BitVec 32)) (x!61955 (_ BitVec 32))) (Undefined!7137) (MissingVacant!7137 (index!30918 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40822 (_ BitVec 32)) SeekEntryResult!7137)

(assert (=> b!721567 (= e!404612 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19530 a!3186) j!159) a!3186 mask!3328) (Found!7137 j!159))))))

(declare-fun b!721568 () Bool)

(declare-fun res!483524 () Bool)

(assert (=> b!721568 (=> (not res!483524) (not e!404613))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721568 (= res!483524 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!721569 () Bool)

(declare-fun lt!320099 () SeekEntryResult!7137)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40822 (_ BitVec 32)) SeekEntryResult!7137)

(assert (=> b!721569 (= e!404612 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19530 a!3186) j!159) a!3186 mask!3328) lt!320099)))))

(declare-fun b!721570 () Bool)

(declare-fun res!483532 () Bool)

(declare-fun e!404610 () Bool)

(assert (=> b!721570 (=> (not res!483532) (not e!404610))))

(assert (=> b!721570 (= res!483532 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19530 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!483528 () Bool)

(assert (=> start!64288 (=> (not res!483528) (not e!404613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64288 (= res!483528 (validMask!0 mask!3328))))

(assert (=> start!64288 e!404613))

(assert (=> start!64288 true))

(declare-fun array_inv!15304 (array!40822) Bool)

(assert (=> start!64288 (array_inv!15304 a!3186)))

(declare-fun b!721571 () Bool)

(assert (=> b!721571 (= e!404610 false)))

(declare-fun lt!320098 () Bool)

(assert (=> b!721571 (= lt!320098 e!404612)))

(declare-fun c!79392 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721571 (= c!79392 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721572 () Bool)

(assert (=> b!721572 (= e!404613 e!404611)))

(declare-fun res!483529 () Bool)

(assert (=> b!721572 (=> (not res!483529) (not e!404611))))

(declare-fun lt!320097 () SeekEntryResult!7137)

(assert (=> b!721572 (= res!483529 (or (= lt!320097 (MissingZero!7137 i!1173)) (= lt!320097 (MissingVacant!7137 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40822 (_ BitVec 32)) SeekEntryResult!7137)

(assert (=> b!721572 (= lt!320097 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!721573 () Bool)

(declare-fun res!483533 () Bool)

(assert (=> b!721573 (=> (not res!483533) (not e!404613))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721573 (= res!483533 (validKeyInArray!0 (select (arr!19530 a!3186) j!159)))))

(declare-fun b!721574 () Bool)

(declare-fun res!483525 () Bool)

(assert (=> b!721574 (=> (not res!483525) (not e!404611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40822 (_ BitVec 32)) Bool)

(assert (=> b!721574 (= res!483525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!721575 () Bool)

(declare-fun res!483531 () Bool)

(assert (=> b!721575 (=> (not res!483531) (not e!404613))))

(assert (=> b!721575 (= res!483531 (validKeyInArray!0 k!2102))))

(declare-fun b!721576 () Bool)

(declare-fun res!483527 () Bool)

(assert (=> b!721576 (=> (not res!483527) (not e!404611))))

(assert (=> b!721576 (= res!483527 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19951 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19951 a!3186))))))

(declare-fun b!721577 () Bool)

(assert (=> b!721577 (= e!404611 e!404610)))

(declare-fun res!483526 () Bool)

(assert (=> b!721577 (=> (not res!483526) (not e!404610))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721577 (= res!483526 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19530 a!3186) j!159) mask!3328) (select (arr!19530 a!3186) j!159) a!3186 mask!3328) lt!320099))))

(assert (=> b!721577 (= lt!320099 (Intermediate!7137 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!64288 res!483528) b!721565))

(assert (= (and b!721565 res!483534) b!721573))

(assert (= (and b!721573 res!483533) b!721575))

(assert (= (and b!721575 res!483531) b!721568))

(assert (= (and b!721568 res!483524) b!721572))

(assert (= (and b!721572 res!483529) b!721574))

(assert (= (and b!721574 res!483525) b!721566))

(assert (= (and b!721566 res!483530) b!721576))

(assert (= (and b!721576 res!483527) b!721577))

(assert (= (and b!721577 res!483526) b!721570))

(assert (= (and b!721570 res!483532) b!721571))

(assert (= (and b!721571 c!79392) b!721569))

(assert (= (and b!721571 (not c!79392)) b!721567))

(declare-fun m!676411 () Bool)

(assert (=> b!721567 m!676411))

(assert (=> b!721567 m!676411))

(declare-fun m!676413 () Bool)

(assert (=> b!721567 m!676413))

(declare-fun m!676415 () Bool)

(assert (=> start!64288 m!676415))

(declare-fun m!676417 () Bool)

(assert (=> start!64288 m!676417))

(declare-fun m!676419 () Bool)

(assert (=> b!721575 m!676419))

(assert (=> b!721573 m!676411))

(assert (=> b!721573 m!676411))

(declare-fun m!676421 () Bool)

(assert (=> b!721573 m!676421))

(assert (=> b!721569 m!676411))

(assert (=> b!721569 m!676411))

(declare-fun m!676423 () Bool)

(assert (=> b!721569 m!676423))

(declare-fun m!676425 () Bool)

(assert (=> b!721566 m!676425))

(declare-fun m!676427 () Bool)

(assert (=> b!721574 m!676427))

(declare-fun m!676429 () Bool)

(assert (=> b!721572 m!676429))

(declare-fun m!676431 () Bool)

(assert (=> b!721568 m!676431))

(declare-fun m!676433 () Bool)

(assert (=> b!721570 m!676433))

(assert (=> b!721577 m!676411))

(assert (=> b!721577 m!676411))

(declare-fun m!676435 () Bool)

(assert (=> b!721577 m!676435))

(assert (=> b!721577 m!676435))

(assert (=> b!721577 m!676411))

(declare-fun m!676437 () Bool)

(assert (=> b!721577 m!676437))

(push 1)

