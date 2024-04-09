; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117356 () Bool)

(assert start!117356)

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93868 0))(
  ( (array!93869 (arr!45328 (Array (_ BitVec 32) (_ BitVec 64))) (size!45879 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93868)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117356 (and (bvslt (size!45879 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45879 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvsge pivot!64 to!184) (bvsgt pivot!64 (size!45879 a!4010)))))

(declare-fun array_inv!34273 (array!93868) Bool)

(assert (=> start!117356 (array_inv!34273 a!4010)))

(assert (=> start!117356 true))

(declare-fun bs!39764 () Bool)

(assert (= bs!39764 start!117356))

(declare-fun m!1264929 () Bool)

(assert (=> bs!39764 m!1264929))

(push 1)

(assert (not start!117356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

