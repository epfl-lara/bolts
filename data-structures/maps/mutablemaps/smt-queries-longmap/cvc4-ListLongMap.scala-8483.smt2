; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103450 () Bool)

(assert start!103450)

(declare-fun b!1240086 () Bool)

(declare-fun e!702869 () Bool)

(declare-fun newFrom!281 () (_ BitVec 32))

(declare-datatypes ((array!79881 0))(
  ( (array!79882 (arr!38534 (Array (_ BitVec 32) (_ BitVec 64))) (size!39071 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79881)

(assert (=> b!1240086 (= e!702869 (not (bvslt newFrom!281 (size!39071 a!3575))))))

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240086 (arrayContainsKey!0 a!3575 k!2808 newFrom!281)))

(declare-fun from!2953 () (_ BitVec 32))

(declare-datatypes ((Unit!41159 0))(
  ( (Unit!41160) )
))
(declare-fun lt!561841 () Unit!41159)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79881 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!41159)

(assert (=> b!1240086 (= lt!561841 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001) newFrom!281))))

(declare-fun b!1240085 () Bool)

(declare-fun res!827495 () Bool)

(assert (=> b!1240085 (=> (not res!827495) (not e!702869))))

(assert (=> b!1240085 (= res!827495 (arrayContainsKey!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(declare-fun res!827497 () Bool)

(assert (=> start!103450 (=> (not res!827497) (not e!702869))))

(assert (=> start!103450 (= res!827497 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39071 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39071 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103450 e!702869))

(assert (=> start!103450 true))

(declare-fun array_inv!29310 (array!79881) Bool)

(assert (=> start!103450 (array_inv!29310 a!3575)))

(declare-fun b!1240084 () Bool)

(declare-fun res!827496 () Bool)

(assert (=> b!1240084 (=> (not res!827496) (not e!702869))))

(assert (=> b!1240084 (= res!827496 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39071 a!3575))))))

(declare-fun b!1240083 () Bool)

(declare-fun res!827494 () Bool)

(assert (=> b!1240083 (=> (not res!827494) (not e!702869))))

(assert (=> b!1240083 (= res!827494 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(assert (= (and start!103450 res!827497) b!1240083))

(assert (= (and b!1240083 res!827494) b!1240084))

(assert (= (and b!1240084 res!827496) b!1240085))

(assert (= (and b!1240085 res!827495) b!1240086))

(declare-fun m!1143475 () Bool)

(assert (=> b!1240086 m!1143475))

(declare-fun m!1143477 () Bool)

(assert (=> b!1240086 m!1143477))

(declare-fun m!1143479 () Bool)

(assert (=> b!1240085 m!1143479))

(declare-fun m!1143481 () Bool)

(assert (=> start!103450 m!1143481))

(declare-fun m!1143483 () Bool)

(assert (=> b!1240083 m!1143483))

(push 1)

(assert (not start!103450))

(assert (not b!1240085))

(assert (not b!1240086))

(assert (not b!1240083))

(check-sat)

(pop 1)

(push 1)

(check-sat)

