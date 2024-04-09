; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85608 () Bool)

(assert start!85608)

(declare-datatypes ((array!62842 0))(
  ( (array!62843 (arr!30259 (Array (_ BitVec 32) (_ BitVec 64))) (size!30756 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62842)

(declare-fun e!560869 () Bool)

(declare-fun size!36 () (_ BitVec 32))

(declare-fun b!993856 () Bool)

(declare-fun from!3778 () (_ BitVec 32))

(assert (=> b!993856 (= e!560869 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30756 a!4424)) (bvsge (bvsub size!36 (bvadd #b00000000000000000000000000000001 from!3778)) (bvsub size!36 from!3778))))))

(declare-fun b!993853 () Bool)

(declare-fun res!664581 () Bool)

(assert (=> b!993853 (=> (not res!664581) (not e!560869))))

(declare-datatypes ((List!21100 0))(
  ( (Nil!21097) (Cons!21096 (h!22258 (_ BitVec 64)) (t!30109 List!21100)) )
))
(declare-fun acc!919 () List!21100)

(declare-fun contains!5857 (List!21100 (_ BitVec 64)) Bool)

(assert (=> b!993853 (= res!664581 (not (contains!5857 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993855 () Bool)

(declare-fun res!664580 () Bool)

(assert (=> b!993855 (=> (not res!664580) (not e!560869))))

(declare-fun noDuplicate!1454 (List!21100) Bool)

(assert (=> b!993855 (= res!664580 (noDuplicate!1454 acc!919))))

(declare-fun res!664579 () Bool)

(assert (=> start!85608 (=> (not res!664579) (not e!560869))))

(assert (=> start!85608 (= res!664579 (and (= (size!30756 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62843 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30756 a!4424))))))

(assert (=> start!85608 e!560869))

(declare-fun array_inv!23249 (array!62842) Bool)

(assert (=> start!85608 (array_inv!23249 a!4424)))

(assert (=> start!85608 true))

(declare-fun b!993854 () Bool)

(declare-fun res!664582 () Bool)

(assert (=> b!993854 (=> (not res!664582) (not e!560869))))

(assert (=> b!993854 (= res!664582 (not (contains!5857 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!85608 res!664579) b!993853))

(assert (= (and b!993853 res!664581) b!993854))

(assert (= (and b!993854 res!664582) b!993855))

(assert (= (and b!993855 res!664580) b!993856))

(declare-fun m!921581 () Bool)

(assert (=> b!993853 m!921581))

(declare-fun m!921583 () Bool)

(assert (=> b!993855 m!921583))

(declare-fun m!921585 () Bool)

(assert (=> start!85608 m!921585))

(declare-fun m!921587 () Bool)

(assert (=> b!993854 m!921587))

(push 1)

(assert (not b!993854))

(assert (not b!993853))

(assert (not start!85608))

(assert (not b!993855))

(check-sat)

(pop 1)

(push 1)

(check-sat)

