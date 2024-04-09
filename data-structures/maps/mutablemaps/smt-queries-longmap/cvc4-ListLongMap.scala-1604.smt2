; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30304 () Bool)

(assert start!30304)

(declare-fun b!303131 () Bool)

(declare-fun res!160780 () Bool)

(declare-fun e!190819 () Bool)

(assert (=> b!303131 (=> (not res!160780) (not e!190819))))

(declare-datatypes ((array!15408 0))(
  ( (array!15409 (arr!7290 (Array (_ BitVec 32) (_ BitVec 64))) (size!7642 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15408)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15408 (_ BitVec 32)) Bool)

(assert (=> b!303131 (= res!160780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303132 () Bool)

(declare-fun res!160779 () Bool)

(assert (=> b!303132 (=> (not res!160779) (not e!190819))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303132 (= res!160779 (validKeyInArray!0 k!2441))))

(declare-fun res!160782 () Bool)

(assert (=> start!30304 (=> (not res!160782) (not e!190819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30304 (= res!160782 (validMask!0 mask!3709))))

(assert (=> start!30304 e!190819))

(declare-fun array_inv!5244 (array!15408) Bool)

(assert (=> start!30304 (array_inv!5244 a!3293)))

(assert (=> start!30304 true))

(declare-fun b!303133 () Bool)

(declare-fun res!160778 () Bool)

(assert (=> b!303133 (=> (not res!160778) (not e!190819))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!303133 (= res!160778 (and (= (size!7642 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7642 a!3293))))))

(declare-fun b!303134 () Bool)

(declare-fun res!160781 () Bool)

(assert (=> b!303134 (=> (not res!160781) (not e!190819))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303134 (= res!160781 (and (= (select (arr!7290 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7642 a!3293))))))

(declare-fun b!303135 () Bool)

(declare-fun res!160775 () Bool)

(assert (=> b!303135 (=> (not res!160775) (not e!190819))))

(declare-datatypes ((SeekEntryResult!2441 0))(
  ( (MissingZero!2441 (index!11940 (_ BitVec 32))) (Found!2441 (index!11941 (_ BitVec 32))) (Intermediate!2441 (undefined!3253 Bool) (index!11942 (_ BitVec 32)) (x!30165 (_ BitVec 32))) (Undefined!2441) (MissingVacant!2441 (index!11943 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15408 (_ BitVec 32)) SeekEntryResult!2441)

(assert (=> b!303135 (= res!160775 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2441 i!1240)))))

(declare-fun b!303136 () Bool)

(declare-fun res!160777 () Bool)

(assert (=> b!303136 (=> (not res!160777) (not e!190819))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15408 (_ BitVec 32)) SeekEntryResult!2441)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303136 (= res!160777 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2441 false resIndex!52 resX!52)))))

(declare-fun b!303137 () Bool)

(declare-fun res!160776 () Bool)

(assert (=> b!303137 (=> (not res!160776) (not e!190819))))

(declare-fun arrayContainsKey!0 (array!15408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303137 (= res!160776 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303138 () Bool)

(assert (=> b!303138 (= e!190819 false)))

(declare-fun lt!150155 () SeekEntryResult!2441)

(assert (=> b!303138 (= lt!150155 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!30304 res!160782) b!303133))

(assert (= (and b!303133 res!160778) b!303132))

(assert (= (and b!303132 res!160779) b!303137))

(assert (= (and b!303137 res!160776) b!303135))

(assert (= (and b!303135 res!160775) b!303131))

(assert (= (and b!303131 res!160780) b!303136))

(assert (= (and b!303136 res!160777) b!303134))

(assert (= (and b!303134 res!160781) b!303138))

(declare-fun m!314543 () Bool)

(assert (=> b!303132 m!314543))

(declare-fun m!314545 () Bool)

(assert (=> b!303138 m!314545))

(declare-fun m!314547 () Bool)

(assert (=> b!303134 m!314547))

(declare-fun m!314549 () Bool)

(assert (=> b!303131 m!314549))

(declare-fun m!314551 () Bool)

(assert (=> b!303135 m!314551))

(declare-fun m!314553 () Bool)

(assert (=> start!30304 m!314553))

(declare-fun m!314555 () Bool)

(assert (=> start!30304 m!314555))

(declare-fun m!314557 () Bool)

(assert (=> b!303136 m!314557))

(assert (=> b!303136 m!314557))

(declare-fun m!314559 () Bool)

(assert (=> b!303136 m!314559))

(declare-fun m!314561 () Bool)

(assert (=> b!303137 m!314561))

(push 1)

(assert (not b!303137))

(assert (not b!303131))

(assert (not b!303135))

(assert (not b!303138))

(assert (not b!303132))

(assert (not start!30304))

(assert (not b!303136))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

