; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85568 () Bool)

(assert start!85568)

(declare-fun b!993661 () Bool)

(declare-fun e!560749 () Bool)

(declare-fun size!36 () (_ BitVec 32))

(declare-fun from!3778 () (_ BitVec 32))

(assert (=> b!993661 (= e!560749 (bvslt (bvsub size!36 from!3778) #b00000000000000000000000000000000))))

(declare-fun b!993659 () Bool)

(declare-fun res!664384 () Bool)

(assert (=> b!993659 (=> (not res!664384) (not e!560749))))

(declare-datatypes ((List!21080 0))(
  ( (Nil!21077) (Cons!21076 (h!22238 (_ BitVec 64)) (t!30089 List!21080)) )
))
(declare-fun acc!919 () List!21080)

(declare-fun contains!5837 (List!21080 (_ BitVec 64)) Bool)

(assert (=> b!993659 (= res!664384 (not (contains!5837 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993658 () Bool)

(declare-fun res!664385 () Bool)

(assert (=> b!993658 (=> (not res!664385) (not e!560749))))

(assert (=> b!993658 (= res!664385 (not (contains!5837 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993660 () Bool)

(declare-fun res!664387 () Bool)

(assert (=> b!993660 (=> (not res!664387) (not e!560749))))

(declare-fun noDuplicate!1434 (List!21080) Bool)

(assert (=> b!993660 (= res!664387 (noDuplicate!1434 acc!919))))

(declare-fun res!664386 () Bool)

(assert (=> start!85568 (=> (not res!664386) (not e!560749))))

(declare-datatypes ((array!62802 0))(
  ( (array!62803 (arr!30239 (Array (_ BitVec 32) (_ BitVec 64))) (size!30736 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62802)

(assert (=> start!85568 (= res!664386 (and (= (size!30736 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62803 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30736 a!4424))))))

(assert (=> start!85568 e!560749))

(declare-fun array_inv!23229 (array!62802) Bool)

(assert (=> start!85568 (array_inv!23229 a!4424)))

(assert (=> start!85568 true))

(assert (= (and start!85568 res!664386) b!993658))

(assert (= (and b!993658 res!664385) b!993659))

(assert (= (and b!993659 res!664384) b!993660))

(assert (= (and b!993660 res!664387) b!993661))

(declare-fun m!921421 () Bool)

(assert (=> b!993659 m!921421))

(declare-fun m!921423 () Bool)

(assert (=> b!993658 m!921423))

(declare-fun m!921425 () Bool)

(assert (=> b!993660 m!921425))

(declare-fun m!921427 () Bool)

(assert (=> start!85568 m!921427))

(check-sat (not b!993658) (not b!993659) (not b!993660) (not start!85568))
(check-sat)
