; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117650 () Bool)

(assert start!117650)

(declare-datatypes ((array!94084 0))(
  ( (array!94085 (arr!45430 (Array (_ BitVec 32) (_ BitVec 64))) (size!45981 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94084)

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun to!105 () (_ BitVec 32))

(assert (=> start!117650 (and (bvslt (size!45981 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45981 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000))))

(declare-fun array_inv!34375 (array!94084) Bool)

(assert (=> start!117650 (array_inv!34375 a!3931)))

(assert (=> start!117650 true))

(declare-fun bs!39896 () Bool)

(assert (= bs!39896 start!117650))

(declare-fun m!1265979 () Bool)

(assert (=> bs!39896 m!1265979))

(push 1)

(assert (not start!117650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

