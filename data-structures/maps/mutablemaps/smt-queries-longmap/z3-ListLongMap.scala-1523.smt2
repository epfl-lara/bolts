; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28680 () Bool)

(assert start!28680)

(declare-fun res!154105 () Bool)

(declare-fun e!185313 () Bool)

(assert (=> start!28680 (=> (not res!154105) (not e!185313))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28680 (= res!154105 (validMask!0 mask!3809))))

(assert (=> start!28680 e!185313))

(assert (=> start!28680 true))

(declare-datatypes ((array!14848 0))(
  ( (array!14849 (arr!7046 (Array (_ BitVec 32) (_ BitVec 64))) (size!7398 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14848)

(declare-fun array_inv!5000 (array!14848) Bool)

(assert (=> start!28680 (array_inv!5000 a!3312)))

(declare-fun b!293011 () Bool)

(declare-fun res!154107 () Bool)

(assert (=> b!293011 (=> (not res!154107) (not e!185313))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293011 (= res!154107 (validKeyInArray!0 k0!2524))))

(declare-fun b!293012 () Bool)

(declare-fun e!185312 () Bool)

(assert (=> b!293012 (= e!185313 e!185312)))

(declare-fun res!154106 () Bool)

(assert (=> b!293012 (=> (not res!154106) (not e!185312))))

(declare-datatypes ((SeekEntryResult!2206 0))(
  ( (MissingZero!2206 (index!10994 (_ BitVec 32))) (Found!2206 (index!10995 (_ BitVec 32))) (Intermediate!2206 (undefined!3018 Bool) (index!10996 (_ BitVec 32)) (x!29141 (_ BitVec 32))) (Undefined!2206) (MissingVacant!2206 (index!10997 (_ BitVec 32))) )
))
(declare-fun lt!145274 () SeekEntryResult!2206)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!293012 (= res!154106 (or (= lt!145274 (MissingZero!2206 i!1256)) (= lt!145274 (MissingVacant!2206 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14848 (_ BitVec 32)) SeekEntryResult!2206)

(assert (=> b!293012 (= lt!145274 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!293013 () Bool)

(assert (=> b!293013 (= e!185312 false)))

(declare-fun lt!145275 () SeekEntryResult!2206)

(declare-fun lt!145277 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14848 (_ BitVec 32)) SeekEntryResult!2206)

(assert (=> b!293013 (= lt!145275 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145277 k0!2524 (array!14849 (store (arr!7046 a!3312) i!1256 k0!2524) (size!7398 a!3312)) mask!3809))))

(declare-fun lt!145276 () SeekEntryResult!2206)

(assert (=> b!293013 (= lt!145276 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145277 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293013 (= lt!145277 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!293014 () Bool)

(declare-fun res!154109 () Bool)

(assert (=> b!293014 (=> (not res!154109) (not e!185312))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14848 (_ BitVec 32)) Bool)

(assert (=> b!293014 (= res!154109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!293015 () Bool)

(declare-fun res!154108 () Bool)

(assert (=> b!293015 (=> (not res!154108) (not e!185313))))

(declare-fun arrayContainsKey!0 (array!14848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293015 (= res!154108 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!293016 () Bool)

(declare-fun res!154110 () Bool)

(assert (=> b!293016 (=> (not res!154110) (not e!185313))))

(assert (=> b!293016 (= res!154110 (and (= (size!7398 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7398 a!3312))))))

(assert (= (and start!28680 res!154105) b!293016))

(assert (= (and b!293016 res!154110) b!293011))

(assert (= (and b!293011 res!154107) b!293015))

(assert (= (and b!293015 res!154108) b!293012))

(assert (= (and b!293012 res!154106) b!293014))

(assert (= (and b!293014 res!154109) b!293013))

(declare-fun m!306855 () Bool)

(assert (=> b!293011 m!306855))

(declare-fun m!306857 () Bool)

(assert (=> b!293012 m!306857))

(declare-fun m!306859 () Bool)

(assert (=> b!293013 m!306859))

(declare-fun m!306861 () Bool)

(assert (=> b!293013 m!306861))

(declare-fun m!306863 () Bool)

(assert (=> b!293013 m!306863))

(declare-fun m!306865 () Bool)

(assert (=> b!293013 m!306865))

(declare-fun m!306867 () Bool)

(assert (=> start!28680 m!306867))

(declare-fun m!306869 () Bool)

(assert (=> start!28680 m!306869))

(declare-fun m!306871 () Bool)

(assert (=> b!293014 m!306871))

(declare-fun m!306873 () Bool)

(assert (=> b!293015 m!306873))

(check-sat (not start!28680) (not b!293012) (not b!293011) (not b!293013) (not b!293015) (not b!293014))
(check-sat)
