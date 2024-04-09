; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81708 () Bool)

(assert start!81708)

(declare-fun b!953227 () Bool)

(declare-fun res!638555 () Bool)

(declare-fun e!536965 () Bool)

(assert (=> b!953227 (=> (not res!638555) (not e!536965))))

(declare-datatypes ((array!57742 0))(
  ( (array!57743 (arr!27753 (Array (_ BitVec 32) (_ BitVec 64))) (size!28233 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57742)

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57742 (_ BitVec 32)) Bool)

(assert (=> b!953227 (= res!638555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(declare-fun b!953226 () Bool)

(declare-fun res!638557 () Bool)

(assert (=> b!953226 (=> (not res!638557) (not e!536965))))

(assert (=> b!953226 (= res!638557 (= (size!28233 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953228 () Bool)

(declare-fun res!638556 () Bool)

(assert (=> b!953228 (=> (not res!638556) (not e!536965))))

(declare-fun k0!2725 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953228 (= res!638556 (validKeyInArray!0 k0!2725))))

(declare-fun b!953229 () Bool)

(assert (=> b!953229 (= e!536965 false)))

(declare-datatypes ((SeekEntryResult!9161 0))(
  ( (MissingZero!9161 (index!39014 (_ BitVec 32))) (Found!9161 (index!39015 (_ BitVec 32))) (Intermediate!9161 (undefined!9973 Bool) (index!39016 (_ BitVec 32)) (x!82034 (_ BitVec 32))) (Undefined!9161) (MissingVacant!9161 (index!39017 (_ BitVec 32))) )
))
(declare-fun lt!429645 () SeekEntryResult!9161)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57742 (_ BitVec 32)) SeekEntryResult!9161)

(assert (=> b!953229 (= lt!429645 (seekEntryOrOpen!0 k0!2725 a!3460 mask!4034))))

(declare-fun res!638558 () Bool)

(assert (=> start!81708 (=> (not res!638558) (not e!536965))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81708 (= res!638558 (validMask!0 mask!4034))))

(assert (=> start!81708 e!536965))

(assert (=> start!81708 true))

(declare-fun array_inv!21486 (array!57742) Bool)

(assert (=> start!81708 (array_inv!21486 a!3460)))

(assert (= (and start!81708 res!638558) b!953226))

(assert (= (and b!953226 res!638557) b!953227))

(assert (= (and b!953227 res!638555) b!953228))

(assert (= (and b!953228 res!638556) b!953229))

(declare-fun m!885399 () Bool)

(assert (=> b!953227 m!885399))

(declare-fun m!885401 () Bool)

(assert (=> b!953228 m!885401))

(declare-fun m!885403 () Bool)

(assert (=> b!953229 m!885403))

(declare-fun m!885405 () Bool)

(assert (=> start!81708 m!885405))

(declare-fun m!885407 () Bool)

(assert (=> start!81708 m!885407))

(check-sat (not b!953229) (not b!953227) (not b!953228) (not start!81708))
(check-sat)
