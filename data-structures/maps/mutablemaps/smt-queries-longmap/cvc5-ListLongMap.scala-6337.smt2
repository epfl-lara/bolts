; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81706 () Bool)

(assert start!81706)

(declare-fun b!953216 () Bool)

(declare-fun res!638543 () Bool)

(declare-fun e!536958 () Bool)

(assert (=> b!953216 (=> (not res!638543) (not e!536958))))

(declare-fun k!2725 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953216 (= res!638543 (validKeyInArray!0 k!2725))))

(declare-fun b!953214 () Bool)

(declare-fun res!638546 () Bool)

(assert (=> b!953214 (=> (not res!638546) (not e!536958))))

(declare-datatypes ((array!57740 0))(
  ( (array!57741 (arr!27752 (Array (_ BitVec 32) (_ BitVec 64))) (size!28232 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57740)

(declare-fun mask!4034 () (_ BitVec 32))

(assert (=> b!953214 (= res!638546 (= (size!28232 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953217 () Bool)

(assert (=> b!953217 (= e!536958 false)))

(declare-datatypes ((SeekEntryResult!9160 0))(
  ( (MissingZero!9160 (index!39010 (_ BitVec 32))) (Found!9160 (index!39011 (_ BitVec 32))) (Intermediate!9160 (undefined!9972 Bool) (index!39012 (_ BitVec 32)) (x!82033 (_ BitVec 32))) (Undefined!9160) (MissingVacant!9160 (index!39013 (_ BitVec 32))) )
))
(declare-fun lt!429642 () SeekEntryResult!9160)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57740 (_ BitVec 32)) SeekEntryResult!9160)

(assert (=> b!953217 (= lt!429642 (seekEntryOrOpen!0 k!2725 a!3460 mask!4034))))

(declare-fun b!953215 () Bool)

(declare-fun res!638544 () Bool)

(assert (=> b!953215 (=> (not res!638544) (not e!536958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57740 (_ BitVec 32)) Bool)

(assert (=> b!953215 (= res!638544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(declare-fun res!638545 () Bool)

(assert (=> start!81706 (=> (not res!638545) (not e!536958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81706 (= res!638545 (validMask!0 mask!4034))))

(assert (=> start!81706 e!536958))

(assert (=> start!81706 true))

(declare-fun array_inv!21485 (array!57740) Bool)

(assert (=> start!81706 (array_inv!21485 a!3460)))

(assert (= (and start!81706 res!638545) b!953214))

(assert (= (and b!953214 res!638546) b!953215))

(assert (= (and b!953215 res!638544) b!953216))

(assert (= (and b!953216 res!638543) b!953217))

(declare-fun m!885389 () Bool)

(assert (=> b!953216 m!885389))

(declare-fun m!885391 () Bool)

(assert (=> b!953217 m!885391))

(declare-fun m!885393 () Bool)

(assert (=> b!953215 m!885393))

(declare-fun m!885395 () Bool)

(assert (=> start!81706 m!885395))

(declare-fun m!885397 () Bool)

(assert (=> start!81706 m!885397))

(push 1)

(assert (not b!953215))

(assert (not b!953216))

(assert (not start!81706))

(assert (not b!953217))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

