; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29894 () Bool)

(assert start!29894)

(declare-fun b!300388 () Bool)

(declare-fun e!189688 () Bool)

(assert (=> b!300388 (= e!189688 false)))

(declare-datatypes ((SeekEntryResult!2341 0))(
  ( (MissingZero!2341 (index!11540 (_ BitVec 32))) (Found!2341 (index!11541 (_ BitVec 32))) (Intermediate!2341 (undefined!3153 Bool) (index!11542 (_ BitVec 32)) (x!29762 (_ BitVec 32))) (Undefined!2341) (MissingVacant!2341 (index!11543 (_ BitVec 32))) )
))
(declare-fun lt!149498 () SeekEntryResult!2341)

(declare-fun lt!149496 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15175 0))(
  ( (array!15176 (arr!7181 (Array (_ BitVec 32) (_ BitVec 64))) (size!7533 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15175)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15175 (_ BitVec 32)) SeekEntryResult!2341)

(assert (=> b!300388 (= lt!149498 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149496 k0!2524 (array!15176 (store (arr!7181 a!3312) i!1256 k0!2524) (size!7533 a!3312)) mask!3809))))

(declare-fun lt!149497 () SeekEntryResult!2341)

(assert (=> b!300388 (= lt!149497 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149496 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300388 (= lt!149496 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!300389 () Bool)

(declare-fun res!158440 () Bool)

(declare-fun e!189687 () Bool)

(assert (=> b!300389 (=> (not res!158440) (not e!189687))))

(declare-fun arrayContainsKey!0 (array!15175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300389 (= res!158440 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun res!158439 () Bool)

(assert (=> start!29894 (=> (not res!158439) (not e!189687))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29894 (= res!158439 (validMask!0 mask!3809))))

(assert (=> start!29894 e!189687))

(assert (=> start!29894 true))

(declare-fun array_inv!5135 (array!15175) Bool)

(assert (=> start!29894 (array_inv!5135 a!3312)))

(declare-fun b!300390 () Bool)

(declare-fun res!158441 () Bool)

(assert (=> b!300390 (=> (not res!158441) (not e!189687))))

(assert (=> b!300390 (= res!158441 (and (= (size!7533 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7533 a!3312))))))

(declare-fun b!300391 () Bool)

(declare-fun res!158437 () Bool)

(assert (=> b!300391 (=> (not res!158437) (not e!189688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15175 (_ BitVec 32)) Bool)

(assert (=> b!300391 (= res!158437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!300392 () Bool)

(assert (=> b!300392 (= e!189687 e!189688)))

(declare-fun res!158438 () Bool)

(assert (=> b!300392 (=> (not res!158438) (not e!189688))))

(declare-fun lt!149495 () SeekEntryResult!2341)

(assert (=> b!300392 (= res!158438 (or (= lt!149495 (MissingZero!2341 i!1256)) (= lt!149495 (MissingVacant!2341 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15175 (_ BitVec 32)) SeekEntryResult!2341)

(assert (=> b!300392 (= lt!149495 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!300393 () Bool)

(declare-fun res!158442 () Bool)

(assert (=> b!300393 (=> (not res!158442) (not e!189687))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300393 (= res!158442 (validKeyInArray!0 k0!2524))))

(assert (= (and start!29894 res!158439) b!300390))

(assert (= (and b!300390 res!158441) b!300393))

(assert (= (and b!300393 res!158442) b!300389))

(assert (= (and b!300389 res!158440) b!300392))

(assert (= (and b!300392 res!158438) b!300391))

(assert (= (and b!300391 res!158437) b!300388))

(declare-fun m!312399 () Bool)

(assert (=> b!300391 m!312399))

(declare-fun m!312401 () Bool)

(assert (=> b!300393 m!312401))

(declare-fun m!312403 () Bool)

(assert (=> b!300388 m!312403))

(declare-fun m!312405 () Bool)

(assert (=> b!300388 m!312405))

(declare-fun m!312407 () Bool)

(assert (=> b!300388 m!312407))

(declare-fun m!312409 () Bool)

(assert (=> b!300388 m!312409))

(declare-fun m!312411 () Bool)

(assert (=> b!300392 m!312411))

(declare-fun m!312413 () Bool)

(assert (=> start!29894 m!312413))

(declare-fun m!312415 () Bool)

(assert (=> start!29894 m!312415))

(declare-fun m!312417 () Bool)

(assert (=> b!300389 m!312417))

(check-sat (not start!29894) (not b!300392) (not b!300393) (not b!300388) (not b!300389) (not b!300391))
(check-sat)
