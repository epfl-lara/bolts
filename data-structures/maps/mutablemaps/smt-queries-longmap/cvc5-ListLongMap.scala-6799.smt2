; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85566 () Bool)

(assert start!85566)

(declare-fun res!664374 () Bool)

(declare-fun e!560744 () Bool)

(assert (=> start!85566 (=> (not res!664374) (not e!560744))))

(declare-datatypes ((array!62800 0))(
  ( (array!62801 (arr!30238 (Array (_ BitVec 32) (_ BitVec 64))) (size!30735 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62800)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85566 (= res!664374 (and (= (size!30735 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62801 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30735 a!4424))))))

(assert (=> start!85566 e!560744))

(declare-fun array_inv!23228 (array!62800) Bool)

(assert (=> start!85566 (array_inv!23228 a!4424)))

(assert (=> start!85566 true))

(declare-fun b!993649 () Bool)

(assert (=> b!993649 (= e!560744 (bvslt (bvsub size!36 from!3778) #b00000000000000000000000000000000))))

(declare-fun b!993648 () Bool)

(declare-fun res!664375 () Bool)

(assert (=> b!993648 (=> (not res!664375) (not e!560744))))

(declare-datatypes ((List!21079 0))(
  ( (Nil!21076) (Cons!21075 (h!22237 (_ BitVec 64)) (t!30088 List!21079)) )
))
(declare-fun acc!919 () List!21079)

(declare-fun noDuplicate!1433 (List!21079) Bool)

(assert (=> b!993648 (= res!664375 (noDuplicate!1433 acc!919))))

(declare-fun b!993646 () Bool)

(declare-fun res!664372 () Bool)

(assert (=> b!993646 (=> (not res!664372) (not e!560744))))

(declare-fun contains!5836 (List!21079 (_ BitVec 64)) Bool)

(assert (=> b!993646 (= res!664372 (not (contains!5836 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993647 () Bool)

(declare-fun res!664373 () Bool)

(assert (=> b!993647 (=> (not res!664373) (not e!560744))))

(assert (=> b!993647 (= res!664373 (not (contains!5836 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!85566 res!664374) b!993646))

(assert (= (and b!993646 res!664372) b!993647))

(assert (= (and b!993647 res!664373) b!993648))

(assert (= (and b!993648 res!664375) b!993649))

(declare-fun m!921413 () Bool)

(assert (=> start!85566 m!921413))

(declare-fun m!921415 () Bool)

(assert (=> b!993648 m!921415))

(declare-fun m!921417 () Bool)

(assert (=> b!993646 m!921417))

(declare-fun m!921419 () Bool)

(assert (=> b!993647 m!921419))

(push 1)

(assert (not start!85566))

(assert (not b!993646))

(assert (not b!993647))

(assert (not b!993648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

