; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117762 () Bool)

(assert start!117762)

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94160 0))(
  ( (array!94161 (arr!45465 (Array (_ BitVec 32) (_ BitVec 64))) (size!46016 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94160)

(assert (=> start!117762 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46016 a!3464)) (bvslt (size!46016 a!3464) #b01111111111111111111111111111111) (bvslt (bvsub (size!46016 a!3464) from!2839) #b00000000000000000000000000000000))))

(assert (=> start!117762 true))

(declare-fun array_inv!34410 (array!94160) Bool)

(assert (=> start!117762 (array_inv!34410 a!3464)))

(declare-fun bs!39949 () Bool)

(assert (= bs!39949 start!117762))

(declare-fun m!1266271 () Bool)

(assert (=> bs!39949 m!1266271))

(push 1)

(assert (not start!117762))

(check-sat)

(pop 1)

(push 1)

(check-sat)

