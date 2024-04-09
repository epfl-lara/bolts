; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136866 () Bool)

(assert start!136866)

(declare-fun from!2846 () (_ BitVec 32))

(declare-datatypes ((array!105786 0))(
  ( (array!105787 (arr!50996 (Array (_ BitVec 32) (_ BitVec 64))) (size!51547 (_ BitVec 32))) )
))
(declare-fun a!3471 () array!105786)

(declare-fun k0!2737 () (_ BitVec 64))

(assert (=> start!136866 (and (bvsge from!2846 #b00000000000000000000000000000000) (bvslt from!2846 (size!51547 a!3471)) (bvslt (size!51547 a!3471) #b01111111111111111111111111111111) (not (= (select (arr!50996 a!3471) from!2846) k0!2737)) (bvslt (bvadd #b00000000000000000000000000000001 from!2846) (size!51547 a!3471)) (bvslt (bvadd #b00000000000000000000000000000001 from!2846) #b00000000000000000000000000000000))))

(assert (=> start!136866 true))

(declare-fun array_inv!39641 (array!105786) Bool)

(assert (=> start!136866 (array_inv!39641 a!3471)))

(declare-fun bs!45689 () Bool)

(assert (= bs!45689 start!136866))

(declare-fun m!1450761 () Bool)

(assert (=> bs!45689 m!1450761))

(declare-fun m!1450763 () Bool)

(assert (=> bs!45689 m!1450763))

(check-sat (not start!136866))
(check-sat)
