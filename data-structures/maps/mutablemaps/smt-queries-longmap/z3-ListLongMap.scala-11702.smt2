; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136878 () Bool)

(assert start!136878)

(declare-fun from!2846 () (_ BitVec 32))

(declare-datatypes ((array!105798 0))(
  ( (array!105799 (arr!51002 (Array (_ BitVec 32) (_ BitVec 64))) (size!51553 (_ BitVec 32))) )
))
(declare-fun a!3471 () array!105798)

(declare-fun k0!2737 () (_ BitVec 64))

(assert (=> start!136878 (and (bvsge from!2846 #b00000000000000000000000000000000) (bvslt from!2846 (size!51553 a!3471)) (bvslt (size!51553 a!3471) #b01111111111111111111111111111111) (not (= (select (arr!51002 a!3471) from!2846) k0!2737)) (bvslt (bvadd #b00000000000000000000000000000001 from!2846) (size!51553 a!3471)) (bvsge (bvsub (size!51553 a!3471) (bvadd #b00000000000000000000000000000001 from!2846)) (bvsub (size!51553 a!3471) from!2846)))))

(assert (=> start!136878 true))

(declare-fun array_inv!39647 (array!105798) Bool)

(assert (=> start!136878 (array_inv!39647 a!3471)))

(declare-fun bs!45701 () Bool)

(assert (= bs!45701 start!136878))

(declare-fun m!1450779 () Bool)

(assert (=> bs!45701 m!1450779))

(declare-fun m!1450781 () Bool)

(assert (=> bs!45701 m!1450781))

(check-sat (not start!136878))
(check-sat)
