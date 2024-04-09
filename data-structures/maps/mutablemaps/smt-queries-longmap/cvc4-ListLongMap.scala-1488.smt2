; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28328 () Bool)

(assert start!28328)

(declare-fun b!290113 () Bool)

(declare-fun res!151632 () Bool)

(declare-fun e!183603 () Bool)

(assert (=> b!290113 (=> (not res!151632) (not e!183603))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290113 (= res!151632 (validKeyInArray!0 k!2524))))

(declare-fun b!290114 () Bool)

(declare-fun res!151631 () Bool)

(assert (=> b!290114 (=> (not res!151631) (not e!183603))))

(declare-datatypes ((array!14631 0))(
  ( (array!14632 (arr!6942 (Array (_ BitVec 32) (_ BitVec 64))) (size!7294 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14631)

(declare-fun arrayContainsKey!0 (array!14631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290114 (= res!151631 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!151630 () Bool)

(assert (=> start!28328 (=> (not res!151630) (not e!183603))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28328 (= res!151630 (validMask!0 mask!3809))))

(assert (=> start!28328 e!183603))

(assert (=> start!28328 true))

(declare-fun array_inv!4896 (array!14631) Bool)

(assert (=> start!28328 (array_inv!4896 a!3312)))

(declare-fun b!290115 () Bool)

(declare-fun e!183604 () Bool)

(assert (=> b!290115 (= e!183603 e!183604)))

(declare-fun res!151633 () Bool)

(assert (=> b!290115 (=> (not res!151633) (not e!183604))))

(declare-datatypes ((SeekEntryResult!2102 0))(
  ( (MissingZero!2102 (index!10578 (_ BitVec 32))) (Found!2102 (index!10579 (_ BitVec 32))) (Intermediate!2102 (undefined!2914 Bool) (index!10580 (_ BitVec 32)) (x!28739 (_ BitVec 32))) (Undefined!2102) (MissingVacant!2102 (index!10581 (_ BitVec 32))) )
))
(declare-fun lt!143324 () SeekEntryResult!2102)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!290115 (= res!151633 (or (= lt!143324 (MissingZero!2102 i!1256)) (= lt!143324 (MissingVacant!2102 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14631 (_ BitVec 32)) SeekEntryResult!2102)

(assert (=> b!290115 (= lt!143324 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290116 () Bool)

(assert (=> b!290116 (= e!183604 false)))

(declare-fun lt!143326 () (_ BitVec 32))

(declare-fun lt!143325 () SeekEntryResult!2102)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14631 (_ BitVec 32)) SeekEntryResult!2102)

(assert (=> b!290116 (= lt!143325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143326 k!2524 (array!14632 (store (arr!6942 a!3312) i!1256 k!2524) (size!7294 a!3312)) mask!3809))))

(declare-fun lt!143327 () SeekEntryResult!2102)

(assert (=> b!290116 (= lt!143327 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143326 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290116 (= lt!143326 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290117 () Bool)

(declare-fun res!151635 () Bool)

(assert (=> b!290117 (=> (not res!151635) (not e!183603))))

(assert (=> b!290117 (= res!151635 (and (= (size!7294 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7294 a!3312))))))

(declare-fun b!290118 () Bool)

(declare-fun res!151634 () Bool)

(assert (=> b!290118 (=> (not res!151634) (not e!183604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14631 (_ BitVec 32)) Bool)

(assert (=> b!290118 (= res!151634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28328 res!151630) b!290117))

(assert (= (and b!290117 res!151635) b!290113))

(assert (= (and b!290113 res!151632) b!290114))

(assert (= (and b!290114 res!151631) b!290115))

(assert (= (and b!290115 res!151633) b!290118))

(assert (= (and b!290118 res!151634) b!290116))

(declare-fun m!304265 () Bool)

(assert (=> b!290116 m!304265))

(declare-fun m!304267 () Bool)

(assert (=> b!290116 m!304267))

(declare-fun m!304269 () Bool)

(assert (=> b!290116 m!304269))

(declare-fun m!304271 () Bool)

(assert (=> b!290116 m!304271))

(declare-fun m!304273 () Bool)

(assert (=> b!290115 m!304273))

(declare-fun m!304275 () Bool)

(assert (=> b!290113 m!304275))

(declare-fun m!304277 () Bool)

(assert (=> b!290114 m!304277))

(declare-fun m!304279 () Bool)

(assert (=> b!290118 m!304279))

(declare-fun m!304281 () Bool)

(assert (=> start!28328 m!304281))

(declare-fun m!304283 () Bool)

(assert (=> start!28328 m!304283))

(push 1)

(assert (not b!290113))

(assert (not start!28328))

