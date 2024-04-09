; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103480 () Bool)

(assert start!103480)

(declare-fun res!827614 () Bool)

(declare-fun e!702958 () Bool)

(assert (=> start!103480 (=> (not res!827614) (not e!702958))))

(declare-datatypes ((array!79911 0))(
  ( (array!79912 (arr!38549 (Array (_ BitVec 32) (_ BitVec 64))) (size!39086 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79911)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103480 (= res!827614 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39086 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39086 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103480 e!702958))

(assert (=> start!103480 true))

(declare-fun array_inv!29325 (array!79911) Bool)

(assert (=> start!103480 (array_inv!29325 a!3575)))

(declare-fun b!1240201 () Bool)

(declare-fun res!827613 () Bool)

(assert (=> b!1240201 (=> (not res!827613) (not e!702958))))

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240201 (= res!827613 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240202 () Bool)

(declare-fun res!827612 () Bool)

(assert (=> b!1240202 (=> (not res!827612) (not e!702958))))

(assert (=> b!1240202 (= res!827612 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39086 a!3575))))))

(declare-fun b!1240203 () Bool)

(assert (=> b!1240203 (= e!702958 (not (arrayContainsKey!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001))))))

(assert (= (and start!103480 res!827614) b!1240201))

(assert (= (and b!1240201 res!827613) b!1240202))

(assert (= (and b!1240202 res!827612) b!1240203))

(declare-fun m!1143563 () Bool)

(assert (=> start!103480 m!1143563))

(declare-fun m!1143565 () Bool)

(assert (=> b!1240201 m!1143565))

(declare-fun m!1143567 () Bool)

(assert (=> b!1240203 m!1143567))

(push 1)

(assert (not b!1240203))

(assert (not b!1240201))

(assert (not start!103480))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136173 () Bool)

(declare-fun res!827635 () Bool)

(declare-fun e!702980 () Bool)

(assert (=> d!136173 (=> res!827635 e!702980)))

(assert (=> d!136173 (= res!827635 (= (select (arr!38549 a!3575) (bvsub from!2953 #b00000000000000000000000000000001)) k!2808))))

(assert (=> d!136173 (= (arrayContainsKey!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001)) e!702980)))

(declare-fun b!1240224 () Bool)

