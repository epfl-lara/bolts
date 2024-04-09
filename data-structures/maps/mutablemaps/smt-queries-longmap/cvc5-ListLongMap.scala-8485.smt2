; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103458 () Bool)

(assert start!103458)

(declare-fun res!827538 () Bool)

(declare-fun e!702892 () Bool)

(assert (=> start!103458 (=> (not res!827538) (not e!702892))))

(declare-datatypes ((array!79889 0))(
  ( (array!79890 (arr!38538 (Array (_ BitVec 32) (_ BitVec 64))) (size!39075 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79889)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103458 (= res!827538 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39075 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39075 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103458 e!702892))

(assert (=> start!103458 true))

(declare-fun array_inv!29314 (array!79889) Bool)

(assert (=> start!103458 (array_inv!29314 a!3575)))

(declare-fun b!1240127 () Bool)

(declare-fun res!827539 () Bool)

(assert (=> b!1240127 (=> (not res!827539) (not e!702892))))

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240127 (= res!827539 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240128 () Bool)

(assert (=> b!1240128 (= e!702892 (and (bvsle from!2953 newFrom!281) (bvsge newFrom!281 (size!39075 a!3575))))))

(assert (= (and start!103458 res!827538) b!1240127))

(assert (= (and b!1240127 res!827539) b!1240128))

(declare-fun m!1143515 () Bool)

(assert (=> start!103458 m!1143515))

(declare-fun m!1143517 () Bool)

(assert (=> b!1240127 m!1143517))

(push 1)

(assert (not start!103458))

(assert (not b!1240127))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

