; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117656 () Bool)

(assert start!117656)

(declare-datatypes ((array!94090 0))(
  ( (array!94091 (arr!45433 (Array (_ BitVec 32) (_ BitVec 64))) (size!45984 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94090)

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun to!105 () (_ BitVec 32))

(assert (=> start!117656 (and (bvslt (size!45984 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45984 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000) (bvsge (bvsub to!105 (bvadd #b00000000000000000000000000000001 from!3309)) (bvsub to!105 from!3309)))))

(declare-fun array_inv!34378 (array!94090) Bool)

(assert (=> start!117656 (array_inv!34378 a!3931)))

(assert (=> start!117656 true))

(declare-fun bs!39902 () Bool)

(assert (= bs!39902 start!117656))

(declare-fun m!1265985 () Bool)

(assert (=> bs!39902 m!1265985))

(push 1)

(assert (not start!117656))

(check-sat)

(pop 1)

(push 1)

(check-sat)

