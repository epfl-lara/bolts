; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69728 () Bool)

(assert start!69728)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(declare-datatypes ((array!44100 0))(
  ( (array!44101 (arr!21116 (Array (_ BitVec 32) (_ BitVec 64))) (size!21537 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44100)

(assert (=> start!69728 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21537 a!4395)) (bvslt (size!21537 a!4395) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) #b00000000000000000000000000000000))))

(assert (=> start!69728 true))

(declare-fun array_inv!16890 (array!44100) Bool)

(assert (=> start!69728 (array_inv!16890 a!4395)))

(declare-fun bs!22485 () Bool)

(assert (= bs!22485 start!69728))

(declare-fun m!754253 () Bool)

(assert (=> bs!22485 m!754253))

(push 1)

(assert (not start!69728))

(check-sat)

(pop 1)

(push 1)

(check-sat)

