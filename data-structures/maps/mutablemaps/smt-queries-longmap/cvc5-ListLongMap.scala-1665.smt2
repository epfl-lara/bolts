; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30828 () Bool)

(assert start!30828)

(declare-fun b!309295 () Bool)

(declare-fun res!166074 () Bool)

(declare-fun e!193229 () Bool)

(assert (=> b!309295 (=> (not res!166074) (not e!193229))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((array!15779 0))(
  ( (array!15780 (arr!7471 (Array (_ BitVec 32) (_ BitVec 64))) (size!7823 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15779)

(assert (=> b!309295 (= res!166074 (and (= (select (arr!7471 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7823 a!3293))))))

(declare-fun b!309296 () Bool)

(declare-fun res!166071 () Bool)

(declare-fun e!193231 () Bool)

(assert (=> b!309296 (=> (not res!166071) (not e!193231))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2622 0))(
  ( (MissingZero!2622 (index!12664 (_ BitVec 32))) (Found!2622 (index!12665 (_ BitVec 32))) (Intermediate!2622 (undefined!3434 Bool) (index!12666 (_ BitVec 32)) (x!30861 (_ BitVec 32))) (Undefined!2622) (MissingVacant!2622 (index!12667 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15779 (_ BitVec 32)) SeekEntryResult!2622)

(assert (=> b!309296 (= res!166071 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2622 i!1240)))))

(declare-fun b!309297 () Bool)

(declare-fun e!193230 () Bool)

(assert (=> b!309297 (= e!193229 e!193230)))

(declare-fun res!166067 () Bool)

(assert (=> b!309297 (=> (not res!166067) (not e!193230))))

(declare-fun lt!151562 () SeekEntryResult!2622)

(declare-fun lt!151561 () SeekEntryResult!2622)

(assert (=> b!309297 (= res!166067 (and (= lt!151562 lt!151561) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7471 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15779 (_ BitVec 32)) SeekEntryResult!2622)

(assert (=> b!309297 (= lt!151562 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309298 () Bool)

(assert (=> b!309298 (= e!193231 e!193229)))

(declare-fun res!166070 () Bool)

(assert (=> b!309298 (=> (not res!166070) (not e!193229))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309298 (= res!166070 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151561))))

(assert (=> b!309298 (= lt!151561 (Intermediate!2622 false resIndex!52 resX!52))))

(declare-fun b!309299 () Bool)

(assert (=> b!309299 (= e!193230 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309299 (= lt!151562 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!309301 () Bool)

(declare-fun res!166068 () Bool)

(assert (=> b!309301 (=> (not res!166068) (not e!193231))))

(declare-fun arrayContainsKey!0 (array!15779 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309301 (= res!166068 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309302 () Bool)

(declare-fun res!166072 () Bool)

(assert (=> b!309302 (=> (not res!166072) (not e!193231))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309302 (= res!166072 (validKeyInArray!0 k!2441))))

(declare-fun b!309303 () Bool)

(declare-fun res!166066 () Bool)

(assert (=> b!309303 (=> (not res!166066) (not e!193231))))

(assert (=> b!309303 (= res!166066 (and (= (size!7823 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7823 a!3293))))))

(declare-fun b!309300 () Bool)

(declare-fun res!166073 () Bool)

(assert (=> b!309300 (=> (not res!166073) (not e!193231))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15779 (_ BitVec 32)) Bool)

(assert (=> b!309300 (= res!166073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!166069 () Bool)

(assert (=> start!30828 (=> (not res!166069) (not e!193231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30828 (= res!166069 (validMask!0 mask!3709))))

(assert (=> start!30828 e!193231))

(declare-fun array_inv!5425 (array!15779) Bool)

(assert (=> start!30828 (array_inv!5425 a!3293)))

(assert (=> start!30828 true))

(assert (= (and start!30828 res!166069) b!309303))

(assert (= (and b!309303 res!166066) b!309302))

(assert (= (and b!309302 res!166072) b!309301))

(assert (= (and b!309301 res!166068) b!309296))

(assert (= (and b!309296 res!166071) b!309300))

(assert (= (and b!309300 res!166073) b!309298))

(assert (= (and b!309298 res!166070) b!309295))

(assert (= (and b!309295 res!166074) b!309297))

(assert (= (and b!309297 res!166067) b!309299))

(declare-fun m!319339 () Bool)

(assert (=> b!309295 m!319339))

(declare-fun m!319341 () Bool)

(assert (=> b!309297 m!319341))

(declare-fun m!319343 () Bool)

(assert (=> b!309297 m!319343))

(declare-fun m!319345 () Bool)

(assert (=> start!30828 m!319345))

(declare-fun m!319347 () Bool)

(assert (=> start!30828 m!319347))

(declare-fun m!319349 () Bool)

(assert (=> b!309298 m!319349))

(assert (=> b!309298 m!319349))

(declare-fun m!319351 () Bool)

(assert (=> b!309298 m!319351))

(declare-fun m!319353 () Bool)

(assert (=> b!309301 m!319353))

(declare-fun m!319355 () Bool)

(assert (=> b!309299 m!319355))

(assert (=> b!309299 m!319355))

(declare-fun m!319357 () Bool)

(assert (=> b!309299 m!319357))

(declare-fun m!319359 () Bool)

(assert (=> b!309296 m!319359))

(declare-fun m!319361 () Bool)

(assert (=> b!309302 m!319361))

(declare-fun m!319363 () Bool)

(assert (=> b!309300 m!319363))

(push 1)

(assert (not b!309302))

(assert (not b!309296))

