; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117772 () Bool)

(assert start!117772)

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94170 0))(
  ( (array!94171 (arr!45470 (Array (_ BitVec 32) (_ BitVec 64))) (size!46021 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94170)

(assert (=> start!117772 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46021 a!3464)) (bvslt (size!46021 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94) (bvsge from!2839 (size!46021 a!3464)))))

(assert (=> start!117772 true))

(declare-fun array_inv!34415 (array!94170) Bool)

(assert (=> start!117772 (array_inv!34415 a!3464)))

(declare-fun bs!39960 () Bool)

(assert (= bs!39960 start!117772))

(declare-fun m!1266281 () Bool)

(assert (=> bs!39960 m!1266281))

(check-sat (not start!117772))
(check-sat)
