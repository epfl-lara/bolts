; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31078 () Bool)

(assert start!31078)

(declare-fun b!312444 () Bool)

(declare-fun e!194815 () Bool)

(declare-fun e!194814 () Bool)

(assert (=> b!312444 (= e!194815 e!194814)))

(declare-fun res!169058 () Bool)

(assert (=> b!312444 (=> (not res!169058) (not e!194814))))

(declare-datatypes ((SeekEntryResult!2720 0))(
  ( (MissingZero!2720 (index!13056 (_ BitVec 32))) (Found!2720 (index!13057 (_ BitVec 32))) (Intermediate!2720 (undefined!3532 Bool) (index!13058 (_ BitVec 32)) (x!31224 (_ BitVec 32))) (Undefined!2720) (MissingVacant!2720 (index!13059 (_ BitVec 32))) )
))
(declare-fun lt!153154 () SeekEntryResult!2720)

(declare-datatypes ((array!15978 0))(
  ( (array!15979 (arr!7569 (Array (_ BitVec 32) (_ BitVec 64))) (size!7921 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15978)

(declare-fun lt!153161 () SeekEntryResult!2720)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312444 (= res!169058 (and (= lt!153154 lt!153161) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7569 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15978 (_ BitVec 32)) SeekEntryResult!2720)

(assert (=> b!312444 (= lt!153154 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!312445 () Bool)

(declare-fun res!169060 () Bool)

(declare-fun e!194811 () Bool)

(assert (=> b!312445 (=> (not res!169060) (not e!194811))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!312445 (= res!169060 (and (= (size!7921 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7921 a!3293))))))

(declare-fun res!169062 () Bool)

(assert (=> start!31078 (=> (not res!169062) (not e!194811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31078 (= res!169062 (validMask!0 mask!3709))))

(assert (=> start!31078 e!194811))

(declare-fun array_inv!5523 (array!15978) Bool)

(assert (=> start!31078 (array_inv!5523 a!3293)))

(assert (=> start!31078 true))

(declare-fun b!312446 () Bool)

(declare-fun res!169061 () Bool)

(assert (=> b!312446 (=> (not res!169061) (not e!194815))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!312446 (= res!169061 (and (= (select (arr!7569 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7921 a!3293))))))

(declare-fun b!312447 () Bool)

(declare-fun e!194812 () Bool)

(assert (=> b!312447 (= e!194814 (not e!194812))))

(declare-fun res!169063 () Bool)

(assert (=> b!312447 (=> res!169063 e!194812)))

(declare-fun lt!153158 () SeekEntryResult!2720)

(declare-fun lt!153159 () (_ BitVec 32))

(assert (=> b!312447 (= res!169063 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!153159 #b00000000000000000000000000000000) (bvsge lt!153159 (size!7921 a!3293)) (not (= lt!153158 lt!153161))))))

(declare-fun lt!153156 () SeekEntryResult!2720)

(declare-fun lt!153160 () SeekEntryResult!2720)

(assert (=> b!312447 (= lt!153156 lt!153160)))

(declare-fun lt!153155 () array!15978)

(assert (=> b!312447 (= lt!153160 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153159 k!2441 lt!153155 mask!3709))))

(assert (=> b!312447 (= lt!153156 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!153155 mask!3709))))

(assert (=> b!312447 (= lt!153155 (array!15979 (store (arr!7569 a!3293) i!1240 k!2441) (size!7921 a!3293)))))

(assert (=> b!312447 (= lt!153154 lt!153158)))

(assert (=> b!312447 (= lt!153158 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153159 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312447 (= lt!153159 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312448 () Bool)

(declare-fun res!169057 () Bool)

(assert (=> b!312448 (=> (not res!169057) (not e!194811))))

(declare-fun arrayContainsKey!0 (array!15978 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312448 (= res!169057 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312449 () Bool)

(declare-fun res!169059 () Bool)

(assert (=> b!312449 (=> (not res!169059) (not e!194811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15978 (_ BitVec 32)) Bool)

(assert (=> b!312449 (= res!169059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312450 () Bool)

(declare-fun res!169065 () Bool)

(assert (=> b!312450 (=> (not res!169065) (not e!194811))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15978 (_ BitVec 32)) SeekEntryResult!2720)

(assert (=> b!312450 (= res!169065 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2720 i!1240)))))

(declare-fun b!312451 () Bool)

(assert (=> b!312451 (= e!194811 e!194815)))

(declare-fun res!169056 () Bool)

(assert (=> b!312451 (=> (not res!169056) (not e!194815))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312451 (= res!169056 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153161))))

(assert (=> b!312451 (= lt!153161 (Intermediate!2720 false resIndex!52 resX!52))))

(declare-fun b!312452 () Bool)

(assert (=> b!312452 (= e!194812 (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(assert (=> b!312452 (= lt!153160 lt!153158)))

(declare-datatypes ((Unit!9638 0))(
  ( (Unit!9639) )
))
(declare-fun lt!153157 () Unit!9638)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15978 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9638)

(assert (=> b!312452 (= lt!153157 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!153159 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312453 () Bool)

(declare-fun res!169064 () Bool)

(assert (=> b!312453 (=> (not res!169064) (not e!194811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312453 (= res!169064 (validKeyInArray!0 k!2441))))

(assert (= (and start!31078 res!169062) b!312445))

(assert (= (and b!312445 res!169060) b!312453))

(assert (= (and b!312453 res!169064) b!312448))

(assert (= (and b!312448 res!169057) b!312450))

(assert (= (and b!312450 res!169065) b!312449))

(assert (= (and b!312449 res!169059) b!312451))

(assert (= (and b!312451 res!169056) b!312446))

(assert (= (and b!312446 res!169061) b!312444))

(assert (= (and b!312444 res!169058) b!312447))

(assert (= (and b!312447 (not res!169063)) b!312452))

(declare-fun m!322599 () Bool)

(assert (=> b!312449 m!322599))

(declare-fun m!322601 () Bool)

(assert (=> b!312444 m!322601))

(declare-fun m!322603 () Bool)

(assert (=> b!312444 m!322603))

(declare-fun m!322605 () Bool)

(assert (=> b!312450 m!322605))

(declare-fun m!322607 () Bool)

(assert (=> b!312447 m!322607))

(declare-fun m!322609 () Bool)

(assert (=> b!312447 m!322609))

(declare-fun m!322611 () Bool)

(assert (=> b!312447 m!322611))

(declare-fun m!322613 () Bool)

(assert (=> b!312447 m!322613))

(declare-fun m!322615 () Bool)

(assert (=> b!312447 m!322615))

(declare-fun m!322617 () Bool)

(assert (=> b!312451 m!322617))

(assert (=> b!312451 m!322617))

(declare-fun m!322619 () Bool)

(assert (=> b!312451 m!322619))

(declare-fun m!322621 () Bool)

(assert (=> start!31078 m!322621))

(declare-fun m!322623 () Bool)

(assert (=> start!31078 m!322623))

(declare-fun m!322625 () Bool)

(assert (=> b!312446 m!322625))

(declare-fun m!322627 () Bool)

(assert (=> b!312448 m!322627))

(declare-fun m!322629 () Bool)

(assert (=> b!312452 m!322629))

(declare-fun m!322631 () Bool)

(assert (=> b!312453 m!322631))

(push 1)

(assert (not b!312449))

(assert (not b!312444))

(assert (not b!312450))

(assert (not b!312452))

(assert (not b!312447))

(assert (not b!312453))

(assert (not b!312448))

(assert (not b!312451))

(assert (not start!31078))

(check-sat)

(pop 1)

(push 1)

(check-sat)

