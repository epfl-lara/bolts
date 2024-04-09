; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64550 () Bool)

(assert start!64550)

(declare-fun b!726520 () Bool)

(declare-fun e!406780 () Bool)

(declare-fun e!406779 () Bool)

(assert (=> b!726520 (= e!406780 e!406779)))

(declare-fun res!487624 () Bool)

(assert (=> b!726520 (=> (not res!487624) (not e!406779))))

(declare-datatypes ((SeekEntryResult!7235 0))(
  ( (MissingZero!7235 (index!31307 (_ BitVec 32))) (Found!7235 (index!31308 (_ BitVec 32))) (Intermediate!7235 (undefined!8047 Bool) (index!31309 (_ BitVec 32)) (x!62318 (_ BitVec 32))) (Undefined!7235) (MissingVacant!7235 (index!31310 (_ BitVec 32))) )
))
(declare-fun lt!321767 () SeekEntryResult!7235)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726520 (= res!487624 (or (= lt!321767 (MissingZero!7235 i!1173)) (= lt!321767 (MissingVacant!7235 i!1173))))))

(declare-datatypes ((array!41021 0))(
  ( (array!41022 (arr!19628 (Array (_ BitVec 32) (_ BitVec 64))) (size!20049 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41021)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41021 (_ BitVec 32)) SeekEntryResult!7235)

(assert (=> b!726520 (= lt!321767 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!487630 () Bool)

(assert (=> start!64550 (=> (not res!487630) (not e!406780))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64550 (= res!487630 (validMask!0 mask!3328))))

(assert (=> start!64550 e!406780))

(assert (=> start!64550 true))

(declare-fun array_inv!15402 (array!41021) Bool)

(assert (=> start!64550 (array_inv!15402 a!3186)))

(declare-fun b!726521 () Bool)

(declare-fun e!406778 () Bool)

(assert (=> b!726521 (= e!406778 (not true))))

(declare-fun e!406783 () Bool)

(assert (=> b!726521 e!406783))

(declare-fun res!487628 () Bool)

(assert (=> b!726521 (=> (not res!487628) (not e!406783))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41021 (_ BitVec 32)) Bool)

(assert (=> b!726521 (= res!487628 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24788 0))(
  ( (Unit!24789) )
))
(declare-fun lt!321769 () Unit!24788)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41021 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24788)

(assert (=> b!726521 (= lt!321769 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726522 () Bool)

(declare-fun res!487620 () Bool)

(assert (=> b!726522 (=> (not res!487620) (not e!406780))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726522 (= res!487620 (validKeyInArray!0 (select (arr!19628 a!3186) j!159)))))

(declare-fun b!726523 () Bool)

(declare-fun res!487631 () Bool)

(assert (=> b!726523 (=> (not res!487631) (not e!406779))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!726523 (= res!487631 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20049 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20049 a!3186))))))

(declare-fun b!726524 () Bool)

(declare-fun res!487621 () Bool)

(assert (=> b!726524 (=> (not res!487621) (not e!406780))))

(assert (=> b!726524 (= res!487621 (validKeyInArray!0 k!2102))))

(declare-fun e!406781 () Bool)

(declare-fun lt!321770 () SeekEntryResult!7235)

(declare-fun b!726525 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41021 (_ BitVec 32)) SeekEntryResult!7235)

(assert (=> b!726525 (= e!406781 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19628 a!3186) j!159) a!3186 mask!3328) lt!321770))))

(declare-fun b!726526 () Bool)

(declare-fun res!487618 () Bool)

(assert (=> b!726526 (=> (not res!487618) (not e!406779))))

(assert (=> b!726526 (= res!487618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726527 () Bool)

(declare-fun res!487627 () Bool)

(declare-fun e!406784 () Bool)

(assert (=> b!726527 (=> (not res!487627) (not e!406784))))

(assert (=> b!726527 (= res!487627 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19628 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726528 () Bool)

(declare-fun res!487626 () Bool)

(assert (=> b!726528 (=> (not res!487626) (not e!406780))))

(declare-fun arrayContainsKey!0 (array!41021 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726528 (= res!487626 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!726529 () Bool)

(assert (=> b!726529 (= e!406784 e!406778)))

(declare-fun res!487623 () Bool)

(assert (=> b!726529 (=> (not res!487623) (not e!406778))))

(declare-fun lt!321768 () array!41021)

(declare-fun lt!321765 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726529 (= res!487623 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321765 mask!3328) lt!321765 lt!321768 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321765 lt!321768 mask!3328)))))

(assert (=> b!726529 (= lt!321765 (select (store (arr!19628 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!726529 (= lt!321768 (array!41022 (store (arr!19628 a!3186) i!1173 k!2102) (size!20049 a!3186)))))

(declare-fun b!726530 () Bool)

(declare-fun res!487632 () Bool)

(assert (=> b!726530 (=> (not res!487632) (not e!406779))))

(declare-datatypes ((List!13683 0))(
  ( (Nil!13680) (Cons!13679 (h!14736 (_ BitVec 64)) (t!20006 List!13683)) )
))
(declare-fun arrayNoDuplicates!0 (array!41021 (_ BitVec 32) List!13683) Bool)

(assert (=> b!726530 (= res!487632 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13680))))

(declare-fun b!726531 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41021 (_ BitVec 32)) SeekEntryResult!7235)

(assert (=> b!726531 (= e!406781 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19628 a!3186) j!159) a!3186 mask!3328) (Found!7235 j!159)))))

