; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28242 () Bool)

(assert start!28242)

(declare-fun b!289097 () Bool)

(declare-fun e!183048 () Bool)

(declare-fun e!183047 () Bool)

(assert (=> b!289097 (= e!183048 e!183047)))

(declare-fun res!150760 () Bool)

(assert (=> b!289097 (=> (not res!150760) (not e!183047))))

(declare-fun lt!142630 () Bool)

(assert (=> b!289097 (= res!150760 lt!142630)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14545 0))(
  ( (array!14546 (arr!6899 (Array (_ BitVec 32) (_ BitVec 64))) (size!7251 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14545)

(declare-fun lt!142632 () (_ BitVec 32))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2059 0))(
  ( (MissingZero!2059 (index!10406 (_ BitVec 32))) (Found!2059 (index!10407 (_ BitVec 32))) (Intermediate!2059 (undefined!2871 Bool) (index!10408 (_ BitVec 32)) (x!28584 (_ BitVec 32))) (Undefined!2059) (MissingVacant!2059 (index!10409 (_ BitVec 32))) )
))
(declare-fun lt!142634 () SeekEntryResult!2059)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14545 (_ BitVec 32)) SeekEntryResult!2059)

(assert (=> b!289097 (= lt!142634 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142632 k0!2524 (array!14546 (store (arr!6899 a!3312) i!1256 k0!2524) (size!7251 a!3312)) mask!3809))))

(declare-fun lt!142629 () SeekEntryResult!2059)

(assert (=> b!289097 (= lt!142629 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142632 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289097 (= lt!142632 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!289098 () Bool)

(declare-fun res!150758 () Bool)

(declare-fun e!183046 () Bool)

(assert (=> b!289098 (=> (not res!150758) (not e!183046))))

(declare-fun arrayContainsKey!0 (array!14545 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289098 (= res!150758 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289100 () Bool)

(declare-fun res!150759 () Bool)

(assert (=> b!289100 (=> (not res!150759) (not e!183046))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289100 (= res!150759 (validKeyInArray!0 k0!2524))))

(declare-fun b!289101 () Bool)

(declare-fun res!150763 () Bool)

(assert (=> b!289101 (=> (not res!150763) (not e!183046))))

(assert (=> b!289101 (= res!150763 (and (= (size!7251 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7251 a!3312))))))

(declare-fun b!289102 () Bool)

(declare-fun e!183049 () Bool)

(assert (=> b!289102 (= e!183049 (not true))))

(assert (=> b!289102 (and (= (select (arr!6899 a!3312) (index!10408 lt!142629)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10408 lt!142629) i!1256))))

(declare-fun b!289103 () Bool)

(assert (=> b!289103 (= e!183047 e!183049)))

(declare-fun res!150765 () Bool)

(assert (=> b!289103 (=> (not res!150765) (not e!183049))))

(declare-fun lt!142633 () Bool)

(assert (=> b!289103 (= res!150765 (and (or lt!142633 (not (undefined!2871 lt!142629))) (or lt!142633 (not (= (select (arr!6899 a!3312) (index!10408 lt!142629)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142633 (not (= (select (arr!6899 a!3312) (index!10408 lt!142629)) k0!2524))) (not lt!142633)))))

(get-info :version)

(assert (=> b!289103 (= lt!142633 (not ((_ is Intermediate!2059) lt!142629)))))

(declare-fun b!289104 () Bool)

(declare-fun res!150761 () Bool)

(assert (=> b!289104 (=> (not res!150761) (not e!183048))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14545 (_ BitVec 32)) Bool)

(assert (=> b!289104 (= res!150761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289099 () Bool)

(assert (=> b!289099 (= e!183046 e!183048)))

(declare-fun res!150764 () Bool)

(assert (=> b!289099 (=> (not res!150764) (not e!183048))))

(declare-fun lt!142631 () SeekEntryResult!2059)

(assert (=> b!289099 (= res!150764 (or lt!142630 (= lt!142631 (MissingVacant!2059 i!1256))))))

(assert (=> b!289099 (= lt!142630 (= lt!142631 (MissingZero!2059 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14545 (_ BitVec 32)) SeekEntryResult!2059)

(assert (=> b!289099 (= lt!142631 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!150762 () Bool)

(assert (=> start!28242 (=> (not res!150762) (not e!183046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28242 (= res!150762 (validMask!0 mask!3809))))

(assert (=> start!28242 e!183046))

(assert (=> start!28242 true))

(declare-fun array_inv!4853 (array!14545) Bool)

(assert (=> start!28242 (array_inv!4853 a!3312)))

(assert (= (and start!28242 res!150762) b!289101))

(assert (= (and b!289101 res!150763) b!289100))

(assert (= (and b!289100 res!150759) b!289098))

(assert (= (and b!289098 res!150758) b!289099))

(assert (= (and b!289099 res!150764) b!289104))

(assert (= (and b!289104 res!150761) b!289097))

(assert (= (and b!289097 res!150760) b!289103))

(assert (= (and b!289103 res!150765) b!289102))

(declare-fun m!303311 () Bool)

(assert (=> b!289097 m!303311))

(declare-fun m!303313 () Bool)

(assert (=> b!289097 m!303313))

(declare-fun m!303315 () Bool)

(assert (=> b!289097 m!303315))

(declare-fun m!303317 () Bool)

(assert (=> b!289097 m!303317))

(declare-fun m!303319 () Bool)

(assert (=> b!289100 m!303319))

(declare-fun m!303321 () Bool)

(assert (=> start!28242 m!303321))

(declare-fun m!303323 () Bool)

(assert (=> start!28242 m!303323))

(declare-fun m!303325 () Bool)

(assert (=> b!289103 m!303325))

(declare-fun m!303327 () Bool)

(assert (=> b!289099 m!303327))

(assert (=> b!289102 m!303325))

(declare-fun m!303329 () Bool)

(assert (=> b!289098 m!303329))

(declare-fun m!303331 () Bool)

(assert (=> b!289104 m!303331))

(check-sat (not b!289098) (not b!289100) (not b!289099) (not b!289097) (not start!28242) (not b!289104))
(check-sat)
