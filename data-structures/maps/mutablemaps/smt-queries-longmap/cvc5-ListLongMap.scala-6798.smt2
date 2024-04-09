; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85554 () Bool)

(assert start!85554)

(declare-datatypes ((array!62791 0))(
  ( (array!62792 (arr!30235 (Array (_ BitVec 32) (_ BitVec 64))) (size!30732 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62791)

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85554 (and (= (size!30732 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (bvslt size!36 #b00000000000000000000000000000000))))

(declare-fun array_inv!23225 (array!62791) Bool)

(assert (=> start!85554 (array_inv!23225 a!4424)))

(assert (=> start!85554 true))

(declare-fun bs!28304 () Bool)

(assert (= bs!28304 start!85554))

(declare-fun m!921407 () Bool)

(assert (=> bs!28304 m!921407))

(push 1)

(assert (not start!85554))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118479 () Bool)

(assert (=> d!118479 (= (array_inv!23225 a!4424) (bvsge (size!30732 a!4424) #b00000000000000000000000000000000))))

