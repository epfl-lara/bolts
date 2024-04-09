; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81714 () Bool)

(assert start!81714)

(declare-fun b!953265 () Bool)

(declare-fun e!536983 () Bool)

(assert (=> b!953265 (= e!536983 false)))

(declare-datatypes ((array!57748 0))(
  ( (array!57749 (arr!27756 (Array (_ BitVec 32) (_ BitVec 64))) (size!28236 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57748)

(declare-datatypes ((SeekEntryResult!9164 0))(
  ( (MissingZero!9164 (index!39026 (_ BitVec 32))) (Found!9164 (index!39027 (_ BitVec 32))) (Intermediate!9164 (undefined!9976 Bool) (index!39028 (_ BitVec 32)) (x!82045 (_ BitVec 32))) (Undefined!9164) (MissingVacant!9164 (index!39029 (_ BitVec 32))) )
))
(declare-fun lt!429654 () SeekEntryResult!9164)

(declare-fun k0!2725 () (_ BitVec 64))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57748 (_ BitVec 32)) SeekEntryResult!9164)

(assert (=> b!953265 (= lt!429654 (seekEntryOrOpen!0 k0!2725 a!3460 mask!4034))))

(declare-fun b!953262 () Bool)

(declare-fun res!638593 () Bool)

(assert (=> b!953262 (=> (not res!638593) (not e!536983))))

(assert (=> b!953262 (= res!638593 (= (size!28236 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953264 () Bool)

(declare-fun res!638591 () Bool)

(assert (=> b!953264 (=> (not res!638591) (not e!536983))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953264 (= res!638591 (validKeyInArray!0 k0!2725))))

(declare-fun b!953263 () Bool)

(declare-fun res!638594 () Bool)

(assert (=> b!953263 (=> (not res!638594) (not e!536983))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57748 (_ BitVec 32)) Bool)

(assert (=> b!953263 (= res!638594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(declare-fun res!638592 () Bool)

(assert (=> start!81714 (=> (not res!638592) (not e!536983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81714 (= res!638592 (validMask!0 mask!4034))))

(assert (=> start!81714 e!536983))

(assert (=> start!81714 true))

(declare-fun array_inv!21489 (array!57748) Bool)

(assert (=> start!81714 (array_inv!21489 a!3460)))

(assert (= (and start!81714 res!638592) b!953262))

(assert (= (and b!953262 res!638593) b!953263))

(assert (= (and b!953263 res!638594) b!953264))

(assert (= (and b!953264 res!638591) b!953265))

(declare-fun m!885429 () Bool)

(assert (=> b!953265 m!885429))

(declare-fun m!885431 () Bool)

(assert (=> b!953264 m!885431))

(declare-fun m!885433 () Bool)

(assert (=> b!953263 m!885433))

(declare-fun m!885435 () Bool)

(assert (=> start!81714 m!885435))

(declare-fun m!885437 () Bool)

(assert (=> start!81714 m!885437))

(check-sat (not b!953264) (not start!81714) (not b!953263) (not b!953265))
(check-sat)
