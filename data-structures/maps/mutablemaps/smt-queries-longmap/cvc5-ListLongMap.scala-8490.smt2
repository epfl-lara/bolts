; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103500 () Bool)

(assert start!103500)

(declare-fun b!1240274 () Bool)

(declare-fun res!827685 () Bool)

(declare-fun e!703006 () Bool)

(assert (=> b!1240274 (=> (not res!827685) (not e!703006))))

(declare-datatypes ((array!79922 0))(
  ( (array!79923 (arr!38553 (Array (_ BitVec 32) (_ BitVec 64))) (size!39090 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79922)

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240274 (= res!827685 (arrayContainsKey!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(declare-fun b!1240272 () Bool)

(declare-fun res!827684 () Bool)

(assert (=> b!1240272 (=> (not res!827684) (not e!703006))))

(assert (=> b!1240272 (= res!827684 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240275 () Bool)

(assert (=> b!1240275 (= e!703006 (not true))))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> b!1240275 (arrayContainsKey!0 a!3575 k!2808 newFrom!281)))

(declare-datatypes ((Unit!41167 0))(
  ( (Unit!41168) )
))
(declare-fun lt!561853 () Unit!41167)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79922 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!41167)

(assert (=> b!1240275 (= lt!561853 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001) newFrom!281))))

(declare-fun res!827683 () Bool)

(assert (=> start!103500 (=> (not res!827683) (not e!703006))))

(assert (=> start!103500 (= res!827683 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39090 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39090 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103500 e!703006))

(assert (=> start!103500 true))

(declare-fun array_inv!29329 (array!79922) Bool)

(assert (=> start!103500 (array_inv!29329 a!3575)))

(declare-fun b!1240273 () Bool)

(declare-fun res!827686 () Bool)

(assert (=> b!1240273 (=> (not res!827686) (not e!703006))))

(assert (=> b!1240273 (= res!827686 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39090 a!3575))))))

(assert (= (and start!103500 res!827683) b!1240272))

(assert (= (and b!1240272 res!827684) b!1240273))

(assert (= (and b!1240273 res!827686) b!1240274))

(assert (= (and b!1240274 res!827685) b!1240275))

(declare-fun m!1143611 () Bool)

(assert (=> b!1240274 m!1143611))

(declare-fun m!1143613 () Bool)

(assert (=> b!1240272 m!1143613))

(declare-fun m!1143615 () Bool)

(assert (=> b!1240275 m!1143615))

(declare-fun m!1143617 () Bool)

(assert (=> b!1240275 m!1143617))

(declare-fun m!1143619 () Bool)

(assert (=> start!103500 m!1143619))

(push 1)

(assert (not b!1240272))

(assert (not start!103500))

(assert (not b!1240274))

(assert (not b!1240275))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

