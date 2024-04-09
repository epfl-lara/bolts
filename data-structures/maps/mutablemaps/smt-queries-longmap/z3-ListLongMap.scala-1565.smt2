; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29828 () Bool)

(assert start!29828)

(declare-fun b!300010 () Bool)

(declare-fun res!158200 () Bool)

(declare-fun e!189473 () Bool)

(assert (=> b!300010 (=> (not res!158200) (not e!189473))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15154 0))(
  ( (array!15155 (arr!7172 (Array (_ BitVec 32) (_ BitVec 64))) (size!7524 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15154)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!300010 (= res!158200 (and (= (size!7524 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7524 a!3312))))))

(declare-fun b!300011 () Bool)

(declare-fun e!189475 () Bool)

(assert (=> b!300011 (= e!189475 false)))

(declare-fun lt!149282 () (_ BitVec 32))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2332 0))(
  ( (MissingZero!2332 (index!11504 (_ BitVec 32))) (Found!2332 (index!11505 (_ BitVec 32))) (Intermediate!2332 (undefined!3144 Bool) (index!11506 (_ BitVec 32)) (x!29723 (_ BitVec 32))) (Undefined!2332) (MissingVacant!2332 (index!11507 (_ BitVec 32))) )
))
(declare-fun lt!149285 () SeekEntryResult!2332)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15154 (_ BitVec 32)) SeekEntryResult!2332)

(assert (=> b!300011 (= lt!149285 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149282 k0!2524 (array!15155 (store (arr!7172 a!3312) i!1256 k0!2524) (size!7524 a!3312)) mask!3809))))

(declare-fun lt!149284 () SeekEntryResult!2332)

(assert (=> b!300011 (= lt!149284 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149282 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300011 (= lt!149282 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!158203 () Bool)

(assert (=> start!29828 (=> (not res!158203) (not e!189473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29828 (= res!158203 (validMask!0 mask!3809))))

(assert (=> start!29828 e!189473))

(assert (=> start!29828 true))

(declare-fun array_inv!5126 (array!15154) Bool)

(assert (=> start!29828 (array_inv!5126 a!3312)))

(declare-fun b!300012 () Bool)

(declare-fun res!158201 () Bool)

(assert (=> b!300012 (=> (not res!158201) (not e!189475))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15154 (_ BitVec 32)) Bool)

(assert (=> b!300012 (= res!158201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!300013 () Bool)

(declare-fun res!158204 () Bool)

(assert (=> b!300013 (=> (not res!158204) (not e!189473))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300013 (= res!158204 (validKeyInArray!0 k0!2524))))

(declare-fun b!300014 () Bool)

(assert (=> b!300014 (= e!189473 e!189475)))

(declare-fun res!158202 () Bool)

(assert (=> b!300014 (=> (not res!158202) (not e!189475))))

(declare-fun lt!149283 () SeekEntryResult!2332)

(assert (=> b!300014 (= res!158202 (or (= lt!149283 (MissingZero!2332 i!1256)) (= lt!149283 (MissingVacant!2332 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15154 (_ BitVec 32)) SeekEntryResult!2332)

(assert (=> b!300014 (= lt!149283 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!300015 () Bool)

(declare-fun res!158205 () Bool)

(assert (=> b!300015 (=> (not res!158205) (not e!189473))))

(declare-fun arrayContainsKey!0 (array!15154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300015 (= res!158205 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!29828 res!158203) b!300010))

(assert (= (and b!300010 res!158200) b!300013))

(assert (= (and b!300013 res!158204) b!300015))

(assert (= (and b!300015 res!158205) b!300014))

(assert (= (and b!300014 res!158202) b!300012))

(assert (= (and b!300012 res!158201) b!300011))

(declare-fun m!312093 () Bool)

(assert (=> b!300014 m!312093))

(declare-fun m!312095 () Bool)

(assert (=> start!29828 m!312095))

(declare-fun m!312097 () Bool)

(assert (=> start!29828 m!312097))

(declare-fun m!312099 () Bool)

(assert (=> b!300015 m!312099))

(declare-fun m!312101 () Bool)

(assert (=> b!300012 m!312101))

(declare-fun m!312103 () Bool)

(assert (=> b!300011 m!312103))

(declare-fun m!312105 () Bool)

(assert (=> b!300011 m!312105))

(declare-fun m!312107 () Bool)

(assert (=> b!300011 m!312107))

(declare-fun m!312109 () Bool)

(assert (=> b!300011 m!312109))

(declare-fun m!312111 () Bool)

(assert (=> b!300013 m!312111))

(check-sat (not b!300014) (not b!300011) (not b!300012) (not start!29828) (not b!300015) (not b!300013))
(check-sat)
