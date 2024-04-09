; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117644 () Bool)

(assert start!117644)

(declare-datatypes ((array!94078 0))(
  ( (array!94079 (arr!45427 (Array (_ BitVec 32) (_ BitVec 64))) (size!45978 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94078)

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun to!105 () (_ BitVec 32))

(assert (=> start!117644 (and (bvslt (size!45978 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45978 a!3931)) (bvslt (bvsub to!105 from!3309) #b00000000000000000000000000000000))))

(declare-fun array_inv!34372 (array!94078) Bool)

(assert (=> start!117644 (array_inv!34372 a!3931)))

(assert (=> start!117644 true))

(declare-fun bs!39890 () Bool)

(assert (= bs!39890 start!117644))

(declare-fun m!1265973 () Bool)

(assert (=> bs!39890 m!1265973))

(push 1)

(assert (not start!117644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

