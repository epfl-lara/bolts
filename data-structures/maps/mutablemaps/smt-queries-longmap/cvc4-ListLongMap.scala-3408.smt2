; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47384 () Bool)

(assert start!47384)

(declare-fun b!520627 () Bool)

(declare-fun res!318665 () Bool)

(declare-fun e!303803 () Bool)

(assert (=> b!520627 (=> res!318665 e!303803)))

(declare-datatypes ((SeekEntryResult!4412 0))(
  ( (MissingZero!4412 (index!19851 (_ BitVec 32))) (Found!4412 (index!19852 (_ BitVec 32))) (Intermediate!4412 (undefined!5224 Bool) (index!19853 (_ BitVec 32)) (x!48865 (_ BitVec 32))) (Undefined!4412) (MissingVacant!4412 (index!19854 (_ BitVec 32))) )
))
(declare-fun lt!238527 () SeekEntryResult!4412)

(assert (=> b!520627 (= res!318665 (or (undefined!5224 lt!238527) (not (is-Intermediate!4412 lt!238527))))))

(declare-fun b!520628 () Bool)

(declare-fun e!303800 () Bool)

(declare-fun e!303799 () Bool)

(assert (=> b!520628 (= e!303800 e!303799)))

(declare-fun res!318669 () Bool)

(assert (=> b!520628 (=> (not res!318669) (not e!303799))))

