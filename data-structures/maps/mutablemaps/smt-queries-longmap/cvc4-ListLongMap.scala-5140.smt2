; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69788 () Bool)

(assert start!69788)

(declare-datatypes ((array!44136 0))(
  ( (array!44137 (arr!21131 (Array (_ BitVec 32) (_ BitVec 64))) (size!21552 (_ BitVec 32))) )
))
(declare-fun a2!179 () array!44136)

(declare-fun to!101 () (_ BitVec 32))

(declare-fun from!2863 () (_ BitVec 32))

(declare-fun a1!214 () array!44136)

(assert (=> start!69788 (and (= (size!21552 a1!214) (size!21552 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21552 a1!214)) (bvslt (size!21552 a1!214) #b01111111111111111111111111111111) (bvslt (bvsub (bvadd #b00000000000000000000000000000001 to!101) from!2863) #b00000000000000000000000000000000))))

(declare-fun array_inv!16905 (array!44136) Bool)

(assert (=> start!69788 (array_inv!16905 a1!214)))

(assert (=> start!69788 (array_inv!16905 a2!179)))

(assert (=> start!69788 true))

(declare-fun bs!22512 () Bool)

(assert (= bs!22512 start!69788))

(declare-fun m!754375 () Bool)

(assert (=> bs!22512 m!754375))

(declare-fun m!754377 () Bool)

(assert (=> bs!22512 m!754377))

(push 1)

(assert (not start!69788))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

