; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64552 () Bool)

(assert start!64552)

(declare-fun b!726573 () Bool)

(declare-fun res!487670 () Bool)

(declare-fun e!406809 () Bool)

(assert (=> b!726573 (=> (not res!487670) (not e!406809))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726573 (= res!487670 (validKeyInArray!0 k!2102))))

(declare-fun b!726574 () Bool)

(declare-fun e!406810 () Bool)

(assert (=> b!726574 (= e!406809 e!406810)))

(declare-fun res!487675 () Bool)

(assert (=> b!726574 (=> (not res!487675) (not e!406810))))

(declare-datatypes ((SeekEntryResult!7236 0))(
  ( (MissingZero!7236 (index!31311 (_ BitVec 32))) (Found!7236 (index!31312 (_ BitVec 32))) (Intermediate!7236 (undefined!8048 Bool) (index!31313 (_ BitVec 32)) (x!62327 (_ BitVec 32))) (Undefined!7236) (MissingVacant!7236 (index!31314 (_ BitVec 32))) )
))
(declare-fun lt!321790 () SeekEntryResult!7236)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726574 (= res!487675 (or (= lt!321790 (MissingZero!7236 i!1173)) (= lt!321790 (MissingVacant!7236 i!1173))))))

(declare-datatypes ((array!41023 0))(
  ( (array!41024 (arr!19629 (Array (_ BitVec 32) (_ BitVec 64))) (size!20050 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41023)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41023 (_ BitVec 32)) SeekEntryResult!7236)

(assert (=> b!726574 (= lt!321790 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!726575 () Bool)

(declare-fun res!487677 () Bool)

(assert (=> b!726575 (=> (not res!487677) (not e!406810))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41023 (_ BitVec 32)) Bool)

(assert (=> b!726575 (= res!487677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726576 () Bool)

(declare-fun e!406807 () Bool)

(declare-fun e!406804 () Bool)

(assert (=> b!726576 (= e!406807 e!406804)))

(declare-fun res!487673 () Bool)

(assert (=> b!726576 (=> (not res!487673) (not e!406804))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!321789 () SeekEntryResult!7236)

(assert (=> b!726576 (= res!487673 (= (seekEntryOrOpen!0 (select (arr!19629 a!3186) j!159) a!3186 mask!3328) lt!321789))))

(assert (=> b!726576 (= lt!321789 (Found!7236 j!159))))

(declare-fun b!726577 () Bool)

(declare-fun res!487669 () Bool)

(declare-fun e!406808 () Bool)

(assert (=> b!726577 (=> (not res!487669) (not e!406808))))

(declare-fun e!406812 () Bool)

(assert (=> b!726577 (= res!487669 e!406812)))

(declare-fun c!79827 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!726577 (= c!79827 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726578 () Bool)

(declare-fun e!406805 () Bool)

(assert (=> b!726578 (= e!406808 e!406805)))

(declare-fun res!487674 () Bool)

(assert (=> b!726578 (=> (not res!487674) (not e!406805))))

(declare-fun lt!321794 () SeekEntryResult!7236)

(declare-fun lt!321795 () SeekEntryResult!7236)

(assert (=> b!726578 (= res!487674 (= lt!321794 lt!321795))))

(declare-fun lt!321797 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!321793 () array!41023)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41023 (_ BitVec 32)) SeekEntryResult!7236)

(assert (=> b!726578 (= lt!321795 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321797 lt!321793 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726578 (= lt!321794 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321797 mask!3328) lt!321797 lt!321793 mask!3328))))

(assert (=> b!726578 (= lt!321797 (select (store (arr!19629 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!726578 (= lt!321793 (array!41024 (store (arr!19629 a!3186) i!1173 k!2102) (size!20050 a!3186)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!726579 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41023 (_ BitVec 32)) SeekEntryResult!7236)

(assert (=> b!726579 (= e!406812 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19629 a!3186) j!159) a!3186 mask!3328) (Found!7236 j!159)))))

(declare-fun b!726580 () Bool)

(declare-fun res!487678 () Bool)

(assert (=> b!726580 (=> (not res!487678) (not e!406810))))

(assert (=> b!726580 (= res!487678 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20050 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20050 a!3186))))))

(declare-fun b!726581 () Bool)

(declare-fun res!487672 () Bool)

(assert (=> b!726581 (=> (not res!487672) (not e!406809))))

(assert (=> b!726581 (= res!487672 (validKeyInArray!0 (select (arr!19629 a!3186) j!159)))))

(declare-fun b!726582 () Bool)

(assert (=> b!726582 (= e!406804 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19629 a!3186) j!159) a!3186 mask!3328) lt!321789))))

(declare-fun res!487668 () Bool)

(assert (=> start!64552 (=> (not res!487668) (not e!406809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64552 (= res!487668 (validMask!0 mask!3328))))

(assert (=> start!64552 e!406809))

(assert (=> start!64552 true))

(declare-fun array_inv!15403 (array!41023) Bool)

(assert (=> start!64552 (array_inv!15403 a!3186)))

(declare-fun b!726583 () Bool)

(declare-fun e!406811 () Bool)

(assert (=> b!726583 (= e!406805 (not e!406811))))

(declare-fun res!487666 () Bool)

(assert (=> b!726583 (=> res!487666 e!406811)))

(assert (=> b!726583 (= res!487666 (or (not (is-Intermediate!7236 lt!321795)) (bvsge x!1131 (x!62327 lt!321795))))))

(assert (=> b!726583 e!406807))

(declare-fun res!487680 () Bool)

(assert (=> b!726583 (=> (not res!487680) (not e!406807))))

(assert (=> b!726583 (= res!487680 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24790 0))(
  ( (Unit!24791) )
))
(declare-fun lt!321791 () Unit!24790)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41023 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24790)

(assert (=> b!726583 (= lt!321791 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726584 () Bool)

(assert (=> b!726584 (= e!406810 e!406808)))

(declare-fun res!487671 () Bool)

(assert (=> b!726584 (=> (not res!487671) (not e!406808))))

(declare-fun lt!321796 () SeekEntryResult!7236)

(assert (=> b!726584 (= res!487671 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19629 a!3186) j!159) mask!3328) (select (arr!19629 a!3186) j!159) a!3186 mask!3328) lt!321796))))

