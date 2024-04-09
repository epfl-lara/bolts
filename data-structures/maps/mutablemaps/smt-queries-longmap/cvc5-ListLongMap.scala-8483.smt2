; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103446 () Bool)

(assert start!103446)

(declare-fun b!1240062 () Bool)

(declare-fun e!702856 () Bool)

(declare-fun newFrom!281 () (_ BitVec 32))

(declare-datatypes ((array!79877 0))(
  ( (array!79878 (arr!38532 (Array (_ BitVec 32) (_ BitVec 64))) (size!39069 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79877)

(assert (=> b!1240062 (= e!702856 (not (bvslt newFrom!281 (size!39069 a!3575))))))

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240062 (arrayContainsKey!0 a!3575 k!2808 newFrom!281)))

(declare-fun from!2953 () (_ BitVec 32))

(declare-datatypes ((Unit!41155 0))(
  ( (Unit!41156) )
))
(declare-fun lt!561835 () Unit!41155)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79877 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!41155)

(assert (=> b!1240062 (= lt!561835 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001) newFrom!281))))

(declare-fun b!1240061 () Bool)

(declare-fun res!827471 () Bool)

(assert (=> b!1240061 (=> (not res!827471) (not e!702856))))

(assert (=> b!1240061 (= res!827471 (arrayContainsKey!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(declare-fun res!827473 () Bool)

(assert (=> start!103446 (=> (not res!827473) (not e!702856))))

(assert (=> start!103446 (= res!827473 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39069 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39069 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103446 e!702856))

(assert (=> start!103446 true))

(declare-fun array_inv!29308 (array!79877) Bool)

(assert (=> start!103446 (array_inv!29308 a!3575)))

(declare-fun b!1240059 () Bool)

(declare-fun res!827472 () Bool)

(assert (=> b!1240059 (=> (not res!827472) (not e!702856))))

(assert (=> b!1240059 (= res!827472 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240060 () Bool)

(declare-fun res!827470 () Bool)

(assert (=> b!1240060 (=> (not res!827470) (not e!702856))))

(assert (=> b!1240060 (= res!827470 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39069 a!3575))))))

(assert (= (and start!103446 res!827473) b!1240059))

(assert (= (and b!1240059 res!827472) b!1240060))

(assert (= (and b!1240060 res!827470) b!1240061))

(assert (= (and b!1240061 res!827471) b!1240062))

(declare-fun m!1143455 () Bool)

(assert (=> b!1240062 m!1143455))

(declare-fun m!1143457 () Bool)

(assert (=> b!1240062 m!1143457))

(declare-fun m!1143459 () Bool)

(assert (=> b!1240061 m!1143459))

(declare-fun m!1143461 () Bool)

(assert (=> start!103446 m!1143461))

(declare-fun m!1143463 () Bool)

(assert (=> b!1240059 m!1143463))

(push 1)

(assert (not b!1240059))

(assert (not b!1240061))

(assert (not start!103446))

(assert (not b!1240062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

