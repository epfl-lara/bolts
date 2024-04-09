; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69782 () Bool)

(assert start!69782)

(declare-datatypes ((array!44130 0))(
  ( (array!44131 (arr!21128 (Array (_ BitVec 32) (_ BitVec 64))) (size!21549 (_ BitVec 32))) )
))
(declare-fun a2!179 () array!44130)

(declare-fun to!101 () (_ BitVec 32))

(declare-fun from!2863 () (_ BitVec 32))

(declare-fun a1!214 () array!44130)

(assert (=> start!69782 (and (= (size!21549 a1!214) (size!21549 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21549 a1!214)) (bvslt (size!21549 a1!214) #b01111111111111111111111111111111) (bvslt from!2863 to!101) (= (select (arr!21128 a1!214) from!2863) (select (arr!21128 a2!179) from!2863)) (bvslt (bvadd #b00000000000000000000000000000001 from!2863) #b00000000000000000000000000000000))))

(declare-fun array_inv!16902 (array!44130) Bool)

(assert (=> start!69782 (array_inv!16902 a1!214)))

(assert (=> start!69782 (array_inv!16902 a2!179)))

(assert (=> start!69782 true))

(declare-fun bs!22506 () Bool)

(assert (= bs!22506 start!69782))

(declare-fun m!754359 () Bool)

(assert (=> bs!22506 m!754359))

(declare-fun m!754361 () Bool)

(assert (=> bs!22506 m!754361))

(declare-fun m!754363 () Bool)

(assert (=> bs!22506 m!754363))

(declare-fun m!754365 () Bool)

(assert (=> bs!22506 m!754365))

(push 1)

(assert (not start!69782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

