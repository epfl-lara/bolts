; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69786 () Bool)

(assert start!69786)

(declare-datatypes ((array!44134 0))(
  ( (array!44135 (arr!21130 (Array (_ BitVec 32) (_ BitVec 64))) (size!21551 (_ BitVec 32))) )
))
(declare-fun a2!179 () array!44134)

(declare-fun to!101 () (_ BitVec 32))

(declare-fun from!2863 () (_ BitVec 32))

(declare-fun a1!214 () array!44134)

(assert (=> start!69786 (and (= (size!21551 a1!214) (size!21551 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21551 a1!214)) (bvslt (size!21551 a1!214) #b01111111111111111111111111111111) (bvslt (bvsub (bvadd #b00000000000000000000000000000001 to!101) from!2863) #b00000000000000000000000000000000))))

(declare-fun array_inv!16904 (array!44134) Bool)

(assert (=> start!69786 (array_inv!16904 a1!214)))

(assert (=> start!69786 (array_inv!16904 a2!179)))

(assert (=> start!69786 true))

(declare-fun bs!22511 () Bool)

(assert (= bs!22511 start!69786))

(declare-fun m!754371 () Bool)

(assert (=> bs!22511 m!754371))

(declare-fun m!754373 () Bool)

(assert (=> bs!22511 m!754373))

(check-sat (not start!69786))
(check-sat)
