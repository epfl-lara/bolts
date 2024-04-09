; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69784 () Bool)

(assert start!69784)

(declare-datatypes ((array!44132 0))(
  ( (array!44133 (arr!21129 (Array (_ BitVec 32) (_ BitVec 64))) (size!21550 (_ BitVec 32))) )
))
(declare-fun a2!179 () array!44132)

(declare-fun to!101 () (_ BitVec 32))

(declare-fun from!2863 () (_ BitVec 32))

(declare-fun a1!214 () array!44132)

(assert (=> start!69784 (and (= (size!21550 a1!214) (size!21550 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21550 a1!214)) (bvslt (size!21550 a1!214) #b01111111111111111111111111111111) (bvslt (bvsub (bvadd #b00000000000000000000000000000001 to!101) from!2863) #b00000000000000000000000000000000))))

(declare-fun array_inv!16903 (array!44132) Bool)

(assert (=> start!69784 (array_inv!16903 a1!214)))

(assert (=> start!69784 (array_inv!16903 a2!179)))

(assert (=> start!69784 true))

(declare-fun bs!22510 () Bool)

(assert (= bs!22510 start!69784))

(declare-fun m!754367 () Bool)

(assert (=> bs!22510 m!754367))

(declare-fun m!754369 () Bool)

(assert (=> bs!22510 m!754369))

(push 1)

(assert (not start!69784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

