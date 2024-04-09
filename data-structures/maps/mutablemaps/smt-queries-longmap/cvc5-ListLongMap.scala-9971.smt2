; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117770 () Bool)

(assert start!117770)

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94168 0))(
  ( (array!94169 (arr!45469 (Array (_ BitVec 32) (_ BitVec 64))) (size!46020 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94168)

(assert (=> start!117770 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46020 a!3464)) (bvslt (size!46020 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94) (bvsge from!2839 (size!46020 a!3464)))))

(assert (=> start!117770 true))

(declare-fun array_inv!34414 (array!94168) Bool)

(assert (=> start!117770 (array_inv!34414 a!3464)))

(declare-fun bs!39959 () Bool)

(assert (= bs!39959 start!117770))

(declare-fun m!1266279 () Bool)

(assert (=> bs!39959 m!1266279))

(push 1)

(assert (not start!117770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

