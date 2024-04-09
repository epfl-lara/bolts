; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117766 () Bool)

(assert start!117766)

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94164 0))(
  ( (array!94165 (arr!45467 (Array (_ BitVec 32) (_ BitVec 64))) (size!46018 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94164)

(assert (=> start!117766 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46018 a!3464)) (bvslt (size!46018 a!3464) #b01111111111111111111111111111111) (bvsge from!2839 to!94) (bvsgt #b00000000000000000000000000000000 (bvsub (size!46018 a!3464) from!2839)))))

(assert (=> start!117766 true))

(declare-fun array_inv!34412 (array!94164) Bool)

(assert (=> start!117766 (array_inv!34412 a!3464)))

(declare-fun bs!39954 () Bool)

(assert (= bs!39954 start!117766))

(declare-fun m!1266275 () Bool)

(assert (=> bs!39954 m!1266275))

(check-sat (not start!117766))
(check-sat)
