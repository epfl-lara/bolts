; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69790 () Bool)

(assert start!69790)

(declare-datatypes ((array!44138 0))(
  ( (array!44139 (arr!21132 (Array (_ BitVec 32) (_ BitVec 64))) (size!21553 (_ BitVec 32))) )
))
(declare-fun a2!179 () array!44138)

(declare-fun to!101 () (_ BitVec 32))

(declare-fun from!2863 () (_ BitVec 32))

(declare-fun a1!214 () array!44138)

(assert (=> start!69790 (and (= (size!21553 a1!214) (size!21553 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21553 a1!214)) (bvslt (size!21553 a1!214) #b01111111111111111111111111111111) (bvslt from!2863 to!101) (bvsge from!2863 (size!21553 a1!214)))))

(declare-fun array_inv!16906 (array!44138) Bool)

(assert (=> start!69790 (array_inv!16906 a1!214)))

(assert (=> start!69790 (array_inv!16906 a2!179)))

(assert (=> start!69790 true))

(declare-fun bs!22516 () Bool)

(assert (= bs!22516 start!69790))

(declare-fun m!754379 () Bool)

(assert (=> bs!22516 m!754379))

(declare-fun m!754381 () Bool)

(assert (=> bs!22516 m!754381))

(push 1)

(assert (not start!69790))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

