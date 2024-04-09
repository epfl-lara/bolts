; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103460 () Bool)

(assert start!103460)

(declare-fun res!827544 () Bool)

(declare-fun e!702898 () Bool)

(assert (=> start!103460 (=> (not res!827544) (not e!702898))))

(declare-datatypes ((array!79891 0))(
  ( (array!79892 (arr!38539 (Array (_ BitVec 32) (_ BitVec 64))) (size!39076 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79891)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103460 (= res!827544 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39076 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39076 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103460 e!702898))

(assert (=> start!103460 true))

(declare-fun array_inv!29315 (array!79891) Bool)

(assert (=> start!103460 (array_inv!29315 a!3575)))

(declare-fun b!1240133 () Bool)

(declare-fun res!827545 () Bool)

(assert (=> b!1240133 (=> (not res!827545) (not e!702898))))

(declare-fun k0!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79891 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240133 (= res!827545 (arrayContainsKey!0 a!3575 k0!2808 from!2953))))

(declare-fun b!1240134 () Bool)

(assert (=> b!1240134 (= e!702898 (and (bvsle from!2953 newFrom!281) (bvsge newFrom!281 (size!39076 a!3575))))))

(assert (= (and start!103460 res!827544) b!1240133))

(assert (= (and b!1240133 res!827545) b!1240134))

(declare-fun m!1143519 () Bool)

(assert (=> start!103460 m!1143519))

(declare-fun m!1143521 () Bool)

(assert (=> b!1240133 m!1143521))

(check-sat (not start!103460) (not b!1240133))
(check-sat)
