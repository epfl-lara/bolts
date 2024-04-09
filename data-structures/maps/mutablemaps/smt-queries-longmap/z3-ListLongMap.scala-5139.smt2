; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69780 () Bool)

(assert start!69780)

(declare-fun to!101 () (_ BitVec 32))

(declare-fun from!2863 () (_ BitVec 32))

(declare-datatypes ((array!44128 0))(
  ( (array!44129 (arr!21127 (Array (_ BitVec 32) (_ BitVec 64))) (size!21548 (_ BitVec 32))) )
))
(declare-fun a1!214 () array!44128)

(declare-fun a2!179 () array!44128)

(assert (=> start!69780 (and (= (size!21548 a1!214) (size!21548 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21548 a1!214)) (bvslt (size!21548 a1!214) #b01111111111111111111111111111111) (bvslt from!2863 to!101) (= (select (arr!21127 a1!214) from!2863) (select (arr!21127 a2!179) from!2863)) (bvslt (bvadd #b00000000000000000000000000000001 from!2863) #b00000000000000000000000000000000))))

(declare-fun array_inv!16901 (array!44128) Bool)

(assert (=> start!69780 (array_inv!16901 a1!214)))

(assert (=> start!69780 (array_inv!16901 a2!179)))

(assert (=> start!69780 true))

(declare-fun bs!22505 () Bool)

(assert (= bs!22505 start!69780))

(declare-fun m!754351 () Bool)

(assert (=> bs!22505 m!754351))

(declare-fun m!754353 () Bool)

(assert (=> bs!22505 m!754353))

(declare-fun m!754355 () Bool)

(assert (=> bs!22505 m!754355))

(declare-fun m!754357 () Bool)

(assert (=> bs!22505 m!754357))

(check-sat (not start!69780))
(check-sat)
