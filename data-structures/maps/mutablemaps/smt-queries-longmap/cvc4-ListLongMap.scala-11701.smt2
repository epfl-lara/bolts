; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136874 () Bool)

(assert start!136874)

(declare-fun from!2846 () (_ BitVec 32))

(declare-datatypes ((array!105794 0))(
  ( (array!105795 (arr!51000 (Array (_ BitVec 32) (_ BitVec 64))) (size!51551 (_ BitVec 32))) )
))
(declare-fun a!3471 () array!105794)

(assert (=> start!136874 (and (bvsge from!2846 #b00000000000000000000000000000000) (bvslt from!2846 (size!51551 a!3471)) (bvslt (size!51551 a!3471) #b01111111111111111111111111111111) (bvslt (bvsub (size!51551 a!3471) from!2846) #b00000000000000000000000000000000))))

(assert (=> start!136874 true))

(declare-fun array_inv!39645 (array!105794) Bool)

(assert (=> start!136874 (array_inv!39645 a!3471)))

(declare-fun bs!45696 () Bool)

(assert (= bs!45696 start!136874))

(declare-fun m!1450773 () Bool)

(assert (=> bs!45696 m!1450773))

(push 1)

(assert (not start!136874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

