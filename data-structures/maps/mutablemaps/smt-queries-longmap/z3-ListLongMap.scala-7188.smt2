; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92168 () Bool)

(assert start!92168)

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!65968 0))(
  ( (array!65969 (arr!31724 (Array (_ BitVec 32) (_ BitVec 64))) (size!32261 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!65968)

(assert (=> start!92168 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32261 a!3488)) (bvslt (size!32261 a!3488) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!32261 a!3488)))))

(assert (=> start!92168 true))

(declare-fun array_inv!24346 (array!65968) Bool)

(assert (=> start!92168 (array_inv!24346 a!3488)))

(declare-fun bs!30640 () Bool)

(assert (= bs!30640 start!92168))

(declare-fun m!969137 () Bool)

(assert (=> bs!30640 m!969137))

(check-sat (not start!92168))
(check-sat)
