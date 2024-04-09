; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85558 () Bool)

(assert start!85558)

(declare-datatypes ((array!62795 0))(
  ( (array!62796 (arr!30237 (Array (_ BitVec 32) (_ BitVec 64))) (size!30734 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62795)

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85558 (and (= (size!30734 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (bvslt size!36 #b00000000000000000000000000000000))))

(declare-fun array_inv!23227 (array!62795) Bool)

(assert (=> start!85558 (array_inv!23227 a!4424)))

(assert (=> start!85558 true))

(declare-fun bs!28306 () Bool)

(assert (= bs!28306 start!85558))

(declare-fun m!921411 () Bool)

(assert (=> bs!28306 m!921411))

(push 1)

(assert (not start!85558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

