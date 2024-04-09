; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29960 () Bool)

(assert start!29960)

(declare-fun b!300766 () Bool)

(declare-fun res!158679 () Bool)

(declare-fun e!189899 () Bool)

(assert (=> b!300766 (=> (not res!158679) (not e!189899))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300766 (= res!158679 (validKeyInArray!0 k0!2524))))

(declare-fun b!300767 () Bool)

(declare-fun e!189901 () Bool)

(assert (=> b!300767 (= e!189899 e!189901)))

(declare-fun res!158678 () Bool)

(assert (=> b!300767 (=> (not res!158678) (not e!189901))))

(declare-datatypes ((SeekEntryResult!2350 0))(
  ( (MissingZero!2350 (index!11576 (_ BitVec 32))) (Found!2350 (index!11577 (_ BitVec 32))) (Intermediate!2350 (undefined!3162 Bool) (index!11578 (_ BitVec 32)) (x!29801 (_ BitVec 32))) (Undefined!2350) (MissingVacant!2350 (index!11579 (_ BitVec 32))) )
))
(declare-fun lt!149710 () SeekEntryResult!2350)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!300767 (= res!158678 (or (= lt!149710 (MissingZero!2350 i!1256)) (= lt!149710 (MissingVacant!2350 i!1256))))))

(declare-datatypes ((array!15196 0))(
  ( (array!15197 (arr!7190 (Array (_ BitVec 32) (_ BitVec 64))) (size!7542 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15196)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15196 (_ BitVec 32)) SeekEntryResult!2350)

(assert (=> b!300767 (= lt!149710 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!300768 () Bool)

(declare-fun res!158675 () Bool)

(assert (=> b!300768 (=> (not res!158675) (not e!189899))))

(declare-fun arrayContainsKey!0 (array!15196 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300768 (= res!158675 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!300769 () Bool)

(assert (=> b!300769 (= e!189901 false)))

(declare-fun lt!149709 () SeekEntryResult!2350)

(declare-fun lt!149711 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15196 (_ BitVec 32)) SeekEntryResult!2350)

(assert (=> b!300769 (= lt!149709 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149711 k0!2524 (array!15197 (store (arr!7190 a!3312) i!1256 k0!2524) (size!7542 a!3312)) mask!3809))))

(declare-fun lt!149708 () SeekEntryResult!2350)

(assert (=> b!300769 (= lt!149708 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149711 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300769 (= lt!149711 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!300770 () Bool)

(declare-fun res!158674 () Bool)

(assert (=> b!300770 (=> (not res!158674) (not e!189901))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15196 (_ BitVec 32)) Bool)

(assert (=> b!300770 (= res!158674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!300771 () Bool)

(declare-fun res!158677 () Bool)

(assert (=> b!300771 (=> (not res!158677) (not e!189899))))

(assert (=> b!300771 (= res!158677 (and (= (size!7542 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7542 a!3312))))))

(declare-fun res!158676 () Bool)

(assert (=> start!29960 (=> (not res!158676) (not e!189899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29960 (= res!158676 (validMask!0 mask!3809))))

(assert (=> start!29960 e!189899))

(assert (=> start!29960 true))

(declare-fun array_inv!5144 (array!15196) Bool)

(assert (=> start!29960 (array_inv!5144 a!3312)))

(assert (= (and start!29960 res!158676) b!300771))

(assert (= (and b!300771 res!158677) b!300766))

(assert (= (and b!300766 res!158679) b!300768))

(assert (= (and b!300768 res!158675) b!300767))

(assert (= (and b!300767 res!158678) b!300770))

(assert (= (and b!300770 res!158674) b!300769))

(declare-fun m!312699 () Bool)

(assert (=> b!300770 m!312699))

(declare-fun m!312701 () Bool)

(assert (=> b!300767 m!312701))

(declare-fun m!312703 () Bool)

(assert (=> b!300768 m!312703))

(declare-fun m!312705 () Bool)

(assert (=> start!29960 m!312705))

(declare-fun m!312707 () Bool)

(assert (=> start!29960 m!312707))

(declare-fun m!312709 () Bool)

(assert (=> b!300769 m!312709))

(declare-fun m!312711 () Bool)

(assert (=> b!300769 m!312711))

(declare-fun m!312713 () Bool)

(assert (=> b!300769 m!312713))

(declare-fun m!312715 () Bool)

(assert (=> b!300769 m!312715))

(declare-fun m!312717 () Bool)

(assert (=> b!300766 m!312717))

(check-sat (not b!300767) (not b!300766) (not start!29960) (not b!300770) (not b!300769) (not b!300768))
(check-sat)
