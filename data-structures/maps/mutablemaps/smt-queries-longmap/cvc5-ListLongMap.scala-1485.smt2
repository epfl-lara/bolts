; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28306 () Bool)

(assert start!28306)

(declare-fun b!289915 () Bool)

(declare-fun res!151434 () Bool)

(declare-fun e!183505 () Bool)

(assert (=> b!289915 (=> (not res!151434) (not e!183505))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14609 0))(
  ( (array!14610 (arr!6931 (Array (_ BitVec 32) (_ BitVec 64))) (size!7283 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14609)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!289915 (= res!151434 (and (= (size!7283 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7283 a!3312))))))

(declare-fun b!289916 () Bool)

(declare-fun e!183504 () Bool)

(assert (=> b!289916 (= e!183505 e!183504)))

(declare-fun res!151435 () Bool)

(assert (=> b!289916 (=> (not res!151435) (not e!183504))))

(declare-datatypes ((SeekEntryResult!2091 0))(
  ( (MissingZero!2091 (index!10534 (_ BitVec 32))) (Found!2091 (index!10535 (_ BitVec 32))) (Intermediate!2091 (undefined!2903 Bool) (index!10536 (_ BitVec 32)) (x!28704 (_ BitVec 32))) (Undefined!2091) (MissingVacant!2091 (index!10537 (_ BitVec 32))) )
))
(declare-fun lt!143194 () SeekEntryResult!2091)

(assert (=> b!289916 (= res!151435 (or (= lt!143194 (MissingZero!2091 i!1256)) (= lt!143194 (MissingVacant!2091 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14609 (_ BitVec 32)) SeekEntryResult!2091)

(assert (=> b!289916 (= lt!143194 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289917 () Bool)

(declare-fun res!151433 () Bool)

(assert (=> b!289917 (=> (not res!151433) (not e!183505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289917 (= res!151433 (validKeyInArray!0 k!2524))))

(declare-fun res!151436 () Bool)

(assert (=> start!28306 (=> (not res!151436) (not e!183505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28306 (= res!151436 (validMask!0 mask!3809))))

(assert (=> start!28306 e!183505))

(assert (=> start!28306 true))

(declare-fun array_inv!4885 (array!14609) Bool)

(assert (=> start!28306 (array_inv!4885 a!3312)))

(declare-fun b!289918 () Bool)

(declare-fun res!151437 () Bool)

(assert (=> b!289918 (=> (not res!151437) (not e!183505))))

(declare-fun arrayContainsKey!0 (array!14609 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289918 (= res!151437 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289919 () Bool)

(declare-fun res!151432 () Bool)

(assert (=> b!289919 (=> (not res!151432) (not e!183504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14609 (_ BitVec 32)) Bool)

(assert (=> b!289919 (= res!151432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289920 () Bool)

(assert (=> b!289920 (= e!183504 false)))

(declare-fun lt!143195 () (_ BitVec 32))

(declare-fun lt!143192 () SeekEntryResult!2091)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14609 (_ BitVec 32)) SeekEntryResult!2091)

(assert (=> b!289920 (= lt!143192 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143195 k!2524 (array!14610 (store (arr!6931 a!3312) i!1256 k!2524) (size!7283 a!3312)) mask!3809))))

(declare-fun lt!143193 () SeekEntryResult!2091)

(assert (=> b!289920 (= lt!143193 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143195 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289920 (= lt!143195 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28306 res!151436) b!289915))

(assert (= (and b!289915 res!151434) b!289917))

(assert (= (and b!289917 res!151433) b!289918))

(assert (= (and b!289918 res!151437) b!289916))

(assert (= (and b!289916 res!151435) b!289919))

(assert (= (and b!289919 res!151432) b!289920))

(declare-fun m!304045 () Bool)

(assert (=> b!289919 m!304045))

(declare-fun m!304047 () Bool)

(assert (=> b!289920 m!304047))

(declare-fun m!304049 () Bool)

(assert (=> b!289920 m!304049))

(declare-fun m!304051 () Bool)

(assert (=> b!289920 m!304051))

(declare-fun m!304053 () Bool)

(assert (=> b!289920 m!304053))

(declare-fun m!304055 () Bool)

(assert (=> b!289917 m!304055))

(declare-fun m!304057 () Bool)

(assert (=> b!289918 m!304057))

(declare-fun m!304059 () Bool)

(assert (=> start!28306 m!304059))

(declare-fun m!304061 () Bool)

(assert (=> start!28306 m!304061))

(declare-fun m!304063 () Bool)

(assert (=> b!289916 m!304063))

(push 1)

