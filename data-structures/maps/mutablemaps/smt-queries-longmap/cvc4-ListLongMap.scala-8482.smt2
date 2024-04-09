; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103444 () Bool)

(assert start!103444)

(declare-fun b!1240047 () Bool)

(declare-fun res!827460 () Bool)

(declare-fun e!702850 () Bool)

(assert (=> b!1240047 (=> (not res!827460) (not e!702850))))

(declare-datatypes ((array!79875 0))(
  ( (array!79876 (arr!38531 (Array (_ BitVec 32) (_ BitVec 64))) (size!39068 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79875)

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79875 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240047 (= res!827460 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240048 () Bool)

(declare-fun res!827459 () Bool)

(assert (=> b!1240048 (=> (not res!827459) (not e!702850))))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> b!1240048 (= res!827459 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39068 a!3575))))))

(declare-fun res!827461 () Bool)

(assert (=> start!103444 (=> (not res!827461) (not e!702850))))

(assert (=> start!103444 (= res!827461 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39068 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39068 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103444 e!702850))

(assert (=> start!103444 true))

(declare-fun array_inv!29307 (array!79875) Bool)

(assert (=> start!103444 (array_inv!29307 a!3575)))

(declare-fun b!1240049 () Bool)

(declare-fun res!827458 () Bool)

(assert (=> b!1240049 (=> (not res!827458) (not e!702850))))

(assert (=> b!1240049 (= res!827458 (arrayContainsKey!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(declare-fun b!1240050 () Bool)

(assert (=> b!1240050 (= e!702850 (not true))))

(assert (=> b!1240050 (arrayContainsKey!0 a!3575 k!2808 newFrom!281)))

(declare-datatypes ((Unit!41153 0))(
  ( (Unit!41154) )
))
(declare-fun lt!561832 () Unit!41153)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79875 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!41153)

(assert (=> b!1240050 (= lt!561832 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001) newFrom!281))))

(assert (= (and start!103444 res!827461) b!1240047))

(assert (= (and b!1240047 res!827460) b!1240048))

(assert (= (and b!1240048 res!827459) b!1240049))

(assert (= (and b!1240049 res!827458) b!1240050))

(declare-fun m!1143445 () Bool)

(assert (=> b!1240047 m!1143445))

(declare-fun m!1143447 () Bool)

(assert (=> start!103444 m!1143447))

(declare-fun m!1143449 () Bool)

(assert (=> b!1240049 m!1143449))

(declare-fun m!1143451 () Bool)

(assert (=> b!1240050 m!1143451))

(declare-fun m!1143453 () Bool)

(assert (=> b!1240050 m!1143453))

(push 1)

(assert (not b!1240050))

(assert (not b!1240047))

(assert (not start!103444))

(assert (not b!1240049))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

