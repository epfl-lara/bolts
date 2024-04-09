; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103452 () Bool)

(assert start!103452)

(declare-fun b!1240098 () Bool)

(declare-fun e!702875 () Bool)

(assert (=> b!1240098 (= e!702875 (not true))))

(declare-datatypes ((array!79883 0))(
  ( (array!79884 (arr!38535 (Array (_ BitVec 32) (_ BitVec 64))) (size!39072 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79883)

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun newFrom!281 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79883 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240098 (arrayContainsKey!0 a!3575 k!2808 newFrom!281)))

(declare-fun from!2953 () (_ BitVec 32))

(declare-datatypes ((Unit!41161 0))(
  ( (Unit!41162) )
))
(declare-fun lt!561844 () Unit!41161)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79883 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!41161)

(assert (=> b!1240098 (= lt!561844 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001) newFrom!281))))

(declare-fun b!1240096 () Bool)

(declare-fun res!827507 () Bool)

(assert (=> b!1240096 (=> (not res!827507) (not e!702875))))

(assert (=> b!1240096 (= res!827507 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39072 a!3575))))))

(declare-fun b!1240095 () Bool)

(declare-fun res!827506 () Bool)

(assert (=> b!1240095 (=> (not res!827506) (not e!702875))))

(assert (=> b!1240095 (= res!827506 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun res!827509 () Bool)

(assert (=> start!103452 (=> (not res!827509) (not e!702875))))

(assert (=> start!103452 (= res!827509 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39072 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39072 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103452 e!702875))

(assert (=> start!103452 true))

(declare-fun array_inv!29311 (array!79883) Bool)

(assert (=> start!103452 (array_inv!29311 a!3575)))

(declare-fun b!1240097 () Bool)

(declare-fun res!827508 () Bool)

(assert (=> b!1240097 (=> (not res!827508) (not e!702875))))

(assert (=> b!1240097 (= res!827508 (arrayContainsKey!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(assert (= (and start!103452 res!827509) b!1240095))

(assert (= (and b!1240095 res!827506) b!1240096))

(assert (= (and b!1240096 res!827507) b!1240097))

(assert (= (and b!1240097 res!827508) b!1240098))

(declare-fun m!1143485 () Bool)

(assert (=> b!1240098 m!1143485))

(declare-fun m!1143487 () Bool)

(assert (=> b!1240098 m!1143487))

(declare-fun m!1143489 () Bool)

(assert (=> b!1240095 m!1143489))

(declare-fun m!1143491 () Bool)

(assert (=> start!103452 m!1143491))

(declare-fun m!1143493 () Bool)

(assert (=> b!1240097 m!1143493))

(push 1)

(assert (not b!1240098))

(assert (not start!103452))

(assert (not b!1240097))

(assert (not b!1240095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

