; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30832 () Bool)

(assert start!30832)

(declare-fun b!309349 () Bool)

(declare-fun res!166126 () Bool)

(declare-fun e!193253 () Bool)

(assert (=> b!309349 (=> (not res!166126) (not e!193253))))

(declare-datatypes ((array!15783 0))(
  ( (array!15784 (arr!7473 (Array (_ BitVec 32) (_ BitVec 64))) (size!7825 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15783)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309349 (= res!166126 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309350 () Bool)

(declare-fun res!166128 () Bool)

(assert (=> b!309350 (=> (not res!166128) (not e!193253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309350 (= res!166128 (validKeyInArray!0 k!2441))))

(declare-fun b!309351 () Bool)

(declare-fun e!193254 () Bool)

(assert (=> b!309351 (= e!193253 e!193254)))

(declare-fun res!166127 () Bool)

(assert (=> b!309351 (=> (not res!166127) (not e!193254))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2624 0))(
  ( (MissingZero!2624 (index!12672 (_ BitVec 32))) (Found!2624 (index!12673 (_ BitVec 32))) (Intermediate!2624 (undefined!3436 Bool) (index!12674 (_ BitVec 32)) (x!30863 (_ BitVec 32))) (Undefined!2624) (MissingVacant!2624 (index!12675 (_ BitVec 32))) )
))
(declare-fun lt!151573 () SeekEntryResult!2624)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15783 (_ BitVec 32)) SeekEntryResult!2624)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309351 (= res!166127 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151573))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309351 (= lt!151573 (Intermediate!2624 false resIndex!52 resX!52))))

(declare-fun b!309352 () Bool)

(declare-fun e!193255 () Bool)

(assert (=> b!309352 (= e!193254 e!193255)))

(declare-fun res!166125 () Bool)

(assert (=> b!309352 (=> (not res!166125) (not e!193255))))

(declare-fun lt!151574 () SeekEntryResult!2624)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309352 (= res!166125 (and (= lt!151574 lt!151573) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7473 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309352 (= lt!151574 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309353 () Bool)

(declare-fun res!166123 () Bool)

(assert (=> b!309353 (=> (not res!166123) (not e!193253))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15783 (_ BitVec 32)) SeekEntryResult!2624)

(assert (=> b!309353 (= res!166123 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2624 i!1240)))))

(declare-fun b!309354 () Bool)

(declare-fun res!166124 () Bool)

(assert (=> b!309354 (=> (not res!166124) (not e!193254))))

(assert (=> b!309354 (= res!166124 (and (= (select (arr!7473 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7825 a!3293))))))

(declare-fun res!166122 () Bool)

(assert (=> start!30832 (=> (not res!166122) (not e!193253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30832 (= res!166122 (validMask!0 mask!3709))))

(assert (=> start!30832 e!193253))

(declare-fun array_inv!5427 (array!15783) Bool)

(assert (=> start!30832 (array_inv!5427 a!3293)))

(assert (=> start!30832 true))

(declare-fun b!309355 () Bool)

(assert (=> b!309355 (= e!193255 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309355 (= lt!151574 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!309356 () Bool)

(declare-fun res!166120 () Bool)

(assert (=> b!309356 (=> (not res!166120) (not e!193253))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15783 (_ BitVec 32)) Bool)

(assert (=> b!309356 (= res!166120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309357 () Bool)

(declare-fun res!166121 () Bool)

(assert (=> b!309357 (=> (not res!166121) (not e!193253))))

(assert (=> b!309357 (= res!166121 (and (= (size!7825 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7825 a!3293))))))

(assert (= (and start!30832 res!166122) b!309357))

(assert (= (and b!309357 res!166121) b!309350))

(assert (= (and b!309350 res!166128) b!309349))

(assert (= (and b!309349 res!166126) b!309353))

(assert (= (and b!309353 res!166123) b!309356))

(assert (= (and b!309356 res!166120) b!309351))

(assert (= (and b!309351 res!166127) b!309354))

(assert (= (and b!309354 res!166124) b!309352))

(assert (= (and b!309352 res!166125) b!309355))

(declare-fun m!319391 () Bool)

(assert (=> b!309353 m!319391))

(declare-fun m!319393 () Bool)

(assert (=> b!309349 m!319393))

(declare-fun m!319395 () Bool)

(assert (=> b!309352 m!319395))

(declare-fun m!319397 () Bool)

(assert (=> b!309352 m!319397))

(declare-fun m!319399 () Bool)

(assert (=> start!30832 m!319399))

(declare-fun m!319401 () Bool)

(assert (=> start!30832 m!319401))

(declare-fun m!319403 () Bool)

(assert (=> b!309351 m!319403))

(assert (=> b!309351 m!319403))

(declare-fun m!319405 () Bool)

(assert (=> b!309351 m!319405))

(declare-fun m!319407 () Bool)

(assert (=> b!309350 m!319407))

(declare-fun m!319409 () Bool)

(assert (=> b!309355 m!319409))

(assert (=> b!309355 m!319409))

(declare-fun m!319411 () Bool)

(assert (=> b!309355 m!319411))

(declare-fun m!319413 () Bool)

(assert (=> b!309354 m!319413))

(declare-fun m!319415 () Bool)

(assert (=> b!309356 m!319415))

(push 1)

(assert (not b!309349))

(assert (not b!309356))

(assert (not b!309353))

(assert (not b!309355))

(assert (not b!309351))

(assert (not start!30832))

(assert (not b!309352))

(assert (not b!309350))

(check-sat)

