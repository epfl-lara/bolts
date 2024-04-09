; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81698 () Bool)

(assert start!81698)

(declare-fun res!638515 () Bool)

(declare-fun e!536934 () Bool)

(assert (=> start!81698 (=> (not res!638515) (not e!536934))))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81698 (= res!638515 (validMask!0 mask!4034))))

(assert (=> start!81698 e!536934))

(assert (=> start!81698 true))

(declare-datatypes ((array!57732 0))(
  ( (array!57733 (arr!27748 (Array (_ BitVec 32) (_ BitVec 64))) (size!28228 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57732)

(declare-fun array_inv!21481 (array!57732) Bool)

(assert (=> start!81698 (array_inv!21481 a!3460)))

(declare-fun b!953186 () Bool)

(declare-fun res!638516 () Bool)

(assert (=> b!953186 (=> (not res!638516) (not e!536934))))

(assert (=> b!953186 (= res!638516 (= (size!28228 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953187 () Bool)

(assert (=> b!953187 (= e!536934 false)))

(declare-fun lt!429630 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57732 (_ BitVec 32)) Bool)

(assert (=> b!953187 (= lt!429630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(assert (= (and start!81698 res!638515) b!953186))

(assert (= (and b!953186 res!638516) b!953187))

(declare-fun m!885365 () Bool)

(assert (=> start!81698 m!885365))

(declare-fun m!885367 () Bool)

(assert (=> start!81698 m!885367))

(declare-fun m!885369 () Bool)

(assert (=> b!953187 m!885369))

(push 1)

(assert (not b!953187))

(assert (not start!81698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

