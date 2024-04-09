; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85510 () Bool)

(assert start!85510)

(declare-fun b!993382 () Bool)

(declare-fun res!664107 () Bool)

(declare-fun e!560603 () Bool)

(assert (=> b!993382 (=> (not res!664107) (not e!560603))))

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(declare-datatypes ((array!62747 0))(
  ( (array!62748 (arr!30213 (Array (_ BitVec 32) (_ BitVec 64))) (size!30710 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62747)

(assert (=> b!993382 (= res!664107 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30710 a!4424))))))

(declare-fun b!993383 () Bool)

(declare-fun res!664110 () Bool)

(assert (=> b!993383 (=> (not res!664110) (not e!560603))))

(declare-datatypes ((List!21057 0))(
  ( (Nil!21054) (Cons!21053 (h!22215 (_ BitVec 64)) (t!30066 List!21057)) )
))
(declare-fun acc!919 () List!21057)

(declare-fun contains!5814 (List!21057 (_ BitVec 64)) Bool)

(assert (=> b!993383 (= res!664110 (not (contains!5814 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993384 () Bool)

(declare-fun res!664109 () Bool)

(assert (=> b!993384 (=> (not res!664109) (not e!560603))))

(assert (=> b!993384 (= res!664109 (not (contains!5814 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993385 () Bool)

(declare-fun res!664111 () Bool)

(assert (=> b!993385 (=> (not res!664111) (not e!560603))))

(declare-fun noDuplicate!1411 (List!21057) Bool)

(assert (=> b!993385 (= res!664111 (noDuplicate!1411 acc!919))))

(declare-fun b!993381 () Bool)

(assert (=> b!993381 (= e!560603 (not true))))

(declare-fun arrayNoDuplicates!0 (array!62747 (_ BitVec 32) List!21057) Bool)

(assert (=> b!993381 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-datatypes ((Unit!32876 0))(
  ( (Unit!32877) )
))
(declare-fun lt!440508 () Unit!32876)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62747 (_ BitVec 32) (_ BitVec 32) List!21057) Unit!32876)

(assert (=> b!993381 (= lt!440508 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun res!664108 () Bool)

(assert (=> start!85510 (=> (not res!664108) (not e!560603))))

(assert (=> start!85510 (= res!664108 (and (= (size!30710 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62748 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30710 a!4424))))))

(assert (=> start!85510 e!560603))

(declare-fun array_inv!23203 (array!62747) Bool)

(assert (=> start!85510 (array_inv!23203 a!4424)))

(assert (=> start!85510 true))

(assert (= (and start!85510 res!664108) b!993383))

(assert (= (and b!993383 res!664110) b!993384))

(assert (= (and b!993384 res!664109) b!993385))

(assert (= (and b!993385 res!664111) b!993382))

(assert (= (and b!993382 res!664107) b!993381))

(declare-fun m!921191 () Bool)

(assert (=> start!85510 m!921191))

(declare-fun m!921193 () Bool)

(assert (=> b!993384 m!921193))

(declare-fun m!921195 () Bool)

(assert (=> b!993385 m!921195))

(declare-fun m!921197 () Bool)

(assert (=> b!993383 m!921197))

(declare-fun m!921199 () Bool)

(assert (=> b!993381 m!921199))

(declare-fun m!921201 () Bool)

(assert (=> b!993381 m!921201))

(push 1)

(assert (not b!993383))

(assert (not start!85510))

(assert (not b!993384))

(assert (not b!993385))

(assert (not b!993381))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

