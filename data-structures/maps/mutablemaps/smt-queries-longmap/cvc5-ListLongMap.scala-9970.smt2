; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117764 () Bool)

(assert start!117764)

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94162 0))(
  ( (array!94163 (arr!45466 (Array (_ BitVec 32) (_ BitVec 64))) (size!46017 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94162)

(assert (=> start!117764 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46017 a!3464)) (bvslt (size!46017 a!3464) #b01111111111111111111111111111111) (bvsge from!2839 to!94) (bvsgt #b00000000000000000000000000000000 (bvsub (size!46017 a!3464) from!2839)))))

(assert (=> start!117764 true))

(declare-fun array_inv!34411 (array!94162) Bool)

(assert (=> start!117764 (array_inv!34411 a!3464)))

(declare-fun bs!39953 () Bool)

(assert (= bs!39953 start!117764))

(declare-fun m!1266273 () Bool)

(assert (=> bs!39953 m!1266273))

(push 1)

(assert (not start!117764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

