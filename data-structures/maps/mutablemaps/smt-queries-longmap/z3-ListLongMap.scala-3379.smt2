; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46698 () Bool)

(assert start!46698)

(declare-fun b!515020 () Bool)

(declare-fun res!314742 () Bool)

(declare-fun e!300740 () Bool)

(assert (=> b!515020 (=> (not res!314742) (not e!300740))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515020 (= res!314742 (validKeyInArray!0 k0!2280))))

(declare-fun b!515021 () Bool)

(declare-fun e!300741 () Bool)

(declare-fun e!300739 () Bool)

(assert (=> b!515021 (= e!300741 (not e!300739))))

(declare-fun res!314738 () Bool)

(assert (=> b!515021 (=> res!314738 e!300739)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32970 0))(
  ( (array!32971 (arr!15850 (Array (_ BitVec 32) (_ BitVec 64))) (size!16214 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32970)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4324 0))(
  ( (MissingZero!4324 (index!19484 (_ BitVec 32))) (Found!4324 (index!19485 (_ BitVec 32))) (Intermediate!4324 (undefined!5136 Bool) (index!19486 (_ BitVec 32)) (x!48482 (_ BitVec 32))) (Undefined!4324) (MissingVacant!4324 (index!19487 (_ BitVec 32))) )
))
(declare-fun lt!235826 () SeekEntryResult!4324)

(declare-fun lt!235823 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32970 (_ BitVec 32)) SeekEntryResult!4324)

(assert (=> b!515021 (= res!314738 (= lt!235826 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235823 (select (store (arr!15850 a!3235) i!1204 k0!2280) j!176) (array!32971 (store (arr!15850 a!3235) i!1204 k0!2280) (size!16214 a!3235)) mask!3524)))))

(declare-fun lt!235822 () (_ BitVec 32))

