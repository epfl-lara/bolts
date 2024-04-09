; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117774 () Bool)

(assert start!117774)

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94172 0))(
  ( (array!94173 (arr!45471 (Array (_ BitVec 32) (_ BitVec 64))) (size!46022 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94172)

(assert (=> start!117774 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46022 a!3464)) (bvslt (size!46022 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94) (bvsge from!2839 (size!46022 a!3464)))))

(assert (=> start!117774 true))

(declare-fun array_inv!34416 (array!94172) Bool)

(assert (=> start!117774 (array_inv!34416 a!3464)))

(declare-fun bs!39961 () Bool)

(assert (= bs!39961 start!117774))

(declare-fun m!1266283 () Bool)

(assert (=> bs!39961 m!1266283))

(push 1)

(assert (not start!117774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

