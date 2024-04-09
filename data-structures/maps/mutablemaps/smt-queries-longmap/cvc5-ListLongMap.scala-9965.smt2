; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117734 () Bool)

(assert start!117734)

(declare-fun from!3356 () (_ BitVec 32))

(declare-datatypes ((array!94132 0))(
  ( (array!94133 (arr!45451 (Array (_ BitVec 32) (_ BitVec 64))) (size!46002 (_ BitVec 32))) )
))
(declare-fun a!3978 () array!94132)

(declare-fun to!152 () (_ BitVec 32))

(declare-fun pivot!39 () (_ BitVec 32))

(assert (=> start!117734 (and (bvslt (size!46002 a!3978) #b01111111111111111111111111111111) (bvsge from!3356 #b00000000000000000000000000000000) (bvsgt to!152 from!3356) (bvsle to!152 (size!46002 a!3978)) (bvsge pivot!39 from!3356) (bvslt pivot!39 to!152) (or (bvsgt pivot!39 to!152) (bvslt pivot!39 #b00000000000000000000000000000000)))))

(declare-fun array_inv!34396 (array!94132) Bool)

(assert (=> start!117734 (array_inv!34396 a!3978)))

(assert (=> start!117734 true))

(declare-fun bs!39929 () Bool)

(assert (= bs!39929 start!117734))

(declare-fun m!1266219 () Bool)

(assert (=> bs!39929 m!1266219))

(push 1)

(assert (not start!117734))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

