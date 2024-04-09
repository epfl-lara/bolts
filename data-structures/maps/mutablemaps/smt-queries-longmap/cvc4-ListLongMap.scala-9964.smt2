; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117732 () Bool)

(assert start!117732)

(declare-fun pivot!39 () (_ BitVec 32))

(declare-fun from!3356 () (_ BitVec 32))

(declare-datatypes ((array!94130 0))(
  ( (array!94131 (arr!45450 (Array (_ BitVec 32) (_ BitVec 64))) (size!46001 (_ BitVec 32))) )
))
(declare-fun a!3978 () array!94130)

(declare-fun to!152 () (_ BitVec 32))

(assert (=> start!117732 (and (bvslt (size!46001 a!3978) #b01111111111111111111111111111111) (bvsge from!3356 #b00000000000000000000000000000000) (bvsgt to!152 from!3356) (bvsle to!152 (size!46001 a!3978)) (bvsge pivot!39 from!3356) (bvslt pivot!39 to!152) (bvsgt pivot!39 (size!46001 a!3978)))))

(declare-fun array_inv!34395 (array!94130) Bool)

(assert (=> start!117732 (array_inv!34395 a!3978)))

(assert (=> start!117732 true))

(declare-fun bs!39925 () Bool)

(assert (= bs!39925 start!117732))

(declare-fun m!1266217 () Bool)

(assert (=> bs!39925 m!1266217))

(push 1)

(assert (not start!117732))

(check-sat)

(pop 1)

(push 1)

(check-sat)

