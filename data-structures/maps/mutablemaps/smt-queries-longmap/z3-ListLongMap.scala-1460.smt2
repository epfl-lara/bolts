; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28110 () Bool)

(assert start!28110)

(declare-fun b!287881 () Bool)

(declare-fun e!182292 () Bool)

(assert (=> b!287881 (= e!182292 false)))

(declare-fun lt!141787 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2017 0))(
  ( (MissingZero!2017 (index!10238 (_ BitVec 32))) (Found!2017 (index!10239 (_ BitVec 32))) (Intermediate!2017 (undefined!2829 Bool) (index!10240 (_ BitVec 32)) (x!28424 (_ BitVec 32))) (Undefined!2017) (MissingVacant!2017 (index!10241 (_ BitVec 32))) )
))
(declare-fun lt!141786 () SeekEntryResult!2017)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14458 0))(
  ( (array!14459 (arr!6857 (Array (_ BitVec 32) (_ BitVec 64))) (size!7209 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14458)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14458 (_ BitVec 32)) SeekEntryResult!2017)

(assert (=> b!287881 (= lt!141786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141787 k0!2524 (array!14459 (store (arr!6857 a!3312) i!1256 k0!2524) (size!7209 a!3312)) mask!3809))))

(declare-fun lt!141788 () SeekEntryResult!2017)

(assert (=> b!287881 (= lt!141788 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141787 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287881 (= lt!141787 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!287882 () Bool)

(declare-fun res!149683 () Bool)

(assert (=> b!287882 (=> (not res!149683) (not e!182292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14458 (_ BitVec 32)) Bool)

(assert (=> b!287882 (= res!149683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287883 () Bool)

(declare-fun res!149686 () Bool)

(declare-fun e!182293 () Bool)

(assert (=> b!287883 (=> (not res!149686) (not e!182293))))

(declare-fun arrayContainsKey!0 (array!14458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287883 (= res!149686 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287884 () Bool)

(declare-fun res!149685 () Bool)

(assert (=> b!287884 (=> (not res!149685) (not e!182293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287884 (= res!149685 (validKeyInArray!0 k0!2524))))

(declare-fun res!149684 () Bool)

(assert (=> start!28110 (=> (not res!149684) (not e!182293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28110 (= res!149684 (validMask!0 mask!3809))))

(assert (=> start!28110 e!182293))

(assert (=> start!28110 true))

(declare-fun array_inv!4811 (array!14458) Bool)

(assert (=> start!28110 (array_inv!4811 a!3312)))

(declare-fun b!287885 () Bool)

(assert (=> b!287885 (= e!182293 e!182292)))

(declare-fun res!149687 () Bool)

(assert (=> b!287885 (=> (not res!149687) (not e!182292))))

(declare-fun lt!141785 () SeekEntryResult!2017)

(assert (=> b!287885 (= res!149687 (or (= lt!141785 (MissingZero!2017 i!1256)) (= lt!141785 (MissingVacant!2017 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14458 (_ BitVec 32)) SeekEntryResult!2017)

(assert (=> b!287885 (= lt!141785 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!287886 () Bool)

(declare-fun res!149688 () Bool)

(assert (=> b!287886 (=> (not res!149688) (not e!182293))))

(assert (=> b!287886 (= res!149688 (and (= (size!7209 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7209 a!3312))))))

(assert (= (and start!28110 res!149684) b!287886))

(assert (= (and b!287886 res!149688) b!287884))

(assert (= (and b!287884 res!149685) b!287883))

(assert (= (and b!287883 res!149686) b!287885))

(assert (= (and b!287885 res!149687) b!287882))

(assert (= (and b!287882 res!149683) b!287881))

(declare-fun m!302271 () Bool)

(assert (=> b!287884 m!302271))

(declare-fun m!302273 () Bool)

(assert (=> b!287881 m!302273))

(declare-fun m!302275 () Bool)

(assert (=> b!287881 m!302275))

(declare-fun m!302277 () Bool)

(assert (=> b!287881 m!302277))

(declare-fun m!302279 () Bool)

(assert (=> b!287881 m!302279))

(declare-fun m!302281 () Bool)

(assert (=> b!287882 m!302281))

(declare-fun m!302283 () Bool)

(assert (=> b!287885 m!302283))

(declare-fun m!302285 () Bool)

(assert (=> start!28110 m!302285))

(declare-fun m!302287 () Bool)

(assert (=> start!28110 m!302287))

(declare-fun m!302289 () Bool)

(assert (=> b!287883 m!302289))

(check-sat (not b!287885) (not b!287881) (not start!28110) (not b!287882) (not b!287884) (not b!287883))
(check-sat)
