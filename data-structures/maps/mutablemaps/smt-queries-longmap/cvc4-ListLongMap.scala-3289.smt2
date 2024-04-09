; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45692 () Bool)

(assert start!45692)

(declare-fun b!504124 () Bool)

(declare-fun e!295185 () Bool)

(declare-fun e!295184 () Bool)

(assert (=> b!504124 (= e!295185 (not e!295184))))

(declare-fun res!305481 () Bool)

(assert (=> b!504124 (=> res!305481 e!295184)))

(declare-datatypes ((array!32408 0))(
  ( (array!32409 (arr!15581 (Array (_ BitVec 32) (_ BitVec 64))) (size!15945 (_ BitVec 32))) )
))
(declare-fun lt!229560 () array!32408)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!229556 () (_ BitVec 32))

(declare-fun lt!229565 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4055 0))(
  ( (MissingZero!4055 (index!18408 (_ BitVec 32))) (Found!4055 (index!18409 (_ BitVec 32))) (Intermediate!4055 (undefined!4867 Bool) (index!18410 (_ BitVec 32)) (x!47451 (_ BitVec 32))) (Undefined!4055) (MissingVacant!4055 (index!18411 (_ BitVec 32))) )
))
(declare-fun lt!229558 () SeekEntryResult!4055)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32408 (_ BitVec 32)) SeekEntryResult!4055)

(assert (=> b!504124 (= res!305481 (= lt!229558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229556 lt!229565 lt!229560 mask!3524)))))

(declare-fun a!3235 () array!32408)

