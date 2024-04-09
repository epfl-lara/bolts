; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117758 () Bool)

(assert start!117758)

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94156 0))(
  ( (array!94157 (arr!45463 (Array (_ BitVec 32) (_ BitVec 64))) (size!46014 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94156)

(assert (=> start!117758 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46014 a!3464)) (bvslt (size!46014 a!3464) #b01111111111111111111111111111111) (bvslt (bvsub (size!46014 a!3464) from!2839) #b00000000000000000000000000000000))))

(assert (=> start!117758 true))

(declare-fun array_inv!34408 (array!94156) Bool)

(assert (=> start!117758 (array_inv!34408 a!3464)))

(declare-fun bs!39947 () Bool)

(assert (= bs!39947 start!117758))

(declare-fun m!1266267 () Bool)

(assert (=> bs!39947 m!1266267))

(push 1)

(assert (not start!117758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

