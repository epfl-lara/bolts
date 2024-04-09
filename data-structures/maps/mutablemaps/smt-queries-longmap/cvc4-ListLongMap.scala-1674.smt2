; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30940 () Bool)

(assert start!30940)

(declare-fun b!310374 () Bool)

(declare-fun res!166987 () Bool)

(declare-fun e!193776 () Bool)

(assert (=> b!310374 (=> (not res!166987) (not e!193776))))

(declare-datatypes ((array!15840 0))(
  ( (array!15841 (arr!7500 (Array (_ BitVec 32) (_ BitVec 64))) (size!7852 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15840)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15840 (_ BitVec 32)) Bool)

(assert (=> b!310374 (= res!166987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310375 () Bool)

(declare-fun res!166993 () Bool)

(assert (=> b!310375 (=> (not res!166993) (not e!193776))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310375 (= res!166993 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!166988 () Bool)

(assert (=> start!30940 (=> (not res!166988) (not e!193776))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30940 (= res!166988 (validMask!0 mask!3709))))

(assert (=> start!30940 e!193776))

(declare-fun array_inv!5454 (array!15840) Bool)

(assert (=> start!30940 (array_inv!5454 a!3293)))

(assert (=> start!30940 true))

(declare-fun b!310376 () Bool)

(declare-fun e!193779 () Bool)

(assert (=> b!310376 (= e!193779 (not true))))

(declare-fun e!193777 () Bool)

(assert (=> b!310376 e!193777))

(declare-fun res!166986 () Bool)

(assert (=> b!310376 (=> (not res!166986) (not e!193777))))

(declare-datatypes ((SeekEntryResult!2651 0))(
  ( (MissingZero!2651 (index!12780 (_ BitVec 32))) (Found!2651 (index!12781 (_ BitVec 32))) (Intermediate!2651 (undefined!3463 Bool) (index!12782 (_ BitVec 32)) (x!30971 (_ BitVec 32))) (Undefined!2651) (MissingVacant!2651 (index!12783 (_ BitVec 32))) )
))
(declare-fun lt!151970 () SeekEntryResult!2651)

(declare-fun lt!151972 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15840 (_ BitVec 32)) SeekEntryResult!2651)

(assert (=> b!310376 (= res!166986 (= lt!151970 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151972 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310376 (= lt!151972 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310377 () Bool)

(declare-fun res!166992 () Bool)

(assert (=> b!310377 (=> (not res!166992) (not e!193776))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15840 (_ BitVec 32)) SeekEntryResult!2651)

(assert (=> b!310377 (= res!166992 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2651 i!1240)))))

(declare-fun b!310378 () Bool)

(declare-fun res!166991 () Bool)

(assert (=> b!310378 (=> (not res!166991) (not e!193776))))

(assert (=> b!310378 (= res!166991 (and (= (size!7852 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7852 a!3293))))))

(declare-fun b!310379 () Bool)

(declare-fun res!166995 () Bool)

(assert (=> b!310379 (=> (not res!166995) (not e!193776))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310379 (= res!166995 (validKeyInArray!0 k!2441))))

(declare-fun b!310380 () Bool)

(declare-fun e!193778 () Bool)

(assert (=> b!310380 (= e!193776 e!193778)))

(declare-fun res!166994 () Bool)

(assert (=> b!310380 (=> (not res!166994) (not e!193778))))

(declare-fun lt!151971 () SeekEntryResult!2651)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310380 (= res!166994 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151971))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310380 (= lt!151971 (Intermediate!2651 false resIndex!52 resX!52))))

(declare-fun b!310381 () Bool)

(declare-fun res!166989 () Bool)

(assert (=> b!310381 (=> (not res!166989) (not e!193778))))

(assert (=> b!310381 (= res!166989 (and (= (select (arr!7500 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7852 a!3293))))))

(declare-fun b!310382 () Bool)

(assert (=> b!310382 (= e!193778 e!193779)))

(declare-fun res!166990 () Bool)

(assert (=> b!310382 (=> (not res!166990) (not e!193779))))

(assert (=> b!310382 (= res!166990 (and (= lt!151970 lt!151971) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7500 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310382 (= lt!151970 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun lt!151973 () array!15840)

(declare-fun b!310383 () Bool)

(assert (=> b!310383 (= e!193777 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!151973 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151972 k!2441 lt!151973 mask!3709)))))

(assert (=> b!310383 (= lt!151973 (array!15841 (store (arr!7500 a!3293) i!1240 k!2441) (size!7852 a!3293)))))

(assert (= (and start!30940 res!166988) b!310378))

(assert (= (and b!310378 res!166991) b!310379))

(assert (= (and b!310379 res!166995) b!310375))

(assert (= (and b!310375 res!166993) b!310377))

(assert (= (and b!310377 res!166992) b!310374))

(assert (= (and b!310374 res!166987) b!310380))

(assert (= (and b!310380 res!166994) b!310381))

(assert (= (and b!310381 res!166989) b!310382))

(assert (= (and b!310382 res!166990) b!310376))

(assert (= (and b!310376 res!166986) b!310383))

(declare-fun m!320333 () Bool)

(assert (=> b!310379 m!320333))

(declare-fun m!320335 () Bool)

(assert (=> b!310374 m!320335))

(declare-fun m!320337 () Bool)

(assert (=> start!30940 m!320337))

(declare-fun m!320339 () Bool)

(assert (=> start!30940 m!320339))

(declare-fun m!320341 () Bool)

(assert (=> b!310383 m!320341))

(declare-fun m!320343 () Bool)

(assert (=> b!310383 m!320343))

(declare-fun m!320345 () Bool)

(assert (=> b!310383 m!320345))

(declare-fun m!320347 () Bool)

(assert (=> b!310380 m!320347))

(assert (=> b!310380 m!320347))

(declare-fun m!320349 () Bool)

(assert (=> b!310380 m!320349))

(declare-fun m!320351 () Bool)

(assert (=> b!310377 m!320351))

(declare-fun m!320353 () Bool)

(assert (=> b!310381 m!320353))

(declare-fun m!320355 () Bool)

(assert (=> b!310375 m!320355))

(declare-fun m!320357 () Bool)

(assert (=> b!310376 m!320357))

(declare-fun m!320359 () Bool)

(assert (=> b!310376 m!320359))

(declare-fun m!320361 () Bool)

(assert (=> b!310382 m!320361))

(declare-fun m!320363 () Bool)

(assert (=> b!310382 m!320363))

(push 1)

(assert (not start!30940))

(assert (not b!310383))

(assert (not b!310382))

