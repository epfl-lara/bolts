; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28338 () Bool)

(assert start!28338)

(declare-fun b!290213 () Bool)

(declare-fun res!151731 () Bool)

(declare-fun e!183659 () Bool)

(assert (=> b!290213 (=> (not res!151731) (not e!183659))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14641 0))(
  ( (array!14642 (arr!6947 (Array (_ BitVec 32) (_ BitVec 64))) (size!7299 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14641)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!290213 (= res!151731 (and (= (size!7299 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7299 a!3312))))))

(declare-fun b!290214 () Bool)

(declare-fun e!183658 () Bool)

(assert (=> b!290214 (= e!183659 e!183658)))

(declare-fun res!151730 () Bool)

(assert (=> b!290214 (=> (not res!151730) (not e!183658))))

(declare-datatypes ((SeekEntryResult!2107 0))(
  ( (MissingZero!2107 (index!10598 (_ BitVec 32))) (Found!2107 (index!10599 (_ BitVec 32))) (Intermediate!2107 (undefined!2919 Bool) (index!10600 (_ BitVec 32)) (x!28760 (_ BitVec 32))) (Undefined!2107) (MissingVacant!2107 (index!10601 (_ BitVec 32))) )
))
(declare-fun lt!143394 () SeekEntryResult!2107)

(declare-fun lt!143397 () Bool)

(assert (=> b!290214 (= res!151730 (or lt!143397 (= lt!143394 (MissingVacant!2107 i!1256))))))

(assert (=> b!290214 (= lt!143397 (= lt!143394 (MissingZero!2107 i!1256)))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14641 (_ BitVec 32)) SeekEntryResult!2107)

(assert (=> b!290214 (= lt!143394 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!290215 () Bool)

(declare-fun e!183661 () Bool)

(assert (=> b!290215 (= e!183658 e!183661)))

(declare-fun res!151737 () Bool)

(assert (=> b!290215 (=> (not res!151737) (not e!183661))))

(assert (=> b!290215 (= res!151737 (and (not lt!143397) (= lt!143394 (MissingVacant!2107 i!1256))))))

(declare-fun lt!143398 () SeekEntryResult!2107)

(declare-fun lt!143396 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14641 (_ BitVec 32)) SeekEntryResult!2107)

(assert (=> b!290215 (= lt!143398 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143396 k0!2524 (array!14642 (store (arr!6947 a!3312) i!1256 k0!2524) (size!7299 a!3312)) mask!3809))))

(declare-fun lt!143399 () SeekEntryResult!2107)

(assert (=> b!290215 (= lt!143399 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143396 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290215 (= lt!143396 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!151732 () Bool)

(assert (=> start!28338 (=> (not res!151732) (not e!183659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28338 (= res!151732 (validMask!0 mask!3809))))

(assert (=> start!28338 e!183659))

(assert (=> start!28338 true))

(declare-fun array_inv!4901 (array!14641) Bool)

(assert (=> start!28338 (array_inv!4901 a!3312)))

(declare-fun b!290216 () Bool)

(declare-fun e!183657 () Bool)

(assert (=> b!290216 (= e!183657 (not (bvsge mask!3809 #b00000000000000000000000000000000)))))

(assert (=> b!290216 (= (index!10600 lt!143399) i!1256)))

(declare-fun b!290217 () Bool)

(assert (=> b!290217 (= e!183661 e!183657)))

(declare-fun res!151736 () Bool)

(assert (=> b!290217 (=> (not res!151736) (not e!183657))))

(declare-fun lt!143395 () Bool)

(assert (=> b!290217 (= res!151736 (and (or lt!143395 (not (undefined!2919 lt!143399))) (not lt!143395) (= (select (arr!6947 a!3312) (index!10600 lt!143399)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!290217 (= lt!143395 (not ((_ is Intermediate!2107) lt!143399)))))

(declare-fun b!290218 () Bool)

(declare-fun res!151735 () Bool)

(assert (=> b!290218 (=> (not res!151735) (not e!183659))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290218 (= res!151735 (validKeyInArray!0 k0!2524))))

(declare-fun b!290219 () Bool)

(declare-fun res!151734 () Bool)

(assert (=> b!290219 (=> (not res!151734) (not e!183658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14641 (_ BitVec 32)) Bool)

(assert (=> b!290219 (= res!151734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290220 () Bool)

(declare-fun res!151733 () Bool)

(assert (=> b!290220 (=> (not res!151733) (not e!183659))))

(declare-fun arrayContainsKey!0 (array!14641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290220 (= res!151733 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28338 res!151732) b!290213))

(assert (= (and b!290213 res!151731) b!290218))

(assert (= (and b!290218 res!151735) b!290220))

(assert (= (and b!290220 res!151733) b!290214))

(assert (= (and b!290214 res!151730) b!290219))

(assert (= (and b!290219 res!151734) b!290215))

(assert (= (and b!290215 res!151737) b!290217))

(assert (= (and b!290217 res!151736) b!290216))

(declare-fun m!304367 () Bool)

(assert (=> b!290217 m!304367))

(declare-fun m!304369 () Bool)

(assert (=> b!290218 m!304369))

(declare-fun m!304371 () Bool)

(assert (=> b!290219 m!304371))

(declare-fun m!304373 () Bool)

(assert (=> b!290214 m!304373))

(declare-fun m!304375 () Bool)

(assert (=> start!28338 m!304375))

(declare-fun m!304377 () Bool)

(assert (=> start!28338 m!304377))

(declare-fun m!304379 () Bool)

(assert (=> b!290220 m!304379))

(declare-fun m!304381 () Bool)

(assert (=> b!290215 m!304381))

(declare-fun m!304383 () Bool)

(assert (=> b!290215 m!304383))

(declare-fun m!304385 () Bool)

(assert (=> b!290215 m!304385))

(declare-fun m!304387 () Bool)

(assert (=> b!290215 m!304387))

(check-sat (not b!290218) (not b!290214) (not b!290215) (not start!28338) (not b!290220) (not b!290219))
(check-sat)
