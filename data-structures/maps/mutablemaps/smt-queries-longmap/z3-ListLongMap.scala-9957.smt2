; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117646 () Bool)

(assert start!117646)

(declare-datatypes ((array!94080 0))(
  ( (array!94081 (arr!45428 (Array (_ BitVec 32) (_ BitVec 64))) (size!45979 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94080)

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun to!105 () (_ BitVec 32))

(assert (=> start!117646 (and (bvslt (size!45979 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45979 a!3931)) (bvslt (bvsub to!105 from!3309) #b00000000000000000000000000000000))))

(declare-fun array_inv!34373 (array!94080) Bool)

(assert (=> start!117646 (array_inv!34373 a!3931)))

(assert (=> start!117646 true))

(declare-fun bs!39891 () Bool)

(assert (= bs!39891 start!117646))

(declare-fun m!1265975 () Bool)

(assert (=> bs!39891 m!1265975))

(check-sat (not start!117646))
(check-sat)
