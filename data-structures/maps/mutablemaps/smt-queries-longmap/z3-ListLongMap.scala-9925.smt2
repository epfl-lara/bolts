; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117364 () Bool)

(assert start!117364)

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93876 0))(
  ( (array!93877 (arr!45332 (Array (_ BitVec 32) (_ BitVec 64))) (size!45883 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93876)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117364 (and (bvslt (size!45883 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45883 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvsge pivot!64 to!184) (bvslt pivot!64 #b00000000000000000000000000000000))))

(declare-fun array_inv!34277 (array!93876) Bool)

(assert (=> start!117364 (array_inv!34277 a!4010)))

(assert (=> start!117364 true))

(declare-fun bs!39771 () Bool)

(assert (= bs!39771 start!117364))

(declare-fun m!1264937 () Bool)

(assert (=> bs!39771 m!1264937))

(check-sat (not start!117364))
(check-sat)
