; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81712 () Bool)

(assert start!81712)

(declare-fun b!953253 () Bool)

(declare-fun e!536977 () Bool)

(assert (=> b!953253 (= e!536977 false)))

(declare-datatypes ((SeekEntryResult!9163 0))(
  ( (MissingZero!9163 (index!39022 (_ BitVec 32))) (Found!9163 (index!39023 (_ BitVec 32))) (Intermediate!9163 (undefined!9975 Bool) (index!39024 (_ BitVec 32)) (x!82044 (_ BitVec 32))) (Undefined!9163) (MissingVacant!9163 (index!39025 (_ BitVec 32))) )
))
(declare-fun lt!429651 () SeekEntryResult!9163)

(declare-datatypes ((array!57746 0))(
  ( (array!57747 (arr!27755 (Array (_ BitVec 32) (_ BitVec 64))) (size!28235 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57746)

(declare-fun k!2725 () (_ BitVec 64))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57746 (_ BitVec 32)) SeekEntryResult!9163)

(assert (=> b!953253 (= lt!429651 (seekEntryOrOpen!0 k!2725 a!3460 mask!4034))))

(declare-fun b!953250 () Bool)

(declare-fun res!638581 () Bool)

(assert (=> b!953250 (=> (not res!638581) (not e!536977))))

(assert (=> b!953250 (= res!638581 (= (size!28235 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953252 () Bool)

(declare-fun res!638579 () Bool)

(assert (=> b!953252 (=> (not res!638579) (not e!536977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953252 (= res!638579 (validKeyInArray!0 k!2725))))

(declare-fun b!953251 () Bool)

(declare-fun res!638580 () Bool)

(assert (=> b!953251 (=> (not res!638580) (not e!536977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57746 (_ BitVec 32)) Bool)

(assert (=> b!953251 (= res!638580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(declare-fun res!638582 () Bool)

(assert (=> start!81712 (=> (not res!638582) (not e!536977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81712 (= res!638582 (validMask!0 mask!4034))))

(assert (=> start!81712 e!536977))

(assert (=> start!81712 true))

(declare-fun array_inv!21488 (array!57746) Bool)

(assert (=> start!81712 (array_inv!21488 a!3460)))

(assert (= (and start!81712 res!638582) b!953250))

(assert (= (and b!953250 res!638581) b!953251))

(assert (= (and b!953251 res!638580) b!953252))

(assert (= (and b!953252 res!638579) b!953253))

(declare-fun m!885419 () Bool)

(assert (=> b!953253 m!885419))

(declare-fun m!885421 () Bool)

(assert (=> b!953252 m!885421))

(declare-fun m!885423 () Bool)

(assert (=> b!953251 m!885423))

(declare-fun m!885425 () Bool)

(assert (=> start!81712 m!885425))

(declare-fun m!885427 () Bool)

(assert (=> start!81712 m!885427))

(push 1)

(assert (not b!953253))

(assert (not b!953252))

(assert (not start!81712))

(assert (not b!953251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

