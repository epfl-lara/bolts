; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69806 () Bool)

(assert start!69806)

(declare-datatypes ((array!44154 0))(
  ( (array!44155 (arr!21140 (Array (_ BitVec 32) (_ BitVec 64))) (size!21561 (_ BitVec 32))) )
))
(declare-fun a2!179 () array!44154)

(declare-fun to!101 () (_ BitVec 32))

(declare-fun from!2863 () (_ BitVec 32))

(declare-fun a1!214 () array!44154)

(assert (=> start!69806 (and (= (size!21561 a1!214) (size!21561 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21561 a1!214)) (bvslt (size!21561 a1!214) #b01111111111111111111111111111111) (bvslt from!2863 to!101) (= (select (arr!21140 a1!214) from!2863) (select (arr!21140 a2!179) from!2863)) (bvsge (bvsub to!101 from!2863) (bvsub (bvadd #b00000000000000000000000000000001 to!101) from!2863)))))

(declare-fun array_inv!16914 (array!44154) Bool)

(assert (=> start!69806 (array_inv!16914 a1!214)))

(assert (=> start!69806 (array_inv!16914 a2!179)))

(assert (=> start!69806 true))

(declare-fun bs!22530 () Bool)

(assert (= bs!22530 start!69806))

(declare-fun m!754419 () Bool)

(assert (=> bs!22530 m!754419))

(declare-fun m!754421 () Bool)

(assert (=> bs!22530 m!754421))

(declare-fun m!754423 () Bool)

(assert (=> bs!22530 m!754423))

(declare-fun m!754425 () Bool)

(assert (=> bs!22530 m!754425))

(push 1)

(assert (not start!69806))

(check-sat)

(pop 1)

(push 1)

(check-sat)

