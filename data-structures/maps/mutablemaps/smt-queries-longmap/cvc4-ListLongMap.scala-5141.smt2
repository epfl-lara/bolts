; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69794 () Bool)

(assert start!69794)

(declare-datatypes ((array!44142 0))(
  ( (array!44143 (arr!21134 (Array (_ BitVec 32) (_ BitVec 64))) (size!21555 (_ BitVec 32))) )
))
(declare-fun a2!179 () array!44142)

(declare-fun from!2863 () (_ BitVec 32))

(declare-fun a1!214 () array!44142)

(declare-fun to!101 () (_ BitVec 32))

(assert (=> start!69794 (and (= (size!21555 a1!214) (size!21555 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21555 a1!214)) (bvslt (size!21555 a1!214) #b01111111111111111111111111111111) (bvslt from!2863 to!101) (bvsge from!2863 (size!21555 a1!214)))))

(declare-fun array_inv!16908 (array!44142) Bool)

(assert (=> start!69794 (array_inv!16908 a1!214)))

(assert (=> start!69794 (array_inv!16908 a2!179)))

(assert (=> start!69794 true))

(declare-fun bs!22518 () Bool)

(assert (= bs!22518 start!69794))

(declare-fun m!754387 () Bool)

(assert (=> bs!22518 m!754387))

(declare-fun m!754389 () Bool)

(assert (=> bs!22518 m!754389))

(push 1)

(assert (not start!69794))

(check-sat)

(pop 1)

(push 1)

(check-sat)

