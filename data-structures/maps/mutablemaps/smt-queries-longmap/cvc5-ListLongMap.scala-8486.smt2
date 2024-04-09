; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103464 () Bool)

(assert start!103464)

(declare-fun res!827556 () Bool)

(declare-fun e!702910 () Bool)

(assert (=> start!103464 (=> (not res!827556) (not e!702910))))

(declare-datatypes ((array!79895 0))(
  ( (array!79896 (arr!38541 (Array (_ BitVec 32) (_ BitVec 64))) (size!39078 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79895)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103464 (= res!827556 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39078 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39078 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103464 e!702910))

(assert (=> start!103464 true))

(declare-fun array_inv!29317 (array!79895) Bool)

(assert (=> start!103464 (array_inv!29317 a!3575)))

(declare-fun b!1240145 () Bool)

(declare-fun res!827557 () Bool)

(assert (=> b!1240145 (=> (not res!827557) (not e!702910))))

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240145 (= res!827557 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240146 () Bool)

(assert (=> b!1240146 (= e!702910 (and (bvsgt from!2953 newFrom!281) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!103464 res!827556) b!1240145))

(assert (= (and b!1240145 res!827557) b!1240146))

(declare-fun m!1143527 () Bool)

(assert (=> start!103464 m!1143527))

(declare-fun m!1143529 () Bool)

(assert (=> b!1240145 m!1143529))

(push 1)

(assert (not start!103464))

(assert (not b!1240145))

(check-sat)

(pop 1)

(push 1)

(check-sat)

