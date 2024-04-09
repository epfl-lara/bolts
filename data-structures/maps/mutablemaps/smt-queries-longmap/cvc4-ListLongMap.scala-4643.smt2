; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64652 () Bool)

(assert start!64652)

(declare-datatypes ((array!41054 0))(
  ( (array!41055 (arr!19643 (Array (_ BitVec 32) (_ BitVec 64))) (size!20064 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41054)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!407436 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!727746 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7250 0))(
  ( (MissingZero!7250 (index!31367 (_ BitVec 32))) (Found!7250 (index!31368 (_ BitVec 32))) (Intermediate!7250 (undefined!8062 Bool) (index!31369 (_ BitVec 32)) (x!62385 (_ BitVec 32))) (Undefined!7250) (MissingVacant!7250 (index!31370 (_ BitVec 32))) )
))
(declare-fun lt!322349 () SeekEntryResult!7250)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41054 (_ BitVec 32)) SeekEntryResult!7250)

(assert (=> b!727746 (= e!407436 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19643 a!3186) j!159) a!3186 mask!3328) lt!322349))))

(declare-fun b!727747 () Bool)

(declare-fun res!488463 () Bool)

(declare-fun e!407440 () Bool)

(assert (=> b!727747 (=> (not res!488463) (not e!407440))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!727747 (= res!488463 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20064 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20064 a!3186))))))

(declare-fun b!727748 () Bool)

(declare-fun res!488478 () Bool)

(declare-fun e!407435 () Bool)

(assert (=> b!727748 (=> (not res!488478) (not e!407435))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!727748 (= res!488478 (validKeyInArray!0 k!2102))))

(declare-fun b!727749 () Bool)

(declare-fun e!407437 () Bool)

(assert (=> b!727749 (= e!407440 e!407437)))

(declare-fun res!488477 () Bool)

(assert (=> b!727749 (=> (not res!488477) (not e!407437))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727749 (= res!488477 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19643 a!3186) j!159) mask!3328) (select (arr!19643 a!3186) j!159) a!3186 mask!3328) lt!322349))))

