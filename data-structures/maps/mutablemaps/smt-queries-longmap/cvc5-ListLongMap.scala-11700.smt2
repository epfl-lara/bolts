; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136864 () Bool)

(assert start!136864)

(declare-fun from!2846 () (_ BitVec 32))

(declare-datatypes ((array!105784 0))(
  ( (array!105785 (arr!50995 (Array (_ BitVec 32) (_ BitVec 64))) (size!51546 (_ BitVec 32))) )
))
(declare-fun a!3471 () array!105784)

(declare-fun k!2737 () (_ BitVec 64))

(assert (=> start!136864 (and (bvsge from!2846 #b00000000000000000000000000000000) (bvslt from!2846 (size!51546 a!3471)) (bvslt (size!51546 a!3471) #b01111111111111111111111111111111) (not (= (select (arr!50995 a!3471) from!2846) k!2737)) (bvslt (bvadd #b00000000000000000000000000000001 from!2846) (size!51546 a!3471)) (bvslt (bvadd #b00000000000000000000000000000001 from!2846) #b00000000000000000000000000000000))))

(assert (=> start!136864 true))

(declare-fun array_inv!39640 (array!105784) Bool)

(assert (=> start!136864 (array_inv!39640 a!3471)))

(declare-fun bs!45688 () Bool)

(assert (= bs!45688 start!136864))

(declare-fun m!1450757 () Bool)

(assert (=> bs!45688 m!1450757))

(declare-fun m!1450759 () Bool)

(assert (=> bs!45688 m!1450759))

(push 1)

(assert (not start!136864))

(check-sat)

(pop 1)

(push 1)

(check-sat)

