; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136876 () Bool)

(assert start!136876)

(declare-fun from!2846 () (_ BitVec 32))

(declare-datatypes ((array!105796 0))(
  ( (array!105797 (arr!51001 (Array (_ BitVec 32) (_ BitVec 64))) (size!51552 (_ BitVec 32))) )
))
(declare-fun a!3471 () array!105796)

(declare-fun k!2737 () (_ BitVec 64))

(assert (=> start!136876 (and (bvsge from!2846 #b00000000000000000000000000000000) (bvslt from!2846 (size!51552 a!3471)) (bvslt (size!51552 a!3471) #b01111111111111111111111111111111) (not (= (select (arr!51001 a!3471) from!2846) k!2737)) (bvslt (bvadd #b00000000000000000000000000000001 from!2846) (size!51552 a!3471)) (bvsge (bvsub (size!51552 a!3471) (bvadd #b00000000000000000000000000000001 from!2846)) (bvsub (size!51552 a!3471) from!2846)))))

(assert (=> start!136876 true))

(declare-fun array_inv!39646 (array!105796) Bool)

(assert (=> start!136876 (array_inv!39646 a!3471)))

(declare-fun bs!45700 () Bool)

(assert (= bs!45700 start!136876))

(declare-fun m!1450775 () Bool)

(assert (=> bs!45700 m!1450775))

(declare-fun m!1450777 () Bool)

(assert (=> bs!45700 m!1450777))

(push 1)

(assert (not start!136876))

(check-sat)

(pop 1)

(push 1)

(check-sat)

