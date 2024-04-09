; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28248 () Bool)

(assert start!28248)

(declare-fun res!150832 () Bool)

(declare-fun e!183094 () Bool)

(assert (=> start!28248 (=> (not res!150832) (not e!183094))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28248 (= res!150832 (validMask!0 mask!3809))))

(assert (=> start!28248 e!183094))

(assert (=> start!28248 true))

(declare-datatypes ((array!14551 0))(
  ( (array!14552 (arr!6902 (Array (_ BitVec 32) (_ BitVec 64))) (size!7254 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14551)

(declare-fun array_inv!4856 (array!14551) Bool)

(assert (=> start!28248 (array_inv!4856 a!3312)))

(declare-fun b!289169 () Bool)

(declare-fun e!183091 () Bool)

(assert (=> b!289169 (= e!183091 (not true))))

(declare-datatypes ((SeekEntryResult!2062 0))(
  ( (MissingZero!2062 (index!10418 (_ BitVec 32))) (Found!2062 (index!10419 (_ BitVec 32))) (Intermediate!2062 (undefined!2874 Bool) (index!10420 (_ BitVec 32)) (x!28595 (_ BitVec 32))) (Undefined!2062) (MissingVacant!2062 (index!10421 (_ BitVec 32))) )
))
(declare-fun lt!142687 () SeekEntryResult!2062)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289169 (and (= (select (arr!6902 a!3312) (index!10420 lt!142687)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10420 lt!142687) i!1256))))

(declare-fun b!289170 () Bool)

(declare-fun e!183093 () Bool)

(declare-fun e!183090 () Bool)

(assert (=> b!289170 (= e!183093 e!183090)))

(declare-fun res!150834 () Bool)

(assert (=> b!289170 (=> (not res!150834) (not e!183090))))

(declare-fun lt!142688 () Bool)

(assert (=> b!289170 (= res!150834 lt!142688)))

(declare-fun lt!142684 () SeekEntryResult!2062)

(declare-fun lt!142685 () (_ BitVec 32))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14551 (_ BitVec 32)) SeekEntryResult!2062)

(assert (=> b!289170 (= lt!142684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142685 k0!2524 (array!14552 (store (arr!6902 a!3312) i!1256 k0!2524) (size!7254 a!3312)) mask!3809))))

(assert (=> b!289170 (= lt!142687 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142685 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289170 (= lt!142685 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!289171 () Bool)

(declare-fun res!150830 () Bool)

(assert (=> b!289171 (=> (not res!150830) (not e!183094))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289171 (= res!150830 (validKeyInArray!0 k0!2524))))

(declare-fun b!289172 () Bool)

(declare-fun res!150836 () Bool)

(assert (=> b!289172 (=> (not res!150836) (not e!183094))))

(assert (=> b!289172 (= res!150836 (and (= (size!7254 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7254 a!3312))))))

(declare-fun b!289173 () Bool)

(assert (=> b!289173 (= e!183094 e!183093)))

(declare-fun res!150835 () Bool)

(assert (=> b!289173 (=> (not res!150835) (not e!183093))))

(declare-fun lt!142683 () SeekEntryResult!2062)

(assert (=> b!289173 (= res!150835 (or lt!142688 (= lt!142683 (MissingVacant!2062 i!1256))))))

(assert (=> b!289173 (= lt!142688 (= lt!142683 (MissingZero!2062 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14551 (_ BitVec 32)) SeekEntryResult!2062)

(assert (=> b!289173 (= lt!142683 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!289174 () Bool)

(declare-fun res!150833 () Bool)

(assert (=> b!289174 (=> (not res!150833) (not e!183094))))

(declare-fun arrayContainsKey!0 (array!14551 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289174 (= res!150833 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289175 () Bool)

(declare-fun res!150831 () Bool)

(assert (=> b!289175 (=> (not res!150831) (not e!183093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14551 (_ BitVec 32)) Bool)

(assert (=> b!289175 (= res!150831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289176 () Bool)

(assert (=> b!289176 (= e!183090 e!183091)))

(declare-fun res!150837 () Bool)

(assert (=> b!289176 (=> (not res!150837) (not e!183091))))

(declare-fun lt!142686 () Bool)

(assert (=> b!289176 (= res!150837 (and (or lt!142686 (not (undefined!2874 lt!142687))) (or lt!142686 (not (= (select (arr!6902 a!3312) (index!10420 lt!142687)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142686 (not (= (select (arr!6902 a!3312) (index!10420 lt!142687)) k0!2524))) (not lt!142686)))))

(get-info :version)

(assert (=> b!289176 (= lt!142686 (not ((_ is Intermediate!2062) lt!142687)))))

(assert (= (and start!28248 res!150832) b!289172))

(assert (= (and b!289172 res!150836) b!289171))

(assert (= (and b!289171 res!150830) b!289174))

(assert (= (and b!289174 res!150833) b!289173))

(assert (= (and b!289173 res!150835) b!289175))

(assert (= (and b!289175 res!150831) b!289170))

(assert (= (and b!289170 res!150834) b!289176))

(assert (= (and b!289176 res!150837) b!289169))

(declare-fun m!303377 () Bool)

(assert (=> start!28248 m!303377))

(declare-fun m!303379 () Bool)

(assert (=> start!28248 m!303379))

(declare-fun m!303381 () Bool)

(assert (=> b!289176 m!303381))

(assert (=> b!289169 m!303381))

(declare-fun m!303383 () Bool)

(assert (=> b!289173 m!303383))

(declare-fun m!303385 () Bool)

(assert (=> b!289171 m!303385))

(declare-fun m!303387 () Bool)

(assert (=> b!289174 m!303387))

(declare-fun m!303389 () Bool)

(assert (=> b!289175 m!303389))

(declare-fun m!303391 () Bool)

(assert (=> b!289170 m!303391))

(declare-fun m!303393 () Bool)

(assert (=> b!289170 m!303393))

(declare-fun m!303395 () Bool)

(assert (=> b!289170 m!303395))

(declare-fun m!303397 () Bool)

(assert (=> b!289170 m!303397))

(check-sat (not b!289173) (not b!289170) (not start!28248) (not b!289174) (not b!289175) (not b!289171))
(check-sat)
