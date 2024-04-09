; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103506 () Bool)

(assert start!103506)

(declare-fun res!827717 () Bool)

(declare-fun e!703024 () Bool)

(assert (=> start!103506 (=> (not res!827717) (not e!703024))))

(declare-datatypes ((array!79928 0))(
  ( (array!79929 (arr!38556 (Array (_ BitVec 32) (_ BitVec 64))) (size!39093 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79928)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103506 (= res!827717 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39093 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39093 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103506 e!703024))

(assert (=> start!103506 true))

(declare-fun array_inv!29332 (array!79928) Bool)

(assert (=> start!103506 (array_inv!29332 a!3575)))

(declare-fun b!1240306 () Bool)

(declare-fun res!827719 () Bool)

(assert (=> b!1240306 (=> (not res!827719) (not e!703024))))

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240306 (= res!827719 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240307 () Bool)

(declare-fun res!827718 () Bool)

(assert (=> b!1240307 (=> (not res!827718) (not e!703024))))

(assert (=> b!1240307 (= res!827718 (bvsle from!2953 newFrom!281))))

(declare-fun b!1240308 () Bool)

(assert (=> b!1240308 (= e!703024 (not (arrayContainsKey!0 a!3575 k!2808 newFrom!281)))))

(assert (= (and start!103506 res!827717) b!1240306))

(assert (= (and b!1240306 res!827719) b!1240307))

(assert (= (and b!1240307 res!827718) b!1240308))

(declare-fun m!1143641 () Bool)

(assert (=> start!103506 m!1143641))

(declare-fun m!1143643 () Bool)

(assert (=> b!1240306 m!1143643))

(declare-fun m!1143645 () Bool)

(assert (=> b!1240308 m!1143645))

(push 1)

(assert (not b!1240308))

(assert (not start!103506))

(assert (not b!1240306))

(check-sat)

(pop 1)

(push 1)

(check-sat)

