; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85582 () Bool)

(assert start!85582)

(declare-fun res!664452 () Bool)

(declare-fun e!560792 () Bool)

(assert (=> start!85582 (=> (not res!664452) (not e!560792))))

(declare-datatypes ((array!62816 0))(
  ( (array!62817 (arr!30246 (Array (_ BitVec 32) (_ BitVec 64))) (size!30743 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62816)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85582 (= res!664452 (and (= (size!30743 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62817 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30743 a!4424))))))

(assert (=> start!85582 e!560792))

(declare-fun array_inv!23236 (array!62816) Bool)

(assert (=> start!85582 (array_inv!23236 a!4424)))

(assert (=> start!85582 true))

(declare-fun b!993725 () Bool)

(declare-fun res!664451 () Bool)

(assert (=> b!993725 (=> (not res!664451) (not e!560792))))

(declare-datatypes ((List!21087 0))(
  ( (Nil!21084) (Cons!21083 (h!22245 (_ BitVec 64)) (t!30096 List!21087)) )
))
(declare-fun acc!919 () List!21087)

(declare-fun contains!5844 (List!21087 (_ BitVec 64)) Bool)

(assert (=> b!993725 (= res!664451 (not (contains!5844 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993726 () Bool)

(declare-fun res!664453 () Bool)

(assert (=> b!993726 (=> (not res!664453) (not e!560792))))

(assert (=> b!993726 (= res!664453 (not (contains!5844 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993727 () Bool)

(assert (=> b!993727 (= e!560792 false)))

(declare-fun lt!440580 () Bool)

(declare-fun noDuplicate!1441 (List!21087) Bool)

(assert (=> b!993727 (= lt!440580 (noDuplicate!1441 acc!919))))

(assert (= (and start!85582 res!664452) b!993725))

(assert (= (and b!993725 res!664451) b!993726))

(assert (= (and b!993726 res!664453) b!993727))

(declare-fun m!921477 () Bool)

(assert (=> start!85582 m!921477))

(declare-fun m!921479 () Bool)

(assert (=> b!993725 m!921479))

(declare-fun m!921481 () Bool)

(assert (=> b!993726 m!921481))

(declare-fun m!921483 () Bool)

(assert (=> b!993727 m!921483))

(push 1)

(assert (not b!993725))

(assert (not b!993726))

(assert (not start!85582))

(assert (not b!993727))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

