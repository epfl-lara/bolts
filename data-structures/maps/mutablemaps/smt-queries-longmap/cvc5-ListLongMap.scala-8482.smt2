; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103440 () Bool)

(assert start!103440)

(declare-fun b!1240026 () Bool)

(declare-fun e!702839 () Bool)

(assert (=> b!1240026 (= e!702839 (not true))))

(declare-datatypes ((array!79871 0))(
  ( (array!79872 (arr!38529 (Array (_ BitVec 32) (_ BitVec 64))) (size!39066 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79871)

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun newFrom!281 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240026 (arrayContainsKey!0 a!3575 k!2808 newFrom!281)))

(declare-fun from!2953 () (_ BitVec 32))

(declare-datatypes ((Unit!41149 0))(
  ( (Unit!41150) )
))
(declare-fun lt!561826 () Unit!41149)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79871 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!41149)

(assert (=> b!1240026 (= lt!561826 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001) newFrom!281))))

(declare-fun b!1240023 () Bool)

(declare-fun res!827435 () Bool)

(assert (=> b!1240023 (=> (not res!827435) (not e!702839))))

(assert (=> b!1240023 (= res!827435 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun res!827437 () Bool)

(assert (=> start!103440 (=> (not res!827437) (not e!702839))))

(assert (=> start!103440 (= res!827437 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39066 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39066 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103440 e!702839))

(assert (=> start!103440 true))

(declare-fun array_inv!29305 (array!79871) Bool)

(assert (=> start!103440 (array_inv!29305 a!3575)))

(declare-fun b!1240025 () Bool)

(declare-fun res!827434 () Bool)

(assert (=> b!1240025 (=> (not res!827434) (not e!702839))))

(assert (=> b!1240025 (= res!827434 (arrayContainsKey!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(declare-fun b!1240024 () Bool)

(declare-fun res!827436 () Bool)

(assert (=> b!1240024 (=> (not res!827436) (not e!702839))))

(assert (=> b!1240024 (= res!827436 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39066 a!3575))))))

(assert (= (and start!103440 res!827437) b!1240023))

(assert (= (and b!1240023 res!827435) b!1240024))

(assert (= (and b!1240024 res!827436) b!1240025))

(assert (= (and b!1240025 res!827434) b!1240026))

(declare-fun m!1143425 () Bool)

(assert (=> b!1240026 m!1143425))

(declare-fun m!1143427 () Bool)

(assert (=> b!1240026 m!1143427))

(declare-fun m!1143429 () Bool)

(assert (=> b!1240023 m!1143429))

(declare-fun m!1143431 () Bool)

(assert (=> start!103440 m!1143431))

(declare-fun m!1143433 () Bool)

(assert (=> b!1240025 m!1143433))

(push 1)

(assert (not b!1240023))

(assert (not start!103440))

(assert (not b!1240025))

(assert (not b!1240026))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

