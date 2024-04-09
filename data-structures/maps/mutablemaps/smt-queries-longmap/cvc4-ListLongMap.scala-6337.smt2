; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81710 () Bool)

(assert start!81710)

(declare-fun b!953240 () Bool)

(declare-fun res!638570 () Bool)

(declare-fun e!536971 () Bool)

(assert (=> b!953240 (=> (not res!638570) (not e!536971))))

(declare-fun k!2725 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953240 (= res!638570 (validKeyInArray!0 k!2725))))

(declare-fun b!953238 () Bool)

(declare-fun res!638568 () Bool)

(assert (=> b!953238 (=> (not res!638568) (not e!536971))))

(declare-datatypes ((array!57744 0))(
  ( (array!57745 (arr!27754 (Array (_ BitVec 32) (_ BitVec 64))) (size!28234 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57744)

(declare-fun mask!4034 () (_ BitVec 32))

(assert (=> b!953238 (= res!638568 (= (size!28234 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953239 () Bool)

(declare-fun res!638567 () Bool)

(assert (=> b!953239 (=> (not res!638567) (not e!536971))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57744 (_ BitVec 32)) Bool)

(assert (=> b!953239 (= res!638567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(declare-fun res!638569 () Bool)

(assert (=> start!81710 (=> (not res!638569) (not e!536971))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81710 (= res!638569 (validMask!0 mask!4034))))

(assert (=> start!81710 e!536971))

(assert (=> start!81710 true))

(declare-fun array_inv!21487 (array!57744) Bool)

(assert (=> start!81710 (array_inv!21487 a!3460)))

(declare-fun b!953241 () Bool)

(assert (=> b!953241 (= e!536971 false)))

(declare-datatypes ((SeekEntryResult!9162 0))(
  ( (MissingZero!9162 (index!39018 (_ BitVec 32))) (Found!9162 (index!39019 (_ BitVec 32))) (Intermediate!9162 (undefined!9974 Bool) (index!39020 (_ BitVec 32)) (x!82035 (_ BitVec 32))) (Undefined!9162) (MissingVacant!9162 (index!39021 (_ BitVec 32))) )
))
(declare-fun lt!429648 () SeekEntryResult!9162)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57744 (_ BitVec 32)) SeekEntryResult!9162)

(assert (=> b!953241 (= lt!429648 (seekEntryOrOpen!0 k!2725 a!3460 mask!4034))))

(assert (= (and start!81710 res!638569) b!953238))

(assert (= (and b!953238 res!638568) b!953239))

(assert (= (and b!953239 res!638567) b!953240))

(assert (= (and b!953240 res!638570) b!953241))

(declare-fun m!885409 () Bool)

(assert (=> b!953240 m!885409))

(declare-fun m!885411 () Bool)

(assert (=> b!953239 m!885411))

(declare-fun m!885413 () Bool)

(assert (=> start!81710 m!885413))

(declare-fun m!885415 () Bool)

(assert (=> start!81710 m!885415))

(declare-fun m!885417 () Bool)

(assert (=> b!953241 m!885417))

(push 1)

(assert (not b!953239))

(assert (not b!953240))

(assert (not start!81710))

(assert (not b!953241))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

