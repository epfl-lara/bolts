; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117768 () Bool)

(assert start!117768)

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94166 0))(
  ( (array!94167 (arr!45468 (Array (_ BitVec 32) (_ BitVec 64))) (size!46019 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94166)

(assert (=> start!117768 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46019 a!3464)) (bvslt (size!46019 a!3464) #b01111111111111111111111111111111) (bvsge from!2839 to!94) (bvsgt #b00000000000000000000000000000000 (bvsub (size!46019 a!3464) from!2839)))))

(assert (=> start!117768 true))

(declare-fun array_inv!34413 (array!94166) Bool)

(assert (=> start!117768 (array_inv!34413 a!3464)))

(declare-fun bs!39955 () Bool)

(assert (= bs!39955 start!117768))

(declare-fun m!1266277 () Bool)

(assert (=> bs!39955 m!1266277))

(push 1)

(assert (not start!117768))

(check-sat)

(pop 1)

(push 1)

(check-sat)

