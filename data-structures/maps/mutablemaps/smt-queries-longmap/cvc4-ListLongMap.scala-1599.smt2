; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30274 () Bool)

(assert start!30274)

(declare-fun b!302744 () Bool)

(declare-fun res!160395 () Bool)

(declare-fun e!190701 () Bool)

(assert (=> b!302744 (=> (not res!160395) (not e!190701))))

(declare-datatypes ((array!15378 0))(
  ( (array!15379 (arr!7275 (Array (_ BitVec 32) (_ BitVec 64))) (size!7627 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15378)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2426 0))(
  ( (MissingZero!2426 (index!11880 (_ BitVec 32))) (Found!2426 (index!11881 (_ BitVec 32))) (Intermediate!2426 (undefined!3238 Bool) (index!11882 (_ BitVec 32)) (x!30110 (_ BitVec 32))) (Undefined!2426) (MissingVacant!2426 (index!11883 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15378 (_ BitVec 32)) SeekEntryResult!2426)

(assert (=> b!302744 (= res!160395 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2426 i!1240)))))

(declare-fun b!302745 () Bool)

(declare-fun res!160391 () Bool)

(assert (=> b!302745 (=> (not res!160391) (not e!190701))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15378 (_ BitVec 32)) SeekEntryResult!2426)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302745 (= res!160391 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2426 false resIndex!52 resX!52)))))

(declare-fun b!302746 () Bool)

(declare-fun res!160388 () Bool)

(assert (=> b!302746 (=> (not res!160388) (not e!190701))))

(assert (=> b!302746 (= res!160388 (and (= (size!7627 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7627 a!3293))))))

(declare-fun res!160394 () Bool)

(assert (=> start!30274 (=> (not res!160394) (not e!190701))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30274 (= res!160394 (validMask!0 mask!3709))))

(assert (=> start!30274 e!190701))

(declare-fun array_inv!5229 (array!15378) Bool)

(assert (=> start!30274 (array_inv!5229 a!3293)))

(assert (=> start!30274 true))

(declare-fun b!302747 () Bool)

(declare-fun res!160392 () Bool)

(assert (=> b!302747 (=> (not res!160392) (not e!190701))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302747 (= res!160392 (and (= (select (arr!7275 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7627 a!3293))))))

(declare-fun b!302748 () Bool)

(declare-fun res!160389 () Bool)

(assert (=> b!302748 (=> (not res!160389) (not e!190701))))

(declare-fun arrayContainsKey!0 (array!15378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302748 (= res!160389 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302749 () Bool)

(declare-fun res!160393 () Bool)

(assert (=> b!302749 (=> (not res!160393) (not e!190701))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15378 (_ BitVec 32)) Bool)

(assert (=> b!302749 (= res!160393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302750 () Bool)

(assert (=> b!302750 (= e!190701 false)))

(declare-fun lt!150110 () SeekEntryResult!2426)

(assert (=> b!302750 (= lt!150110 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!302751 () Bool)

(declare-fun res!160390 () Bool)

(assert (=> b!302751 (=> (not res!160390) (not e!190701))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302751 (= res!160390 (validKeyInArray!0 k!2441))))

(assert (= (and start!30274 res!160394) b!302746))

(assert (= (and b!302746 res!160388) b!302751))

(assert (= (and b!302751 res!160390) b!302748))

(assert (= (and b!302748 res!160389) b!302744))

(assert (= (and b!302744 res!160395) b!302749))

(assert (= (and b!302749 res!160393) b!302745))

(assert (= (and b!302745 res!160391) b!302747))

(assert (= (and b!302747 res!160392) b!302750))

(declare-fun m!314225 () Bool)

(assert (=> b!302745 m!314225))

(assert (=> b!302745 m!314225))

(declare-fun m!314227 () Bool)

(assert (=> b!302745 m!314227))

(declare-fun m!314229 () Bool)

(assert (=> b!302744 m!314229))

(declare-fun m!314231 () Bool)

(assert (=> b!302751 m!314231))

(declare-fun m!314233 () Bool)

(assert (=> b!302747 m!314233))

(declare-fun m!314235 () Bool)

(assert (=> b!302748 m!314235))

(declare-fun m!314237 () Bool)

(assert (=> b!302749 m!314237))

(declare-fun m!314239 () Bool)

(assert (=> b!302750 m!314239))

(declare-fun m!314241 () Bool)

(assert (=> start!30274 m!314241))

(declare-fun m!314243 () Bool)

(assert (=> start!30274 m!314243))

(push 1)

(assert (not b!302744))

(assert (not start!30274))

(assert (not b!302751))

(assert (not b!302745))

(assert (not b!302748))

(assert (not b!302750))

(assert (not b!302749))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

