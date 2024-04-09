; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81658 () Bool)

(assert start!81658)

(declare-fun res!638431 () Bool)

(declare-fun e!536860 () Bool)

(assert (=> start!81658 (=> (not res!638431) (not e!536860))))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81658 (= res!638431 (validMask!0 mask!4034))))

(assert (=> start!81658 e!536860))

(assert (=> start!81658 true))

(declare-datatypes ((array!57713 0))(
  ( (array!57714 (arr!27740 (Array (_ BitVec 32) (_ BitVec 64))) (size!28220 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57713)

(declare-fun array_inv!21473 (array!57713) Bool)

(assert (=> start!81658 (array_inv!21473 a!3460)))

(declare-fun b!953084 () Bool)

(declare-fun res!638432 () Bool)

(assert (=> b!953084 (=> (not res!638432) (not e!536860))))

(assert (=> b!953084 (= res!638432 (= (size!28220 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953085 () Bool)

(assert (=> b!953085 (= e!536860 false)))

(declare-fun lt!429588 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57713 (_ BitVec 32)) Bool)

(assert (=> b!953085 (= lt!429588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(assert (= (and start!81658 res!638431) b!953084))

(assert (= (and b!953084 res!638432) b!953085))

(declare-fun m!885275 () Bool)

(assert (=> start!81658 m!885275))

(declare-fun m!885277 () Bool)

(assert (=> start!81658 m!885277))

(declare-fun m!885279 () Bool)

(assert (=> b!953085 m!885279))

(push 1)

(assert (not b!953085))

(assert (not start!81658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

