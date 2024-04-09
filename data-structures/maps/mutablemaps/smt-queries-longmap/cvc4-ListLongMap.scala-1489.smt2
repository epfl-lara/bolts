; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28334 () Bool)

(assert start!28334)

(declare-fun b!290167 () Bool)

(declare-fun res!151685 () Bool)

(declare-fun e!183631 () Bool)

(assert (=> b!290167 (=> (not res!151685) (not e!183631))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14637 0))(
  ( (array!14638 (arr!6945 (Array (_ BitVec 32) (_ BitVec 64))) (size!7297 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14637)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!290167 (= res!151685 (and (= (size!7297 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7297 a!3312))))))

(declare-fun b!290168 () Bool)

(declare-fun e!183630 () Bool)

(assert (=> b!290168 (= e!183631 e!183630)))

(declare-fun res!151687 () Bool)

(assert (=> b!290168 (=> (not res!151687) (not e!183630))))

(declare-datatypes ((SeekEntryResult!2105 0))(
  ( (MissingZero!2105 (index!10590 (_ BitVec 32))) (Found!2105 (index!10591 (_ BitVec 32))) (Intermediate!2105 (undefined!2917 Bool) (index!10592 (_ BitVec 32)) (x!28750 (_ BitVec 32))) (Undefined!2105) (MissingVacant!2105 (index!10593 (_ BitVec 32))) )
))
(declare-fun lt!143360 () SeekEntryResult!2105)

(assert (=> b!290168 (= res!151687 (or (= lt!143360 (MissingZero!2105 i!1256)) (= lt!143360 (MissingVacant!2105 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14637 (_ BitVec 32)) SeekEntryResult!2105)

(assert (=> b!290168 (= lt!143360 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!151684 () Bool)

(assert (=> start!28334 (=> (not res!151684) (not e!183631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28334 (= res!151684 (validMask!0 mask!3809))))

(assert (=> start!28334 e!183631))

(assert (=> start!28334 true))

(declare-fun array_inv!4899 (array!14637) Bool)

(assert (=> start!28334 (array_inv!4899 a!3312)))

(declare-fun b!290169 () Bool)

(declare-fun res!151689 () Bool)

(assert (=> b!290169 (=> (not res!151689) (not e!183631))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290169 (= res!151689 (validKeyInArray!0 k!2524))))

(declare-fun b!290170 () Bool)

(declare-fun res!151688 () Bool)

(assert (=> b!290170 (=> (not res!151688) (not e!183630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14637 (_ BitVec 32)) Bool)

(assert (=> b!290170 (= res!151688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290171 () Bool)

(declare-fun res!151686 () Bool)

(assert (=> b!290171 (=> (not res!151686) (not e!183631))))

(declare-fun arrayContainsKey!0 (array!14637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290171 (= res!151686 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290172 () Bool)

(assert (=> b!290172 (= e!183630 false)))

(declare-fun lt!143361 () (_ BitVec 32))

(declare-fun lt!143363 () SeekEntryResult!2105)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14637 (_ BitVec 32)) SeekEntryResult!2105)

(assert (=> b!290172 (= lt!143363 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143361 k!2524 (array!14638 (store (arr!6945 a!3312) i!1256 k!2524) (size!7297 a!3312)) mask!3809))))

(declare-fun lt!143362 () SeekEntryResult!2105)

(assert (=> b!290172 (= lt!143362 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143361 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290172 (= lt!143361 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28334 res!151684) b!290167))

(assert (= (and b!290167 res!151685) b!290169))

(assert (= (and b!290169 res!151689) b!290171))

(assert (= (and b!290171 res!151686) b!290168))

(assert (= (and b!290168 res!151687) b!290170))

(assert (= (and b!290170 res!151688) b!290172))

(declare-fun m!304325 () Bool)

(assert (=> b!290172 m!304325))

(declare-fun m!304327 () Bool)

(assert (=> b!290172 m!304327))

(declare-fun m!304329 () Bool)

(assert (=> b!290172 m!304329))

(declare-fun m!304331 () Bool)

(assert (=> b!290172 m!304331))

(declare-fun m!304333 () Bool)

(assert (=> b!290170 m!304333))

(declare-fun m!304335 () Bool)

(assert (=> start!28334 m!304335))

(declare-fun m!304337 () Bool)

(assert (=> start!28334 m!304337))

(declare-fun m!304339 () Bool)

(assert (=> b!290168 m!304339))

(declare-fun m!304341 () Bool)

(assert (=> b!290169 m!304341))

(declare-fun m!304343 () Bool)

(assert (=> b!290171 m!304343))

(push 1)

(assert (not b!290171))

(assert (not b!290170))

(assert (not start!28334))

(assert (not b!290172))

(assert (not b!290168))

(assert (not b!290169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

