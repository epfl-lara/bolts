; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28668 () Bool)

(assert start!28668)

(declare-fun b!292903 () Bool)

(declare-fun res!154002 () Bool)

(declare-fun e!185260 () Bool)

(assert (=> b!292903 (=> (not res!154002) (not e!185260))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14836 0))(
  ( (array!14837 (arr!7040 (Array (_ BitVec 32) (_ BitVec 64))) (size!7392 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14836)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!292903 (= res!154002 (and (= (size!7392 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7392 a!3312))))))

(declare-fun b!292904 () Bool)

(declare-fun res!154000 () Bool)

(assert (=> b!292904 (=> (not res!154000) (not e!185260))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292904 (= res!154000 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292905 () Bool)

(declare-fun e!185258 () Bool)

(assert (=> b!292905 (= e!185260 e!185258)))

(declare-fun res!153999 () Bool)

(assert (=> b!292905 (=> (not res!153999) (not e!185258))))

(declare-datatypes ((SeekEntryResult!2200 0))(
  ( (MissingZero!2200 (index!10970 (_ BitVec 32))) (Found!2200 (index!10971 (_ BitVec 32))) (Intermediate!2200 (undefined!3012 Bool) (index!10972 (_ BitVec 32)) (x!29119 (_ BitVec 32))) (Undefined!2200) (MissingVacant!2200 (index!10973 (_ BitVec 32))) )
))
(declare-fun lt!145204 () SeekEntryResult!2200)

(assert (=> b!292905 (= res!153999 (or (= lt!145204 (MissingZero!2200 i!1256)) (= lt!145204 (MissingVacant!2200 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14836 (_ BitVec 32)) SeekEntryResult!2200)

(assert (=> b!292905 (= lt!145204 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!153998 () Bool)

(assert (=> start!28668 (=> (not res!153998) (not e!185260))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28668 (= res!153998 (validMask!0 mask!3809))))

(assert (=> start!28668 e!185260))

(assert (=> start!28668 true))

(declare-fun array_inv!4994 (array!14836) Bool)

(assert (=> start!28668 (array_inv!4994 a!3312)))

(declare-fun b!292906 () Bool)

(declare-fun res!154001 () Bool)

(assert (=> b!292906 (=> (not res!154001) (not e!185260))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292906 (= res!154001 (validKeyInArray!0 k0!2524))))

(declare-fun b!292907 () Bool)

(assert (=> b!292907 (= e!185258 false)))

(declare-fun lt!145202 () (_ BitVec 32))

(declare-fun lt!145203 () SeekEntryResult!2200)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14836 (_ BitVec 32)) SeekEntryResult!2200)

(assert (=> b!292907 (= lt!145203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145202 k0!2524 (array!14837 (store (arr!7040 a!3312) i!1256 k0!2524) (size!7392 a!3312)) mask!3809))))

(declare-fun lt!145205 () SeekEntryResult!2200)

(assert (=> b!292907 (= lt!145205 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145202 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292907 (= lt!145202 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!292908 () Bool)

(declare-fun res!153997 () Bool)

(assert (=> b!292908 (=> (not res!153997) (not e!185258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14836 (_ BitVec 32)) Bool)

(assert (=> b!292908 (= res!153997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28668 res!153998) b!292903))

(assert (= (and b!292903 res!154002) b!292906))

(assert (= (and b!292906 res!154001) b!292904))

(assert (= (and b!292904 res!154000) b!292905))

(assert (= (and b!292905 res!153999) b!292908))

(assert (= (and b!292908 res!153997) b!292907))

(declare-fun m!306735 () Bool)

(assert (=> start!28668 m!306735))

(declare-fun m!306737 () Bool)

(assert (=> start!28668 m!306737))

(declare-fun m!306739 () Bool)

(assert (=> b!292905 m!306739))

(declare-fun m!306741 () Bool)

(assert (=> b!292907 m!306741))

(declare-fun m!306743 () Bool)

(assert (=> b!292907 m!306743))

(declare-fun m!306745 () Bool)

(assert (=> b!292907 m!306745))

(declare-fun m!306747 () Bool)

(assert (=> b!292907 m!306747))

(declare-fun m!306749 () Bool)

(assert (=> b!292904 m!306749))

(declare-fun m!306751 () Bool)

(assert (=> b!292908 m!306751))

(declare-fun m!306753 () Bool)

(assert (=> b!292906 m!306753))

(check-sat (not b!292907) (not start!28668) (not b!292908) (not b!292906) (not b!292905) (not b!292904))
(check-sat)
