; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103508 () Bool)

(assert start!103508)

(declare-fun res!827727 () Bool)

(declare-fun e!703031 () Bool)

(assert (=> start!103508 (=> (not res!827727) (not e!703031))))

(declare-datatypes ((array!79930 0))(
  ( (array!79931 (arr!38557 (Array (_ BitVec 32) (_ BitVec 64))) (size!39094 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79930)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103508 (= res!827727 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39094 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39094 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103508 e!703031))

(assert (=> start!103508 true))

(declare-fun array_inv!29333 (array!79930) Bool)

(assert (=> start!103508 (array_inv!29333 a!3575)))

(declare-fun b!1240315 () Bool)

(declare-fun res!827726 () Bool)

(assert (=> b!1240315 (=> (not res!827726) (not e!703031))))

(declare-fun k0!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79930 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240315 (= res!827726 (arrayContainsKey!0 a!3575 k0!2808 from!2953))))

(declare-fun b!1240316 () Bool)

(declare-fun res!827728 () Bool)

(assert (=> b!1240316 (=> (not res!827728) (not e!703031))))

(assert (=> b!1240316 (= res!827728 (bvsle from!2953 newFrom!281))))

(declare-fun b!1240317 () Bool)

(assert (=> b!1240317 (= e!703031 (not (arrayContainsKey!0 a!3575 k0!2808 newFrom!281)))))

(assert (= (and start!103508 res!827727) b!1240315))

(assert (= (and b!1240315 res!827726) b!1240316))

(assert (= (and b!1240316 res!827728) b!1240317))

(declare-fun m!1143647 () Bool)

(assert (=> start!103508 m!1143647))

(declare-fun m!1143649 () Bool)

(assert (=> b!1240315 m!1143649))

(declare-fun m!1143651 () Bool)

(assert (=> b!1240317 m!1143651))

(check-sat (not b!1240317) (not start!103508) (not b!1240315))
(check-sat)
