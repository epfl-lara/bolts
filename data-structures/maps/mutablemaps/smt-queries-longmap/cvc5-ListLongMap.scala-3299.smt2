; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45748 () Bool)

(assert start!45748)

(declare-fun b!505552 () Bool)

(declare-fun res!306741 () Bool)

(declare-fun e!295941 () Bool)

(assert (=> b!505552 (=> (not res!306741) (not e!295941))))

(declare-datatypes ((array!32464 0))(
  ( (array!32465 (arr!15609 (Array (_ BitVec 32) (_ BitVec 64))) (size!15973 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32464)

(declare-datatypes ((List!9820 0))(
  ( (Nil!9817) (Cons!9816 (h!10693 (_ BitVec 64)) (t!16056 List!9820)) )
))
(declare-fun arrayNoDuplicates!0 (array!32464 (_ BitVec 32) List!9820) Bool)

(assert (=> b!505552 (= res!306741 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9817))))

(declare-fun b!505553 () Bool)

(declare-fun res!306730 () Bool)

(declare-fun e!295939 () Bool)

(assert (=> b!505553 (=> (not res!306730) (not e!295939))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32464 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505553 (= res!306730 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!505554 () Bool)

(declare-fun e!295940 () Bool)

(assert (=> b!505554 (= e!295940 true)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!230564 () (_ BitVec 64))

(declare-fun lt!230567 () array!32464)

(declare-datatypes ((SeekEntryResult!4083 0))(
  ( (MissingZero!4083 (index!18520 (_ BitVec 32))) (Found!4083 (index!18521 (_ BitVec 32))) (Intermediate!4083 (undefined!4895 Bool) (index!18522 (_ BitVec 32)) (x!47559 (_ BitVec 32))) (Undefined!4083) (MissingVacant!4083 (index!18523 (_ BitVec 32))) )
))
(declare-fun lt!230565 () SeekEntryResult!4083)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32464 (_ BitVec 32)) SeekEntryResult!4083)

(assert (=> b!505554 (= (seekEntryOrOpen!0 lt!230564 lt!230567 mask!3524) lt!230565)))

(declare-fun lt!230557 () SeekEntryResult!4083)

(declare-fun lt!230558 () (_ BitVec 32))

(declare-datatypes ((Unit!15422 0))(
  ( (Unit!15423) )
))
(declare-fun lt!230556 () Unit!15422)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32464 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15422)

(assert (=> b!505554 (= lt!230556 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230558 #b00000000000000000000000000000000 (index!18522 lt!230557) (x!47559 lt!230557) mask!3524))))

(declare-fun b!505555 () Bool)

(declare-fun e!295944 () Bool)

(assert (=> b!505555 (= e!295944 false)))

(declare-fun b!505556 () Bool)

(declare-fun res!306742 () Bool)

(assert (=> b!505556 (=> res!306742 e!295940)))

(declare-fun e!295942 () Bool)

(assert (=> b!505556 (= res!306742 e!295942)))

(declare-fun res!306743 () Bool)

(assert (=> b!505556 (=> (not res!306743) (not e!295942))))

(assert (=> b!505556 (= res!306743 (bvsgt #b00000000000000000000000000000000 (x!47559 lt!230557)))))

(declare-fun e!295938 () Bool)

(declare-fun b!505557 () Bool)

(assert (=> b!505557 (= e!295938 (= (seekEntryOrOpen!0 (select (arr!15609 a!3235) j!176) a!3235 mask!3524) (Found!4083 j!176)))))

(declare-fun b!505559 () Bool)

(declare-fun e!295937 () Unit!15422)

(declare-fun Unit!15424 () Unit!15422)

(assert (=> b!505559 (= e!295937 Unit!15424)))

(declare-fun lt!230563 () Unit!15422)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32464 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15422)

(assert (=> b!505559 (= lt!230563 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230558 #b00000000000000000000000000000000 (index!18522 lt!230557) (x!47559 lt!230557) mask!3524))))

(declare-fun res!306733 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32464 (_ BitVec 32)) SeekEntryResult!4083)

(assert (=> b!505559 (= res!306733 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230558 lt!230564 lt!230567 mask!3524) (Intermediate!4083 false (index!18522 lt!230557) (x!47559 lt!230557))))))

(assert (=> b!505559 (=> (not res!306733) (not e!295944))))

(assert (=> b!505559 e!295944))

(declare-fun b!505560 () Bool)

(declare-fun res!306735 () Bool)

(assert (=> b!505560 (=> (not res!306735) (not e!295939))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505560 (= res!306735 (validKeyInArray!0 (select (arr!15609 a!3235) j!176)))))

(declare-fun b!505561 () Bool)

(declare-fun res!306740 () Bool)

(assert (=> b!505561 (=> (not res!306740) (not e!295939))))

(assert (=> b!505561 (= res!306740 (and (= (size!15973 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15973 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15973 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505562 () Bool)

(declare-fun res!306731 () Bool)

(assert (=> b!505562 (=> (not res!306731) (not e!295941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32464 (_ BitVec 32)) Bool)

(assert (=> b!505562 (= res!306731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505563 () Bool)

(declare-fun res!306729 () Bool)

(assert (=> b!505563 (=> (not res!306729) (not e!295939))))

(assert (=> b!505563 (= res!306729 (validKeyInArray!0 k!2280))))

(declare-fun b!505564 () Bool)

(declare-fun e!295943 () Bool)

(assert (=> b!505564 (= e!295943 e!295940)))

(declare-fun res!306738 () Bool)

(assert (=> b!505564 (=> res!306738 e!295940)))

(assert (=> b!505564 (= res!306738 (or (bvsgt (x!47559 lt!230557) #b01111111111111111111111111111110) (bvslt lt!230558 #b00000000000000000000000000000000) (bvsge lt!230558 (size!15973 a!3235)) (bvslt (index!18522 lt!230557) #b00000000000000000000000000000000) (bvsge (index!18522 lt!230557) (size!15973 a!3235)) (not (= lt!230557 (Intermediate!4083 false (index!18522 lt!230557) (x!47559 lt!230557))))))))

(assert (=> b!505564 (= (index!18522 lt!230557) i!1204)))

(declare-fun lt!230566 () Unit!15422)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32464 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15422)

(assert (=> b!505564 (= lt!230566 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230558 #b00000000000000000000000000000000 (index!18522 lt!230557) (x!47559 lt!230557) mask!3524))))

(assert (=> b!505564 (and (or (= (select (arr!15609 a!3235) (index!18522 lt!230557)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15609 a!3235) (index!18522 lt!230557)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15609 a!3235) (index!18522 lt!230557)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15609 a!3235) (index!18522 lt!230557)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230559 () Unit!15422)

(assert (=> b!505564 (= lt!230559 e!295937)))

(declare-fun c!59690 () Bool)

(assert (=> b!505564 (= c!59690 (= (select (arr!15609 a!3235) (index!18522 lt!230557)) (select (arr!15609 a!3235) j!176)))))

(assert (=> b!505564 (and (bvslt (x!47559 lt!230557) #b01111111111111111111111111111110) (or (= (select (arr!15609 a!3235) (index!18522 lt!230557)) (select (arr!15609 a!3235) j!176)) (= (select (arr!15609 a!3235) (index!18522 lt!230557)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15609 a!3235) (index!18522 lt!230557)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505565 () Bool)

(declare-fun Unit!15425 () Unit!15422)

(assert (=> b!505565 (= e!295937 Unit!15425)))

(declare-fun b!505566 () Bool)

(assert (=> b!505566 (= e!295941 (not e!295943))))

(declare-fun res!306739 () Bool)

(assert (=> b!505566 (=> res!306739 e!295943)))

(declare-fun lt!230560 () SeekEntryResult!4083)

(assert (=> b!505566 (= res!306739 (or (= lt!230557 lt!230560) (undefined!4895 lt!230557) (not (is-Intermediate!4083 lt!230557))))))

(declare-fun lt!230562 () (_ BitVec 32))

(assert (=> b!505566 (= lt!230560 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230562 lt!230564 lt!230567 mask!3524))))

(assert (=> b!505566 (= lt!230557 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230558 (select (arr!15609 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505566 (= lt!230562 (toIndex!0 lt!230564 mask!3524))))

(assert (=> b!505566 (= lt!230564 (select (store (arr!15609 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!505566 (= lt!230558 (toIndex!0 (select (arr!15609 a!3235) j!176) mask!3524))))

(assert (=> b!505566 (= lt!230567 (array!32465 (store (arr!15609 a!3235) i!1204 k!2280) (size!15973 a!3235)))))

(assert (=> b!505566 (= lt!230565 (Found!4083 j!176))))

(assert (=> b!505566 e!295938))

(declare-fun res!306734 () Bool)

(assert (=> b!505566 (=> (not res!306734) (not e!295938))))

(assert (=> b!505566 (= res!306734 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230555 () Unit!15422)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32464 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15422)

(assert (=> b!505566 (= lt!230555 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!306732 () Bool)

(assert (=> start!45748 (=> (not res!306732) (not e!295939))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45748 (= res!306732 (validMask!0 mask!3524))))

(assert (=> start!45748 e!295939))

(assert (=> start!45748 true))

(declare-fun array_inv!11383 (array!32464) Bool)

(assert (=> start!45748 (array_inv!11383 a!3235)))

(declare-fun b!505558 () Bool)

(declare-fun res!306737 () Bool)

(assert (=> b!505558 (=> res!306737 e!295940)))

(assert (=> b!505558 (= res!306737 (not (= lt!230560 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230558 lt!230564 lt!230567 mask!3524))))))

(declare-fun b!505567 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32464 (_ BitVec 32)) SeekEntryResult!4083)

(assert (=> b!505567 (= e!295942 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230558 (index!18522 lt!230557) (select (arr!15609 a!3235) j!176) a!3235 mask!3524) lt!230565)))))

(declare-fun b!505568 () Bool)

(assert (=> b!505568 (= e!295939 e!295941)))

(declare-fun res!306736 () Bool)

(assert (=> b!505568 (=> (not res!306736) (not e!295941))))

(declare-fun lt!230561 () SeekEntryResult!4083)

(assert (=> b!505568 (= res!306736 (or (= lt!230561 (MissingZero!4083 i!1204)) (= lt!230561 (MissingVacant!4083 i!1204))))))

(assert (=> b!505568 (= lt!230561 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45748 res!306732) b!505561))

(assert (= (and b!505561 res!306740) b!505560))

(assert (= (and b!505560 res!306735) b!505563))

(assert (= (and b!505563 res!306729) b!505553))

(assert (= (and b!505553 res!306730) b!505568))

(assert (= (and b!505568 res!306736) b!505562))

(assert (= (and b!505562 res!306731) b!505552))

(assert (= (and b!505552 res!306741) b!505566))

(assert (= (and b!505566 res!306734) b!505557))

(assert (= (and b!505566 (not res!306739)) b!505564))

(assert (= (and b!505564 c!59690) b!505559))

(assert (= (and b!505564 (not c!59690)) b!505565))

(assert (= (and b!505559 res!306733) b!505555))

(assert (= (and b!505564 (not res!306738)) b!505556))

(assert (= (and b!505556 res!306743) b!505567))

(assert (= (and b!505556 (not res!306742)) b!505558))

(assert (= (and b!505558 (not res!306737)) b!505554))

(declare-fun m!486247 () Bool)

(assert (=> b!505568 m!486247))

(declare-fun m!486249 () Bool)

(assert (=> start!45748 m!486249))

(declare-fun m!486251 () Bool)

(assert (=> start!45748 m!486251))

(declare-fun m!486253 () Bool)

(assert (=> b!505563 m!486253))

(declare-fun m!486255 () Bool)

(assert (=> b!505562 m!486255))

(declare-fun m!486257 () Bool)

(assert (=> b!505557 m!486257))

(assert (=> b!505557 m!486257))

(declare-fun m!486259 () Bool)

(assert (=> b!505557 m!486259))

(declare-fun m!486261 () Bool)

(assert (=> b!505558 m!486261))

(declare-fun m!486263 () Bool)

(assert (=> b!505553 m!486263))

(declare-fun m!486265 () Bool)

(assert (=> b!505564 m!486265))

(declare-fun m!486267 () Bool)

(assert (=> b!505564 m!486267))

(assert (=> b!505564 m!486257))

(assert (=> b!505566 m!486257))

(declare-fun m!486269 () Bool)

(assert (=> b!505566 m!486269))

(declare-fun m!486271 () Bool)

(assert (=> b!505566 m!486271))

(declare-fun m!486273 () Bool)

(assert (=> b!505566 m!486273))

(declare-fun m!486275 () Bool)

(assert (=> b!505566 m!486275))

(declare-fun m!486277 () Bool)

(assert (=> b!505566 m!486277))

(declare-fun m!486279 () Bool)

(assert (=> b!505566 m!486279))

(assert (=> b!505566 m!486257))

(declare-fun m!486281 () Bool)

(assert (=> b!505566 m!486281))

(assert (=> b!505566 m!486257))

(declare-fun m!486283 () Bool)

(assert (=> b!505566 m!486283))

(declare-fun m!486285 () Bool)

(assert (=> b!505559 m!486285))

(assert (=> b!505559 m!486261))

(declare-fun m!486287 () Bool)

(assert (=> b!505552 m!486287))

(declare-fun m!486289 () Bool)

(assert (=> b!505554 m!486289))

(declare-fun m!486291 () Bool)

(assert (=> b!505554 m!486291))

(assert (=> b!505560 m!486257))

(assert (=> b!505560 m!486257))

(declare-fun m!486293 () Bool)

(assert (=> b!505560 m!486293))

(assert (=> b!505567 m!486257))

(assert (=> b!505567 m!486257))

(declare-fun m!486295 () Bool)

(assert (=> b!505567 m!486295))

(push 1)

