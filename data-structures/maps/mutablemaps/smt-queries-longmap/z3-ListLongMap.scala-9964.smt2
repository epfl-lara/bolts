; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117730 () Bool)

(assert start!117730)

(declare-fun pivot!39 () (_ BitVec 32))

(declare-fun from!3356 () (_ BitVec 32))

(declare-datatypes ((array!94128 0))(
  ( (array!94129 (arr!45449 (Array (_ BitVec 32) (_ BitVec 64))) (size!46000 (_ BitVec 32))) )
))
(declare-fun a!3978 () array!94128)

(declare-fun to!152 () (_ BitVec 32))

(assert (=> start!117730 (and (bvslt (size!46000 a!3978) #b01111111111111111111111111111111) (bvsge from!3356 #b00000000000000000000000000000000) (bvsgt to!152 from!3356) (bvsle to!152 (size!46000 a!3978)) (bvsge pivot!39 from!3356) (bvslt pivot!39 to!152) (bvsgt pivot!39 (size!46000 a!3978)))))

(declare-fun array_inv!34394 (array!94128) Bool)

(assert (=> start!117730 (array_inv!34394 a!3978)))

(assert (=> start!117730 true))

(declare-fun bs!39924 () Bool)

(assert (= bs!39924 start!117730))

(declare-fun m!1266215 () Bool)

(assert (=> bs!39924 m!1266215))

(check-sat (not start!117730))
(check-sat)
