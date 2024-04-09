; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85570 () Bool)

(assert start!85570)

(declare-fun res!664397 () Bool)

(declare-fun e!560755 () Bool)

(assert (=> start!85570 (=> (not res!664397) (not e!560755))))

(declare-datatypes ((array!62804 0))(
  ( (array!62805 (arr!30240 (Array (_ BitVec 32) (_ BitVec 64))) (size!30737 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62804)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85570 (= res!664397 (and (= (size!30737 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62805 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30737 a!4424))))))

(assert (=> start!85570 e!560755))

(declare-fun array_inv!23230 (array!62804) Bool)

(assert (=> start!85570 (array_inv!23230 a!4424)))

(assert (=> start!85570 true))

(declare-fun b!993672 () Bool)

(declare-fun res!664396 () Bool)

(assert (=> b!993672 (=> (not res!664396) (not e!560755))))

(declare-datatypes ((List!21081 0))(
  ( (Nil!21078) (Cons!21077 (h!22239 (_ BitVec 64)) (t!30090 List!21081)) )
))
(declare-fun acc!919 () List!21081)

(declare-fun noDuplicate!1435 (List!21081) Bool)

(assert (=> b!993672 (= res!664396 (noDuplicate!1435 acc!919))))

(declare-fun b!993673 () Bool)

(assert (=> b!993673 (= e!560755 (bvslt (bvsub size!36 from!3778) #b00000000000000000000000000000000))))

(declare-fun b!993670 () Bool)

(declare-fun res!664398 () Bool)

(assert (=> b!993670 (=> (not res!664398) (not e!560755))))

(declare-fun contains!5838 (List!21081 (_ BitVec 64)) Bool)

(assert (=> b!993670 (= res!664398 (not (contains!5838 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993671 () Bool)

(declare-fun res!664399 () Bool)

(assert (=> b!993671 (=> (not res!664399) (not e!560755))))

(assert (=> b!993671 (= res!664399 (not (contains!5838 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!85570 res!664397) b!993670))

(assert (= (and b!993670 res!664398) b!993671))

(assert (= (and b!993671 res!664399) b!993672))

(assert (= (and b!993672 res!664396) b!993673))

(declare-fun m!921429 () Bool)

(assert (=> start!85570 m!921429))

(declare-fun m!921431 () Bool)

(assert (=> b!993672 m!921431))

(declare-fun m!921433 () Bool)

(assert (=> b!993670 m!921433))

(declare-fun m!921435 () Bool)

(assert (=> b!993671 m!921435))

(push 1)

(assert (not b!993672))

(assert (not start!85570))

(assert (not b!993670))

(assert (not b!993671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

