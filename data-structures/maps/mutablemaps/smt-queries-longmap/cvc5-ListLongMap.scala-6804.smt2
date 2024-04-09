; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85596 () Bool)

(assert start!85596)

(declare-fun res!664524 () Bool)

(declare-fun e!560834 () Bool)

(assert (=> start!85596 (=> (not res!664524) (not e!560834))))

(declare-datatypes ((array!62830 0))(
  ( (array!62831 (arr!30253 (Array (_ BitVec 32) (_ BitVec 64))) (size!30750 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62830)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85596 (= res!664524 (and (= (size!30750 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62831 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30750 a!4424))))))

(assert (=> start!85596 e!560834))

(declare-fun array_inv!23243 (array!62830) Bool)

(assert (=> start!85596 (array_inv!23243 a!4424)))

(assert (=> start!85596 true))

(declare-fun b!993797 () Bool)

(declare-fun res!664525 () Bool)

(assert (=> b!993797 (=> (not res!664525) (not e!560834))))

(declare-datatypes ((List!21094 0))(
  ( (Nil!21091) (Cons!21090 (h!22252 (_ BitVec 64)) (t!30103 List!21094)) )
))
(declare-fun acc!919 () List!21094)

(declare-fun contains!5851 (List!21094 (_ BitVec 64)) Bool)

(assert (=> b!993797 (= res!664525 (not (contains!5851 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993798 () Bool)

(declare-fun res!664523 () Bool)

(assert (=> b!993798 (=> (not res!664523) (not e!560834))))

(assert (=> b!993798 (= res!664523 (not (contains!5851 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993799 () Bool)

(assert (=> b!993799 (= e!560834 false)))

(declare-fun lt!440592 () Bool)

(declare-fun noDuplicate!1448 (List!21094) Bool)

(assert (=> b!993799 (= lt!440592 (noDuplicate!1448 acc!919))))

(assert (= (and start!85596 res!664524) b!993797))

(assert (= (and b!993797 res!664525) b!993798))

(assert (= (and b!993798 res!664523) b!993799))

(declare-fun m!921533 () Bool)

(assert (=> start!85596 m!921533))

(declare-fun m!921535 () Bool)

(assert (=> b!993797 m!921535))

(declare-fun m!921537 () Bool)

(assert (=> b!993798 m!921537))

(declare-fun m!921539 () Bool)

(assert (=> b!993799 m!921539))

(push 1)

(assert (not b!993799))

(assert (not start!85596))

(assert (not b!993798))

(assert (not b!993797))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

