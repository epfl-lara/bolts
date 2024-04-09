; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47012 () Bool)

(assert start!47012)

(declare-fun b!518112 () Bool)

(declare-fun res!317283 () Bool)

(declare-fun e!302314 () Bool)

(assert (=> b!518112 (=> (not res!317283) (not e!302314))))

(declare-datatypes ((array!33113 0))(
  ( (array!33114 (arr!15917 (Array (_ BitVec 32) (_ BitVec 64))) (size!16281 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33113)

(declare-datatypes ((List!10128 0))(
  ( (Nil!10125) (Cons!10124 (h!11031 (_ BitVec 64)) (t!16364 List!10128)) )
))
(declare-fun arrayNoDuplicates!0 (array!33113 (_ BitVec 32) List!10128) Bool)

(assert (=> b!518112 (= res!317283 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10125))))

(declare-fun b!518113 () Bool)

(declare-fun res!317280 () Bool)

(declare-fun e!302313 () Bool)

(assert (=> b!518113 (=> (not res!317280) (not e!302313))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33113 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!518113 (= res!317280 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!518114 () Bool)

(declare-fun res!317282 () Bool)

(assert (=> b!518114 (=> (not res!317282) (not e!302313))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!518114 (= res!317282 (and (= (size!16281 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16281 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16281 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!518115 () Bool)

(assert (=> b!518115 (= e!302313 e!302314)))

(declare-fun res!317288 () Bool)

(assert (=> b!518115 (=> (not res!317288) (not e!302314))))

(declare-datatypes ((SeekEntryResult!4391 0))(
  ( (MissingZero!4391 (index!19752 (_ BitVec 32))) (Found!4391 (index!19753 (_ BitVec 32))) (Intermediate!4391 (undefined!5203 Bool) (index!19754 (_ BitVec 32)) (x!48743 (_ BitVec 32))) (Undefined!4391) (MissingVacant!4391 (index!19755 (_ BitVec 32))) )
))
(declare-fun lt!237244 () SeekEntryResult!4391)

(assert (=> b!518115 (= res!317288 (or (= lt!237244 (MissingZero!4391 i!1204)) (= lt!237244 (MissingVacant!4391 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33113 (_ BitVec 32)) SeekEntryResult!4391)

(assert (=> b!518115 (= lt!237244 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!317287 () Bool)

(assert (=> start!47012 (=> (not res!317287) (not e!302313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47012 (= res!317287 (validMask!0 mask!3524))))

(assert (=> start!47012 e!302313))

(assert (=> start!47012 true))

(declare-fun array_inv!11691 (array!33113) Bool)

(assert (=> start!47012 (array_inv!11691 a!3235)))

(declare-fun b!518116 () Bool)

(declare-fun res!317277 () Bool)

(assert (=> b!518116 (=> (not res!317277) (not e!302313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!518116 (= res!317277 (validKeyInArray!0 k!2280))))

(declare-fun b!518117 () Bool)

(declare-fun e!302312 () Bool)

(assert (=> b!518117 (= e!302312 false)))

(declare-fun lt!237240 () (_ BitVec 64))

(declare-fun lt!237245 () (_ BitVec 32))

(declare-fun lt!237242 () SeekEntryResult!4391)

(declare-fun lt!237238 () array!33113)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33113 (_ BitVec 32)) SeekEntryResult!4391)

(assert (=> b!518117 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237245 lt!237240 lt!237238 mask!3524) (Intermediate!4391 false (index!19754 lt!237242) (x!48743 lt!237242)))))

(declare-datatypes ((Unit!16032 0))(
  ( (Unit!16033) )
))
(declare-fun lt!237243 () Unit!16032)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33113 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16032)

(assert (=> b!518117 (= lt!237243 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237245 #b00000000000000000000000000000000 (index!19754 lt!237242) (x!48743 lt!237242) mask!3524))))

(declare-fun b!518118 () Bool)

(declare-fun res!317279 () Bool)

(declare-fun e!302311 () Bool)

(assert (=> b!518118 (=> res!317279 e!302311)))

(assert (=> b!518118 (= res!317279 (or (undefined!5203 lt!237242) (not (is-Intermediate!4391 lt!237242))))))

(declare-fun b!518119 () Bool)

(assert (=> b!518119 (= e!302311 e!302312)))

(declare-fun res!317278 () Bool)

(assert (=> b!518119 (=> res!317278 e!302312)))

(assert (=> b!518119 (= res!317278 (not (= (select (arr!15917 a!3235) (index!19754 lt!237242)) (select (arr!15917 a!3235) j!176))))))

(assert (=> b!518119 (and (bvslt (x!48743 lt!237242) #b01111111111111111111111111111110) (or (= (select (arr!15917 a!3235) (index!19754 lt!237242)) (select (arr!15917 a!3235) j!176)) (= (select (arr!15917 a!3235) (index!19754 lt!237242)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15917 a!3235) (index!19754 lt!237242)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518120 () Bool)

(assert (=> b!518120 (= e!302314 (not e!302311))))

(declare-fun res!317285 () Bool)

(assert (=> b!518120 (=> res!317285 e!302311)))

(declare-fun lt!237239 () (_ BitVec 32))

(assert (=> b!518120 (= res!317285 (= lt!237242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237239 lt!237240 lt!237238 mask!3524)))))

(assert (=> b!518120 (= lt!237242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237245 (select (arr!15917 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518120 (= lt!237239 (toIndex!0 lt!237240 mask!3524))))

(assert (=> b!518120 (= lt!237240 (select (store (arr!15917 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!518120 (= lt!237245 (toIndex!0 (select (arr!15917 a!3235) j!176) mask!3524))))

(assert (=> b!518120 (= lt!237238 (array!33114 (store (arr!15917 a!3235) i!1204 k!2280) (size!16281 a!3235)))))

(declare-fun e!302310 () Bool)

(assert (=> b!518120 e!302310))

(declare-fun res!317286 () Bool)

(assert (=> b!518120 (=> (not res!317286) (not e!302310))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33113 (_ BitVec 32)) Bool)

(assert (=> b!518120 (= res!317286 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!237241 () Unit!16032)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33113 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16032)

(assert (=> b!518120 (= lt!237241 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!518121 () Bool)

(assert (=> b!518121 (= e!302310 (= (seekEntryOrOpen!0 (select (arr!15917 a!3235) j!176) a!3235 mask!3524) (Found!4391 j!176)))))

(declare-fun b!518122 () Bool)

(declare-fun res!317281 () Bool)

(assert (=> b!518122 (=> (not res!317281) (not e!302314))))

(assert (=> b!518122 (= res!317281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!518123 () Bool)

(declare-fun res!317284 () Bool)

(assert (=> b!518123 (=> (not res!317284) (not e!302313))))

(assert (=> b!518123 (= res!317284 (validKeyInArray!0 (select (arr!15917 a!3235) j!176)))))

(assert (= (and start!47012 res!317287) b!518114))

(assert (= (and b!518114 res!317282) b!518123))

(assert (= (and b!518123 res!317284) b!518116))

(assert (= (and b!518116 res!317277) b!518113))

(assert (= (and b!518113 res!317280) b!518115))

(assert (= (and b!518115 res!317288) b!518122))

(assert (= (and b!518122 res!317281) b!518112))

(assert (= (and b!518112 res!317283) b!518120))

(assert (= (and b!518120 res!317286) b!518121))

(assert (= (and b!518120 (not res!317285)) b!518118))

(assert (= (and b!518118 (not res!317279)) b!518119))

(assert (= (and b!518119 (not res!317278)) b!518117))

(declare-fun m!499525 () Bool)

(assert (=> b!518112 m!499525))

(declare-fun m!499527 () Bool)

(assert (=> b!518123 m!499527))

(assert (=> b!518123 m!499527))

(declare-fun m!499529 () Bool)

(assert (=> b!518123 m!499529))

(declare-fun m!499531 () Bool)

(assert (=> b!518119 m!499531))

(assert (=> b!518119 m!499527))

(declare-fun m!499533 () Bool)

(assert (=> b!518117 m!499533))

(declare-fun m!499535 () Bool)

(assert (=> b!518117 m!499535))

(declare-fun m!499537 () Bool)

(assert (=> b!518120 m!499537))

(declare-fun m!499539 () Bool)

(assert (=> b!518120 m!499539))

(declare-fun m!499541 () Bool)

(assert (=> b!518120 m!499541))

(assert (=> b!518120 m!499527))

(declare-fun m!499543 () Bool)

(assert (=> b!518120 m!499543))

(assert (=> b!518120 m!499527))

(declare-fun m!499545 () Bool)

(assert (=> b!518120 m!499545))

(declare-fun m!499547 () Bool)

(assert (=> b!518120 m!499547))

(assert (=> b!518120 m!499527))

(declare-fun m!499549 () Bool)

(assert (=> b!518120 m!499549))

(declare-fun m!499551 () Bool)

(assert (=> b!518120 m!499551))

(declare-fun m!499553 () Bool)

(assert (=> b!518122 m!499553))

(declare-fun m!499555 () Bool)

(assert (=> b!518113 m!499555))

(declare-fun m!499557 () Bool)

(assert (=> b!518115 m!499557))

(declare-fun m!499559 () Bool)

(assert (=> start!47012 m!499559))

(declare-fun m!499561 () Bool)

(assert (=> start!47012 m!499561))

(assert (=> b!518121 m!499527))

(assert (=> b!518121 m!499527))

(declare-fun m!499563 () Bool)

(assert (=> b!518121 m!499563))

(declare-fun m!499565 () Bool)

(assert (=> b!518116 m!499565))

(push 1)

