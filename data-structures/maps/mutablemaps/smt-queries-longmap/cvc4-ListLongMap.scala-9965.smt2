; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117738 () Bool)

(assert start!117738)

(declare-fun pivot!39 () (_ BitVec 32))

(declare-fun from!3356 () (_ BitVec 32))

(declare-datatypes ((array!94136 0))(
  ( (array!94137 (arr!45453 (Array (_ BitVec 32) (_ BitVec 64))) (size!46004 (_ BitVec 32))) )
))
(declare-fun a!3978 () array!94136)

(declare-fun to!152 () (_ BitVec 32))

(assert (=> start!117738 (and (bvslt (size!46004 a!3978) #b01111111111111111111111111111111) (bvsge from!3356 #b00000000000000000000000000000000) (bvsgt to!152 from!3356) (bvsle to!152 (size!46004 a!3978)) (bvsge pivot!39 from!3356) (bvslt pivot!39 to!152) (or (bvsgt pivot!39 to!152) (bvslt pivot!39 #b00000000000000000000000000000000)))))

(declare-fun array_inv!34398 (array!94136) Bool)

(assert (=> start!117738 (array_inv!34398 a!3978)))

(assert (=> start!117738 true))

(declare-fun bs!39931 () Bool)

(assert (= bs!39931 start!117738))

(declare-fun m!1266223 () Bool)

(assert (=> bs!39931 m!1266223))

(push 1)

(assert (not start!117738))

(check-sat)

(pop 1)

(push 1)

(check-sat)

