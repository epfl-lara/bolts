; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117760 () Bool)

(assert start!117760)

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94158 0))(
  ( (array!94159 (arr!45464 (Array (_ BitVec 32) (_ BitVec 64))) (size!46015 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94158)

(assert (=> start!117760 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46015 a!3464)) (bvslt (size!46015 a!3464) #b01111111111111111111111111111111) (bvslt (bvsub (size!46015 a!3464) from!2839) #b00000000000000000000000000000000))))

(assert (=> start!117760 true))

(declare-fun array_inv!34409 (array!94158) Bool)

(assert (=> start!117760 (array_inv!34409 a!3464)))

(declare-fun bs!39948 () Bool)

(assert (= bs!39948 start!117760))

(declare-fun m!1266269 () Bool)

(assert (=> bs!39948 m!1266269))

(check-sat (not start!117760))
(check-sat)
