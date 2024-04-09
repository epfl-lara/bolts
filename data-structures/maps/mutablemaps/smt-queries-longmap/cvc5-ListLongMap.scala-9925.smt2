; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117362 () Bool)

(assert start!117362)

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93874 0))(
  ( (array!93875 (arr!45331 (Array (_ BitVec 32) (_ BitVec 64))) (size!45882 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93874)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117362 (and (bvslt (size!45882 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45882 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvsge pivot!64 to!184) (bvslt pivot!64 #b00000000000000000000000000000000))))

(declare-fun array_inv!34276 (array!93874) Bool)

(assert (=> start!117362 (array_inv!34276 a!4010)))

(assert (=> start!117362 true))

(declare-fun bs!39770 () Bool)

(assert (= bs!39770 start!117362))

(declare-fun m!1264935 () Bool)

(assert (=> bs!39770 m!1264935))

(push 1)

(assert (not start!117362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

