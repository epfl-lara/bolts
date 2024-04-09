; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103466 () Bool)

(assert start!103466)

(declare-fun res!827562 () Bool)

(declare-fun e!702916 () Bool)

(assert (=> start!103466 (=> (not res!827562) (not e!702916))))

(declare-datatypes ((array!79897 0))(
  ( (array!79898 (arr!38542 (Array (_ BitVec 32) (_ BitVec 64))) (size!39079 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79897)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103466 (= res!827562 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39079 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39079 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103466 e!702916))

(assert (=> start!103466 true))

(declare-fun array_inv!29318 (array!79897) Bool)

(assert (=> start!103466 (array_inv!29318 a!3575)))

(declare-fun b!1240151 () Bool)

(declare-fun res!827563 () Bool)

(assert (=> b!1240151 (=> (not res!827563) (not e!702916))))

(declare-fun k0!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79897 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240151 (= res!827563 (arrayContainsKey!0 a!3575 k0!2808 from!2953))))

(declare-fun b!1240152 () Bool)

(assert (=> b!1240152 (= e!702916 (and (bvsgt from!2953 newFrom!281) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!103466 res!827562) b!1240151))

(assert (= (and b!1240151 res!827563) b!1240152))

(declare-fun m!1143531 () Bool)

(assert (=> start!103466 m!1143531))

(declare-fun m!1143533 () Bool)

(assert (=> b!1240151 m!1143533))

(check-sat (not b!1240151) (not start!103466))
(check-sat)
