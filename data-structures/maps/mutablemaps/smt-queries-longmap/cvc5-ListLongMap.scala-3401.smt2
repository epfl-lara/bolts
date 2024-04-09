; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47008 () Bool)

(assert start!47008)

(declare-fun b!518040 () Bool)

(declare-fun res!317216 () Bool)

(declare-fun e!302277 () Bool)

(assert (=> b!518040 (=> res!317216 e!302277)))

(declare-datatypes ((SeekEntryResult!4389 0))(
  ( (MissingZero!4389 (index!19744 (_ BitVec 32))) (Found!4389 (index!19745 (_ BitVec 32))) (Intermediate!4389 (undefined!5201 Bool) (index!19746 (_ BitVec 32)) (x!48741 (_ BitVec 32))) (Undefined!4389) (MissingVacant!4389 (index!19747 (_ BitVec 32))) )
))
(declare-fun lt!237193 () SeekEntryResult!4389)

(assert (=> b!518040 (= res!317216 (or (undefined!5201 lt!237193) (not (is-Intermediate!4389 lt!237193))))))

(declare-fun b!518041 () Bool)

(declare-fun e!302274 () Bool)

(assert (=> b!518041 (= e!302274 (not e!302277))))

(declare-fun res!317214 () Bool)

(assert (=> b!518041 (=> res!317214 e!302277)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!237194 () (_ BitVec 64))

(declare-fun lt!237197 () (_ BitVec 32))

(declare-datatypes ((array!33109 0))(
  ( (array!33110 (arr!15915 (Array (_ BitVec 32) (_ BitVec 64))) (size!16279 (_ BitVec 32))) )
))
(declare-fun lt!237192 () array!33109)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33109 (_ BitVec 32)) SeekEntryResult!4389)

(assert (=> b!518041 (= res!317214 (= lt!237193 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237197 lt!237194 lt!237192 mask!3524)))))

(declare-fun lt!237191 () (_ BitVec 32))

