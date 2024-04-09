; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29648 () Bool)

(assert start!29648)

(declare-fun b!298949 () Bool)

(declare-fun res!157671 () Bool)

(declare-fun e!188853 () Bool)

(assert (=> b!298949 (=> (not res!157671) (not e!188853))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15115 0))(
  ( (array!15116 (arr!7157 (Array (_ BitVec 32) (_ BitVec 64))) (size!7509 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15115)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!298949 (= res!157671 (and (= (size!7509 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7509 a!3312))))))

(declare-fun b!298950 () Bool)

(declare-fun e!188857 () Bool)

(assert (=> b!298950 (= e!188853 e!188857)))

(declare-fun res!157675 () Bool)

(assert (=> b!298950 (=> (not res!157675) (not e!188857))))

(declare-datatypes ((SeekEntryResult!2317 0))(
  ( (MissingZero!2317 (index!11441 (_ BitVec 32))) (Found!2317 (index!11442 (_ BitVec 32))) (Intermediate!2317 (undefined!3129 Bool) (index!11443 (_ BitVec 32)) (x!29647 (_ BitVec 32))) (Undefined!2317) (MissingVacant!2317 (index!11444 (_ BitVec 32))) )
))
(declare-fun lt!148694 () SeekEntryResult!2317)

(declare-fun lt!148699 () Bool)

(assert (=> b!298950 (= res!157675 (or lt!148699 (= lt!148694 (MissingVacant!2317 i!1256))))))

(assert (=> b!298950 (= lt!148699 (= lt!148694 (MissingZero!2317 i!1256)))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15115 (_ BitVec 32)) SeekEntryResult!2317)

(assert (=> b!298950 (= lt!148694 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!298951 () Bool)

(declare-fun e!188854 () Bool)

(assert (=> b!298951 (= e!188857 e!188854)))

(declare-fun res!157672 () Bool)

(assert (=> b!298951 (=> (not res!157672) (not e!188854))))

(assert (=> b!298951 (= res!157672 (and (not lt!148699) (= lt!148694 (MissingVacant!2317 i!1256))))))

(declare-fun lt!148696 () SeekEntryResult!2317)

(declare-fun lt!148698 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15115 (_ BitVec 32)) SeekEntryResult!2317)

(assert (=> b!298951 (= lt!148696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148698 k0!2524 (array!15116 (store (arr!7157 a!3312) i!1256 k0!2524) (size!7509 a!3312)) mask!3809))))

(declare-fun lt!148695 () SeekEntryResult!2317)

(assert (=> b!298951 (= lt!148695 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148698 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298951 (= lt!148698 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!298952 () Bool)

(declare-fun res!157677 () Bool)

(assert (=> b!298952 (=> (not res!157677) (not e!188857))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15115 (_ BitVec 32)) Bool)

(assert (=> b!298952 (= res!157677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!298953 () Bool)

(declare-fun res!157673 () Bool)

(assert (=> b!298953 (=> (not res!157673) (not e!188853))))

(declare-fun arrayContainsKey!0 (array!15115 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298953 (= res!157673 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!298955 () Bool)

(declare-fun e!188856 () Bool)

(assert (=> b!298955 (= e!188856 (not true))))

(declare-datatypes ((Unit!9314 0))(
  ( (Unit!9315) )
))
(declare-fun lt!148700 () Unit!9314)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!15115 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9314)

(assert (=> b!298955 (= lt!148700 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!148698 (index!11443 lt!148695) (x!29647 lt!148695) mask!3809))))

(assert (=> b!298955 (= (index!11443 lt!148695) i!1256)))

(declare-fun b!298956 () Bool)

(declare-fun res!157670 () Bool)

(assert (=> b!298956 (=> (not res!157670) (not e!188853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298956 (= res!157670 (validKeyInArray!0 k0!2524))))

(declare-fun b!298954 () Bool)

(assert (=> b!298954 (= e!188854 e!188856)))

(declare-fun res!157674 () Bool)

(assert (=> b!298954 (=> (not res!157674) (not e!188856))))

(declare-fun lt!148697 () Bool)

(assert (=> b!298954 (= res!157674 (and (or lt!148697 (not (undefined!3129 lt!148695))) (not lt!148697) (= (select (arr!7157 a!3312) (index!11443 lt!148695)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!298954 (= lt!148697 (not ((_ is Intermediate!2317) lt!148695)))))

(declare-fun res!157676 () Bool)

(assert (=> start!29648 (=> (not res!157676) (not e!188853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29648 (= res!157676 (validMask!0 mask!3809))))

(assert (=> start!29648 e!188853))

(assert (=> start!29648 true))

(declare-fun array_inv!5111 (array!15115) Bool)

(assert (=> start!29648 (array_inv!5111 a!3312)))

(assert (= (and start!29648 res!157676) b!298949))

(assert (= (and b!298949 res!157671) b!298956))

(assert (= (and b!298956 res!157670) b!298953))

(assert (= (and b!298953 res!157673) b!298950))

(assert (= (and b!298950 res!157675) b!298952))

(assert (= (and b!298952 res!157677) b!298951))

(assert (= (and b!298951 res!157672) b!298954))

(assert (= (and b!298954 res!157674) b!298955))

(declare-fun m!311341 () Bool)

(assert (=> start!29648 m!311341))

(declare-fun m!311343 () Bool)

(assert (=> start!29648 m!311343))

(declare-fun m!311345 () Bool)

(assert (=> b!298954 m!311345))

(declare-fun m!311347 () Bool)

(assert (=> b!298953 m!311347))

(declare-fun m!311349 () Bool)

(assert (=> b!298951 m!311349))

(declare-fun m!311351 () Bool)

(assert (=> b!298951 m!311351))

(declare-fun m!311353 () Bool)

(assert (=> b!298951 m!311353))

(declare-fun m!311355 () Bool)

(assert (=> b!298951 m!311355))

(declare-fun m!311357 () Bool)

(assert (=> b!298955 m!311357))

(declare-fun m!311359 () Bool)

(assert (=> b!298956 m!311359))

(declare-fun m!311361 () Bool)

(assert (=> b!298952 m!311361))

(declare-fun m!311363 () Bool)

(assert (=> b!298950 m!311363))

(check-sat (not start!29648) (not b!298953) (not b!298950) (not b!298955) (not b!298952) (not b!298956) (not b!298951))
(check-sat)
