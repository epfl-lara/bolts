; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28332 () Bool)

(assert start!28332)

(declare-fun b!290149 () Bool)

(declare-fun e!183620 () Bool)

(assert (=> b!290149 (= e!183620 false)))

(declare-datatypes ((SeekEntryResult!2104 0))(
  ( (MissingZero!2104 (index!10586 (_ BitVec 32))) (Found!2104 (index!10587 (_ BitVec 32))) (Intermediate!2104 (undefined!2916 Bool) (index!10588 (_ BitVec 32)) (x!28749 (_ BitVec 32))) (Undefined!2104) (MissingVacant!2104 (index!10589 (_ BitVec 32))) )
))
(declare-fun lt!143350 () SeekEntryResult!2104)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14635 0))(
  ( (array!14636 (arr!6944 (Array (_ BitVec 32) (_ BitVec 64))) (size!7296 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14635)

(declare-fun lt!143351 () (_ BitVec 32))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14635 (_ BitVec 32)) SeekEntryResult!2104)

(assert (=> b!290149 (= lt!143350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143351 k0!2524 (array!14636 (store (arr!6944 a!3312) i!1256 k0!2524) (size!7296 a!3312)) mask!3809))))

(declare-fun lt!143348 () SeekEntryResult!2104)

(assert (=> b!290149 (= lt!143348 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143351 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290149 (= lt!143351 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!290150 () Bool)

(declare-fun res!151666 () Bool)

(declare-fun e!183622 () Bool)

(assert (=> b!290150 (=> (not res!151666) (not e!183622))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290150 (= res!151666 (validKeyInArray!0 k0!2524))))

(declare-fun b!290151 () Bool)

(declare-fun res!151670 () Bool)

(assert (=> b!290151 (=> (not res!151670) (not e!183620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14635 (_ BitVec 32)) Bool)

(assert (=> b!290151 (= res!151670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!151667 () Bool)

(assert (=> start!28332 (=> (not res!151667) (not e!183622))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28332 (= res!151667 (validMask!0 mask!3809))))

(assert (=> start!28332 e!183622))

(assert (=> start!28332 true))

(declare-fun array_inv!4898 (array!14635) Bool)

(assert (=> start!28332 (array_inv!4898 a!3312)))

(declare-fun b!290152 () Bool)

(assert (=> b!290152 (= e!183622 e!183620)))

(declare-fun res!151668 () Bool)

(assert (=> b!290152 (=> (not res!151668) (not e!183620))))

(declare-fun lt!143349 () SeekEntryResult!2104)

(assert (=> b!290152 (= res!151668 (or (= lt!143349 (MissingZero!2104 i!1256)) (= lt!143349 (MissingVacant!2104 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14635 (_ BitVec 32)) SeekEntryResult!2104)

(assert (=> b!290152 (= lt!143349 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!290153 () Bool)

(declare-fun res!151671 () Bool)

(assert (=> b!290153 (=> (not res!151671) (not e!183622))))

(assert (=> b!290153 (= res!151671 (and (= (size!7296 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7296 a!3312))))))

(declare-fun b!290154 () Bool)

(declare-fun res!151669 () Bool)

(assert (=> b!290154 (=> (not res!151669) (not e!183622))))

(declare-fun arrayContainsKey!0 (array!14635 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290154 (= res!151669 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28332 res!151667) b!290153))

(assert (= (and b!290153 res!151671) b!290150))

(assert (= (and b!290150 res!151666) b!290154))

(assert (= (and b!290154 res!151669) b!290152))

(assert (= (and b!290152 res!151668) b!290151))

(assert (= (and b!290151 res!151670) b!290149))

(declare-fun m!304305 () Bool)

(assert (=> b!290149 m!304305))

(declare-fun m!304307 () Bool)

(assert (=> b!290149 m!304307))

(declare-fun m!304309 () Bool)

(assert (=> b!290149 m!304309))

(declare-fun m!304311 () Bool)

(assert (=> b!290149 m!304311))

(declare-fun m!304313 () Bool)

(assert (=> b!290154 m!304313))

(declare-fun m!304315 () Bool)

(assert (=> b!290152 m!304315))

(declare-fun m!304317 () Bool)

(assert (=> b!290150 m!304317))

(declare-fun m!304319 () Bool)

(assert (=> b!290151 m!304319))

(declare-fun m!304321 () Bool)

(assert (=> start!28332 m!304321))

(declare-fun m!304323 () Bool)

(assert (=> start!28332 m!304323))

(check-sat (not b!290154) (not b!290150) (not start!28332) (not b!290149) (not b!290152) (not b!290151))
(check-sat)
