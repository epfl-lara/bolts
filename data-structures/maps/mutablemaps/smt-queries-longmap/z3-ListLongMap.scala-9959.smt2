; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117658 () Bool)

(assert start!117658)

(declare-datatypes ((array!94092 0))(
  ( (array!94093 (arr!45434 (Array (_ BitVec 32) (_ BitVec 64))) (size!45985 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94092)

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun to!105 () (_ BitVec 32))

(assert (=> start!117658 (and (bvslt (size!45985 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45985 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000) (bvsge (bvsub to!105 (bvadd #b00000000000000000000000000000001 from!3309)) (bvsub to!105 from!3309)))))

(declare-fun array_inv!34379 (array!94092) Bool)

(assert (=> start!117658 (array_inv!34379 a!3931)))

(assert (=> start!117658 true))

(declare-fun bs!39903 () Bool)

(assert (= bs!39903 start!117658))

(declare-fun m!1265987 () Bool)

(assert (=> bs!39903 m!1265987))

(check-sat (not start!117658))
(check-sat)
