; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85536 () Bool)

(assert start!85536)

(declare-fun res!664283 () Bool)

(declare-fun e!560681 () Bool)

(assert (=> start!85536 (=> (not res!664283) (not e!560681))))

(declare-datatypes ((array!62773 0))(
  ( (array!62774 (arr!30226 (Array (_ BitVec 32) (_ BitVec 64))) (size!30723 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62773)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85536 (= res!664283 (and (= (size!30723 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62774 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30723 a!4424))))))

(assert (=> start!85536 e!560681))

(declare-fun array_inv!23216 (array!62773) Bool)

(assert (=> start!85536 (array_inv!23216 a!4424)))

(assert (=> start!85536 true))

(declare-fun b!993558 () Bool)

(declare-fun res!664282 () Bool)

(assert (=> b!993558 (=> (not res!664282) (not e!560681))))

(declare-datatypes ((List!21070 0))(
  ( (Nil!21067) (Cons!21066 (h!22228 (_ BitVec 64)) (t!30079 List!21070)) )
))
(declare-fun acc!919 () List!21070)

(declare-fun noDuplicate!1424 (List!21070) Bool)

(assert (=> b!993558 (= res!664282 (noDuplicate!1424 acc!919))))

(declare-fun b!993559 () Bool)

(assert (=> b!993559 (= e!560681 (and (bvsge from!3778 size!36) (bvsge (size!30723 a!4424) #b01111111111111111111111111111111)))))

(declare-fun b!993557 () Bool)

(declare-fun res!664285 () Bool)

(assert (=> b!993557 (=> (not res!664285) (not e!560681))))

(declare-fun contains!5827 (List!21070 (_ BitVec 64)) Bool)

(assert (=> b!993557 (= res!664285 (not (contains!5827 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993556 () Bool)

(declare-fun res!664284 () Bool)

(assert (=> b!993556 (=> (not res!664284) (not e!560681))))

(assert (=> b!993556 (= res!664284 (not (contains!5827 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!85536 res!664283) b!993556))

(assert (= (and b!993556 res!664284) b!993557))

(assert (= (and b!993557 res!664285) b!993558))

(assert (= (and b!993558 res!664282) b!993559))

(declare-fun m!921335 () Bool)

(assert (=> start!85536 m!921335))

(declare-fun m!921337 () Bool)

(assert (=> b!993558 m!921337))

(declare-fun m!921339 () Bool)

(assert (=> b!993557 m!921339))

(declare-fun m!921341 () Bool)

(assert (=> b!993556 m!921341))

(push 1)

(assert (not b!993557))

(assert (not b!993558))

(assert (not b!993556))

(assert (not start!85536))

(check-sat)

(pop 1)