(assert (=> b!727749 (= lt!322349 (Intermediate!7250 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!727750 () Bool)

(declare-fun res!488475 () Bool)

(assert (=> b!727750 (=> (not res!488475) (not e!407435))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!727750 (= res!488475 (and (= (size!20064 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20064 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20064 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!727751 () Bool)

(declare-fun res!488476 () Bool)

(assert (=> b!727751 (=> (not res!488476) (not e!407437))))

(assert (=> b!727751 (= res!488476 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19643 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727752 () Bool)

(declare-fun e!407441 () Bool)

(declare-fun e!407434 () Bool)

(assert (=> b!727752 (= e!407441 e!407434)))

(declare-fun res!488470 () Bool)

(assert (=> b!727752 (=> (not res!488470) (not e!407434))))

(declare-fun lt!322343 () SeekEntryResult!7250)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41054 (_ BitVec 32)) SeekEntryResult!7250)

(assert (=> b!727752 (= res!488470 (= (seekEntryOrOpen!0 (select (arr!19643 a!3186) j!159) a!3186 mask!3328) lt!322343))))

(assert (=> b!727752 (= lt!322343 (Found!7250 j!159))))

(declare-fun b!727753 () Bool)

(declare-fun res!488467 () Bool)

(assert (=> b!727753 (=> (not res!488467) (not e!407440))))

(declare-datatypes ((List!13698 0))(
  ( (Nil!13695) (Cons!13694 (h!14754 (_ BitVec 64)) (t!20021 List!13698)) )
))
(declare-fun arrayNoDuplicates!0 (array!41054 (_ BitVec 32) List!13698) Bool)

(assert (=> b!727753 (= res!488467 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13695))))

(declare-fun b!727754 () Bool)

(declare-fun e!407442 () Bool)

(declare-fun e!407438 () Bool)

(assert (=> b!727754 (= e!407442 (not e!407438))))

(declare-fun res!488472 () Bool)

(assert (=> b!727754 (=> res!488472 e!407438)))

(declare-fun lt!322342 () SeekEntryResult!7250)

(assert (=> b!727754 (= res!488472 (or (not (is-Intermediate!7250 lt!322342)) (bvsge x!1131 (x!62385 lt!322342))))))

(assert (=> b!727754 e!407441))

(declare-fun res!488466 () Bool)

(assert (=> b!727754 (=> (not res!488466) (not e!407441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41054 (_ BitVec 32)) Bool)

(assert (=> b!727754 (= res!488466 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24818 0))(
  ( (Unit!24819) )
))
(declare-fun lt!322344 () Unit!24818)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41054 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24818)

(assert (=> b!727754 (= lt!322344 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!727755 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41054 (_ BitVec 32)) SeekEntryResult!7250)

(assert (=> b!727755 (= e!407436 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19643 a!3186) j!159) a!3186 mask!3328) (Found!7250 j!159)))))

(declare-fun b!727756 () Bool)

(assert (=> b!727756 (= e!407437 e!407442)))

(declare-fun res!488465 () Bool)

(assert (=> b!727756 (=> (not res!488465) (not e!407442))))

(declare-fun lt!322348 () SeekEntryResult!7250)

(assert (=> b!727756 (= res!488465 (= lt!322348 lt!322342))))

(declare-fun lt!322341 () (_ BitVec 64))

(declare-fun lt!322347 () array!41054)

(assert (=> b!727756 (= lt!322342 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322341 lt!322347 mask!3328))))

(assert (=> b!727756 (= lt!322348 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322341 mask!3328) lt!322341 lt!322347 mask!3328))))

(assert (=> b!727756 (= lt!322341 (select (store (arr!19643 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!727756 (= lt!322347 (array!41055 (store (arr!19643 a!3186) i!1173 k!2102) (size!20064 a!3186)))))

(declare-fun b!727757 () Bool)

(declare-fun res!488468 () Bool)

(assert (=> b!727757 (=> (not res!488468) (not e!407440))))

(assert (=> b!727757 (= res!488468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!488474 () Bool)

(assert (=> start!64652 (=> (not res!488474) (not e!407435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64652 (= res!488474 (validMask!0 mask!3328))))

(assert (=> start!64652 e!407435))

(assert (=> start!64652 true))

(declare-fun array_inv!15417 (array!41054) Bool)

(assert (=> start!64652 (array_inv!15417 a!3186)))

(declare-fun b!727758 () Bool)

(declare-fun res!488469 () Bool)

(assert (=> b!727758 (=> (not res!488469) (not e!407437))))

(assert (=> b!727758 (= res!488469 e!407436)))

(declare-fun c!80016 () Bool)

(assert (=> b!727758 (= c!80016 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!727759 () Bool)

(assert (=> b!727759 (= e!407435 e!407440)))

(declare-fun res!488471 () Bool)

(assert (=> b!727759 (=> (not res!488471) (not e!407440))))

(declare-fun lt!322346 () SeekEntryResult!7250)

(assert (=> b!727759 (= res!488471 (or (= lt!322346 (MissingZero!7250 i!1173)) (= lt!322346 (MissingVacant!7250 i!1173))))))

(assert (=> b!727759 (= lt!322346 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!727760 () Bool)

(declare-fun res!488473 () Bool)

(assert (=> b!727760 (=> (not res!488473) (not e!407435))))

(declare-fun arrayContainsKey!0 (array!41054 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!727760 (= res!488473 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!727761 () Bool)

(declare-fun lt!322345 () (_ BitVec 32))

(assert (=> b!727761 (= e!407438 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!322345 #b00000000000000000000000000000000) (bvsge lt!322345 (bvadd #b00000000000000000000000000000001 mask!3328)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727761 (= lt!322345 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!727762 () Bool)

(assert (=> b!727762 (= e!407434 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19643 a!3186) j!159) a!3186 mask!3328) lt!322343))))

(declare-fun b!727763 () Bool)

(declare-fun res!488464 () Bool)

(assert (=> b!727763 (=> (not res!488464) (not e!407435))))

(assert (=> b!727763 (= res!488464 (validKeyInArray!0 (select (arr!19643 a!3186) j!159)))))

(assert (= (and start!64652 res!488474) b!727750))

(assert (= (and b!727750 res!488475) b!727763))

(assert (= (and b!727763 res!488464) b!727748))

(assert (= (and b!727748 res!488478) b!727760))

(assert (= (and b!727760 res!488473) b!727759))

(assert (= (and b!727759 res!488471) b!727757))

(assert (= (and b!727757 res!488468) b!727753))

(assert (= (and b!727753 res!488467) b!727747))

(assert (= (and b!727747 res!488463) b!727749))

(assert (= (and b!727749 res!488477) b!727751))

(assert (= (and b!727751 res!488476) b!727758))

(assert (= (and b!727758 c!80016) b!727746))

(assert (= (and b!727758 (not c!80016)) b!727755))

(assert (= (and b!727758 res!488469) b!727756))

(assert (= (and b!727756 res!488465) b!727754))

(assert (= (and b!727754 res!488466) b!727752))

(assert (= (and b!727752 res!488470) b!727762))

(assert (= (and b!727754 (not res!488472)) b!727761))

(declare-fun m!681661 () Bool)

(assert (=> b!727763 m!681661))

(assert (=> b!727763 m!681661))

(declare-fun m!681663 () Bool)

(assert (=> b!727763 m!681663))

(assert (=> b!727749 m!681661))

(assert (=> b!727749 m!681661))

(declare-fun m!681665 () Bool)

(assert (=> b!727749 m!681665))

(assert (=> b!727749 m!681665))

(assert (=> b!727749 m!681661))

(declare-fun m!681667 () Bool)

(assert (=> b!727749 m!681667))

(declare-fun m!681669 () Bool)

(assert (=> start!64652 m!681669))

(declare-fun m!681671 () Bool)

(assert (=> start!64652 m!681671))

(declare-fun m!681673 () Bool)

(assert (=> b!727759 m!681673))

(assert (=> b!727752 m!681661))

(assert (=> b!727752 m!681661))

(declare-fun m!681675 () Bool)

(assert (=> b!727752 m!681675))

(assert (=> b!727746 m!681661))

(assert (=> b!727746 m!681661))

(declare-fun m!681677 () Bool)

(assert (=> b!727746 m!681677))

(declare-fun m!681679 () Bool)

(assert (=> b!727751 m!681679))

(declare-fun m!681681 () Bool)

(assert (=> b!727754 m!681681))

(declare-fun m!681683 () Bool)

(assert (=> b!727754 m!681683))

(declare-fun m!681685 () Bool)

(assert (=> b!727756 m!681685))

(declare-fun m!681687 () Bool)

(assert (=> b!727756 m!681687))

(declare-fun m!681689 () Bool)

(assert (=> b!727756 m!681689))

(declare-fun m!681691 () Bool)

(assert (=> b!727756 m!681691))

(declare-fun m!681693 () Bool)

(assert (=> b!727756 m!681693))

(assert (=> b!727756 m!681687))

(declare-fun m!681695 () Bool)

(assert (=> b!727760 m!681695))

(assert (=> b!727762 m!681661))

(assert (=> b!727762 m!681661))

(declare-fun m!681697 () Bool)

(assert (=> b!727762 m!681697))

(declare-fun m!681699 () Bool)

(assert (=> b!727757 m!681699))

(assert (=> b!727755 m!681661))

(assert (=> b!727755 m!681661))

(declare-fun m!681701 () Bool)

(assert (=> b!727755 m!681701))

(declare-fun m!681703 () Bool)

(assert (=> b!727753 m!681703))

(declare-fun m!681705 () Bool)

(assert (=> b!727761 m!681705))

(declare-fun m!681707 () Bool)

(assert (=> b!727748 m!681707))

(push 1)

(assert (not b!727749))

(assert (not b!727746))

(assert (not b!727763))

(assert (not b!727757))

(assert (not b!727760))

(assert (not b!727762))

(assert (not b!727748))

(assert (not start!64652))

(assert (not b!727756))

