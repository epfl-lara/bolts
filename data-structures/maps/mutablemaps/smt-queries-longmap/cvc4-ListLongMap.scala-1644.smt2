; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30652 () Bool)

(assert start!30652)

(declare-datatypes ((array!15654 0))(
  ( (array!15655 (arr!7410 (Array (_ BitVec 32) (_ BitVec 64))) (size!7762 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15654)

(declare-fun b!307378 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun e!192437 () Bool)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307378 (= e!192437 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7410 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun b!307379 () Bool)

(declare-fun res!164293 () Bool)

(assert (=> b!307379 (=> (not res!164293) (not e!192437))))

(declare-datatypes ((SeekEntryResult!2561 0))(
  ( (MissingZero!2561 (index!12420 (_ BitVec 32))) (Found!2561 (index!12421 (_ BitVec 32))) (Intermediate!2561 (undefined!3373 Bool) (index!12422 (_ BitVec 32)) (x!30623 (_ BitVec 32))) (Undefined!2561) (MissingVacant!2561 (index!12423 (_ BitVec 32))) )
))
(declare-fun lt!151109 () SeekEntryResult!2561)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15654 (_ BitVec 32)) SeekEntryResult!2561)

(assert (=> b!307379 (= res!164293 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151109))))

(declare-fun res!164297 () Bool)

(declare-fun e!192438 () Bool)

(assert (=> start!30652 (=> (not res!164297) (not e!192438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30652 (= res!164297 (validMask!0 mask!3709))))

(assert (=> start!30652 e!192438))

(declare-fun array_inv!5364 (array!15654) Bool)

(assert (=> start!30652 (array_inv!5364 a!3293)))

(assert (=> start!30652 true))

(declare-fun b!307380 () Bool)

(declare-fun res!164296 () Bool)

(assert (=> b!307380 (=> (not res!164296) (not e!192438))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307380 (= res!164296 (validKeyInArray!0 k!2441))))

(declare-fun b!307381 () Bool)

(declare-fun res!164298 () Bool)

(assert (=> b!307381 (=> (not res!164298) (not e!192438))))

(declare-fun arrayContainsKey!0 (array!15654 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307381 (= res!164298 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307382 () Bool)

(declare-fun res!164292 () Bool)

(assert (=> b!307382 (=> (not res!164292) (not e!192438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15654 (_ BitVec 32)) Bool)

(assert (=> b!307382 (= res!164292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307383 () Bool)

(assert (=> b!307383 (= e!192438 e!192437)))

(declare-fun res!164290 () Bool)

(assert (=> b!307383 (=> (not res!164290) (not e!192437))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307383 (= res!164290 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151109))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!307383 (= lt!151109 (Intermediate!2561 false resIndex!52 resX!52))))

(declare-fun b!307384 () Bool)

(declare-fun res!164295 () Bool)

(assert (=> b!307384 (=> (not res!164295) (not e!192438))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15654 (_ BitVec 32)) SeekEntryResult!2561)

(assert (=> b!307384 (= res!164295 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2561 i!1240)))))

(declare-fun b!307385 () Bool)

(declare-fun res!164294 () Bool)

(assert (=> b!307385 (=> (not res!164294) (not e!192437))))

(assert (=> b!307385 (= res!164294 (and (= (select (arr!7410 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7762 a!3293))))))

(declare-fun b!307386 () Bool)

(declare-fun res!164291 () Bool)

(assert (=> b!307386 (=> (not res!164291) (not e!192438))))

(assert (=> b!307386 (= res!164291 (and (= (size!7762 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7762 a!3293))))))

(assert (= (and start!30652 res!164297) b!307386))

(assert (= (and b!307386 res!164291) b!307380))

(assert (= (and b!307380 res!164296) b!307381))

(assert (= (and b!307381 res!164298) b!307384))

(assert (= (and b!307384 res!164295) b!307382))

(assert (= (and b!307382 res!164292) b!307383))

(assert (= (and b!307383 res!164290) b!307385))

(assert (= (and b!307385 res!164294) b!307379))

(assert (= (and b!307379 res!164293) b!307378))

(declare-fun m!317703 () Bool)

(assert (=> b!307379 m!317703))

(declare-fun m!317705 () Bool)

(assert (=> start!30652 m!317705))

(declare-fun m!317707 () Bool)

(assert (=> start!30652 m!317707))

(declare-fun m!317709 () Bool)

(assert (=> b!307383 m!317709))

(assert (=> b!307383 m!317709))

(declare-fun m!317711 () Bool)

(assert (=> b!307383 m!317711))

(declare-fun m!317713 () Bool)

(assert (=> b!307380 m!317713))

(declare-fun m!317715 () Bool)

(assert (=> b!307384 m!317715))

(declare-fun m!317717 () Bool)

(assert (=> b!307385 m!317717))

(declare-fun m!317719 () Bool)

(assert (=> b!307381 m!317719))

(declare-fun m!317721 () Bool)

(assert (=> b!307382 m!317721))

(declare-fun m!317723 () Bool)

(assert (=> b!307378 m!317723))

(push 1)

(assert (not b!307380))

(assert (not b!307383))

(assert (not b!307381))

(assert (not b!307382))

(assert (not b!307384))

(assert (not start!30652))

