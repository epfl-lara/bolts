; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47162 () Bool)

(assert start!47162)

(declare-fun b!519142 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!302918 () Bool)

(declare-datatypes ((array!33137 0))(
  ( (array!33138 (arr!15926 (Array (_ BitVec 32) (_ BitVec 64))) (size!16290 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33137)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4400 0))(
  ( (MissingZero!4400 (index!19794 (_ BitVec 32))) (Found!4400 (index!19795 (_ BitVec 32))) (Intermediate!4400 (undefined!5212 Bool) (index!19796 (_ BitVec 32)) (x!48794 (_ BitVec 32))) (Undefined!4400) (MissingVacant!4400 (index!19797 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33137 (_ BitVec 32)) SeekEntryResult!4400)

(assert (=> b!519142 (= e!302918 (= (seekEntryOrOpen!0 (select (arr!15926 a!3235) j!176) a!3235 mask!3524) (Found!4400 j!176)))))

(declare-fun b!519143 () Bool)

(declare-fun e!302917 () Bool)

(declare-fun lt!237770 () SeekEntryResult!4400)

(assert (=> b!519143 (= e!302917 (or (= (select (arr!15926 a!3235) (index!19796 lt!237770)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15926 a!3235) (index!19796 lt!237770)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!16066 0))(
  ( (Unit!16067) )
))
(declare-fun lt!237776 () Unit!16066)

(declare-fun e!302923 () Unit!16066)

(assert (=> b!519143 (= lt!237776 e!302923)))

(declare-fun c!60941 () Bool)

(assert (=> b!519143 (= c!60941 (= (select (arr!15926 a!3235) (index!19796 lt!237770)) (select (arr!15926 a!3235) j!176)))))

(assert (=> b!519143 (and (bvslt (x!48794 lt!237770) #b01111111111111111111111111111110) (or (= (select (arr!15926 a!3235) (index!19796 lt!237770)) (select (arr!15926 a!3235) j!176)) (= (select (arr!15926 a!3235) (index!19796 lt!237770)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15926 a!3235) (index!19796 lt!237770)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519144 () Bool)

(declare-fun res!317855 () Bool)

(declare-fun e!302922 () Bool)

(assert (=> b!519144 (=> (not res!317855) (not e!302922))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!519144 (= res!317855 (and (= (size!16290 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16290 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16290 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!519145 () Bool)

(declare-fun res!317858 () Bool)

(declare-fun e!302920 () Bool)

(assert (=> b!519145 (=> (not res!317858) (not e!302920))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33137 (_ BitVec 32)) Bool)

(assert (=> b!519145 (= res!317858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!519146 () Bool)

(declare-fun Unit!16068 () Unit!16066)

(assert (=> b!519146 (= e!302923 Unit!16068)))

(declare-fun res!317864 () Bool)

(assert (=> start!47162 (=> (not res!317864) (not e!302922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47162 (= res!317864 (validMask!0 mask!3524))))

(assert (=> start!47162 e!302922))

(assert (=> start!47162 true))

(declare-fun array_inv!11700 (array!33137) Bool)

(assert (=> start!47162 (array_inv!11700 a!3235)))

(declare-fun b!519147 () Bool)

(declare-fun res!317859 () Bool)

(assert (=> b!519147 (=> res!317859 e!302917)))

(assert (=> b!519147 (= res!317859 (or (undefined!5212 lt!237770) (not (is-Intermediate!4400 lt!237770))))))

(declare-fun b!519148 () Bool)

(assert (=> b!519148 (= e!302920 (not e!302917))))

(declare-fun res!317862 () Bool)

(assert (=> b!519148 (=> res!317862 e!302917)))

(declare-fun lt!237768 () (_ BitVec 64))

(declare-fun lt!237769 () array!33137)

(declare-fun lt!237774 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33137 (_ BitVec 32)) SeekEntryResult!4400)

(assert (=> b!519148 (= res!317862 (= lt!237770 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237774 lt!237768 lt!237769 mask!3524)))))

(declare-fun lt!237772 () (_ BitVec 32))

(assert (=> b!519148 (= lt!237770 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237772 (select (arr!15926 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!519148 (= lt!237774 (toIndex!0 lt!237768 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!519148 (= lt!237768 (select (store (arr!15926 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!519148 (= lt!237772 (toIndex!0 (select (arr!15926 a!3235) j!176) mask!3524))))

(assert (=> b!519148 (= lt!237769 (array!33138 (store (arr!15926 a!3235) i!1204 k!2280) (size!16290 a!3235)))))

(assert (=> b!519148 e!302918))

(declare-fun res!317860 () Bool)

(assert (=> b!519148 (=> (not res!317860) (not e!302918))))

(assert (=> b!519148 (= res!317860 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!237773 () Unit!16066)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33137 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16066)

(assert (=> b!519148 (= lt!237773 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!519149 () Bool)

(assert (=> b!519149 (= e!302922 e!302920)))

(declare-fun res!317857 () Bool)

(assert (=> b!519149 (=> (not res!317857) (not e!302920))))

(declare-fun lt!237771 () SeekEntryResult!4400)

(assert (=> b!519149 (= res!317857 (or (= lt!237771 (MissingZero!4400 i!1204)) (= lt!237771 (MissingVacant!4400 i!1204))))))

(assert (=> b!519149 (= lt!237771 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!519150 () Bool)

(declare-fun Unit!16069 () Unit!16066)

(assert (=> b!519150 (= e!302923 Unit!16069)))

(declare-fun lt!237775 () Unit!16066)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33137 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16066)

(assert (=> b!519150 (= lt!237775 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237772 #b00000000000000000000000000000000 (index!19796 lt!237770) (x!48794 lt!237770) mask!3524))))

(declare-fun res!317861 () Bool)

(assert (=> b!519150 (= res!317861 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237772 lt!237768 lt!237769 mask!3524) (Intermediate!4400 false (index!19796 lt!237770) (x!48794 lt!237770))))))

(declare-fun e!302921 () Bool)

(assert (=> b!519150 (=> (not res!317861) (not e!302921))))

(assert (=> b!519150 e!302921))

(declare-fun b!519151 () Bool)

(declare-fun res!317853 () Bool)

(assert (=> b!519151 (=> (not res!317853) (not e!302922))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!519151 (= res!317853 (validKeyInArray!0 (select (arr!15926 a!3235) j!176)))))

(declare-fun b!519152 () Bool)

(declare-fun res!317856 () Bool)

(assert (=> b!519152 (=> (not res!317856) (not e!302922))))

(declare-fun arrayContainsKey!0 (array!33137 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!519152 (= res!317856 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!519153 () Bool)

(declare-fun res!317854 () Bool)

(assert (=> b!519153 (=> (not res!317854) (not e!302922))))

(assert (=> b!519153 (= res!317854 (validKeyInArray!0 k!2280))))

(declare-fun b!519154 () Bool)

(declare-fun res!317863 () Bool)

(assert (=> b!519154 (=> (not res!317863) (not e!302920))))

(declare-datatypes ((List!10137 0))(
  ( (Nil!10134) (Cons!10133 (h!11046 (_ BitVec 64)) (t!16373 List!10137)) )
))
(declare-fun arrayNoDuplicates!0 (array!33137 (_ BitVec 32) List!10137) Bool)

(assert (=> b!519154 (= res!317863 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10134))))

(declare-fun b!519155 () Bool)

(assert (=> b!519155 (= e!302921 false)))

(assert (= (and start!47162 res!317864) b!519144))

(assert (= (and b!519144 res!317855) b!519151))

(assert (= (and b!519151 res!317853) b!519153))

(assert (= (and b!519153 res!317854) b!519152))

(assert (= (and b!519152 res!317856) b!519149))

(assert (= (and b!519149 res!317857) b!519145))

(assert (= (and b!519145 res!317858) b!519154))

(assert (= (and b!519154 res!317863) b!519148))

(assert (= (and b!519148 res!317860) b!519142))

(assert (= (and b!519148 (not res!317862)) b!519147))

(assert (= (and b!519147 (not res!317859)) b!519143))

(assert (= (and b!519143 c!60941) b!519150))

(assert (= (and b!519143 (not c!60941)) b!519146))

(assert (= (and b!519150 res!317861) b!519155))

(declare-fun m!500371 () Bool)

(assert (=> b!519150 m!500371))

(declare-fun m!500373 () Bool)

(assert (=> b!519150 m!500373))

(declare-fun m!500375 () Bool)

(assert (=> b!519152 m!500375))

(declare-fun m!500377 () Bool)

(assert (=> b!519145 m!500377))

(declare-fun m!500379 () Bool)

(assert (=> b!519149 m!500379))

(declare-fun m!500381 () Bool)

(assert (=> b!519142 m!500381))

(assert (=> b!519142 m!500381))

(declare-fun m!500383 () Bool)

(assert (=> b!519142 m!500383))

(assert (=> b!519151 m!500381))

(assert (=> b!519151 m!500381))

(declare-fun m!500385 () Bool)

(assert (=> b!519151 m!500385))

(declare-fun m!500387 () Bool)

(assert (=> b!519143 m!500387))

(assert (=> b!519143 m!500381))

(declare-fun m!500389 () Bool)

(assert (=> b!519154 m!500389))

(declare-fun m!500391 () Bool)

(assert (=> b!519153 m!500391))

(declare-fun m!500393 () Bool)

(assert (=> b!519148 m!500393))

(assert (=> b!519148 m!500381))

(declare-fun m!500395 () Bool)

(assert (=> b!519148 m!500395))

(declare-fun m!500397 () Bool)

(assert (=> b!519148 m!500397))

(declare-fun m!500399 () Bool)

(assert (=> b!519148 m!500399))

(declare-fun m!500401 () Bool)

(assert (=> b!519148 m!500401))

(assert (=> b!519148 m!500381))

(declare-fun m!500403 () Bool)

(assert (=> b!519148 m!500403))

(assert (=> b!519148 m!500381))

(declare-fun m!500405 () Bool)

(assert (=> b!519148 m!500405))

(declare-fun m!500407 () Bool)

(assert (=> b!519148 m!500407))

(declare-fun m!500409 () Bool)

(assert (=> start!47162 m!500409))

(declare-fun m!500411 () Bool)

(assert (=> start!47162 m!500411))

(push 1)

