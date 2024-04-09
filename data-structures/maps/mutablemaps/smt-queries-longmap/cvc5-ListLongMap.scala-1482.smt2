; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28288 () Bool)

(assert start!28288)

(declare-fun b!289753 () Bool)

(declare-fun res!151272 () Bool)

(declare-fun e!183424 () Bool)

(assert (=> b!289753 (=> (not res!151272) (not e!183424))))

(declare-datatypes ((array!14591 0))(
  ( (array!14592 (arr!6922 (Array (_ BitVec 32) (_ BitVec 64))) (size!7274 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14591)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14591 (_ BitVec 32)) Bool)

(assert (=> b!289753 (= res!151272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!151275 () Bool)

(declare-fun e!183422 () Bool)

(assert (=> start!28288 (=> (not res!151275) (not e!183422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28288 (= res!151275 (validMask!0 mask!3809))))

(assert (=> start!28288 e!183422))

(assert (=> start!28288 true))

(declare-fun array_inv!4876 (array!14591) Bool)

(assert (=> start!28288 (array_inv!4876 a!3312)))

(declare-fun b!289754 () Bool)

(assert (=> b!289754 (= e!183422 e!183424)))

(declare-fun res!151273 () Bool)

(assert (=> b!289754 (=> (not res!151273) (not e!183424))))

(declare-datatypes ((SeekEntryResult!2082 0))(
  ( (MissingZero!2082 (index!10498 (_ BitVec 32))) (Found!2082 (index!10499 (_ BitVec 32))) (Intermediate!2082 (undefined!2894 Bool) (index!10500 (_ BitVec 32)) (x!28671 (_ BitVec 32))) (Undefined!2082) (MissingVacant!2082 (index!10501 (_ BitVec 32))) )
))
(declare-fun lt!143077 () SeekEntryResult!2082)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289754 (= res!151273 (or (= lt!143077 (MissingZero!2082 i!1256)) (= lt!143077 (MissingVacant!2082 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14591 (_ BitVec 32)) SeekEntryResult!2082)

(assert (=> b!289754 (= lt!143077 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289755 () Bool)

(declare-fun res!151271 () Bool)

(assert (=> b!289755 (=> (not res!151271) (not e!183422))))

(declare-fun arrayContainsKey!0 (array!14591 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289755 (= res!151271 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289756 () Bool)

(declare-fun res!151270 () Bool)

(assert (=> b!289756 (=> (not res!151270) (not e!183422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289756 (= res!151270 (validKeyInArray!0 k!2524))))

(declare-fun b!289757 () Bool)

(declare-fun res!151274 () Bool)

(assert (=> b!289757 (=> (not res!151274) (not e!183422))))

(assert (=> b!289757 (= res!151274 (and (= (size!7274 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7274 a!3312))))))

(declare-fun b!289758 () Bool)

(assert (=> b!289758 (= e!183424 false)))

(declare-fun lt!143076 () SeekEntryResult!2082)

(declare-fun lt!143075 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14591 (_ BitVec 32)) SeekEntryResult!2082)

(assert (=> b!289758 (= lt!143076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143075 k!2524 (array!14592 (store (arr!6922 a!3312) i!1256 k!2524) (size!7274 a!3312)) mask!3809))))

(declare-fun lt!143078 () SeekEntryResult!2082)

(assert (=> b!289758 (= lt!143078 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143075 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289758 (= lt!143075 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28288 res!151275) b!289757))

(assert (= (and b!289757 res!151274) b!289756))

(assert (= (and b!289756 res!151270) b!289755))

(assert (= (and b!289755 res!151271) b!289754))

(assert (= (and b!289754 res!151273) b!289753))

(assert (= (and b!289753 res!151272) b!289758))

(declare-fun m!303865 () Bool)

(assert (=> b!289755 m!303865))

(declare-fun m!303867 () Bool)

(assert (=> b!289756 m!303867))

(declare-fun m!303869 () Bool)

(assert (=> start!28288 m!303869))

(declare-fun m!303871 () Bool)

(assert (=> start!28288 m!303871))

(declare-fun m!303873 () Bool)

(assert (=> b!289754 m!303873))

(declare-fun m!303875 () Bool)

(assert (=> b!289758 m!303875))

(declare-fun m!303877 () Bool)

(assert (=> b!289758 m!303877))

(declare-fun m!303879 () Bool)

(assert (=> b!289758 m!303879))

(declare-fun m!303881 () Bool)

(assert (=> b!289758 m!303881))

(declare-fun m!303883 () Bool)

(assert (=> b!289753 m!303883))

(push 1)

