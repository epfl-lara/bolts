; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30766 () Bool)

(assert start!30766)

(declare-fun b!308458 () Bool)

(declare-fun e!192859 () Bool)

(declare-fun e!192856 () Bool)

(assert (=> b!308458 (= e!192859 e!192856)))

(declare-fun res!165235 () Bool)

(assert (=> b!308458 (=> (not res!165235) (not e!192856))))

(declare-datatypes ((array!15717 0))(
  ( (array!15718 (arr!7440 (Array (_ BitVec 32) (_ BitVec 64))) (size!7792 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15717)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2591 0))(
  ( (MissingZero!2591 (index!12540 (_ BitVec 32))) (Found!2591 (index!12541 (_ BitVec 32))) (Intermediate!2591 (undefined!3403 Bool) (index!12542 (_ BitVec 32)) (x!30742 (_ BitVec 32))) (Undefined!2591) (MissingVacant!2591 (index!12543 (_ BitVec 32))) )
))
(declare-fun lt!151376 () SeekEntryResult!2591)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15717 (_ BitVec 32)) SeekEntryResult!2591)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308458 (= res!165235 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151376))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!308458 (= lt!151376 (Intermediate!2591 false resIndex!52 resX!52))))

(declare-fun res!165233 () Bool)

(assert (=> start!30766 (=> (not res!165233) (not e!192859))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30766 (= res!165233 (validMask!0 mask!3709))))

(assert (=> start!30766 e!192859))

(declare-fun array_inv!5394 (array!15717) Bool)

(assert (=> start!30766 (array_inv!5394 a!3293)))

(assert (=> start!30766 true))

(declare-fun b!308459 () Bool)

(declare-fun res!165237 () Bool)

(assert (=> b!308459 (=> (not res!165237) (not e!192859))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!308459 (= res!165237 (and (= (size!7792 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7792 a!3293))))))

(declare-fun b!308460 () Bool)

(declare-fun res!165230 () Bool)

(assert (=> b!308460 (=> (not res!165230) (not e!192856))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308460 (= res!165230 (and (= (select (arr!7440 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7792 a!3293))))))

(declare-fun b!308461 () Bool)

(declare-fun res!165232 () Bool)

(assert (=> b!308461 (=> (not res!165232) (not e!192859))))

(declare-fun arrayContainsKey!0 (array!15717 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308461 (= res!165232 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308462 () Bool)

(declare-fun res!165234 () Bool)

(assert (=> b!308462 (=> (not res!165234) (not e!192859))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15717 (_ BitVec 32)) SeekEntryResult!2591)

(assert (=> b!308462 (= res!165234 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2591 i!1240)))))

(declare-fun b!308463 () Bool)

(declare-fun e!192858 () Bool)

(assert (=> b!308463 (= e!192858 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun lt!151375 () SeekEntryResult!2591)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308463 (= lt!151375 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308464 () Bool)

(declare-fun res!165236 () Bool)

(assert (=> b!308464 (=> (not res!165236) (not e!192859))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308464 (= res!165236 (validKeyInArray!0 k!2441))))

(declare-fun b!308465 () Bool)

(declare-fun res!165231 () Bool)

(assert (=> b!308465 (=> (not res!165231) (not e!192859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15717 (_ BitVec 32)) Bool)

(assert (=> b!308465 (= res!165231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308466 () Bool)

(assert (=> b!308466 (= e!192856 e!192858)))

(declare-fun res!165229 () Bool)

(assert (=> b!308466 (=> (not res!165229) (not e!192858))))

(assert (=> b!308466 (= res!165229 (and (= lt!151375 lt!151376) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7440 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308466 (= lt!151375 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!30766 res!165233) b!308459))

(assert (= (and b!308459 res!165237) b!308464))

(assert (= (and b!308464 res!165236) b!308461))

(assert (= (and b!308461 res!165232) b!308462))

(assert (= (and b!308462 res!165234) b!308465))

(assert (= (and b!308465 res!165231) b!308458))

(assert (= (and b!308458 res!165235) b!308460))

(assert (= (and b!308460 res!165230) b!308466))

(assert (= (and b!308466 res!165229) b!308463))

(declare-fun m!318533 () Bool)

(assert (=> b!308464 m!318533))

(declare-fun m!318535 () Bool)

(assert (=> start!30766 m!318535))

(declare-fun m!318537 () Bool)

(assert (=> start!30766 m!318537))

(declare-fun m!318539 () Bool)

(assert (=> b!308463 m!318539))

(assert (=> b!308463 m!318539))

(declare-fun m!318541 () Bool)

(assert (=> b!308463 m!318541))

(declare-fun m!318543 () Bool)

(assert (=> b!308466 m!318543))

(declare-fun m!318545 () Bool)

(assert (=> b!308466 m!318545))

(declare-fun m!318547 () Bool)

(assert (=> b!308462 m!318547))

(declare-fun m!318549 () Bool)

(assert (=> b!308460 m!318549))

(declare-fun m!318551 () Bool)

(assert (=> b!308458 m!318551))

(assert (=> b!308458 m!318551))

(declare-fun m!318553 () Bool)

(assert (=> b!308458 m!318553))

(declare-fun m!318555 () Bool)

(assert (=> b!308461 m!318555))

(declare-fun m!318557 () Bool)

(assert (=> b!308465 m!318557))

(push 1)

(assert (not b!308461))

(assert (not b!308458))

(assert (not b!308465))

(assert (not b!308462))

(assert (not b!308466))

(assert (not b!308464))

(assert (not b!308463))

(assert (not start!30766))

(check-sat)

(pop 1)

(push 1)

(check-sat)

