; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48028 () Bool)

(assert start!48028)

(declare-fun b!528628 () Bool)

(declare-datatypes ((Unit!16706 0))(
  ( (Unit!16707) )
))
(declare-fun e!308068 () Unit!16706)

(declare-fun Unit!16708 () Unit!16706)

(assert (=> b!528628 (= e!308068 Unit!16708)))

(declare-fun lt!243600 () Unit!16706)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33481 0))(
  ( (array!33482 (arr!16086 (Array (_ BitVec 32) (_ BitVec 64))) (size!16450 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33481)

(declare-fun lt!243601 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4560 0))(
  ( (MissingZero!4560 (index!20464 (_ BitVec 32))) (Found!4560 (index!20465 (_ BitVec 32))) (Intermediate!4560 (undefined!5372 Bool) (index!20466 (_ BitVec 32)) (x!49467 (_ BitVec 32))) (Undefined!4560) (MissingVacant!4560 (index!20467 (_ BitVec 32))) )
))
(declare-fun lt!243603 () SeekEntryResult!4560)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33481 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16706)

(assert (=> b!528628 (= lt!243600 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243601 #b00000000000000000000000000000000 (index!20466 lt!243603) (x!49467 lt!243603) mask!3524))))

(declare-fun res!324719 () Bool)

(declare-fun lt!243611 () (_ BitVec 64))

(declare-fun lt!243604 () array!33481)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33481 (_ BitVec 32)) SeekEntryResult!4560)

(assert (=> b!528628 (= res!324719 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243601 lt!243611 lt!243604 mask!3524) (Intermediate!4560 false (index!20466 lt!243603) (x!49467 lt!243603))))))

(declare-fun e!308062 () Bool)

(assert (=> b!528628 (=> (not res!324719) (not e!308062))))

(assert (=> b!528628 e!308062))

(declare-fun b!528629 () Bool)

(declare-fun res!324731 () Bool)

(declare-fun e!308061 () Bool)

