; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48124 () Bool)

(assert start!48124)

(declare-fun e!308632 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33520 0))(
  ( (array!33521 (arr!16104 (Array (_ BitVec 32) (_ BitVec 64))) (size!16468 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33520)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!529646 () Bool)

(declare-datatypes ((SeekEntryResult!4578 0))(
  ( (MissingZero!4578 (index!20536 (_ BitVec 32))) (Found!4578 (index!20537 (_ BitVec 32))) (Intermediate!4578 (undefined!5390 Bool) (index!20538 (_ BitVec 32)) (x!49539 (_ BitVec 32))) (Undefined!4578) (MissingVacant!4578 (index!20539 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33520 (_ BitVec 32)) SeekEntryResult!4578)

(assert (=> b!529646 (= e!308632 (= (seekEntryOrOpen!0 (select (arr!16104 a!3235) j!176) a!3235 mask!3524) (Found!4578 j!176)))))

(declare-fun b!529647 () Bool)

(declare-fun e!308628 () Bool)

(declare-fun e!308630 () Bool)

(assert (=> b!529647 (= e!308628 e!308630)))

(declare-fun res!325503 () Bool)

(assert (=> b!529647 (=> res!325503 e!308630)))

(declare-fun lt!244259 () Bool)

(declare-fun lt!244256 () SeekEntryResult!4578)

(assert (=> b!529647 (= res!325503 (or (and (not lt!244259) (undefined!5390 lt!244256)) (and (not lt!244259) (not (undefined!5390 lt!244256)))))))

(assert (=> b!529647 (= lt!244259 (not (is-Intermediate!4578 lt!244256)))))

(declare-fun b!529648 () Bool)

(declare-fun res!325501 () Bool)

(declare-fun e!308631 () Bool)

(assert (=> b!529648 (=> (not res!325501) (not e!308631))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!529648 (= res!325501 (and (= (size!16468 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16468 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16468 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529649 () Bool)

(declare-fun e!308627 () Bool)

(assert (=> b!529649 (= e!308627 (not e!308628))))

(declare-fun res!325502 () Bool)

(assert (=> b!529649 (=> res!325502 e!308628)))

(declare-fun lt!244253 () array!33520)

(declare-fun lt!244252 () (_ BitVec 64))

(declare-fun lt!244258 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33520 (_ BitVec 32)) SeekEntryResult!4578)

(assert (=> b!529649 (= res!325502 (= lt!244256 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244258 lt!244252 lt!244253 mask!3524)))))

(declare-fun lt!244251 () (_ BitVec 32))

(assert (=> b!529649 (= lt!244256 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244251 (select (arr!16104 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529649 (= lt!244258 (toIndex!0 lt!244252 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!529649 (= lt!244252 (select (store (arr!16104 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!529649 (= lt!244251 (toIndex!0 (select (arr!16104 a!3235) j!176) mask!3524))))

(assert (=> b!529649 (= lt!244253 (array!33521 (store (arr!16104 a!3235) i!1204 k!2280) (size!16468 a!3235)))))

(assert (=> b!529649 e!308632))

(declare-fun res!325511 () Bool)

(assert (=> b!529649 (=> (not res!325511) (not e!308632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33520 (_ BitVec 32)) Bool)

(assert (=> b!529649 (= res!325511 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16760 0))(
  ( (Unit!16761) )
))
(declare-fun lt!244255 () Unit!16760)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33520 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16760)

(assert (=> b!529649 (= lt!244255 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529650 () Bool)

(declare-fun res!325505 () Bool)

(assert (=> b!529650 (=> (not res!325505) (not e!308631))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529650 (= res!325505 (validKeyInArray!0 (select (arr!16104 a!3235) j!176)))))

(declare-fun b!529651 () Bool)

(declare-fun res!325508 () Bool)

(assert (=> b!529651 (=> (not res!325508) (not e!308631))))

(assert (=> b!529651 (= res!325508 (validKeyInArray!0 k!2280))))

(declare-fun b!529652 () Bool)

(declare-fun res!325507 () Bool)

(assert (=> b!529652 (=> (not res!325507) (not e!308631))))

(declare-fun arrayContainsKey!0 (array!33520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529652 (= res!325507 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529653 () Bool)

(declare-fun res!325509 () Bool)

(assert (=> b!529653 (=> (not res!325509) (not e!308627))))

(declare-datatypes ((List!10315 0))(
  ( (Nil!10312) (Cons!10311 (h!11251 (_ BitVec 64)) (t!16551 List!10315)) )
))
(declare-fun arrayNoDuplicates!0 (array!33520 (_ BitVec 32) List!10315) Bool)

(assert (=> b!529653 (= res!325509 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10312))))

(declare-fun b!529654 () Bool)

(assert (=> b!529654 (= e!308631 e!308627)))

(declare-fun res!325504 () Bool)

(assert (=> b!529654 (=> (not res!325504) (not e!308627))))

(declare-fun lt!244257 () SeekEntryResult!4578)

(assert (=> b!529654 (= res!325504 (or (= lt!244257 (MissingZero!4578 i!1204)) (= lt!244257 (MissingVacant!4578 i!1204))))))

(assert (=> b!529654 (= lt!244257 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!529655 () Bool)

(declare-fun res!325510 () Bool)

(assert (=> b!529655 (=> (not res!325510) (not e!308627))))

(assert (=> b!529655 (= res!325510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!325506 () Bool)

(assert (=> start!48124 (=> (not res!325506) (not e!308631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48124 (= res!325506 (validMask!0 mask!3524))))

(assert (=> start!48124 e!308631))

(assert (=> start!48124 true))

(declare-fun array_inv!11878 (array!33520) Bool)

(assert (=> start!48124 (array_inv!11878 a!3235)))

(declare-fun b!529645 () Bool)

(assert (=> b!529645 (= e!308630 true)))

(declare-fun lt!244254 () SeekEntryResult!4578)

(assert (=> b!529645 (= lt!244254 (seekEntryOrOpen!0 lt!244252 lt!244253 mask!3524))))

(assert (=> b!529645 false))

(assert (= (and start!48124 res!325506) b!529648))

(assert (= (and b!529648 res!325501) b!529650))

(assert (= (and b!529650 res!325505) b!529651))

(assert (= (and b!529651 res!325508) b!529652))

(assert (= (and b!529652 res!325507) b!529654))

(assert (= (and b!529654 res!325504) b!529655))

(assert (= (and b!529655 res!325510) b!529653))

(assert (= (and b!529653 res!325509) b!529649))

(assert (= (and b!529649 res!325511) b!529646))

(assert (= (and b!529649 (not res!325502)) b!529647))

(assert (= (and b!529647 (not res!325503)) b!529645))

(declare-fun m!510175 () Bool)

(assert (=> b!529646 m!510175))

(assert (=> b!529646 m!510175))

(declare-fun m!510177 () Bool)

(assert (=> b!529646 m!510177))

(declare-fun m!510179 () Bool)

(assert (=> b!529655 m!510179))

(assert (=> b!529650 m!510175))

(assert (=> b!529650 m!510175))

(declare-fun m!510181 () Bool)

(assert (=> b!529650 m!510181))

(declare-fun m!510183 () Bool)

(assert (=> start!48124 m!510183))

(declare-fun m!510185 () Bool)

(assert (=> start!48124 m!510185))

(declare-fun m!510187 () Bool)

(assert (=> b!529645 m!510187))

(declare-fun m!510189 () Bool)

(assert (=> b!529654 m!510189))

(declare-fun m!510191 () Bool)

(assert (=> b!529652 m!510191))

(declare-fun m!510193 () Bool)

(assert (=> b!529653 m!510193))

(declare-fun m!510195 () Bool)

(assert (=> b!529649 m!510195))

(declare-fun m!510197 () Bool)

(assert (=> b!529649 m!510197))

(declare-fun m!510199 () Bool)

(assert (=> b!529649 m!510199))

(declare-fun m!510201 () Bool)

(assert (=> b!529649 m!510201))

(assert (=> b!529649 m!510175))

(declare-fun m!510203 () Bool)

(assert (=> b!529649 m!510203))

(declare-fun m!510205 () Bool)

(assert (=> b!529649 m!510205))

(declare-fun m!510207 () Bool)

(assert (=> b!529649 m!510207))

(assert (=> b!529649 m!510175))

(declare-fun m!510209 () Bool)

(assert (=> b!529649 m!510209))

(assert (=> b!529649 m!510175))

(declare-fun m!510211 () Bool)

(assert (=> b!529651 m!510211))

(push 1)

