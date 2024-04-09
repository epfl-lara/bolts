; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117736 () Bool)

(assert start!117736)

(declare-fun pivot!39 () (_ BitVec 32))

(declare-fun from!3356 () (_ BitVec 32))

(declare-datatypes ((array!94134 0))(
  ( (array!94135 (arr!45452 (Array (_ BitVec 32) (_ BitVec 64))) (size!46003 (_ BitVec 32))) )
))
(declare-fun a!3978 () array!94134)

(declare-fun to!152 () (_ BitVec 32))

(assert (=> start!117736 (and (bvslt (size!46003 a!3978) #b01111111111111111111111111111111) (bvsge from!3356 #b00000000000000000000000000000000) (bvsgt to!152 from!3356) (bvsle to!152 (size!46003 a!3978)) (bvsge pivot!39 from!3356) (bvslt pivot!39 to!152) (or (bvsgt pivot!39 to!152) (bvslt pivot!39 #b00000000000000000000000000000000)))))

(declare-fun array_inv!34397 (array!94134) Bool)

(assert (=> start!117736 (array_inv!34397 a!3978)))

(assert (=> start!117736 true))

(declare-fun bs!39930 () Bool)

(assert (= bs!39930 start!117736))

(declare-fun m!1266221 () Bool)

(assert (=> bs!39930 m!1266221))

(check-sat (not start!117736))
(check-sat)
