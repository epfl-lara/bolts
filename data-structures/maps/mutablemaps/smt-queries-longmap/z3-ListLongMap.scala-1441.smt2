; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27822 () Bool)

(assert start!27822)

(declare-fun res!148453 () Bool)

(declare-fun e!181400 () Bool)

(assert (=> start!27822 (=> (not res!148453) (not e!181400))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27822 (= res!148453 (validMask!0 mask!3809))))

(assert (=> start!27822 e!181400))

(assert (=> start!27822 true))

(declare-datatypes ((array!14332 0))(
  ( (array!14333 (arr!6800 (Array (_ BitVec 32) (_ BitVec 64))) (size!7152 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14332)

(declare-fun array_inv!4754 (array!14332) Bool)

(assert (=> start!27822 (array_inv!4754 a!3312)))

(declare-fun b!286261 () Bool)

(declare-fun e!181402 () Bool)

(assert (=> b!286261 (= e!181400 e!181402)))

(declare-fun res!148452 () Bool)

(assert (=> b!286261 (=> (not res!148452) (not e!181402))))

(declare-datatypes ((SeekEntryResult!1960 0))(
  ( (MissingZero!1960 (index!10010 (_ BitVec 32))) (Found!1960 (index!10011 (_ BitVec 32))) (Intermediate!1960 (undefined!2772 Bool) (index!10012 (_ BitVec 32)) (x!28200 (_ BitVec 32))) (Undefined!1960) (MissingVacant!1960 (index!10013 (_ BitVec 32))) )
))
(declare-fun lt!141077 () SeekEntryResult!1960)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286261 (= res!148452 (or (= lt!141077 (MissingZero!1960 i!1256)) (= lt!141077 (MissingVacant!1960 i!1256))))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14332 (_ BitVec 32)) SeekEntryResult!1960)

(assert (=> b!286261 (= lt!141077 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!286262 () Bool)

(declare-fun res!148454 () Bool)

(assert (=> b!286262 (=> (not res!148454) (not e!181400))))

(declare-fun arrayContainsKey!0 (array!14332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286262 (= res!148454 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286263 () Bool)

(assert (=> b!286263 (= e!181402 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun b!286264 () Bool)

(declare-fun res!148455 () Bool)

(assert (=> b!286264 (=> (not res!148455) (not e!181400))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286264 (= res!148455 (validKeyInArray!0 k0!2524))))

(declare-fun b!286265 () Bool)

(declare-fun res!148450 () Bool)

(assert (=> b!286265 (=> (not res!148450) (not e!181400))))

(assert (=> b!286265 (= res!148450 (and (= (size!7152 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7152 a!3312))))))

(declare-fun b!286266 () Bool)

(declare-fun res!148451 () Bool)

(assert (=> b!286266 (=> (not res!148451) (not e!181402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14332 (_ BitVec 32)) Bool)

(assert (=> b!286266 (= res!148451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!27822 res!148453) b!286265))

(assert (= (and b!286265 res!148450) b!286264))

(assert (= (and b!286264 res!148455) b!286262))

(assert (= (and b!286262 res!148454) b!286261))

(assert (= (and b!286261 res!148452) b!286266))

(assert (= (and b!286266 res!148451) b!286263))

(declare-fun m!301015 () Bool)

(assert (=> b!286264 m!301015))

(declare-fun m!301017 () Bool)

(assert (=> b!286261 m!301017))

(declare-fun m!301019 () Bool)

(assert (=> b!286266 m!301019))

(declare-fun m!301021 () Bool)

(assert (=> b!286262 m!301021))

(declare-fun m!301023 () Bool)

(assert (=> start!27822 m!301023))

(declare-fun m!301025 () Bool)

(assert (=> start!27822 m!301025))

(check-sat (not b!286261) (not start!27822) (not b!286262) (not b!286264) (not b!286266))
(check-sat)
