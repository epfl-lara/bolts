; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103468 () Bool)

(assert start!103468)

(declare-fun res!827568 () Bool)

(declare-fun e!702922 () Bool)

(assert (=> start!103468 (=> (not res!827568) (not e!702922))))

(declare-datatypes ((array!79899 0))(
  ( (array!79900 (arr!38543 (Array (_ BitVec 32) (_ BitVec 64))) (size!39080 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79899)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103468 (= res!827568 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39080 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39080 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103468 e!702922))

(assert (=> start!103468 true))

(declare-fun array_inv!29319 (array!79899) Bool)

(assert (=> start!103468 (array_inv!29319 a!3575)))

(declare-fun b!1240157 () Bool)

(declare-fun res!827569 () Bool)

(assert (=> b!1240157 (=> (not res!827569) (not e!702922))))

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79899 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240157 (= res!827569 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240158 () Bool)

(assert (=> b!1240158 (= e!702922 (and (bvsgt from!2953 newFrom!281) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!103468 res!827568) b!1240157))

(assert (= (and b!1240157 res!827569) b!1240158))

(declare-fun m!1143535 () Bool)

(assert (=> start!103468 m!1143535))

(declare-fun m!1143537 () Bool)

(assert (=> b!1240157 m!1143537))

(push 1)

(assert (not start!103468))

(assert (not b!1240157))

(check-sat)

(pop 1)

(push 1)

(check-sat)

