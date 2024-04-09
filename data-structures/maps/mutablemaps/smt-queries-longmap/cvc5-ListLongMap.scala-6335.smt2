; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81694 () Bool)

(assert start!81694)

(declare-fun res!638504 () Bool)

(declare-fun e!536922 () Bool)

(assert (=> start!81694 (=> (not res!638504) (not e!536922))))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81694 (= res!638504 (validMask!0 mask!4034))))

(assert (=> start!81694 e!536922))

(assert (=> start!81694 true))

(declare-datatypes ((array!57728 0))(
  ( (array!57729 (arr!27746 (Array (_ BitVec 32) (_ BitVec 64))) (size!28226 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57728)

(declare-fun array_inv!21479 (array!57728) Bool)

(assert (=> start!81694 (array_inv!21479 a!3460)))

(declare-fun b!953174 () Bool)

(declare-fun res!638503 () Bool)

(assert (=> b!953174 (=> (not res!638503) (not e!536922))))

(assert (=> b!953174 (= res!638503 (= (size!28226 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953175 () Bool)

(assert (=> b!953175 (= e!536922 false)))

(declare-fun lt!429624 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57728 (_ BitVec 32)) Bool)

(assert (=> b!953175 (= lt!429624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(assert (= (and start!81694 res!638504) b!953174))

(assert (= (and b!953174 res!638503) b!953175))

(declare-fun m!885353 () Bool)

(assert (=> start!81694 m!885353))

(declare-fun m!885355 () Bool)

(assert (=> start!81694 m!885355))

(declare-fun m!885357 () Bool)

(assert (=> b!953175 m!885357))

(push 1)

(assert (not b!953175))

(assert (not start!81694))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

