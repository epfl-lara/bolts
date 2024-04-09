; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117742 () Bool)

(assert start!117742)

(declare-fun pivot!39 () (_ BitVec 32))

(declare-fun from!3356 () (_ BitVec 32))

(declare-datatypes ((array!94140 0))(
  ( (array!94141 (arr!45455 (Array (_ BitVec 32) (_ BitVec 64))) (size!46006 (_ BitVec 32))) )
))
(declare-fun a!3978 () array!94140)

(declare-fun to!152 () (_ BitVec 32))

(assert (=> start!117742 (and (bvslt (size!46006 a!3978) #b01111111111111111111111111111111) (bvsge from!3356 #b00000000000000000000000000000000) (bvsgt to!152 from!3356) (bvsle to!152 (size!46006 a!3978)) (bvsge pivot!39 from!3356) (bvslt pivot!39 to!152) (bvsgt from!3356 to!152))))

(declare-fun array_inv!34400 (array!94140) Bool)

(assert (=> start!117742 (array_inv!34400 a!3978)))

(assert (=> start!117742 true))

(declare-fun bs!39936 () Bool)

(assert (= bs!39936 start!117742))

(declare-fun m!1266227 () Bool)

(assert (=> bs!39936 m!1266227))

(check-sat (not start!117742))
(check-sat)
