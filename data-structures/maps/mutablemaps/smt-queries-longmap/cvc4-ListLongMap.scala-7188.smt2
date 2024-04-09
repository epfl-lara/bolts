; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92170 () Bool)

(assert start!92170)

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!65970 0))(
  ( (array!65971 (arr!31725 (Array (_ BitVec 32) (_ BitVec 64))) (size!32262 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!65970)

(assert (=> start!92170 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32262 a!3488)) (bvslt (size!32262 a!3488) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!32262 a!3488)))))

(assert (=> start!92170 true))

(declare-fun array_inv!24347 (array!65970) Bool)

(assert (=> start!92170 (array_inv!24347 a!3488)))

(declare-fun bs!30641 () Bool)

(assert (= bs!30641 start!92170))

(declare-fun m!969139 () Bool)

(assert (=> bs!30641 m!969139))

(push 1)

(assert (not start!92170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

