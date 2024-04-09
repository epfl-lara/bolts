; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31814 () Bool)

(assert start!31814)

(declare-fun b!317589 () Bool)

(declare-fun e!197432 () Bool)

(assert (=> b!317589 (= e!197432 (not true))))

(declare-fun e!197431 () Bool)

(assert (=> b!317589 e!197431))

(declare-fun res!172328 () Bool)

(assert (=> b!317589 (=> (not res!172328) (not e!197431))))

(declare-datatypes ((array!16183 0))(
  ( (array!16184 (arr!7655 (Array (_ BitVec 32) (_ BitVec 64))) (size!8007 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16183)

(declare-datatypes ((SeekEntryResult!2806 0))(
  ( (MissingZero!2806 (index!13400 (_ BitVec 32))) (Found!2806 (index!13401 (_ BitVec 32))) (Intermediate!2806 (undefined!3618 Bool) (index!13402 (_ BitVec 32)) (x!31626 (_ BitVec 32))) (Undefined!2806) (MissingVacant!2806 (index!13403 (_ BitVec 32))) )
))
(declare-fun lt!155053 () SeekEntryResult!2806)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!155052 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16183 (_ BitVec 32)) SeekEntryResult!2806)

(assert (=> b!317589 (= res!172328 (= lt!155053 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155052 k0!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317589 (= lt!155052 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317590 () Bool)

(declare-fun res!172335 () Bool)

(declare-fun e!197430 () Bool)

(assert (=> b!317590 (=> (not res!172335) (not e!197430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317590 (= res!172335 (validKeyInArray!0 k0!2441))))

(declare-fun b!317591 () Bool)

(declare-fun e!197433 () Bool)

(assert (=> b!317591 (= e!197430 e!197433)))

(declare-fun res!172327 () Bool)

(assert (=> b!317591 (=> (not res!172327) (not e!197433))))

(declare-fun lt!155054 () SeekEntryResult!2806)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317591 (= res!172327 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155054))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!317591 (= lt!155054 (Intermediate!2806 false resIndex!52 resX!52))))

(declare-fun b!317592 () Bool)

(declare-fun res!172334 () Bool)

(assert (=> b!317592 (=> (not res!172334) (not e!197433))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317592 (= res!172334 (and (= (select (arr!7655 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8007 a!3293))))))

(declare-fun b!317593 () Bool)

(declare-fun res!172326 () Bool)

(assert (=> b!317593 (=> (not res!172326) (not e!197430))))

(declare-fun arrayContainsKey!0 (array!16183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317593 (= res!172326 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317594 () Bool)

(declare-fun lt!155051 () array!16183)

(assert (=> b!317594 (= e!197431 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155051 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155052 k0!2441 lt!155051 mask!3709)))))

(assert (=> b!317594 (= lt!155051 (array!16184 (store (arr!7655 a!3293) i!1240 k0!2441) (size!8007 a!3293)))))

(declare-fun b!317595 () Bool)

(declare-fun res!172331 () Bool)

(assert (=> b!317595 (=> (not res!172331) (not e!197430))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16183 (_ BitVec 32)) SeekEntryResult!2806)

(assert (=> b!317595 (= res!172331 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2806 i!1240)))))

(declare-fun b!317596 () Bool)

(declare-fun res!172329 () Bool)

(assert (=> b!317596 (=> (not res!172329) (not e!197430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16183 (_ BitVec 32)) Bool)

(assert (=> b!317596 (= res!172329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317597 () Bool)

(declare-fun res!172333 () Bool)

(assert (=> b!317597 (=> (not res!172333) (not e!197430))))

(assert (=> b!317597 (= res!172333 (and (= (size!8007 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8007 a!3293))))))

(declare-fun b!317598 () Bool)

(assert (=> b!317598 (= e!197433 e!197432)))

(declare-fun res!172332 () Bool)

(assert (=> b!317598 (=> (not res!172332) (not e!197432))))

(assert (=> b!317598 (= res!172332 (and (= lt!155053 lt!155054) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7655 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317598 (= lt!155053 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun res!172330 () Bool)

(assert (=> start!31814 (=> (not res!172330) (not e!197430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31814 (= res!172330 (validMask!0 mask!3709))))

(assert (=> start!31814 e!197430))

(declare-fun array_inv!5609 (array!16183) Bool)

(assert (=> start!31814 (array_inv!5609 a!3293)))

(assert (=> start!31814 true))

(assert (= (and start!31814 res!172330) b!317597))

(assert (= (and b!317597 res!172333) b!317590))

(assert (= (and b!317590 res!172335) b!317593))

(assert (= (and b!317593 res!172326) b!317595))

(assert (= (and b!317595 res!172331) b!317596))

(assert (= (and b!317596 res!172329) b!317591))

(assert (= (and b!317591 res!172327) b!317592))

(assert (= (and b!317592 res!172334) b!317598))

(assert (= (and b!317598 res!172332) b!317589))

(assert (= (and b!317589 res!172328) b!317594))

(declare-fun m!326289 () Bool)

(assert (=> b!317596 m!326289))

(declare-fun m!326291 () Bool)

(assert (=> b!317594 m!326291))

(declare-fun m!326293 () Bool)

(assert (=> b!317594 m!326293))

(declare-fun m!326295 () Bool)

(assert (=> b!317594 m!326295))

(declare-fun m!326297 () Bool)

(assert (=> start!31814 m!326297))

(declare-fun m!326299 () Bool)

(assert (=> start!31814 m!326299))

(declare-fun m!326301 () Bool)

(assert (=> b!317592 m!326301))

(declare-fun m!326303 () Bool)

(assert (=> b!317589 m!326303))

(declare-fun m!326305 () Bool)

(assert (=> b!317589 m!326305))

(declare-fun m!326307 () Bool)

(assert (=> b!317590 m!326307))

(declare-fun m!326309 () Bool)

(assert (=> b!317591 m!326309))

(assert (=> b!317591 m!326309))

(declare-fun m!326311 () Bool)

(assert (=> b!317591 m!326311))

(declare-fun m!326313 () Bool)

(assert (=> b!317598 m!326313))

(declare-fun m!326315 () Bool)

(assert (=> b!317598 m!326315))

(declare-fun m!326317 () Bool)

(assert (=> b!317593 m!326317))

(declare-fun m!326319 () Bool)

(assert (=> b!317595 m!326319))

(check-sat (not b!317595) (not b!317591) (not start!31814) (not b!317594) (not b!317598) (not b!317596) (not b!317590) (not b!317589) (not b!317593))
(check-sat)