(declare-fun lt!229562 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!504124 (= lt!229558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229562 (select (arr!15581 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504124 (= lt!229556 (toIndex!0 lt!229565 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!504124 (= lt!229565 (select (store (arr!15581 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!504124 (= lt!229562 (toIndex!0 (select (arr!15581 a!3235) j!176) mask!3524))))

(assert (=> b!504124 (= lt!229560 (array!32409 (store (arr!15581 a!3235) i!1204 k!2280) (size!15945 a!3235)))))

(declare-fun e!295181 () Bool)

(assert (=> b!504124 e!295181))

(declare-fun res!305482 () Bool)

(assert (=> b!504124 (=> (not res!305482) (not e!295181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32408 (_ BitVec 32)) Bool)

(assert (=> b!504124 (= res!305482 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15310 0))(
  ( (Unit!15311) )
))
(declare-fun lt!229564 () Unit!15310)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32408 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15310)

(assert (=> b!504124 (= lt!229564 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504125 () Bool)

(declare-fun e!295187 () Bool)

(assert (=> b!504125 (= e!295187 false)))

(declare-fun b!504126 () Bool)

(declare-fun res!305473 () Bool)

(declare-fun e!295186 () Bool)

(assert (=> b!504126 (=> (not res!305473) (not e!295186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504126 (= res!305473 (validKeyInArray!0 (select (arr!15581 a!3235) j!176)))))

(declare-fun b!504127 () Bool)

(declare-fun res!305476 () Bool)

(assert (=> b!504127 (=> (not res!305476) (not e!295186))))

(declare-fun arrayContainsKey!0 (array!32408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504127 (= res!305476 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504128 () Bool)

(declare-fun e!295189 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32408 (_ BitVec 32)) SeekEntryResult!4055)

(assert (=> b!504128 (= e!295189 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229562 (index!18410 lt!229558) (select (arr!15581 a!3235) j!176) a!3235 mask!3524) (Found!4055 j!176))))))

(declare-fun b!504129 () Bool)

(declare-fun e!295188 () Unit!15310)

(declare-fun Unit!15312 () Unit!15310)

(assert (=> b!504129 (= e!295188 Unit!15312)))

(declare-fun b!504130 () Bool)

(declare-fun res!305471 () Bool)

(assert (=> b!504130 (=> res!305471 e!295184)))

(assert (=> b!504130 (= res!305471 (or (undefined!4867 lt!229558) (not (is-Intermediate!4055 lt!229558))))))

(declare-fun b!504131 () Bool)

(declare-fun e!295183 () Bool)

(assert (=> b!504131 (= e!295184 e!295183)))

(declare-fun res!305480 () Bool)

(assert (=> b!504131 (=> res!305480 e!295183)))

(assert (=> b!504131 (= res!305480 (or (bvsgt (x!47451 lt!229558) #b01111111111111111111111111111110) (bvslt lt!229562 #b00000000000000000000000000000000) (bvsge lt!229562 (size!15945 a!3235)) (bvslt (index!18410 lt!229558) #b00000000000000000000000000000000) (bvsge (index!18410 lt!229558) (size!15945 a!3235)) (not (= lt!229558 (Intermediate!4055 false (index!18410 lt!229558) (x!47451 lt!229558))))))))

(assert (=> b!504131 (= (index!18410 lt!229558) i!1204)))

(declare-fun lt!229563 () Unit!15310)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32408 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15310)

(assert (=> b!504131 (= lt!229563 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229562 #b00000000000000000000000000000000 (index!18410 lt!229558) (x!47451 lt!229558) mask!3524))))

(assert (=> b!504131 (and (or (= (select (arr!15581 a!3235) (index!18410 lt!229558)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15581 a!3235) (index!18410 lt!229558)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15581 a!3235) (index!18410 lt!229558)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15581 a!3235) (index!18410 lt!229558)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229555 () Unit!15310)

(assert (=> b!504131 (= lt!229555 e!295188)))

(declare-fun c!59606 () Bool)

(assert (=> b!504131 (= c!59606 (= (select (arr!15581 a!3235) (index!18410 lt!229558)) (select (arr!15581 a!3235) j!176)))))

(assert (=> b!504131 (and (bvslt (x!47451 lt!229558) #b01111111111111111111111111111110) (or (= (select (arr!15581 a!3235) (index!18410 lt!229558)) (select (arr!15581 a!3235) j!176)) (= (select (arr!15581 a!3235) (index!18410 lt!229558)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15581 a!3235) (index!18410 lt!229558)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504132 () Bool)

(declare-fun Unit!15313 () Unit!15310)

(assert (=> b!504132 (= e!295188 Unit!15313)))

(declare-fun lt!229559 () Unit!15310)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32408 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15310)

(assert (=> b!504132 (= lt!229559 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229562 #b00000000000000000000000000000000 (index!18410 lt!229558) (x!47451 lt!229558) mask!3524))))

(declare-fun res!305477 () Bool)

(assert (=> b!504132 (= res!305477 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229562 lt!229565 lt!229560 mask!3524) (Intermediate!4055 false (index!18410 lt!229558) (x!47451 lt!229558))))))

(assert (=> b!504132 (=> (not res!305477) (not e!295187))))

(assert (=> b!504132 e!295187))

(declare-fun b!504133 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32408 (_ BitVec 32)) SeekEntryResult!4055)

(assert (=> b!504133 (= e!295181 (= (seekEntryOrOpen!0 (select (arr!15581 a!3235) j!176) a!3235 mask!3524) (Found!4055 j!176)))))

(declare-fun b!504134 () Bool)

(declare-fun res!305469 () Bool)

(assert (=> b!504134 (=> (not res!305469) (not e!295185))))

(declare-datatypes ((List!9792 0))(
  ( (Nil!9789) (Cons!9788 (h!10665 (_ BitVec 64)) (t!16028 List!9792)) )
))
(declare-fun arrayNoDuplicates!0 (array!32408 (_ BitVec 32) List!9792) Bool)

(assert (=> b!504134 (= res!305469 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9789))))

(declare-fun res!305474 () Bool)

(assert (=> start!45692 (=> (not res!305474) (not e!295186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45692 (= res!305474 (validMask!0 mask!3524))))

(assert (=> start!45692 e!295186))

(assert (=> start!45692 true))

(declare-fun array_inv!11355 (array!32408) Bool)

(assert (=> start!45692 (array_inv!11355 a!3235)))

(declare-fun b!504135 () Bool)

(declare-fun res!305479 () Bool)

(assert (=> b!504135 (=> (not res!305479) (not e!295185))))

(assert (=> b!504135 (= res!305479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!504136 () Bool)

(assert (=> b!504136 (= e!295183 true)))

(declare-fun lt!229561 () SeekEntryResult!4055)

(assert (=> b!504136 (= lt!229561 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229562 lt!229565 lt!229560 mask!3524))))

(declare-fun b!504137 () Bool)

(assert (=> b!504137 (= e!295186 e!295185)))

(declare-fun res!305470 () Bool)

(assert (=> b!504137 (=> (not res!305470) (not e!295185))))

(declare-fun lt!229557 () SeekEntryResult!4055)

(assert (=> b!504137 (= res!305470 (or (= lt!229557 (MissingZero!4055 i!1204)) (= lt!229557 (MissingVacant!4055 i!1204))))))

(assert (=> b!504137 (= lt!229557 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!504138 () Bool)

(declare-fun res!305472 () Bool)

(assert (=> b!504138 (=> (not res!305472) (not e!295186))))

(assert (=> b!504138 (= res!305472 (validKeyInArray!0 k!2280))))

(declare-fun b!504139 () Bool)

(declare-fun res!305478 () Bool)

(assert (=> b!504139 (=> res!305478 e!295183)))

(assert (=> b!504139 (= res!305478 e!295189)))

(declare-fun res!305475 () Bool)

(assert (=> b!504139 (=> (not res!305475) (not e!295189))))

(assert (=> b!504139 (= res!305475 (bvsgt #b00000000000000000000000000000000 (x!47451 lt!229558)))))

(declare-fun b!504140 () Bool)

(declare-fun res!305483 () Bool)

(assert (=> b!504140 (=> (not res!305483) (not e!295186))))

(assert (=> b!504140 (= res!305483 (and (= (size!15945 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15945 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15945 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45692 res!305474) b!504140))

(assert (= (and b!504140 res!305483) b!504126))

(assert (= (and b!504126 res!305473) b!504138))

(assert (= (and b!504138 res!305472) b!504127))

(assert (= (and b!504127 res!305476) b!504137))

(assert (= (and b!504137 res!305470) b!504135))

(assert (= (and b!504135 res!305479) b!504134))

(assert (= (and b!504134 res!305469) b!504124))

(assert (= (and b!504124 res!305482) b!504133))

(assert (= (and b!504124 (not res!305481)) b!504130))

(assert (= (and b!504130 (not res!305471)) b!504131))

(assert (= (and b!504131 c!59606) b!504132))

(assert (= (and b!504131 (not c!59606)) b!504129))

(assert (= (and b!504132 res!305477) b!504125))

(assert (= (and b!504131 (not res!305480)) b!504139))

(assert (= (and b!504139 res!305475) b!504128))

(assert (= (and b!504139 (not res!305478)) b!504136))

(declare-fun m!484911 () Bool)

(assert (=> start!45692 m!484911))

(declare-fun m!484913 () Bool)

(assert (=> start!45692 m!484913))

(declare-fun m!484915 () Bool)

(assert (=> b!504126 m!484915))

(assert (=> b!504126 m!484915))

(declare-fun m!484917 () Bool)

(assert (=> b!504126 m!484917))

(declare-fun m!484919 () Bool)

(assert (=> b!504137 m!484919))

(declare-fun m!484921 () Bool)

(assert (=> b!504124 m!484921))

(declare-fun m!484923 () Bool)

(assert (=> b!504124 m!484923))

(declare-fun m!484925 () Bool)

(assert (=> b!504124 m!484925))

(declare-fun m!484927 () Bool)

(assert (=> b!504124 m!484927))

(declare-fun m!484929 () Bool)

(assert (=> b!504124 m!484929))

(assert (=> b!504124 m!484915))

(declare-fun m!484931 () Bool)

(assert (=> b!504124 m!484931))

(assert (=> b!504124 m!484915))

(declare-fun m!484933 () Bool)

(assert (=> b!504124 m!484933))

(assert (=> b!504124 m!484915))

(declare-fun m!484935 () Bool)

(assert (=> b!504124 m!484935))

(declare-fun m!484937 () Bool)

(assert (=> b!504132 m!484937))

(declare-fun m!484939 () Bool)

(assert (=> b!504132 m!484939))

(declare-fun m!484941 () Bool)

(assert (=> b!504135 m!484941))

(assert (=> b!504136 m!484939))

(declare-fun m!484943 () Bool)

(assert (=> b!504131 m!484943))

(declare-fun m!484945 () Bool)

(assert (=> b!504131 m!484945))

(assert (=> b!504131 m!484915))

(declare-fun m!484947 () Bool)

(assert (=> b!504138 m!484947))

(declare-fun m!484949 () Bool)

(assert (=> b!504127 m!484949))

(declare-fun m!484951 () Bool)

(assert (=> b!504134 m!484951))

(assert (=> b!504133 m!484915))

(assert (=> b!504133 m!484915))

(declare-fun m!484953 () Bool)

(assert (=> b!504133 m!484953))

(assert (=> b!504128 m!484915))

(assert (=> b!504128 m!484915))

(declare-fun m!484955 () Bool)

(assert (=> b!504128 m!484955))

(push 1)

