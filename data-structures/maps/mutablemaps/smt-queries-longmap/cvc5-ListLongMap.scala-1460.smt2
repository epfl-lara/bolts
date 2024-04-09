; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28108 () Bool)

(assert start!28108)

(declare-fun b!287864 () Bool)

(declare-fun res!149667 () Bool)

(declare-fun e!182283 () Bool)

(assert (=> b!287864 (=> (not res!149667) (not e!182283))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287864 (= res!149667 (validKeyInArray!0 k!2524))))

(declare-fun b!287865 () Bool)

(declare-fun res!149665 () Bool)

(declare-fun e!182282 () Bool)

(assert (=> b!287865 (=> (not res!149665) (not e!182282))))

(declare-datatypes ((array!14456 0))(
  ( (array!14457 (arr!6856 (Array (_ BitVec 32) (_ BitVec 64))) (size!7208 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14456)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14456 (_ BitVec 32)) Bool)

(assert (=> b!287865 (= res!149665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287866 () Bool)

(declare-fun res!149666 () Bool)

(assert (=> b!287866 (=> (not res!149666) (not e!182283))))

(declare-fun arrayContainsKey!0 (array!14456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287866 (= res!149666 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287867 () Bool)

(declare-fun res!149668 () Bool)

(assert (=> b!287867 (=> (not res!149668) (not e!182283))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287867 (= res!149668 (and (= (size!7208 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7208 a!3312))))))

(declare-fun b!287868 () Bool)

(assert (=> b!287868 (= e!182282 false)))

(declare-fun lt!141775 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2016 0))(
  ( (MissingZero!2016 (index!10234 (_ BitVec 32))) (Found!2016 (index!10235 (_ BitVec 32))) (Intermediate!2016 (undefined!2828 Bool) (index!10236 (_ BitVec 32)) (x!28423 (_ BitVec 32))) (Undefined!2016) (MissingVacant!2016 (index!10237 (_ BitVec 32))) )
))
(declare-fun lt!141776 () SeekEntryResult!2016)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14456 (_ BitVec 32)) SeekEntryResult!2016)

(assert (=> b!287868 (= lt!141776 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141775 k!2524 (array!14457 (store (arr!6856 a!3312) i!1256 k!2524) (size!7208 a!3312)) mask!3809))))

(declare-fun lt!141774 () SeekEntryResult!2016)

(assert (=> b!287868 (= lt!141774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141775 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287868 (= lt!141775 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!287863 () Bool)

(assert (=> b!287863 (= e!182283 e!182282)))

(declare-fun res!149669 () Bool)

(assert (=> b!287863 (=> (not res!149669) (not e!182282))))

(declare-fun lt!141773 () SeekEntryResult!2016)

(assert (=> b!287863 (= res!149669 (or (= lt!141773 (MissingZero!2016 i!1256)) (= lt!141773 (MissingVacant!2016 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14456 (_ BitVec 32)) SeekEntryResult!2016)

(assert (=> b!287863 (= lt!141773 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!149670 () Bool)

(assert (=> start!28108 (=> (not res!149670) (not e!182283))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28108 (= res!149670 (validMask!0 mask!3809))))

(assert (=> start!28108 e!182283))

(assert (=> start!28108 true))

(declare-fun array_inv!4810 (array!14456) Bool)

(assert (=> start!28108 (array_inv!4810 a!3312)))

(assert (= (and start!28108 res!149670) b!287867))

(assert (= (and b!287867 res!149668) b!287864))

(assert (= (and b!287864 res!149667) b!287866))

(assert (= (and b!287866 res!149666) b!287863))

(assert (= (and b!287863 res!149669) b!287865))

(assert (= (and b!287865 res!149665) b!287868))

(declare-fun m!302251 () Bool)

(assert (=> b!287864 m!302251))

(declare-fun m!302253 () Bool)

(assert (=> b!287865 m!302253))

(declare-fun m!302255 () Bool)

(assert (=> b!287866 m!302255))

(declare-fun m!302257 () Bool)

(assert (=> start!28108 m!302257))

(declare-fun m!302259 () Bool)

(assert (=> start!28108 m!302259))

(declare-fun m!302261 () Bool)

(assert (=> b!287863 m!302261))

(declare-fun m!302263 () Bool)

(assert (=> b!287868 m!302263))

(declare-fun m!302265 () Bool)

(assert (=> b!287868 m!302265))

(declare-fun m!302267 () Bool)

(assert (=> b!287868 m!302267))

(declare-fun m!302269 () Bool)

(assert (=> b!287868 m!302269))

(push 1)

(assert (not b!287865))

(assert (not b!287863))

(assert (not b!287866))

(assert (not b!287864))

(assert (not b!287868))

(assert (not start!28108))

(check-sat)

