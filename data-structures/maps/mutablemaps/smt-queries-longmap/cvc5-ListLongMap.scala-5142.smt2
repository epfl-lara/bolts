; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69796 () Bool)

(assert start!69796)

(declare-datatypes ((array!44144 0))(
  ( (array!44145 (arr!21135 (Array (_ BitVec 32) (_ BitVec 64))) (size!21556 (_ BitVec 32))) )
))
(declare-fun a2!179 () array!44144)

(declare-fun from!2863 () (_ BitVec 32))

(declare-fun a1!214 () array!44144)

(declare-fun to!101 () (_ BitVec 32))

(assert (=> start!69796 (and (= (size!21556 a1!214) (size!21556 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21556 a1!214)) (bvslt (size!21556 a1!214) #b01111111111111111111111111111111) (bvslt from!2863 to!101) (bvsge from!2863 (size!21556 a2!179)))))

(declare-fun array_inv!16909 (array!44144) Bool)

(assert (=> start!69796 (array_inv!16909 a1!214)))

(assert (=> start!69796 (array_inv!16909 a2!179)))

(assert (=> start!69796 true))

(declare-fun bs!22522 () Bool)

(assert (= bs!22522 start!69796))

(declare-fun m!754391 () Bool)

(assert (=> bs!22522 m!754391))

(declare-fun m!754393 () Bool)

(assert (=> bs!22522 m!754393))

(push 1)

(assert (not start!69796))

(check-sat)

(pop 1)

(push 1)

(check-sat)

