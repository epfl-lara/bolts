; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136872 () Bool)

(assert start!136872)

(declare-fun from!2846 () (_ BitVec 32))

(declare-datatypes ((array!105792 0))(
  ( (array!105793 (arr!50999 (Array (_ BitVec 32) (_ BitVec 64))) (size!51550 (_ BitVec 32))) )
))
(declare-fun a!3471 () array!105792)

(assert (=> start!136872 (and (bvsge from!2846 #b00000000000000000000000000000000) (bvslt from!2846 (size!51550 a!3471)) (bvslt (size!51550 a!3471) #b01111111111111111111111111111111) (bvslt (bvsub (size!51550 a!3471) from!2846) #b00000000000000000000000000000000))))

(assert (=> start!136872 true))

(declare-fun array_inv!39644 (array!105792) Bool)

(assert (=> start!136872 (array_inv!39644 a!3471)))

(declare-fun bs!45695 () Bool)

(assert (= bs!45695 start!136872))

(declare-fun m!1450771 () Bool)

(assert (=> bs!45695 m!1450771))

(check-sat (not start!136872))
(check-sat)
