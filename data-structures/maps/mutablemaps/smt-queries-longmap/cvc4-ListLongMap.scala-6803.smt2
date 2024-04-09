; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85594 () Bool)

(assert start!85594)

(declare-fun b!993788 () Bool)

(declare-fun res!664515 () Bool)

(declare-fun e!560827 () Bool)

(assert (=> b!993788 (=> (not res!664515) (not e!560827))))

(declare-datatypes ((List!21093 0))(
  ( (Nil!21090) (Cons!21089 (h!22251 (_ BitVec 64)) (t!30102 List!21093)) )
))
(declare-fun acc!919 () List!21093)

(declare-fun contains!5850 (List!21093 (_ BitVec 64)) Bool)

(assert (=> b!993788 (= res!664515 (not (contains!5850 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993789 () Bool)

(declare-fun res!664516 () Bool)

(assert (=> b!993789 (=> (not res!664516) (not e!560827))))

(declare-fun noDuplicate!1447 (List!21093) Bool)

(assert (=> b!993789 (= res!664516 (noDuplicate!1447 acc!919))))

(declare-datatypes ((array!62828 0))(
  ( (array!62829 (arr!30252 (Array (_ BitVec 32) (_ BitVec 64))) (size!30749 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62828)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun b!993790 () Bool)

(declare-fun size!36 () (_ BitVec 32))

(assert (=> b!993790 (= e!560827 (and (bvslt from!3778 size!36) (or (bvslt (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!3778) (size!30749 a!4424)))))))

(declare-fun b!993787 () Bool)

(declare-fun res!664514 () Bool)

(assert (=> b!993787 (=> (not res!664514) (not e!560827))))

(assert (=> b!993787 (= res!664514 (not (contains!5850 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!664513 () Bool)

(assert (=> start!85594 (=> (not res!664513) (not e!560827))))

(assert (=> start!85594 (= res!664513 (and (= (size!30749 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62829 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30749 a!4424))))))

(assert (=> start!85594 e!560827))

(declare-fun array_inv!23242 (array!62828) Bool)

(assert (=> start!85594 (array_inv!23242 a!4424)))

(assert (=> start!85594 true))

(assert (= (and start!85594 res!664513) b!993787))

(assert (= (and b!993787 res!664514) b!993788))

(assert (= (and b!993788 res!664515) b!993789))

(assert (= (and b!993789 res!664516) b!993790))

(declare-fun m!921525 () Bool)

(assert (=> b!993788 m!921525))

(declare-fun m!921527 () Bool)

(assert (=> b!993789 m!921527))

(declare-fun m!921529 () Bool)

(assert (=> b!993787 m!921529))

(declare-fun m!921531 () Bool)

(assert (=> start!85594 m!921531))

(push 1)

(assert (not b!993789))

(assert (not start!85594))

(assert (not b!993787))

(assert (not b!993788))

(check-sat)

(pop 1)

(push 1)

(check-sat)

