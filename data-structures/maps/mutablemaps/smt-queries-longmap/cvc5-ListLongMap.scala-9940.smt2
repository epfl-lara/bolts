; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117506 () Bool)

(assert start!117506)

(declare-fun from!3339 () (_ BitVec 32))

(declare-fun pivot!34 () (_ BitVec 32))

(declare-datatypes ((array!93973 0))(
  ( (array!93974 (arr!45376 (Array (_ BitVec 32) (_ BitVec 64))) (size!45927 (_ BitVec 32))) )
))
(declare-fun a!3961 () array!93973)

(declare-fun to!135 () (_ BitVec 32))

(assert (=> start!117506 (and (bvslt (size!45927 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt to!135 from!3339) (bvsle to!135 (size!45927 a!3961)) (bvsge pivot!34 from!3339) (bvslt pivot!34 (bvsub to!135 #b00000000000000000000000000000001)) (bvsge pivot!34 to!135))))

(declare-fun array_inv!34321 (array!93973) Bool)

(assert (=> start!117506 (array_inv!34321 a!3961)))

(assert (=> start!117506 true))

(declare-fun bs!39830 () Bool)

(assert (= bs!39830 start!117506))

(declare-fun m!1265367 () Bool)

(assert (=> bs!39830 m!1265367))

(push 1)

(assert (not start!117506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

