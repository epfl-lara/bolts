; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30830 () Bool)

(assert start!30830)

(declare-fun b!309322 () Bool)

(declare-fun res!166101 () Bool)

(declare-fun e!193243 () Bool)

(assert (=> b!309322 (=> (not res!166101) (not e!193243))))

(declare-datatypes ((array!15781 0))(
  ( (array!15782 (arr!7472 (Array (_ BitVec 32) (_ BitVec 64))) (size!7824 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15781)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15781 (_ BitVec 32)) Bool)

(assert (=> b!309322 (= res!166101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!166093 () Bool)

(assert (=> start!30830 (=> (not res!166093) (not e!193243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30830 (= res!166093 (validMask!0 mask!3709))))

(assert (=> start!30830 e!193243))

(declare-fun array_inv!5426 (array!15781) Bool)

(assert (=> start!30830 (array_inv!5426 a!3293)))

(assert (=> start!30830 true))

(declare-fun b!309323 () Bool)

(declare-fun res!166095 () Bool)

(assert (=> b!309323 (=> (not res!166095) (not e!193243))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15781 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309323 (= res!166095 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309324 () Bool)

(declare-fun res!166100 () Bool)

(declare-fun e!193241 () Bool)

(assert (=> b!309324 (=> (not res!166100) (not e!193241))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309324 (= res!166100 (and (= (select (arr!7472 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7824 a!3293))))))

(declare-fun b!309325 () Bool)

(assert (=> b!309325 (= e!193243 e!193241)))

(declare-fun res!166094 () Bool)

(assert (=> b!309325 (=> (not res!166094) (not e!193241))))

(declare-datatypes ((SeekEntryResult!2623 0))(
  ( (MissingZero!2623 (index!12668 (_ BitVec 32))) (Found!2623 (index!12669 (_ BitVec 32))) (Intermediate!2623 (undefined!3435 Bool) (index!12670 (_ BitVec 32)) (x!30862 (_ BitVec 32))) (Undefined!2623) (MissingVacant!2623 (index!12671 (_ BitVec 32))) )
))
(declare-fun lt!151567 () SeekEntryResult!2623)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15781 (_ BitVec 32)) SeekEntryResult!2623)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309325 (= res!166094 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151567))))

(assert (=> b!309325 (= lt!151567 (Intermediate!2623 false resIndex!52 resX!52))))

(declare-fun b!309326 () Bool)

(declare-fun res!166099 () Bool)

(assert (=> b!309326 (=> (not res!166099) (not e!193243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309326 (= res!166099 (validKeyInArray!0 k0!2441))))

(declare-fun b!309327 () Bool)

(declare-fun e!193242 () Bool)

(assert (=> b!309327 (= e!193242 (not true))))

(declare-fun lt!151568 () SeekEntryResult!2623)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309327 (= lt!151568 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!309328 () Bool)

(declare-fun res!166098 () Bool)

(assert (=> b!309328 (=> (not res!166098) (not e!193243))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15781 (_ BitVec 32)) SeekEntryResult!2623)

(assert (=> b!309328 (= res!166098 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2623 i!1240)))))

(declare-fun b!309329 () Bool)

(assert (=> b!309329 (= e!193241 e!193242)))

(declare-fun res!166097 () Bool)

(assert (=> b!309329 (=> (not res!166097) (not e!193242))))

(assert (=> b!309329 (= res!166097 (and (= lt!151568 lt!151567) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7472 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309329 (= lt!151568 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!309330 () Bool)

(declare-fun res!166096 () Bool)

(assert (=> b!309330 (=> (not res!166096) (not e!193243))))

(assert (=> b!309330 (= res!166096 (and (= (size!7824 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7824 a!3293))))))

(assert (= (and start!30830 res!166093) b!309330))

(assert (= (and b!309330 res!166096) b!309326))

(assert (= (and b!309326 res!166099) b!309323))

(assert (= (and b!309323 res!166095) b!309328))

(assert (= (and b!309328 res!166098) b!309322))

(assert (= (and b!309322 res!166101) b!309325))

(assert (= (and b!309325 res!166094) b!309324))

(assert (= (and b!309324 res!166100) b!309329))

(assert (= (and b!309329 res!166097) b!309327))

(declare-fun m!319365 () Bool)

(assert (=> b!309327 m!319365))

(assert (=> b!309327 m!319365))

(declare-fun m!319367 () Bool)

(assert (=> b!309327 m!319367))

(declare-fun m!319369 () Bool)

(assert (=> b!309328 m!319369))

(declare-fun m!319371 () Bool)

(assert (=> b!309329 m!319371))

(declare-fun m!319373 () Bool)

(assert (=> b!309329 m!319373))

(declare-fun m!319375 () Bool)

(assert (=> b!309323 m!319375))

(declare-fun m!319377 () Bool)

(assert (=> start!30830 m!319377))

(declare-fun m!319379 () Bool)

(assert (=> start!30830 m!319379))

(declare-fun m!319381 () Bool)

(assert (=> b!309325 m!319381))

(assert (=> b!309325 m!319381))

(declare-fun m!319383 () Bool)

(assert (=> b!309325 m!319383))

(declare-fun m!319385 () Bool)

(assert (=> b!309324 m!319385))

(declare-fun m!319387 () Bool)

(assert (=> b!309322 m!319387))

(declare-fun m!319389 () Bool)

(assert (=> b!309326 m!319389))

(check-sat (not b!309323) (not b!309325) (not b!309329) (not b!309322) (not start!30830) (not b!309326) (not b!309328) (not b!309327))
(check-sat)
