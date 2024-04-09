; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28098 () Bool)

(assert start!28098)

(declare-fun res!149578 () Bool)

(declare-fun e!182238 () Bool)

(assert (=> start!28098 (=> (not res!149578) (not e!182238))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28098 (= res!149578 (validMask!0 mask!3809))))

(assert (=> start!28098 e!182238))

(assert (=> start!28098 true))

(declare-datatypes ((array!14446 0))(
  ( (array!14447 (arr!6851 (Array (_ BitVec 32) (_ BitVec 64))) (size!7203 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14446)

(declare-fun array_inv!4805 (array!14446) Bool)

(assert (=> start!28098 (array_inv!4805 a!3312)))

(declare-fun b!287773 () Bool)

(declare-fun res!149576 () Bool)

(declare-fun e!182239 () Bool)

(assert (=> b!287773 (=> (not res!149576) (not e!182239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14446 (_ BitVec 32)) Bool)

(assert (=> b!287773 (= res!149576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287774 () Bool)

(declare-fun res!149579 () Bool)

(assert (=> b!287774 (=> (not res!149579) (not e!182238))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287774 (= res!149579 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287775 () Bool)

(assert (=> b!287775 (= e!182238 e!182239)))

(declare-fun res!149575 () Bool)

(assert (=> b!287775 (=> (not res!149575) (not e!182239))))

(declare-datatypes ((SeekEntryResult!2011 0))(
  ( (MissingZero!2011 (index!10214 (_ BitVec 32))) (Found!2011 (index!10215 (_ BitVec 32))) (Intermediate!2011 (undefined!2823 Bool) (index!10216 (_ BitVec 32)) (x!28402 (_ BitVec 32))) (Undefined!2011) (MissingVacant!2011 (index!10217 (_ BitVec 32))) )
))
(declare-fun lt!141713 () SeekEntryResult!2011)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287775 (= res!149575 (or (= lt!141713 (MissingZero!2011 i!1256)) (= lt!141713 (MissingVacant!2011 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14446 (_ BitVec 32)) SeekEntryResult!2011)

(assert (=> b!287775 (= lt!141713 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!287776 () Bool)

(declare-fun res!149577 () Bool)

(assert (=> b!287776 (=> (not res!149577) (not e!182238))))

(assert (=> b!287776 (= res!149577 (and (= (size!7203 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7203 a!3312))))))

(declare-fun b!287777 () Bool)

(declare-fun res!149580 () Bool)

(assert (=> b!287777 (=> (not res!149580) (not e!182238))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287777 (= res!149580 (validKeyInArray!0 k0!2524))))

(declare-fun b!287778 () Bool)

(assert (=> b!287778 (= e!182239 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun lt!141715 () (_ BitVec 32))

(declare-fun lt!141714 () SeekEntryResult!2011)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14446 (_ BitVec 32)) SeekEntryResult!2011)

(assert (=> b!287778 (= lt!141714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141715 k0!2524 (array!14447 (store (arr!6851 a!3312) i!1256 k0!2524) (size!7203 a!3312)) mask!3809))))

(declare-fun lt!141716 () SeekEntryResult!2011)

(assert (=> b!287778 (= lt!141716 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141715 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287778 (= lt!141715 (toIndex!0 k0!2524 mask!3809))))

(assert (= (and start!28098 res!149578) b!287776))

(assert (= (and b!287776 res!149577) b!287777))

(assert (= (and b!287777 res!149580) b!287774))

(assert (= (and b!287774 res!149579) b!287775))

(assert (= (and b!287775 res!149575) b!287773))

(assert (= (and b!287773 res!149576) b!287778))

(declare-fun m!302151 () Bool)

(assert (=> b!287777 m!302151))

(declare-fun m!302153 () Bool)

(assert (=> b!287778 m!302153))

(declare-fun m!302155 () Bool)

(assert (=> b!287778 m!302155))

(declare-fun m!302157 () Bool)

(assert (=> b!287778 m!302157))

(declare-fun m!302159 () Bool)

(assert (=> b!287778 m!302159))

(declare-fun m!302161 () Bool)

(assert (=> b!287773 m!302161))

(declare-fun m!302163 () Bool)

(assert (=> start!28098 m!302163))

(declare-fun m!302165 () Bool)

(assert (=> start!28098 m!302165))

(declare-fun m!302167 () Bool)

(assert (=> b!287774 m!302167))

(declare-fun m!302169 () Bool)

(assert (=> b!287775 m!302169))

(check-sat (not b!287774) (not start!28098) (not b!287777) (not b!287775) (not b!287773) (not b!287778))
(check-sat)