(assert (=> b!528629 (=> (not res!324731) (not e!308061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33481 (_ BitVec 32)) Bool)

(assert (=> b!528629 (= res!324731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!528630 () Bool)

(declare-fun res!324721 () Bool)

(assert (=> b!528630 (=> (not res!324721) (not e!308061))))

(declare-datatypes ((List!10297 0))(
  ( (Nil!10294) (Cons!10293 (h!11230 (_ BitVec 64)) (t!16533 List!10297)) )
))
(declare-fun arrayNoDuplicates!0 (array!33481 (_ BitVec 32) List!10297) Bool)

(assert (=> b!528630 (= res!324721 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10294))))

(declare-fun b!528631 () Bool)

(declare-fun e!308064 () Bool)

(assert (=> b!528631 (= e!308064 e!308061)))

(declare-fun res!324725 () Bool)

(assert (=> b!528631 (=> (not res!324725) (not e!308061))))

(declare-fun lt!243610 () SeekEntryResult!4560)

(assert (=> b!528631 (= res!324725 (or (= lt!243610 (MissingZero!4560 i!1204)) (= lt!243610 (MissingVacant!4560 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33481 (_ BitVec 32)) SeekEntryResult!4560)

(assert (=> b!528631 (= lt!243610 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!528632 () Bool)

(assert (=> b!528632 (= e!308062 false)))

(declare-fun b!528633 () Bool)

(declare-fun e!308067 () Bool)

(declare-fun lt!243609 () SeekEntryResult!4560)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33481 (_ BitVec 32)) SeekEntryResult!4560)

(assert (=> b!528633 (= e!308067 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243601 (index!20466 lt!243603) (select (arr!16086 a!3235) j!176) a!3235 mask!3524) lt!243609)))))

(declare-fun b!528635 () Bool)

(declare-fun res!324726 () Bool)

(assert (=> b!528635 (=> (not res!324726) (not e!308064))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528635 (= res!324726 (validKeyInArray!0 k!2280))))

(declare-fun b!528636 () Bool)

(declare-fun res!324730 () Bool)

(declare-fun e!308065 () Bool)

(assert (=> b!528636 (=> res!324730 e!308065)))

(declare-fun lt!243608 () SeekEntryResult!4560)

(assert (=> b!528636 (= res!324730 (not (= lt!243608 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243601 lt!243611 lt!243604 mask!3524))))))

(declare-fun b!528637 () Bool)

(declare-fun res!324724 () Bool)

(assert (=> b!528637 (=> (not res!324724) (not e!308064))))

(assert (=> b!528637 (= res!324724 (and (= (size!16450 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16450 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16450 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528638 () Bool)

(declare-fun e!308063 () Bool)

(assert (=> b!528638 (= e!308063 (= (seekEntryOrOpen!0 (select (arr!16086 a!3235) j!176) a!3235 mask!3524) (Found!4560 j!176)))))

(declare-fun b!528639 () Bool)

(declare-fun res!324718 () Bool)

(assert (=> b!528639 (=> (not res!324718) (not e!308064))))

(assert (=> b!528639 (= res!324718 (validKeyInArray!0 (select (arr!16086 a!3235) j!176)))))

(declare-fun b!528640 () Bool)

(declare-fun e!308066 () Bool)

(assert (=> b!528640 (= e!308066 e!308065)))

(declare-fun res!324727 () Bool)

(assert (=> b!528640 (=> res!324727 e!308065)))

(assert (=> b!528640 (= res!324727 (or (bvsgt (x!49467 lt!243603) #b01111111111111111111111111111110) (bvslt lt!243601 #b00000000000000000000000000000000) (bvsge lt!243601 (size!16450 a!3235)) (bvslt (index!20466 lt!243603) #b00000000000000000000000000000000) (bvsge (index!20466 lt!243603) (size!16450 a!3235)) (not (= lt!243603 (Intermediate!4560 false (index!20466 lt!243603) (x!49467 lt!243603))))))))

(assert (=> b!528640 (= (index!20466 lt!243603) i!1204)))

(declare-fun lt!243605 () Unit!16706)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33481 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16706)

(assert (=> b!528640 (= lt!243605 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243601 #b00000000000000000000000000000000 (index!20466 lt!243603) (x!49467 lt!243603) mask!3524))))

(assert (=> b!528640 (and (or (= (select (arr!16086 a!3235) (index!20466 lt!243603)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16086 a!3235) (index!20466 lt!243603)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16086 a!3235) (index!20466 lt!243603)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16086 a!3235) (index!20466 lt!243603)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243607 () Unit!16706)

(assert (=> b!528640 (= lt!243607 e!308068)))

(declare-fun c!62264 () Bool)

(assert (=> b!528640 (= c!62264 (= (select (arr!16086 a!3235) (index!20466 lt!243603)) (select (arr!16086 a!3235) j!176)))))

(assert (=> b!528640 (and (bvslt (x!49467 lt!243603) #b01111111111111111111111111111110) (or (= (select (arr!16086 a!3235) (index!20466 lt!243603)) (select (arr!16086 a!3235) j!176)) (= (select (arr!16086 a!3235) (index!20466 lt!243603)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16086 a!3235) (index!20466 lt!243603)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528641 () Bool)

(assert (=> b!528641 (= e!308061 (not e!308066))))

(declare-fun res!324720 () Bool)

(assert (=> b!528641 (=> res!324720 e!308066)))

(assert (=> b!528641 (= res!324720 (or (= lt!243603 lt!243608) (undefined!5372 lt!243603) (not (is-Intermediate!4560 lt!243603))))))

(declare-fun lt!243602 () (_ BitVec 32))

(assert (=> b!528641 (= lt!243608 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243602 lt!243611 lt!243604 mask!3524))))

(assert (=> b!528641 (= lt!243603 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243601 (select (arr!16086 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528641 (= lt!243602 (toIndex!0 lt!243611 mask!3524))))

(assert (=> b!528641 (= lt!243611 (select (store (arr!16086 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!528641 (= lt!243601 (toIndex!0 (select (arr!16086 a!3235) j!176) mask!3524))))

(assert (=> b!528641 (= lt!243604 (array!33482 (store (arr!16086 a!3235) i!1204 k!2280) (size!16450 a!3235)))))

(assert (=> b!528641 (= lt!243609 (Found!4560 j!176))))

(assert (=> b!528641 e!308063))

(declare-fun res!324729 () Bool)

(assert (=> b!528641 (=> (not res!324729) (not e!308063))))

(assert (=> b!528641 (= res!324729 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!243606 () Unit!16706)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33481 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16706)

(assert (=> b!528641 (= lt!243606 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528634 () Bool)

(declare-fun res!324717 () Bool)

(assert (=> b!528634 (=> res!324717 e!308065)))

(assert (=> b!528634 (= res!324717 e!308067)))

(declare-fun res!324723 () Bool)

(assert (=> b!528634 (=> (not res!324723) (not e!308067))))

(assert (=> b!528634 (= res!324723 (bvsgt #b00000000000000000000000000000000 (x!49467 lt!243603)))))

(declare-fun res!324722 () Bool)

(assert (=> start!48028 (=> (not res!324722) (not e!308064))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48028 (= res!324722 (validMask!0 mask!3524))))

(assert (=> start!48028 e!308064))

(assert (=> start!48028 true))

(declare-fun array_inv!11860 (array!33481) Bool)

(assert (=> start!48028 (array_inv!11860 a!3235)))

(declare-fun b!528642 () Bool)

(declare-fun Unit!16709 () Unit!16706)

(assert (=> b!528642 (= e!308068 Unit!16709)))

(declare-fun b!528643 () Bool)

(assert (=> b!528643 (= e!308065 true)))

(assert (=> b!528643 (= (seekEntryOrOpen!0 lt!243611 lt!243604 mask!3524) lt!243609)))

(declare-fun lt!243599 () Unit!16706)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33481 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16706)

(assert (=> b!528643 (= lt!243599 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!243601 #b00000000000000000000000000000000 (index!20466 lt!243603) (x!49467 lt!243603) mask!3524))))

(declare-fun b!528644 () Bool)

(declare-fun res!324728 () Bool)

(assert (=> b!528644 (=> (not res!324728) (not e!308064))))

(declare-fun arrayContainsKey!0 (array!33481 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528644 (= res!324728 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!48028 res!324722) b!528637))

(assert (= (and b!528637 res!324724) b!528639))

(assert (= (and b!528639 res!324718) b!528635))

(assert (= (and b!528635 res!324726) b!528644))

(assert (= (and b!528644 res!324728) b!528631))

(assert (= (and b!528631 res!324725) b!528629))

(assert (= (and b!528629 res!324731) b!528630))

(assert (= (and b!528630 res!324721) b!528641))

(assert (= (and b!528641 res!324729) b!528638))

(assert (= (and b!528641 (not res!324720)) b!528640))

(assert (= (and b!528640 c!62264) b!528628))

(assert (= (and b!528640 (not c!62264)) b!528642))

(assert (= (and b!528628 res!324719) b!528632))

(assert (= (and b!528640 (not res!324727)) b!528634))

(assert (= (and b!528634 res!324723) b!528633))

(assert (= (and b!528634 (not res!324717)) b!528636))

(assert (= (and b!528636 (not res!324730)) b!528643))

(declare-fun m!509197 () Bool)

(assert (=> b!528629 m!509197))

(declare-fun m!509199 () Bool)

(assert (=> b!528630 m!509199))

(declare-fun m!509201 () Bool)

(assert (=> b!528644 m!509201))

(declare-fun m!509203 () Bool)

(assert (=> b!528633 m!509203))

(assert (=> b!528633 m!509203))

(declare-fun m!509205 () Bool)

(assert (=> b!528633 m!509205))

(declare-fun m!509207 () Bool)

(assert (=> start!48028 m!509207))

(declare-fun m!509209 () Bool)

(assert (=> start!48028 m!509209))

(declare-fun m!509211 () Bool)

(assert (=> b!528635 m!509211))

(assert (=> b!528638 m!509203))

(assert (=> b!528638 m!509203))

(declare-fun m!509213 () Bool)

(assert (=> b!528638 m!509213))

(declare-fun m!509215 () Bool)

(assert (=> b!528628 m!509215))

(declare-fun m!509217 () Bool)

(assert (=> b!528628 m!509217))

(declare-fun m!509219 () Bool)

(assert (=> b!528640 m!509219))

(declare-fun m!509221 () Bool)

(assert (=> b!528640 m!509221))

(assert (=> b!528640 m!509203))

(declare-fun m!509223 () Bool)

(assert (=> b!528643 m!509223))

(declare-fun m!509225 () Bool)

(assert (=> b!528643 m!509225))

(declare-fun m!509227 () Bool)

(assert (=> b!528631 m!509227))

(assert (=> b!528636 m!509217))

(assert (=> b!528639 m!509203))

(assert (=> b!528639 m!509203))

(declare-fun m!509229 () Bool)

(assert (=> b!528639 m!509229))

(assert (=> b!528641 m!509203))

(declare-fun m!509231 () Bool)

(assert (=> b!528641 m!509231))

(declare-fun m!509233 () Bool)

(assert (=> b!528641 m!509233))

(declare-fun m!509235 () Bool)

(assert (=> b!528641 m!509235))

(declare-fun m!509237 () Bool)

(assert (=> b!528641 m!509237))

(declare-fun m!509239 () Bool)

(assert (=> b!528641 m!509239))

(assert (=> b!528641 m!509203))

(declare-fun m!509241 () Bool)

(assert (=> b!528641 m!509241))

(assert (=> b!528641 m!509203))

(declare-fun m!509243 () Bool)

(assert (=> b!528641 m!509243))

(declare-fun m!509245 () Bool)

(assert (=> b!528641 m!509245))

(push 1)

