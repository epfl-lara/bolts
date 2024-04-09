; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85556 () Bool)

(assert start!85556)

(declare-datatypes ((array!62793 0))(
  ( (array!62794 (arr!30236 (Array (_ BitVec 32) (_ BitVec 64))) (size!30733 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62793)

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85556 (and (= (size!30733 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (bvslt size!36 #b00000000000000000000000000000000))))

(declare-fun array_inv!23226 (array!62793) Bool)

(assert (=> start!85556 (array_inv!23226 a!4424)))

(assert (=> start!85556 true))

(declare-fun bs!28305 () Bool)

(assert (= bs!28305 start!85556))

(declare-fun m!921409 () Bool)

(assert (=> bs!28305 m!921409))

(check-sat (not start!85556))
(check-sat)
(get-model)

(declare-fun d!118477 () Bool)

(assert (=> d!118477 (= (array_inv!23226 a!4424) (bvsge (size!30733 a!4424) #b00000000000000000000000000000000))))

(assert (=> start!85556 d!118477))

(check-sat)
