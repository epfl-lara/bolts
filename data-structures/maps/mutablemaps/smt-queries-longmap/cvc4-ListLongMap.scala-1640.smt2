; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30628 () Bool)

(assert start!30628)

(declare-fun b!307072 () Bool)

(declare-fun res!163991 () Bool)

(declare-fun e!192349 () Bool)

(assert (=> b!307072 (=> (not res!163991) (not e!192349))))

(declare-datatypes ((array!15630 0))(
  ( (array!15631 (arr!7398 (Array (_ BitVec 32) (_ BitVec 64))) (size!7750 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15630)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307072 (= res!163991 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!163992 () Bool)

(assert (=> start!30628 (=> (not res!163992) (not e!192349))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30628 (= res!163992 (validMask!0 mask!3709))))

(assert (=> start!30628 e!192349))

(declare-fun array_inv!5352 (array!15630) Bool)

(assert (=> start!30628 (array_inv!5352 a!3293)))

(assert (=> start!30628 true))

(declare-fun b!307073 () Bool)

(declare-fun e!192347 () Bool)

(assert (=> b!307073 (= e!192349 e!192347)))

(declare-fun res!163984 () Bool)

(assert (=> b!307073 (=> (not res!163984) (not e!192347))))

(declare-datatypes ((SeekEntryResult!2549 0))(
  ( (MissingZero!2549 (index!12372 (_ BitVec 32))) (Found!2549 (index!12373 (_ BitVec 32))) (Intermediate!2549 (undefined!3361 Bool) (index!12374 (_ BitVec 32)) (x!30579 (_ BitVec 32))) (Undefined!2549) (MissingVacant!2549 (index!12375 (_ BitVec 32))) )
))
(declare-fun lt!151073 () SeekEntryResult!2549)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15630 (_ BitVec 32)) SeekEntryResult!2549)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307073 (= res!163984 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151073))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!307073 (= lt!151073 (Intermediate!2549 false resIndex!52 resX!52))))

(declare-fun b!307074 () Bool)

(declare-fun res!163987 () Bool)

(assert (=> b!307074 (=> (not res!163987) (not e!192349))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307074 (= res!163987 (and (= (size!7750 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7750 a!3293))))))

(declare-fun b!307075 () Bool)

(declare-fun res!163988 () Bool)

(assert (=> b!307075 (=> (not res!163988) (not e!192347))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307075 (= res!163988 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151073))))

(declare-fun b!307076 () Bool)

(declare-fun res!163986 () Bool)

(assert (=> b!307076 (=> (not res!163986) (not e!192347))))

(assert (=> b!307076 (= res!163986 (and (= (select (arr!7398 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7750 a!3293))))))

(declare-fun b!307077 () Bool)

(assert (=> b!307077 (= e!192347 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7398 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!307078 () Bool)

(declare-fun res!163990 () Bool)

(assert (=> b!307078 (=> (not res!163990) (not e!192349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307078 (= res!163990 (validKeyInArray!0 k!2441))))

(declare-fun b!307079 () Bool)

(declare-fun res!163985 () Bool)

(assert (=> b!307079 (=> (not res!163985) (not e!192349))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15630 (_ BitVec 32)) Bool)

(assert (=> b!307079 (= res!163985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307080 () Bool)

(declare-fun res!163989 () Bool)

(assert (=> b!307080 (=> (not res!163989) (not e!192349))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15630 (_ BitVec 32)) SeekEntryResult!2549)

(assert (=> b!307080 (= res!163989 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2549 i!1240)))))

(assert (= (and start!30628 res!163992) b!307074))

(assert (= (and b!307074 res!163987) b!307078))

(assert (= (and b!307078 res!163990) b!307072))

(assert (= (and b!307072 res!163991) b!307080))

(assert (= (and b!307080 res!163989) b!307079))

(assert (= (and b!307079 res!163985) b!307073))

(assert (= (and b!307073 res!163984) b!307076))

(assert (= (and b!307076 res!163986) b!307075))

(assert (= (and b!307075 res!163988) b!307077))

(declare-fun m!317451 () Bool)

(assert (=> start!30628 m!317451))

(declare-fun m!317453 () Bool)

(assert (=> start!30628 m!317453))

(declare-fun m!317455 () Bool)

(assert (=> b!307079 m!317455))

(declare-fun m!317457 () Bool)

(assert (=> b!307077 m!317457))

(declare-fun m!317459 () Bool)

(assert (=> b!307080 m!317459))

(declare-fun m!317461 () Bool)

(assert (=> b!307072 m!317461))

(declare-fun m!317463 () Bool)

(assert (=> b!307073 m!317463))

(assert (=> b!307073 m!317463))

(declare-fun m!317465 () Bool)

(assert (=> b!307073 m!317465))

(declare-fun m!317467 () Bool)

(assert (=> b!307075 m!317467))

(declare-fun m!317469 () Bool)

(assert (=> b!307078 m!317469))

(declare-fun m!317471 () Bool)

(assert (=> b!307076 m!317471))

(push 1)

(assert (not b!307075))

(assert (not b!307078))

(assert (not b!307073))

(assert (not start!30628))

(assert (not b!307072))

(assert (not b!307079))

(assert (not b!307080))

(check-sat)

(pop 1)

(push 1)

(check-sat)

