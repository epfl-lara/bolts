; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81704 () Bool)

(assert start!81704)

(declare-fun res!638533 () Bool)

(declare-fun e!536953 () Bool)

(assert (=> start!81704 (=> (not res!638533) (not e!536953))))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81704 (= res!638533 (validMask!0 mask!4034))))

(assert (=> start!81704 e!536953))

(assert (=> start!81704 true))

(declare-datatypes ((array!57738 0))(
  ( (array!57739 (arr!27751 (Array (_ BitVec 32) (_ BitVec 64))) (size!28231 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57738)

(declare-fun array_inv!21484 (array!57738) Bool)

(assert (=> start!81704 (array_inv!21484 a!3460)))

(declare-fun b!953204 () Bool)

(declare-fun res!638534 () Bool)

(assert (=> b!953204 (=> (not res!638534) (not e!536953))))

(assert (=> b!953204 (= res!638534 (= (size!28231 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953205 () Bool)

(assert (=> b!953205 (= e!536953 false)))

(declare-fun lt!429639 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57738 (_ BitVec 32)) Bool)

(assert (=> b!953205 (= lt!429639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(assert (= (and start!81704 res!638533) b!953204))

(assert (= (and b!953204 res!638534) b!953205))

(declare-fun m!885383 () Bool)

(assert (=> start!81704 m!885383))

(declare-fun m!885385 () Bool)

(assert (=> start!81704 m!885385))

(declare-fun m!885387 () Bool)

(assert (=> b!953205 m!885387))

(push 1)

(assert (not b!953205))

(assert (not start!81704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

