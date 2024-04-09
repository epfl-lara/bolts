; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117700 () Bool)

(assert start!117700)

(declare-datatypes ((array!94113 0))(
  ( (array!94114 (arr!45443 (Array (_ BitVec 32) (_ BitVec 64))) (size!45994 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94113)

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun to!105 () (_ BitVec 32))

(assert (=> start!117700 (and (bvslt (size!45994 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45994 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvslt (bvsub to!105 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun array_inv!34388 (array!94113) Bool)

(assert (=> start!117700 (array_inv!34388 a!3931)))

(assert (=> start!117700 true))

(declare-fun bs!39915 () Bool)

(assert (= bs!39915 start!117700))

(declare-fun m!1266131 () Bool)

(assert (=> bs!39915 m!1266131))

(check-sat (not start!117700))
(check-sat)