(assert (=> b!726584 (= lt!321796 (Intermediate!7236 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726585 () Bool)

(assert (=> b!726585 (= e!406811 true)))

(declare-fun lt!321792 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726585 (= lt!321792 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!726586 () Bool)

(assert (=> b!726586 (= e!406812 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19629 a!3186) j!159) a!3186 mask!3328) lt!321796))))

(declare-fun b!726587 () Bool)

(declare-fun res!487667 () Bool)

(assert (=> b!726587 (=> (not res!487667) (not e!406810))))

(declare-datatypes ((List!13684 0))(
  ( (Nil!13681) (Cons!13680 (h!14737 (_ BitVec 64)) (t!20007 List!13684)) )
))
(declare-fun arrayNoDuplicates!0 (array!41023 (_ BitVec 32) List!13684) Bool)

(assert (=> b!726587 (= res!487667 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13681))))

(declare-fun b!726588 () Bool)

(declare-fun res!487679 () Bool)

(assert (=> b!726588 (=> (not res!487679) (not e!406808))))

(assert (=> b!726588 (= res!487679 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19629 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726589 () Bool)

(declare-fun res!487676 () Bool)

(assert (=> b!726589 (=> (not res!487676) (not e!406809))))

(assert (=> b!726589 (= res!487676 (and (= (size!20050 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20050 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20050 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!726590 () Bool)

(declare-fun res!487665 () Bool)

(assert (=> b!726590 (=> (not res!487665) (not e!406809))))

(declare-fun arrayContainsKey!0 (array!41023 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726590 (= res!487665 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64552 res!487668) b!726589))

(assert (= (and b!726589 res!487676) b!726581))

(assert (= (and b!726581 res!487672) b!726573))

(assert (= (and b!726573 res!487670) b!726590))

(assert (= (and b!726590 res!487665) b!726574))

(assert (= (and b!726574 res!487675) b!726575))

(assert (= (and b!726575 res!487677) b!726587))

(assert (= (and b!726587 res!487667) b!726580))

(assert (= (and b!726580 res!487678) b!726584))

(assert (= (and b!726584 res!487671) b!726588))

(assert (= (and b!726588 res!487679) b!726577))

(assert (= (and b!726577 c!79827) b!726586))

(assert (= (and b!726577 (not c!79827)) b!726579))

(assert (= (and b!726577 res!487669) b!726578))

(assert (= (and b!726578 res!487674) b!726583))

(assert (= (and b!726583 res!487680) b!726576))

(assert (= (and b!726576 res!487673) b!726582))

(assert (= (and b!726583 (not res!487666)) b!726585))

(declare-fun m!680707 () Bool)

(assert (=> b!726586 m!680707))

(assert (=> b!726586 m!680707))

(declare-fun m!680709 () Bool)

(assert (=> b!726586 m!680709))

(declare-fun m!680711 () Bool)

(assert (=> b!726583 m!680711))

(declare-fun m!680713 () Bool)

(assert (=> b!726583 m!680713))

(declare-fun m!680715 () Bool)

(assert (=> b!726574 m!680715))

(assert (=> b!726582 m!680707))

(assert (=> b!726582 m!680707))

(declare-fun m!680717 () Bool)

(assert (=> b!726582 m!680717))

(declare-fun m!680719 () Bool)

(assert (=> b!726585 m!680719))

(assert (=> b!726579 m!680707))

(assert (=> b!726579 m!680707))

(declare-fun m!680721 () Bool)

(assert (=> b!726579 m!680721))

(declare-fun m!680723 () Bool)

(assert (=> b!726587 m!680723))

(declare-fun m!680725 () Bool)

(assert (=> b!726588 m!680725))

(declare-fun m!680727 () Bool)

(assert (=> b!726578 m!680727))

(declare-fun m!680729 () Bool)

(assert (=> b!726578 m!680729))

(declare-fun m!680731 () Bool)

(assert (=> b!726578 m!680731))

(declare-fun m!680733 () Bool)

(assert (=> b!726578 m!680733))

(assert (=> b!726578 m!680727))

(declare-fun m!680735 () Bool)

(assert (=> b!726578 m!680735))

(assert (=> b!726576 m!680707))

(assert (=> b!726576 m!680707))

(declare-fun m!680737 () Bool)

(assert (=> b!726576 m!680737))

(assert (=> b!726581 m!680707))

(assert (=> b!726581 m!680707))

(declare-fun m!680739 () Bool)

(assert (=> b!726581 m!680739))

(declare-fun m!680741 () Bool)

(assert (=> start!64552 m!680741))

(declare-fun m!680743 () Bool)

(assert (=> start!64552 m!680743))

(declare-fun m!680745 () Bool)

(assert (=> b!726575 m!680745))

(declare-fun m!680747 () Bool)

(assert (=> b!726573 m!680747))

(assert (=> b!726584 m!680707))

(assert (=> b!726584 m!680707))

(declare-fun m!680749 () Bool)

(assert (=> b!726584 m!680749))

(assert (=> b!726584 m!680749))

(assert (=> b!726584 m!680707))

(declare-fun m!680751 () Bool)

(assert (=> b!726584 m!680751))

(declare-fun m!680753 () Bool)

(assert (=> b!726590 m!680753))

(push 1)