(assert (=> b!515021 (= lt!235826 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235822 (select (arr!15850 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515021 (= lt!235823 (toIndex!0 (select (store (arr!15850 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!515021 (= lt!235822 (toIndex!0 (select (arr!15850 a!3235) j!176) mask!3524))))

(declare-fun e!300738 () Bool)

(assert (=> b!515021 e!300738))

(declare-fun res!314743 () Bool)

(assert (=> b!515021 (=> (not res!314743) (not e!300738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32970 (_ BitVec 32)) Bool)

(assert (=> b!515021 (= res!314743 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15898 0))(
  ( (Unit!15899) )
))
(declare-fun lt!235825 () Unit!15898)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32970 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15898)

(assert (=> b!515021 (= lt!235825 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!314736 () Bool)

(assert (=> start!46698 (=> (not res!314736) (not e!300740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46698 (= res!314736 (validMask!0 mask!3524))))

(assert (=> start!46698 e!300740))

(assert (=> start!46698 true))

(declare-fun array_inv!11624 (array!32970) Bool)

(assert (=> start!46698 (array_inv!11624 a!3235)))

(declare-fun b!515022 () Bool)

(declare-fun res!314737 () Bool)

(assert (=> b!515022 (=> (not res!314737) (not e!300741))))

(declare-datatypes ((List!10061 0))(
  ( (Nil!10058) (Cons!10057 (h!10955 (_ BitVec 64)) (t!16297 List!10061)) )
))
(declare-fun arrayNoDuplicates!0 (array!32970 (_ BitVec 32) List!10061) Bool)

(assert (=> b!515022 (= res!314737 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10058))))

(declare-fun b!515023 () Bool)

(assert (=> b!515023 (= e!300739 true)))

(assert (=> b!515023 (and (bvslt (x!48482 lt!235826) #b01111111111111111111111111111110) (or (= (select (arr!15850 a!3235) (index!19486 lt!235826)) (select (arr!15850 a!3235) j!176)) (= (select (arr!15850 a!3235) (index!19486 lt!235826)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15850 a!3235) (index!19486 lt!235826)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515024 () Bool)

(declare-fun res!314740 () Bool)

(assert (=> b!515024 (=> (not res!314740) (not e!300741))))

(assert (=> b!515024 (= res!314740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515025 () Bool)

(declare-fun res!314741 () Bool)

(assert (=> b!515025 (=> res!314741 e!300739)))

(get-info :version)

(assert (=> b!515025 (= res!314741 (or (undefined!5136 lt!235826) (not ((_ is Intermediate!4324) lt!235826))))))

(declare-fun b!515026 () Bool)

(declare-fun res!314734 () Bool)

(assert (=> b!515026 (=> (not res!314734) (not e!300740))))

(assert (=> b!515026 (= res!314734 (validKeyInArray!0 (select (arr!15850 a!3235) j!176)))))

(declare-fun b!515027 () Bool)

(declare-fun res!314739 () Bool)

(assert (=> b!515027 (=> (not res!314739) (not e!300740))))

(assert (=> b!515027 (= res!314739 (and (= (size!16214 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16214 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16214 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515028 () Bool)

(declare-fun res!314744 () Bool)

(assert (=> b!515028 (=> (not res!314744) (not e!300740))))

(declare-fun arrayContainsKey!0 (array!32970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515028 (= res!314744 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515029 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32970 (_ BitVec 32)) SeekEntryResult!4324)

(assert (=> b!515029 (= e!300738 (= (seekEntryOrOpen!0 (select (arr!15850 a!3235) j!176) a!3235 mask!3524) (Found!4324 j!176)))))

(declare-fun b!515030 () Bool)

(assert (=> b!515030 (= e!300740 e!300741)))

(declare-fun res!314735 () Bool)

(assert (=> b!515030 (=> (not res!314735) (not e!300741))))

(declare-fun lt!235824 () SeekEntryResult!4324)

(assert (=> b!515030 (= res!314735 (or (= lt!235824 (MissingZero!4324 i!1204)) (= lt!235824 (MissingVacant!4324 i!1204))))))

(assert (=> b!515030 (= lt!235824 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!46698 res!314736) b!515027))

(assert (= (and b!515027 res!314739) b!515026))

(assert (= (and b!515026 res!314734) b!515020))

(assert (= (and b!515020 res!314742) b!515028))

(assert (= (and b!515028 res!314744) b!515030))

(assert (= (and b!515030 res!314735) b!515024))

(assert (= (and b!515024 res!314740) b!515022))

(assert (= (and b!515022 res!314737) b!515021))

(assert (= (and b!515021 res!314743) b!515029))

(assert (= (and b!515021 (not res!314738)) b!515025))

(assert (= (and b!515025 (not res!314741)) b!515023))

(declare-fun m!496359 () Bool)

(assert (=> b!515022 m!496359))

(declare-fun m!496361 () Bool)

(assert (=> start!46698 m!496361))

(declare-fun m!496363 () Bool)

(assert (=> start!46698 m!496363))

(declare-fun m!496365 () Bool)

(assert (=> b!515023 m!496365))

(declare-fun m!496367 () Bool)

(assert (=> b!515023 m!496367))

(declare-fun m!496369 () Bool)

(assert (=> b!515028 m!496369))

(declare-fun m!496371 () Bool)

(assert (=> b!515020 m!496371))

(assert (=> b!515026 m!496367))

(assert (=> b!515026 m!496367))

(declare-fun m!496373 () Bool)

(assert (=> b!515026 m!496373))

(declare-fun m!496375 () Bool)

(assert (=> b!515030 m!496375))

(assert (=> b!515029 m!496367))

(assert (=> b!515029 m!496367))

(declare-fun m!496377 () Bool)

(assert (=> b!515029 m!496377))

(declare-fun m!496379 () Bool)

(assert (=> b!515021 m!496379))

(declare-fun m!496381 () Bool)

(assert (=> b!515021 m!496381))

(declare-fun m!496383 () Bool)

(assert (=> b!515021 m!496383))

(declare-fun m!496385 () Bool)

(assert (=> b!515021 m!496385))

(assert (=> b!515021 m!496381))

(assert (=> b!515021 m!496367))

(declare-fun m!496387 () Bool)

(assert (=> b!515021 m!496387))

(assert (=> b!515021 m!496367))

(assert (=> b!515021 m!496367))

(declare-fun m!496389 () Bool)

(assert (=> b!515021 m!496389))

(declare-fun m!496391 () Bool)

(assert (=> b!515021 m!496391))

(assert (=> b!515021 m!496381))

(declare-fun m!496393 () Bool)

(assert (=> b!515021 m!496393))

(declare-fun m!496395 () Bool)

(assert (=> b!515024 m!496395))

(check-sat (not b!515024) (not start!46698) (not b!515026) (not b!515022) (not b!515029) (not b!515020) (not b!515030) (not b!515021) (not b!515028))
(check-sat)
