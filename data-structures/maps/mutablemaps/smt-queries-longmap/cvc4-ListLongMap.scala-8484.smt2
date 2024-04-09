; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103456 () Bool)

(assert start!103456)

(declare-fun res!827531 () Bool)

(declare-fun e!702886 () Bool)

(assert (=> start!103456 (=> (not res!827531) (not e!702886))))

(declare-datatypes ((array!79887 0))(
  ( (array!79888 (arr!38537 (Array (_ BitVec 32) (_ BitVec 64))) (size!39074 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79887)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103456 (= res!827531 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39074 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39074 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103456 e!702886))

(assert (=> start!103456 true))

(declare-fun array_inv!29313 (array!79887) Bool)

(assert (=> start!103456 (array_inv!29313 a!3575)))

(declare-fun b!1240119 () Bool)

(declare-fun res!827533 () Bool)

(assert (=> b!1240119 (=> (not res!827533) (not e!702886))))

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240119 (= res!827533 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240122 () Bool)

(assert (=> b!1240122 (= e!702886 (not true))))

(assert (=> b!1240122 (arrayContainsKey!0 a!3575 k!2808 newFrom!281)))

(declare-datatypes ((Unit!41165 0))(
  ( (Unit!41166) )
))
(declare-fun lt!561850 () Unit!41165)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79887 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!41165)

(assert (=> b!1240122 (= lt!561850 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001) newFrom!281))))

(declare-fun b!1240120 () Bool)

(declare-fun res!827530 () Bool)

(assert (=> b!1240120 (=> (not res!827530) (not e!702886))))

(assert (=> b!1240120 (= res!827530 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39074 a!3575))))))

(declare-fun b!1240121 () Bool)

(declare-fun res!827532 () Bool)

(assert (=> b!1240121 (=> (not res!827532) (not e!702886))))

(assert (=> b!1240121 (= res!827532 (arrayContainsKey!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(assert (= (and start!103456 res!827531) b!1240119))

(assert (= (and b!1240119 res!827533) b!1240120))

(assert (= (and b!1240120 res!827530) b!1240121))

(assert (= (and b!1240121 res!827532) b!1240122))

(declare-fun m!1143505 () Bool)

(assert (=> start!103456 m!1143505))

(declare-fun m!1143507 () Bool)

(assert (=> b!1240119 m!1143507))

(declare-fun m!1143509 () Bool)

(assert (=> b!1240122 m!1143509))

(declare-fun m!1143511 () Bool)

(assert (=> b!1240122 m!1143511))

(declare-fun m!1143513 () Bool)

(assert (=> b!1240121 m!1143513))

(push 1)

(assert (not b!1240119))

(assert (not b!1240122))

(assert (not start!103456))

(assert (not b!1240121))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

