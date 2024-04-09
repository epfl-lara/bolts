; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29318 () Bool)

(assert start!29318)

(declare-fun b!296878 () Bool)

(declare-fun res!156519 () Bool)

(declare-fun e!187641 () Bool)

(assert (=> b!296878 (=> (not res!156519) (not e!187641))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296878 (= res!156519 (validKeyInArray!0 k0!2524))))

(declare-fun b!296879 () Bool)

(declare-fun res!156525 () Bool)

(assert (=> b!296879 (=> (not res!156525) (not e!187641))))

(declare-datatypes ((array!15028 0))(
  ( (array!15029 (arr!7121 (Array (_ BitVec 32) (_ BitVec 64))) (size!7473 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15028)

(declare-fun arrayContainsKey!0 (array!15028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296879 (= res!156525 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun res!156523 () Bool)

(assert (=> start!29318 (=> (not res!156523) (not e!187641))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29318 (= res!156523 (validMask!0 mask!3809))))

(assert (=> start!29318 e!187641))

(assert (=> start!29318 true))

(declare-fun array_inv!5075 (array!15028) Bool)

(assert (=> start!29318 (array_inv!5075 a!3312)))

(declare-fun b!296880 () Bool)

(declare-fun res!156524 () Bool)

(assert (=> b!296880 (=> (not res!156524) (not e!187641))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!296880 (= res!156524 (and (= (size!7473 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7473 a!3312))))))

(declare-fun b!296881 () Bool)

(declare-fun res!156522 () Bool)

(declare-fun e!187639 () Bool)

(assert (=> b!296881 (=> (not res!156522) (not e!187639))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15028 (_ BitVec 32)) Bool)

(assert (=> b!296881 (= res!156522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!296882 () Bool)

(declare-fun e!187642 () Bool)

(assert (=> b!296882 (= e!187642 (not true))))

(declare-datatypes ((SeekEntryResult!2281 0))(
  ( (MissingZero!2281 (index!11294 (_ BitVec 32))) (Found!2281 (index!11295 (_ BitVec 32))) (Intermediate!2281 (undefined!3093 Bool) (index!11296 (_ BitVec 32)) (x!29478 (_ BitVec 32))) (Undefined!2281) (MissingVacant!2281 (index!11297 (_ BitVec 32))) )
))
(declare-fun lt!147511 () SeekEntryResult!2281)

(declare-fun lt!147509 () SeekEntryResult!2281)

(assert (=> b!296882 (= lt!147511 lt!147509)))

(declare-fun lt!147512 () (_ BitVec 32))

(declare-datatypes ((Unit!9229 0))(
  ( (Unit!9230) )
))
(declare-fun lt!147514 () Unit!9229)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15028 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9229)

(assert (=> b!296882 (= lt!147514 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!147512 (index!11296 lt!147509) (x!29478 lt!147509) mask!3809))))

(assert (=> b!296882 (and (= (select (arr!7121 a!3312) (index!11296 lt!147509)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11296 lt!147509) i!1256))))

(declare-fun b!296883 () Bool)

(declare-fun e!187643 () Bool)

(assert (=> b!296883 (= e!187639 e!187643)))

(declare-fun res!156520 () Bool)

(assert (=> b!296883 (=> (not res!156520) (not e!187643))))

(declare-fun lt!147515 () Bool)

(assert (=> b!296883 (= res!156520 lt!147515)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15028 (_ BitVec 32)) SeekEntryResult!2281)

(assert (=> b!296883 (= lt!147511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147512 k0!2524 (array!15029 (store (arr!7121 a!3312) i!1256 k0!2524) (size!7473 a!3312)) mask!3809))))

(assert (=> b!296883 (= lt!147509 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147512 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296883 (= lt!147512 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!296884 () Bool)

(assert (=> b!296884 (= e!187643 e!187642)))

(declare-fun res!156518 () Bool)

(assert (=> b!296884 (=> (not res!156518) (not e!187642))))

(declare-fun lt!147510 () Bool)

(assert (=> b!296884 (= res!156518 (and (or lt!147510 (not (undefined!3093 lt!147509))) (or lt!147510 (not (= (select (arr!7121 a!3312) (index!11296 lt!147509)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147510 (not (= (select (arr!7121 a!3312) (index!11296 lt!147509)) k0!2524))) (not lt!147510)))))

(get-info :version)

(assert (=> b!296884 (= lt!147510 (not ((_ is Intermediate!2281) lt!147509)))))

(declare-fun b!296885 () Bool)

(assert (=> b!296885 (= e!187641 e!187639)))

(declare-fun res!156521 () Bool)

(assert (=> b!296885 (=> (not res!156521) (not e!187639))))

(declare-fun lt!147513 () SeekEntryResult!2281)

(assert (=> b!296885 (= res!156521 (or lt!147515 (= lt!147513 (MissingVacant!2281 i!1256))))))

(assert (=> b!296885 (= lt!147515 (= lt!147513 (MissingZero!2281 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15028 (_ BitVec 32)) SeekEntryResult!2281)

(assert (=> b!296885 (= lt!147513 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!29318 res!156523) b!296880))

(assert (= (and b!296880 res!156524) b!296878))

(assert (= (and b!296878 res!156519) b!296879))

(assert (= (and b!296879 res!156525) b!296885))

(assert (= (and b!296885 res!156521) b!296881))

(assert (= (and b!296881 res!156522) b!296883))

(assert (= (and b!296883 res!156520) b!296884))

(assert (= (and b!296884 res!156518) b!296882))

(declare-fun m!309737 () Bool)

(assert (=> b!296881 m!309737))

(declare-fun m!309739 () Bool)

(assert (=> b!296885 m!309739))

(declare-fun m!309741 () Bool)

(assert (=> b!296884 m!309741))

(declare-fun m!309743 () Bool)

(assert (=> b!296878 m!309743))

(declare-fun m!309745 () Bool)

(assert (=> b!296879 m!309745))

(declare-fun m!309747 () Bool)

(assert (=> b!296883 m!309747))

(declare-fun m!309749 () Bool)

(assert (=> b!296883 m!309749))

(declare-fun m!309751 () Bool)

(assert (=> b!296883 m!309751))

(declare-fun m!309753 () Bool)

(assert (=> b!296883 m!309753))

(declare-fun m!309755 () Bool)

(assert (=> start!29318 m!309755))

(declare-fun m!309757 () Bool)

(assert (=> start!29318 m!309757))

(declare-fun m!309759 () Bool)

(assert (=> b!296882 m!309759))

(assert (=> b!296882 m!309741))

(check-sat (not b!296878) (not b!296885) (not b!296881) (not b!296879) (not b!296883) (not start!29318) (not b!296882))
(check-sat)
