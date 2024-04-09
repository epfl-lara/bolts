; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30658 () Bool)

(assert start!30658)

(declare-fun b!307459 () Bool)

(declare-fun res!164374 () Bool)

(declare-fun e!192465 () Bool)

(assert (=> b!307459 (=> (not res!164374) (not e!192465))))

(declare-datatypes ((array!15660 0))(
  ( (array!15661 (arr!7413 (Array (_ BitVec 32) (_ BitVec 64))) (size!7765 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15660)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307459 (= res!164374 (and (= (size!7765 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7765 a!3293))))))

(declare-fun b!307460 () Bool)

(declare-fun e!192466 () Bool)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307460 (= e!192466 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7413 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!307462 () Bool)

(declare-fun res!164377 () Bool)

(assert (=> b!307462 (=> (not res!164377) (not e!192466))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!307462 (= res!164377 (and (= (select (arr!7413 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7765 a!3293))))))

(declare-fun b!307463 () Bool)

(declare-fun res!164376 () Bool)

(assert (=> b!307463 (=> (not res!164376) (not e!192465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15660 (_ BitVec 32)) Bool)

(assert (=> b!307463 (= res!164376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307464 () Bool)

(declare-fun res!164372 () Bool)

(assert (=> b!307464 (=> (not res!164372) (not e!192465))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307464 (= res!164372 (validKeyInArray!0 k!2441))))

(declare-fun b!307465 () Bool)

(declare-fun res!164379 () Bool)

(assert (=> b!307465 (=> (not res!164379) (not e!192466))))

(declare-datatypes ((SeekEntryResult!2564 0))(
  ( (MissingZero!2564 (index!12432 (_ BitVec 32))) (Found!2564 (index!12433 (_ BitVec 32))) (Intermediate!2564 (undefined!3376 Bool) (index!12434 (_ BitVec 32)) (x!30634 (_ BitVec 32))) (Undefined!2564) (MissingVacant!2564 (index!12435 (_ BitVec 32))) )
))
(declare-fun lt!151118 () SeekEntryResult!2564)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15660 (_ BitVec 32)) SeekEntryResult!2564)

(assert (=> b!307465 (= res!164379 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151118))))

(declare-fun b!307466 () Bool)

(declare-fun res!164371 () Bool)

(assert (=> b!307466 (=> (not res!164371) (not e!192465))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15660 (_ BitVec 32)) SeekEntryResult!2564)

(assert (=> b!307466 (= res!164371 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2564 i!1240)))))

(declare-fun b!307467 () Bool)

(declare-fun res!164375 () Bool)

(assert (=> b!307467 (=> (not res!164375) (not e!192465))))

(declare-fun arrayContainsKey!0 (array!15660 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307467 (= res!164375 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307461 () Bool)

(assert (=> b!307461 (= e!192465 e!192466)))

(declare-fun res!164378 () Bool)

(assert (=> b!307461 (=> (not res!164378) (not e!192466))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307461 (= res!164378 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151118))))

(assert (=> b!307461 (= lt!151118 (Intermediate!2564 false resIndex!52 resX!52))))

(declare-fun res!164373 () Bool)

(assert (=> start!30658 (=> (not res!164373) (not e!192465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30658 (= res!164373 (validMask!0 mask!3709))))

(assert (=> start!30658 e!192465))

(declare-fun array_inv!5367 (array!15660) Bool)

(assert (=> start!30658 (array_inv!5367 a!3293)))

(assert (=> start!30658 true))

(assert (= (and start!30658 res!164373) b!307459))

(assert (= (and b!307459 res!164374) b!307464))

(assert (= (and b!307464 res!164372) b!307467))

(assert (= (and b!307467 res!164375) b!307466))

(assert (= (and b!307466 res!164371) b!307463))

(assert (= (and b!307463 res!164376) b!307461))

(assert (= (and b!307461 res!164378) b!307462))

(assert (= (and b!307462 res!164377) b!307465))

(assert (= (and b!307465 res!164379) b!307460))

(declare-fun m!317769 () Bool)

(assert (=> b!307463 m!317769))

(declare-fun m!317771 () Bool)

(assert (=> start!30658 m!317771))

(declare-fun m!317773 () Bool)

(assert (=> start!30658 m!317773))

(declare-fun m!317775 () Bool)

(assert (=> b!307466 m!317775))

(declare-fun m!317777 () Bool)

(assert (=> b!307462 m!317777))

(declare-fun m!317779 () Bool)

(assert (=> b!307461 m!317779))

(assert (=> b!307461 m!317779))

(declare-fun m!317781 () Bool)

(assert (=> b!307461 m!317781))

(declare-fun m!317783 () Bool)

(assert (=> b!307464 m!317783))

(declare-fun m!317785 () Bool)

(assert (=> b!307467 m!317785))

(declare-fun m!317787 () Bool)

(assert (=> b!307460 m!317787))

(declare-fun m!317789 () Bool)

(assert (=> b!307465 m!317789))

(push 1)

(assert (not b!307465))

(assert (not b!307461))

(assert (not start!30658))

(assert (not b!307467))

(assert (not b!307463))

(assert (not b!307464))

(assert (not b!307466))

(check-sat)

(pop 1)

(push 1)

(check-sat)

