; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27876 () Bool)

(assert start!27876)

(declare-fun b!286531 () Bool)

(declare-fun res!148649 () Bool)

(declare-fun e!181553 () Bool)

(assert (=> b!286531 (=> (not res!148649) (not e!181553))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286531 (= res!148649 (validKeyInArray!0 k0!2524))))

(declare-fun b!286532 () Bool)

(declare-fun e!181554 () Bool)

(assert (=> b!286532 (= e!181553 e!181554)))

(declare-fun res!148651 () Bool)

(assert (=> b!286532 (=> (not res!148651) (not e!181554))))

(declare-datatypes ((SeekEntryResult!1969 0))(
  ( (MissingZero!1969 (index!10046 (_ BitVec 32))) (Found!1969 (index!10047 (_ BitVec 32))) (Intermediate!1969 (undefined!2781 Bool) (index!10048 (_ BitVec 32)) (x!28233 (_ BitVec 32))) (Undefined!1969) (MissingVacant!1969 (index!10049 (_ BitVec 32))) )
))
(declare-fun lt!141172 () SeekEntryResult!1969)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286532 (= res!148651 (or (= lt!141172 (MissingZero!1969 i!1256)) (= lt!141172 (MissingVacant!1969 i!1256))))))

(declare-datatypes ((array!14353 0))(
  ( (array!14354 (arr!6809 (Array (_ BitVec 32) (_ BitVec 64))) (size!7161 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14353)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14353 (_ BitVec 32)) SeekEntryResult!1969)

(assert (=> b!286532 (= lt!141172 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!286533 () Bool)

(assert (=> b!286533 (= e!181554 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun lt!141173 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286533 (= lt!141173 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!148652 () Bool)

(assert (=> start!27876 (=> (not res!148652) (not e!181553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27876 (= res!148652 (validMask!0 mask!3809))))

(assert (=> start!27876 e!181553))

(assert (=> start!27876 true))

(declare-fun array_inv!4763 (array!14353) Bool)

(assert (=> start!27876 (array_inv!4763 a!3312)))

(declare-fun b!286534 () Bool)

(declare-fun res!148653 () Bool)

(assert (=> b!286534 (=> (not res!148653) (not e!181553))))

(declare-fun arrayContainsKey!0 (array!14353 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286534 (= res!148653 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286535 () Bool)

(declare-fun res!148650 () Bool)

(assert (=> b!286535 (=> (not res!148650) (not e!181553))))

(assert (=> b!286535 (= res!148650 (and (= (size!7161 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7161 a!3312))))))

(declare-fun b!286536 () Bool)

(declare-fun res!148648 () Bool)

(assert (=> b!286536 (=> (not res!148648) (not e!181554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14353 (_ BitVec 32)) Bool)

(assert (=> b!286536 (= res!148648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!27876 res!148652) b!286535))

(assert (= (and b!286535 res!148650) b!286531))

(assert (= (and b!286531 res!148649) b!286534))

(assert (= (and b!286534 res!148653) b!286532))

(assert (= (and b!286532 res!148651) b!286536))

(assert (= (and b!286536 res!148648) b!286533))

(declare-fun m!301215 () Bool)

(assert (=> start!27876 m!301215))

(declare-fun m!301217 () Bool)

(assert (=> start!27876 m!301217))

(declare-fun m!301219 () Bool)

(assert (=> b!286534 m!301219))

(declare-fun m!301221 () Bool)

(assert (=> b!286533 m!301221))

(declare-fun m!301223 () Bool)

(assert (=> b!286531 m!301223))

(declare-fun m!301225 () Bool)

(assert (=> b!286536 m!301225))

(declare-fun m!301227 () Bool)

(assert (=> b!286532 m!301227))

(check-sat (not b!286536) (not b!286534) (not b!286533) (not b!286531) (not b!286532) (not start!27876))
(check-sat)
