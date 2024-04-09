; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103494 () Bool)

(assert start!103494)

(declare-fun b!1240237 () Bool)

(declare-fun res!827649 () Bool)

(declare-fun e!702988 () Bool)

(assert (=> b!1240237 (=> (not res!827649) (not e!702988))))

(declare-datatypes ((array!79916 0))(
  ( (array!79917 (arr!38550 (Array (_ BitVec 32) (_ BitVec 64))) (size!39087 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79916)

(declare-fun newFrom!281 () (_ BitVec 32))

(declare-fun from!2953 () (_ BitVec 32))

(assert (=> b!1240237 (= res!827649 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39087 a!3575))))))

(declare-fun b!1240238 () Bool)

(declare-fun res!827648 () Bool)

(assert (=> b!1240238 (=> (not res!827648) (not e!702988))))

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240238 (= res!827648 (arrayContainsKey!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(declare-fun b!1240236 () Bool)

(declare-fun res!827647 () Bool)

(assert (=> b!1240236 (=> (not res!827647) (not e!702988))))

(assert (=> b!1240236 (= res!827647 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240239 () Bool)

(assert (=> b!1240239 (= e!702988 (bvsge (bvsub from!2953 #b00000000000000000000000000000001) from!2953))))

(declare-fun res!827650 () Bool)

(assert (=> start!103494 (=> (not res!827650) (not e!702988))))

(assert (=> start!103494 (= res!827650 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39087 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39087 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103494 e!702988))

(assert (=> start!103494 true))

(declare-fun array_inv!29326 (array!79916) Bool)

(assert (=> start!103494 (array_inv!29326 a!3575)))

(assert (= (and start!103494 res!827650) b!1240236))

(assert (= (and b!1240236 res!827647) b!1240237))

(assert (= (and b!1240237 res!827649) b!1240238))

(assert (= (and b!1240238 res!827648) b!1240239))

(declare-fun m!1143593 () Bool)

(assert (=> b!1240238 m!1143593))

(declare-fun m!1143595 () Bool)

(assert (=> b!1240236 m!1143595))

(declare-fun m!1143597 () Bool)

(assert (=> start!103494 m!1143597))

(push 1)

(assert (not b!1240236))

(assert (not start!103494))

(assert (not b!1240238))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

