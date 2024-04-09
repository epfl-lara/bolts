; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64690 () Bool)

(assert start!64690)

(declare-fun b!728772 () Bool)

(declare-fun e!407948 () Bool)

(declare-fun e!407952 () Bool)

(assert (=> b!728772 (= e!407948 e!407952)))

(declare-fun res!489390 () Bool)

(assert (=> b!728772 (=> (not res!489390) (not e!407952))))

(declare-datatypes ((array!41092 0))(
  ( (array!41093 (arr!19662 (Array (_ BitVec 32) (_ BitVec 64))) (size!20083 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41092)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7269 0))(
  ( (MissingZero!7269 (index!31443 (_ BitVec 32))) (Found!7269 (index!31444 (_ BitVec 32))) (Intermediate!7269 (undefined!8081 Bool) (index!31445 (_ BitVec 32)) (x!62460 (_ BitVec 32))) (Undefined!7269) (MissingVacant!7269 (index!31446 (_ BitVec 32))) )
))
(declare-fun lt!322857 () SeekEntryResult!7269)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41092 (_ BitVec 32)) SeekEntryResult!7269)

(assert (=> b!728772 (= res!489390 (= (seekEntryOrOpen!0 (select (arr!19662 a!3186) j!159) a!3186 mask!3328) lt!322857))))

(assert (=> b!728772 (= lt!322857 (Found!7269 j!159))))

(declare-fun b!728773 () Bool)

(declare-fun e!407947 () Bool)

(declare-fun e!407950 () Bool)

(assert (=> b!728773 (= e!407947 (not e!407950))))

(declare-fun res!489382 () Bool)

(assert (=> b!728773 (=> res!489382 e!407950)))

(declare-fun lt!322856 () SeekEntryResult!7269)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!728773 (= res!489382 (or (not (is-Intermediate!7269 lt!322856)) (bvsge x!1131 (x!62460 lt!322856))))))

(assert (=> b!728773 e!407948))

(declare-fun res!489388 () Bool)

(assert (=> b!728773 (=> (not res!489388) (not e!407948))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41092 (_ BitVec 32)) Bool)

(assert (=> b!728773 (= res!489388 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24856 0))(
  ( (Unit!24857) )
))
(declare-fun lt!322861 () Unit!24856)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41092 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24856)

(assert (=> b!728773 (= lt!322861 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!728774 () Bool)

(declare-fun e!407951 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41092 (_ BitVec 32)) SeekEntryResult!7269)

(assert (=> b!728774 (= e!407951 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19662 a!3186) j!159) a!3186 mask!3328) (Found!7269 j!159)))))

(declare-fun b!728775 () Bool)

(declare-fun e!407954 () Bool)

(declare-fun e!407949 () Bool)

(assert (=> b!728775 (= e!407954 e!407949)))

(declare-fun res!489386 () Bool)

(assert (=> b!728775 (=> (not res!489386) (not e!407949))))

