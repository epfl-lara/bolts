; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136868 () Bool)

(assert start!136868)

(declare-fun from!2846 () (_ BitVec 32))

(declare-datatypes ((array!105788 0))(
  ( (array!105789 (arr!50997 (Array (_ BitVec 32) (_ BitVec 64))) (size!51548 (_ BitVec 32))) )
))
(declare-fun a!3471 () array!105788)

(declare-fun k!2737 () (_ BitVec 64))

(assert (=> start!136868 (and (bvsge from!2846 #b00000000000000000000000000000000) (bvslt from!2846 (size!51548 a!3471)) (bvslt (size!51548 a!3471) #b01111111111111111111111111111111) (not (= (select (arr!50997 a!3471) from!2846) k!2737)) (bvslt (bvadd #b00000000000000000000000000000001 from!2846) (size!51548 a!3471)) (bvslt (bvadd #b00000000000000000000000000000001 from!2846) #b00000000000000000000000000000000))))

(assert (=> start!136868 true))

(declare-fun array_inv!39642 (array!105788) Bool)

(assert (=> start!136868 (array_inv!39642 a!3471)))

(declare-fun bs!45690 () Bool)

(assert (= bs!45690 start!136868))

(declare-fun m!1450765 () Bool)

(assert (=> bs!45690 m!1450765))

(declare-fun m!1450767 () Bool)

(assert (=> bs!45690 m!1450767))

(push 1)

(assert (not start!136868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

