; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28312 () Bool)

(assert start!28312)

(declare-fun b!289970 () Bool)

(declare-fun e!183532 () Bool)

(declare-fun e!183531 () Bool)

(assert (=> b!289970 (= e!183532 e!183531)))

(declare-fun res!151488 () Bool)

(assert (=> b!289970 (=> (not res!151488) (not e!183531))))

(declare-datatypes ((SeekEntryResult!2094 0))(
  ( (MissingZero!2094 (index!10546 (_ BitVec 32))) (Found!2094 (index!10547 (_ BitVec 32))) (Intermediate!2094 (undefined!2906 Bool) (index!10548 (_ BitVec 32)) (x!28715 (_ BitVec 32))) (Undefined!2094) (MissingVacant!2094 (index!10549 (_ BitVec 32))) )
))
(declare-fun lt!143229 () SeekEntryResult!2094)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289970 (= res!151488 (or (= lt!143229 (MissingZero!2094 i!1256)) (= lt!143229 (MissingVacant!2094 i!1256))))))

(declare-datatypes ((array!14615 0))(
  ( (array!14616 (arr!6934 (Array (_ BitVec 32) (_ BitVec 64))) (size!7286 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14615)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14615 (_ BitVec 32)) SeekEntryResult!2094)

(assert (=> b!289970 (= lt!143229 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289971 () Bool)

(declare-fun res!151490 () Bool)

(assert (=> b!289971 (=> (not res!151490) (not e!183531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14615 (_ BitVec 32)) Bool)

(assert (=> b!289971 (= res!151490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289972 () Bool)

(assert (=> b!289972 (= e!183531 false)))

(declare-fun lt!143230 () SeekEntryResult!2094)

(declare-fun lt!143228 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14615 (_ BitVec 32)) SeekEntryResult!2094)

(assert (=> b!289972 (= lt!143230 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143228 k!2524 (array!14616 (store (arr!6934 a!3312) i!1256 k!2524) (size!7286 a!3312)) mask!3809))))

(declare-fun lt!143231 () SeekEntryResult!2094)

(assert (=> b!289972 (= lt!143231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143228 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289972 (= lt!143228 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289969 () Bool)

(declare-fun res!151489 () Bool)

(assert (=> b!289969 (=> (not res!151489) (not e!183532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289969 (= res!151489 (validKeyInArray!0 k!2524))))

(declare-fun res!151487 () Bool)

(assert (=> start!28312 (=> (not res!151487) (not e!183532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28312 (= res!151487 (validMask!0 mask!3809))))

(assert (=> start!28312 e!183532))

(assert (=> start!28312 true))

(declare-fun array_inv!4888 (array!14615) Bool)

(assert (=> start!28312 (array_inv!4888 a!3312)))

(declare-fun b!289973 () Bool)

(declare-fun res!151491 () Bool)

(assert (=> b!289973 (=> (not res!151491) (not e!183532))))

(assert (=> b!289973 (= res!151491 (and (= (size!7286 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7286 a!3312))))))

(declare-fun b!289974 () Bool)

(declare-fun res!151486 () Bool)

(assert (=> b!289974 (=> (not res!151486) (not e!183532))))

(declare-fun arrayContainsKey!0 (array!14615 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289974 (= res!151486 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28312 res!151487) b!289973))

(assert (= (and b!289973 res!151491) b!289969))

(assert (= (and b!289969 res!151489) b!289974))

(assert (= (and b!289974 res!151486) b!289970))

(assert (= (and b!289970 res!151488) b!289971))

(assert (= (and b!289971 res!151490) b!289972))

(declare-fun m!304105 () Bool)

(assert (=> b!289969 m!304105))

(declare-fun m!304107 () Bool)

(assert (=> b!289970 m!304107))

(declare-fun m!304109 () Bool)

(assert (=> b!289974 m!304109))

(declare-fun m!304111 () Bool)

(assert (=> b!289972 m!304111))

(declare-fun m!304113 () Bool)

(assert (=> b!289972 m!304113))

(declare-fun m!304115 () Bool)

(assert (=> b!289972 m!304115))

(declare-fun m!304117 () Bool)

(assert (=> b!289972 m!304117))

(declare-fun m!304119 () Bool)

(assert (=> b!289971 m!304119))

(declare-fun m!304121 () Bool)

(assert (=> start!28312 m!304121))

(declare-fun m!304123 () Bool)

(assert (=> start!28312 m!304123))

(push 1)

