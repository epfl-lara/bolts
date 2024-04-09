; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134606 () Bool)

(assert start!134606)

(declare-fun res!1073417 () Bool)

(declare-fun e!875963 () Bool)

(assert (=> start!134606 (=> (not res!1073417) (not e!875963))))

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134606 (= res!1073417 (validMask!0 mask!4043))))

(assert (=> start!134606 e!875963))

(assert (=> start!134606 true))

(declare-datatypes ((array!104779 0))(
  ( (array!104780 (arr!50565 (Array (_ BitVec 32) (_ BitVec 64))) (size!51116 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104779)

(declare-fun array_inv!39210 (array!104779) Bool)

(assert (=> start!134606 (array_inv!39210 a!3462)))

(declare-fun b!1571024 () Bool)

(assert (=> b!1571024 (= e!875963 (and (= (size!51116 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)) (bvsgt #b00000000000000000000000000000000 (size!51116 a!3462))))))

(assert (= (and start!134606 res!1073417) b!1571024))

(declare-fun m!1445073 () Bool)

(assert (=> start!134606 m!1445073))

(declare-fun m!1445075 () Bool)

(assert (=> start!134606 m!1445075))

(push 1)

(assert (not start!134606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

