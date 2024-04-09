; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69798 () Bool)

(assert start!69798)

(declare-datatypes ((array!44146 0))(
  ( (array!44147 (arr!21136 (Array (_ BitVec 32) (_ BitVec 64))) (size!21557 (_ BitVec 32))) )
))
(declare-fun a2!179 () array!44146)

(declare-fun to!101 () (_ BitVec 32))

(declare-fun a1!214 () array!44146)

(declare-fun from!2863 () (_ BitVec 32))

(assert (=> start!69798 (and (= (size!21557 a1!214) (size!21557 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21557 a1!214)) (bvslt (size!21557 a1!214) #b01111111111111111111111111111111) (bvslt from!2863 to!101) (bvsge from!2863 (size!21557 a2!179)))))

(declare-fun array_inv!16910 (array!44146) Bool)

(assert (=> start!69798 (array_inv!16910 a1!214)))

(assert (=> start!69798 (array_inv!16910 a2!179)))

(assert (=> start!69798 true))

(declare-fun bs!22523 () Bool)

(assert (= bs!22523 start!69798))

(declare-fun m!754395 () Bool)

(assert (=> bs!22523 m!754395))

(declare-fun m!754397 () Bool)

(assert (=> bs!22523 m!754397))

(check-sat (not start!69798))
(check-sat)
