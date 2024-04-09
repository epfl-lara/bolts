; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136880 () Bool)

(assert start!136880)

(declare-fun from!2846 () (_ BitVec 32))

(declare-datatypes ((array!105800 0))(
  ( (array!105801 (arr!51003 (Array (_ BitVec 32) (_ BitVec 64))) (size!51554 (_ BitVec 32))) )
))
(declare-fun a!3471 () array!105800)

(declare-fun k!2737 () (_ BitVec 64))

(assert (=> start!136880 (and (bvsge from!2846 #b00000000000000000000000000000000) (bvslt from!2846 (size!51554 a!3471)) (bvslt (size!51554 a!3471) #b01111111111111111111111111111111) (not (= (select (arr!51003 a!3471) from!2846) k!2737)) (bvslt (bvadd #b00000000000000000000000000000001 from!2846) (size!51554 a!3471)) (bvsge (bvsub (size!51554 a!3471) (bvadd #b00000000000000000000000000000001 from!2846)) (bvsub (size!51554 a!3471) from!2846)))))

(assert (=> start!136880 true))

(declare-fun array_inv!39648 (array!105800) Bool)

(assert (=> start!136880 (array_inv!39648 a!3471)))

(declare-fun bs!45702 () Bool)

(assert (= bs!45702 start!136880))

(declare-fun m!1450783 () Bool)

(assert (=> bs!45702 m!1450783))

(declare-fun m!1450785 () Bool)

(assert (=> bs!45702 m!1450785))

(push 1)

(assert (not start!136880))

(check-sat)

(pop 1)

(push 1)

(check-sat)

