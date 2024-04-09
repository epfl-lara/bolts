; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103470 () Bool)

(assert start!103470)

(declare-fun res!827574 () Bool)

(declare-fun e!702928 () Bool)

(assert (=> start!103470 (=> (not res!827574) (not e!702928))))

(declare-datatypes ((array!79901 0))(
  ( (array!79902 (arr!38544 (Array (_ BitVec 32) (_ BitVec 64))) (size!39081 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79901)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103470 (= res!827574 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39081 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39081 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103470 e!702928))

(assert (=> start!103470 true))

(declare-fun array_inv!29320 (array!79901) Bool)

(assert (=> start!103470 (array_inv!29320 a!3575)))

(declare-fun b!1240163 () Bool)

(declare-fun res!827575 () Bool)

(assert (=> b!1240163 (=> (not res!827575) (not e!702928))))

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79901 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240163 (= res!827575 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240164 () Bool)

(assert (=> b!1240164 (= e!702928 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) (size!39081 a!3575))))))

(assert (= (and start!103470 res!827574) b!1240163))

(assert (= (and b!1240163 res!827575) b!1240164))

(declare-fun m!1143539 () Bool)

(assert (=> start!103470 m!1143539))

(declare-fun m!1143541 () Bool)

(assert (=> b!1240163 m!1143541))

(push 1)

(assert (not b!1240163))

(assert (not start!103470))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

