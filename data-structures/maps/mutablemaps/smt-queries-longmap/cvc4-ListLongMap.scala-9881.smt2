; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117048 () Bool)

(assert start!117048)

(declare-datatypes ((array!93608 0))(
  ( (array!93609 (arr!45201 (Array (_ BitVec 32) (_ BitVec 64))) (size!45752 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93608)

(declare-fun from!3564 () (_ BitVec 32))

(declare-fun to!360 () (_ BitVec 32))

(assert (=> start!117048 (and (bvslt (size!45752 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45752 a!4197)) (bvslt to!360 #b00000000000000000000000000000000))))

(declare-fun array_inv!34146 (array!93608) Bool)

(assert (=> start!117048 (array_inv!34146 a!4197)))

(assert (=> start!117048 true))

(declare-fun bs!39622 () Bool)

(assert (= bs!39622 start!117048))

(declare-fun m!1262329 () Bool)

(assert (=> bs!39622 m!1262329))

(push 1)

(assert (not start!117048))

(check-sat)

(pop 1)

(push 1)

(check-sat)

