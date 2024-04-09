; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117648 () Bool)

(assert start!117648)

(declare-datatypes ((array!94082 0))(
  ( (array!94083 (arr!45429 (Array (_ BitVec 32) (_ BitVec 64))) (size!45980 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94082)

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun to!105 () (_ BitVec 32))

(assert (=> start!117648 (and (bvslt (size!45980 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45980 a!3931)) (bvslt (bvsub to!105 from!3309) #b00000000000000000000000000000000))))

(declare-fun array_inv!34374 (array!94082) Bool)

(assert (=> start!117648 (array_inv!34374 a!3931)))

(assert (=> start!117648 true))

(declare-fun bs!39892 () Bool)

(assert (= bs!39892 start!117648))

(declare-fun m!1265977 () Bool)

(assert (=> bs!39892 m!1265977))

(push 1)

(assert (not start!117648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

