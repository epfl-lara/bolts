; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136870 () Bool)

(assert start!136870)

(declare-fun from!2846 () (_ BitVec 32))

(declare-datatypes ((array!105790 0))(
  ( (array!105791 (arr!50998 (Array (_ BitVec 32) (_ BitVec 64))) (size!51549 (_ BitVec 32))) )
))
(declare-fun a!3471 () array!105790)

(assert (=> start!136870 (and (bvsge from!2846 #b00000000000000000000000000000000) (bvslt from!2846 (size!51549 a!3471)) (bvslt (size!51549 a!3471) #b01111111111111111111111111111111) (bvslt (bvsub (size!51549 a!3471) from!2846) #b00000000000000000000000000000000))))

(assert (=> start!136870 true))

(declare-fun array_inv!39643 (array!105790) Bool)

(assert (=> start!136870 (array_inv!39643 a!3471)))

(declare-fun bs!45694 () Bool)

(assert (= bs!45694 start!136870))

(declare-fun m!1450769 () Bool)

(assert (=> bs!45694 m!1450769))

(push 1)

(assert (not start!136870))

(check-sat)

(pop 1)

(push 1)

(check-sat)

