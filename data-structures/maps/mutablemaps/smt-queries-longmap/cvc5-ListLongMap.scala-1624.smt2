; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30528 () Bool)

(assert start!30528)

(declare-fun b!305200 () Bool)

(declare-fun res!162550 () Bool)

(declare-fun e!191693 () Bool)

(assert (=> b!305200 (=> (not res!162550) (not e!191693))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305200 (= res!162550 (validKeyInArray!0 k!2441))))

(declare-fun res!162548 () Bool)

(assert (=> start!30528 (=> (not res!162548) (not e!191693))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30528 (= res!162548 (validMask!0 mask!3709))))

(assert (=> start!30528 e!191693))

(declare-datatypes ((array!15530 0))(
  ( (array!15531 (arr!7348 (Array (_ BitVec 32) (_ BitVec 64))) (size!7700 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15530)

(declare-fun array_inv!5302 (array!15530) Bool)

(assert (=> start!30528 (array_inv!5302 a!3293)))

(assert (=> start!30528 true))

(declare-fun b!305201 () Bool)

(declare-fun res!162546 () Bool)

(assert (=> b!305201 (=> (not res!162546) (not e!191693))))

(declare-fun arrayContainsKey!0 (array!15530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305201 (= res!162546 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305202 () Bool)

(declare-fun res!162552 () Bool)

(assert (=> b!305202 (=> (not res!162552) (not e!191693))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2499 0))(
  ( (MissingZero!2499 (index!12172 (_ BitVec 32))) (Found!2499 (index!12173 (_ BitVec 32))) (Intermediate!2499 (undefined!3311 Bool) (index!12174 (_ BitVec 32)) (x!30401 (_ BitVec 32))) (Undefined!2499) (MissingVacant!2499 (index!12175 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15530 (_ BitVec 32)) SeekEntryResult!2499)

(assert (=> b!305202 (= res!162552 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2499 i!1240)))))

(declare-fun b!305203 () Bool)

(declare-fun res!162545 () Bool)

(assert (=> b!305203 (=> (not res!162545) (not e!191693))))

(assert (=> b!305203 (= res!162545 (and (= (size!7700 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7700 a!3293))))))

(declare-fun b!305204 () Bool)

(declare-fun res!162551 () Bool)

(declare-fun e!191694 () Bool)

(assert (=> b!305204 (=> (not res!162551) (not e!191694))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!305204 (= res!162551 (and (= (select (arr!7348 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7700 a!3293))))))

(declare-fun b!305205 () Bool)

(declare-fun e!191692 () Bool)

(assert (=> b!305205 (= e!191694 e!191692)))

(declare-fun res!162547 () Bool)

(assert (=> b!305205 (=> (not res!162547) (not e!191692))))

(declare-fun lt!150700 () SeekEntryResult!2499)

(declare-fun lt!150701 () SeekEntryResult!2499)

(assert (=> b!305205 (= res!162547 (and (= lt!150700 lt!150701) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7348 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7348 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7348 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15530 (_ BitVec 32)) SeekEntryResult!2499)

(assert (=> b!305205 (= lt!150700 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!305206 () Bool)

(assert (=> b!305206 (= e!191693 e!191694)))

(declare-fun res!162544 () Bool)

(assert (=> b!305206 (=> (not res!162544) (not e!191694))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305206 (= res!162544 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150701))))

(assert (=> b!305206 (= lt!150701 (Intermediate!2499 false resIndex!52 resX!52))))

(declare-fun b!305207 () Bool)

(declare-fun res!162549 () Bool)

(assert (=> b!305207 (=> (not res!162549) (not e!191693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15530 (_ BitVec 32)) Bool)

(assert (=> b!305207 (= res!162549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305208 () Bool)

(assert (=> b!305208 (= e!191692 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305208 (= lt!150700 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(assert (= (and start!30528 res!162548) b!305203))

(assert (= (and b!305203 res!162545) b!305200))

(assert (= (and b!305200 res!162550) b!305201))

(assert (= (and b!305201 res!162546) b!305202))

(assert (= (and b!305202 res!162552) b!305207))

(assert (= (and b!305207 res!162549) b!305206))

(assert (= (and b!305206 res!162544) b!305204))

(assert (= (and b!305204 res!162551) b!305205))

(assert (= (and b!305205 res!162547) b!305208))

(declare-fun m!316207 () Bool)

(assert (=> b!305204 m!316207))

(declare-fun m!316209 () Bool)

(assert (=> start!30528 m!316209))

(declare-fun m!316211 () Bool)

(assert (=> start!30528 m!316211))

(declare-fun m!316213 () Bool)

(assert (=> b!305201 m!316213))

(declare-fun m!316215 () Bool)

(assert (=> b!305205 m!316215))

(declare-fun m!316217 () Bool)

(assert (=> b!305205 m!316217))

(declare-fun m!316219 () Bool)

(assert (=> b!305200 m!316219))

(declare-fun m!316221 () Bool)

(assert (=> b!305202 m!316221))

(declare-fun m!316223 () Bool)

(assert (=> b!305206 m!316223))

(assert (=> b!305206 m!316223))

(declare-fun m!316225 () Bool)

(assert (=> b!305206 m!316225))

(declare-fun m!316227 () Bool)

(assert (=> b!305207 m!316227))

(declare-fun m!316229 () Bool)

(assert (=> b!305208 m!316229))

(assert (=> b!305208 m!316229))

(declare-fun m!316231 () Bool)

(assert (=> b!305208 m!316231))

(push 1)

