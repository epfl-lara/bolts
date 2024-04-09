; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30442 () Bool)

(assert start!30442)

(declare-fun b!304525 () Bool)

(declare-fun e!191354 () Bool)

(declare-fun e!191355 () Bool)

(assert (=> b!304525 (= e!191354 e!191355)))

(declare-fun res!162030 () Bool)

(assert (=> b!304525 (=> (not res!162030) (not e!191355))))

(declare-datatypes ((SeekEntryResult!2483 0))(
  ( (MissingZero!2483 (index!12108 (_ BitVec 32))) (Found!2483 (index!12109 (_ BitVec 32))) (Intermediate!2483 (undefined!3295 Bool) (index!12110 (_ BitVec 32)) (x!30328 (_ BitVec 32))) (Undefined!2483) (MissingVacant!2483 (index!12111 (_ BitVec 32))) )
))
(declare-fun lt!150476 () SeekEntryResult!2483)

(declare-datatypes ((array!15495 0))(
  ( (array!15496 (arr!7332 (Array (_ BitVec 32) (_ BitVec 64))) (size!7684 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15495)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15495 (_ BitVec 32)) SeekEntryResult!2483)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304525 (= res!162030 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150476))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!304525 (= lt!150476 (Intermediate!2483 false resIndex!52 resX!52))))

(declare-fun b!304526 () Bool)

(declare-fun res!162029 () Bool)

(assert (=> b!304526 (=> (not res!162029) (not e!191354))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304526 (= res!162029 (validKeyInArray!0 k!2441))))

(declare-fun e!191353 () Bool)

(declare-fun b!304527 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!304527 (= e!191353 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun lt!150475 () SeekEntryResult!2483)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304527 (= lt!150475 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!304528 () Bool)

(assert (=> b!304528 (= e!191355 e!191353)))

(declare-fun res!162033 () Bool)

(assert (=> b!304528 (=> (not res!162033) (not e!191353))))

(assert (=> b!304528 (= res!162033 (and (= lt!150475 lt!150476) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7332 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7332 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7332 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304528 (= lt!150475 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!304529 () Bool)

(declare-fun res!162032 () Bool)

(assert (=> b!304529 (=> (not res!162032) (not e!191354))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15495 (_ BitVec 32)) SeekEntryResult!2483)

(assert (=> b!304529 (= res!162032 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2483 i!1240)))))

(declare-fun b!304530 () Bool)

(declare-fun res!162035 () Bool)

(assert (=> b!304530 (=> (not res!162035) (not e!191354))))

(declare-fun arrayContainsKey!0 (array!15495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304530 (= res!162035 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!162036 () Bool)

(assert (=> start!30442 (=> (not res!162036) (not e!191354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30442 (= res!162036 (validMask!0 mask!3709))))

(assert (=> start!30442 e!191354))

(declare-fun array_inv!5286 (array!15495) Bool)

(assert (=> start!30442 (array_inv!5286 a!3293)))

(assert (=> start!30442 true))

(declare-fun b!304531 () Bool)

(declare-fun res!162034 () Bool)

(assert (=> b!304531 (=> (not res!162034) (not e!191355))))

(assert (=> b!304531 (= res!162034 (and (= (select (arr!7332 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7684 a!3293))))))

(declare-fun b!304532 () Bool)

(declare-fun res!162028 () Bool)

(assert (=> b!304532 (=> (not res!162028) (not e!191354))))

(assert (=> b!304532 (= res!162028 (and (= (size!7684 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7684 a!3293))))))

(declare-fun b!304533 () Bool)

(declare-fun res!162031 () Bool)

(assert (=> b!304533 (=> (not res!162031) (not e!191354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15495 (_ BitVec 32)) Bool)

(assert (=> b!304533 (= res!162031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30442 res!162036) b!304532))

(assert (= (and b!304532 res!162028) b!304526))

(assert (= (and b!304526 res!162029) b!304530))

(assert (= (and b!304530 res!162035) b!304529))

(assert (= (and b!304529 res!162032) b!304533))

(assert (= (and b!304533 res!162031) b!304525))

(assert (= (and b!304525 res!162030) b!304531))

(assert (= (and b!304531 res!162034) b!304528))

(assert (= (and b!304528 res!162033) b!304527))

(declare-fun m!315653 () Bool)

(assert (=> b!304528 m!315653))

(declare-fun m!315655 () Bool)

(assert (=> b!304528 m!315655))

(declare-fun m!315657 () Bool)

(assert (=> start!30442 m!315657))

(declare-fun m!315659 () Bool)

(assert (=> start!30442 m!315659))

(declare-fun m!315661 () Bool)

(assert (=> b!304526 m!315661))

(declare-fun m!315663 () Bool)

(assert (=> b!304527 m!315663))

(assert (=> b!304527 m!315663))

(declare-fun m!315665 () Bool)

(assert (=> b!304527 m!315665))

(declare-fun m!315667 () Bool)

(assert (=> b!304525 m!315667))

(assert (=> b!304525 m!315667))

(declare-fun m!315669 () Bool)

(assert (=> b!304525 m!315669))

(declare-fun m!315671 () Bool)

(assert (=> b!304529 m!315671))

(declare-fun m!315673 () Bool)

(assert (=> b!304533 m!315673))

(declare-fun m!315675 () Bool)

(assert (=> b!304530 m!315675))

(declare-fun m!315677 () Bool)

(assert (=> b!304531 m!315677))

(push 1)

(assert (not b!304525))

(assert (not b!304529))

(assert (not start!30442))

(assert (not b!304526))

(assert (not b!304527))

(assert (not b!304528))

(assert (not b!304533))

(assert (not b!304530))

(check-sat)

