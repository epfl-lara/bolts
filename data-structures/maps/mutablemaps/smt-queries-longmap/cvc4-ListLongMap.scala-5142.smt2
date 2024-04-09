; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69800 () Bool)

(assert start!69800)

(declare-datatypes ((array!44148 0))(
  ( (array!44149 (arr!21137 (Array (_ BitVec 32) (_ BitVec 64))) (size!21558 (_ BitVec 32))) )
))
(declare-fun a2!179 () array!44148)

(declare-fun to!101 () (_ BitVec 32))

(declare-fun from!2863 () (_ BitVec 32))

(declare-fun a1!214 () array!44148)

(assert (=> start!69800 (and (= (size!21558 a1!214) (size!21558 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21558 a1!214)) (bvslt (size!21558 a1!214) #b01111111111111111111111111111111) (bvslt from!2863 to!101) (bvsge from!2863 (size!21558 a2!179)))))

(declare-fun array_inv!16911 (array!44148) Bool)

(assert (=> start!69800 (array_inv!16911 a1!214)))

(assert (=> start!69800 (array_inv!16911 a2!179)))

(assert (=> start!69800 true))

(declare-fun bs!22524 () Bool)

(assert (= bs!22524 start!69800))

(declare-fun m!754399 () Bool)

(assert (=> bs!22524 m!754399))

(declare-fun m!754401 () Bool)

(assert (=> bs!22524 m!754401))

(push 1)

(assert (not start!69800))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

