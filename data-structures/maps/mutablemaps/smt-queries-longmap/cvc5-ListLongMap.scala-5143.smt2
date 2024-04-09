; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69802 () Bool)

(assert start!69802)

(declare-datatypes ((array!44150 0))(
  ( (array!44151 (arr!21138 (Array (_ BitVec 32) (_ BitVec 64))) (size!21559 (_ BitVec 32))) )
))
(declare-fun a2!179 () array!44150)

(declare-fun to!101 () (_ BitVec 32))

(declare-fun from!2863 () (_ BitVec 32))

(declare-fun a1!214 () array!44150)

(assert (=> start!69802 (and (= (size!21559 a1!214) (size!21559 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21559 a1!214)) (bvslt (size!21559 a1!214) #b01111111111111111111111111111111) (bvslt from!2863 to!101) (= (select (arr!21138 a1!214) from!2863) (select (arr!21138 a2!179) from!2863)) (bvsge (bvsub to!101 from!2863) (bvsub (bvadd #b00000000000000000000000000000001 to!101) from!2863)))))

(declare-fun array_inv!16912 (array!44150) Bool)

(assert (=> start!69802 (array_inv!16912 a1!214)))

(assert (=> start!69802 (array_inv!16912 a2!179)))

(assert (=> start!69802 true))

(declare-fun bs!22528 () Bool)

(assert (= bs!22528 start!69802))

(declare-fun m!754403 () Bool)

(assert (=> bs!22528 m!754403))

(declare-fun m!754405 () Bool)

(assert (=> bs!22528 m!754405))

(declare-fun m!754407 () Bool)

(assert (=> bs!22528 m!754407))

(declare-fun m!754409 () Bool)

(assert (=> bs!22528 m!754409))

(push 1)

(assert (not start!69802))

(check-sat)

(pop 1)

(push 1)

(check-sat)

