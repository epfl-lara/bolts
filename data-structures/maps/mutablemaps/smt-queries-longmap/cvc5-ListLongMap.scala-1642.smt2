; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30636 () Bool)

(assert start!30636)

(declare-fun b!307178 () Bool)

(declare-fun e!192382 () Bool)

(assert (=> b!307178 (= e!192382 false)))

(declare-datatypes ((array!15638 0))(
  ( (array!15639 (arr!7402 (Array (_ BitVec 32) (_ BitVec 64))) (size!7754 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15638)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2553 0))(
  ( (MissingZero!2553 (index!12388 (_ BitVec 32))) (Found!2553 (index!12389 (_ BitVec 32))) (Intermediate!2553 (undefined!3365 Bool) (index!12390 (_ BitVec 32)) (x!30599 (_ BitVec 32))) (Undefined!2553) (MissingVacant!2553 (index!12391 (_ BitVec 32))) )
))
(declare-fun lt!151085 () SeekEntryResult!2553)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15638 (_ BitVec 32)) SeekEntryResult!2553)

(assert (=> b!307178 (= lt!151085 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!307180 () Bool)

(declare-fun res!164092 () Bool)

(assert (=> b!307180 (=> (not res!164092) (not e!192382))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307180 (= res!164092 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2553 false resIndex!52 resX!52)))))

(declare-fun b!307181 () Bool)

(declare-fun res!164093 () Bool)

(assert (=> b!307181 (=> (not res!164093) (not e!192382))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307181 (= res!164093 (and (= (select (arr!7402 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7754 a!3293))))))

(declare-fun b!307182 () Bool)

(declare-fun res!164091 () Bool)

(assert (=> b!307182 (=> (not res!164091) (not e!192382))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15638 (_ BitVec 32)) Bool)

(assert (=> b!307182 (= res!164091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307183 () Bool)

(declare-fun res!164096 () Bool)

(assert (=> b!307183 (=> (not res!164096) (not e!192382))))

(declare-fun arrayContainsKey!0 (array!15638 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307183 (= res!164096 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!164097 () Bool)

(assert (=> start!30636 (=> (not res!164097) (not e!192382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30636 (= res!164097 (validMask!0 mask!3709))))

(assert (=> start!30636 e!192382))

(declare-fun array_inv!5356 (array!15638) Bool)

(assert (=> start!30636 (array_inv!5356 a!3293)))

(assert (=> start!30636 true))

(declare-fun b!307179 () Bool)

(declare-fun res!164094 () Bool)

(assert (=> b!307179 (=> (not res!164094) (not e!192382))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307179 (= res!164094 (validKeyInArray!0 k!2441))))

(declare-fun b!307184 () Bool)

(declare-fun res!164090 () Bool)

(assert (=> b!307184 (=> (not res!164090) (not e!192382))))

(assert (=> b!307184 (= res!164090 (and (= (size!7754 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7754 a!3293))))))

(declare-fun b!307185 () Bool)

(declare-fun res!164095 () Bool)

(assert (=> b!307185 (=> (not res!164095) (not e!192382))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15638 (_ BitVec 32)) SeekEntryResult!2553)

(assert (=> b!307185 (= res!164095 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2553 i!1240)))))

(assert (= (and start!30636 res!164097) b!307184))

(assert (= (and b!307184 res!164090) b!307179))

(assert (= (and b!307179 res!164094) b!307183))

(assert (= (and b!307183 res!164096) b!307185))

(assert (= (and b!307185 res!164095) b!307182))

(assert (= (and b!307182 res!164091) b!307180))

(assert (= (and b!307180 res!164092) b!307181))

(assert (= (and b!307181 res!164093) b!307178))

(declare-fun m!317539 () Bool)

(assert (=> b!307182 m!317539))

(declare-fun m!317541 () Bool)

(assert (=> b!307178 m!317541))

(declare-fun m!317543 () Bool)

(assert (=> b!307183 m!317543))

(declare-fun m!317545 () Bool)

(assert (=> start!30636 m!317545))

(declare-fun m!317547 () Bool)

(assert (=> start!30636 m!317547))

(declare-fun m!317549 () Bool)

(assert (=> b!307179 m!317549))

(declare-fun m!317551 () Bool)

(assert (=> b!307181 m!317551))

(declare-fun m!317553 () Bool)

(assert (=> b!307180 m!317553))

(assert (=> b!307180 m!317553))

(declare-fun m!317555 () Bool)

(assert (=> b!307180 m!317555))

(declare-fun m!317557 () Bool)

(assert (=> b!307185 m!317557))

(push 1)

(assert (not b!307179))

(assert (not b!307180))

(assert (not start!30636))

(assert (not b!307178))

(assert (not b!307183))

(assert (not b!307185))

(assert (not b!307182))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

