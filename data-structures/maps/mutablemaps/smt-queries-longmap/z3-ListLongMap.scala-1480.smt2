; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28278 () Bool)

(assert start!28278)

(declare-fun b!289598 () Bool)

(declare-fun e!183341 () Bool)

(declare-fun e!183338 () Bool)

(assert (=> b!289598 (= e!183341 e!183338)))

(declare-fun res!151168 () Bool)

(assert (=> b!289598 (=> (not res!151168) (not e!183338))))

(declare-fun lt!142977 () Bool)

(assert (=> b!289598 (= res!151168 lt!142977)))

(declare-datatypes ((SeekEntryResult!2077 0))(
  ( (MissingZero!2077 (index!10478 (_ BitVec 32))) (Found!2077 (index!10479 (_ BitVec 32))) (Intermediate!2077 (undefined!2889 Bool) (index!10480 (_ BitVec 32)) (x!28650 (_ BitVec 32))) (Undefined!2077) (MissingVacant!2077 (index!10481 (_ BitVec 32))) )
))
(declare-fun lt!142979 () SeekEntryResult!2077)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14581 0))(
  ( (array!14582 (arr!6917 (Array (_ BitVec 32) (_ BitVec 64))) (size!7269 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14581)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!142978 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14581 (_ BitVec 32)) SeekEntryResult!2077)

(assert (=> b!289598 (= lt!142979 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142978 k0!2524 (array!14582 (store (arr!6917 a!3312) i!1256 k0!2524) (size!7269 a!3312)) mask!3809))))

(declare-fun lt!142980 () SeekEntryResult!2077)

