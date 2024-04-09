; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85584 () Bool)

(assert start!85584)

(declare-fun res!664460 () Bool)

(declare-fun e!560798 () Bool)

(assert (=> start!85584 (=> (not res!664460) (not e!560798))))

(declare-datatypes ((array!62818 0))(
  ( (array!62819 (arr!30247 (Array (_ BitVec 32) (_ BitVec 64))) (size!30744 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62818)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85584 (= res!664460 (and (= (size!30744 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62819 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30744 a!4424))))))

(assert (=> start!85584 e!560798))

(declare-fun array_inv!23237 (array!62818) Bool)

(assert (=> start!85584 (array_inv!23237 a!4424)))

(assert (=> start!85584 true))

(declare-fun b!993734 () Bool)

(declare-fun res!664461 () Bool)

(assert (=> b!993734 (=> (not res!664461) (not e!560798))))

(declare-datatypes ((List!21088 0))(
  ( (Nil!21085) (Cons!21084 (h!22246 (_ BitVec 64)) (t!30097 List!21088)) )
))
(declare-fun acc!919 () List!21088)

(declare-fun contains!5845 (List!21088 (_ BitVec 64)) Bool)

(assert (=> b!993734 (= res!664461 (not (contains!5845 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993735 () Bool)

(declare-fun res!664462 () Bool)

(assert (=> b!993735 (=> (not res!664462) (not e!560798))))

(assert (=> b!993735 (= res!664462 (not (contains!5845 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993736 () Bool)

(assert (=> b!993736 (= e!560798 false)))

(declare-fun lt!440583 () Bool)

(declare-fun noDuplicate!1442 (List!21088) Bool)

(assert (=> b!993736 (= lt!440583 (noDuplicate!1442 acc!919))))

(assert (= (and start!85584 res!664460) b!993734))

(assert (= (and b!993734 res!664461) b!993735))

(assert (= (and b!993735 res!664462) b!993736))

(declare-fun m!921485 () Bool)

(assert (=> start!85584 m!921485))

(declare-fun m!921487 () Bool)

(assert (=> b!993734 m!921487))

(declare-fun m!921489 () Bool)

(assert (=> b!993735 m!921489))

(declare-fun m!921491 () Bool)

(assert (=> b!993736 m!921491))

(push 1)

(assert (not b!993734))

(assert (not b!993735))

(assert (not start!85584))

(assert (not b!993736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

