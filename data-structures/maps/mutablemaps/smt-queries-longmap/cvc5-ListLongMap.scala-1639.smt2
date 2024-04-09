; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30618 () Bool)

(assert start!30618)

(declare-fun b!306944 () Bool)

(declare-fun res!163860 () Bool)

(declare-fun e!192309 () Bool)

(assert (=> b!306944 (=> (not res!163860) (not e!192309))))

(declare-datatypes ((array!15620 0))(
  ( (array!15621 (arr!7393 (Array (_ BitVec 32) (_ BitVec 64))) (size!7745 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15620)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306944 (= res!163860 (and (= (select (arr!7393 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7745 a!3293))))))

(declare-fun b!306945 () Bool)

(declare-fun res!163857 () Bool)

(assert (=> b!306945 (=> (not res!163857) (not e!192309))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306945 (= res!163857 (validKeyInArray!0 k!2441))))

(declare-fun b!306946 () Bool)

(declare-fun res!163861 () Bool)

(assert (=> b!306946 (=> (not res!163861) (not e!192309))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15620 (_ BitVec 32)) Bool)

(assert (=> b!306946 (= res!163861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306947 () Bool)

(declare-fun res!163863 () Bool)

(assert (=> b!306947 (=> (not res!163863) (not e!192309))))

(declare-fun arrayContainsKey!0 (array!15620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306947 (= res!163863 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!163856 () Bool)

(assert (=> start!30618 (=> (not res!163856) (not e!192309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30618 (= res!163856 (validMask!0 mask!3709))))

(assert (=> start!30618 e!192309))

(declare-fun array_inv!5347 (array!15620) Bool)

(assert (=> start!30618 (array_inv!5347 a!3293)))

(assert (=> start!30618 true))

(declare-fun b!306948 () Bool)

(assert (=> b!306948 (= e!192309 false)))

(declare-datatypes ((SeekEntryResult!2544 0))(
  ( (MissingZero!2544 (index!12352 (_ BitVec 32))) (Found!2544 (index!12353 (_ BitVec 32))) (Intermediate!2544 (undefined!3356 Bool) (index!12354 (_ BitVec 32)) (x!30566 (_ BitVec 32))) (Undefined!2544) (MissingVacant!2544 (index!12355 (_ BitVec 32))) )
))
(declare-fun lt!151058 () SeekEntryResult!2544)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15620 (_ BitVec 32)) SeekEntryResult!2544)

(assert (=> b!306948 (= lt!151058 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!306949 () Bool)

(declare-fun res!163859 () Bool)

(assert (=> b!306949 (=> (not res!163859) (not e!192309))))

(assert (=> b!306949 (= res!163859 (and (= (size!7745 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7745 a!3293))))))

(declare-fun b!306950 () Bool)

(declare-fun res!163862 () Bool)

(assert (=> b!306950 (=> (not res!163862) (not e!192309))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15620 (_ BitVec 32)) SeekEntryResult!2544)

(assert (=> b!306950 (= res!163862 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2544 i!1240)))))

(declare-fun b!306951 () Bool)

(declare-fun res!163858 () Bool)

(assert (=> b!306951 (=> (not res!163858) (not e!192309))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306951 (= res!163858 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2544 false resIndex!52 resX!52)))))

(assert (= (and start!30618 res!163856) b!306949))

(assert (= (and b!306949 res!163859) b!306945))

(assert (= (and b!306945 res!163857) b!306947))

(assert (= (and b!306947 res!163863) b!306950))

(assert (= (and b!306950 res!163862) b!306946))

(assert (= (and b!306946 res!163861) b!306951))

(assert (= (and b!306951 res!163858) b!306944))

(assert (= (and b!306944 res!163860) b!306948))

(declare-fun m!317347 () Bool)

(assert (=> b!306947 m!317347))

(declare-fun m!317349 () Bool)

(assert (=> b!306946 m!317349))

(declare-fun m!317351 () Bool)

(assert (=> b!306948 m!317351))

(declare-fun m!317353 () Bool)

(assert (=> b!306951 m!317353))

(assert (=> b!306951 m!317353))

(declare-fun m!317355 () Bool)

(assert (=> b!306951 m!317355))

(declare-fun m!317357 () Bool)

(assert (=> start!30618 m!317357))

(declare-fun m!317359 () Bool)

(assert (=> start!30618 m!317359))

(declare-fun m!317361 () Bool)

(assert (=> b!306944 m!317361))

(declare-fun m!317363 () Bool)

(assert (=> b!306950 m!317363))

(declare-fun m!317365 () Bool)

(assert (=> b!306945 m!317365))

(push 1)

(assert (not start!30618))

(assert (not b!306951))

(assert (not b!306946))

(assert (not b!306950))

(assert (not b!306947))

(assert (not b!306945))

(assert (not b!306948))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

