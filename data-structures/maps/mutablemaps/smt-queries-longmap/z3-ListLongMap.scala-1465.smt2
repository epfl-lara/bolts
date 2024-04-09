; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28188 () Bool)

(assert start!28188)

(declare-fun b!288449 () Bool)

(declare-fun e!182642 () Bool)

(assert (=> b!288449 (= e!182642 (not true))))

(declare-datatypes ((array!14491 0))(
  ( (array!14492 (arr!6872 (Array (_ BitVec 32) (_ BitVec 64))) (size!7224 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14491)

(declare-datatypes ((SeekEntryResult!2032 0))(
  ( (MissingZero!2032 (index!10298 (_ BitVec 32))) (Found!2032 (index!10299 (_ BitVec 32))) (Intermediate!2032 (undefined!2844 Bool) (index!10300 (_ BitVec 32)) (x!28485 (_ BitVec 32))) (Undefined!2032) (MissingVacant!2032 (index!10301 (_ BitVec 32))) )
))
(declare-fun lt!142144 () SeekEntryResult!2032)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!288449 (and (= (select (arr!6872 a!3312) (index!10300 lt!142144)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10300 lt!142144) i!1256))))

(declare-fun b!288450 () Bool)

(declare-fun res!150113 () Bool)

(declare-fun e!182641 () Bool)

(assert (=> b!288450 (=> (not res!150113) (not e!182641))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14491 (_ BitVec 32)) Bool)

(assert (=> b!288450 (= res!150113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288451 () Bool)

(declare-fun e!182643 () Bool)

(assert (=> b!288451 (= e!182643 e!182641)))

(declare-fun res!150112 () Bool)

(assert (=> b!288451 (=> (not res!150112) (not e!182641))))

(declare-fun lt!142148 () SeekEntryResult!2032)

(declare-fun lt!142145 () Bool)

(assert (=> b!288451 (= res!150112 (or lt!142145 (= lt!142148 (MissingVacant!2032 i!1256))))))

(assert (=> b!288451 (= lt!142145 (= lt!142148 (MissingZero!2032 i!1256)))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14491 (_ BitVec 32)) SeekEntryResult!2032)

(assert (=> b!288451 (= lt!142148 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!288452 () Bool)

(declare-fun res!150117 () Bool)

(assert (=> b!288452 (=> (not res!150117) (not e!182643))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288452 (= res!150117 (validKeyInArray!0 k0!2524))))

(declare-fun b!288454 () Bool)

(declare-fun res!150115 () Bool)

(assert (=> b!288454 (=> (not res!150115) (not e!182643))))

(declare-fun arrayContainsKey!0 (array!14491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288454 (= res!150115 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288455 () Bool)

(declare-fun res!150111 () Bool)

(assert (=> b!288455 (=> (not res!150111) (not e!182643))))

(assert (=> b!288455 (= res!150111 (and (= (size!7224 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7224 a!3312))))))

(declare-fun b!288456 () Bool)

(declare-fun e!182644 () Bool)

(assert (=> b!288456 (= e!182641 e!182644)))

(declare-fun res!150116 () Bool)

(assert (=> b!288456 (=> (not res!150116) (not e!182644))))

(assert (=> b!288456 (= res!150116 lt!142145)))

(declare-fun lt!142147 () (_ BitVec 32))

(declare-fun lt!142146 () SeekEntryResult!2032)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14491 (_ BitVec 32)) SeekEntryResult!2032)

(assert (=> b!288456 (= lt!142146 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142147 k0!2524 (array!14492 (store (arr!6872 a!3312) i!1256 k0!2524) (size!7224 a!3312)) mask!3809))))

(assert (=> b!288456 (= lt!142144 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142147 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288456 (= lt!142147 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!288453 () Bool)

(assert (=> b!288453 (= e!182644 e!182642)))

(declare-fun res!150114 () Bool)

(assert (=> b!288453 (=> (not res!150114) (not e!182642))))

(declare-fun lt!142143 () Bool)

(assert (=> b!288453 (= res!150114 (and (or lt!142143 (not (undefined!2844 lt!142144))) (or lt!142143 (not (= (select (arr!6872 a!3312) (index!10300 lt!142144)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142143 (not (= (select (arr!6872 a!3312) (index!10300 lt!142144)) k0!2524))) (not lt!142143)))))

(get-info :version)

(assert (=> b!288453 (= lt!142143 (not ((_ is Intermediate!2032) lt!142144)))))

(declare-fun res!150110 () Bool)

(assert (=> start!28188 (=> (not res!150110) (not e!182643))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28188 (= res!150110 (validMask!0 mask!3809))))

(assert (=> start!28188 e!182643))

(assert (=> start!28188 true))

(declare-fun array_inv!4826 (array!14491) Bool)

(assert (=> start!28188 (array_inv!4826 a!3312)))

(assert (= (and start!28188 res!150110) b!288455))

(assert (= (and b!288455 res!150111) b!288452))

(assert (= (and b!288452 res!150117) b!288454))

(assert (= (and b!288454 res!150115) b!288451))

(assert (= (and b!288451 res!150112) b!288450))

(assert (= (and b!288450 res!150113) b!288456))

(assert (= (and b!288456 res!150116) b!288453))

(assert (= (and b!288453 res!150114) b!288449))

(declare-fun m!302717 () Bool)

(assert (=> b!288451 m!302717))

(declare-fun m!302719 () Bool)

(assert (=> b!288456 m!302719))

(declare-fun m!302721 () Bool)

(assert (=> b!288456 m!302721))

(declare-fun m!302723 () Bool)

(assert (=> b!288456 m!302723))

(declare-fun m!302725 () Bool)

(assert (=> b!288456 m!302725))

(declare-fun m!302727 () Bool)

(assert (=> b!288452 m!302727))

(declare-fun m!302729 () Bool)

(assert (=> b!288450 m!302729))

(declare-fun m!302731 () Bool)

(assert (=> b!288454 m!302731))

(declare-fun m!302733 () Bool)

(assert (=> b!288453 m!302733))

(declare-fun m!302735 () Bool)

(assert (=> start!28188 m!302735))

(declare-fun m!302737 () Bool)

(assert (=> start!28188 m!302737))

(assert (=> b!288449 m!302733))

(check-sat (not start!28188) (not b!288451) (not b!288454) (not b!288456) (not b!288452) (not b!288450))
(check-sat)
