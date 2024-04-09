; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45712 () Bool)

(assert start!45712)

(declare-fun b!504634 () Bool)

(declare-datatypes ((Unit!15350 0))(
  ( (Unit!15351) )
))
(declare-fun e!295457 () Unit!15350)

(declare-fun Unit!15352 () Unit!15350)

(assert (=> b!504634 (= e!295457 Unit!15352)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32428 0))(
  ( (array!32429 (arr!15591 (Array (_ BitVec 32) (_ BitVec 64))) (size!15955 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32428)

(declare-fun lt!229886 () Unit!15350)

(declare-datatypes ((SeekEntryResult!4065 0))(
  ( (MissingZero!4065 (index!18448 (_ BitVec 32))) (Found!4065 (index!18449 (_ BitVec 32))) (Intermediate!4065 (undefined!4877 Bool) (index!18450 (_ BitVec 32)) (x!47493 (_ BitVec 32))) (Undefined!4065) (MissingVacant!4065 (index!18451 (_ BitVec 32))) )
))
(declare-fun lt!229894 () SeekEntryResult!4065)

(declare-fun lt!229893 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32428 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15350)

(assert (=> b!504634 (= lt!229886 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229893 #b00000000000000000000000000000000 (index!18450 lt!229894) (x!47493 lt!229894) mask!3524))))

(declare-fun res!305923 () Bool)

(declare-fun lt!229892 () (_ BitVec 64))

(declare-fun lt!229891 () array!32428)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32428 (_ BitVec 32)) SeekEntryResult!4065)

(assert (=> b!504634 (= res!305923 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229893 lt!229892 lt!229891 mask!3524) (Intermediate!4065 false (index!18450 lt!229894) (x!47493 lt!229894))))))

(declare-fun e!295452 () Bool)

(assert (=> b!504634 (=> (not res!305923) (not e!295452))))

(assert (=> b!504634 e!295452))

(declare-fun b!504635 () Bool)

(declare-fun res!305924 () Bool)

(declare-fun e!295456 () Bool)

(assert (=> b!504635 (=> (not res!305924) (not e!295456))))

(declare-fun arrayContainsKey!0 (array!32428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504635 (= res!305924 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504636 () Bool)

(assert (=> b!504636 (= e!295452 false)))

(declare-fun b!504637 () Bool)

(declare-fun res!305928 () Bool)

(declare-fun e!295459 () Bool)

(assert (=> b!504637 (=> res!305928 e!295459)))

(declare-fun e!295451 () Bool)

(assert (=> b!504637 (= res!305928 e!295451)))

(declare-fun res!305926 () Bool)

(assert (=> b!504637 (=> (not res!305926) (not e!295451))))

(assert (=> b!504637 (= res!305926 (bvsgt #b00000000000000000000000000000000 (x!47493 lt!229894)))))

(declare-fun b!504638 () Bool)

(declare-fun e!295458 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32428 (_ BitVec 32)) SeekEntryResult!4065)

(assert (=> b!504638 (= e!295458 (= (seekEntryOrOpen!0 (select (arr!15591 a!3235) j!176) a!3235 mask!3524) (Found!4065 j!176)))))

(declare-fun b!504639 () Bool)

(declare-fun res!305920 () Bool)

(assert (=> b!504639 (=> (not res!305920) (not e!295456))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504639 (= res!305920 (validKeyInArray!0 k!2280))))

(declare-fun b!504640 () Bool)

(declare-fun res!305930 () Bool)

(declare-fun e!295453 () Bool)

(assert (=> b!504640 (=> res!305930 e!295453)))

(assert (=> b!504640 (= res!305930 (or (undefined!4877 lt!229894) (not (is-Intermediate!4065 lt!229894))))))

(declare-fun b!504641 () Bool)

(declare-fun e!295454 () Bool)

(assert (=> b!504641 (= e!295456 e!295454)))

(declare-fun res!305929 () Bool)

(assert (=> b!504641 (=> (not res!305929) (not e!295454))))

(declare-fun lt!229895 () SeekEntryResult!4065)

(assert (=> b!504641 (= res!305929 (or (= lt!229895 (MissingZero!4065 i!1204)) (= lt!229895 (MissingVacant!4065 i!1204))))))

(assert (=> b!504641 (= lt!229895 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!504643 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32428 (_ BitVec 32)) SeekEntryResult!4065)

(assert (=> b!504643 (= e!295451 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229893 (index!18450 lt!229894) (select (arr!15591 a!3235) j!176) a!3235 mask!3524) (Found!4065 j!176))))))

(declare-fun b!504644 () Bool)

(declare-fun res!305931 () Bool)

(assert (=> b!504644 (=> (not res!305931) (not e!295456))))

(assert (=> b!504644 (= res!305931 (validKeyInArray!0 (select (arr!15591 a!3235) j!176)))))

(declare-fun b!504645 () Bool)

(assert (=> b!504645 (= e!295453 e!295459)))

(declare-fun res!305932 () Bool)

(assert (=> b!504645 (=> res!305932 e!295459)))

(assert (=> b!504645 (= res!305932 (or (bvsgt (x!47493 lt!229894) #b01111111111111111111111111111110) (bvslt lt!229893 #b00000000000000000000000000000000) (bvsge lt!229893 (size!15955 a!3235)) (bvslt (index!18450 lt!229894) #b00000000000000000000000000000000) (bvsge (index!18450 lt!229894) (size!15955 a!3235)) (not (= lt!229894 (Intermediate!4065 false (index!18450 lt!229894) (x!47493 lt!229894))))))))

(assert (=> b!504645 (= (index!18450 lt!229894) i!1204)))

(declare-fun lt!229890 () Unit!15350)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32428 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15350)

(assert (=> b!504645 (= lt!229890 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229893 #b00000000000000000000000000000000 (index!18450 lt!229894) (x!47493 lt!229894) mask!3524))))

(assert (=> b!504645 (and (or (= (select (arr!15591 a!3235) (index!18450 lt!229894)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15591 a!3235) (index!18450 lt!229894)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15591 a!3235) (index!18450 lt!229894)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15591 a!3235) (index!18450 lt!229894)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229887 () Unit!15350)

(assert (=> b!504645 (= lt!229887 e!295457)))

(declare-fun c!59636 () Bool)

(assert (=> b!504645 (= c!59636 (= (select (arr!15591 a!3235) (index!18450 lt!229894)) (select (arr!15591 a!3235) j!176)))))

(assert (=> b!504645 (and (bvslt (x!47493 lt!229894) #b01111111111111111111111111111110) (or (= (select (arr!15591 a!3235) (index!18450 lt!229894)) (select (arr!15591 a!3235) j!176)) (= (select (arr!15591 a!3235) (index!18450 lt!229894)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15591 a!3235) (index!18450 lt!229894)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504646 () Bool)

(declare-fun res!305933 () Bool)

(assert (=> b!504646 (=> (not res!305933) (not e!295456))))

(assert (=> b!504646 (= res!305933 (and (= (size!15955 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15955 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15955 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504647 () Bool)

(declare-fun res!305919 () Bool)

(assert (=> b!504647 (=> (not res!305919) (not e!295454))))

(declare-datatypes ((List!9802 0))(
  ( (Nil!9799) (Cons!9798 (h!10675 (_ BitVec 64)) (t!16038 List!9802)) )
))
(declare-fun arrayNoDuplicates!0 (array!32428 (_ BitVec 32) List!9802) Bool)

(assert (=> b!504647 (= res!305919 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9799))))

(declare-fun b!504648 () Bool)

(assert (=> b!504648 (= e!295454 (not e!295453))))

(declare-fun res!305927 () Bool)

(assert (=> b!504648 (=> res!305927 e!295453)))

(declare-fun lt!229885 () (_ BitVec 32))

(assert (=> b!504648 (= res!305927 (= lt!229894 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229885 lt!229892 lt!229891 mask!3524)))))

(assert (=> b!504648 (= lt!229894 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229893 (select (arr!15591 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504648 (= lt!229885 (toIndex!0 lt!229892 mask!3524))))

(assert (=> b!504648 (= lt!229892 (select (store (arr!15591 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!504648 (= lt!229893 (toIndex!0 (select (arr!15591 a!3235) j!176) mask!3524))))

(assert (=> b!504648 (= lt!229891 (array!32429 (store (arr!15591 a!3235) i!1204 k!2280) (size!15955 a!3235)))))

(assert (=> b!504648 e!295458))

(declare-fun res!305925 () Bool)

(assert (=> b!504648 (=> (not res!305925) (not e!295458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32428 (_ BitVec 32)) Bool)

(assert (=> b!504648 (= res!305925 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229889 () Unit!15350)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32428 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15350)

(assert (=> b!504648 (= lt!229889 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504642 () Bool)

(declare-fun res!305921 () Bool)

(assert (=> b!504642 (=> (not res!305921) (not e!295454))))

(assert (=> b!504642 (= res!305921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!305922 () Bool)

(assert (=> start!45712 (=> (not res!305922) (not e!295456))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45712 (= res!305922 (validMask!0 mask!3524))))

(assert (=> start!45712 e!295456))

(assert (=> start!45712 true))

(declare-fun array_inv!11365 (array!32428) Bool)

(assert (=> start!45712 (array_inv!11365 a!3235)))

(declare-fun b!504649 () Bool)

(assert (=> b!504649 (= e!295459 true)))

(declare-fun lt!229888 () SeekEntryResult!4065)

(assert (=> b!504649 (= lt!229888 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229893 lt!229892 lt!229891 mask!3524))))

(declare-fun b!504650 () Bool)

(declare-fun Unit!15353 () Unit!15350)

(assert (=> b!504650 (= e!295457 Unit!15353)))

(assert (= (and start!45712 res!305922) b!504646))

(assert (= (and b!504646 res!305933) b!504644))

(assert (= (and b!504644 res!305931) b!504639))

(assert (= (and b!504639 res!305920) b!504635))

(assert (= (and b!504635 res!305924) b!504641))

(assert (= (and b!504641 res!305929) b!504642))

(assert (= (and b!504642 res!305921) b!504647))

(assert (= (and b!504647 res!305919) b!504648))

(assert (= (and b!504648 res!305925) b!504638))

(assert (= (and b!504648 (not res!305927)) b!504640))

(assert (= (and b!504640 (not res!305930)) b!504645))

(assert (= (and b!504645 c!59636) b!504634))

(assert (= (and b!504645 (not c!59636)) b!504650))

(assert (= (and b!504634 res!305923) b!504636))

(assert (= (and b!504645 (not res!305932)) b!504637))

(assert (= (and b!504637 res!305926) b!504643))

(assert (= (and b!504637 (not res!305928)) b!504649))

(declare-fun m!485371 () Bool)

(assert (=> b!504648 m!485371))

(declare-fun m!485373 () Bool)

(assert (=> b!504648 m!485373))

(declare-fun m!485375 () Bool)

(assert (=> b!504648 m!485375))

(declare-fun m!485377 () Bool)

(assert (=> b!504648 m!485377))

(declare-fun m!485379 () Bool)

(assert (=> b!504648 m!485379))

(declare-fun m!485381 () Bool)

(assert (=> b!504648 m!485381))

(declare-fun m!485383 () Bool)

(assert (=> b!504648 m!485383))

(assert (=> b!504648 m!485381))

(declare-fun m!485385 () Bool)

(assert (=> b!504648 m!485385))

(assert (=> b!504648 m!485381))

(declare-fun m!485387 () Bool)

(assert (=> b!504648 m!485387))

(declare-fun m!485389 () Bool)

(assert (=> b!504635 m!485389))

(assert (=> b!504638 m!485381))

(assert (=> b!504638 m!485381))

(declare-fun m!485391 () Bool)

(assert (=> b!504638 m!485391))

(assert (=> b!504643 m!485381))

(assert (=> b!504643 m!485381))

(declare-fun m!485393 () Bool)

(assert (=> b!504643 m!485393))

(declare-fun m!485395 () Bool)

(assert (=> b!504647 m!485395))

(declare-fun m!485397 () Bool)

(assert (=> b!504639 m!485397))

(declare-fun m!485399 () Bool)

(assert (=> b!504642 m!485399))

(declare-fun m!485401 () Bool)

(assert (=> b!504645 m!485401))

(declare-fun m!485403 () Bool)

(assert (=> b!504645 m!485403))

(assert (=> b!504645 m!485381))

(declare-fun m!485405 () Bool)

(assert (=> start!45712 m!485405))

(declare-fun m!485407 () Bool)

(assert (=> start!45712 m!485407))

(declare-fun m!485409 () Bool)

(assert (=> b!504634 m!485409))

(declare-fun m!485411 () Bool)

(assert (=> b!504634 m!485411))

(assert (=> b!504649 m!485411))

(assert (=> b!504644 m!485381))

(assert (=> b!504644 m!485381))

(declare-fun m!485413 () Bool)

(assert (=> b!504644 m!485413))

(declare-fun m!485415 () Bool)

(assert (=> b!504641 m!485415))

(push 1)

