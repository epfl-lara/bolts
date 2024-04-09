; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103476 () Bool)

(assert start!103476)

(declare-fun res!827596 () Bool)

(declare-fun e!702946 () Bool)

(assert (=> start!103476 (=> (not res!827596) (not e!702946))))

(declare-datatypes ((array!79907 0))(
  ( (array!79908 (arr!38547 (Array (_ BitVec 32) (_ BitVec 64))) (size!39084 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79907)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103476 (= res!827596 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39084 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39084 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103476 e!702946))

(assert (=> start!103476 true))

(declare-fun array_inv!29323 (array!79907) Bool)

(assert (=> start!103476 (array_inv!29323 a!3575)))

(declare-fun b!1240183 () Bool)

(declare-fun res!827594 () Bool)

(assert (=> b!1240183 (=> (not res!827594) (not e!702946))))

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79907 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240183 (= res!827594 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240184 () Bool)

(declare-fun res!827595 () Bool)

(assert (=> b!1240184 (=> (not res!827595) (not e!702946))))

(assert (=> b!1240184 (= res!827595 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39084 a!3575))))))

(declare-fun b!1240185 () Bool)

(assert (=> b!1240185 (= e!702946 (not (arrayContainsKey!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001))))))

(assert (= (and start!103476 res!827596) b!1240183))

(assert (= (and b!1240183 res!827594) b!1240184))

(assert (= (and b!1240184 res!827595) b!1240185))

(declare-fun m!1143551 () Bool)

(assert (=> start!103476 m!1143551))

(declare-fun m!1143553 () Bool)

(assert (=> b!1240183 m!1143553))

(declare-fun m!1143555 () Bool)

(assert (=> b!1240185 m!1143555))

(push 1)

(assert (not b!1240185))

(assert (not start!103476))

(assert (not b!1240183))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136169 () Bool)

(declare-fun res!827627 () Bool)

(declare-fun e!702972 () Bool)

(assert (=> d!136169 (=> res!827627 e!702972)))

(assert (=> d!136169 (= res!827627 (= (select (arr!38547 a!3575) (bvsub from!2953 #b00000000000000000000000000000001)) k!2808))))

(assert (=> d!136169 (= (arrayContainsKey!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001)) e!702972)))

(declare-fun b!1240216 () Bool)

(declare-fun e!702973 () Bool)

(assert (=> b!1240216 (= e!702972 e!702973)))

(declare-fun res!827628 () Bool)

(assert (=> b!1240216 (=> (not res!827628) (not e!702973))))

(assert (=> b!1240216 (= res!827628 (bvslt (bvadd (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!39084 a!3575)))))

(declare-fun b!1240217 () Bool)

(assert (=> b!1240217 (= e!702973 (arrayContainsKey!0 a!3575 k!2808 (bvadd (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (= (and d!136169 (not res!827627)) b!1240216))

(assert (= (and b!1240216 res!827628) b!1240217))

(declare-fun m!1143577 () Bool)

(assert (=> d!136169 m!1143577))

(declare-fun m!1143579 () Bool)

(assert (=> b!1240217 m!1143579))

(assert (=> b!1240185 d!136169))

(declare-fun d!136171 () Bool)

(assert (=> d!136171 (= (array_inv!29323 a!3575) (bvsge (size!39084 a!3575) #b00000000000000000000000000000000))))

(assert (=> start!103476 d!136171))

(declare-fun d!136175 () Bool)

(declare-fun res!827629 () Bool)

(declare-fun e!702974 () Bool)

(assert (=> d!136175 (=> res!827629 e!702974)))

(assert (=> d!136175 (= res!827629 (= (select (arr!38547 a!3575) from!2953) k!2808))))

(assert (=> d!136175 (= (arrayContainsKey!0 a!3575 k!2808 from!2953) e!702974)))

(declare-fun b!1240218 () Bool)

(declare-fun e!702975 () Bool)

(assert (=> b!1240218 (= e!702974 e!702975)))

(declare-fun res!827630 () Bool)

(assert (=> b!1240218 (=> (not res!827630) (not e!702975))))

(assert (=> b!1240218 (= res!827630 (bvslt (bvadd from!2953 #b00000000000000000000000000000001) (size!39084 a!3575)))))

