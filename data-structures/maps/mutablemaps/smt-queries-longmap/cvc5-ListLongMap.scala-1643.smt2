; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30642 () Bool)

(assert start!30642)

(declare-fun b!307250 () Bool)

(declare-fun res!164167 () Bool)

(declare-fun e!192399 () Bool)

(assert (=> b!307250 (=> (not res!164167) (not e!192399))))

(declare-datatypes ((array!15644 0))(
  ( (array!15645 (arr!7405 (Array (_ BitVec 32) (_ BitVec 64))) (size!7757 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15644)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307250 (= res!164167 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307251 () Bool)

(declare-fun res!164168 () Bool)

(assert (=> b!307251 (=> (not res!164168) (not e!192399))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15644 (_ BitVec 32)) Bool)

(assert (=> b!307251 (= res!164168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307252 () Bool)

(declare-fun res!164169 () Bool)

(assert (=> b!307252 (=> (not res!164169) (not e!192399))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307252 (= res!164169 (and (= (select (arr!7405 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7757 a!3293))))))

(declare-fun b!307253 () Bool)

(declare-fun res!164164 () Bool)

(assert (=> b!307253 (=> (not res!164164) (not e!192399))))

(declare-datatypes ((SeekEntryResult!2556 0))(
  ( (MissingZero!2556 (index!12400 (_ BitVec 32))) (Found!2556 (index!12401 (_ BitVec 32))) (Intermediate!2556 (undefined!3368 Bool) (index!12402 (_ BitVec 32)) (x!30610 (_ BitVec 32))) (Undefined!2556) (MissingVacant!2556 (index!12403 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15644 (_ BitVec 32)) SeekEntryResult!2556)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307253 (= res!164164 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2556 false resIndex!52 resX!52)))))

(declare-fun b!307254 () Bool)

(declare-fun res!164163 () Bool)

(assert (=> b!307254 (=> (not res!164163) (not e!192399))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15644 (_ BitVec 32)) SeekEntryResult!2556)

(assert (=> b!307254 (= res!164163 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2556 i!1240)))))

(declare-fun res!164165 () Bool)

(assert (=> start!30642 (=> (not res!164165) (not e!192399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30642 (= res!164165 (validMask!0 mask!3709))))

(assert (=> start!30642 e!192399))

(declare-fun array_inv!5359 (array!15644) Bool)

(assert (=> start!30642 (array_inv!5359 a!3293)))

(assert (=> start!30642 true))

(declare-fun b!307255 () Bool)

(declare-fun res!164162 () Bool)

(assert (=> b!307255 (=> (not res!164162) (not e!192399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307255 (= res!164162 (validKeyInArray!0 k!2441))))

(declare-fun b!307256 () Bool)

(assert (=> b!307256 (= e!192399 false)))

(declare-fun lt!151094 () SeekEntryResult!2556)

(assert (=> b!307256 (= lt!151094 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!307257 () Bool)

(declare-fun res!164166 () Bool)

(assert (=> b!307257 (=> (not res!164166) (not e!192399))))

(assert (=> b!307257 (= res!164166 (and (= (size!7757 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7757 a!3293))))))

(assert (= (and start!30642 res!164165) b!307257))

(assert (= (and b!307257 res!164166) b!307255))

(assert (= (and b!307255 res!164162) b!307250))

(assert (= (and b!307250 res!164167) b!307254))

(assert (= (and b!307254 res!164163) b!307251))

(assert (= (and b!307251 res!164168) b!307253))

(assert (= (and b!307253 res!164164) b!307252))

(assert (= (and b!307252 res!164169) b!307256))

(declare-fun m!317599 () Bool)

(assert (=> b!307251 m!317599))

(declare-fun m!317601 () Bool)

(assert (=> b!307254 m!317601))

(declare-fun m!317603 () Bool)

(assert (=> b!307250 m!317603))

(declare-fun m!317605 () Bool)

(assert (=> start!30642 m!317605))

(declare-fun m!317607 () Bool)

(assert (=> start!30642 m!317607))

(declare-fun m!317609 () Bool)

(assert (=> b!307256 m!317609))

(declare-fun m!317611 () Bool)

(assert (=> b!307252 m!317611))

(declare-fun m!317613 () Bool)

(assert (=> b!307253 m!317613))

(assert (=> b!307253 m!317613))

(declare-fun m!317615 () Bool)

(assert (=> b!307253 m!317615))

(declare-fun m!317617 () Bool)

(assert (=> b!307255 m!317617))

(push 1)

(assert (not b!307251))

(assert (not b!307255))

(assert (not b!307254))

(assert (not start!30642))

(assert (not b!307250))

(assert (not b!307256))

(assert (not b!307253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

