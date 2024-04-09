; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117728 () Bool)

(assert start!117728)

(declare-fun pivot!39 () (_ BitVec 32))

(declare-datatypes ((array!94126 0))(
  ( (array!94127 (arr!45448 (Array (_ BitVec 32) (_ BitVec 64))) (size!45999 (_ BitVec 32))) )
))
(declare-fun a!3978 () array!94126)

(declare-fun to!152 () (_ BitVec 32))

(declare-fun from!3356 () (_ BitVec 32))

(assert (=> start!117728 (and (bvslt (size!45999 a!3978) #b01111111111111111111111111111111) (bvsge from!3356 #b00000000000000000000000000000000) (bvsgt to!152 from!3356) (bvsle to!152 (size!45999 a!3978)) (bvsge pivot!39 from!3356) (bvslt pivot!39 to!152) (bvsgt pivot!39 (size!45999 a!3978)))))

(declare-fun array_inv!34393 (array!94126) Bool)

(assert (=> start!117728 (array_inv!34393 a!3978)))

(assert (=> start!117728 true))

(declare-fun bs!39923 () Bool)

(assert (= bs!39923 start!117728))

(declare-fun m!1266213 () Bool)

(assert (=> bs!39923 m!1266213))

(push 1)

(assert (not start!117728))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

