; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28014 () Bool)

(assert start!28014)

(declare-fun b!287260 () Bool)

(declare-fun res!149188 () Bool)

(declare-fun e!181959 () Bool)

(assert (=> b!287260 (=> (not res!149188) (not e!181959))))

(declare-datatypes ((array!14407 0))(
  ( (array!14408 (arr!6833 (Array (_ BitVec 32) (_ BitVec 64))) (size!7185 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14407)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14407 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287260 (= res!149188 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287261 () Bool)

(declare-fun res!149189 () Bool)

(assert (=> b!287261 (=> (not res!149189) (not e!181959))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!287261 (= res!149189 (and (= (size!7185 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7185 a!3312))))))

(declare-fun res!149186 () Bool)

(assert (=> start!28014 (=> (not res!149186) (not e!181959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28014 (= res!149186 (validMask!0 mask!3809))))

(assert (=> start!28014 e!181959))

(assert (=> start!28014 true))

(declare-fun array_inv!4787 (array!14407) Bool)

(assert (=> start!28014 (array_inv!4787 a!3312)))

(declare-fun b!287262 () Bool)

(declare-fun res!149185 () Bool)

(declare-fun e!181958 () Bool)

(assert (=> b!287262 (=> (not res!149185) (not e!181958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14407 (_ BitVec 32)) Bool)

(assert (=> b!287262 (= res!149185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287263 () Bool)

(declare-fun res!149187 () Bool)

(assert (=> b!287263 (=> (not res!149187) (not e!181959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287263 (= res!149187 (validKeyInArray!0 k0!2524))))

(declare-fun b!287264 () Bool)

(assert (=> b!287264 (= e!181958 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!1993 0))(
  ( (MissingZero!1993 (index!10142 (_ BitVec 32))) (Found!1993 (index!10143 (_ BitVec 32))) (Intermediate!1993 (undefined!2805 Bool) (index!10144 (_ BitVec 32)) (x!28330 (_ BitVec 32))) (Undefined!1993) (MissingVacant!1993 (index!10145 (_ BitVec 32))) )
))
(declare-fun lt!141479 () SeekEntryResult!1993)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14407 (_ BitVec 32)) SeekEntryResult!1993)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287264 (= lt!141479 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!287265 () Bool)

(assert (=> b!287265 (= e!181959 e!181958)))

(declare-fun res!149190 () Bool)

(assert (=> b!287265 (=> (not res!149190) (not e!181958))))

(declare-fun lt!141478 () SeekEntryResult!1993)

(assert (=> b!287265 (= res!149190 (or (= lt!141478 (MissingZero!1993 i!1256)) (= lt!141478 (MissingVacant!1993 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14407 (_ BitVec 32)) SeekEntryResult!1993)

(assert (=> b!287265 (= lt!141478 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!28014 res!149186) b!287261))

(assert (= (and b!287261 res!149189) b!287263))

(assert (= (and b!287263 res!149187) b!287260))

(assert (= (and b!287260 res!149188) b!287265))

(assert (= (and b!287265 res!149190) b!287262))

(assert (= (and b!287262 res!149185) b!287264))

(declare-fun m!301745 () Bool)

(assert (=> b!287260 m!301745))

(declare-fun m!301747 () Bool)

(assert (=> b!287262 m!301747))

(declare-fun m!301749 () Bool)

(assert (=> start!28014 m!301749))

(declare-fun m!301751 () Bool)

(assert (=> start!28014 m!301751))

(declare-fun m!301753 () Bool)

(assert (=> b!287265 m!301753))

(declare-fun m!301755 () Bool)

(assert (=> b!287263 m!301755))

(declare-fun m!301757 () Bool)

(assert (=> b!287264 m!301757))

(assert (=> b!287264 m!301757))

(declare-fun m!301759 () Bool)

(assert (=> b!287264 m!301759))

(check-sat (not b!287260) (not b!287263) (not b!287264) (not b!287262) (not start!28014) (not b!287265))
(check-sat)
