; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28114 () Bool)

(assert start!28114)

(declare-fun b!287921 () Bool)

(declare-fun res!149726 () Bool)

(declare-fun e!182317 () Bool)

(assert (=> b!287921 (=> (not res!149726) (not e!182317))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287921 (= res!149726 (validKeyInArray!0 k!2524))))

(declare-fun res!149725 () Bool)

(assert (=> start!28114 (=> (not res!149725) (not e!182317))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28114 (= res!149725 (validMask!0 mask!3809))))

(assert (=> start!28114 e!182317))

(assert (=> start!28114 true))

(declare-datatypes ((array!14462 0))(
  ( (array!14463 (arr!6859 (Array (_ BitVec 32) (_ BitVec 64))) (size!7211 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14462)

(declare-fun array_inv!4813 (array!14462) Bool)

(assert (=> start!28114 (array_inv!4813 a!3312)))

(declare-fun b!287922 () Bool)

(declare-fun e!182314 () Bool)

(assert (=> b!287922 (= e!182317 e!182314)))

(declare-fun res!149723 () Bool)

(assert (=> b!287922 (=> (not res!149723) (not e!182314))))

(declare-fun lt!141813 () Bool)

(declare-datatypes ((SeekEntryResult!2019 0))(
  ( (MissingZero!2019 (index!10246 (_ BitVec 32))) (Found!2019 (index!10247 (_ BitVec 32))) (Intermediate!2019 (undefined!2831 Bool) (index!10248 (_ BitVec 32)) (x!28434 (_ BitVec 32))) (Undefined!2019) (MissingVacant!2019 (index!10249 (_ BitVec 32))) )
))
(declare-fun lt!141818 () SeekEntryResult!2019)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287922 (= res!149723 (or lt!141813 (= lt!141818 (MissingVacant!2019 i!1256))))))

(assert (=> b!287922 (= lt!141813 (= lt!141818 (MissingZero!2019 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14462 (_ BitVec 32)) SeekEntryResult!2019)

(assert (=> b!287922 (= lt!141818 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287923 () Bool)

(declare-fun e!182316 () Bool)

(declare-fun e!182313 () Bool)

(assert (=> b!287923 (= e!182316 e!182313)))

(declare-fun res!149727 () Bool)

(assert (=> b!287923 (=> (not res!149727) (not e!182313))))

(declare-fun lt!141814 () Bool)

(declare-fun lt!141815 () SeekEntryResult!2019)

(assert (=> b!287923 (= res!149727 (and (or lt!141814 (not (undefined!2831 lt!141815))) (or lt!141814 (not (= (select (arr!6859 a!3312) (index!10248 lt!141815)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!141814 (not (= (select (arr!6859 a!3312) (index!10248 lt!141815)) k!2524))) (not lt!141814)))))

(assert (=> b!287923 (= lt!141814 (not (is-Intermediate!2019 lt!141815)))))

(declare-fun b!287924 () Bool)

(assert (=> b!287924 (= e!182313 (not (bvsge mask!3809 #b00000000000000000000000000000000)))))

(assert (=> b!287924 (and (= (select (arr!6859 a!3312) (index!10248 lt!141815)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10248 lt!141815) i!1256))))

(declare-fun b!287925 () Bool)

(declare-fun res!149724 () Bool)

(assert (=> b!287925 (=> (not res!149724) (not e!182317))))

(declare-fun arrayContainsKey!0 (array!14462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287925 (= res!149724 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287926 () Bool)

(declare-fun res!149730 () Bool)

(assert (=> b!287926 (=> (not res!149730) (not e!182314))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14462 (_ BitVec 32)) Bool)

(assert (=> b!287926 (= res!149730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287927 () Bool)

(assert (=> b!287927 (= e!182314 e!182316)))

(declare-fun res!149729 () Bool)

(assert (=> b!287927 (=> (not res!149729) (not e!182316))))

(assert (=> b!287927 (= res!149729 lt!141813)))

(declare-fun lt!141817 () SeekEntryResult!2019)

(declare-fun lt!141816 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14462 (_ BitVec 32)) SeekEntryResult!2019)

(assert (=> b!287927 (= lt!141817 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141816 k!2524 (array!14463 (store (arr!6859 a!3312) i!1256 k!2524) (size!7211 a!3312)) mask!3809))))

(assert (=> b!287927 (= lt!141815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141816 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287927 (= lt!141816 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!287928 () Bool)

(declare-fun res!149728 () Bool)

(assert (=> b!287928 (=> (not res!149728) (not e!182317))))

(assert (=> b!287928 (= res!149728 (and (= (size!7211 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7211 a!3312))))))

(assert (= (and start!28114 res!149725) b!287928))

(assert (= (and b!287928 res!149728) b!287921))

(assert (= (and b!287921 res!149726) b!287925))

(assert (= (and b!287925 res!149724) b!287922))

(assert (= (and b!287922 res!149723) b!287926))

(assert (= (and b!287926 res!149730) b!287927))

(assert (= (and b!287927 res!149729) b!287923))

(assert (= (and b!287923 res!149727) b!287924))

(declare-fun m!302311 () Bool)

(assert (=> b!287925 m!302311))

(declare-fun m!302313 () Bool)

(assert (=> b!287921 m!302313))

(declare-fun m!302315 () Bool)

(assert (=> start!28114 m!302315))

(declare-fun m!302317 () Bool)

(assert (=> start!28114 m!302317))

(declare-fun m!302319 () Bool)

(assert (=> b!287926 m!302319))

(declare-fun m!302321 () Bool)

(assert (=> b!287927 m!302321))

(declare-fun m!302323 () Bool)

(assert (=> b!287927 m!302323))

(declare-fun m!302325 () Bool)

(assert (=> b!287927 m!302325))

(declare-fun m!302327 () Bool)

(assert (=> b!287927 m!302327))

(declare-fun m!302329 () Bool)

(assert (=> b!287922 m!302329))

(declare-fun m!302331 () Bool)

(assert (=> b!287924 m!302331))

(assert (=> b!287923 m!302331))

(push 1)

