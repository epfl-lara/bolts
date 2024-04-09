; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117358 () Bool)

(assert start!117358)

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93870 0))(
  ( (array!93871 (arr!45329 (Array (_ BitVec 32) (_ BitVec 64))) (size!45880 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93870)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117358 (and (bvslt (size!45880 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45880 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvsge pivot!64 to!184) (bvsgt pivot!64 (size!45880 a!4010)))))

(declare-fun array_inv!34274 (array!93870) Bool)

(assert (=> start!117358 (array_inv!34274 a!4010)))

(assert (=> start!117358 true))

(declare-fun bs!39765 () Bool)

(assert (= bs!39765 start!117358))

(declare-fun m!1264931 () Bool)

(assert (=> bs!39765 m!1264931))

(check-sat (not start!117358))
(check-sat)
