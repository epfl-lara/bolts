; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27870 () Bool)

(assert start!27870)

(declare-fun b!286477 () Bool)

(declare-fun res!148594 () Bool)

(declare-fun e!181526 () Bool)

(assert (=> b!286477 (=> (not res!148594) (not e!181526))))

(declare-datatypes ((array!14347 0))(
  ( (array!14348 (arr!6806 (Array (_ BitVec 32) (_ BitVec 64))) (size!7158 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14347)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14347 (_ BitVec 32)) Bool)

(assert (=> b!286477 (= res!148594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286478 () Bool)

(declare-fun e!181527 () Bool)

(assert (=> b!286478 (= e!181527 e!181526)))

(declare-fun res!148597 () Bool)

(assert (=> b!286478 (=> (not res!148597) (not e!181526))))

(declare-datatypes ((SeekEntryResult!1966 0))(
  ( (MissingZero!1966 (index!10034 (_ BitVec 32))) (Found!1966 (index!10035 (_ BitVec 32))) (Intermediate!1966 (undefined!2778 Bool) (index!10036 (_ BitVec 32)) (x!28222 (_ BitVec 32))) (Undefined!1966) (MissingVacant!1966 (index!10037 (_ BitVec 32))) )
))
(declare-fun lt!141154 () SeekEntryResult!1966)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286478 (= res!148597 (or (= lt!141154 (MissingZero!1966 i!1256)) (= lt!141154 (MissingVacant!1966 i!1256))))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14347 (_ BitVec 32)) SeekEntryResult!1966)

(assert (=> b!286478 (= lt!141154 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!286479 () Bool)

(declare-fun res!148595 () Bool)

(assert (=> b!286479 (=> (not res!148595) (not e!181527))))

(assert (=> b!286479 (= res!148595 (and (= (size!7158 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7158 a!3312))))))

(declare-fun b!286481 () Bool)

(declare-fun res!148596 () Bool)

(assert (=> b!286481 (=> (not res!148596) (not e!181527))))

(declare-fun arrayContainsKey!0 (array!14347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286481 (= res!148596 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286482 () Bool)

(declare-fun res!148599 () Bool)

(assert (=> b!286482 (=> (not res!148599) (not e!181527))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286482 (= res!148599 (validKeyInArray!0 k0!2524))))

(declare-fun b!286480 () Bool)

(assert (=> b!286480 (= e!181526 false)))

(declare-fun lt!141155 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286480 (= lt!141155 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!148598 () Bool)

(assert (=> start!27870 (=> (not res!148598) (not e!181527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27870 (= res!148598 (validMask!0 mask!3809))))

(assert (=> start!27870 e!181527))

(assert (=> start!27870 true))

(declare-fun array_inv!4760 (array!14347) Bool)

(assert (=> start!27870 (array_inv!4760 a!3312)))

(assert (= (and start!27870 res!148598) b!286479))

(assert (= (and b!286479 res!148595) b!286482))

(assert (= (and b!286482 res!148599) b!286481))

(assert (= (and b!286481 res!148596) b!286478))

(assert (= (and b!286478 res!148597) b!286477))

(assert (= (and b!286477 res!148594) b!286480))

(declare-fun m!301173 () Bool)

(assert (=> b!286480 m!301173))

(declare-fun m!301175 () Bool)

(assert (=> b!286477 m!301175))

(declare-fun m!301177 () Bool)

(assert (=> start!27870 m!301177))

(declare-fun m!301179 () Bool)

(assert (=> start!27870 m!301179))

(declare-fun m!301181 () Bool)

(assert (=> b!286481 m!301181))

(declare-fun m!301183 () Bool)

(assert (=> b!286478 m!301183))

(declare-fun m!301185 () Bool)

(assert (=> b!286482 m!301185))

(check-sat (not b!286482) (not start!27870) (not b!286478) (not b!286480) (not b!286481) (not b!286477))
(check-sat)
