; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85588 () Bool)

(assert start!85588)

(declare-fun res!664479 () Bool)

(declare-fun e!560810 () Bool)

(assert (=> start!85588 (=> (not res!664479) (not e!560810))))

(declare-datatypes ((array!62822 0))(
  ( (array!62823 (arr!30249 (Array (_ BitVec 32) (_ BitVec 64))) (size!30746 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62822)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85588 (= res!664479 (and (= (size!30746 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62823 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30746 a!4424))))))

(assert (=> start!85588 e!560810))

(declare-fun array_inv!23239 (array!62822) Bool)

(assert (=> start!85588 (array_inv!23239 a!4424)))

(assert (=> start!85588 true))

(declare-fun b!993752 () Bool)

(declare-fun res!664480 () Bool)

(assert (=> b!993752 (=> (not res!664480) (not e!560810))))

(declare-datatypes ((List!21090 0))(
  ( (Nil!21087) (Cons!21086 (h!22248 (_ BitVec 64)) (t!30099 List!21090)) )
))
(declare-fun acc!919 () List!21090)

(declare-fun contains!5847 (List!21090 (_ BitVec 64)) Bool)

(assert (=> b!993752 (= res!664480 (not (contains!5847 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993753 () Bool)

(declare-fun res!664478 () Bool)

(assert (=> b!993753 (=> (not res!664478) (not e!560810))))

(assert (=> b!993753 (= res!664478 (not (contains!5847 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993754 () Bool)

(assert (=> b!993754 (= e!560810 false)))

(declare-fun lt!440589 () Bool)

(declare-fun noDuplicate!1444 (List!21090) Bool)

(assert (=> b!993754 (= lt!440589 (noDuplicate!1444 acc!919))))

(assert (= (and start!85588 res!664479) b!993752))

(assert (= (and b!993752 res!664480) b!993753))

(assert (= (and b!993753 res!664478) b!993754))

(declare-fun m!921501 () Bool)

(assert (=> start!85588 m!921501))

(declare-fun m!921503 () Bool)

(assert (=> b!993752 m!921503))

(declare-fun m!921505 () Bool)

(assert (=> b!993753 m!921505))

(declare-fun m!921507 () Bool)

(assert (=> b!993754 m!921507))

(push 1)

(assert (not b!993753))

(assert (not start!85588))

(assert (not b!993754))

(assert (not b!993752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

