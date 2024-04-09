; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45434 () Bool)

(assert start!45434)

(declare-fun b!499308 () Bool)

(declare-fun e!292603 () Bool)

(declare-fun e!292601 () Bool)

(assert (=> b!499308 (= e!292603 e!292601)))

(declare-fun res!301414 () Bool)

(assert (=> b!499308 (=> res!301414 e!292601)))

(declare-datatypes ((array!32219 0))(
  ( (array!32220 (arr!15488 (Array (_ BitVec 32) (_ BitVec 64))) (size!15852 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32219)

(declare-datatypes ((SeekEntryResult!3962 0))(
  ( (MissingZero!3962 (index!18030 (_ BitVec 32))) (Found!3962 (index!18031 (_ BitVec 32))) (Intermediate!3962 (undefined!4774 Bool) (index!18032 (_ BitVec 32)) (x!47098 (_ BitVec 32))) (Undefined!3962) (MissingVacant!3962 (index!18033 (_ BitVec 32))) )
))
(declare-fun lt!226455 () SeekEntryResult!3962)

(declare-fun lt!226451 () (_ BitVec 32))

(assert (=> b!499308 (= res!301414 (or (bvsgt #b00000000000000000000000000000000 (x!47098 lt!226455)) (bvsgt (x!47098 lt!226455) #b01111111111111111111111111111110) (bvslt lt!226451 #b00000000000000000000000000000000) (bvsge lt!226451 (size!15852 a!3235)) (bvslt (index!18032 lt!226455) #b00000000000000000000000000000000) (bvsge (index!18032 lt!226455) (size!15852 a!3235)) (not (= lt!226455 (Intermediate!3962 false (index!18032 lt!226455) (x!47098 lt!226455))))))))

(assert (=> b!499308 (and (or (= (select (arr!15488 a!3235) (index!18032 lt!226455)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15488 a!3235) (index!18032 lt!226455)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15488 a!3235) (index!18032 lt!226455)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15488 a!3235) (index!18032 lt!226455)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14938 0))(
  ( (Unit!14939) )
))
(declare-fun lt!226453 () Unit!14938)

(declare-fun e!292596 () Unit!14938)

(assert (=> b!499308 (= lt!226453 e!292596)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun c!59225 () Bool)

(assert (=> b!499308 (= c!59225 (= (select (arr!15488 a!3235) (index!18032 lt!226455)) (select (arr!15488 a!3235) j!176)))))

(assert (=> b!499308 (and (bvslt (x!47098 lt!226455) #b01111111111111111111111111111110) (or (= (select (arr!15488 a!3235) (index!18032 lt!226455)) (select (arr!15488 a!3235) j!176)) (= (select (arr!15488 a!3235) (index!18032 lt!226455)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15488 a!3235) (index!18032 lt!226455)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!301415 () Bool)

(declare-fun e!292597 () Bool)

(assert (=> start!45434 (=> (not res!301415) (not e!292597))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45434 (= res!301415 (validMask!0 mask!3524))))

(assert (=> start!45434 e!292597))

(assert (=> start!45434 true))

(declare-fun array_inv!11262 (array!32219) Bool)

(assert (=> start!45434 (array_inv!11262 a!3235)))

(declare-fun b!499309 () Bool)

(declare-fun res!301422 () Bool)

(assert (=> b!499309 (=> (not res!301422) (not e!292597))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499309 (= res!301422 (and (= (size!15852 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15852 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15852 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499310 () Bool)

(declare-fun e!292599 () Bool)

(assert (=> b!499310 (= e!292599 false)))

(declare-fun b!499311 () Bool)

(declare-fun res!301418 () Bool)

(declare-fun e!292602 () Bool)

(assert (=> b!499311 (=> (not res!301418) (not e!292602))))

(declare-datatypes ((List!9699 0))(
  ( (Nil!9696) (Cons!9695 (h!10569 (_ BitVec 64)) (t!15935 List!9699)) )
))
(declare-fun arrayNoDuplicates!0 (array!32219 (_ BitVec 32) List!9699) Bool)

(assert (=> b!499311 (= res!301418 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9696))))

(declare-fun b!499312 () Bool)

(declare-fun res!301423 () Bool)

(assert (=> b!499312 (=> (not res!301423) (not e!292597))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499312 (= res!301423 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499313 () Bool)

(declare-fun res!301412 () Bool)

(assert (=> b!499313 (=> (not res!301412) (not e!292602))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32219 (_ BitVec 32)) Bool)

(assert (=> b!499313 (= res!301412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499314 () Bool)

(declare-fun res!301424 () Bool)

(assert (=> b!499314 (=> (not res!301424) (not e!292597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499314 (= res!301424 (validKeyInArray!0 k!2280))))

(declare-fun b!499315 () Bool)

(assert (=> b!499315 (= e!292601 true)))

(declare-fun lt!226460 () (_ BitVec 64))

(declare-fun lt!226452 () array!32219)

(declare-fun lt!226459 () SeekEntryResult!3962)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32219 (_ BitVec 32)) SeekEntryResult!3962)

(assert (=> b!499315 (= lt!226459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226451 lt!226460 lt!226452 mask!3524))))

(declare-fun b!499316 () Bool)

(declare-fun Unit!14940 () Unit!14938)

(assert (=> b!499316 (= e!292596 Unit!14940)))

(declare-fun lt!226458 () Unit!14938)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32219 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14938)

(assert (=> b!499316 (= lt!226458 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226451 #b00000000000000000000000000000000 (index!18032 lt!226455) (x!47098 lt!226455) mask!3524))))

(declare-fun res!301413 () Bool)

(assert (=> b!499316 (= res!301413 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226451 lt!226460 lt!226452 mask!3524) (Intermediate!3962 false (index!18032 lt!226455) (x!47098 lt!226455))))))

(assert (=> b!499316 (=> (not res!301413) (not e!292599))))

(assert (=> b!499316 e!292599))

(declare-fun e!292600 () Bool)

(declare-fun b!499317 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32219 (_ BitVec 32)) SeekEntryResult!3962)

(assert (=> b!499317 (= e!292600 (= (seekEntryOrOpen!0 (select (arr!15488 a!3235) j!176) a!3235 mask!3524) (Found!3962 j!176)))))

(declare-fun b!499318 () Bool)

(declare-fun Unit!14941 () Unit!14938)

(assert (=> b!499318 (= e!292596 Unit!14941)))

(declare-fun b!499319 () Bool)

(declare-fun res!301417 () Bool)

(assert (=> b!499319 (=> res!301417 e!292603)))

(assert (=> b!499319 (= res!301417 (or (undefined!4774 lt!226455) (not (is-Intermediate!3962 lt!226455))))))

(declare-fun b!499320 () Bool)

(declare-fun res!301421 () Bool)

(assert (=> b!499320 (=> (not res!301421) (not e!292597))))

(assert (=> b!499320 (= res!301421 (validKeyInArray!0 (select (arr!15488 a!3235) j!176)))))

(declare-fun b!499321 () Bool)

(assert (=> b!499321 (= e!292602 (not e!292603))))

(declare-fun res!301420 () Bool)

(assert (=> b!499321 (=> res!301420 e!292603)))

(declare-fun lt!226457 () (_ BitVec 32))

(assert (=> b!499321 (= res!301420 (= lt!226455 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226457 lt!226460 lt!226452 mask!3524)))))

(assert (=> b!499321 (= lt!226455 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226451 (select (arr!15488 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499321 (= lt!226457 (toIndex!0 lt!226460 mask!3524))))

(assert (=> b!499321 (= lt!226460 (select (store (arr!15488 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499321 (= lt!226451 (toIndex!0 (select (arr!15488 a!3235) j!176) mask!3524))))

(assert (=> b!499321 (= lt!226452 (array!32220 (store (arr!15488 a!3235) i!1204 k!2280) (size!15852 a!3235)))))

(assert (=> b!499321 e!292600))

(declare-fun res!301416 () Bool)

(assert (=> b!499321 (=> (not res!301416) (not e!292600))))

(assert (=> b!499321 (= res!301416 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226456 () Unit!14938)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32219 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14938)

(assert (=> b!499321 (= lt!226456 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499322 () Bool)

(assert (=> b!499322 (= e!292597 e!292602)))

(declare-fun res!301419 () Bool)

(assert (=> b!499322 (=> (not res!301419) (not e!292602))))

(declare-fun lt!226454 () SeekEntryResult!3962)

(assert (=> b!499322 (= res!301419 (or (= lt!226454 (MissingZero!3962 i!1204)) (= lt!226454 (MissingVacant!3962 i!1204))))))

(assert (=> b!499322 (= lt!226454 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45434 res!301415) b!499309))

(assert (= (and b!499309 res!301422) b!499320))

(assert (= (and b!499320 res!301421) b!499314))

(assert (= (and b!499314 res!301424) b!499312))

(assert (= (and b!499312 res!301423) b!499322))

(assert (= (and b!499322 res!301419) b!499313))

(assert (= (and b!499313 res!301412) b!499311))

(assert (= (and b!499311 res!301418) b!499321))

(assert (= (and b!499321 res!301416) b!499317))

(assert (= (and b!499321 (not res!301420)) b!499319))

(assert (= (and b!499319 (not res!301417)) b!499308))

(assert (= (and b!499308 c!59225) b!499316))

(assert (= (and b!499308 (not c!59225)) b!499318))

(assert (= (and b!499316 res!301413) b!499310))

(assert (= (and b!499308 (not res!301414)) b!499315))

(declare-fun m!480541 () Bool)

(assert (=> b!499308 m!480541))

(declare-fun m!480543 () Bool)

(assert (=> b!499308 m!480543))

(declare-fun m!480545 () Bool)

(assert (=> b!499316 m!480545))

(declare-fun m!480547 () Bool)

(assert (=> b!499316 m!480547))

(declare-fun m!480549 () Bool)

(assert (=> b!499312 m!480549))

(declare-fun m!480551 () Bool)

(assert (=> b!499322 m!480551))

(declare-fun m!480553 () Bool)

(assert (=> b!499311 m!480553))

(declare-fun m!480555 () Bool)

(assert (=> b!499313 m!480555))

(declare-fun m!480557 () Bool)

(assert (=> b!499314 m!480557))

(assert (=> b!499317 m!480543))

(assert (=> b!499317 m!480543))

(declare-fun m!480559 () Bool)

(assert (=> b!499317 m!480559))

(declare-fun m!480561 () Bool)

(assert (=> start!45434 m!480561))

(declare-fun m!480563 () Bool)

(assert (=> start!45434 m!480563))

(declare-fun m!480565 () Bool)

(assert (=> b!499321 m!480565))

(declare-fun m!480567 () Bool)

(assert (=> b!499321 m!480567))

(declare-fun m!480569 () Bool)

(assert (=> b!499321 m!480569))

(declare-fun m!480571 () Bool)

(assert (=> b!499321 m!480571))

(assert (=> b!499321 m!480543))

(declare-fun m!480573 () Bool)

(assert (=> b!499321 m!480573))

(assert (=> b!499321 m!480543))

(declare-fun m!480575 () Bool)

(assert (=> b!499321 m!480575))

(declare-fun m!480577 () Bool)

(assert (=> b!499321 m!480577))

(assert (=> b!499321 m!480543))

(declare-fun m!480579 () Bool)

(assert (=> b!499321 m!480579))

(assert (=> b!499320 m!480543))

(assert (=> b!499320 m!480543))

(declare-fun m!480581 () Bool)

(assert (=> b!499320 m!480581))

(assert (=> b!499315 m!480547))

(push 1)

