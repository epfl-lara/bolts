; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30522 () Bool)

(assert start!30522)

(declare-fun b!305119 () Bool)

(declare-fun e!191656 () Bool)

(declare-fun e!191657 () Bool)

(assert (=> b!305119 (= e!191656 e!191657)))

(declare-fun res!162466 () Bool)

(assert (=> b!305119 (=> (not res!162466) (not e!191657))))

(declare-datatypes ((array!15524 0))(
  ( (array!15525 (arr!7345 (Array (_ BitVec 32) (_ BitVec 64))) (size!7697 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15524)

(declare-datatypes ((SeekEntryResult!2496 0))(
  ( (MissingZero!2496 (index!12160 (_ BitVec 32))) (Found!2496 (index!12161 (_ BitVec 32))) (Intermediate!2496 (undefined!3308 Bool) (index!12162 (_ BitVec 32)) (x!30390 (_ BitVec 32))) (Undefined!2496) (MissingVacant!2496 (index!12163 (_ BitVec 32))) )
))
(declare-fun lt!150677 () SeekEntryResult!2496)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!150676 () SeekEntryResult!2496)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!305119 (= res!162466 (and (= lt!150677 lt!150676) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7345 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7345 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7345 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15524 (_ BitVec 32)) SeekEntryResult!2496)

(assert (=> b!305119 (= lt!150677 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun lt!150675 () (_ BitVec 32))

(declare-fun b!305120 () Bool)

(assert (=> b!305120 (= e!191657 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt lt!150675 #b00000000000000000000000000000000) (bvsge lt!150675 (bvadd #b00000000000000000000000000000001 mask!3709)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000)))))))

(assert (=> b!305120 (= lt!150677 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!150675 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305120 (= lt!150675 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!305121 () Bool)

(declare-fun res!162464 () Bool)

(declare-fun e!191659 () Bool)

(assert (=> b!305121 (=> (not res!162464) (not e!191659))))

(declare-fun arrayContainsKey!0 (array!15524 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305121 (= res!162464 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305122 () Bool)

(declare-fun res!162463 () Bool)

(assert (=> b!305122 (=> (not res!162463) (not e!191659))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!305122 (= res!162463 (and (= (size!7697 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7697 a!3293))))))

(declare-fun b!305123 () Bool)

(declare-fun res!162467 () Bool)

(assert (=> b!305123 (=> (not res!162467) (not e!191659))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15524 (_ BitVec 32)) SeekEntryResult!2496)

(assert (=> b!305123 (= res!162467 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2496 i!1240)))))

(declare-fun res!162469 () Bool)

(assert (=> start!30522 (=> (not res!162469) (not e!191659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30522 (= res!162469 (validMask!0 mask!3709))))

(assert (=> start!30522 e!191659))

(declare-fun array_inv!5299 (array!15524) Bool)

(assert (=> start!30522 (array_inv!5299 a!3293)))

(assert (=> start!30522 true))

(declare-fun b!305124 () Bool)

(assert (=> b!305124 (= e!191659 e!191656)))

(declare-fun res!162468 () Bool)

(assert (=> b!305124 (=> (not res!162468) (not e!191656))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305124 (= res!162468 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150676))))

(assert (=> b!305124 (= lt!150676 (Intermediate!2496 false resIndex!52 resX!52))))

(declare-fun b!305125 () Bool)

(declare-fun res!162465 () Bool)

(assert (=> b!305125 (=> (not res!162465) (not e!191659))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305125 (= res!162465 (validKeyInArray!0 k!2441))))

(declare-fun b!305126 () Bool)

(declare-fun res!162470 () Bool)

(assert (=> b!305126 (=> (not res!162470) (not e!191659))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15524 (_ BitVec 32)) Bool)

(assert (=> b!305126 (= res!162470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305127 () Bool)

(declare-fun res!162471 () Bool)

(assert (=> b!305127 (=> (not res!162471) (not e!191656))))

(assert (=> b!305127 (= res!162471 (and (= (select (arr!7345 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7697 a!3293))))))

(assert (= (and start!30522 res!162469) b!305122))

(assert (= (and b!305122 res!162463) b!305125))

(assert (= (and b!305125 res!162465) b!305121))

(assert (= (and b!305121 res!162464) b!305123))

(assert (= (and b!305123 res!162467) b!305126))

(assert (= (and b!305126 res!162470) b!305124))

(assert (= (and b!305124 res!162468) b!305127))

(assert (= (and b!305127 res!162471) b!305119))

(assert (= (and b!305119 res!162466) b!305120))

(declare-fun m!316129 () Bool)

(assert (=> b!305126 m!316129))

(declare-fun m!316131 () Bool)

(assert (=> b!305119 m!316131))

(declare-fun m!316133 () Bool)

(assert (=> b!305119 m!316133))

(declare-fun m!316135 () Bool)

(assert (=> b!305127 m!316135))

(declare-fun m!316137 () Bool)

(assert (=> b!305124 m!316137))

(assert (=> b!305124 m!316137))

(declare-fun m!316139 () Bool)

(assert (=> b!305124 m!316139))

(declare-fun m!316141 () Bool)

(assert (=> b!305125 m!316141))

(declare-fun m!316143 () Bool)

(assert (=> b!305123 m!316143))

(declare-fun m!316145 () Bool)

(assert (=> start!30522 m!316145))

(declare-fun m!316147 () Bool)

(assert (=> start!30522 m!316147))

(declare-fun m!316149 () Bool)

(assert (=> b!305121 m!316149))

(declare-fun m!316151 () Bool)

(assert (=> b!305120 m!316151))

(declare-fun m!316153 () Bool)

(assert (=> b!305120 m!316153))

(push 1)

(assert (not b!305120))

(assert (not b!305119))

(assert (not b!305124))

(assert (not b!305123))

(assert (not b!305121))

(assert (not start!30522))

