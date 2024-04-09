; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85576 () Bool)

(assert start!85576)

(declare-fun res!664425 () Bool)

(declare-fun e!560774 () Bool)

(assert (=> start!85576 (=> (not res!664425) (not e!560774))))

(declare-datatypes ((array!62810 0))(
  ( (array!62811 (arr!30243 (Array (_ BitVec 32) (_ BitVec 64))) (size!30740 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62810)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85576 (= res!664425 (and (= (size!30740 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62811 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30740 a!4424))))))

(assert (=> start!85576 e!560774))

(declare-fun array_inv!23233 (array!62810) Bool)

(assert (=> start!85576 (array_inv!23233 a!4424)))

(assert (=> start!85576 true))

(declare-fun b!993698 () Bool)

(declare-fun res!664424 () Bool)

(assert (=> b!993698 (=> (not res!664424) (not e!560774))))

(declare-datatypes ((List!21084 0))(
  ( (Nil!21081) (Cons!21080 (h!22242 (_ BitVec 64)) (t!30093 List!21084)) )
))
(declare-fun acc!919 () List!21084)

(declare-fun contains!5841 (List!21084 (_ BitVec 64)) Bool)

(assert (=> b!993698 (= res!664424 (not (contains!5841 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993699 () Bool)

(declare-fun res!664426 () Bool)

(assert (=> b!993699 (=> (not res!664426) (not e!560774))))

(assert (=> b!993699 (= res!664426 (not (contains!5841 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993700 () Bool)

(assert (=> b!993700 (= e!560774 false)))

(declare-fun lt!440571 () Bool)

(declare-fun noDuplicate!1438 (List!21084) Bool)

(assert (=> b!993700 (= lt!440571 (noDuplicate!1438 acc!919))))

(assert (= (and start!85576 res!664425) b!993698))

(assert (= (and b!993698 res!664424) b!993699))

(assert (= (and b!993699 res!664426) b!993700))

(declare-fun m!921453 () Bool)

(assert (=> start!85576 m!921453))

(declare-fun m!921455 () Bool)

(assert (=> b!993698 m!921455))

(declare-fun m!921457 () Bool)

(assert (=> b!993699 m!921457))

(declare-fun m!921459 () Bool)

(assert (=> b!993700 m!921459))

(push 1)

(assert (not b!993698))

(assert (not b!993699))

(assert (not start!85576))

(assert (not b!993700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

