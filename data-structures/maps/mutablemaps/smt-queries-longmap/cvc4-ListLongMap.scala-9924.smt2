; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117360 () Bool)

(assert start!117360)

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93872 0))(
  ( (array!93873 (arr!45330 (Array (_ BitVec 32) (_ BitVec 64))) (size!45881 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93872)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117360 (and (bvslt (size!45881 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45881 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvsge pivot!64 to!184) (bvsgt pivot!64 (size!45881 a!4010)))))

(declare-fun array_inv!34275 (array!93872) Bool)

(assert (=> start!117360 (array_inv!34275 a!4010)))

(assert (=> start!117360 true))

(declare-fun bs!39766 () Bool)

(assert (= bs!39766 start!117360))

(declare-fun m!1264933 () Bool)

(assert (=> bs!39766 m!1264933))

(push 1)

(assert (not start!117360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

