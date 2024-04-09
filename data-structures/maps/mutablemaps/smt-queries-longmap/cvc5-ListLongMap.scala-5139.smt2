; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69778 () Bool)

(assert start!69778)

(declare-datatypes ((array!44126 0))(
  ( (array!44127 (arr!21126 (Array (_ BitVec 32) (_ BitVec 64))) (size!21547 (_ BitVec 32))) )
))
(declare-fun a2!179 () array!44126)

(declare-fun to!101 () (_ BitVec 32))

(declare-fun from!2863 () (_ BitVec 32))

(declare-fun a1!214 () array!44126)

(assert (=> start!69778 (and (= (size!21547 a1!214) (size!21547 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21547 a1!214)) (bvslt (size!21547 a1!214) #b01111111111111111111111111111111) (bvslt from!2863 to!101) (= (select (arr!21126 a1!214) from!2863) (select (arr!21126 a2!179) from!2863)) (bvslt (bvadd #b00000000000000000000000000000001 from!2863) #b00000000000000000000000000000000))))

(declare-fun array_inv!16900 (array!44126) Bool)

(assert (=> start!69778 (array_inv!16900 a1!214)))

(assert (=> start!69778 (array_inv!16900 a2!179)))

(assert (=> start!69778 true))

(declare-fun bs!22504 () Bool)

(assert (= bs!22504 start!69778))

(declare-fun m!754343 () Bool)

(assert (=> bs!22504 m!754343))

(declare-fun m!754345 () Bool)

(assert (=> bs!22504 m!754345))

(declare-fun m!754347 () Bool)

(assert (=> bs!22504 m!754347))

(declare-fun m!754349 () Bool)

(assert (=> bs!22504 m!754349))

(push 1)

(assert (not start!69778))

(check-sat)

(pop 1)

(push 1)

(check-sat)