(declare-fun e!406782 () Bool)

(declare-fun lt!321766 () SeekEntryResult!7235)

(declare-fun b!726532 () Bool)

(assert (=> b!726532 (= e!406782 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19628 a!3186) j!159) a!3186 mask!3328) lt!321766))))

(declare-fun b!726533 () Bool)

(declare-fun res!487629 () Bool)

(assert (=> b!726533 (=> (not res!487629) (not e!406780))))

(assert (=> b!726533 (= res!487629 (and (= (size!20049 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20049 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20049 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!726534 () Bool)

(declare-fun res!487625 () Bool)

(assert (=> b!726534 (=> (not res!487625) (not e!406784))))

(assert (=> b!726534 (= res!487625 e!406781)))

(declare-fun c!79824 () Bool)

(assert (=> b!726534 (= c!79824 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726535 () Bool)

(assert (=> b!726535 (= e!406783 e!406782)))

(declare-fun res!487622 () Bool)

(assert (=> b!726535 (=> (not res!487622) (not e!406782))))

(assert (=> b!726535 (= res!487622 (= (seekEntryOrOpen!0 (select (arr!19628 a!3186) j!159) a!3186 mask!3328) lt!321766))))

(assert (=> b!726535 (= lt!321766 (Found!7235 j!159))))

(declare-fun b!726536 () Bool)

(assert (=> b!726536 (= e!406779 e!406784)))

(declare-fun res!487619 () Bool)

(assert (=> b!726536 (=> (not res!487619) (not e!406784))))

(assert (=> b!726536 (= res!487619 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19628 a!3186) j!159) mask!3328) (select (arr!19628 a!3186) j!159) a!3186 mask!3328) lt!321770))))

(assert (=> b!726536 (= lt!321770 (Intermediate!7235 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!64550 res!487630) b!726533))

(assert (= (and b!726533 res!487629) b!726522))

(assert (= (and b!726522 res!487620) b!726524))

(assert (= (and b!726524 res!487621) b!726528))

(assert (= (and b!726528 res!487626) b!726520))

(assert (= (and b!726520 res!487624) b!726526))

(assert (= (and b!726526 res!487618) b!726530))

(assert (= (and b!726530 res!487632) b!726523))

(assert (= (and b!726523 res!487631) b!726536))

(assert (= (and b!726536 res!487619) b!726527))

(assert (= (and b!726527 res!487627) b!726534))

(assert (= (and b!726534 c!79824) b!726525))

(assert (= (and b!726534 (not c!79824)) b!726531))

(assert (= (and b!726534 res!487625) b!726529))

(assert (= (and b!726529 res!487623) b!726521))

(assert (= (and b!726521 res!487628) b!726535))

(assert (= (and b!726535 res!487622) b!726532))

(declare-fun m!680661 () Bool)

(assert (=> b!726526 m!680661))

(declare-fun m!680663 () Bool)

(assert (=> b!726525 m!680663))

(assert (=> b!726525 m!680663))

(declare-fun m!680665 () Bool)

(assert (=> b!726525 m!680665))

(assert (=> b!726536 m!680663))

(assert (=> b!726536 m!680663))

(declare-fun m!680667 () Bool)

(assert (=> b!726536 m!680667))

(assert (=> b!726536 m!680667))

(assert (=> b!726536 m!680663))

(declare-fun m!680669 () Bool)

(assert (=> b!726536 m!680669))

(declare-fun m!680671 () Bool)

(assert (=> b!726530 m!680671))

(declare-fun m!680673 () Bool)

(assert (=> b!726527 m!680673))

(assert (=> b!726522 m!680663))

(assert (=> b!726522 m!680663))

(declare-fun m!680675 () Bool)

(assert (=> b!726522 m!680675))

(assert (=> b!726535 m!680663))

(assert (=> b!726535 m!680663))

(declare-fun m!680677 () Bool)

(assert (=> b!726535 m!680677))

(assert (=> b!726531 m!680663))

(assert (=> b!726531 m!680663))

(declare-fun m!680679 () Bool)

(assert (=> b!726531 m!680679))

(declare-fun m!680681 () Bool)

(assert (=> b!726528 m!680681))

(declare-fun m!680683 () Bool)

(assert (=> b!726529 m!680683))

(declare-fun m!680685 () Bool)

(assert (=> b!726529 m!680685))

(declare-fun m!680687 () Bool)

(assert (=> b!726529 m!680687))

(declare-fun m!680689 () Bool)

(assert (=> b!726529 m!680689))

(declare-fun m!680691 () Bool)

(assert (=> b!726529 m!680691))

(assert (=> b!726529 m!680689))

(declare-fun m!680693 () Bool)

(assert (=> b!726524 m!680693))

(declare-fun m!680695 () Bool)

(assert (=> b!726521 m!680695))

(declare-fun m!680697 () Bool)

(assert (=> b!726521 m!680697))

(declare-fun m!680699 () Bool)

(assert (=> start!64550 m!680699))

(declare-fun m!680701 () Bool)

(assert (=> start!64550 m!680701))

(declare-fun m!680703 () Bool)

(assert (=> b!726520 m!680703))

(assert (=> b!726532 m!680663))

(assert (=> b!726532 m!680663))

(declare-fun m!680705 () Bool)

(assert (=> b!726532 m!680705))

(push 1)

