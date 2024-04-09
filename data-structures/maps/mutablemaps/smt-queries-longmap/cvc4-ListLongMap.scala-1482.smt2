; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28292 () Bool)

(assert start!28292)

(declare-fun b!289789 () Bool)

(declare-fun res!151306 () Bool)

(declare-fun e!183441 () Bool)

(assert (=> b!289789 (=> (not res!151306) (not e!183441))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14595 0))(
  ( (array!14596 (arr!6924 (Array (_ BitVec 32) (_ BitVec 64))) (size!7276 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14595)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!289789 (= res!151306 (and (= (size!7276 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7276 a!3312))))))

(declare-fun b!289790 () Bool)

(declare-fun e!183440 () Bool)

(assert (=> b!289790 (= e!183441 e!183440)))

(declare-fun res!151311 () Bool)

(assert (=> b!289790 (=> (not res!151311) (not e!183440))))

(declare-datatypes ((SeekEntryResult!2084 0))(
  ( (MissingZero!2084 (index!10506 (_ BitVec 32))) (Found!2084 (index!10507 (_ BitVec 32))) (Intermediate!2084 (undefined!2896 Bool) (index!10508 (_ BitVec 32)) (x!28673 (_ BitVec 32))) (Undefined!2084) (MissingVacant!2084 (index!10509 (_ BitVec 32))) )
))
(declare-fun lt!143101 () SeekEntryResult!2084)

(assert (=> b!289790 (= res!151311 (or (= lt!143101 (MissingZero!2084 i!1256)) (= lt!143101 (MissingVacant!2084 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14595 (_ BitVec 32)) SeekEntryResult!2084)

(assert (=> b!289790 (= lt!143101 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289791 () Bool)

(declare-fun res!151308 () Bool)

(assert (=> b!289791 (=> (not res!151308) (not e!183441))))

(declare-fun arrayContainsKey!0 (array!14595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289791 (= res!151308 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289792 () Bool)

(declare-fun res!151309 () Bool)

(assert (=> b!289792 (=> (not res!151309) (not e!183441))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289792 (= res!151309 (validKeyInArray!0 k!2524))))

(declare-fun res!151310 () Bool)

(assert (=> start!28292 (=> (not res!151310) (not e!183441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28292 (= res!151310 (validMask!0 mask!3809))))

(assert (=> start!28292 e!183441))

(assert (=> start!28292 true))

(declare-fun array_inv!4878 (array!14595) Bool)

(assert (=> start!28292 (array_inv!4878 a!3312)))

(declare-fun b!289793 () Bool)

(assert (=> b!289793 (= e!183440 false)))

(declare-fun lt!143102 () SeekEntryResult!2084)

(declare-fun lt!143100 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14595 (_ BitVec 32)) SeekEntryResult!2084)

(assert (=> b!289793 (= lt!143102 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143100 k!2524 (array!14596 (store (arr!6924 a!3312) i!1256 k!2524) (size!7276 a!3312)) mask!3809))))

(declare-fun lt!143099 () SeekEntryResult!2084)

(assert (=> b!289793 (= lt!143099 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143100 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289793 (= lt!143100 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289794 () Bool)

(declare-fun res!151307 () Bool)

(assert (=> b!289794 (=> (not res!151307) (not e!183440))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14595 (_ BitVec 32)) Bool)

(assert (=> b!289794 (= res!151307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28292 res!151310) b!289789))

(assert (= (and b!289789 res!151306) b!289792))

(assert (= (and b!289792 res!151309) b!289791))

(assert (= (and b!289791 res!151308) b!289790))

(assert (= (and b!289790 res!151311) b!289794))

(assert (= (and b!289794 res!151307) b!289793))

(declare-fun m!303905 () Bool)

(assert (=> b!289793 m!303905))

(declare-fun m!303907 () Bool)

(assert (=> b!289793 m!303907))

(declare-fun m!303909 () Bool)

(assert (=> b!289793 m!303909))

(declare-fun m!303911 () Bool)

(assert (=> b!289793 m!303911))

(declare-fun m!303913 () Bool)

(assert (=> b!289790 m!303913))

(declare-fun m!303915 () Bool)

(assert (=> b!289794 m!303915))

(declare-fun m!303917 () Bool)

(assert (=> b!289792 m!303917))

(declare-fun m!303919 () Bool)

(assert (=> b!289791 m!303919))

(declare-fun m!303921 () Bool)

(assert (=> start!28292 m!303921))

(declare-fun m!303923 () Bool)

(assert (=> start!28292 m!303923))

(push 1)

(assert (not start!28292))

(assert (not b!289790))

(assert (not b!289793))

(assert (not b!289792))

(assert (not b!289791))

(assert (not 