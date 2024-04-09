; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103462 () Bool)

(assert start!103462)

(declare-fun res!827550 () Bool)

(declare-fun e!702904 () Bool)

(assert (=> start!103462 (=> (not res!827550) (not e!702904))))

(declare-datatypes ((array!79893 0))(
  ( (array!79894 (arr!38540 (Array (_ BitVec 32) (_ BitVec 64))) (size!39077 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79893)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103462 (= res!827550 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39077 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39077 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103462 e!702904))

(assert (=> start!103462 true))

(declare-fun array_inv!29316 (array!79893) Bool)

(assert (=> start!103462 (array_inv!29316 a!3575)))

(declare-fun b!1240139 () Bool)

(declare-fun res!827551 () Bool)

(assert (=> b!1240139 (=> (not res!827551) (not e!702904))))

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240139 (= res!827551 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240140 () Bool)

(assert (=> b!1240140 (= e!702904 (and (bvsle from!2953 newFrom!281) (bvsge newFrom!281 (size!39077 a!3575))))))

(assert (= (and start!103462 res!827550) b!1240139))

(assert (= (and b!1240139 res!827551) b!1240140))

(declare-fun m!1143523 () Bool)

(assert (=> start!103462 m!1143523))

(declare-fun m!1143525 () Bool)

(assert (=> b!1240139 m!1143525))

(push 1)

(assert (not b!1240139))

(assert (not start!103462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