(declare-fun lt!322858 () SeekEntryResult!7269)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728775 (= res!489386 (or (= lt!322858 (MissingZero!7269 i!1173)) (= lt!322858 (MissingVacant!7269 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!728775 (= lt!322858 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!728776 () Bool)

(declare-fun res!489389 () Bool)

(assert (=> b!728776 (=> (not res!489389) (not e!407954))))

(assert (=> b!728776 (= res!489389 (and (= (size!20083 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20083 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20083 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728777 () Bool)

(declare-fun res!489380 () Bool)

(assert (=> b!728777 (=> (not res!489380) (not e!407949))))

(declare-datatypes ((List!13717 0))(
  ( (Nil!13714) (Cons!13713 (h!14773 (_ BitVec 64)) (t!20040 List!13717)) )
))
(declare-fun arrayNoDuplicates!0 (array!41092 (_ BitVec 32) List!13717) Bool)

(assert (=> b!728777 (= res!489380 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13714))))

(declare-fun b!728778 () Bool)

(declare-fun res!489375 () Bool)

(assert (=> b!728778 (=> (not res!489375) (not e!407949))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!728778 (= res!489375 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20083 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20083 a!3186))))))

(declare-fun b!728779 () Bool)

(declare-fun res!489385 () Bool)

(declare-fun e!407955 () Bool)

(assert (=> b!728779 (=> (not res!489385) (not e!407955))))

(assert (=> b!728779 (= res!489385 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19662 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728780 () Bool)

(declare-fun res!489384 () Bool)

(assert (=> b!728780 (=> (not res!489384) (not e!407954))))

(declare-fun arrayContainsKey!0 (array!41092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728780 (= res!489384 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728781 () Bool)

(assert (=> b!728781 (= e!407949 e!407955)))

(declare-fun res!489379 () Bool)

(assert (=> b!728781 (=> (not res!489379) (not e!407955))))

(declare-fun lt!322860 () SeekEntryResult!7269)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41092 (_ BitVec 32)) SeekEntryResult!7269)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728781 (= res!489379 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19662 a!3186) j!159) mask!3328) (select (arr!19662 a!3186) j!159) a!3186 mask!3328) lt!322860))))

