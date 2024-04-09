; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30426 () Bool)

(assert start!30426)

(declare-fun b!304309 () Bool)

(declare-fun res!161814 () Bool)

(declare-fun e!191258 () Bool)

(assert (=> b!304309 (=> (not res!161814) (not e!191258))))

(declare-datatypes ((array!15479 0))(
  ( (array!15480 (arr!7324 (Array (_ BitVec 32) (_ BitVec 64))) (size!7676 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15479)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304309 (= res!161814 (and (= (size!7676 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7676 a!3293))))))

(declare-fun b!304310 () Bool)

(declare-fun res!161815 () Bool)

(assert (=> b!304310 (=> (not res!161815) (not e!191258))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304310 (= res!161815 (validKeyInArray!0 k!2441))))

(declare-fun res!161816 () Bool)

(assert (=> start!30426 (=> (not res!161816) (not e!191258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30426 (= res!161816 (validMask!0 mask!3709))))

(assert (=> start!30426 e!191258))

(declare-fun array_inv!5278 (array!15479) Bool)

(assert (=> start!30426 (array_inv!5278 a!3293)))

(assert (=> start!30426 true))

(declare-fun b!304311 () Bool)

(declare-fun e!191260 () Bool)

(assert (=> b!304311 (= e!191260 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!2475 0))(
  ( (MissingZero!2475 (index!12076 (_ BitVec 32))) (Found!2475 (index!12077 (_ BitVec 32))) (Intermediate!2475 (undefined!3287 Bool) (index!12078 (_ BitVec 32)) (x!30304 (_ BitVec 32))) (Undefined!2475) (MissingVacant!2475 (index!12079 (_ BitVec 32))) )
))
(declare-fun lt!150427 () SeekEntryResult!2475)

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15479 (_ BitVec 32)) SeekEntryResult!2475)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304311 (= lt!150427 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!304312 () Bool)

(declare-fun res!161812 () Bool)

(assert (=> b!304312 (=> (not res!161812) (not e!191258))))

(declare-fun arrayContainsKey!0 (array!15479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304312 (= res!161812 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304313 () Bool)

(declare-fun res!161819 () Bool)

(declare-fun e!191257 () Bool)

(assert (=> b!304313 (=> (not res!161819) (not e!191257))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!304313 (= res!161819 (and (= (select (arr!7324 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7676 a!3293))))))

(declare-fun b!304314 () Bool)

(assert (=> b!304314 (= e!191257 e!191260)))

(declare-fun res!161817 () Bool)

(assert (=> b!304314 (=> (not res!161817) (not e!191260))))

(declare-fun lt!150428 () SeekEntryResult!2475)

(assert (=> b!304314 (= res!161817 (and (= lt!150427 lt!150428) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7324 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7324 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7324 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304314 (= lt!150427 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!304315 () Bool)

(declare-fun res!161820 () Bool)

(assert (=> b!304315 (=> (not res!161820) (not e!191258))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15479 (_ BitVec 32)) SeekEntryResult!2475)

(assert (=> b!304315 (= res!161820 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2475 i!1240)))))

(declare-fun b!304316 () Bool)

(declare-fun res!161818 () Bool)

(assert (=> b!304316 (=> (not res!161818) (not e!191258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15479 (_ BitVec 32)) Bool)

(assert (=> b!304316 (= res!161818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304317 () Bool)

(assert (=> b!304317 (= e!191258 e!191257)))

(declare-fun res!161813 () Bool)

(assert (=> b!304317 (=> (not res!161813) (not e!191257))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304317 (= res!161813 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150428))))

(assert (=> b!304317 (= lt!150428 (Intermediate!2475 false resIndex!52 resX!52))))

(assert (= (and start!30426 res!161816) b!304309))

(assert (= (and b!304309 res!161814) b!304310))

(assert (= (and b!304310 res!161815) b!304312))

(assert (= (and b!304312 res!161812) b!304315))

(assert (= (and b!304315 res!161820) b!304316))

(assert (= (and b!304316 res!161818) b!304317))

(assert (= (and b!304317 res!161813) b!304313))

(assert (= (and b!304313 res!161819) b!304314))

(assert (= (and b!304314 res!161817) b!304311))

(declare-fun m!315445 () Bool)

(assert (=> b!304310 m!315445))

(declare-fun m!315447 () Bool)

(assert (=> start!30426 m!315447))

(declare-fun m!315449 () Bool)

(assert (=> start!30426 m!315449))

(declare-fun m!315451 () Bool)

(assert (=> b!304317 m!315451))

(assert (=> b!304317 m!315451))

(declare-fun m!315453 () Bool)

(assert (=> b!304317 m!315453))

(declare-fun m!315455 () Bool)

(assert (=> b!304312 m!315455))

(declare-fun m!315457 () Bool)

(assert (=> b!304311 m!315457))

(assert (=> b!304311 m!315457))

(declare-fun m!315459 () Bool)

(assert (=> b!304311 m!315459))

(declare-fun m!315461 () Bool)

(assert (=> b!304314 m!315461))

(declare-fun m!315463 () Bool)

(assert (=> b!304314 m!315463))

(declare-fun m!315465 () Bool)

(assert (=> b!304316 m!315465))

(declare-fun m!315467 () Bool)

(assert (=> b!304315 m!315467))

(declare-fun m!315469 () Bool)

(assert (=> b!304313 m!315469))

(push 1)

(assert (not start!30426))

(assert (not b!304314))

