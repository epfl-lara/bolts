; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28020 () Bool)

(assert start!28020)

(declare-fun res!149242 () Bool)

(declare-fun e!181985 () Bool)

(assert (=> start!28020 (=> (not res!149242) (not e!181985))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28020 (= res!149242 (validMask!0 mask!3809))))

(assert (=> start!28020 e!181985))

(assert (=> start!28020 true))

(declare-datatypes ((array!14413 0))(
  ( (array!14414 (arr!6836 (Array (_ BitVec 32) (_ BitVec 64))) (size!7188 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14413)

(declare-fun array_inv!4790 (array!14413) Bool)

(assert (=> start!28020 (array_inv!4790 a!3312)))

(declare-fun b!287314 () Bool)

(declare-fun e!181986 () Bool)

(assert (=> b!287314 (= e!181985 e!181986)))

(declare-fun res!149244 () Bool)

(assert (=> b!287314 (=> (not res!149244) (not e!181986))))

(declare-datatypes ((SeekEntryResult!1996 0))(
  ( (MissingZero!1996 (index!10154 (_ BitVec 32))) (Found!1996 (index!10155 (_ BitVec 32))) (Intermediate!1996 (undefined!2808 Bool) (index!10156 (_ BitVec 32)) (x!28341 (_ BitVec 32))) (Undefined!1996) (MissingVacant!1996 (index!10157 (_ BitVec 32))) )
))
(declare-fun lt!141496 () SeekEntryResult!1996)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287314 (= res!149244 (or (= lt!141496 (MissingZero!1996 i!1256)) (= lt!141496 (MissingVacant!1996 i!1256))))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14413 (_ BitVec 32)) SeekEntryResult!1996)

(assert (=> b!287314 (= lt!141496 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!287315 () Bool)

(declare-fun res!149243 () Bool)

(assert (=> b!287315 (=> (not res!149243) (not e!181985))))

(declare-fun arrayContainsKey!0 (array!14413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287315 (= res!149243 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287316 () Bool)

(declare-fun res!149240 () Bool)

(assert (=> b!287316 (=> (not res!149240) (not e!181985))))

(assert (=> b!287316 (= res!149240 (and (= (size!7188 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7188 a!3312))))))

(declare-fun b!287317 () Bool)

(declare-fun res!149241 () Bool)

(assert (=> b!287317 (=> (not res!149241) (not e!181986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14413 (_ BitVec 32)) Bool)

(assert (=> b!287317 (= res!149241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287318 () Bool)

(declare-fun res!149239 () Bool)

(assert (=> b!287318 (=> (not res!149239) (not e!181985))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287318 (= res!149239 (validKeyInArray!0 k0!2524))))

(declare-fun b!287319 () Bool)

(assert (=> b!287319 (= e!181986 false)))

(declare-fun lt!141497 () SeekEntryResult!1996)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14413 (_ BitVec 32)) SeekEntryResult!1996)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287319 (= lt!141497 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (= (and start!28020 res!149242) b!287316))

(assert (= (and b!287316 res!149240) b!287318))

(assert (= (and b!287318 res!149239) b!287315))

(assert (= (and b!287315 res!149243) b!287314))

(assert (= (and b!287314 res!149244) b!287317))

(assert (= (and b!287317 res!149241) b!287319))

(declare-fun m!301793 () Bool)

(assert (=> b!287315 m!301793))

(declare-fun m!301795 () Bool)

(assert (=> b!287314 m!301795))

(declare-fun m!301797 () Bool)

(assert (=> b!287319 m!301797))

(assert (=> b!287319 m!301797))

(declare-fun m!301799 () Bool)

(assert (=> b!287319 m!301799))

(declare-fun m!301801 () Bool)

(assert (=> start!28020 m!301801))

(declare-fun m!301803 () Bool)

(assert (=> start!28020 m!301803))

(declare-fun m!301805 () Bool)

(assert (=> b!287317 m!301805))

(declare-fun m!301807 () Bool)

(assert (=> b!287318 m!301807))

(check-sat (not b!287318) (not b!287317) (not b!287314) (not start!28020) (not b!287319) (not b!287315))
(check-sat)
