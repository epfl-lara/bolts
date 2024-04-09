; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47914 () Bool)

(assert start!47914)

(declare-fun b!527404 () Bool)

(declare-fun res!323864 () Bool)

(declare-fun e!307384 () Bool)

(assert (=> b!527404 (=> (not res!323864) (not e!307384))))

(declare-datatypes ((array!33442 0))(
  ( (array!33443 (arr!16068 (Array (_ BitVec 32) (_ BitVec 64))) (size!16432 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33442)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527404 (= res!323864 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!323858 () Bool)

(assert (=> start!47914 (=> (not res!323858) (not e!307384))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47914 (= res!323858 (validMask!0 mask!3524))))

(assert (=> start!47914 e!307384))

(assert (=> start!47914 true))

(declare-fun array_inv!11842 (array!33442) Bool)

(assert (=> start!47914 (array_inv!11842 a!3235)))

(declare-fun b!527405 () Bool)

(declare-datatypes ((Unit!16634 0))(
  ( (Unit!16635) )
))
(declare-fun e!307383 () Unit!16634)

(declare-fun Unit!16636 () Unit!16634)

(assert (=> b!527405 (= e!307383 Unit!16636)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!242824 () Unit!16634)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4542 0))(
  ( (MissingZero!4542 (index!20386 (_ BitVec 32))) (Found!4542 (index!20387 (_ BitVec 32))) (Intermediate!4542 (undefined!5354 Bool) (index!20388 (_ BitVec 32)) (x!49386 (_ BitVec 32))) (Undefined!4542) (MissingVacant!4542 (index!20389 (_ BitVec 32))) )
))
(declare-fun lt!242827 () SeekEntryResult!4542)

(declare-fun lt!242821 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33442 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16634)

(assert (=> b!527405 (= lt!242824 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242821 #b00000000000000000000000000000000 (index!20388 lt!242827) (x!49386 lt!242827) mask!3524))))

(declare-fun lt!242819 () (_ BitVec 64))

(declare-fun res!323867 () Bool)

(declare-fun lt!242828 () array!33442)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33442 (_ BitVec 32)) SeekEntryResult!4542)

(assert (=> b!527405 (= res!323867 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242821 lt!242819 lt!242828 mask!3524) (Intermediate!4542 false (index!20388 lt!242827) (x!49386 lt!242827))))))

(declare-fun e!307379 () Bool)

(assert (=> b!527405 (=> (not res!323867) (not e!307379))))

(assert (=> b!527405 e!307379))

(declare-fun b!527406 () Bool)

(declare-fun e!307381 () Bool)

(assert (=> b!527406 (= e!307384 e!307381)))

(declare-fun res!323863 () Bool)

(assert (=> b!527406 (=> (not res!323863) (not e!307381))))

(declare-fun lt!242822 () SeekEntryResult!4542)

(assert (=> b!527406 (= res!323863 (or (= lt!242822 (MissingZero!4542 i!1204)) (= lt!242822 (MissingVacant!4542 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33442 (_ BitVec 32)) SeekEntryResult!4542)

(assert (=> b!527406 (= lt!242822 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!527407 () Bool)

(declare-fun res!323859 () Bool)

(assert (=> b!527407 (=> (not res!323859) (not e!307381))))

(declare-datatypes ((List!10279 0))(
  ( (Nil!10276) (Cons!10275 (h!11209 (_ BitVec 64)) (t!16515 List!10279)) )
))
(declare-fun arrayNoDuplicates!0 (array!33442 (_ BitVec 32) List!10279) Bool)

(assert (=> b!527407 (= res!323859 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10276))))

(declare-fun b!527408 () Bool)

(declare-fun res!323865 () Bool)

(assert (=> b!527408 (=> (not res!323865) (not e!307384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527408 (= res!323865 (validKeyInArray!0 (select (arr!16068 a!3235) j!176)))))

(declare-fun b!527409 () Bool)

(declare-fun res!323856 () Bool)

(assert (=> b!527409 (=> (not res!323856) (not e!307381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33442 (_ BitVec 32)) Bool)

(assert (=> b!527409 (= res!323856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!527410 () Bool)

(declare-fun Unit!16637 () Unit!16634)

(assert (=> b!527410 (= e!307383 Unit!16637)))

(declare-fun b!527411 () Bool)

(declare-fun res!323857 () Bool)

(declare-fun e!307378 () Bool)

(assert (=> b!527411 (=> res!323857 e!307378)))

(assert (=> b!527411 (= res!323857 (or (undefined!5354 lt!242827) (not (is-Intermediate!4542 lt!242827))))))

(declare-fun b!527412 () Bool)

(assert (=> b!527412 (= e!307381 (not e!307378))))

(declare-fun res!323861 () Bool)

(assert (=> b!527412 (=> res!323861 e!307378)))

(declare-fun lt!242820 () (_ BitVec 32))

(assert (=> b!527412 (= res!323861 (= lt!242827 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242820 lt!242819 lt!242828 mask!3524)))))

(assert (=> b!527412 (= lt!242827 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242821 (select (arr!16068 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527412 (= lt!242820 (toIndex!0 lt!242819 mask!3524))))

(assert (=> b!527412 (= lt!242819 (select (store (arr!16068 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!527412 (= lt!242821 (toIndex!0 (select (arr!16068 a!3235) j!176) mask!3524))))

(assert (=> b!527412 (= lt!242828 (array!33443 (store (arr!16068 a!3235) i!1204 k!2280) (size!16432 a!3235)))))

(declare-fun e!307380 () Bool)

(assert (=> b!527412 e!307380))

(declare-fun res!323866 () Bool)

(assert (=> b!527412 (=> (not res!323866) (not e!307380))))

(assert (=> b!527412 (= res!323866 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242823 () Unit!16634)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33442 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16634)

(assert (=> b!527412 (= lt!242823 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!527413 () Bool)

(declare-fun res!323860 () Bool)

(assert (=> b!527413 (=> (not res!323860) (not e!307384))))

(assert (=> b!527413 (= res!323860 (validKeyInArray!0 k!2280))))

(declare-fun b!527414 () Bool)

(assert (=> b!527414 (= e!307379 false)))

(declare-fun b!527415 () Bool)

(assert (=> b!527415 (= e!307378 true)))

(assert (=> b!527415 (= (index!20388 lt!242827) i!1204)))

(declare-fun lt!242826 () Unit!16634)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33442 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16634)

(assert (=> b!527415 (= lt!242826 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242821 #b00000000000000000000000000000000 (index!20388 lt!242827) (x!49386 lt!242827) mask!3524))))

(assert (=> b!527415 (and (or (= (select (arr!16068 a!3235) (index!20388 lt!242827)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16068 a!3235) (index!20388 lt!242827)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16068 a!3235) (index!20388 lt!242827)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16068 a!3235) (index!20388 lt!242827)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242825 () Unit!16634)

(assert (=> b!527415 (= lt!242825 e!307383)))

(declare-fun c!62081 () Bool)

(assert (=> b!527415 (= c!62081 (= (select (arr!16068 a!3235) (index!20388 lt!242827)) (select (arr!16068 a!3235) j!176)))))

(assert (=> b!527415 (and (bvslt (x!49386 lt!242827) #b01111111111111111111111111111110) (or (= (select (arr!16068 a!3235) (index!20388 lt!242827)) (select (arr!16068 a!3235) j!176)) (= (select (arr!16068 a!3235) (index!20388 lt!242827)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16068 a!3235) (index!20388 lt!242827)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527416 () Bool)

(declare-fun res!323862 () Bool)

(assert (=> b!527416 (=> (not res!323862) (not e!307384))))

(assert (=> b!527416 (= res!323862 (and (= (size!16432 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16432 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16432 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!527417 () Bool)

(assert (=> b!527417 (= e!307380 (= (seekEntryOrOpen!0 (select (arr!16068 a!3235) j!176) a!3235 mask!3524) (Found!4542 j!176)))))

(assert (= (and start!47914 res!323858) b!527416))

(assert (= (and b!527416 res!323862) b!527408))

(assert (= (and b!527408 res!323865) b!527413))

(assert (= (and b!527413 res!323860) b!527404))

(assert (= (and b!527404 res!323864) b!527406))

(assert (= (and b!527406 res!323863) b!527409))

(assert (= (and b!527409 res!323856) b!527407))

(assert (= (and b!527407 res!323859) b!527412))

(assert (= (and b!527412 res!323866) b!527417))

(assert (= (and b!527412 (not res!323861)) b!527411))

(assert (= (and b!527411 (not res!323857)) b!527415))

(assert (= (and b!527415 c!62081) b!527405))

(assert (= (and b!527415 (not c!62081)) b!527410))

(assert (= (and b!527405 res!323867) b!527414))

(declare-fun m!508099 () Bool)

(assert (=> b!527405 m!508099))

(declare-fun m!508101 () Bool)

(assert (=> b!527405 m!508101))

(declare-fun m!508103 () Bool)

(assert (=> b!527413 m!508103))

(declare-fun m!508105 () Bool)

(assert (=> b!527412 m!508105))

(declare-fun m!508107 () Bool)

(assert (=> b!527412 m!508107))

(declare-fun m!508109 () Bool)

(assert (=> b!527412 m!508109))

(declare-fun m!508111 () Bool)

(assert (=> b!527412 m!508111))

(declare-fun m!508113 () Bool)

(assert (=> b!527412 m!508113))

(declare-fun m!508115 () Bool)

(assert (=> b!527412 m!508115))

(assert (=> b!527412 m!508113))

(declare-fun m!508117 () Bool)

(assert (=> b!527412 m!508117))

(assert (=> b!527412 m!508113))

(declare-fun m!508119 () Bool)

(assert (=> b!527412 m!508119))

(declare-fun m!508121 () Bool)

(assert (=> b!527412 m!508121))

(declare-fun m!508123 () Bool)

(assert (=> b!527407 m!508123))

(declare-fun m!508125 () Bool)

(assert (=> b!527406 m!508125))

(assert (=> b!527408 m!508113))

(assert (=> b!527408 m!508113))

(declare-fun m!508127 () Bool)

(assert (=> b!527408 m!508127))

(declare-fun m!508129 () Bool)

(assert (=> b!527404 m!508129))

(declare-fun m!508131 () Bool)

(assert (=> b!527415 m!508131))

(declare-fun m!508133 () Bool)

(assert (=> b!527415 m!508133))

(assert (=> b!527415 m!508113))

(assert (=> b!527417 m!508113))

(assert (=> b!527417 m!508113))

(declare-fun m!508135 () Bool)

(assert (=> b!527417 m!508135))

(declare-fun m!508137 () Bool)

(assert (=> b!527409 m!508137))

(declare-fun m!508139 () Bool)

(assert (=> start!47914 m!508139))

(declare-fun m!508141 () Bool)

(assert (=> start!47914 m!508141))

(push 1)

