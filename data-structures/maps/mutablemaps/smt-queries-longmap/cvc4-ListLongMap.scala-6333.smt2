; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81662 () Bool)

(assert start!81662)

(declare-fun res!638443 () Bool)

(declare-fun e!536872 () Bool)

(assert (=> start!81662 (=> (not res!638443) (not e!536872))))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81662 (= res!638443 (validMask!0 mask!4034))))

(assert (=> start!81662 e!536872))

(assert (=> start!81662 true))

(declare-datatypes ((array!57717 0))(
  ( (array!57718 (arr!27742 (Array (_ BitVec 32) (_ BitVec 64))) (size!28222 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57717)

(declare-fun array_inv!21475 (array!57717) Bool)

(assert (=> start!81662 (array_inv!21475 a!3460)))

(declare-fun b!953096 () Bool)

(declare-fun res!638444 () Bool)

(assert (=> b!953096 (=> (not res!638444) (not e!536872))))

(assert (=> b!953096 (= res!638444 (= (size!28222 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953097 () Bool)

(assert (=> b!953097 (= e!536872 false)))

(declare-fun lt!429594 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57717 (_ BitVec 32)) Bool)

(assert (=> b!953097 (= lt!429594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(assert (= (and start!81662 res!638443) b!953096))

(assert (= (and b!953096 res!638444) b!953097))

(declare-fun m!885287 () Bool)

(assert (=> start!81662 m!885287))

(declare-fun m!885289 () Bool)

(assert (=> start!81662 m!885289))

(declare-fun m!885291 () Bool)

(assert (=> b!953097 m!885291))

(push 1)

(assert (not start!81662))

(assert (not b!953097))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