(assert (=> b!728781 (= lt!322860 (Intermediate!7269 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728782 () Bool)

(declare-fun res!489387 () Bool)

(assert (=> b!728782 (=> (not res!489387) (not e!407954))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728782 (= res!489387 (validKeyInArray!0 k!2102))))

(declare-fun b!728783 () Bool)

(declare-fun res!489381 () Bool)

(assert (=> b!728783 (=> (not res!489381) (not e!407955))))

(assert (=> b!728783 (= res!489381 e!407951)))

(declare-fun c!80073 () Bool)

(assert (=> b!728783 (= c!80073 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!489383 () Bool)

(assert (=> start!64690 (=> (not res!489383) (not e!407954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64690 (= res!489383 (validMask!0 mask!3328))))

(assert (=> start!64690 e!407954))

(assert (=> start!64690 true))

(declare-fun array_inv!15436 (array!41092) Bool)

(assert (=> start!64690 (array_inv!15436 a!3186)))

(declare-fun b!728784 () Bool)

(assert (=> b!728784 (= e!407950 true)))

(declare-fun lt!322855 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728784 (= lt!322855 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728785 () Bool)

(assert (=> b!728785 (= e!407955 e!407947)))

(declare-fun res!489378 () Bool)

(assert (=> b!728785 (=> (not res!489378) (not e!407947))))

(declare-fun lt!322859 () SeekEntryResult!7269)

(assert (=> b!728785 (= res!489378 (= lt!322859 lt!322856))))

(declare-fun lt!322854 () array!41092)

(declare-fun lt!322862 () (_ BitVec 64))

(assert (=> b!728785 (= lt!322856 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322862 lt!322854 mask!3328))))

(assert (=> b!728785 (= lt!322859 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322862 mask!3328) lt!322862 lt!322854 mask!3328))))

(assert (=> b!728785 (= lt!322862 (select (store (arr!19662 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!728785 (= lt!322854 (array!41093 (store (arr!19662 a!3186) i!1173 k!2102) (size!20083 a!3186)))))

(declare-fun b!728786 () Bool)

(declare-fun res!489376 () Bool)

(assert (=> b!728786 (=> (not res!489376) (not e!407949))))

(assert (=> b!728786 (= res!489376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!728787 () Bool)

(assert (=> b!728787 (= e!407951 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19662 a!3186) j!159) a!3186 mask!3328) lt!322860))))

(declare-fun b!728788 () Bool)

(assert (=> b!728788 (= e!407952 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19662 a!3186) j!159) a!3186 mask!3328) lt!322857))))

(declare-fun b!728789 () Bool)

(declare-fun res!489377 () Bool)

(assert (=> b!728789 (=> (not res!489377) (not e!407954))))

(assert (=> b!728789 (= res!489377 (validKeyInArray!0 (select (arr!19662 a!3186) j!159)))))

(assert (= (and start!64690 res!489383) b!728776))

(assert (= (and b!728776 res!489389) b!728789))

(assert (= (and b!728789 res!489377) b!728782))

(assert (= (and b!728782 res!489387) b!728780))

(assert (= (and b!728780 res!489384) b!728775))

(assert (= (and b!728775 res!489386) b!728786))

(assert (= (and b!728786 res!489376) b!728777))

(assert (= (and b!728777 res!489380) b!728778))

(assert (= (and b!728778 res!489375) b!728781))

(assert (= (and b!728781 res!489379) b!728779))

(assert (= (and b!728779 res!489385) b!728783))

(assert (= (and b!728783 c!80073) b!728787))

(assert (= (and b!728783 (not c!80073)) b!728774))

(assert (= (and b!728783 res!489381) b!728785))

(assert (= (and b!728785 res!489378) b!728773))

(assert (= (and b!728773 res!489388) b!728772))

(assert (= (and b!728772 res!489390) b!728788))

(assert (= (and b!728773 (not res!489382)) b!728784))

(declare-fun m!682573 () Bool)

(assert (=> b!728781 m!682573))

(assert (=> b!728781 m!682573))

(declare-fun m!682575 () Bool)

(assert (=> b!728781 m!682575))

(assert (=> b!728781 m!682575))

(assert (=> b!728781 m!682573))

(declare-fun m!682577 () Bool)

(assert (=> b!728781 m!682577))

(declare-fun m!682579 () Bool)

(assert (=> b!728784 m!682579))

(declare-fun m!682581 () Bool)

(assert (=> b!728780 m!682581))

(declare-fun m!682583 () Bool)

(assert (=> b!728777 m!682583))

(declare-fun m!682585 () Bool)

(assert (=> b!728775 m!682585))

(assert (=> b!728772 m!682573))

(assert (=> b!728772 m!682573))

(declare-fun m!682587 () Bool)

(assert (=> b!728772 m!682587))

(assert (=> b!728787 m!682573))

(assert (=> b!728787 m!682573))

(declare-fun m!682589 () Bool)

(assert (=> b!728787 m!682589))

(declare-fun m!682591 () Bool)

(assert (=> b!728786 m!682591))

(assert (=> b!728789 m!682573))

(assert (=> b!728789 m!682573))

(declare-fun m!682593 () Bool)

(assert (=> b!728789 m!682593))

(declare-fun m!682595 () Bool)

(assert (=> b!728779 m!682595))

(declare-fun m!682597 () Bool)

(assert (=> start!64690 m!682597))

(declare-fun m!682599 () Bool)

(assert (=> start!64690 m!682599))

(declare-fun m!682601 () Bool)

(assert (=> b!728773 m!682601))

(declare-fun m!682603 () Bool)

(assert (=> b!728773 m!682603))

(assert (=> b!728788 m!682573))

(assert (=> b!728788 m!682573))

(declare-fun m!682605 () Bool)

(assert (=> b!728788 m!682605))

(assert (=> b!728774 m!682573))

(assert (=> b!728774 m!682573))

(declare-fun m!682607 () Bool)

(assert (=> b!728774 m!682607))

(declare-fun m!682609 () Bool)

(assert (=> b!728782 m!682609))

(declare-fun m!682611 () Bool)

(assert (=> b!728785 m!682611))

(declare-fun m!682613 () Bool)

(assert (=> b!728785 m!682613))

(declare-fun m!682615 () Bool)

(assert (=> b!728785 m!682615))

(declare-fun m!682617 () Bool)

(assert (=> b!728785 m!682617))

(declare-fun m!682619 () Bool)

(assert (=> b!728785 m!682619))

(assert (=> b!728785 m!682611))

(push 1)

