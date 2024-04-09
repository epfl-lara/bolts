; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117044 () Bool)

(assert start!117044)

(declare-datatypes ((array!93604 0))(
  ( (array!93605 (arr!45199 (Array (_ BitVec 32) (_ BitVec 64))) (size!45750 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93604)

(declare-fun from!3564 () (_ BitVec 32))

(declare-fun to!360 () (_ BitVec 32))

(assert (=> start!117044 (and (bvslt (size!45750 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45750 a!4197)) (bvslt to!360 #b00000000000000000000000000000000))))

(declare-fun array_inv!34144 (array!93604) Bool)

(assert (=> start!117044 (array_inv!34144 a!4197)))

(assert (=> start!117044 true))

(declare-fun bs!39620 () Bool)

(assert (= bs!39620 start!117044))

(declare-fun m!1262325 () Bool)

(assert (=> bs!39620 m!1262325))

(push 1)

(assert (not start!117044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

