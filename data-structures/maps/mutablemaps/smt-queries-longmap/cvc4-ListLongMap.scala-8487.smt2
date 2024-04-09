; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103474 () Bool)

(assert start!103474)

(declare-fun res!827586 () Bool)

(declare-fun e!702940 () Bool)

(assert (=> start!103474 (=> (not res!827586) (not e!702940))))

(declare-datatypes ((array!79905 0))(
  ( (array!79906 (arr!38546 (Array (_ BitVec 32) (_ BitVec 64))) (size!39083 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79905)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103474 (= res!827586 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39083 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39083 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103474 e!702940))

(assert (=> start!103474 true))

(declare-fun array_inv!29322 (array!79905) Bool)

(assert (=> start!103474 (array_inv!29322 a!3575)))

(declare-fun b!1240175 () Bool)

(declare-fun res!827587 () Bool)

(assert (=> b!1240175 (=> (not res!827587) (not e!702940))))

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79905 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240175 (= res!827587 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240176 () Bool)

(assert (=> b!1240176 (= e!702940 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) (size!39083 a!3575))))))

(assert (= (and start!103474 res!827586) b!1240175))

(assert (= (and b!1240175 res!827587) b!1240176))

(declare-fun m!1143547 () Bool)

(assert (=> start!103474 m!1143547))

(declare-fun m!1143549 () Bool)

(assert (=> b!1240175 m!1143549))

(push 1)

(assert (not start!103474))

(assert (not b!1240175))

(check-sat)

(pop 1)

(push 1)

(check-sat)

