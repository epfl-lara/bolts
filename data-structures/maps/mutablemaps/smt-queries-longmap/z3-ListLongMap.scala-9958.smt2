; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117652 () Bool)

(assert start!117652)

(declare-datatypes ((array!94086 0))(
  ( (array!94087 (arr!45431 (Array (_ BitVec 32) (_ BitVec 64))) (size!45982 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94086)

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun to!105 () (_ BitVec 32))

(assert (=> start!117652 (and (bvslt (size!45982 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45982 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000))))

(declare-fun array_inv!34376 (array!94086) Bool)

(assert (=> start!117652 (array_inv!34376 a!3931)))

(assert (=> start!117652 true))

(declare-fun bs!39897 () Bool)

(assert (= bs!39897 start!117652))

(declare-fun m!1265981 () Bool)

(assert (=> bs!39897 m!1265981))

(check-sat (not start!117652))
(check-sat)
