; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28434 () Bool)

(assert start!28434)

(declare-fun b!291005 () Bool)

(declare-fun e!184149 () Bool)

(declare-fun e!184152 () Bool)

(assert (=> b!291005 (= e!184149 e!184152)))

(declare-fun res!152382 () Bool)

(assert (=> b!291005 (=> (not res!152382) (not e!184152))))

(declare-fun lt!143922 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2131 0))(
  ( (MissingZero!2131 (index!10694 (_ BitVec 32))) (Found!2131 (index!10695 (_ BitVec 32))) (Intermediate!2131 (undefined!2943 Bool) (index!10696 (_ BitVec 32)) (x!28854 (_ BitVec 32))) (Undefined!2131) (MissingVacant!2131 (index!10697 (_ BitVec 32))) )
))
(declare-fun lt!143924 () SeekEntryResult!2131)

(assert (=> b!291005 (= res!152382 (and (not lt!143922) (= lt!143924 (MissingVacant!2131 i!1256))))))

(declare-fun lt!143925 () SeekEntryResult!2131)

(declare-datatypes ((array!14692 0))(
  ( (array!14693 (arr!6971 (Array (_ BitVec 32) (_ BitVec 64))) (size!7323 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14692)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!143923 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14692 (_ BitVec 32)) SeekEntryResult!2131)

(assert (=> b!291005 (= lt!143925 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143923 k0!2524 (array!14693 (store (arr!6971 a!3312) i!1256 k0!2524) (size!7323 a!3312)) mask!3809))))

(declare-fun lt!143926 () SeekEntryResult!2131)

(assert (=> b!291005 (= lt!143926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143923 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291005 (= lt!143923 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!291006 () Bool)

(declare-fun res!152387 () Bool)

(assert (=> b!291006 (=> (not res!152387) (not e!184149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14692 (_ BitVec 32)) Bool)

(assert (=> b!291006 (= res!152387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291007 () Bool)

(declare-fun e!184153 () Bool)

(assert (=> b!291007 (= e!184153 e!184149)))

(declare-fun res!152385 () Bool)

(assert (=> b!291007 (=> (not res!152385) (not e!184149))))

(assert (=> b!291007 (= res!152385 (or lt!143922 (= lt!143924 (MissingVacant!2131 i!1256))))))

(assert (=> b!291007 (= lt!143922 (= lt!143924 (MissingZero!2131 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14692 (_ BitVec 32)) SeekEntryResult!2131)

(assert (=> b!291007 (= lt!143924 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!291008 () Bool)

(declare-fun e!184150 () Bool)

(assert (=> b!291008 (= e!184150 (not true))))

(assert (=> b!291008 (= (index!10696 lt!143926) i!1256)))

(declare-fun b!291009 () Bool)

(declare-fun res!152386 () Bool)

(assert (=> b!291009 (=> (not res!152386) (not e!184153))))

(declare-fun arrayContainsKey!0 (array!14692 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291009 (= res!152386 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun res!152388 () Bool)

(assert (=> start!28434 (=> (not res!152388) (not e!184153))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28434 (= res!152388 (validMask!0 mask!3809))))

(assert (=> start!28434 e!184153))

(assert (=> start!28434 true))

(declare-fun array_inv!4925 (array!14692) Bool)

(assert (=> start!28434 (array_inv!4925 a!3312)))

(declare-fun b!291010 () Bool)

(declare-fun res!152384 () Bool)

(assert (=> b!291010 (=> (not res!152384) (not e!184153))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291010 (= res!152384 (validKeyInArray!0 k0!2524))))

(declare-fun b!291011 () Bool)

(assert (=> b!291011 (= e!184152 e!184150)))

(declare-fun res!152381 () Bool)

(assert (=> b!291011 (=> (not res!152381) (not e!184150))))

(declare-fun lt!143927 () Bool)

(assert (=> b!291011 (= res!152381 (and (or lt!143927 (not (undefined!2943 lt!143926))) (not lt!143927) (= (select (arr!6971 a!3312) (index!10696 lt!143926)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!291011 (= lt!143927 (not ((_ is Intermediate!2131) lt!143926)))))

(declare-fun b!291012 () Bool)

(declare-fun res!152383 () Bool)

(assert (=> b!291012 (=> (not res!152383) (not e!184153))))

(assert (=> b!291012 (= res!152383 (and (= (size!7323 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7323 a!3312))))))

(assert (= (and start!28434 res!152388) b!291012))

(assert (= (and b!291012 res!152383) b!291010))

(assert (= (and b!291010 res!152384) b!291009))

(assert (= (and b!291009 res!152386) b!291007))

(assert (= (and b!291007 res!152385) b!291006))

(assert (= (and b!291006 res!152387) b!291005))

(assert (= (and b!291005 res!152382) b!291011))

(assert (= (and b!291011 res!152381) b!291008))

(declare-fun m!305015 () Bool)

(assert (=> b!291010 m!305015))

(declare-fun m!305017 () Bool)

(assert (=> start!28434 m!305017))

(declare-fun m!305019 () Bool)

(assert (=> start!28434 m!305019))

(declare-fun m!305021 () Bool)

(assert (=> b!291011 m!305021))

(declare-fun m!305023 () Bool)

(assert (=> b!291005 m!305023))

(declare-fun m!305025 () Bool)

(assert (=> b!291005 m!305025))

(declare-fun m!305027 () Bool)

(assert (=> b!291005 m!305027))

(declare-fun m!305029 () Bool)

(assert (=> b!291005 m!305029))

(declare-fun m!305031 () Bool)

(assert (=> b!291007 m!305031))

(declare-fun m!305033 () Bool)

(assert (=> b!291009 m!305033))

(declare-fun m!305035 () Bool)

(assert (=> b!291006 m!305035))

(check-sat (not b!291006) (not b!291010) (not b!291005) (not start!28434) (not b!291007) (not b!291009))
(check-sat)
