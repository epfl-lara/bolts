; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92166 () Bool)

(assert start!92166)

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!65966 0))(
  ( (array!65967 (arr!31723 (Array (_ BitVec 32) (_ BitVec 64))) (size!32260 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!65966)

(assert (=> start!92166 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32260 a!3488)) (bvslt (size!32260 a!3488) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!32260 a!3488)))))

(assert (=> start!92166 true))

(declare-fun array_inv!24345 (array!65966) Bool)

(assert (=> start!92166 (array_inv!24345 a!3488)))

(declare-fun bs!30639 () Bool)

(assert (= bs!30639 start!92166))

(declare-fun m!969135 () Bool)

(assert (=> bs!30639 m!969135))

(push 1)

(assert (not start!92166))

(check-sat)

(pop 1)

(push 1)

(check-sat)