(declare-fun lt!238532 () SeekEntryResult!4412)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!520628 (= res!318669 (or (= lt!238532 (MissingZero!4412 i!1204)) (= lt!238532 (MissingVacant!4412 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33170 0))(
  ( (array!33171 (arr!15938 (Array (_ BitVec 32) (_ BitVec 64))) (size!16302 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33170)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33170 (_ BitVec 32)) SeekEntryResult!4412)

(assert (=> b!520628 (= lt!238532 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!520629 () Bool)

(declare-fun res!318666 () Bool)

(assert (=> b!520629 (=> (not res!318666) (not e!303799))))

(declare-datatypes ((List!10149 0))(
  ( (Nil!10146) (Cons!10145 (h!11067 (_ BitVec 64)) (t!16385 List!10149)) )
))
(declare-fun arrayNoDuplicates!0 (array!33170 (_ BitVec 32) List!10149) Bool)

(assert (=> b!520629 (= res!318666 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10146))))

(declare-fun b!520630 () Bool)

(declare-fun res!318668 () Bool)

(assert (=> b!520630 (=> (not res!318668) (not e!303800))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!520630 (= res!318668 (and (= (size!16302 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16302 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16302 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!520631 () Bool)

(declare-datatypes ((Unit!16114 0))(
  ( (Unit!16115) )
))
(declare-fun e!303801 () Unit!16114)

(declare-fun Unit!16116 () Unit!16114)

(assert (=> b!520631 (= e!303801 Unit!16116)))

(declare-fun lt!238531 () (_ BitVec 32))

(declare-fun lt!238530 () Unit!16114)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33170 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16114)

(assert (=> b!520631 (= lt!238530 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238531 #b00000000000000000000000000000000 (index!19853 lt!238527) (x!48865 lt!238527) mask!3524))))

(declare-fun res!318664 () Bool)

(declare-fun lt!238529 () array!33170)

(declare-fun lt!238525 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33170 (_ BitVec 32)) SeekEntryResult!4412)

(assert (=> b!520631 (= res!318664 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238531 lt!238525 lt!238529 mask!3524) (Intermediate!4412 false (index!19853 lt!238527) (x!48865 lt!238527))))))

(declare-fun e!303802 () Bool)

(assert (=> b!520631 (=> (not res!318664) (not e!303802))))

(assert (=> b!520631 e!303802))

(declare-fun res!318674 () Bool)

(assert (=> start!47384 (=> (not res!318674) (not e!303800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47384 (= res!318674 (validMask!0 mask!3524))))

(assert (=> start!47384 e!303800))

(assert (=> start!47384 true))

(declare-fun array_inv!11712 (array!33170) Bool)

(assert (=> start!47384 (array_inv!11712 a!3235)))

(declare-fun b!520632 () Bool)

(declare-fun res!318670 () Bool)

(assert (=> b!520632 (=> (not res!318670) (not e!303800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520632 (= res!318670 (validKeyInArray!0 k!2280))))

(declare-fun b!520633 () Bool)

(declare-fun res!318663 () Bool)

(assert (=> b!520633 (=> (not res!318663) (not e!303800))))

(declare-fun arrayContainsKey!0 (array!33170 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520633 (= res!318663 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!520634 () Bool)

(assert (=> b!520634 (= e!303799 (not e!303803))))

(declare-fun res!318672 () Bool)

(assert (=> b!520634 (=> res!318672 e!303803)))

(declare-fun lt!238526 () (_ BitVec 32))

(assert (=> b!520634 (= res!318672 (= lt!238527 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238526 lt!238525 lt!238529 mask!3524)))))

(assert (=> b!520634 (= lt!238527 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238531 (select (arr!15938 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520634 (= lt!238526 (toIndex!0 lt!238525 mask!3524))))

(assert (=> b!520634 (= lt!238525 (select (store (arr!15938 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!520634 (= lt!238531 (toIndex!0 (select (arr!15938 a!3235) j!176) mask!3524))))

(assert (=> b!520634 (= lt!238529 (array!33171 (store (arr!15938 a!3235) i!1204 k!2280) (size!16302 a!3235)))))

(declare-fun e!303805 () Bool)

(assert (=> b!520634 e!303805))

(declare-fun res!318673 () Bool)

(assert (=> b!520634 (=> (not res!318673) (not e!303805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33170 (_ BitVec 32)) Bool)

(assert (=> b!520634 (= res!318673 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238524 () Unit!16114)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33170 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16114)

(assert (=> b!520634 (= lt!238524 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!520635 () Bool)

(assert (=> b!520635 (= e!303805 (= (seekEntryOrOpen!0 (select (arr!15938 a!3235) j!176) a!3235 mask!3524) (Found!4412 j!176)))))

(declare-fun b!520636 () Bool)

(assert (=> b!520636 (= e!303803 (= (select (arr!15938 a!3235) (index!19853 lt!238527)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!520636 (and (or (= (select (arr!15938 a!3235) (index!19853 lt!238527)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15938 a!3235) (index!19853 lt!238527)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15938 a!3235) (index!19853 lt!238527)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!238528 () Unit!16114)

(assert (=> b!520636 (= lt!238528 e!303801)))

(declare-fun c!61283 () Bool)

(assert (=> b!520636 (= c!61283 (= (select (arr!15938 a!3235) (index!19853 lt!238527)) (select (arr!15938 a!3235) j!176)))))

(assert (=> b!520636 (and (bvslt (x!48865 lt!238527) #b01111111111111111111111111111110) (or (= (select (arr!15938 a!3235) (index!19853 lt!238527)) (select (arr!15938 a!3235) j!176)) (= (select (arr!15938 a!3235) (index!19853 lt!238527)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15938 a!3235) (index!19853 lt!238527)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520637 () Bool)

(assert (=> b!520637 (= e!303802 false)))

(declare-fun b!520638 () Bool)

(declare-fun Unit!16117 () Unit!16114)

(assert (=> b!520638 (= e!303801 Unit!16117)))

(declare-fun b!520639 () Bool)

(declare-fun res!318671 () Bool)

(assert (=> b!520639 (=> (not res!318671) (not e!303799))))

(assert (=> b!520639 (= res!318671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!520640 () Bool)

(declare-fun res!318667 () Bool)

(assert (=> b!520640 (=> (not res!318667) (not e!303800))))

(assert (=> b!520640 (= res!318667 (validKeyInArray!0 (select (arr!15938 a!3235) j!176)))))

(assert (= (and start!47384 res!318674) b!520630))

(assert (= (and b!520630 res!318668) b!520640))

(assert (= (and b!520640 res!318667) b!520632))

(assert (= (and b!520632 res!318670) b!520633))

(assert (= (and b!520633 res!318663) b!520628))

(assert (= (and b!520628 res!318669) b!520639))

(assert (= (and b!520639 res!318671) b!520629))

(assert (= (and b!520629 res!318666) b!520634))

(assert (= (and b!520634 res!318673) b!520635))

(assert (= (and b!520634 (not res!318672)) b!520627))

(assert (= (and b!520627 (not res!318665)) b!520636))

(assert (= (and b!520636 c!61283) b!520631))

(assert (= (and b!520636 (not c!61283)) b!520638))

(assert (= (and b!520631 res!318664) b!520637))

(declare-fun m!501577 () Bool)

(assert (=> b!520631 m!501577))

(declare-fun m!501579 () Bool)

(assert (=> b!520631 m!501579))

(declare-fun m!501581 () Bool)

(assert (=> b!520639 m!501581))

(declare-fun m!501583 () Bool)

(assert (=> b!520633 m!501583))

(declare-fun m!501585 () Bool)

(assert (=> b!520632 m!501585))

(declare-fun m!501587 () Bool)

(assert (=> b!520640 m!501587))

(assert (=> b!520640 m!501587))

(declare-fun m!501589 () Bool)

(assert (=> b!520640 m!501589))

(declare-fun m!501591 () Bool)

(assert (=> b!520634 m!501591))

(declare-fun m!501593 () Bool)

(assert (=> b!520634 m!501593))

(assert (=> b!520634 m!501587))

(declare-fun m!501595 () Bool)

(assert (=> b!520634 m!501595))

(assert (=> b!520634 m!501587))

(declare-fun m!501597 () Bool)

(assert (=> b!520634 m!501597))

(declare-fun m!501599 () Bool)

(assert (=> b!520634 m!501599))

(assert (=> b!520634 m!501587))

(declare-fun m!501601 () Bool)

(assert (=> b!520634 m!501601))

(declare-fun m!501603 () Bool)

(assert (=> b!520634 m!501603))

(declare-fun m!501605 () Bool)

(assert (=> b!520634 m!501605))

(assert (=> b!520635 m!501587))

(assert (=> b!520635 m!501587))

(declare-fun m!501607 () Bool)

(assert (=> b!520635 m!501607))

(declare-fun m!501609 () Bool)

(assert (=> start!47384 m!501609))

(declare-fun m!501611 () Bool)

(assert (=> start!47384 m!501611))

(declare-fun m!501613 () Bool)

(assert (=> b!520629 m!501613))

(declare-fun m!501615 () Bool)

(assert (=> b!520636 m!501615))

(assert (=> b!520636 m!501587))

(declare-fun m!501617 () Bool)

(assert (=> b!520628 m!501617))

(push 1)