(declare-fun a!3235 () array!33109)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!518041 (= lt!237193 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237191 (select (arr!15915 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518041 (= lt!237197 (toIndex!0 lt!237194 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!518041 (= lt!237194 (select (store (arr!15915 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!518041 (= lt!237191 (toIndex!0 (select (arr!15915 a!3235) j!176) mask!3524))))

(assert (=> b!518041 (= lt!237192 (array!33110 (store (arr!15915 a!3235) i!1204 k!2280) (size!16279 a!3235)))))

(declare-fun e!302276 () Bool)

(assert (=> b!518041 e!302276))

(declare-fun res!317213 () Bool)

(assert (=> b!518041 (=> (not res!317213) (not e!302276))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33109 (_ BitVec 32)) Bool)

(assert (=> b!518041 (= res!317213 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16028 0))(
  ( (Unit!16029) )
))
(declare-fun lt!237195 () Unit!16028)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33109 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16028)

(assert (=> b!518041 (= lt!237195 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!518042 () Bool)

(declare-fun e!302273 () Bool)

(assert (=> b!518042 (= e!302273 false)))

(assert (=> b!518042 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237191 lt!237194 lt!237192 mask!3524) (Intermediate!4389 false (index!19746 lt!237193) (x!48741 lt!237193)))))

(declare-fun lt!237190 () Unit!16028)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33109 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16028)

(assert (=> b!518042 (= lt!237190 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237191 #b00000000000000000000000000000000 (index!19746 lt!237193) (x!48741 lt!237193) mask!3524))))

(declare-fun b!518043 () Bool)

(declare-fun res!317212 () Bool)

(declare-fun e!302278 () Bool)

(assert (=> b!518043 (=> (not res!317212) (not e!302278))))

(declare-fun arrayContainsKey!0 (array!33109 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!518043 (= res!317212 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!518044 () Bool)

(assert (=> b!518044 (= e!302277 e!302273)))

(declare-fun res!317207 () Bool)

(assert (=> b!518044 (=> res!317207 e!302273)))

(assert (=> b!518044 (= res!317207 (not (= (select (arr!15915 a!3235) (index!19746 lt!237193)) (select (arr!15915 a!3235) j!176))))))

(assert (=> b!518044 (and (bvslt (x!48741 lt!237193) #b01111111111111111111111111111110) (or (= (select (arr!15915 a!3235) (index!19746 lt!237193)) (select (arr!15915 a!3235) j!176)) (= (select (arr!15915 a!3235) (index!19746 lt!237193)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15915 a!3235) (index!19746 lt!237193)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!317209 () Bool)

(assert (=> start!47008 (=> (not res!317209) (not e!302278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47008 (= res!317209 (validMask!0 mask!3524))))

(assert (=> start!47008 e!302278))

(assert (=> start!47008 true))

(declare-fun array_inv!11689 (array!33109) Bool)

(assert (=> start!47008 (array_inv!11689 a!3235)))

(declare-fun b!518045 () Bool)

(declare-fun res!317210 () Bool)

(assert (=> b!518045 (=> (not res!317210) (not e!302278))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!518045 (= res!317210 (validKeyInArray!0 (select (arr!15915 a!3235) j!176)))))

(declare-fun b!518046 () Bool)

(declare-fun res!317215 () Bool)

(assert (=> b!518046 (=> (not res!317215) (not e!302274))))

(assert (=> b!518046 (= res!317215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!518047 () Bool)

(assert (=> b!518047 (= e!302278 e!302274)))

(declare-fun res!317205 () Bool)

(assert (=> b!518047 (=> (not res!317205) (not e!302274))))

(declare-fun lt!237196 () SeekEntryResult!4389)

(assert (=> b!518047 (= res!317205 (or (= lt!237196 (MissingZero!4389 i!1204)) (= lt!237196 (MissingVacant!4389 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33109 (_ BitVec 32)) SeekEntryResult!4389)

(assert (=> b!518047 (= lt!237196 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!518048 () Bool)

(declare-fun res!317206 () Bool)

(assert (=> b!518048 (=> (not res!317206) (not e!302274))))

(declare-datatypes ((List!10126 0))(
  ( (Nil!10123) (Cons!10122 (h!11029 (_ BitVec 64)) (t!16362 List!10126)) )
))
(declare-fun arrayNoDuplicates!0 (array!33109 (_ BitVec 32) List!10126) Bool)

(assert (=> b!518048 (= res!317206 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10123))))

(declare-fun b!518049 () Bool)

(declare-fun res!317211 () Bool)

(assert (=> b!518049 (=> (not res!317211) (not e!302278))))

(assert (=> b!518049 (= res!317211 (and (= (size!16279 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16279 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16279 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!518050 () Bool)

(assert (=> b!518050 (= e!302276 (= (seekEntryOrOpen!0 (select (arr!15915 a!3235) j!176) a!3235 mask!3524) (Found!4389 j!176)))))

(declare-fun b!518051 () Bool)

(declare-fun res!317208 () Bool)

(assert (=> b!518051 (=> (not res!317208) (not e!302278))))

(assert (=> b!518051 (= res!317208 (validKeyInArray!0 k!2280))))

(assert (= (and start!47008 res!317209) b!518049))

(assert (= (and b!518049 res!317211) b!518045))

(assert (= (and b!518045 res!317210) b!518051))

(assert (= (and b!518051 res!317208) b!518043))

(assert (= (and b!518043 res!317212) b!518047))

(assert (= (and b!518047 res!317205) b!518046))

(assert (= (and b!518046 res!317215) b!518048))

(assert (= (and b!518048 res!317206) b!518041))

(assert (= (and b!518041 res!317213) b!518050))

(assert (= (and b!518041 (not res!317214)) b!518040))

(assert (= (and b!518040 (not res!317216)) b!518044))

(assert (= (and b!518044 (not res!317207)) b!518042))

(declare-fun m!499441 () Bool)

(assert (=> b!518046 m!499441))

(declare-fun m!499443 () Bool)

(assert (=> b!518045 m!499443))

(assert (=> b!518045 m!499443))

(declare-fun m!499445 () Bool)

(assert (=> b!518045 m!499445))

(declare-fun m!499447 () Bool)

(assert (=> b!518048 m!499447))

(declare-fun m!499449 () Bool)

(assert (=> b!518051 m!499449))

(declare-fun m!499451 () Bool)

(assert (=> b!518047 m!499451))

(assert (=> b!518050 m!499443))

(assert (=> b!518050 m!499443))

(declare-fun m!499453 () Bool)

(assert (=> b!518050 m!499453))

(declare-fun m!499455 () Bool)

(assert (=> b!518041 m!499455))

(declare-fun m!499457 () Bool)

(assert (=> b!518041 m!499457))

(assert (=> b!518041 m!499443))

(declare-fun m!499459 () Bool)

(assert (=> b!518041 m!499459))

(declare-fun m!499461 () Bool)

(assert (=> b!518041 m!499461))

(declare-fun m!499463 () Bool)

(assert (=> b!518041 m!499463))

(assert (=> b!518041 m!499443))

(declare-fun m!499465 () Bool)

(assert (=> b!518041 m!499465))

(assert (=> b!518041 m!499443))

(declare-fun m!499467 () Bool)

(assert (=> b!518041 m!499467))

(declare-fun m!499469 () Bool)

(assert (=> b!518041 m!499469))

(declare-fun m!499471 () Bool)

(assert (=> b!518044 m!499471))

(assert (=> b!518044 m!499443))

(declare-fun m!499473 () Bool)

(assert (=> start!47008 m!499473))

(declare-fun m!499475 () Bool)

(assert (=> start!47008 m!499475))

(declare-fun m!499477 () Bool)

(assert (=> b!518042 m!499477))

(declare-fun m!499479 () Bool)

(assert (=> b!518042 m!499479))

(declare-fun m!499481 () Bool)

(assert (=> b!518043 m!499481))

(push 1)

