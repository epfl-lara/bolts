; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81718 () Bool)

(assert start!81718)

(declare-fun b!953288 () Bool)

(declare-fun res!638615 () Bool)

(declare-fun e!536995 () Bool)

(assert (=> b!953288 (=> (not res!638615) (not e!536995))))

(declare-fun k!2725 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953288 (= res!638615 (validKeyInArray!0 k!2725))))

(declare-fun b!953287 () Bool)

(declare-fun res!638617 () Bool)

(assert (=> b!953287 (=> (not res!638617) (not e!536995))))

(declare-datatypes ((array!57752 0))(
  ( (array!57753 (arr!27758 (Array (_ BitVec 32) (_ BitVec 64))) (size!28238 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57752)

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57752 (_ BitVec 32)) Bool)

(assert (=> b!953287 (= res!638617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(declare-fun b!953286 () Bool)

(declare-fun res!638618 () Bool)

(assert (=> b!953286 (=> (not res!638618) (not e!536995))))

(assert (=> b!953286 (= res!638618 (= (size!28238 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun res!638616 () Bool)

(assert (=> start!81718 (=> (not res!638616) (not e!536995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81718 (= res!638616 (validMask!0 mask!4034))))

(assert (=> start!81718 e!536995))

(assert (=> start!81718 true))

(declare-fun array_inv!21491 (array!57752) Bool)

(assert (=> start!81718 (array_inv!21491 a!3460)))

(declare-fun b!953289 () Bool)

(assert (=> b!953289 (= e!536995 false)))

(declare-datatypes ((SeekEntryResult!9166 0))(
  ( (MissingZero!9166 (index!39034 (_ BitVec 32))) (Found!9166 (index!39035 (_ BitVec 32))) (Intermediate!9166 (undefined!9978 Bool) (index!39036 (_ BitVec 32)) (x!82055 (_ BitVec 32))) (Undefined!9166) (MissingVacant!9166 (index!39037 (_ BitVec 32))) )
))
(declare-fun lt!429660 () SeekEntryResult!9166)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57752 (_ BitVec 32)) SeekEntryResult!9166)

(assert (=> b!953289 (= lt!429660 (seekEntryOrOpen!0 k!2725 a!3460 mask!4034))))

(assert (= (and start!81718 res!638616) b!953286))

(assert (= (and b!953286 res!638618) b!953287))

(assert (= (and b!953287 res!638617) b!953288))

(assert (= (and b!953288 res!638615) b!953289))

(declare-fun m!885449 () Bool)

(assert (=> b!953288 m!885449))

(declare-fun m!885451 () Bool)

(assert (=> b!953287 m!885451))

(declare-fun m!885453 () Bool)

(assert (=> start!81718 m!885453))

(declare-fun m!885455 () Bool)

(assert (=> start!81718 m!885455))

(declare-fun m!885457 () Bool)

(assert (=> b!953289 m!885457))

(push 1)

(assert (not b!953289))

(assert (not b!953288))

(assert (not start!81718))

(assert (not b!953287))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

