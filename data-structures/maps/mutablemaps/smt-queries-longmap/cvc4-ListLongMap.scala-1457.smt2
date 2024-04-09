; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28094 () Bool)

(assert start!28094)

(declare-fun b!287737 () Bool)

(declare-fun res!149544 () Bool)

(declare-fun e!182221 () Bool)

(assert (=> b!287737 (=> (not res!149544) (not e!182221))))

(declare-datatypes ((array!14442 0))(
  ( (array!14443 (arr!6849 (Array (_ BitVec 32) (_ BitVec 64))) (size!7201 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14442)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287737 (= res!149544 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!149540 () Bool)

(assert (=> start!28094 (=> (not res!149540) (not e!182221))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28094 (= res!149540 (validMask!0 mask!3809))))

(assert (=> start!28094 e!182221))

(assert (=> start!28094 true))

(declare-fun array_inv!4803 (array!14442) Bool)

(assert (=> start!28094 (array_inv!4803 a!3312)))

(declare-fun b!287738 () Bool)

(declare-fun res!149539 () Bool)

(assert (=> b!287738 (=> (not res!149539) (not e!182221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287738 (= res!149539 (validKeyInArray!0 k!2524))))

(declare-fun b!287739 () Bool)

(declare-fun res!149543 () Bool)

(assert (=> b!287739 (=> (not res!149543) (not e!182221))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287739 (= res!149543 (and (= (size!7201 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7201 a!3312))))))

(declare-fun b!287740 () Bool)

(declare-fun e!182219 () Bool)

(assert (=> b!287740 (= e!182221 e!182219)))

(declare-fun res!149541 () Bool)

(assert (=> b!287740 (=> (not res!149541) (not e!182219))))

(declare-datatypes ((SeekEntryResult!2009 0))(
  ( (MissingZero!2009 (index!10206 (_ BitVec 32))) (Found!2009 (index!10207 (_ BitVec 32))) (Intermediate!2009 (undefined!2821 Bool) (index!10208 (_ BitVec 32)) (x!28392 (_ BitVec 32))) (Undefined!2009) (MissingVacant!2009 (index!10209 (_ BitVec 32))) )
))
(declare-fun lt!141692 () SeekEntryResult!2009)

(assert (=> b!287740 (= res!149541 (or (= lt!141692 (MissingZero!2009 i!1256)) (= lt!141692 (MissingVacant!2009 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14442 (_ BitVec 32)) SeekEntryResult!2009)

(assert (=> b!287740 (= lt!141692 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287741 () Bool)

(declare-fun res!149542 () Bool)

(assert (=> b!287741 (=> (not res!149542) (not e!182219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14442 (_ BitVec 32)) Bool)

(assert (=> b!287741 (= res!149542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287742 () Bool)

(assert (=> b!287742 (= e!182219 false)))

(declare-fun lt!141689 () (_ BitVec 32))

(declare-fun lt!141691 () SeekEntryResult!2009)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14442 (_ BitVec 32)) SeekEntryResult!2009)

(assert (=> b!287742 (= lt!141691 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141689 k!2524 (array!14443 (store (arr!6849 a!3312) i!1256 k!2524) (size!7201 a!3312)) mask!3809))))

(declare-fun lt!141690 () SeekEntryResult!2009)

(assert (=> b!287742 (= lt!141690 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141689 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287742 (= lt!141689 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28094 res!149540) b!287739))

(assert (= (and b!287739 res!149543) b!287738))

(assert (= (and b!287738 res!149539) b!287737))

(assert (= (and b!287737 res!149544) b!287740))

(assert (= (and b!287740 res!149541) b!287741))

(assert (= (and b!287741 res!149542) b!287742))

(declare-fun m!302111 () Bool)

(assert (=> b!287737 m!302111))

(declare-fun m!302113 () Bool)

(assert (=> b!287741 m!302113))

(declare-fun m!302115 () Bool)

(assert (=> start!28094 m!302115))

(declare-fun m!302117 () Bool)

(assert (=> start!28094 m!302117))

(declare-fun m!302119 () Bool)

(assert (=> b!287738 m!302119))

(declare-fun m!302121 () Bool)

(assert (=> b!287740 m!302121))

(declare-fun m!302123 () Bool)

(assert (=> b!287742 m!302123))

(declare-fun m!302125 () Bool)

(assert (=> b!287742 m!302125))

(declare-fun m!302127 () Bool)

(assert (=> b!287742 m!302127))

(declare-fun m!302129 () Bool)

(assert (=> b!287742 m!302129))

(push 1)

(assert (not b!287737))

(assert (not b!287741))

(assert (not start!28094))