(assert (=> b!289598 (= lt!142980 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142978 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289598 (= lt!142978 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!151167 () Bool)

(declare-fun e!183342 () Bool)

(assert (=> start!28278 (=> (not res!151167) (not e!183342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28278 (= res!151167 (validMask!0 mask!3809))))

(assert (=> start!28278 e!183342))

(assert (=> start!28278 true))

(declare-fun array_inv!4871 (array!14581) Bool)

(assert (=> start!28278 (array_inv!4871 a!3312)))

(declare-fun b!289599 () Bool)

(assert (=> b!289599 false))

(declare-datatypes ((Unit!9108 0))(
  ( (Unit!9109) )
))
(declare-fun e!183343 () Unit!9108)

(declare-fun Unit!9110 () Unit!9108)

(assert (=> b!289599 (= e!183343 Unit!9110)))

(declare-fun b!289600 () Bool)

(assert (=> b!289600 (= e!183338 false)))

(declare-fun lt!142982 () Unit!9108)

(declare-fun e!183340 () Unit!9108)

(assert (=> b!289600 (= lt!142982 e!183340)))

(declare-fun c!46777 () Bool)

(get-info :version)

(assert (=> b!289600 (= c!46777 (or (and ((_ is Intermediate!2077) lt!142980) (undefined!2889 lt!142980)) (and ((_ is Intermediate!2077) lt!142980) (= (select (arr!6917 a!3312) (index!10480 lt!142980)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and ((_ is Intermediate!2077) lt!142980) (= (select (arr!6917 a!3312) (index!10480 lt!142980)) k0!2524))))))

(declare-fun b!289601 () Bool)

(declare-fun res!151171 () Bool)

(assert (=> b!289601 (=> (not res!151171) (not e!183342))))

(declare-fun arrayContainsKey!0 (array!14581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289601 (= res!151171 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289602 () Bool)

(declare-fun Unit!9111 () Unit!9108)

(assert (=> b!289602 (= e!183340 Unit!9111)))

(assert (=> b!289602 false))

(declare-fun b!289603 () Bool)

(declare-fun res!151172 () Bool)

(assert (=> b!289603 (=> (not res!151172) (not e!183342))))

(assert (=> b!289603 (= res!151172 (and (= (size!7269 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7269 a!3312))))))

(declare-fun b!289604 () Bool)

(assert (=> b!289604 (= e!183340 e!183343)))

(declare-fun c!46778 () Bool)

(assert (=> b!289604 (= c!46778 ((_ is Intermediate!2077) lt!142980))))

(declare-fun b!289605 () Bool)

(declare-fun res!151173 () Bool)

(assert (=> b!289605 (=> (not res!151173) (not e!183342))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289605 (= res!151173 (validKeyInArray!0 k0!2524))))

(declare-fun b!289606 () Bool)

(assert (=> b!289606 (and (= lt!142979 lt!142980) (= (select (store (arr!6917 a!3312) i!1256 k0!2524) (index!10480 lt!142980)) k0!2524))))

(declare-fun lt!142976 () Unit!9108)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!14581 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9108)

(assert (=> b!289606 (= lt!142976 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!142978 (index!10480 lt!142980) (x!28650 lt!142980) mask!3809))))

(assert (=> b!289606 (and (= (select (arr!6917 a!3312) (index!10480 lt!142980)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10480 lt!142980) i!1256))))

(declare-fun Unit!9112 () Unit!9108)

(assert (=> b!289606 (= e!183343 Unit!9112)))

(declare-fun b!289607 () Bool)

(assert (=> b!289607 (= e!183342 e!183341)))

(declare-fun res!151169 () Bool)

(assert (=> b!289607 (=> (not res!151169) (not e!183341))))

(declare-fun lt!142981 () SeekEntryResult!2077)

(assert (=> b!289607 (= res!151169 (or lt!142977 (= lt!142981 (MissingVacant!2077 i!1256))))))

(assert (=> b!289607 (= lt!142977 (= lt!142981 (MissingZero!2077 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14581 (_ BitVec 32)) SeekEntryResult!2077)

(assert (=> b!289607 (= lt!142981 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!289608 () Bool)

(declare-fun res!151170 () Bool)

(assert (=> b!289608 (=> (not res!151170) (not e!183341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14581 (_ BitVec 32)) Bool)

(assert (=> b!289608 (= res!151170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28278 res!151167) b!289603))

(assert (= (and b!289603 res!151172) b!289605))

(assert (= (and b!289605 res!151173) b!289601))

(assert (= (and b!289601 res!151171) b!289607))

(assert (= (and b!289607 res!151169) b!289608))

(assert (= (and b!289608 res!151170) b!289598))

(assert (= (and b!289598 res!151168) b!289600))

(assert (= (and b!289600 c!46777) b!289602))

(assert (= (and b!289600 (not c!46777)) b!289604))

(assert (= (and b!289604 c!46778) b!289606))

(assert (= (and b!289604 (not c!46778)) b!289599))

(declare-fun m!303735 () Bool)

(assert (=> b!289601 m!303735))

(declare-fun m!303737 () Bool)

(assert (=> b!289608 m!303737))

(declare-fun m!303739 () Bool)

(assert (=> b!289607 m!303739))

(declare-fun m!303741 () Bool)

(assert (=> b!289606 m!303741))

(declare-fun m!303743 () Bool)

(assert (=> b!289606 m!303743))

(declare-fun m!303745 () Bool)

(assert (=> b!289606 m!303745))

(declare-fun m!303747 () Bool)

(assert (=> b!289606 m!303747))

(declare-fun m!303749 () Bool)

(assert (=> b!289605 m!303749))

(declare-fun m!303751 () Bool)

(assert (=> start!28278 m!303751))

(declare-fun m!303753 () Bool)

(assert (=> start!28278 m!303753))

(assert (=> b!289600 m!303747))

(assert (=> b!289598 m!303741))

(declare-fun m!303755 () Bool)

(assert (=> b!289598 m!303755))

(declare-fun m!303757 () Bool)

(assert (=> b!289598 m!303757))

(declare-fun m!303759 () Bool)

(assert (=> b!289598 m!303759))

(check-sat (not b!289598) (not start!28278) (not b!289601) (not b!289605) (not b!289608) (not b!289606) (not b!289607))
(check-sat)
