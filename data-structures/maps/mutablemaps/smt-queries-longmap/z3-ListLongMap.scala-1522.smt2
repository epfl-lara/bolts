; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28674 () Bool)

(assert start!28674)

(declare-fun res!154052 () Bool)

(declare-fun e!185287 () Bool)

(assert (=> start!28674 (=> (not res!154052) (not e!185287))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28674 (= res!154052 (validMask!0 mask!3809))))

(assert (=> start!28674 e!185287))

(assert (=> start!28674 true))

(declare-datatypes ((array!14842 0))(
  ( (array!14843 (arr!7043 (Array (_ BitVec 32) (_ BitVec 64))) (size!7395 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14842)

(declare-fun array_inv!4997 (array!14842) Bool)

(assert (=> start!28674 (array_inv!4997 a!3312)))

(declare-fun b!292957 () Bool)

(declare-fun res!154054 () Bool)

(declare-fun e!185285 () Bool)

(assert (=> b!292957 (=> (not res!154054) (not e!185285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14842 (_ BitVec 32)) Bool)

(assert (=> b!292957 (= res!154054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292958 () Bool)

(assert (=> b!292958 (= e!185287 e!185285)))

(declare-fun res!154053 () Bool)

(assert (=> b!292958 (=> (not res!154053) (not e!185285))))

(declare-datatypes ((SeekEntryResult!2203 0))(
  ( (MissingZero!2203 (index!10982 (_ BitVec 32))) (Found!2203 (index!10983 (_ BitVec 32))) (Intermediate!2203 (undefined!3015 Bool) (index!10984 (_ BitVec 32)) (x!29130 (_ BitVec 32))) (Undefined!2203) (MissingVacant!2203 (index!10985 (_ BitVec 32))) )
))
(declare-fun lt!145238 () SeekEntryResult!2203)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292958 (= res!154053 (or (= lt!145238 (MissingZero!2203 i!1256)) (= lt!145238 (MissingVacant!2203 i!1256))))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14842 (_ BitVec 32)) SeekEntryResult!2203)

(assert (=> b!292958 (= lt!145238 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!292959 () Bool)

(declare-fun res!154056 () Bool)

(assert (=> b!292959 (=> (not res!154056) (not e!185287))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292959 (= res!154056 (validKeyInArray!0 k0!2524))))

(declare-fun b!292960 () Bool)

(declare-fun res!154051 () Bool)

(assert (=> b!292960 (=> (not res!154051) (not e!185287))))

(declare-fun arrayContainsKey!0 (array!14842 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292960 (= res!154051 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292961 () Bool)

(declare-fun res!154055 () Bool)

(assert (=> b!292961 (=> (not res!154055) (not e!185287))))

(assert (=> b!292961 (= res!154055 (and (= (size!7395 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7395 a!3312))))))

(declare-fun b!292962 () Bool)

(assert (=> b!292962 (= e!185285 false)))

(declare-fun lt!145241 () SeekEntryResult!2203)

(declare-fun lt!145240 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14842 (_ BitVec 32)) SeekEntryResult!2203)

(assert (=> b!292962 (= lt!145241 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145240 k0!2524 (array!14843 (store (arr!7043 a!3312) i!1256 k0!2524) (size!7395 a!3312)) mask!3809))))

(declare-fun lt!145239 () SeekEntryResult!2203)

(assert (=> b!292962 (= lt!145239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145240 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292962 (= lt!145240 (toIndex!0 k0!2524 mask!3809))))

(assert (= (and start!28674 res!154052) b!292961))

(assert (= (and b!292961 res!154055) b!292959))

(assert (= (and b!292959 res!154056) b!292960))

(assert (= (and b!292960 res!154051) b!292958))

(assert (= (and b!292958 res!154053) b!292957))

(assert (= (and b!292957 res!154054) b!292962))

(declare-fun m!306795 () Bool)

(assert (=> b!292958 m!306795))

(declare-fun m!306797 () Bool)

(assert (=> b!292957 m!306797))

(declare-fun m!306799 () Bool)

(assert (=> start!28674 m!306799))

(declare-fun m!306801 () Bool)

(assert (=> start!28674 m!306801))

(declare-fun m!306803 () Bool)

(assert (=> b!292959 m!306803))

(declare-fun m!306805 () Bool)

(assert (=> b!292960 m!306805))

(declare-fun m!306807 () Bool)

(assert (=> b!292962 m!306807))

(declare-fun m!306809 () Bool)

(assert (=> b!292962 m!306809))

(declare-fun m!306811 () Bool)

(assert (=> b!292962 m!306811))

(declare-fun m!306813 () Bool)

(assert (=> b!292962 m!306813))

(check-sat (not start!28674) (not b!292960) (not b!292957) (not b!292959) (not b!292958) (not b!292962))
(check-sat)
