; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69792 () Bool)

(assert start!69792)

(declare-datatypes ((array!44140 0))(
  ( (array!44141 (arr!21133 (Array (_ BitVec 32) (_ BitVec 64))) (size!21554 (_ BitVec 32))) )
))
(declare-fun a2!179 () array!44140)

(declare-fun to!101 () (_ BitVec 32))

(declare-fun from!2863 () (_ BitVec 32))

(declare-fun a1!214 () array!44140)

(assert (=> start!69792 (and (= (size!21554 a1!214) (size!21554 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21554 a1!214)) (bvslt (size!21554 a1!214) #b01111111111111111111111111111111) (bvslt from!2863 to!101) (bvsge from!2863 (size!21554 a1!214)))))

(declare-fun array_inv!16907 (array!44140) Bool)

(assert (=> start!69792 (array_inv!16907 a1!214)))

(assert (=> start!69792 (array_inv!16907 a2!179)))

(assert (=> start!69792 true))

(declare-fun bs!22517 () Bool)

(assert (= bs!22517 start!69792))

(declare-fun m!754383 () Bool)

(assert (=> bs!22517 m!754383))

(declare-fun m!754385 () Bool)

(assert (=> bs!22517 m!754385))

(check-sat (not start!69792))
(check-sat)
