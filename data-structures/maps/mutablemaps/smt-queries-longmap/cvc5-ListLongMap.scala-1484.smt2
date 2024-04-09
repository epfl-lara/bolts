; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28300 () Bool)

(assert start!28300)

(declare-fun b!289861 () Bool)

(declare-fun res!151381 () Bool)

(declare-fun e!183477 () Bool)

(assert (=> b!289861 (=> (not res!151381) (not e!183477))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14603 0))(
  ( (array!14604 (arr!6928 (Array (_ BitVec 32) (_ BitVec 64))) (size!7280 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14603)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!289861 (= res!151381 (and (= (size!7280 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7280 a!3312))))))

(declare-fun b!289862 () Bool)

(declare-fun res!151383 () Bool)

(assert (=> b!289862 (=> (not res!151383) (not e!183477))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289862 (= res!151383 (validKeyInArray!0 k!2524))))

(declare-fun b!289863 () Bool)

(declare-fun e!183478 () Bool)

(assert (=> b!289863 (= e!183478 false)))

(declare-datatypes ((SeekEntryResult!2088 0))(
  ( (MissingZero!2088 (index!10522 (_ BitVec 32))) (Found!2088 (index!10523 (_ BitVec 32))) (Intermediate!2088 (undefined!2900 Bool) (index!10524 (_ BitVec 32)) (x!28693 (_ BitVec 32))) (Undefined!2088) (MissingVacant!2088 (index!10525 (_ BitVec 32))) )
))
(declare-fun lt!143158 () SeekEntryResult!2088)

(declare-fun lt!143157 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14603 (_ BitVec 32)) SeekEntryResult!2088)

(assert (=> b!289863 (= lt!143158 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143157 k!2524 (array!14604 (store (arr!6928 a!3312) i!1256 k!2524) (size!7280 a!3312)) mask!3809))))

(declare-fun lt!143156 () SeekEntryResult!2088)

(assert (=> b!289863 (= lt!143156 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143157 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289863 (= lt!143157 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289864 () Bool)

(assert (=> b!289864 (= e!183477 e!183478)))

(declare-fun res!151378 () Bool)

(assert (=> b!289864 (=> (not res!151378) (not e!183478))))

(declare-fun lt!143159 () SeekEntryResult!2088)

(assert (=> b!289864 (= res!151378 (or (= lt!143159 (MissingZero!2088 i!1256)) (= lt!143159 (MissingVacant!2088 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14603 (_ BitVec 32)) SeekEntryResult!2088)

(assert (=> b!289864 (= lt!143159 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!151380 () Bool)

(assert (=> start!28300 (=> (not res!151380) (not e!183477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28300 (= res!151380 (validMask!0 mask!3809))))

(assert (=> start!28300 e!183477))

(assert (=> start!28300 true))

(declare-fun array_inv!4882 (array!14603) Bool)

(assert (=> start!28300 (array_inv!4882 a!3312)))

(declare-fun b!289865 () Bool)

(declare-fun res!151382 () Bool)

(assert (=> b!289865 (=> (not res!151382) (not e!183477))))

(declare-fun arrayContainsKey!0 (array!14603 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289865 (= res!151382 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289866 () Bool)

(declare-fun res!151379 () Bool)

(assert (=> b!289866 (=> (not res!151379) (not e!183478))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14603 (_ BitVec 32)) Bool)

(assert (=> b!289866 (= res!151379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28300 res!151380) b!289861))

(assert (= (and b!289861 res!151381) b!289862))

(assert (= (and b!289862 res!151383) b!289865))

(assert (= (and b!289865 res!151382) b!289864))

(assert (= (and b!289864 res!151378) b!289866))

(assert (= (and b!289866 res!151379) b!289863))

(declare-fun m!303985 () Bool)

(assert (=> b!289864 m!303985))

(declare-fun m!303987 () Bool)

(assert (=> b!289863 m!303987))

(declare-fun m!303989 () Bool)

(assert (=> b!289863 m!303989))

(declare-fun m!303991 () Bool)

(assert (=> b!289863 m!303991))

(declare-fun m!303993 () Bool)

(assert (=> b!289863 m!303993))

(declare-fun m!303995 () Bool)

(assert (=> b!289862 m!303995))

(declare-fun m!303997 () Bool)

(assert (=> b!289865 m!303997))

(declare-fun m!303999 () Bool)

(assert (=> b!289866 m!303999))

(declare-fun m!304001 () Bool)

(assert (=> start!28300 m!304001))

(declare-fun m!304003 () Bool)

(assert (=> start!28300 m!304003))

(push 1)

