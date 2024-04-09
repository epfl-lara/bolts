; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28118 () Bool)

(assert start!28118)

(declare-fun res!149772 () Bool)

(declare-fun e!182347 () Bool)

(assert (=> start!28118 (=> (not res!149772) (not e!182347))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28118 (= res!149772 (validMask!0 mask!3809))))

(assert (=> start!28118 e!182347))

(assert (=> start!28118 true))

(declare-datatypes ((array!14466 0))(
  ( (array!14467 (arr!6861 (Array (_ BitVec 32) (_ BitVec 64))) (size!7213 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14466)

(declare-fun array_inv!4815 (array!14466) Bool)

(assert (=> start!28118 (array_inv!4815 a!3312)))

(declare-fun b!287969 () Bool)

(declare-fun res!149777 () Bool)

(declare-fun e!182344 () Bool)

(assert (=> b!287969 (=> (not res!149777) (not e!182344))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14466 (_ BitVec 32)) Bool)

(assert (=> b!287969 (= res!149777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287970 () Bool)

(declare-fun e!182345 () Bool)

(assert (=> b!287970 (= e!182345 (not (bvsge mask!3809 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!2021 0))(
  ( (MissingZero!2021 (index!10254 (_ BitVec 32))) (Found!2021 (index!10255 (_ BitVec 32))) (Intermediate!2021 (undefined!2833 Bool) (index!10256 (_ BitVec 32)) (x!28436 (_ BitVec 32))) (Undefined!2021) (MissingVacant!2021 (index!10257 (_ BitVec 32))) )
))
(declare-fun lt!141853 () SeekEntryResult!2021)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287970 (and (= (select (arr!6861 a!3312) (index!10256 lt!141853)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10256 lt!141853) i!1256))))

(declare-fun b!287971 () Bool)

(declare-fun e!182346 () Bool)

(assert (=> b!287971 (= e!182344 e!182346)))

(declare-fun res!149776 () Bool)

(assert (=> b!287971 (=> (not res!149776) (not e!182346))))

(declare-fun lt!141854 () Bool)

(assert (=> b!287971 (= res!149776 lt!141854)))

(declare-fun lt!141849 () (_ BitVec 32))

(declare-fun lt!141852 () SeekEntryResult!2021)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14466 (_ BitVec 32)) SeekEntryResult!2021)

(assert (=> b!287971 (= lt!141852 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141849 k!2524 (array!14467 (store (arr!6861 a!3312) i!1256 k!2524) (size!7213 a!3312)) mask!3809))))

(assert (=> b!287971 (= lt!141853 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141849 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287971 (= lt!141849 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!287972 () Bool)

(declare-fun res!149773 () Bool)

(assert (=> b!287972 (=> (not res!149773) (not e!182347))))

(assert (=> b!287972 (= res!149773 (and (= (size!7213 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7213 a!3312))))))

(declare-fun b!287973 () Bool)

(declare-fun res!149778 () Bool)

(assert (=> b!287973 (=> (not res!149778) (not e!182347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287973 (= res!149778 (validKeyInArray!0 k!2524))))

(declare-fun b!287974 () Bool)

(assert (=> b!287974 (= e!182347 e!182344)))

(declare-fun res!149774 () Bool)

(assert (=> b!287974 (=> (not res!149774) (not e!182344))))

(declare-fun lt!141850 () SeekEntryResult!2021)

(assert (=> b!287974 (= res!149774 (or lt!141854 (= lt!141850 (MissingVacant!2021 i!1256))))))

(assert (=> b!287974 (= lt!141854 (= lt!141850 (MissingZero!2021 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14466 (_ BitVec 32)) SeekEntryResult!2021)

(assert (=> b!287974 (= lt!141850 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287975 () Bool)

(assert (=> b!287975 (= e!182346 e!182345)))

(declare-fun res!149775 () Bool)

(assert (=> b!287975 (=> (not res!149775) (not e!182345))))

(declare-fun lt!141851 () Bool)

(assert (=> b!287975 (= res!149775 (and (or lt!141851 (not (undefined!2833 lt!141853))) (or lt!141851 (not (= (select (arr!6861 a!3312) (index!10256 lt!141853)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!141851 (not (= (select (arr!6861 a!3312) (index!10256 lt!141853)) k!2524))) (not lt!141851)))))

(assert (=> b!287975 (= lt!141851 (not (is-Intermediate!2021 lt!141853)))))

(declare-fun b!287976 () Bool)

(declare-fun res!149771 () Bool)

(assert (=> b!287976 (=> (not res!149771) (not e!182347))))

(declare-fun arrayContainsKey!0 (array!14466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287976 (= res!149771 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28118 res!149772) b!287972))

(assert (= (and b!287972 res!149773) b!287973))

(assert (= (and b!287973 res!149778) b!287976))

(assert (= (and b!287976 res!149771) b!287974))

(assert (= (and b!287974 res!149774) b!287969))

(assert (= (and b!287969 res!149777) b!287971))

(assert (= (and b!287971 res!149776) b!287975))

(assert (= (and b!287975 res!149775) b!287970))

(declare-fun m!302355 () Bool)

(assert (=> b!287970 m!302355))

(declare-fun m!302357 () Bool)

(assert (=> b!287969 m!302357))

(declare-fun m!302359 () Bool)

(assert (=> b!287974 m!302359))

(declare-fun m!302361 () Bool)

(assert (=> b!287976 m!302361))

(declare-fun m!302363 () Bool)

(assert (=> b!287973 m!302363))

(declare-fun m!302365 () Bool)

(assert (=> start!28118 m!302365))

(declare-fun m!302367 () Bool)

(assert (=> start!28118 m!302367))

(declare-fun m!302369 () Bool)

(assert (=> b!287971 m!302369))

(declare-fun m!302371 () Bool)

(assert (=> b!287971 m!302371))

(declare-fun m!302373 () Bool)

(assert (=> b!287971 m!302373))

(declare-fun m!302375 () Bool)

(assert (=> b!287971 m!302375))

(assert (=> b!287975 m!302355))

(push 1)

(assert (not b!287974))

(assert (not start!28118))

(assert (not b!287971))

(assert (not b!287969))

(assert (not b!287976))

(assert (not b!287973))

(check-sat)

(pop 1)

(push 1)

(check-sat)

