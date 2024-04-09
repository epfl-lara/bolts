; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30150 () Bool)

(assert start!30150)

(declare-fun b!301693 () Bool)

(declare-fun res!159462 () Bool)

(declare-fun e!190329 () Bool)

(assert (=> b!301693 (=> (not res!159462) (not e!190329))))

(declare-datatypes ((array!15299 0))(
  ( (array!15300 (arr!7237 (Array (_ BitVec 32) (_ BitVec 64))) (size!7589 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15299)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301693 (= res!159462 (and (= (size!7589 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7589 a!3293))))))

(declare-fun b!301694 () Bool)

(assert (=> b!301694 (= e!190329 false)))

(declare-datatypes ((SeekEntryResult!2388 0))(
  ( (MissingZero!2388 (index!11728 (_ BitVec 32))) (Found!2388 (index!11729 (_ BitVec 32))) (Intermediate!2388 (undefined!3200 Bool) (index!11730 (_ BitVec 32)) (x!29970 (_ BitVec 32))) (Undefined!2388) (MissingVacant!2388 (index!11731 (_ BitVec 32))) )
))
(declare-fun lt!149933 () SeekEntryResult!2388)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15299 (_ BitVec 32)) SeekEntryResult!2388)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301694 (= lt!149933 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun res!159465 () Bool)

(assert (=> start!30150 (=> (not res!159465) (not e!190329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30150 (= res!159465 (validMask!0 mask!3709))))

(assert (=> start!30150 e!190329))

(assert (=> start!30150 true))

(declare-fun array_inv!5191 (array!15299) Bool)

(assert (=> start!30150 (array_inv!5191 a!3293)))

(declare-fun b!301695 () Bool)

(declare-fun res!159464 () Bool)

(assert (=> b!301695 (=> (not res!159464) (not e!190329))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15299 (_ BitVec 32)) SeekEntryResult!2388)

(assert (=> b!301695 (= res!159464 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2388 i!1240)))))

(declare-fun b!301696 () Bool)

(declare-fun res!159461 () Bool)

(assert (=> b!301696 (=> (not res!159461) (not e!190329))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15299 (_ BitVec 32)) Bool)

(assert (=> b!301696 (= res!159461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301697 () Bool)

(declare-fun res!159460 () Bool)

(assert (=> b!301697 (=> (not res!159460) (not e!190329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301697 (= res!159460 (validKeyInArray!0 k!2441))))

(declare-fun b!301698 () Bool)

(declare-fun res!159463 () Bool)

(assert (=> b!301698 (=> (not res!159463) (not e!190329))))

(declare-fun arrayContainsKey!0 (array!15299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301698 (= res!159463 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30150 res!159465) b!301693))

(assert (= (and b!301693 res!159462) b!301697))

(assert (= (and b!301697 res!159460) b!301698))

(assert (= (and b!301698 res!159463) b!301695))

(assert (= (and b!301695 res!159464) b!301696))

(assert (= (and b!301696 res!159461) b!301694))

(declare-fun m!313405 () Bool)

(assert (=> b!301695 m!313405))

(declare-fun m!313407 () Bool)

(assert (=> b!301698 m!313407))

(declare-fun m!313409 () Bool)

(assert (=> b!301694 m!313409))

(assert (=> b!301694 m!313409))

(declare-fun m!313411 () Bool)

(assert (=> b!301694 m!313411))

(declare-fun m!313413 () Bool)

(assert (=> b!301696 m!313413))

(declare-fun m!313415 () Bool)

(assert (=> b!301697 m!313415))

(declare-fun m!313417 () Bool)

(assert (=> start!30150 m!313417))

(declare-fun m!313419 () Bool)

(assert (=> start!30150 m!313419))

(push 1)

(assert (not b!301698))

(assert (not b!301695))

(assert (not start!30150))

(assert (not b!301697))

(assert (not b!301696))

(assert (not b!301694))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

