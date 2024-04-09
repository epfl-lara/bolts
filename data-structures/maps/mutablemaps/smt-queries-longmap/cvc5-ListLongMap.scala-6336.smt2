; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81700 () Bool)

(assert start!81700)

(declare-fun res!638522 () Bool)

(declare-fun e!536941 () Bool)

(assert (=> start!81700 (=> (not res!638522) (not e!536941))))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81700 (= res!638522 (validMask!0 mask!4034))))

(assert (=> start!81700 e!536941))

(assert (=> start!81700 true))

(declare-datatypes ((array!57734 0))(
  ( (array!57735 (arr!27749 (Array (_ BitVec 32) (_ BitVec 64))) (size!28229 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57734)

(declare-fun array_inv!21482 (array!57734) Bool)

(assert (=> start!81700 (array_inv!21482 a!3460)))

(declare-fun b!953192 () Bool)

(declare-fun res!638521 () Bool)

(assert (=> b!953192 (=> (not res!638521) (not e!536941))))

(assert (=> b!953192 (= res!638521 (= (size!28229 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953193 () Bool)

(assert (=> b!953193 (= e!536941 false)))

(declare-fun lt!429633 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57734 (_ BitVec 32)) Bool)

(assert (=> b!953193 (= lt!429633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(assert (= (and start!81700 res!638522) b!953192))

(assert (= (and b!953192 res!638521) b!953193))

(declare-fun m!885371 () Bool)

(assert (=> start!81700 m!885371))

(declare-fun m!885373 () Bool)

(assert (=> start!81700 m!885373))

(declare-fun m!885375 () Bool)

(assert (=> b!953193 m!885375))

(push 1)

(assert (not b!953193))

(assert (not start!81700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

