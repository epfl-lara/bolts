; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28078 () Bool)

(assert start!28078)

(declare-fun b!287593 () Bool)

(declare-fun res!149398 () Bool)

(declare-fun e!182149 () Bool)

(assert (=> b!287593 (=> (not res!149398) (not e!182149))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14426 0))(
  ( (array!14427 (arr!6841 (Array (_ BitVec 32) (_ BitVec 64))) (size!7193 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14426)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!287593 (= res!149398 (and (= (size!7193 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7193 a!3312))))))

(declare-fun b!287594 () Bool)

(declare-fun e!182147 () Bool)

(assert (=> b!287594 (= e!182149 e!182147)))

(declare-fun res!149400 () Bool)

(assert (=> b!287594 (=> (not res!149400) (not e!182147))))

(declare-datatypes ((SeekEntryResult!2001 0))(
  ( (MissingZero!2001 (index!10174 (_ BitVec 32))) (Found!2001 (index!10175 (_ BitVec 32))) (Intermediate!2001 (undefined!2813 Bool) (index!10176 (_ BitVec 32)) (x!28368 (_ BitVec 32))) (Undefined!2001) (MissingVacant!2001 (index!10177 (_ BitVec 32))) )
))
(declare-fun lt!141626 () SeekEntryResult!2001)

(assert (=> b!287594 (= res!149400 (or (= lt!141626 (MissingZero!2001 i!1256)) (= lt!141626 (MissingVacant!2001 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14426 (_ BitVec 32)) SeekEntryResult!2001)

(assert (=> b!287594 (= lt!141626 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287595 () Bool)

(declare-fun res!149397 () Bool)

(assert (=> b!287595 (=> (not res!149397) (not e!182149))))

(declare-fun arrayContainsKey!0 (array!14426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287595 (= res!149397 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287596 () Bool)

(declare-fun res!149399 () Bool)

(assert (=> b!287596 (=> (not res!149399) (not e!182149))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287596 (= res!149399 (validKeyInArray!0 k!2524))))

(declare-fun res!149396 () Bool)

(assert (=> start!28078 (=> (not res!149396) (not e!182149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28078 (= res!149396 (validMask!0 mask!3809))))

(assert (=> start!28078 e!182149))

(assert (=> start!28078 true))

(declare-fun array_inv!4795 (array!14426) Bool)

(assert (=> start!28078 (array_inv!4795 a!3312)))

(declare-fun b!287597 () Bool)

(assert (=> b!287597 (= e!182147 false)))

(declare-fun lt!141625 () SeekEntryResult!2001)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14426 (_ BitVec 32)) SeekEntryResult!2001)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287597 (= lt!141625 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!287598 () Bool)

(declare-fun res!149395 () Bool)

(assert (=> b!287598 (=> (not res!149395) (not e!182147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14426 (_ BitVec 32)) Bool)

(assert (=> b!287598 (= res!149395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28078 res!149396) b!287593))

(assert (= (and b!287593 res!149398) b!287596))

(assert (= (and b!287596 res!149399) b!287595))

(assert (= (and b!287595 res!149397) b!287594))

(assert (= (and b!287594 res!149400) b!287598))

(assert (= (and b!287598 res!149395) b!287597))

(declare-fun m!301975 () Bool)

(assert (=> b!287594 m!301975))

(declare-fun m!301977 () Bool)

(assert (=> b!287596 m!301977))

(declare-fun m!301979 () Bool)

(assert (=> b!287597 m!301979))

(assert (=> b!287597 m!301979))

(declare-fun m!301981 () Bool)

(assert (=> b!287597 m!301981))

(declare-fun m!301983 () Bool)

(assert (=> start!28078 m!301983))

(declare-fun m!301985 () Bool)

(assert (=> start!28078 m!301985))

(declare-fun m!301987 () Bool)

(assert (=> b!287598 m!301987))

(declare-fun m!301989 () Bool)

(assert (=> b!287595 m!301989))

(push 1)

