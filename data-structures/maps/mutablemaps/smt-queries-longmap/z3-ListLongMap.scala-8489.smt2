; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103496 () Bool)

(assert start!103496)

(declare-fun b!1240250 () Bool)

(declare-fun res!827662 () Bool)

(declare-fun e!702994 () Bool)

(assert (=> b!1240250 (=> (not res!827662) (not e!702994))))

(declare-datatypes ((array!79918 0))(
  ( (array!79919 (arr!38551 (Array (_ BitVec 32) (_ BitVec 64))) (size!39088 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79918)

(declare-fun k0!2808 () (_ BitVec 64))

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79918 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240250 (= res!827662 (arrayContainsKey!0 a!3575 k0!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(declare-fun b!1240251 () Bool)

(assert (=> b!1240251 (= e!702994 (bvsge (bvsub from!2953 #b00000000000000000000000000000001) from!2953))))

(declare-fun res!827661 () Bool)

(assert (=> start!103496 (=> (not res!827661) (not e!702994))))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103496 (= res!827661 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39088 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39088 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103496 e!702994))

(assert (=> start!103496 true))

(declare-fun array_inv!29327 (array!79918) Bool)

(assert (=> start!103496 (array_inv!29327 a!3575)))

(declare-fun b!1240249 () Bool)

(declare-fun res!827660 () Bool)

(assert (=> b!1240249 (=> (not res!827660) (not e!702994))))

(assert (=> b!1240249 (= res!827660 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39088 a!3575))))))

(declare-fun b!1240248 () Bool)

(declare-fun res!827659 () Bool)

(assert (=> b!1240248 (=> (not res!827659) (not e!702994))))

(assert (=> b!1240248 (= res!827659 (arrayContainsKey!0 a!3575 k0!2808 from!2953))))

(assert (= (and start!103496 res!827661) b!1240248))

(assert (= (and b!1240248 res!827659) b!1240249))

(assert (= (and b!1240249 res!827660) b!1240250))

(assert (= (and b!1240250 res!827662) b!1240251))

(declare-fun m!1143599 () Bool)

(assert (=> b!1240250 m!1143599))

(declare-fun m!1143601 () Bool)

(assert (=> start!103496 m!1143601))

(declare-fun m!1143603 () Bool)

(assert (=> b!1240248 m!1143603))

(check-sat (not start!103496) (not b!1240248) (not b!1240250))
(check-sat)
