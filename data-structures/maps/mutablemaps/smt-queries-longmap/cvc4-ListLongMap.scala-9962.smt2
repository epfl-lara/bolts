; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117702 () Bool)

(assert start!117702)

(declare-datatypes ((array!94115 0))(
  ( (array!94116 (arr!45444 (Array (_ BitVec 32) (_ BitVec 64))) (size!45995 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94115)

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun to!105 () (_ BitVec 32))

(assert (=> start!117702 (and (bvslt (size!45995 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45995 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvslt (bvsub to!105 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun array_inv!34389 (array!94115) Bool)

(assert (=> start!117702 (array_inv!34389 a!3931)))

(assert (=> start!117702 true))

(declare-fun bs!39916 () Bool)

(assert (= bs!39916 start!117702))

(declare-fun m!1266133 () Bool)

(assert (=> bs!39916 m!1266133))

(push 1)

(assert (not start!117702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

