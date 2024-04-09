; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103472 () Bool)

(assert start!103472)

(declare-fun res!827580 () Bool)

(declare-fun e!702934 () Bool)

(assert (=> start!103472 (=> (not res!827580) (not e!702934))))

(declare-datatypes ((array!79903 0))(
  ( (array!79904 (arr!38545 (Array (_ BitVec 32) (_ BitVec 64))) (size!39082 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79903)

(declare-fun newFrom!281 () (_ BitVec 32))

(declare-fun from!2953 () (_ BitVec 32))

(assert (=> start!103472 (= res!827580 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39082 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39082 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103472 e!702934))

(assert (=> start!103472 true))

(declare-fun array_inv!29321 (array!79903) Bool)

(assert (=> start!103472 (array_inv!29321 a!3575)))

(declare-fun b!1240169 () Bool)

(declare-fun res!827581 () Bool)

(assert (=> b!1240169 (=> (not res!827581) (not e!702934))))

(declare-fun k0!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240169 (= res!827581 (arrayContainsKey!0 a!3575 k0!2808 from!2953))))

(declare-fun b!1240170 () Bool)

(assert (=> b!1240170 (= e!702934 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) (size!39082 a!3575))))))

(assert (= (and start!103472 res!827580) b!1240169))

(assert (= (and b!1240169 res!827581) b!1240170))

(declare-fun m!1143543 () Bool)

(assert (=> start!103472 m!1143543))

(declare-fun m!1143545 () Bool)

(assert (=> b!1240169 m!1143545))

(check-sat (not b!1240169) (not start!103472))
(check-sat)
