; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117744 () Bool)

(assert start!117744)

(declare-fun pivot!39 () (_ BitVec 32))

(declare-fun from!3356 () (_ BitVec 32))

(declare-datatypes ((array!94142 0))(
  ( (array!94143 (arr!45456 (Array (_ BitVec 32) (_ BitVec 64))) (size!46007 (_ BitVec 32))) )
))
(declare-fun a!3978 () array!94142)

(declare-fun to!152 () (_ BitVec 32))

(assert (=> start!117744 (and (bvslt (size!46007 a!3978) #b01111111111111111111111111111111) (bvsge from!3356 #b00000000000000000000000000000000) (bvsgt to!152 from!3356) (bvsle to!152 (size!46007 a!3978)) (bvsge pivot!39 from!3356) (bvslt pivot!39 to!152) (bvsgt from!3356 to!152))))

(declare-fun array_inv!34401 (array!94142) Bool)

(assert (=> start!117744 (array_inv!34401 a!3978)))

(assert (=> start!117744 true))

(declare-fun bs!39937 () Bool)

(assert (= bs!39937 start!117744))

(declare-fun m!1266229 () Bool)

(assert (=> bs!39937 m!1266229))

(push 1)

(assert (not start!117744))

(check-sat)

(pop 1)

(push 1)

(check-sat)

