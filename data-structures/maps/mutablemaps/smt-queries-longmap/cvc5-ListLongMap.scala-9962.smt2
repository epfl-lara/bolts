; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117698 () Bool)

(assert start!117698)

(declare-datatypes ((array!94111 0))(
  ( (array!94112 (arr!45442 (Array (_ BitVec 32) (_ BitVec 64))) (size!45993 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94111)

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun to!105 () (_ BitVec 32))

(assert (=> start!117698 (and (bvslt (size!45993 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45993 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvslt (bvsub to!105 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun array_inv!34387 (array!94111) Bool)

(assert (=> start!117698 (array_inv!34387 a!3931)))

(assert (=> start!117698 true))

(declare-fun bs!39914 () Bool)

(assert (= bs!39914 start!117698))

(declare-fun m!1266129 () Bool)

(assert (=> bs!39914 m!1266129))

(push 1)

(assert (not start!117698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

