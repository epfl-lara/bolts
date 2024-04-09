; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69804 () Bool)

(assert start!69804)

(declare-datatypes ((array!44152 0))(
  ( (array!44153 (arr!21139 (Array (_ BitVec 32) (_ BitVec 64))) (size!21560 (_ BitVec 32))) )
))
(declare-fun a2!179 () array!44152)

(declare-fun to!101 () (_ BitVec 32))

(declare-fun from!2863 () (_ BitVec 32))

(declare-fun a1!214 () array!44152)

(assert (=> start!69804 (and (= (size!21560 a1!214) (size!21560 a2!179)) (bvsge from!2863 #b00000000000000000000000000000000) (bvsle from!2863 to!101) (bvsle to!101 (size!21560 a1!214)) (bvslt (size!21560 a1!214) #b01111111111111111111111111111111) (bvslt from!2863 to!101) (= (select (arr!21139 a1!214) from!2863) (select (arr!21139 a2!179) from!2863)) (bvsge (bvsub to!101 from!2863) (bvsub (bvadd #b00000000000000000000000000000001 to!101) from!2863)))))

(declare-fun array_inv!16913 (array!44152) Bool)

(assert (=> start!69804 (array_inv!16913 a1!214)))

(assert (=> start!69804 (array_inv!16913 a2!179)))

(assert (=> start!69804 true))

(declare-fun bs!22529 () Bool)

(assert (= bs!22529 start!69804))

(declare-fun m!754411 () Bool)

(assert (=> bs!22529 m!754411))

(declare-fun m!754413 () Bool)

(assert (=> bs!22529 m!754413))

(declare-fun m!754415 () Bool)

(assert (=> bs!22529 m!754415))

(declare-fun m!754417 () Bool)

(assert (=> bs!22529 m!754417))

(check-sat (not start!69804))
(check-sat)
